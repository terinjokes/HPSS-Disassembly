; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $07c", ROMX[$4000], BANK[$7c]

    ld a, h                                       ; $4000: $7c
    ld sp, $3332                                  ; $4001: $31 $32 $33
    inc [hl]                                      ; $4004: $34
    dec [hl]                                      ; $4005: $35
    ld [hl], $37                                  ; $4006: $36 $37
    jr c, jr_07c_4043                             ; $4008: $38 $39

    jr nc, jr_07c_403d                            ; $400a: $30 $31

    ld [hl-], a                                   ; $400c: $32
    inc sp                                        ; $400d: $33
    inc [hl]                                      ; $400e: $34
    dec [hl]                                      ; $400f: $35
    inc c                                         ; $4010: $0c
    nop                                           ; $4011: $00
    dec bc                                        ; $4012: $0b
    nop                                           ; $4013: $00
    add b                                         ; $4014: $80
    rrca                                          ; $4015: $0f
    pop de                                        ; $4016: $d1
    pop de                                        ; $4017: $d1
    pop de                                        ; $4018: $d1
    pop de                                        ; $4019: $d1
    jp nc, $d4d3                                  ; $401a: $d2 $d3 $d4

    push de                                       ; $401d: $d5
    sub $d7                                       ; $401e: $d6 $d7
    ret c                                         ; $4020: $d8

    reti                                          ; $4021: $d9


    jp c, $dbd3                                   ; $4022: $da $d3 $db

    db $db                                        ; $4025: $db
    inc b                                         ; $4026: $04
    inc b                                         ; $4027: $04
    inc b                                         ; $4028: $04
    inc b                                         ; $4029: $04
    inc b                                         ; $402a: $04
    ld bc, $0101                                  ; $402b: $01 $01 $01
    inc b                                         ; $402e: $04
    ld bc, $0101                                  ; $402f: $01 $01 $01
    inc b                                         ; $4032: $04
    ld hl, $0606                                  ; $4033: $21 $06 $06
    pop de                                        ; $4036: $d1
    pop de                                        ; $4037: $d1
    pop de                                        ; $4038: $d1
    pop de                                        ; $4039: $d1
    call c, $d4d5                                 ; $403a: $dc $d5 $d4

jr_07c_403d:
    jp nc, $d9d9                                  ; $403d: $d2 $d9 $d9

    call nc, $dbd5                                ; $4040: $d4 $d5 $db

jr_07c_4043:
    db $db                                        ; $4043: $db
    ret c                                         ; $4044: $d8

    reti                                          ; $4045: $d9


    inc b                                         ; $4046: $04
    inc b                                         ; $4047: $04
    inc b                                         ; $4048: $04
    inc b                                         ; $4049: $04
    ld bc, $2121                                  ; $404a: $01 $21 $21
    inc b                                         ; $404d: $04
    ld hl, $0121                                  ; $404e: $21 $21 $01
    ld bc, $0606                                  ; $4051: $01 $06 $06
    ld bc, $d101                                  ; $4054: $01 $01 $d1
    pop de                                        ; $4057: $d1
    pop de                                        ; $4058: $d1
    pop de                                        ; $4059: $d1
    jp nc, $d2d2                                  ; $405a: $d2 $d2 $d2

    jp nc, $dcdd                                  ; $405d: $d2 $dd $dc

    sbc $df                                       ; $4060: $de $df
    ldh [$d9], a                                  ; $4062: $e0 $d9
    pop hl                                        ; $4064: $e1
    ld [c], a                                     ; $4065: $e2
    inc b                                         ; $4066: $04
    inc b                                         ; $4067: $04
    inc b                                         ; $4068: $04
    inc b                                         ; $4069: $04
    inc b                                         ; $406a: $04
    inc b                                         ; $406b: $04
    inc b                                         ; $406c: $04
    inc b                                         ; $406d: $04
    ld bc, $0101                                  ; $406e: $01 $01 $01
    ld bc, $2101                                  ; $4071: $01 $01 $21
    ld bc, $e301                                  ; $4074: $01 $01 $e3
    rst $10                                       ; $4077: $d7
    db $db                                        ; $4078: $db
    db $e4                                        ; $4079: $e4
    db $e3                                        ; $407a: $e3
    db $d3                                        ; $407b: $d3
    db $db                                        ; $407c: $db
    push hl                                       ; $407d: $e5
    db $e3                                        ; $407e: $e3
    rst $10                                       ; $407f: $d7
    db $d3                                        ; $4080: $d3
    and $e3                                       ; $4081: $e6 $e3
    rst $20                                       ; $4083: $e7
    rst $10                                       ; $4084: $d7
    db $db                                        ; $4085: $db
    inc b                                         ; $4086: $04
    ld hl, $0506                                  ; $4087: $21 $06 $05
    inc b                                         ; $408a: $04
    ld hl, $2506                                  ; $408b: $21 $06 $25
    inc b                                         ; $408e: $04
    ld bc, $0501                                  ; $408f: $01 $01 $05
    inc b                                         ; $4092: $04
    ld bc, $0601                                  ; $4093: $01 $01 $06
    add sp, -$1b                                  ; $4096: $e8 $e5
    db $db                                        ; $4098: $db
    db $db                                        ; $4099: $db
    jp hl                                         ; $409a: $e9


    ld [$eceb], a                                 ; $409b: $ea $eb $ec
    db $ed                                        ; $409e: $ed
    xor $ef                                       ; $409f: $ee $ef
    ldh a, [$f1]                                  ; $40a1: $f0 $f1
    ld a, [c]                                     ; $40a3: $f2
    di                                            ; $40a4: $f3
    db $f4                                        ; $40a5: $f4
    dec b                                         ; $40a6: $05
    dec b                                         ; $40a7: $05
    ld b, $06                                     ; $40a8: $06 $06
    dec b                                         ; $40aa: $05
    dec b                                         ; $40ab: $05
    inc b                                         ; $40ac: $04
    inc b                                         ; $40ad: $04
    dec b                                         ; $40ae: $05
    dec b                                         ; $40af: $05
    inc b                                         ; $40b0: $04
    inc b                                         ; $40b1: $04
    inc b                                         ; $40b2: $04
    inc b                                         ; $40b3: $04
    inc b                                         ; $40b4: $04
    ld bc, $f3f5                                  ; $40b5: $01 $f5 $f3
    or $f2                                        ; $40b8: $f6 $f2
    rst $30                                       ; $40ba: $f7
    ld hl, sp-$07                                 ; $40bb: $f8 $f9
    rst $30                                       ; $40bd: $f7
    ld a, [$f0ef]                                 ; $40be: $fa $ef $f0
    ei                                            ; $40c1: $fb
    call nc, $dfd5                                ; $40c2: $d4 $d5 $df
    db $dd                                        ; $40c5: $dd
    ld b, $06                                     ; $40c6: $06 $06
    ld b, $06                                     ; $40c8: $06 $06
    inc b                                         ; $40ca: $04
    inc b                                         ; $40cb: $04
    inc b                                         ; $40cc: $04
    inc b                                         ; $40cd: $04
    inc b                                         ; $40ce: $04
    inc b                                         ; $40cf: $04
    inc b                                         ; $40d0: $04
    inc b                                         ; $40d1: $04
    ld bc, $0101                                  ; $40d2: $01 $01 $01
    ld bc, $f6f3                                  ; $40d5: $01 $f3 $f6
    pop af                                        ; $40d8: $f1
    db $db                                        ; $40d9: $db
    ld hl, sp-$15                                 ; $40da: $f8 $eb
    db $db                                        ; $40dc: $db
    db $eb                                        ; $40dd: $eb
    db $fc                                        ; $40de: $fc
    db $db                                        ; $40df: $db
    db $fc                                        ; $40e0: $fc
    db $db                                        ; $40e1: $db
    call c, $dfde                                 ; $40e2: $dc $de $df
    db $dd                                        ; $40e5: $dd
    ld b, $06                                     ; $40e6: $06 $06
    ld b, $06                                     ; $40e8: $06 $06
    inc b                                         ; $40ea: $04
    inc b                                         ; $40eb: $04
    inc b                                         ; $40ec: $04
    inc b                                         ; $40ed: $04
    inc b                                         ; $40ee: $04
    inc b                                         ; $40ef: $04
    inc b                                         ; $40f0: $04
    inc b                                         ; $40f1: $04
    ld bc, $0101                                  ; $40f2: $01 $01 $01
    ld bc, $e3e3                                  ; $40f5: $01 $e3 $e3
    rst $10                                       ; $40f8: $d7
    db $db                                        ; $40f9: $db
    db $e3                                        ; $40fa: $e3
    db $e3                                        ; $40fb: $e3
    db $d3                                        ; $40fc: $d3
    db $fd                                        ; $40fd: $fd
    db $e3                                        ; $40fe: $e3
    db $e3                                        ; $40ff: $e3
    rst $10                                       ; $4100: $d7
    di                                            ; $4101: $f3
    db $e3                                        ; $4102: $e3
    db $e3                                        ; $4103: $e3
    db $d3                                        ; $4104: $d3
    ld hl, sp+$04                                 ; $4105: $f8 $04
    inc b                                         ; $4107: $04
    ld bc, $0406                                  ; $4108: $01 $06 $04
    inc b                                         ; $410b: $04
    ld hl, $0406                                  ; $410c: $21 $06 $04
    inc b                                         ; $410f: $04
    ld hl, $0406                                  ; $4110: $21 $06 $04
    inc b                                         ; $4113: $04
    ld bc, $f906                                  ; $4114: $01 $06 $f9
    rst $30                                       ; $4117: $f7
    ld hl, sp-$29                                 ; $4118: $f8 $d7
    ldh a, [$fa]                                  ; $411a: $f0 $fa
    rst $28                                       ; $411c: $ef
    db $d3                                        ; $411d: $d3
    or $f2                                        ; $411e: $f6 $f2
    di                                            ; $4120: $f3
    rst $10                                       ; $4121: $d7
    ld sp, hl                                     ; $4122: $f9
    rst $30                                       ; $4123: $f7
    pop af                                        ; $4124: $f1
    db $d3                                        ; $4125: $d3
    inc b                                         ; $4126: $04
    inc b                                         ; $4127: $04
    ld b, $21                                     ; $4128: $06 $21
    inc b                                         ; $412a: $04
    inc b                                         ; $412b: $04
    ld b, $01                                     ; $412c: $06 $01
    inc b                                         ; $412e: $04
    inc b                                         ; $412f: $04
    ld b, $01                                     ; $4130: $06 $01
    inc b                                         ; $4132: $04
    inc b                                         ; $4133: $04
    ld b, $21                                     ; $4134: $06 $21
    ret c                                         ; $4136: $d8

    reti                                          ; $4137: $d9


    ld [c], a                                     ; $4138: $e2
    ldh [$fe], a                                  ; $4139: $e0 $fe
    rst $38                                       ; $413b: $ff
    nop                                           ; $413c: $00
    ld bc, $0302                                  ; $413d: $01 $02 $03
    inc b                                         ; $4140: $04
    dec b                                         ; $4141: $05
    ld b, $07                                     ; $4142: $06 $07
    ld [$0109], sp                                ; $4144: $08 $09 $01
    ld bc, $0101                                  ; $4147: $01 $01 $01
    rlca                                          ; $414a: $07
    rlca                                          ; $414b: $07
    rlca                                          ; $414c: $07
    rlca                                          ; $414d: $07
    rlca                                          ; $414e: $07
    inc bc                                        ; $414f: $03
    inc bc                                        ; $4150: $03
    inc bc                                        ; $4151: $03
    rlca                                          ; $4152: $07
    inc bc                                        ; $4153: $03
    inc bc                                        ; $4154: $03
    inc bc                                        ; $4155: $03
    reti                                          ; $4156: $d9


    pop hl                                        ; $4157: $e1
    ld [c], a                                     ; $4158: $e2
    ldh [$0a], a                                  ; $4159: $e0 $0a
    dec bc                                        ; $415b: $0b
    inc c                                         ; $415c: $0c
    ld bc, $0e0d                                  ; $415d: $01 $0d $0e
    rrca                                          ; $4160: $0f
    db $10                                        ; $4161: $10
    ld de, $1312                                  ; $4162: $11 $12 $13
    inc d                                         ; $4165: $14
    ld hl, $0101                                  ; $4166: $21 $01 $01
    ld bc, $0707                                  ; $4169: $01 $07 $07
    rlca                                          ; $416c: $07
    rlca                                          ; $416d: $07
    inc bc                                        ; $416e: $03
    inc bc                                        ; $416f: $03
    inc bc                                        ; $4170: $03
    add d                                         ; $4171: $82
    inc bc                                        ; $4172: $03
    inc bc                                        ; $4173: $03
    add d                                         ; $4174: $82
    add d                                         ; $4175: $82
    db $e3                                        ; $4176: $e3
    db $e3                                        ; $4177: $e3
    rst $10                                       ; $4178: $d7
    rst $28                                       ; $4179: $ef
    db $e3                                        ; $417a: $e3
    db $e3                                        ; $417b: $e3
    db $d3                                        ; $417c: $d3
    di                                            ; $417d: $f3
    db $e3                                        ; $417e: $e3
    db $e3                                        ; $417f: $e3
    db $d3                                        ; $4180: $d3
    ld hl, sp-$1d                                 ; $4181: $f8 $e3
    db $e3                                        ; $4183: $e3
    rst $10                                       ; $4184: $d7
    db $fd                                        ; $4185: $fd
    inc b                                         ; $4186: $04
    inc b                                         ; $4187: $04
    ld bc, $0406                                  ; $4188: $01 $06 $04
    inc b                                         ; $418b: $04
    ld hl, $0406                                  ; $418c: $21 $06 $04
    inc b                                         ; $418f: $04
    ld bc, $0406                                  ; $4190: $01 $06 $04
    inc b                                         ; $4193: $04
    ld bc, $f006                                  ; $4194: $01 $06 $f0
    db $eb                                        ; $4197: $eb
    db $db                                        ; $4198: $db
    rst $10                                       ; $4199: $d7
    or $db                                        ; $419a: $f6 $db
    push af                                       ; $419c: $f5
    db $d3                                        ; $419d: $d3
    db $ec                                        ; $419e: $ec
    db $db                                        ; $419f: $db
    dec d                                         ; $41a0: $15
    rst $10                                       ; $41a1: $d7
    db $db                                        ; $41a2: $db
    ei                                            ; $41a3: $fb
    db $fc                                        ; $41a4: $fc
    db $d3                                        ; $41a5: $d3
    inc b                                         ; $41a6: $04
    inc b                                         ; $41a7: $04
    ld b, $21                                     ; $41a8: $06 $21
    inc b                                         ; $41aa: $04
    inc b                                         ; $41ab: $04
    ld b, $01                                     ; $41ac: $06 $01
    inc b                                         ; $41ae: $04
    inc b                                         ; $41af: $04
    ld b, $01                                     ; $41b0: $06 $01
    inc b                                         ; $41b2: $04
    inc b                                         ; $41b3: $04
    ld b, $21                                     ; $41b4: $06 $21
    inc c                                         ; $41b6: $0c
    ld bc, $1716                                  ; $41b7: $01 $16 $17
    jr @+$07                                      ; $41ba: $18 $05

    add hl, de                                    ; $41bc: $19
    ld a, [de]                                    ; $41bd: $1a
    ld a, [bc]                                    ; $41be: $0a
    add hl, bc                                    ; $41bf: $09
    ld de, $1b12                                  ; $41c0: $11 $12 $1b
    inc e                                         ; $41c3: $1c
    dec e                                         ; $41c4: $1d
    ld e, $07                                     ; $41c5: $1e $07
    inc bc                                        ; $41c7: $03
    inc bc                                        ; $41c8: $03
    inc bc                                        ; $41c9: $03
    rlca                                          ; $41ca: $07
    inc bc                                        ; $41cb: $03
    inc bc                                        ; $41cc: $03
    inc bc                                        ; $41cd: $03
    rlca                                          ; $41ce: $07
    inc bc                                        ; $41cf: $03
    inc bc                                        ; $41d0: $03
    inc bc                                        ; $41d1: $03
    rlca                                          ; $41d2: $07
    inc bc                                        ; $41d3: $03
    inc bc                                        ; $41d4: $03
    inc bc                                        ; $41d5: $03
    rra                                           ; $41d6: $1f
    jr nz, jr_07c_41fa                            ; $41d7: $20 $21

    ld [hl+], a                                   ; $41d9: $22
    inc hl                                        ; $41da: $23
    inc h                                         ; $41db: $24
    dec h                                         ; $41dc: $25
    ld h, $08                                     ; $41dd: $26 $08
    daa                                           ; $41df: $27
    jr z, jr_07c_420b                             ; $41e0: $28 $29

    ld a, [hl+]                                   ; $41e2: $2a
    dec hl                                        ; $41e3: $2b
    inc l                                         ; $41e4: $2c
    dec l                                         ; $41e5: $2d
    inc bc                                        ; $41e6: $03
    add d                                         ; $41e7: $82
    add d                                         ; $41e8: $82
    add d                                         ; $41e9: $82
    inc bc                                        ; $41ea: $03
    add d                                         ; $41eb: $82
    add d                                         ; $41ec: $82
    add d                                         ; $41ed: $82
    inc bc                                        ; $41ee: $03
    add d                                         ; $41ef: $82
    add d                                         ; $41f0: $82
    add d                                         ; $41f1: $82
    add d                                         ; $41f2: $82
    add d                                         ; $41f3: $82
    add d                                         ; $41f4: $82
    add d                                         ; $41f5: $82
    pop af                                        ; $41f6: $f1
    db $db                                        ; $41f7: $db
    db $db                                        ; $41f8: $db
    db $db                                        ; $41f9: $db

jr_07c_41fa:
    db $ec                                        ; $41fa: $ec
    dec d                                         ; $41fb: $15
    db $ec                                        ; $41fc: $ec
    dec d                                         ; $41fd: $15
    db $db                                        ; $41fe: $db
    db $db                                        ; $41ff: $db
    ei                                            ; $4200: $fb
    ldh a, [$dc]                                  ; $4201: $f0 $dc
    sbc $df                                       ; $4203: $de $df
    db $dd                                        ; $4205: $dd
    ld b, $06                                     ; $4206: $06 $06
    ld b, $06                                     ; $4208: $06 $06
    inc b                                         ; $420a: $04

jr_07c_420b:
    inc b                                         ; $420b: $04
    inc b                                         ; $420c: $04
    inc b                                         ; $420d: $04
    inc b                                         ; $420e: $04
    inc b                                         ; $420f: $04
    inc b                                         ; $4210: $04
    inc b                                         ; $4211: $04
    ld bc, $0101                                  ; $4212: $01 $01 $01
    ld bc, $f32e                                  ; $4215: $01 $2e $f3
    or $f2                                        ; $4218: $f6 $f2
    rst $30                                       ; $421a: $f7
    ld hl, sp-$07                                 ; $421b: $f8 $f9
    rst $30                                       ; $421d: $f7
    ld a, [$f0ef]                                 ; $421e: $fa $ef $f0
    ld a, [$d4d5]                                 ; $4221: $fa $d5 $d4
    or $f2                                        ; $4224: $f6 $f2
    ld b, $06                                     ; $4226: $06 $06
    ld b, $06                                     ; $4228: $06 $06
    inc b                                         ; $422a: $04
    inc b                                         ; $422b: $04
    inc b                                         ; $422c: $04
    inc b                                         ; $422d: $04
    inc b                                         ; $422e: $04
    inc b                                         ; $422f: $04
    inc b                                         ; $4230: $04
    inc b                                         ; $4231: $04
    ld hl, $0421                                  ; $4232: $21 $21 $04
    inc b                                         ; $4235: $04
    di                                            ; $4236: $f3
    or $f1                                        ; $4237: $f6 $f1
    push af                                       ; $4239: $f5
    ld hl, sp-$07                                 ; $423a: $f8 $f9
    rst $30                                       ; $423c: $f7
    ld hl, sp-$11                                 ; $423d: $f8 $ef
    ldh a, [$fa]                                  ; $423f: $f0 $fa
    rst $28                                       ; $4241: $ef
    di                                            ; $4242: $f3
    or $d4                                        ; $4243: $f6 $d4
    push de                                       ; $4245: $d5
    ld b, $06                                     ; $4246: $06 $06
    ld b, $06                                     ; $4248: $06 $06
    inc b                                         ; $424a: $04
    inc b                                         ; $424b: $04
    inc b                                         ; $424c: $04
    inc b                                         ; $424d: $04
    inc b                                         ; $424e: $04
    inc b                                         ; $424f: $04
    inc b                                         ; $4250: $04
    inc b                                         ; $4251: $04
    inc b                                         ; $4252: $04
    inc b                                         ; $4253: $04
    ld bc, $db01                                  ; $4254: $01 $01 $db
    pop af                                        ; $4257: $f1
    db $db                                        ; $4258: $db
    ld l, $eb                                     ; $4259: $2e $eb
    db $db                                        ; $425b: $db
    dec d                                         ; $425c: $15
    db $eb                                        ; $425d: $eb
    ldh a, [$fb]                                  ; $425e: $f0 $fb
    db $db                                        ; $4260: $db
    db $db                                        ; $4261: $db
    db $dd                                        ; $4262: $dd
    rst $18                                       ; $4263: $df
    sbc $dc                                       ; $4264: $de $dc
    ld b, $06                                     ; $4266: $06 $06
    ld b, $06                                     ; $4268: $06 $06
    inc b                                         ; $426a: $04
    inc b                                         ; $426b: $04
    inc b                                         ; $426c: $04
    inc b                                         ; $426d: $04
    inc b                                         ; $426e: $04
    inc b                                         ; $426f: $04
    inc b                                         ; $4270: $04
    inc b                                         ; $4271: $04
    ld hl, $2121                                  ; $4272: $21 $21 $21
    ld hl, $e1d9                                  ; $4275: $21 $d9 $e1
    ld [c], a                                     ; $4278: $e2
    ldh [$2f], a                                  ; $4279: $e0 $2f
    dec bc                                        ; $427b: $0b
    inc c                                         ; $427c: $0c
    jr nc, jr_07c_42b0                            ; $427d: $30 $31

    ld [hl-], a                                   ; $427f: $32
    rrca                                          ; $4280: $0f
    dec b                                         ; $4281: $05
    inc sp                                        ; $4282: $33
    inc [hl]                                      ; $4283: $34
    dec [hl]                                      ; $4284: $35
    ld [hl-], a                                   ; $4285: $32
    ld hl, $0101                                  ; $4286: $21 $01 $01
    ld bc, $0707                                  ; $4289: $01 $07 $07
    rlca                                          ; $428c: $07
    rlca                                          ; $428d: $07
    add d                                         ; $428e: $82
    add d                                         ; $428f: $82
    inc bc                                        ; $4290: $03
    inc bc                                        ; $4291: $03
    add d                                         ; $4292: $82
    add d                                         ; $4293: $82
    add d                                         ; $4294: $82
    add d                                         ; $4295: $82
    reti                                          ; $4296: $d9


    ret c                                         ; $4297: $d8

    ld [hl], $37                                  ; $4298: $36 $37
    jr c, @+$0d                                   ; $429a: $38 $0b

    inc c                                         ; $429c: $0c
    ld bc, $0e0d                                  ; $429d: $01 $0d $0e
    rrca                                          ; $42a0: $0f
    add hl, sp                                    ; $42a1: $39
    ld de, $083a                                  ; $42a2: $11 $3a $08
    dec sp                                        ; $42a5: $3b
    ld hl, $0721                                  ; $42a6: $21 $21 $07
    inc bc                                        ; $42a9: $03
    rlca                                          ; $42aa: $07
    rlca                                          ; $42ab: $07
    rlca                                          ; $42ac: $07
    inc bc                                        ; $42ad: $03
    inc bc                                        ; $42ae: $03
    inc bc                                        ; $42af: $03

jr_07c_42b0:
    inc bc                                        ; $42b0: $03
    inc bc                                        ; $42b1: $03
    inc bc                                        ; $42b2: $03
    inc bc                                        ; $42b3: $03
    inc bc                                        ; $42b4: $03
    inc bc                                        ; $42b5: $03
    inc a                                         ; $42b6: $3c
    dec a                                         ; $42b7: $3d
    ret c                                         ; $42b8: $d8

    reti                                          ; $42b9: $d9


    cpl                                           ; $42ba: $2f
    dec bc                                        ; $42bb: $0b
    inc c                                         ; $42bc: $0c
    ld bc, $0e3e                                  ; $42bd: $01 $3e $0e
    rrca                                          ; $42c0: $0f
    ld a, [hl-]                                   ; $42c1: $3a
    ccf                                           ; $42c2: $3f
    ld [de], a                                    ; $42c3: $12
    ld [$0309], sp                                ; $42c4: $08 $09 $03
    rlca                                          ; $42c7: $07
    ld bc, $0301                                  ; $42c8: $01 $01 $03
    rlca                                          ; $42cb: $07
    rlca                                          ; $42cc: $07
    rlca                                          ; $42cd: $07
    inc bc                                        ; $42ce: $03
    inc bc                                        ; $42cf: $03
    inc bc                                        ; $42d0: $03
    inc bc                                        ; $42d1: $03
    inc bc                                        ; $42d2: $03
    inc bc                                        ; $42d3: $03
    inc bc                                        ; $42d4: $03
    inc bc                                        ; $42d5: $03
    ldh [$e2], a                                  ; $42d6: $e0 $e2
    pop hl                                        ; $42d8: $e1
    reti                                          ; $42d9: $d9


    cpl                                           ; $42da: $2f
    dec sp                                        ; $42db: $3b
    ccf                                           ; $42dc: $3f
    ld bc, $0e0d                                  ; $42dd: $01 $0d $0e
    rrca                                          ; $42e0: $0f
    dec b                                         ; $42e1: $05
    ld de, $3012                                  ; $42e2: $11 $12 $30
    jr c, jr_07c_4308                             ; $42e5: $38 $21

    ld hl, $0121                                  ; $42e7: $21 $21 $01
    rlca                                          ; $42ea: $07
    rlca                                          ; $42eb: $07
    rlca                                          ; $42ec: $07
    rlca                                          ; $42ed: $07
    inc bc                                        ; $42ee: $03
    inc bc                                        ; $42ef: $03
    inc bc                                        ; $42f0: $03
    inc bc                                        ; $42f1: $03
    inc bc                                        ; $42f2: $03
    inc bc                                        ; $42f3: $03
    inc bc                                        ; $42f4: $03
    inc bc                                        ; $42f5: $03
    ld b, b                                       ; $42f6: $40
    ld b, c                                       ; $42f7: $41
    ld b, d                                       ; $42f8: $42
    ld b, e                                       ; $42f9: $43
    ld b, h                                       ; $42fa: $44
    ld b, l                                       ; $42fb: $45
    ld b, [hl]                                    ; $42fc: $46
    ld b, a                                       ; $42fd: $47
    ld c, b                                       ; $42fe: $48
    ld c, c                                       ; $42ff: $49
    ld c, d                                       ; $4300: $4a
    ld c, e                                       ; $4301: $4b
    ld c, h                                       ; $4302: $4c
    ld c, l                                       ; $4303: $4d
    ld c, [hl]                                    ; $4304: $4e
    ld c, a                                       ; $4305: $4f
    add d                                         ; $4306: $82
    add d                                         ; $4307: $82

jr_07c_4308:
    add d                                         ; $4308: $82
    add d                                         ; $4309: $82
    add d                                         ; $430a: $82
    add d                                         ; $430b: $82
    add d                                         ; $430c: $82
    add d                                         ; $430d: $82
    add d                                         ; $430e: $82
    add d                                         ; $430f: $82
    add d                                         ; $4310: $82
    add d                                         ; $4311: $82
    add d                                         ; $4312: $82
    add d                                         ; $4313: $82
    add d                                         ; $4314: $82
    add d                                         ; $4315: $82
    ld d, b                                       ; $4316: $50
    ld d, c                                       ; $4317: $51
    dec de                                        ; $4318: $1b
    inc e                                         ; $4319: $1c
    ld d, d                                       ; $431a: $52
    ld d, e                                       ; $431b: $53
    ld d, h                                       ; $431c: $54
    ld d, l                                       ; $431d: $55
    ld d, [hl]                                    ; $431e: $56
    ld d, a                                       ; $431f: $57
    ld e, b                                       ; $4320: $58
    ld e, c                                       ; $4321: $59
    ld e, d                                       ; $4322: $5a
    ld e, e                                       ; $4323: $5b
    ld e, h                                       ; $4324: $5c
    ld e, l                                       ; $4325: $5d
    add d                                         ; $4326: $82
    add d                                         ; $4327: $82
    inc bc                                        ; $4328: $03
    inc bc                                        ; $4329: $03
    add d                                         ; $432a: $82
    add d                                         ; $432b: $82
    add d                                         ; $432c: $82
    add d                                         ; $432d: $82
    add d                                         ; $432e: $82
    add d                                         ; $432f: $82
    add d                                         ; $4330: $82
    add d                                         ; $4331: $82
    add d                                         ; $4332: $82
    add d                                         ; $4333: $82
    add d                                         ; $4334: $82
    add d                                         ; $4335: $82
    ld d, $17                                     ; $4336: $16 $17
    rra                                           ; $4338: $1f
    inc e                                         ; $4339: $1c
    add hl, de                                    ; $433a: $19
    ld a, [de]                                    ; $433b: $1a
    inc hl                                        ; $433c: $23
    ld bc, $555e                                  ; $433d: $01 $5e $55
    rrca                                          ; $4340: $0f
    dec b                                         ; $4341: $05
    ld e, a                                       ; $4342: $5f
    ld h, b                                       ; $4343: $60
    ld h, c                                       ; $4344: $61
    add hl, bc                                    ; $4345: $09
    inc bc                                        ; $4346: $03
    inc bc                                        ; $4347: $03
    inc bc                                        ; $4348: $03
    inc bc                                        ; $4349: $03
    inc bc                                        ; $434a: $03
    inc bc                                        ; $434b: $03
    inc bc                                        ; $434c: $03
    inc bc                                        ; $434d: $03
    add d                                         ; $434e: $82
    add d                                         ; $434f: $82
    inc bc                                        ; $4350: $03
    inc bc                                        ; $4351: $03
    add d                                         ; $4352: $82
    add d                                         ; $4353: $82
    add d                                         ; $4354: $82
    inc bc                                        ; $4355: $03
    jr jr_07c_4376                                ; $4356: $18 $1e

    dec de                                        ; $4358: $1b
    inc e                                         ; $4359: $1c
    ld a, [bc]                                    ; $435a: $0a
    dec bc                                        ; $435b: $0b
    inc c                                         ; $435c: $0c
    ld bc, $0e0d                                  ; $435d: $01 $0d $0e
    rrca                                          ; $4360: $0f
    dec b                                         ; $4361: $05
    ld de, $0812                                  ; $4362: $11 $12 $08
    ld a, [hl-]                                   ; $4365: $3a
    inc bc                                        ; $4366: $03
    inc bc                                        ; $4367: $03
    inc bc                                        ; $4368: $03
    inc bc                                        ; $4369: $03
    inc bc                                        ; $436a: $03
    inc bc                                        ; $436b: $03
    inc bc                                        ; $436c: $03
    inc bc                                        ; $436d: $03
    inc bc                                        ; $436e: $03
    inc bc                                        ; $436f: $03
    inc bc                                        ; $4370: $03
    inc bc                                        ; $4371: $03
    inc bc                                        ; $4372: $03
    inc bc                                        ; $4373: $03
    inc bc                                        ; $4374: $03
    inc bc                                        ; $4375: $03

jr_07c_4376:
    pop de                                        ; $4376: $d1
    pop de                                        ; $4377: $d1
    pop de                                        ; $4378: $d1
    pop de                                        ; $4379: $d1
    jp nc, $d5d4                                  ; $437a: $d2 $d4 $d5

    call c, $d4dd                                 ; $437d: $dc $dd $d4
    reti                                          ; $4380: $d9


    reti                                          ; $4381: $d9


    ldh [$d8], a                                  ; $4382: $e0 $d8
    db $db                                        ; $4384: $db
    db $db                                        ; $4385: $db
    inc b                                         ; $4386: $04
    inc b                                         ; $4387: $04
    inc b                                         ; $4388: $04
    inc b                                         ; $4389: $04
    inc b                                         ; $438a: $04
    ld bc, $2101                                  ; $438b: $01 $01 $21
    ld bc, $0121                                  ; $438e: $01 $21 $01
    ld bc, $2101                                  ; $4391: $01 $01 $21
    ld b, $06                                     ; $4394: $06 $06
    pop de                                        ; $4396: $d1
    pop de                                        ; $4397: $d1
    pop de                                        ; $4398: $d1
    pop de                                        ; $4399: $d1
    push de                                       ; $439a: $d5
    call nc, $d2d3                                ; $439b: $d4 $d3 $d2
    reti                                          ; $439e: $d9


    ret c                                         ; $439f: $d8

    rst $10                                       ; $43a0: $d7
    sub $db                                       ; $43a1: $d6 $db
    db $db                                        ; $43a3: $db
    db $d3                                        ; $43a4: $d3
    jp c, Jump_000_0404                           ; $43a5: $da $04 $04

    inc b                                         ; $43a8: $04
    inc b                                         ; $43a9: $04
    ld hl, $2121                                  ; $43aa: $21 $21 $21
    inc b                                         ; $43ad: $04
    ld hl, $2121                                  ; $43ae: $21 $21 $21
    inc b                                         ; $43b1: $04
    ld b, $06                                     ; $43b2: $06 $06
    ld bc, $f604                                  ; $43b4: $01 $04 $f6
    ld a, [c]                                     ; $43b7: $f2
    di                                            ; $43b8: $f3
    or $db                                        ; $43b9: $f6 $db
    dec d                                         ; $43bb: $15
    db $eb                                        ; $43bc: $eb
    ld sp, hl                                     ; $43bd: $f9
    ei                                            ; $43be: $fb
    db $db                                        ; $43bf: $db
    db $fd                                        ; $43c0: $fd
    ei                                            ; $43c1: $fb
    db $dd                                        ; $43c2: $dd
    rst $18                                       ; $43c3: $df
    sbc $dc                                       ; $43c4: $de $dc
    ld b, $06                                     ; $43c6: $06 $06
    ld b, $06                                     ; $43c8: $06 $06
    inc b                                         ; $43ca: $04
    inc b                                         ; $43cb: $04
    inc b                                         ; $43cc: $04
    inc b                                         ; $43cd: $04
    inc b                                         ; $43ce: $04
    inc b                                         ; $43cf: $04
    inc b                                         ; $43d0: $04
    inc b                                         ; $43d1: $04
    ld hl, $2121                                  ; $43d2: $21 $21 $21
    ld hl, $f3f2                                  ; $43d5: $21 $f2 $f3
    ld l, $f1                                     ; $43d8: $2e $f1
    rst $30                                       ; $43da: $f7
    ld hl, sp-$07                                 ; $43db: $f8 $f9
    rst $30                                       ; $43dd: $f7
    ld a, [$f0ef]                                 ; $43de: $fa $ef $f0
    ld a, [$dfdd]                                 ; $43e1: $fa $dd $df
    push de                                       ; $43e4: $d5
    call nc, Call_000_0606                        ; $43e5: $d4 $06 $06
    ld b, $06                                     ; $43e8: $06 $06
    inc b                                         ; $43ea: $04
    inc b                                         ; $43eb: $04
    inc b                                         ; $43ec: $04
    inc b                                         ; $43ed: $04
    inc b                                         ; $43ee: $04
    inc b                                         ; $43ef: $04
    inc b                                         ; $43f0: $04
    inc b                                         ; $43f1: $04
    ld hl, $2121                                  ; $43f2: $21 $21 $21
    ld hl, $dbdb                                  ; $43f5: $21 $db $db
    push hl                                       ; $43f8: $e5
    add sp, -$08                                  ; $43f9: $e8 $f8
    db $eb                                        ; $43fb: $eb
    ld [$efe9], a                                 ; $43fc: $ea $e9 $ef
    ldh a, [$ee]                                  ; $43ff: $f0 $ee
    db $ed                                        ; $4401: $ed
    db $f4                                        ; $4402: $f4
    or $f2                                        ; $4403: $f6 $f2
    ld l, $06                                     ; $4405: $2e $06
    ld b, $25                                     ; $4407: $06 $25
    dec h                                         ; $4409: $25
    inc b                                         ; $440a: $04
    inc b                                         ; $440b: $04
    dec h                                         ; $440c: $25
    dec h                                         ; $440d: $25
    inc b                                         ; $440e: $04
    inc b                                         ; $440f: $04
    dec h                                         ; $4410: $25
    dec h                                         ; $4411: $25
    ld hl, $0404                                  ; $4412: $21 $04 $04
    inc b                                         ; $4415: $04
    db $e4                                        ; $4416: $e4
    db $db                                        ; $4417: $db
    rst $10                                       ; $4418: $d7
    db $e3                                        ; $4419: $e3
    push hl                                       ; $441a: $e5
    db $db                                        ; $441b: $db
    db $d3                                        ; $441c: $d3
    db $e3                                        ; $441d: $e3
    and $d3                                       ; $441e: $e6 $d3
    rst $10                                       ; $4420: $d7
    db $e3                                        ; $4421: $e3
    db $db                                        ; $4422: $db
    rst $10                                       ; $4423: $d7
    rst $20                                       ; $4424: $e7
    db $e3                                        ; $4425: $e3
    dec h                                         ; $4426: $25
    ld b, $01                                     ; $4427: $06 $01
    inc b                                         ; $4429: $04
    dec b                                         ; $442a: $05
    ld b, $01                                     ; $442b: $06 $01
    inc b                                         ; $442d: $04
    dec h                                         ; $442e: $25
    ld hl, $0421                                  ; $442f: $21 $21 $04
    ld b, $21                                     ; $4432: $06 $21
    ld hl, $e004                                  ; $4434: $21 $04 $e0
    ld [c], a                                     ; $4437: $e2
    pop hl                                        ; $4438: $e1
    reti                                          ; $4439: $d9


    cpl                                           ; $443a: $2f
    dec bc                                        ; $443b: $0b
    add hl, de                                    ; $443c: $19
    ld a, [de]                                    ; $443d: $1a
    dec c                                         ; $443e: $0d
    ld c, $0f                                     ; $443f: $0e $0f
    dec b                                         ; $4441: $05
    ld de, $6212                                  ; $4442: $11 $12 $62
    add hl, bc                                    ; $4445: $09
    ld hl, $2121                                  ; $4446: $21 $21 $21
    ld bc, $0707                                  ; $4449: $01 $07 $07
    rlca                                          ; $444c: $07
    rlca                                          ; $444d: $07
    inc bc                                        ; $444e: $03
    inc bc                                        ; $444f: $03
    inc bc                                        ; $4450: $03
    inc bc                                        ; $4451: $03
    inc bc                                        ; $4452: $03
    inc bc                                        ; $4453: $03
    ld bc, $e003                                  ; $4454: $01 $03 $e0
    ld [c], a                                     ; $4457: $e2
    reti                                          ; $4458: $d9


    ret c                                         ; $4459: $d8

    inc hl                                        ; $445a: $23
    dec bc                                        ; $445b: $0b
    inc c                                         ; $445c: $0c
    jr jr_07c_446c                                ; $445d: $18 $0d

    ld c, $0f                                     ; $445f: $0e $0f
    ld a, [bc]                                    ; $4461: $0a
    ld de, $0812                                  ; $4462: $11 $12 $08
    add hl, bc                                    ; $4465: $09
    ld hl, $2121                                  ; $4466: $21 $21 $21
    ld hl, $0707                                  ; $4469: $21 $07 $07

jr_07c_446c:
    rlca                                          ; $446c: $07
    rlca                                          ; $446d: $07
    inc bc                                        ; $446e: $03
    inc bc                                        ; $446f: $03
    inc bc                                        ; $4470: $03
    rlca                                          ; $4471: $07
    inc bc                                        ; $4472: $03
    inc bc                                        ; $4473: $03
    inc bc                                        ; $4474: $03
    rlca                                          ; $4475: $07
    rst $10                                       ; $4476: $d7
    ld sp, hl                                     ; $4477: $f9
    rst $30                                       ; $4478: $f7
    ld hl, sp-$2d                                 ; $4479: $f8 $d3
    ei                                            ; $447b: $fb
    ld a, [$d7ef]                                 ; $447c: $fa $ef $d7
    pop af                                        ; $447f: $f1
    ld a, [c]                                     ; $4480: $f2
    di                                            ; $4481: $f3
    db $d3                                        ; $4482: $d3
    db $db                                        ; $4483: $db
    dec d                                         ; $4484: $15
    ld hl, sp+$01                                 ; $4485: $f8 $01
    ld b, $04                                     ; $4487: $06 $04
    inc b                                         ; $4489: $04
    ld hl, $0406                                  ; $448a: $21 $06 $04
    inc b                                         ; $448d: $04
    ld hl, $0406                                  ; $448e: $21 $06 $04
    inc b                                         ; $4491: $04
    ld bc, $0406                                  ; $4492: $01 $06 $04
    inc b                                         ; $4495: $04
    db $db                                        ; $4496: $db
    rst $10                                       ; $4497: $d7
    db $e3                                        ; $4498: $e3
    db $e3                                        ; $4499: $e3
    ei                                            ; $449a: $fb
    db $d3                                        ; $449b: $d3
    db $e3                                        ; $449c: $e3
    db $e3                                        ; $449d: $e3
    or $d7                                        ; $449e: $f6 $d7
    db $e3                                        ; $44a0: $e3
    db $e3                                        ; $44a1: $e3
    ld sp, hl                                     ; $44a2: $f9
    db $d3                                        ; $44a3: $d3
    db $e3                                        ; $44a4: $e3
    db $e3                                        ; $44a5: $e3
    ld b, $01                                     ; $44a6: $06 $01
    inc b                                         ; $44a8: $04
    inc b                                         ; $44a9: $04
    ld b, $21                                     ; $44aa: $06 $21
    inc b                                         ; $44ac: $04
    inc b                                         ; $44ad: $04
    ld b, $21                                     ; $44ae: $06 $21
    inc b                                         ; $44b0: $04
    inc b                                         ; $44b1: $04
    ld b, $01                                     ; $44b2: $06 $01
    inc b                                         ; $44b4: $04
    inc b                                         ; $44b5: $04
    dec e                                         ; $44b6: $1d
    ld e, $d3                                     ; $44b7: $1e $d3
    ld h, e                                       ; $44b9: $63
    cpl                                           ; $44ba: $2f
    dec bc                                        ; $44bb: $0b
    ld h, h                                       ; $44bc: $64
    ld h, l                                       ; $44bd: $65
    cp $ff                                        ; $44be: $fe $ff
    db $d3                                        ; $44c0: $d3
    ld h, [hl]                                    ; $44c1: $66
    ld [bc], a                                    ; $44c2: $02
    inc bc                                        ; $44c3: $03
    rst $10                                       ; $44c4: $d7
    ld h, a                                       ; $44c5: $67
    inc bc                                        ; $44c6: $03
    rlca                                          ; $44c7: $07
    ld bc, $0301                                  ; $44c8: $01 $01 $03
    rlca                                          ; $44cb: $07
    ld bc, $0301                                  ; $44cc: $01 $01 $03
    rlca                                          ; $44cf: $07
    ld hl, $0301                                  ; $44d0: $21 $01 $03
    rlca                                          ; $44d3: $07
    ld hl, $6821                                  ; $44d4: $21 $21 $68
    ld l, c                                       ; $44d7: $69
    ld l, d                                       ; $44d8: $6a
    ld l, e                                       ; $44d9: $6b
    ld l, h                                       ; $44da: $6c
    ld l, l                                       ; $44db: $6d
    ld l, [hl]                                    ; $44dc: $6e
    ld l, a                                       ; $44dd: $6f
    ld [hl], b                                    ; $44de: $70
    ld [hl], c                                    ; $44df: $71
    ld [hl], d                                    ; $44e0: $72
    ld [hl], e                                    ; $44e1: $73
    ld h, a                                       ; $44e2: $67
    ld [hl], h                                    ; $44e3: $74
    ld [hl], h                                    ; $44e4: $74
    ld h, a                                       ; $44e5: $67
    ld bc, $0101                                  ; $44e6: $01 $01 $01
    rlca                                          ; $44e9: $07
    ld bc, $0101                                  ; $44ea: $01 $01 $01
    rlca                                          ; $44ed: $07
    ld bc, $0101                                  ; $44ee: $01 $01 $01
    rlca                                          ; $44f1: $07
    ld bc, $2101                                  ; $44f2: $01 $01 $21
    daa                                           ; $44f5: $27
    rst $10                                       ; $44f6: $d7
    db $db                                        ; $44f7: $db
    db $fc                                        ; $44f8: $fc
    rst $28                                       ; $44f9: $ef
    db $d3                                        ; $44fa: $d3
    ei                                            ; $44fb: $fb
    db $db                                        ; $44fc: $db
    ld l, $d7                                     ; $44fd: $2e $d7
    db $db                                        ; $44ff: $db
    db $db                                        ; $4500: $db
    db $eb                                        ; $4501: $eb
    db $d3                                        ; $4502: $d3
    db $ec                                        ; $4503: $ec
    db $ec                                        ; $4504: $ec
    db $db                                        ; $4505: $db
    ld bc, $0406                                  ; $4506: $01 $06 $04
    inc b                                         ; $4509: $04
    ld hl, $0406                                  ; $450a: $21 $06 $04
    inc b                                         ; $450d: $04
    ld hl, $0406                                  ; $450e: $21 $06 $04
    inc b                                         ; $4511: $04
    ld bc, $0406                                  ; $4512: $01 $06 $04
    inc b                                         ; $4515: $04
    ldh a, [$d7]                                  ; $4516: $f0 $d7
    db $e3                                        ; $4518: $e3
    db $e3                                        ; $4519: $e3
    or $d3                                        ; $451a: $f6 $d3
    db $e3                                        ; $451c: $e3
    db $e3                                        ; $451d: $e3
    ld sp, hl                                     ; $451e: $f9
    db $d3                                        ; $451f: $d3
    db $e3                                        ; $4520: $e3
    db $e3                                        ; $4521: $e3
    ei                                            ; $4522: $fb
    rst $10                                       ; $4523: $d7
    db $e3                                        ; $4524: $e3
    db $e3                                        ; $4525: $e3
    ld b, $01                                     ; $4526: $06 $01
    inc b                                         ; $4528: $04
    inc b                                         ; $4529: $04
    ld b, $21                                     ; $452a: $06 $21
    inc b                                         ; $452c: $04
    inc b                                         ; $452d: $04
    ld b, $01                                     ; $452e: $06 $01
    inc b                                         ; $4530: $04
    inc b                                         ; $4531: $04
    ld b, $01                                     ; $4532: $06 $01
    inc b                                         ; $4534: $04
    inc b                                         ; $4535: $04
    db $e3                                        ; $4536: $e3
    db $e3                                        ; $4537: $e3
    db $d3                                        ; $4538: $d3
    db $db                                        ; $4539: $db
    db $e3                                        ; $453a: $e3
    db $e3                                        ; $453b: $e3
    rst $10                                       ; $453c: $d7
    db $eb                                        ; $453d: $eb
    db $e3                                        ; $453e: $e3
    db $e3                                        ; $453f: $e3
    db $d3                                        ; $4540: $d3
    db $db                                        ; $4541: $db
    db $e3                                        ; $4542: $e3
    db $e3                                        ; $4543: $e3
    rst $10                                       ; $4544: $d7
    db $fd                                        ; $4545: $fd
    inc b                                         ; $4546: $04
    inc b                                         ; $4547: $04
    ld hl, $0406                                  ; $4548: $21 $06 $04
    inc b                                         ; $454b: $04
    ld hl, $0406                                  ; $454c: $21 $06 $04
    inc b                                         ; $454f: $04
    ld bc, $0406                                  ; $4550: $01 $06 $04
    inc b                                         ; $4553: $04
    ld bc, $db06                                  ; $4554: $01 $06 $db
    push af                                       ; $4557: $f5
    db $db                                        ; $4558: $db
    rst $10                                       ; $4559: $d7
    db $db                                        ; $455a: $db
    db $db                                        ; $455b: $db
    ld l, $d3                                     ; $455c: $2e $d3
    db $ec                                        ; $455e: $ec
    dec d                                         ; $455f: $15
    ldh a, [$d7]                                  ; $4560: $f0 $d7
    ei                                            ; $4562: $fb
    di                                            ; $4563: $f3
    or $e7                                        ; $4564: $f6 $e7
    inc b                                         ; $4566: $04
    inc b                                         ; $4567: $04
    ld b, $21                                     ; $4568: $06 $21
    inc b                                         ; $456a: $04
    inc b                                         ; $456b: $04
    ld b, $01                                     ; $456c: $06 $01
    inc b                                         ; $456e: $04
    inc b                                         ; $456f: $04
    ld b, $01                                     ; $4570: $06 $01
    inc b                                         ; $4572: $04
    inc b                                         ; $4573: $04
    ld b, $21                                     ; $4574: $06 $21
    inc c                                         ; $4576: $0c
    ld d, $17                                     ; $4577: $16 $17
    rra                                           ; $4579: $1f
    rrca                                          ; $457a: $0f
    add hl, de                                    ; $457b: $19
    ld a, [de]                                    ; $457c: $1a
    inc hl                                        ; $457d: $23
    ld [$1109], sp                                ; $457e: $08 $09 $11
    ld [de], a                                    ; $4581: $12
    jr nc, jr_07c_45bc                            ; $4582: $30 $38

    dec e                                         ; $4584: $1d
    ld e, $07                                     ; $4585: $1e $07
    inc bc                                        ; $4587: $03
    inc bc                                        ; $4588: $03
    inc bc                                        ; $4589: $03
    rlca                                          ; $458a: $07
    inc bc                                        ; $458b: $03
    inc bc                                        ; $458c: $03
    inc bc                                        ; $458d: $03
    rlca                                          ; $458e: $07
    inc bc                                        ; $458f: $03
    inc bc                                        ; $4590: $03
    inc bc                                        ; $4591: $03
    rlca                                          ; $4592: $07
    inc bc                                        ; $4593: $03
    inc bc                                        ; $4594: $03
    inc bc                                        ; $4595: $03
    ld [hl], l                                    ; $4596: $75
    halt                                          ; $4597: $76
    ld [hl], a                                    ; $4598: $77
    ld a, b                                       ; $4599: $78
    ld a, c                                       ; $459a: $79
    ld a, d                                       ; $459b: $7a
    ld a, e                                       ; $459c: $7b
    ld a, h                                       ; $459d: $7c
    ld a, l                                       ; $459e: $7d
    ld a, [hl]                                    ; $459f: $7e
    ld a, a                                       ; $45a0: $7f
    add b                                         ; $45a1: $80
    dec de                                        ; $45a2: $1b
    add c                                         ; $45a3: $81
    add d                                         ; $45a4: $82
    add e                                         ; $45a5: $83
    add d                                         ; $45a6: $82
    add d                                         ; $45a7: $82
    add d                                         ; $45a8: $82
    add d                                         ; $45a9: $82
    add d                                         ; $45aa: $82
    add d                                         ; $45ab: $82
    add d                                         ; $45ac: $82
    add d                                         ; $45ad: $82
    add d                                         ; $45ae: $82
    add d                                         ; $45af: $82
    add d                                         ; $45b0: $82
    adc d                                         ; $45b1: $8a
    inc bc                                        ; $45b2: $03
    adc d                                         ; $45b3: $8a

jr_07c_45b4:
    adc d                                         ; $45b4: $8a
    adc d                                         ; $45b5: $8a
    db $e3                                        ; $45b6: $e3
    db $e3                                        ; $45b7: $e3
    db $d3                                        ; $45b8: $d3
    ld sp, hl                                     ; $45b9: $f9
    db $e3                                        ; $45ba: $e3
    db $e3                                        ; $45bb: $e3

jr_07c_45bc:
    rst $10                                       ; $45bc: $d7
    ldh a, [$e3]                                  ; $45bd: $f0 $e3
    db $e3                                        ; $45bf: $e3
    db $d3                                        ; $45c0: $d3
    or $e3                                        ; $45c1: $f6 $e3
    db $e3                                        ; $45c3: $e3
    rst $10                                       ; $45c4: $d7
    ld sp, hl                                     ; $45c5: $f9
    inc b                                         ; $45c6: $04
    inc b                                         ; $45c7: $04
    ld hl, $0406                                  ; $45c8: $21 $06 $04
    inc b                                         ; $45cb: $04
    ld hl, $0406                                  ; $45cc: $21 $06 $04
    inc b                                         ; $45cf: $04
    ld bc, $0406                                  ; $45d0: $01 $06 $04
    inc b                                         ; $45d3: $04
    ld bc, $f706                                  ; $45d4: $01 $06 $f7
    ld hl, sp-$07                                 ; $45d7: $f8 $f9
    add h                                         ; $45d9: $84
    ld a, [$f0ef]                                 ; $45da: $fa $ef $f0
    add l                                         ; $45dd: $85
    ld a, [c]                                     ; $45de: $f2
    di                                            ; $45df: $f3
    or $86                                        ; $45e0: $f6 $86
    rst $30                                       ; $45e2: $f7
    ld hl, sp-$07                                 ; $45e3: $f8 $f9
    add a                                         ; $45e5: $87
    inc b                                         ; $45e6: $04
    inc b                                         ; $45e7: $04
    ld b, $0f                                     ; $45e8: $06 $0f
    inc b                                         ; $45ea: $04
    inc b                                         ; $45eb: $04
    inc b                                         ; $45ec: $04
    dec bc                                        ; $45ed: $0b
    inc b                                         ; $45ee: $04
    inc b                                         ; $45ef: $04
    inc b                                         ; $45f0: $04
    dec bc                                        ; $45f1: $0b
    inc b                                         ; $45f2: $04
    inc b                                         ; $45f3: $04
    inc b                                         ; $45f4: $04
    dec bc                                        ; $45f5: $0b
    cpl                                           ; $45f6: $2f
    dec bc                                        ; $45f7: $0b
    add hl, sp                                    ; $45f8: $39
    ld a, $0d                                     ; $45f9: $3e $0d
    ld c, $3b                                     ; $45fb: $0e $3b
    ccf                                           ; $45fd: $3f
    ld de, $0812                                  ; $45fe: $11 $12 $08
    add hl, bc                                    ; $4601: $09
    dec e                                         ; $4602: $1d
    jr jr_07c_4620                                ; $4603: $18 $1b

    inc e                                         ; $4605: $1c
    rlca                                          ; $4606: $07
    inc bc                                        ; $4607: $03
    inc bc                                        ; $4608: $03
    inc bc                                        ; $4609: $03
    inc bc                                        ; $460a: $03
    inc bc                                        ; $460b: $03
    inc bc                                        ; $460c: $03
    inc bc                                        ; $460d: $03
    inc bc                                        ; $460e: $03
    inc bc                                        ; $460f: $03
    inc bc                                        ; $4610: $03
    inc bc                                        ; $4611: $03
    inc bc                                        ; $4612: $03
    inc bc                                        ; $4613: $03
    inc bc                                        ; $4614: $03
    inc bc                                        ; $4615: $03
    adc b                                         ; $4616: $88
    adc c                                         ; $4617: $89
    adc d                                         ; $4618: $8a
    ld bc, $8c8b                                  ; $4619: $01 $8b $8c
    adc l                                         ; $461c: $8d
    dec b                                         ; $461d: $05
    adc [hl]                                      ; $461e: $8e
    adc a                                         ; $461f: $8f

jr_07c_4620:
    sub b                                         ; $4620: $90
    jr nc, jr_07c_45b4                            ; $4621: $30 $91

    sub d                                         ; $4623: $92
    sub e                                         ; $4624: $93
    inc e                                         ; $4625: $1c
    adc d                                         ; $4626: $8a
    adc d                                         ; $4627: $8a
    adc d                                         ; $4628: $8a
    inc bc                                        ; $4629: $03
    adc d                                         ; $462a: $8a
    adc d                                         ; $462b: $8a
    adc d                                         ; $462c: $8a
    inc bc                                        ; $462d: $03
    adc d                                         ; $462e: $8a
    adc d                                         ; $462f: $8a
    adc d                                         ; $4630: $8a
    inc bc                                        ; $4631: $03
    adc d                                         ; $4632: $8a
    adc d                                         ; $4633: $8a
    adc d                                         ; $4634: $8a
    inc bc                                        ; $4635: $03
    db $e3                                        ; $4636: $e3
    db $e3                                        ; $4637: $e3
    db $d3                                        ; $4638: $d3
    pop af                                        ; $4639: $f1
    db $e3                                        ; $463a: $e3
    db $e3                                        ; $463b: $e3
    rst $10                                       ; $463c: $d7
    db $db                                        ; $463d: $db
    db $e3                                        ; $463e: $e3
    db $e3                                        ; $463f: $e3
    db $d3                                        ; $4640: $d3
    db $eb                                        ; $4641: $eb
    db $e3                                        ; $4642: $e3
    db $e3                                        ; $4643: $e3
    rst $10                                       ; $4644: $d7

Jump_07c_4645:
    db $fd                                        ; $4645: $fd
    inc b                                         ; $4646: $04
    inc b                                         ; $4647: $04
    ld hl, $0406                                  ; $4648: $21 $06 $04
    inc b                                         ; $464b: $04
    ld hl, $0406                                  ; $464c: $21 $06 $04
    inc b                                         ; $464f: $04
    ld bc, $0406                                  ; $4650: $01 $06 $04
    inc b                                         ; $4653: $04
    ld bc, $fa06                                  ; $4654: $01 $06 $fa
    rst $28                                       ; $4657: $ef
    ldh a, [$d3]                                  ; $4658: $f0 $d3
    dec d                                         ; $465a: $15
    di                                            ; $465b: $f3
    or $d7                                        ; $465c: $f6 $d7
    db $fc                                        ; $465e: $fc
    ld hl, sp-$07                                 ; $465f: $f8 $f9
    db $d3                                        ; $4661: $d3
    db $db                                        ; $4662: $db
    db $eb                                        ; $4663: $eb
    ldh a, [$d7]                                  ; $4664: $f0 $d7
    inc b                                         ; $4666: $04
    inc b                                         ; $4667: $04
    inc b                                         ; $4668: $04
    ld hl, $0404                                  ; $4669: $21 $04 $04
    ld b, $21                                     ; $466c: $06 $21
    inc b                                         ; $466e: $04
    inc b                                         ; $466f: $04
    ld b, $01                                     ; $4670: $06 $01
    inc b                                         ; $4672: $04
    inc b                                         ; $4673: $04
    ld b, $01                                     ; $4674: $06 $01
    dec bc                                        ; $4676: $0b
    ld a, [bc]                                    ; $4677: $0a
    sub h                                         ; $4678: $94
    sub l                                         ; $4679: $95
    ld c, $0f                                     ; $467a: $0e $0f
    sub [hl]                                      ; $467c: $96
    sub a                                         ; $467d: $97
    ld a, $08                                     ; $467e: $3e $08
    sbc b                                         ; $4680: $98
    sbc c                                         ; $4681: $99
    ccf                                           ; $4682: $3f
    dec de                                        ; $4683: $1b
    sbc d                                         ; $4684: $9a
    sbc c                                         ; $4685: $99
    inc bc                                        ; $4686: $03
    inc bc                                        ; $4687: $03
    dec bc                                        ; $4688: $0b
    dec bc                                        ; $4689: $0b
    rlca                                          ; $468a: $07
    inc bc                                        ; $468b: $03
    dec bc                                        ; $468c: $0b
    ld a, [bc]                                    ; $468d: $0a
    rlca                                          ; $468e: $07
    inc bc                                        ; $468f: $03
    dec bc                                        ; $4690: $0b
    ld a, [bc]                                    ; $4691: $0a
    rlca                                          ; $4692: $07
    inc bc                                        ; $4693: $03
    dec bc                                        ; $4694: $0b
    ld a, [bc]                                    ; $4695: $0a
    sbc e                                         ; $4696: $9b
    sbc h                                         ; $4697: $9c
    sbc l                                         ; $4698: $9d
    sbc [hl]                                      ; $4699: $9e
    sbc a                                         ; $469a: $9f
    and b                                         ; $469b: $a0
    sub a                                         ; $469c: $97
    and c                                         ; $469d: $a1
    and d                                         ; $469e: $a2
    and e                                         ; $469f: $a3
    sbc c                                         ; $46a0: $99
    and h                                         ; $46a1: $a4
    and l                                         ; $46a2: $a5
    and [hl]                                      ; $46a3: $a6
    sbc c                                         ; $46a4: $99
    and c                                         ; $46a5: $a1
    adc d                                         ; $46a6: $8a
    adc d                                         ; $46a7: $8a
    dec bc                                        ; $46a8: $0b
    dec bc                                        ; $46a9: $0b
    adc d                                         ; $46aa: $8a
    adc d                                         ; $46ab: $8a
    ld a, [hl+]                                   ; $46ac: $2a
    dec bc                                        ; $46ad: $0b
    ld a, [bc]                                    ; $46ae: $0a
    ld a, [bc]                                    ; $46af: $0a
    ld a, [hl+]                                   ; $46b0: $2a
    dec bc                                        ; $46b1: $0b
    ld a, [bc]                                    ; $46b2: $0a
    ld a, [bc]                                    ; $46b3: $0a
    ld a, [hl+]                                   ; $46b4: $2a
    dec bc                                        ; $46b5: $0b
    db $e3                                        ; $46b6: $e3
    db $e3                                        ; $46b7: $e3
    db $d3                                        ; $46b8: $d3
    db $db                                        ; $46b9: $db
    db $e3                                        ; $46ba: $e3
    db $e3                                        ; $46bb: $e3
    rst $10                                       ; $46bc: $d7
    db $db                                        ; $46bd: $db
    db $e3                                        ; $46be: $e3
    db $e3                                        ; $46bf: $e3
    db $d3                                        ; $46c0: $d3
    push af                                       ; $46c1: $f5
    db $e3                                        ; $46c2: $e3
    db $e3                                        ; $46c3: $e3
    rst $10                                       ; $46c4: $d7
    dec d                                         ; $46c5: $15
    inc b                                         ; $46c6: $04
    inc b                                         ; $46c7: $04
    ld hl, $0406                                  ; $46c8: $21 $06 $04
    inc b                                         ; $46cb: $04
    ld hl, $0406                                  ; $46cc: $21 $06 $04
    inc b                                         ; $46cf: $04
    ld bc, $0406                                  ; $46d0: $01 $06 $04
    inc b                                         ; $46d3: $04
    ld bc, $db06                                  ; $46d4: $01 $06 $db
    db $db                                        ; $46d7: $db
    ei                                            ; $46d8: $fb
    db $d3                                        ; $46d9: $d3
    ld l, $db                                     ; $46da: $2e $db
    db $db                                        ; $46dc: $db
    rst $10                                       ; $46dd: $d7
    db $db                                        ; $46de: $db
    db $ec                                        ; $46df: $ec
    dec d                                         ; $46e0: $15
    db $d3                                        ; $46e1: $d3
    db $db                                        ; $46e2: $db
    db $db                                        ; $46e3: $db
    db $fc                                        ; $46e4: $fc
    rst $10                                       ; $46e5: $d7
    inc b                                         ; $46e6: $04
    inc b                                         ; $46e7: $04
    ld b, $21                                     ; $46e8: $06 $21
    inc b                                         ; $46ea: $04
    inc b                                         ; $46eb: $04
    ld b, $21                                     ; $46ec: $06 $21
    inc b                                         ; $46ee: $04
    inc b                                         ; $46ef: $04
    ld b, $01                                     ; $46f0: $06 $01
    inc b                                         ; $46f2: $04
    inc b                                         ; $46f3: $04
    ld b, $01                                     ; $46f4: $06 $01
    dec bc                                        ; $46f6: $0b
    inc c                                         ; $46f7: $0c
    and a                                         ; $46f8: $a7
    sbc c                                         ; $46f9: $99
    ld c, $0f                                     ; $46fa: $0e $0f
    sub [hl]                                      ; $46fc: $96
    sbc c                                         ; $46fd: $99
    ld [de], a                                    ; $46fe: $12
    ld a, [hl-]                                   ; $46ff: $3a
    sbc b                                         ; $4700: $98
    sbc c                                         ; $4701: $99
    ld e, $1b                                     ; $4702: $1e $1b
    sbc d                                         ; $4704: $9a
    sbc c                                         ; $4705: $99
    rlca                                          ; $4706: $07
    inc bc                                        ; $4707: $03
    dec bc                                        ; $4708: $0b
    ld a, [bc]                                    ; $4709: $0a
    rlca                                          ; $470a: $07
    inc bc                                        ; $470b: $03
    dec bc                                        ; $470c: $0b
    ld a, [bc]                                    ; $470d: $0a
    rlca                                          ; $470e: $07
    inc bc                                        ; $470f: $03
    dec bc                                        ; $4710: $0b
    ld a, [bc]                                    ; $4711: $0a
    rlca                                          ; $4712: $07
    inc bc                                        ; $4713: $03
    dec bc                                        ; $4714: $0b
    ld a, [bc]                                    ; $4715: $0a
    xor b                                         ; $4716: $a8
    xor c                                         ; $4717: $a9
    sbc c                                         ; $4718: $99
    xor d                                         ; $4719: $aa
    db $e3                                        ; $471a: $e3
    db $e3                                        ; $471b: $e3
    sbc c                                         ; $471c: $99
    and c                                         ; $471d: $a1
    db $e3                                        ; $471e: $e3
    db $e3                                        ; $471f: $e3
    sbc c                                         ; $4720: $99
    and h                                         ; $4721: $a4
    db $e3                                        ; $4722: $e3
    db $e3                                        ; $4723: $e3
    sbc c                                         ; $4724: $99
    xor d                                         ; $4725: $aa
    ld a, [bc]                                    ; $4726: $0a
    ld a, [bc]                                    ; $4727: $0a
    ld a, [hl+]                                   ; $4728: $2a
    dec bc                                        ; $4729: $0b
    ld [bc], a                                    ; $472a: $02
    ld [bc], a                                    ; $472b: $02
    ld a, [hl+]                                   ; $472c: $2a
    dec bc                                        ; $472d: $0b
    ld [bc], a                                    ; $472e: $02
    ld [bc], a                                    ; $472f: $02
    ld a, [hl+]                                   ; $4730: $2a
    dec bc                                        ; $4731: $0b
    ld [bc], a                                    ; $4732: $02
    ld [bc], a                                    ; $4733: $02
    ld a, [hl+]                                   ; $4734: $2a
    dec bc                                        ; $4735: $0b
    xor e                                         ; $4736: $ab
    xor h                                         ; $4737: $ac
    db $db                                        ; $4738: $db
    db $db                                        ; $4739: $db
    xor l                                         ; $473a: $ad
    xor [hl]                                      ; $473b: $ae
    db $db                                        ; $473c: $db
    db $db                                        ; $473d: $db
    xor a                                         ; $473e: $af
    or b                                          ; $473f: $b0
    or c                                          ; $4740: $b1
    db $db                                        ; $4741: $db
    or d                                          ; $4742: $b2
    or e                                          ; $4743: $b3
    or h                                          ; $4744: $b4
    or l                                          ; $4745: $b5
    adc d                                         ; $4746: $8a
    adc d                                         ; $4747: $8a
    add d                                         ; $4748: $82
    add d                                         ; $4749: $82
    adc d                                         ; $474a: $8a
    adc d                                         ; $474b: $8a
    add d                                         ; $474c: $82
    add d                                         ; $474d: $82
    adc d                                         ; $474e: $8a
    adc d                                         ; $474f: $8a
    adc d                                         ; $4750: $8a
    add d                                         ; $4751: $82
    adc d                                         ; $4752: $8a
    adc d                                         ; $4753: $8a
    adc d                                         ; $4754: $8a
    adc d                                         ; $4755: $8a
    or [hl]                                       ; $4756: $b6
    or a                                          ; $4757: $b7
    cp b                                          ; $4758: $b8
    cp c                                          ; $4759: $b9
    cp d                                          ; $475a: $ba
    cp e                                          ; $475b: $bb
    cp h                                          ; $475c: $bc
    cp l                                          ; $475d: $bd
    cp [hl]                                       ; $475e: $be
    db $db                                        ; $475f: $db
    cp a                                          ; $4760: $bf
    ret nz                                        ; $4761: $c0

    pop bc                                        ; $4762: $c1
    jp nz, $c4c3                                  ; $4763: $c2 $c3 $c4

    adc d                                         ; $4766: $8a
    adc d                                         ; $4767: $8a
    adc d                                         ; $4768: $8a
    adc d                                         ; $4769: $8a
    adc d                                         ; $476a: $8a
    adc d                                         ; $476b: $8a
    adc d                                         ; $476c: $8a
    adc d                                         ; $476d: $8a
    adc d                                         ; $476e: $8a
    add d                                         ; $476f: $82
    adc d                                         ; $4770: $8a
    adc d                                         ; $4771: $8a
    adc d                                         ; $4772: $8a
    adc d                                         ; $4773: $8a
    adc d                                         ; $4774: $8a
    adc d                                         ; $4775: $8a
    push bc                                       ; $4776: $c5
    add $c7                                       ; $4777: $c6 $c7
    ret z                                         ; $4779: $c8

    ret                                           ; $477a: $c9


    jp z, $cccb                                   ; $477b: $ca $cb $cc

    call $cfce                                    ; $477e: $cd $ce $cf
    ret nc                                        ; $4781: $d0

    pop de                                        ; $4782: $d1
    jp nc, $d4d3                                  ; $4783: $d2 $d3 $d4

    adc d                                         ; $4786: $8a
    adc d                                         ; $4787: $8a
    adc d                                         ; $4788: $8a
    adc d                                         ; $4789: $8a
    adc d                                         ; $478a: $8a
    adc d                                         ; $478b: $8a
    adc d                                         ; $478c: $8a
    adc d                                         ; $478d: $8a
    adc d                                         ; $478e: $8a
    adc d                                         ; $478f: $8a
    adc d                                         ; $4790: $8a
    adc d                                         ; $4791: $8a
    adc d                                         ; $4792: $8a
    adc d                                         ; $4793: $8a
    adc d                                         ; $4794: $8a
    adc d                                         ; $4795: $8a
    ld h, c                                       ; $4796: $61
    ld e, $1b                                     ; $4797: $1e $1b
    inc e                                         ; $4799: $1c
    push de                                       ; $479a: $d5
    sub $01                                       ; $479b: $d6 $01
    cpl                                           ; $479d: $2f
    rst $10                                       ; $479e: $d7
    ret c                                         ; $479f: $d8

    ret z                                         ; $47a0: $c8

    ld h, c                                       ; $47a1: $61
    reti                                          ; $47a2: $d9


    jp c, $dcdb                                   ; $47a3: $da $db $dc

    add d                                         ; $47a6: $82
    inc bc                                        ; $47a7: $03
    inc bc                                        ; $47a8: $03
    inc bc                                        ; $47a9: $03
    adc d                                         ; $47aa: $8a
    adc d                                         ; $47ab: $8a
    inc bc                                        ; $47ac: $03
    inc bc                                        ; $47ad: $03
    adc d                                         ; $47ae: $8a
    adc d                                         ; $47af: $8a
    adc d                                         ; $47b0: $8a
    add d                                         ; $47b1: $82
    adc d                                         ; $47b2: $8a
    adc d                                         ; $47b3: $8a
    adc d                                         ; $47b4: $8a
    adc d                                         ; $47b5: $8a
    db $dd                                        ; $47b6: $dd
    sbc $df                                       ; $47b7: $de $df
    ldh [$0d], a                                  ; $47b9: $e0 $0d
    ld c, $e1                                     ; $47bb: $0e $e1
    ld [c], a                                     ; $47bd: $e2
    jr c, jr_07c_47d2                             ; $47be: $38 $12

    db $e3                                        ; $47c0: $e3
    db $e4                                        ; $47c1: $e4
    dec e                                         ; $47c2: $1d
    ld e, $e5                                     ; $47c3: $1e $e5
    db $e3                                        ; $47c5: $e3
    adc d                                         ; $47c6: $8a
    adc d                                         ; $47c7: $8a
    adc d                                         ; $47c8: $8a
    adc d                                         ; $47c9: $8a
    inc bc                                        ; $47ca: $03
    inc bc                                        ; $47cb: $03
    adc d                                         ; $47cc: $8a
    adc d                                         ; $47cd: $8a
    inc bc                                        ; $47ce: $03
    inc bc                                        ; $47cf: $03
    ld a, [bc]                                    ; $47d0: $0a
    ld a, [bc]                                    ; $47d1: $0a

jr_07c_47d2:
    inc bc                                        ; $47d2: $03
    inc bc                                        ; $47d3: $03
    ld a, [bc]                                    ; $47d4: $0a
    ld [bc], a                                    ; $47d5: $02
    and $e7                                       ; $47d6: $e6 $e7
    add sp, -$17                                  ; $47d8: $e8 $e9
    ld [$eceb], a                                 ; $47da: $ea $eb $ec
    db $ed                                        ; $47dd: $ed
    xor $ef                                       ; $47de: $ee $ef
    ldh a, [$f1]                                  ; $47e0: $f0 $f1
    db $e3                                        ; $47e2: $e3
    db $e3                                        ; $47e3: $e3
    ld a, [c]                                     ; $47e4: $f2
    di                                            ; $47e5: $f3
    adc d                                         ; $47e6: $8a
    adc d                                         ; $47e7: $8a
    adc d                                         ; $47e8: $8a
    adc d                                         ; $47e9: $8a
    adc d                                         ; $47ea: $8a
    adc d                                         ; $47eb: $8a
    adc d                                         ; $47ec: $8a
    adc d                                         ; $47ed: $8a
    adc d                                         ; $47ee: $8a
    adc d                                         ; $47ef: $8a
    adc d                                         ; $47f0: $8a
    adc d                                         ; $47f1: $8a
    add d                                         ; $47f2: $82
    add d                                         ; $47f3: $82
    adc d                                         ; $47f4: $8a
    adc d                                         ; $47f5: $8a
    db $f4                                        ; $47f6: $f4
    push af                                       ; $47f7: $f5
    or $f7                                        ; $47f8: $f6 $f7
    ld hl, sp-$07                                 ; $47fa: $f8 $f9
    ld a, [$fbdb]                                 ; $47fc: $fa $db $fb
    db $fc                                        ; $47ff: $fc
    db $fd                                        ; $4800: $fd
    cp $ff                                        ; $4801: $fe $ff
    nop                                           ; $4803: $00
    ld bc, $8a02                                  ; $4804: $01 $02 $8a
    adc d                                         ; $4807: $8a
    adc d                                         ; $4808: $8a
    adc d                                         ; $4809: $8a
    adc d                                         ; $480a: $8a
    adc d                                         ; $480b: $8a
    adc d                                         ; $480c: $8a
    add d                                         ; $480d: $82
    adc d                                         ; $480e: $8a
    adc d                                         ; $480f: $8a
    adc d                                         ; $4810: $8a
    adc d                                         ; $4811: $8a
    adc d                                         ; $4812: $8a
    adc d                                         ; $4813: $8a
    adc d                                         ; $4814: $8a
    adc d                                         ; $4815: $8a
    inc bc                                        ; $4816: $03
    inc b                                         ; $4817: $04
    dec b                                         ; $4818: $05
    ld b, $07                                     ; $4819: $06 $07
    ld [$0a09], sp                                ; $481b: $08 $09 $0a
    dec bc                                        ; $481e: $0b
    db $db                                        ; $481f: $db
    inc c                                         ; $4820: $0c
    dec c                                         ; $4821: $0d
    ld c, $0f                                     ; $4822: $0e $0f
    db $10                                        ; $4824: $10
    cp d                                          ; $4825: $ba
    adc d                                         ; $4826: $8a
    adc d                                         ; $4827: $8a
    adc d                                         ; $4828: $8a
    adc d                                         ; $4829: $8a
    adc d                                         ; $482a: $8a
    adc d                                         ; $482b: $8a
    adc d                                         ; $482c: $8a
    adc d                                         ; $482d: $8a
    adc d                                         ; $482e: $8a
    add d                                         ; $482f: $82
    adc d                                         ; $4830: $8a
    adc d                                         ; $4831: $8a
    adc d                                         ; $4832: $8a
    adc d                                         ; $4833: $8a
    adc d                                         ; $4834: $8a
    xor d                                         ; $4835: $aa
    dec bc                                        ; $4836: $0b
    inc c                                         ; $4837: $0c
    ld de, $0ee3                                  ; $4838: $11 $e3 $0e
    rrca                                          ; $483b: $0f
    ld [de], a                                    ; $483c: $12
    db $e3                                        ; $483d: $e3
    ld [de], a                                    ; $483e: $12
    ld [$e313], sp                                ; $483f: $08 $13 $e3
    add hl, sp                                    ; $4842: $39
    ld a, $14                                     ; $4843: $3e $14
    dec d                                         ; $4845: $15
    inc bc                                        ; $4846: $03

Jump_07c_4847:
    inc bc                                        ; $4847: $03
    ld a, [bc]                                    ; $4848: $0a
    ld [bc], a                                    ; $4849: $02
    inc bc                                        ; $484a: $03
    inc bc                                        ; $484b: $03
    ld a, [bc]                                    ; $484c: $0a
    ld [bc], a                                    ; $484d: $02
    inc bc                                        ; $484e: $03
    inc bc                                        ; $484f: $03
    ld a, [bc]                                    ; $4850: $0a
    ld [bc], a                                    ; $4851: $02
    inc bc                                        ; $4852: $03
    inc bc                                        ; $4853: $03
    ld a, [bc]                                    ; $4854: $0a
    ld a, [bc]                                    ; $4855: $0a
    db $e3                                        ; $4856: $e3
    db $e3                                        ; $4857: $e3
    ld d, $17                                     ; $4858: $16 $17
    db $e3                                        ; $485a: $e3
    db $e3                                        ; $485b: $e3
    jr @+$1b                                      ; $485c: $18 $19

    db $e3                                        ; $485e: $e3
    db $e3                                        ; $485f: $e3
    ld a, [de]                                    ; $4860: $1a
    dec de                                        ; $4861: $1b
    inc e                                         ; $4862: $1c
    dec e                                         ; $4863: $1d
    ld e, $1f                                     ; $4864: $1e $1f
    ld [bc], a                                    ; $4866: $02
    ld [bc], a                                    ; $4867: $02
    ld a, [bc]                                    ; $4868: $0a
    ld a, [bc]                                    ; $4869: $0a
    ld [bc], a                                    ; $486a: $02
    ld [bc], a                                    ; $486b: $02
    ld a, [bc]                                    ; $486c: $0a
    ld a, [bc]                                    ; $486d: $0a
    ld [bc], a                                    ; $486e: $02
    ld [bc], a                                    ; $486f: $02
    ld a, [bc]                                    ; $4870: $0a
    ld a, [bc]                                    ; $4871: $0a
    ld a, [bc]                                    ; $4872: $0a
    ld a, [bc]                                    ; $4873: $0a
    ld a, [bc]                                    ; $4874: $0a
    ld a, [bc]                                    ; $4875: $0a
    jr nz, @+$23                                  ; $4876: $20 $21

    ld [hl+], a                                   ; $4878: $22
    inc hl                                        ; $4879: $23
    inc h                                         ; $487a: $24
    dec h                                         ; $487b: $25
    db $e3                                        ; $487c: $e3
    db $e3                                        ; $487d: $e3
    ld h, $27                                     ; $487e: $26 $27
    jr z, jr_07c_48ab                             ; $4880: $28 $29

    ld a, [hl+]                                   ; $4882: $2a
    dec hl                                        ; $4883: $2b
    inc l                                         ; $4884: $2c
    dec l                                         ; $4885: $2d
    ld a, [bc]                                    ; $4886: $0a
    ld a, [bc]                                    ; $4887: $0a
    ld a, [bc]                                    ; $4888: $0a
    ld a, [bc]                                    ; $4889: $0a
    ld a, [bc]                                    ; $488a: $0a
    ld a, [bc]                                    ; $488b: $0a
    ld [bc], a                                    ; $488c: $02
    ld [bc], a                                    ; $488d: $02
    ld a, [bc]                                    ; $488e: $0a
    ld a, [bc]                                    ; $488f: $0a
    ld a, [bc]                                    ; $4890: $0a
    ld a, [bc]                                    ; $4891: $0a
    ld a, [bc]                                    ; $4892: $0a
    ld a, [bc]                                    ; $4893: $0a
    ld a, [bc]                                    ; $4894: $0a
    ld a, [bc]                                    ; $4895: $0a
    ld l, $2f                                     ; $4896: $2e $2f
    jr nc, jr_07c_48cb                            ; $4898: $30 $31

    ld [hl-], a                                   ; $489a: $32
    inc sp                                        ; $489b: $33
    inc [hl]                                      ; $489c: $34
    dec [hl]                                      ; $489d: $35
    add hl, hl                                    ; $489e: $29
    ld [hl], $1c                                  ; $489f: $36 $1c
    dec e                                         ; $48a1: $1d
    scf                                           ; $48a2: $37
    jr c, jr_07c_48ae                             ; $48a3: $38 $09

    ld de, $8a0a                                  ; $48a5: $11 $0a $8a
    adc d                                         ; $48a8: $8a
    adc d                                         ; $48a9: $8a
    ld a, [bc]                                    ; $48aa: $0a

jr_07c_48ab:
    adc d                                         ; $48ab: $8a
    adc d                                         ; $48ac: $8a
    adc d                                         ; $48ad: $8a

jr_07c_48ae:
    ld a, [bc]                                    ; $48ae: $0a
    ld a, [bc]                                    ; $48af: $0a
    inc bc                                        ; $48b0: $03
    inc bc                                        ; $48b1: $03
    ld a, [bc]                                    ; $48b2: $0a
    ld a, [bc]                                    ; $48b3: $0a
    inc bc                                        ; $48b4: $03
    inc bc                                        ; $48b5: $03
    dec sp                                        ; $48b6: $3b
    ccf                                           ; $48b7: $3f
    add hl, sp                                    ; $48b8: $39
    ld a, [hl-]                                   ; $48b9: $3a
    ld c, $3a                                     ; $48ba: $0e $3a
    dec b                                         ; $48bc: $05
    dec sp                                        ; $48bd: $3b
    ld [de], a                                    ; $48be: $12
    ld [$1109], sp                                ; $48bf: $08 $09 $11
    ld d, $17                                     ; $48c2: $16 $17
    rra                                           ; $48c4: $1f
    dec e                                         ; $48c5: $1d
    inc bc                                        ; $48c6: $03
    inc bc                                        ; $48c7: $03
    ld a, [hl+]                                   ; $48c8: $2a
    ld a, [bc]                                    ; $48c9: $0a
    inc bc                                        ; $48ca: $03

jr_07c_48cb:
    inc bc                                        ; $48cb: $03
    inc bc                                        ; $48cc: $03
    ld a, [bc]                                    ; $48cd: $0a
    inc bc                                        ; $48ce: $03
    inc bc                                        ; $48cf: $03
    inc bc                                        ; $48d0: $03
    inc bc                                        ; $48d1: $03
    inc bc                                        ; $48d2: $03
    inc bc                                        ; $48d3: $03
    inc bc                                        ; $48d4: $03
    inc bc                                        ; $48d5: $03
    inc a                                         ; $48d6: $3c
    dec a                                         ; $48d7: $3d
    ld a, $3f                                     ; $48d8: $3e $3f
    ld b, b                                       ; $48da: $40
    ld b, c                                       ; $48db: $41
    ld b, d                                       ; $48dc: $42
    dec l                                         ; $48dd: $2d
    ld b, e                                       ; $48de: $43
    ld b, h                                       ; $48df: $44
    ld b, l                                       ; $48e0: $45
    ld b, [hl]                                    ; $48e1: $46
    ld e, $30                                     ; $48e2: $1e $30
    jr c, jr_07c_4901                             ; $48e4: $38 $1b

    ld a, [bc]                                    ; $48e6: $0a
    ld a, [bc]                                    ; $48e7: $0a
    ld a, [bc]                                    ; $48e8: $0a
    ld a, [bc]                                    ; $48e9: $0a
    ld a, [bc]                                    ; $48ea: $0a
    ld a, [bc]                                    ; $48eb: $0a
    ld a, [bc]                                    ; $48ec: $0a
    ld a, [bc]                                    ; $48ed: $0a
    ld a, [bc]                                    ; $48ee: $0a
    ld a, [bc]                                    ; $48ef: $0a
    ld a, [bc]                                    ; $48f0: $0a
    ld a, [bc]                                    ; $48f1: $0a
    inc bc                                        ; $48f2: $03
    inc bc                                        ; $48f3: $03
    inc bc                                        ; $48f4: $03
    inc bc                                        ; $48f5: $03
    dec l                                         ; $48f6: $2d
    ld a, $3d                                     ; $48f7: $3e $3d
    inc a                                         ; $48f9: $3c
    ccf                                           ; $48fa: $3f
    ld b, d                                       ; $48fb: $42
    ld b, c                                       ; $48fc: $41
    ld b, b                                       ; $48fd: $40
    ld b, [hl]                                    ; $48fe: $46
    ld b, l                                       ; $48ff: $45
    ld b, h                                       ; $4900: $44

jr_07c_4901:
    ld b, e                                       ; $4901: $43
    inc e                                         ; $4902: $1c
    dec e                                         ; $4903: $1d
    ld e, $1b                                     ; $4904: $1e $1b
    ld a, [bc]                                    ; $4906: $0a
    ld a, [hl+]                                   ; $4907: $2a
    ld a, [hl+]                                   ; $4908: $2a
    ld a, [hl+]                                   ; $4909: $2a
    ld a, [bc]                                    ; $490a: $0a
    ld a, [hl+]                                   ; $490b: $2a
    ld a, [hl+]                                   ; $490c: $2a
    ld a, [hl+]                                   ; $490d: $2a
    ld a, [hl+]                                   ; $490e: $2a
    ld a, [hl+]                                   ; $490f: $2a
    ld a, [hl+]                                   ; $4910: $2a
    ld a, [hl+]                                   ; $4911: $2a
    inc bc                                        ; $4912: $03
    inc bc                                        ; $4913: $03
    inc bc                                        ; $4914: $03
    inc bc                                        ; $4915: $03
    ld a, [hl-]                                   ; $4916: $3a
    add hl, sp                                    ; $4917: $39
    inc e                                         ; $4918: $1c
    dec e                                         ; $4919: $1d
    dec sp                                        ; $491a: $3b
    rrca                                          ; $491b: $0f
    dec b                                         ; $491c: $05
    dec c                                         ; $491d: $0d
    add hl, bc                                    ; $491e: $09
    add hl, sp                                    ; $491f: $39
    ld a, $11                                     ; $4920: $3e $11
    inc e                                         ; $4922: $1c
    dec sp                                        ; $4923: $3b
    ccf                                           ; $4924: $3f
    dec e                                         ; $4925: $1d
    ld a, [hl+]                                   ; $4926: $2a
    ld a, [bc]                                    ; $4927: $0a
    inc bc                                        ; $4928: $03
    inc bc                                        ; $4929: $03
    ld a, [hl+]                                   ; $492a: $2a
    inc bc                                        ; $492b: $03
    inc bc                                        ; $492c: $03
    inc bc                                        ; $492d: $03
    inc bc                                        ; $492e: $03
    inc bc                                        ; $492f: $03
    inc bc                                        ; $4930: $03
    inc bc                                        ; $4931: $03
    inc bc                                        ; $4932: $03
    inc bc                                        ; $4933: $03
    inc bc                                        ; $4934: $03
    inc bc                                        ; $4935: $03
    ld b, $07                                     ; $4936: $06 $07
    db $d3                                        ; $4938: $d3
    ld b, a                                       ; $4939: $47
    dec bc                                        ; $493a: $0b
    inc c                                         ; $493b: $0c
    ld c, b                                       ; $493c: $48
    rst $18                                       ; $493d: $df
    ld c, $0f                                     ; $493e: $0e $0f
    ldh [$e2], a                                  ; $4940: $e0 $e2
    ret z                                         ; $4942: $c8

    ld c, c                                       ; $4943: $49
    inc e                                         ; $4944: $1c
    dec de                                        ; $4945: $1b
    inc bc                                        ; $4946: $03
    rlca                                          ; $4947: $07
    ld bc, $0309                                  ; $4948: $01 $09 $03
    rlca                                          ; $494b: $07
    add hl, bc                                    ; $494c: $09
    ld hl, $0703                                  ; $494d: $21 $03 $07
    ld hl, $8a21                                  ; $4950: $21 $21 $8a
    rrca                                          ; $4953: $0f
    daa                                           ; $4954: $27
    daa                                           ; $4955: $27
    ld c, d                                       ; $4956: $4a
    ld c, d                                       ; $4957: $4a
    ld b, a                                       ; $4958: $47
    ld c, d                                       ; $4959: $4a
    sbc $dc                                       ; $495a: $de $dc
    db $dd                                        ; $495c: $dd
    rst $18                                       ; $495d: $df
    pop hl                                        ; $495e: $e1
    reti                                          ; $495f: $d9


    ldh [$e2], a                                  ; $4960: $e0 $e2
    ld e, $1d                                     ; $4962: $1e $1d
    inc e                                         ; $4964: $1c
    dec de                                        ; $4965: $1b
    add hl, bc                                    ; $4966: $09
    add hl, bc                                    ; $4967: $09
    add hl, bc                                    ; $4968: $09
    rrca                                          ; $4969: $0f
    ld hl, $2121                                  ; $496a: $21 $21 $21
    ld hl, $0121                                  ; $496d: $21 $21 $01
    ld hl, $2721                                  ; $4970: $21 $21 $27
    daa                                           ; $4973: $27
    daa                                           ; $4974: $27
    daa                                           ; $4975: $27
    rst $10                                       ; $4976: $d7
    ei                                            ; $4977: $fb
    db $db                                        ; $4978: $db
    db $fc                                        ; $4979: $fc
    db $d3                                        ; $497a: $d3
    ld sp, hl                                     ; $497b: $f9
    push af                                       ; $497c: $f5
    db $db                                        ; $497d: $db
    rst $10                                       ; $497e: $d7
    ldh a, [$fa]                                  ; $497f: $f0 $fa
    db $eb                                        ; $4981: $eb
    rst $20                                       ; $4982: $e7
    or $f2                                        ; $4983: $f6 $f2
    di                                            ; $4985: $f3
    ld bc, $0406                                  ; $4986: $01 $06 $04
    inc b                                         ; $4989: $04
    ld hl, $0406                                  ; $498a: $21 $06 $04
    inc b                                         ; $498d: $04
    ld hl, $0406                                  ; $498e: $21 $06 $04
    inc b                                         ; $4991: $04
    ld bc, $0406                                  ; $4992: $01 $06 $04
    inc b                                         ; $4995: $04
    db $db                                        ; $4996: $db
    db $d3                                        ; $4997: $d3
    db $e3                                        ; $4998: $e3
    db $e3                                        ; $4999: $e3
    db $db                                        ; $499a: $db
    rst $10                                       ; $499b: $d7
    db $e3                                        ; $499c: $e3
    db $e3                                        ; $499d: $e3
    db $db                                        ; $499e: $db
    db $d3                                        ; $499f: $d3
    db $e3                                        ; $49a0: $e3
    db $e3                                        ; $49a1: $e3
    ei                                            ; $49a2: $fb
    rst $10                                       ; $49a3: $d7
    db $e3                                        ; $49a4: $e3
    db $e3                                        ; $49a5: $e3
    ld b, $21                                     ; $49a6: $06 $21
    inc b                                         ; $49a8: $04
    inc b                                         ; $49a9: $04
    ld b, $21                                     ; $49aa: $06 $21
    inc b                                         ; $49ac: $04
    inc b                                         ; $49ad: $04
    ld b, $01                                     ; $49ae: $06 $01
    inc b                                         ; $49b0: $04
    inc b                                         ; $49b1: $04
    ld b, $01                                     ; $49b2: $06 $01
    inc b                                         ; $49b4: $04
    inc b                                         ; $49b5: $04
    ld c, e                                       ; $49b6: $4b
    ld c, h                                       ; $49b7: $4c
    dec de                                        ; $49b8: $1b
    inc e                                         ; $49b9: $1c
    ld c, l                                       ; $49ba: $4d
    ld c, [hl]                                    ; $49bb: $4e
    ld c, $3a                                     ; $49bc: $0e $3a
    ld c, a                                       ; $49be: $4f
    ld d, b                                       ; $49bf: $50
    ld d, c                                       ; $49c0: $51
    ld [$5352], sp                                ; $49c1: $08 $52 $53
    ld d, h                                       ; $49c4: $54
    cpl                                           ; $49c5: $2f
    adc d                                         ; $49c6: $8a
    adc d                                         ; $49c7: $8a
    inc bc                                        ; $49c8: $03
    inc bc                                        ; $49c9: $03
    adc d                                         ; $49ca: $8a

Jump_07c_49cb:
    adc d                                         ; $49cb: $8a
    inc bc                                        ; $49cc: $03
    inc bc                                        ; $49cd: $03
    adc d                                         ; $49ce: $8a
    adc d                                         ; $49cf: $8a
    adc d                                         ; $49d0: $8a
    inc bc                                        ; $49d1: $03
    adc d                                         ; $49d2: $8a
    adc d                                         ; $49d3: $8a
    adc d                                         ; $49d4: $8a
    inc bc                                        ; $49d5: $03
    dec e                                         ; $49d6: $1d
    ld e, $1b                                     ; $49d7: $1e $1b
    inc e                                         ; $49d9: $1c
    dec b                                         ; $49da: $05
    dec c                                         ; $49db: $0d
    ld c, $0f                                     ; $49dc: $0e $0f
    add hl, bc                                    ; $49de: $09
    add hl, sp                                    ; $49df: $39
    ld a, $08                                     ; $49e0: $3e $08
    dec bc                                        ; $49e2: $0b
    dec sp                                        ; $49e3: $3b
    ccf                                           ; $49e4: $3f
    cpl                                           ; $49e5: $2f
    inc bc                                        ; $49e6: $03
    inc bc                                        ; $49e7: $03
    inc bc                                        ; $49e8: $03
    rlca                                          ; $49e9: $07
    inc bc                                        ; $49ea: $03
    inc bc                                        ; $49eb: $03
    inc bc                                        ; $49ec: $03
    inc bc                                        ; $49ed: $03
    inc bc                                        ; $49ee: $03
    inc bc                                        ; $49ef: $03
    inc bc                                        ; $49f0: $03
    inc bc                                        ; $49f1: $03
    inc bc                                        ; $49f2: $03
    inc bc                                        ; $49f3: $03
    inc bc                                        ; $49f4: $03
    inc bc                                        ; $49f5: $03
    add h                                         ; $49f6: $84
    ld sp, hl                                     ; $49f7: $f9
    rst $30                                       ; $49f8: $f7
    ld hl, sp-$7b                                 ; $49f9: $f8 $85
    ldh a, [$fa]                                  ; $49fb: $f0 $fa
    rst $28                                       ; $49fd: $ef
    add [hl]                                      ; $49fe: $86
    or $f2                                        ; $49ff: $f6 $f2
    di                                            ; $4a01: $f3
    add a                                         ; $4a02: $87
    ld sp, hl                                     ; $4a03: $f9
    rst $30                                       ; $4a04: $f7
    ld hl, sp+$2f                                 ; $4a05: $f8 $2f
    ld b, $04                                     ; $4a07: $06 $04
    inc b                                         ; $4a09: $04
    dec hl                                        ; $4a0a: $2b
    inc b                                         ; $4a0b: $04
    inc b                                         ; $4a0c: $04
    inc b                                         ; $4a0d: $04
    dec hl                                        ; $4a0e: $2b
    inc b                                         ; $4a0f: $04
    inc b                                         ; $4a10: $04
    inc b                                         ; $4a11: $04
    dec hl                                        ; $4a12: $2b
    inc b                                         ; $4a13: $04
    inc b                                         ; $4a14: $04
    inc b                                         ; $4a15: $04
    ld sp, hl                                     ; $4a16: $f9
    db $d3                                        ; $4a17: $d3
    db $e3                                        ; $4a18: $e3
    db $e3                                        ; $4a19: $e3
    ldh a, [$d7]                                  ; $4a1a: $f0 $d7
    db $e3                                        ; $4a1c: $e3
    db $e3                                        ; $4a1d: $e3
    or $d3                                        ; $4a1e: $f6 $d3
    db $e3                                        ; $4a20: $e3
    db $e3                                        ; $4a21: $e3
    ld sp, hl                                     ; $4a22: $f9
    rst $10                                       ; $4a23: $d7
    db $e3                                        ; $4a24: $e3
    db $e3                                        ; $4a25: $e3
    ld b, $21                                     ; $4a26: $06 $21
    inc b                                         ; $4a28: $04
    inc b                                         ; $4a29: $04
    ld b, $21                                     ; $4a2a: $06 $21
    inc b                                         ; $4a2c: $04
    inc b                                         ; $4a2d: $04
    ld b, $01                                     ; $4a2e: $06 $01
    inc b                                         ; $4a30: $04
    inc b                                         ; $4a31: $04
    ld b, $01                                     ; $4a32: $06 $01
    inc b                                         ; $4a34: $04
    inc b                                         ; $4a35: $04
    ld d, l                                       ; $4a36: $55
    ld d, [hl]                                    ; $4a37: $56
    add hl, sp                                    ; $4a38: $39
    dec c                                         ; $4a39: $0d
    ld [de], a                                    ; $4a3a: $12
    ld [$5857], sp                                ; $4a3b: $08 $57 $58
    ld e, $1b                                     ; $4a3e: $1e $1b
    ld e, c                                       ; $4a40: $59
    ld e, d                                       ; $4a41: $5a
    jr jr_07c_4a4c                                ; $4a42: $18 $08

    ld e, e                                       ; $4a44: $5b
    ld e, h                                       ; $4a45: $5c
    adc d                                         ; $4a46: $8a
    adc d                                         ; $4a47: $8a
    adc d                                         ; $4a48: $8a

Jump_07c_4a49:
    inc bc                                        ; $4a49: $03
    inc bc                                        ; $4a4a: $03
    inc bc                                        ; $4a4b: $03

jr_07c_4a4c:
    inc c                                         ; $4a4c: $0c
    inc c                                         ; $4a4d: $0c
    inc bc                                        ; $4a4e: $03
    inc bc                                        ; $4a4f: $03
    inc c                                         ; $4a50: $0c
    inc c                                         ; $4a51: $0c
    inc bc                                        ; $4a52: $03
    rlca                                          ; $4a53: $07
    inc c                                         ; $4a54: $0c
    inc c                                         ; $4a55: $0c
    ld c, $0f                                     ; $4a56: $0e $0f
    dec b                                         ; $4a58: $05
    dec c                                         ; $4a59: $0d
    ld e, l                                       ; $4a5a: $5d
    ld e, [hl]                                    ; $4a5b: $5e
    ld e, b                                       ; $4a5c: $58
    ld d, a                                       ; $4a5d: $57
    ld e, a                                       ; $4a5e: $5f
    ld h, b                                       ; $4a5f: $60
    ld e, d                                       ; $4a60: $5a
    ld e, c                                       ; $4a61: $59
    ld h, c                                       ; $4a62: $61
    ld h, d                                       ; $4a63: $62
    ld e, h                                       ; $4a64: $5c
    ld e, e                                       ; $4a65: $5b
    inc bc                                        ; $4a66: $03
    inc bc                                        ; $4a67: $03
    inc bc                                        ; $4a68: $03
    inc bc                                        ; $4a69: $03
    inc c                                         ; $4a6a: $0c
    inc c                                         ; $4a6b: $0c
    inc l                                         ; $4a6c: $2c
    inc l                                         ; $4a6d: $2c
    inc c                                         ; $4a6e: $0c
    inc c                                         ; $4a6f: $0c
    inc l                                         ; $4a70: $2c
    inc l                                         ; $4a71: $2c
    inc c                                         ; $4a72: $0c
    inc c                                         ; $4a73: $0c
    inc l                                         ; $4a74: $2c
    inc l                                         ; $4a75: $2c
    db $d3                                        ; $4a76: $d3
    ldh a, [$fa]                                  ; $4a77: $f0 $fa
    db $eb                                        ; $4a79: $eb
    rst $10                                       ; $4a7a: $d7
    or $f5                                        ; $4a7b: $f6 $f5
    db $fd                                        ; $4a7d: $fd
    db $d3                                        ; $4a7e: $d3
    db $ec                                        ; $4a7f: $ec
    db $db                                        ; $4a80: $db
    db $db                                        ; $4a81: $db
    rst $10                                       ; $4a82: $d7
    db $db                                        ; $4a83: $db
    db $fd                                        ; $4a84: $fd
    ei                                            ; $4a85: $fb
    ld bc, $0404                                  ; $4a86: $01 $04 $04
    inc b                                         ; $4a89: $04
    ld bc, $0406                                  ; $4a8a: $01 $06 $04
    inc b                                         ; $4a8d: $04
    ld hl, $0406                                  ; $4a8e: $21 $06 $04
    inc b                                         ; $4a91: $04
    ld hl, $0406                                  ; $4a92: $21 $06 $04
    inc b                                         ; $4a95: $04
    db $ec                                        ; $4a96: $ec
    db $d3                                        ; $4a97: $d3
    db $e3                                        ; $4a98: $e3
    db $e3                                        ; $4a99: $e3
    db $db                                        ; $4a9a: $db
    rst $10                                       ; $4a9b: $d7
    db $e3                                        ; $4a9c: $e3
    db $e3                                        ; $4a9d: $e3
    dec d                                         ; $4a9e: $15
    db $d3                                        ; $4a9f: $d3
    db $e3                                        ; $4aa0: $e3
    db $e3                                        ; $4aa1: $e3
    db $db                                        ; $4aa2: $db
    rst $10                                       ; $4aa3: $d7
    db $e3                                        ; $4aa4: $e3
    db $e3                                        ; $4aa5: $e3
    ld b, $21                                     ; $4aa6: $06 $21
    inc b                                         ; $4aa8: $04
    inc b                                         ; $4aa9: $04
    ld b, $21                                     ; $4aaa: $06 $21
    inc b                                         ; $4aac: $04
    inc b                                         ; $4aad: $04
    ld b, $01                                     ; $4aae: $06 $01
    inc b                                         ; $4ab0: $04
    inc b                                         ; $4ab1: $04
    ld b, $01                                     ; $4ab2: $06 $01
    inc b                                         ; $4ab4: $04
    inc b                                         ; $4ab5: $04
    ld a, [bc]                                    ; $4ab6: $0a
    dec de                                        ; $4ab7: $1b
    ld h, e                                       ; $4ab8: $63
    ld h, h                                       ; $4ab9: $64
    ld c, $0f                                     ; $4aba: $0e $0f
    ld h, l                                       ; $4abc: $65
    ld h, [hl]                                    ; $4abd: $66
    ld [de], a                                    ; $4abe: $12
    ld [$6867], sp                                ; $4abf: $08 $67 $68
    ld e, $3a                                     ; $4ac2: $1e $3a
    inc e                                         ; $4ac4: $1c
    ld h, [hl]                                    ; $4ac5: $66
    inc bc                                        ; $4ac6: $03
    rlca                                          ; $4ac7: $07
    inc c                                         ; $4ac8: $0c
    inc c                                         ; $4ac9: $0c
    inc bc                                        ; $4aca: $03
    rlca                                          ; $4acb: $07
    inc c                                         ; $4acc: $0c
    inc c                                         ; $4acd: $0c
    inc bc                                        ; $4ace: $03
    rlca                                          ; $4acf: $07
    ld l, h                                       ; $4ad0: $6c
    inc l                                         ; $4ad1: $2c
    inc bc                                        ; $4ad2: $03
    rlca                                          ; $4ad3: $07
    rlca                                          ; $4ad4: $07
    inc c                                         ; $4ad5: $0c
    ld l, c                                       ; $4ad6: $69
    ld l, d                                       ; $4ad7: $6a
    ld l, e                                       ; $4ad8: $6b
    ld h, e                                       ; $4ad9: $63
    ld l, h                                       ; $4ada: $6c
    ld l, h                                       ; $4adb: $6c
    ld l, b                                       ; $4adc: $68
    ld h, a                                       ; $4add: $67
    ld l, h                                       ; $4ade: $6c
    ld l, h                                       ; $4adf: $6c
    ld h, [hl]                                    ; $4ae0: $66
    ld h, l                                       ; $4ae1: $65
    ld l, h                                       ; $4ae2: $6c
    ld l, h                                       ; $4ae3: $6c
    ld l, b                                       ; $4ae4: $68
    dec e                                         ; $4ae5: $1d
    inc c                                         ; $4ae6: $0c
    inc c                                         ; $4ae7: $0c
    inc c                                         ; $4ae8: $0c
    inc l                                         ; $4ae9: $2c
    inc l                                         ; $4aea: $2c
    inc l                                         ; $4aeb: $2c
    inc c                                         ; $4aec: $0c
    inc c                                         ; $4aed: $0c
    inc c                                         ; $4aee: $0c
    inc c                                         ; $4aef: $0c
    inc l                                         ; $4af0: $2c
    ld l, h                                       ; $4af1: $6c
    inc l                                         ; $4af2: $2c
    inc l                                         ; $4af3: $2c
    inc c                                         ; $4af4: $0c
    rlca                                          ; $4af5: $07
    db $d3                                        ; $4af6: $d3
    ld l, $f1                                     ; $4af7: $2e $f1
    db $db                                        ; $4af9: $db
    rst $10                                       ; $4afa: $d7
    db $eb                                        ; $4afb: $eb
    db $db                                        ; $4afc: $db
    db $db                                        ; $4afd: $db
    db $d3                                        ; $4afe: $d3
    db $fd                                        ; $4aff: $fd
    db $db                                        ; $4b00: $db
    ld l, $d7                                     ; $4b01: $2e $d7
    db $db                                        ; $4b03: $db
    dec d                                         ; $4b04: $15
    ld hl, sp+$01                                 ; $4b05: $f8 $01
    ld b, $04                                     ; $4b07: $06 $04
    inc b                                         ; $4b09: $04
    ld bc, $0406                                  ; $4b0a: $01 $06 $04
    inc b                                         ; $4b0d: $04
    ld hl, $0406                                  ; $4b0e: $21 $06 $04
    inc b                                         ; $4b11: $04
    ld hl, $0406                                  ; $4b12: $21 $06 $04
    inc b                                         ; $4b15: $04
    ld l, $d3                                     ; $4b16: $2e $d3
    db $e3                                        ; $4b18: $e3
    db $e3                                        ; $4b19: $e3
    db $db                                        ; $4b1a: $db
    rst $10                                       ; $4b1b: $d7
    db $e3                                        ; $4b1c: $e3
    db $e3                                        ; $4b1d: $e3
    or $d3                                        ; $4b1e: $f6 $d3
    db $e3                                        ; $4b20: $e3
    db $e3                                        ; $4b21: $e3
    ld sp, hl                                     ; $4b22: $f9
    rst $10                                       ; $4b23: $d7
    db $e3                                        ; $4b24: $e3
    db $e3                                        ; $4b25: $e3
    ld b, $21                                     ; $4b26: $06 $21
    inc b                                         ; $4b28: $04
    inc b                                         ; $4b29: $04
    ld b, $21                                     ; $4b2a: $06 $21
    inc b                                         ; $4b2c: $04
    inc b                                         ; $4b2d: $04
    ld b, $01                                     ; $4b2e: $06 $01
    inc b                                         ; $4b30: $04
    inc b                                         ; $4b31: $04
    ld b, $01                                     ; $4b32: $06 $01
    inc b                                         ; $4b34: $04
    inc b                                         ; $4b35: $04
    ld l, $db                                     ; $4b36: $2e $db
    db $db                                        ; $4b38: $db
    db $d3                                        ; $4b39: $d3
    ld a, [$15ef]                                 ; $4b3a: $fa $ef $15
    rst $10                                       ; $4b3d: $d7
    ld a, [c]                                     ; $4b3e: $f2
    di                                            ; $4b3f: $f3
    or $d3                                        ; $4b40: $f6 $d3
    rst $30                                       ; $4b42: $f7
    ld hl, sp-$07                                 ; $4b43: $f8 $f9
    rst $10                                       ; $4b45: $d7
    inc b                                         ; $4b46: $04
    inc b                                         ; $4b47: $04
    ld b, $21                                     ; $4b48: $06 $21
    inc b                                         ; $4b4a: $04
    inc b                                         ; $4b4b: $04
    ld b, $21                                     ; $4b4c: $06 $21
    inc b                                         ; $4b4e: $04
    inc b                                         ; $4b4f: $04
    ld b, $01                                     ; $4b50: $06 $01
    inc b                                         ; $4b52: $04
    inc b                                         ; $4b53: $04
    ld b, $01                                     ; $4b54: $06 $01
    ld bc, $6d2f                                  ; $4b56: $01 $2f $6d
    ld l, [hl]                                    ; $4b59: $6e
    add hl, sp                                    ; $4b5a: $39
    ld a, $0e                                     ; $4b5b: $3e $0e
    rrca                                          ; $4b5d: $0f
    dec sp                                        ; $4b5e: $3b
    ccf                                           ; $4b5f: $3f
    ld [de], a                                    ; $4b60: $12
    ld [$1d1c], sp                                ; $4b61: $08 $1c $1d
    ld e, $18                                     ; $4b64: $1e $18
    rlca                                          ; $4b66: $07
    inc bc                                        ; $4b67: $03
    dec bc                                        ; $4b68: $0b
    dec bc                                        ; $4b69: $0b
    rlca                                          ; $4b6a: $07
    inc bc                                        ; $4b6b: $03
    inc bc                                        ; $4b6c: $03
    inc bc                                        ; $4b6d: $03
    rlca                                          ; $4b6e: $07
    inc bc                                        ; $4b6f: $03
    inc bc                                        ; $4b70: $03
    inc bc                                        ; $4b71: $03
    rlca                                          ; $4b72: $07
    inc bc                                        ; $4b73: $03
    inc bc                                        ; $4b74: $03
    inc bc                                        ; $4b75: $03
    ld l, a                                       ; $4b76: $6f
    ld [hl], b                                    ; $4b77: $70
    ld [hl], c                                    ; $4b78: $71
    ld [hl], d                                    ; $4b79: $72
    ld a, [hl-]                                   ; $4b7a: $3a
    dec c                                         ; $4b7b: $0d
    ld c, $0f                                     ; $4b7c: $0e $0f
    add hl, bc                                    ; $4b7e: $09
    ld de, $0818                                  ; $4b7f: $11 $18 $08
    inc e                                         ; $4b82: $1c
    dec e                                         ; $4b83: $1d
    ld a, [bc]                                    ; $4b84: $0a
    dec de                                        ; $4b85: $1b
    dec bc                                        ; $4b86: $0b
    dec bc                                        ; $4b87: $0b
    dec bc                                        ; $4b88: $0b
    dec bc                                        ; $4b89: $0b
    inc bc                                        ; $4b8a: $03
    inc bc                                        ; $4b8b: $03
    inc bc                                        ; $4b8c: $03
    inc bc                                        ; $4b8d: $03
    inc bc                                        ; $4b8e: $03
    inc bc                                        ; $4b8f: $03
    inc bc                                        ; $4b90: $03
    inc bc                                        ; $4b91: $03
    inc bc                                        ; $4b92: $03
    inc bc                                        ; $4b93: $03
    inc bc                                        ; $4b94: $03
    inc bc                                        ; $4b95: $03
    db $e3                                        ; $4b96: $e3
    db $e3                                        ; $4b97: $e3
    db $d3                                        ; $4b98: $d3
    dec d                                         ; $4b99: $15
    db $e3                                        ; $4b9a: $e3
    db $d3                                        ; $4b9b: $d3
    rst $10                                       ; $4b9c: $d7
    db $db                                        ; $4b9d: $db
    db $e3                                        ; $4b9e: $e3
    rst $10                                       ; $4b9f: $d7
    rst $20                                       ; $4ba0: $e7
    db $db                                        ; $4ba1: $db
    db $e3                                        ; $4ba2: $e3
    db $d3                                        ; $4ba3: $d3
    db $db                                        ; $4ba4: $db
    ld [hl], e                                    ; $4ba5: $73
    inc b                                         ; $4ba6: $04
    inc b                                         ; $4ba7: $04
    ld hl, $0406                                  ; $4ba8: $21 $06 $04
    ld bc, $0621                                  ; $4bab: $01 $21 $06
    inc b                                         ; $4bae: $04
    ld bc, $0601                                  ; $4baf: $01 $01 $06
    inc b                                         ; $4bb2: $04
    ld hl, $8d06                                  ; $4bb3: $21 $06 $8d
    ld a, [$f0ef]                                 ; $4bb6: $fa $ef $f0
    ld [hl], h                                    ; $4bb9: $74
    ld a, [c]                                     ; $4bba: $f2
    di                                            ; $4bbb: $f3
    or $75                                        ; $4bbc: $f6 $75
    ld l, $f8                                     ; $4bbe: $2e $f8
    ld sp, hl                                     ; $4bc0: $f9
    rst $30                                       ; $4bc1: $f7
    halt                                          ; $4bc2: $76
    ld [hl], a                                    ; $4bc3: $77
    dec d                                         ; $4bc4: $15
    ld a, [$0404]                                 ; $4bc5: $fa $04 $04
    ld b, $09                                     ; $4bc8: $06 $09
    inc b                                         ; $4bca: $04
    inc b                                         ; $4bcb: $04
    ld b, $09                                     ; $4bcc: $06 $09
    inc b                                         ; $4bce: $04
    inc b                                         ; $4bcf: $04
    ld b, $06                                     ; $4bd0: $06 $06
    adc l                                         ; $4bd2: $8d
    adc l                                         ; $4bd3: $8d
    inc b                                         ; $4bd4: $04
    inc b                                         ; $4bd5: $04
    ld a, b                                       ; $4bd6: $78
    sbc $df                                       ; $4bd7: $de $df
    db $dd                                        ; $4bd9: $dd
    reti                                          ; $4bda: $d9


    pop hl                                        ; $4bdb: $e1
    ld [c], a                                     ; $4bdc: $e2
    ldh [$f8], a                                  ; $4bdd: $e0 $f8
    ld sp, hl                                     ; $4bdf: $f9
    rst $30                                       ; $4be0: $f7
    ld hl, sp-$11                                 ; $4be1: $f8 $ef
    ldh a, [$fa]                                  ; $4be3: $f0 $fa
    rst $28                                       ; $4be5: $ef
    add hl, bc                                    ; $4be6: $09
    ld bc, $0101                                  ; $4be7: $01 $01 $01
    ld hl, $0101                                  ; $4bea: $21 $01 $01
    ld bc, $0606                                  ; $4bed: $01 $06 $06
    ld b, $06                                     ; $4bf0: $06 $06
    inc b                                         ; $4bf2: $04
    inc b                                         ; $4bf3: $04
    inc b                                         ; $4bf4: $04
    inc b                                         ; $4bf5: $04
    call c, $dfde                                 ; $4bf6: $dc $de $df
    db $dd                                        ; $4bf9: $dd
    reti                                          ; $4bfa: $d9


    pop hl                                        ; $4bfb: $e1
    ld [c], a                                     ; $4bfc: $e2
    ldh [$f1], a                                  ; $4bfd: $e0 $f1
    push af                                       ; $4bff: $f5
    db $db                                        ; $4c00: $db
    ld l, $f0                                     ; $4c01: $2e $f0
    ld a, [$dbeb]                                 ; $4c03: $fa $eb $db
    ld bc, $0101                                  ; $4c06: $01 $01 $01
    ld bc, $0121                                  ; $4c09: $01 $21 $01
    ld bc, $0601                                  ; $4c0c: $01 $01 $06
    ld b, $06                                     ; $4c0f: $06 $06
    ld b, $04                                     ; $4c11: $06 $04
    inc b                                         ; $4c13: $04
    inc b                                         ; $4c14: $04
    inc b                                         ; $4c15: $04
    db $e3                                        ; $4c16: $e3
    rst $10                                       ; $4c17: $d7
    db $db                                        ; $4c18: $db
    ld a, c                                       ; $4c19: $79
    db $e3                                        ; $4c1a: $e3
    db $d3                                        ; $4c1b: $d3
    db $db                                        ; $4c1c: $db
    ld a, d                                       ; $4c1d: $7a
    db $e3                                        ; $4c1e: $e3
    rst $10                                       ; $4c1f: $d7
    call nc, $e3d5                                ; $4c20: $d4 $d5 $e3
    ld [hl], l                                    ; $4c23: $75
    ld [c], a                                     ; $4c24: $e2
    ldh [rDIV], a                                 ; $4c25: $e0 $04
    ld hl, $8d06                                  ; $4c27: $21 $06 $8d
    inc b                                         ; $4c2a: $04
    ld hl, $8d06                                  ; $4c2b: $21 $06 $8d
    inc b                                         ; $4c2e: $04
    ld bc, $0101                                  ; $4c2f: $01 $01 $01
    inc b                                         ; $4c32: $04
    add hl, bc                                    ; $4c33: $09
    ld bc, $7b01                                  ; $4c34: $01 $01 $7b
    ld a, h                                       ; $4c37: $7c
    db $db                                        ; $4c38: $db
    db $fd                                        ; $4c39: $fd
    ld a, l                                       ; $4c3a: $7d
    ld a, [hl]                                    ; $4c3b: $7e
    sbc $df                                       ; $4c3c: $de $df
    call c, $d4d5                                 ; $4c3e: $dc $d5 $d4
    ld [c], a                                     ; $4c41: $e2
    reti                                          ; $4c42: $d9


    pop hl                                        ; $4c43: $e1
    ld [hl], l                                    ; $4c44: $75
    db $e3                                        ; $4c45: $e3
    adc l                                         ; $4c46: $8d
    adc l                                         ; $4c47: $8d
    inc b                                         ; $4c48: $04
    inc b                                         ; $4c49: $04
    adc l                                         ; $4c4a: $8d
    adc l                                         ; $4c4b: $8d
    ld bc, $0101                                  ; $4c4c: $01 $01 $01
    ld hl, $0121                                  ; $4c4f: $21 $21 $01
    ld hl, $2901                                  ; $4c52: $21 $01 $29
    ld bc, $f6fb                                  ; $4c55: $01 $fb $f6
    ld a, [c]                                     ; $4c58: $f2
    di                                            ; $4c59: $f3
    db $dd                                        ; $4c5a: $dd
    call c, $dfde                                 ; $4c5b: $dc $de $df
    ldh [$d9], a                                  ; $4c5e: $e0 $d9
    pop hl                                        ; $4c60: $e1
    ld [c], a                                     ; $4c61: $e2
    db $e3                                        ; $4c62: $e3
    db $e3                                        ; $4c63: $e3
    db $e3                                        ; $4c64: $e3
    db $e3                                        ; $4c65: $e3
    inc b                                         ; $4c66: $04
    inc b                                         ; $4c67: $04
    inc b                                         ; $4c68: $04
    inc b                                         ; $4c69: $04
    ld bc, $0101                                  ; $4c6a: $01 $01 $01
    ld bc, $2101                                  ; $4c6d: $01 $01 $21
    ld bc, $0101                                  ; $4c70: $01 $01 $01
    ld bc, $0101                                  ; $4c73: $01 $01 $01
    or $f2                                        ; $4c76: $f6 $f2
    di                                            ; $4c78: $f3
    ei                                            ; $4c79: $fb
    db $dd                                        ; $4c7a: $dd
    call c, $dfde                                 ; $4c7b: $dc $de $df
    ldh [$d9], a                                  ; $4c7e: $e0 $d9
    pop hl                                        ; $4c80: $e1
    ld [c], a                                     ; $4c81: $e2
    db $e3                                        ; $4c82: $e3
    db $e3                                        ; $4c83: $e3
    db $e3                                        ; $4c84: $e3
    db $e3                                        ; $4c85: $e3
    inc b                                         ; $4c86: $04
    inc b                                         ; $4c87: $04
    inc b                                         ; $4c88: $04
    inc b                                         ; $4c89: $04
    ld bc, $0101                                  ; $4c8a: $01 $01 $01
    ld bc, $2101                                  ; $4c8d: $01 $01 $21
    ld bc, $0101                                  ; $4c90: $01 $01 $01
    ld bc, $0101                                  ; $4c93: $01 $01 $01
    add hl, de                                    ; $4c96: $19
    ld a, [de]                                    ; $4c97: $1a
    inc hl                                        ; $4c98: $23
    inc c                                         ; $4c99: $0c
    dec b                                         ; $4c9a: $05
    dec c                                         ; $4c9b: $0d
    ld c, $0f                                     ; $4c9c: $0e $0f
    add hl, bc                                    ; $4c9e: $09
    jr nc, jr_07c_4cd9                            ; $4c9f: $30 $38

    ld [$1d1c], sp                                ; $4ca1: $08 $1c $1d
    ld e, $1b                                     ; $4ca4: $1e $1b
    inc bc                                        ; $4ca6: $03
    inc bc                                        ; $4ca7: $03
    inc bc                                        ; $4ca8: $03
    inc bc                                        ; $4ca9: $03
    inc bc                                        ; $4caa: $03
    inc bc                                        ; $4cab: $03
    inc bc                                        ; $4cac: $03
    inc bc                                        ; $4cad: $03
    inc bc                                        ; $4cae: $03
    inc bc                                        ; $4caf: $03
    inc bc                                        ; $4cb0: $03
    inc bc                                        ; $4cb1: $03
    inc bc                                        ; $4cb2: $03
    inc bc                                        ; $4cb3: $03
    inc bc                                        ; $4cb4: $03
    inc bc                                        ; $4cb5: $03
    ld a, [hl-]                                   ; $4cb6: $3a
    cpl                                           ; $4cb7: $2f
    dec bc                                        ; $4cb8: $0b
    inc c                                         ; $4cb9: $0c
    dec b                                         ; $4cba: $05
    add hl, sp                                    ; $4cbb: $39
    ld a, $0f                                     ; $4cbc: $3e $0f
    add hl, bc                                    ; $4cbe: $09
    dec sp                                        ; $4cbf: $3b
    ccf                                           ; $4cc0: $3f
    ld [$1d1c], sp                                ; $4cc1: $08 $1c $1d
    ld e, $1b                                     ; $4cc4: $1e $1b
    inc bc                                        ; $4cc6: $03
    inc bc                                        ; $4cc7: $03
    inc bc                                        ; $4cc8: $03
    inc bc                                        ; $4cc9: $03
    inc bc                                        ; $4cca: $03
    inc bc                                        ; $4ccb: $03
    inc bc                                        ; $4ccc: $03
    inc bc                                        ; $4ccd: $03
    inc bc                                        ; $4cce: $03
    inc bc                                        ; $4ccf: $03
    inc bc                                        ; $4cd0: $03
    inc bc                                        ; $4cd1: $03
    inc bc                                        ; $4cd2: $03
    inc bc                                        ; $4cd3: $03
    inc bc                                        ; $4cd4: $03
    inc bc                                        ; $4cd5: $03
    ld bc, $0b2f                                  ; $4cd6: $01 $2f $0b

jr_07c_4cd9:
    ld a, [hl-]                                   ; $4cd9: $3a
    dec b                                         ; $4cda: $05
    dec c                                         ; $4cdb: $0d
    ld c, $0f                                     ; $4cdc: $0e $0f
    add hl, bc                                    ; $4cde: $09
    ld a, [hl-]                                   ; $4cdf: $3a
    ld [de], a                                    ; $4ce0: $12
    jr jr_07c_4cff                                ; $4ce1: $18 $1c

    dec e                                         ; $4ce3: $1d
    ld e, $0a                                     ; $4ce4: $1e $0a
    inc bc                                        ; $4ce6: $03
    inc bc                                        ; $4ce7: $03
    inc bc                                        ; $4ce8: $03
    inc bc                                        ; $4ce9: $03
    inc bc                                        ; $4cea: $03
    inc bc                                        ; $4ceb: $03
    inc bc                                        ; $4cec: $03
    inc bc                                        ; $4ced: $03
    inc bc                                        ; $4cee: $03
    inc bc                                        ; $4cef: $03
    inc bc                                        ; $4cf0: $03
    inc bc                                        ; $4cf1: $03
    inc bc                                        ; $4cf2: $03
    inc bc                                        ; $4cf3: $03
    inc bc                                        ; $4cf4: $03
    inc bc                                        ; $4cf5: $03
    ld bc, $0b2f                                  ; $4cf6: $01 $2f $0b
    inc c                                         ; $4cf9: $0c
    dec b                                         ; $4cfa: $05
    dec c                                         ; $4cfb: $0d
    ld c, $0f                                     ; $4cfc: $0e $0f
    add hl, bc                                    ; $4cfe: $09

jr_07c_4cff:
    ld de, $083a                                  ; $4cff: $11 $3a $08
    inc e                                         ; $4d02: $1c
    dec e                                         ; $4d03: $1d
    ld e, $1b                                     ; $4d04: $1e $1b
    inc bc                                        ; $4d06: $03
    inc bc                                        ; $4d07: $03
    inc bc                                        ; $4d08: $03
    inc bc                                        ; $4d09: $03
    inc bc                                        ; $4d0a: $03
    inc bc                                        ; $4d0b: $03
    inc bc                                        ; $4d0c: $03
    inc bc                                        ; $4d0d: $03
    inc bc                                        ; $4d0e: $03
    inc bc                                        ; $4d0f: $03
    inc bc                                        ; $4d10: $03
    inc bc                                        ; $4d11: $03
    inc bc                                        ; $4d12: $03
    inc bc                                        ; $4d13: $03
    inc bc                                        ; $4d14: $03
    inc bc                                        ; $4d15: $03
    call c, $dfde                                 ; $4d16: $dc $de $df
    db $dd                                        ; $4d19: $dd
    reti                                          ; $4d1a: $d9


    pop hl                                        ; $4d1b: $e1
    ld [c], a                                     ; $4d1c: $e2
    ldh [$f1], a                                  ; $4d1d: $e0 $f1
    db $db                                        ; $4d1f: $db
    ld l, $f7                                     ; $4d20: $2e $f7
    db $ec                                        ; $4d22: $ec
    db $db                                        ; $4d23: $db
    db $eb                                        ; $4d24: $eb
    db $ec                                        ; $4d25: $ec
    ld bc, $0101                                  ; $4d26: $01 $01 $01
    ld bc, $0121                                  ; $4d29: $01 $21 $01
    ld bc, $0601                                  ; $4d2c: $01 $01 $06
    ld b, $06                                     ; $4d2f: $06 $06
    ld b, $04                                     ; $4d31: $06 $04
    inc b                                         ; $4d33: $04
    inc b                                         ; $4d34: $04
    inc b                                         ; $4d35: $04
    push de                                       ; $4d36: $d5
    call nc, Call_000_2f01                        ; $4d37: $d4 $01 $2f
    reti                                          ; $4d3a: $d9


    ret c                                         ; $4d3b: $d8

    ld [hl], $37                                  ; $4d3c: $36 $37
    ld hl, sp-$07                                 ; $4d3e: $f8 $f9
    rst $30                                       ; $4d40: $f7
    ld hl, sp-$11                                 ; $4d41: $f8 $ef
    ldh a, [$fa]                                  ; $4d43: $f0 $fa
    rst $28                                       ; $4d45: $ef
    ld hl, $0321                                  ; $4d46: $21 $21 $03
    inc bc                                        ; $4d49: $03
    ld hl, $4721                                  ; $4d4a: $21 $21 $47
    ld b, e                                       ; $4d4d: $43
    ld b, $06                                     ; $4d4e: $06 $06
    ld b, $04                                     ; $4d50: $06 $04
    inc b                                         ; $4d52: $04
    inc b                                         ; $4d53: $04
    inc b                                         ; $4d54: $04
    inc b                                         ; $4d55: $04
    cpl                                           ; $4d56: $2f
    ld bc, $d5d4                                  ; $4d57: $01 $d4 $d5
    inc a                                         ; $4d5a: $3c
    dec a                                         ; $4d5b: $3d
    ret c                                         ; $4d5c: $d8

    reti                                          ; $4d5d: $d9


    ld sp, hl                                     ; $4d5e: $f9
    rst $30                                       ; $4d5f: $f7
    ld hl, sp-$07                                 ; $4d60: $f8 $f9
    ldh a, [$fa]                                  ; $4d62: $f0 $fa
    rst $28                                       ; $4d64: $ef
    ldh a, [$63]                                  ; $4d65: $f0 $63
    ld h, e                                       ; $4d67: $63
    ld bc, $4301                                  ; $4d68: $01 $01 $43
    ld b, a                                       ; $4d6b: $47
    ld bc, $0401                                  ; $4d6c: $01 $01 $04
    ld b, $06                                     ; $4d6f: $06 $06
    ld b, $04                                     ; $4d71: $06 $04
    inc b                                         ; $4d73: $04
    inc b                                         ; $4d74: $04
    inc b                                         ; $4d75: $04
    db $dd                                        ; $4d76: $dd
    rst $18                                       ; $4d77: $df
    sbc $dc                                       ; $4d78: $de $dc
    ldh [$e2], a                                  ; $4d7a: $e0 $e2
    pop hl                                        ; $4d7c: $e1
    reti                                          ; $4d7d: $d9


    rst $30                                       ; $4d7e: $f7
    ld hl, sp-$0b                                 ; $4d7f: $f8 $f5
    pop af                                        ; $4d81: $f1
    db $eb                                        ; $4d82: $eb
    db $ec                                        ; $4d83: $ec
    db $db                                        ; $4d84: $db
    db $ec                                        ; $4d85: $ec
    ld hl, $2121                                  ; $4d86: $21 $21 $21
    ld hl, $2121                                  ; $4d89: $21 $21 $21
    ld hl, $0601                                  ; $4d8c: $21 $01 $06
    ld b, $06                                     ; $4d8f: $06 $06
    ld b, $04                                     ; $4d91: $06 $04
    inc b                                         ; $4d93: $04
    inc b                                         ; $4d94: $04
    inc b                                         ; $4d95: $04
    db $db                                        ; $4d96: $db
    db $fc                                        ; $4d97: $fc
    db $db                                        ; $4d98: $db
    ei                                            ; $4d99: $fb
    db $dd                                        ; $4d9a: $dd
    call c, $dfde                                 ; $4d9b: $dc $de $df
    ldh [$d9], a                                  ; $4d9e: $e0 $d9
    pop hl                                        ; $4da0: $e1
    ld [c], a                                     ; $4da1: $e2
    db $e3                                        ; $4da2: $e3
    db $e3                                        ; $4da3: $e3
    db $e3                                        ; $4da4: $e3
    db $e3                                        ; $4da5: $e3
    inc b                                         ; $4da6: $04
    inc b                                         ; $4da7: $04
    inc b                                         ; $4da8: $04
    inc b                                         ; $4da9: $04
    ld bc, $0101                                  ; $4daa: $01 $01 $01
    ld bc, $2101                                  ; $4dad: $01 $01 $21
    ld bc, $0101                                  ; $4db0: $01 $01 $01
    ld bc, $0101                                  ; $4db3: $01 $01 $01
    di                                            ; $4db6: $f3
    or $f2                                        ; $4db7: $f6 $f2
    di                                            ; $4db9: $f3
    db $dd                                        ; $4dba: $dd
    call c, $dfde                                 ; $4dbb: $dc $de $df
    ldh [$d9], a                                  ; $4dbe: $e0 $d9
    pop hl                                        ; $4dc0: $e1
    ld [c], a                                     ; $4dc1: $e2
    db $e3                                        ; $4dc2: $e3
    db $e3                                        ; $4dc3: $e3
    db $e3                                        ; $4dc4: $e3
    db $e3                                        ; $4dc5: $e3
    inc b                                         ; $4dc6: $04
    inc b                                         ; $4dc7: $04
    inc b                                         ; $4dc8: $04
    inc b                                         ; $4dc9: $04
    ld bc, $0101                                  ; $4dca: $01 $01 $01
    ld bc, $2101                                  ; $4dcd: $01 $01 $21
    ld bc, $0101                                  ; $4dd0: $01 $01 $01
    ld bc, $0101                                  ; $4dd3: $01 $01 $01
    or $f2                                        ; $4dd6: $f6 $f2
    di                                            ; $4dd8: $f3
    db $fc                                        ; $4dd9: $fc
    db $dd                                        ; $4dda: $dd
    call c, $dfde                                 ; $4ddb: $dc $de $df
    ldh [$d9], a                                  ; $4dde: $e0 $d9
    pop hl                                        ; $4de0: $e1
    ld [c], a                                     ; $4de1: $e2
    db $e3                                        ; $4de2: $e3
    db $e3                                        ; $4de3: $e3
    db $e3                                        ; $4de4: $e3
    db $e3                                        ; $4de5: $e3
    inc b                                         ; $4de6: $04
    inc b                                         ; $4de7: $04
    inc b                                         ; $4de8: $04
    inc b                                         ; $4de9: $04
    ld bc, $0101                                  ; $4dea: $01 $01 $01
    ld bc, $2101                                  ; $4ded: $01 $01 $21
    ld bc, $0101                                  ; $4df0: $01 $01 $01
    ld bc, $0101                                  ; $4df3: $01 $01 $01
    db $db                                        ; $4df6: $db
    db $db                                        ; $4df7: $db
    db $fd                                        ; $4df8: $fd
    db $db                                        ; $4df9: $db
    db $dd                                        ; $4dfa: $dd
    call c, $dfde                                 ; $4dfb: $dc $de $df
    ldh [$d9], a                                  ; $4dfe: $e0 $d9
    pop hl                                        ; $4e00: $e1
    ld [c], a                                     ; $4e01: $e2
    db $e3                                        ; $4e02: $e3
    db $e3                                        ; $4e03: $e3
    db $e3                                        ; $4e04: $e3
    db $e3                                        ; $4e05: $e3
    inc b                                         ; $4e06: $04
    inc b                                         ; $4e07: $04
    inc b                                         ; $4e08: $04
    inc b                                         ; $4e09: $04
    ld bc, $0101                                  ; $4e0a: $01 $01 $01
    ld bc, $2101                                  ; $4e0d: $01 $01 $21
    ld bc, $0101                                  ; $4e10: $01 $01 $01
    ld bc, $0101                                  ; $4e13: $01 $01 $01
    ld bc, $0b2f                                  ; $4e16: $01 $2f $0b
    ld l, b                                       ; $4e19: $68
    jr nc, jr_07c_4e54                            ; $4e1a: $30 $38

    ld c, $0d                                     ; $4e1c: $0e $0d
    add hl, bc                                    ; $4e1e: $09
    ld de, $0812                                  ; $4e1f: $11 $12 $08
    inc e                                         ; $4e22: $1c
    dec e                                         ; $4e23: $1d
    ld e, $16                                     ; $4e24: $1e $16
    inc bc                                        ; $4e26: $03
    inc bc                                        ; $4e27: $03
    rlca                                          ; $4e28: $07
    inc l                                         ; $4e29: $2c
    inc bc                                        ; $4e2a: $03
    inc bc                                        ; $4e2b: $03
    inc bc                                        ; $4e2c: $03
    inc bc                                        ; $4e2d: $03
    inc bc                                        ; $4e2e: $03
    inc bc                                        ; $4e2f: $03
    inc bc                                        ; $4e30: $03
    inc bc                                        ; $4e31: $03
    inc bc                                        ; $4e32: $03
    inc bc                                        ; $4e33: $03
    inc bc                                        ; $4e34: $03
    inc bc                                        ; $4e35: $03
    ld l, h                                       ; $4e36: $6c
    ld l, h                                       ; $4e37: $6c
    ld h, [hl]                                    ; $4e38: $66
    cpl                                           ; $4e39: $2f
    ld c, $0f                                     ; $4e3a: $0e $0f
    ld a, [hl-]                                   ; $4e3c: $3a
    dec c                                         ; $4e3d: $0d
    add hl, bc                                    ; $4e3e: $09
    ld [$1109], sp                                ; $4e3f: $08 $09 $11
    rla                                           ; $4e42: $17
    rra                                           ; $4e43: $1f
    inc e                                         ; $4e44: $1c
    dec e                                         ; $4e45: $1d
    inc c                                         ; $4e46: $0c
    inc c                                         ; $4e47: $0c
    inc l                                         ; $4e48: $2c
    rlca                                          ; $4e49: $07
    inc bc                                        ; $4e4a: $03
    inc bc                                        ; $4e4b: $03
    inc bc                                        ; $4e4c: $03

Jump_07c_4e4d:
    rlca                                          ; $4e4d: $07
    inc bc                                        ; $4e4e: $03
    inc bc                                        ; $4e4f: $03
    inc bc                                        ; $4e50: $03
    rlca                                          ; $4e51: $07
    inc bc                                        ; $4e52: $03
    inc bc                                        ; $4e53: $03

jr_07c_4e54:
    inc bc                                        ; $4e54: $03
    rlca                                          ; $4e55: $07
    db $d3                                        ; $4e56: $d3
    ei                                            ; $4e57: $fb
    ld a, [$d7ef]                                 ; $4e58: $fa $ef $d7
    or $f2                                        ; $4e5b: $f6 $f2
    di                                            ; $4e5d: $f3
    db $d3                                        ; $4e5e: $d3
    ld sp, hl                                     ; $4e5f: $f9
    rst $30                                       ; $4e60: $f7
    ld hl, sp-$29                                 ; $4e61: $f8 $d7
    ldh a, [$fa]                                  ; $4e63: $f0 $fa
    rst $28                                       ; $4e65: $ef
    ld bc, $0406                                  ; $4e66: $01 $06 $04
    inc b                                         ; $4e69: $04
    ld bc, $0406                                  ; $4e6a: $01 $06 $04
    inc b                                         ; $4e6d: $04
    ld hl, $0406                                  ; $4e6e: $21 $06 $04
    inc b                                         ; $4e71: $04
    ld hl, $0406                                  ; $4e72: $21 $06 $04
    inc b                                         ; $4e75: $04
    ldh a, [$d3]                                  ; $4e76: $f0 $d3
    db $e3                                        ; $4e78: $e3
    db $e3                                        ; $4e79: $e3
    or $d7                                        ; $4e7a: $f6 $d7
    db $e3                                        ; $4e7c: $e3
    db $e3                                        ; $4e7d: $e3
    ld sp, hl                                     ; $4e7e: $f9
    db $d3                                        ; $4e7f: $d3
    db $e3                                        ; $4e80: $e3
    db $e3                                        ; $4e81: $e3
    ldh a, [$d7]                                  ; $4e82: $f0 $d7
    db $e3                                        ; $4e84: $e3
    db $e3                                        ; $4e85: $e3
    ld b, $21                                     ; $4e86: $06 $21
    inc b                                         ; $4e88: $04
    inc b                                         ; $4e89: $04
    ld b, $21                                     ; $4e8a: $06 $21
    inc b                                         ; $4e8c: $04
    inc b                                         ; $4e8d: $04
    ld b, $01                                     ; $4e8e: $06 $01
    inc b                                         ; $4e90: $04
    inc b                                         ; $4e91: $04
    ld b, $01                                     ; $4e92: $06 $01
    inc b                                         ; $4e94: $04
    inc b                                         ; $4e95: $04
    db $dd                                        ; $4e96: $dd
    rst $18                                       ; $4e97: $df
    sbc $dc                                       ; $4e98: $de $dc
    ldh [$e2], a                                  ; $4e9a: $e0 $e2
    pop hl                                        ; $4e9c: $e1
    reti                                          ; $4e9d: $d9


    push af                                       ; $4e9e: $f5
    db $db                                        ; $4e9f: $db
    db $db                                        ; $4ea0: $db
    db $db                                        ; $4ea1: $db
    db $db                                        ; $4ea2: $db
    db $db                                        ; $4ea3: $db
    db $fd                                        ; $4ea4: $fd
    or $21                                        ; $4ea5: $f6 $21
    ld hl, $2121                                  ; $4ea7: $21 $21 $21
    ld hl, $2121                                  ; $4eaa: $21 $21 $21
    ld bc, $0606                                  ; $4ead: $01 $06 $06
    ld b, $06                                     ; $4eb0: $06 $06
    inc b                                         ; $4eb2: $04
    inc b                                         ; $4eb3: $04
    inc b                                         ; $4eb4: $04
    inc b                                         ; $4eb5: $04
    db $dd                                        ; $4eb6: $dd
    rst $18                                       ; $4eb7: $df
    sbc $78                                       ; $4eb8: $de $78
    ldh [$e2], a                                  ; $4eba: $e0 $e2
    pop hl                                        ; $4ebc: $e1
    reti                                          ; $4ebd: $d9


    dec d                                         ; $4ebe: $15
    rst $28                                       ; $4ebf: $ef
    ldh a, [$fa]                                  ; $4ec0: $f0 $fa
    ld a, [c]                                     ; $4ec2: $f2
    di                                            ; $4ec3: $f3
    or $f2                                        ; $4ec4: $f6 $f2
    ld hl, $2121                                  ; $4ec6: $21 $21 $21
    add hl, hl                                    ; $4ec9: $29
    ld hl, $2121                                  ; $4eca: $21 $21 $21
    ld bc, $0606                                  ; $4ecd: $01 $06 $06
    ld b, $06                                     ; $4ed0: $06 $06
    inc b                                         ; $4ed2: $04
    inc b                                         ; $4ed3: $04
    inc b                                         ; $4ed4: $04
    inc b                                         ; $4ed5: $04
    ld [hl], h                                    ; $4ed6: $74
    or $f2                                        ; $4ed7: $f6 $f2
    di                                            ; $4ed9: $f3
    ld [hl], l                                    ; $4eda: $75
    ld sp, hl                                     ; $4edb: $f9
    rst $30                                       ; $4edc: $f7
    ld hl, sp-$11                                 ; $4edd: $f8 $ef
    ldh a, [$f1]                                  ; $4edf: $f0 $f1
    db $fd                                        ; $4ee1: $fd
    di                                            ; $4ee2: $f3
    pop af                                        ; $4ee3: $f1
    ld [hl], a                                    ; $4ee4: $77
    halt                                          ; $4ee5: $76
    add hl, hl                                    ; $4ee6: $29
    ld b, $04                                     ; $4ee7: $06 $04
    inc b                                         ; $4ee9: $04
    add hl, hl                                    ; $4eea: $29
    ld b, $04                                     ; $4eeb: $06 $04
    inc b                                         ; $4eed: $04
    ld b, $06                                     ; $4eee: $06 $06
    inc b                                         ; $4ef0: $04
    inc b                                         ; $4ef1: $04
    inc b                                         ; $4ef2: $04
    inc b                                         ; $4ef3: $04
    xor l                                         ; $4ef4: $ad
    xor l                                         ; $4ef5: $ad
    pop af                                        ; $4ef6: $f1
    db $d3                                        ; $4ef7: $d3
    db $e3                                        ; $4ef8: $e3
    db $e3                                        ; $4ef9: $e3
    db $db                                        ; $4efa: $db
    rst $10                                       ; $4efb: $d7
    db $d3                                        ; $4efc: $d3
    db $e3                                        ; $4efd: $e3
    db $db                                        ; $4efe: $db
    rst $20                                       ; $4eff: $e7
    rst $10                                       ; $4f00: $d7
    db $e3                                        ; $4f01: $e3
    ld [hl], e                                    ; $4f02: $73
    db $db                                        ; $4f03: $db
    db $d3                                        ; $4f04: $d3
    db $e3                                        ; $4f05: $e3
    ld b, $21                                     ; $4f06: $06 $21
    inc b                                         ; $4f08: $04
    inc b                                         ; $4f09: $04
    ld b, $01                                     ; $4f0a: $06 $01
    ld hl, $0604                                  ; $4f0c: $21 $04 $06
    ld hl, $0421                                  ; $4f0f: $21 $21 $04
    xor l                                         ; $4f12: $ad
    ld b, $01                                     ; $4f13: $06 $01
    inc b                                         ; $4f15: $04
    db $db                                        ; $4f16: $db
    dec d                                         ; $4f17: $15
    ld hl, sp-$07                                 ; $4f18: $f8 $f9
    db $dd                                        ; $4f1a: $dd
    call c, $dfde                                 ; $4f1b: $dc $de $df
    ldh [$d9], a                                  ; $4f1e: $e0 $d9
    pop hl                                        ; $4f20: $e1
    ld [c], a                                     ; $4f21: $e2
    db $e3                                        ; $4f22: $e3
    db $e3                                        ; $4f23: $e3
    db $e3                                        ; $4f24: $e3
    db $e3                                        ; $4f25: $e3
    inc b                                         ; $4f26: $04
    inc b                                         ; $4f27: $04
    inc b                                         ; $4f28: $04
    inc b                                         ; $4f29: $04
    ld bc, $0101                                  ; $4f2a: $01 $01 $01
    ld bc, $2101                                  ; $4f2d: $01 $01 $21
    ld bc, $0101                                  ; $4f30: $01 $01 $01
    ld bc, $0101                                  ; $4f33: $01 $01 $01
    rst $30                                       ; $4f36: $f7
    ld hl, sp-$07                                 ; $4f37: $f8 $f9
    rst $30                                       ; $4f39: $f7
    db $dd                                        ; $4f3a: $dd
    call c, $dfde                                 ; $4f3b: $dc $de $df
    ldh [$d9], a                                  ; $4f3e: $e0 $d9
    pop hl                                        ; $4f40: $e1
    ld [c], a                                     ; $4f41: $e2
    db $e3                                        ; $4f42: $e3
    db $e3                                        ; $4f43: $e3
    db $e3                                        ; $4f44: $e3
    db $e3                                        ; $4f45: $e3
    inc b                                         ; $4f46: $04
    inc b                                         ; $4f47: $04
    inc b                                         ; $4f48: $04
    inc b                                         ; $4f49: $04
    ld bc, $0101                                  ; $4f4a: $01 $01 $01
    ld bc, $2101                                  ; $4f4d: $01 $01 $21
    ld bc, $0101                                  ; $4f50: $01 $01 $01
    ld bc, $0101                                  ; $4f53: $01 $01 $01
    db $fd                                        ; $4f56: $fd
    db $db                                        ; $4f57: $db
    ld a, h                                       ; $4f58: $7c
    ld a, e                                       ; $4f59: $7b
    db $dd                                        ; $4f5a: $dd
    sbc $7e                                       ; $4f5b: $de $7e
    ld a, l                                       ; $4f5d: $7d
    ldh [$d4], a                                  ; $4f5e: $e0 $d4
    push de                                       ; $4f60: $d5
    call c, $75e3                                 ; $4f61: $dc $e3 $75
    pop hl                                        ; $4f64: $e1
    reti                                          ; $4f65: $d9


    inc b                                         ; $4f66: $04
    inc b                                         ; $4f67: $04
    xor l                                         ; $4f68: $ad
    xor l                                         ; $4f69: $ad
    ld bc, $ad21                                  ; $4f6a: $01 $21 $ad
    xor l                                         ; $4f6d: $ad
    ld bc, $0101                                  ; $4f6e: $01 $01 $01
    ld hl, $0901                                  ; $4f71: $21 $01 $09
    ld hl, $7901                                  ; $4f74: $21 $01 $79
    db $db                                        ; $4f77: $db
    rst $10                                       ; $4f78: $d7
    db $e3                                        ; $4f79: $e3
    ld a, d                                       ; $4f7a: $7a
    db $db                                        ; $4f7b: $db
    db $d3                                        ; $4f7c: $d3
    db $e3                                        ; $4f7d: $e3
    push de                                       ; $4f7e: $d5
    call nc, $e3d7                                ; $4f7f: $d4 $d7 $e3
    ldh [$e2], a                                  ; $4f82: $e0 $e2
    ld [hl], l                                    ; $4f84: $75
    db $e3                                        ; $4f85: $e3
    xor l                                         ; $4f86: $ad
    ld b, $01                                     ; $4f87: $06 $01
    inc b                                         ; $4f89: $04
    xor l                                         ; $4f8a: $ad
    ld b, $01                                     ; $4f8b: $06 $01
    inc b                                         ; $4f8d: $04
    ld hl, $2121                                  ; $4f8e: $21 $21 $21
    inc b                                         ; $4f91: $04
    ld hl, $2921                                  ; $4f92: $21 $21 $29
    inc b                                         ; $4f95: $04
    ld [$0c00], sp                                ; $4f96: $08 $00 $0c
    nop                                           ; $4f99: $00
    nop                                           ; $4f9a: $00
    dec bc                                        ; $4f9b: $0b
    pop de                                        ; $4f9c: $d1
    jp nc, $d4d3                                  ; $4f9d: $d2 $d3 $d4

    pop de                                        ; $4fa0: $d1
    jp nc, $d6d5                                  ; $4fa1: $d2 $d5 $d6

    pop de                                        ; $4fa4: $d1
    jp nc, $d8d7                                  ; $4fa5: $d2 $d7 $d8

    pop de                                        ; $4fa8: $d1
    jp nc, $dad9                                  ; $4fa9: $d2 $d9 $da

    add b                                         ; $4fac: $80
    add b                                         ; $4fad: $80
    inc bc                                        ; $4fae: $03
    inc bc                                        ; $4faf: $03
    add b                                         ; $4fb0: $80
    add b                                         ; $4fb1: $80
    inc bc                                        ; $4fb2: $03
    inc bc                                        ; $4fb3: $03
    add b                                         ; $4fb4: $80
    add b                                         ; $4fb5: $80
    inc bc                                        ; $4fb6: $03
    inc bc                                        ; $4fb7: $03
    add b                                         ; $4fb8: $80
    add b                                         ; $4fb9: $80
    inc bc                                        ; $4fba: $03
    inc bc                                        ; $4fbb: $03
    db $db                                        ; $4fbc: $db
    call c, $dedd                                 ; $4fbd: $dc $dd $de
    rst $18                                       ; $4fc0: $df
    ldh [$e1], a                                  ; $4fc1: $e0 $e1
    ld [c], a                                     ; $4fc3: $e2
    db $e3                                        ; $4fc4: $e3
    db $e4                                        ; $4fc5: $e4
    push hl                                       ; $4fc6: $e5
    and $e7                                       ; $4fc7: $e6 $e7
    add sp, -$17                                  ; $4fc9: $e8 $e9
    ld [$0303], a                                 ; $4fcb: $ea $03 $03
    inc bc                                        ; $4fce: $03
    inc bc                                        ; $4fcf: $03
    inc bc                                        ; $4fd0: $03
    inc bc                                        ; $4fd1: $03
    inc bc                                        ; $4fd2: $03
    inc bc                                        ; $4fd3: $03
    inc bc                                        ; $4fd4: $03
    inc bc                                        ; $4fd5: $03
    inc bc                                        ; $4fd6: $03
    inc bc                                        ; $4fd7: $03
    inc bc                                        ; $4fd8: $03
    inc bc                                        ; $4fd9: $03
    inc bc                                        ; $4fda: $03
    inc bc                                        ; $4fdb: $03
    db $eb                                        ; $4fdc: $eb
    db $ec                                        ; $4fdd: $ec
    db $ed                                        ; $4fde: $ed
    xor $ef                                       ; $4fdf: $ee $ef
    ldh a, [$f1]                                  ; $4fe1: $f0 $f1
    ld a, [c]                                     ; $4fe3: $f2
    di                                            ; $4fe4: $f3
    db $f4                                        ; $4fe5: $f4
    push af                                       ; $4fe6: $f5
    or $f7                                        ; $4fe7: $f6 $f7
    ld hl, sp-$07                                 ; $4fe9: $f8 $f9
    ld a, [$0303]                                 ; $4feb: $fa $03 $03
    ld [bc], a                                    ; $4fee: $02
    ld [bc], a                                    ; $4fef: $02
    inc bc                                        ; $4ff0: $03
    inc bc                                        ; $4ff1: $03
    ld [bc], a                                    ; $4ff2: $02
    ld [bc], a                                    ; $4ff3: $02
    inc bc                                        ; $4ff4: $03
    inc bc                                        ; $4ff5: $03
    ld [bc], a                                    ; $4ff6: $02
    ld [bc], a                                    ; $4ff7: $02
    inc bc                                        ; $4ff8: $03
    inc bc                                        ; $4ff9: $03
    ld [bc], a                                    ; $4ffa: $02
    ld [bc], a                                    ; $4ffb: $02
    ei                                            ; $4ffc: $fb
    db $fc                                        ; $4ffd: $fc
    db $fd                                        ; $4ffe: $fd
    cp $ff                                        ; $4fff: $fe $ff
    nop                                           ; $5001: $00
    ld bc, $0302                                  ; $5002: $01 $02 $03
    inc b                                         ; $5005: $04
    dec b                                         ; $5006: $05
    ld b, $07                                     ; $5007: $06 $07
    ld [$0a09], sp                                ; $5009: $08 $09 $0a
    ld [bc], a                                    ; $500c: $02
    ld [bc], a                                    ; $500d: $02
    ld [bc], a                                    ; $500e: $02
    ld [bc], a                                    ; $500f: $02
    ld [bc], a                                    ; $5010: $02
    ld [bc], a                                    ; $5011: $02
    ld [bc], a                                    ; $5012: $02
    ld [bc], a                                    ; $5013: $02
    ld [bc], a                                    ; $5014: $02
    ld [bc], a                                    ; $5015: $02
    ld [bc], a                                    ; $5016: $02
    ld [bc], a                                    ; $5017: $02
    ld [bc], a                                    ; $5018: $02
    ld [bc], a                                    ; $5019: $02
    ld [bc], a                                    ; $501a: $02
    ld [bc], a                                    ; $501b: $02
    pop de                                        ; $501c: $d1
    jp nc, Jump_000_0c0b                          ; $501d: $d2 $0b $0c

    pop de                                        ; $5020: $d1
    jp nc, Jump_000_0e0d                          ; $5021: $d2 $0d $0e

    pop de                                        ; $5024: $d1
    jp nc, Jump_000_100f                          ; $5025: $d2 $0f $10

    pop de                                        ; $5028: $d1
    jp nc, Jump_000_1211                          ; $5029: $d2 $11 $12

    add b                                         ; $502c: $80
    add b                                         ; $502d: $80
    inc bc                                        ; $502e: $03
    inc bc                                        ; $502f: $03
    add b                                         ; $5030: $80
    add b                                         ; $5031: $80
    inc bc                                        ; $5032: $03
    nop                                           ; $5033: $00
    add b                                         ; $5034: $80
    add b                                         ; $5035: $80
    inc bc                                        ; $5036: $03
    nop                                           ; $5037: $00
    add b                                         ; $5038: $80
    add b                                         ; $5039: $80
    inc bc                                        ; $503a: $03
    nop                                           ; $503b: $00
    inc de                                        ; $503c: $13
    inc d                                         ; $503d: $14
    dec d                                         ; $503e: $15
    ld d, $17                                     ; $503f: $16 $17
    jr jr_07c_505c                                ; $5041: $18 $19

    ld a, [de]                                    ; $5043: $1a
    dec de                                        ; $5044: $1b
    inc e                                         ; $5045: $1c
    dec e                                         ; $5046: $1d
    ld e, $1f                                     ; $5047: $1e $1f
    jr nz, jr_07c_506c                            ; $5049: $20 $21

    ld [hl+], a                                   ; $504b: $22
    inc bc                                        ; $504c: $03
    inc bc                                        ; $504d: $03
    inc bc                                        ; $504e: $03
    inc bc                                        ; $504f: $03

Jump_07c_5050:
    nop                                           ; $5050: $00
    nop                                           ; $5051: $00

Jump_07c_5052:
    nop                                           ; $5052: $00
    inc bc                                        ; $5053: $03
    nop                                           ; $5054: $00
    nop                                           ; $5055: $00
    nop                                           ; $5056: $00
    inc bc                                        ; $5057: $03
    nop                                           ; $5058: $00
    nop                                           ; $5059: $00
    nop                                           ; $505a: $00
    inc bc                                        ; $505b: $03

jr_07c_505c:
    inc hl                                        ; $505c: $23
    inc h                                         ; $505d: $24
    dec h                                         ; $505e: $25
    ld h, $27                                     ; $505f: $26 $27
    jr z, jr_07c_508c                             ; $5061: $28 $29

    ld a, [hl+]                                   ; $5063: $2a
    dec hl                                        ; $5064: $2b
    inc l                                         ; $5065: $2c
    dec l                                         ; $5066: $2d
    ld l, $2f                                     ; $5067: $2e $2f
    jr nc, jr_07c_509c                            ; $5069: $30 $31

    ld [hl-], a                                   ; $506b: $32

jr_07c_506c:
    inc bc                                        ; $506c: $03
    inc bc                                        ; $506d: $03
    ld [bc], a                                    ; $506e: $02
    ld [bc], a                                    ; $506f: $02
    inc bc                                        ; $5070: $03
    inc bc                                        ; $5071: $03
    ld [bc], a                                    ; $5072: $02
    dec b                                         ; $5073: $05
    inc bc                                        ; $5074: $03
    inc bc                                        ; $5075: $03
    ld [bc], a                                    ; $5076: $02
    dec b                                         ; $5077: $05
    inc bc                                        ; $5078: $03
    inc bc                                        ; $5079: $03
    ld [bc], a                                    ; $507a: $02
    dec b                                         ; $507b: $05
    inc sp                                        ; $507c: $33
    inc [hl]                                      ; $507d: $34
    dec [hl]                                      ; $507e: $35
    ld [hl], $37                                  ; $507f: $36 $37
    jr c, jr_07c_50bc                             ; $5081: $38 $39

    ld a, [hl-]                                   ; $5083: $3a
    dec sp                                        ; $5084: $3b
    inc a                                         ; $5085: $3c
    dec a                                         ; $5086: $3d
    ld a, $3f                                     ; $5087: $3e $3f
    ld b, b                                       ; $5089: $40
    ld b, c                                       ; $508a: $41
    ld b, d                                       ; $508b: $42

jr_07c_508c:
    ld [bc], a                                    ; $508c: $02
    ld [bc], a                                    ; $508d: $02
    ld [bc], a                                    ; $508e: $02
    ld [bc], a                                    ; $508f: $02
    inc b                                         ; $5090: $04
    ld [bc], a                                    ; $5091: $02
    ld [bc], a                                    ; $5092: $02
    ld [bc], a                                    ; $5093: $02
    inc b                                         ; $5094: $04
    ld [bc], a                                    ; $5095: $02
    ld [bc], a                                    ; $5096: $02
    ld [bc], a                                    ; $5097: $02
    inc b                                         ; $5098: $04
    dec b                                         ; $5099: $05
    inc b                                         ; $509a: $04
    ld [bc], a                                    ; $509b: $02

jr_07c_509c:
    pop de                                        ; $509c: $d1
    jp nc, $4443                                  ; $509d: $d2 $43 $44

    pop de                                        ; $50a0: $d1
    jp nc, Jump_07c_4645                          ; $50a1: $d2 $45 $46

    pop de                                        ; $50a4: $d1
    jp nc, Jump_07c_4847                          ; $50a5: $d2 $47 $48

    pop de                                        ; $50a8: $d1
    jp nc, Jump_07c_4a49                          ; $50a9: $d2 $49 $4a

    add b                                         ; $50ac: $80
    add b                                         ; $50ad: $80
    ld bc, $8000                                  ; $50ae: $01 $00 $80
    add b                                         ; $50b1: $80
    ld bc, $8000                                  ; $50b2: $01 $00 $80
    add b                                         ; $50b5: $80
    rlca                                          ; $50b6: $07
    nop                                           ; $50b7: $00
    add b                                         ; $50b8: $80
    add b                                         ; $50b9: $80
    rlca                                          ; $50ba: $07
    ld [bc], a                                    ; $50bb: $02

jr_07c_50bc:
    ld c, e                                       ; $50bc: $4b
    ld c, h                                       ; $50bd: $4c
    ld c, l                                       ; $50be: $4d
    ld c, [hl]                                    ; $50bf: $4e
    ld c, a                                       ; $50c0: $4f
    ld d, b                                       ; $50c1: $50
    ld d, c                                       ; $50c2: $51
    ld d, d                                       ; $50c3: $52
    ld d, e                                       ; $50c4: $53
    ld d, h                                       ; $50c5: $54
    ld d, l                                       ; $50c6: $55
    ld d, [hl]                                    ; $50c7: $56
    ld d, a                                       ; $50c8: $57
    ld e, b                                       ; $50c9: $58
    ld c, d                                       ; $50ca: $4a
    ld e, c                                       ; $50cb: $59
    nop                                           ; $50cc: $00
    nop                                           ; $50cd: $00
    nop                                           ; $50ce: $00
    ld bc, $0000                                  ; $50cf: $01 $00 $00
    nop                                           ; $50d2: $00
    ld bc, $0000                                  ; $50d3: $01 $00 $00
    nop                                           ; $50d6: $00
    rlca                                          ; $50d7: $07
    inc bc                                        ; $50d8: $03
    inc bc                                        ; $50d9: $03
    ld [hl+], a                                   ; $50da: $22
    inc bc                                        ; $50db: $03
    ld b, e                                       ; $50dc: $43
    ld c, [hl]                                    ; $50dd: $4e
    ld e, d                                       ; $50de: $5a
    ld e, e                                       ; $50df: $5b
    ld b, l                                       ; $50e0: $45
    ld d, d                                       ; $50e1: $52
    ld e, h                                       ; $50e2: $5c
    ld e, l                                       ; $50e3: $5d
    ld e, [hl]                                    ; $50e4: $5e
    ld e, a                                       ; $50e5: $5f
    ld b, a                                       ; $50e6: $47
    ld d, [hl]                                    ; $50e7: $56
    ld d, a                                       ; $50e8: $57
    ld e, b                                       ; $50e9: $58
    ld c, c                                       ; $50ea: $49
    ld e, c                                       ; $50eb: $59
    ld bc, $0401                                  ; $50ec: $01 $01 $04
    dec b                                         ; $50ef: $05
    ld bc, $0401                                  ; $50f0: $01 $01 $04
    dec b                                         ; $50f3: $05
    rlca                                          ; $50f4: $07
    rlca                                          ; $50f5: $07
    rlca                                          ; $50f6: $07
    rlca                                          ; $50f7: $07
    ld b, $06                                     ; $50f8: $06 $06
    inc bc                                        ; $50fa: $03
    inc bc                                        ; $50fb: $03
    ld h, b                                       ; $50fc: $60
    ld h, c                                       ; $50fd: $61
    ld e, h                                       ; $50fe: $5c
    ld h, d                                       ; $50ff: $62
    ld h, e                                       ; $5100: $63
    ld h, h                                       ; $5101: $64
    ld h, l                                       ; $5102: $65
    ld h, [hl]                                    ; $5103: $66
    ld e, [hl]                                    ; $5104: $5e
    ld e, a                                       ; $5105: $5f
    ld b, a                                       ; $5106: $47
    ld d, [hl]                                    ; $5107: $56
    ld d, a                                       ; $5108: $57
    ld e, b                                       ; $5109: $58
    ld c, c                                       ; $510a: $49
    ld e, c                                       ; $510b: $59
    dec b                                         ; $510c: $05
    dec b                                         ; $510d: $05
    inc b                                         ; $510e: $04
    ld [bc], a                                    ; $510f: $02
    dec b                                         ; $5110: $05
    rlca                                          ; $5111: $07
    rlca                                          ; $5112: $07
    rlca                                          ; $5113: $07
    rlca                                          ; $5114: $07
    rlca                                          ; $5115: $07
    inc bc                                        ; $5116: $03
    inc bc                                        ; $5117: $03
    inc bc                                        ; $5118: $03
    ld b, $03                                     ; $5119: $06 $03
    inc bc                                        ; $511b: $03
    pop de                                        ; $511c: $d1
    jp nc, Jump_07c_6867                          ; $511d: $d2 $67 $68

    pop de                                        ; $5120: $d1
    jp nc, Jump_07c_6a69                          ; $5121: $d2 $69 $6a

    pop de                                        ; $5124: $d1
    jp nc, Jump_07c_6c6b                          ; $5125: $d2 $6b $6c

    pop de                                        ; $5128: $d1
    jp nc, Jump_07c_6e6d                          ; $5129: $d2 $6d $6e

    add b                                         ; $512c: $80
    add b                                         ; $512d: $80
    rlca                                          ; $512e: $07
    inc bc                                        ; $512f: $03
    add b                                         ; $5130: $80
    add b                                         ; $5131: $80
    rlca                                          ; $5132: $07
    ld b, $80                                     ; $5133: $06 $80
    add b                                         ; $5135: $80
    rlca                                          ; $5136: $07
    ld b, $80                                     ; $5137: $06 $80
    add b                                         ; $5139: $80
    rlca                                          ; $513a: $07
    inc bc                                        ; $513b: $03
    ld l, a                                       ; $513c: $6f
    ld [hl], b                                    ; $513d: $70
    ld h, a                                       ; $513e: $67
    ld l, b                                       ; $513f: $68
    ld [hl], c                                    ; $5140: $71
    ld [hl], d                                    ; $5141: $72
    ld l, c                                       ; $5142: $69
    ld l, d                                       ; $5143: $6a
    ld [hl], e                                    ; $5144: $73
    ld [hl], h                                    ; $5145: $74
    ld l, e                                       ; $5146: $6b
    ld l, h                                       ; $5147: $6c
    ld [hl], l                                    ; $5148: $75
    halt                                          ; $5149: $76
    ld l, l                                       ; $514a: $6d
    ld l, [hl]                                    ; $514b: $6e
    inc bc                                        ; $514c: $03
    ld b, $03                                     ; $514d: $06 $03
    inc bc                                        ; $514f: $03

Jump_07c_5150:
    ld b, $03                                     ; $5150: $06 $03
    ld b, $06                                     ; $5152: $06 $06
    inc bc                                        ; $5154: $03
    inc bc                                        ; $5155: $03
    ld b, $03                                     ; $5156: $06 $03
    inc bc                                        ; $5158: $03
    ld b, $06                                     ; $5159: $06 $06
    inc bc                                        ; $515b: $03
    ld l, a                                       ; $515c: $6f
    ld [hl], b                                    ; $515d: $70
    ld h, a                                       ; $515e: $67
    ld a, [hl+]                                   ; $515f: $2a
    ld [hl], c                                    ; $5160: $71
    ld [hl], d                                    ; $5161: $72
    ld l, c                                       ; $5162: $69
    ld l, $73                                     ; $5163: $2e $73
    ld b, d                                       ; $5165: $42
    ld b, c                                       ; $5166: $41
    ld [hl], a                                    ; $5167: $77
    ld [hl], l                                    ; $5168: $75
    ld h, d                                       ; $5169: $62
    ld e, h                                       ; $516a: $5c
    ld a, b                                       ; $516b: $78
    ld b, $03                                     ; $516c: $06 $03
    inc bc                                        ; $516e: $03
    ld [bc], a                                    ; $516f: $02
    inc bc                                        ; $5170: $03
    inc bc                                        ; $5171: $03
    inc bc                                        ; $5172: $03
    ld [bc], a                                    ; $5173: $02
    inc bc                                        ; $5174: $03
    dec h                                         ; $5175: $25
    inc h                                         ; $5176: $24
    ld [bc], a                                    ; $5177: $02
    ld b, $25                                     ; $5178: $06 $25
    inc h                                         ; $517a: $24
    inc b                                         ; $517b: $04
    ld a, [hl+]                                   ; $517c: $2a
    scf                                           ; $517d: $37
    ld a, c                                       ; $517e: $79
    ld a, d                                       ; $517f: $7a
    ld l, $3b                                     ; $5180: $2e $3b
    ld a, e                                       ; $5182: $7b
    ld a, h                                       ; $5183: $7c
    ld a, l                                       ; $5184: $7d
    ld a, [hl]                                    ; $5185: $7e
    ld a, a                                       ; $5186: $7f
    add b                                         ; $5187: $80
    add c                                         ; $5188: $81
    add d                                         ; $5189: $82
    add e                                         ; $518a: $83
    add h                                         ; $518b: $84
    dec b                                         ; $518c: $05
    inc b                                         ; $518d: $04
    ld bc, $0501                                  ; $518e: $01 $01 $05
    inc b                                         ; $5191: $04
    ld bc, $0501                                  ; $5192: $01 $01 $05
    inc b                                         ; $5195: $04
    ld bc, $0c09                                  ; $5196: $01 $09 $0c
    inc c                                         ; $5199: $0c
    add hl, bc                                    ; $519a: $09
    add hl, bc                                    ; $519b: $09
    add l                                         ; $519c: $85
    add [hl]                                      ; $519d: $86
    add a                                         ; $519e: $87
    adc b                                         ; $519f: $88
    adc c                                         ; $51a0: $89
    adc d                                         ; $51a1: $8a
    adc e                                         ; $51a2: $8b
    adc h                                         ; $51a3: $8c
    adc l                                         ; $51a4: $8d
    adc [hl]                                      ; $51a5: $8e
    adc a                                         ; $51a6: $8f
    sub b                                         ; $51a7: $90
    sub c                                         ; $51a8: $91
    sub d                                         ; $51a9: $92
    sub e                                         ; $51aa: $93
    sub h                                         ; $51ab: $94
    ld a, [bc]                                    ; $51ac: $0a
    ld a, [bc]                                    ; $51ad: $0a
    ld a, [bc]                                    ; $51ae: $0a
    ld a, [bc]                                    ; $51af: $0a
    ld a, [bc]                                    ; $51b0: $0a
    ld a, [bc]                                    ; $51b1: $0a
    ld a, [bc]                                    ; $51b2: $0a
    ld a, [bc]                                    ; $51b3: $0a
    ld a, [bc]                                    ; $51b4: $0a
    ld a, [bc]                                    ; $51b5: $0a
    ld a, [bc]                                    ; $51b6: $0a
    ld a, [bc]                                    ; $51b7: $0a
    ld a, [bc]                                    ; $51b8: $0a
    ld a, [bc]                                    ; $51b9: $0a
    ld a, [bc]                                    ; $51ba: $0a
    ld a, [bc]                                    ; $51bb: $0a
    sub l                                         ; $51bc: $95
    sub [hl]                                      ; $51bd: $96
    sub a                                         ; $51be: $97
    call nc, $9998                                ; $51bf: $d4 $98 $99
    sbc d                                         ; $51c2: $9a
    sub $9b                                       ; $51c3: $d6 $9b
    sbc h                                         ; $51c5: $9c
    sbc l                                         ; $51c6: $9d
    sbc [hl]                                      ; $51c7: $9e
    sbc a                                         ; $51c8: $9f
    and b                                         ; $51c9: $a0
    and c                                         ; $51ca: $a1
    and d                                         ; $51cb: $a2
    ld a, [bc]                                    ; $51cc: $0a
    ld a, [bc]                                    ; $51cd: $0a
    dec bc                                        ; $51ce: $0b
    inc bc                                        ; $51cf: $03
    ld a, [bc]                                    ; $51d0: $0a
    ld a, [bc]                                    ; $51d1: $0a
    dec bc                                        ; $51d2: $0b
    inc bc                                        ; $51d3: $03
    ld a, [bc]                                    ; $51d4: $0a
    ld a, [bc]                                    ; $51d5: $0a
    dec bc                                        ; $51d6: $0b
    dec bc                                        ; $51d7: $0b
    ld a, [bc]                                    ; $51d8: $0a
    ld a, [bc]                                    ; $51d9: $0a
    dec bc                                        ; $51da: $0b
    dec bc                                        ; $51db: $0b
    db $db                                        ; $51dc: $db
    call c, $dedd                                 ; $51dd: $dc $dd $de
    and e                                         ; $51e0: $a3
    ldh [$e1], a                                  ; $51e1: $e0 $e1
    ld [c], a                                     ; $51e3: $e2
    and h                                         ; $51e4: $a4
    and l                                         ; $51e5: $a5
    and [hl]                                      ; $51e6: $a6
    and a                                         ; $51e7: $a7
    xor b                                         ; $51e8: $a8
    xor c                                         ; $51e9: $a9
    xor d                                         ; $51ea: $aa
    xor e                                         ; $51eb: $ab
    inc bc                                        ; $51ec: $03
    inc bc                                        ; $51ed: $03
    inc bc                                        ; $51ee: $03
    inc bc                                        ; $51ef: $03
    dec bc                                        ; $51f0: $0b
    inc bc                                        ; $51f1: $03
    inc bc                                        ; $51f2: $03
    inc bc                                        ; $51f3: $03
    dec bc                                        ; $51f4: $0b
    dec bc                                        ; $51f5: $0b
    dec bc                                        ; $51f6: $0b
    dec bc                                        ; $51f7: $0b
    dec bc                                        ; $51f8: $0b
    dec bc                                        ; $51f9: $0b
    dec bc                                        ; $51fa: $0b
    dec bc                                        ; $51fb: $0b
    db $eb                                        ; $51fc: $eb
    xor h                                         ; $51fd: $ac
    jp nc, $efd1                                  ; $51fe: $d2 $d1 $ef

    xor l                                         ; $5201: $ad
    jp nc, $aed1                                  ; $5202: $d2 $d1 $ae

    xor a                                         ; $5205: $af
    jp nc, $b0d1                                  ; $5206: $d2 $d1 $b0

    or c                                          ; $5209: $b1
    jp nc, Jump_000_03d1                          ; $520a: $d2 $d1 $03

    dec bc                                        ; $520d: $0b
    add b                                         ; $520e: $80
    add b                                         ; $520f: $80
    inc bc                                        ; $5210: $03
    dec bc                                        ; $5211: $0b
    add b                                         ; $5212: $80
    add b                                         ; $5213: $80
    dec bc                                        ; $5214: $0b
    dec bc                                        ; $5215: $0b
    add b                                         ; $5216: $80
    add b                                         ; $5217: $80
    dec bc                                        ; $5218: $0b
    dec bc                                        ; $5219: $0b
    add b                                         ; $521a: $80
    add b                                         ; $521b: $80
    or d                                          ; $521c: $b2
    or e                                          ; $521d: $b3
    or h                                          ; $521e: $b4
    or l                                          ; $521f: $b5
    or [hl]                                       ; $5220: $b6
    or a                                          ; $5221: $b7
    cp b                                          ; $5222: $b8
    ld a, [hl+]                                   ; $5223: $2a
    cp c                                          ; $5224: $b9
    cp d                                          ; $5225: $ba
    cp e                                          ; $5226: $bb
    ld l, $5a                                     ; $5227: $2e $5a
    cp h                                          ; $5229: $bc
    cp l                                          ; $522a: $bd
    ld [hl], a                                    ; $522b: $77
    ld a, [bc]                                    ; $522c: $0a
    ld a, [bc]                                    ; $522d: $0a
    ld a, [bc]                                    ; $522e: $0a
    ld a, [bc]                                    ; $522f: $0a
    ld a, [bc]                                    ; $5230: $0a
    ld a, [bc]                                    ; $5231: $0a
    ld a, [bc]                                    ; $5232: $0a
    inc b                                         ; $5233: $04
    ld a, [bc]                                    ; $5234: $0a
    ld a, [bc]                                    ; $5235: $0a
    ld a, [bc]                                    ; $5236: $0a
    inc b                                         ; $5237: $04
    ld [bc], a                                    ; $5238: $02
    ld a, [bc]                                    ; $5239: $0a
    inc c                                         ; $523a: $0c
    inc b                                         ; $523b: $04
    cp [hl]                                       ; $523c: $be
    cp a                                          ; $523d: $bf
    ret nz                                        ; $523e: $c0

    pop bc                                        ; $523f: $c1
    jp nz, $c4c3                                  ; $5240: $c2 $c3 $c4

    push bc                                       ; $5243: $c5
    add $c7                                       ; $5244: $c6 $c7
    ret z                                         ; $5246: $c8

    ret                                           ; $5247: $c9


    cp l                                          ; $5248: $bd

Call_07c_5249:
    jp z, $cccb                                   ; $5249: $ca $cb $cc

    ld a, [bc]                                    ; $524c: $0a
    ld a, [bc]                                    ; $524d: $0a
    dec bc                                        ; $524e: $0b
    dec bc                                        ; $524f: $0b

Jump_07c_5250:
    ld a, [bc]                                    ; $5250: $0a
    ld a, [bc]                                    ; $5251: $0a
    dec bc                                        ; $5252: $0b
    dec bc                                        ; $5253: $0b
    ld a, [bc]                                    ; $5254: $0a
    ld a, [bc]                                    ; $5255: $0a
    dec bc                                        ; $5256: $0b
    dec bc                                        ; $5257: $0b
    inc c                                         ; $5258: $0c
    ld a, [bc]                                    ; $5259: $0a
    dec bc                                        ; $525a: $0b
    dec bc                                        ; $525b: $0b
    call $cfce                                    ; $525c: $cd $ce $cf
    ld d, $d0                                     ; $525f: $16 $d0
    pop de                                        ; $5261: $d1
    jp nc, $d31a                                  ; $5262: $d2 $1a $d3

    call nc, Call_000_1ed5                        ; $5265: $d4 $d5 $1e
    sub $d7                                       ; $5268: $d6 $d7
    ret c                                         ; $526a: $d8

    ld [hl+], a                                   ; $526b: $22
    dec bc                                        ; $526c: $0b
    dec bc                                        ; $526d: $0b
    dec bc                                        ; $526e: $0b
    inc bc                                        ; $526f: $03
    dec bc                                        ; $5270: $0b
    dec bc                                        ; $5271: $0b
    dec bc                                        ; $5272: $0b
    inc bc                                        ; $5273: $03
    dec bc                                        ; $5274: $0b
    dec bc                                        ; $5275: $0b
    dec bc                                        ; $5276: $0b
    inc bc                                        ; $5277: $03
    dec bc                                        ; $5278: $0b
    dec bc                                        ; $5279: $0b
    dec bc                                        ; $527a: $0b
    inc bc                                        ; $527b: $03
    inc hl                                        ; $527c: $23
    reti                                          ; $527d: $d9


    jp nc, Jump_000_27d1                          ; $527e: $d2 $d1 $27

    jp c, $d1d2                                   ; $5281: $da $d2 $d1

    dec hl                                        ; $5284: $2b
    db $db                                        ; $5285: $db
    jp nc, Jump_000_2fd1                          ; $5286: $d2 $d1 $2f

    call c, $d1d2                                 ; $5289: $dc $d2 $d1
    inc bc                                        ; $528c: $03
    dec bc                                        ; $528d: $0b
    add b                                         ; $528e: $80
    add b                                         ; $528f: $80
    inc bc                                        ; $5290: $03
    dec bc                                        ; $5291: $0b
    add b                                         ; $5292: $80
    add b                                         ; $5293: $80
    inc bc                                        ; $5294: $03
    dec bc                                        ; $5295: $0b
    add b                                         ; $5296: $80
    add b                                         ; $5297: $80
    inc bc                                        ; $5298: $03
    dec bc                                        ; $5299: $0b
    add b                                         ; $529a: $80
    add b                                         ; $529b: $80
    ld e, h                                       ; $529c: $5c
    db $dd                                        ; $529d: $dd
    sbc $df                                       ; $529e: $de $df
    ldh [$64], a                                  ; $52a0: $e0 $64
    ld h, l                                       ; $52a2: $65
    ld h, e                                       ; $52a3: $63
    ld e, [hl]                                    ; $52a4: $5e
    ld e, a                                       ; $52a5: $5f
    ld b, a                                       ; $52a6: $47
    ld d, [hl]                                    ; $52a7: $56
    pop hl                                        ; $52a8: $e1
    pop hl                                        ; $52a9: $e1
    ld c, c                                       ; $52aa: $49
    ld e, c                                       ; $52ab: $59
    ld [bc], a                                    ; $52ac: $02
    inc c                                         ; $52ad: $0c
    inc c                                         ; $52ae: $0c
    ld a, [bc]                                    ; $52af: $0a
    rrca                                          ; $52b0: $0f
    rlca                                          ; $52b1: $07
    rlca                                          ; $52b2: $07
    ld [hl+], a                                   ; $52b3: $22
    inc bc                                        ; $52b4: $03
    inc bc                                        ; $52b5: $03
    rlca                                          ; $52b6: $07
    rlca                                          ; $52b7: $07
    inc c                                         ; $52b8: $0c
    inc l                                         ; $52b9: $2c
    inc bc                                        ; $52ba: $03
    inc bc                                        ; $52bb: $03
    ld [c], a                                     ; $52bc: $e2
    db $e3                                        ; $52bd: $e3
    ld c, [hl]                                    ; $52be: $4e
    ld b, e                                       ; $52bf: $43
    ld e, l                                       ; $52c0: $5d
    db $e4                                        ; $52c1: $e4
    ld d, d                                       ; $52c2: $52
    ld b, l                                       ; $52c3: $45
    ld e, [hl]                                    ; $52c4: $5e
    ld e, a                                       ; $52c5: $5f
    ld b, a                                       ; $52c6: $47
    ld d, [hl]                                    ; $52c7: $56
    ld d, a                                       ; $52c8: $57
    ld e, b                                       ; $52c9: $58
    ld c, c                                       ; $52ca: $49
    ld e, c                                       ; $52cb: $59
    ld a, [bc]                                    ; $52cc: $0a
    inc c                                         ; $52cd: $0c
    ld hl, $0221                                  ; $52ce: $21 $21 $02

Jump_07c_52d1:
    inc c                                         ; $52d1: $0c
    ld hl, $0721                                  ; $52d2: $21 $21 $07
    rlca                                          ; $52d5: $07
    rlca                                          ; $52d6: $07
    rlca                                          ; $52d7: $07
    inc bc                                        ; $52d8: $03
    inc bc                                        ; $52d9: $03
    ld b, $03                                     ; $52da: $06 $03
    ld c, [hl]                                    ; $52dc: $4e
    ld b, e                                       ; $52dd: $43
    ld c, [hl]                                    ; $52de: $4e
    ld b, e                                       ; $52df: $43
    ld d, d                                       ; $52e0: $52
    ld b, l                                       ; $52e1: $45
    ld d, d                                       ; $52e2: $52
    ld b, l                                       ; $52e3: $45
    ld e, [hl]                                    ; $52e4: $5e
    ld e, a                                       ; $52e5: $5f
    ld b, a                                       ; $52e6: $47
    ld d, [hl]                                    ; $52e7: $56
    ld d, a                                       ; $52e8: $57
    ld e, b                                       ; $52e9: $58
    ld c, c                                       ; $52ea: $49
    ld e, c                                       ; $52eb: $59
    ld hl, $2121                                  ; $52ec: $21 $21 $21
    ld hl, $2121                                  ; $52ef: $21 $21 $21
    ld hl, $0721                                  ; $52f2: $21 $21 $07
    rlca                                          ; $52f5: $07
    rlca                                          ; $52f6: $07
    rlca                                          ; $52f7: $07
    ld b, $03                                     ; $52f8: $06 $03
    inc bc                                        ; $52fa: $03
    ld b, $4e                                     ; $52fb: $06 $4e
    ld b, e                                       ; $52fd: $43
    jp nc, Jump_07c_52d1                          ; $52fe: $d2 $d1 $52

    ld b, l                                       ; $5301: $45
    jp nc, Jump_07c_5ed1                          ; $5302: $d2 $d1 $5e

    ld e, a                                       ; $5305: $5f
    jp nc, Jump_07c_57d1                          ; $5306: $d2 $d1 $57

    ld e, b                                       ; $5309: $58
    jp nc, Jump_000_21d1                          ; $530a: $d2 $d1 $21

    ld hl, $8080                                  ; $530d: $21 $80 $80
    ld hl, $8021                                  ; $5310: $21 $21 $80
    add b                                         ; $5313: $80
    rlca                                          ; $5314: $07
    rlca                                          ; $5315: $07
    add b                                         ; $5316: $80
    add b                                         ; $5317: $80
    inc bc                                        ; $5318: $03
    rlca                                          ; $5319: $07
    add b                                         ; $531a: $80
    add b                                         ; $531b: $80
    push hl                                       ; $531c: $e5
    push hl                                       ; $531d: $e5
    ld h, a                                       ; $531e: $67
    ld l, b                                       ; $531f: $68
    and $e7                                       ; $5320: $e6 $e7
    ld l, c                                       ; $5322: $69
    ld l, d                                       ; $5323: $6a
    add sp, -$17                                  ; $5324: $e8 $e9
    ld l, e                                       ; $5326: $6b
    ld l, h                                       ; $5327: $6c
    add h                                         ; $5328: $84
    ld [$6e6d], a                                 ; $5329: $ea $6d $6e
    inc c                                         ; $532c: $0c
    inc l                                         ; $532d: $2c
    inc bc                                        ; $532e: $03
    inc bc                                        ; $532f: $03
    inc c                                         ; $5330: $0c
    inc c                                         ; $5331: $0c
    inc bc                                        ; $5332: $03
    inc bc                                        ; $5333: $03
    add hl, bc                                    ; $5334: $09
    add hl, bc                                    ; $5335: $09
    rlca                                          ; $5336: $07
    inc bc                                        ; $5337: $03
    add hl, bc                                    ; $5338: $09
    add hl, bc                                    ; $5339: $09
    rlca                                          ; $533a: $07
    rlca                                          ; $533b: $07
    ld l, a                                       ; $533c: $6f
    ld [hl], b                                    ; $533d: $70
    ld h, a                                       ; $533e: $67
    ld l, b                                       ; $533f: $68
    ld [hl], c                                    ; $5340: $71
    ld [hl], d                                    ; $5341: $72
    ld l, c                                       ; $5342: $69
    ld l, d                                       ; $5343: $6a
    ld [hl], e                                    ; $5344: $73
    ld [hl], h                                    ; $5345: $74
    ld l, e                                       ; $5346: $6b
    ld l, h                                       ; $5347: $6c
    ld [hl], l                                    ; $5348: $75
    halt                                          ; $5349: $76
    ld l, l                                       ; $534a: $6d
    ld l, [hl]                                    ; $534b: $6e
    ld b, $06                                     ; $534c: $06 $06
    inc bc                                        ; $534e: $03
    inc bc                                        ; $534f: $03
    ld b, $06                                     ; $5350: $06 $06
    ld b, $03                                     ; $5352: $06 $03
    ld b, $03                                     ; $5354: $06 $03
    inc bc                                        ; $5356: $03
    inc bc                                        ; $5357: $03
    inc bc                                        ; $5358: $03
    inc bc                                        ; $5359: $03
    ld b, $06                                     ; $535a: $06 $06
    ld l, a                                       ; $535c: $6f
    ld [hl], b                                    ; $535d: $70
    ld h, a                                       ; $535e: $67
    ld l, b                                       ; $535f: $68
    ld [hl], c                                    ; $5360: $71
    ld [hl], d                                    ; $5361: $72
    ld l, c                                       ; $5362: $69
    ld l, d                                       ; $5363: $6a
    ld [hl], e                                    ; $5364: $73
    ld [hl], h                                    ; $5365: $74
    ld l, e                                       ; $5366: $6b
    ld l, h                                       ; $5367: $6c
    ld [hl], l                                    ; $5368: $75
    halt                                          ; $5369: $76
    ld l, l                                       ; $536a: $6d
    ld l, [hl]                                    ; $536b: $6e
    inc bc                                        ; $536c: $03
    ld b, $06                                     ; $536d: $06 $06
    inc bc                                        ; $536f: $03
    ld b, $03                                     ; $5370: $06 $03
    inc bc                                        ; $5372: $03
    ld b, $06                                     ; $5373: $06 $06
    inc bc                                        ; $5375: $03
    ld b, $06                                     ; $5376: $06 $06
    inc bc                                        ; $5378: $03
    ld b, $06                                     ; $5379: $06 $06
    inc bc                                        ; $537b: $03
    ld l, a                                       ; $537c: $6f
    ld [hl], b                                    ; $537d: $70
    jp nc, Jump_07c_71d1                          ; $537e: $d2 $d1 $71

    ld [hl], d                                    ; $5381: $72
    jp nc, Jump_07c_73d1                          ; $5382: $d2 $d1 $73

    ld [hl], h                                    ; $5385: $74
    jp nc, Jump_07c_75d1                          ; $5386: $d2 $d1 $75

    halt                                          ; $5389: $76
    jp nc, Jump_000_03d1                          ; $538a: $d2 $d1 $03

    rlca                                          ; $538d: $07
    add b                                         ; $538e: $80
    add b                                         ; $538f: $80
    ld b, $07                                     ; $5390: $06 $07
    add b                                         ; $5392: $80
    add b                                         ; $5393: $80
    inc bc                                        ; $5394: $03
    rlca                                          ; $5395: $07
    add b                                         ; $5396: $80
    add b                                         ; $5397: $80
    ld b, $07                                     ; $5398: $06 $07
    add b                                         ; $539a: $80
    add b                                         ; $539b: $80
    pop de                                        ; $539c: $d1
    jp nc, $eceb                                  ; $539d: $d2 $eb $ec

    pop de                                        ; $53a0: $d1
    jp nc, Jump_07c_6665                          ; $53a1: $d2 $65 $66

    pop de                                        ; $53a4: $d1
    jp nc, Jump_07c_5647                          ; $53a5: $d2 $47 $56

    pop de                                        ; $53a8: $d1
    jp nc, Jump_07c_5949                          ; $53a9: $d2 $49 $59

    add b                                         ; $53ac: $80
    add b                                         ; $53ad: $80
    rrca                                          ; $53ae: $0f
    dec bc                                        ; $53af: $0b
    add b                                         ; $53b0: $80
    add b                                         ; $53b1: $80
    rlca                                          ; $53b2: $07
    inc bc                                        ; $53b3: $03
    add b                                         ; $53b4: $80
    add b                                         ; $53b5: $80
    rlca                                          ; $53b6: $07
    inc bc                                        ; $53b7: $03
    add b                                         ; $53b8: $80
    add b                                         ; $53b9: $80
    rlca                                          ; $53ba: $07
    inc bc                                        ; $53bb: $03
    db $ed                                        ; $53bc: $ed
    xor $eb                                       ; $53bd: $ee $eb
    db $ec                                        ; $53bf: $ec
    rst $28                                       ; $53c0: $ef
    ldh a, [$f1]                                  ; $53c1: $f0 $f1
    ld a, [c]                                     ; $53c3: $f2
    di                                            ; $53c4: $f3
    db $f4                                        ; $53c5: $f4
    push af                                       ; $53c6: $f5
    or $f7                                        ; $53c7: $f6 $f7
    ld hl, sp-$07                                 ; $53c9: $f8 $f9
    ld a, [$0b0e]                                 ; $53cb: $fa $0e $0b
    dec bc                                        ; $53ce: $0b
    ld c, $09                                     ; $53cf: $0e $09
    add hl, bc                                    ; $53d1: $09
    add hl, bc                                    ; $53d2: $09
    add hl, bc                                    ; $53d3: $09
    add hl, bc                                    ; $53d4: $09
    add hl, bc                                    ; $53d5: $09
    add hl, bc                                    ; $53d6: $09
    add hl, bc                                    ; $53d7: $09
    add hl, bc                                    ; $53d8: $09
    add hl, bc                                    ; $53d9: $09
    add hl, bc                                    ; $53da: $09
    add hl, bc                                    ; $53db: $09
    db $ed                                        ; $53dc: $ed
    xor $eb                                       ; $53dd: $ee $eb
    ld h, e                                       ; $53df: $63
    ei                                            ; $53e0: $fb
    db $fc                                        ; $53e1: $fc
    ld h, l                                       ; $53e2: $65
    ld h, [hl]                                    ; $53e3: $66
    db $fd                                        ; $53e4: $fd
    cp $47                                        ; $53e5: $fe $47
    ld d, [hl]                                    ; $53e7: $56
    rst $38                                       ; $53e8: $ff
    nop                                           ; $53e9: $00
    ld c, c                                       ; $53ea: $49
    ld e, c                                       ; $53eb: $59
    dec bc                                        ; $53ec: $0b
    rrca                                          ; $53ed: $0f
    rrca                                          ; $53ee: $0f
    inc h                                         ; $53ef: $24
    add hl, bc                                    ; $53f0: $09
    add hl, bc                                    ; $53f1: $09
    inc bc                                        ; $53f2: $03
    rlca                                          ; $53f3: $07
    add hl, bc                                    ; $53f4: $09
    add hl, bc                                    ; $53f5: $09
    inc bc                                        ; $53f6: $03
    inc bc                                        ; $53f7: $03
    add hl, bc                                    ; $53f8: $09
    add hl, bc                                    ; $53f9: $09
    rlca                                          ; $53fa: $07
    rlca                                          ; $53fb: $07
    ld e, l                                       ; $53fc: $5d
    ld bc, $ec02                                  ; $53fd: $01 $02 $ec
    ldh [$64], a                                  ; $5400: $e0 $64
    ld h, l                                       ; $5402: $65
    ld h, [hl]                                    ; $5403: $66
    ld e, [hl]                                    ; $5404: $5e
    ld e, a                                       ; $5405: $5f
    ld b, a                                       ; $5406: $47
    ld d, [hl]                                    ; $5407: $56
    ld d, a                                       ; $5408: $57
    ld e, b                                       ; $5409: $58
    ld c, c                                       ; $540a: $49
    ld e, c                                       ; $540b: $59
    inc b                                         ; $540c: $04
    inc c                                         ; $540d: $0c
    add hl, bc                                    ; $540e: $09
    rrca                                          ; $540f: $0f
    rrca                                          ; $5410: $0f
    rlca                                          ; $5411: $07
    rlca                                          ; $5412: $07
    rlca                                          ; $5413: $07
    inc bc                                        ; $5414: $03
    inc bc                                        ; $5415: $03
    inc bc                                        ; $5416: $03
    ld b, $03                                     ; $5417: $06 $03
    inc bc                                        ; $5419: $03
    ld b, $03                                     ; $541a: $06 $03
    pop de                                        ; $541c: $d1
    jp nc, Jump_07c_6867                          ; $541d: $d2 $67 $68

    pop de                                        ; $5420: $d1
    jp nc, Jump_07c_6a69                          ; $5421: $d2 $69 $6a

    pop de                                        ; $5424: $d1
    jp nc, Jump_07c_6c6b                          ; $5425: $d2 $6b $6c

    pop de                                        ; $5428: $d1
    jp nc, Jump_07c_6e6d                          ; $5429: $d2 $6d $6e

    add b                                         ; $542c: $80
    add b                                         ; $542d: $80
    rlca                                          ; $542e: $07
    inc bc                                        ; $542f: $03
    add b                                         ; $5430: $80
    add b                                         ; $5431: $80
    rlca                                          ; $5432: $07
    inc bc                                        ; $5433: $03
    add b                                         ; $5434: $80
    add b                                         ; $5435: $80
    rlca                                          ; $5436: $07
    inc bc                                        ; $5437: $03
    add b                                         ; $5438: $80
    add b                                         ; $5439: $80
    rlca                                          ; $543a: $07
    inc bc                                        ; $543b: $03
    inc bc                                        ; $543c: $03
    inc b                                         ; $543d: $04
    dec b                                         ; $543e: $05
    ld b, $83                                     ; $543f: $06 $83
    add h                                         ; $5441: $84
    add h                                         ; $5442: $84
    add h                                         ; $5443: $84
    ld [bc], a                                    ; $5444: $02
    rlca                                          ; $5445: $07
    ld [$7507], sp                                ; $5446: $08 $07 $75
    add hl, bc                                    ; $5449: $09
    ld a, [bc]                                    ; $544a: $0a
    add hl, bc                                    ; $544b: $09
    add hl, bc                                    ; $544c: $09
    add hl, bc                                    ; $544d: $09
    add hl, bc                                    ; $544e: $09
    add hl, bc                                    ; $544f: $09
    add hl, bc                                    ; $5450: $09
    add hl, bc                                    ; $5451: $09
    add hl, bc                                    ; $5452: $09
    add hl, bc                                    ; $5453: $09
    add hl, bc                                    ; $5454: $09
    add hl, bc                                    ; $5455: $09
    add hl, bc                                    ; $5456: $09
    add hl, bc                                    ; $5457: $09
    rlca                                          ; $5458: $07
    add hl, bc                                    ; $5459: $09
    add hl, bc                                    ; $545a: $09
    add hl, bc                                    ; $545b: $09
    dec bc                                        ; $545c: $0b
    inc c                                         ; $545d: $0c
    ld h, a                                       ; $545e: $67
    ld l, b                                       ; $545f: $68
    add h                                         ; $5460: $84
    ld [$6a69], a                                 ; $5461: $ea $69 $6a
    ld [$6b02], sp                                ; $5464: $08 $02 $6b
    ld l, h                                       ; $5467: $6c
    ld a, [bc]                                    ; $5468: $0a
    halt                                          ; $5469: $76
    ld l, l                                       ; $546a: $6d
    ld l, [hl]                                    ; $546b: $6e
    add hl, bc                                    ; $546c: $09
    add hl, bc                                    ; $546d: $09
    rlca                                          ; $546e: $07
    rlca                                          ; $546f: $07
    add hl, bc                                    ; $5470: $09
    add hl, bc                                    ; $5471: $09
    rlca                                          ; $5472: $07
    rlca                                          ; $5473: $07
    add hl, bc                                    ; $5474: $09
    add hl, hl                                    ; $5475: $29
    rlca                                          ; $5476: $07
    rlca                                          ; $5477: $07
    add hl, bc                                    ; $5478: $09
    rlca                                          ; $5479: $07
    rlca                                          ; $547a: $07
    rlca                                          ; $547b: $07
    ld l, a                                       ; $547c: $6f
    ld [hl], b                                    ; $547d: $70
    ld h, a                                       ; $547e: $67
    ld l, b                                       ; $547f: $68
    ld [hl], c                                    ; $5480: $71
    ld [hl], d                                    ; $5481: $72
    ld l, c                                       ; $5482: $69
    ld l, d                                       ; $5483: $6a
    ld [hl], e                                    ; $5484: $73
    ld [hl], h                                    ; $5485: $74
    ld l, e                                       ; $5486: $6b
    ld l, h                                       ; $5487: $6c
    ld [hl], l                                    ; $5488: $75
    halt                                          ; $5489: $76
    ld l, l                                       ; $548a: $6d
    ld l, [hl]                                    ; $548b: $6e
    inc bc                                        ; $548c: $03
    ld b, $03                                     ; $548d: $06 $03
    ld b, $06                                     ; $548f: $06 $06
    inc bc                                        ; $5491: $03
    inc bc                                        ; $5492: $03
    inc bc                                        ; $5493: $03
    ld b, $06                                     ; $5494: $06 $06
    inc bc                                        ; $5496: $03
    inc bc                                        ; $5497: $03
    inc bc                                        ; $5498: $03
    ld b, $06                                     ; $5499: $06 $06
    inc bc                                        ; $549b: $03
    pop de                                        ; $549c: $d1
    jp nc, $eceb                                  ; $549d: $d2 $eb $ec

    pop de                                        ; $54a0: $d1
    jp nc, Jump_07c_6665                          ; $54a1: $d2 $65 $66

    pop de                                        ; $54a4: $d1
    jp nc, Jump_07c_5647                          ; $54a5: $d2 $47 $56

    pop de                                        ; $54a8: $d1
    jp nc, Jump_07c_5949                          ; $54a9: $d2 $49 $59

    add b                                         ; $54ac: $80
    add b                                         ; $54ad: $80
    rrca                                          ; $54ae: $0f
    ld c, $80                                     ; $54af: $0e $80
    add b                                         ; $54b1: $80
    rlca                                          ; $54b2: $07
    inc bc                                        ; $54b3: $03
    add b                                         ; $54b4: $80
    add b                                         ; $54b5: $80
    rlca                                          ; $54b6: $07
    inc bc                                        ; $54b7: $03
    add b                                         ; $54b8: $80
    add b                                         ; $54b9: $80
    rlca                                          ; $54ba: $07
    inc bc                                        ; $54bb: $03
    db $ed                                        ; $54bc: $ed
    xor $eb                                       ; $54bd: $ee $eb
    db $ec                                        ; $54bf: $ec
    ldh [$64], a                                  ; $54c0: $e0 $64
    ld h, l                                       ; $54c2: $65
    ld h, [hl]                                    ; $54c3: $66
    ld e, [hl]                                    ; $54c4: $5e
    ld e, a                                       ; $54c5: $5f
    ld b, a                                       ; $54c6: $47
    ld d, [hl]                                    ; $54c7: $56
    ld d, a                                       ; $54c8: $57
    ld e, b                                       ; $54c9: $58
    ld c, c                                       ; $54ca: $49
    ld e, c                                       ; $54cb: $59
    dec bc                                        ; $54cc: $0b
    dec bc                                        ; $54cd: $0b
    dec bc                                        ; $54ce: $0b
    ld c, $0e                                     ; $54cf: $0e $0e
    inc bc                                        ; $54d1: $03
    inc bc                                        ; $54d2: $03
    inc bc                                        ; $54d3: $03
    inc bc                                        ; $54d4: $03
    ld b, $03                                     ; $54d5: $06 $03
    inc bc                                        ; $54d7: $03
    inc bc                                        ; $54d8: $03
    ld b, $06                                     ; $54d9: $06 $06
    inc bc                                        ; $54db: $03
    db $ed                                        ; $54dc: $ed
    xor $eb                                       ; $54dd: $ee $eb
    db $ec                                        ; $54df: $ec
    ldh [$64], a                                  ; $54e0: $e0 $64
    ld h, l                                       ; $54e2: $65
    ld h, [hl]                                    ; $54e3: $66
    ld e, [hl]                                    ; $54e4: $5e
    ld e, a                                       ; $54e5: $5f
    ld b, a                                       ; $54e6: $47
    ld d, [hl]                                    ; $54e7: $56
    ld d, a                                       ; $54e8: $57
    ld e, b                                       ; $54e9: $58
    ld c, c                                       ; $54ea: $49
    ld e, c                                       ; $54eb: $59
    dec bc                                        ; $54ec: $0b
    dec bc                                        ; $54ed: $0b
    ld c, $0b                                     ; $54ee: $0e $0b
    ld c, $03                                     ; $54f0: $0e $03
    inc bc                                        ; $54f2: $03
    ld b, $03                                     ; $54f3: $06 $03
    ld b, $06                                     ; $54f5: $06 $06
    inc bc                                        ; $54f7: $03
    ld b, $03                                     ; $54f8: $06 $03
    ld b, $06                                     ; $54fa: $06 $06
    db $ed                                        ; $54fc: $ed
    db $fc                                        ; $54fd: $fc
    ei                                            ; $54fe: $fb
    ld a, [c]                                     ; $54ff: $f2
    ldh [$fe], a                                  ; $5500: $e0 $fe
    db $fd                                        ; $5502: $fd
    or $5e                                        ; $5503: $f6 $5e
    nop                                           ; $5505: $00
    rst $38                                       ; $5506: $ff
    ld a, [$0c57]                                 ; $5507: $fa $57 $0c
    dec bc                                        ; $550a: $0b
    ld b, $0b                                     ; $550b: $06 $0b
    add hl, hl                                    ; $550d: $29
    add hl, hl                                    ; $550e: $29
    add hl, hl                                    ; $550f: $29
    dec bc                                        ; $5510: $0b
    add hl, hl                                    ; $5511: $29
    add hl, hl                                    ; $5512: $29
    add hl, hl                                    ; $5513: $29
    ld b, $29                                     ; $5514: $06 $29
    add hl, hl                                    ; $5516: $29
    add hl, hl                                    ; $5517: $29
    inc bc                                        ; $5518: $03
    add hl, hl                                    ; $5519: $29
    add hl, hl                                    ; $551a: $29
    add hl, hl                                    ; $551b: $29
    pop de                                        ; $551c: $d1
    jp nc, Jump_07c_6867                          ; $551d: $d2 $67 $68

    pop de                                        ; $5520: $d1
    jp nc, Jump_07c_6a69                          ; $5521: $d2 $69 $6a

    pop de                                        ; $5524: $d1
    jp nc, Jump_07c_6c6b                          ; $5525: $d2 $6b $6c

    pop de                                        ; $5528: $d1
    dec c                                         ; $5529: $0d
    ld c, $0e                                     ; $552a: $0e $0e
    add b                                         ; $552c: $80
    add b                                         ; $552d: $80
    rlca                                          ; $552e: $07
    inc bc                                        ; $552f: $03
    add b                                         ; $5530: $80
    add b                                         ; $5531: $80
    rlca                                          ; $5532: $07
    ld b, $80                                     ; $5533: $06 $80
    add b                                         ; $5535: $80
    rlca                                          ; $5536: $07
    inc bc                                        ; $5537: $03
    add b                                         ; $5538: $80
    adc b                                         ; $5539: $88
    adc b                                         ; $553a: $88
    adc b                                         ; $553b: $88
    ld l, a                                       ; $553c: $6f
    ld [hl], b                                    ; $553d: $70
    ld h, a                                       ; $553e: $67
    ld l, b                                       ; $553f: $68
    ld [hl], c                                    ; $5540: $71
    ld [hl], d                                    ; $5541: $72
    ld l, c                                       ; $5542: $69
    ld l, d                                       ; $5543: $6a
    ld [hl], e                                    ; $5544: $73
    ld [hl], h                                    ; $5545: $74
    ld l, e                                       ; $5546: $6b
    ld l, h                                       ; $5547: $6c
    ld c, $0e                                     ; $5548: $0e $0e
    ld c, $0e                                     ; $554a: $0e $0e
    ld b, $06                                     ; $554c: $06 $06
    inc bc                                        ; $554e: $03
    ld b, $03                                     ; $554f: $06 $03
    inc bc                                        ; $5551: $03
    inc bc                                        ; $5552: $03
    ld b, $06                                     ; $5553: $06 $06
    inc bc                                        ; $5555: $03
    ld b, $06                                     ; $5556: $06 $06
    adc b                                         ; $5558: $88
    adc b                                         ; $5559: $88
    adc b                                         ; $555a: $88
    adc b                                         ; $555b: $88
    ld l, a                                       ; $555c: $6f
    ld [hl], b                                    ; $555d: $70
    ld h, a                                       ; $555e: $67
    ld l, b                                       ; $555f: $68
    ld [hl], c                                    ; $5560: $71
    ld [hl], d                                    ; $5561: $72
    ld l, c                                       ; $5562: $69
    ld l, d                                       ; $5563: $6a
    ld [hl], e                                    ; $5564: $73
    ld [hl], h                                    ; $5565: $74
    ld l, e                                       ; $5566: $6b
    ld l, h                                       ; $5567: $6c
    ld c, $0e                                     ; $5568: $0e $0e
    ld c, $0f                                     ; $556a: $0e $0f
    inc bc                                        ; $556c: $03
    ld b, $06                                     ; $556d: $06 $06
    inc bc                                        ; $556f: $03
    ld b, $03                                     ; $5570: $06 $03
    inc bc                                        ; $5572: $03
    inc bc                                        ; $5573: $03
    inc bc                                        ; $5574: $03
    inc bc                                        ; $5575: $03
    inc bc                                        ; $5576: $03
    inc bc                                        ; $5577: $03
    adc b                                         ; $5578: $88
    adc b                                         ; $5579: $88
    adc b                                         ; $557a: $88
    adc b                                         ; $557b: $88
    ld l, a                                       ; $557c: $6f
    ld [$8484], a                                 ; $557d: $ea $84 $84
    ld [hl], c                                    ; $5580: $71
    ld [bc], a                                    ; $5581: $02
    ld [$7307], sp                                ; $5582: $08 $07 $73
    ld [hl], h                                    ; $5585: $74
    ld a, [bc]                                    ; $5586: $0a
    add hl, bc                                    ; $5587: $09
    ld [hl], l                                    ; $5588: $75
    halt                                          ; $5589: $76
    ld l, l                                       ; $558a: $6d
    ld l, [hl]                                    ; $558b: $6e
    inc bc                                        ; $558c: $03
    add hl, hl                                    ; $558d: $29
    add hl, hl                                    ; $558e: $29
    add hl, hl                                    ; $558f: $29
    inc bc                                        ; $5590: $03
    add hl, bc                                    ; $5591: $09
    add hl, hl                                    ; $5592: $29
    add hl, hl                                    ; $5593: $29
    inc bc                                        ; $5594: $03
    rlca                                          ; $5595: $07
    add hl, hl                                    ; $5596: $29
    add hl, hl                                    ; $5597: $29
    inc bc                                        ; $5598: $03
    inc bc                                        ; $5599: $03
    ld b, $03                                     ; $559a: $06 $03
    db $ed                                        ; $559c: $ed
    ld [bc], a                                    ; $559d: $02
    db $eb                                        ; $559e: $eb
    db $ec                                        ; $559f: $ec
    ldh [$64], a                                  ; $55a0: $e0 $64
    ld h, l                                       ; $55a2: $65
    ld h, [hl]                                    ; $55a3: $66
    ld e, [hl]                                    ; $55a4: $5e
    ld e, a                                       ; $55a5: $5f
    ld b, a                                       ; $55a6: $47
    ld d, [hl]                                    ; $55a7: $56
    ld d, a                                       ; $55a8: $57
    ld e, b                                       ; $55a9: $58
    ld c, c                                       ; $55aa: $49
    ld e, c                                       ; $55ab: $59
    rrca                                          ; $55ac: $0f
    add hl, hl                                    ; $55ad: $29
    rrca                                          ; $55ae: $0f
    rrca                                          ; $55af: $0f
    rrca                                          ; $55b0: $0f
    rlca                                          ; $55b1: $07
    rlca                                          ; $55b2: $07
    inc bc                                        ; $55b3: $03
    inc bc                                        ; $55b4: $03
    inc bc                                        ; $55b5: $03
    inc bc                                        ; $55b6: $03
    ld b, $03                                     ; $55b7: $06 $03
    inc bc                                        ; $55b9: $03
    ld b, $03                                     ; $55ba: $06 $03
    db $ed                                        ; $55bc: $ed
    xor $eb                                       ; $55bd: $ee $eb
    db $ec                                        ; $55bf: $ec
    ldh [$64], a                                  ; $55c0: $e0 $64
    rst $28                                       ; $55c2: $ef
    ldh a, [$5e]                                  ; $55c3: $f0 $5e
    ld e, a                                       ; $55c5: $5f
    di                                            ; $55c6: $f3
    db $f4                                        ; $55c7: $f4
    ld d, a                                       ; $55c8: $57
    ld e, b                                       ; $55c9: $58
    rst $30                                       ; $55ca: $f7
    ld hl, sp+$0b                                 ; $55cb: $f8 $0b
    dec bc                                        ; $55cd: $0b
    dec bc                                        ; $55ce: $0b
    dec bc                                        ; $55cf: $0b
    ld c, $03                                     ; $55d0: $0e $03
    add hl, bc                                    ; $55d2: $09
    add hl, bc                                    ; $55d3: $09
    inc bc                                        ; $55d4: $03
    inc bc                                        ; $55d5: $03
    add hl, bc                                    ; $55d6: $09
    add hl, bc                                    ; $55d7: $09
    inc bc                                        ; $55d8: $03
    inc bc                                        ; $55d9: $03
    add hl, bc                                    ; $55da: $09
    add hl, bc                                    ; $55db: $09
    db $ed                                        ; $55dc: $ed
    xor $eb                                       ; $55dd: $ee $eb
    db $ec                                        ; $55df: $ec
    pop af                                        ; $55e0: $f1
    ld a, [c]                                     ; $55e1: $f2
    ei                                            ; $55e2: $fb
    db $fc                                        ; $55e3: $fc
    push af                                       ; $55e4: $f5
    or $fd                                        ; $55e5: $f6 $fd
    cp $f9                                        ; $55e7: $fe $f9
    ld a, [$00ff]                                 ; $55e9: $fa $ff $00
    dec bc                                        ; $55ec: $0b
    ld c, $0b                                     ; $55ed: $0e $0b
    dec bc                                        ; $55ef: $0b
    add hl, bc                                    ; $55f0: $09
    add hl, bc                                    ; $55f1: $09
    add hl, bc                                    ; $55f2: $09
    add hl, bc                                    ; $55f3: $09
    add hl, bc                                    ; $55f4: $09
    add hl, bc                                    ; $55f5: $09
    add hl, bc                                    ; $55f6: $09
    add hl, bc                                    ; $55f7: $09
    add hl, bc                                    ; $55f8: $09
    add hl, bc                                    ; $55f9: $09
    add hl, bc                                    ; $55fa: $09
    add hl, bc                                    ; $55fb: $09
    db $ed                                        ; $55fc: $ed
    xor $d2                                       ; $55fd: $ee $d2
    pop de                                        ; $55ff: $d1
    ldh [$64], a                                  ; $5600: $e0 $64
    jp nc, Jump_07c_5ed1                          ; $5602: $d2 $d1 $5e

    ld e, a                                       ; $5605: $5f
    jp nc, Jump_07c_57d1                          ; $5606: $d2 $d1 $57

    ld e, b                                       ; $5609: $58
    jp nc, Jump_000_0ed1                          ; $560a: $d2 $d1 $0e

    rrca                                          ; $560d: $0f
    add b                                         ; $560e: $80
    add b                                         ; $560f: $80
    dec bc                                        ; $5610: $0b
    rlca                                          ; $5611: $07
    add b                                         ; $5612: $80
    add b                                         ; $5613: $80
    inc bc                                        ; $5614: $03
    rlca                                          ; $5615: $07
    add b                                         ; $5616: $80
    add b                                         ; $5617: $80
    rlca                                          ; $5618: $07
    rlca                                          ; $5619: $07
    add b                                         ; $561a: $80
    add b                                         ; $561b: $80
    ld l, a                                       ; $561c: $6f
    ld [hl], b                                    ; $561d: $70
    ld h, a                                       ; $561e: $67
    ld l, b                                       ; $561f: $68
    ld [hl], c                                    ; $5620: $71
    ld [hl], d                                    ; $5621: $72
    ld l, c                                       ; $5622: $69
    ld l, d                                       ; $5623: $6a
    ld [hl], e                                    ; $5624: $73
    ld [hl], h                                    ; $5625: $74
    ld l, e                                       ; $5626: $6b
    ld l, h                                       ; $5627: $6c
    ld [hl], l                                    ; $5628: $75
    halt                                          ; $5629: $76
    ld l, l                                       ; $562a: $6d
    ld l, [hl]                                    ; $562b: $6e
    ld b, $03                                     ; $562c: $06 $03
    inc bc                                        ; $562e: $03
    inc bc                                        ; $562f: $03
    inc bc                                        ; $5630: $03
    inc bc                                        ; $5631: $03
    inc bc                                        ; $5632: $03
    ld b, $03                                     ; $5633: $06 $03
    ld b, $06                                     ; $5635: $06 $06
    inc bc                                        ; $5637: $03
    ld b, $06                                     ; $5638: $06 $06
    inc bc                                        ; $563a: $03
    inc bc                                        ; $563b: $03
    ld l, a                                       ; $563c: $6f
    ld [hl], b                                    ; $563d: $70
    inc bc                                        ; $563e: $03
    inc b                                         ; $563f: $04
    ld [hl], c                                    ; $5640: $71
    ld [hl], d                                    ; $5641: $72
    add e                                         ; $5642: $83
    add h                                         ; $5643: $84
    ld [hl], e                                    ; $5644: $73
    ld [hl], h                                    ; $5645: $74
    ld [bc], a                                    ; $5646: $02

Jump_07c_5647:
    rlca                                          ; $5647: $07
    ld [hl], l                                    ; $5648: $75
    halt                                          ; $5649: $76
    ld l, l                                       ; $564a: $6d
    add hl, bc                                    ; $564b: $09
    inc bc                                        ; $564c: $03
    inc bc                                        ; $564d: $03
    add hl, bc                                    ; $564e: $09
    add hl, bc                                    ; $564f: $09
    ld b, $03                                     ; $5650: $06 $03
    add hl, bc                                    ; $5652: $09
    add hl, bc                                    ; $5653: $09
    ld b, $03                                     ; $5654: $06 $03
    add hl, bc                                    ; $5656: $09
    add hl, bc                                    ; $5657: $09
    ld b, $03                                     ; $5658: $06 $03
    rlca                                          ; $565a: $07
    add hl, bc                                    ; $565b: $09
    dec b                                         ; $565c: $05
    ld b, $0b                                     ; $565d: $06 $0b
    inc c                                         ; $565f: $0c
    add h                                         ; $5660: $84
    add h                                         ; $5661: $84
    add h                                         ; $5662: $84
    ld [$0708], a                                 ; $5663: $ea $08 $07
    ld [$0a02], sp                                ; $5666: $08 $02 $0a
    add hl, bc                                    ; $5669: $09
    ld a, [bc]                                    ; $566a: $0a
    ld l, [hl]                                    ; $566b: $6e
    add hl, bc                                    ; $566c: $09
    add hl, bc                                    ; $566d: $09
    add hl, bc                                    ; $566e: $09
    add hl, bc                                    ; $566f: $09
    add hl, bc                                    ; $5670: $09
    add hl, bc                                    ; $5671: $09
    add hl, bc                                    ; $5672: $09
    add hl, bc                                    ; $5673: $09
    add hl, bc                                    ; $5674: $09
    add hl, bc                                    ; $5675: $09
    add hl, bc                                    ; $5676: $09
    add hl, hl                                    ; $5677: $29
    add hl, bc                                    ; $5678: $09
    add hl, bc                                    ; $5679: $09
    add hl, bc                                    ; $567a: $09
    rlca                                          ; $567b: $07
    ld l, a                                       ; $567c: $6f
    ld [hl], b                                    ; $567d: $70
    jp nc, Jump_07c_71d1                          ; $567e: $d2 $d1 $71

    ld [hl], d                                    ; $5681: $72
    jp nc, Jump_07c_73d1                          ; $5682: $d2 $d1 $73

    ld [hl], h                                    ; $5685: $74
    jp nc, Jump_07c_75d1                          ; $5686: $d2 $d1 $75

    halt                                          ; $5689: $76
    jp nc, Jump_000_07d1                          ; $568a: $d2 $d1 $07

    rlca                                          ; $568d: $07
    add b                                         ; $568e: $80
    add b                                         ; $568f: $80
    rlca                                          ; $5690: $07
    rlca                                          ; $5691: $07
    add b                                         ; $5692: $80
    add b                                         ; $5693: $80
    rlca                                          ; $5694: $07
    rlca                                          ; $5695: $07
    add b                                         ; $5696: $80
    add b                                         ; $5697: $80
    rlca                                          ; $5698: $07
    rlca                                          ; $5699: $07
    add b                                         ; $569a: $80
    add b                                         ; $569b: $80
    pop af                                        ; $569c: $f1
    ldh a, [$ef]                                  ; $569d: $f0 $ef
    db $ec                                        ; $569f: $ec
    push af                                       ; $56a0: $f5
    db $f4                                        ; $56a1: $f4
    di                                            ; $56a2: $f3
    ld h, [hl]                                    ; $56a3: $66
    ld sp, hl                                     ; $56a4: $f9
    ld hl, sp-$09                                 ; $56a5: $f8 $f7
    ld d, [hl]                                    ; $56a7: $56
    dec b                                         ; $56a8: $05
    inc b                                         ; $56a9: $04
    inc bc                                        ; $56aa: $03
    ld e, c                                       ; $56ab: $59
    add hl, hl                                    ; $56ac: $29
    add hl, hl                                    ; $56ad: $29
    add hl, hl                                    ; $56ae: $29
    dec bc                                        ; $56af: $0b
    add hl, hl                                    ; $56b0: $29
    add hl, hl                                    ; $56b1: $29
    add hl, hl                                    ; $56b2: $29
    inc bc                                        ; $56b3: $03
    add hl, hl                                    ; $56b4: $29
    add hl, hl                                    ; $56b5: $29
    add hl, hl                                    ; $56b6: $29
    rlca                                          ; $56b7: $07
    add hl, hl                                    ; $56b8: $29
    add hl, hl                                    ; $56b9: $29
    add hl, hl                                    ; $56ba: $29
    rlca                                          ; $56bb: $07
    db $ed                                        ; $56bc: $ed
    xor $eb                                       ; $56bd: $ee $eb
    db $ec                                        ; $56bf: $ec
    ldh [$64], a                                  ; $56c0: $e0 $64
    ld h, l                                       ; $56c2: $65
    ld h, [hl]                                    ; $56c3: $66
    ld e, [hl]                                    ; $56c4: $5e
    ld e, a                                       ; $56c5: $5f
    ld b, a                                       ; $56c6: $47
    ld d, [hl]                                    ; $56c7: $56
    ld d, a                                       ; $56c8: $57
    ld e, b                                       ; $56c9: $58
    ld c, c                                       ; $56ca: $49
    ld e, c                                       ; $56cb: $59
    ld c, $0b                                     ; $56cc: $0e $0b
    dec bc                                        ; $56ce: $0b
    dec bc                                        ; $56cf: $0b
    dec bc                                        ; $56d0: $0b
    inc bc                                        ; $56d1: $03
    inc bc                                        ; $56d2: $03
    ld b, $07                                     ; $56d3: $06 $07
    inc bc                                        ; $56d5: $03
    ld b, $03                                     ; $56d6: $06 $03
    rlca                                          ; $56d8: $07
    inc bc                                        ; $56d9: $03
    inc bc                                        ; $56da: $03
    ld b, $ed                                     ; $56db: $06 $ed
    xor $eb                                       ; $56dd: $ee $eb
    db $ec                                        ; $56df: $ec
    ldh [$64], a                                  ; $56e0: $e0 $64
    ld h, l                                       ; $56e2: $65
    ld h, [hl]                                    ; $56e3: $66
    ld e, [hl]                                    ; $56e4: $5e
    ld e, a                                       ; $56e5: $5f
    ld b, a                                       ; $56e6: $47
    ld d, [hl]                                    ; $56e7: $56
    ld d, a                                       ; $56e8: $57
    ld e, b                                       ; $56e9: $58
    ld c, c                                       ; $56ea: $49
    ld e, c                                       ; $56eb: $59
    ld c, $0e                                     ; $56ec: $0e $0e
    dec bc                                        ; $56ee: $0b
    dec bc                                        ; $56ef: $0b
    dec bc                                        ; $56f0: $0b
    inc bc                                        ; $56f1: $03
    inc bc                                        ; $56f2: $03
    ld b, $06                                     ; $56f3: $06 $06
    inc bc                                        ; $56f5: $03
    inc bc                                        ; $56f6: $03
    ld b, $03                                     ; $56f7: $06 $03
    ld b, $06                                     ; $56f9: $06 $06
    inc bc                                        ; $56fb: $03
    db $ed                                        ; $56fc: $ed
    xor $d2                                       ; $56fd: $ee $d2
    pop de                                        ; $56ff: $d1
    ldh [$64], a                                  ; $5700: $e0 $64
    jp nc, Jump_07c_5ed1                          ; $5702: $d2 $d1 $5e

    ld e, a                                       ; $5705: $5f
    jp nc, Jump_07c_57d1                          ; $5706: $d2 $d1 $57

    ld e, b                                       ; $5709: $58
    jp nc, Jump_000_0ed1                          ; $570a: $d2 $d1 $0e

    rrca                                          ; $570d: $0f
    add b                                         ; $570e: $80
    add b                                         ; $570f: $80
    dec bc                                        ; $5710: $0b
    rlca                                          ; $5711: $07
    add b                                         ; $5712: $80
    add b                                         ; $5713: $80
    inc bc                                        ; $5714: $03
    rlca                                          ; $5715: $07
    add b                                         ; $5716: $80
    add b                                         ; $5717: $80
    inc bc                                        ; $5718: $03
    rlca                                          ; $5719: $07
    add b                                         ; $571a: $80
    add b                                         ; $571b: $80
    add h                                         ; $571c: $84
    add h                                         ; $571d: $84
    add e                                         ; $571e: $83
    ld l, b                                       ; $571f: $68
    ld [$0207], sp                                ; $5720: $08 $07 $02
    ld l, d                                       ; $5723: $6a
    ld a, [bc]                                    ; $5724: $0a
    add hl, bc                                    ; $5725: $09
    ld l, e                                       ; $5726: $6b
    ld l, h                                       ; $5727: $6c
    ld [hl], l                                    ; $5728: $75
    halt                                          ; $5729: $76
    ld l, l                                       ; $572a: $6d
    ld l, [hl]                                    ; $572b: $6e
    add hl, hl                                    ; $572c: $29
    add hl, hl                                    ; $572d: $29
    add hl, hl                                    ; $572e: $29
    rlca                                          ; $572f: $07
    add hl, hl                                    ; $5730: $29
    add hl, hl                                    ; $5731: $29
    add hl, hl                                    ; $5732: $29
    rlca                                          ; $5733: $07
    add hl, hl                                    ; $5734: $29
    add hl, hl                                    ; $5735: $29
    rlca                                          ; $5736: $07
    rlca                                          ; $5737: $07
    ld b, $03                                     ; $5738: $06 $03
    inc bc                                        ; $573a: $03
    inc bc                                        ; $573b: $03
    ld l, a                                       ; $573c: $6f
    ld [hl], b                                    ; $573d: $70
    ld h, a                                       ; $573e: $67
    ld l, b                                       ; $573f: $68
    ld [hl], c                                    ; $5740: $71
    ld [hl], d                                    ; $5741: $72
    ld l, c                                       ; $5742: $69
    ld l, d                                       ; $5743: $6a
    ld [hl], e                                    ; $5744: $73
    ld [hl], h                                    ; $5745: $74
    ld l, e                                       ; $5746: $6b
    ld l, h                                       ; $5747: $6c
    db $10                                        ; $5748: $10
    ld c, $0e                                     ; $5749: $0e $0e
    ld c, $07                                     ; $574b: $0e $07
    ld b, $06                                     ; $574d: $06 $06
    inc bc                                        ; $574f: $03
    rlca                                          ; $5750: $07
    ld b, $03                                     ; $5751: $06 $03
    inc bc                                        ; $5753: $03
    rlca                                          ; $5754: $07
    inc bc                                        ; $5755: $03
    ld b, $03                                     ; $5756: $06 $03
    adc b                                         ; $5758: $88
    adc b                                         ; $5759: $88
    adc b                                         ; $575a: $88
    adc b                                         ; $575b: $88
    ld l, a                                       ; $575c: $6f
    ld [hl], b                                    ; $575d: $70
    ld h, a                                       ; $575e: $67
    ld l, b                                       ; $575f: $68
    ld [hl], c                                    ; $5760: $71
    ld [hl], d                                    ; $5761: $72
    ld l, c                                       ; $5762: $69
    ld l, d                                       ; $5763: $6a
    ld [hl], e                                    ; $5764: $73
    ld [hl], h                                    ; $5765: $74
    ld l, e                                       ; $5766: $6b
    ld l, h                                       ; $5767: $6c
    ld c, $0e                                     ; $5768: $0e $0e
    ld c, $0e                                     ; $576a: $0e $0e
    ld b, $06                                     ; $576c: $06 $06
    inc bc                                        ; $576e: $03
    inc bc                                        ; $576f: $03
    inc bc                                        ; $5770: $03
    inc bc                                        ; $5771: $03
    ld b, $03                                     ; $5772: $06 $03
    inc bc                                        ; $5774: $03
    ld b, $03                                     ; $5775: $06 $03
    inc bc                                        ; $5777: $03
    adc b                                         ; $5778: $88
    adc b                                         ; $5779: $88
    adc b                                         ; $577a: $88
    adc b                                         ; $577b: $88
    ld l, a                                       ; $577c: $6f
    ld [hl], b                                    ; $577d: $70
    jp nc, Jump_07c_71d1                          ; $577e: $d2 $d1 $71

    ld [hl], d                                    ; $5781: $72
    jp nc, Jump_07c_73d1                          ; $5782: $d2 $d1 $73

    ld [hl], h                                    ; $5785: $74
    jp nc, Jump_000_0ed1                          ; $5786: $d2 $d1 $0e

    ld c, $11                                     ; $5789: $0e $11
    pop de                                        ; $578b: $d1
    ld b, $07                                     ; $578c: $06 $07
    add b                                         ; $578e: $80
    add b                                         ; $578f: $80
    inc bc                                        ; $5790: $03
    rlca                                          ; $5791: $07
    add b                                         ; $5792: $80
    add b                                         ; $5793: $80
    inc bc                                        ; $5794: $03
    rlca                                          ; $5795: $07
    add b                                         ; $5796: $80
    add b                                         ; $5797: $80
    adc b                                         ; $5798: $88
    adc b                                         ; $5799: $88
    adc b                                         ; $579a: $88
    add b                                         ; $579b: $80
    pop de                                        ; $579c: $d1
    pop de                                        ; $579d: $d1
    pop de                                        ; $579e: $d1
    pop de                                        ; $579f: $d1
    pop de                                        ; $57a0: $d1
    pop de                                        ; $57a1: $d1
    pop de                                        ; $57a2: $d1
    pop de                                        ; $57a3: $d1
    pop de                                        ; $57a4: $d1
    pop de                                        ; $57a5: $d1
    pop de                                        ; $57a6: $d1
    pop de                                        ; $57a7: $d1
    pop de                                        ; $57a8: $d1
    pop de                                        ; $57a9: $d1
    pop de                                        ; $57aa: $d1
    pop de                                        ; $57ab: $d1
    add b                                         ; $57ac: $80
    add b                                         ; $57ad: $80
    add b                                         ; $57ae: $80
    add b                                         ; $57af: $80
    add b                                         ; $57b0: $80
    add b                                         ; $57b1: $80
    add b                                         ; $57b2: $80
    add b                                         ; $57b3: $80
    add b                                         ; $57b4: $80
    add b                                         ; $57b5: $80
    add b                                         ; $57b6: $80
    add b                                         ; $57b7: $80
    add b                                         ; $57b8: $80
    add b                                         ; $57b9: $80
    add b                                         ; $57ba: $80
    add b                                         ; $57bb: $80
    pop de                                        ; $57bc: $d1
    pop de                                        ; $57bd: $d1
    pop de                                        ; $57be: $d1
    pop de                                        ; $57bf: $d1
    pop de                                        ; $57c0: $d1
    pop de                                        ; $57c1: $d1
    pop de                                        ; $57c2: $d1
    pop de                                        ; $57c3: $d1
    pop de                                        ; $57c4: $d1
    db $10                                        ; $57c5: $10
    ld c, $0e                                     ; $57c6: $0e $0e
    pop de                                        ; $57c8: $d1
    jp nc, $1312                                  ; $57c9: $d2 $12 $13

    add b                                         ; $57cc: $80
    add b                                         ; $57cd: $80
    add b                                         ; $57ce: $80
    add b                                         ; $57cf: $80
    add b                                         ; $57d0: $80

Jump_07c_57d1:
    add b                                         ; $57d1: $80
    add b                                         ; $57d2: $80
    add b                                         ; $57d3: $80
    add b                                         ; $57d4: $80
    adc b                                         ; $57d5: $88
    adc b                                         ; $57d6: $88
    adc b                                         ; $57d7: $88
    add b                                         ; $57d8: $80
    add b                                         ; $57d9: $80
    dec bc                                        ; $57da: $0b
    dec bc                                        ; $57db: $0b
    pop de                                        ; $57dc: $d1
    pop de                                        ; $57dd: $d1
    pop de                                        ; $57de: $d1
    jp nc, $d1d1                                  ; $57df: $d2 $d1 $d1

    pop de                                        ; $57e2: $d1
    jp nc, Jump_000_0e0e                          ; $57e3: $d2 $0e $0e

    ld c, $11                                     ; $57e6: $0e $11
    inc d                                         ; $57e8: $14
    dec d                                         ; $57e9: $15
    ld d, $17                                     ; $57ea: $16 $17
    add b                                         ; $57ec: $80
    add b                                         ; $57ed: $80
    add b                                         ; $57ee: $80
    add b                                         ; $57ef: $80
    add b                                         ; $57f0: $80
    add b                                         ; $57f1: $80
    add b                                         ; $57f2: $80
    add b                                         ; $57f3: $80
    adc b                                         ; $57f4: $88
    adc b                                         ; $57f5: $88
    adc b                                         ; $57f6: $88
    adc b                                         ; $57f7: $88
    dec bc                                        ; $57f8: $0b
    dec bc                                        ; $57f9: $0b
    dec bc                                        ; $57fa: $0b
    dec bc                                        ; $57fb: $0b
    db $ed                                        ; $57fc: $ed
    xor $eb                                       ; $57fd: $ee $eb
    db $ec                                        ; $57ff: $ec
    ldh [$64], a                                  ; $5800: $e0 $64
    ld h, l                                       ; $5802: $65
    ld h, [hl]                                    ; $5803: $66
    ld e, [hl]                                    ; $5804: $5e
    ld e, a                                       ; $5805: $5f
    ld b, a                                       ; $5806: $47
    ld d, [hl]                                    ; $5807: $56
    ld d, a                                       ; $5808: $57
    ld e, b                                       ; $5809: $58
    ld c, c                                       ; $580a: $49
    ld e, c                                       ; $580b: $59
    dec bc                                        ; $580c: $0b
    dec bc                                        ; $580d: $0b
    dec bc                                        ; $580e: $0b
    dec bc                                        ; $580f: $0b
    rrca                                          ; $5810: $0f
    inc bc                                        ; $5811: $03
    inc bc                                        ; $5812: $03
    inc bc                                        ; $5813: $03
    rlca                                          ; $5814: $07
    inc bc                                        ; $5815: $03
    inc bc                                        ; $5816: $03
    inc bc                                        ; $5817: $03
    rlca                                          ; $5818: $07
    inc bc                                        ; $5819: $03
    ld b, $03                                     ; $581a: $06 $03
    pop de                                        ; $581c: $d1
    jp nc, $1918                                  ; $581d: $d2 $18 $19

    pop de                                        ; $5820: $d1
    jp nc, Jump_000_372a                          ; $5821: $d2 $2a $37

    pop de                                        ; $5824: $d1
    jp nc, Jump_000_3b2e                          ; $5825: $d2 $2e $3b

    pop de                                        ; $5828: $d1
    jp nc, Jump_07c_7e7d                          ; $5829: $d2 $7d $7e

    add b                                         ; $582c: $80
    add b                                         ; $582d: $80
    dec bc                                        ; $582e: $0b
    dec bc                                        ; $582f: $0b
    add b                                         ; $5830: $80
    add b                                         ; $5831: $80
    inc b                                         ; $5832: $04
    inc b                                         ; $5833: $04
    add b                                         ; $5834: $80
    add b                                         ; $5835: $80
    inc b                                         ; $5836: $04
    inc b                                         ; $5837: $04
    add b                                         ; $5838: $80
    add b                                         ; $5839: $80
    inc b                                         ; $583a: $04
    inc b                                         ; $583b: $04
    ld a, [de]                                    ; $583c: $1a
    dec de                                        ; $583d: $1b
    inc e                                         ; $583e: $1c
    dec e                                         ; $583f: $1d
    ld e, $1f                                     ; $5840: $1e $1f
    jr nz, jr_07c_5865                            ; $5842: $20 $21

    ld b, e                                       ; $5844: $43
    ld c, [hl]                                    ; $5845: $4e
    ld b, e                                       ; $5846: $43
    ld c, [hl]                                    ; $5847: $4e
    ld b, c                                       ; $5848: $41
    ld d, d                                       ; $5849: $52
    ld b, l                                       ; $584a: $45
    ld d, d                                       ; $584b: $52
    dec bc                                        ; $584c: $0b
    dec bc                                        ; $584d: $0b
    dec bc                                        ; $584e: $0b
    dec bc                                        ; $584f: $0b
    dec bc                                        ; $5850: $0b
    dec bc                                        ; $5851: $0b
    dec bc                                        ; $5852: $0b
    dec bc                                        ; $5853: $0b
    ld bc, $0101                                  ; $5854: $01 $01 $01
    ld bc, $0102                                  ; $5857: $01 $02 $01
    ld bc, $6f01                                  ; $585a: $01 $01 $6f
    ld [hl], b                                    ; $585d: $70
    ld h, a                                       ; $585e: $67
    ld l, b                                       ; $585f: $68
    ld [hl], c                                    ; $5860: $71
    ld [hl], d                                    ; $5861: $72
    ld l, c                                       ; $5862: $69
    ld l, d                                       ; $5863: $6a
    ld [hl], e                                    ; $5864: $73

jr_07c_5865:
    ld [hl], h                                    ; $5865: $74
    ld l, e                                       ; $5866: $6b
    ld l, h                                       ; $5867: $6c
    ld [hl], l                                    ; $5868: $75
    halt                                          ; $5869: $76
    ld l, l                                       ; $586a: $6d
    ld l, [hl]                                    ; $586b: $6e
    rlca                                          ; $586c: $07
    inc bc                                        ; $586d: $03
    inc bc                                        ; $586e: $03
    inc bc                                        ; $586f: $03
    rlca                                          ; $5870: $07
    inc bc                                        ; $5871: $03
    inc bc                                        ; $5872: $03
    inc bc                                        ; $5873: $03
    rlca                                          ; $5874: $07
    inc bc                                        ; $5875: $03
    ld b, $03                                     ; $5876: $06 $03
    rlca                                          ; $5878: $07
    inc bc                                        ; $5879: $03
    inc bc                                        ; $587a: $03
    inc bc                                        ; $587b: $03
    pop de                                        ; $587c: $d1
    jp nc, $8222                                  ; $587d: $d2 $22 $82

    pop de                                        ; $5880: $d1
    jp nc, Jump_000_0123                          ; $5881: $d2 $23 $01

    pop de                                        ; $5884: $d1
    jp nc, Jump_07c_5647                          ; $5885: $d2 $47 $56

    pop de                                        ; $5888: $d1
    jp nc, Jump_07c_5949                          ; $5889: $d2 $49 $59

    add b                                         ; $588c: $80
    add b                                         ; $588d: $80
    inc c                                         ; $588e: $0c
    inc c                                         ; $588f: $0c
    add b                                         ; $5890: $80
    add b                                         ; $5891: $80
    inc c                                         ; $5892: $0c
    inc c                                         ; $5893: $0c
    add b                                         ; $5894: $80
    add b                                         ; $5895: $80
    rlca                                          ; $5896: $07
    rlca                                          ; $5897: $07
    add b                                         ; $5898: $80
    add b                                         ; $5899: $80
    rlca                                          ; $589a: $07
    inc bc                                        ; $589b: $03
    ld e, h                                       ; $589c: $5c
    ld h, d                                       ; $589d: $62
    db $eb                                        ; $589e: $eb
    db $ec                                        ; $589f: $ec
    ldh [$64], a                                  ; $58a0: $e0 $64
    ld h, l                                       ; $58a2: $65
    ld h, [hl]                                    ; $58a3: $66
    ld e, [hl]                                    ; $58a4: $5e
    ld e, a                                       ; $58a5: $5f
    ld b, a                                       ; $58a6: $47
    ld d, [hl]                                    ; $58a7: $56
    ld d, a                                       ; $58a8: $57
    ld e, b                                       ; $58a9: $58
    ld c, c                                       ; $58aa: $49
    ld e, c                                       ; $58ab: $59
    ld [bc], a                                    ; $58ac: $02
    dec b                                         ; $58ad: $05
    rrca                                          ; $58ae: $0f
    rrca                                          ; $58af: $0f
    rrca                                          ; $58b0: $0f
    rlca                                          ; $58b1: $07
    rlca                                          ; $58b2: $07
    inc bc                                        ; $58b3: $03
    rlca                                          ; $58b4: $07
    ld b, $03                                     ; $58b5: $06 $03
    ld b, $06                                     ; $58b7: $06 $06
    inc bc                                        ; $58b9: $03
    ld b, $06                                     ; $58ba: $06 $06
    db $ed                                        ; $58bc: $ed
    xor $eb                                       ; $58bd: $ee $eb
    db $ec                                        ; $58bf: $ec
    ldh [$64], a                                  ; $58c0: $e0 $64
    ld h, l                                       ; $58c2: $65
    ld h, [hl]                                    ; $58c3: $66
    ld e, [hl]                                    ; $58c4: $5e
    ld e, a                                       ; $58c5: $5f
    ld b, a                                       ; $58c6: $47
    ld d, [hl]                                    ; $58c7: $56
    ld d, a                                       ; $58c8: $57
    ld e, b                                       ; $58c9: $58
    ld c, c                                       ; $58ca: $49
    ld e, c                                       ; $58cb: $59
    rrca                                          ; $58cc: $0f
    dec bc                                        ; $58cd: $0b
    ld c, $0b                                     ; $58ce: $0e $0b
    ld c, $03                                     ; $58d0: $0e $03
    inc bc                                        ; $58d2: $03
    ld b, $03                                     ; $58d3: $06 $03
    inc bc                                        ; $58d5: $03
    ld b, $03                                     ; $58d6: $06 $03
    ld b, $06                                     ; $58d8: $06 $06
    ld b, $06                                     ; $58da: $06 $06
    pop de                                        ; $58dc: $d1
    dec c                                         ; $58dd: $0d
    ld c, $0e                                     ; $58de: $0e $0e
    pop de                                        ; $58e0: $d1
    pop de                                        ; $58e1: $d1
    pop de                                        ; $58e2: $d1
    pop de                                        ; $58e3: $d1
    pop de                                        ; $58e4: $d1
    pop de                                        ; $58e5: $d1
    pop de                                        ; $58e6: $d1
    pop de                                        ; $58e7: $d1
    pop de                                        ; $58e8: $d1
    pop de                                        ; $58e9: $d1
    pop de                                        ; $58ea: $d1
    pop de                                        ; $58eb: $d1
    add b                                         ; $58ec: $80

jr_07c_58ed:
    adc b                                         ; $58ed: $88
    adc b                                         ; $58ee: $88
    adc b                                         ; $58ef: $88
    add b                                         ; $58f0: $80
    add b                                         ; $58f1: $80
    add b                                         ; $58f2: $80
    add b                                         ; $58f3: $80
    add b                                         ; $58f4: $80
    add b                                         ; $58f5: $80
    add b                                         ; $58f6: $80
    add b                                         ; $58f7: $80
    add b                                         ; $58f8: $80
    add b                                         ; $58f9: $80
    add b                                         ; $58fa: $80
    add b                                         ; $58fb: $80
    ld c, $0e                                     ; $58fc: $0e $0e
    ld c, $0e                                     ; $58fe: $0e $0e
    pop de                                        ; $5900: $d1
    pop de                                        ; $5901: $d1
    pop de                                        ; $5902: $d1
    pop de                                        ; $5903: $d1
    pop de                                        ; $5904: $d1
    pop de                                        ; $5905: $d1
    pop de                                        ; $5906: $d1
    pop de                                        ; $5907: $d1
    pop de                                        ; $5908: $d1
    pop de                                        ; $5909: $d1
    pop de                                        ; $590a: $d1
    pop de                                        ; $590b: $d1
    adc b                                         ; $590c: $88
    adc b                                         ; $590d: $88
    adc b                                         ; $590e: $88
    adc b                                         ; $590f: $88
    add b                                         ; $5910: $80
    add b                                         ; $5911: $80
    add b                                         ; $5912: $80
    add b                                         ; $5913: $80
    add b                                         ; $5914: $80
    add b                                         ; $5915: $80
    add b                                         ; $5916: $80
    add b                                         ; $5917: $80
    add b                                         ; $5918: $80
    add b                                         ; $5919: $80
    add b                                         ; $591a: $80
    add b                                         ; $591b: $80
    ld c, $0f                                     ; $591c: $0e $0f
    ld h, a                                       ; $591e: $67
    ld l, b                                       ; $591f: $68
    pop de                                        ; $5920: $d1
    jp nc, Jump_07c_6a69                          ; $5921: $d2 $69 $6a

    pop de                                        ; $5924: $d1
    dec c                                         ; $5925: $0d
    inc h                                         ; $5926: $24
    inc h                                         ; $5927: $24
    pop de                                        ; $5928: $d1
    pop de                                        ; $5929: $d1
    dec h                                         ; $592a: $25
    dec h                                         ; $592b: $25
    adc b                                         ; $592c: $88
    adc b                                         ; $592d: $88
    ld b, $03                                     ; $592e: $06 $03
    add b                                         ; $5930: $80
    add b                                         ; $5931: $80
    inc bc                                        ; $5932: $03
    inc bc                                        ; $5933: $03
    add b                                         ; $5934: $80
    adc b                                         ; $5935: $88
    adc b                                         ; $5936: $88
    adc b                                         ; $5937: $88
    add b                                         ; $5938: $80
    add b                                         ; $5939: $80
    adc b                                         ; $593a: $88
    adc b                                         ; $593b: $88
    db $ed                                        ; $593c: $ed
    xor $eb                                       ; $593d: $ee $eb
    db $ec                                        ; $593f: $ec
    ldh [$64], a                                  ; $5940: $e0 $64
    ld h, l                                       ; $5942: $65
    ld h, [hl]                                    ; $5943: $66
    ld e, [hl]                                    ; $5944: $5e
    ld e, a                                       ; $5945: $5f
    ld b, a                                       ; $5946: $47
    ld d, [hl]                                    ; $5947: $56
    ld d, a                                       ; $5948: $57

Jump_07c_5949:
    ld e, b                                       ; $5949: $58
    ld c, c                                       ; $594a: $49
    ld e, c                                       ; $594b: $59
    dec bc                                        ; $594c: $0b
    ld c, $0b                                     ; $594d: $0e $0b
    dec bc                                        ; $594f: $0b
    ld c, $03                                     ; $5950: $0e $03
    inc bc                                        ; $5952: $03
    rlca                                          ; $5953: $07
    ld b, $06                                     ; $5954: $06 $06
    inc bc                                        ; $5956: $03
    rlca                                          ; $5957: $07
    inc bc                                        ; $5958: $03
    inc bc                                        ; $5959: $03
    inc bc                                        ; $595a: $03
    rlca                                          ; $595b: $07
    jp nc, $d1d1                                  ; $595c: $d2 $d1 $d1

    pop de                                        ; $595f: $d1
    jp nc, $d1d1                                  ; $5960: $d2 $d1 $d1

    pop de                                        ; $5963: $d1
    dec c                                         ; $5964: $0d
    ld c, $0e                                     ; $5965: $0e $0e
    ld c, $17                                     ; $5967: $0e $17
    ld h, $27                                     ; $5969: $26 $27
    jr z, jr_07c_58ed                             ; $596b: $28 $80

    add b                                         ; $596d: $80
    add b                                         ; $596e: $80
    add b                                         ; $596f: $80
    add b                                         ; $5970: $80
    add b                                         ; $5971: $80
    add b                                         ; $5972: $80
    add b                                         ; $5973: $80
    adc b                                         ; $5974: $88
    adc b                                         ; $5975: $88
    adc b                                         ; $5976: $88
    adc b                                         ; $5977: $88
    dec hl                                        ; $5978: $2b
    add hl, bc                                    ; $5979: $09
    add hl, bc                                    ; $597a: $09
    add hl, bc                                    ; $597b: $09
    pop de                                        ; $597c: $d1
    pop de                                        ; $597d: $d1
    pop de                                        ; $597e: $d1
    pop de                                        ; $597f: $d1
    pop de                                        ; $5980: $d1
    pop de                                        ; $5981: $d1
    pop de                                        ; $5982: $d1
    pop de                                        ; $5983: $d1
    ld c, $0e                                     ; $5984: $0e $0e
    rrca                                          ; $5986: $0f
    pop de                                        ; $5987: $d1
    add hl, hl                                    ; $5988: $29
    ld a, [hl+]                                   ; $5989: $2a
    jp nc, $80d1                                  ; $598a: $d2 $d1 $80

    add b                                         ; $598d: $80
    add b                                         ; $598e: $80
    add b                                         ; $598f: $80
    add b                                         ; $5990: $80
    add b                                         ; $5991: $80
    add b                                         ; $5992: $80
    add b                                         ; $5993: $80
    adc b                                         ; $5994: $88
    adc b                                         ; $5995: $88
    adc b                                         ; $5996: $88
    add b                                         ; $5997: $80
    add hl, bc                                    ; $5998: $09
    dec bc                                        ; $5999: $0b
    add b                                         ; $599a: $80
    add b                                         ; $599b: $80
    ld l, a                                       ; $599c: $6f
    ld [hl], b                                    ; $599d: $70
    ld h, a                                       ; $599e: $67
    ld l, b                                       ; $599f: $68
    ld [hl], c                                    ; $59a0: $71
    ld [hl], d                                    ; $59a1: $72
    ld l, c                                       ; $59a2: $69
    ld l, d                                       ; $59a3: $6a
    ld [hl], e                                    ; $59a4: $73
    ld [hl], h                                    ; $59a5: $74
    ld l, e                                       ; $59a6: $6b
    ld l, h                                       ; $59a7: $6c
    ld [hl], l                                    ; $59a8: $75
    halt                                          ; $59a9: $76
    ld l, l                                       ; $59aa: $6d
    ld l, [hl]                                    ; $59ab: $6e
    inc bc                                        ; $59ac: $03
    inc bc                                        ; $59ad: $03
    ld b, $07                                     ; $59ae: $06 $07
    inc bc                                        ; $59b0: $03

jr_07c_59b1:
    ld b, $06                                     ; $59b1: $06 $06
    rlca                                          ; $59b3: $07
    inc bc                                        ; $59b4: $03
    inc bc                                        ; $59b5: $03
    inc bc                                        ; $59b6: $03
    rlca                                          ; $59b7: $07
    ld b, $06                                     ; $59b8: $06 $06
    inc bc                                        ; $59ba: $03
    rlca                                          ; $59bb: $07
    dec e                                         ; $59bc: $1d
    dec hl                                        ; $59bd: $2b
    inc l                                         ; $59be: $2c
    dec l                                         ; $59bf: $2d
    ld hl, $2f2e                                  ; $59c0: $21 $2e $2f
    jr nc, jr_07c_5a13                            ; $59c3: $30 $4e

    ld sp, $3332                                  ; $59c5: $31 $32 $33
    ld d, d                                       ; $59c8: $52
    inc [hl]                                      ; $59c9: $34
    dec [hl]                                      ; $59ca: $35
    ld [hl], $2b                                  ; $59cb: $36 $2b
    add hl, bc                                    ; $59cd: $09
    add hl, bc                                    ; $59ce: $09
    add hl, bc                                    ; $59cf: $09
    dec hl                                        ; $59d0: $2b
    dec c                                         ; $59d1: $0d
    dec c                                         ; $59d2: $0d
    dec c                                         ; $59d3: $0d
    ld hl, $0d0d                                  ; $59d4: $21 $0d $0d
    dec c                                         ; $59d7: $0d
    ld hl, $0d0d                                  ; $59d8: $21 $0d $0d
    dec c                                         ; $59db: $0d
    scf                                           ; $59dc: $37
    jr c, jr_07c_59b1                             ; $59dd: $38 $d2

    pop de                                        ; $59df: $d1
    add hl, sp                                    ; $59e0: $39
    ld a, [hl-]                                   ; $59e1: $3a
    jp nc, $3bd1                                  ; $59e2: $d2 $d1 $3b

    ld b, e                                       ; $59e5: $43
    jp nc, Jump_000_3cd1                          ; $59e6: $d2 $d1 $3c

    ld b, l                                       ; $59e9: $45
    jp nc, Jump_000_09d1                          ; $59ea: $d2 $d1 $09

    dec bc                                        ; $59ed: $0b
    add b                                         ; $59ee: $80
    add b                                         ; $59ef: $80
    dec c                                         ; $59f0: $0d
    dec bc                                        ; $59f1: $0b
    add b                                         ; $59f2: $80
    add b                                         ; $59f3: $80
    dec c                                         ; $59f4: $0d
    ld bc, $8080                                  ; $59f5: $01 $80 $80
    dec c                                         ; $59f8: $0d
    ld bc, $8080                                  ; $59f9: $01 $80 $80
    db $ed                                        ; $59fc: $ed
    xor $eb                                       ; $59fd: $ee $eb
    db $ec                                        ; $59ff: $ec
    ldh [$64], a                                  ; $5a00: $e0 $64
    ld h, l                                       ; $5a02: $65
    ld h, [hl]                                    ; $5a03: $66
    ld e, [hl]                                    ; $5a04: $5e
    ld e, a                                       ; $5a05: $5f
    ld b, a                                       ; $5a06: $47
    ld d, [hl]                                    ; $5a07: $56
    ld d, a                                       ; $5a08: $57
    ld e, b                                       ; $5a09: $58
    ld c, c                                       ; $5a0a: $49
    ld e, c                                       ; $5a0b: $59
    ld c, $0b                                     ; $5a0c: $0e $0b
    dec bc                                        ; $5a0e: $0b
    rrca                                          ; $5a0f: $0f
    dec bc                                        ; $5a10: $0b
    inc bc                                        ; $5a11: $03
    inc bc                                        ; $5a12: $03

jr_07c_5a13:
    inc bc                                        ; $5a13: $03
    ld b, $03                                     ; $5a14: $06 $03
    inc bc                                        ; $5a16: $03
    inc bc                                        ; $5a17: $03
    inc bc                                        ; $5a18: $03
    inc bc                                        ; $5a19: $03
    ld b, $03                                     ; $5a1a: $06 $03
    db $ed                                        ; $5a1c: $ed
    dec a                                         ; $5a1d: $3d
    ld a, $3f                                     ; $5a1e: $3e $3f
    ldh [rLCDC], a                                ; $5a20: $e0 $40
    ld b, c                                       ; $5a22: $41
    ld b, d                                       ; $5a23: $42
    ld e, [hl]                                    ; $5a24: $5e
    ld e, a                                       ; $5a25: $5f
    ld b, a                                       ; $5a26: $47
    ld d, [hl]                                    ; $5a27: $56
    ld d, a                                       ; $5a28: $57
    ld e, b                                       ; $5a29: $58
    ld c, c                                       ; $5a2a: $49
    ld e, c                                       ; $5a2b: $59
    rrca                                          ; $5a2c: $0f
    dec c                                         ; $5a2d: $0d
    dec c                                         ; $5a2e: $0d
    dec c                                         ; $5a2f: $0d
    rrca                                          ; $5a30: $0f
    dec c                                         ; $5a31: $0d
    dec c                                         ; $5a32: $0d
    dec c                                         ; $5a33: $0d
    rlca                                          ; $5a34: $07
    rlca                                          ; $5a35: $07
    rlca                                          ; $5a36: $07
    rlca                                          ; $5a37: $07
    inc bc                                        ; $5a38: $03
    ld b, $03                                     ; $5a39: $06 $03
    ld b, $43                                     ; $5a3b: $06 $43
    xor $d2                                       ; $5a3d: $ee $d2
    pop de                                        ; $5a3f: $d1
    ld b, h                                       ; $5a40: $44
    ld h, h                                       ; $5a41: $64
    jp nc, Jump_07c_5ed1                          ; $5a42: $d2 $d1 $5e

    ld e, a                                       ; $5a45: $5f
    jp nc, Jump_07c_57d1                          ; $5a46: $d2 $d1 $57

    ld e, b                                       ; $5a49: $58
    jp nc, $0dd1                                  ; $5a4a: $d2 $d1 $0d

    rrca                                          ; $5a4d: $0f
    add b                                         ; $5a4e: $80
    add b                                         ; $5a4f: $80
    dec c                                         ; $5a50: $0d
    rlca                                          ; $5a51: $07
    add b                                         ; $5a52: $80
    add b                                         ; $5a53: $80
    rlca                                          ; $5a54: $07
    rlca                                          ; $5a55: $07
    add b                                         ; $5a56: $80
    add b                                         ; $5a57: $80
    inc bc                                        ; $5a58: $03
    rlca                                          ; $5a59: $07
    add b                                         ; $5a5a: $80
    add b                                         ; $5a5b: $80
    ld l, a                                       ; $5a5c: $6f
    ld [hl], b                                    ; $5a5d: $70
    db $10                                        ; $5a5e: $10
    ld c, $71                                     ; $5a5f: $0e $71
    ld [hl], d                                    ; $5a61: $72
    jp nc, $24d1                                  ; $5a62: $d2 $d1 $24

    inc h                                         ; $5a65: $24
    ld de, $25d1                                  ; $5a66: $11 $d1 $25
    dec h                                         ; $5a69: $25
    pop de                                        ; $5a6a: $d1
    pop de                                        ; $5a6b: $d1
    ld b, $03                                     ; $5a6c: $06 $03
    adc b                                         ; $5a6e: $88
    adc b                                         ; $5a6f: $88
    inc bc                                        ; $5a70: $03
    inc bc                                        ; $5a71: $03
    add b                                         ; $5a72: $80
    add b                                         ; $5a73: $80
    adc b                                         ; $5a74: $88
    adc b                                         ; $5a75: $88
    adc b                                         ; $5a76: $88
    add b                                         ; $5a77: $80
    adc b                                         ; $5a78: $88
    adc b                                         ; $5a79: $88
    add b                                         ; $5a7a: $80
    add b                                         ; $5a7b: $80
    ld c, $0e                                     ; $5a7c: $0e $0e
    ld de, $d1d1                                  ; $5a7e: $11 $d1 $d1
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
    adc b                                         ; $5a8c: $88
    adc b                                         ; $5a8d: $88
    adc b                                         ; $5a8e: $88
    add b                                         ; $5a8f: $80
    add b                                         ; $5a90: $80
    add b                                         ; $5a91: $80
    add b                                         ; $5a92: $80
    add b                                         ; $5a93: $80
    add b                                         ; $5a94: $80
    add b                                         ; $5a95: $80
    add b                                         ; $5a96: $80
    add b                                         ; $5a97: $80
    add b                                         ; $5a98: $80
    add b                                         ; $5a99: $80
    add b                                         ; $5a9a: $80
    add b                                         ; $5a9b: $80
    ld a, [bc]                                    ; $5a9c: $0a
    nop                                           ; $5a9d: $00
    dec bc                                        ; $5a9e: $0b
    nop                                           ; $5a9f: $00
    ld h, b                                       ; $5aa0: $60
    inc c                                         ; $5aa1: $0c
    pop de                                        ; $5aa2: $d1
    jp nc, $d4d3                                  ; $5aa3: $d2 $d3 $d4

    pop de                                        ; $5aa6: $d1
    jp nc, $d6d5                                  ; $5aa7: $d2 $d5 $d6

    pop de                                        ; $5aaa: $d1
    jp nc, $d8d7                                  ; $5aab: $d2 $d7 $d8

    pop de                                        ; $5aae: $d1
    jp nc, $dad9                                  ; $5aaf: $d2 $d9 $da

    add b                                         ; $5ab2: $80
    add b                                         ; $5ab3: $80
    inc b                                         ; $5ab4: $04
    inc b                                         ; $5ab5: $04
    add b                                         ; $5ab6: $80
    add b                                         ; $5ab7: $80
    inc b                                         ; $5ab8: $04
    inc b                                         ; $5ab9: $04
    add b                                         ; $5aba: $80
    add b                                         ; $5abb: $80
    inc b                                         ; $5abc: $04
    inc b                                         ; $5abd: $04
    add b                                         ; $5abe: $80
    add b                                         ; $5abf: $80
    inc b                                         ; $5ac0: $04
    inc b                                         ; $5ac1: $04
    call nc, $dbd4                                ; $5ac2: $d4 $d4 $db
    pop de                                        ; $5ac5: $d1
    sub $d6                                       ; $5ac6: $d6 $d6
    push de                                       ; $5ac8: $d5
    call c, $d8dd                                 ; $5ac9: $dc $dd $d8
    sbc $df                                       ; $5acc: $de $df
    ldh [$e1], a                                  ; $5ace: $e0 $e1
    ld [c], a                                     ; $5ad0: $e2
    db $e3                                        ; $5ad1: $e3
    inc b                                         ; $5ad2: $04
    inc b                                         ; $5ad3: $04
    inc b                                         ; $5ad4: $04
    dec b                                         ; $5ad5: $05
    inc b                                         ; $5ad6: $04
    inc b                                         ; $5ad7: $04
    inc h                                         ; $5ad8: $24
    dec b                                         ; $5ad9: $05
    inc b                                         ; $5ada: $04
    inc b                                         ; $5adb: $04
    inc b                                         ; $5adc: $04
    dec b                                         ; $5add: $05
    inc b                                         ; $5ade: $04
    inc b                                         ; $5adf: $04
    inc b                                         ; $5ae0: $04
    dec b                                         ; $5ae1: $05
    db $e4                                        ; $5ae2: $e4
    push hl                                       ; $5ae3: $e5
    and $d1                                       ; $5ae4: $e6 $d1
    rst $20                                       ; $5ae6: $e7
    add sp, -$17                                  ; $5ae7: $e8 $e9
    ld [$eceb], a                                 ; $5ae9: $ea $eb $ec
    db $ed                                        ; $5aec: $ed
    xor $ef                                       ; $5aed: $ee $ef
    ldh a, [$f1]                                  ; $5aef: $f0 $f1
    ld a, [c]                                     ; $5af1: $f2
    dec b                                         ; $5af2: $05
    dec b                                         ; $5af3: $05
    dec b                                         ; $5af4: $05
    dec b                                         ; $5af5: $05
    dec b                                         ; $5af6: $05
    dec b                                         ; $5af7: $05
    dec b                                         ; $5af8: $05
    dec b                                         ; $5af9: $05
    dec b                                         ; $5afa: $05
    dec b                                         ; $5afb: $05
    dec b                                         ; $5afc: $05
    dec b                                         ; $5afd: $05
    dec b                                         ; $5afe: $05
    dec b                                         ; $5aff: $05
    dec b                                         ; $5b00: $05
    dec b                                         ; $5b01: $05
    di                                            ; $5b02: $f3
    db $f4                                        ; $5b03: $f4
    push af                                       ; $5b04: $f5
    or $f7                                        ; $5b05: $f6 $f7
    ld hl, sp-$07                                 ; $5b07: $f8 $f9
    ld a, [$fcfb]                                 ; $5b09: $fa $fb $fc
    db $fd                                        ; $5b0c: $fd
    cp $ff                                        ; $5b0d: $fe $ff
    nop                                           ; $5b0f: $00
    ld bc, $0502                                  ; $5b10: $01 $02 $05
    dec b                                         ; $5b13: $05
    dec b                                         ; $5b14: $05
    dec b                                         ; $5b15: $05
    dec b                                         ; $5b16: $05
    dec b                                         ; $5b17: $05
    dec b                                         ; $5b18: $05
    dec b                                         ; $5b19: $05
    dec b                                         ; $5b1a: $05
    dec b                                         ; $5b1b: $05
    dec b                                         ; $5b1c: $05
    dec b                                         ; $5b1d: $05
    dec b                                         ; $5b1e: $05
    dec b                                         ; $5b1f: $05
    dec b                                         ; $5b20: $05
    dec b                                         ; $5b21: $05
    pop de                                        ; $5b22: $d1
    jp nc, $0403                                  ; $5b23: $d2 $03 $04

    pop de                                        ; $5b26: $d1
    jp nc, $0605                                  ; $5b27: $d2 $05 $06

    pop de                                        ; $5b2a: $d1
    jp nc, Jump_000_0807                          ; $5b2b: $d2 $07 $08

    pop de                                        ; $5b2e: $d1
    jp nc, $0a09                                  ; $5b2f: $d2 $09 $0a

    add b                                         ; $5b32: $80
    add b                                         ; $5b33: $80
    inc b                                         ; $5b34: $04
    inc b                                         ; $5b35: $04
    add b                                         ; $5b36: $80
    add b                                         ; $5b37: $80
    inc b                                         ; $5b38: $04
    inc b                                         ; $5b39: $04
    add b                                         ; $5b3a: $80
    add b                                         ; $5b3b: $80
    inc b                                         ; $5b3c: $04
    inc b                                         ; $5b3d: $04
    add b                                         ; $5b3e: $80
    add b                                         ; $5b3f: $80
    rlca                                          ; $5b40: $07
    rlca                                          ; $5b41: $07
    dec bc                                        ; $5b42: $0b
    inc c                                         ; $5b43: $0c
    dec c                                         ; $5b44: $0d
    ld c, $0f                                     ; $5b45: $0e $0f
    db $10                                        ; $5b47: $10

Call_07c_5b48:
    ld de, $0812                                  ; $5b48: $11 $12 $08
    ld [$1413], sp                                ; $5b4b: $08 $13 $14
    dec d                                         ; $5b4e: $15
    ld d, $17                                     ; $5b4f: $16 $17
    jr jr_07c_5b57                                ; $5b51: $18 $04

    inc b                                         ; $5b53: $04
    inc b                                         ; $5b54: $04
    dec b                                         ; $5b55: $05
    inc b                                         ; $5b56: $04

jr_07c_5b57:
    inc b                                         ; $5b57: $04
    inc b                                         ; $5b58: $04
    rlca                                          ; $5b59: $07
    inc b                                         ; $5b5a: $04
    inc b                                         ; $5b5b: $04
    inc b                                         ; $5b5c: $04
    rlca                                          ; $5b5d: $07
    rlca                                          ; $5b5e: $07
    rlca                                          ; $5b5f: $07
    rlca                                          ; $5b60: $07
    rlca                                          ; $5b61: $07
    add hl, de                                    ; $5b62: $19
    ld a, [de]                                    ; $5b63: $1a
    dec de                                        ; $5b64: $1b
    inc e                                         ; $5b65: $1c
    dec e                                         ; $5b66: $1d
    ld e, $1f                                     ; $5b67: $1e $1f
    jr nz, @+$23                                  ; $5b69: $20 $21

    ld [hl+], a                                   ; $5b6b: $22
    inc hl                                        ; $5b6c: $23
    inc h                                         ; $5b6d: $24
    add hl, bc                                    ; $5b6e: $09
    ld a, [bc]                                    ; $5b6f: $0a
    dec d                                         ; $5b70: $15
    dec h                                         ; $5b71: $25
    dec b                                         ; $5b72: $05
    dec b                                         ; $5b73: $05
    dec b                                         ; $5b74: $05
    dec b                                         ; $5b75: $05
    rlca                                          ; $5b76: $07
    rlca                                          ; $5b77: $07
    rlca                                          ; $5b78: $07
    dec b                                         ; $5b79: $05
    ld b, $06                                     ; $5b7a: $06 $06
    rlca                                          ; $5b7c: $07
    dec b                                         ; $5b7d: $05
    ld b, $06                                     ; $5b7e: $06 $06
    rlca                                          ; $5b80: $07
    dec b                                         ; $5b81: $05
    ld h, $27                                     ; $5b82: $26 $27
    jr z, jr_07c_5baf                             ; $5b84: $28 $29

    ld a, [hl+]                                   ; $5b86: $2a
    dec hl                                        ; $5b87: $2b
    inc l                                         ; $5b88: $2c
    ld e, $2d                                     ; $5b89: $1e $2d
    ld l, $2f                                     ; $5b8b: $2e $2f
    ld [hl+], a                                   ; $5b8d: $22
    jr nc, jr_07c_5bc1                            ; $5b8e: $30 $31

    ld [hl-], a                                   ; $5b90: $32
    ld a, [bc]                                    ; $5b91: $0a
    dec b                                         ; $5b92: $05
    dec b                                         ; $5b93: $05
    dec b                                         ; $5b94: $05
    dec b                                         ; $5b95: $05
    dec b                                         ; $5b96: $05
    dec b                                         ; $5b97: $05
    dec b                                         ; $5b98: $05
    rlca                                          ; $5b99: $07
    dec b                                         ; $5b9a: $05
    dec b                                         ; $5b9b: $05
    dec b                                         ; $5b9c: $05
    rlca                                          ; $5b9d: $07
    dec b                                         ; $5b9e: $05
    dec b                                         ; $5b9f: $05
    dec b                                         ; $5ba0: $05
    rlca                                          ; $5ba1: $07
    pop de                                        ; $5ba2: $d1
    jp nc, Jump_000_3433                          ; $5ba3: $d2 $33 $34

    pop de                                        ; $5ba6: $d1
    jp nc, Jump_000_3635                          ; $5ba7: $d2 $35 $36

    pop de                                        ; $5baa: $d1
    jp nc, $3837                                  ; $5bab: $d2 $37 $38

    pop de                                        ; $5bae: $d1

jr_07c_5baf:
    jp nc, Jump_000_3a39                          ; $5baf: $d2 $39 $3a

    add b                                         ; $5bb2: $80
    add b                                         ; $5bb3: $80
    rlca                                          ; $5bb4: $07
    ld b, $80                                     ; $5bb5: $06 $80
    add b                                         ; $5bb7: $80
    rlca                                          ; $5bb8: $07
    ld b, $80                                     ; $5bb9: $06 $80
    add b                                         ; $5bbb: $80
    rlca                                          ; $5bbc: $07
    ld b, $80                                     ; $5bbd: $06 $80
    add b                                         ; $5bbf: $80
    rlca                                          ; $5bc0: $07

jr_07c_5bc1:
    ld b, $3b                                     ; $5bc1: $06 $3b
    inc a                                         ; $5bc3: $3c
    dec a                                         ; $5bc4: $3d
    ld a, $3f                                     ; $5bc5: $3e $3f
    ld b, b                                       ; $5bc7: $40
    ld b, c                                       ; $5bc8: $41
    ld b, d                                       ; $5bc9: $42
    ld b, e                                       ; $5bca: $43
    ld b, h                                       ; $5bcb: $44
    ld b, l                                       ; $5bcc: $45
    ld b, [hl]                                    ; $5bcd: $46
    ld b, a                                       ; $5bce: $47
    ld c, b                                       ; $5bcf: $48
    ld c, c                                       ; $5bd0: $49
    ld c, d                                       ; $5bd1: $4a
    ld b, $06                                     ; $5bd2: $06 $06
    ld b, $06                                     ; $5bd4: $06 $06
    ld b, $06                                     ; $5bd6: $06 $06
    ld b, $06                                     ; $5bd8: $06 $06
    ld b, $06                                     ; $5bda: $06 $06
    ld b, $06                                     ; $5bdc: $06 $06
    ld b, $06                                     ; $5bde: $06 $06
    ld b, $06                                     ; $5be0: $06 $06
    inc sp                                        ; $5be2: $33
    inc [hl]                                      ; $5be3: $34
    dec sp                                        ; $5be4: $3b
    ld c, e                                       ; $5be5: $4b
    dec [hl]                                      ; $5be6: $35
    ld [hl], $3f                                  ; $5be7: $36 $3f
    ld b, b                                       ; $5be9: $40
    scf                                           ; $5bea: $37
    jr c, @+$45                                   ; $5beb: $38 $43

    ld b, h                                       ; $5bed: $44
    add hl, sp                                    ; $5bee: $39
    ld a, [hl-]                                   ; $5bef: $3a
    ld b, a                                       ; $5bf0: $47
    ld c, b                                       ; $5bf1: $48
    ld b, $06                                     ; $5bf2: $06 $06
    rlca                                          ; $5bf4: $07
    dec b                                         ; $5bf5: $05
    ld b, $06                                     ; $5bf6: $06 $06
    rlca                                          ; $5bf8: $07
    rlca                                          ; $5bf9: $07
    ld b, $06                                     ; $5bfa: $06 $06
    ld b, $06                                     ; $5bfc: $06 $06
    ld b, $06                                     ; $5bfe: $06 $06
    ld b, $06                                     ; $5c00: $06 $06
    ld c, h                                       ; $5c02: $4c
    ld c, h                                       ; $5c03: $4c
    ld c, e                                       ; $5c04: $4b
    inc [hl]                                      ; $5c05: $34
    ld b, c                                       ; $5c06: $41
    ld b, d                                       ; $5c07: $42
    dec [hl]                                      ; $5c08: $35
    ld [hl], $45                                  ; $5c09: $36 $45
    ld b, [hl]                                    ; $5c0b: $46
    scf                                           ; $5c0c: $37
    jr c, jr_07c_5c58                             ; $5c0d: $38 $49

    ld c, d                                       ; $5c0f: $4a
    add hl, sp                                    ; $5c10: $39
    ld a, [hl-]                                   ; $5c11: $3a
    dec b                                         ; $5c12: $05
    dec b                                         ; $5c13: $05
    dec h                                         ; $5c14: $25
    rlca                                          ; $5c15: $07
    rlca                                          ; $5c16: $07
    rlca                                          ; $5c17: $07
    rlca                                          ; $5c18: $07
    rlca                                          ; $5c19: $07
    ld b, $06                                     ; $5c1a: $06 $06
    ld b, $06                                     ; $5c1c: $06 $06
    ld b, $06                                     ; $5c1e: $06 $06
    ld b, $06                                     ; $5c20: $06 $06
    pop de                                        ; $5c22: $d1
    jp nc, Jump_07c_4e4d                          ; $5c23: $d2 $4d $4e

    pop de                                        ; $5c26: $d1
    jp nc, $4f4f                                  ; $5c27: $d2 $4f $4f

    pop de                                        ; $5c2a: $d1
    jp nc, Jump_07c_5150                          ; $5c2b: $d2 $50 $51

    pop de                                        ; $5c2e: $d1
    jp nc, Jump_07c_5052                          ; $5c2f: $d2 $52 $50

    add b                                         ; $5c32: $80
    add b                                         ; $5c33: $80
    rlca                                          ; $5c34: $07
    ld b, $80                                     ; $5c35: $06 $80
    add b                                         ; $5c37: $80
    ld [bc], a                                    ; $5c38: $02
    ld [bc], a                                    ; $5c39: $02
    add b                                         ; $5c3a: $80
    add b                                         ; $5c3b: $80
    ld [bc], a                                    ; $5c3c: $02
    ld [bc], a                                    ; $5c3d: $02
    add b                                         ; $5c3e: $80
    add b                                         ; $5c3f: $80
    ld [bc], a                                    ; $5c40: $02
    ld [bc], a                                    ; $5c41: $02
    ld d, e                                       ; $5c42: $53
    ld d, h                                       ; $5c43: $54
    ld d, l                                       ; $5c44: $55
    ld d, [hl]                                    ; $5c45: $56
    ld c, a                                       ; $5c46: $4f
    ld c, a                                       ; $5c47: $4f
    ld d, a                                       ; $5c48: $57
    ld e, b                                       ; $5c49: $58
    ld e, c                                       ; $5c4a: $59
    ld e, d                                       ; $5c4b: $5a
    ld e, e                                       ; $5c4c: $5b
    ld e, h                                       ; $5c4d: $5c
    ld e, l                                       ; $5c4e: $5d
    ld e, [hl]                                    ; $5c4f: $5e
    ld e, a                                       ; $5c50: $5f
    ld h, b                                       ; $5c51: $60
    ld b, $06                                     ; $5c52: $06 $06
    ld b, $06                                     ; $5c54: $06 $06
    ld [bc], a                                    ; $5c56: $02
    ld [bc], a                                    ; $5c57: $02

jr_07c_5c58:
    ld [bc], a                                    ; $5c58: $02
    ld [bc], a                                    ; $5c59: $02
    ld [bc], a                                    ; $5c5a: $02
    ld [bc], a                                    ; $5c5b: $02
    ld [bc], a                                    ; $5c5c: $02
    ld [bc], a                                    ; $5c5d: $02
    ld [bc], a                                    ; $5c5e: $02
    ld [bc], a                                    ; $5c5f: $02
    ld [bc], a                                    ; $5c60: $02
    ld [bc], a                                    ; $5c61: $02
    ld c, l                                       ; $5c62: $4d
    ld c, [hl]                                    ; $5c63: $4e
    ld d, e                                       ; $5c64: $53
    ld d, h                                       ; $5c65: $54
    ld h, c                                       ; $5c66: $61
    ld h, d                                       ; $5c67: $62
    ld h, e                                       ; $5c68: $63
    ld c, a                                       ; $5c69: $4f
    ld h, h                                       ; $5c6a: $64
    ld h, l                                       ; $5c6b: $65
    ld h, [hl]                                    ; $5c6c: $66
    ld h, a                                       ; $5c6d: $67
    ld l, b                                       ; $5c6e: $68
    ld d, d                                       ; $5c6f: $52
    ld l, c                                       ; $5c70: $69
    ld l, d                                       ; $5c71: $6a
    ld b, $06                                     ; $5c72: $06 $06
    ld b, $06                                     ; $5c74: $06 $06
    ld [bc], a                                    ; $5c76: $02
    ld [bc], a                                    ; $5c77: $02
    ld [bc], a                                    ; $5c78: $02
    ld [bc], a                                    ; $5c79: $02
    ld [bc], a                                    ; $5c7a: $02
    ld [bc], a                                    ; $5c7b: $02
    ld [bc], a                                    ; $5c7c: $02
    ld [bc], a                                    ; $5c7d: $02
    ld [bc], a                                    ; $5c7e: $02
    ld [bc], a                                    ; $5c7f: $02
    ld [bc], a                                    ; $5c80: $02
    ld [bc], a                                    ; $5c81: $02
    ld d, l                                       ; $5c82: $55
    ld d, [hl]                                    ; $5c83: $56
    ld c, l                                       ; $5c84: $4d
    ld c, [hl]                                    ; $5c85: $4e
    ld l, e                                       ; $5c86: $6b
    ld l, h                                       ; $5c87: $6c
    ld l, l                                       ; $5c88: $6d
    ld e, $6e                                     ; $5c89: $1e $6e
    ld l, a                                       ; $5c8b: $6f
    ld [hl], b                                    ; $5c8c: $70
    ld [hl+], a                                   ; $5c8d: $22
    ld [hl], c                                    ; $5c8e: $71
    ld [hl], d                                    ; $5c8f: $72
    ld [hl], e                                    ; $5c90: $73
    ld a, [bc]                                    ; $5c91: $0a
    ld b, $06                                     ; $5c92: $06 $06
    ld b, $06                                     ; $5c94: $06 $06
    ld [bc], a                                    ; $5c96: $02
    ld [bc], a                                    ; $5c97: $02
    ld [bc], a                                    ; $5c98: $02
    ld b, $02                                     ; $5c99: $06 $02
    ld [bc], a                                    ; $5c9b: $02
    ld [bc], a                                    ; $5c9c: $02
    ld b, $02                                     ; $5c9d: $06 $02
    ld [bc], a                                    ; $5c9f: $02
    ld [bc], a                                    ; $5ca0: $02
    rlca                                          ; $5ca1: $07
    pop de                                        ; $5ca2: $d1
    pop de                                        ; $5ca3: $d1
    ld [hl], h                                    ; $5ca4: $74
    pop de                                        ; $5ca5: $d1
    ld [hl], l                                    ; $5ca6: $75
    halt                                          ; $5ca7: $76
    ld [hl], a                                    ; $5ca8: $77
    ld a, b                                       ; $5ca9: $78
    ld a, c                                       ; $5caa: $79
    ld a, d                                       ; $5cab: $7a
    db $eb                                        ; $5cac: $eb
    db $ec                                        ; $5cad: $ec
    ld a, e                                       ; $5cae: $7b
    ld a, h                                       ; $5caf: $7c
    rst $28                                       ; $5cb0: $ef
    ld bc, $0505                                  ; $5cb1: $01 $05 $05
    dec b                                         ; $5cb4: $05
    dec b                                         ; $5cb5: $05
    dec b                                         ; $5cb6: $05
    dec b                                         ; $5cb7: $05
    dec b                                         ; $5cb8: $05
    dec b                                         ; $5cb9: $05
    dec b                                         ; $5cba: $05
    dec b                                         ; $5cbb: $05
    dec b                                         ; $5cbc: $05
    dec b                                         ; $5cbd: $05
    dec b                                         ; $5cbe: $05
    dec b                                         ; $5cbf: $05
    dec b                                         ; $5cc0: $05
    dec b                                         ; $5cc1: $05
    pop de                                        ; $5cc2: $d1
    pop de                                        ; $5cc3: $d1
    pop de                                        ; $5cc4: $d1
    ld a, l                                       ; $5cc5: $7d
    ld a, [hl]                                    ; $5cc6: $7e
    ld a, a                                       ; $5cc7: $7f
    call c, $8180                                 ; $5cc8: $dc $80 $81
    add d                                         ; $5ccb: $82
    rst $18                                       ; $5ccc: $df
    add e                                         ; $5ccd: $83
    add h                                         ; $5cce: $84
    add l                                         ; $5ccf: $85
    db $e3                                        ; $5cd0: $e3
    add [hl]                                      ; $5cd1: $86
    dec b                                         ; $5cd2: $05
    dec b                                         ; $5cd3: $05
    dec b                                         ; $5cd4: $05
    dec b                                         ; $5cd5: $05
    dec b                                         ; $5cd6: $05
    dec b                                         ; $5cd7: $05
    dec b                                         ; $5cd8: $05
    dec c                                         ; $5cd9: $0d
    dec c                                         ; $5cda: $0d
    dec c                                         ; $5cdb: $0d
    dec b                                         ; $5cdc: $05
    dec c                                         ; $5cdd: $0d
    dec c                                         ; $5cde: $0d
    dec c                                         ; $5cdf: $0d
    dec b                                         ; $5ce0: $05
    dec c                                         ; $5ce1: $0d
    add a                                         ; $5ce2: $87
    pop de                                        ; $5ce3: $d1
    pop de                                        ; $5ce4: $d1
    pop de                                        ; $5ce5: $d1
    adc b                                         ; $5ce6: $88
    adc c                                         ; $5ce7: $89
    ld a, a                                       ; $5ce8: $7f
    call c, $8b8a                                 ; $5ce9: $dc $8a $8b
    add d                                         ; $5cec: $82
    rst $18                                       ; $5ced: $df
    adc h                                         ; $5cee: $8c
    adc l                                         ; $5cef: $8d
    add l                                         ; $5cf0: $85
    db $e3                                        ; $5cf1: $e3
    dec c                                         ; $5cf2: $0d
    dec b                                         ; $5cf3: $05
    dec b                                         ; $5cf4: $05
    dec b                                         ; $5cf5: $05
    dec c                                         ; $5cf6: $0d
    dec c                                         ; $5cf7: $0d
    dec b                                         ; $5cf8: $05
    dec b                                         ; $5cf9: $05
    dec c                                         ; $5cfa: $0d
    dec c                                         ; $5cfb: $0d
    dec c                                         ; $5cfc: $0d
    dec b                                         ; $5cfd: $05
    dec c                                         ; $5cfe: $0d
    dec c                                         ; $5cff: $0d
    dec c                                         ; $5d00: $0d
    dec b                                         ; $5d01: $05
    ld [hl], h                                    ; $5d02: $74
    pop de                                        ; $5d03: $d1
    pop de                                        ; $5d04: $d1
    pop de                                        ; $5d05: $d1
    ld [hl], a                                    ; $5d06: $77
    ld a, b                                       ; $5d07: $78
    ld a, [hl]                                    ; $5d08: $7e
    ld a, a                                       ; $5d09: $7f
    db $eb                                        ; $5d0a: $eb
    db $ec                                        ; $5d0b: $ec
    add c                                         ; $5d0c: $81
    add d                                         ; $5d0d: $82
    rst $28                                       ; $5d0e: $ef
    ld bc, $8f8e                                  ; $5d0f: $01 $8e $8f
    dec b                                         ; $5d12: $05
    dec b                                         ; $5d13: $05
    dec b                                         ; $5d14: $05
    dec b                                         ; $5d15: $05
    dec b                                         ; $5d16: $05
    dec b                                         ; $5d17: $05
    dec b                                         ; $5d18: $05
    dec b                                         ; $5d19: $05
    dec b                                         ; $5d1a: $05
    dec b                                         ; $5d1b: $05
    dec c                                         ; $5d1c: $0d
    dec c                                         ; $5d1d: $0d
    dec b                                         ; $5d1e: $05
    dec b                                         ; $5d1f: $05
    dec bc                                        ; $5d20: $0b
    dec bc                                        ; $5d21: $0b
    sub b                                         ; $5d22: $90
    ld c, $19                                     ; $5d23: $0e $19
    ld a, [de]                                    ; $5d25: $1a
    rra                                           ; $5d26: $1f
    sub c                                         ; $5d27: $91
    sub d                                         ; $5d28: $92
    ld [de], a                                    ; $5d29: $12
    inc hl                                        ; $5d2a: $23
    sub e                                         ; $5d2b: $93
    sub h                                         ; $5d2c: $94
    inc d                                         ; $5d2d: $14
    dec d                                         ; $5d2e: $15
    ld d, $17                                     ; $5d2f: $16 $17
    jr jr_07c_5d40                                ; $5d31: $18 $0d

    dec b                                         ; $5d33: $05
    dec b                                         ; $5d34: $05
    dec b                                         ; $5d35: $05
    rlca                                          ; $5d36: $07
    rrca                                          ; $5d37: $0f
    rrca                                          ; $5d38: $0f
    rlca                                          ; $5d39: $07
    ld b, $0e                                     ; $5d3a: $06 $0e
    ld c, $06                                     ; $5d3c: $0e $06
    ld b, $06                                     ; $5d3e: $06 $06

jr_07c_5d40:
    ld b, $06                                     ; $5d40: $06 $06
    sub l                                         ; $5d42: $95
    sub [hl]                                      ; $5d43: $96
    ld c, $97                                     ; $5d44: $0e $97
    dec e                                         ; $5d46: $1d
    ld e, $1f                                     ; $5d47: $1e $1f
    sub c                                         ; $5d49: $91
    ld hl, $2322                                  ; $5d4a: $21 $22 $23
    sub e                                         ; $5d4d: $93
    add hl, bc                                    ; $5d4e: $09
    ld a, [bc]                                    ; $5d4f: $0a
    dec d                                         ; $5d50: $15
    ld d, $0d                                     ; $5d51: $16 $0d
    dec c                                         ; $5d53: $0d
    dec b                                         ; $5d54: $05
    dec c                                         ; $5d55: $0d
    rlca                                          ; $5d56: $07
    rlca                                          ; $5d57: $07
    rlca                                          ; $5d58: $07
    rrca                                          ; $5d59: $0f
    ld b, $06                                     ; $5d5a: $06 $06
    ld b, $0e                                     ; $5d5c: $06 $0e
    ld b, $06                                     ; $5d5e: $06 $06
    ld b, $06                                     ; $5d60: $06 $06
    sbc b                                         ; $5d62: $98
    sub l                                         ; $5d63: $95
    sub [hl]                                      ; $5d64: $96
    ld c, $92                                     ; $5d65: $0e $92
    ld [de], a                                    ; $5d67: $12
    dec e                                         ; $5d68: $1d
    ld e, $94                                     ; $5d69: $1e $94
    inc d                                         ; $5d6b: $14
    ld hl, $1722                                  ; $5d6c: $21 $22 $17
    jr jr_07c_5d7a                                ; $5d6f: $18 $09

    ld a, [bc]                                    ; $5d71: $0a
    dec c                                         ; $5d72: $0d
    dec c                                         ; $5d73: $0d
    dec c                                         ; $5d74: $0d
    dec b                                         ; $5d75: $05
    rrca                                          ; $5d76: $0f
    rlca                                          ; $5d77: $07
    rlca                                          ; $5d78: $07
    rlca                                          ; $5d79: $07

jr_07c_5d7a:
    ld c, $06                                     ; $5d7a: $0e $06
    ld b, $06                                     ; $5d7c: $06 $06
    ld b, $06                                     ; $5d7e: $06 $06
    ld b, $06                                     ; $5d80: $06 $06
    add hl, de                                    ; $5d82: $19
    ld a, [de]                                    ; $5d83: $1a
    sbc c                                         ; $5d84: $99
    sbc d                                         ; $5d85: $9a
    rra                                           ; $5d86: $1f
    sub c                                         ; $5d87: $91
    sbc e                                         ; $5d88: $9b
    sbc h                                         ; $5d89: $9c
    inc hl                                        ; $5d8a: $23
    sub e                                         ; $5d8b: $93
    sbc l                                         ; $5d8c: $9d
    sbc [hl]                                      ; $5d8d: $9e
    dec d                                         ; $5d8e: $15
    ld d, $9f                                     ; $5d8f: $16 $9f
    and b                                         ; $5d91: $a0
    dec b                                         ; $5d92: $05
    dec b                                         ; $5d93: $05
    dec bc                                        ; $5d94: $0b
    dec bc                                        ; $5d95: $0b
    rlca                                          ; $5d96: $07
    rrca                                          ; $5d97: $0f
    dec bc                                        ; $5d98: $0b
    dec bc                                        ; $5d99: $0b
    ld b, $0f                                     ; $5d9a: $06 $0f
    dec bc                                        ; $5d9c: $0b
    dec bc                                        ; $5d9d: $0b
    ld b, $07                                     ; $5d9e: $06 $07
    dec bc                                        ; $5da0: $0b
    dec bc                                        ; $5da1: $0b
    dec sp                                        ; $5da2: $3b
    inc a                                         ; $5da3: $3c
    dec a                                         ; $5da4: $3d
    ld a, $3f                                     ; $5da5: $3e $3f
    ld b, b                                       ; $5da7: $40
    ld b, c                                       ; $5da8: $41
    ld b, d                                       ; $5da9: $42
    ld b, e                                       ; $5daa: $43
    ld b, h                                       ; $5dab: $44
    ld b, l                                       ; $5dac: $45
    and c                                         ; $5dad: $a1
    ld b, a                                       ; $5dae: $47
    ld c, b                                       ; $5daf: $48
    ld c, c                                       ; $5db0: $49
    and d                                         ; $5db1: $a2
    ld b, $06                                     ; $5db2: $06 $06
    ld b, $06                                     ; $5db4: $06 $06
    ld b, $06                                     ; $5db6: $06 $06
    ld b, $06                                     ; $5db8: $06 $06
    ld b, $06                                     ; $5dba: $06 $06
    ld b, $09                                     ; $5dbc: $06 $09
    ld b, $06                                     ; $5dbe: $06 $06
    ld b, $09                                     ; $5dc0: $06 $09
    inc sp                                        ; $5dc2: $33
    inc [hl]                                      ; $5dc3: $34
    dec sp                                        ; $5dc4: $3b
    inc a                                         ; $5dc5: $3c
    dec [hl]                                      ; $5dc6: $35
    ld [hl], $3f                                  ; $5dc7: $36 $3f
    ld b, b                                       ; $5dc9: $40
    and e                                         ; $5dca: $a3
    and h                                         ; $5dcb: $a4
    and l                                         ; $5dcc: $a5
    ld b, h                                       ; $5dcd: $44
    and [hl]                                      ; $5dce: $a6
    and a                                         ; $5dcf: $a7
    xor b                                         ; $5dd0: $a8
    xor c                                         ; $5dd1: $a9
    ld b, $06                                     ; $5dd2: $06 $06
    ld b, $06                                     ; $5dd4: $06 $06
    ld b, $06                                     ; $5dd6: $06 $06
    ld b, $06                                     ; $5dd8: $06 $06
    add hl, bc                                    ; $5dda: $09
    add hl, bc                                    ; $5ddb: $09
    add hl, bc                                    ; $5ddc: $09
    ld b, $09                                     ; $5ddd: $06 $09
    add hl, bc                                    ; $5ddf: $09
    add hl, bc                                    ; $5de0: $09
    add hl, bc                                    ; $5de1: $09
    dec a                                         ; $5de2: $3d
    ld a, $33                                     ; $5de3: $3e $33
    inc [hl]                                      ; $5de5: $34
    ld b, c                                       ; $5de6: $41
    ld b, d                                       ; $5de7: $42
    dec [hl]                                      ; $5de8: $35
    ld [hl], $45                                  ; $5de9: $36 $45
    ld b, [hl]                                    ; $5deb: $46
    scf                                           ; $5dec: $37
    jr c, jr_07c_5e38                             ; $5ded: $38 $49

    ld c, d                                       ; $5def: $4a
    add hl, sp                                    ; $5df0: $39
    ld a, [hl-]                                   ; $5df1: $3a
    ld b, $06                                     ; $5df2: $06 $06
    ld b, $06                                     ; $5df4: $06 $06
    ld b, $06                                     ; $5df6: $06 $06
    ld b, $06                                     ; $5df8: $06 $06
    ld b, $06                                     ; $5dfa: $06 $06
    ld b, $06                                     ; $5dfc: $06 $06
    ld b, $06                                     ; $5dfe: $06 $06
    ld b, $06                                     ; $5e00: $06 $06
    dec sp                                        ; $5e02: $3b
    inc a                                         ; $5e03: $3c
    dec a                                         ; $5e04: $3d
    ld a, $3f                                     ; $5e05: $3e $3f
    ld b, b                                       ; $5e07: $40
    ld b, c                                       ; $5e08: $41
    ld b, d                                       ; $5e09: $42
    ld b, e                                       ; $5e0a: $43
    ld b, h                                       ; $5e0b: $44
    ld b, l                                       ; $5e0c: $45
    ld b, [hl]                                    ; $5e0d: $46
    ld b, a                                       ; $5e0e: $47
    ld c, b                                       ; $5e0f: $48
    ld c, c                                       ; $5e10: $49
    ld c, d                                       ; $5e11: $4a
    ld b, $07                                     ; $5e12: $06 $07
    rlca                                          ; $5e14: $07
    rlca                                          ; $5e15: $07
    ld b, $06                                     ; $5e16: $06 $06
    ld b, $06                                     ; $5e18: $06 $06
    ld b, $06                                     ; $5e1a: $06 $06
    ld b, $06                                     ; $5e1c: $06 $06
    ld b, $06                                     ; $5e1e: $06 $06
    ld b, $06                                     ; $5e20: $06 $06
    ld d, e                                       ; $5e22: $53
    ld d, h                                       ; $5e23: $54
    ld d, l                                       ; $5e24: $55
    xor d                                         ; $5e25: $aa
    rra                                           ; $5e26: $1f
    sub c                                         ; $5e27: $91
    sub d                                         ; $5e28: $92
    xor e                                         ; $5e29: $ab
    inc hl                                        ; $5e2a: $23
    sub e                                         ; $5e2b: $93
    sub h                                         ; $5e2c: $94
    xor h                                         ; $5e2d: $ac
    dec d                                         ; $5e2e: $15
    ld d, $17                                     ; $5e2f: $16 $17
    xor l                                         ; $5e31: $ad
    ld b, $06                                     ; $5e32: $06 $06
    ld b, $09                                     ; $5e34: $06 $09
    ld b, $0e                                     ; $5e36: $06 $0e

jr_07c_5e38:
    ld c, $09                                     ; $5e38: $0e $09
    ld b, $0e                                     ; $5e3a: $06 $0e
    ld c, $09                                     ; $5e3c: $0e $09
    ld b, $06                                     ; $5e3e: $06 $06
    ld b, $09                                     ; $5e40: $06 $09
    xor [hl]                                      ; $5e42: $ae
    xor a                                         ; $5e43: $af
    or b                                          ; $5e44: $b0
    or c                                          ; $5e45: $b1
    or d                                          ; $5e46: $b2
    or e                                          ; $5e47: $b3
    or h                                          ; $5e48: $b4
    or l                                          ; $5e49: $b5
    or [hl]                                       ; $5e4a: $b6
    or [hl]                                       ; $5e4b: $b6
    or a                                          ; $5e4c: $b7
    cp b                                          ; $5e4d: $b8
    cp c                                          ; $5e4e: $b9
    cp d                                          ; $5e4f: $ba
    cp e                                          ; $5e50: $bb
    cp h                                          ; $5e51: $bc
    add hl, bc                                    ; $5e52: $09
    add hl, bc                                    ; $5e53: $09
    add hl, bc                                    ; $5e54: $09
    add hl, bc                                    ; $5e55: $09
    add hl, bc                                    ; $5e56: $09
    add hl, bc                                    ; $5e57: $09
    add hl, bc                                    ; $5e58: $09
    add hl, bc                                    ; $5e59: $09
    add hl, bc                                    ; $5e5a: $09
    add hl, bc                                    ; $5e5b: $09
    add hl, bc                                    ; $5e5c: $09
    add hl, bc                                    ; $5e5d: $09
    add hl, bc                                    ; $5e5e: $09
    add hl, bc                                    ; $5e5f: $09
    add hl, bc                                    ; $5e60: $09
    add hl, bc                                    ; $5e61: $09
    ld d, l                                       ; $5e62: $55
    ld d, [hl]                                    ; $5e63: $56
    ld c, l                                       ; $5e64: $4d
    ld c, [hl]                                    ; $5e65: $4e
    sub d                                         ; $5e66: $92
    ld [de], a                                    ; $5e67: $12
    dec e                                         ; $5e68: $1d
    ld e, $94                                     ; $5e69: $1e $94
    inc d                                         ; $5e6b: $14
    ld hl, $1722                                  ; $5e6c: $21 $22 $17
    jr @+$0b                                      ; $5e6f: $18 $09

    ld a, [bc]                                    ; $5e71: $0a
    rlca                                          ; $5e72: $07
    ld b, $06                                     ; $5e73: $06 $06
    ld b, $0f                                     ; $5e75: $06 $0f
    ld b, $06                                     ; $5e77: $06 $06
    ld b, $0f                                     ; $5e79: $06 $0f
    ld b, $06                                     ; $5e7b: $06 $06
    ld b, $07                                     ; $5e7d: $06 $07
    ld b, $06                                     ; $5e7f: $06 $06
    ld b, $53                                     ; $5e81: $06 $53
    ld d, h                                       ; $5e83: $54
    ld d, l                                       ; $5e84: $55
    ld d, [hl]                                    ; $5e85: $56
    rra                                           ; $5e86: $1f
    sub c                                         ; $5e87: $91
    sub d                                         ; $5e88: $92
    ld [de], a                                    ; $5e89: $12
    inc hl                                        ; $5e8a: $23
    sub e                                         ; $5e8b: $93
    sub h                                         ; $5e8c: $94
    inc d                                         ; $5e8d: $14
    and c                                         ; $5e8e: $a1
    and e                                         ; $5e8f: $a3
    and h                                         ; $5e90: $a4
    and l                                         ; $5e91: $a5
    ld b, $06                                     ; $5e92: $06 $06
    ld b, $06                                     ; $5e94: $06 $06
    ld b, $0e                                     ; $5e96: $06 $0e
    ld c, $06                                     ; $5e98: $0e $06
    ld b, $0e                                     ; $5e9a: $06 $0e
    ld c, $06                                     ; $5e9c: $0e $06
    add hl, bc                                    ; $5e9e: $09
    add hl, bc                                    ; $5e9f: $09
    add hl, bc                                    ; $5ea0: $09
    add hl, bc                                    ; $5ea1: $09
    pop de                                        ; $5ea2: $d1
    ld [hl], h                                    ; $5ea3: $74
    pop de                                        ; $5ea4: $d1
    pop de                                        ; $5ea5: $d1
    call c, Call_07c_7877                         ; $5ea6: $dc $77 $78
    ld a, [hl]                                    ; $5ea9: $7e
    rst $18                                       ; $5eaa: $df
    db $eb                                        ; $5eab: $eb
    db $ec                                        ; $5eac: $ec
    add c                                         ; $5ead: $81
    adc a                                         ; $5eae: $8f
    cp l                                          ; $5eaf: $bd
    cp [hl]                                       ; $5eb0: $be
    cp a                                          ; $5eb1: $bf
    dec b                                         ; $5eb2: $05
    dec b                                         ; $5eb3: $05
    dec b                                         ; $5eb4: $05
    dec b                                         ; $5eb5: $05
    dec b                                         ; $5eb6: $05
    dec b                                         ; $5eb7: $05
    dec b                                         ; $5eb8: $05
    dec b                                         ; $5eb9: $05
    dec b                                         ; $5eba: $05
    dec b                                         ; $5ebb: $05
    dec b                                         ; $5ebc: $05
    dec c                                         ; $5ebd: $0d
    dec bc                                        ; $5ebe: $0b
    dec bc                                        ; $5ebf: $0b
    dec bc                                        ; $5ec0: $0b
    dec bc                                        ; $5ec1: $0b
    jp nc, $d1d1                                  ; $5ec2: $d2 $d1 $d1

    pop de                                        ; $5ec5: $d1
    jp nc, $d1d1                                  ; $5ec6: $d2 $d1 $d1

    pop de                                        ; $5ec9: $d1
    jp nc, $d1d1                                  ; $5eca: $d2 $d1 $d1

    pop de                                        ; $5ecd: $d1
    jp nc, $d1d1                                  ; $5ece: $d2 $d1 $d1

Jump_07c_5ed1:
    pop de                                        ; $5ed1: $d1
    add b                                         ; $5ed2: $80
    add b                                         ; $5ed3: $80
    add b                                         ; $5ed4: $80
    add b                                         ; $5ed5: $80
    add b                                         ; $5ed6: $80
    add b                                         ; $5ed7: $80
    add b                                         ; $5ed8: $80
    add b                                         ; $5ed9: $80
    add b                                         ; $5eda: $80
    add b                                         ; $5edb: $80
    add b                                         ; $5edc: $80
    add b                                         ; $5edd: $80
    add b                                         ; $5ede: $80
    add b                                         ; $5edf: $80
    add b                                         ; $5ee0: $80
    add b                                         ; $5ee1: $80
    ret nz                                        ; $5ee2: $c0

    pop bc                                        ; $5ee3: $c1
    jp nz, $c4c3                                  ; $5ee4: $c2 $c3 $c4

    push bc                                       ; $5ee7: $c5
    add $c7                                       ; $5ee8: $c6 $c7
    ret z                                         ; $5eea: $c8

    ret z                                         ; $5eeb: $c8

    sbc [hl]                                      ; $5eec: $9e
    ret                                           ; $5eed: $c9


    jp z, $a0cb                                   ; $5eee: $ca $cb $a0

    call z, $0b0b                                 ; $5ef1: $cc $0b $0b
    dec bc                                        ; $5ef4: $0b
    dec bc                                        ; $5ef5: $0b
    dec bc                                        ; $5ef6: $0b
    dec bc                                        ; $5ef7: $0b
    dec bc                                        ; $5ef8: $0b
    dec bc                                        ; $5ef9: $0b
    dec bc                                        ; $5efa: $0b
    dec hl                                        ; $5efb: $2b
    dec bc                                        ; $5efc: $0b
    dec bc                                        ; $5efd: $0b
    dec bc                                        ; $5efe: $0b
    dec bc                                        ; $5eff: $0b
    dec bc                                        ; $5f00: $0b
    dec bc                                        ; $5f01: $0b
    inc sp                                        ; $5f02: $33
    inc [hl]                                      ; $5f03: $34
    dec sp                                        ; $5f04: $3b
    inc a                                         ; $5f05: $3c
    dec [hl]                                      ; $5f06: $35
    ld [hl], $3f                                  ; $5f07: $36 $3f
    ld b, b                                       ; $5f09: $40
    scf                                           ; $5f0a: $37
    jr c, @+$45                                   ; $5f0b: $38 $43

    ld b, h                                       ; $5f0d: $44
    add hl, sp                                    ; $5f0e: $39
    ld a, [hl-]                                   ; $5f0f: $3a
    ld b, a                                       ; $5f10: $47
    ld c, b                                       ; $5f11: $48
    rlca                                          ; $5f12: $07
    rlca                                          ; $5f13: $07
    rlca                                          ; $5f14: $07
    rlca                                          ; $5f15: $07
    ld b, $06                                     ; $5f16: $06 $06
    ld b, $07                                     ; $5f18: $06 $07
    ld b, $06                                     ; $5f1a: $06 $06
    ld b, $07                                     ; $5f1c: $06 $07
    ld b, $06                                     ; $5f1e: $06 $06
    ld b, $07                                     ; $5f20: $06 $07
    ld c, l                                       ; $5f22: $4d
    ld c, [hl]                                    ; $5f23: $4e
    ld d, e                                       ; $5f24: $53
    ld d, h                                       ; $5f25: $54
    dec e                                         ; $5f26: $1d
    ld e, $1f                                     ; $5f27: $1e $1f
    sub c                                         ; $5f29: $91
    ld hl, $2322                                  ; $5f2a: $21 $22 $23
    sub e                                         ; $5f2d: $93
    add hl, bc                                    ; $5f2e: $09
    ld a, [bc]                                    ; $5f2f: $0a
    dec d                                         ; $5f30: $15
    ld d, $06                                     ; $5f31: $16 $06
    ld b, $06                                     ; $5f33: $06 $06
    rlca                                          ; $5f35: $07
    ld b, $06                                     ; $5f36: $06 $06
    ld b, $0f                                     ; $5f38: $06 $0f
    ld b, $06                                     ; $5f3a: $06 $06
    ld b, $0f                                     ; $5f3c: $06 $0f
    ld b, $06                                     ; $5f3e: $06 $06
    ld b, $07                                     ; $5f40: $06 $07
    pop de                                        ; $5f42: $d1
    jp nc, $cd50                                  ; $5f43: $d2 $50 $cd

    pop de                                        ; $5f46: $d1
    jp nc, $cfce                                  ; $5f47: $d2 $ce $cf

    pop de                                        ; $5f4a: $d1
    jp nc, $d050                                  ; $5f4b: $d2 $50 $d0

    pop de                                        ; $5f4e: $d1
    jp nc, $d152                                  ; $5f4f: $d2 $52 $d1

    add b                                         ; $5f52: $80
    add b                                         ; $5f53: $80
    ld [bc], a                                    ; $5f54: $02
    ld a, [bc]                                    ; $5f55: $0a
    add b                                         ; $5f56: $80
    add b                                         ; $5f57: $80
    ld a, [bc]                                    ; $5f58: $0a
    ld a, [bc]                                    ; $5f59: $0a
    add b                                         ; $5f5a: $80
    add b                                         ; $5f5b: $80
    ld [bc], a                                    ; $5f5c: $02
    ld a, [bc]                                    ; $5f5d: $0a
    add b                                         ; $5f5e: $80
    add b                                         ; $5f5f: $80
    ld [bc], a                                    ; $5f60: $02
    ld a, [bc]                                    ; $5f61: $0a
    jp nc, $d4d3                                  ; $5f62: $d2 $d3 $d4

    push de                                       ; $5f65: $d5
    sub $d7                                       ; $5f66: $d6 $d7
    ret c                                         ; $5f68: $d8

    reti                                          ; $5f69: $d9


    jp c, $db50                                   ; $5f6a: $da $50 $db

    call c, $dedd                                 ; $5f6d: $dc $dd $de
    rst $18                                       ; $5f70: $df
    ldh [$0a], a                                  ; $5f71: $e0 $0a
    ld a, [bc]                                    ; $5f73: $0a
    ld a, [bc]                                    ; $5f74: $0a
    ld a, [bc]                                    ; $5f75: $0a
    ld a, [bc]                                    ; $5f76: $0a
    ld a, [bc]                                    ; $5f77: $0a
    ld a, [bc]                                    ; $5f78: $0a
    ld a, [bc]                                    ; $5f79: $0a
    ld a, [bc]                                    ; $5f7a: $0a
    ld [bc], a                                    ; $5f7b: $02
    ld a, [bc]                                    ; $5f7c: $0a
    ld a, [bc]                                    ; $5f7d: $0a
    ld a, [bc]                                    ; $5f7e: $0a
    ld a, [bc]                                    ; $5f7f: $0a
    ld a, [bc]                                    ; $5f80: $0a
    ld a, [bc]                                    ; $5f81: $0a
    pop hl                                        ; $5f82: $e1
    ld [c], a                                     ; $5f83: $e2
    ld e, c                                       ; $5f84: $59
    ld d, b                                       ; $5f85: $50
    db $e3                                        ; $5f86: $e3
    db $e4                                        ; $5f87: $e4
    ld l, b                                       ; $5f88: $68
    ld d, d                                       ; $5f89: $52
    push hl                                       ; $5f8a: $e5
    and $e7                                       ; $5f8b: $e6 $e7
    ld d, c                                       ; $5f8d: $51
    ldh [$e8], a                                  ; $5f8e: $e0 $e8
    jp hl                                         ; $5f90: $e9


    adc $0a                                       ; $5f91: $ce $0a
    ld a, [bc]                                    ; $5f93: $0a
    ld [bc], a                                    ; $5f94: $02
    ld [bc], a                                    ; $5f95: $02
    ld a, [bc]                                    ; $5f96: $0a
    ld a, [bc]                                    ; $5f97: $0a
    ld [bc], a                                    ; $5f98: $02
    ld [bc], a                                    ; $5f99: $02
    ld a, [bc]                                    ; $5f9a: $0a
    ld a, [bc]                                    ; $5f9b: $0a
    ld a, [bc]                                    ; $5f9c: $0a
    ld [bc], a                                    ; $5f9d: $02
    ld a, [hl+]                                   ; $5f9e: $2a
    ld a, [bc]                                    ; $5f9f: $0a
    ld a, [bc]                                    ; $5fa0: $0a

jr_07c_5fa1:
    ld a, [bc]                                    ; $5fa1: $0a
    ld [$eceb], a                                 ; $5fa2: $ea $eb $ec
    inc [hl]                                      ; $5fa5: $34
    db $ed                                        ; $5fa6: $ed
    xor $ef                                       ; $5fa7: $ee $ef
    ld [hl], $59                                  ; $5fa9: $36 $59
    ldh a, [$f1]                                  ; $5fab: $f0 $f1
    jr c, jr_07c_5fa1                             ; $5fad: $38 $f2

    di                                            ; $5faf: $f3
    db $f4                                        ; $5fb0: $f4
    ld a, [hl-]                                   ; $5fb1: $3a
    ld a, [bc]                                    ; $5fb2: $0a
    ld a, [bc]                                    ; $5fb3: $0a
    ld a, [bc]                                    ; $5fb4: $0a
    rlca                                          ; $5fb5: $07
    ld a, [bc]                                    ; $5fb6: $0a
    ld a, [bc]                                    ; $5fb7: $0a
    ld a, [bc]                                    ; $5fb8: $0a
    rlca                                          ; $5fb9: $07
    ld [bc], a                                    ; $5fba: $02
    ld a, [bc]                                    ; $5fbb: $0a
    ld a, [bc]                                    ; $5fbc: $0a
    rlca                                          ; $5fbd: $07
    ld a, [bc]                                    ; $5fbe: $0a
    ld a, [bc]                                    ; $5fbf: $0a
    ld a, [bc]                                    ; $5fc0: $0a
    rlca                                          ; $5fc1: $07
    pop de                                        ; $5fc2: $d1
    jp nc, $f551                                  ; $5fc3: $d2 $51 $f5

    pop de                                        ; $5fc6: $d1
    jp nc, Jump_07c_5250                          ; $5fc7: $d2 $50 $52

    pop de                                        ; $5fca: $d1
    jp nc, Jump_07c_5050                          ; $5fcb: $d2 $50 $50

    pop de                                        ; $5fce: $d1
    jp nc, $ce50                                  ; $5fcf: $d2 $50 $ce

    add b                                         ; $5fd2: $80
    add b                                         ; $5fd3: $80
    ld [bc], a                                    ; $5fd4: $02
    ld a, [bc]                                    ; $5fd5: $0a
    add b                                         ; $5fd6: $80
    add b                                         ; $5fd7: $80
    ld [bc], a                                    ; $5fd8: $02
    ld [bc], a                                    ; $5fd9: $02
    add b                                         ; $5fda: $80
    add b                                         ; $5fdb: $80
    ld [bc], a                                    ; $5fdc: $02
    ld [bc], a                                    ; $5fdd: $02
    add b                                         ; $5fde: $80
    add b                                         ; $5fdf: $80
    ld [bc], a                                    ; $5fe0: $02
    ld a, [bc]                                    ; $5fe1: $0a
    or $f7                                        ; $5fe2: $f6 $f7
    ld hl, sp-$07                                 ; $5fe4: $f8 $f9
    ld a, [$fcfb]                                 ; $5fe6: $fa $fb $fc
    ld d, d                                       ; $5fe9: $52
    ld e, c                                       ; $5fea: $59
    db $fd                                        ; $5feb: $fd
    cp $ff                                        ; $5fec: $fe $ff
    ld l, b                                       ; $5fee: $68
    ld d, d                                       ; $5fef: $52
    nop                                           ; $5ff0: $00
    ld bc, $0a0a                                  ; $5ff1: $01 $0a $0a
    ld a, [bc]                                    ; $5ff4: $0a
    ld a, [bc]                                    ; $5ff5: $0a
    ld a, [bc]                                    ; $5ff6: $0a
    ld a, [bc]                                    ; $5ff7: $0a
    ld a, [bc]                                    ; $5ff8: $0a
    ld [bc], a                                    ; $5ff9: $02
    ld [bc], a                                    ; $5ffa: $02
    ld a, [bc]                                    ; $5ffb: $0a
    ld a, [bc]                                    ; $5ffc: $0a
    ld a, [bc]                                    ; $5ffd: $0a
    ld [bc], a                                    ; $5ffe: $02
    ld [bc], a                                    ; $5fff: $02
    ld a, [bc]                                    ; $6000: $0a
    ld a, [bc]                                    ; $6001: $0a
    ld [bc], a                                    ; $6002: $02
    inc bc                                        ; $6003: $03
    ld e, c                                       ; $6004: $59
    ld d, b                                       ; $6005: $50
    jp hl                                         ; $6006: $e9


    adc $04                                       ; $6007: $ce $04
    dec b                                         ; $6009: $05
    ld b, $07                                     ; $600a: $06 $07
    ld [$0a09], sp                                ; $600c: $08 $09 $0a
    dec bc                                        ; $600f: $0b
    inc c                                         ; $6010: $0c
    dec c                                         ; $6011: $0d
    ld a, [bc]                                    ; $6012: $0a
    ld a, [bc]                                    ; $6013: $0a
    ld [bc], a                                    ; $6014: $02
    ld [bc], a                                    ; $6015: $02
    ld a, [bc]                                    ; $6016: $0a
    ld a, [bc]                                    ; $6017: $0a
    ld a, [bc]                                    ; $6018: $0a
    ld a, [bc]                                    ; $6019: $0a
    ld a, [bc]                                    ; $601a: $0a
    ld a, [bc]                                    ; $601b: $0a
    ld a, [bc]                                    ; $601c: $0a
    ld a, [bc]                                    ; $601d: $0a
    ld a, [bc]                                    ; $601e: $0a
    ld a, [bc]                                    ; $601f: $0a
    ld a, [bc]                                    ; $6020: $0a
    ld a, [bc]                                    ; $6021: $0a
    ld c, $0f                                     ; $6022: $0e $0f
    db $10                                        ; $6024: $10
    ld c, [hl]                                    ; $6025: $4e
    ld de, $1312                                  ; $6026: $11 $12 $13
    ld e, $14                                     ; $6029: $1e $14
    dec d                                         ; $602b: $15
    ld d, $22                                     ; $602c: $16 $22
    rla                                           ; $602e: $17
    jr jr_07c_604a                                ; $602f: $18 $19

    ld a, [bc]                                    ; $6031: $0a
    ld a, [bc]                                    ; $6032: $0a
    ld a, [bc]                                    ; $6033: $0a
    ld a, [bc]                                    ; $6034: $0a
    rlca                                          ; $6035: $07
    ld a, [bc]                                    ; $6036: $0a
    ld a, [bc]                                    ; $6037: $0a
    ld a, [bc]                                    ; $6038: $0a
    rlca                                          ; $6039: $07
    ld a, [bc]                                    ; $603a: $0a
    ld a, [bc]                                    ; $603b: $0a
    ld a, [bc]                                    ; $603c: $0a
    rlca                                          ; $603d: $07
    ld a, [bc]                                    ; $603e: $0a
    ld a, [bc]                                    ; $603f: $0a
    ld a, [bc]                                    ; $6040: $0a
    rlca                                          ; $6041: $07
    pop de                                        ; $6042: $d1
    jp nc, Jump_000_1b1a                          ; $6043: $d2 $1a $1b

    pop de                                        ; $6046: $d1
    jp nc, Jump_000_1d1c                          ; $6047: $d2 $1c $1d

jr_07c_604a:
    pop de                                        ; $604a: $d1
    jp nc, $1f1e                                  ; $604b: $d2 $1e $1f

    pop de                                        ; $604e: $d1
    jp nc, Jump_000_1d1c                          ; $604f: $d2 $1c $1d

    add b                                         ; $6052: $80
    add b                                         ; $6053: $80
    ld a, [bc]                                    ; $6054: $0a
    ld a, [bc]                                    ; $6055: $0a
    add b                                         ; $6056: $80
    add b                                         ; $6057: $80
    ld a, [bc]                                    ; $6058: $0a
    ld a, [bc]                                    ; $6059: $0a
    add b                                         ; $605a: $80
    add b                                         ; $605b: $80
    ld a, [bc]                                    ; $605c: $0a
    ld a, [bc]                                    ; $605d: $0a
    add b                                         ; $605e: $80
    add b                                         ; $605f: $80
    ld a, [bc]                                    ; $6060: $0a
    ld a, [bc]                                    ; $6061: $0a
    jr nz, jr_07c_6085                            ; $6062: $20 $21

    ld [hl+], a                                   ; $6064: $22
    inc hl                                        ; $6065: $23
    inc h                                         ; $6066: $24
    dec h                                         ; $6067: $25
    ld h, $27                                     ; $6068: $26 $27
    jr z, jr_07c_6095                             ; $606a: $28 $29

    ld a, [hl+]                                   ; $606c: $2a
    dec hl                                        ; $606d: $2b
    inc h                                         ; $606e: $24
    ld c, b                                       ; $606f: $48
    ld c, c                                       ; $6070: $49
    ld c, d                                       ; $6071: $4a
    ld a, [bc]                                    ; $6072: $0a
    ld a, [bc]                                    ; $6073: $0a
    ld a, [bc]                                    ; $6074: $0a
    ld a, [bc]                                    ; $6075: $0a
    ld a, [bc]                                    ; $6076: $0a
    ld a, [bc]                                    ; $6077: $0a
    ld a, [bc]                                    ; $6078: $0a
    ld a, [bc]                                    ; $6079: $0a
    ld a, [bc]                                    ; $607a: $0a
    ld a, [bc]                                    ; $607b: $0a
    ld a, [bc]                                    ; $607c: $0a
    ld a, [bc]                                    ; $607d: $0a
    ld a, [bc]                                    ; $607e: $0a
    rlca                                          ; $607f: $07
    rlca                                          ; $6080: $07
    rlca                                          ; $6081: $07
    ld hl, $2322                                  ; $6082: $21 $22 $23

jr_07c_6085:
    ld hl, $2625                                  ; $6085: $21 $25 $26
    daa                                           ; $6088: $27
    dec h                                         ; $6089: $25
    add hl, hl                                    ; $608a: $29
    ld a, [hl+]                                   ; $608b: $2a
    dec hl                                        ; $608c: $2b
    add hl, hl                                    ; $608d: $29
    add hl, sp                                    ; $608e: $39
    ld a, [hl-]                                   ; $608f: $3a
    ld b, a                                       ; $6090: $47
    ld c, b                                       ; $6091: $48
    ld a, [bc]                                    ; $6092: $0a
    ld a, [bc]                                    ; $6093: $0a
    ld a, [bc]                                    ; $6094: $0a

jr_07c_6095:
    ld a, [bc]                                    ; $6095: $0a
    ld a, [bc]                                    ; $6096: $0a
    ld a, [bc]                                    ; $6097: $0a
    ld a, [bc]                                    ; $6098: $0a
    ld a, [bc]                                    ; $6099: $0a
    ld a, [bc]                                    ; $609a: $0a
    ld a, [bc]                                    ; $609b: $0a
    ld a, [bc]                                    ; $609c: $0a
    ld a, [bc]                                    ; $609d: $0a
    rlca                                          ; $609e: $07
    rlca                                          ; $609f: $07
    rlca                                          ; $60a0: $07
    rlca                                          ; $60a1: $07
    ld [hl+], a                                   ; $60a2: $22
    inc hl                                        ; $60a3: $23
    inc l                                         ; $60a4: $2c
    inc [hl]                                      ; $60a5: $34
    ld h, $27                                     ; $60a6: $26 $27
    dec l                                         ; $60a8: $2d
    ld [hl], $2a                                  ; $60a9: $36 $2a
    dec hl                                        ; $60ab: $2b
    ld l, $38                                     ; $60ac: $2e $38
    ld c, c                                       ; $60ae: $49
    ld c, d                                       ; $60af: $4a
    add hl, sp                                    ; $60b0: $39
    ld a, [hl-]                                   ; $60b1: $3a
    ld a, [bc]                                    ; $60b2: $0a
    ld a, [bc]                                    ; $60b3: $0a
    ld a, [bc]                                    ; $60b4: $0a
    rlca                                          ; $60b5: $07
    ld a, [bc]                                    ; $60b6: $0a
    ld a, [bc]                                    ; $60b7: $0a
    ld a, [bc]                                    ; $60b8: $0a
    rlca                                          ; $60b9: $07
    ld a, [bc]                                    ; $60ba: $0a
    ld a, [bc]                                    ; $60bb: $0a
    ld a, [bc]                                    ; $60bc: $0a
    rlca                                          ; $60bd: $07
    rlca                                          ; $60be: $07
    rlca                                          ; $60bf: $07
    rlca                                          ; $60c0: $07
    rlca                                          ; $60c1: $07
    pop de                                        ; $60c2: $d1
    jp nc, $1f1e                                  ; $60c3: $d2 $1e $1f

    pop de                                        ; $60c6: $d1
    jp nc, $1e1d                                  ; $60c7: $d2 $1d $1e

    pop de                                        ; $60ca: $d1
    jp nc, Jump_000_2221                          ; $60cb: $d2 $21 $22

    pop de                                        ; $60ce: $d1
    jp nc, $0a09                                  ; $60cf: $d2 $09 $0a

    add b                                         ; $60d2: $80
    add b                                         ; $60d3: $80
    ld a, [bc]                                    ; $60d4: $0a
    ld a, [bc]                                    ; $60d5: $0a
    add b                                         ; $60d6: $80
    add b                                         ; $60d7: $80
    rlca                                          ; $60d8: $07
    rlca                                          ; $60d9: $07
    add b                                         ; $60da: $80
    add b                                         ; $60db: $80
    rlca                                          ; $60dc: $07
    ld b, $80                                     ; $60dd: $06 $80
    add b                                         ; $60df: $80
    rlca                                          ; $60e0: $07
    ld b, $28                                     ; $60e1: $06 $28
    ld d, h                                       ; $60e3: $54
    ld d, l                                       ; $60e4: $55
    ld d, [hl]                                    ; $60e5: $56
    rra                                           ; $60e6: $1f
    sub c                                         ; $60e7: $91
    sub d                                         ; $60e8: $92
    ld [de], a                                    ; $60e9: $12
    inc hl                                        ; $60ea: $23
    sub e                                         ; $60eb: $93
    sub h                                         ; $60ec: $94
    inc d                                         ; $60ed: $14
    dec d                                         ; $60ee: $15
    ld d, $17                                     ; $60ef: $16 $17
    jr @+$0c                                      ; $60f1: $18 $0a

    rlca                                          ; $60f3: $07
    ld b, $06                                     ; $60f4: $06 $06
    rlca                                          ; $60f6: $07
    rrca                                          ; $60f7: $0f
    ld c, $06                                     ; $60f8: $0e $06
    ld b, $0e                                     ; $60fa: $06 $0e
    ld c, $06                                     ; $60fc: $0e $06
    ld b, $06                                     ; $60fe: $06 $06
    ld b, $06                                     ; $6100: $06 $06
    ld c, l                                       ; $6102: $4d
    ld c, [hl]                                    ; $6103: $4e
    ld d, e                                       ; $6104: $53
    ld d, h                                       ; $6105: $54
    dec e                                         ; $6106: $1d
    ld e, $1f                                     ; $6107: $1e $1f
    sub c                                         ; $6109: $91
    ld hl, $2322                                  ; $610a: $21 $22 $23
    sub e                                         ; $610d: $93
    add hl, bc                                    ; $610e: $09
    cpl                                           ; $610f: $2f
    jr nc, jr_07c_6143                            ; $6110: $30 $31

    ld b, $06                                     ; $6112: $06 $06
    ld b, $06                                     ; $6114: $06 $06
    ld b, $06                                     ; $6116: $06 $06
    ld b, $0e                                     ; $6118: $06 $0e
    ld b, $06                                     ; $611a: $06 $06
    ld b, $0e                                     ; $611c: $06 $0e
    ld b, $09                                     ; $611e: $06 $09
    add hl, bc                                    ; $6120: $09
    add hl, bc                                    ; $6121: $09
    ld d, l                                       ; $6122: $55
    ld d, [hl]                                    ; $6123: $56
    ld c, l                                       ; $6124: $4d
    ld c, [hl]                                    ; $6125: $4e
    sub d                                         ; $6126: $92
    ld [de], a                                    ; $6127: $12
    dec e                                         ; $6128: $1d
    ld e, $94                                     ; $6129: $1e $94
    inc d                                         ; $612b: $14
    ld hl, $3222                                  ; $612c: $21 $22 $32
    inc sp                                        ; $612f: $33
    add hl, bc                                    ; $6130: $09
    ld a, [bc]                                    ; $6131: $0a
    ld b, $06                                     ; $6132: $06 $06
    ld b, $06                                     ; $6134: $06 $06
    ld c, $06                                     ; $6136: $0e $06
    ld b, $06                                     ; $6138: $06 $06
    ld c, $06                                     ; $613a: $0e $06
    ld b, $06                                     ; $613c: $06 $06
    add hl, bc                                    ; $613e: $09
    add hl, bc                                    ; $613f: $09
    ld b, $06                                     ; $6140: $06 $06
    dec sp                                        ; $6142: $3b

jr_07c_6143:
    inc a                                         ; $6143: $3c
    dec a                                         ; $6144: $3d
    inc [hl]                                      ; $6145: $34
    ccf                                           ; $6146: $3f
    ld b, b                                       ; $6147: $40
    ld b, c                                       ; $6148: $41
    dec [hl]                                      ; $6149: $35
    ld b, e                                       ; $614a: $43
    ld b, h                                       ; $614b: $44
    ld b, l                                       ; $614c: $45
    ld b, [hl]                                    ; $614d: $46
    ld b, a                                       ; $614e: $47
    ld c, b                                       ; $614f: $48
    ld c, c                                       ; $6150: $49
    ld c, d                                       ; $6151: $4a
    ld b, $06                                     ; $6152: $06 $06
    ld b, $09                                     ; $6154: $06 $09
    ld b, $06                                     ; $6156: $06 $06
    ld b, $09                                     ; $6158: $06 $09
    ld b, $06                                     ; $615a: $06 $06
    ld b, $07                                     ; $615c: $06 $07
    ld b, $06                                     ; $615e: $06 $06
    ld b, $06                                     ; $6160: $06 $06
    ld [hl], $37                                  ; $6162: $36 $37
    jr c, jr_07c_619f                             ; $6164: $38 $39

    ld a, [hl-]                                   ; $6166: $3a
    dec sp                                        ; $6167: $3b
    inc a                                         ; $6168: $3c
    dec a                                         ; $6169: $3d
    scf                                           ; $616a: $37
    jr c, jr_07c_61b0                             ; $616b: $38 $43

    ld b, h                                       ; $616d: $44
    add hl, sp                                    ; $616e: $39
    ld a, [hl-]                                   ; $616f: $3a
    ld b, a                                       ; $6170: $47
    ld c, b                                       ; $6171: $48
    add hl, bc                                    ; $6172: $09
    add hl, bc                                    ; $6173: $09
    add hl, bc                                    ; $6174: $09
    add hl, bc                                    ; $6175: $09
    add hl, bc                                    ; $6176: $09
    add hl, bc                                    ; $6177: $09
    add hl, bc                                    ; $6178: $09
    add hl, bc                                    ; $6179: $09
    rlca                                          ; $617a: $07
    rlca                                          ; $617b: $07
    rlca                                          ; $617c: $07
    rlca                                          ; $617d: $07
    ld b, $06                                     ; $617e: $06 $06
    ld b, $06                                     ; $6180: $06 $06
    dec a                                         ; $6182: $3d
    ld a, $33                                     ; $6183: $3e $33
    inc [hl]                                      ; $6185: $34
    ld b, c                                       ; $6186: $41
    ld b, d                                       ; $6187: $42
    dec [hl]                                      ; $6188: $35
    ld [hl], $45                                  ; $6189: $36 $45
    ld b, [hl]                                    ; $618b: $46
    scf                                           ; $618c: $37
    jr c, jr_07c_61d8                             ; $618d: $38 $49

    ld c, d                                       ; $618f: $4a
    add hl, sp                                    ; $6190: $39
    ld a, [hl-]                                   ; $6191: $3a
    rlca                                          ; $6192: $07
    ld b, $06                                     ; $6193: $06 $06
    ld b, $07                                     ; $6195: $06 $07
    ld b, $06                                     ; $6197: $06 $06
    ld b, $07                                     ; $6199: $06 $07
    ld b, $06                                     ; $619b: $06 $06
    ld b, $06                                     ; $619d: $06 $06

jr_07c_619f:
    ld b, $06                                     ; $619f: $06 $06
    ld b, $a2                                     ; $61a1: $06 $a2
    and [hl]                                      ; $61a3: $a6
    and a                                         ; $61a4: $a7
    xor b                                         ; $61a5: $a8
    xor d                                         ; $61a6: $aa
    xor [hl]                                      ; $61a7: $ae
    xor a                                         ; $61a8: $af
    or b                                          ; $61a9: $b0
    xor e                                         ; $61aa: $ab
    or d                                          ; $61ab: $b2
    or e                                          ; $61ac: $b3
    or h                                          ; $61ad: $b4
    xor h                                         ; $61ae: $ac
    or [hl]                                       ; $61af: $b6

jr_07c_61b0:
    or [hl]                                       ; $61b0: $b6
    or a                                          ; $61b1: $b7
    add hl, bc                                    ; $61b2: $09
    add hl, bc                                    ; $61b3: $09
    add hl, bc                                    ; $61b4: $09
    add hl, bc                                    ; $61b5: $09
    add hl, bc                                    ; $61b6: $09
    add hl, bc                                    ; $61b7: $09
    add hl, bc                                    ; $61b8: $09
    add hl, bc                                    ; $61b9: $09
    add hl, bc                                    ; $61ba: $09
    add hl, bc                                    ; $61bb: $09
    add hl, bc                                    ; $61bc: $09
    add hl, bc                                    ; $61bd: $09
    add hl, bc                                    ; $61be: $09
    add hl, bc                                    ; $61bf: $09
    add hl, bc                                    ; $61c0: $09
    add hl, bc                                    ; $61c1: $09
    ld d, e                                       ; $61c2: $53
    ld d, h                                       ; $61c3: $54
    ld d, l                                       ; $61c4: $55
    ld d, [hl]                                    ; $61c5: $56
    rra                                           ; $61c6: $1f
    sub c                                         ; $61c7: $91
    sub d                                         ; $61c8: $92
    and c                                         ; $61c9: $a1
    inc hl                                        ; $61ca: $23
    sub e                                         ; $61cb: $93
    sub h                                         ; $61cc: $94
    and d                                         ; $61cd: $a2
    dec d                                         ; $61ce: $15
    ld d, $17                                     ; $61cf: $16 $17
    xor d                                         ; $61d1: $aa
    ld b, $06                                     ; $61d2: $06 $06
    ld b, $06                                     ; $61d4: $06 $06
    ld b, $0e                                     ; $61d6: $06 $0e

jr_07c_61d8:
    ld c, $09                                     ; $61d8: $0e $09
    ld b, $0e                                     ; $61da: $06 $0e
    ld c, $09                                     ; $61dc: $0e $09
    ld b, $06                                     ; $61de: $06 $06
    ld b, $09                                     ; $61e0: $06 $09
    ld c, l                                       ; $61e2: $4d
    ld c, [hl]                                    ; $61e3: $4e
    ld d, e                                       ; $61e4: $53
    ld d, h                                       ; $61e5: $54
    and e                                         ; $61e6: $a3
    and h                                         ; $61e7: $a4
    and l                                         ; $61e8: $a5
    sub c                                         ; $61e9: $91
    and [hl]                                      ; $61ea: $a6
    and a                                         ; $61eb: $a7
    xor b                                         ; $61ec: $a8
    xor c                                         ; $61ed: $a9
    xor [hl]                                      ; $61ee: $ae
    xor a                                         ; $61ef: $af
    or b                                          ; $61f0: $b0
    or c                                          ; $61f1: $b1
    ld b, $06                                     ; $61f2: $06 $06
    ld b, $06                                     ; $61f4: $06 $06
    add hl, bc                                    ; $61f6: $09
    add hl, bc                                    ; $61f7: $09
    add hl, bc                                    ; $61f8: $09
    ld c, $09                                     ; $61f9: $0e $09
    add hl, bc                                    ; $61fb: $09
    add hl, bc                                    ; $61fc: $09
    add hl, bc                                    ; $61fd: $09
    add hl, bc                                    ; $61fe: $09
    add hl, bc                                    ; $61ff: $09
    add hl, bc                                    ; $6200: $09
    add hl, bc                                    ; $6201: $09
    ld d, l                                       ; $6202: $55
    ld d, [hl]                                    ; $6203: $56
    ld c, l                                       ; $6204: $4d
    ld c, [hl]                                    ; $6205: $4e
    sub d                                         ; $6206: $92
    ld [de], a                                    ; $6207: $12
    dec e                                         ; $6208: $1d
    ld e, $94                                     ; $6209: $1e $94
    inc d                                         ; $620b: $14
    ld hl, $1722                                  ; $620c: $21 $22 $17
    jr jr_07c_621a                                ; $620f: $18 $09

    ld a, [bc]                                    ; $6211: $0a
    ld b, $06                                     ; $6212: $06 $06
    ld b, $06                                     ; $6214: $06 $06
    ld c, $06                                     ; $6216: $0e $06
    ld b, $06                                     ; $6218: $06 $06

jr_07c_621a:
    ld c, $06                                     ; $621a: $0e $06
    ld b, $06                                     ; $621c: $06 $06
    rlca                                          ; $621e: $07
    ld b, $06                                     ; $621f: $06 $06
    ld b, $ad                                     ; $6221: $06 $ad
    cp c                                          ; $6223: $b9
    cp d                                          ; $6224: $ba
    cp e                                          ; $6225: $bb
    inc [hl]                                      ; $6226: $34
    ld [hl], $37                                  ; $6227: $36 $37
    jr c, jr_07c_6260                             ; $6229: $38 $35

    ld a, [hl-]                                   ; $622b: $3a
    dec sp                                        ; $622c: $3b
    inc a                                         ; $622d: $3c
    dec sp                                        ; $622e: $3b
    inc a                                         ; $622f: $3c
    dec a                                         ; $6230: $3d
    ld a, $09                                     ; $6231: $3e $09
    add hl, bc                                    ; $6233: $09
    add hl, bc                                    ; $6234: $09
    add hl, bc                                    ; $6235: $09
    add hl, bc                                    ; $6236: $09
    add hl, bc                                    ; $6237: $09
    add hl, bc                                    ; $6238: $09
    add hl, bc                                    ; $6239: $09
    add hl, bc                                    ; $623a: $09
    add hl, bc                                    ; $623b: $09
    add hl, bc                                    ; $623c: $09
    add hl, bc                                    ; $623d: $09
    rlca                                          ; $623e: $07
    rlca                                          ; $623f: $07
    rlca                                          ; $6240: $07
    rlca                                          ; $6241: $07
    dec sp                                        ; $6242: $3b
    inc a                                         ; $6243: $3c
    dec a                                         ; $6244: $3d
    xor e                                         ; $6245: $ab
    ccf                                           ; $6246: $3f
    ld b, b                                       ; $6247: $40
    ld b, c                                       ; $6248: $41
    xor h                                         ; $6249: $ac
    ld b, e                                       ; $624a: $43
    ld b, h                                       ; $624b: $44
    ld b, l                                       ; $624c: $45
    xor l                                         ; $624d: $ad
    ld b, a                                       ; $624e: $47
    ld c, b                                       ; $624f: $48
    ld c, c                                       ; $6250: $49
    inc [hl]                                      ; $6251: $34
    ld b, $06                                     ; $6252: $06 $06
    ld b, $09                                     ; $6254: $06 $09
    ld b, $06                                     ; $6256: $06 $06
    ld b, $09                                     ; $6258: $06 $09
    ld b, $06                                     ; $625a: $06 $06
    ld b, $09                                     ; $625c: $06 $09
    ld b, $06                                     ; $625e: $06 $06

jr_07c_6260:
    ld b, $09                                     ; $6260: $06 $09
    or d                                          ; $6262: $b2
    or e                                          ; $6263: $b3
    or h                                          ; $6264: $b4
    or l                                          ; $6265: $b5
    or [hl]                                       ; $6266: $b6
    or [hl]                                       ; $6267: $b6
    or a                                          ; $6268: $b7
    cp b                                          ; $6269: $b8
    cp c                                          ; $626a: $b9
    cp d                                          ; $626b: $ba
    cp e                                          ; $626c: $bb
    cp h                                          ; $626d: $bc
    ld [hl], $37                                  ; $626e: $36 $37
    jr c, jr_07c_62ab                             ; $6270: $38 $39

    add hl, bc                                    ; $6272: $09
    add hl, bc                                    ; $6273: $09
    add hl, bc                                    ; $6274: $09
    add hl, bc                                    ; $6275: $09
    add hl, bc                                    ; $6276: $09
    add hl, bc                                    ; $6277: $09
    add hl, bc                                    ; $6278: $09
    add hl, bc                                    ; $6279: $09
    add hl, bc                                    ; $627a: $09
    add hl, bc                                    ; $627b: $09
    add hl, bc                                    ; $627c: $09
    add hl, bc                                    ; $627d: $09
    add hl, bc                                    ; $627e: $09
    add hl, bc                                    ; $627f: $09
    add hl, bc                                    ; $6280: $09
    add hl, bc                                    ; $6281: $09
    dec a                                         ; $6282: $3d
    ld a, $33                                     ; $6283: $3e $33
    inc [hl]                                      ; $6285: $34
    ld b, c                                       ; $6286: $41
    ld b, d                                       ; $6287: $42
    dec [hl]                                      ; $6288: $35
    ld [hl], $45                                  ; $6289: $36 $45
    ld b, [hl]                                    ; $628b: $46
    scf                                           ; $628c: $37
    jr c, jr_07c_62d8                             ; $628d: $38 $49

    ld c, d                                       ; $628f: $4a
    add hl, sp                                    ; $6290: $39
    ld a, [hl-]                                   ; $6291: $3a
    rlca                                          ; $6292: $07
    ld b, $06                                     ; $6293: $06 $06
    ld b, $07                                     ; $6295: $06 $07
    ld b, $06                                     ; $6297: $06 $06
    ld b, $07                                     ; $6299: $06 $07
    ld b, $06                                     ; $629b: $06 $06
    ld b, $07                                     ; $629d: $06 $07
    ld b, $06                                     ; $629f: $06 $06
    ld b, $3f                                     ; $62a1: $06 $3f
    ld b, b                                       ; $62a3: $40
    ld b, c                                       ; $62a4: $41
    ld b, d                                       ; $62a5: $42
    ld b, e                                       ; $62a6: $43
    ld b, h                                       ; $62a7: $44
    ld b, l                                       ; $62a8: $45
    ld b, [hl]                                    ; $62a9: $46
    and c                                         ; $62aa: $a1

jr_07c_62ab:
    and e                                         ; $62ab: $a3
    and h                                         ; $62ac: $a4
    and l                                         ; $62ad: $a5
    and d                                         ; $62ae: $a2
    and [hl]                                      ; $62af: $a6
    and a                                         ; $62b0: $a7
    xor b                                         ; $62b1: $a8
    ld b, $06                                     ; $62b2: $06 $06
    ld b, $06                                     ; $62b4: $06 $06
    ld b, $06                                     ; $62b6: $06 $06
    ld b, $06                                     ; $62b8: $06 $06
    add hl, bc                                    ; $62ba: $09
    add hl, bc                                    ; $62bb: $09
    add hl, bc                                    ; $62bc: $09
    add hl, bc                                    ; $62bd: $09
    add hl, bc                                    ; $62be: $09
    add hl, bc                                    ; $62bf: $09
    add hl, bc                                    ; $62c0: $09
    add hl, bc                                    ; $62c1: $09
    ld d, e                                       ; $62c2: $53
    ld d, h                                       ; $62c3: $54
    ld d, l                                       ; $62c4: $55
    dec [hl]                                      ; $62c5: $35
    rra                                           ; $62c6: $1f
    sub c                                         ; $62c7: $91
    sub d                                         ; $62c8: $92
    ld [de], a                                    ; $62c9: $12
    inc hl                                        ; $62ca: $23
    sub e                                         ; $62cb: $93
    sub h                                         ; $62cc: $94
    inc d                                         ; $62cd: $14
    dec d                                         ; $62ce: $15
    ld d, $17                                     ; $62cf: $16 $17
    jr @+$08                                      ; $62d1: $18 $06

    ld b, $06                                     ; $62d3: $06 $06
    add hl, bc                                    ; $62d5: $09
    ld b, $0e                                     ; $62d6: $06 $0e

jr_07c_62d8:
    ld c, $07                                     ; $62d8: $0e $07
    ld b, $0e                                     ; $62da: $06 $0e
    ld c, $06                                     ; $62dc: $0e $06
    ld b, $06                                     ; $62de: $06 $06
    ld b, $06                                     ; $62e0: $06 $06
    ld a, [hl-]                                   ; $62e2: $3a
    dec sp                                        ; $62e3: $3b
    inc a                                         ; $62e4: $3c
    dec a                                         ; $62e5: $3d
    dec e                                         ; $62e6: $1d
    ld e, $1f                                     ; $62e7: $1e $1f
    sub c                                         ; $62e9: $91
    ld hl, $2322                                  ; $62ea: $21 $22 $23
    sub e                                         ; $62ed: $93
    add hl, bc                                    ; $62ee: $09
    ld a, [bc]                                    ; $62ef: $0a
    dec d                                         ; $62f0: $15
    ld d, $09                                     ; $62f1: $16 $09
    add hl, bc                                    ; $62f3: $09
    add hl, bc                                    ; $62f4: $09
    add hl, bc                                    ; $62f5: $09
    rlca                                          ; $62f6: $07
    rlca                                          ; $62f7: $07
    rlca                                          ; $62f8: $07
    rrca                                          ; $62f9: $0f
    ld b, $06                                     ; $62fa: $06 $06
    ld b, $0e                                     ; $62fc: $06 $0e
    ld b, $06                                     ; $62fe: $06 $06
    ld b, $06                                     ; $6300: $06 $06
    ld d, l                                       ; $6302: $55
    ld d, [hl]                                    ; $6303: $56
    ld c, l                                       ; $6304: $4d
    ld c, [hl]                                    ; $6305: $4e
    sub d                                         ; $6306: $92
    ld [de], a                                    ; $6307: $12
    dec e                                         ; $6308: $1d
    ld e, $94                                     ; $6309: $1e $94
    inc d                                         ; $630b: $14
    ld hl, $1722                                  ; $630c: $21 $22 $17
    jr @+$0b                                      ; $630f: $18 $09

    ld a, [bc]                                    ; $6311: $0a
    rlca                                          ; $6312: $07
    ld b, $06                                     ; $6313: $06 $06
    ld b, $0f                                     ; $6315: $06 $0f
    ld b, $06                                     ; $6317: $06 $06
    ld b, $0e                                     ; $6319: $06 $0e
    ld b, $06                                     ; $631b: $06 $06
    ld b, $06                                     ; $631d: $06 $06
    ld b, $06                                     ; $631f: $06 $06
    ld b, $aa                                     ; $6321: $06 $aa
    xor [hl]                                      ; $6323: $ae
    xor a                                         ; $6324: $af
    or b                                          ; $6325: $b0
    xor e                                         ; $6326: $ab
    or d                                          ; $6327: $b2
    or e                                          ; $6328: $b3
    or h                                          ; $6329: $b4
    xor h                                         ; $632a: $ac
    or [hl]                                       ; $632b: $b6
    or [hl]                                       ; $632c: $b6
    or a                                          ; $632d: $b7
    xor l                                         ; $632e: $ad
    cp c                                          ; $632f: $b9
    cp d                                          ; $6330: $ba
    cp e                                          ; $6331: $bb
    add hl, bc                                    ; $6332: $09
    add hl, bc                                    ; $6333: $09
    add hl, bc                                    ; $6334: $09
    add hl, bc                                    ; $6335: $09
    add hl, bc                                    ; $6336: $09
    add hl, bc                                    ; $6337: $09
    add hl, bc                                    ; $6338: $09
    add hl, bc                                    ; $6339: $09
    add hl, bc                                    ; $633a: $09
    add hl, bc                                    ; $633b: $09
    add hl, bc                                    ; $633c: $09
    add hl, bc                                    ; $633d: $09
    add hl, bc                                    ; $633e: $09
    add hl, bc                                    ; $633f: $09
    add hl, bc                                    ; $6340: $09
    add hl, bc                                    ; $6341: $09
    xor c                                         ; $6342: $a9
    inc [hl]                                      ; $6343: $34
    dec sp                                        ; $6344: $3b
    inc a                                         ; $6345: $3c
    or c                                          ; $6346: $b1
    ld [hl], $3f                                  ; $6347: $36 $3f
    ld b, b                                       ; $6349: $40
    or l                                          ; $634a: $b5
    jr c, jr_07c_6390                             ; $634b: $38 $43

    ld b, h                                       ; $634d: $44
    cp b                                          ; $634e: $b8
    ld a, [hl-]                                   ; $634f: $3a
    ld b, a                                       ; $6350: $47
    ld c, b                                       ; $6351: $48
    add hl, bc                                    ; $6352: $09
    ld b, $06                                     ; $6353: $06 $06
    rlca                                          ; $6355: $07
    add hl, bc                                    ; $6356: $09
    rlca                                          ; $6357: $07
    ld b, $07                                     ; $6358: $06 $07
    add hl, bc                                    ; $635a: $09
    rlca                                          ; $635b: $07
    ld b, $07                                     ; $635c: $06 $07
    add hl, bc                                    ; $635e: $09
    rlca                                          ; $635f: $07
    ld b, $07                                     ; $6360: $06 $07
    cp h                                          ; $6362: $bc
    ld c, [hl]                                    ; $6363: $4e
    ld d, e                                       ; $6364: $53
    ld d, h                                       ; $6365: $54
    add hl, sp                                    ; $6366: $39
    ld e, $1f                                     ; $6367: $1e $1f
    sub c                                         ; $6369: $91
    dec a                                         ; $636a: $3d
    ld [hl+], a                                   ; $636b: $22
    inc hl                                        ; $636c: $23
    sub e                                         ; $636d: $93
    inc sp                                        ; $636e: $33
    ld a, [bc]                                    ; $636f: $0a
    dec d                                         ; $6370: $15
    ld d, $09                                     ; $6371: $16 $09
    rlca                                          ; $6373: $07
    ld b, $07                                     ; $6374: $06 $07
    add hl, bc                                    ; $6376: $09
    rlca                                          ; $6377: $07
    ld b, $0f                                     ; $6378: $06 $0f
    add hl, bc                                    ; $637a: $09
    rlca                                          ; $637b: $07
    ld b, $0f                                     ; $637c: $06 $0f
    rlca                                          ; $637e: $07
    rlca                                          ; $637f: $07
    ld b, $07                                     ; $6380: $06 $07
    dec [hl]                                      ; $6382: $35
    inc [hl]                                      ; $6383: $34
    dec sp                                        ; $6384: $3b
    inc a                                         ; $6385: $3c
    scf                                           ; $6386: $37
    ld [hl], $3f                                  ; $6387: $36 $3f
    ld b, b                                       ; $6389: $40
    add hl, sp                                    ; $638a: $39
    jr c, jr_07c_63d0                             ; $638b: $38 $43

    ld b, h                                       ; $638d: $44
    xor c                                         ; $638e: $a9
    ld a, [hl-]                                   ; $638f: $3a

jr_07c_6390:
    ld b, a                                       ; $6390: $47
    ld c, b                                       ; $6391: $48
    ld b, $06                                     ; $6392: $06 $06
    ld b, $07                                     ; $6394: $06 $07
    ld b, $06                                     ; $6396: $06 $06
    ld b, $07                                     ; $6398: $06 $07
    ld b, $06                                     ; $639a: $06 $06
    ld b, $07                                     ; $639c: $06 $07
    add hl, bc                                    ; $639e: $09
    ld b, $06                                     ; $639f: $06 $06
    rlca                                          ; $63a1: $07
    or c                                          ; $63a2: $b1
    ld c, [hl]                                    ; $63a3: $4e
    ld d, e                                       ; $63a4: $53
    ld d, h                                       ; $63a5: $54
    or l                                          ; $63a6: $b5
    ld e, $1f                                     ; $63a7: $1e $1f
    sub c                                         ; $63a9: $91
    cp b                                          ; $63aa: $b8
    ld [hl+], a                                   ; $63ab: $22
    inc hl                                        ; $63ac: $23
    sub e                                         ; $63ad: $93
    cp h                                          ; $63ae: $bc
    ld a, [bc]                                    ; $63af: $0a
    dec d                                         ; $63b0: $15
    ld d, $09                                     ; $63b1: $16 $09
    rlca                                          ; $63b3: $07
    ld b, $07                                     ; $63b4: $06 $07
    add hl, bc                                    ; $63b6: $09
    rlca                                          ; $63b7: $07
    ld b, $0f                                     ; $63b8: $06 $0f
    add hl, bc                                    ; $63ba: $09
    rlca                                          ; $63bb: $07
    ld b, $0f                                     ; $63bc: $06 $0f
    add hl, bc                                    ; $63be: $09
    rlca                                          ; $63bf: $07
    ld b, $07                                     ; $63c0: $06 $07
    dec sp                                        ; $63c2: $3b
    inc a                                         ; $63c3: $3c
    dec a                                         ; $63c4: $3d
    ld a, $3f                                     ; $63c5: $3e $3f
    ld b, b                                       ; $63c7: $40
    ld b, c                                       ; $63c8: $41
    ccf                                           ; $63c9: $3f
    ld b, e                                       ; $63ca: $43
    ld b, h                                       ; $63cb: $44
    ld b, l                                       ; $63cc: $45
    ld b, b                                       ; $63cd: $40
    ld b, a                                       ; $63ce: $47
    ld c, b                                       ; $63cf: $48

jr_07c_63d0:
    ld c, c                                       ; $63d0: $49
    ld b, c                                       ; $63d1: $41
    ld b, $06                                     ; $63d2: $06 $06
    ld b, $0b                                     ; $63d4: $06 $0b
    ld b, $06                                     ; $63d6: $06 $06
    ld b, $0b                                     ; $63d8: $06 $0b
    ld b, $06                                     ; $63da: $06 $06
    ld b, $0b                                     ; $63dc: $06 $0b
    ld b, $06                                     ; $63de: $06 $06
    ld b, $0b                                     ; $63e0: $06 $0b
    inc sp                                        ; $63e2: $33
    ld b, d                                       ; $63e3: $42
    ld b, e                                       ; $63e4: $43
    ld b, h                                       ; $63e5: $44
    dec [hl]                                      ; $63e6: $35
    ld b, l                                       ; $63e7: $45
    ld b, [hl]                                    ; $63e8: $46
    ld b, a                                       ; $63e9: $47
    ld c, b                                       ; $63ea: $48
    ld c, c                                       ; $63eb: $49
    ld c, d                                       ; $63ec: $4a
    ld c, e                                       ; $63ed: $4b
    ld c, h                                       ; $63ee: $4c
    ld c, l                                       ; $63ef: $4d
    ld c, [hl]                                    ; $63f0: $4e
    ld c, a                                       ; $63f1: $4f
    ld b, $09                                     ; $63f2: $06 $09
    add hl, bc                                    ; $63f4: $09
    add hl, bc                                    ; $63f5: $09
    ld b, $09                                     ; $63f6: $06 $09
    add hl, bc                                    ; $63f8: $09
    add hl, bc                                    ; $63f9: $09
    dec bc                                        ; $63fa: $0b
    add hl, bc                                    ; $63fb: $09
    add hl, bc                                    ; $63fc: $09
    add hl, bc                                    ; $63fd: $09
    dec bc                                        ; $63fe: $0b
    add hl, bc                                    ; $63ff: $09
    add hl, bc                                    ; $6400: $09
    add hl, bc                                    ; $6401: $09
    ld d, b                                       ; $6402: $50
    ld d, c                                       ; $6403: $51
    inc sp                                        ; $6404: $33
    inc [hl]                                      ; $6405: $34
    ld d, d                                       ; $6406: $52
    ld d, e                                       ; $6407: $53
    dec [hl]                                      ; $6408: $35
    ld [hl], $54                                  ; $6409: $36 $54
    ld d, l                                       ; $640b: $55
    scf                                           ; $640c: $37
    jr c, jr_07c_6465                             ; $640d: $38 $56

    ld d, a                                       ; $640f: $57
    add hl, sp                                    ; $6410: $39
    ld a, [hl-]                                   ; $6411: $3a
    add hl, bc                                    ; $6412: $09
    add hl, bc                                    ; $6413: $09
    ld b, $06                                     ; $6414: $06 $06
    add hl, bc                                    ; $6416: $09
    add hl, bc                                    ; $6417: $09
    rlca                                          ; $6418: $07
    ld b, $09                                     ; $6419: $06 $09
    add hl, bc                                    ; $641b: $09
    rlca                                          ; $641c: $07
    ld b, $09                                     ; $641d: $06 $09
    add hl, bc                                    ; $641f: $09
    rlca                                          ; $6420: $07
    ld b, $d1                                     ; $6421: $06 $d1
    jp nc, Jump_07c_4e4d                          ; $6423: $d2 $4d $4e

    pop de                                        ; $6426: $d1
    jp nc, $1e1d                                  ; $6427: $d2 $1d $1e

    pop de                                        ; $642a: $d1
    jp nc, Jump_000_2221                          ; $642b: $d2 $21 $22

    pop de                                        ; $642e: $d1
    jp nc, $0a09                                  ; $642f: $d2 $09 $0a

    add b                                         ; $6432: $80
    add b                                         ; $6433: $80
    rlca                                          ; $6434: $07
    ld b, $80                                     ; $6435: $06 $80
    add b                                         ; $6437: $80
    rlca                                          ; $6438: $07
    ld b, $80                                     ; $6439: $06 $80
    add b                                         ; $643b: $80
    rlca                                          ; $643c: $07
    ld b, $80                                     ; $643d: $06 $80
    add b                                         ; $643f: $80
    rlca                                          ; $6440: $07
    ld b, $53                                     ; $6441: $06 $53
    ld d, h                                       ; $6443: $54
    ld d, l                                       ; $6444: $55
    ld e, b                                       ; $6445: $58
    rra                                           ; $6446: $1f
    sub c                                         ; $6447: $91
    sub d                                         ; $6448: $92
    ld e, c                                       ; $6449: $59
    inc hl                                        ; $644a: $23
    sub e                                         ; $644b: $93
    sub h                                         ; $644c: $94
    inc d                                         ; $644d: $14
    dec d                                         ; $644e: $15
    ld d, $17                                     ; $644f: $16 $17
    jr @+$08                                      ; $6451: $18 $06

    ld b, $06                                     ; $6453: $06 $06
    dec bc                                        ; $6455: $0b
    ld b, $0e                                     ; $6456: $06 $0e
    ld c, $0b                                     ; $6458: $0e $0b
    ld b, $0e                                     ; $645a: $06 $0e
    ld c, $07                                     ; $645c: $0e $07
    ld b, $06                                     ; $645e: $06 $06
    ld b, $06                                     ; $6460: $06 $06
    ld e, d                                       ; $6462: $5a
    ld e, e                                       ; $6463: $5b
    ld e, h                                       ; $6464: $5c

jr_07c_6465:
    ld e, l                                       ; $6465: $5d
    ld e, [hl]                                    ; $6466: $5e
    ld e, a                                       ; $6467: $5f
    ld h, b                                       ; $6468: $60
    ld h, c                                       ; $6469: $61
    ld hl, $6362                                  ; $646a: $21 $62 $63
    ld h, h                                       ; $646d: $64
    add hl, bc                                    ; $646e: $09
    ld h, l                                       ; $646f: $65
    ld h, [hl]                                    ; $6470: $66
    ld h, a                                       ; $6471: $67
    dec bc                                        ; $6472: $0b
    add hl, bc                                    ; $6473: $09
    add hl, bc                                    ; $6474: $09
    add hl, bc                                    ; $6475: $09
    dec bc                                        ; $6476: $0b
    add hl, bc                                    ; $6477: $09
    add hl, bc                                    ; $6478: $09
    add hl, bc                                    ; $6479: $09
    rlca                                          ; $647a: $07
    add hl, bc                                    ; $647b: $09
    add hl, bc                                    ; $647c: $09
    add hl, bc                                    ; $647d: $09
    rlca                                          ; $647e: $07
    add hl, bc                                    ; $647f: $09
    add hl, bc                                    ; $6480: $09
    add hl, bc                                    ; $6481: $09
    ld l, b                                       ; $6482: $68
    ld l, c                                       ; $6483: $69
    ld c, l                                       ; $6484: $4d
    ld c, [hl]                                    ; $6485: $4e
    ld l, d                                       ; $6486: $6a
    ld l, e                                       ; $6487: $6b
    dec e                                         ; $6488: $1d
    ld e, $6c                                     ; $6489: $1e $6c
    ld l, l                                       ; $648b: $6d
    ld hl, $6e22                                  ; $648c: $21 $22 $6e
    ld l, a                                       ; $648f: $6f
    add hl, bc                                    ; $6490: $09
    ld a, [bc]                                    ; $6491: $0a
    add hl, bc                                    ; $6492: $09
    add hl, bc                                    ; $6493: $09
    rlca                                          ; $6494: $07
    ld b, $09                                     ; $6495: $06 $09
    add hl, bc                                    ; $6497: $09
    rlca                                          ; $6498: $07
    ld b, $09                                     ; $6499: $06 $09
    add hl, bc                                    ; $649b: $09
    rlca                                          ; $649c: $07
    ld b, $09                                     ; $649d: $06 $09
    add hl, bc                                    ; $649f: $09
    rlca                                          ; $64a0: $07
    ld b, $d1                                     ; $64a1: $06 $d1
    jp nc, Jump_000_3433                          ; $64a3: $d2 $33 $34

    pop de                                        ; $64a6: $d1
    ld [hl], b                                    ; $64a7: $70
    ld [hl], c                                    ; $64a8: $71
    ld [hl], c                                    ; $64a9: $71
    pop de                                        ; $64aa: $d1
    pop de                                        ; $64ab: $d1
    pop de                                        ; $64ac: $d1
    pop de                                        ; $64ad: $d1
    pop de                                        ; $64ae: $d1
    pop de                                        ; $64af: $d1
    pop de                                        ; $64b0: $d1
    pop de                                        ; $64b1: $d1
    add b                                         ; $64b2: $80
    add b                                         ; $64b3: $80
    rlca                                          ; $64b4: $07
    ld b, $80                                     ; $64b5: $06 $80
    adc b                                         ; $64b7: $88
    adc b                                         ; $64b8: $88
    adc b                                         ; $64b9: $88
    add b                                         ; $64ba: $80
    add b                                         ; $64bb: $80
    add b                                         ; $64bc: $80
    add b                                         ; $64bd: $80
    add b                                         ; $64be: $80
    add b                                         ; $64bf: $80
    add b                                         ; $64c0: $80
    add b                                         ; $64c1: $80
    dec sp                                        ; $64c2: $3b
    inc a                                         ; $64c3: $3c
    dec a                                         ; $64c4: $3d
    ld a, $71                                     ; $64c5: $3e $71
    ld [hl], c                                    ; $64c7: $71
    ld [hl], c                                    ; $64c8: $71
    ld [hl], c                                    ; $64c9: $71
    pop de                                        ; $64ca: $d1
    pop de                                        ; $64cb: $d1
    pop de                                        ; $64cc: $d1
    pop de                                        ; $64cd: $d1
    pop de                                        ; $64ce: $d1
    pop de                                        ; $64cf: $d1
    pop de                                        ; $64d0: $d1
    pop de                                        ; $64d1: $d1
    ld b, $06                                     ; $64d2: $06 $06
    ld b, $06                                     ; $64d4: $06 $06
    adc b                                         ; $64d6: $88
    adc b                                         ; $64d7: $88
    adc b                                         ; $64d8: $88
    adc b                                         ; $64d9: $88
    add b                                         ; $64da: $80
    add b                                         ; $64db: $80
    add b                                         ; $64dc: $80
    add b                                         ; $64dd: $80
    add b                                         ; $64de: $80
    add b                                         ; $64df: $80
    add b                                         ; $64e0: $80
    add b                                         ; $64e1: $80
    inc sp                                        ; $64e2: $33
    inc [hl]                                      ; $64e3: $34
    dec sp                                        ; $64e4: $3b
    inc a                                         ; $64e5: $3c
    ld [hl], c                                    ; $64e6: $71
    ld [hl], c                                    ; $64e7: $71
    ld [hl], c                                    ; $64e8: $71
    ld [hl], c                                    ; $64e9: $71
    pop de                                        ; $64ea: $d1
    pop de                                        ; $64eb: $d1
    pop de                                        ; $64ec: $d1
    pop de                                        ; $64ed: $d1
    pop de                                        ; $64ee: $d1
    pop de                                        ; $64ef: $d1
    pop de                                        ; $64f0: $d1
    pop de                                        ; $64f1: $d1
    rlca                                          ; $64f2: $07
    rlca                                          ; $64f3: $07
    rlca                                          ; $64f4: $07
    rlca                                          ; $64f5: $07
    adc b                                         ; $64f6: $88
    adc b                                         ; $64f7: $88
    adc b                                         ; $64f8: $88
    adc b                                         ; $64f9: $88
    add b                                         ; $64fa: $80
    add b                                         ; $64fb: $80
    add b                                         ; $64fc: $80
    add b                                         ; $64fd: $80
    add b                                         ; $64fe: $80
    add b                                         ; $64ff: $80
    add b                                         ; $6500: $80
    add b                                         ; $6501: $80
    dec a                                         ; $6502: $3d
    ld a, $33                                     ; $6503: $3e $33
    inc [hl]                                      ; $6505: $34
    ld [hl], c                                    ; $6506: $71
    ld [hl], c                                    ; $6507: $71
    ld [hl], c                                    ; $6508: $71
    ld [hl], c                                    ; $6509: $71
    pop de                                        ; $650a: $d1
    pop de                                        ; $650b: $d1
    pop de                                        ; $650c: $d1
    pop de                                        ; $650d: $d1
    pop de                                        ; $650e: $d1
    pop de                                        ; $650f: $d1
    pop de                                        ; $6510: $d1
    pop de                                        ; $6511: $d1
    rlca                                          ; $6512: $07
    rlca                                          ; $6513: $07
    rlca                                          ; $6514: $07
    ld b, $88                                     ; $6515: $06 $88
    adc b                                         ; $6517: $88
    adc b                                         ; $6518: $88
    adc b                                         ; $6519: $88
    add b                                         ; $651a: $80
    add b                                         ; $651b: $80
    add b                                         ; $651c: $80
    add b                                         ; $651d: $80
    add b                                         ; $651e: $80
    add b                                         ; $651f: $80
    add b                                         ; $6520: $80
    add b                                         ; $6521: $80
    dec sp                                        ; $6522: $3b
    inc a                                         ; $6523: $3c
    dec a                                         ; $6524: $3d
    and c                                         ; $6525: $a1
    ccf                                           ; $6526: $3f
    ld b, b                                       ; $6527: $40
    ld b, c                                       ; $6528: $41
    and d                                         ; $6529: $a2
    ld b, e                                       ; $652a: $43
    ld b, h                                       ; $652b: $44
    ld b, l                                       ; $652c: $45
    xor d                                         ; $652d: $aa
    ld b, a                                       ; $652e: $47
    ld c, b                                       ; $652f: $48
    ld c, c                                       ; $6530: $49
    xor e                                         ; $6531: $ab
    ld b, $06                                     ; $6532: $06 $06
    ld b, $09                                     ; $6534: $06 $09
    ld b, $06                                     ; $6536: $06 $06
    ld b, $09                                     ; $6538: $06 $09
    ld b, $06                                     ; $653a: $06 $06
    ld b, $09                                     ; $653c: $06 $09
    ld b, $06                                     ; $653e: $06 $06
    ld b, $09                                     ; $6540: $06 $09
    and e                                         ; $6542: $a3
    and h                                         ; $6543: $a4
    and l                                         ; $6544: $a5
    inc a                                         ; $6545: $3c
    and [hl]                                      ; $6546: $a6
    and a                                         ; $6547: $a7
    xor b                                         ; $6548: $a8
    xor c                                         ; $6549: $a9
    xor [hl]                                      ; $654a: $ae
    xor a                                         ; $654b: $af
    or b                                          ; $654c: $b0
    or c                                          ; $654d: $b1
    or d                                          ; $654e: $b2
    or e                                          ; $654f: $b3
    or h                                          ; $6550: $b4
    or l                                          ; $6551: $b5
    add hl, bc                                    ; $6552: $09
    add hl, bc                                    ; $6553: $09
    add hl, bc                                    ; $6554: $09
    ld b, $09                                     ; $6555: $06 $09
    add hl, bc                                    ; $6557: $09
    add hl, bc                                    ; $6558: $09
    add hl, bc                                    ; $6559: $09
    add hl, bc                                    ; $655a: $09
    add hl, bc                                    ; $655b: $09
    add hl, bc                                    ; $655c: $09
    add hl, bc                                    ; $655d: $09
    add hl, bc                                    ; $655e: $09
    add hl, bc                                    ; $655f: $09
    add hl, bc                                    ; $6560: $09
    add hl, bc                                    ; $6561: $09
    dec a                                         ; $6562: $3d
    ld a, $33                                     ; $6563: $3e $33
    inc [hl]                                      ; $6565: $34
    ld b, c                                       ; $6566: $41
    ld b, d                                       ; $6567: $42
    dec [hl]                                      ; $6568: $35
    ld [hl], $45                                  ; $6569: $36 $45
    ld b, [hl]                                    ; $656b: $46
    scf                                           ; $656c: $37
    jr c, jr_07c_65b8                             ; $656d: $38 $49

    ld c, d                                       ; $656f: $4a
    add hl, sp                                    ; $6570: $39
    ld a, [hl-]                                   ; $6571: $3a
    ld b, $06                                     ; $6572: $06 $06
    ld b, $06                                     ; $6574: $06 $06
    ld b, $06                                     ; $6576: $06 $06
    ld b, $06                                     ; $6578: $06 $06
    rlca                                          ; $657a: $07
    ld b, $06                                     ; $657b: $06 $06
    ld b, $07                                     ; $657d: $06 $07
    ld b, $06                                     ; $657f: $06 $06
    ld b, $34                                     ; $6581: $06 $34
    ld [hl], $37                                  ; $6583: $36 $37
    jr c, jr_07c_65bc                             ; $6585: $38 $35

    ld a, [hl-]                                   ; $6587: $3a
    dec sp                                        ; $6588: $3b
    inc a                                         ; $6589: $3c
    ld b, e                                       ; $658a: $43
    ld b, h                                       ; $658b: $44
    ld b, l                                       ; $658c: $45
    ld b, [hl]                                    ; $658d: $46
    ld b, a                                       ; $658e: $47
    ld c, b                                       ; $658f: $48
    ld c, c                                       ; $6590: $49
    ld c, d                                       ; $6591: $4a
    add hl, bc                                    ; $6592: $09
    add hl, bc                                    ; $6593: $09
    add hl, bc                                    ; $6594: $09
    add hl, bc                                    ; $6595: $09
    add hl, bc                                    ; $6596: $09
    add hl, bc                                    ; $6597: $09
    add hl, bc                                    ; $6598: $09
    add hl, bc                                    ; $6599: $09
    rlca                                          ; $659a: $07
    rlca                                          ; $659b: $07
    rlca                                          ; $659c: $07
    rlca                                          ; $659d: $07
    ld b, $06                                     ; $659e: $06 $06
    ld b, $06                                     ; $65a0: $06 $06
    ld d, e                                       ; $65a2: $53
    ld d, h                                       ; $65a3: $54
    ld d, l                                       ; $65a4: $55
    xor h                                         ; $65a5: $ac
    rra                                           ; $65a6: $1f
    sub c                                         ; $65a7: $91
    sub d                                         ; $65a8: $92
    xor l                                         ; $65a9: $ad
    inc hl                                        ; $65aa: $23
    sub e                                         ; $65ab: $93
    sub h                                         ; $65ac: $94
    inc [hl]                                      ; $65ad: $34
    dec d                                         ; $65ae: $15
    ld d, $17                                     ; $65af: $16 $17
    dec [hl]                                      ; $65b1: $35
    ld b, $06                                     ; $65b2: $06 $06
    ld b, $09                                     ; $65b4: $06 $09
    ld b, $0e                                     ; $65b6: $06 $0e

jr_07c_65b8:
    ld c, $09                                     ; $65b8: $0e $09
    ld b, $0e                                     ; $65ba: $06 $0e

jr_07c_65bc:
    ld c, $09                                     ; $65bc: $0e $09
    ld b, $06                                     ; $65be: $06 $06
    ld b, $09                                     ; $65c0: $06 $09
    or [hl]                                       ; $65c2: $b6
    or [hl]                                       ; $65c3: $b6
    or a                                          ; $65c4: $b7
    cp b                                          ; $65c5: $b8
    cp c                                          ; $65c6: $b9
    cp d                                          ; $65c7: $ba
    cp e                                          ; $65c8: $bb
    cp h                                          ; $65c9: $bc
    ld [hl], $37                                  ; $65ca: $36 $37
    jr c, jr_07c_6607                             ; $65cc: $38 $39

    ld a, [hl-]                                   ; $65ce: $3a
    dec sp                                        ; $65cf: $3b
    inc a                                         ; $65d0: $3c
    dec a                                         ; $65d1: $3d
    add hl, bc                                    ; $65d2: $09
    add hl, bc                                    ; $65d3: $09
    add hl, bc                                    ; $65d4: $09
    add hl, bc                                    ; $65d5: $09
    add hl, bc                                    ; $65d6: $09
    add hl, bc                                    ; $65d7: $09
    add hl, bc                                    ; $65d8: $09
    add hl, bc                                    ; $65d9: $09
    add hl, bc                                    ; $65da: $09
    add hl, bc                                    ; $65db: $09
    add hl, bc                                    ; $65dc: $09
    add hl, bc                                    ; $65dd: $09
    add hl, bc                                    ; $65de: $09
    add hl, bc                                    ; $65df: $09
    add hl, bc                                    ; $65e0: $09
    add hl, bc                                    ; $65e1: $09
    ld d, e                                       ; $65e2: $53
    ld d, h                                       ; $65e3: $54
    ld d, l                                       ; $65e4: $55
    ld d, [hl]                                    ; $65e5: $56
    rra                                           ; $65e6: $1f
    sub c                                         ; $65e7: $91
    sub d                                         ; $65e8: $92
    ld [de], a                                    ; $65e9: $12
    inc hl                                        ; $65ea: $23
    sub e                                         ; $65eb: $93
    sub h                                         ; $65ec: $94
    inc d                                         ; $65ed: $14
    dec d                                         ; $65ee: $15
    ld d, $17                                     ; $65ef: $16 $17
    jr jr_07c_65f9                                ; $65f1: $18 $06

    ld b, $06                                     ; $65f3: $06 $06
    ld b, $06                                     ; $65f5: $06 $06
    ld c, $0e                                     ; $65f7: $0e $0e

jr_07c_65f9:
    ld b, $06                                     ; $65f9: $06 $06
    ld c, $0e                                     ; $65fb: $0e $0e
    ld b, $06                                     ; $65fd: $06 $06
    ld b, $06                                     ; $65ff: $06 $06
    ld b, $3b                                     ; $6601: $06 $3b
    inc a                                         ; $6603: $3c
    dec a                                         ; $6604: $3d
    ld a, $71                                     ; $6605: $3e $71

jr_07c_6607:
    ld [hl], c                                    ; $6607: $71
    ld [hl], c                                    ; $6608: $71
    ld [hl], c                                    ; $6609: $71
    pop de                                        ; $660a: $d1
    pop de                                        ; $660b: $d1
    pop de                                        ; $660c: $d1
    pop de                                        ; $660d: $d1
    pop de                                        ; $660e: $d1
    pop de                                        ; $660f: $d1
    pop de                                        ; $6610: $d1
    pop de                                        ; $6611: $d1
    ld b, $06                                     ; $6612: $06 $06
    ld b, $07                                     ; $6614: $06 $07
    adc b                                         ; $6616: $88
    adc b                                         ; $6617: $88
    adc b                                         ; $6618: $88
    adc b                                         ; $6619: $88
    add b                                         ; $661a: $80
    add b                                         ; $661b: $80
    add b                                         ; $661c: $80
    add b                                         ; $661d: $80
    add b                                         ; $661e: $80
    add b                                         ; $661f: $80
    add b                                         ; $6620: $80
    add b                                         ; $6621: $80
    dec a                                         ; $6622: $3d
    ld a, $33                                     ; $6623: $3e $33
    inc [hl]                                      ; $6625: $34
    ld [hl], c                                    ; $6626: $71
    ld [hl], c                                    ; $6627: $71
    ld [hl], c                                    ; $6628: $71
    ld [hl], c                                    ; $6629: $71
    pop de                                        ; $662a: $d1
    pop de                                        ; $662b: $d1
    pop de                                        ; $662c: $d1
    pop de                                        ; $662d: $d1
    pop de                                        ; $662e: $d1
    pop de                                        ; $662f: $d1
    pop de                                        ; $6630: $d1
    pop de                                        ; $6631: $d1
    rlca                                          ; $6632: $07
    ld b, $06                                     ; $6633: $06 $06
    ld b, $88                                     ; $6635: $06 $88
    adc b                                         ; $6637: $88
    adc b                                         ; $6638: $88
    adc b                                         ; $6639: $88
    add b                                         ; $663a: $80
    add b                                         ; $663b: $80
    add b                                         ; $663c: $80
    add b                                         ; $663d: $80
    add b                                         ; $663e: $80
    add b                                         ; $663f: $80
    add b                                         ; $6640: $80
    add b                                         ; $6641: $80
    add hl, sp                                    ; $6642: $39
    inc [hl]                                      ; $6643: $34
    dec sp                                        ; $6644: $3b
    inc a                                         ; $6645: $3c
    dec a                                         ; $6646: $3d
    ld [hl], $3f                                  ; $6647: $36 $3f
    ld b, b                                       ; $6649: $40
    scf                                           ; $664a: $37
    jr c, jr_07c_6690                             ; $664b: $38 $43

    ld b, h                                       ; $664d: $44
    add hl, sp                                    ; $664e: $39
    ld a, [hl-]                                   ; $664f: $3a
    ld b, a                                       ; $6650: $47
    ld c, b                                       ; $6651: $48
    add hl, bc                                    ; $6652: $09
    rlca                                          ; $6653: $07
    ld b, $07                                     ; $6654: $06 $07
    add hl, bc                                    ; $6656: $09
    rlca                                          ; $6657: $07
    ld b, $07                                     ; $6658: $06 $07
    rlca                                          ; $665a: $07
    rlca                                          ; $665b: $07
    ld b, $07                                     ; $665c: $06 $07
    ld b, $06                                     ; $665e: $06 $06
    ld b, $06                                     ; $6660: $06 $06
    ld [hl], b                                    ; $6662: $70
    ld [hl], c                                    ; $6663: $71
    ld [hl], d                                    ; $6664: $72

Jump_07c_6665:
    pop de                                        ; $6665: $d1
    pop de                                        ; $6666: $d1
    ld [hl], h                                    ; $6667: $74
    jp nc, Jump_07c_73d1                          ; $6668: $d2 $d1 $73

    ld [hl], a                                    ; $666b: $77
    ld [hl], h                                    ; $666c: $74
    pop de                                        ; $666d: $d1
    ld [hl], l                                    ; $666e: $75
    db $eb                                        ; $666f: $eb
    ld [hl], h                                    ; $6670: $74
    pop de                                        ; $6671: $d1
    adc b                                         ; $6672: $88
    adc b                                         ; $6673: $88
    adc b                                         ; $6674: $88
    add b                                         ; $6675: $80
    dec b                                         ; $6676: $05
    dec b                                         ; $6677: $05
    add b                                         ; $6678: $80
    add b                                         ; $6679: $80
    dec c                                         ; $667a: $0d
    dec b                                         ; $667b: $05
    adc b                                         ; $667c: $88
    add b                                         ; $667d: $80
    dec c                                         ; $667e: $0d
    dec b                                         ; $667f: $05
    adc b                                         ; $6680: $88
    add b                                         ; $6681: $80
    ld c, l                                       ; $6682: $4d

jr_07c_6683:
    ld c, [hl]                                    ; $6683: $4e
    ld d, e                                       ; $6684: $53
    ld d, h                                       ; $6685: $54
    dec e                                         ; $6686: $1d
    ld e, $1f                                     ; $6687: $1e $1f
    sub c                                         ; $6689: $91
    ld hl, $2322                                  ; $668a: $21 $22 $23
    sub e                                         ; $668d: $93
    add hl, bc                                    ; $668e: $09
    ld a, [bc]                                    ; $668f: $0a

jr_07c_6690:
    dec d                                         ; $6690: $15
    ld d, $06                                     ; $6691: $16 $06
    ld b, $06                                     ; $6693: $06 $06
    rlca                                          ; $6695: $07
    ld b, $06                                     ; $6696: $06 $06
    ld b, $0f                                     ; $6698: $06 $0f
    ld b, $06                                     ; $669a: $06 $06
    ld b, $0f                                     ; $669c: $06 $0f
    ld b, $06                                     ; $669e: $06 $06
    ld b, $06                                     ; $66a0: $06 $06
    halt                                          ; $66a2: $76
    rst $28                                       ; $66a3: $ef
    ld [hl], h                                    ; $66a4: $74
    pop de                                        ; $66a5: $d1
    ld [hl], a                                    ; $66a6: $77
    add hl, de                                    ; $66a7: $19
    ld [hl], h                                    ; $66a8: $74
    pop de                                        ; $66a9: $d1
    sub h                                         ; $66aa: $94
    inc d                                         ; $66ab: $14
    ld [hl], h                                    ; $66ac: $74
    ld a, b                                       ; $66ad: $78
    rla                                           ; $66ae: $17
    jr jr_07c_6683                                ; $66af: $18 $d2

    ld a, b                                       ; $66b1: $78
    dec c                                         ; $66b2: $0d
    dec b                                         ; $66b3: $05
    adc b                                         ; $66b4: $88
    add b                                         ; $66b5: $80
    dec c                                         ; $66b6: $0d
    dec b                                         ; $66b7: $05
    adc b                                         ; $66b8: $88
    add b                                         ; $66b9: $80
    rrca                                          ; $66ba: $0f
    rlca                                          ; $66bb: $07
    adc b                                         ; $66bc: $88
    adc b                                         ; $66bd: $88
    ld b, $07                                     ; $66be: $06 $07
    add b                                         ; $66c0: $80
    adc b                                         ; $66c1: $88
    inc sp                                        ; $66c2: $33
    inc [hl]                                      ; $66c3: $34
    dec sp                                        ; $66c4: $3b
    inc a                                         ; $66c5: $3c
    ld [hl], c                                    ; $66c6: $71
    ld [hl], c                                    ; $66c7: $71
    ld [hl], c                                    ; $66c8: $71
    ld [hl], c                                    ; $66c9: $71
    pop de                                        ; $66ca: $d1
    pop de                                        ; $66cb: $d1
    pop de                                        ; $66cc: $d1
    pop de                                        ; $66cd: $d1
    pop de                                        ; $66ce: $d1
    pop de                                        ; $66cf: $d1
    pop de                                        ; $66d0: $d1
    pop de                                        ; $66d1: $d1
    ld b, $06                                     ; $66d2: $06 $06
    ld b, $06                                     ; $66d4: $06 $06
    adc b                                         ; $66d6: $88
    adc b                                         ; $66d7: $88
    adc b                                         ; $66d8: $88
    adc b                                         ; $66d9: $88
    add b                                         ; $66da: $80
    add b                                         ; $66db: $80
    add b                                         ; $66dc: $80
    add b                                         ; $66dd: $80
    add b                                         ; $66de: $80
    add b                                         ; $66df: $80
    add b                                         ; $66e0: $80
    add b                                         ; $66e1: $80
    ld a, c                                       ; $66e2: $79
    ld [hl], c                                    ; $66e3: $71
    ld a, d                                       ; $66e4: $7a
    ld a, b                                       ; $66e5: $78
    ld a, d                                       ; $66e6: $7a
    pop de                                        ; $66e7: $d1
    pop de                                        ; $66e8: $d1
    pop de                                        ; $66e9: $d1
    pop de                                        ; $66ea: $d1
    pop de                                        ; $66eb: $d1
    pop de                                        ; $66ec: $d1
    pop de                                        ; $66ed: $d1
    pop de                                        ; $66ee: $d1
    pop de                                        ; $66ef: $d1
    pop de                                        ; $66f0: $d1
    pop de                                        ; $66f1: $d1
    adc b                                         ; $66f2: $88
    adc b                                         ; $66f3: $88
    adc b                                         ; $66f4: $88
    adc b                                         ; $66f5: $88
    adc b                                         ; $66f6: $88
    add b                                         ; $66f7: $80
    add b                                         ; $66f8: $80
    add b                                         ; $66f9: $80
    add b                                         ; $66fa: $80
    add b                                         ; $66fb: $80
    add b                                         ; $66fc: $80
    add b                                         ; $66fd: $80
    add b                                         ; $66fe: $80
    add b                                         ; $66ff: $80
    add b                                         ; $6700: $80
    add b                                         ; $6701: $80
    jr jr_07c_6704                                ; $6702: $18 $00

jr_07c_6704:
    dec b                                         ; $6704: $05
    nop                                           ; $6705: $00
    ret nz                                        ; $6706: $c0

    inc c                                         ; $6707: $0c
    pop de                                        ; $6708: $d1
    jp nc, $d4d3                                  ; $6709: $d2 $d3 $d4

    push de                                       ; $670c: $d5
    sub $d7                                       ; $670d: $d6 $d7
    ret c                                         ; $670f: $d8

    reti                                          ; $6710: $d9


    jp c, $dcdb                                   ; $6711: $da $db $dc

    db $dd                                        ; $6714: $dd
    sbc $df                                       ; $6715: $de $df
    ldh [rSB], a                                  ; $6717: $e0 $01
    ld bc, $0107                                  ; $6719: $01 $07 $01
    ld bc, $0701                                  ; $671c: $01 $01 $07
    ld bc, $0101                                  ; $671f: $01 $01 $01
    rlca                                          ; $6722: $07
    ld bc, $0101                                  ; $6723: $01 $01 $01
    rlca                                          ; $6726: $07
    ld bc, $e2e1                                  ; $6727: $01 $e1 $e2
    db $e3                                        ; $672a: $e3
    db $e4                                        ; $672b: $e4
    push hl                                       ; $672c: $e5
    and $e7                                       ; $672d: $e6 $e7
    add sp, -$17                                  ; $672f: $e8 $e9
    ld [$eceb], a                                 ; $6731: $ea $eb $ec
    db $ed                                        ; $6734: $ed
    xor $ef                                       ; $6735: $ee $ef
    ldh a, [rSB]                                  ; $6737: $f0 $01
    ld bc, $0701                                  ; $6739: $01 $01 $07
    ld bc, $0101                                  ; $673c: $01 $01 $01
    rlca                                          ; $673f: $07
    ld bc, $0101                                  ; $6740: $01 $01 $01
    rlca                                          ; $6743: $07
    ld bc, $0101                                  ; $6744: $01 $01 $01
    rlca                                          ; $6747: $07
    pop af                                        ; $6748: $f1
    ld a, [c]                                     ; $6749: $f2
    di                                            ; $674a: $f3
    db $f4                                        ; $674b: $f4
    push af                                       ; $674c: $f5
    or $f3                                        ; $674d: $f6 $f3
    rst $30                                       ; $674f: $f7
    ld hl, sp-$07                                 ; $6750: $f8 $f9
    ld a, [$fcfb]                                 ; $6752: $fa $fb $fc
    db $fd                                        ; $6755: $fd
    cp $ff                                        ; $6756: $fe $ff
    ld bc, $0101                                  ; $6758: $01 $01 $01
    rlca                                          ; $675b: $07
    ld bc, $0101                                  ; $675c: $01 $01 $01
    rlca                                          ; $675f: $07
    ld bc, $0101                                  ; $6760: $01 $01 $01
    rlca                                          ; $6763: $07
    ld bc, $0101                                  ; $6764: $01 $01 $01
    rlca                                          ; $6767: $07
    pop de                                        ; $6768: $d1
    jp nc, $d4d3                                  ; $6769: $d2 $d3 $d4

    push de                                       ; $676c: $d5
    sub $d7                                       ; $676d: $d6 $d7
    ret c                                         ; $676f: $d8

    reti                                          ; $6770: $d9


    jp c, $dcdb                                   ; $6771: $da $db $dc

    nop                                           ; $6774: $00
    ld bc, $02df                                  ; $6775: $01 $df $02
    ld bc, $0701                                  ; $6778: $01 $01 $07
    ld bc, $0101                                  ; $677b: $01 $01 $01
    rlca                                          ; $677e: $07
    ld bc, $0101                                  ; $677f: $01 $01 $01
    rlca                                          ; $6782: $07
    ld bc, $0101                                  ; $6783: $01 $01 $01
    rlca                                          ; $6786: $07
    ld bc, $0403                                  ; $6787: $01 $03 $04
    dec b                                         ; $678a: $05
    ld b, $07                                     ; $678b: $06 $07
    ld [$0a09], sp                                ; $678d: $08 $09 $0a
    dec bc                                        ; $6790: $0b
    inc c                                         ; $6791: $0c
    dec c                                         ; $6792: $0d
    ld c, $0f                                     ; $6793: $0e $0f
    db $10                                        ; $6795: $10
    ld de, $0112                                  ; $6796: $11 $12 $01
    ld bc, $0107                                  ; $6799: $01 $07 $01
    ld bc, $0701                                  ; $679c: $01 $01 $07
    ld bc, $0101                                  ; $679f: $01 $01 $01
    rlca                                          ; $67a2: $07
    ld bc, $0101                                  ; $67a3: $01 $01 $01
    rlca                                          ; $67a6: $07
    ld bc, $1413                                  ; $67a7: $01 $13 $14
    dec d                                         ; $67aa: $15
    ld d, $17                                     ; $67ab: $16 $17
    jr @+$1b                                      ; $67ad: $18 $19

    ld a, [de]                                    ; $67af: $1a
    dec de                                        ; $67b0: $1b
    inc e                                         ; $67b1: $1c
    dec e                                         ; $67b2: $1d
    ld e, $1f                                     ; $67b3: $1e $1f
    jr nz, @+$23                                  ; $67b5: $20 $21

    ld [hl+], a                                   ; $67b7: $22
    ld bc, $0101                                  ; $67b8: $01 $01 $01
    rlca                                          ; $67bb: $07
    ld bc, $0101                                  ; $67bc: $01 $01 $01
    rlca                                          ; $67bf: $07
    ld bc, $0101                                  ; $67c0: $01 $01 $01
    ld bc, $0101                                  ; $67c3: $01 $01 $01
    ld bc, $2301                                  ; $67c6: $01 $01 $23
    inc h                                         ; $67c9: $24
    di                                            ; $67ca: $f3
    dec h                                         ; $67cb: $25
    ld h, $27                                     ; $67cc: $26 $27
    di                                            ; $67ce: $f3
    jr z, @+$2b                                   ; $67cf: $28 $29

    ld a, [hl+]                                   ; $67d1: $2a
    dec hl                                        ; $67d2: $2b
    inc l                                         ; $67d3: $2c
    dec l                                         ; $67d4: $2d
    ld l, $2f                                     ; $67d5: $2e $2f
    jr nc, @+$03                                  ; $67d7: $30 $01

    ld bc, $0701                                  ; $67d9: $01 $01 $07
    ld bc, $0101                                  ; $67dc: $01 $01 $01
    ld bc, $0101                                  ; $67df: $01 $01 $01
    ld bc, $0101                                  ; $67e2: $01 $01 $01
    ld bc, $0101                                  ; $67e5: $01 $01 $01
    ld sp, $0532                                  ; $67e8: $31 $32 $05
    ld b, $33                                     ; $67eb: $06 $33
    inc [hl]                                      ; $67ed: $34
    dec [hl]                                      ; $67ee: $35
    ld [hl], $37                                  ; $67ef: $36 $37
    jr c, @+$0f                                   ; $67f1: $38 $0d

    add hl, sp                                    ; $67f3: $39
    rrca                                          ; $67f4: $0f
    db $10                                        ; $67f5: $10
    ld de, $0112                                  ; $67f6: $11 $12 $01
    ld bc, $0107                                  ; $67f9: $01 $07 $01
    ld bc, $0701                                  ; $67fc: $01 $01 $07
    ld bc, $0101                                  ; $67ff: $01 $01 $01
    rlca                                          ; $6802: $07
    ld bc, $0101                                  ; $6803: $01 $01 $01
    ld bc, $3a01                                  ; $6806: $01 $01 $3a
    dec sp                                        ; $6809: $3b
    inc a                                         ; $680a: $3c
    dec a                                         ; $680b: $3d
    ld a, $3f                                     ; $680c: $3e $3f
    ld b, b                                       ; $680e: $40
    ld b, c                                       ; $680f: $41
    ld b, d                                       ; $6810: $42
    ld b, e                                       ; $6811: $43
    ld b, h                                       ; $6812: $44
    ld b, l                                       ; $6813: $45
    ld b, [hl]                                    ; $6814: $46
    ld b, a                                       ; $6815: $47
    ld c, b                                       ; $6816: $48
    ld c, c                                       ; $6817: $49
    ld [bc], a                                    ; $6818: $02
    ld [bc], a                                    ; $6819: $02
    ld [bc], a                                    ; $681a: $02
    ld [bc], a                                    ; $681b: $02
    ld [bc], a                                    ; $681c: $02
    ld [bc], a                                    ; $681d: $02
    ld b, $06                                     ; $681e: $06 $06
    ld b, $06                                     ; $6820: $06 $06
    ld b, $02                                     ; $6822: $06 $02
    add e                                         ; $6824: $83
    add l                                         ; $6825: $85
    ld b, $06                                     ; $6826: $06 $06
    ld c, d                                       ; $6828: $4a
    ld c, e                                       ; $6829: $4b
    ld c, h                                       ; $682a: $4c
    ld c, l                                       ; $682b: $4d
    ld c, [hl]                                    ; $682c: $4e
    ld c, a                                       ; $682d: $4f
    ld a, $3f                                     ; $682e: $3e $3f
    ld d, b                                       ; $6830: $50
    ld d, c                                       ; $6831: $51
    ld b, d                                       ; $6832: $42
    ld b, e                                       ; $6833: $43
    ld d, d                                       ; $6834: $52
    ld d, e                                       ; $6835: $53
    ld d, h                                       ; $6836: $54
    ld d, l                                       ; $6837: $55
    ld [bc], a                                    ; $6838: $02
    ld [bc], a                                    ; $6839: $02
    ld [bc], a                                    ; $683a: $02
    ld [bc], a                                    ; $683b: $02
    ld b, $02                                     ; $683c: $06 $02
    ld [bc], a                                    ; $683e: $02
    ld [bc], a                                    ; $683f: $02
    ld [bc], a                                    ; $6840: $02
    ld [bc], a                                    ; $6841: $02
    ld [bc], a                                    ; $6842: $02
    ld [bc], a                                    ; $6843: $02
    ld [bc], a                                    ; $6844: $02
    ld [bc], a                                    ; $6845: $02
    add l                                         ; $6846: $85
    ld [bc], a                                    ; $6847: $02
    ld d, [hl]                                    ; $6848: $56
    ld d, a                                       ; $6849: $57
    ld e, b                                       ; $684a: $58
    ld e, c                                       ; $684b: $59
    ld b, b                                       ; $684c: $40
    ld b, c                                       ; $684d: $41
    ld c, [hl]                                    ; $684e: $4e
    ld c, a                                       ; $684f: $4f
    ld b, h                                       ; $6850: $44
    ld b, l                                       ; $6851: $45
    ld d, b                                       ; $6852: $50
    ld d, c                                       ; $6853: $51
    ld e, d                                       ; $6854: $5a
    ld e, e                                       ; $6855: $5b
    ld e, h                                       ; $6856: $5c
    ld c, b                                       ; $6857: $48
    ld [bc], a                                    ; $6858: $02
    ld [bc], a                                    ; $6859: $02
    ld [bc], a                                    ; $685a: $02
    ld [bc], a                                    ; $685b: $02
    ld [bc], a                                    ; $685c: $02
    ld [bc], a                                    ; $685d: $02
    ld b, $06                                     ; $685e: $06 $06
    ld b, $06                                     ; $6860: $06 $06
    ld [bc], a                                    ; $6862: $02
    ld [bc], a                                    ; $6863: $02
    ld [bc], a                                    ; $6864: $02
    ld [bc], a                                    ; $6865: $02
    ld [bc], a                                    ; $6866: $02

Jump_07c_6867:
    ld [bc], a                                    ; $6867: $02
    ld a, [hl-]                                   ; $6868: $3a
    dec sp                                        ; $6869: $3b
    inc a                                         ; $686a: $3c
    dec a                                         ; $686b: $3d
    ld a, $3f                                     ; $686c: $3e $3f
    ld b, b                                       ; $686e: $40
    ld b, c                                       ; $686f: $41
    ld b, d                                       ; $6870: $42
    ld b, e                                       ; $6871: $43
    ld b, h                                       ; $6872: $44
    ld b, l                                       ; $6873: $45
    ld e, e                                       ; $6874: $5b
    ld e, h                                       ; $6875: $5c
    ld e, l                                       ; $6876: $5d
    ld e, [hl]                                    ; $6877: $5e
    ld [bc], a                                    ; $6878: $02
    ld [bc], a                                    ; $6879: $02
    ld [bc], a                                    ; $687a: $02
    ld [bc], a                                    ; $687b: $02
    ld b, $02                                     ; $687c: $06 $02
    ld b, $06                                     ; $687e: $06 $06
    ld [bc], a                                    ; $6880: $02
    ld [bc], a                                    ; $6881: $02
    ld [bc], a                                    ; $6882: $02
    ld b, $02                                     ; $6883: $06 $02
    ld [bc], a                                    ; $6885: $02
    add l                                         ; $6886: $85
    add e                                         ; $6887: $83
    ld e, a                                       ; $6888: $5f
    ld h, b                                       ; $6889: $60
    ld h, c                                       ; $688a: $61
    ld h, d                                       ; $688b: $62
    di                                            ; $688c: $f3
    di                                            ; $688d: $f3
    ld h, e                                       ; $688e: $63
    ld h, h                                       ; $688f: $64
    ld h, l                                       ; $6890: $65
    ld h, [hl]                                    ; $6891: $66
    ld h, a                                       ; $6892: $67
    ld l, b                                       ; $6893: $68
    di                                            ; $6894: $f3
    ld l, c                                       ; $6895: $69
    ld l, d                                       ; $6896: $6a
    ld l, e                                       ; $6897: $6b
    add e                                         ; $6898: $83
    add e                                         ; $6899: $83
    add e                                         ; $689a: $83
    add e                                         ; $689b: $83
    add e                                         ; $689c: $83
    add e                                         ; $689d: $83
    add e                                         ; $689e: $83
    add e                                         ; $689f: $83
    add e                                         ; $68a0: $83
    add e                                         ; $68a1: $83
    add e                                         ; $68a2: $83
    add e                                         ; $68a3: $83
    add e                                         ; $68a4: $83
    add e                                         ; $68a5: $83
    add e                                         ; $68a6: $83
    add e                                         ; $68a7: $83
    ld l, h                                       ; $68a8: $6c
    ld l, l                                       ; $68a9: $6d
    ld l, [hl]                                    ; $68aa: $6e
    ld l, a                                       ; $68ab: $6f
    ld [hl], b                                    ; $68ac: $70
    ld [hl], c                                    ; $68ad: $71
    ld [hl], d                                    ; $68ae: $72
    ld [hl], e                                    ; $68af: $73
    ld [hl], h                                    ; $68b0: $74
    ld [hl], l                                    ; $68b1: $75
    halt                                          ; $68b2: $76
    ld [hl], a                                    ; $68b3: $77
    di                                            ; $68b4: $f3
    ld a, b                                       ; $68b5: $78
    ld a, c                                       ; $68b6: $79
    ld a, d                                       ; $68b7: $7a
    add e                                         ; $68b8: $83
    add e                                         ; $68b9: $83
    add l                                         ; $68ba: $85
    add e                                         ; $68bb: $83
    add e                                         ; $68bc: $83
    add e                                         ; $68bd: $83
    add l                                         ; $68be: $85
    add e                                         ; $68bf: $83
    add e                                         ; $68c0: $83
    add e                                         ; $68c1: $83
    add e                                         ; $68c2: $83
    add l                                         ; $68c3: $85
    add e                                         ; $68c4: $83
    add e                                         ; $68c5: $83
    add e                                         ; $68c6: $83
    add l                                         ; $68c7: $85
    ld a, e                                       ; $68c8: $7b
    ld a, h                                       ; $68c9: $7c
    ld a, l                                       ; $68ca: $7d
    ld a, [hl]                                    ; $68cb: $7e
    ld a, a                                       ; $68cc: $7f
    add b                                         ; $68cd: $80
    add c                                         ; $68ce: $81
    add d                                         ; $68cf: $82
    add e                                         ; $68d0: $83
    add h                                         ; $68d1: $84
    add l                                         ; $68d2: $85
    add [hl]                                      ; $68d3: $86
    add a                                         ; $68d4: $87
    adc b                                         ; $68d5: $88
    adc c                                         ; $68d6: $89
    adc d                                         ; $68d7: $8a
    add e                                         ; $68d8: $83
    add e                                         ; $68d9: $83
    add e                                         ; $68da: $83
    add e                                         ; $68db: $83
    add e                                         ; $68dc: $83
    adc e                                         ; $68dd: $8b
    adc e                                         ; $68de: $8b
    adc e                                         ; $68df: $8b
    adc e                                         ; $68e0: $8b
    adc e                                         ; $68e1: $8b
    adc e                                         ; $68e2: $8b
    adc e                                         ; $68e3: $8b
    adc e                                         ; $68e4: $8b
    adc l                                         ; $68e5: $8d
    adc e                                         ; $68e6: $8b
    adc e                                         ; $68e7: $8b
    adc e                                         ; $68e8: $8b
    adc h                                         ; $68e9: $8c
    adc l                                         ; $68ea: $8d
    adc [hl]                                      ; $68eb: $8e
    adc a                                         ; $68ec: $8f
    sub b                                         ; $68ed: $90
    sub c                                         ; $68ee: $91
    sub d                                         ; $68ef: $92
    sub e                                         ; $68f0: $93
    sub h                                         ; $68f1: $94
    sub l                                         ; $68f2: $95
    sub [hl]                                      ; $68f3: $96
    sub a                                         ; $68f4: $97
    sbc b                                         ; $68f5: $98
    sbc c                                         ; $68f6: $99
    sbc d                                         ; $68f7: $9a
    adc e                                         ; $68f8: $8b
    adc e                                         ; $68f9: $8b
    adc l                                         ; $68fa: $8d
    adc e                                         ; $68fb: $8b
    adc e                                         ; $68fc: $8b
    adc l                                         ; $68fd: $8d
    adc e                                         ; $68fe: $8b
    adc e                                         ; $68ff: $8b
    adc l                                         ; $6900: $8d
    adc e                                         ; $6901: $8b
    adc e                                         ; $6902: $8b
    adc e                                         ; $6903: $8b
    adc l                                         ; $6904: $8d
    adc e                                         ; $6905: $8b
    adc e                                         ; $6906: $8b
    adc l                                         ; $6907: $8d
    pop hl                                        ; $6908: $e1
    ld [c], a                                     ; $6909: $e2
    db $e3                                        ; $690a: $e3
    db $e4                                        ; $690b: $e4
    push hl                                       ; $690c: $e5
    and $e7                                       ; $690d: $e6 $e7
    add sp, -$17                                  ; $690f: $e8 $e9
    ld [$eceb], a                                 ; $6911: $ea $eb $ec
    sbc e                                         ; $6914: $9b
    xor $9c                                       ; $6915: $ee $9c
    sbc l                                         ; $6917: $9d
    ld bc, $0101                                  ; $6918: $01 $01 $01
    ld bc, $0101                                  ; $691b: $01 $01 $01
    ld bc, $0101                                  ; $691e: $01 $01 $01
    ld bc, $0101                                  ; $6921: $01 $01 $01
    add hl, bc                                    ; $6924: $09
    ld bc, $0909                                  ; $6925: $01 $09 $09
    pop af                                        ; $6928: $f1
    ld a, [c]                                     ; $6929: $f2
    di                                            ; $692a: $f3
    db $f4                                        ; $692b: $f4
    push af                                       ; $692c: $f5
    or $f3                                        ; $692d: $f6 $f3
    rst $30                                       ; $692f: $f7
    ld hl, sp-$07                                 ; $6930: $f8 $f9
    ld a, [$9efb]                                 ; $6932: $fa $fb $9e
    db $fd                                        ; $6935: $fd
    cp $9f                                        ; $6936: $fe $9f
    ld bc, $0707                                  ; $6938: $01 $07 $07
    ld bc, $0701                                  ; $693b: $01 $01 $07
    rlca                                          ; $693e: $07
    ld bc, $0701                                  ; $693f: $01 $01 $07
    rlca                                          ; $6942: $07
    ld bc, $0709                                  ; $6943: $01 $09 $07
    rlca                                          ; $6946: $07
    add hl, bc                                    ; $6947: $09
    pop de                                        ; $6948: $d1
    jp nc, $d4d3                                  ; $6949: $d2 $d3 $d4

    push de                                       ; $694c: $d5
    sub $d7                                       ; $694d: $d6 $d7
    ret c                                         ; $694f: $d8

    reti                                          ; $6950: $d9


    jp c, $dcdb                                   ; $6951: $da $db $dc

    db $dd                                        ; $6954: $dd
    sbc $df                                       ; $6955: $de $df
    ldh [rTAC], a                                 ; $6957: $e0 $07
    ld bc, $0101                                  ; $6959: $01 $01 $01
    rlca                                          ; $695c: $07
    ld bc, $0101                                  ; $695d: $01 $01 $01
    rlca                                          ; $6960: $07
    ld bc, $0101                                  ; $6961: $01 $01 $01
    rlca                                          ; $6964: $07
    ld bc, $0101                                  ; $6965: $01 $01 $01
    pop hl                                        ; $6968: $e1
    ld [c], a                                     ; $6969: $e2
    db $e3                                        ; $696a: $e3
    db $e4                                        ; $696b: $e4
    push hl                                       ; $696c: $e5
    and $e7                                       ; $696d: $e6 $e7
    add sp, -$17                                  ; $696f: $e8 $e9
    ld [$eceb], a                                 ; $6971: $ea $eb $ec
    db $ed                                        ; $6974: $ed
    xor $ef                                       ; $6975: $ee $ef
    ldh a, [rSB]                                  ; $6977: $f0 $01
    rlca                                          ; $6979: $07
    ld bc, $0101                                  ; $697a: $01 $01 $01
    rlca                                          ; $697d: $07
    ld bc, $0101                                  ; $697e: $01 $01 $01
    rlca                                          ; $6981: $07
    ld bc, $0101                                  ; $6982: $01 $01 $01
    rlca                                          ; $6985: $07
    ld bc, $a001                                  ; $6986: $01 $01 $a0
    inc d                                         ; $6989: $14
    and c                                         ; $698a: $a1
    and d                                         ; $698b: $a2
    and e                                         ; $698c: $a3
    and h                                         ; $698d: $a4
    and l                                         ; $698e: $a5
    and [hl]                                      ; $698f: $a6
    and a                                         ; $6990: $a7
    xor b                                         ; $6991: $a8
    xor c                                         ; $6992: $a9
    xor d                                         ; $6993: $aa
    rra                                           ; $6994: $1f
    jr nz, @+$23                                  ; $6995: $20 $21

    ld [hl+], a                                   ; $6997: $22
    add hl, bc                                    ; $6998: $09
    ld bc, $0909                                  ; $6999: $01 $09 $09
    add hl, bc                                    ; $699c: $09
    add hl, bc                                    ; $699d: $09
    add hl, bc                                    ; $699e: $09
    add hl, bc                                    ; $699f: $09
    add hl, bc                                    ; $69a0: $09
    add hl, bc                                    ; $69a1: $09
    add hl, bc                                    ; $69a2: $09
    add hl, bc                                    ; $69a3: $09
    ld bc, $0101                                  ; $69a4: $01 $01 $01
    ld bc, $24ab                                  ; $69a7: $01 $ab $24
    di                                            ; $69aa: $f3
    xor h                                         ; $69ab: $ac
    xor l                                         ; $69ac: $ad
    xor [hl]                                      ; $69ad: $ae
    xor a                                         ; $69ae: $af
    or b                                          ; $69af: $b0
    or c                                          ; $69b0: $b1
    ld a, [hl+]                                   ; $69b1: $2a
    or d                                          ; $69b2: $b2
    or e                                          ; $69b3: $b3
    dec l                                         ; $69b4: $2d
    ld l, $2f                                     ; $69b5: $2e $2f
    jr nc, jr_07c_69c2                            ; $69b7: $30 $09

    rlca                                          ; $69b9: $07
    rlca                                          ; $69ba: $07
    add hl, bc                                    ; $69bb: $09
    add hl, bc                                    ; $69bc: $09
    rrca                                          ; $69bd: $0f
    rrca                                          ; $69be: $0f
    add hl, bc                                    ; $69bf: $09
    add hl, bc                                    ; $69c0: $09
    rlca                                          ; $69c1: $07

jr_07c_69c2:
    rrca                                          ; $69c2: $0f
    add hl, bc                                    ; $69c3: $09
    ld bc, $0707                                  ; $69c4: $01 $07 $07
    ld bc, $0403                                  ; $69c7: $01 $03 $04
    dec b                                         ; $69ca: $05
    ld b, $07                                     ; $69cb: $06 $07
    ld [$0a09], sp                                ; $69cd: $08 $09 $0a
    dec bc                                        ; $69d0: $0b
    inc c                                         ; $69d1: $0c
    dec c                                         ; $69d2: $0d
    ld c, $0f                                     ; $69d3: $0e $0f
    db $10                                        ; $69d5: $10
    ld de, $0712                                  ; $69d6: $11 $12 $07
    ld bc, $0101                                  ; $69d9: $01 $01 $01
    rlca                                          ; $69dc: $07
    ld bc, $0101                                  ; $69dd: $01 $01 $01
    ld bc, $0101                                  ; $69e0: $01 $01 $01
    ld bc, $0101                                  ; $69e3: $01 $01 $01
    ld bc, $1301                                  ; $69e6: $01 $01 $13
    inc d                                         ; $69e9: $14
    dec d                                         ; $69ea: $15
    ld d, $17                                     ; $69eb: $16 $17
    jr jr_07c_6a08                                ; $69ed: $18 $19

    ld a, [de]                                    ; $69ef: $1a
    dec de                                        ; $69f0: $1b
    inc e                                         ; $69f1: $1c
    dec e                                         ; $69f2: $1d
    ld e, $1f                                     ; $69f3: $1e $1f
    jr nz, jr_07c_6a18                            ; $69f5: $20 $21

    ld [hl+], a                                   ; $69f7: $22
    ld bc, $0107                                  ; $69f8: $01 $07 $01
    ld bc, $0701                                  ; $69fb: $01 $01 $07
    ld bc, $0101                                  ; $69fe: $01 $01 $01
    rlca                                          ; $6a01: $07
    ld bc, $0101                                  ; $6a02: $01 $01 $01
    ld bc, $0101                                  ; $6a05: $01 $01 $01

jr_07c_6a08:
    ld c, d                                       ; $6a08: $4a
    ld c, e                                       ; $6a09: $4b
    ld c, h                                       ; $6a0a: $4c
    ld c, l                                       ; $6a0b: $4d
    ld c, [hl]                                    ; $6a0c: $4e
    ld c, a                                       ; $6a0d: $4f
    ld a, $3f                                     ; $6a0e: $3e $3f
    ld d, b                                       ; $6a10: $50
    ld d, c                                       ; $6a11: $51
    ld b, d                                       ; $6a12: $42
    ld b, e                                       ; $6a13: $43
    ld e, h                                       ; $6a14: $5c
    ld c, b                                       ; $6a15: $48
    ld c, c                                       ; $6a16: $49
    ld d, d                                       ; $6a17: $52

jr_07c_6a18:
    ld [bc], a                                    ; $6a18: $02
    ld [bc], a                                    ; $6a19: $02
    ld [bc], a                                    ; $6a1a: $02
    ld [bc], a                                    ; $6a1b: $02
    ld [bc], a                                    ; $6a1c: $02
    ld [bc], a                                    ; $6a1d: $02
    ld [bc], a                                    ; $6a1e: $02
    ld b, $06                                     ; $6a1f: $06 $06
    ld b, $06                                     ; $6a21: $06 $06
    ld [bc], a                                    ; $6a23: $02
    ld [bc], a                                    ; $6a24: $02
    ld [bc], a                                    ; $6a25: $02
    ld [bc], a                                    ; $6a26: $02
    ld [bc], a                                    ; $6a27: $02
    ld d, [hl]                                    ; $6a28: $56
    ld d, a                                       ; $6a29: $57
    ld e, b                                       ; $6a2a: $58
    ld e, c                                       ; $6a2b: $59
    ld b, b                                       ; $6a2c: $40
    ld b, c                                       ; $6a2d: $41
    ld c, [hl]                                    ; $6a2e: $4e
    ld c, a                                       ; $6a2f: $4f
    ld b, h                                       ; $6a30: $44
    ld b, l                                       ; $6a31: $45
    ld d, b                                       ; $6a32: $50
    ld d, c                                       ; $6a33: $51
    ld c, c                                       ; $6a34: $49
    ld b, c                                       ; $6a35: $41
    ld c, [hl]                                    ; $6a36: $4e
    ld c, a                                       ; $6a37: $4f
    ld [bc], a                                    ; $6a38: $02
    ld [bc], a                                    ; $6a39: $02
    ld [bc], a                                    ; $6a3a: $02
    ld [bc], a                                    ; $6a3b: $02
    ld b, $06                                     ; $6a3c: $06 $06
    ld [bc], a                                    ; $6a3e: $02
    ld [bc], a                                    ; $6a3f: $02
    ld [bc], a                                    ; $6a40: $02
    ld b, $02                                     ; $6a41: $06 $02
    ld [bc], a                                    ; $6a43: $02
    ld [bc], a                                    ; $6a44: $02
    ld [bc], a                                    ; $6a45: $02
    ld b, $02                                     ; $6a46: $06 $02
    ld a, [hl-]                                   ; $6a48: $3a
    dec sp                                        ; $6a49: $3b
    inc a                                         ; $6a4a: $3c
    dec a                                         ; $6a4b: $3d
    ld a, $3f                                     ; $6a4c: $3e $3f
    ld b, b                                       ; $6a4e: $40
    ld b, c                                       ; $6a4f: $41
    ld b, d                                       ; $6a50: $42
    ld b, e                                       ; $6a51: $43
    ld b, h                                       ; $6a52: $44
    ld b, l                                       ; $6a53: $45
    ld a, $3f                                     ; $6a54: $3e $3f
    ld b, b                                       ; $6a56: $40
    ld b, c                                       ; $6a57: $41
    ld [bc], a                                    ; $6a58: $02
    ld [bc], a                                    ; $6a59: $02
    ld [bc], a                                    ; $6a5a: $02
    ld [bc], a                                    ; $6a5b: $02
    ld b, $02                                     ; $6a5c: $06 $02
    ld [bc], a                                    ; $6a5e: $02
    ld b, $02                                     ; $6a5f: $06 $02
    ld b, $06                                     ; $6a61: $06 $06
    ld b, $02                                     ; $6a63: $06 $02
    ld [bc], a                                    ; $6a65: $02
    ld b, $06                                     ; $6a66: $06 $06
    ld c, d                                       ; $6a68: $4a

Jump_07c_6a69:
    ld c, e                                       ; $6a69: $4b
    ld c, h                                       ; $6a6a: $4c
    ld c, l                                       ; $6a6b: $4d
    ld c, [hl]                                    ; $6a6c: $4e
    ld c, a                                       ; $6a6d: $4f
    ld a, $3f                                     ; $6a6e: $3e $3f
    ld d, b                                       ; $6a70: $50
    ld d, c                                       ; $6a71: $51
    ld b, d                                       ; $6a72: $42
    ld b, e                                       ; $6a73: $43
    ld c, [hl]                                    ; $6a74: $4e
    ld c, a                                       ; $6a75: $4f
    ld a, $3f                                     ; $6a76: $3e $3f
    ld [bc], a                                    ; $6a78: $02
    ld [bc], a                                    ; $6a79: $02
    ld [bc], a                                    ; $6a7a: $02
    ld [bc], a                                    ; $6a7b: $02
    ld b, $06                                     ; $6a7c: $06 $06
    ld b, $02                                     ; $6a7e: $06 $02
    ld [bc], a                                    ; $6a80: $02
    ld [bc], a                                    ; $6a81: $02
    ld [bc], a                                    ; $6a82: $02
    ld [bc], a                                    ; $6a83: $02
    ld [bc], a                                    ; $6a84: $02
    ld b, $06                                     ; $6a85: $06 $06
    ld [bc], a                                    ; $6a87: $02
    or h                                          ; $6a88: $b4
    or l                                          ; $6a89: $b5
    or [hl]                                       ; $6a8a: $b6
    or a                                          ; $6a8b: $b7
    cp b                                          ; $6a8c: $b8
    cp c                                          ; $6a8d: $b9
    cp d                                          ; $6a8e: $ba
    ld d, l                                       ; $6a8f: $55
    cp e                                          ; $6a90: $bb
    cp h                                          ; $6a91: $bc
    cp l                                          ; $6a92: $bd
    cp [hl]                                       ; $6a93: $be
    cp a                                          ; $6a94: $bf
    ret nz                                        ; $6a95: $c0

    pop bc                                        ; $6a96: $c1
    jp nz, $8b8b                                  ; $6a97: $c2 $8b $8b

    adc e                                         ; $6a9a: $8b
    adc e                                         ; $6a9b: $8b
    adc e                                         ; $6a9c: $8b
    adc e                                         ; $6a9d: $8b
    adc e                                         ; $6a9e: $8b
    ld [bc], a                                    ; $6a9f: $02
    adc e                                         ; $6aa0: $8b
    adc e                                         ; $6aa1: $8b
    adc e                                         ; $6aa2: $8b
    adc e                                         ; $6aa3: $8b
    adc l                                         ; $6aa4: $8d
    adc e                                         ; $6aa5: $8b
    adc l                                         ; $6aa6: $8d
    adc e                                         ; $6aa7: $8b
    jp $c5c4                                      ; $6aa8: $c3 $c4 $c5


    add $c7                                       ; $6aab: $c6 $c7
    ld d, l                                       ; $6aad: $55
    ld e, d                                       ; $6aae: $5a
    ret z                                         ; $6aaf: $c8

    ret                                           ; $6ab0: $c9


    jp z, Jump_07c_49cb                           ; $6ab1: $ca $cb $49

    ld e, e                                       ; $6ab4: $5b
    call z, Call_07c_5b48                         ; $6ab5: $cc $48 $5b
    adc e                                         ; $6ab8: $8b
    adc e                                         ; $6ab9: $8b
    ld a, [bc]                                    ; $6aba: $0a
    ld c, $0a                                     ; $6abb: $0e $0a
    ld [bc], a                                    ; $6abd: $02
    ld [bc], a                                    ; $6abe: $02
    ld a, [bc]                                    ; $6abf: $0a
    adc e                                         ; $6ac0: $8b
    adc e                                         ; $6ac1: $8b
    adc e                                         ; $6ac2: $8b
    ld [bc], a                                    ; $6ac3: $02
    ld [bc], a                                    ; $6ac4: $02
    adc e                                         ; $6ac5: $8b
    ld [bc], a                                    ; $6ac6: $02
    ld [bc], a                                    ; $6ac7: $02
    call $cfce                                    ; $6ac8: $cd $ce $cf
    ret nc                                        ; $6acb: $d0

    pop de                                        ; $6acc: $d1
    jp nc, $d4d3                                  ; $6acd: $d2 $d3 $d4

    push de                                       ; $6ad0: $d5
    sub $d7                                       ; $6ad1: $d6 $d7
    ret c                                         ; $6ad3: $d8

    ld e, h                                       ; $6ad4: $5c
    ld c, b                                       ; $6ad5: $48
    ld c, c                                       ; $6ad6: $49
    ld d, d                                       ; $6ad7: $52
    ld c, $0a                                     ; $6ad8: $0e $0a
    ld a, [bc]                                    ; $6ada: $0a
    ld c, $0e                                     ; $6adb: $0e $0e
    ld a, [bc]                                    ; $6add: $0a
    ld a, [bc]                                    ; $6ade: $0a
    ld a, [bc]                                    ; $6adf: $0a
    ld a, [bc]                                    ; $6ae0: $0a
    ld c, $0a                                     ; $6ae1: $0e $0a
    ld c, $02                                     ; $6ae3: $0e $02
    ld [bc], a                                    ; $6ae5: $02
    ld b, $06                                     ; $6ae6: $06 $06
    push bc                                       ; $6ae8: $c5
    add $cd                                       ; $6ae9: $c6 $cd
    adc $d9                                       ; $6aeb: $ce $d9
    ret z                                         ; $6aed: $c8

    pop de                                        ; $6aee: $d1
    jp nc, $dbda                                  ; $6aef: $d2 $da $db

    push de                                       ; $6af2: $d5
    ld c, c                                       ; $6af3: $49
    ld d, e                                       ; $6af4: $53
    ld e, e                                       ; $6af5: $5b
    ld e, h                                       ; $6af6: $5c
    ld e, e                                       ; $6af7: $5b
    ld a, [bc]                                    ; $6af8: $0a
    ld c, $0a                                     ; $6af9: $0e $0a
    ld c, $0a                                     ; $6afb: $0e $0a
    ld a, [bc]                                    ; $6afd: $0a
    ld a, [bc]                                    ; $6afe: $0a
    ld a, [bc]                                    ; $6aff: $0a
    ld c, $0a                                     ; $6b00: $0e $0a
    ld a, [bc]                                    ; $6b02: $0a
    ld [bc], a                                    ; $6b03: $02
    ld b, $06                                     ; $6b04: $06 $06
    ld b, $06                                     ; $6b06: $06 $06
    pop af                                        ; $6b08: $f1
    ld a, [c]                                     ; $6b09: $f2
    di                                            ; $6b0a: $f3
    db $f4                                        ; $6b0b: $f4
    push af                                       ; $6b0c: $f5
    or $f3                                        ; $6b0d: $f6 $f3
    rst $30                                       ; $6b0f: $f7
    ld hl, sp-$07                                 ; $6b10: $f8 $f9
    ld a, [$fcfb]                                 ; $6b12: $fa $fb $fc
    db $fd                                        ; $6b15: $fd
    cp $ff                                        ; $6b16: $fe $ff
    ld bc, $0101                                  ; $6b18: $01 $01 $01
    ld bc, $0101                                  ; $6b1b: $01 $01 $01
    ld bc, $0101                                  ; $6b1e: $01 $01 $01
    ld bc, $0101                                  ; $6b21: $01 $01 $01
    ld bc, $0101                                  ; $6b24: $01 $01 $01
    ld bc, $d2d1                                  ; $6b27: $01 $d1 $d2
    db $d3                                        ; $6b2a: $d3
    call nc, $d6d5                                ; $6b2b: $d4 $d5 $d6
    rst $10                                       ; $6b2e: $d7
    ret c                                         ; $6b2f: $d8

    reti                                          ; $6b30: $d9


    jp c, $dcdb                                   ; $6b31: $da $db $dc

    nop                                           ; $6b34: $00
    ld bc, $02df                                  ; $6b35: $01 $df $02
    ld bc, $0101                                  ; $6b38: $01 $01 $01
    ld bc, $0101                                  ; $6b3b: $01 $01 $01
    ld bc, $0101                                  ; $6b3e: $01 $01 $01
    ld bc, $0101                                  ; $6b41: $01 $01 $01
    ld bc, $0101                                  ; $6b44: $01 $01 $01
    ld bc, $e2e1                                  ; $6b47: $01 $e1 $e2
    db $e3                                        ; $6b4a: $e3
    db $e4                                        ; $6b4b: $e4
    push hl                                       ; $6b4c: $e5
    and $e7                                       ; $6b4d: $e6 $e7
    add sp, -$17                                  ; $6b4f: $e8 $e9
    ld [$eceb], a                                 ; $6b51: $ea $eb $ec
    sbc e                                         ; $6b54: $9b
    xor $9c                                       ; $6b55: $ee $9c
    sbc l                                         ; $6b57: $9d
    ld bc, $0107                                  ; $6b58: $01 $07 $01
    ld bc, $0701                                  ; $6b5b: $01 $01 $07
    ld bc, $0101                                  ; $6b5e: $01 $01 $01
    rlca                                          ; $6b61: $07
    ld bc, $0901                                  ; $6b62: $01 $01 $09
    rlca                                          ; $6b65: $07
    add hl, bc                                    ; $6b66: $09
    add hl, bc                                    ; $6b67: $09
    inc hl                                        ; $6b68: $23
    inc h                                         ; $6b69: $24
    di                                            ; $6b6a: $f3
    dec h                                         ; $6b6b: $25
    ld h, $27                                     ; $6b6c: $26 $27
    di                                            ; $6b6e: $f3
    jr z, @+$2b                                   ; $6b6f: $28 $29

    ld a, [hl+]                                   ; $6b71: $2a
    dec hl                                        ; $6b72: $2b
    inc l                                         ; $6b73: $2c
    dec l                                         ; $6b74: $2d
    ld l, $2f                                     ; $6b75: $2e $2f
    jr nc, @+$03                                  ; $6b77: $30 $01

    ld bc, $0101                                  ; $6b79: $01 $01 $01
    ld bc, $0101                                  ; $6b7c: $01 $01 $01
    ld bc, $0101                                  ; $6b7f: $01 $01 $01
    ld bc, $0101                                  ; $6b82: $01 $01 $01
    ld bc, $0101                                  ; $6b85: $01 $01 $01
    ld sp, $0532                                  ; $6b88: $31 $32 $05
    ld b, $33                                     ; $6b8b: $06 $33
    inc [hl]                                      ; $6b8d: $34
    dec [hl]                                      ; $6b8e: $35
    ld [hl], $37                                  ; $6b8f: $36 $37
    jr c, @+$0f                                   ; $6b91: $38 $0d

    add hl, sp                                    ; $6b93: $39
    rrca                                          ; $6b94: $0f
    db $10                                        ; $6b95: $10
    ld de, $0112                                  ; $6b96: $11 $12 $01
    ld bc, $0101                                  ; $6b99: $01 $01 $01
    ld bc, $0101                                  ; $6b9c: $01 $01 $01
    ld bc, $0101                                  ; $6b9f: $01 $01 $01
    ld bc, $0101                                  ; $6ba2: $01 $01 $01
    ld bc, $0101                                  ; $6ba5: $01 $01 $01
    and b                                         ; $6ba8: $a0
    inc d                                         ; $6ba9: $14
    and c                                         ; $6baa: $a1
    and d                                         ; $6bab: $a2
    and e                                         ; $6bac: $a3
    and h                                         ; $6bad: $a4
    and l                                         ; $6bae: $a5
    and [hl]                                      ; $6baf: $a6
    and a                                         ; $6bb0: $a7
    xor b                                         ; $6bb1: $a8
    xor c                                         ; $6bb2: $a9
    xor d                                         ; $6bb3: $aa
    rra                                           ; $6bb4: $1f
    jr nz, jr_07c_6bd8                            ; $6bb5: $20 $21

    ld [hl+], a                                   ; $6bb7: $22
    add hl, bc                                    ; $6bb8: $09
    rlca                                          ; $6bb9: $07
    add hl, bc                                    ; $6bba: $09
    add hl, bc                                    ; $6bbb: $09
    add hl, bc                                    ; $6bbc: $09
    rrca                                          ; $6bbd: $0f
    add hl, bc                                    ; $6bbe: $09
    add hl, bc                                    ; $6bbf: $09
    add hl, bc                                    ; $6bc0: $09
    rrca                                          ; $6bc1: $0f
    add hl, bc                                    ; $6bc2: $09
    add hl, bc                                    ; $6bc3: $09
    ld bc, $0101                                  ; $6bc4: $01 $01 $01
    ld bc, $5756                                  ; $6bc7: $01 $56 $57
    ld e, b                                       ; $6bca: $58
    ld e, c                                       ; $6bcb: $59
    ld b, b                                       ; $6bcc: $40
    ld b, c                                       ; $6bcd: $41
    ld c, [hl]                                    ; $6bce: $4e
    ld c, a                                       ; $6bcf: $4f
    ld b, h                                       ; $6bd0: $44
    ld b, l                                       ; $6bd1: $45
    ld d, b                                       ; $6bd2: $50
    ld d, c                                       ; $6bd3: $51
    ld b, b                                       ; $6bd4: $40
    ld b, c                                       ; $6bd5: $41
    ld c, [hl]                                    ; $6bd6: $4e
    ld c, a                                       ; $6bd7: $4f

jr_07c_6bd8:
    ld [bc], a                                    ; $6bd8: $02
    ld [bc], a                                    ; $6bd9: $02
    ld [bc], a                                    ; $6bda: $02
    ld [bc], a                                    ; $6bdb: $02
    ld [bc], a                                    ; $6bdc: $02
    ld b, $02                                     ; $6bdd: $06 $02
    ld [bc], a                                    ; $6bdf: $02
    ld b, $02                                     ; $6be0: $06 $02
    ld [bc], a                                    ; $6be2: $02
    ld b, $02                                     ; $6be3: $06 $02
    ld [bc], a                                    ; $6be5: $02
    ld b, $02                                     ; $6be6: $06 $02
    ld a, [hl-]                                   ; $6be8: $3a
    dec sp                                        ; $6be9: $3b
    inc a                                         ; $6bea: $3c
    dec a                                         ; $6beb: $3d
    ld a, $3f                                     ; $6bec: $3e $3f
    ld b, b                                       ; $6bee: $40
    ld b, c                                       ; $6bef: $41
    ld b, d                                       ; $6bf0: $42
    ld b, e                                       ; $6bf1: $43
    ld b, h                                       ; $6bf2: $44
    ld b, l                                       ; $6bf3: $45
    ld e, e                                       ; $6bf4: $5b
    ld e, h                                       ; $6bf5: $5c
    ld c, b                                       ; $6bf6: $48
    ld c, c                                       ; $6bf7: $49
    ld [bc], a                                    ; $6bf8: $02
    ld [bc], a                                    ; $6bf9: $02
    ld [bc], a                                    ; $6bfa: $02
    ld [bc], a                                    ; $6bfb: $02
    ld [bc], a                                    ; $6bfc: $02
    ld [bc], a                                    ; $6bfd: $02
    ld b, $06                                     ; $6bfe: $06 $06
    ld b, $06                                     ; $6c00: $06 $06
    ld [bc], a                                    ; $6c02: $02
    ld [bc], a                                    ; $6c03: $02
    ld [bc], a                                    ; $6c04: $02
    ld [bc], a                                    ; $6c05: $02
    ld [bc], a                                    ; $6c06: $02
    ld [bc], a                                    ; $6c07: $02
    ld c, d                                       ; $6c08: $4a
    ld c, e                                       ; $6c09: $4b
    ld c, h                                       ; $6c0a: $4c
    ld c, l                                       ; $6c0b: $4d
    ld c, [hl]                                    ; $6c0c: $4e
    ld c, a                                       ; $6c0d: $4f
    ld a, $3f                                     ; $6c0e: $3e $3f
    ld d, b                                       ; $6c10: $50
    ld d, c                                       ; $6c11: $51
    ld b, d                                       ; $6c12: $42
    ld b, e                                       ; $6c13: $43
    ld d, d                                       ; $6c14: $52
    ld d, e                                       ; $6c15: $53
    ld d, h                                       ; $6c16: $54
    ld d, l                                       ; $6c17: $55
    ld [bc], a                                    ; $6c18: $02
    ld [bc], a                                    ; $6c19: $02
    ld [bc], a                                    ; $6c1a: $02
    ld [bc], a                                    ; $6c1b: $02
    ld [bc], a                                    ; $6c1c: $02
    ld b, $02                                     ; $6c1d: $06 $02
    ld [bc], a                                    ; $6c1f: $02
    ld [bc], a                                    ; $6c20: $02
    ld [bc], a                                    ; $6c21: $02
    ld b, $06                                     ; $6c22: $06 $06
    ld [bc], a                                    ; $6c24: $02
    ld [bc], a                                    ; $6c25: $02
    add e                                         ; $6c26: $83
    ld [bc], a                                    ; $6c27: $02
    ld d, [hl]                                    ; $6c28: $56
    ld d, a                                       ; $6c29: $57
    ld e, b                                       ; $6c2a: $58
    ld e, c                                       ; $6c2b: $59
    ld b, b                                       ; $6c2c: $40
    ld b, c                                       ; $6c2d: $41
    ld c, [hl]                                    ; $6c2e: $4e
    ld c, a                                       ; $6c2f: $4f
    ld b, h                                       ; $6c30: $44
    ld b, l                                       ; $6c31: $45
    ld d, b                                       ; $6c32: $50
    ld d, c                                       ; $6c33: $51
    ld e, d                                       ; $6c34: $5a
    ld e, e                                       ; $6c35: $5b
    ld e, h                                       ; $6c36: $5c
    ld c, b                                       ; $6c37: $48
    ld [bc], a                                    ; $6c38: $02
    ld [bc], a                                    ; $6c39: $02
    ld [bc], a                                    ; $6c3a: $02
    ld [bc], a                                    ; $6c3b: $02
    ld [bc], a                                    ; $6c3c: $02
    ld b, $06                                     ; $6c3d: $06 $06
    ld [bc], a                                    ; $6c3f: $02
    ld [bc], a                                    ; $6c40: $02
    ld [bc], a                                    ; $6c41: $02
    ld [bc], a                                    ; $6c42: $02
    ld b, $02                                     ; $6c43: $06 $02
    ld [bc], a                                    ; $6c45: $02
    ld [bc], a                                    ; $6c46: $02
    ld b, $49                                     ; $6c47: $06 $49
    ld d, d                                       ; $6c49: $52
    call c, $d3dd                                 ; $6c4a: $dc $dd $d3
    call nc, Call_07c_5249                        ; $6c4d: $d4 $49 $52
    set 3, [hl]                                   ; $6c50: $cb $de
    rst $18                                       ; $6c52: $df
    ldh [$5c], a                                  ; $6c53: $e0 $5c
    ld c, b                                       ; $6c55: $48
    pop hl                                        ; $6c56: $e1
    ld d, l                                       ; $6c57: $55
    ld b, $02                                     ; $6c58: $06 $02
    adc e                                         ; $6c5a: $8b
    adc e                                         ; $6c5b: $8b
    ld a, [bc]                                    ; $6c5c: $0a
    ld a, [bc]                                    ; $6c5d: $0a
    ld [bc], a                                    ; $6c5e: $02
    ld [bc], a                                    ; $6c5f: $02
    db $eb                                        ; $6c60: $eb
    adc e                                         ; $6c61: $8b
    adc e                                         ; $6c62: $8b
    adc e                                         ; $6c63: $8b
    ld b, $02                                     ; $6c64: $06 $02
    adc e                                         ; $6c66: $8b
    ld [bc], a                                    ; $6c67: $02
    ld [c], a                                     ; $6c68: $e2
    db $e3                                        ; $6c69: $e3
    db $e4                                        ; $6c6a: $e4

Jump_07c_6c6b:
    ld h, d                                       ; $6c6b: $62
    ld c, c                                       ; $6c6c: $49
    ld d, d                                       ; $6c6d: $52
    ld d, e                                       ; $6c6e: $53
    rst $00                                       ; $6c6f: $c7
    push hl                                       ; $6c70: $e5
    and $e7                                       ; $6c71: $e6 $e7
    add sp, -$39                                  ; $6c73: $e8 $c7
    jp hl                                         ; $6c75: $e9


    ld [$8beb], a                                 ; $6c76: $ea $eb $8b
    adc e                                         ; $6c79: $8b
    adc e                                         ; $6c7a: $8b
    add e                                         ; $6c7b: $83
    ld [bc], a                                    ; $6c7c: $02
    ld [bc], a                                    ; $6c7d: $02
    ld [bc], a                                    ; $6c7e: $02
    ld a, [bc]                                    ; $6c7f: $0a
    adc e                                         ; $6c80: $8b
    adc e                                         ; $6c81: $8b
    adc e                                         ; $6c82: $8b
    adc e                                         ; $6c83: $8b
    ld a, [bc]                                    ; $6c84: $0a
    adc e                                         ; $6c85: $8b
    adc l                                         ; $6c86: $8d
    adc e                                         ; $6c87: $8b
    ld l, h                                       ; $6c88: $6c
    ld l, l                                       ; $6c89: $6d
    ld l, [hl]                                    ; $6c8a: $6e
    ld l, a                                       ; $6c8b: $6f
    ld [hl], b                                    ; $6c8c: $70
    ld [hl], c                                    ; $6c8d: $71
    ld [hl], d                                    ; $6c8e: $72
    ld [hl], e                                    ; $6c8f: $73
    db $ec                                        ; $6c90: $ec
    ld [hl], l                                    ; $6c91: $75
    halt                                          ; $6c92: $76
    ld [hl], a                                    ; $6c93: $77
    db $ed                                        ; $6c94: $ed
    xor $79                                       ; $6c95: $ee $79
    ld a, d                                       ; $6c97: $7a
    add e                                         ; $6c98: $83
    add e                                         ; $6c99: $83
    add e                                         ; $6c9a: $83
    add l                                         ; $6c9b: $85
    add e                                         ; $6c9c: $83
    add e                                         ; $6c9d: $83
    add e                                         ; $6c9e: $83
    add e                                         ; $6c9f: $83
    adc e                                         ; $6ca0: $8b
    add e                                         ; $6ca1: $83
    add e                                         ; $6ca2: $83
    add l                                         ; $6ca3: $85
    adc e                                         ; $6ca4: $8b
    adc e                                         ; $6ca5: $8b
    add e                                         ; $6ca6: $83
    add l                                         ; $6ca7: $85
    ld a, e                                       ; $6ca8: $7b
    ld a, h                                       ; $6ca9: $7c
    ld a, l                                       ; $6caa: $7d
    ld a, [hl]                                    ; $6cab: $7e
    ld a, a                                       ; $6cac: $7f
    add b                                         ; $6cad: $80
    add c                                         ; $6cae: $81
    add d                                         ; $6caf: $82
    add e                                         ; $6cb0: $83
    add h                                         ; $6cb1: $84
    add l                                         ; $6cb2: $85
    add [hl]                                      ; $6cb3: $86
    add a                                         ; $6cb4: $87
    adc b                                         ; $6cb5: $88
    adc c                                         ; $6cb6: $89
    adc d                                         ; $6cb7: $8a
    add e                                         ; $6cb8: $83
    add e                                         ; $6cb9: $83
    add e                                         ; $6cba: $83
    add e                                         ; $6cbb: $83
    add e                                         ; $6cbc: $83
    adc e                                         ; $6cbd: $8b
    adc e                                         ; $6cbe: $8b
    adc e                                         ; $6cbf: $8b
    adc l                                         ; $6cc0: $8d
    adc e                                         ; $6cc1: $8b
    adc e                                         ; $6cc2: $8b
    adc e                                         ; $6cc3: $8b
    adc l                                         ; $6cc4: $8d
    adc l                                         ; $6cc5: $8d
    adc l                                         ; $6cc6: $8d
    adc l                                         ; $6cc7: $8d
    pop de                                        ; $6cc8: $d1
    jp nc, $d4d3                                  ; $6cc9: $d2 $d3 $d4

    push de                                       ; $6ccc: $d5
    sub $d7                                       ; $6ccd: $d6 $d7
    ret c                                         ; $6ccf: $d8

    reti                                          ; $6cd0: $d9


    jp c, $dcdb                                   ; $6cd1: $da $db $dc

    db $dd                                        ; $6cd4: $dd
    sbc $df                                       ; $6cd5: $de $df
    ldh [rSB], a                                  ; $6cd7: $e0 $01
    ld bc, $0101                                  ; $6cd9: $01 $01 $01
    ld bc, $0101                                  ; $6cdc: $01 $01 $01
    ld bc, $0101                                  ; $6cdf: $01 $01 $01
    ld bc, $0101                                  ; $6ce2: $01 $01 $01
    ld bc, $0101                                  ; $6ce5: $01 $01 $01
    inc bc                                        ; $6ce8: $03
    inc b                                         ; $6ce9: $04
    dec b                                         ; $6cea: $05
    ld b, $07                                     ; $6ceb: $06 $07
    ld [$0a09], sp                                ; $6ced: $08 $09 $0a
    dec bc                                        ; $6cf0: $0b
    inc c                                         ; $6cf1: $0c
    dec c                                         ; $6cf2: $0d
    ld c, $0f                                     ; $6cf3: $0e $0f
    db $10                                        ; $6cf5: $10
    ld de, $0112                                  ; $6cf6: $11 $12 $01
    ld bc, $0101                                  ; $6cf9: $01 $01 $01
    ld bc, $0101                                  ; $6cfc: $01 $01 $01
    ld bc, $0101                                  ; $6cff: $01 $01 $01
    ld bc, $0101                                  ; $6d02: $01 $01 $01
    ld bc, $0101                                  ; $6d05: $01 $01 $01
    ld sp, $0532                                  ; $6d08: $31 $32 $05
    ld b, $33                                     ; $6d0b: $06 $33
    inc [hl]                                      ; $6d0d: $34
    dec [hl]                                      ; $6d0e: $35
    ld [hl], $37                                  ; $6d0f: $36 $37
    jr c, @+$0f                                   ; $6d11: $38 $0d

    add hl, sp                                    ; $6d13: $39
    rrca                                          ; $6d14: $0f
    db $10                                        ; $6d15: $10
    ld de, $0112                                  ; $6d16: $11 $12 $01
    ld bc, $0107                                  ; $6d19: $01 $07 $01
    ld bc, $0701                                  ; $6d1c: $01 $01 $07
    ld bc, $0101                                  ; $6d1f: $01 $01 $01
    rlca                                          ; $6d22: $07
    ld bc, $0101                                  ; $6d23: $01 $01 $01
    rlca                                          ; $6d26: $07
    ld bc, $3b3a                                  ; $6d27: $01 $3a $3b
    inc a                                         ; $6d2a: $3c
    dec a                                         ; $6d2b: $3d
    ld a, $3f                                     ; $6d2c: $3e $3f
    ld b, b                                       ; $6d2e: $40
    ld b, c                                       ; $6d2f: $41
    ld b, d                                       ; $6d30: $42
    ld b, e                                       ; $6d31: $43
    ld b, h                                       ; $6d32: $44
    ld b, l                                       ; $6d33: $45
    ld e, e                                       ; $6d34: $5b
    ld e, h                                       ; $6d35: $5c
    ld e, l                                       ; $6d36: $5d
    ld e, [hl]                                    ; $6d37: $5e
    ld [bc], a                                    ; $6d38: $02
    ld [bc], a                                    ; $6d39: $02
    ld [bc], a                                    ; $6d3a: $02
    ld [bc], a                                    ; $6d3b: $02
    ld [bc], a                                    ; $6d3c: $02
    ld [bc], a                                    ; $6d3d: $02
    ld [bc], a                                    ; $6d3e: $02
    ld b, $06                                     ; $6d3f: $06 $06
    ld b, $06                                     ; $6d41: $06 $06
    ld b, $02                                     ; $6d43: $06 $02
    ld [bc], a                                    ; $6d45: $02
    add e                                         ; $6d46: $83
    add e                                         ; $6d47: $83
    ld c, d                                       ; $6d48: $4a
    ld c, e                                       ; $6d49: $4b
    ld c, h                                       ; $6d4a: $4c
    ld c, l                                       ; $6d4b: $4d
    ld c, [hl]                                    ; $6d4c: $4e
    ld c, a                                       ; $6d4d: $4f
    ld a, $3f                                     ; $6d4e: $3e $3f
    ld d, b                                       ; $6d50: $50
    ld d, c                                       ; $6d51: $51
    ld b, d                                       ; $6d52: $42
    ld b, e                                       ; $6d53: $43
    ld e, h                                       ; $6d54: $5c
    ld c, b                                       ; $6d55: $48
    ld c, c                                       ; $6d56: $49
    ld d, d                                       ; $6d57: $52
    ld [bc], a                                    ; $6d58: $02
    ld [bc], a                                    ; $6d59: $02
    ld [bc], a                                    ; $6d5a: $02
    ld [bc], a                                    ; $6d5b: $02
    ld b, $02                                     ; $6d5c: $06 $02
    ld [bc], a                                    ; $6d5e: $02
    ld b, $02                                     ; $6d5f: $06 $02
    ld [bc], a                                    ; $6d61: $02
    ld b, $02                                     ; $6d62: $06 $02
    ld [bc], a                                    ; $6d64: $02
    ld [bc], a                                    ; $6d65: $02
    ld [bc], a                                    ; $6d66: $02
    ld [bc], a                                    ; $6d67: $02
    ld d, [hl]                                    ; $6d68: $56
    ld d, a                                       ; $6d69: $57
    ld e, b                                       ; $6d6a: $58
    ld e, c                                       ; $6d6b: $59
    ld b, b                                       ; $6d6c: $40
    ld b, c                                       ; $6d6d: $41
    ld c, [hl]                                    ; $6d6e: $4e
    ld c, a                                       ; $6d6f: $4f
    ld b, h                                       ; $6d70: $44
    ld b, l                                       ; $6d71: $45
    ld d, b                                       ; $6d72: $50
    ld d, c                                       ; $6d73: $51
    ld e, e                                       ; $6d74: $5b
    ld e, h                                       ; $6d75: $5c
    ld c, b                                       ; $6d76: $48
    ld c, c                                       ; $6d77: $49
    ld [bc], a                                    ; $6d78: $02
    ld [bc], a                                    ; $6d79: $02
    ld [bc], a                                    ; $6d7a: $02
    ld [bc], a                                    ; $6d7b: $02
    ld b, $02                                     ; $6d7c: $06 $02
    ld [bc], a                                    ; $6d7e: $02
    ld [bc], a                                    ; $6d7f: $02
    ld [bc], a                                    ; $6d80: $02
    ld [bc], a                                    ; $6d81: $02
    ld [bc], a                                    ; $6d82: $02
    ld b, $06                                     ; $6d83: $06 $06
    ld [bc], a                                    ; $6d85: $02
    ld [bc], a                                    ; $6d86: $02
    ld b, $3a                                     ; $6d87: $06 $3a
    dec sp                                        ; $6d89: $3b
    inc a                                         ; $6d8a: $3c
    dec a                                         ; $6d8b: $3d
    ld a, $3f                                     ; $6d8c: $3e $3f
    ld b, b                                       ; $6d8e: $40
    ld b, c                                       ; $6d8f: $41
    ld b, d                                       ; $6d90: $42
    ld b, e                                       ; $6d91: $43
    ld b, h                                       ; $6d92: $44
    ld b, l                                       ; $6d93: $45
    ld d, d                                       ; $6d94: $52
    ld d, e                                       ; $6d95: $53
    ld d, h                                       ; $6d96: $54
    ld d, l                                       ; $6d97: $55
    ld [bc], a                                    ; $6d98: $02
    ld [bc], a                                    ; $6d99: $02
    ld [bc], a                                    ; $6d9a: $02
    ld [bc], a                                    ; $6d9b: $02
    ld b, $06                                     ; $6d9c: $06 $06
    ld b, $06                                     ; $6d9e: $06 $06
    ld b, $02                                     ; $6da0: $06 $02
    ld [bc], a                                    ; $6da2: $02
    ld [bc], a                                    ; $6da3: $02
    ld b, $06                                     ; $6da4: $06 $06
    add e                                         ; $6da6: $83
    ld [bc], a                                    ; $6da7: $02
    adc e                                         ; $6da8: $8b
    adc h                                         ; $6da9: $8c
    adc l                                         ; $6daa: $8d
    adc [hl]                                      ; $6dab: $8e
    adc a                                         ; $6dac: $8f
    sub b                                         ; $6dad: $90
    sub c                                         ; $6dae: $91
    sub d                                         ; $6daf: $92
    sub e                                         ; $6db0: $93
    sub h                                         ; $6db1: $94
    sub l                                         ; $6db2: $95
    sub [hl]                                      ; $6db3: $96
    sub a                                         ; $6db4: $97
    sbc b                                         ; $6db5: $98
    sbc c                                         ; $6db6: $99
    sbc d                                         ; $6db7: $9a
    adc e                                         ; $6db8: $8b
    adc e                                         ; $6db9: $8b
    adc l                                         ; $6dba: $8d
    adc e                                         ; $6dbb: $8b
    adc e                                         ; $6dbc: $8b
    adc l                                         ; $6dbd: $8d
    adc e                                         ; $6dbe: $8b
    adc e                                         ; $6dbf: $8b
    adc l                                         ; $6dc0: $8d
    adc l                                         ; $6dc1: $8d
    adc e                                         ; $6dc2: $8b
    adc e                                         ; $6dc3: $8b
    adc l                                         ; $6dc4: $8d
    adc e                                         ; $6dc5: $8b
    adc e                                         ; $6dc6: $8b
    adc e                                         ; $6dc7: $8b
    or h                                          ; $6dc8: $b4
    or l                                          ; $6dc9: $b5
    or [hl]                                       ; $6dca: $b6
    or a                                          ; $6dcb: $b7
    cp b                                          ; $6dcc: $b8
    cp c                                          ; $6dcd: $b9
    cp d                                          ; $6dce: $ba
    ld d, l                                       ; $6dcf: $55
    cp e                                          ; $6dd0: $bb
    cp h                                          ; $6dd1: $bc
    cp l                                          ; $6dd2: $bd
    cp [hl]                                       ; $6dd3: $be
    cp a                                          ; $6dd4: $bf
    ret nz                                        ; $6dd5: $c0

    pop bc                                        ; $6dd6: $c1
    jp nz, $8b8b                                  ; $6dd7: $c2 $8b $8b

    adc e                                         ; $6dda: $8b
    adc e                                         ; $6ddb: $8b
    adc e                                         ; $6ddc: $8b
    adc e                                         ; $6ddd: $8b
    adc e                                         ; $6dde: $8b
    ld [bc], a                                    ; $6ddf: $02
    adc e                                         ; $6de0: $8b
    adc e                                         ; $6de1: $8b
    adc l                                         ; $6de2: $8d
    adc e                                         ; $6de3: $8b
    adc e                                         ; $6de4: $8b
    adc e                                         ; $6de5: $8b
    adc l                                         ; $6de6: $8d
    adc e                                         ; $6de7: $8b
    ld [c], a                                     ; $6de8: $e2
    db $e3                                        ; $6de9: $e3
    db $e4                                        ; $6dea: $e4
    ld h, d                                       ; $6deb: $62
    ld c, c                                       ; $6dec: $49
    ld d, d                                       ; $6ded: $52
    ld d, e                                       ; $6dee: $53
    rst $00                                       ; $6def: $c7
    push hl                                       ; $6df0: $e5
    and $e7                                       ; $6df1: $e6 $e7
    add sp, -$39                                  ; $6df3: $e8 $c7
    jp hl                                         ; $6df5: $e9


    ld [$8beb], a                                 ; $6df6: $ea $eb $8b
    adc e                                         ; $6df9: $8b
    adc e                                         ; $6dfa: $8b
    add e                                         ; $6dfb: $83
    ld [bc], a                                    ; $6dfc: $02
    ld b, $02                                     ; $6dfd: $06 $02
    ld a, [bc]                                    ; $6dff: $0a
    adc e                                         ; $6e00: $8b
    adc e                                         ; $6e01: $8b
    adc e                                         ; $6e02: $8b
    adc e                                         ; $6e03: $8b
    ld a, [bc]                                    ; $6e04: $0a
    adc e                                         ; $6e05: $8b
    adc e                                         ; $6e06: $8b
    adc e                                         ; $6e07: $8b
    ld l, h                                       ; $6e08: $6c
    ld l, l                                       ; $6e09: $6d
    ld l, [hl]                                    ; $6e0a: $6e
    ld l, a                                       ; $6e0b: $6f
    ld [hl], b                                    ; $6e0c: $70
    ld [hl], c                                    ; $6e0d: $71
    ld [hl], d                                    ; $6e0e: $72
    ld [hl], e                                    ; $6e0f: $73
    db $ec                                        ; $6e10: $ec
    ld [hl], l                                    ; $6e11: $75
    halt                                          ; $6e12: $76
    ld [hl], a                                    ; $6e13: $77
    db $ed                                        ; $6e14: $ed
    xor $79                                       ; $6e15: $ee $79
    ld a, d                                       ; $6e17: $7a
    add e                                         ; $6e18: $83
    add e                                         ; $6e19: $83
    add e                                         ; $6e1a: $83
    add l                                         ; $6e1b: $85
    add e                                         ; $6e1c: $83
    add e                                         ; $6e1d: $83
    add e                                         ; $6e1e: $83
    add l                                         ; $6e1f: $85
    adc e                                         ; $6e20: $8b
    add e                                         ; $6e21: $83
    add e                                         ; $6e22: $83
    add l                                         ; $6e23: $85
    adc l                                         ; $6e24: $8d
    adc e                                         ; $6e25: $8b
    add e                                         ; $6e26: $83
    add e                                         ; $6e27: $83
    pop hl                                        ; $6e28: $e1
    ld [c], a                                     ; $6e29: $e2
    db $e3                                        ; $6e2a: $e3
    db $e4                                        ; $6e2b: $e4
    push hl                                       ; $6e2c: $e5
    and $e7                                       ; $6e2d: $e6 $e7
    add sp, -$17                                  ; $6e2f: $e8 $e9
    ld [$eceb], a                                 ; $6e31: $ea $eb $ec
    sbc e                                         ; $6e34: $9b
    xor $9c                                       ; $6e35: $ee $9c
    sbc l                                         ; $6e37: $9d
    ld bc, $0101                                  ; $6e38: $01 $01 $01
    rlca                                          ; $6e3b: $07
    ld bc, $0101                                  ; $6e3c: $01 $01 $01
    rlca                                          ; $6e3f: $07
    ld bc, $0101                                  ; $6e40: $01 $01 $01
    rlca                                          ; $6e43: $07
    add hl, bc                                    ; $6e44: $09
    ld bc, $0f09                                  ; $6e45: $01 $09 $0f
    pop af                                        ; $6e48: $f1
    ld a, [c]                                     ; $6e49: $f2
    di                                            ; $6e4a: $f3
    db $f4                                        ; $6e4b: $f4
    push af                                       ; $6e4c: $f5
    or $f3                                        ; $6e4d: $f6 $f3
    rst $30                                       ; $6e4f: $f7
    ld hl, sp-$07                                 ; $6e50: $f8 $f9
    ld a, [$9efb]                                 ; $6e52: $fa $fb $9e
    db $fd                                        ; $6e55: $fd
    cp $9f                                        ; $6e56: $fe $9f
    ld bc, $0101                                  ; $6e58: $01 $01 $01
    rlca                                          ; $6e5b: $07
    ld bc, $0101                                  ; $6e5c: $01 $01 $01
    rlca                                          ; $6e5f: $07
    ld bc, $0101                                  ; $6e60: $01 $01 $01
    rlca                                          ; $6e63: $07
    add hl, bc                                    ; $6e64: $09
    ld bc, $0f01                                  ; $6e65: $01 $01 $0f
    and b                                         ; $6e68: $a0
    inc d                                         ; $6e69: $14
    and c                                         ; $6e6a: $a1
    and d                                         ; $6e6b: $a2
    and e                                         ; $6e6c: $a3

Jump_07c_6e6d:
    and h                                         ; $6e6d: $a4
    and l                                         ; $6e6e: $a5
    and [hl]                                      ; $6e6f: $a6
    and a                                         ; $6e70: $a7
    xor b                                         ; $6e71: $a8
    xor c                                         ; $6e72: $a9
    xor d                                         ; $6e73: $aa
    rra                                           ; $6e74: $1f
    jr nz, @+$23                                  ; $6e75: $20 $21

    ld [hl+], a                                   ; $6e77: $22
    add hl, bc                                    ; $6e78: $09
    ld bc, $0f09                                  ; $6e79: $01 $09 $0f
    add hl, bc                                    ; $6e7c: $09
    add hl, bc                                    ; $6e7d: $09
    add hl, bc                                    ; $6e7e: $09
    add hl, bc                                    ; $6e7f: $09
    add hl, bc                                    ; $6e80: $09
    add hl, bc                                    ; $6e81: $09
    add hl, bc                                    ; $6e82: $09
    add hl, bc                                    ; $6e83: $09
    ld bc, $0101                                  ; $6e84: $01 $01 $01
    ld bc, $24ab                                  ; $6e87: $01 $ab $24
    di                                            ; $6e8a: $f3
    xor h                                         ; $6e8b: $ac
    xor l                                         ; $6e8c: $ad
    xor [hl]                                      ; $6e8d: $ae
    xor a                                         ; $6e8e: $af
    or b                                          ; $6e8f: $b0
    or c                                          ; $6e90: $b1
    ld a, [hl+]                                   ; $6e91: $2a
    or d                                          ; $6e92: $b2
    or e                                          ; $6e93: $b3
    dec l                                         ; $6e94: $2d
    ld l, $2f                                     ; $6e95: $2e $2f
    jr nc, @+$0b                                  ; $6e97: $30 $09

    ld bc, $0f01                                  ; $6e99: $01 $01 $0f
    add hl, bc                                    ; $6e9c: $09
    add hl, bc                                    ; $6e9d: $09
    add hl, bc                                    ; $6e9e: $09
    add hl, bc                                    ; $6e9f: $09
    add hl, bc                                    ; $6ea0: $09
    ld bc, $0909                                  ; $6ea1: $01 $09 $09
    ld bc, $0101                                  ; $6ea4: $01 $01 $01
    ld bc, $1413                                  ; $6ea7: $01 $13 $14
    dec d                                         ; $6eaa: $15
    ld d, $17                                     ; $6eab: $16 $17
    jr @+$1b                                      ; $6ead: $18 $19

    ld a, [de]                                    ; $6eaf: $1a
    dec de                                        ; $6eb0: $1b
    inc e                                         ; $6eb1: $1c
    dec e                                         ; $6eb2: $1d
    ld e, $1f                                     ; $6eb3: $1e $1f
    jr nz, jr_07c_6ed8                            ; $6eb5: $20 $21

    ld [hl+], a                                   ; $6eb7: $22
    ld bc, $0107                                  ; $6eb8: $01 $07 $01
    ld bc, $0701                                  ; $6ebb: $01 $01 $07
    ld bc, $0101                                  ; $6ebe: $01 $01 $01
    rlca                                          ; $6ec1: $07
    ld bc, $0101                                  ; $6ec2: $01 $01 $01
    rlca                                          ; $6ec5: $07
    ld bc, $4a01                                  ; $6ec6: $01 $01 $4a
    ld c, e                                       ; $6ec9: $4b
    ld c, h                                       ; $6eca: $4c
    ld c, l                                       ; $6ecb: $4d
    ld c, [hl]                                    ; $6ecc: $4e
    ld c, a                                       ; $6ecd: $4f
    ld a, $3f                                     ; $6ece: $3e $3f
    ld d, b                                       ; $6ed0: $50
    ld d, c                                       ; $6ed1: $51
    ld b, d                                       ; $6ed2: $42
    ld b, e                                       ; $6ed3: $43
    ld e, d                                       ; $6ed4: $5a
    ld e, e                                       ; $6ed5: $5b
    ld e, h                                       ; $6ed6: $5c
    ld c, b                                       ; $6ed7: $48

jr_07c_6ed8:
    ld [bc], a                                    ; $6ed8: $02
    ld [bc], a                                    ; $6ed9: $02
    ld [bc], a                                    ; $6eda: $02
    ld [bc], a                                    ; $6edb: $02
    ld b, $02                                     ; $6edc: $06 $02
    ld [bc], a                                    ; $6ede: $02
    ld [bc], a                                    ; $6edf: $02
    ld [bc], a                                    ; $6ee0: $02
    ld [bc], a                                    ; $6ee1: $02
    ld b, $06                                     ; $6ee2: $06 $06
    ld [bc], a                                    ; $6ee4: $02
    ld [bc], a                                    ; $6ee5: $02
    ld [bc], a                                    ; $6ee6: $02
    ld [bc], a                                    ; $6ee7: $02
    ld d, [hl]                                    ; $6ee8: $56
    ld d, a                                       ; $6ee9: $57
    ld e, b                                       ; $6eea: $58
    ld e, c                                       ; $6eeb: $59
    ld b, b                                       ; $6eec: $40
    ld b, c                                       ; $6eed: $41
    ld c, [hl]                                    ; $6eee: $4e
    ld c, a                                       ; $6eef: $4f
    ld b, h                                       ; $6ef0: $44
    ld b, l                                       ; $6ef1: $45
    ld d, b                                       ; $6ef2: $50
    ld d, c                                       ; $6ef3: $51
    ld e, e                                       ; $6ef4: $5b
    ld e, h                                       ; $6ef5: $5c
    ld e, l                                       ; $6ef6: $5d
    ld e, [hl]                                    ; $6ef7: $5e
    ld [bc], a                                    ; $6ef8: $02
    ld [bc], a                                    ; $6ef9: $02
    ld [bc], a                                    ; $6efa: $02
    ld [bc], a                                    ; $6efb: $02
    ld b, $06                                     ; $6efc: $06 $06
    ld [bc], a                                    ; $6efe: $02
    ld [bc], a                                    ; $6eff: $02
    ld [bc], a                                    ; $6f00: $02
    ld [bc], a                                    ; $6f01: $02
    ld [bc], a                                    ; $6f02: $02
    ld [bc], a                                    ; $6f03: $02
    ld b, $02                                     ; $6f04: $06 $02
    add l                                         ; $6f06: $85
    add e                                         ; $6f07: $83
    ld a, [hl-]                                   ; $6f08: $3a
    dec sp                                        ; $6f09: $3b
    inc a                                         ; $6f0a: $3c
    dec a                                         ; $6f0b: $3d
    ld a, $3f                                     ; $6f0c: $3e $3f
    ld b, b                                       ; $6f0e: $40
    ld b, c                                       ; $6f0f: $41
    ld b, d                                       ; $6f10: $42
    ld b, e                                       ; $6f11: $43
    ld b, h                                       ; $6f12: $44
    ld b, l                                       ; $6f13: $45
    ld e, h                                       ; $6f14: $5c
    ld c, b                                       ; $6f15: $48
    ld c, c                                       ; $6f16: $49
    ld d, d                                       ; $6f17: $52
    ld [bc], a                                    ; $6f18: $02
    ld [bc], a                                    ; $6f19: $02
    ld [bc], a                                    ; $6f1a: $02
    ld [bc], a                                    ; $6f1b: $02
    ld [bc], a                                    ; $6f1c: $02
    ld b, $06                                     ; $6f1d: $06 $06
    ld b, $06                                     ; $6f1f: $06 $06
    ld b, $02                                     ; $6f21: $06 $02
    ld b, $02                                     ; $6f23: $06 $02
    ld [bc], a                                    ; $6f25: $02
    ld [bc], a                                    ; $6f26: $02
    ld [bc], a                                    ; $6f27: $02
    ld c, d                                       ; $6f28: $4a
    ld c, e                                       ; $6f29: $4b
    ld c, h                                       ; $6f2a: $4c
    ld c, l                                       ; $6f2b: $4d
    ld c, [hl]                                    ; $6f2c: $4e
    ld c, a                                       ; $6f2d: $4f
    ld a, $3f                                     ; $6f2e: $3e $3f
    ld d, b                                       ; $6f30: $50
    ld d, c                                       ; $6f31: $51
    ld b, d                                       ; $6f32: $42
    ld b, e                                       ; $6f33: $43
    ld e, e                                       ; $6f34: $5b
    ld e, h                                       ; $6f35: $5c
    ld c, b                                       ; $6f36: $48
    ld c, c                                       ; $6f37: $49
    ld [bc], a                                    ; $6f38: $02
    ld [bc], a                                    ; $6f39: $02
    ld [bc], a                                    ; $6f3a: $02
    ld [bc], a                                    ; $6f3b: $02
    ld [bc], a                                    ; $6f3c: $02
    ld [bc], a                                    ; $6f3d: $02
    ld b, $06                                     ; $6f3e: $06 $06
    ld b, $02                                     ; $6f40: $06 $02
    ld [bc], a                                    ; $6f42: $02
    ld [bc], a                                    ; $6f43: $02
    ld b, $06                                     ; $6f44: $06 $06
    ld [bc], a                                    ; $6f46: $02
    ld [bc], a                                    ; $6f47: $02
    ld a, e                                       ; $6f48: $7b
    ld a, h                                       ; $6f49: $7c
    ld a, l                                       ; $6f4a: $7d
    ld a, [hl]                                    ; $6f4b: $7e
    ld a, a                                       ; $6f4c: $7f
    add b                                         ; $6f4d: $80
    add c                                         ; $6f4e: $81
    add d                                         ; $6f4f: $82
    add e                                         ; $6f50: $83
    add h                                         ; $6f51: $84
    add l                                         ; $6f52: $85
    add [hl]                                      ; $6f53: $86
    add a                                         ; $6f54: $87
    adc b                                         ; $6f55: $88
    adc c                                         ; $6f56: $89
    adc d                                         ; $6f57: $8a
    add e                                         ; $6f58: $83
    add e                                         ; $6f59: $83
    add e                                         ; $6f5a: $83
    add e                                         ; $6f5b: $83
    add e                                         ; $6f5c: $83
    adc e                                         ; $6f5d: $8b
    adc e                                         ; $6f5e: $8b
    adc e                                         ; $6f5f: $8b
    adc l                                         ; $6f60: $8d
    adc e                                         ; $6f61: $8b
    adc e                                         ; $6f62: $8b
    adc l                                         ; $6f63: $8d
    adc l                                         ; $6f64: $8d
    adc e                                         ; $6f65: $8b
    adc e                                         ; $6f66: $8b
    adc e                                         ; $6f67: $8b
    adc e                                         ; $6f68: $8b
    adc h                                         ; $6f69: $8c
    adc l                                         ; $6f6a: $8d
    adc [hl]                                      ; $6f6b: $8e
    adc a                                         ; $6f6c: $8f
    sub b                                         ; $6f6d: $90
    sub c                                         ; $6f6e: $91
    sub d                                         ; $6f6f: $92
    sub e                                         ; $6f70: $93
    sub h                                         ; $6f71: $94
    sub l                                         ; $6f72: $95
    sub [hl]                                      ; $6f73: $96
    sub a                                         ; $6f74: $97
    sbc b                                         ; $6f75: $98
    sbc c                                         ; $6f76: $99
    sbc d                                         ; $6f77: $9a
    adc e                                         ; $6f78: $8b
    adc l                                         ; $6f79: $8d
    adc l                                         ; $6f7a: $8d
    adc e                                         ; $6f7b: $8b
    adc l                                         ; $6f7c: $8d
    adc e                                         ; $6f7d: $8b
    adc e                                         ; $6f7e: $8b
    adc l                                         ; $6f7f: $8d
    adc l                                         ; $6f80: $8d
    adc e                                         ; $6f81: $8b
    adc e                                         ; $6f82: $8b
    adc l                                         ; $6f83: $8d
    adc e                                         ; $6f84: $8b
    adc e                                         ; $6f85: $8b
    adc e                                         ; $6f86: $8b
    adc l                                         ; $6f87: $8d
    ld [c], a                                     ; $6f88: $e2
    db $e3                                        ; $6f89: $e3
    db $e4                                        ; $6f8a: $e4
    ld h, d                                       ; $6f8b: $62
    ld c, c                                       ; $6f8c: $49
    ld d, d                                       ; $6f8d: $52
    ld d, e                                       ; $6f8e: $53
    rst $00                                       ; $6f8f: $c7
    push hl                                       ; $6f90: $e5
    and $e7                                       ; $6f91: $e6 $e7
    add sp, -$39                                  ; $6f93: $e8 $c7
    jp hl                                         ; $6f95: $e9


    ld [$8beb], a                                 ; $6f96: $ea $eb $8b
    adc e                                         ; $6f99: $8b
    adc e                                         ; $6f9a: $8b
    add e                                         ; $6f9b: $83
    ld b, $06                                     ; $6f9c: $06 $06
    ld b, $0a                                     ; $6f9e: $06 $0a
    adc e                                         ; $6fa0: $8b
    adc e                                         ; $6fa1: $8b
    adc e                                         ; $6fa2: $8b
    adc e                                         ; $6fa3: $8b
    ld a, [bc]                                    ; $6fa4: $0a
    adc e                                         ; $6fa5: $8b
    adc e                                         ; $6fa6: $8b
    adc e                                         ; $6fa7: $8b
    xor e                                         ; $6fa8: $ab
    inc h                                         ; $6fa9: $24
    di                                            ; $6faa: $f3
    xor h                                         ; $6fab: $ac
    xor l                                         ; $6fac: $ad
    xor [hl]                                      ; $6fad: $ae
    xor a                                         ; $6fae: $af
    or b                                          ; $6faf: $b0
    or c                                          ; $6fb0: $b1
    ld a, [hl+]                                   ; $6fb1: $2a
    or d                                          ; $6fb2: $b2
    or e                                          ; $6fb3: $b3
    dec l                                         ; $6fb4: $2d
    ld l, $2f                                     ; $6fb5: $2e $2f
    jr nc, jr_07c_6fc2                            ; $6fb7: $30 $09

    rlca                                          ; $6fb9: $07
    rlca                                          ; $6fba: $07
    add hl, bc                                    ; $6fbb: $09
    add hl, bc                                    ; $6fbc: $09
    rrca                                          ; $6fbd: $0f
    add hl, bc                                    ; $6fbe: $09
    add hl, bc                                    ; $6fbf: $09
    add hl, bc                                    ; $6fc0: $09
    rlca                                          ; $6fc1: $07

jr_07c_6fc2:
    rrca                                          ; $6fc2: $0f
    add hl, bc                                    ; $6fc3: $09
    ld bc, $0107                                  ; $6fc4: $01 $07 $01
    ld bc, $5756                                  ; $6fc7: $01 $56 $57
    ld e, b                                       ; $6fca: $58
    ld e, c                                       ; $6fcb: $59
    ld b, b                                       ; $6fcc: $40
    ld b, c                                       ; $6fcd: $41
    ld c, [hl]                                    ; $6fce: $4e
    ld c, a                                       ; $6fcf: $4f
    ld b, h                                       ; $6fd0: $44
    ld b, l                                       ; $6fd1: $45
    ld e, e                                       ; $6fd2: $5b
    ld d, c                                       ; $6fd3: $51
    ld d, d                                       ; $6fd4: $52
    ld d, e                                       ; $6fd5: $53
    ld d, h                                       ; $6fd6: $54
    ld d, l                                       ; $6fd7: $55
    ld [bc], a                                    ; $6fd8: $02
    ld [bc], a                                    ; $6fd9: $02
    ld [bc], a                                    ; $6fda: $02
    ld [bc], a                                    ; $6fdb: $02
    ld b, $06                                     ; $6fdc: $06 $06
    ld b, $06                                     ; $6fde: $06 $06
    ld [bc], a                                    ; $6fe0: $02
    ld [bc], a                                    ; $6fe1: $02
    ld [bc], a                                    ; $6fe2: $02
    ld [bc], a                                    ; $6fe3: $02
    ld [bc], a                                    ; $6fe4: $02
    ld [bc], a                                    ; $6fe5: $02
    add e                                         ; $6fe6: $83
    ld [bc], a                                    ; $6fe7: $02
    ld a, [hl-]                                   ; $6fe8: $3a
    dec sp                                        ; $6fe9: $3b
    inc a                                         ; $6fea: $3c
    dec a                                         ; $6feb: $3d
    ld a, $3f                                     ; $6fec: $3e $3f
    ld b, b                                       ; $6fee: $40
    ld b, c                                       ; $6fef: $41
    ld b, d                                       ; $6ff0: $42
    ld b, e                                       ; $6ff1: $43
    ld b, h                                       ; $6ff2: $44
    ld b, l                                       ; $6ff3: $45
    ld e, d                                       ; $6ff4: $5a
    ld e, e                                       ; $6ff5: $5b
    ld e, h                                       ; $6ff6: $5c
    ld c, b                                       ; $6ff7: $48
    ld [bc], a                                    ; $6ff8: $02
    ld [bc], a                                    ; $6ff9: $02
    ld [bc], a                                    ; $6ffa: $02
    ld [bc], a                                    ; $6ffb: $02
    ld [bc], a                                    ; $6ffc: $02
    ld [bc], a                                    ; $6ffd: $02
    ld [bc], a                                    ; $6ffe: $02
    ld b, $02                                     ; $6fff: $06 $02
    ld [bc], a                                    ; $7001: $02
    ld [bc], a                                    ; $7002: $02
    ld b, $02                                     ; $7003: $06 $02
    ld [bc], a                                    ; $7005: $02
    ld b, $02                                     ; $7006: $06 $02
    ld c, d                                       ; $7008: $4a
    ld c, e                                       ; $7009: $4b
    ld c, h                                       ; $700a: $4c
    ld c, l                                       ; $700b: $4d
    ld c, [hl]                                    ; $700c: $4e
    ld c, a                                       ; $700d: $4f
    ld a, $3f                                     ; $700e: $3e $3f
    ld d, b                                       ; $7010: $50
    ld d, c                                       ; $7011: $51
    ld d, e                                       ; $7012: $53
    ld c, c                                       ; $7013: $49
    ld e, e                                       ; $7014: $5b
    ld e, h                                       ; $7015: $5c
    ld e, l                                       ; $7016: $5d
    ld e, [hl]                                    ; $7017: $5e
    ld [bc], a                                    ; $7018: $02
    ld [bc], a                                    ; $7019: $02
    ld [bc], a                                    ; $701a: $02
    ld [bc], a                                    ; $701b: $02
    ld [bc], a                                    ; $701c: $02
    ld b, $06                                     ; $701d: $06 $06
    ld b, $02                                     ; $701f: $06 $02
    ld [bc], a                                    ; $7021: $02
    ld [bc], a                                    ; $7022: $02
    ld b, $02                                     ; $7023: $06 $02
    ld [bc], a                                    ; $7025: $02
    add e                                         ; $7026: $83
    add e                                         ; $7027: $83
    ld d, [hl]                                    ; $7028: $56
    ld d, a                                       ; $7029: $57
    ld e, b                                       ; $702a: $58
    ld e, c                                       ; $702b: $59
    ld b, b                                       ; $702c: $40
    ld b, c                                       ; $702d: $41
    ld c, [hl]                                    ; $702e: $4e
    ld c, a                                       ; $702f: $4f
    ld b, h                                       ; $7030: $44
    ld b, l                                       ; $7031: $45
    ld d, b                                       ; $7032: $50
    ld d, c                                       ; $7033: $51
    ld e, h                                       ; $7034: $5c
    ld c, b                                       ; $7035: $48
    ld c, c                                       ; $7036: $49
    ld d, d                                       ; $7037: $52
    ld [bc], a                                    ; $7038: $02
    ld [bc], a                                    ; $7039: $02
    ld [bc], a                                    ; $703a: $02
    ld [bc], a                                    ; $703b: $02
    ld [bc], a                                    ; $703c: $02
    ld [bc], a                                    ; $703d: $02
    ld b, $06                                     ; $703e: $06 $06
    ld b, $06                                     ; $7040: $06 $06
    ld [bc], a                                    ; $7042: $02
    ld [bc], a                                    ; $7043: $02
    ld [bc], a                                    ; $7044: $02
    ld b, $02                                     ; $7045: $06 $02
    ld [bc], a                                    ; $7047: $02
    ld l, h                                       ; $7048: $6c
    ld l, l                                       ; $7049: $6d
    ld l, [hl]                                    ; $704a: $6e
    ld l, a                                       ; $704b: $6f
    ld [hl], b                                    ; $704c: $70
    ld [hl], c                                    ; $704d: $71
    ld [hl], d                                    ; $704e: $72
    ld [hl], e                                    ; $704f: $73
    db $ec                                        ; $7050: $ec
    ld [hl], l                                    ; $7051: $75
    halt                                          ; $7052: $76
    ld [hl], a                                    ; $7053: $77
    db $ed                                        ; $7054: $ed
    xor $79                                       ; $7055: $ee $79
    ld a, d                                       ; $7057: $7a
    add e                                         ; $7058: $83
    add e                                         ; $7059: $83
    add e                                         ; $705a: $83
    add l                                         ; $705b: $85
    add e                                         ; $705c: $83
    add e                                         ; $705d: $83
    add e                                         ; $705e: $83
    add l                                         ; $705f: $85
    adc e                                         ; $7060: $8b
    add e                                         ; $7061: $83
    add e                                         ; $7062: $83
    add e                                         ; $7063: $83
    adc e                                         ; $7064: $8b
    adc e                                         ; $7065: $8b
    add e                                         ; $7066: $83
    add e                                         ; $7067: $83
    ld a, e                                       ; $7068: $7b
    ld a, h                                       ; $7069: $7c
    ld a, l                                       ; $706a: $7d
    ld a, [hl]                                    ; $706b: $7e
    ld a, a                                       ; $706c: $7f
    add b                                         ; $706d: $80
    add c                                         ; $706e: $81
    add d                                         ; $706f: $82
    add e                                         ; $7070: $83
    add h                                         ; $7071: $84
    add l                                         ; $7072: $85
    add [hl]                                      ; $7073: $86
    add a                                         ; $7074: $87
    adc b                                         ; $7075: $88
    adc c                                         ; $7076: $89
    adc d                                         ; $7077: $8a
    add e                                         ; $7078: $83
    add e                                         ; $7079: $83
    add e                                         ; $707a: $83
    add e                                         ; $707b: $83
    add e                                         ; $707c: $83
    adc e                                         ; $707d: $8b
    adc e                                         ; $707e: $8b
    adc e                                         ; $707f: $8b
    adc e                                         ; $7080: $8b
    adc e                                         ; $7081: $8b
    adc l                                         ; $7082: $8d
    adc e                                         ; $7083: $8b
    adc e                                         ; $7084: $8b
    adc e                                         ; $7085: $8b
    adc l                                         ; $7086: $8d
    adc e                                         ; $7087: $8b
    adc e                                         ; $7088: $8b
    adc h                                         ; $7089: $8c
    adc l                                         ; $708a: $8d
    adc [hl]                                      ; $708b: $8e
    adc a                                         ; $708c: $8f
    sub b                                         ; $708d: $90
    sub c                                         ; $708e: $91
    sub d                                         ; $708f: $92
    sub e                                         ; $7090: $93
    sub h                                         ; $7091: $94
    sub l                                         ; $7092: $95
    sub [hl]                                      ; $7093: $96
    sub a                                         ; $7094: $97
    sbc b                                         ; $7095: $98
    sbc c                                         ; $7096: $99
    rst $28                                       ; $7097: $ef
    adc e                                         ; $7098: $8b
    adc e                                         ; $7099: $8b
    adc e                                         ; $709a: $8b
    adc e                                         ; $709b: $8b
    adc e                                         ; $709c: $8b
    adc e                                         ; $709d: $8b
    adc e                                         ; $709e: $8b
    adc e                                         ; $709f: $8b
    adc l                                         ; $70a0: $8d
    adc l                                         ; $70a1: $8d
    adc e                                         ; $70a2: $8b
    adc e                                         ; $70a3: $8b
    adc l                                         ; $70a4: $8d
    adc e                                         ; $70a5: $8b
    adc e                                         ; $70a6: $8b
    adc e                                         ; $70a7: $8b
    or h                                          ; $70a8: $b4
    or l                                          ; $70a9: $b5
    ldh a, [$f1]                                  ; $70aa: $f0 $f1
    cp b                                          ; $70ac: $b8
    ld a, [c]                                     ; $70ad: $f2
    di                                            ; $70ae: $f3
    db $f4                                        ; $70af: $f4
    push af                                       ; $70b0: $f5
    or $f7                                        ; $70b1: $f6 $f7
    di                                            ; $70b3: $f3
    ld hl, sp-$0d                                 ; $70b4: $f8 $f3
    di                                            ; $70b6: $f3
    di                                            ; $70b7: $f3
    adc e                                         ; $70b8: $8b
    adc e                                         ; $70b9: $8b
    adc e                                         ; $70ba: $8b
    adc e                                         ; $70bb: $8b
    adc e                                         ; $70bc: $8b
    adc e                                         ; $70bd: $8b
    adc e                                         ; $70be: $8b
    adc l                                         ; $70bf: $8d
    adc e                                         ; $70c0: $8b
    adc l                                         ; $70c1: $8d
    adc e                                         ; $70c2: $8b
    add e                                         ; $70c3: $83
    adc e                                         ; $70c4: $8b
    add l                                         ; $70c5: $85
    add e                                         ; $70c6: $83
    add e                                         ; $70c7: $83
    ld sp, hl                                     ; $70c8: $f9
    ld a, [$fcfb]                                 ; $70c9: $fa $fb $fc
    di                                            ; $70cc: $f3
    di                                            ; $70cd: $f3
    di                                            ; $70ce: $f3
    di                                            ; $70cf: $f3
    di                                            ; $70d0: $f3
    di                                            ; $70d1: $f3
    di                                            ; $70d2: $f3
    di                                            ; $70d3: $f3
    di                                            ; $70d4: $f3
    di                                            ; $70d5: $f3
    di                                            ; $70d6: $f3
    di                                            ; $70d7: $f3
    adc e                                         ; $70d8: $8b
    adc e                                         ; $70d9: $8b
    adc l                                         ; $70da: $8d
    adc e                                         ; $70db: $8b
    add l                                         ; $70dc: $85
    add l                                         ; $70dd: $85
    add e                                         ; $70de: $83
    add e                                         ; $70df: $83
    add l                                         ; $70e0: $85
    add e                                         ; $70e1: $83
    add e                                         ; $70e2: $83
    add e                                         ; $70e3: $83
    add l                                         ; $70e4: $85
    add e                                         ; $70e5: $83
    add e                                         ; $70e6: $83
    add e                                         ; $70e7: $83
    db $fd                                        ; $70e8: $fd
    cp $ff                                        ; $70e9: $fe $ff
    nop                                           ; $70eb: $00
    di                                            ; $70ec: $f3
    di                                            ; $70ed: $f3
    di                                            ; $70ee: $f3
    ld bc, $f3f3                                  ; $70ef: $01 $f3 $f3
    ld [bc], a                                    ; $70f2: $02
    inc bc                                        ; $70f3: $03
    di                                            ; $70f4: $f3
    di                                            ; $70f5: $f3
    di                                            ; $70f6: $f3
    di                                            ; $70f7: $f3
    adc e                                         ; $70f8: $8b
    adc e                                         ; $70f9: $8b
    adc e                                         ; $70fa: $8b
    adc e                                         ; $70fb: $8b
    add e                                         ; $70fc: $83
    add e                                         ; $70fd: $83
    add e                                         ; $70fe: $83
    adc l                                         ; $70ff: $8d
    add e                                         ; $7100: $83
    add e                                         ; $7101: $83
    adc l                                         ; $7102: $8d
    adc l                                         ; $7103: $8d
    add e                                         ; $7104: $83
    add e                                         ; $7105: $83
    add l                                         ; $7106: $85
    add e                                         ; $7107: $83
    inc b                                         ; $7108: $04
    dec b                                         ; $7109: $05
    ld b, $07                                     ; $710a: $06 $07
    ld [$0a09], sp                                ; $710c: $08 $09 $0a
    dec bc                                        ; $710f: $0b
    inc c                                         ; $7110: $0c
    dec c                                         ; $7111: $0d
    ld c, $0f                                     ; $7112: $0e $0f
    di                                            ; $7114: $f3
    di                                            ; $7115: $f3
    di                                            ; $7116: $f3
    di                                            ; $7117: $f3
    adc l                                         ; $7118: $8d
    adc l                                         ; $7119: $8d
    adc l                                         ; $711a: $8d
    adc l                                         ; $711b: $8d
    adc l                                         ; $711c: $8d
    adc l                                         ; $711d: $8d
    adc e                                         ; $711e: $8b
    adc l                                         ; $711f: $8d
    adc e                                         ; $7120: $8b
    adc e                                         ; $7121: $8b
    adc e                                         ; $7122: $8b
    adc e                                         ; $7123: $8b
    add e                                         ; $7124: $83
    add e                                         ; $7125: $83
    add e                                         ; $7126: $83
    add e                                         ; $7127: $83
    db $10                                        ; $7128: $10
    ld de, $1312                                  ; $7129: $11 $12 $13
    inc d                                         ; $712c: $14
    dec d                                         ; $712d: $15
    ld d, $17                                     ; $712e: $16 $17
    jr jr_07c_714b                                ; $7130: $18 $19

    ld a, [de]                                    ; $7132: $1a
    di                                            ; $7133: $f3
    di                                            ; $7134: $f3
    di                                            ; $7135: $f3
    di                                            ; $7136: $f3
    di                                            ; $7137: $f3
    adc e                                         ; $7138: $8b
    adc e                                         ; $7139: $8b
    adc e                                         ; $713a: $8b
    adc l                                         ; $713b: $8d
    adc e                                         ; $713c: $8b
    adc e                                         ; $713d: $8b
    adc e                                         ; $713e: $8b
    adc l                                         ; $713f: $8d
    adc e                                         ; $7140: $8b
    adc e                                         ; $7141: $8b
    adc e                                         ; $7142: $8b
    add e                                         ; $7143: $83
    add e                                         ; $7144: $83
    add e                                         ; $7145: $83
    add e                                         ; $7146: $83
    add e                                         ; $7147: $83
    dec de                                        ; $7148: $1b
    inc e                                         ; $7149: $1c
    dec e                                         ; $714a: $1d

jr_07c_714b:
    ld e, $1f                                     ; $714b: $1e $1f
    jr nz, jr_07c_7170                            ; $714d: $20 $21

    ld [hl+], a                                   ; $714f: $22
    inc hl                                        ; $7150: $23
    inc h                                         ; $7151: $24
    dec h                                         ; $7152: $25
    ld h, $f3                                     ; $7153: $26 $f3
    daa                                           ; $7155: $27
    jr z, jr_07c_7181                             ; $7156: $28 $29

    adc l                                         ; $7158: $8d
    adc e                                         ; $7159: $8b
    adc e                                         ; $715a: $8b
    adc l                                         ; $715b: $8d
    adc l                                         ; $715c: $8d
    adc l                                         ; $715d: $8d
    adc e                                         ; $715e: $8b
    adc l                                         ; $715f: $8d
    adc l                                         ; $7160: $8d
    adc e                                         ; $7161: $8b
    adc e                                         ; $7162: $8b
    adc e                                         ; $7163: $8b
    add e                                         ; $7164: $83
    adc l                                         ; $7165: $8d
    adc e                                         ; $7166: $8b
    adc e                                         ; $7167: $8b
    ld a, [hl+]                                   ; $7168: $2a
    dec hl                                        ; $7169: $2b
    inc l                                         ; $716a: $2c
    dec l                                         ; $716b: $2d
    ld l, $2f                                     ; $716c: $2e $2f
    jr nc, jr_07c_71a1                            ; $716e: $30 $31

jr_07c_7170:
    ld [hl-], a                                   ; $7170: $32
    inc sp                                        ; $7171: $33
    inc [hl]                                      ; $7172: $34
    dec [hl]                                      ; $7173: $35
    di                                            ; $7174: $f3
    di                                            ; $7175: $f3
    di                                            ; $7176: $f3
    ld [hl], $8b                                  ; $7177: $36 $8b
    adc e                                         ; $7179: $8b
    adc e                                         ; $717a: $8b
    adc e                                         ; $717b: $8b
    adc e                                         ; $717c: $8b
    adc e                                         ; $717d: $8b
    adc e                                         ; $717e: $8b
    adc l                                         ; $717f: $8d
    adc l                                         ; $7180: $8d

jr_07c_7181:
    adc l                                         ; $7181: $8d
    adc e                                         ; $7182: $8b
    adc e                                         ; $7183: $8b
    add e                                         ; $7184: $83
    add l                                         ; $7185: $85
    add l                                         ; $7186: $85
    adc l                                         ; $7187: $8d
    scf                                           ; $7188: $37
    ld e, d                                       ; $7189: $5a
    jr c, jr_07c_71c5                             ; $718a: $38 $39

    ld a, [hl-]                                   ; $718c: $3a
    dec sp                                        ; $718d: $3b
    inc a                                         ; $718e: $3c
    dec a                                         ; $718f: $3d
    ld a, $3f                                     ; $7190: $3e $3f
    ld b, b                                       ; $7192: $40
    ld b, c                                       ; $7193: $41
    di                                            ; $7194: $f3
    di                                            ; $7195: $f3
    ld b, d                                       ; $7196: $42
    ld b, e                                       ; $7197: $43
    adc e                                         ; $7198: $8b
    ld [bc], a                                    ; $7199: $02
    adc e                                         ; $719a: $8b
    adc e                                         ; $719b: $8b
    adc e                                         ; $719c: $8b
    adc e                                         ; $719d: $8b
    adc e                                         ; $719e: $8b
    adc e                                         ; $719f: $8b
    adc l                                         ; $71a0: $8d

jr_07c_71a1:
    adc e                                         ; $71a1: $8b
    adc e                                         ; $71a2: $8b
    adc e                                         ; $71a3: $8b
    add e                                         ; $71a4: $83
    add e                                         ; $71a5: $83
    adc e                                         ; $71a6: $8b
    adc l                                         ; $71a7: $8d
    ld b, h                                       ; $71a8: $44
    ld b, l                                       ; $71a9: $45
    ld b, [hl]                                    ; $71aa: $46
    ld b, a                                       ; $71ab: $47
    ld c, b                                       ; $71ac: $48
    ld c, c                                       ; $71ad: $49
    ld c, d                                       ; $71ae: $4a
    ld c, e                                       ; $71af: $4b
    ld c, h                                       ; $71b0: $4c
    ld c, l                                       ; $71b1: $4d
    ld c, [hl]                                    ; $71b2: $4e
    ld c, a                                       ; $71b3: $4f
    di                                            ; $71b4: $f3
    di                                            ; $71b5: $f3
    ld d, b                                       ; $71b6: $50
    ld d, c                                       ; $71b7: $51
    adc e                                         ; $71b8: $8b
    adc e                                         ; $71b9: $8b
    dec bc                                        ; $71ba: $0b
    adc e                                         ; $71bb: $8b
    adc e                                         ; $71bc: $8b
    adc e                                         ; $71bd: $8b
    adc e                                         ; $71be: $8b
    adc l                                         ; $71bf: $8d
    adc e                                         ; $71c0: $8b
    adc e                                         ; $71c1: $8b
    adc l                                         ; $71c2: $8d
    adc l                                         ; $71c3: $8d
    add e                                         ; $71c4: $83

jr_07c_71c5:
    add l                                         ; $71c5: $85
    adc e                                         ; $71c6: $8b
    adc e                                         ; $71c7: $8b
    ld d, d                                       ; $71c8: $52
    ld d, e                                       ; $71c9: $53
    ld d, h                                       ; $71ca: $54
    ld d, l                                       ; $71cb: $55
    ld d, [hl]                                    ; $71cc: $56
    ld d, a                                       ; $71cd: $57
    ld e, b                                       ; $71ce: $58
    ld e, c                                       ; $71cf: $59
    ld e, d                                       ; $71d0: $5a

Jump_07c_71d1:
    ld e, e                                       ; $71d1: $5b
    ld e, h                                       ; $71d2: $5c
    ld e, l                                       ; $71d3: $5d
    di                                            ; $71d4: $f3
    di                                            ; $71d5: $f3
    di                                            ; $71d6: $f3
    di                                            ; $71d7: $f3
    adc l                                         ; $71d8: $8d
    adc e                                         ; $71d9: $8b
    adc l                                         ; $71da: $8d
    adc e                                         ; $71db: $8b
    adc l                                         ; $71dc: $8d
    adc e                                         ; $71dd: $8b
    adc e                                         ; $71de: $8b
    adc l                                         ; $71df: $8d
    adc e                                         ; $71e0: $8b
    adc e                                         ; $71e1: $8b
    adc e                                         ; $71e2: $8b
    adc e                                         ; $71e3: $8b
    add e                                         ; $71e4: $83
    add e                                         ; $71e5: $83
    add e                                         ; $71e6: $83
    add e                                         ; $71e7: $83
    ld e, [hl]                                    ; $71e8: $5e
    ld e, a                                       ; $71e9: $5f
    ld h, b                                       ; $71ea: $60
    ld h, c                                       ; $71eb: $61
    ld h, d                                       ; $71ec: $62
    ld h, e                                       ; $71ed: $63
    ld h, h                                       ; $71ee: $64
    ld h, l                                       ; $71ef: $65
    ld h, [hl]                                    ; $71f0: $66
    ld h, a                                       ; $71f1: $67
    ld l, b                                       ; $71f2: $68
    ld l, c                                       ; $71f3: $69
    di                                            ; $71f4: $f3
    di                                            ; $71f5: $f3
    ld l, d                                       ; $71f6: $6a
    ld l, e                                       ; $71f7: $6b
    adc e                                         ; $71f8: $8b
    adc e                                         ; $71f9: $8b
    adc l                                         ; $71fa: $8d
    adc e                                         ; $71fb: $8b
    adc l                                         ; $71fc: $8d
    adc l                                         ; $71fd: $8d
    adc l                                         ; $71fe: $8d
    adc e                                         ; $71ff: $8b
    adc e                                         ; $7200: $8b
    adc l                                         ; $7201: $8d
    adc l                                         ; $7202: $8d
    adc l                                         ; $7203: $8d
    add e                                         ; $7204: $83
    add e                                         ; $7205: $83
    adc e                                         ; $7206: $8b
    adc e                                         ; $7207: $8b
    ld l, h                                       ; $7208: $6c
    ld l, l                                       ; $7209: $6d
    ld l, [hl]                                    ; $720a: $6e
    nop                                           ; $720b: $00
    ld l, a                                       ; $720c: $6f
    ld [hl], b                                    ; $720d: $70
    ld [hl], c                                    ; $720e: $71
    ld bc, $7372                                  ; $720f: $01 $72 $73
    ld [bc], a                                    ; $7212: $02
    inc bc                                        ; $7213: $03
    di                                            ; $7214: $f3
    di                                            ; $7215: $f3
    di                                            ; $7216: $f3
    di                                            ; $7217: $f3
    adc e                                         ; $7218: $8b
    adc e                                         ; $7219: $8b
    adc e                                         ; $721a: $8b
    adc e                                         ; $721b: $8b
    adc e                                         ; $721c: $8b
    adc e                                         ; $721d: $8b
    adc e                                         ; $721e: $8b
    adc l                                         ; $721f: $8d
    adc e                                         ; $7220: $8b
    adc e                                         ; $7221: $8b
    adc e                                         ; $7222: $8b
    adc l                                         ; $7223: $8d
    add e                                         ; $7224: $83
    add e                                         ; $7225: $83
    add e                                         ; $7226: $83
    add e                                         ; $7227: $83
    inc b                                         ; $7228: $04
    dec b                                         ; $7229: $05
    ld b, $07                                     ; $722a: $06 $07
    ld [$0a09], sp                                ; $722c: $08 $09 $0a
    dec bc                                        ; $722f: $0b
    inc c                                         ; $7230: $0c
    dec c                                         ; $7231: $0d
    ld c, $0f                                     ; $7232: $0e $0f
    di                                            ; $7234: $f3
    di                                            ; $7235: $f3
    di                                            ; $7236: $f3
    di                                            ; $7237: $f3
    adc l                                         ; $7238: $8d
    adc e                                         ; $7239: $8b
    adc e                                         ; $723a: $8b
    adc l                                         ; $723b: $8d
    adc e                                         ; $723c: $8b
    adc e                                         ; $723d: $8b
    adc e                                         ; $723e: $8b
    adc l                                         ; $723f: $8d
    adc e                                         ; $7240: $8b
    adc e                                         ; $7241: $8b
    adc e                                         ; $7242: $8b
    adc l                                         ; $7243: $8d
    add e                                         ; $7244: $83
    add e                                         ; $7245: $83
    add e                                         ; $7246: $83
    add l                                         ; $7247: $85
    db $10                                        ; $7248: $10
    ld de, $1312                                  ; $7249: $11 $12 $13
    inc d                                         ; $724c: $14
    dec d                                         ; $724d: $15
    ld d, $17                                     ; $724e: $16 $17
    jr jr_07c_726b                                ; $7250: $18 $19

    ld a, [de]                                    ; $7252: $1a
    di                                            ; $7253: $f3
    di                                            ; $7254: $f3
    di                                            ; $7255: $f3
    di                                            ; $7256: $f3
    di                                            ; $7257: $f3
    adc l                                         ; $7258: $8d
    adc l                                         ; $7259: $8d
    adc e                                         ; $725a: $8b
    adc e                                         ; $725b: $8b
    adc l                                         ; $725c: $8d
    adc e                                         ; $725d: $8b
    adc e                                         ; $725e: $8b
    adc e                                         ; $725f: $8b
    adc e                                         ; $7260: $8b
    adc e                                         ; $7261: $8b
    adc e                                         ; $7262: $8b
    add e                                         ; $7263: $83
    add e                                         ; $7264: $83
    add e                                         ; $7265: $83
    add e                                         ; $7266: $83
    add e                                         ; $7267: $83
    dec de                                        ; $7268: $1b
    inc e                                         ; $7269: $1c
    dec e                                         ; $726a: $1d

jr_07c_726b:
    ld e, $1f                                     ; $726b: $1e $1f
    jr nz, jr_07c_7290                            ; $726d: $20 $21

    ld [hl+], a                                   ; $726f: $22
    inc hl                                        ; $7270: $23
    inc h                                         ; $7271: $24
    dec h                                         ; $7272: $25
    ld h, $f3                                     ; $7273: $26 $f3
    daa                                           ; $7275: $27
    jr z, jr_07c_72a1                             ; $7276: $28 $29

    adc e                                         ; $7278: $8b
    adc e                                         ; $7279: $8b
    adc l                                         ; $727a: $8d
    adc e                                         ; $727b: $8b
    adc e                                         ; $727c: $8b
    adc e                                         ; $727d: $8b
    adc e                                         ; $727e: $8b
    adc l                                         ; $727f: $8d
    adc e                                         ; $7280: $8b
    adc e                                         ; $7281: $8b
    adc e                                         ; $7282: $8b
    adc e                                         ; $7283: $8b
    add e                                         ; $7284: $83
    adc e                                         ; $7285: $8b
    adc e                                         ; $7286: $8b
    adc e                                         ; $7287: $8b
    ld e, [hl]                                    ; $7288: $5e
    ld e, a                                       ; $7289: $5f
    ld h, b                                       ; $728a: $60
    ld h, c                                       ; $728b: $61
    ld [hl], h                                    ; $728c: $74
    ld h, e                                       ; $728d: $63
    ld h, h                                       ; $728e: $64
    ld h, l                                       ; $728f: $65

jr_07c_7290:
    ld h, [hl]                                    ; $7290: $66
    ld h, a                                       ; $7291: $67
    ld l, b                                       ; $7292: $68
    ld l, c                                       ; $7293: $69
    di                                            ; $7294: $f3
    di                                            ; $7295: $f3
    ld l, d                                       ; $7296: $6a
    ld l, e                                       ; $7297: $6b
    adc e                                         ; $7298: $8b
    adc e                                         ; $7299: $8b
    adc e                                         ; $729a: $8b
    adc e                                         ; $729b: $8b
    adc e                                         ; $729c: $8b
    adc e                                         ; $729d: $8b
    adc e                                         ; $729e: $8b
    adc e                                         ; $729f: $8b
    adc l                                         ; $72a0: $8d

jr_07c_72a1:
    adc e                                         ; $72a1: $8b
    adc e                                         ; $72a2: $8b
    adc e                                         ; $72a3: $8b
    add l                                         ; $72a4: $85
    add l                                         ; $72a5: $85
    adc e                                         ; $72a6: $8b
    adc e                                         ; $72a7: $8b
    ld l, h                                       ; $72a8: $6c
    ld l, l                                       ; $72a9: $6d
    ld l, [hl]                                    ; $72aa: $6e
    nop                                           ; $72ab: $00
    ld l, a                                       ; $72ac: $6f
    ld [hl], b                                    ; $72ad: $70
    ld [hl], c                                    ; $72ae: $71
    ld bc, $7372                                  ; $72af: $01 $72 $73
    ld [bc], a                                    ; $72b2: $02
    inc bc                                        ; $72b3: $03
    di                                            ; $72b4: $f3
    di                                            ; $72b5: $f3
    di                                            ; $72b6: $f3
    di                                            ; $72b7: $f3
    adc l                                         ; $72b8: $8d
    adc e                                         ; $72b9: $8b
    adc e                                         ; $72ba: $8b
    adc e                                         ; $72bb: $8b
    adc e                                         ; $72bc: $8b
    adc l                                         ; $72bd: $8d
    adc e                                         ; $72be: $8b
    adc e                                         ; $72bf: $8b
    adc e                                         ; $72c0: $8b
    adc e                                         ; $72c1: $8b
    adc l                                         ; $72c2: $8d
    adc l                                         ; $72c3: $8d
    add e                                         ; $72c4: $83
    add e                                         ; $72c5: $83
    add e                                         ; $72c6: $83
    add l                                         ; $72c7: $85
    inc b                                         ; $72c8: $04
    dec b                                         ; $72c9: $05
    ld b, $07                                     ; $72ca: $06 $07
    ld [$0a09], sp                                ; $72cc: $08 $09 $0a
    dec bc                                        ; $72cf: $0b
    inc c                                         ; $72d0: $0c
    dec c                                         ; $72d1: $0d
    ld c, $0f                                     ; $72d2: $0e $0f
    di                                            ; $72d4: $f3
    di                                            ; $72d5: $f3
    di                                            ; $72d6: $f3
    di                                            ; $72d7: $f3
    adc e                                         ; $72d8: $8b
    adc l                                         ; $72d9: $8d
    adc l                                         ; $72da: $8d
    adc e                                         ; $72db: $8b
    adc e                                         ; $72dc: $8b
    adc e                                         ; $72dd: $8b
    adc l                                         ; $72de: $8d
    adc l                                         ; $72df: $8d
    adc e                                         ; $72e0: $8b
    adc e                                         ; $72e1: $8b
    adc e                                         ; $72e2: $8b
    adc l                                         ; $72e3: $8d
    add e                                         ; $72e4: $83
    add e                                         ; $72e5: $83
    add e                                         ; $72e6: $83
    add e                                         ; $72e7: $83
    db $10                                        ; $72e8: $10
    ld de, $1312                                  ; $72e9: $11 $12 $13
    inc d                                         ; $72ec: $14
    dec d                                         ; $72ed: $15
    ld d, $17                                     ; $72ee: $16 $17
    jr jr_07c_730b                                ; $72f0: $18 $19

    ld a, [de]                                    ; $72f2: $1a
    di                                            ; $72f3: $f3
    di                                            ; $72f4: $f3
    di                                            ; $72f5: $f3
    di                                            ; $72f6: $f3
    di                                            ; $72f7: $f3
    adc e                                         ; $72f8: $8b
    adc e                                         ; $72f9: $8b
    adc e                                         ; $72fa: $8b
    adc e                                         ; $72fb: $8b
    adc e                                         ; $72fc: $8b
    adc e                                         ; $72fd: $8b
    adc e                                         ; $72fe: $8b
    adc e                                         ; $72ff: $8b
    adc l                                         ; $7300: $8d
    adc e                                         ; $7301: $8b
    adc e                                         ; $7302: $8b
    add e                                         ; $7303: $83
    add e                                         ; $7304: $83
    add e                                         ; $7305: $83
    add e                                         ; $7306: $83
    add e                                         ; $7307: $83
    dec de                                        ; $7308: $1b
    inc e                                         ; $7309: $1c
    dec e                                         ; $730a: $1d

jr_07c_730b:
    ld e, $1f                                     ; $730b: $1e $1f
    jr nz, jr_07c_7330                            ; $730d: $20 $21

    ld [hl+], a                                   ; $730f: $22
    inc hl                                        ; $7310: $23
    inc h                                         ; $7311: $24
    dec h                                         ; $7312: $25
    ld h, $f3                                     ; $7313: $26 $f3
    daa                                           ; $7315: $27
    jr z, jr_07c_7341                             ; $7316: $28 $29

    adc l                                         ; $7318: $8d
    adc e                                         ; $7319: $8b
    adc e                                         ; $731a: $8b
    adc l                                         ; $731b: $8d
    adc l                                         ; $731c: $8d
    adc l                                         ; $731d: $8d
    adc e                                         ; $731e: $8b
    adc l                                         ; $731f: $8d
    adc e                                         ; $7320: $8b
    adc l                                         ; $7321: $8d
    adc l                                         ; $7322: $8d
    adc e                                         ; $7323: $8b
    add e                                         ; $7324: $83
    adc e                                         ; $7325: $8b
    adc e                                         ; $7326: $8b
    adc l                                         ; $7327: $8d
    ld e, [hl]                                    ; $7328: $5e
    ld e, a                                       ; $7329: $5f
    ld h, b                                       ; $732a: $60
    ld h, c                                       ; $732b: $61
    ld [hl], h                                    ; $732c: $74
    ld h, e                                       ; $732d: $63
    ld h, h                                       ; $732e: $64
    ld h, l                                       ; $732f: $65

jr_07c_7330:
    ld h, [hl]                                    ; $7330: $66
    ld h, a                                       ; $7331: $67
    ld l, b                                       ; $7332: $68
    ld l, c                                       ; $7333: $69
    di                                            ; $7334: $f3
    di                                            ; $7335: $f3
    ld l, d                                       ; $7336: $6a
    ld l, e                                       ; $7337: $6b
    adc e                                         ; $7338: $8b
    adc e                                         ; $7339: $8b
    adc e                                         ; $733a: $8b
    adc e                                         ; $733b: $8b
    adc l                                         ; $733c: $8d
    adc e                                         ; $733d: $8b
    adc e                                         ; $733e: $8b
    adc e                                         ; $733f: $8b
    adc l                                         ; $7340: $8d

jr_07c_7341:
    adc l                                         ; $7341: $8d
    adc e                                         ; $7342: $8b
    adc e                                         ; $7343: $8b
    add e                                         ; $7344: $83
    add l                                         ; $7345: $85
    adc e                                         ; $7346: $8b
    adc e                                         ; $7347: $8b
    ld l, h                                       ; $7348: $6c
    ld l, l                                       ; $7349: $6d
    ld l, [hl]                                    ; $734a: $6e
    nop                                           ; $734b: $00
    ld l, a                                       ; $734c: $6f
    ld [hl], b                                    ; $734d: $70
    ld [hl], c                                    ; $734e: $71
    ld bc, $7372                                  ; $734f: $01 $72 $73
    ld [bc], a                                    ; $7352: $02
    inc bc                                        ; $7353: $03
    di                                            ; $7354: $f3
    di                                            ; $7355: $f3
    di                                            ; $7356: $f3
    di                                            ; $7357: $f3
    adc e                                         ; $7358: $8b
    adc e                                         ; $7359: $8b
    adc e                                         ; $735a: $8b
    adc e                                         ; $735b: $8b
    adc e                                         ; $735c: $8b
    adc e                                         ; $735d: $8b
    adc e                                         ; $735e: $8b
    adc e                                         ; $735f: $8b
    adc e                                         ; $7360: $8b
    adc e                                         ; $7361: $8b
    adc e                                         ; $7362: $8b
    adc e                                         ; $7363: $8b
    add e                                         ; $7364: $83
    add e                                         ; $7365: $83
    add e                                         ; $7366: $83
    add e                                         ; $7367: $83
    inc b                                         ; $7368: $04
    dec b                                         ; $7369: $05
    ld b, $07                                     ; $736a: $06 $07
    ld [$0a09], sp                                ; $736c: $08 $09 $0a
    dec bc                                        ; $736f: $0b
    inc c                                         ; $7370: $0c
    dec c                                         ; $7371: $0d
    ld c, $0f                                     ; $7372: $0e $0f
    di                                            ; $7374: $f3
    di                                            ; $7375: $f3
    di                                            ; $7376: $f3
    di                                            ; $7377: $f3
    adc e                                         ; $7378: $8b
    adc e                                         ; $7379: $8b
    adc e                                         ; $737a: $8b
    adc l                                         ; $737b: $8d
    adc e                                         ; $737c: $8b
    adc e                                         ; $737d: $8b
    adc e                                         ; $737e: $8b
    adc l                                         ; $737f: $8d
    adc e                                         ; $7380: $8b
    adc e                                         ; $7381: $8b
    adc e                                         ; $7382: $8b
    adc e                                         ; $7383: $8b
    add e                                         ; $7384: $83
    add e                                         ; $7385: $83
    add e                                         ; $7386: $83
    add e                                         ; $7387: $83
    db $10                                        ; $7388: $10
    ld [hl], l                                    ; $7389: $75
    halt                                          ; $738a: $76
    ld [hl], a                                    ; $738b: $77
    ld a, b                                       ; $738c: $78
    di                                            ; $738d: $f3
    di                                            ; $738e: $f3
    di                                            ; $738f: $f3
    ld a, c                                       ; $7390: $79
    di                                            ; $7391: $f3
    di                                            ; $7392: $f3
    di                                            ; $7393: $f3
    di                                            ; $7394: $f3
    di                                            ; $7395: $f3
    di                                            ; $7396: $f3
    di                                            ; $7397: $f3
    adc l                                         ; $7398: $8d
    adc e                                         ; $7399: $8b
    adc e                                         ; $739a: $8b
    adc e                                         ; $739b: $8b
    adc l                                         ; $739c: $8d
    add e                                         ; $739d: $83
    add l                                         ; $739e: $85
    add l                                         ; $739f: $85
    adc l                                         ; $73a0: $8d
    add e                                         ; $73a1: $83
    add l                                         ; $73a2: $85
    add l                                         ; $73a3: $85
    add e                                         ; $73a4: $83
    add e                                         ; $73a5: $83
    add e                                         ; $73a6: $83
    add e                                         ; $73a7: $83
    ld a, d                                       ; $73a8: $7a
    di                                            ; $73a9: $f3
    di                                            ; $73aa: $f3
    di                                            ; $73ab: $f3
    di                                            ; $73ac: $f3
    di                                            ; $73ad: $f3
    di                                            ; $73ae: $f3
    di                                            ; $73af: $f3
    di                                            ; $73b0: $f3
    di                                            ; $73b1: $f3
    di                                            ; $73b2: $f3
    di                                            ; $73b3: $f3
    di                                            ; $73b4: $f3
    di                                            ; $73b5: $f3
    di                                            ; $73b6: $f3
    di                                            ; $73b7: $f3
    adc l                                         ; $73b8: $8d
    add e                                         ; $73b9: $83
    add l                                         ; $73ba: $85
    add l                                         ; $73bb: $85
    add e                                         ; $73bc: $83
    add l                                         ; $73bd: $85
    add e                                         ; $73be: $83
    add e                                         ; $73bf: $83
    add l                                         ; $73c0: $85
    add e                                         ; $73c1: $83
    add e                                         ; $73c2: $83
    add e                                         ; $73c3: $83
    add e                                         ; $73c4: $83
    add e                                         ; $73c5: $83
    add e                                         ; $73c6: $83
    add e                                         ; $73c7: $83
    ld [$0700], sp                                ; $73c8: $08 $00 $07
    nop                                           ; $73cb: $00
    jr nz, jr_07c_73d3                            ; $73cc: $20 $05

    db $ed                                        ; $73ce: $ed
    db $ed                                        ; $73cf: $ed
    db $ed                                        ; $73d0: $ed

Jump_07c_73d1:
    db $ed                                        ; $73d1: $ed
    db $ed                                        ; $73d2: $ed

jr_07c_73d3:
    db $ed                                        ; $73d3: $ed
    db $ed                                        ; $73d4: $ed
    db $ed                                        ; $73d5: $ed
    db $ed                                        ; $73d6: $ed
    db $ed                                        ; $73d7: $ed
    db $ed                                        ; $73d8: $ed
    db $ed                                        ; $73d9: $ed
    db $ed                                        ; $73da: $ed
    db $ed                                        ; $73db: $ed
    db $ed                                        ; $73dc: $ed
    db $ed                                        ; $73dd: $ed
    add b                                         ; $73de: $80
    add b                                         ; $73df: $80
    add b                                         ; $73e0: $80
    add b                                         ; $73e1: $80
    add b                                         ; $73e2: $80
    add b                                         ; $73e3: $80
    add b                                         ; $73e4: $80
    add b                                         ; $73e5: $80
    add b                                         ; $73e6: $80
    add b                                         ; $73e7: $80
    add b                                         ; $73e8: $80
    add b                                         ; $73e9: $80
    add b                                         ; $73ea: $80
    add b                                         ; $73eb: $80
    add b                                         ; $73ec: $80
    add b                                         ; $73ed: $80
    db $ed                                        ; $73ee: $ed
    db $ed                                        ; $73ef: $ed
    db $ed                                        ; $73f0: $ed
    db $ed                                        ; $73f1: $ed
    db $ed                                        ; $73f2: $ed
    db $ed                                        ; $73f3: $ed
    db $ed                                        ; $73f4: $ed
    db $ed                                        ; $73f5: $ed
    db $ed                                        ; $73f6: $ed
    db $ed                                        ; $73f7: $ed
    db $ed                                        ; $73f8: $ed
    xor $ed                                       ; $73f9: $ee $ed
    db $ed                                        ; $73fb: $ed
    db $ed                                        ; $73fc: $ed
    rst $28                                       ; $73fd: $ef
    add b                                         ; $73fe: $80
    add b                                         ; $73ff: $80
    add b                                         ; $7400: $80
    add b                                         ; $7401: $80
    add b                                         ; $7402: $80
    add b                                         ; $7403: $80
    add b                                         ; $7404: $80
    add b                                         ; $7405: $80
    add b                                         ; $7406: $80
    add b                                         ; $7407: $80
    add b                                         ; $7408: $80
    add b                                         ; $7409: $80
    add b                                         ; $740a: $80
    add b                                         ; $740b: $80
    add b                                         ; $740c: $80
    add b                                         ; $740d: $80
    db $ed                                        ; $740e: $ed
    db $ed                                        ; $740f: $ed
    db $ed                                        ; $7410: $ed
    db $ed                                        ; $7411: $ed
    db $ed                                        ; $7412: $ed
    db $ed                                        ; $7413: $ed
    db $ed                                        ; $7414: $ed
    db $ed                                        ; $7415: $ed
    ldh a, [$f0]                                  ; $7416: $f0 $f0
    ldh a, [$f0]                                  ; $7418: $f0 $f0
    pop af                                        ; $741a: $f1
    ld a, [c]                                     ; $741b: $f2
    di                                            ; $741c: $f3
    db $f4                                        ; $741d: $f4
    add b                                         ; $741e: $80
    add b                                         ; $741f: $80
    add b                                         ; $7420: $80
    add b                                         ; $7421: $80
    add b                                         ; $7422: $80
    add b                                         ; $7423: $80
    add b                                         ; $7424: $80
    add b                                         ; $7425: $80
    add b                                         ; $7426: $80
    add b                                         ; $7427: $80
    add b                                         ; $7428: $80
    add b                                         ; $7429: $80
    inc b                                         ; $742a: $04
    inc b                                         ; $742b: $04
    ld bc, $ed04                                  ; $742c: $01 $04 $ed
    db $ed                                        ; $742f: $ed
    db $ed                                        ; $7430: $ed
    db $ed                                        ; $7431: $ed
    db $ed                                        ; $7432: $ed
    db $ed                                        ; $7433: $ed
    db $ed                                        ; $7434: $ed
    db $ed                                        ; $7435: $ed
    ldh a, [$f0]                                  ; $7436: $f0 $f0
    ldh a, [$f0]                                  ; $7438: $f0 $f0
    push af                                       ; $743a: $f5
    or $f7                                        ; $743b: $f6 $f7
    ld hl, sp-$80                                 ; $743d: $f8 $80
    add b                                         ; $743f: $80
    add b                                         ; $7440: $80
    add b                                         ; $7441: $80
    add b                                         ; $7442: $80
    add b                                         ; $7443: $80
    add b                                         ; $7444: $80
    add b                                         ; $7445: $80
    add b                                         ; $7446: $80
    add b                                         ; $7447: $80
    add b                                         ; $7448: $80
    add b                                         ; $7449: $80
    ld bc, $0404                                  ; $744a: $01 $04 $04
    ld bc, $eded                                  ; $744d: $01 $ed $ed
    db $ed                                        ; $7450: $ed
    db $ed                                        ; $7451: $ed
    db $ed                                        ; $7452: $ed
    db $ed                                        ; $7453: $ed
    db $ed                                        ; $7454: $ed
    db $ed                                        ; $7455: $ed
    ldh a, [$f0]                                  ; $7456: $f0 $f0
    ldh a, [$f0]                                  ; $7458: $f0 $f0
    ld sp, hl                                     ; $745a: $f9
    db $f4                                        ; $745b: $f4
    ld a, [$80fb]                                 ; $745c: $fa $fb $80
    add b                                         ; $745f: $80
    add b                                         ; $7460: $80
    add b                                         ; $7461: $80
    add b                                         ; $7462: $80
    add b                                         ; $7463: $80
    add b                                         ; $7464: $80
    add b                                         ; $7465: $80
    add b                                         ; $7466: $80
    add b                                         ; $7467: $80
    add b                                         ; $7468: $80
    add b                                         ; $7469: $80
    inc b                                         ; $746a: $04
    ld bc, $0101                                  ; $746b: $01 $01 $01
    db $ed                                        ; $746e: $ed
    db $ed                                        ; $746f: $ed
    db $ed                                        ; $7470: $ed
    rst $28                                       ; $7471: $ef
    db $ed                                        ; $7472: $ed
    db $ed                                        ; $7473: $ed
    db $ed                                        ; $7474: $ed
    rst $28                                       ; $7475: $ef
    db $ed                                        ; $7476: $ed
    db $ed                                        ; $7477: $ed
    db $ed                                        ; $7478: $ed
    rst $28                                       ; $7479: $ef
    db $ed                                        ; $747a: $ed
    db $ed                                        ; $747b: $ed
    db $ed                                        ; $747c: $ed
    rst $28                                       ; $747d: $ef
    add b                                         ; $747e: $80
    add b                                         ; $747f: $80
    add b                                         ; $7480: $80
    add b                                         ; $7481: $80
    add b                                         ; $7482: $80
    add b                                         ; $7483: $80
    add b                                         ; $7484: $80
    add b                                         ; $7485: $80
    add b                                         ; $7486: $80
    add b                                         ; $7487: $80
    add b                                         ; $7488: $80
    add b                                         ; $7489: $80
    add b                                         ; $748a: $80
    add b                                         ; $748b: $80
    add b                                         ; $748c: $80
    add b                                         ; $748d: $80
    db $fc                                        ; $748e: $fc
    db $fd                                        ; $748f: $fd
    cp $ff                                        ; $7490: $fe $ff
    nop                                           ; $7492: $00
    ld bc, $0302                                  ; $7493: $01 $02 $03
    inc b                                         ; $7496: $04
    dec b                                         ; $7497: $05
    ld b, $07                                     ; $7498: $06 $07
    ld [$0a09], sp                                ; $749a: $08 $09 $0a
    dec bc                                        ; $749d: $0b
    inc b                                         ; $749e: $04

jr_07c_749f:
    inc b                                         ; $749f: $04
    inc b                                         ; $74a0: $04
    ld bc, HeaderLogo                             ; $74a1: $01 $04 $01
    inc b                                         ; $74a4: $04
    ld bc, HeaderLogo                             ; $74a5: $01 $04 $01
    ld bc, $0404                                  ; $74a8: $01 $04 $04
    inc b                                         ; $74ab: $04
    ld bc, $0c01                                  ; $74ac: $01 $01 $0c
    dec c                                         ; $74af: $0d
    ld c, $0f                                     ; $74b0: $0e $0f
    db $10                                        ; $74b2: $10
    ld de, $1312                                  ; $74b3: $11 $12 $13
    inc d                                         ; $74b6: $14
    dec d                                         ; $74b7: $15
    ld d, $17                                     ; $74b8: $16 $17
    jr jr_07c_74d5                                ; $74ba: $18 $19

    ld a, [de]                                    ; $74bc: $1a
    dec de                                        ; $74bd: $1b
    ld bc, $0404                                  ; $74be: $01 $04 $04
    ld bc, HeaderLogo                             ; $74c1: $01 $04 $01
    ld bc, HeaderLogo                             ; $74c4: $01 $04 $01
    inc b                                         ; $74c7: $04
    inc b                                         ; $74c8: $04
    inc b                                         ; $74c9: $04
    inc b                                         ; $74ca: $04
    ld bc, HeaderLogo                             ; $74cb: $01 $04 $01
    inc e                                         ; $74ce: $1c
    dec e                                         ; $74cf: $1d
    ld e, $1f                                     ; $74d0: $1e $1f
    jr nz, jr_07c_74f5                            ; $74d2: $20 $21

    db $10                                        ; $74d4: $10

jr_07c_74d5:
    ld [hl+], a                                   ; $74d5: $22
    inc hl                                        ; $74d6: $23
    inc h                                         ; $74d7: $24
    dec h                                         ; $74d8: $25
    ld h, $27                                     ; $74d9: $26 $27
    jr z, jr_07c_7506                             ; $74db: $28 $29

    ld a, [hl+]                                   ; $74dd: $2a
    ld bc, HeaderLogo                             ; $74de: $01 $04 $01
    ld bc, HeaderLogo                             ; $74e1: $01 $04 $01
    ld bc, $0101                                  ; $74e4: $01 $01 $01
    inc b                                         ; $74e7: $04
    ld bc, $0101                                  ; $74e8: $01 $01 $01
    ld bc, $0401                                  ; $74eb: $01 $01 $04
    db $ed                                        ; $74ee: $ed
    db $ed                                        ; $74ef: $ed
    xor $f0                                       ; $74f0: $ee $f0
    db $ed                                        ; $74f2: $ed
    db $ed                                        ; $74f3: $ed
    rst $28                                       ; $74f4: $ef

jr_07c_74f5:
    dec hl                                        ; $74f5: $2b
    db $ed                                        ; $74f6: $ed
    db $ed                                        ; $74f7: $ed
    rst $28                                       ; $74f8: $ef
    inc l                                         ; $74f9: $2c
    db $ed                                        ; $74fa: $ed
    db $ed                                        ; $74fb: $ed
    rst $28                                       ; $74fc: $ef
    dec l                                         ; $74fd: $2d
    add b                                         ; $74fe: $80
    add b                                         ; $74ff: $80
    add b                                         ; $7500: $80
    add b                                         ; $7501: $80
    add b                                         ; $7502: $80
    add b                                         ; $7503: $80
    add b                                         ; $7504: $80
    inc b                                         ; $7505: $04

jr_07c_7506:
    add b                                         ; $7506: $80
    add b                                         ; $7507: $80
    add b                                         ; $7508: $80
    inc b                                         ; $7509: $04
    add b                                         ; $750a: $80
    add b                                         ; $750b: $80
    add b                                         ; $750c: $80
    inc b                                         ; $750d: $04
    ldh a, [$f0]                                  ; $750e: $f0 $f0
    ldh a, [$f0]                                  ; $7510: $f0 $f0
    ld l, $2f                                     ; $7512: $2e $2f
    jr nc, @+$33                                  ; $7514: $30 $31

    ld [hl-], a                                   ; $7516: $32
    inc sp                                        ; $7517: $33
    inc [hl]                                      ; $7518: $34
    dec [hl]                                      ; $7519: $35
    ld [hl], $37                                  ; $751a: $36 $37
    db $10                                        ; $751c: $10
    jr c, jr_07c_749f                             ; $751d: $38 $80

    add b                                         ; $751f: $80
    add b                                         ; $7520: $80
    add b                                         ; $7521: $80
    ld bc, $0401                                  ; $7522: $01 $01 $04
    ld bc, HeaderLogo                             ; $7525: $01 $04 $01
    ld bc, HeaderLogo                             ; $7528: $01 $04 $01
    ld bc, HeaderLogo                             ; $752b: $01 $04 $01
    ldh a, [$f0]                                  ; $752e: $f0 $f0
    ldh a, [$39]                                  ; $7530: $f0 $39
    ld a, [hl-]                                   ; $7532: $3a
    dec sp                                        ; $7533: $3b
    inc a                                         ; $7534: $3c
    dec a                                         ; $7535: $3d
    ld a, $3f                                     ; $7536: $3e $3f
    ld b, b                                       ; $7538: $40
    ld b, c                                       ; $7539: $41
    ld b, d                                       ; $753a: $42
    ld b, e                                       ; $753b: $43
    ld b, h                                       ; $753c: $44
    ld b, l                                       ; $753d: $45
    add b                                         ; $753e: $80
    add b                                         ; $753f: $80
    add b                                         ; $7540: $80
    add b                                         ; $7541: $80
    ld bc, $0404                                  ; $7542: $01 $04 $04
    add b                                         ; $7545: $80
    ld bc, $0101                                  ; $7546: $01 $01 $01
    inc b                                         ; $7549: $04
    inc b                                         ; $754a: $04
    ld bc, HeaderLogo                             ; $754b: $01 $04 $01
    db $ed                                        ; $754e: $ed
    db $ed                                        ; $754f: $ed
    db $ed                                        ; $7550: $ed
    db $ed                                        ; $7551: $ed
    ldh a, [$39]                                  ; $7552: $f0 $39
    db $ed                                        ; $7554: $ed
    db $ed                                        ; $7555: $ed
    jr nc, @-$0f                                  ; $7556: $30 $ef

    db $ed                                        ; $7558: $ed
    db $ed                                        ; $7559: $ed
    inc [hl]                                      ; $755a: $34
    ld b, [hl]                                    ; $755b: $46
    db $ed                                        ; $755c: $ed
    db $ed                                        ; $755d: $ed
    add b                                         ; $755e: $80
    add b                                         ; $755f: $80
    add b                                         ; $7560: $80
    add b                                         ; $7561: $80
    add b                                         ; $7562: $80
    add b                                         ; $7563: $80
    add b                                         ; $7564: $80
    add b                                         ; $7565: $80
    ld bc, $8080                                  ; $7566: $01 $80 $80
    add b                                         ; $7569: $80
    inc b                                         ; $756a: $04
    add b                                         ; $756b: $80
    add b                                         ; $756c: $80
    add b                                         ; $756d: $80
    db $ed                                        ; $756e: $ed
    db $ed                                        ; $756f: $ed
    rst $28                                       ; $7570: $ef
    ld b, a                                       ; $7571: $47
    db $ed                                        ; $7572: $ed
    db $ed                                        ; $7573: $ed
    rst $28                                       ; $7574: $ef
    ld c, b                                       ; $7575: $48
    db $ed                                        ; $7576: $ed
    db $ed                                        ; $7577: $ed
    rst $28                                       ; $7578: $ef
    ld c, c                                       ; $7579: $49
    db $ed                                        ; $757a: $ed
    db $ed                                        ; $757b: $ed
    rst $28                                       ; $757c: $ef
    ld c, d                                       ; $757d: $4a
    add b                                         ; $757e: $80
    add b                                         ; $757f: $80
    add b                                         ; $7580: $80
    ld bc, $8080                                  ; $7581: $01 $80 $80
    add b                                         ; $7584: $80
    ld bc, $8080                                  ; $7585: $01 $80 $80
    add b                                         ; $7588: $80
    rlca                                          ; $7589: $07
    add b                                         ; $758a: $80
    add b                                         ; $758b: $80
    add b                                         ; $758c: $80
    rlca                                          ; $758d: $07
    ld c, e                                       ; $758e: $4b
    ld c, h                                       ; $758f: $4c
    ld c, l                                       ; $7590: $4d
    ld c, [hl]                                    ; $7591: $4e
    ld c, a                                       ; $7592: $4f
    ld d, b                                       ; $7593: $50
    ld d, c                                       ; $7594: $51
    ld d, d                                       ; $7595: $52
    ld d, e                                       ; $7596: $53
    ld d, h                                       ; $7597: $54
    ld d, l                                       ; $7598: $55
    ld d, [hl]                                    ; $7599: $56
    ld d, a                                       ; $759a: $57
    ld e, b                                       ; $759b: $58
    ld e, c                                       ; $759c: $59
    ld e, d                                       ; $759d: $5a
    inc b                                         ; $759e: $04
    inc b                                         ; $759f: $04
    ld bc, $0404                                  ; $75a0: $01 $04 $04
    inc b                                         ; $75a3: $04
    ld bc, $0701                                  ; $75a4: $01 $01 $07
    rlca                                          ; $75a7: $07
    rlca                                          ; $75a8: $07
    rlca                                          ; $75a9: $07
    inc bc                                        ; $75aa: $03
    dec b                                         ; $75ab: $05
    inc bc                                        ; $75ac: $03
    ld [bc], a                                    ; $75ad: $02
    ld e, e                                       ; $75ae: $5b
    ld e, h                                       ; $75af: $5c
    ld e, l                                       ; $75b0: $5d
    ld e, [hl]                                    ; $75b1: $5e
    ld e, a                                       ; $75b2: $5f
    ld h, b                                       ; $75b3: $60
    ld a, [bc]                                    ; $75b4: $0a
    ld h, c                                       ; $75b5: $61
    ld h, d                                       ; $75b6: $62
    ld c, c                                       ; $75b7: $49
    ld d, e                                       ; $75b8: $53
    ld h, e                                       ; $75b9: $63
    ld h, h                                       ; $75ba: $64
    ld c, d                                       ; $75bb: $4a
    ld d, a                                       ; $75bc: $57
    ld e, b                                       ; $75bd: $58
    ld bc, $0404                                  ; $75be: $01 $04 $04
    ld bc, HeaderLogo                             ; $75c1: $01 $04 $01
    inc b                                         ; $75c4: $04
    inc b                                         ; $75c5: $04
    rlca                                          ; $75c6: $07
    rlca                                          ; $75c7: $07
    rlca                                          ; $75c8: $07
    inc b                                         ; $75c9: $04
    inc bc                                        ; $75ca: $03
    ld [bc], a                                    ; $75cb: $02
    rlca                                          ; $75cc: $07
    rlca                                          ; $75cd: $07
    db $10                                        ; $75ce: $10
    ld b, [hl]                                    ; $75cf: $46
    db $ed                                        ; $75d0: $ed

Jump_07c_75d1:
    db $ed                                        ; $75d1: $ed
    dec h                                         ; $75d2: $25
    ld b, [hl]                                    ; $75d3: $46
    db $ed                                        ; $75d4: $ed
    db $ed                                        ; $75d5: $ed
    add hl, hl                                    ; $75d6: $29
    ld b, [hl]                                    ; $75d7: $46
    db $ed                                        ; $75d8: $ed
    db $ed                                        ; $75d9: $ed
    ld e, c                                       ; $75da: $59
    ld b, [hl]                                    ; $75db: $46
    ld h, l                                       ; $75dc: $65
    db $ed                                        ; $75dd: $ed
    ld bc, $8080                                  ; $75de: $01 $80 $80
    add b                                         ; $75e1: $80
    ld bc, $8080                                  ; $75e2: $01 $80 $80
    add b                                         ; $75e5: $80
    inc b                                         ; $75e6: $04
    add b                                         ; $75e7: $80
    add b                                         ; $75e8: $80
    add b                                         ; $75e9: $80
    rlca                                          ; $75ea: $07
    add b                                         ; $75eb: $80
    add b                                         ; $75ec: $80
    add b                                         ; $75ed: $80
    db $ed                                        ; $75ee: $ed
    db $ed                                        ; $75ef: $ed
    rst $28                                       ; $75f0: $ef
    ld h, [hl]                                    ; $75f1: $66
    db $ed                                        ; $75f2: $ed
    db $ed                                        ; $75f3: $ed
    rst $28                                       ; $75f4: $ef
    ld h, a                                       ; $75f5: $67
    ldh a, [$f0]                                  ; $75f6: $f0 $f0
    ld l, b                                       ; $75f8: $68
    ld l, c                                       ; $75f9: $69
    pop af                                        ; $75fa: $f1
    ld l, d                                       ; $75fb: $6a
    ld l, e                                       ; $75fc: $6b
    ld l, h                                       ; $75fd: $6c
    add b                                         ; $75fe: $80
    add b                                         ; $75ff: $80
    add b                                         ; $7600: $80
    rlca                                          ; $7601: $07
    add b                                         ; $7602: $80
    add b                                         ; $7603: $80
    add b                                         ; $7604: $80
    rlca                                          ; $7605: $07
    add b                                         ; $7606: $80
    add b                                         ; $7607: $80
    add b                                         ; $7608: $80
    rlca                                          ; $7609: $07
    ld bc, $0401                                  ; $760a: $01 $01 $04
    rlca                                          ; $760d: $07
    ld l, l                                       ; $760e: $6d
    ld l, [hl]                                    ; $760f: $6e
    ld l, a                                       ; $7610: $6f
    ld [hl], b                                    ; $7611: $70
    ld [hl], c                                    ; $7612: $71
    ld [hl], d                                    ; $7613: $72
    ld [hl], e                                    ; $7614: $73
    ld [hl], h                                    ; $7615: $74
    ld [hl], l                                    ; $7616: $75
    halt                                          ; $7617: $76
    xor $f0                                       ; $7618: $ee $f0
    ld [hl], a                                    ; $761a: $77
    ld a, b                                       ; $761b: $78
    rst $28                                       ; $761c: $ef
    db $ed                                        ; $761d: $ed
    ld [bc], a                                    ; $761e: $02
    inc bc                                        ; $761f: $03
    inc bc                                        ; $7620: $03
    inc bc                                        ; $7621: $03
    inc bc                                        ; $7622: $03
    inc bc                                        ; $7623: $03
    inc bc                                        ; $7624: $03
    dec b                                         ; $7625: $05
    inc bc                                        ; $7626: $03
    ld [bc], a                                    ; $7627: $02
    add b                                         ; $7628: $80
    add b                                         ; $7629: $80
    ld [bc], a                                    ; $762a: $02
    dec b                                         ; $762b: $05
    add b                                         ; $762c: $80
    add b                                         ; $762d: $80
    ld a, c                                       ; $762e: $79
    ld h, [hl]                                    ; $762f: $66
    ld l, l                                       ; $7630: $6d
    ld l, [hl]                                    ; $7631: $6e
    ld a, d                                       ; $7632: $7a
    ld h, a                                       ; $7633: $67
    ld [hl], c                                    ; $7634: $71
    xor $f0                                       ; $7635: $ee $f0
    ldh a, [$f0]                                  ; $7637: $f0 $f0
    ld l, b                                       ; $7639: $68
    db $ed                                        ; $763a: $ed
    db $ed                                        ; $763b: $ed
    db $ed                                        ; $763c: $ed
    db $ed                                        ; $763d: $ed
    ld [bc], a                                    ; $763e: $02
    inc bc                                        ; $763f: $03
    dec b                                         ; $7640: $05
    inc bc                                        ; $7641: $03
    dec b                                         ; $7642: $05
    ld [bc], a                                    ; $7643: $02
    inc bc                                        ; $7644: $03
    add b                                         ; $7645: $80
    add b                                         ; $7646: $80
    add b                                         ; $7647: $80
    add b                                         ; $7648: $80
    add b                                         ; $7649: $80
    add b                                         ; $764a: $80
    add b                                         ; $764b: $80
    add b                                         ; $764c: $80
    add b                                         ; $764d: $80
    ld l, a                                       ; $764e: $6f
    rst $28                                       ; $764f: $ef
    ld h, l                                       ; $7650: $65
    db $ed                                        ; $7651: $ed
    ldh a, [rBCPS]                                ; $7652: $f0 $68
    ld h, l                                       ; $7654: $65
    db $ed                                        ; $7655: $ed
    db $ed                                        ; $7656: $ed
    db $ed                                        ; $7657: $ed
    db $ed                                        ; $7658: $ed
    db $ed                                        ; $7659: $ed
    db $ed                                        ; $765a: $ed
    db $ed                                        ; $765b: $ed
    db $ed                                        ; $765c: $ed
    db $ed                                        ; $765d: $ed
    rlca                                          ; $765e: $07
    add b                                         ; $765f: $80
    add b                                         ; $7660: $80
    add b                                         ; $7661: $80
    add b                                         ; $7662: $80
    add b                                         ; $7663: $80
    add b                                         ; $7664: $80
    add b                                         ; $7665: $80
    add b                                         ; $7666: $80
    add b                                         ; $7667: $80
    add b                                         ; $7668: $80
    add b                                         ; $7669: $80
    add b                                         ; $766a: $80
    add b                                         ; $766b: $80
    add b                                         ; $766c: $80
    add b                                         ; $766d: $80
    ld a, $7b                                     ; $766e: $3e $7b
    ld a, h                                       ; $7670: $7c
    ld c, c                                       ; $7671: $49
    ld a, l                                       ; $7672: $7d
    ld a, [hl]                                    ; $7673: $7e
    ld a, a                                       ; $7674: $7f
    ld c, d                                       ; $7675: $4a
    add b                                         ; $7676: $80
    add c                                         ; $7677: $81
    add d                                         ; $7678: $82
    ld h, [hl]                                    ; $7679: $66
    add e                                         ; $767a: $83
    add h                                         ; $767b: $84
    add l                                         ; $767c: $85
    ld h, a                                       ; $767d: $67
    ld bc, HeaderLogo                             ; $767e: $01 $04 $01
    rlca                                          ; $7681: $07
    inc b                                         ; $7682: $04
    ld bc, $0701                                  ; $7683: $01 $01 $07
    inc c                                         ; $7686: $0c
    inc c                                         ; $7687: $0c
    add hl, bc                                    ; $7688: $09
    rlca                                          ; $7689: $07
    inc c                                         ; $768a: $0c
    add hl, bc                                    ; $768b: $09
    add hl, bc                                    ; $768c: $09
    rlca                                          ; $768d: $07
    ld d, e                                       ; $768e: $53
    ld d, h                                       ; $768f: $54
    rst $28                                       ; $7690: $ef
    db $ed                                        ; $7691: $ed
    ld d, a                                       ; $7692: $57
    ld e, b                                       ; $7693: $58
    rst $28                                       ; $7694: $ef
    db $ed                                        ; $7695: $ed
    ld l, l                                       ; $7696: $6d
    ld l, [hl]                                    ; $7697: $6e
    rst $28                                       ; $7698: $ef
    db $ed                                        ; $7699: $ed
    ld [hl], c                                    ; $769a: $71
    ld [hl], d                                    ; $769b: $72
    rst $28                                       ; $769c: $ef
    db $ed                                        ; $769d: $ed
    dec b                                         ; $769e: $05
    rlca                                          ; $769f: $07
    add b                                         ; $76a0: $80
    add b                                         ; $76a1: $80
    inc bc                                        ; $76a2: $03
    rlca                                          ; $76a3: $07
    add b                                         ; $76a4: $80
    add b                                         ; $76a5: $80
    ld [bc], a                                    ; $76a6: $02
    rlca                                          ; $76a7: $07
    add b                                         ; $76a8: $80
    add b                                         ; $76a9: $80
    inc bc                                        ; $76aa: $03
    rlca                                          ; $76ab: $07
    add b                                         ; $76ac: $80
    add b                                         ; $76ad: $80
    db $ed                                        ; $76ae: $ed
    xor $f0                                       ; $76af: $ee $f0
    ld l, b                                       ; $76b1: $68
    db $ed                                        ; $76b2: $ed
    rst $28                                       ; $76b3: $ef
    jr nc, jr_07c_76f7                            ; $76b4: $30 $41

    db $ed                                        ; $76b6: $ed
    ld b, [hl]                                    ; $76b7: $46
    inc [hl]                                      ; $76b8: $34
    ld b, l                                       ; $76b9: $45
    db $ed                                        ; $76ba: $ed
    ld b, [hl]                                    ; $76bb: $46
    db $10                                        ; $76bc: $10
    ld e, [hl]                                    ; $76bd: $5e
    add b                                         ; $76be: $80
    add b                                         ; $76bf: $80
    add b                                         ; $76c0: $80
    add b                                         ; $76c1: $80
    add b                                         ; $76c2: $80
    add b                                         ; $76c3: $80
    ld hl, $8024                                  ; $76c4: $21 $24 $80
    add b                                         ; $76c7: $80
    inc h                                         ; $76c8: $24
    ld hl, $8080                                  ; $76c9: $21 $80 $80
    ld hl, $8624                                  ; $76cc: $21 $24 $86
    add a                                         ; $76cf: $87
    adc b                                         ; $76d0: $88
    ld l, c                                       ; $76d1: $69
    adc c                                         ; $76d2: $89
    adc d                                         ; $76d3: $8a
    adc e                                         ; $76d4: $8b
    ld l, h                                       ; $76d5: $6c
    ld d, l                                       ; $76d6: $55
    ld d, [hl]                                    ; $76d7: $56
    ld h, d                                       ; $76d8: $62
    ld c, c                                       ; $76d9: $49
    ld e, c                                       ; $76da: $59
    ld e, d                                       ; $76db: $5a
    ld h, h                                       ; $76dc: $64
    ld c, d                                       ; $76dd: $4a
    rrca                                          ; $76de: $0f
    rrca                                          ; $76df: $0f
    rrca                                          ; $76e0: $0f
    rlca                                          ; $76e1: $07
    rrca                                          ; $76e2: $0f
    dec c                                         ; $76e3: $0d
    dec bc                                        ; $76e4: $0b
    inc bc                                        ; $76e5: $03
    rlca                                          ; $76e6: $07
    ld [bc], a                                    ; $76e7: $02
    inc bc                                        ; $76e8: $03
    ld [bc], a                                    ; $76e9: $02
    rlca                                          ; $76ea: $07
    ld [bc], a                                    ; $76eb: $02
    dec b                                         ; $76ec: $05
    dec b                                         ; $76ed: $05
    ld [hl], l                                    ; $76ee: $75
    halt                                          ; $76ef: $76
    add [hl]                                      ; $76f0: $86
    add a                                         ; $76f1: $87
    ld [hl], a                                    ; $76f2: $77
    ld a, b                                       ; $76f3: $78
    adc c                                         ; $76f4: $89
    adc d                                         ; $76f5: $8a
    ld d, e                                       ; $76f6: $53

jr_07c_76f7:
    ld d, h                                       ; $76f7: $54
    ld d, l                                       ; $76f8: $55
    ld d, [hl]                                    ; $76f9: $56
    ld d, a                                       ; $76fa: $57
    ld e, b                                       ; $76fb: $58
    ld e, c                                       ; $76fc: $59
    ld e, d                                       ; $76fd: $5a
    rlca                                          ; $76fe: $07
    rlca                                          ; $76ff: $07
    rrca                                          ; $7700: $0f
    rrca                                          ; $7701: $0f
    inc bc                                        ; $7702: $03
    ld [bc], a                                    ; $7703: $02
    dec bc                                        ; $7704: $0b
    ld a, [bc]                                    ; $7705: $0a
    inc bc                                        ; $7706: $03
    dec b                                         ; $7707: $05
    ld [bc], a                                    ; $7708: $02
    inc bc                                        ; $7709: $03
    ld [bc], a                                    ; $770a: $02
    ld [bc], a                                    ; $770b: $02
    inc bc                                        ; $770c: $03
    ld [bc], a                                    ; $770d: $02
    adc b                                         ; $770e: $88
    ld l, c                                       ; $770f: $69
    ld [hl], l                                    ; $7710: $75
    halt                                          ; $7711: $76
    adc e                                         ; $7712: $8b
    ld l, h                                       ; $7713: $6c
    ld [hl], a                                    ; $7714: $77
    ld a, b                                       ; $7715: $78
    ld h, d                                       ; $7716: $62
    ld c, c                                       ; $7717: $49
    ld d, e                                       ; $7718: $53
    ld d, h                                       ; $7719: $54
    ld h, h                                       ; $771a: $64
    ld c, d                                       ; $771b: $4a
    ld d, a                                       ; $771c: $57
    ld e, b                                       ; $771d: $58
    rrca                                          ; $771e: $0f
    rlca                                          ; $771f: $07
    rlca                                          ; $7720: $07
    rlca                                          ; $7721: $07
    dec bc                                        ; $7722: $0b
    ld [bc], a                                    ; $7723: $02
    inc bc                                        ; $7724: $03
    inc bc                                        ; $7725: $03
    ld [bc], a                                    ; $7726: $02
    dec b                                         ; $7727: $05
    ld [bc], a                                    ; $7728: $02
    dec b                                         ; $7729: $05
    inc bc                                        ; $772a: $03
    inc bc                                        ; $772b: $03
    ld [bc], a                                    ; $772c: $02
    ld [bc], a                                    ; $772d: $02
    db $ed                                        ; $772e: $ed
    ld b, [hl]                                    ; $772f: $46
    dec h                                         ; $7730: $25
    ld h, c                                       ; $7731: $61
    db $ed                                        ; $7732: $ed
    ld b, [hl]                                    ; $7733: $46
    add hl, hl                                    ; $7734: $29
    ld h, e                                       ; $7735: $63
    ld h, l                                       ; $7736: $65
    ld b, [hl]                                    ; $7737: $46
    ld [hl], l                                    ; $7738: $75
    halt                                          ; $7739: $76
    ld h, l                                       ; $773a: $65
    rst $28                                       ; $773b: $ef
    ld [hl], a                                    ; $773c: $77
    ld a, b                                       ; $773d: $78
    add b                                         ; $773e: $80
    add b                                         ; $773f: $80
    inc h                                         ; $7740: $24
    ld hl, $8080                                  ; $7741: $21 $80 $80
    inc h                                         ; $7744: $24
    ld hl, $80a0                                  ; $7745: $21 $a0 $80
    rlca                                          ; $7748: $07
    rlca                                          ; $7749: $07
    and b                                         ; $774a: $a0
    add b                                         ; $774b: $80
    rlca                                          ; $774c: $07
    ld [bc], a                                    ; $774d: $02
    ld l, a                                       ; $774e: $6f
    ld [hl], b                                    ; $774f: $70
    ld a, c                                       ; $7750: $79
    ld h, [hl]                                    ; $7751: $66
    ld [hl], e                                    ; $7752: $73
    ld [hl], h                                    ; $7753: $74
    ld a, d                                       ; $7754: $7a
    ld h, a                                       ; $7755: $67
    add [hl]                                      ; $7756: $86
    add a                                         ; $7757: $87
    adc b                                         ; $7758: $88
    ld l, c                                       ; $7759: $69
    adc c                                         ; $775a: $89
    adc d                                         ; $775b: $8a
    adc e                                         ; $775c: $8b
    ld l, h                                       ; $775d: $6c
    rlca                                          ; $775e: $07
    inc bc                                        ; $775f: $03
    ld [bc], a                                    ; $7760: $02
    inc bc                                        ; $7761: $03
    rlca                                          ; $7762: $07
    ld [bc], a                                    ; $7763: $02
    inc bc                                        ; $7764: $03
    inc bc                                        ; $7765: $03
    rrca                                          ; $7766: $0f
    dec bc                                        ; $7767: $0b
    ld a, [bc]                                    ; $7768: $0a
    ld [bc], a                                    ; $7769: $02
    dec bc                                        ; $776a: $0b
    ld a, [bc]                                    ; $776b: $0a
    dec c                                         ; $776c: $0d
    inc bc                                        ; $776d: $03
    ld l, l                                       ; $776e: $6d
    ld l, [hl]                                    ; $776f: $6e
    ld l, a                                       ; $7770: $6f
    ld [hl], b                                    ; $7771: $70
    ld [hl], c                                    ; $7772: $71
    ld [hl], d                                    ; $7773: $72
    ld [hl], e                                    ; $7774: $73
    ld [hl], h                                    ; $7775: $74
    ld [hl], l                                    ; $7776: $75
    halt                                          ; $7777: $76
    add [hl]                                      ; $7778: $86
    add a                                         ; $7779: $87
    ld [hl], a                                    ; $777a: $77
    ld a, b                                       ; $777b: $78
    adc c                                         ; $777c: $89
    adc d                                         ; $777d: $8a
    inc bc                                        ; $777e: $03
    inc bc                                        ; $777f: $03
    ld [bc], a                                    ; $7780: $02
    inc bc                                        ; $7781: $03
    dec b                                         ; $7782: $05
    ld [bc], a                                    ; $7783: $02
    ld [bc], a                                    ; $7784: $02
    inc bc                                        ; $7785: $03
    inc bc                                        ; $7786: $03
    inc bc                                        ; $7787: $03
    dec bc                                        ; $7788: $0b
    ld a, [bc]                                    ; $7789: $0a
    inc bc                                        ; $778a: $03
    ld [bc], a                                    ; $778b: $02
    ld a, [bc]                                    ; $778c: $0a
    dec bc                                        ; $778d: $0b
    ld a, c                                       ; $778e: $79
    ld h, [hl]                                    ; $778f: $66
    ld l, l                                       ; $7790: $6d
    ld l, [hl]                                    ; $7791: $6e
    ld a, d                                       ; $7792: $7a
    ld h, a                                       ; $7793: $67
    ld [hl], c                                    ; $7794: $71
    ld [hl], d                                    ; $7795: $72
    adc b                                         ; $7796: $88
    ld l, c                                       ; $7797: $69
    ld [hl], l                                    ; $7798: $75
    halt                                          ; $7799: $76
    adc e                                         ; $779a: $8b
    ld l, h                                       ; $779b: $6c
    ld [hl], a                                    ; $779c: $77
    ld a, b                                       ; $779d: $78
    inc bc                                        ; $779e: $03
    ld [bc], a                                    ; $779f: $02
    dec b                                         ; $77a0: $05
    inc bc                                        ; $77a1: $03
    inc bc                                        ; $77a2: $03
    dec b                                         ; $77a3: $05
    inc bc                                        ; $77a4: $03
    inc bc                                        ; $77a5: $03
    ld a, [bc]                                    ; $77a6: $0a
    ld [bc], a                                    ; $77a7: $02
    inc bc                                        ; $77a8: $03
    dec b                                         ; $77a9: $05
    dec c                                         ; $77aa: $0d
    ld [bc], a                                    ; $77ab: $02
    dec b                                         ; $77ac: $05
    ld [bc], a                                    ; $77ad: $02
    ld h, l                                       ; $77ae: $65
    dec a                                         ; $77af: $3d
    ldh a, [$39]                                  ; $77b0: $f0 $39
    db $ed                                        ; $77b2: $ed
    db $ed                                        ; $77b3: $ed
    db $ed                                        ; $77b4: $ed
    dec a                                         ; $77b5: $3d
    db $ed                                        ; $77b6: $ed
    db $ed                                        ; $77b7: $ed
    db $ed                                        ; $77b8: $ed
    db $ed                                        ; $77b9: $ed
    db $ed                                        ; $77ba: $ed
    db $ed                                        ; $77bb: $ed
    db $ed                                        ; $77bc: $ed
    db $ed                                        ; $77bd: $ed
    and b                                         ; $77be: $a0
    add b                                         ; $77bf: $80
    add b                                         ; $77c0: $80
    add b                                         ; $77c1: $80
    add b                                         ; $77c2: $80
    add b                                         ; $77c3: $80
    add b                                         ; $77c4: $80
    add b                                         ; $77c5: $80
    add b                                         ; $77c6: $80
    add b                                         ; $77c7: $80
    add b                                         ; $77c8: $80
    add b                                         ; $77c9: $80
    add b                                         ; $77ca: $80
    add b                                         ; $77cb: $80
    add b                                         ; $77cc: $80
    add b                                         ; $77cd: $80
    ld d, l                                       ; $77ce: $55
    ld d, [hl]                                    ; $77cf: $56
    ld h, d                                       ; $77d0: $62
    ld c, c                                       ; $77d1: $49
    ldh a, [$f0]                                  ; $77d2: $f0 $f0
    ldh a, [$f0]                                  ; $77d4: $f0 $f0
    db $ed                                        ; $77d6: $ed
    db $ed                                        ; $77d7: $ed
    db $ed                                        ; $77d8: $ed
    db $ed                                        ; $77d9: $ed
    db $ed                                        ; $77da: $ed
    db $ed                                        ; $77db: $ed
    db $ed                                        ; $77dc: $ed
    db $ed                                        ; $77dd: $ed
    ld [bc], a                                    ; $77de: $02
    inc bc                                        ; $77df: $03
    ld [bc], a                                    ; $77e0: $02
    dec b                                         ; $77e1: $05
    add b                                         ; $77e2: $80
    add b                                         ; $77e3: $80
    add b                                         ; $77e4: $80
    add b                                         ; $77e5: $80
    add b                                         ; $77e6: $80
    add b                                         ; $77e7: $80
    add b                                         ; $77e8: $80
    add b                                         ; $77e9: $80
    add b                                         ; $77ea: $80
    add b                                         ; $77eb: $80
    add b                                         ; $77ec: $80
    add b                                         ; $77ed: $80
    ld d, e                                       ; $77ee: $53
    ld d, h                                       ; $77ef: $54
    ld d, l                                       ; $77f0: $55
    ld d, [hl]                                    ; $77f1: $56
    ldh a, [$f0]                                  ; $77f2: $f0 $f0
    ldh a, [$f0]                                  ; $77f4: $f0 $f0
    db $ed                                        ; $77f6: $ed
    db $ed                                        ; $77f7: $ed
    db $ed                                        ; $77f8: $ed
    db $ed                                        ; $77f9: $ed
    db $ed                                        ; $77fa: $ed
    db $ed                                        ; $77fb: $ed
    db $ed                                        ; $77fc: $ed
    db $ed                                        ; $77fd: $ed
    ld [bc], a                                    ; $77fe: $02
    inc bc                                        ; $77ff: $03
    inc bc                                        ; $7800: $03
    ld [bc], a                                    ; $7801: $02
    add b                                         ; $7802: $80
    add b                                         ; $7803: $80
    add b                                         ; $7804: $80
    add b                                         ; $7805: $80
    add b                                         ; $7806: $80
    add b                                         ; $7807: $80
    add b                                         ; $7808: $80
    add b                                         ; $7809: $80
    add b                                         ; $780a: $80
    add b                                         ; $780b: $80
    add b                                         ; $780c: $80
    add b                                         ; $780d: $80
    ld h, d                                       ; $780e: $62
    ld c, c                                       ; $780f: $49
    ld d, e                                       ; $7810: $53
    ld d, h                                       ; $7811: $54
    ldh a, [$f0]                                  ; $7812: $f0 $f0
    ldh a, [$f0]                                  ; $7814: $f0 $f0
    db $ed                                        ; $7816: $ed
    db $ed                                        ; $7817: $ed
    db $ed                                        ; $7818: $ed
    db $ed                                        ; $7819: $ed
    db $ed                                        ; $781a: $ed
    db $ed                                        ; $781b: $ed
    db $ed                                        ; $781c: $ed
    db $ed                                        ; $781d: $ed
    inc bc                                        ; $781e: $03
    ld [bc], a                                    ; $781f: $02
    dec b                                         ; $7820: $05
    ld [bc], a                                    ; $7821: $02
    add b                                         ; $7822: $80
    add b                                         ; $7823: $80
    add b                                         ; $7824: $80
    add b                                         ; $7825: $80
    add b                                         ; $7826: $80
    add b                                         ; $7827: $80
    add b                                         ; $7828: $80
    add b                                         ; $7829: $80
    add b                                         ; $782a: $80
    add b                                         ; $782b: $80
    add b                                         ; $782c: $80
    add b                                         ; $782d: $80
    add [hl]                                      ; $782e: $86
    add a                                         ; $782f: $87
    adc b                                         ; $7830: $88
    ld l, c                                       ; $7831: $69
    adc c                                         ; $7832: $89
    adc d                                         ; $7833: $8a
    adc e                                         ; $7834: $8b
    ld l, h                                       ; $7835: $6c
    ld d, l                                       ; $7836: $55
    ld d, [hl]                                    ; $7837: $56
    ld h, d                                       ; $7838: $62
    ld c, c                                       ; $7839: $49
    ld e, c                                       ; $783a: $59
    ld e, d                                       ; $783b: $5a
    ld h, h                                       ; $783c: $64
    ld c, d                                       ; $783d: $4a
    rrca                                          ; $783e: $0f
    rrca                                          ; $783f: $0f
    rrca                                          ; $7840: $0f
    rlca                                          ; $7841: $07
    dec c                                         ; $7842: $0d
    ld a, [bc]                                    ; $7843: $0a
    dec bc                                        ; $7844: $0b
    ld [bc], a                                    ; $7845: $02
    ld [bc], a                                    ; $7846: $02
    ld [bc], a                                    ; $7847: $02
    inc bc                                        ; $7848: $03
    dec b                                         ; $7849: $05
    ld [bc], a                                    ; $784a: $02
    inc bc                                        ; $784b: $03
    dec b                                         ; $784c: $05
    ld [bc], a                                    ; $784d: $02
    ld [hl], l                                    ; $784e: $75
    halt                                          ; $784f: $76
    rst $28                                       ; $7850: $ef
    db $ed                                        ; $7851: $ed
    ld [hl], a                                    ; $7852: $77
    ld a, b                                       ; $7853: $78
    rst $28                                       ; $7854: $ef
    db $ed                                        ; $7855: $ed
    ld d, e                                       ; $7856: $53
    ld d, h                                       ; $7857: $54
    rst $28                                       ; $7858: $ef
    db $ed                                        ; $7859: $ed
    ld d, a                                       ; $785a: $57
    ld e, b                                       ; $785b: $58
    rst $28                                       ; $785c: $ef
    db $ed                                        ; $785d: $ed
    ld [bc], a                                    ; $785e: $02
    rlca                                          ; $785f: $07
    add b                                         ; $7860: $80
    add b                                         ; $7861: $80
    dec b                                         ; $7862: $05
    rlca                                          ; $7863: $07
    add b                                         ; $7864: $80
    add b                                         ; $7865: $80
    ld [bc], a                                    ; $7866: $02
    rlca                                          ; $7867: $07
    add b                                         ; $7868: $80
    add b                                         ; $7869: $80
    inc bc                                        ; $786a: $03
    rlca                                          ; $786b: $07
    add b                                         ; $786c: $80
    add b                                         ; $786d: $80
    ld l, a                                       ; $786e: $6f
    ld [hl], b                                    ; $786f: $70
    ld a, c                                       ; $7870: $79
    ld h, [hl]                                    ; $7871: $66
    ld [hl], e                                    ; $7872: $73
    ld [hl], h                                    ; $7873: $74
    ld a, d                                       ; $7874: $7a
    ld h, a                                       ; $7875: $67
    add [hl]                                      ; $7876: $86

Call_07c_7877:
    add a                                         ; $7877: $87
    adc b                                         ; $7878: $88
    ld l, c                                       ; $7879: $69
    adc c                                         ; $787a: $89
    adc d                                         ; $787b: $8a
    adc e                                         ; $787c: $8b
    ld l, h                                       ; $787d: $6c
    inc bc                                        ; $787e: $03
    ld [bc], a                                    ; $787f: $02
    ld [bc], a                                    ; $7880: $02
    inc bc                                        ; $7881: $03
    dec b                                         ; $7882: $05
    ld [bc], a                                    ; $7883: $02
    inc bc                                        ; $7884: $03
    dec b                                         ; $7885: $05
    ld a, [bc]                                    ; $7886: $0a
    dec c                                         ; $7887: $0d
    dec bc                                        ; $7888: $0b
    ld [bc], a                                    ; $7889: $02
    dec c                                         ; $788a: $0d
    dec bc                                        ; $788b: $0b
    ld a, [bc]                                    ; $788c: $0a
    inc bc                                        ; $788d: $03
    ld l, l                                       ; $788e: $6d
    ld l, [hl]                                    ; $788f: $6e
    rst $28                                       ; $7890: $ef
    db $ed                                        ; $7891: $ed
    ld [hl], c                                    ; $7892: $71
    ld [hl], d                                    ; $7893: $72
    rst $28                                       ; $7894: $ef
    db $ed                                        ; $7895: $ed
    ld [hl], l                                    ; $7896: $75
    halt                                          ; $7897: $76
    rst $28                                       ; $7898: $ef
    db $ed                                        ; $7899: $ed
    ld [hl], a                                    ; $789a: $77
    ld a, b                                       ; $789b: $78
    rst $28                                       ; $789c: $ef
    db $ed                                        ; $789d: $ed
    ld [bc], a                                    ; $789e: $02
    rlca                                          ; $789f: $07
    add b                                         ; $78a0: $80
    add b                                         ; $78a1: $80
    ld [bc], a                                    ; $78a2: $02
    rlca                                          ; $78a3: $07
    add b                                         ; $78a4: $80
    add b                                         ; $78a5: $80
    inc bc                                        ; $78a6: $03
    rlca                                          ; $78a7: $07
    add b                                         ; $78a8: $80
    add b                                         ; $78a9: $80
    ld [bc], a                                    ; $78aa: $02
    rlca                                          ; $78ab: $07
    add b                                         ; $78ac: $80
    add b                                         ; $78ad: $80
    ld d, l                                       ; $78ae: $55
    ld d, [hl]                                    ; $78af: $56
    ld h, d                                       ; $78b0: $62
    ld c, c                                       ; $78b1: $49
    ldh a, [$f0]                                  ; $78b2: $f0 $f0
    ldh a, [$f0]                                  ; $78b4: $f0 $f0
    db $ed                                        ; $78b6: $ed
    db $ed                                        ; $78b7: $ed
    db $ed                                        ; $78b8: $ed
    db $ed                                        ; $78b9: $ed
    db $ed                                        ; $78ba: $ed
    db $ed                                        ; $78bb: $ed
    db $ed                                        ; $78bc: $ed
    db $ed                                        ; $78bd: $ed
    inc bc                                        ; $78be: $03
    ld [bc], a                                    ; $78bf: $02
    dec b                                         ; $78c0: $05
    ld [bc], a                                    ; $78c1: $02
    add b                                         ; $78c2: $80
    add b                                         ; $78c3: $80
    add b                                         ; $78c4: $80
    add b                                         ; $78c5: $80
    add b                                         ; $78c6: $80
    add b                                         ; $78c7: $80
    add b                                         ; $78c8: $80
    add b                                         ; $78c9: $80
    add b                                         ; $78ca: $80
    add b                                         ; $78cb: $80
    add b                                         ; $78cc: $80
    add b                                         ; $78cd: $80
    ld d, e                                       ; $78ce: $53
    ld d, h                                       ; $78cf: $54
    rst $28                                       ; $78d0: $ef
    db $ed                                        ; $78d1: $ed
    ldh a, [$f0]                                  ; $78d2: $f0 $f0
    ld l, b                                       ; $78d4: $68
    db $ed                                        ; $78d5: $ed
    db $ed                                        ; $78d6: $ed
    db $ed                                        ; $78d7: $ed
    db $ed                                        ; $78d8: $ed
    db $ed                                        ; $78d9: $ed
    db $ed                                        ; $78da: $ed
    db $ed                                        ; $78db: $ed
    db $ed                                        ; $78dc: $ed
    db $ed                                        ; $78dd: $ed
    inc bc                                        ; $78de: $03
    rlca                                          ; $78df: $07
    add b                                         ; $78e0: $80
    add b                                         ; $78e1: $80
    add b                                         ; $78e2: $80
    add b                                         ; $78e3: $80
    add b                                         ; $78e4: $80
    add b                                         ; $78e5: $80
    add b                                         ; $78e6: $80
    add b                                         ; $78e7: $80
    add b                                         ; $78e8: $80
    add b                                         ; $78e9: $80
    add b                                         ; $78ea: $80
    add b                                         ; $78eb: $80
    add b                                         ; $78ec: $80
    add b                                         ; $78ed: $80
    add hl, bc                                    ; $78ee: $09
    nop                                           ; $78ef: $00
    ld [$e000], sp                                ; $78f0: $08 $00 $e0
    ld b, $ed                                     ; $78f3: $06 $ed
    db $ed                                        ; $78f5: $ed
    db $ed                                        ; $78f6: $ed
    db $ed                                        ; $78f7: $ed
    db $ed                                        ; $78f8: $ed
    db $ed                                        ; $78f9: $ed
    db $ed                                        ; $78fa: $ed
    db $ed                                        ; $78fb: $ed
    db $ed                                        ; $78fc: $ed
    db $ed                                        ; $78fd: $ed
    db $ed                                        ; $78fe: $ed
    db $ed                                        ; $78ff: $ed
    db $ed                                        ; $7900: $ed
    db $ed                                        ; $7901: $ed
    db $ed                                        ; $7902: $ed
    db $ed                                        ; $7903: $ed
    add b                                         ; $7904: $80
    add b                                         ; $7905: $80
    add b                                         ; $7906: $80
    add b                                         ; $7907: $80
    add b                                         ; $7908: $80
    add b                                         ; $7909: $80
    add b                                         ; $790a: $80
    add b                                         ; $790b: $80
    add b                                         ; $790c: $80
    add b                                         ; $790d: $80
    add b                                         ; $790e: $80
    add b                                         ; $790f: $80
    add b                                         ; $7910: $80
    add b                                         ; $7911: $80
    add b                                         ; $7912: $80
    add b                                         ; $7913: $80
    xor $ef                                       ; $7914: $ee $ef
    ldh a, [$f1]                                  ; $7916: $f0 $f1
    xor $f2                                       ; $7918: $ee $f2
    di                                            ; $791a: $f3
    db $f4                                        ; $791b: $f4
    xor $f5                                       ; $791c: $ee $f5
    or $f7                                        ; $791e: $f6 $f7
    xor $f8                                       ; $7920: $ee $f8
    ld sp, hl                                     ; $7922: $f9
    ld a, [$0780]                                 ; $7923: $fa $80 $07
    rlca                                          ; $7926: $07
    rlca                                          ; $7927: $07
    add b                                         ; $7928: $80
    rlca                                          ; $7929: $07
    rlca                                          ; $792a: $07
    rlca                                          ; $792b: $07
    add b                                         ; $792c: $80
    rlca                                          ; $792d: $07
    rlca                                          ; $792e: $07
    rlca                                          ; $792f: $07
    add b                                         ; $7930: $80
    rlca                                          ; $7931: $07
    rlca                                          ; $7932: $07
    rlca                                          ; $7933: $07
    ei                                            ; $7934: $fb
    db $fc                                        ; $7935: $fc
    db $fd                                        ; $7936: $fd
    rst $28                                       ; $7937: $ef
    cp $ff                                        ; $7938: $fe $ff
    nop                                           ; $793a: $00
    ld a, [c]                                     ; $793b: $f2
    ei                                            ; $793c: $fb
    db $fc                                        ; $793d: $fc
    ld bc, $fef5                                  ; $793e: $01 $f5 $fe
    rst $38                                       ; $7941: $ff
    ld [bc], a                                    ; $7942: $02
    inc bc                                        ; $7943: $03
    ld [bc], a                                    ; $7944: $02
    ld [bc], a                                    ; $7945: $02
    rlca                                          ; $7946: $07
    rlca                                          ; $7947: $07
    ld [bc], a                                    ; $7948: $02
    ld [bc], a                                    ; $7949: $02
    rlca                                          ; $794a: $07
    rlca                                          ; $794b: $07
    ld [bc], a                                    ; $794c: $02
    ld [bc], a                                    ; $794d: $02
    rlca                                          ; $794e: $07
    rlca                                          ; $794f: $07
    ld [bc], a                                    ; $7950: $02
    ld [bc], a                                    ; $7951: $02
    rlca                                          ; $7952: $07
    rlca                                          ; $7953: $07
    ldh a, [$f1]                                  ; $7954: $f0 $f1
    ei                                            ; $7956: $fb
    db $fc                                        ; $7957: $fc
    di                                            ; $7958: $f3
    db $f4                                        ; $7959: $f4
    cp $ff                                        ; $795a: $fe $ff
    inc b                                         ; $795c: $04
    rst $30                                       ; $795d: $f7
    ei                                            ; $795e: $fb
    db $fc                                        ; $795f: $fc
    dec b                                         ; $7960: $05
    ld a, [$fffe]                                 ; $7961: $fa $fe $ff
    rlca                                          ; $7964: $07
    rlca                                          ; $7965: $07
    ld [bc], a                                    ; $7966: $02
    ld [bc], a                                    ; $7967: $02
    rlca                                          ; $7968: $07
    rlca                                          ; $7969: $07
    ld [bc], a                                    ; $796a: $02
    ld [bc], a                                    ; $796b: $02
    rlca                                          ; $796c: $07
    rlca                                          ; $796d: $07
    ld [bc], a                                    ; $796e: $02
    ld [bc], a                                    ; $796f: $02
    rlca                                          ; $7970: $07
    rlca                                          ; $7971: $07
    ld [bc], a                                    ; $7972: $02
    ld [bc], a                                    ; $7973: $02
    xor $06                                       ; $7974: $ee $06
    ld b, $06                                     ; $7976: $06 $06
    xor $07                                       ; $7978: $ee $07
    ld [$ee09], sp                                ; $797a: $08 $09 $ee
    ld a, [bc]                                    ; $797d: $0a
    dec bc                                        ; $797e: $0b
    inc c                                         ; $797f: $0c
    xor $0d                                       ; $7980: $ee $0d
    ld c, $0f                                     ; $7982: $0e $0f
    add b                                         ; $7984: $80
    rlca                                          ; $7985: $07
    rlca                                          ; $7986: $07
    rlca                                          ; $7987: $07
    add b                                         ; $7988: $80
    inc b                                         ; $7989: $04
    inc b                                         ; $798a: $04
    inc b                                         ; $798b: $04
    add b                                         ; $798c: $80
    inc b                                         ; $798d: $04
    inc bc                                        ; $798e: $03
    dec b                                         ; $798f: $05
    add b                                         ; $7990: $80
    inc b                                         ; $7991: $04
    dec b                                         ; $7992: $05
    inc bc                                        ; $7993: $03
    ei                                            ; $7994: $fb
    db $fc                                        ; $7995: $fc
    db $10                                        ; $7996: $10
    ld de, $1312                                  ; $7997: $11 $12 $13
    inc d                                         ; $799a: $14
    dec d                                         ; $799b: $15
    ld d, $17                                     ; $799c: $16 $17
    dec bc                                        ; $799e: $0b
    inc c                                         ; $799f: $0c
    jr jr_07c_79af                                ; $79a0: $18 $0d

    ld c, $0f                                     ; $79a2: $0e $0f
    ld [bc], a                                    ; $79a4: $02
    ld [bc], a                                    ; $79a5: $02
    rlca                                          ; $79a6: $07
    rlca                                          ; $79a7: $07
    ld [bc], a                                    ; $79a8: $02
    ld [bc], a                                    ; $79a9: $02
    inc b                                         ; $79aa: $04
    inc b                                         ; $79ab: $04
    dec b                                         ; $79ac: $05
    inc bc                                        ; $79ad: $03
    dec b                                         ; $79ae: $05

jr_07c_79af:
    ld b, $03                                     ; $79af: $06 $03
    ld b, $03                                     ; $79b1: $06 $03
    dec b                                         ; $79b3: $05
    ld b, $06                                     ; $79b4: $06 $06
    ei                                            ; $79b6: $fb
    db $fc                                        ; $79b7: $fc
    add hl, de                                    ; $79b8: $19
    ld a, [de]                                    ; $79b9: $1a
    ld [de], a                                    ; $79ba: $12
    inc de                                        ; $79bb: $13
    ld d, $0a                                     ; $79bc: $16 $0a
    dec de                                        ; $79be: $1b
    inc e                                         ; $79bf: $1c
    jr jr_07c_79cf                                ; $79c0: $18 $0d

    ld c, $0f                                     ; $79c2: $0e $0f
    rlca                                          ; $79c4: $07
    rlca                                          ; $79c5: $07
    ld [bc], a                                    ; $79c6: $02
    ld [bc], a                                    ; $79c7: $02
    inc b                                         ; $79c8: $04
    inc b                                         ; $79c9: $04
    ld [bc], a                                    ; $79ca: $02
    ld [bc], a                                    ; $79cb: $02
    inc bc                                        ; $79cc: $03
    dec b                                         ; $79cd: $05
    inc bc                                        ; $79ce: $03

jr_07c_79cf:
    ld b, $05                                     ; $79cf: $06 $05
    inc bc                                        ; $79d1: $03
    ld b, $03                                     ; $79d2: $06 $03
    xor $1d                                       ; $79d4: $ee $1d
    ld e, $1f                                     ; $79d6: $1e $1f
    xor $07                                       ; $79d8: $ee $07
    ld [$ee15], sp                                ; $79da: $08 $15 $ee
    ld a, [bc]                                    ; $79dd: $0a
    dec bc                                        ; $79de: $0b
    inc c                                         ; $79df: $0c
    xor $0d                                       ; $79e0: $ee $0d
    ld c, $0f                                     ; $79e2: $0e $0f
    add b                                         ; $79e4: $80
    inc b                                         ; $79e5: $04
    inc bc                                        ; $79e6: $03
    inc bc                                        ; $79e7: $03
    add b                                         ; $79e8: $80
    inc b                                         ; $79e9: $04
    ld b, $05                                     ; $79ea: $06 $05
    add b                                         ; $79ec: $80
    inc b                                         ; $79ed: $04
    dec b                                         ; $79ee: $05
    dec b                                         ; $79ef: $05
    add b                                         ; $79f0: $80
    inc b                                         ; $79f1: $04
    dec b                                         ; $79f2: $05
    inc bc                                        ; $79f3: $03
    jr nz, jr_07c_7a17                            ; $79f4: $20 $21

    ld [hl+], a                                   ; $79f6: $22
    inc hl                                        ; $79f7: $23
    inc h                                         ; $79f8: $24
    dec h                                         ; $79f9: $25
    ld h, $27                                     ; $79fa: $26 $27
    jr z, jr_07c_7a27                             ; $79fc: $28 $29

    ld a, [hl+]                                   ; $79fe: $2a
    dec hl                                        ; $79ff: $2b
    inc l                                         ; $7a00: $2c
    dec l                                         ; $7a01: $2d
    ld l, $2f                                     ; $7a02: $2e $2f
    ld b, $06                                     ; $7a04: $06 $06
    dec b                                         ; $7a06: $05
    inc bc                                        ; $7a07: $03
    inc bc                                        ; $7a08: $03
    ld bc, $0201                                  ; $7a09: $01 $01 $02
    ld b, $01                                     ; $7a0c: $06 $01
    ld bc, $0502                                  ; $7a0e: $01 $02 $05
    ld [hl+], a                                   ; $7a11: $22
    ld [hl+], a                                   ; $7a12: $22
    ld hl, $2130                                  ; $7a13: $21 $30 $21
    ld [hl+], a                                   ; $7a16: $22

jr_07c_7a17:
    inc hl                                        ; $7a17: $23
    ld sp, $2625                                  ; $7a18: $31 $25 $26
    daa                                           ; $7a1b: $27
    ld [hl-], a                                   ; $7a1c: $32
    add hl, hl                                    ; $7a1d: $29
    ld a, [hl+]                                   ; $7a1e: $2a
    dec hl                                        ; $7a1f: $2b
    inc sp                                        ; $7a20: $33
    dec l                                         ; $7a21: $2d
    ld l, $2f                                     ; $7a22: $2e $2f
    ld b, $03                                     ; $7a24: $06 $03
    dec b                                         ; $7a26: $05

jr_07c_7a27:
    inc bc                                        ; $7a27: $03
    ld [bc], a                                    ; $7a28: $02
    ld bc, $0201                                  ; $7a29: $01 $01 $02
    ld [bc], a                                    ; $7a2c: $02
    ld bc, $0201                                  ; $7a2d: $01 $01 $02
    ld hl, $2222                                  ; $7a30: $21 $22 $22
    ld hl, $1dee                                  ; $7a33: $21 $ee $1d
    ld e, $1f                                     ; $7a36: $1e $1f
    xor $07                                       ; $7a38: $ee $07
    ld [$ee15], sp                                ; $7a3a: $08 $15 $ee
    ld a, [bc]                                    ; $7a3d: $0a
    dec bc                                        ; $7a3e: $0b
    inc c                                         ; $7a3f: $0c
    xor $0d                                       ; $7a40: $ee $0d
    ld c, $0f                                     ; $7a42: $0e $0f
    add b                                         ; $7a44: $80
    inc b                                         ; $7a45: $04
    inc bc                                        ; $7a46: $03
    dec b                                         ; $7a47: $05
    add b                                         ; $7a48: $80
    inc b                                         ; $7a49: $04
    dec b                                         ; $7a4a: $05
    dec b                                         ; $7a4b: $05
    add b                                         ; $7a4c: $80
    inc b                                         ; $7a4d: $04
    dec b                                         ; $7a4e: $05
    inc bc                                        ; $7a4f: $03
    add b                                         ; $7a50: $80
    inc b                                         ; $7a51: $04
    inc bc                                        ; $7a52: $03
    dec b                                         ; $7a53: $05
    inc [hl]                                      ; $7a54: $34
    dec [hl]                                      ; $7a55: $35
    ld [hl], $37                                  ; $7a56: $36 $37
    inc h                                         ; $7a58: $24
    ld h, $25                                     ; $7a59: $26 $25
    ld sp, $2a28                                  ; $7a5b: $31 $28 $2a
    add hl, hl                                    ; $7a5e: $29
    ld [hl-], a                                   ; $7a5f: $32
    inc l                                         ; $7a60: $2c
    ld l, $2d                                     ; $7a61: $2e $2d
    cpl                                           ; $7a63: $2f
    inc bc                                        ; $7a64: $03
    ld [hl+], a                                   ; $7a65: $22
    ld [hl+], a                                   ; $7a66: $22
    ld hl, $2106                                  ; $7a67: $21 $06 $21
    ld hl, $0522                                  ; $7a6a: $21 $22 $05
    ld hl, $2221                                  ; $7a6d: $21 $21 $22
    inc bc                                        ; $7a70: $03
    ld [bc], a                                    ; $7a71: $02
    ld [bc], a                                    ; $7a72: $02
    ld hl, $3538                                  ; $7a73: $21 $38 $35
    ld [hl], $37                                  ; $7a76: $36 $37
    daa                                           ; $7a78: $27
    dec h                                         ; $7a79: $25
    ld h, $27                                     ; $7a7a: $26 $27
    dec hl                                        ; $7a7c: $2b
    add hl, hl                                    ; $7a7d: $29
    ld a, [hl+]                                   ; $7a7e: $2a
    dec hl                                        ; $7a7f: $2b
    inc sp                                        ; $7a80: $33
    dec l                                         ; $7a81: $2d
    ld l, $2f                                     ; $7a82: $2e $2f
    ld hl, $2222                                  ; $7a84: $21 $22 $22
    ld hl, $0122                                  ; $7a87: $21 $22 $01
    ld bc, $2202                                  ; $7a8a: $01 $02 $22
    ld bc, $0201                                  ; $7a8d: $01 $01 $02
    ld hl, $2222                                  ; $7a90: $21 $22 $22
    ld hl, $effd                                  ; $7a93: $21 $fd $ef
    ldh a, [$39]                                  ; $7a96: $f0 $39
    nop                                           ; $7a98: $00
    ld a, [c]                                     ; $7a99: $f2
    ld a, [hl-]                                   ; $7a9a: $3a
    dec sp                                        ; $7a9b: $3b
    ld bc, $3cf5                                  ; $7a9c: $01 $f5 $3c
    rst $30                                       ; $7a9f: $f7
    ld [bc], a                                    ; $7aa0: $02
    ld hl, sp-$07                                 ; $7aa1: $f8 $f9
    ld a, [$0707]                                 ; $7aa3: $fa $07 $07
    rlca                                          ; $7aa6: $07
    rlca                                          ; $7aa7: $07
    rlca                                          ; $7aa8: $07
    rlca                                          ; $7aa9: $07
    rlca                                          ; $7aaa: $07
    rlca                                          ; $7aab: $07
    rlca                                          ; $7aac: $07
    rlca                                          ; $7aad: $07
    rlca                                          ; $7aae: $07
    rlca                                          ; $7aaf: $07
    rlca                                          ; $7ab0: $07
    rlca                                          ; $7ab1: $07
    rlca                                          ; $7ab2: $07
    rlca                                          ; $7ab3: $07
    ei                                            ; $7ab4: $fb
    db $fc                                        ; $7ab5: $fc
    db $fd                                        ; $7ab6: $fd
    rst $28                                       ; $7ab7: $ef
    cp $ff                                        ; $7ab8: $fe $ff
    nop                                           ; $7aba: $00
    ld a, [c]                                     ; $7abb: $f2
    ei                                            ; $7abc: $fb
    db $fc                                        ; $7abd: $fc
    ld bc, $fef5                                  ; $7abe: $01 $f5 $fe
    rst $38                                       ; $7ac1: $ff
    ld [bc], a                                    ; $7ac2: $02
    ld hl, sp+$02                                 ; $7ac3: $f8 $02
    ld [bc], a                                    ; $7ac5: $02
    rlca                                          ; $7ac6: $07
    rlca                                          ; $7ac7: $07
    ld [bc], a                                    ; $7ac8: $02
    ld [bc], a                                    ; $7ac9: $02
    rlca                                          ; $7aca: $07
    rlca                                          ; $7acb: $07
    ld [bc], a                                    ; $7acc: $02
    ld [bc], a                                    ; $7acd: $02
    rlca                                          ; $7ace: $07
    rlca                                          ; $7acf: $07
    ld [bc], a                                    ; $7ad0: $02
    ld [bc], a                                    ; $7ad1: $02
    rlca                                          ; $7ad2: $07
    rlca                                          ; $7ad3: $07
    ldh a, [$f1]                                  ; $7ad4: $f0 $f1
    ei                                            ; $7ad6: $fb
    db $fc                                        ; $7ad7: $fc
    di                                            ; $7ad8: $f3
    db $f4                                        ; $7ad9: $f4
    cp $ff                                        ; $7ada: $fe $ff
    or $f7                                        ; $7adc: $f6 $f7
    ei                                            ; $7ade: $fb
    db $fc                                        ; $7adf: $fc
    ld sp, hl                                     ; $7ae0: $f9
    ld a, [$fffe]                                 ; $7ae1: $fa $fe $ff
    rlca                                          ; $7ae4: $07
    rlca                                          ; $7ae5: $07
    ld [bc], a                                    ; $7ae6: $02
    ld [bc], a                                    ; $7ae7: $02
    rlca                                          ; $7ae8: $07
    rlca                                          ; $7ae9: $07
    ld [bc], a                                    ; $7aea: $02
    ld [bc], a                                    ; $7aeb: $02
    rlca                                          ; $7aec: $07
    rlca                                          ; $7aed: $07
    ld [bc], a                                    ; $7aee: $02
    ld [bc], a                                    ; $7aef: $02
    rlca                                          ; $7af0: $07
    rlca                                          ; $7af1: $07
    ld [bc], a                                    ; $7af2: $02
    ld [bc], a                                    ; $7af3: $02
    db $fd                                        ; $7af4: $fd
    rst $28                                       ; $7af5: $ef
    ldh a, [$3d]                                  ; $7af6: $f0 $3d
    nop                                           ; $7af8: $00
    ld a, [c]                                     ; $7af9: $f2
    di                                            ; $7afa: $f3
    ld a, $3f                                     ; $7afb: $3e $3f
    push af                                       ; $7afd: $f5
    or $40                                        ; $7afe: $f6 $40
    ld b, c                                       ; $7b00: $41
    ld b, d                                       ; $7b01: $42
    ld sp, hl                                     ; $7b02: $f9
    ld b, e                                       ; $7b03: $43
    rlca                                          ; $7b04: $07
    rlca                                          ; $7b05: $07
    rlca                                          ; $7b06: $07
    rlca                                          ; $7b07: $07
    rlca                                          ; $7b08: $07
    rlca                                          ; $7b09: $07
    rlca                                          ; $7b0a: $07
    rlca                                          ; $7b0b: $07
    rlca                                          ; $7b0c: $07
    rlca                                          ; $7b0d: $07
    rlca                                          ; $7b0e: $07
    rlca                                          ; $7b0f: $07
    rlca                                          ; $7b10: $07
    rlca                                          ; $7b11: $07
    rlca                                          ; $7b12: $07
    rlca                                          ; $7b13: $07
    db $10                                        ; $7b14: $10
    ld b, $06                                     ; $7b15: $06 $06
    ld b, $44                                     ; $7b17: $06 $44
    rlca                                          ; $7b19: $07
    ld [$1609], sp                                ; $7b1a: $08 $09 $16
    ld a, [bc]                                    ; $7b1d: $0a
    dec bc                                        ; $7b1e: $0b
    inc c                                         ; $7b1f: $0c
    jr jr_07c_7b2f                                ; $7b20: $18 $0d

    ld c, $0f                                     ; $7b22: $0e $0f
    rlca                                          ; $7b24: $07
    rlca                                          ; $7b25: $07
    rlca                                          ; $7b26: $07
    rlca                                          ; $7b27: $07
    inc b                                         ; $7b28: $04
    inc b                                         ; $7b29: $04
    inc b                                         ; $7b2a: $04
    inc b                                         ; $7b2b: $04
    inc bc                                        ; $7b2c: $03
    dec b                                         ; $7b2d: $05
    inc bc                                        ; $7b2e: $03

jr_07c_7b2f:
    ld b, $05                                     ; $7b2f: $06 $05
    inc bc                                        ; $7b31: $03
    inc bc                                        ; $7b32: $03
    dec b                                         ; $7b33: $05
    ei                                            ; $7b34: $fb
    db $fc                                        ; $7b35: $fc
    db $10                                        ; $7b36: $10
    ld b, $12                                     ; $7b37: $06 $12
    inc de                                        ; $7b39: $13
    inc d                                         ; $7b3a: $14
    dec d                                         ; $7b3b: $15
    ld d, $17                                     ; $7b3c: $16 $17
    dec bc                                        ; $7b3e: $0b
    inc c                                         ; $7b3f: $0c
    jr jr_07c_7b4f                                ; $7b40: $18 $0d

    ld c, $0f                                     ; $7b42: $0e $0f
    ld [bc], a                                    ; $7b44: $02
    ld [bc], a                                    ; $7b45: $02
    rlca                                          ; $7b46: $07
    rlca                                          ; $7b47: $07
    ld [bc], a                                    ; $7b48: $02
    ld [bc], a                                    ; $7b49: $02
    inc b                                         ; $7b4a: $04
    inc b                                         ; $7b4b: $04
    ld b, $03                                     ; $7b4c: $06 $03
    dec b                                         ; $7b4e: $05

jr_07c_7b4f:
    dec b                                         ; $7b4f: $05
    inc bc                                        ; $7b50: $03
    dec b                                         ; $7b51: $05
    inc bc                                        ; $7b52: $03
    dec b                                         ; $7b53: $05
    ld b, $06                                     ; $7b54: $06 $06
    ei                                            ; $7b56: $fb
    db $fc                                        ; $7b57: $fc
    add hl, de                                    ; $7b58: $19
    ld a, [de]                                    ; $7b59: $1a
    ld [de], a                                    ; $7b5a: $12
    inc de                                        ; $7b5b: $13
    ld d, $0a                                     ; $7b5c: $16 $0a
    dec de                                        ; $7b5e: $1b
    inc e                                         ; $7b5f: $1c
    jr @+$0f                                      ; $7b60: $18 $0d

    ld c, $0f                                     ; $7b62: $0e $0f
    rlca                                          ; $7b64: $07
    rlca                                          ; $7b65: $07
    ld [bc], a                                    ; $7b66: $02
    ld [bc], a                                    ; $7b67: $02
    inc b                                         ; $7b68: $04
    inc b                                         ; $7b69: $04
    ld [bc], a                                    ; $7b6a: $02
    ld [bc], a                                    ; $7b6b: $02
    inc bc                                        ; $7b6c: $03
    inc bc                                        ; $7b6d: $03
    ld b, $05                                     ; $7b6e: $06 $05
    dec b                                         ; $7b70: $05
    inc bc                                        ; $7b71: $03
    inc bc                                        ; $7b72: $03
    ld b, $10                                     ; $7b73: $06 $10
    ld b, l                                       ; $7b75: $45
    ld b, $06                                     ; $7b76: $06 $06
    ld b, h                                       ; $7b78: $44
    rlca                                          ; $7b79: $07
    ld [$1615], sp                                ; $7b7a: $08 $15 $16
    ld a, [bc]                                    ; $7b7d: $0a
    dec bc                                        ; $7b7e: $0b
    inc c                                         ; $7b7f: $0c
    jr jr_07c_7b8f                                ; $7b80: $18 $0d

    ld c, $0f                                     ; $7b82: $0e $0f
    rlca                                          ; $7b84: $07
    rlca                                          ; $7b85: $07
    rlca                                          ; $7b86: $07
    rlca                                          ; $7b87: $07
    inc b                                         ; $7b88: $04
    inc b                                         ; $7b89: $04
    inc b                                         ; $7b8a: $04
    inc b                                         ; $7b8b: $04
    inc bc                                        ; $7b8c: $03
    dec b                                         ; $7b8d: $05
    dec b                                         ; $7b8e: $05

jr_07c_7b8f:
    inc b                                         ; $7b8f: $04
    dec b                                         ; $7b90: $05
    inc bc                                        ; $7b91: $03
    inc bc                                        ; $7b92: $03
    inc b                                         ; $7b93: $04
    jr nc, jr_07c_7bb7                            ; $7b94: $30 $21

    ld [hl+], a                                   ; $7b96: $22
    inc hl                                        ; $7b97: $23
    ld sp, $2f33                                  ; $7b98: $31 $33 $2f
    ld l, $32                                     ; $7b9b: $2e $32
    jr c, jr_07c_7bd6                             ; $7b9d: $38 $37

    ld [hl], $33                                  ; $7b9f: $36 $33
    daa                                           ; $7ba1: $27
    ld sp, $0325                                  ; $7ba2: $31 $25 $03
    dec b                                         ; $7ba5: $05
    dec b                                         ; $7ba6: $05
    dec b                                         ; $7ba7: $05
    ld [bc], a                                    ; $7ba8: $02
    ld bc, $0201                                  ; $7ba9: $01 $01 $02
    ld [bc], a                                    ; $7bac: $02
    ld bc, $0201                                  ; $7bad: $01 $01 $02
    ld hl, $0202                                  ; $7bb0: $21 $02 $02
    ld bc, $2130                                  ; $7bb3: $01 $30 $21
    ld [hl+], a                                   ; $7bb6: $22

jr_07c_7bb7:
    inc hl                                        ; $7bb7: $23
    dec l                                         ; $7bb8: $2d
    ld h, $25                                     ; $7bb9: $26 $25
    ld sp, $2a35                                  ; $7bbb: $31 $35 $2a
    add hl, hl                                    ; $7bbe: $29
    ld [hl-], a                                   ; $7bbf: $32
    ld h, $2e                                     ; $7bc0: $26 $2e
    dec l                                         ; $7bc2: $2d
    cpl                                           ; $7bc3: $2f
    inc bc                                        ; $7bc4: $03
    ld b, $06                                     ; $7bc5: $06 $06
    inc bc                                        ; $7bc7: $03
    ld [bc], a                                    ; $7bc8: $02
    ld hl, $2221                                  ; $7bc9: $21 $21 $22
    ld [bc], a                                    ; $7bcc: $02
    ld hl, $2221                                  ; $7bcd: $21 $21 $22
    ld bc, $0202                                  ; $7bd0: $01 $02 $02
    ld hl, $4630                                  ; $7bd3: $21 $30 $46

jr_07c_7bd6:
    ld e, $1f                                     ; $7bd6: $1e $1f
    daa                                           ; $7bd8: $27
    ld b, a                                       ; $7bd9: $47
    ld [$2b15], sp                                ; $7bda: $08 $15 $2b
    ld c, b                                       ; $7bdd: $48
    dec bc                                        ; $7bde: $0b
    inc c                                         ; $7bdf: $0c
    inc sp                                        ; $7be0: $33
    ld c, c                                       ; $7be1: $49
    ld c, $0f                                     ; $7be2: $0e $0f
    dec b                                         ; $7be4: $05
    dec b                                         ; $7be5: $05
    ld b, $03                                     ; $7be6: $06 $03
    ld [hl+], a                                   ; $7be8: $22
    inc bc                                        ; $7be9: $03
    inc bc                                        ; $7bea: $03
    dec b                                         ; $7beb: $05
    ld [hl+], a                                   ; $7bec: $22
    inc bc                                        ; $7bed: $03
    dec b                                         ; $7bee: $05
    dec b                                         ; $7bef: $05

jr_07c_7bf0:
    ld hl, $0503                                  ; $7bf0: $21 $03 $05
    ld b, $4a                                     ; $7bf3: $06 $4a
    dec e                                         ; $7bf5: $1d
    ld e, $1f                                     ; $7bf6: $1e $1f
    add hl, de                                    ; $7bf8: $19
    rlca                                          ; $7bf9: $07
    ld [$1615], sp                                ; $7bfa: $08 $15 $16
    ld c, e                                       ; $7bfd: $4b
    ld c, h                                       ; $7bfe: $4c
    ld c, h                                       ; $7bff: $4c
    jr jr_07c_7bf0                                ; $7c00: $18 $ee

    db $ed                                        ; $7c02: $ed
    db $ed                                        ; $7c03: $ed
    dec b                                         ; $7c04: $05
    dec b                                         ; $7c05: $05
    inc bc                                        ; $7c06: $03
    dec b                                         ; $7c07: $05
    inc bc                                        ; $7c08: $03
    ld b, $06                                     ; $7c09: $06 $06
    inc bc                                        ; $7c0b: $03
    inc bc                                        ; $7c0c: $03
    add b                                         ; $7c0d: $80
    add b                                         ; $7c0e: $80
    add b                                         ; $7c0f: $80
    inc bc                                        ; $7c10: $03
    add b                                         ; $7c11: $80
    add b                                         ; $7c12: $80
    add b                                         ; $7c13: $80
    jr c, jr_07c_7c41                             ; $7c14: $38 $2b

    ld [hl-], a                                   ; $7c16: $32
    add hl, hl                                    ; $7c17: $29
    ld sp, $2625                                  ; $7c18: $31 $25 $26
    daa                                           ; $7c1b: $27
    ld [hl-], a                                   ; $7c1c: $32
    add hl, hl                                    ; $7c1d: $29
    ld a, [hl+]                                   ; $7c1e: $2a
    dec hl                                        ; $7c1f: $2b
    inc sp                                        ; $7c20: $33
    dec l                                         ; $7c21: $2d
    ld l, $2f                                     ; $7c22: $2e $2f
    ld hl, $0202                                  ; $7c24: $21 $02 $02
    ld bc, $0102                                  ; $7c27: $01 $02 $01
    ld bc, $0202                                  ; $7c2a: $01 $02 $02
    ld bc, $0201                                  ; $7c2d: $01 $01 $02
    ld hl, $2222                                  ; $7c30: $21 $22 $22
    ld hl, $362a                                  ; $7c33: $21 $2a $36
    dec [hl]                                      ; $7c36: $35
    scf                                           ; $7c37: $37
    ld sp, $2f33                                  ; $7c38: $31 $33 $2f
    ld l, $32                                     ; $7c3b: $2e $32
    jr c, @+$39                                   ; $7c3d: $38 $37

    ld [hl], $33                                  ; $7c3f: $36 $33

jr_07c_7c41:
    daa                                           ; $7c41: $27
    ld sp, $0125                                  ; $7c42: $31 $25 $01
    ld [bc], a                                    ; $7c45: $02
    ld [bc], a                                    ; $7c46: $02
    ld hl, $0102                                  ; $7c47: $21 $02 $01
    ld bc, $0202                                  ; $7c4a: $01 $02 $02
    ld bc, $0201                                  ; $7c4d: $01 $01 $02
    ld hl, $0202                                  ; $7c50: $21 $02 $02
    ld bc, $4d38                                  ; $7c53: $01 $38 $4d
    ld e, $1f                                     ; $7c56: $1e $1f
    dec l                                         ; $7c58: $2d
    ld c, [hl]                                    ; $7c59: $4e
    ld [$3515], sp                                ; $7c5a: $08 $15 $35
    ld c, b                                       ; $7c5d: $48
    dec bc                                        ; $7c5e: $0b
    inc c                                         ; $7c5f: $0c
    ld h, $49                                     ; $7c60: $26 $49
    ld c, $0f                                     ; $7c62: $0e $0f
    ld hl, $0505                                  ; $7c64: $21 $05 $05
    ld b, $02                                     ; $7c67: $06 $02
    dec b                                         ; $7c69: $05
    ld b, $06                                     ; $7c6a: $06 $06
    ld [bc], a                                    ; $7c6c: $02
    dec b                                         ; $7c6d: $05
    ld b, $05                                     ; $7c6e: $06 $05

jr_07c_7c70:
    ld bc, $0503                                  ; $7c70: $01 $03 $05
    inc bc                                        ; $7c73: $03
    ld c, d                                       ; $7c74: $4a
    xor $ed                                       ; $7c75: $ee $ed
    db $ed                                        ; $7c77: $ed
    add hl, de                                    ; $7c78: $19
    xor $ed                                       ; $7c79: $ee $ed
    db $ed                                        ; $7c7b: $ed
    ld d, $ee                                     ; $7c7c: $16 $ee
    db $ed                                        ; $7c7e: $ed
    db $ed                                        ; $7c7f: $ed
    jr jr_07c_7c70                                ; $7c80: $18 $ee

    db $ed                                        ; $7c82: $ed
    db $ed                                        ; $7c83: $ed
    inc b                                         ; $7c84: $04
    add b                                         ; $7c85: $80
    add b                                         ; $7c86: $80
    add b                                         ; $7c87: $80
    inc b                                         ; $7c88: $04
    add b                                         ; $7c89: $80
    add b                                         ; $7c8a: $80
    add b                                         ; $7c8b: $80
    inc b                                         ; $7c8c: $04
    add b                                         ; $7c8d: $80
    add b                                         ; $7c8e: $80
    add b                                         ; $7c8f: $80
    inc b                                         ; $7c90: $04
    add b                                         ; $7c91: $80
    add b                                         ; $7c92: $80
    add b                                         ; $7c93: $80
    xor $ed                                       ; $7c94: $ee $ed
    db $ed                                        ; $7c96: $ed
    db $ed                                        ; $7c97: $ed
    ld c, a                                       ; $7c98: $4f
    ld c, h                                       ; $7c99: $4c
    ld d, b                                       ; $7c9a: $50
    db $ed                                        ; $7c9b: $ed
    ld d, c                                       ; $7c9c: $51
    ld d, d                                       ; $7c9d: $52
    xor $ed                                       ; $7c9e: $ee $ed
    ld d, e                                       ; $7ca0: $53
    ld d, h                                       ; $7ca1: $54
    ld d, l                                       ; $7ca2: $55
    db $ed                                        ; $7ca3: $ed
    add b                                         ; $7ca4: $80
    add b                                         ; $7ca5: $80
    add b                                         ; $7ca6: $80
    add b                                         ; $7ca7: $80
    add b                                         ; $7ca8: $80
    add b                                         ; $7ca9: $80
    add b                                         ; $7caa: $80
    add b                                         ; $7cab: $80
    rlca                                          ; $7cac: $07
    rlca                                          ; $7cad: $07
    add b                                         ; $7cae: $80
    add b                                         ; $7caf: $80
    rlca                                          ; $7cb0: $07
    rlca                                          ; $7cb1: $07
    add b                                         ; $7cb2: $80
    add b                                         ; $7cb3: $80
    ld d, [hl]                                    ; $7cb4: $56
    ld d, a                                       ; $7cb5: $57
    ld d, l                                       ; $7cb6: $55
    db $ed                                        ; $7cb7: $ed
    ld e, b                                       ; $7cb8: $58
    ld e, c                                       ; $7cb9: $59
    ld d, l                                       ; $7cba: $55
    db $ed                                        ; $7cbb: $ed
    ld e, d                                       ; $7cbc: $5a
    ld e, e                                       ; $7cbd: $5b
    ld d, l                                       ; $7cbe: $55
    db $ed                                        ; $7cbf: $ed
    jr jr_07c_7ccf                                ; $7cc0: $18 $0d

    ld d, l                                       ; $7cc2: $55
    ld e, h                                       ; $7cc3: $5c
    rlca                                          ; $7cc4: $07
    rlca                                          ; $7cc5: $07
    add b                                         ; $7cc6: $80
    add b                                         ; $7cc7: $80
    rlca                                          ; $7cc8: $07
    rlca                                          ; $7cc9: $07
    add b                                         ; $7cca: $80
    add b                                         ; $7ccb: $80
    rlca                                          ; $7ccc: $07
    rlca                                          ; $7ccd: $07
    add b                                         ; $7cce: $80

jr_07c_7ccf:
    add b                                         ; $7ccf: $80
    inc b                                         ; $7cd0: $04
    inc b                                         ; $7cd1: $04
    add b                                         ; $7cd2: $80
    add b                                         ; $7cd3: $80
    ld c, d                                       ; $7cd4: $4a
    dec e                                         ; $7cd5: $1d
    xor $5c                                       ; $7cd6: $ee $5c
    ld c, e                                       ; $7cd8: $4b
    ld c, h                                       ; $7cd9: $4c
    ld e, l                                       ; $7cda: $5d
    ld e, h                                       ; $7cdb: $5c
    ld e, l                                       ; $7cdc: $5d
    db $ed                                        ; $7cdd: $ed
    db $ed                                        ; $7cde: $ed
    db $ed                                        ; $7cdf: $ed
    db $ed                                        ; $7ce0: $ed
    db $ed                                        ; $7ce1: $ed
    db $ed                                        ; $7ce2: $ed
    db $ed                                        ; $7ce3: $ed
    inc bc                                        ; $7ce4: $03
    inc b                                         ; $7ce5: $04
    add b                                         ; $7ce6: $80
    add b                                         ; $7ce7: $80
    add b                                         ; $7ce8: $80
    add b                                         ; $7ce9: $80
    add b                                         ; $7cea: $80
    add b                                         ; $7ceb: $80
    add b                                         ; $7cec: $80
    add b                                         ; $7ced: $80
    add b                                         ; $7cee: $80
    add b                                         ; $7cef: $80
    add b                                         ; $7cf0: $80
    add b                                         ; $7cf1: $80
    add b                                         ; $7cf2: $80
    add b                                         ; $7cf3: $80
    xor $1d                                       ; $7cf4: $ee $1d
    ld e, $1f                                     ; $7cf6: $1e $1f
    xor $07                                       ; $7cf8: $ee $07
    ld [$ee15], sp                                ; $7cfa: $08 $15 $ee
    ld a, [bc]                                    ; $7cfd: $0a
    dec bc                                        ; $7cfe: $0b
    inc c                                         ; $7cff: $0c
    xor $0d                                       ; $7d00: $ee $0d
    ld c, $0f                                     ; $7d02: $0e $0f
    add b                                         ; $7d04: $80
    inc b                                         ; $7d05: $04
    ld b, $05                                     ; $7d06: $06 $05
    add b                                         ; $7d08: $80
    inc b                                         ; $7d09: $04
    dec b                                         ; $7d0a: $05
    inc bc                                        ; $7d0b: $03
    add b                                         ; $7d0c: $80
    inc b                                         ; $7d0d: $04
    inc bc                                        ; $7d0e: $03
    ld b, $80                                     ; $7d0f: $06 $80
    inc b                                         ; $7d11: $04
    ld b, $03                                     ; $7d12: $06 $03
    inc [hl]                                      ; $7d14: $34
    ld [hl], $35                                  ; $7d15: $36 $35
    scf                                           ; $7d17: $37
    inc h                                         ; $7d18: $24
    inc sp                                        ; $7d19: $33
    cpl                                           ; $7d1a: $2f
    ld l, $28                                     ; $7d1b: $2e $28
    jr c, jr_07c_7d56                             ; $7d1d: $38 $37

    ld [hl], $2c                                  ; $7d1f: $36 $2c
    daa                                           ; $7d21: $27
    ld sp, $0525                                  ; $7d22: $31 $25 $05
    ld [bc], a                                    ; $7d25: $02
    ld [bc], a                                    ; $7d26: $02
    ld hl, $0106                                  ; $7d27: $21 $06 $01
    ld bc, $0302                                  ; $7d2a: $01 $02 $03
    ld bc, $0201                                  ; $7d2d: $01 $01 $02
    dec b                                         ; $7d30: $05
    ld [bc], a                                    ; $7d31: $02
    ld [bc], a                                    ; $7d32: $02
    ld bc, $3538                                  ; $7d33: $01 $38 $35
    ld [hl], $37                                  ; $7d36: $36 $37
    dec l                                         ; $7d38: $2d
    ld h, $25                                     ; $7d39: $26 $25
    ld sp, $2a35                                  ; $7d3b: $31 $35 $2a
    add hl, hl                                    ; $7d3e: $29
    ld [hl-], a                                   ; $7d3f: $32
    ld h, $2e                                     ; $7d40: $26 $2e
    dec l                                         ; $7d42: $2d
    cpl                                           ; $7d43: $2f
    ld hl, $2222                                  ; $7d44: $21 $22 $22
    ld hl, $2102                                  ; $7d47: $21 $02 $21
    ld hl, $0222                                  ; $7d4a: $21 $22 $02
    ld hl, $2221                                  ; $7d4d: $21 $21 $22
    ld bc, $0202                                  ; $7d50: $01 $02 $02
    ld hl, $eded                                  ; $7d53: $21 $ed $ed

jr_07c_7d56:
    ld c, e                                       ; $7d56: $4b
    ld c, h                                       ; $7d57: $4c
    db $ed                                        ; $7d58: $ed
    db $ed                                        ; $7d59: $ed
    xor $52                                       ; $7d5a: $ee $52
    db $ed                                        ; $7d5c: $ed
    db $ed                                        ; $7d5d: $ed
    ld d, l                                       ; $7d5e: $55
    ld d, h                                       ; $7d5f: $54
    db $ed                                        ; $7d60: $ed
    db $ed                                        ; $7d61: $ed
    ld d, l                                       ; $7d62: $55
    ld d, a                                       ; $7d63: $57
    add b                                         ; $7d64: $80
    add b                                         ; $7d65: $80
    add b                                         ; $7d66: $80
    add b                                         ; $7d67: $80
    add b                                         ; $7d68: $80
    add b                                         ; $7d69: $80
    add b                                         ; $7d6a: $80
    daa                                           ; $7d6b: $27
    add b                                         ; $7d6c: $80
    add b                                         ; $7d6d: $80
    add b                                         ; $7d6e: $80
    daa                                           ; $7d6f: $27
    add b                                         ; $7d70: $80
    add b                                         ; $7d71: $80
    add b                                         ; $7d72: $80
    daa                                           ; $7d73: $27
    ld e, l                                       ; $7d74: $5d
    dec e                                         ; $7d75: $1d
    ld e, $1f                                     ; $7d76: $1e $1f
    ld d, c                                       ; $7d78: $51
    rlca                                          ; $7d79: $07
    ld [$5315], sp                                ; $7d7a: $08 $15 $53
    ld a, [bc]                                    ; $7d7d: $0a
    dec bc                                        ; $7d7e: $0b
    inc c                                         ; $7d7f: $0c
    ld d, [hl]                                    ; $7d80: $56
    dec c                                         ; $7d81: $0d
    ld c, $0f                                     ; $7d82: $0e $0f
    add b                                         ; $7d84: $80
    inc b                                         ; $7d85: $04
    inc bc                                        ; $7d86: $03
    dec b                                         ; $7d87: $05
    daa                                           ; $7d88: $27
    inc b                                         ; $7d89: $04
    ld b, $03                                     ; $7d8a: $06 $03
    daa                                           ; $7d8c: $27
    inc b                                         ; $7d8d: $04
    inc bc                                        ; $7d8e: $03
    dec b                                         ; $7d8f: $05
    daa                                           ; $7d90: $27
    inc b                                         ; $7d91: $04
    dec b                                         ; $7d92: $05
    dec b                                         ; $7d93: $05
    inc [hl]                                      ; $7d94: $34
    dec hl                                        ; $7d95: $2b
    ld [hl-], a                                   ; $7d96: $32
    add hl, hl                                    ; $7d97: $29
    inc h                                         ; $7d98: $24
    dec h                                         ; $7d99: $25
    ld h, $27                                     ; $7d9a: $26 $27
    jr z, jr_07c_7dc7                             ; $7d9c: $28 $29

    ld a, [hl+]                                   ; $7d9e: $2a
    dec hl                                        ; $7d9f: $2b
    inc l                                         ; $7da0: $2c
    dec l                                         ; $7da1: $2d
    ld l, $2f                                     ; $7da2: $2e $2f
    ld b, $02                                     ; $7da4: $06 $02
    ld [bc], a                                    ; $7da6: $02
    ld bc, $0106                                  ; $7da7: $01 $06 $01
    ld bc, $0302                                  ; $7daa: $01 $02 $03
    ld bc, $0201                                  ; $7dad: $01 $01 $02
    ld b, $22                                     ; $7db0: $06 $22
    ld [hl+], a                                   ; $7db2: $22
    ld hl, $eded                                  ; $7db3: $21 $ed $ed
    ld d, l                                       ; $7db6: $55
    ld e, c                                       ; $7db7: $59
    db $ed                                        ; $7db8: $ed
    db $ed                                        ; $7db9: $ed
    ld d, l                                       ; $7dba: $55
    ld e, e                                       ; $7dbb: $5b
    db $ed                                        ; $7dbc: $ed
    ld e, h                                       ; $7dbd: $5c
    ld d, l                                       ; $7dbe: $55
    inc c                                         ; $7dbf: $0c
    db $ed                                        ; $7dc0: $ed
    ld e, h                                       ; $7dc1: $5c
    xor $0f                                       ; $7dc2: $ee $0f
    add b                                         ; $7dc4: $80
    add b                                         ; $7dc5: $80
    add b                                         ; $7dc6: $80

jr_07c_7dc7:
    daa                                           ; $7dc7: $27
    add b                                         ; $7dc8: $80
    add b                                         ; $7dc9: $80
    add b                                         ; $7dca: $80
    daa                                           ; $7dcb: $27
    add b                                         ; $7dcc: $80
    and b                                         ; $7dcd: $a0
    add b                                         ; $7dce: $80
    inc b                                         ; $7dcf: $04
    add b                                         ; $7dd0: $80
    and b                                         ; $7dd1: $a0
    add b                                         ; $7dd2: $80
    inc b                                         ; $7dd3: $04
    ld e, b                                       ; $7dd4: $58
    dec e                                         ; $7dd5: $1d
    ld e, $1f                                     ; $7dd6: $1e $1f
    ld e, d                                       ; $7dd8: $5a
    rlca                                          ; $7dd9: $07
    ld [$1615], sp                                ; $7dda: $08 $15 $16
    ld a, [bc]                                    ; $7ddd: $0a
    dec bc                                        ; $7dde: $0b
    inc c                                         ; $7ddf: $0c
    jr jr_07c_7def                                ; $7de0: $18 $0d

    ld c, $0f                                     ; $7de2: $0e $0f
    daa                                           ; $7de4: $27
    inc b                                         ; $7de5: $04
    dec b                                         ; $7de6: $05
    inc bc                                        ; $7de7: $03
    daa                                           ; $7de8: $27
    inc b                                         ; $7de9: $04
    inc bc                                        ; $7dea: $03
    inc bc                                        ; $7deb: $03
    inc b                                         ; $7dec: $04
    inc b                                         ; $7ded: $04
    inc bc                                        ; $7dee: $03

jr_07c_7def:
    dec b                                         ; $7def: $05
    inc bc                                        ; $7df0: $03
    dec b                                         ; $7df1: $05
    inc bc                                        ; $7df2: $03
    ld b, $34                                     ; $7df3: $06 $34
    dec [hl]                                      ; $7df5: $35
    ld [hl], $37                                  ; $7df6: $36 $37
    ld e, [hl]                                    ; $7df8: $5e
    ld e, a                                       ; $7df9: $5f
    ld h, b                                       ; $7dfa: $60
    ld h, c                                       ; $7dfb: $61
    ld d, $0a                                     ; $7dfc: $16 $0a
    dec bc                                        ; $7dfe: $0b
    inc c                                         ; $7dff: $0c
    jr jr_07c_7e0f                                ; $7e00: $18 $0d

    ld c, $0f                                     ; $7e02: $0e $0f
    ld b, $22                                     ; $7e04: $06 $22
    ld [hl+], a                                   ; $7e06: $22
    ld hl, $0503                                  ; $7e07: $21 $03 $05
    ld b, $06                                     ; $7e0a: $06 $06
    dec b                                         ; $7e0c: $05
    inc bc                                        ; $7e0d: $03
    dec b                                         ; $7e0e: $05

jr_07c_7e0f:
    dec b                                         ; $7e0f: $05
    inc bc                                        ; $7e10: $03
    dec b                                         ; $7e11: $05
    dec b                                         ; $7e12: $05
    inc bc                                        ; $7e13: $03
    jr c, jr_07c_7e41                             ; $7e14: $38 $2b

    ld [hl-], a                                   ; $7e16: $32
    add hl, hl                                    ; $7e17: $29
    ld h, d                                       ; $7e18: $62
    ld h, e                                       ; $7e19: $63
    ld h, b                                       ; $7e1a: $60
    ld h, c                                       ; $7e1b: $61
    ld d, $0a                                     ; $7e1c: $16 $0a
    dec bc                                        ; $7e1e: $0b
    inc c                                         ; $7e1f: $0c
    jr @+$0f                                      ; $7e20: $18 $0d

    ld c, $0f                                     ; $7e22: $0e $0f
    ld hl, $0202                                  ; $7e24: $21 $02 $02
    ld bc, $0503                                  ; $7e27: $01 $03 $05
    ld b, $05                                     ; $7e2a: $06 $05
    inc bc                                        ; $7e2c: $03
    inc bc                                        ; $7e2d: $03
    ld b, $03                                     ; $7e2e: $06 $03
    dec b                                         ; $7e30: $05
    inc bc                                        ; $7e31: $03
    dec b                                         ; $7e32: $05
    dec b                                         ; $7e33: $05
    db $ed                                        ; $7e34: $ed
    ld e, h                                       ; $7e35: $5c
    ld c, a                                       ; $7e36: $4f
    ld c, h                                       ; $7e37: $4c
    db $ed                                        ; $7e38: $ed
    db $ed                                        ; $7e39: $ed
    db $ed                                        ; $7e3a: $ed
    db $ed                                        ; $7e3b: $ed
    db $ed                                        ; $7e3c: $ed
    db $ed                                        ; $7e3d: $ed
    db $ed                                        ; $7e3e: $ed
    db $ed                                        ; $7e3f: $ed
    db $ed                                        ; $7e40: $ed

jr_07c_7e41:
    db $ed                                        ; $7e41: $ed
    db $ed                                        ; $7e42: $ed
    db $ed                                        ; $7e43: $ed
    add b                                         ; $7e44: $80
    and b                                         ; $7e45: $a0
    add b                                         ; $7e46: $80
    add b                                         ; $7e47: $80
    add b                                         ; $7e48: $80
    add b                                         ; $7e49: $80
    add b                                         ; $7e4a: $80
    add b                                         ; $7e4b: $80
    add b                                         ; $7e4c: $80
    add b                                         ; $7e4d: $80
    add b                                         ; $7e4e: $80
    add b                                         ; $7e4f: $80
    add b                                         ; $7e50: $80
    add b                                         ; $7e51: $80
    add b                                         ; $7e52: $80
    add b                                         ; $7e53: $80
    ld d, b                                       ; $7e54: $50
    dec e                                         ; $7e55: $1d
    ld e, $1f                                     ; $7e56: $1e $1f
    ld c, a                                       ; $7e58: $4f
    ld c, h                                       ; $7e59: $4c
    ld c, h                                       ; $7e5a: $4c
    ld c, h                                       ; $7e5b: $4c
    db $ed                                        ; $7e5c: $ed
    db $ed                                        ; $7e5d: $ed
    db $ed                                        ; $7e5e: $ed
    db $ed                                        ; $7e5f: $ed
    db $ed                                        ; $7e60: $ed
    db $ed                                        ; $7e61: $ed
    db $ed                                        ; $7e62: $ed
    db $ed                                        ; $7e63: $ed
    add b                                         ; $7e64: $80
    dec b                                         ; $7e65: $05
    dec b                                         ; $7e66: $05
    ld b, $80                                     ; $7e67: $06 $80
    add b                                         ; $7e69: $80
    add b                                         ; $7e6a: $80
    add b                                         ; $7e6b: $80
    add b                                         ; $7e6c: $80
    add b                                         ; $7e6d: $80
    add b                                         ; $7e6e: $80
    add b                                         ; $7e6f: $80
    add b                                         ; $7e70: $80
    add b                                         ; $7e71: $80
    add b                                         ; $7e72: $80
    add b                                         ; $7e73: $80
    ld c, d                                       ; $7e74: $4a
    dec e                                         ; $7e75: $1d
    ld e, $1f                                     ; $7e76: $1e $1f
    ld c, h                                       ; $7e78: $4c
    ld c, h                                       ; $7e79: $4c
    ld c, h                                       ; $7e7a: $4c
    ld c, h                                       ; $7e7b: $4c
    db $ed                                        ; $7e7c: $ed

Jump_07c_7e7d:
    db $ed                                        ; $7e7d: $ed
    db $ed                                        ; $7e7e: $ed
    db $ed                                        ; $7e7f: $ed
    db $ed                                        ; $7e80: $ed
    db $ed                                        ; $7e81: $ed
    db $ed                                        ; $7e82: $ed
    db $ed                                        ; $7e83: $ed
    dec b                                         ; $7e84: $05
    inc bc                                        ; $7e85: $03
    inc bc                                        ; $7e86: $03
    dec b                                         ; $7e87: $05
    add b                                         ; $7e88: $80
    add b                                         ; $7e89: $80
    add b                                         ; $7e8a: $80
    add b                                         ; $7e8b: $80
    add b                                         ; $7e8c: $80
    add b                                         ; $7e8d: $80
    add b                                         ; $7e8e: $80
    add b                                         ; $7e8f: $80
    add b                                         ; $7e90: $80
    add b                                         ; $7e91: $80
    add b                                         ; $7e92: $80
    add b                                         ; $7e93: $80
    ld c, d                                       ; $7e94: $4a
    dec e                                         ; $7e95: $1d
    ld e, $1f                                     ; $7e96: $1e $1f
    ld c, h                                       ; $7e98: $4c
    ld c, h                                       ; $7e99: $4c
    ld c, h                                       ; $7e9a: $4c
    ld c, h                                       ; $7e9b: $4c
    db $ed                                        ; $7e9c: $ed
    db $ed                                        ; $7e9d: $ed
    db $ed                                        ; $7e9e: $ed
    db $ed                                        ; $7e9f: $ed
    db $ed                                        ; $7ea0: $ed
    db $ed                                        ; $7ea1: $ed
    db $ed                                        ; $7ea2: $ed
    db $ed                                        ; $7ea3: $ed
    ld b, $06                                     ; $7ea4: $06 $06
    inc bc                                        ; $7ea6: $03
    dec b                                         ; $7ea7: $05
    add b                                         ; $7ea8: $80
    add b                                         ; $7ea9: $80
    add b                                         ; $7eaa: $80
    add b                                         ; $7eab: $80
    add b                                         ; $7eac: $80
    add b                                         ; $7ead: $80
    add b                                         ; $7eae: $80
    add b                                         ; $7eaf: $80
    add b                                         ; $7eb0: $80
    add b                                         ; $7eb1: $80
    add b                                         ; $7eb2: $80
    add b                                         ; $7eb3: $80
    ld a, [hl+]                                   ; $7eb4: $2a
    ld c, l                                       ; $7eb5: $4d
    ld e, $1f                                     ; $7eb6: $1e $1f
    ld sp, $084e                                  ; $7eb8: $31 $4e $08
    dec d                                         ; $7ebb: $15
    ld [hl-], a                                   ; $7ebc: $32
    ld c, b                                       ; $7ebd: $48
    dec bc                                        ; $7ebe: $0b
    inc c                                         ; $7ebf: $0c
    inc sp                                        ; $7ec0: $33
    ld c, c                                       ; $7ec1: $49
    ld c, $0f                                     ; $7ec2: $0e $0f
    ld bc, $0505                                  ; $7ec4: $01 $05 $05
    inc bc                                        ; $7ec7: $03
    ld [bc], a                                    ; $7ec8: $02
    dec b                                         ; $7ec9: $05
    inc bc                                        ; $7eca: $03
    inc bc                                        ; $7ecb: $03
    ld [bc], a                                    ; $7ecc: $02
    ld b, $03                                     ; $7ecd: $06 $03
    dec b                                         ; $7ecf: $05
    ld hl, $0503                                  ; $7ed0: $21 $03 $05
    dec b                                         ; $7ed3: $05
    jr c, @+$4f                                   ; $7ed4: $38 $4d

    ld e, $1f                                     ; $7ed6: $1e $1f
    ld sp, $084e                                  ; $7ed8: $31 $4e $08
    dec d                                         ; $7edb: $15
    ld [hl-], a                                   ; $7edc: $32
    ld c, b                                       ; $7edd: $48
    dec bc                                        ; $7ede: $0b
    inc c                                         ; $7edf: $0c
    inc sp                                        ; $7ee0: $33
    ld c, c                                       ; $7ee1: $49
    ld c, $0f                                     ; $7ee2: $0e $0f
    ld hl, $0305                                  ; $7ee4: $21 $05 $03
    dec b                                         ; $7ee7: $05
    ld [bc], a                                    ; $7ee8: $02
    inc bc                                        ; $7ee9: $03
    dec b                                         ; $7eea: $05
    inc bc                                        ; $7eeb: $03
    ld [bc], a                                    ; $7eec: $02
    ld b, $03                                     ; $7eed: $06 $03
    dec b                                         ; $7eef: $05
    ld hl, $0305                                  ; $7ef0: $21 $05 $03
    ld b, $2a                                     ; $7ef3: $06 $2a
    ld [hl], $35                                  ; $7ef5: $36 $35
    scf                                           ; $7ef7: $37
    ld h, d                                       ; $7ef8: $62
    ld h, e                                       ; $7ef9: $63
    ld h, b                                       ; $7efa: $60
    ld h, c                                       ; $7efb: $61
    ld d, $0a                                     ; $7efc: $16 $0a
    dec bc                                        ; $7efe: $0b
    inc c                                         ; $7eff: $0c
    jr jr_07c_7f0f                                ; $7f00: $18 $0d

    ld c, $0f                                     ; $7f02: $0e $0f
    ld bc, $0202                                  ; $7f04: $01 $02 $02
    ld hl, $0603                                  ; $7f07: $21 $03 $06
    ld b, $05                                     ; $7f0a: $06 $05
    dec b                                         ; $7f0c: $05
    dec b                                         ; $7f0d: $05
    inc bc                                        ; $7f0e: $03

jr_07c_7f0f:
    inc bc                                        ; $7f0f: $03
    inc bc                                        ; $7f10: $03
    inc bc                                        ; $7f11: $03
    dec b                                         ; $7f12: $05
    dec b                                         ; $7f13: $05
    jr c, @+$37                                   ; $7f14: $38 $35

    ld [hl], $37                                  ; $7f16: $36 $37
    ld h, d                                       ; $7f18: $62
    ld h, e                                       ; $7f19: $63
    ld h, b                                       ; $7f1a: $60
    ld h, c                                       ; $7f1b: $61
    ld d, $0a                                     ; $7f1c: $16 $0a
    dec bc                                        ; $7f1e: $0b
    inc c                                         ; $7f1f: $0c
    jr @+$0f                                      ; $7f20: $18 $0d

    ld c, $0f                                     ; $7f22: $0e $0f
    ld hl, $2222                                  ; $7f24: $21 $22 $22
    ld hl, $0305                                  ; $7f27: $21 $05 $03
    ld b, $05                                     ; $7f2a: $06 $05
    dec b                                         ; $7f2c: $05
    inc bc                                        ; $7f2d: $03
    ld b, $03                                     ; $7f2e: $06 $03
    inc bc                                        ; $7f30: $03
    dec b                                         ; $7f31: $05
    dec b                                         ; $7f32: $05
    dec b                                         ; $7f33: $05
    jr c, jr_07c_7f83                             ; $7f34: $38 $4d

    ld e, $1f                                     ; $7f36: $1e $1f
    ld h, h                                       ; $7f38: $64
    ld h, l                                       ; $7f39: $65
    ld [$1615], sp                                ; $7f3a: $08 $15 $16
    ld a, [bc]                                    ; $7f3d: $0a
    dec bc                                        ; $7f3e: $0b
    inc c                                         ; $7f3f: $0c
    jr jr_07c_7f4f                                ; $7f40: $18 $0d

    ld c, $0f                                     ; $7f42: $0e $0f
    ld hl, $0306                                  ; $7f44: $21 $06 $03
    inc bc                                        ; $7f47: $03
    ld b, $03                                     ; $7f48: $06 $03
    ld b, $05                                     ; $7f4a: $06 $05
    dec b                                         ; $7f4c: $05
    inc bc                                        ; $7f4d: $03
    dec b                                         ; $7f4e: $05

jr_07c_7f4f:
    ld b, $03                                     ; $7f4f: $06 $03
    inc bc                                        ; $7f51: $03
    inc bc                                        ; $7f52: $03
    ld b, $4a                                     ; $7f53: $06 $4a
    dec e                                         ; $7f55: $1d
    ld e, $1f                                     ; $7f56: $1e $1f
    ld c, h                                       ; $7f58: $4c
    ld c, h                                       ; $7f59: $4c
    ld c, h                                       ; $7f5a: $4c
    ld c, h                                       ; $7f5b: $4c
    db $ed                                        ; $7f5c: $ed
    db $ed                                        ; $7f5d: $ed
    db $ed                                        ; $7f5e: $ed
    db $ed                                        ; $7f5f: $ed
    db $ed                                        ; $7f60: $ed
    db $ed                                        ; $7f61: $ed
    db $ed                                        ; $7f62: $ed
    db $ed                                        ; $7f63: $ed
    dec b                                         ; $7f64: $05
    dec b                                         ; $7f65: $05
    inc bc                                        ; $7f66: $03
    ld b, $80                                     ; $7f67: $06 $80
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
    ld c, d                                       ; $7f74: $4a
    dec e                                         ; $7f75: $1d
    ld e, $1f                                     ; $7f76: $1e $1f
    ld c, h                                       ; $7f78: $4c
    ld c, h                                       ; $7f79: $4c
    ld c, h                                       ; $7f7a: $4c
    ld c, h                                       ; $7f7b: $4c
    db $ed                                        ; $7f7c: $ed
    db $ed                                        ; $7f7d: $ed
    db $ed                                        ; $7f7e: $ed
    db $ed                                        ; $7f7f: $ed
    db $ed                                        ; $7f80: $ed
    db $ed                                        ; $7f81: $ed
    db $ed                                        ; $7f82: $ed

jr_07c_7f83:
    db $ed                                        ; $7f83: $ed
    ld b, $05                                     ; $7f84: $06 $05
    inc bc                                        ; $7f86: $03
    inc bc                                        ; $7f87: $03
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
    ld c, d                                       ; $7f94: $4a
    dec e                                         ; $7f95: $1d
    ld e, $1f                                     ; $7f96: $1e $1f
    ld c, h                                       ; $7f98: $4c
    ld c, h                                       ; $7f99: $4c
    ld c, h                                       ; $7f9a: $4c
    ld c, h                                       ; $7f9b: $4c
    db $ed                                        ; $7f9c: $ed
    db $ed                                        ; $7f9d: $ed
    db $ed                                        ; $7f9e: $ed
    db $ed                                        ; $7f9f: $ed
    db $ed                                        ; $7fa0: $ed
    db $ed                                        ; $7fa1: $ed
    db $ed                                        ; $7fa2: $ed
    db $ed                                        ; $7fa3: $ed
    inc bc                                        ; $7fa4: $03
    dec b                                         ; $7fa5: $05
    dec b                                         ; $7fa6: $05
    inc bc                                        ; $7fa7: $03
    add b                                         ; $7fa8: $80
    add b                                         ; $7fa9: $80
    add b                                         ; $7faa: $80
    add b                                         ; $7fab: $80
    add b                                         ; $7fac: $80
    add b                                         ; $7fad: $80
    add b                                         ; $7fae: $80
    add b                                         ; $7faf: $80
    add b                                         ; $7fb0: $80
    add b                                         ; $7fb1: $80
    add b                                         ; $7fb2: $80
    add b                                         ; $7fb3: $80
    ld c, d                                       ; $7fb4: $4a
    xor $ed                                       ; $7fb5: $ee $ed
    db $ed                                        ; $7fb7: $ed
    ld c, h                                       ; $7fb8: $4c
    ld e, l                                       ; $7fb9: $5d
    db $ed                                        ; $7fba: $ed
    db $ed                                        ; $7fbb: $ed
    db $ed                                        ; $7fbc: $ed
    db $ed                                        ; $7fbd: $ed
    db $ed                                        ; $7fbe: $ed
    db $ed                                        ; $7fbf: $ed
    db $ed                                        ; $7fc0: $ed
    db $ed                                        ; $7fc1: $ed
    db $ed                                        ; $7fc2: $ed
    db $ed                                        ; $7fc3: $ed
    inc b                                         ; $7fc4: $04
    add b                                         ; $7fc5: $80
    add b                                         ; $7fc6: $80
    add b                                         ; $7fc7: $80
    add b                                         ; $7fc8: $80
    add b                                         ; $7fc9: $80
    add b                                         ; $7fca: $80
    add b                                         ; $7fcb: $80
    add b                                         ; $7fcc: $80
    add b                                         ; $7fcd: $80
    add b                                         ; $7fce: $80
    add b                                         ; $7fcf: $80
    add b                                         ; $7fd0: $80
    add b                                         ; $7fd1: $80
    add b                                         ; $7fd2: $80
    add b                                         ; $7fd3: $80
    add hl, bc                                    ; $7fd4: $09
    nop                                           ; $7fd5: $00
    nop                                           ; $7fd6: $00
    rrca                                          ; $7fd7: $0f
    nop                                           ; $7fd8: $00
    ld bc, $001b                                  ; $7fd9: $01 $1b $00
    inc bc                                        ; $7fdc: $03
    ld [bc], a                                    ; $7fdd: $02
    nop                                           ; $7fde: $00
    jr nz, jr_07c_7fe1                            ; $7fdf: $20 $00

jr_07c_7fe1:
    ld a, d                                       ; $7fe1: $7a
    nop                                           ; $7fe2: $00
    ld [$5008], sp                                ; $7fe3: $08 $08 $50
    nop                                           ; $7fe6: $00
    ld b, b                                       ; $7fe7: $40
    nop                                           ; $7fe8: $00
    inc c                                         ; $7fe9: $0c
    nop                                           ; $7fea: $00
    ld d, b                                       ; $7feb: $50
    nop                                           ; $7fec: $00
    ld c, e                                       ; $7fed: $4b
    nop                                           ; $7fee: $00
    rlca                                          ; $7fef: $07
    nop                                           ; $7ff0: $00
    adc d                                         ; $7ff1: $8a
    nop                                           ; $7ff2: $00
    ld c, l                                       ; $7ff3: $4d
    nop                                           ; $7ff4: $00
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
