; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $07e", ROMX[$4000], BANK[$7e]

    ld a, [hl]                                    ; $4000: $7e
    ld sp, $3332                                  ; $4001: $31 $32 $33
    inc [hl]                                      ; $4004: $34
    dec [hl]                                      ; $4005: $35
    ld [hl], $37                                  ; $4006: $36 $37
    jr c, @+$3b                                   ; $4008: $38 $39

    jr nc, jr_07e_403d                            ; $400a: $30 $31

    ld [hl-], a                                   ; $400c: $32
    inc sp                                        ; $400d: $33
    inc [hl]                                      ; $400e: $34
    dec [hl]                                      ; $400f: $35
    ld d, $00                                     ; $4010: $16 $00
    inc d                                         ; $4012: $14
    nop                                           ; $4013: $00
    ldh [rNR42], a                                ; $4014: $e0 $21
    pop de                                        ; $4016: $d1
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
    add c                                         ; $4026: $81
    add c                                         ; $4027: $81
    add c                                         ; $4028: $81
    add c                                         ; $4029: $81
    add c                                         ; $402a: $81
    ld bc, $0101                                  ; $402b: $01 $01 $01
    add c                                         ; $402e: $81
    ld bc, $0101                                  ; $402f: $01 $01 $01
    add c                                         ; $4032: $81
    ld bc, $0101                                  ; $4033: $01 $01 $01
    pop de                                        ; $4036: $d1
    pop de                                        ; $4037: $d1
    pop de                                        ; $4038: $d1
    pop de                                        ; $4039: $d1
    pop de                                        ; $403a: $d1
    pop de                                        ; $403b: $d1
    pop de                                        ; $403c: $d1

jr_07e_403d:
    pop de                                        ; $403d: $d1
    pop de                                        ; $403e: $d1
    pop de                                        ; $403f: $d1
    pop de                                        ; $4040: $d1
    pop de                                        ; $4041: $d1
    jp nc, $d1d3                                  ; $4042: $d2 $d3 $d1

    call nc, $0101                                ; $4045: $d4 $01 $01
    ld bc, $0101                                  ; $4048: $01 $01 $01
    ld bc, $0101                                  ; $404b: $01 $01 $01
    ld bc, $0101                                  ; $404e: $01 $01 $01
    ld bc, $0101                                  ; $4051: $01 $01 $01
    ld bc, $d106                                  ; $4054: $01 $06 $d1
    pop de                                        ; $4057: $d1
    pop de                                        ; $4058: $d1
    pop de                                        ; $4059: $d1
    pop de                                        ; $405a: $d1
    pop de                                        ; $405b: $d1
    pop de                                        ; $405c: $d1
    pop de                                        ; $405d: $d1
    pop de                                        ; $405e: $d1
    pop de                                        ; $405f: $d1
    pop de                                        ; $4060: $d1
    pop de                                        ; $4061: $d1
    pop de                                        ; $4062: $d1
    push de                                       ; $4063: $d5
    sub $d7                                       ; $4064: $d6 $d7
    ld bc, $0101                                  ; $4066: $01 $01 $01
    ld bc, $0101                                  ; $4069: $01 $01 $01
    ld bc, $0101                                  ; $406c: $01 $01 $01
    ld bc, $0101                                  ; $406f: $01 $01 $01
    ld bc, $2101                                  ; $4072: $01 $01 $21
    ld h, c                                       ; $4075: $61
    jp nc, $d1d8                                  ; $4076: $d2 $d8 $d1

    reti                                          ; $4079: $d9


    pop de                                        ; $407a: $d1
    jp c, $dcdb                                   ; $407b: $da $db $dc

    db $dd                                        ; $407e: $dd
    sbc $df                                       ; $407f: $de $df
    ldh [$e1], a                                  ; $4081: $e0 $e1
    ld [c], a                                     ; $4083: $e2
    pop hl                                        ; $4084: $e1
    db $e3                                        ; $4085: $e3
    ld b, c                                       ; $4086: $41
    ld bc, $0601                                  ; $4087: $01 $01 $06
    ld bc, $0101                                  ; $408a: $01 $01 $01
    ld b, $01                                     ; $408d: $06 $01
    ld bc, $0601                                  ; $408f: $01 $01 $06
    ld bc, $0101                                  ; $4092: $01 $01 $01
    ld b, $d1                                     ; $4095: $06 $d1
    db $e4                                        ; $4097: $e4
    push hl                                       ; $4098: $e5
    and $d6                                       ; $4099: $e6 $d6
    rst $20                                       ; $409b: $e7
    add sp, -$17                                  ; $409c: $e8 $e9
    ld [$eceb], a                                 ; $409e: $ea $eb $ec
    db $ed                                        ; $40a1: $ed
    xor $ef                                       ; $40a2: $ee $ef
    pop hl                                        ; $40a4: $e1
    ldh a, [rSB]                                  ; $40a5: $f0 $01
    ld bc, $0601                                  ; $40a7: $01 $01 $06
    ld bc, $0101                                  ; $40aa: $01 $01 $01
    ld b, $01                                     ; $40ad: $06 $01
    ld bc, $0601                                  ; $40af: $01 $01 $06
    ld bc, $0101                                  ; $40b2: $01 $01 $01
    ld b, $f1                                     ; $40b5: $06 $f1
    ld a, [c]                                     ; $40b7: $f2
    di                                            ; $40b8: $f3
    db $f4                                        ; $40b9: $f4
    push af                                       ; $40ba: $f5
    or $f7                                        ; $40bb: $f6 $f7
    ld hl, sp-$07                                 ; $40bd: $f8 $f9
    ld a, [$fcfb]                                 ; $40bf: $fa $fb $fc
    db $fd                                        ; $40c2: $fd
    cp $ff                                        ; $40c3: $fe $ff
    nop                                           ; $40c5: $00
    ld bc, $0101                                  ; $40c6: $01 $01 $01
    ld b, $01                                     ; $40c9: $06 $01
    ld bc, $0601                                  ; $40cb: $01 $01 $06
    ld bc, $0101                                  ; $40ce: $01 $01 $01
    ld b, $01                                     ; $40d1: $06 $01
    ld bc, $0601                                  ; $40d3: $01 $01 $06
    ld bc, $0302                                  ; $40d6: $01 $02 $03
    inc b                                         ; $40d9: $04
    dec b                                         ; $40da: $05
    ld b, $07                                     ; $40db: $06 $07
    ld [$0a09], sp                                ; $40dd: $08 $09 $0a
    dec bc                                        ; $40e0: $0b
    inc c                                         ; $40e1: $0c
    dec c                                         ; $40e2: $0d
    ld c, $0f                                     ; $40e3: $0e $0f
    db $10                                        ; $40e5: $10
    ld bc, $0101                                  ; $40e6: $01 $01 $01
    ld b, $01                                     ; $40e9: $06 $01
    ld bc, $0601                                  ; $40eb: $01 $01 $06
    ld bc, $0101                                  ; $40ee: $01 $01 $01
    ld b, $01                                     ; $40f1: $06 $01
    ld bc, $0601                                  ; $40f3: $01 $01 $06
    pop de                                        ; $40f6: $d1
    pop de                                        ; $40f7: $d1
    pop de                                        ; $40f8: $d1
    pop de                                        ; $40f9: $d1
    pop de                                        ; $40fa: $d1
    pop de                                        ; $40fb: $d1
    pop de                                        ; $40fc: $d1
    pop de                                        ; $40fd: $d1
    pop de                                        ; $40fe: $d1
    pop de                                        ; $40ff: $d1
    pop de                                        ; $4100: $d1
    pop de                                        ; $4101: $d1
    pop de                                        ; $4102: $d1
    ld de, $d212                                  ; $4103: $11 $12 $d2
    ld bc, $0101                                  ; $4106: $01 $01 $01
    ld bc, $0101                                  ; $4109: $01 $01 $01
    ld bc, $0101                                  ; $410c: $01 $01 $01
    ld bc, $0101                                  ; $410f: $01 $01 $01
    ld bc, $0101                                  ; $4112: $01 $01 $01
    ld bc, $d1d1                                  ; $4115: $01 $d1 $d1
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
    db $d3                                        ; $4122: $d3
    pop de                                        ; $4123: $d1
    call nc, Call_000_01d1                        ; $4124: $d4 $d1 $01
    ld bc, $0101                                  ; $4127: $01 $01 $01
    ld bc, $0101                                  ; $412a: $01 $01 $01
    ld bc, $0101                                  ; $412d: $01 $01 $01
    ld bc, $0101                                  ; $4130: $01 $01 $01
    ld bc, $0101                                  ; $4133: $01 $01 $01
    pop de                                        ; $4136: $d1
    pop de                                        ; $4137: $d1
    pop de                                        ; $4138: $d1
    pop de                                        ; $4139: $d1
    pop de                                        ; $413a: $d1
    pop de                                        ; $413b: $d1
    pop de                                        ; $413c: $d1
    pop de                                        ; $413d: $d1
    pop de                                        ; $413e: $d1
    pop de                                        ; $413f: $d1
    pop de                                        ; $4140: $d1
    pop de                                        ; $4141: $d1
    push de                                       ; $4142: $d5
    sub $d7                                       ; $4143: $d6 $d7
    pop de                                        ; $4145: $d1
    ld bc, $0101                                  ; $4146: $01 $01 $01
    ld bc, $0101                                  ; $4149: $01 $01 $01
    ld bc, $0101                                  ; $414c: $01 $01 $01
    ld bc, $0101                                  ; $414f: $01 $01 $01
    ld bc, $6121                                  ; $4152: $01 $21 $61
    ld bc, $d1d1                                  ; $4155: $01 $d1 $d1
    pop de                                        ; $4158: $d1
    pop de                                        ; $4159: $d1
    pop de                                        ; $415a: $d1
    pop de                                        ; $415b: $d1
    pop de                                        ; $415c: $d1
    pop de                                        ; $415d: $d1
    pop de                                        ; $415e: $d1
    pop de                                        ; $415f: $d1
    pop de                                        ; $4160: $d1
    pop de                                        ; $4161: $d1
    ld de, $d212                                  ; $4162: $11 $12 $d2
    db $d3                                        ; $4165: $d3
    ld bc, $0101                                  ; $4166: $01 $01 $01
    ld bc, $0101                                  ; $4169: $01 $01 $01
    ld bc, $0101                                  ; $416c: $01 $01 $01
    ld bc, $0101                                  ; $416f: $01 $01 $01
    ld bc, $0101                                  ; $4172: $01 $01 $01
    ld bc, $d1d1                                  ; $4175: $01 $d1 $d1
    inc de                                        ; $4178: $13
    jp nc, $1514                                  ; $4179: $d2 $14 $15

    ld d, $d1                                     ; $417c: $16 $d1
    rla                                           ; $417e: $17
    jr jr_07e_419a                                ; $417f: $18 $19

    db $dd                                        ; $4181: $dd
    pop de                                        ; $4182: $d1
    ld a, [de]                                    ; $4183: $1a
    dec de                                        ; $4184: $1b
    pop hl                                        ; $4185: $e1
    ld bc, $0101                                  ; $4186: $01 $01 $01
    ld b, c                                       ; $4189: $41
    ld b, c                                       ; $418a: $41
    ld h, c                                       ; $418b: $61
    ld bc, $0101                                  ; $418c: $01 $01 $01
    ld bc, $0101                                  ; $418f: $01 $01 $01
    ld bc, $0101                                  ; $4192: $01 $01 $01
    ld bc, $d1d8                                  ; $4195: $01 $d8 $d1
    reti                                          ; $4198: $d9


    pop de                                        ; $4199: $d1

jr_07e_419a:
    jp c, $dcdb                                   ; $419a: $da $db $dc

    sub $de                                       ; $419d: $d6 $de
    rst $18                                       ; $419f: $df
    ldh [$ea], a                                  ; $41a0: $e0 $ea
    ld [c], a                                     ; $41a2: $e2
    pop hl                                        ; $41a3: $e1
    db $e3                                        ; $41a4: $e3
    xor $01                                       ; $41a5: $ee $01
    ld bc, $0101                                  ; $41a7: $01 $01 $01
    ld bc, $0101                                  ; $41aa: $01 $01 $01
    ld bc, $0101                                  ; $41ad: $01 $01 $01
    ld bc, $0101                                  ; $41b0: $01 $01 $01
    ld bc, $0101                                  ; $41b3: $01 $01 $01
    db $e4                                        ; $41b6: $e4
    push hl                                       ; $41b7: $e5
    and $d1                                       ; $41b8: $e6 $d1
    rst $20                                       ; $41ba: $e7
    add sp, -$17                                  ; $41bb: $e8 $e9
    inc d                                         ; $41bd: $14
    db $eb                                        ; $41be: $eb
    db $ec                                        ; $41bf: $ec
    db $ed                                        ; $41c0: $ed
    rla                                           ; $41c1: $17
    rst $28                                       ; $41c2: $ef
    pop hl                                        ; $41c3: $e1
    ldh a, [$d1]                                  ; $41c4: $f0 $d1
    ld bc, $0101                                  ; $41c6: $01 $01 $01
    ld bc, $0101                                  ; $41c9: $01 $01 $01
    ld bc, $0141                                  ; $41cc: $01 $41 $01
    ld bc, $0101                                  ; $41cf: $01 $01 $01
    ld bc, $0101                                  ; $41d2: $01 $01 $01
    ld bc, $13d1                                  ; $41d5: $01 $d1 $13
    jp nc, $15d8                                  ; $41d8: $d2 $d8 $15

    ld d, $d1                                     ; $41db: $16 $d1
    jp c, $1918                                   ; $41dd: $da $18 $19

    db $dd                                        ; $41e0: $dd
    sbc $1a                                       ; $41e1: $de $1a
    dec de                                        ; $41e3: $1b
    pop hl                                        ; $41e4: $e1
    ld [c], a                                     ; $41e5: $e2
    ld bc, $4101                                  ; $41e6: $01 $01 $41
    ld bc, $0161                                  ; $41e9: $01 $61 $01
    ld bc, $0101                                  ; $41ec: $01 $01 $01
    ld bc, $0101                                  ; $41ef: $01 $01 $01
    ld bc, $0101                                  ; $41f2: $01 $01 $01
    ld bc, $1d1c                                  ; $41f5: $01 $1c $1d
    ld e, $f1                                     ; $41f8: $1e $f1
    rra                                           ; $41fa: $1f
    jr nz, jr_07e_421e                            ; $41fb: $20 $21

    push af                                       ; $41fd: $f5
    ld [hl+], a                                   ; $41fe: $22
    inc hl                                        ; $41ff: $23
    inc h                                         ; $4200: $24
    ld sp, hl                                     ; $4201: $f9
    dec h                                         ; $4202: $25
    ld h, $27                                     ; $4203: $26 $27
    db $fd                                        ; $4205: $fd
    ld bc, $0101                                  ; $4206: $01 $01 $01
    ld bc, $0101                                  ; $4209: $01 $01 $01
    ld bc, $0101                                  ; $420c: $01 $01 $01
    ld bc, $0101                                  ; $420f: $01 $01 $01
    ld bc, $0101                                  ; $4212: $01 $01 $01
    ld bc, $f3f2                                  ; $4215: $01 $f2 $f3
    db $f4                                        ; $4218: $f4
    ld bc, $f7f6                                  ; $4219: $01 $f6 $f7
    ld hl, sp+$05                                 ; $421c: $f8 $05

jr_07e_421e:
    ld a, [$fcfb]                                 ; $421e: $fa $fb $fc
    add hl, bc                                    ; $4221: $09
    cp $ff                                        ; $4222: $fe $ff
    nop                                           ; $4224: $00
    dec c                                         ; $4225: $0d
    ld bc, $0101                                  ; $4226: $01 $01 $01
    ld bc, $0101                                  ; $4229: $01 $01 $01
    ld bc, $0101                                  ; $422c: $01 $01 $01
    ld bc, $0101                                  ; $422f: $01 $01 $01
    ld bc, $0101                                  ; $4232: $01 $01 $01
    ld bc, $0302                                  ; $4235: $01 $02 $03
    inc b                                         ; $4238: $04
    inc e                                         ; $4239: $1c
    ld b, $07                                     ; $423a: $06 $07
    ld [$0a1f], sp                                ; $423c: $08 $1f $0a
    dec bc                                        ; $423f: $0b
    inc c                                         ; $4240: $0c
    ld [hl+], a                                   ; $4241: $22
    ld c, $0f                                     ; $4242: $0e $0f
    db $10                                        ; $4244: $10
    dec h                                         ; $4245: $25
    ld bc, $0101                                  ; $4246: $01 $01 $01
    ld bc, $0101                                  ; $4249: $01 $01 $01

jr_07e_424c:
    ld bc, $0101                                  ; $424c: $01 $01 $01
    ld bc, $0101                                  ; $424f: $01 $01 $01
    ld bc, $0101                                  ; $4252: $01 $01 $01
    ld bc, $1e1d                                  ; $4255: $01 $1d $1e
    pop af                                        ; $4258: $f1
    ld a, [c]                                     ; $4259: $f2
    jr nz, jr_07e_427d                            ; $425a: $20 $21

    push af                                       ; $425c: $f5
    or $23                                        ; $425d: $f6 $23
    inc h                                         ; $425f: $24
    ld sp, hl                                     ; $4260: $f9
    ld a, [$2726]                                 ; $4261: $fa $26 $27
    db $fd                                        ; $4264: $fd
    cp $01                                        ; $4265: $fe $01
    ld bc, $0101                                  ; $4267: $01 $01 $01
    ld bc, $0101                                  ; $426a: $01 $01 $01
    ld bc, $0101                                  ; $426d: $01 $01 $01
    ld bc, $0101                                  ; $4270: $01 $01 $01
    ld bc, $0101                                  ; $4273: $01 $01 $01
    pop de                                        ; $4276: $d1
    pop de                                        ; $4277: $d1
    pop de                                        ; $4278: $d1
    jr z, jr_07e_424c                             ; $4279: $28 $d1

    pop de                                        ; $427b: $d1
    pop de                                        ; $427c: $d1

jr_07e_427d:
    add hl, hl                                    ; $427d: $29
    pop de                                        ; $427e: $d1
    pop de                                        ; $427f: $d1
    pop de                                        ; $4280: $d1
    ld a, [hl+]                                   ; $4281: $2a
    pop de                                        ; $4282: $d1
    pop de                                        ; $4283: $d1
    pop de                                        ; $4284: $d1
    dec hl                                        ; $4285: $2b
    ld bc, $0101                                  ; $4286: $01 $01 $01
    ld bc, $0101                                  ; $4289: $01 $01 $01
    ld bc, $0101                                  ; $428c: $01 $01 $01
    ld bc, $0101                                  ; $428f: $01 $01 $01
    ld bc, $0101                                  ; $4292: $01 $01 $01
    ld bc, $d4d1                                  ; $4295: $01 $d1 $d4
    pop de                                        ; $4298: $d1
    push de                                       ; $4299: $d5
    pop de                                        ; $429a: $d1
    reti                                          ; $429b: $d9


    pop de                                        ; $429c: $d1
    db $e4                                        ; $429d: $e4
    db $db                                        ; $429e: $db
    call c, $e7d6                                 ; $429f: $dc $d6 $e7
    rst $18                                       ; $42a2: $df
    ldh [$ea], a                                  ; $42a3: $e0 $ea
    db $eb                                        ; $42a5: $eb
    ld bc, $0101                                  ; $42a6: $01 $01 $01
    ld bc, $0101                                  ; $42a9: $01 $01 $01
    ld bc, $0101                                  ; $42ac: $01 $01 $01
    ld bc, $0101                                  ; $42af: $01 $01 $01
    ld bc, $0101                                  ; $42b2: $01 $01 $01
    ld bc, $d7d6                                  ; $42b5: $01 $d6 $d7
    pop de                                        ; $42b8: $d1
    ld de, $e6e5                                  ; $42b9: $11 $e5 $e6
    pop de                                        ; $42bc: $d1
    pop de                                        ; $42bd: $d1
    add sp, -$17                                  ; $42be: $e8 $e9
    inc d                                         ; $42c0: $14
    dec d                                         ; $42c1: $15
    db $ec                                        ; $42c2: $ec
    db $ed                                        ; $42c3: $ed
    rla                                           ; $42c4: $17
    jr @+$23                                      ; $42c5: $18 $21

    ld h, c                                       ; $42c7: $61
    ld bc, $0101                                  ; $42c8: $01 $01 $01
    ld b, $01                                     ; $42cb: $06 $01
    ld bc, $0601                                  ; $42cd: $01 $01 $06
    ld b, c                                       ; $42d0: $41
    ld h, c                                       ; $42d1: $61
    ld bc, $0106                                  ; $42d2: $01 $06 $01
    ld bc, $d1d1                                  ; $42d5: $01 $d1 $d1
    pop de                                        ; $42d8: $d1
    pop de                                        ; $42d9: $d1
    pop de                                        ; $42da: $d1
    pop de                                        ; $42db: $d1
    pop de                                        ; $42dc: $d1
    pop de                                        ; $42dd: $d1
    pop de                                        ; $42de: $d1
    pop de                                        ; $42df: $d1
    pop de                                        ; $42e0: $d1
    pop de                                        ; $42e1: $d1
    pop de                                        ; $42e2: $d1
    call nc, $d5d1                                ; $42e3: $d4 $d1 $d5
    ld bc, $0101                                  ; $42e6: $01 $01 $01
    ld bc, $0101                                  ; $42e9: $01 $01 $01
    ld bc, $0101                                  ; $42ec: $01 $01 $01
    ld bc, $0101                                  ; $42ef: $01 $01 $01
    ld bc, $0101                                  ; $42f2: $01 $01 $01
    ld bc, $d1d1                                  ; $42f5: $01 $d1 $d1
    pop de                                        ; $42f8: $d1
    inc l                                         ; $42f9: $2c
    pop de                                        ; $42fa: $d1
    pop de                                        ; $42fb: $d1
    pop de                                        ; $42fc: $d1
    dec l                                         ; $42fd: $2d
    pop de                                        ; $42fe: $d1
    pop de                                        ; $42ff: $d1
    pop de                                        ; $4300: $d1
    ld l, $d6                                     ; $4301: $2e $d6
    rst $10                                       ; $4303: $d7
    pop de                                        ; $4304: $d1
    cpl                                           ; $4305: $2f
    ld bc, $0101                                  ; $4306: $01 $01 $01
    ld bc, $0101                                  ; $4309: $01 $01 $01
    ld bc, $0101                                  ; $430c: $01 $01 $01
    ld bc, $0101                                  ; $430f: $01 $01 $01
    ld hl, $0166                                  ; $4312: $21 $66 $01
    ld bc, $e3e1                                  ; $4315: $01 $e1 $e3
    xor $ef                                       ; $4318: $ee $ef
    di                                            ; $431a: $f3
    db $f4                                        ; $431b: $f4
    ld bc, $f702                                  ; $431c: $01 $02 $f7
    ld hl, sp+$05                                 ; $431f: $f8 $05
    ld b, $fb                                     ; $4321: $06 $fb
    db $fc                                        ; $4323: $fc
    add hl, bc                                    ; $4324: $09
    ld a, [bc]                                    ; $4325: $0a
    ld bc, $0101                                  ; $4326: $01 $01 $01
    ld bc, $0101                                  ; $4329: $01 $01 $01
    ld bc, $0101                                  ; $432c: $01 $01 $01
    ld bc, $0101                                  ; $432f: $01 $01 $01
    ld bc, $0101                                  ; $4332: $01 $01 $01
    ld bc, $f0e1                                  ; $4335: $01 $e1 $f0
    pop de                                        ; $4338: $d1
    ld a, [de]                                    ; $4339: $1a
    inc bc                                        ; $433a: $03
    inc b                                         ; $433b: $04
    inc e                                         ; $433c: $1c
    dec e                                         ; $433d: $1d
    rlca                                          ; $433e: $07
    ld [$201f], sp                                ; $433f: $08 $1f $20
    dec bc                                        ; $4342: $0b
    inc c                                         ; $4343: $0c
    ld [hl+], a                                   ; $4344: $22
    inc hl                                        ; $4345: $23
    ld bc, $0106                                  ; $4346: $01 $06 $01
    ld bc, $0601                                  ; $4349: $01 $01 $06
    ld bc, $0101                                  ; $434c: $01 $01 $01
    ld b, $01                                     ; $434f: $06 $01
    ld bc, $0601                                  ; $4351: $01 $01 $06
    ld bc, $d101                                  ; $4354: $01 $01 $d1
    reti                                          ; $4357: $d9


    pop de                                        ; $4358: $d1
    db $e4                                        ; $4359: $e4
    db $db                                        ; $435a: $db
    call c, $e7d6                                 ; $435b: $dc $d6 $e7
    rst $18                                       ; $435e: $df
    ldh [$ea], a                                  ; $435f: $e0 $ea
    db $eb                                        ; $4361: $eb
    pop hl                                        ; $4362: $e1

jr_07e_4363:
    db $e3                                        ; $4363: $e3
    xor $ef                                       ; $4364: $ee $ef
    ld bc, $0101                                  ; $4366: $01 $01 $01
    ld bc, $0101                                  ; $4369: $01 $01 $01
    ld bc, $0101                                  ; $436c: $01 $01 $01
    ld bc, $0101                                  ; $436f: $01 $01 $01
    ld bc, $0101                                  ; $4372: $01 $01 $01
    ld bc, $e6e5                                  ; $4375: $01 $e5 $e6
    pop de                                        ; $4378: $d1
    jr nc, jr_07e_4363                            ; $4379: $30 $e8

    jp hl                                         ; $437b: $e9


    pop de                                        ; $437c: $d1
    ld sp, $edec                                  ; $437d: $31 $ec $ed
    pop de                                        ; $4380: $d1
    ld [hl-], a                                   ; $4381: $32
    pop hl                                        ; $4382: $e1
    ldh a, [$d1]                                  ; $4383: $f0 $d1
    inc sp                                        ; $4385: $33
    ld bc, $0106                                  ; $4386: $01 $06 $01
    ld bc, $0601                                  ; $4389: $01 $01 $06
    ld bc, $0101                                  ; $438c: $01 $01 $01
    ld b, $01                                     ; $438f: $06 $01
    ld bc, $0601                                  ; $4391: $01 $01 $06
    ld bc, $ff01                                  ; $4394: $01 $01 $ff
    nop                                           ; $4397: $00
    dec c                                         ; $4398: $0d
    ld c, $34                                     ; $4399: $0e $34
    dec [hl]                                      ; $439b: $35
    ld [hl], $37                                  ; $439c: $36 $37
    jr c, @+$3b                                   ; $439e: $38 $39

    ld a, [hl-]                                   ; $43a0: $3a
    dec sp                                        ; $43a1: $3b
    inc a                                         ; $43a2: $3c
    dec a                                         ; $43a3: $3d
    ld a, $3f                                     ; $43a4: $3e $3f
    ld bc, $0101                                  ; $43a6: $01 $01 $01
    ld bc, $0101                                  ; $43a9: $01 $01 $01
    ld bc, $0101                                  ; $43ac: $01 $01 $01
    ld bc, $0101                                  ; $43af: $01 $01 $01
    ld bc, $0101                                  ; $43b2: $01 $01 $01
    ld bc, $100f                                  ; $43b5: $01 $0f $10
    dec h                                         ; $43b8: $25
    ld h, $40                                     ; $43b9: $26 $40
    ld b, c                                       ; $43bb: $41
    dec d                                         ; $43bc: $15
    ld b, d                                       ; $43bd: $42
    ld b, e                                       ; $43be: $43
    ld b, h                                       ; $43bf: $44
    ld b, l                                       ; $43c0: $45
    ld b, [hl]                                    ; $43c1: $46
    ld b, a                                       ; $43c2: $47
    ld c, b                                       ; $43c3: $48
    ld c, c                                       ; $43c4: $49
    ld c, d                                       ; $43c5: $4a
    ld bc, $0106                                  ; $43c6: $01 $06 $01
    ld bc, $0601                                  ; $43c9: $01 $01 $06
    ld bc, $0101                                  ; $43cc: $01 $01 $01
    ld bc, $0101                                  ; $43cf: $01 $01 $01
    ld bc, $0101                                  ; $43d2: $01 $01 $01
    ld bc, $f4f3                                  ; $43d5: $01 $f3 $f4
    ld bc, $f702                                  ; $43d8: $01 $02 $f7
    ld hl, sp+$05                                 ; $43db: $f8 $05

Call_07e_43dd:
    ld b, $fb                                     ; $43dd: $06 $fb
    db $fc                                        ; $43df: $fc
    add hl, bc                                    ; $43e0: $09
    ld a, [bc]                                    ; $43e1: $0a
    rst $38                                       ; $43e2: $ff
    nop                                           ; $43e3: $00
    dec c                                         ; $43e4: $0d
    ld c, $01                                     ; $43e5: $0e $01
    ld bc, $0101                                  ; $43e7: $01 $01 $01
    ld bc, $0101                                  ; $43ea: $01 $01 $01
    ld bc, $0101                                  ; $43ed: $01 $01 $01
    ld bc, $0101                                  ; $43f0: $01 $01 $01
    ld bc, $0101                                  ; $43f3: $01 $01 $01
    inc bc                                        ; $43f6: $03
    inc b                                         ; $43f7: $04
    ld c, e                                       ; $43f8: $4b
    ld c, h                                       ; $43f9: $4c
    rlca                                          ; $43fa: $07
    ld [$4e4d], sp                                ; $43fb: $08 $4d $4e
    dec bc                                        ; $43fe: $0b
    inc c                                         ; $43ff: $0c
    jp nc, Jump_000_0f4e                          ; $4400: $d2 $4e $0f

    db $10                                        ; $4403: $10
    dec h                                         ; $4404: $25
    ld c, a                                       ; $4405: $4f
    ld bc, $0106                                  ; $4406: $01 $06 $01
    ld [bc], a                                    ; $4409: $02
    ld bc, $0106                                  ; $440a: $01 $06 $01
    ld [bc], a                                    ; $440d: $02
    ld bc, $0106                                  ; $440e: $01 $06 $01
    ld [bc], a                                    ; $4411: $02
    ld bc, $0106                                  ; $4412: $01 $06 $01
    add e                                         ; $4415: $83
    ld d, b                                       ; $4416: $50
    ld d, c                                       ; $4417: $51
    ld d, d                                       ; $4418: $52
    ld c, h                                       ; $4419: $4c
    ld d, e                                       ; $441a: $53
    ld c, [hl]                                    ; $441b: $4e
    ld d, h                                       ; $441c: $54
    ld d, l                                       ; $441d: $55
    ld d, [hl]                                    ; $441e: $56
    ld d, a                                       ; $441f: $57
    ld e, b                                       ; $4420: $58
    ld e, c                                       ; $4421: $59
    ld e, d                                       ; $4422: $5a
    ld c, [hl]                                    ; $4423: $4e
    ld e, e                                       ; $4424: $5b
    ld e, h                                       ; $4425: $5c
    ld [bc], a                                    ; $4426: $02
    ld [bc], a                                    ; $4427: $02
    ld [bc], a                                    ; $4428: $02
    ld [bc], a                                    ; $4429: $02
    ld [bc], a                                    ; $442a: $02
    ld h, d                                       ; $442b: $62
    ld [bc], a                                    ; $442c: $02
    inc b                                         ; $442d: $04
    ld [bc], a                                    ; $442e: $02
    ld [bc], a                                    ; $442f: $02
    inc b                                         ; $4430: $04
    ld [bc], a                                    ; $4431: $02
    ld [bc], a                                    ; $4432: $02
    inc b                                         ; $4433: $04
    inc b                                         ; $4434: $04
    ld [bc], a                                    ; $4435: $02
    ld d, b                                       ; $4436: $50
    ld d, c                                       ; $4437: $51
    ld d, d                                       ; $4438: $52
    ld e, l                                       ; $4439: $5d
    ld c, [hl]                                    ; $443a: $4e
    ld c, [hl]                                    ; $443b: $4e
    ld e, [hl]                                    ; $443c: $5e
    ld e, a                                       ; $443d: $5f
    ld h, b                                       ; $443e: $60
    ld h, c                                       ; $443f: $61
    ld h, d                                       ; $4440: $62
    ld e, e                                       ; $4441: $5b
    ld c, [hl]                                    ; $4442: $4e
    ld e, e                                       ; $4443: $5b
    ld e, d                                       ; $4444: $5a
    ld h, e                                       ; $4445: $63
    ld [bc], a                                    ; $4446: $02
    ld [bc], a                                    ; $4447: $02
    ld [bc], a                                    ; $4448: $02
    ld [bc], a                                    ; $4449: $02
    ld h, d                                       ; $444a: $62
    ld [bc], a                                    ; $444b: $02
    add e                                         ; $444c: $83
    add e                                         ; $444d: $83
    ld [bc], a                                    ; $444e: $02
    ld [bc], a                                    ; $444f: $02
    ld [bc], a                                    ; $4450: $02
    ld [bc], a                                    ; $4451: $02
    ld [bc], a                                    ; $4452: $02
    ld [bc], a                                    ; $4453: $02
    inc b                                         ; $4454: $04
    inc b                                         ; $4455: $04
    ld [de], a                                    ; $4456: $12
    pop de                                        ; $4457: $d1
    pop de                                        ; $4458: $d1
    pop de                                        ; $4459: $d1
    inc de                                        ; $445a: $13
    pop de                                        ; $445b: $d1
    pop de                                        ; $445c: $d1
    pop de                                        ; $445d: $d1
    ld d, $d1                                     ; $445e: $16 $d1
    pop de                                        ; $4460: $d1
    pop de                                        ; $4461: $d1
    add hl, de                                    ; $4462: $19
    pop de                                        ; $4463: $d1
    pop de                                        ; $4464: $d1
    pop de                                        ; $4465: $d1
    ld bc, $0101                                  ; $4466: $01 $01 $01
    ld bc, $0101                                  ; $4469: $01 $01 $01
    ld bc, $0101                                  ; $446c: $01 $01 $01
    ld bc, $0101                                  ; $446f: $01 $01 $01
    ld bc, $0101                                  ; $4472: $01 $01 $01
    ld bc, $d11b                                  ; $4475: $01 $1b $d1
    pop de                                        ; $4478: $d1
    pop de                                        ; $4479: $d1
    ld e, $d1                                     ; $447a: $1e $d1
    pop de                                        ; $447c: $d1
    pop de                                        ; $447d: $d1
    ld hl, $d1d1                                  ; $447e: $21 $d1 $d1
    pop de                                        ; $4481: $d1
    inc h                                         ; $4482: $24
    db $d3                                        ; $4483: $d3
    pop de                                        ; $4484: $d1
    call nc, $0101                                ; $4485: $d4 $01 $01
    ld bc, $0101                                  ; $4488: $01 $01 $01
    ld bc, $0101                                  ; $448b: $01 $01 $01
    ld bc, $0101                                  ; $448e: $01 $01 $01
    ld bc, $0601                                  ; $4491: $01 $01 $06
    ld bc, $d101                                  ; $4494: $01 $01 $d1
    pop de                                        ; $4497: $d1
    pop de                                        ; $4498: $d1
    pop de                                        ; $4499: $d1
    pop de                                        ; $449a: $d1
    pop de                                        ; $449b: $d1
    pop de                                        ; $449c: $d1
    pop de                                        ; $449d: $d1
    pop de                                        ; $449e: $d1
    pop de                                        ; $449f: $d1
    pop de                                        ; $44a0: $d1
    pop de                                        ; $44a1: $d1
    pop de                                        ; $44a2: $d1
    ld de, $d212                                  ; $44a3: $11 $12 $d2
    ld bc, $0101                                  ; $44a6: $01 $01 $01
    ld bc, $0101                                  ; $44a9: $01 $01 $01
    ld bc, $0101                                  ; $44ac: $01 $01 $01
    ld bc, $0101                                  ; $44af: $01 $01 $01
    ld bc, $0601                                  ; $44b2: $01 $01 $06
    ld bc, $d827                                  ; $44b5: $01 $27 $d8
    pop de                                        ; $44b8: $d1
    reti                                          ; $44b9: $d9


    ld h, h                                       ; $44ba: $64
    jp c, $dcdb                                   ; $44bb: $da $db $dc

    ld h, l                                       ; $44be: $65
    sbc $df                                       ; $44bf: $de $df
    ldh [$66], a                                  ; $44c1: $e0 $66
    ld [c], a                                     ; $44c3: $e2
    pop hl                                        ; $44c4: $e1
    db $e3                                        ; $44c5: $e3
    ld bc, $0106                                  ; $44c6: $01 $06 $01
    ld bc, $0601                                  ; $44c9: $01 $01 $06
    ld bc, $0101                                  ; $44cc: $01 $01 $01
    ld b, $01                                     ; $44cf: $06 $01
    ld bc, $0601                                  ; $44d1: $01 $01 $06
    ld bc, $d101                                  ; $44d4: $01 $01 $d1
    db $e4                                        ; $44d7: $e4
    push hl                                       ; $44d8: $e5
    and $d6                                       ; $44d9: $e6 $d6
    rst $20                                       ; $44db: $e7
    add sp, -$17                                  ; $44dc: $e8 $e9
    ld [$eceb], a                                 ; $44de: $ea $eb $ec
    db $ed                                        ; $44e1: $ed
    xor $ef                                       ; $44e2: $ee $ef
    pop hl                                        ; $44e4: $e1
    ldh a, [rSB]                                  ; $44e5: $f0 $01
    ld bc, $0101                                  ; $44e7: $01 $01 $01
    ld bc, $0101                                  ; $44ea: $01 $01 $01
    ld bc, $0101                                  ; $44ed: $01 $01 $01
    ld bc, $0101                                  ; $44f0: $01 $01 $01
    ld bc, $0101                                  ; $44f3: $01 $01 $01
    pop de                                        ; $44f6: $d1
    pop de                                        ; $44f7: $d1
    inc de                                        ; $44f8: $13
    jp nc, $1514                                  ; $44f9: $d2 $14 $15

    ld d, $d1                                     ; $44fc: $16 $d1
    rla                                           ; $44fe: $17
    jr jr_07e_451a                                ; $44ff: $18 $19

    db $dd                                        ; $4501: $dd
    pop de                                        ; $4502: $d1
    ld a, [de]                                    ; $4503: $1a
    dec de                                        ; $4504: $1b
    pop hl                                        ; $4505: $e1
    ld bc, $0601                                  ; $4506: $01 $01 $06
    ld b, c                                       ; $4509: $41
    ld b, c                                       ; $450a: $41
    ld h, c                                       ; $450b: $61
    ld b, $01                                     ; $450c: $06 $01
    ld bc, $0601                                  ; $450e: $01 $01 $06
    ld bc, $0101                                  ; $4511: $01 $01 $01
    ld b, $01                                     ; $4514: $06 $01
    ld h, a                                       ; $4516: $67
    ld l, b                                       ; $4517: $68
    di                                            ; $4518: $f3
    db $f4                                        ; $4519: $f4

jr_07e_451a:
    ld l, c                                       ; $451a: $69
    or $f7                                        ; $451b: $f6 $f7
    ld hl, sp+$4e                                 ; $451d: $f8 $4e
    ld l, d                                       ; $451f: $6a
    ei                                            ; $4520: $fb
    db $fc                                        ; $4521: $fc
    ld e, e                                       ; $4522: $5b
    cp $ff                                        ; $4523: $fe $ff
    nop                                           ; $4525: $00
    ld [bc], a                                    ; $4526: $02
    ld b, $01                                     ; $4527: $06 $01
    ld bc, $0683                                  ; $4529: $01 $83 $06
    ld bc, $0201                                  ; $452c: $01 $01 $02
    ld b, $01                                     ; $452f: $06 $01
    ld bc, $0602                                  ; $4531: $01 $02 $06
    ld bc, $0101                                  ; $4534: $01 $01 $01
    ld [bc], a                                    ; $4537: $02
    inc bc                                        ; $4538: $03
    inc b                                         ; $4539: $04
    dec b                                         ; $453a: $05
    ld b, $07                                     ; $453b: $06 $07
    ld [$0a09], sp                                ; $453d: $08 $09 $0a
    dec bc                                        ; $4540: $0b
    inc c                                         ; $4541: $0c
    dec c                                         ; $4542: $0d
    ld c, $0f                                     ; $4543: $0e $0f
    db $10                                        ; $4545: $10
    ld bc, $0101                                  ; $4546: $01 $01 $01
    ld bc, $0101                                  ; $4549: $01 $01 $01
    ld bc, $0101                                  ; $454c: $01 $01 $01
    ld bc, $0101                                  ; $454f: $01 $01 $01
    ld bc, $0101                                  ; $4552: $01 $01 $01
    ld bc, $1d1c                                  ; $4555: $01 $1c $1d
    ld e, $f1                                     ; $4558: $1e $f1
    rra                                           ; $455a: $1f
    jr nz, jr_07e_457e                            ; $455b: $20 $21

    push af                                       ; $455d: $f5
    ld [hl+], a                                   ; $455e: $22
    inc hl                                        ; $455f: $23
    inc h                                         ; $4560: $24
    ld sp, hl                                     ; $4561: $f9
    dec h                                         ; $4562: $25
    ld h, $27                                     ; $4563: $26 $27
    db $fd                                        ; $4565: $fd
    ld bc, $0601                                  ; $4566: $01 $01 $06
    ld bc, $0101                                  ; $4569: $01 $01 $01
    ld b, $01                                     ; $456c: $06 $01
    ld bc, $0601                                  ; $456e: $01 $01 $06
    ld bc, $0101                                  ; $4571: $01 $01 $01
    ld b, $01                                     ; $4574: $06 $01
    pop de                                        ; $4576: $d1
    pop de                                        ; $4577: $d1
    pop de                                        ; $4578: $d1
    pop de                                        ; $4579: $d1
    pop de                                        ; $457a: $d1
    pop de                                        ; $457b: $d1
    pop de                                        ; $457c: $d1
    pop de                                        ; $457d: $d1

jr_07e_457e:
    pop de                                        ; $457e: $d1
    pop de                                        ; $457f: $d1
    pop de                                        ; $4580: $d1
    pop de                                        ; $4581: $d1
    push de                                       ; $4582: $d5
    sub $d7                                       ; $4583: $d6 $d7
    pop de                                        ; $4585: $d1
    ld bc, $0101                                  ; $4586: $01 $01 $01
    ld bc, $0101                                  ; $4589: $01 $01 $01
    ld bc, $0101                                  ; $458c: $01 $01 $01
    ld bc, $0101                                  ; $458f: $01 $01 $01
    ld bc, $6621                                  ; $4592: $01 $21 $66
    ld bc, $d1d1                                  ; $4595: $01 $d1 $d1
    pop de                                        ; $4598: $d1
    pop de                                        ; $4599: $d1
    pop de                                        ; $459a: $d1
    pop de                                        ; $459b: $d1
    pop de                                        ; $459c: $d1
    pop de                                        ; $459d: $d1
    pop de                                        ; $459e: $d1
    pop de                                        ; $459f: $d1
    pop de                                        ; $45a0: $d1
    pop de                                        ; $45a1: $d1
    ld de, $d112                                  ; $45a2: $11 $12 $d1
    pop de                                        ; $45a5: $d1
    ld bc, $0101                                  ; $45a6: $01 $01 $01
    ld bc, $0101                                  ; $45a9: $01 $01 $01
    ld bc, $0101                                  ; $45ac: $01 $01 $01
    ld bc, $0101                                  ; $45af: $01 $01 $01
    ld bc, $0101                                  ; $45b2: $01 $01 $01
    ld bc, $e5e4                                  ; $45b5: $01 $e4 $e5
    and $d1                                       ; $45b8: $e6 $d1
    rst $20                                       ; $45ba: $e7
    add sp, -$17                                  ; $45bb: $e8 $e9
    inc d                                         ; $45bd: $14
    db $eb                                        ; $45be: $eb
    db $ec                                        ; $45bf: $ec
    db $ed                                        ; $45c0: $ed
    rla                                           ; $45c1: $17
    rst $28                                       ; $45c2: $ef
    pop hl                                        ; $45c3: $e1
    ldh a, [$d1]                                  ; $45c4: $f0 $d1
    ld bc, $0601                                  ; $45c6: $01 $01 $06
    ld bc, $0101                                  ; $45c9: $01 $01 $01
    ld b, $41                                     ; $45cc: $06 $41
    ld bc, $0601                                  ; $45ce: $01 $01 $06
    ld bc, $0101                                  ; $45d1: $01 $01 $01
    ld b, $01                                     ; $45d4: $06 $01
    pop de                                        ; $45d6: $d1
    inc de                                        ; $45d7: $13
    pop de                                        ; $45d8: $d1
    pop de                                        ; $45d9: $d1
    dec d                                         ; $45da: $15
    ld d, $d1                                     ; $45db: $16 $d1
    pop de                                        ; $45dd: $d1
    jr jr_07e_45f9                                ; $45de: $18 $19

    pop de                                        ; $45e0: $d1
    pop de                                        ; $45e1: $d1
    ld a, [de]                                    ; $45e2: $1a
    dec de                                        ; $45e3: $1b
    pop de                                        ; $45e4: $d1
    pop de                                        ; $45e5: $d1
    ld bc, $0101                                  ; $45e6: $01 $01 $01
    ld bc, $0161                                  ; $45e9: $01 $61 $01
    ld bc, $0101                                  ; $45ec: $01 $01 $01
    ld bc, $0101                                  ; $45ef: $01 $01 $01
    ld bc, $0101                                  ; $45f2: $01 $01 $01
    ld bc, $0302                                  ; $45f5: $01 $02 $03
    inc b                                         ; $45f8: $04

jr_07e_45f9:
    inc e                                         ; $45f9: $1c
    ld b, $07                                     ; $45fa: $06 $07
    ld [$0a1f], sp                                ; $45fc: $08 $1f $0a
    dec bc                                        ; $45ff: $0b
    inc c                                         ; $4600: $0c
    ld [hl+], a                                   ; $4601: $22
    ld c, $0f                                     ; $4602: $0e $0f
    db $10                                        ; $4604: $10
    dec h                                         ; $4605: $25
    ld bc, $0601                                  ; $4606: $01 $01 $06
    ld bc, $0101                                  ; $4609: $01 $01 $01
    ld b, $01                                     ; $460c: $06 $01
    ld bc, $0601                                  ; $460e: $01 $01 $06
    ld bc, $0101                                  ; $4611: $01 $01 $01
    ld b, $01                                     ; $4614: $06 $01
    dec e                                         ; $4616: $1d
    ld e, $d1                                     ; $4617: $1e $d1
    pop de                                        ; $4619: $d1
    jr nz, jr_07e_463d                            ; $461a: $20 $21

    pop de                                        ; $461c: $d1
    pop de                                        ; $461d: $d1
    inc hl                                        ; $461e: $23
    inc h                                         ; $461f: $24
    pop de                                        ; $4620: $d1
    pop de                                        ; $4621: $d1
    ld h, $27                                     ; $4622: $26 $27
    pop de                                        ; $4624: $d1
    pop de                                        ; $4625: $d1
    ld bc, $0101                                  ; $4626: $01 $01 $01
    ld bc, $0101                                  ; $4629: $01 $01 $01
    ld bc, $0101                                  ; $462c: $01 $01 $01
    ld bc, $0101                                  ; $462f: $01 $01 $01
    ld bc, $0101                                  ; $4632: $01 $01 $01
    ld bc, $d1d1                                  ; $4635: $01 $d1 $d1
    pop de                                        ; $4638: $d1
    pop de                                        ; $4639: $d1
    pop de                                        ; $463a: $d1
    pop de                                        ; $463b: $d1
    pop de                                        ; $463c: $d1

jr_07e_463d:
    pop de                                        ; $463d: $d1
    pop de                                        ; $463e: $d1
    pop de                                        ; $463f: $d1
    ld l, e                                       ; $4640: $6b
    ld l, h                                       ; $4641: $6c
    pop de                                        ; $4642: $d1
    pop de                                        ; $4643: $d1
    ld l, l                                       ; $4644: $6d
    ld l, [hl]                                    ; $4645: $6e
    ld bc, $0101                                  ; $4646: $01 $01 $01
    ld bc, $0101                                  ; $4649: $01 $01 $01
    ld bc, $0101                                  ; $464c: $01 $01 $01
    ld bc, $0101                                  ; $464f: $01 $01 $01
    ld bc, $8381                                  ; $4652: $01 $81 $83
    and e                                         ; $4655: $a3
    ld l, a                                       ; $4656: $6f
    ld [hl], b                                    ; $4657: $70
    inc [hl]                                      ; $4658: $34
    dec [hl]                                      ; $4659: $35
    ld [hl], c                                    ; $465a: $71
    ld [hl], d                                    ; $465b: $72
    jr c, jr_07e_4697                             ; $465c: $38 $39

    ld [hl], e                                    ; $465e: $73
    inc sp                                        ; $465f: $33
    inc a                                         ; $4660: $3c
    dec a                                         ; $4661: $3d
    ld [hl], h                                    ; $4662: $74
    ld d, b                                       ; $4663: $50
    ld d, c                                       ; $4664: $51
    ld d, d                                       ; $4665: $52
    ld bc, $0101                                  ; $4666: $01 $01 $01
    ld b, $01                                     ; $4669: $06 $01
    ld bc, $0601                                  ; $466b: $01 $01 $06
    ld bc, $0101                                  ; $466e: $01 $01 $01
    ld bc, $0202                                  ; $4671: $01 $02 $02
    ld [bc], a                                    ; $4674: $02
    ld [bc], a                                    ; $4675: $02
    ld [hl], $37                                  ; $4676: $36 $37
    ld b, b                                       ; $4678: $40
    ld b, c                                       ; $4679: $41
    ld a, [hl-]                                   ; $467a: $3a
    dec sp                                        ; $467b: $3b
    ld b, e                                       ; $467c: $43
    ld b, h                                       ; $467d: $44
    ld a, $3f                                     ; $467e: $3e $3f
    ld b, a                                       ; $4680: $47
    ld c, b                                       ; $4681: $48
    ld e, l                                       ; $4682: $5d
    ld h, a                                       ; $4683: $67
    ld c, h                                       ; $4684: $4c
    ld d, b                                       ; $4685: $50
    ld bc, $0101                                  ; $4686: $01 $01 $01
    ld b, $01                                     ; $4689: $06 $01
    ld bc, $0601                                  ; $468b: $01 $01 $06
    ld bc, $0101                                  ; $468e: $01 $01 $01
    ld bc, $0202                                  ; $4691: $01 $02 $02
    ld [bc], a                                    ; $4694: $02
    ld [bc], a                                    ; $4695: $02
    pop de                                        ; $4696: $d1

jr_07e_4697:
    pop de                                        ; $4697: $d1
    ld [hl], l                                    ; $4698: $75
    halt                                          ; $4699: $76
    pop de                                        ; $469a: $d1
    pop de                                        ; $469b: $d1
    ld [hl], a                                    ; $469c: $77
    ld a, b                                       ; $469d: $78
    pop de                                        ; $469e: $d1
    pop de                                        ; $469f: $d1
    ld a, c                                       ; $46a0: $79
    ld a, d                                       ; $46a1: $7a
    pop de                                        ; $46a2: $d1
    pop de                                        ; $46a3: $d1
    ld a, e                                       ; $46a4: $7b
    ld a, h                                       ; $46a5: $7c
    ld bc, $8581                                  ; $46a6: $01 $81 $85
    add e                                         ; $46a9: $83
    ld bc, $8581                                  ; $46aa: $01 $81 $85
    add e                                         ; $46ad: $83
    ld bc, $a581                                  ; $46ae: $01 $81 $a5
    and e                                         ; $46b1: $a3
    ld bc, $a381                                  ; $46b2: $01 $81 $a3
    and e                                         ; $46b5: $a3
    ld e, e                                       ; $46b6: $5b
    ld c, [hl]                                    ; $46b7: $4e
    ld d, [hl]                                    ; $46b8: $56
    ld e, e                                       ; $46b9: $5b
    ld c, [hl]                                    ; $46ba: $4e
    ld e, e                                       ; $46bb: $5b
    ld e, d                                       ; $46bc: $5a
    ld c, [hl]                                    ; $46bd: $4e
    ld c, [hl]                                    ; $46be: $4e
    ld c, [hl]                                    ; $46bf: $4e
    ld d, e                                       ; $46c0: $53
    ld a, l                                       ; $46c1: $7d
    ld e, e                                       ; $46c2: $5b
    ld c, [hl]                                    ; $46c3: $4e
    ld a, [hl]                                    ; $46c4: $7e
    ld a, a                                       ; $46c5: $7f
    ld [bc], a                                    ; $46c6: $02
    ld [bc], a                                    ; $46c7: $02
    inc b                                         ; $46c8: $04
    ld [bc], a                                    ; $46c9: $02
    ld [bc], a                                    ; $46ca: $02
    inc b                                         ; $46cb: $04
    inc b                                         ; $46cc: $04
    ld [bc], a                                    ; $46cd: $02
    ld h, h                                       ; $46ce: $64
    inc b                                         ; $46cf: $04
    ld [bc], a                                    ; $46d0: $02
    ld [bc], a                                    ; $46d1: $02
    ld [bc], a                                    ; $46d2: $02
    ld [bc], a                                    ; $46d3: $02
    ld [bc], a                                    ; $46d4: $02
    rlca                                          ; $46d5: $07
    ld c, [hl]                                    ; $46d6: $4e
    ld d, [hl]                                    ; $46d7: $56
    ld e, e                                       ; $46d8: $5b
    ld h, c                                       ; $46d9: $61
    add b                                         ; $46da: $80
    ld e, h                                       ; $46db: $5c
    add c                                         ; $46dc: $81
    add d                                         ; $46dd: $82
    add e                                         ; $46de: $83
    add h                                         ; $46df: $84
    add l                                         ; $46e0: $85
    add [hl]                                      ; $46e1: $86
    add a                                         ; $46e2: $87
    adc b                                         ; $46e3: $88
    adc c                                         ; $46e4: $89
    adc d                                         ; $46e5: $8a
    inc b                                         ; $46e6: $04
    ld [bc], a                                    ; $46e7: $02
    ld [bc], a                                    ; $46e8: $02
    ld [bc], a                                    ; $46e9: $02
    ld a, [bc]                                    ; $46ea: $0a
    inc b                                         ; $46eb: $04
    inc c                                         ; $46ec: $0c
    inc c                                         ; $46ed: $0c
    ld a, [bc]                                    ; $46ee: $0a
    ld a, [bc]                                    ; $46ef: $0a
    ld a, [bc]                                    ; $46f0: $0a
    ld a, [bc]                                    ; $46f1: $0a
    rrca                                          ; $46f2: $0f
    rrca                                          ; $46f3: $0f
    rrca                                          ; $46f4: $0f
    rrca                                          ; $46f5: $0f
    pop de                                        ; $46f6: $d1
    pop de                                        ; $46f7: $d1
    adc e                                         ; $46f8: $8b
    adc h                                         ; $46f9: $8c
    pop de                                        ; $46fa: $d1
    pop de                                        ; $46fb: $d1
    adc l                                         ; $46fc: $8d
    adc [hl]                                      ; $46fd: $8e
    pop de                                        ; $46fe: $d1
    pop de                                        ; $46ff: $d1
    adc a                                         ; $4700: $8f
    sub b                                         ; $4701: $90
    pop de                                        ; $4702: $d1
    pop de                                        ; $4703: $d1
    ld l, l                                       ; $4704: $6d
    ld l, [hl]                                    ; $4705: $6e
    ld bc, $ab81                                  ; $4706: $01 $81 $ab
    xor l                                         ; $4709: $ad
    ld bc, $ad81                                  ; $470a: $01 $81 $ad
    xor e                                         ; $470d: $ab
    ld bc, $ab85                                  ; $470e: $01 $85 $ab
    xor e                                         ; $4711: $ab
    ld bc, $8381                                  ; $4712: $01 $81 $83
    and e                                         ; $4715: $a3
    ld c, [hl]                                    ; $4716: $4e
    sub c                                         ; $4717: $91
    sub d                                         ; $4718: $92
    sub e                                         ; $4719: $93
    ld c, [hl]                                    ; $471a: $4e
    sub h                                         ; $471b: $94
    sub l                                         ; $471c: $95
    sub [hl]                                      ; $471d: $96
    ld e, e                                       ; $471e: $5b
    ld h, c                                       ; $471f: $61
    sub a                                         ; $4720: $97
    sbc b                                         ; $4721: $98
    add c                                         ; $4722: $81
    add d                                         ; $4723: $82
    sbc c                                         ; $4724: $99
    sbc d                                         ; $4725: $9a
    ld [bc], a                                    ; $4726: $02
    ld a, [bc]                                    ; $4727: $0a
    rrca                                          ; $4728: $0f
    rrca                                          ; $4729: $0f
    ld h, d                                       ; $472a: $62
    ld a, [bc]                                    ; $472b: $0a
    cpl                                           ; $472c: $2f
    cpl                                           ; $472d: $2f
    ld [bc], a                                    ; $472e: $02
    inc b                                         ; $472f: $04
    cpl                                           ; $4730: $2f
    cpl                                           ; $4731: $2f
    ld a, [bc]                                    ; $4732: $0a
    inc c                                         ; $4733: $0c
    cpl                                           ; $4734: $2f
    cpl                                           ; $4735: $2f
    sbc e                                         ; $4736: $9b
    sbc h                                         ; $4737: $9c
    sbc l                                         ; $4738: $9d
    sbc [hl]                                      ; $4739: $9e
    ld d, h                                       ; $473a: $54
    ld d, e                                       ; $473b: $53
    sbc a                                         ; $473c: $9f
    sub h                                         ; $473d: $94
    ld c, [hl]                                    ; $473e: $4e
    ld e, c                                       ; $473f: $59
    ld h, b                                       ; $4740: $60
    ld h, c                                       ; $4741: $61
    ld e, e                                       ; $4742: $5b
    ld e, h                                       ; $4743: $5c
    add c                                         ; $4744: $81
    add d                                         ; $4745: $82
    rrca                                          ; $4746: $0f
    rrca                                          ; $4747: $0f
    rrca                                          ; $4748: $0f
    rrca                                          ; $4749: $0f
    rlca                                          ; $474a: $07
    rlca                                          ; $474b: $07
    rrca                                          ; $474c: $0f
    rrca                                          ; $474d: $0f
    rlca                                          ; $474e: $07
    rlca                                          ; $474f: $07
    rlca                                          ; $4750: $07
    rlca                                          ; $4751: $07
    rlca                                          ; $4752: $07
    rlca                                          ; $4753: $07
    rrca                                          ; $4754: $0f
    rrca                                          ; $4755: $0f
    pop de                                        ; $4756: $d1
    pop de                                        ; $4757: $d1
    ld [hl], l                                    ; $4758: $75
    halt                                          ; $4759: $76
    pop de                                        ; $475a: $d1
    pop de                                        ; $475b: $d1
    ld [hl], a                                    ; $475c: $77
    ld a, b                                       ; $475d: $78
    pop de                                        ; $475e: $d1
    pop de                                        ; $475f: $d1
    adc a                                         ; $4760: $8f
    sub b                                         ; $4761: $90
    pop de                                        ; $4762: $d1
    pop de                                        ; $4763: $d1
    ld l, l                                       ; $4764: $6d
    ld l, [hl]                                    ; $4765: $6e
    ld bc, $8381                                  ; $4766: $01 $81 $83
    add e                                         ; $4769: $83
    ld bc, $8381                                  ; $476a: $01 $81 $83
    add e                                         ; $476d: $83
    ld bc, $ad81                                  ; $476e: $01 $81 $ad
    xor e                                         ; $4771: $ab
    ld bc, $8581                                  ; $4772: $01 $81 $85
    and l                                         ; $4775: $a5
    ld c, [hl]                                    ; $4776: $4e
    add [hl]                                      ; $4777: $86
    and b                                         ; $4778: $a0
    and c                                         ; $4779: $a1
    and d                                         ; $477a: $a2
    ld c, [hl]                                    ; $477b: $4e
    sub l                                         ; $477c: $95
    sub [hl]                                      ; $477d: $96
    ld c, [hl]                                    ; $477e: $4e
    ld e, e                                       ; $477f: $5b
    sub a                                         ; $4780: $97
    sbc b                                         ; $4781: $98
    ld c, [hl]                                    ; $4782: $4e
    sub h                                         ; $4783: $94
    sbc c                                         ; $4784: $99
    sbc d                                         ; $4785: $9a
    ld h, d                                       ; $4786: $62
    inc c                                         ; $4787: $0c
    cpl                                           ; $4788: $2f
    cpl                                           ; $4789: $2f
    inc c                                         ; $478a: $0c
    inc b                                         ; $478b: $04
    cpl                                           ; $478c: $2f
    cpl                                           ; $478d: $2f
    inc b                                         ; $478e: $04
    ld [bc], a                                    ; $478f: $02
    cpl                                           ; $4790: $2f
    cpl                                           ; $4791: $2f
    ld h, d                                       ; $4792: $62
    ld a, [bc]                                    ; $4793: $0a
    cpl                                           ; $4794: $2f
    cpl                                           ; $4795: $2f
    add e                                         ; $4796: $83
    add h                                         ; $4797: $84
    add l                                         ; $4798: $85
    add [hl]                                      ; $4799: $86
    and e                                         ; $479a: $a3
    and h                                         ; $479b: $a4
    and d                                         ; $479c: $a2
    and l                                         ; $479d: $a5
    and [hl]                                      ; $479e: $a6
    and a                                         ; $479f: $a7
    xor b                                         ; $47a0: $a8
    sub c                                         ; $47a1: $91
    ld d, h                                       ; $47a2: $54
    ld d, l                                       ; $47a3: $55
    sbc a                                         ; $47a4: $9f
    sub h                                         ; $47a5: $94
    rrca                                          ; $47a6: $0f
    rrca                                          ; $47a7: $0f
    rrca                                          ; $47a8: $0f
    rrca                                          ; $47a9: $0f
    rrca                                          ; $47aa: $0f
    rrca                                          ; $47ab: $0f
    rrca                                          ; $47ac: $0f
    rrca                                          ; $47ad: $0f
    rrca                                          ; $47ae: $0f
    rrca                                          ; $47af: $0f
    rrca                                          ; $47b0: $0f
    rrca                                          ; $47b1: $0f
    rlca                                          ; $47b2: $07
    rlca                                          ; $47b3: $07
    rrca                                          ; $47b4: $0f
    rrca                                          ; $47b5: $0f
    dec d                                         ; $47b6: $15
    ld b, d                                       ; $47b7: $42
    ld h, h                                       ; $47b8: $64
    ld l, a                                       ; $47b9: $6f
    ld b, l                                       ; $47ba: $45
    xor c                                         ; $47bb: $a9
    xor d                                         ; $47bc: $aa
    ld [hl], c                                    ; $47bd: $71
    ld c, c                                       ; $47be: $49
    ld c, d                                       ; $47bf: $4a
    ld h, [hl]                                    ; $47c0: $66
    ld [hl], e                                    ; $47c1: $73
    ld d, c                                       ; $47c2: $51
    ld d, d                                       ; $47c3: $52
    ld e, l                                       ; $47c4: $5d
    ld h, a                                       ; $47c5: $67
    ld bc, $0101                                  ; $47c6: $01 $01 $01
    ld bc, $0901                                  ; $47c9: $01 $01 $09
    add hl, bc                                    ; $47cc: $09
    ld bc, $0101                                  ; $47cd: $01 $01 $01
    ld bc, $0201                                  ; $47d0: $01 $01 $02
    ld [bc], a                                    ; $47d3: $02
    ld [bc], a                                    ; $47d4: $02
    ld [bc], a                                    ; $47d5: $02
    ld [hl], b                                    ; $47d6: $70
    inc [hl]                                      ; $47d7: $34
    dec [hl]                                      ; $47d8: $35
    ld [hl], $72                                  ; $47d9: $36 $72
    jr c, jr_07e_4816                             ; $47db: $38 $39

    ld a, [hl-]                                   ; $47dd: $3a
    inc sp                                        ; $47de: $33
    inc a                                         ; $47df: $3c
    dec a                                         ; $47e0: $3d
    ld a, $4c                                     ; $47e1: $3e $4c
    ld d, b                                       ; $47e3: $50
    ld d, c                                       ; $47e4: $51
    ld d, d                                       ; $47e5: $52
    ld bc, $0101                                  ; $47e6: $01 $01 $01
    ld bc, $0101                                  ; $47e9: $01 $01 $01
    ld bc, $0101                                  ; $47ec: $01 $01 $01
    ld bc, $0101                                  ; $47ef: $01 $01 $01
    ld [bc], a                                    ; $47f2: $02
    ld [bc], a                                    ; $47f3: $02
    ld [bc], a                                    ; $47f4: $02
    ld [bc], a                                    ; $47f5: $02
    scf                                           ; $47f6: $37
    ld b, b                                       ; $47f7: $40
    ld b, c                                       ; $47f8: $41
    dec d                                         ; $47f9: $15
    dec sp                                        ; $47fa: $3b
    ld b, e                                       ; $47fb: $43
    ld b, h                                       ; $47fc: $44
    ld b, l                                       ; $47fd: $45
    ccf                                           ; $47fe: $3f
    ld b, a                                       ; $47ff: $47
    ld c, b                                       ; $4800: $48
    ld c, c                                       ; $4801: $49
    ld e, l                                       ; $4802: $5d
    ld h, a                                       ; $4803: $67
    ld c, h                                       ; $4804: $4c
    ld d, b                                       ; $4805: $50
    ld bc, $0101                                  ; $4806: $01 $01 $01
    ld bc, $0101                                  ; $4809: $01 $01 $01
    ld bc, $0101                                  ; $480c: $01 $01 $01
    ld bc, $0101                                  ; $480f: $01 $01 $01
    ld [bc], a                                    ; $4812: $02
    ld [bc], a                                    ; $4813: $02
    ld [bc], a                                    ; $4814: $02
    ld [bc], a                                    ; $4815: $02

jr_07e_4816:
    ld b, d                                       ; $4816: $42
    ld h, h                                       ; $4817: $64
    ld l, a                                       ; $4818: $6f
    ld [hl], b                                    ; $4819: $70
    xor c                                         ; $481a: $a9
    xor d                                         ; $481b: $aa
    ld [hl], c                                    ; $481c: $71
    ld [hl], d                                    ; $481d: $72
    ld c, d                                       ; $481e: $4a
    ld h, [hl]                                    ; $481f: $66
    ld [hl], e                                    ; $4820: $73
    inc sp                                        ; $4821: $33
    ld d, c                                       ; $4822: $51
    ld d, d                                       ; $4823: $52
    ld e, l                                       ; $4824: $5d
    ld h, a                                       ; $4825: $67
    ld bc, $0101                                  ; $4826: $01 $01 $01
    ld bc, $0909                                  ; $4829: $01 $09 $09
    ld bc, $0101                                  ; $482c: $01 $01 $01
    ld bc, $0101                                  ; $482f: $01 $01 $01
    ld [bc], a                                    ; $4832: $02
    ld [bc], a                                    ; $4833: $02
    ld [bc], a                                    ; $4834: $02
    ld [bc], a                                    ; $4835: $02
    ld h, d                                       ; $4836: $62
    ld d, a                                       ; $4837: $57
    ld e, b                                       ; $4838: $58
    ld d, [hl]                                    ; $4839: $56
    ld e, d                                       ; $483a: $5a
    ld h, e                                       ; $483b: $63
    add b                                         ; $483c: $80
    ld e, h                                       ; $483d: $5c
    xor e                                         ; $483e: $ab
    ld a, l                                       ; $483f: $7d
    add e                                         ; $4840: $83
    add h                                         ; $4841: $84
    add a                                         ; $4842: $87
    adc b                                         ; $4843: $88
    adc c                                         ; $4844: $89
    adc d                                         ; $4845: $8a
    ld [bc], a                                    ; $4846: $02
    ld [bc], a                                    ; $4847: $02
    inc b                                         ; $4848: $04
    inc b                                         ; $4849: $04
    ld [bc], a                                    ; $484a: $02
    ld [bc], a                                    ; $484b: $02
    ld a, [bc]                                    ; $484c: $0a
    inc b                                         ; $484d: $04
    inc c                                         ; $484e: $0c
    inc b                                         ; $484f: $04
    ld a, [bc]                                    ; $4850: $0a
    ld a, [bc]                                    ; $4851: $0a
    rrca                                          ; $4852: $0f
    rrca                                          ; $4853: $0f
    rrca                                          ; $4854: $0f
    rrca                                          ; $4855: $0f
    ld e, e                                       ; $4856: $5b
    ld c, [hl]                                    ; $4857: $4e
    ld h, d                                       ; $4858: $62
    ld d, a                                       ; $4859: $57
    add c                                         ; $485a: $81
    add d                                         ; $485b: $82
    ld e, d                                       ; $485c: $5a
    ld h, e                                       ; $485d: $63
    add l                                         ; $485e: $85
    add [hl]                                      ; $485f: $86
    xor e                                         ; $4860: $ab
    ld a, l                                       ; $4861: $7d
    add a                                         ; $4862: $87
    adc b                                         ; $4863: $88
    adc c                                         ; $4864: $89
    adc d                                         ; $4865: $8a
    inc b                                         ; $4866: $04
    ld [bc], a                                    ; $4867: $02
    inc b                                         ; $4868: $04
    inc b                                         ; $4869: $04
    inc c                                         ; $486a: $0c
    inc c                                         ; $486b: $0c
    ld [bc], a                                    ; $486c: $02
    ld [bc], a                                    ; $486d: $02
    ld a, [bc]                                    ; $486e: $0a
    ld a, [bc]                                    ; $486f: $0a
    ld a, [bc]                                    ; $4870: $0a
    inc b                                         ; $4871: $04
    rrca                                          ; $4872: $0f
    rrca                                          ; $4873: $0f
    rrca                                          ; $4874: $0f
    rrca                                          ; $4875: $0f
    ld e, b                                       ; $4876: $58
    ld d, [hl]                                    ; $4877: $56
    ld e, e                                       ; $4878: $5b
    ld h, c                                       ; $4879: $61
    add b                                         ; $487a: $80
    ld e, h                                       ; $487b: $5c
    add c                                         ; $487c: $81
    add d                                         ; $487d: $82
    add e                                         ; $487e: $83
    add h                                         ; $487f: $84
    add l                                         ; $4880: $85
    add [hl]                                      ; $4881: $86
    add a                                         ; $4882: $87
    adc b                                         ; $4883: $88
    adc c                                         ; $4884: $89
    adc d                                         ; $4885: $8a
    inc b                                         ; $4886: $04
    ld [bc], a                                    ; $4887: $02
    ld [bc], a                                    ; $4888: $02
    ld [bc], a                                    ; $4889: $02
    inc c                                         ; $488a: $0c
    inc b                                         ; $488b: $04
    ld a, [bc]                                    ; $488c: $0a
    inc c                                         ; $488d: $0c
    ld a, [bc]                                    ; $488e: $0a
    ld a, [bc]                                    ; $488f: $0a
    inc c                                         ; $4890: $0c
    inc c                                         ; $4891: $0c
    rrca                                          ; $4892: $0f
    rrca                                          ; $4893: $0f
    rrca                                          ; $4894: $0f
    rrca                                          ; $4895: $0f
    ld h, d                                       ; $4896: $62
    ld d, a                                       ; $4897: $57
    ld c, [hl]                                    ; $4898: $4e
    ld e, c                                       ; $4899: $59
    ld e, d                                       ; $489a: $5a
    ld h, e                                       ; $489b: $63
    add b                                         ; $489c: $80
    ld e, h                                       ; $489d: $5c
    xor e                                         ; $489e: $ab
    ld a, l                                       ; $489f: $7d
    add e                                         ; $48a0: $83
    add h                                         ; $48a1: $84
    add a                                         ; $48a2: $87
    adc b                                         ; $48a3: $88
    ld a, a                                       ; $48a4: $7f
    ld a, [hl]                                    ; $48a5: $7e
    inc b                                         ; $48a6: $04
    inc b                                         ; $48a7: $04
    inc b                                         ; $48a8: $04
    ld [bc], a                                    ; $48a9: $02
    ld [bc], a                                    ; $48aa: $02
    ld [bc], a                                    ; $48ab: $02
    inc c                                         ; $48ac: $0c
    ld [bc], a                                    ; $48ad: $02
    inc c                                         ; $48ae: $0c
    ld [bc], a                                    ; $48af: $02
    ld a, [bc]                                    ; $48b0: $0a
    inc c                                         ; $48b1: $0c
    rrca                                          ; $48b2: $0f
    rrca                                          ; $48b3: $0f
    daa                                           ; $48b4: $27
    ld [hl+], a                                   ; $48b5: $22
    sbc e                                         ; $48b6: $9b
    sbc h                                         ; $48b7: $9c
    sbc l                                         ; $48b8: $9d
    sbc [hl]                                      ; $48b9: $9e
    xor h                                         ; $48ba: $ac
    xor l                                         ; $48bb: $ad
    ld c, [hl]                                    ; $48bc: $4e
    ld d, e                                       ; $48bd: $53
    ld h, d                                       ; $48be: $62
    ld e, e                                       ; $48bf: $5b
    ld e, b                                       ; $48c0: $58
    ld e, c                                       ; $48c1: $59
    ld e, d                                       ; $48c2: $5a
    ld c, [hl]                                    ; $48c3: $4e
    add b                                         ; $48c4: $80
    ld e, h                                       ; $48c5: $5c
    rrca                                          ; $48c6: $0f
    rrca                                          ; $48c7: $0f
    rrca                                          ; $48c8: $0f
    rrca                                          ; $48c9: $0f
    rrca                                          ; $48ca: $0f
    rrca                                          ; $48cb: $0f
    rlca                                          ; $48cc: $07
    rlca                                          ; $48cd: $07
    rlca                                          ; $48ce: $07
    rlca                                          ; $48cf: $07
    rlca                                          ; $48d0: $07
    rlca                                          ; $48d1: $07
    rlca                                          ; $48d2: $07
    rlca                                          ; $48d3: $07
    rrca                                          ; $48d4: $0f
    rlca                                          ; $48d5: $07
    sbc e                                         ; $48d6: $9b
    sbc h                                         ; $48d7: $9c
    sbc l                                         ; $48d8: $9d
    sbc [hl]                                      ; $48d9: $9e
    sbc a                                         ; $48da: $9f
    sub h                                         ; $48db: $94
    xor h                                         ; $48dc: $ac
    xor l                                         ; $48dd: $ad
    ld h, b                                       ; $48de: $60
    ld h, c                                       ; $48df: $61
    ld h, d                                       ; $48e0: $62
    ld d, a                                       ; $48e1: $57
    add c                                         ; $48e2: $81
    add d                                         ; $48e3: $82
    ld e, d                                       ; $48e4: $5a
    ld c, [hl]                                    ; $48e5: $4e
    rrca                                          ; $48e6: $0f
    rrca                                          ; $48e7: $0f
    rrca                                          ; $48e8: $0f
    rrca                                          ; $48e9: $0f
    rrca                                          ; $48ea: $0f
    rrca                                          ; $48eb: $0f
    rrca                                          ; $48ec: $0f
    rrca                                          ; $48ed: $0f
    rlca                                          ; $48ee: $07
    rlca                                          ; $48ef: $07
    rlca                                          ; $48f0: $07
    rlca                                          ; $48f1: $07
    rrca                                          ; $48f2: $0f
    rrca                                          ; $48f3: $0f
    rlca                                          ; $48f4: $07
    rlca                                          ; $48f5: $07
    sbc e                                         ; $48f6: $9b
    sbc h                                         ; $48f7: $9c
    sbc l                                         ; $48f8: $9d
    sbc [hl]                                      ; $48f9: $9e
    ld d, h                                       ; $48fa: $54
    ld d, l                                       ; $48fb: $55
    sbc a                                         ; $48fc: $9f
    sub h                                         ; $48fd: $94
    ld c, [hl]                                    ; $48fe: $4e
    ld d, [hl]                                    ; $48ff: $56
    ld h, b                                       ; $4900: $60
    ld h, c                                       ; $4901: $61
    ld e, e                                       ; $4902: $5b
    ld e, h                                       ; $4903: $5c
    add c                                         ; $4904: $81
    add d                                         ; $4905: $82
    rrca                                          ; $4906: $0f
    rrca                                          ; $4907: $0f
    rrca                                          ; $4908: $0f
    rrca                                          ; $4909: $0f
    rlca                                          ; $490a: $07
    rlca                                          ; $490b: $07
    rrca                                          ; $490c: $0f
    rrca                                          ; $490d: $0f
    rlca                                          ; $490e: $07
    rlca                                          ; $490f: $07
    rlca                                          ; $4910: $07
    rlca                                          ; $4911: $07
    rlca                                          ; $4912: $07
    rlca                                          ; $4913: $07
    rrca                                          ; $4914: $0f
    rrca                                          ; $4915: $0f
    sbc e                                         ; $4916: $9b
    sbc h                                         ; $4917: $9c
    sub e                                         ; $4918: $93
    sub d                                         ; $4919: $92
    xor h                                         ; $491a: $ac
    xor l                                         ; $491b: $ad
    sub [hl]                                      ; $491c: $96
    sub l                                         ; $491d: $95
    ld h, d                                       ; $491e: $62
    ld d, a                                       ; $491f: $57
    sbc b                                         ; $4920: $98
    sub a                                         ; $4921: $97
    ld e, d                                       ; $4922: $5a
    ld h, e                                       ; $4923: $63
    sbc d                                         ; $4924: $9a
    sbc c                                         ; $4925: $99
    rrca                                          ; $4926: $0f
    rrca                                          ; $4927: $0f
    cpl                                           ; $4928: $2f
    cpl                                           ; $4929: $2f
    rrca                                          ; $492a: $0f
    rrca                                          ; $492b: $0f
    rrca                                          ; $492c: $0f
    rrca                                          ; $492d: $0f
    rlca                                          ; $492e: $07
    rlca                                          ; $492f: $07
    rrca                                          ; $4930: $0f
    rrca                                          ; $4931: $0f
    rlca                                          ; $4932: $07
    rlca                                          ; $4933: $07
    rrca                                          ; $4934: $0f
    rrca                                          ; $4935: $0f
    ld d, e                                       ; $4936: $53
    ld a, l                                       ; $4937: $7d
    add e                                         ; $4938: $83
    add h                                         ; $4939: $84
    ld a, [hl]                                    ; $493a: $7e
    xor [hl]                                      ; $493b: $ae
    and e                                         ; $493c: $a3
    and h                                         ; $493d: $a4
    xor a                                         ; $493e: $af
    or b                                          ; $493f: $b0
    and [hl]                                      ; $4940: $a6
    or c                                          ; $4941: $b1
    xor h                                         ; $4942: $ac
    xor l                                         ; $4943: $ad
    ld d, h                                       ; $4944: $54
    ld d, l                                       ; $4945: $55
    rlca                                          ; $4946: $07
    rlca                                          ; $4947: $07
    rrca                                          ; $4948: $0f
    rrca                                          ; $4949: $0f
    rlca                                          ; $494a: $07
    rrca                                          ; $494b: $0f
    rrca                                          ; $494c: $0f
    rrca                                          ; $494d: $0f
    rrca                                          ; $494e: $0f
    rrca                                          ; $494f: $0f
    rrca                                          ; $4950: $0f
    rrca                                          ; $4951: $0f
    rrca                                          ; $4952: $0f
    rrca                                          ; $4953: $0f
    rlca                                          ; $4954: $07
    rlca                                          ; $4955: $07
    add l                                         ; $4956: $85
    ld c, [hl]                                    ; $4957: $4e
    ld d, e                                       ; $4958: $53
    ld c, [hl]                                    ; $4959: $4e
    ld e, e                                       ; $495a: $5b
    ld c, [hl]                                    ; $495b: $4e
    ld d, [hl]                                    ; $495c: $56
    xor [hl]                                      ; $495d: $ae
    xor b                                         ; $495e: $a8
    sub c                                         ; $495f: $91
    xor a                                         ; $4960: $af
    or b                                          ; $4961: $b0
    sbc a                                         ; $4962: $9f
    sub h                                         ; $4963: $94
    xor h                                         ; $4964: $ac
    xor l                                         ; $4965: $ad
    rrca                                          ; $4966: $0f
    rlca                                          ; $4967: $07
    rlca                                          ; $4968: $07
    ld h, a                                       ; $4969: $67
    rlca                                          ; $496a: $07
    rlca                                          ; $496b: $07
    rlca                                          ; $496c: $07
    rrca                                          ; $496d: $0f
    rrca                                          ; $496e: $0f
    rrca                                          ; $496f: $0f
    rrca                                          ; $4970: $0f
    rrca                                          ; $4971: $0f
    rrca                                          ; $4972: $0f
    rrca                                          ; $4973: $0f
    rrca                                          ; $4974: $0f
    rrca                                          ; $4975: $0f
    add e                                         ; $4976: $83
    add h                                         ; $4977: $84
    add l                                         ; $4978: $85
    add [hl]                                      ; $4979: $86
    and e                                         ; $497a: $a3
    and h                                         ; $497b: $a4
    and d                                         ; $497c: $a2
    and l                                         ; $497d: $a5
    and [hl]                                      ; $497e: $a6
    and a                                         ; $497f: $a7
    ld c, [hl]                                    ; $4980: $4e
    ld e, e                                       ; $4981: $5b
    ld d, h                                       ; $4982: $54
    ld d, e                                       ; $4983: $53
    ld c, [hl]                                    ; $4984: $4e
    sub h                                         ; $4985: $94
    rrca                                          ; $4986: $0f
    rrca                                          ; $4987: $0f
    rrca                                          ; $4988: $0f
    rrca                                          ; $4989: $0f
    rrca                                          ; $498a: $0f
    rrca                                          ; $498b: $0f
    rrca                                          ; $498c: $0f
    rrca                                          ; $498d: $0f
    rrca                                          ; $498e: $0f
    rrca                                          ; $498f: $0f
    rlca                                          ; $4990: $07
    rlca                                          ; $4991: $07
    rlca                                          ; $4992: $07
    rlca                                          ; $4993: $07
    ld h, a                                       ; $4994: $67
    rrca                                          ; $4995: $0f
    xor e                                         ; $4996: $ab
    ld a, l                                       ; $4997: $7d
    and c                                         ; $4998: $a1
    and b                                         ; $4999: $a0
    ld a, [hl]                                    ; $499a: $7e
    xor [hl]                                      ; $499b: $ae
    sub [hl]                                      ; $499c: $96
    sub l                                         ; $499d: $95
    xor a                                         ; $499e: $af
    or b                                          ; $499f: $b0
    sbc b                                         ; $49a0: $98
    sub a                                         ; $49a1: $97
    xor h                                         ; $49a2: $ac
    xor l                                         ; $49a3: $ad
    sbc d                                         ; $49a4: $9a
    sbc c                                         ; $49a5: $99
    rrca                                          ; $49a6: $0f
    rlca                                          ; $49a7: $07
    rrca                                          ; $49a8: $0f
    rrca                                          ; $49a9: $0f
    rlca                                          ; $49aa: $07
    rrca                                          ; $49ab: $0f
    rrca                                          ; $49ac: $0f
    rrca                                          ; $49ad: $0f
    rrca                                          ; $49ae: $0f
    rrca                                          ; $49af: $0f
    rrca                                          ; $49b0: $0f
    rrca                                          ; $49b1: $0f
    rrca                                          ; $49b2: $0f
    rrca                                          ; $49b3: $0f
    rrca                                          ; $49b4: $0f
    rrca                                          ; $49b5: $0f
    inc [hl]                                      ; $49b6: $34
    dec [hl]                                      ; $49b7: $35
    ld [hl], $37                                  ; $49b8: $36 $37
    jr c, jr_07e_49f5                             ; $49ba: $38 $39

    ld a, [hl-]                                   ; $49bc: $3a
    dec sp                                        ; $49bd: $3b
    inc a                                         ; $49be: $3c
    dec a                                         ; $49bf: $3d
    ld a, $3f                                     ; $49c0: $3e $3f
    ld c, h                                       ; $49c2: $4c
    ld d, b                                       ; $49c3: $50
    ld d, c                                       ; $49c4: $51
    ld d, d                                       ; $49c5: $52
    ld bc, $0101                                  ; $49c6: $01 $01 $01
    ld bc, $0101                                  ; $49c9: $01 $01 $01
    ld bc, $0101                                  ; $49cc: $01 $01 $01
    ld bc, $0101                                  ; $49cf: $01 $01 $01
    ld [bc], a                                    ; $49d2: $02
    ld [bc], a                                    ; $49d3: $02
    ld [bc], a                                    ; $49d4: $02
    ld [bc], a                                    ; $49d5: $02
    ld b, b                                       ; $49d6: $40
    ld b, c                                       ; $49d7: $41
    or d                                          ; $49d8: $b2
    or e                                          ; $49d9: $b3
    ld b, e                                       ; $49da: $43
    ld b, h                                       ; $49db: $44
    ld b, l                                       ; $49dc: $45
    or h                                          ; $49dd: $b4
    ld b, a                                       ; $49de: $47
    ld c, b                                       ; $49df: $48
    ld c, c                                       ; $49e0: $49
    or l                                          ; $49e1: $b5
    ld e, l                                       ; $49e2: $5d
    ld h, a                                       ; $49e3: $67
    ld h, a                                       ; $49e4: $67
    or [hl]                                       ; $49e5: $b6
    ld bc, $0906                                  ; $49e6: $01 $06 $09
    ld a, [bc]                                    ; $49e9: $0a
    ld bc, $0106                                  ; $49ea: $01 $06 $01
    ld a, [bc]                                    ; $49ed: $0a
    ld bc, $0101                                  ; $49ee: $01 $01 $01
    ld a, [bc]                                    ; $49f1: $0a
    ld [bc], a                                    ; $49f2: $02
    ld [bc], a                                    ; $49f3: $02
    ld [bc], a                                    ; $49f4: $02

jr_07e_49f5:
    ld a, [bc]                                    ; $49f5: $0a
    xor e                                         ; $49f6: $ab
    ld a, l                                       ; $49f7: $7d
    add e                                         ; $49f8: $83
    ld d, e                                       ; $49f9: $53
    ld d, [hl]                                    ; $49fa: $56
    xor [hl]                                      ; $49fb: $ae
    ld c, [hl]                                    ; $49fc: $4e
    and h                                         ; $49fd: $a4
    or c                                          ; $49fe: $b1
    or b                                          ; $49ff: $b0
    and [hl]                                      ; $4a00: $a6
    and a                                         ; $4a01: $a7
    ld d, e                                       ; $4a02: $53
    ld c, [hl]                                    ; $4a03: $4e
    ld c, [hl]                                    ; $4a04: $4e
    ld d, l                                       ; $4a05: $55
    ld a, [bc]                                    ; $4a06: $0a
    inc b                                         ; $4a07: $04
    inc c                                         ; $4a08: $0c
    inc b                                         ; $4a09: $04
    ld [bc], a                                    ; $4a0a: $02
    inc c                                         ; $4a0b: $0c
    inc b                                         ; $4a0c: $04
    ld a, [bc]                                    ; $4a0d: $0a
    inc c                                         ; $4a0e: $0c
    inc c                                         ; $4a0f: $0c
    inc c                                         ; $4a10: $0c
    inc c                                         ; $4a11: $0c
    ld [bc], a                                    ; $4a12: $02
    ld h, d                                       ; $4a13: $62
    ld [bc], a                                    ; $4a14: $02
    ld [bc], a                                    ; $4a15: $02
    ld c, [hl]                                    ; $4a16: $4e
    add [hl]                                      ; $4a17: $86
    xor e                                         ; $4a18: $ab
    ld a, l                                       ; $4a19: $7d
    and d                                         ; $4a1a: $a2
    and l                                         ; $4a1b: $a5
    ld a, [hl]                                    ; $4a1c: $7e
    xor [hl]                                      ; $4a1d: $ae
    xor b                                         ; $4a1e: $a8
    sub c                                         ; $4a1f: $91
    or c                                          ; $4a20: $b1
    ld c, [hl]                                    ; $4a21: $4e
    ld c, [hl]                                    ; $4a22: $4e
    ld c, [hl]                                    ; $4a23: $4e
    ld d, e                                       ; $4a24: $53
    ld c, [hl]                                    ; $4a25: $4e
    ld h, d                                       ; $4a26: $62
    ld a, [bc]                                    ; $4a27: $0a
    ld a, [bc]                                    ; $4a28: $0a
    inc b                                         ; $4a29: $04
    ld a, [bc]                                    ; $4a2a: $0a
    ld a, [bc]                                    ; $4a2b: $0a
    inc b                                         ; $4a2c: $04

Jump_07e_4a2d:
    inc c                                         ; $4a2d: $0c
    inc c                                         ; $4a2e: $0c
    inc c                                         ; $4a2f: $0c
    ld a, [bc]                                    ; $4a30: $0a
    ld [bc], a                                    ; $4a31: $02
    ld h, d                                       ; $4a32: $62
    ld [bc], a                                    ; $4a33: $02
    ld [bc], a                                    ; $4a34: $02
    ld h, d                                       ; $4a35: $62
    ld h, b                                       ; $4a36: $60
    ld c, [hl]                                    ; $4a37: $4e
    ld d, [hl]                                    ; $4a38: $56
    ld e, e                                       ; $4a39: $5b
    add c                                         ; $4a3a: $81
    add d                                         ; $4a3b: $82
    or c                                          ; $4a3c: $b1
    ld c, [hl]                                    ; $4a3d: $4e
    add l                                         ; $4a3e: $85
    add [hl]                                      ; $4a3f: $86
    xor e                                         ; $4a40: $ab
    ld a, l                                       ; $4a41: $7d
    and d                                         ; $4a42: $a2
    and l                                         ; $4a43: $a5
    ld a, [hl]                                    ; $4a44: $7e
    xor [hl]                                      ; $4a45: $ae
    ld [bc], a                                    ; $4a46: $02
    ld [bc], a                                    ; $4a47: $02
    inc b                                         ; $4a48: $04
    inc b                                         ; $4a49: $04
    inc c                                         ; $4a4a: $0c
    inc c                                         ; $4a4b: $0c
    ld a, [bc]                                    ; $4a4c: $0a
    ld [bc], a                                    ; $4a4d: $02
    inc c                                         ; $4a4e: $0c
    ld a, [bc]                                    ; $4a4f: $0a
    ld a, [bc]                                    ; $4a50: $0a
    ld [bc], a                                    ; $4a51: $02
    inc c                                         ; $4a52: $0c
    inc c                                         ; $4a53: $0c
    ld [bc], a                                    ; $4a54: $02
    ld a, [bc]                                    ; $4a55: $0a
    or a                                          ; $4a56: $b7
    cp b                                          ; $4a57: $b8
    cp c                                          ; $4a58: $b9
    cp d                                          ; $4a59: $ba
    ld c, a                                       ; $4a5a: $4f
    cp e                                          ; $4a5b: $bb
    cp h                                          ; $4a5c: $bc
    cp l                                          ; $4a5d: $bd
    ld c, [hl]                                    ; $4a5e: $4e
    cp [hl]                                       ; $4a5f: $be
    cp a                                          ; $4a60: $bf
    ret nz                                        ; $4a61: $c0

    ld c, [hl]                                    ; $4a62: $4e
    pop bc                                        ; $4a63: $c1
    jp nz, $ebc3                                  ; $4a64: $c2 $c3 $eb

    adc e                                         ; $4a67: $8b
    adc e                                         ; $4a68: $8b
    adc e                                         ; $4a69: $8b
    add e                                         ; $4a6a: $83
    adc e                                         ; $4a6b: $8b
    adc e                                         ; $4a6c: $8b
    adc e                                         ; $4a6d: $8b
    ld [bc], a                                    ; $4a6e: $02
    adc e                                         ; $4a6f: $8b
    adc l                                         ; $4a70: $8d
    adc e                                         ; $4a71: $8b
    ld [bc], a                                    ; $4a72: $02
    adc e                                         ; $4a73: $8b
    adc l                                         ; $4a74: $8d
    adc e                                         ; $4a75: $8b
    call nz, $c6c5                                ; $4a76: $c4 $c5 $c6
    rst $00                                       ; $4a79: $c7
    ret z                                         ; $4a7a: $c8

    ret                                           ; $4a7b: $c9


    jp z, $cccb                                   ; $4a7c: $ca $cb $cc

    call $cfce                                    ; $4a7f: $cd $ce $cf
    ret nc                                        ; $4a82: $d0

    pop de                                        ; $4a83: $d1
    jp nc, $8bd3                                  ; $4a84: $d2 $d3 $8b

    adc e                                         ; $4a87: $8b
    adc e                                         ; $4a88: $8b
    adc e                                         ; $4a89: $8b
    adc e                                         ; $4a8a: $8b
    adc e                                         ; $4a8b: $8b
    adc e                                         ; $4a8c: $8b
    adc e                                         ; $4a8d: $8b
    adc e                                         ; $4a8e: $8b
    adc l                                         ; $4a8f: $8d
    adc l                                         ; $4a90: $8d
    adc e                                         ; $4a91: $8b
    adc e                                         ; $4a92: $8b
    adc l                                         ; $4a93: $8d
    adc e                                         ; $4a94: $8b
    adc e                                         ; $4a95: $8b
    call nc, $d6d5                                ; $4a96: $d4 $d5 $d6
    rst $10                                       ; $4a99: $d7
    ret c                                         ; $4a9a: $d8

    reti                                          ; $4a9b: $d9


    jp c, $dcdb                                   ; $4a9c: $da $db $dc

    db $dd                                        ; $4a9f: $dd
    sbc $df                                       ; $4aa0: $de $df
    ldh [$e1], a                                  ; $4aa2: $e0 $e1
    ld [c], a                                     ; $4aa4: $e2
    pop bc                                        ; $4aa5: $c1
    adc e                                         ; $4aa6: $8b
    adc e                                         ; $4aa7: $8b
    adc e                                         ; $4aa8: $8b
    adc e                                         ; $4aa9: $8b
    adc e                                         ; $4aaa: $8b
    adc e                                         ; $4aab: $8b
    adc e                                         ; $4aac: $8b
    adc e                                         ; $4aad: $8b
    adc e                                         ; $4aae: $8b
    adc l                                         ; $4aaf: $8d
    adc l                                         ; $4ab0: $8d
    adc e                                         ; $4ab1: $8b
    adc e                                         ; $4ab2: $8b
    adc l                                         ; $4ab3: $8d
    adc e                                         ; $4ab4: $8b
    adc e                                         ; $4ab5: $8b
    xor b                                         ; $4ab6: $a8
    ld e, e                                       ; $4ab7: $5b
    db $e3                                        ; $4ab8: $e3
    db $e4                                        ; $4ab9: $e4
    ld c, [hl]                                    ; $4aba: $4e
    ld c, [hl]                                    ; $4abb: $4e
    ld a, d                                       ; $4abc: $7a
    ld a, c                                       ; $4abd: $79
    ld e, e                                       ; $4abe: $5b
    ld h, c                                       ; $4abf: $61
    push hl                                       ; $4ac0: $e5
    and $81                                       ; $4ac1: $e6 $81
    add d                                         ; $4ac3: $82
    adc h                                         ; $4ac4: $8c
    adc e                                         ; $4ac5: $8b
    ld a, [bc]                                    ; $4ac6: $0a
    ld [bc], a                                    ; $4ac7: $02
    adc e                                         ; $4ac8: $8b
    adc e                                         ; $4ac9: $8b
    ld h, d                                       ; $4aca: $62
    ld [bc], a                                    ; $4acb: $02
    add l                                         ; $4acc: $85
    add l                                         ; $4acd: $85
    ld [bc], a                                    ; $4ace: $02
    inc b                                         ; $4acf: $04
    adc e                                         ; $4ad0: $8b
    adc l                                         ; $4ad1: $8d
    ld a, [bc]                                    ; $4ad2: $0a
    inc c                                         ; $4ad3: $0c
    adc e                                         ; $4ad4: $8b
    adc e                                         ; $4ad5: $8b
    rst $20                                       ; $4ad6: $e7
    add sp, -$17                                  ; $4ad7: $e8 $e9
    ld [$eceb], a                                 ; $4ad9: $ea $eb $ec
    db $ed                                        ; $4adc: $ed
    xor $ef                                       ; $4add: $ee $ef
    ldh a, [$f1]                                  ; $4adf: $f0 $f1
    ld a, [c]                                     ; $4ae1: $f2
    di                                            ; $4ae2: $f3
    db $f4                                        ; $4ae3: $f4
    push af                                       ; $4ae4: $f5
    or $8b                                        ; $4ae5: $f6 $8b
    adc e                                         ; $4ae7: $8b
    adc l                                         ; $4ae8: $8d
    adc e                                         ; $4ae9: $8b
    adc e                                         ; $4aea: $8b
    adc e                                         ; $4aeb: $8b
    adc l                                         ; $4aec: $8d
    adc l                                         ; $4aed: $8d
    adc e                                         ; $4aee: $8b
    adc e                                         ; $4aef: $8b
    adc e                                         ; $4af0: $8b
    adc e                                         ; $4af1: $8b
    adc l                                         ; $4af2: $8d
    adc l                                         ; $4af3: $8d
    adc e                                         ; $4af4: $8b
    adc e                                         ; $4af5: $8b
    rst $30                                       ; $4af6: $f7
    ld hl, sp-$07                                 ; $4af7: $f8 $f9
    ld a, [$fcfb]                                 ; $4af9: $fa $fb $fc
    db $fd                                        ; $4afc: $fd
    cp $ff                                        ; $4afd: $fe $ff
    nop                                           ; $4aff: $00
    ld bc, $0302                                  ; $4b00: $01 $02 $03
    pop de                                        ; $4b03: $d1
    inc b                                         ; $4b04: $04
    inc d                                         ; $4b05: $14
    adc e                                         ; $4b06: $8b
    adc l                                         ; $4b07: $8d
    adc e                                         ; $4b08: $8b
    adc e                                         ; $4b09: $8b
    adc l                                         ; $4b0a: $8d
    adc e                                         ; $4b0b: $8b
    adc e                                         ; $4b0c: $8b
    adc l                                         ; $4b0d: $8d
    adc l                                         ; $4b0e: $8d
    adc e                                         ; $4b0f: $8b
    adc e                                         ; $4b10: $8b
    adc l                                         ; $4b11: $8d
    adc l                                         ; $4b12: $8d
    add e                                         ; $4b13: $83
    adc l                                         ; $4b14: $8d
    add e                                         ; $4b15: $83
    dec b                                         ; $4b16: $05
    ld b, $07                                     ; $4b17: $06 $07
    add sp, $08                                   ; $4b19: $e8 $08
    add hl, bc                                    ; $4b1b: $09
    ld a, [bc]                                    ; $4b1c: $0a
    db $ec                                        ; $4b1d: $ec
    dec bc                                        ; $4b1e: $0b
    inc c                                         ; $4b1f: $0c
    dec c                                         ; $4b20: $0d
    ldh a, [$0e]                                  ; $4b21: $f0 $0e
    rrca                                          ; $4b23: $0f
    di                                            ; $4b24: $f3
    db $f4                                        ; $4b25: $f4
    adc l                                         ; $4b26: $8d
    adc e                                         ; $4b27: $8b
    adc e                                         ; $4b28: $8b
    adc e                                         ; $4b29: $8b
    adc e                                         ; $4b2a: $8b
    adc e                                         ; $4b2b: $8b
    adc e                                         ; $4b2c: $8b
    adc e                                         ; $4b2d: $8b
    adc e                                         ; $4b2e: $8b

Jump_07e_4b2f:
    adc e                                         ; $4b2f: $8b
    adc e                                         ; $4b30: $8b
    adc l                                         ; $4b31: $8d
    adc e                                         ; $4b32: $8b
    adc e                                         ; $4b33: $8b
    adc l                                         ; $4b34: $8d
    adc l                                         ; $4b35: $8d
    add l                                         ; $4b36: $85
    add [hl]                                      ; $4b37: $86
    adc [hl]                                      ; $4b38: $8e
    adc l                                         ; $4b39: $8d
    and d                                         ; $4b3a: $a2
    ld c, [hl]                                    ; $4b3b: $4e
    sub b                                         ; $4b3c: $90
    adc a                                         ; $4b3d: $8f
    xor b                                         ; $4b3e: $a8
    ld e, e                                       ; $4b3f: $5b
    ld l, [hl]                                    ; $4b40: $6e
    ld l, l                                       ; $4b41: $6d
    sbc a                                         ; $4b42: $9f
    ld c, [hl]                                    ; $4b43: $4e
    halt                                          ; $4b44: $76
    ld [hl], l                                    ; $4b45: $75
    ld a, [bc]                                    ; $4b46: $0a
    inc c                                         ; $4b47: $0c
    adc e                                         ; $4b48: $8b
    adc e                                         ; $4b49: $8b
    inc c                                         ; $4b4a: $0c
    ld [bc], a                                    ; $4b4b: $02
    adc e                                         ; $4b4c: $8b
    adc e                                         ; $4b4d: $8b
    inc c                                         ; $4b4e: $0c
    ld [bc], a                                    ; $4b4f: $02
    add e                                         ; $4b50: $83
    and l                                         ; $4b51: $a5
    ld a, [bc]                                    ; $4b52: $0a
    ld [bc], a                                    ; $4b53: $02
    and e                                         ; $4b54: $a3
    and l                                         ; $4b55: $a5
    pop de                                        ; $4b56: $d1
    rst $10                                       ; $4b57: $d7
    db $10                                        ; $4b58: $10
    ld de, $d1d1                                  ; $4b59: $11 $d1 $d1
    pop de                                        ; $4b5c: $d1
    pop de                                        ; $4b5d: $d1
    pop de                                        ; $4b5e: $d1
    pop de                                        ; $4b5f: $d1
    pop de                                        ; $4b60: $d1
    pop de                                        ; $4b61: $d1
    pop de                                        ; $4b62: $d1
    pop de                                        ; $4b63: $d1
    pop de                                        ; $4b64: $d1
    pop de                                        ; $4b65: $d1
    add e                                         ; $4b66: $83
    add l                                         ; $4b67: $85
    adc e                                         ; $4b68: $8b
    adc e                                         ; $4b69: $8b
    add c                                         ; $4b6a: $81
    add c                                         ; $4b6b: $81
    add c                                         ; $4b6c: $81
    add c                                         ; $4b6d: $81
    add l                                         ; $4b6e: $85
    ld bc, $0101                                  ; $4b6f: $01 $01 $01
    add c                                         ; $4b72: $81
    ld bc, $0101                                  ; $4b73: $01 $01 $01
    pop de                                        ; $4b76: $d1
    pop de                                        ; $4b77: $d1
    pop de                                        ; $4b78: $d1
    pop de                                        ; $4b79: $d1
    pop de                                        ; $4b7a: $d1
    pop de                                        ; $4b7b: $d1
    pop de                                        ; $4b7c: $d1
    pop de                                        ; $4b7d: $d1
    pop de                                        ; $4b7e: $d1
    pop de                                        ; $4b7f: $d1
    pop de                                        ; $4b80: $d1
    pop de                                        ; $4b81: $d1
    pop de                                        ; $4b82: $d1
    pop de                                        ; $4b83: $d1
    pop de                                        ; $4b84: $d1
    pop de                                        ; $4b85: $d1
    add l                                         ; $4b86: $85
    add e                                         ; $4b87: $83
    add e                                         ; $4b88: $83
    add e                                         ; $4b89: $83
    add c                                         ; $4b8a: $81
    add c                                         ; $4b8b: $81
    add c                                         ; $4b8c: $81
    add c                                         ; $4b8d: $81
    ld bc, $0101                                  ; $4b8e: $01 $01 $01
    ld bc, $0101                                  ; $4b91: $01 $01 $01
    ld bc, $d101                                  ; $4b94: $01 $01 $d1
    pop de                                        ; $4b97: $d1
    pop de                                        ; $4b98: $d1
    rst $10                                       ; $4b99: $d7
    pop de                                        ; $4b9a: $d1
    pop de                                        ; $4b9b: $d1
    pop de                                        ; $4b9c: $d1
    pop de                                        ; $4b9d: $d1
    pop de                                        ; $4b9e: $d1
    pop de                                        ; $4b9f: $d1
    pop de                                        ; $4ba0: $d1
    pop de                                        ; $4ba1: $d1
    pop de                                        ; $4ba2: $d1
    pop de                                        ; $4ba3: $d1
    pop de                                        ; $4ba4: $d1
    pop de                                        ; $4ba5: $d1
    add e                                         ; $4ba6: $83
    add e                                         ; $4ba7: $83
    add e                                         ; $4ba8: $83
    add e                                         ; $4ba9: $83
    add c                                         ; $4baa: $81
    add c                                         ; $4bab: $81
    add c                                         ; $4bac: $81
    add c                                         ; $4bad: $81
    ld bc, $0101                                  ; $4bae: $01 $01 $01
    ld bc, $0101                                  ; $4bb1: $01 $01 $01
    ld bc, $b301                                  ; $4bb4: $01 $01 $b3
    ld [hl], b                                    ; $4bb7: $70
    inc [hl]                                      ; $4bb8: $34
    dec [hl]                                      ; $4bb9: $35
    or h                                          ; $4bba: $b4
    ld [hl], d                                    ; $4bbb: $72
    jr c, jr_07e_4bf7                             ; $4bbc: $38 $39

    or l                                          ; $4bbe: $b5
    inc sp                                        ; $4bbf: $33
    inc a                                         ; $4bc0: $3c
    dec a                                         ; $4bc1: $3d
    or [hl]                                       ; $4bc2: $b6
    ld d, c                                       ; $4bc3: $51
    ld c, h                                       ; $4bc4: $4c
    ld d, b                                       ; $4bc5: $50
    ld a, [hl+]                                   ; $4bc6: $2a
    ld b, $01                                     ; $4bc7: $06 $01
    ld bc, $012a                                  ; $4bc9: $01 $2a $01
    ld bc, $2a01                                  ; $4bcc: $01 $01 $2a
    ld bc, $0101                                  ; $4bcf: $01 $01 $01
    ld a, [hl+]                                   ; $4bd2: $2a
    ld [bc], a                                    ; $4bd3: $02
    ld [bc], a                                    ; $4bd4: $02
    ld [bc], a                                    ; $4bd5: $02
    ld [hl], $37                                  ; $4bd6: $36 $37
    ld b, b                                       ; $4bd8: $40
    ld b, c                                       ; $4bd9: $41
    ld a, [hl-]                                   ; $4bda: $3a
    dec sp                                        ; $4bdb: $3b
    ld b, e                                       ; $4bdc: $43
    ld b, h                                       ; $4bdd: $44
    ld a, $3f                                     ; $4bde: $3e $3f
    ld b, a                                       ; $4be0: $47
    ld c, b                                       ; $4be1: $48
    ld d, c                                       ; $4be2: $51
    ld d, d                                       ; $4be3: $52
    ld e, l                                       ; $4be4: $5d
    ld h, a                                       ; $4be5: $67
    ld bc, $0101                                  ; $4be6: $01 $01 $01
    ld bc, $0101                                  ; $4be9: $01 $01 $01
    ld bc, $0101                                  ; $4bec: $01 $01 $01
    ld bc, $0101                                  ; $4bef: $01 $01 $01
    ld [bc], a                                    ; $4bf2: $02
    ld [bc], a                                    ; $4bf3: $02
    ld [bc], a                                    ; $4bf4: $02
    ld [bc], a                                    ; $4bf5: $02
    dec d                                         ; $4bf6: $15

jr_07e_4bf7:
    ld b, d                                       ; $4bf7: $42
    ld h, h                                       ; $4bf8: $64
    ld l, a                                       ; $4bf9: $6f
    ld b, l                                       ; $4bfa: $45
    xor c                                         ; $4bfb: $a9
    xor d                                         ; $4bfc: $aa
    ld [hl], c                                    ; $4bfd: $71
    ld c, c                                       ; $4bfe: $49
    ld c, d                                       ; $4bff: $4a
    ld h, [hl]                                    ; $4c00: $66
    ld [hl], e                                    ; $4c01: $73
    ld c, h                                       ; $4c02: $4c
    ld d, b                                       ; $4c03: $50
    ld d, c                                       ; $4c04: $51
    ld d, d                                       ; $4c05: $52
    ld bc, $0601                                  ; $4c06: $01 $01 $06
    ld bc, $0901                                  ; $4c09: $01 $01 $09
    ld c, $01                                     ; $4c0c: $0e $01
    ld bc, $0601                                  ; $4c0e: $01 $01 $06
    ld bc, $0202                                  ; $4c11: $01 $02 $02
    ld [bc], a                                    ; $4c14: $02
    ld [bc], a                                    ; $4c15: $02
    ld [hl], b                                    ; $4c16: $70
    inc [hl]                                      ; $4c17: $34
    dec [hl]                                      ; $4c18: $35
    ld [hl], $72                                  ; $4c19: $36 $72
    jr c, jr_07e_4c56                             ; $4c1b: $38 $39

    ld a, [hl-]                                   ; $4c1d: $3a
    inc sp                                        ; $4c1e: $33
    inc a                                         ; $4c1f: $3c
    dec a                                         ; $4c20: $3d
    ld a, $5d                                     ; $4c21: $3e $5d
    ld h, a                                       ; $4c23: $67
    ld c, h                                       ; $4c24: $4c
    ld d, b                                       ; $4c25: $50
    ld bc, $0101                                  ; $4c26: $01 $01 $01
    ld bc, $0101                                  ; $4c29: $01 $01 $01
    ld bc, $0101                                  ; $4c2c: $01 $01 $01
    ld bc, $0101                                  ; $4c2f: $01 $01 $01
    ld [bc], a                                    ; $4c32: $02
    ld [bc], a                                    ; $4c33: $02
    ld [bc], a                                    ; $4c34: $02
    ld [bc], a                                    ; $4c35: $02
    ld [de], a                                    ; $4c36: $12
    inc de                                        ; $4c37: $13
    inc d                                         ; $4c38: $14
    push bc                                       ; $4c39: $c5
    dec d                                         ; $4c3a: $15
    ld d, $c8                                     ; $4c3b: $16 $c8
    ret                                           ; $4c3d: $c9


    cp a                                          ; $4c3e: $bf
    ret nz                                        ; $4c3f: $c0

    call z, $c2cd                                 ; $4c40: $cc $cd $c2
    jp $d1d0                                      ; $4c43: $c3 $d0 $d1


    adc e                                         ; $4c46: $8b
    adc e                                         ; $4c47: $8b
    adc e                                         ; $4c48: $8b
    adc e                                         ; $4c49: $8b
    adc e                                         ; $4c4a: $8b
    adc e                                         ; $4c4b: $8b
    adc e                                         ; $4c4c: $8b
    adc e                                         ; $4c4d: $8b
    adc e                                         ; $4c4e: $8b
    adc e                                         ; $4c4f: $8b
    adc e                                         ; $4c50: $8b
    adc l                                         ; $4c51: $8d
    adc e                                         ; $4c52: $8b
    adc e                                         ; $4c53: $8b
    adc e                                         ; $4c54: $8b
    adc e                                         ; $4c55: $8b

jr_07e_4c56:
    add $c7                                       ; $4c56: $c6 $c7
    call nc, $cad5                                ; $4c58: $d4 $d5 $ca
    set 3, b                                      ; $4c5b: $cb $d8
    reti                                          ; $4c5d: $d9


    adc $cf                                       ; $4c5e: $ce $cf
    call c, $d2dd                                 ; $4c60: $dc $dd $d2
    db $d3                                        ; $4c63: $d3
    ldh [$e1], a                                  ; $4c64: $e0 $e1
    adc e                                         ; $4c66: $8b
    adc e                                         ; $4c67: $8b
    adc e                                         ; $4c68: $8b
    adc e                                         ; $4c69: $8b
    adc e                                         ; $4c6a: $8b
    adc e                                         ; $4c6b: $8b
    adc e                                         ; $4c6c: $8b
    adc e                                         ; $4c6d: $8b
    adc l                                         ; $4c6e: $8d
    adc e                                         ; $4c6f: $8b
    adc e                                         ; $4c70: $8b
    adc e                                         ; $4c71: $8b
    adc e                                         ; $4c72: $8b
    adc e                                         ; $4c73: $8b
    adc e                                         ; $4c74: $8b
    adc e                                         ; $4c75: $8b
    sub $d7                                       ; $4c76: $d6 $d7
    ld [de], a                                    ; $4c78: $12
    inc de                                        ; $4c79: $13
    jp c, $15db                                   ; $4c7a: $da $db $15

    ld d, $de                                     ; $4c7d: $16 $de
    rst $18                                       ; $4c7f: $df
    cp a                                          ; $4c80: $bf
    ret nz                                        ; $4c81: $c0

    ld [c], a                                     ; $4c82: $e2
    pop bc                                        ; $4c83: $c1
    jp nz, $8bc3                                  ; $4c84: $c2 $c3 $8b

    adc e                                         ; $4c87: $8b
    adc e                                         ; $4c88: $8b
    adc e                                         ; $4c89: $8b
    adc e                                         ; $4c8a: $8b
    adc e                                         ; $4c8b: $8b
    adc e                                         ; $4c8c: $8b
    adc e                                         ; $4c8d: $8b
    adc e                                         ; $4c8e: $8b
    adc e                                         ; $4c8f: $8b
    adc e                                         ; $4c90: $8b
    adc e                                         ; $4c91: $8b
    adc l                                         ; $4c92: $8d
    adc e                                         ; $4c93: $8b
    adc e                                         ; $4c94: $8b
    adc e                                         ; $4c95: $8b
    inc d                                         ; $4c96: $14
    rla                                           ; $4c97: $17
    ld e, [hl]                                    ; $4c98: $5e
    ld c, [hl]                                    ; $4c99: $4e
    ret z                                         ; $4c9a: $c8

    jr jr_07e_4cb6                                ; $4c9b: $18 $19

    ld e, e                                       ; $4c9d: $5b
    call z, Call_07e_5e1a                         ; $4c9e: $cc $1a $5e
    ld c, [hl]                                    ; $4ca1: $4e
    ret nc                                        ; $4ca2: $d0

    rla                                           ; $4ca3: $17
    ld e, [hl]                                    ; $4ca4: $5e
    and l                                         ; $4ca5: $a5
    adc e                                         ; $4ca6: $8b
    adc e                                         ; $4ca7: $8b
    add e                                         ; $4ca8: $83
    ld [bc], a                                    ; $4ca9: $02
    adc e                                         ; $4caa: $8b
    adc e                                         ; $4cab: $8b
    adc e                                         ; $4cac: $8b
    ld [bc], a                                    ; $4cad: $02
    adc l                                         ; $4cae: $8d
    adc e                                         ; $4caf: $8b
    db $e3                                        ; $4cb0: $e3
    inc b                                         ; $4cb1: $04
    adc l                                         ; $4cb2: $8d
    adc e                                         ; $4cb3: $8b
    add e                                         ; $4cb4: $83
    inc c                                         ; $4cb5: $0c

jr_07e_4cb6:
    jp hl                                         ; $4cb6: $e9


    ld [$f8f7], a                                 ; $4cb7: $ea $f7 $f8
    db $ed                                        ; $4cba: $ed
    xor $fb                                       ; $4cbb: $ee $fb
    db $fc                                        ; $4cbd: $fc
    pop af                                        ; $4cbe: $f1
    ld a, [c]                                     ; $4cbf: $f2
    rst $38                                       ; $4cc0: $ff
    nop                                           ; $4cc1: $00
    push af                                       ; $4cc2: $f5
    or $03                                        ; $4cc3: $f6 $03
    pop de                                        ; $4cc5: $d1
    adc e                                         ; $4cc6: $8b
    adc e                                         ; $4cc7: $8b
    adc l                                         ; $4cc8: $8d
    adc e                                         ; $4cc9: $8b
    adc l                                         ; $4cca: $8d
    adc e                                         ; $4ccb: $8b
    adc e                                         ; $4ccc: $8b
    adc e                                         ; $4ccd: $8b
    adc e                                         ; $4cce: $8b
    adc e                                         ; $4ccf: $8b
    adc e                                         ; $4cd0: $8b
    adc e                                         ; $4cd1: $8b
    adc e                                         ; $4cd2: $8b
    adc l                                         ; $4cd3: $8d
    adc l                                         ; $4cd4: $8d
    add l                                         ; $4cd5: $85
    ld sp, hl                                     ; $4cd6: $f9
    ld a, [$0605]                                 ; $4cd7: $fa $05 $06
    db $fd                                        ; $4cda: $fd
    cp $08                                        ; $4cdb: $fe $08
    add hl, bc                                    ; $4cdd: $09
    ld bc, $0b02                                  ; $4cde: $01 $02 $0b
    inc c                                         ; $4ce1: $0c
    inc b                                         ; $4ce2: $04
    inc d                                         ; $4ce3: $14
    ld c, $0f                                     ; $4ce4: $0e $0f
    adc e                                         ; $4ce6: $8b
    adc e                                         ; $4ce7: $8b
    adc l                                         ; $4ce8: $8d
    adc e                                         ; $4ce9: $8b
    adc l                                         ; $4cea: $8d
    adc l                                         ; $4ceb: $8d
    adc l                                         ; $4cec: $8d
    adc l                                         ; $4ced: $8d
    adc l                                         ; $4cee: $8d
    adc e                                         ; $4cef: $8b
    adc e                                         ; $4cf0: $8b
    adc e                                         ; $4cf1: $8b
    adc e                                         ; $4cf2: $8b
    add e                                         ; $4cf3: $83
    adc e                                         ; $4cf4: $8b
    adc e                                         ; $4cf5: $8b
    rlca                                          ; $4cf6: $07
    add sp, -$17                                  ; $4cf7: $e8 $e9
    ld [$ec0a], a                                 ; $4cf9: $ea $0a $ec
    db $ed                                        ; $4cfc: $ed
    xor $0d                                       ; $4cfd: $ee $0d
    ldh a, [$f1]                                  ; $4cff: $f0 $f1
    ld a, [c]                                     ; $4d01: $f2
    di                                            ; $4d02: $f3
    db $f4                                        ; $4d03: $f4
    push af                                       ; $4d04: $f5
    or $8d                                        ; $4d05: $f6 $8d
    adc e                                         ; $4d07: $8b
    adc l                                         ; $4d08: $8d
    adc l                                         ; $4d09: $8d
    adc e                                         ; $4d0a: $8b
    adc e                                         ; $4d0b: $8b
    adc e                                         ; $4d0c: $8b
    adc l                                         ; $4d0d: $8d
    adc e                                         ; $4d0e: $8b
    adc l                                         ; $4d0f: $8d
    adc e                                         ; $4d10: $8b
    adc l                                         ; $4d11: $8d
    adc e                                         ; $4d12: $8b
    adc l                                         ; $4d13: $8d
    adc l                                         ; $4d14: $8d
    adc l                                         ; $4d15: $8d
    rst $30                                       ; $4d16: $f7
    dec de                                        ; $4d17: $1b
    ld c, [hl]                                    ; $4d18: $4e
    sub c                                         ; $4d19: $91
    inc e                                         ; $4d1a: $1c
    ld a, c                                       ; $4d1b: $79
    ld a, d                                       ; $4d1c: $7a
    sub h                                         ; $4d1d: $94
    dec e                                         ; $4d1e: $1d
    ld e, $7c                                     ; $4d1f: $1e $7c
    ld h, c                                       ; $4d21: $61
    rra                                           ; $4d22: $1f
    adc e                                         ; $4d23: $8b
    adc h                                         ; $4d24: $8c
    ld e, e                                       ; $4d25: $5b
    adc e                                         ; $4d26: $8b
    adc e                                         ; $4d27: $8b
    ld [bc], a                                    ; $4d28: $02
    inc c                                         ; $4d29: $0c
    adc l                                         ; $4d2a: $8d
    and e                                         ; $4d2b: $a3
    and e                                         ; $4d2c: $a3
    ld a, [bc]                                    ; $4d2d: $0a
    adc l                                         ; $4d2e: $8d
    adc e                                         ; $4d2f: $8b
    and e                                         ; $4d30: $a3
    ld [bc], a                                    ; $4d31: $02
    adc e                                         ; $4d32: $8b
    xor e                                         ; $4d33: $ab
    xor e                                         ; $4d34: $ab
    ld [bc], a                                    ; $4d35: $02
    db $10                                        ; $4d36: $10
    ld de, $d1d1                                  ; $4d37: $11 $d1 $d1
    pop de                                        ; $4d3a: $d1
    pop de                                        ; $4d3b: $d1
    pop de                                        ; $4d3c: $d1
    pop de                                        ; $4d3d: $d1
    pop de                                        ; $4d3e: $d1
    pop de                                        ; $4d3f: $d1
    pop de                                        ; $4d40: $d1
    pop de                                        ; $4d41: $d1
    pop de                                        ; $4d42: $d1
    pop de                                        ; $4d43: $d1
    pop de                                        ; $4d44: $d1
    pop de                                        ; $4d45: $d1
    adc e                                         ; $4d46: $8b
    adc l                                         ; $4d47: $8d
    add e                                         ; $4d48: $83
    add e                                         ; $4d49: $83
    add c                                         ; $4d4a: $81
    add c                                         ; $4d4b: $81
    add c                                         ; $4d4c: $81
    add c                                         ; $4d4d: $81
    ld bc, $0101                                  ; $4d4e: $01 $01 $01
    ld bc, $0101                                  ; $4d51: $01 $01 $01
    ld bc, $d101                                  ; $4d54: $01 $01 $d1
    pop de                                        ; $4d57: $d1
    pop de                                        ; $4d58: $d1
    pop de                                        ; $4d59: $d1
    pop de                                        ; $4d5a: $d1
    pop de                                        ; $4d5b: $d1
    pop de                                        ; $4d5c: $d1
    pop de                                        ; $4d5d: $d1
    pop de                                        ; $4d5e: $d1
    pop de                                        ; $4d5f: $d1
    pop de                                        ; $4d60: $d1
    pop de                                        ; $4d61: $d1
    pop de                                        ; $4d62: $d1
    pop de                                        ; $4d63: $d1
    pop de                                        ; $4d64: $d1
    pop de                                        ; $4d65: $d1
    add e                                         ; $4d66: $83
    add e                                         ; $4d67: $83
    add e                                         ; $4d68: $83
    add e                                         ; $4d69: $83
    add c                                         ; $4d6a: $81
    add c                                         ; $4d6b: $81
    add c                                         ; $4d6c: $81
    add c                                         ; $4d6d: $81
    ld bc, $0101                                  ; $4d6e: $01 $01 $01
    ld bc, $0101                                  ; $4d71: $01 $01 $01
    ld bc, $d101                                  ; $4d74: $01 $01 $d1
    rst $10                                       ; $4d77: $d7
    db $10                                        ; $4d78: $10
    ld de, $d1d1                                  ; $4d79: $11 $d1 $d1
    pop de                                        ; $4d7c: $d1
    pop de                                        ; $4d7d: $d1
    pop de                                        ; $4d7e: $d1
    pop de                                        ; $4d7f: $d1
    pop de                                        ; $4d80: $d1
    pop de                                        ; $4d81: $d1
    pop de                                        ; $4d82: $d1
    pop de                                        ; $4d83: $d1
    pop de                                        ; $4d84: $d1
    pop de                                        ; $4d85: $d1
    add e                                         ; $4d86: $83
    add e                                         ; $4d87: $83
    adc l                                         ; $4d88: $8d
    adc l                                         ; $4d89: $8d
    add c                                         ; $4d8a: $81
    add c                                         ; $4d8b: $81
    add c                                         ; $4d8c: $81
    add c                                         ; $4d8d: $81
    ld bc, $0101                                  ; $4d8e: $01 $01 $01
    ld bc, $0101                                  ; $4d91: $01 $01 $01
    ld bc, $d101                                  ; $4d94: $01 $01 $d1
    adc l                                         ; $4d97: $8d
    adc [hl]                                      ; $4d98: $8e
    ld c, [hl]                                    ; $4d99: $4e
    pop de                                        ; $4d9a: $d1
    adc a                                         ; $4d9b: $8f
    sub b                                         ; $4d9c: $90
    ld c, [hl]                                    ; $4d9d: $4e
    pop de                                        ; $4d9e: $d1
    ld l, l                                       ; $4d9f: $6d
    ld l, [hl]                                    ; $4da0: $6e
    ld e, e                                       ; $4da1: $5b
    pop de                                        ; $4da2: $d1
    ld l, l                                       ; $4da3: $6d
    jr nz, @+$23                                  ; $4da4: $20 $21

    add e                                         ; $4da6: $83
    xor l                                         ; $4da7: $ad
    xor e                                         ; $4da8: $ab
    ld [bc], a                                    ; $4da9: $02
    add c                                         ; $4daa: $81
    xor l                                         ; $4dab: $ad
    xor e                                         ; $4dac: $ab
    ld [bc], a                                    ; $4dad: $02
    ld bc, $a385                                  ; $4dae: $01 $85 $a3
    ld [bc], a                                    ; $4db1: $02
    ld bc, $8b83                                  ; $4db2: $01 $83 $8b
    adc e                                         ; $4db5: $8b
    scf                                           ; $4db6: $37
    ld b, b                                       ; $4db7: $40
    ld b, c                                       ; $4db8: $41
    dec d                                         ; $4db9: $15
    dec sp                                        ; $4dba: $3b
    ld b, e                                       ; $4dbb: $43
    ld b, h                                       ; $4dbc: $44
    ld b, l                                       ; $4dbd: $45
    ccf                                           ; $4dbe: $3f
    ld b, a                                       ; $4dbf: $47
    ld c, b                                       ; $4dc0: $48
    ld c, c                                       ; $4dc1: $49
    ld d, c                                       ; $4dc2: $51
    ld d, d                                       ; $4dc3: $52
    ld e, l                                       ; $4dc4: $5d
    or [hl]                                       ; $4dc5: $b6
    ld bc, $0601                                  ; $4dc6: $01 $01 $06
    ld bc, $0101                                  ; $4dc9: $01 $01 $01
    ld b, $01                                     ; $4dcc: $06 $01
    ld bc, $0101                                  ; $4dce: $01 $01 $01
    ld bc, $0202                                  ; $4dd1: $01 $02 $02
    ld [bc], a                                    ; $4dd4: $02
    ld a, [bc]                                    ; $4dd5: $0a
    ld b, d                                       ; $4dd6: $42
    ld h, h                                       ; $4dd7: $64
    pop de                                        ; $4dd8: $d1
    pop de                                        ; $4dd9: $d1
    xor c                                         ; $4dda: $a9
    xor d                                         ; $4ddb: $aa
    pop de                                        ; $4ddc: $d1
    pop de                                        ; $4ddd: $d1
    ld c, d                                       ; $4dde: $4a
    ld h, [hl]                                    ; $4ddf: $66
    pop de                                        ; $4de0: $d1
    pop de                                        ; $4de1: $d1
    ld a, d                                       ; $4de2: $7a
    ld a, c                                       ; $4de3: $79
    pop de                                        ; $4de4: $d1
    pop de                                        ; $4de5: $d1
    ld bc, $0101                                  ; $4de6: $01 $01 $01
    ld bc, $0909                                  ; $4de9: $01 $09 $09
    ld bc, $0101                                  ; $4dec: $01 $01 $01
    ld bc, $0101                                  ; $4def: $01 $01 $01
    add e                                         ; $4df2: $83
    add l                                         ; $4df3: $85
    add c                                         ; $4df4: $81
    add c                                         ; $4df5: $81
    ld d, [hl]                                    ; $4df6: $56
    ld d, a                                       ; $4df7: $57
    ld c, [hl]                                    ; $4df8: $4e
    ld d, [hl]                                    ; $4df9: $56
    ld e, d                                       ; $4dfa: $5a
    ld h, e                                       ; $4dfb: $63
    add b                                         ; $4dfc: $80
    or c                                          ; $4dfd: $b1
    xor e                                         ; $4dfe: $ab
    ld a, l                                       ; $4dff: $7d
    ld c, [hl]                                    ; $4e00: $4e
    add h                                         ; $4e01: $84
    ld a, [hl]                                    ; $4e02: $7e
    ld e, e                                       ; $4e03: $5b
    ld c, [hl]                                    ; $4e04: $4e
    ld d, [hl]                                    ; $4e05: $56
    ld [bc], a                                    ; $4e06: $02
    inc b                                         ; $4e07: $04
    ld [bc], a                                    ; $4e08: $02
    ld [bc], a                                    ; $4e09: $02
    inc b                                         ; $4e0a: $04
    ld [bc], a                                    ; $4e0b: $02
    ld a, [bc]                                    ; $4e0c: $0a
    ld a, [bc]                                    ; $4e0d: $0a
    inc c                                         ; $4e0e: $0c
    ld [bc], a                                    ; $4e0f: $02
    inc b                                         ; $4e10: $04
    ld a, [bc]                                    ; $4e11: $0a
    ld [bc], a                                    ; $4e12: $02
    ld [bc], a                                    ; $4e13: $02
    inc b                                         ; $4e14: $04
    ld [bc], a                                    ; $4e15: $02
    ld a, h                                       ; $4e16: $7c
    ld a, e                                       ; $4e17: $7b
    pop de                                        ; $4e18: $d1
    pop de                                        ; $4e19: $d1
    adc h                                         ; $4e1a: $8c
    adc e                                         ; $4e1b: $8b
    pop de                                        ; $4e1c: $d1
    pop de                                        ; $4e1d: $d1
    adc [hl]                                      ; $4e1e: $8e
    adc l                                         ; $4e1f: $8d
    pop de                                        ; $4e20: $d1
    pop de                                        ; $4e21: $d1
    sub b                                         ; $4e22: $90
    adc a                                         ; $4e23: $8f
    pop de                                        ; $4e24: $d1
    pop de                                        ; $4e25: $d1
    add e                                         ; $4e26: $83
    add l                                         ; $4e27: $85
    add c                                         ; $4e28: $81
    add c                                         ; $4e29: $81
    adc e                                         ; $4e2a: $8b
    adc e                                         ; $4e2b: $8b
    add c                                         ; $4e2c: $81
    add c                                         ; $4e2d: $81
    adc l                                         ; $4e2e: $8d
    adc e                                         ; $4e2f: $8b
    add c                                         ; $4e30: $81
    add c                                         ; $4e31: $81
    adc l                                         ; $4e32: $8d
    adc e                                         ; $4e33: $8b
    add c                                         ; $4e34: $81
    add c                                         ; $4e35: $81
    or c                                          ; $4e36: $b1
    ld c, [hl]                                    ; $4e37: $4e
    and [hl]                                      ; $4e38: $a6
    or c                                          ; $4e39: $b1
    ld d, e                                       ; $4e3a: $53
    xor l                                         ; $4e3b: $ad
    ld d, h                                       ; $4e3c: $54
    ld d, e                                       ; $4e3d: $53
    ld d, [hl]                                    ; $4e3e: $56
    ld d, a                                       ; $4e3f: $57
    ld e, b                                       ; $4e40: $58
    ld e, c                                       ; $4e41: $59
    ld e, d                                       ; $4e42: $5a
    ld h, e                                       ; $4e43: $63
    add b                                         ; $4e44: $80
    ld e, h                                       ; $4e45: $5c
    inc c                                         ; $4e46: $0c
    inc b                                         ; $4e47: $04
    inc c                                         ; $4e48: $0c
    inc c                                         ; $4e49: $0c
    ld [bc], a                                    ; $4e4a: $02
    inc c                                         ; $4e4b: $0c
    inc b                                         ; $4e4c: $04
    ld [bc], a                                    ; $4e4d: $02
    ld [bc], a                                    ; $4e4e: $02
    inc b                                         ; $4e4f: $04
    inc b                                         ; $4e50: $04
    ld [bc], a                                    ; $4e51: $02
    inc b                                         ; $4e52: $04
    ld [bc], a                                    ; $4e53: $02
    inc c                                         ; $4e54: $0c
    ld [bc], a                                    ; $4e55: $02
    ld l, [hl]                                    ; $4e56: $6e
    ld l, l                                       ; $4e57: $6d
    pop de                                        ; $4e58: $d1
    pop de                                        ; $4e59: $d1
    halt                                          ; $4e5a: $76
    ld [hl], l                                    ; $4e5b: $75
    pop de                                        ; $4e5c: $d1
    pop de                                        ; $4e5d: $d1
    ld a, b                                       ; $4e5e: $78
    ld [hl], a                                    ; $4e5f: $77
    pop de                                        ; $4e60: $d1
    pop de                                        ; $4e61: $d1
    ld c, [hl]                                    ; $4e62: $4e
    ld [hl+], a                                   ; $4e63: $22
    pop de                                        ; $4e64: $d1
    pop de                                        ; $4e65: $d1
    add l                                         ; $4e66: $85
    and e                                         ; $4e67: $a3
    add c                                         ; $4e68: $81
    add c                                         ; $4e69: $81
    and l                                         ; $4e6a: $a5
    and e                                         ; $4e6b: $a3
    add c                                         ; $4e6c: $81
    add c                                         ; $4e6d: $81

jr_07e_4e6e:
    and l                                         ; $4e6e: $a5
    and l                                         ; $4e6f: $a5
    add c                                         ; $4e70: $81
    add c                                         ; $4e71: $81
    ld [bc], a                                    ; $4e72: $02
    adc e                                         ; $4e73: $8b
    add c                                         ; $4e74: $81
    add c                                         ; $4e75: $81
    xor e                                         ; $4e76: $ab
    ld c, [hl]                                    ; $4e77: $4e
    ld c, [hl]                                    ; $4e78: $4e
    add h                                         ; $4e79: $84
    ld a, [hl]                                    ; $4e7a: $7e
    xor [hl]                                      ; $4e7b: $ae
    and e                                         ; $4e7c: $a3
    and h                                         ; $4e7d: $a4
    xor a                                         ; $4e7e: $af
    or b                                          ; $4e7f: $b0
    and [hl]                                      ; $4e80: $a6
    and a                                         ; $4e81: $a7
    inc hl                                        ; $4e82: $23
    inc h                                         ; $4e83: $24
    dec h                                         ; $4e84: $25
    ld h, $0c                                     ; $4e85: $26 $0c
    ld h, d                                       ; $4e87: $62
    ld [bc], a                                    ; $4e88: $02
    ld a, [bc]                                    ; $4e89: $0a
    inc b                                         ; $4e8a: $04
    ld a, [bc]                                    ; $4e8b: $0a
    ld a, [bc]                                    ; $4e8c: $0a
    ld a, [bc]                                    ; $4e8d: $0a
    inc c                                         ; $4e8e: $0c
    inc c                                         ; $4e8f: $0c
    inc c                                         ; $4e90: $0c
    ld a, [bc]                                    ; $4e91: $0a
    adc e                                         ; $4e92: $8b
    adc l                                         ; $4e93: $8d
    adc l                                         ; $4e94: $8d
    adc l                                         ; $4e95: $8d
    ld c, [hl]                                    ; $4e96: $4e
    daa                                           ; $4e97: $27
    pop de                                        ; $4e98: $d1
    pop de                                        ; $4e99: $d1
    ld e, e                                       ; $4e9a: $5b
    jr z, jr_07e_4e6e                             ; $4e9b: $28 $d1

    pop de                                        ; $4e9d: $d1
    ld c, [hl]                                    ; $4e9e: $4e
    add hl, hl                                    ; $4e9f: $29
    pop de                                        ; $4ea0: $d1
    pop de                                        ; $4ea1: $d1
    ld a, [hl+]                                   ; $4ea2: $2a
    dec hl                                        ; $4ea3: $2b
    pop de                                        ; $4ea4: $d1
    pop de                                        ; $4ea5: $d1
    ld h, d                                       ; $4ea6: $62
    adc e                                         ; $4ea7: $8b
    add c                                         ; $4ea8: $81
    add c                                         ; $4ea9: $81
    ld [bc], a                                    ; $4eaa: $02
    adc e                                         ; $4eab: $8b
    add c                                         ; $4eac: $81
    add c                                         ; $4ead: $81
    ld [bc], a                                    ; $4eae: $02
    adc e                                         ; $4eaf: $8b
    add c                                         ; $4eb0: $81
    add c                                         ; $4eb1: $81
    adc e                                         ; $4eb2: $8b
    adc e                                         ; $4eb3: $8b
    add c                                         ; $4eb4: $81
    add c                                         ; $4eb5: $81
    pop de                                        ; $4eb6: $d1
    pop de                                        ; $4eb7: $d1
    pop de                                        ; $4eb8: $d1
    pop de                                        ; $4eb9: $d1
    pop de                                        ; $4eba: $d1
    pop de                                        ; $4ebb: $d1
    pop de                                        ; $4ebc: $d1
    pop de                                        ; $4ebd: $d1
    ld de, $d212                                  ; $4ebe: $11 $12 $d2
    db $d3                                        ; $4ec1: $d3
    pop de                                        ; $4ec2: $d1
    inc de                                        ; $4ec3: $13
    jp nc, $01d8                                  ; $4ec4: $d2 $d8 $01

    ld bc, $0101                                  ; $4ec7: $01 $01 $01
    ld bc, $0101                                  ; $4eca: $01 $01 $01
    ld bc, $0101                                  ; $4ecd: $01 $01 $01
    ld bc, $0101                                  ; $4ed0: $01 $01 $01
    ld bc, $0641                                  ; $4ed3: $01 $41 $06
    pop de                                        ; $4ed6: $d1
    pop de                                        ; $4ed7: $d1
    pop de                                        ; $4ed8: $d1
    pop de                                        ; $4ed9: $d1
    pop de                                        ; $4eda: $d1
    pop de                                        ; $4edb: $d1
    pop de                                        ; $4edc: $d1
    pop de                                        ; $4edd: $d1
    pop de                                        ; $4ede: $d1
    call nc, $d5d1                                ; $4edf: $d4 $d1 $d5
    pop de                                        ; $4ee2: $d1
    reti                                          ; $4ee3: $d9


    pop de                                        ; $4ee4: $d1
    db $e4                                        ; $4ee5: $e4
    ld bc, $0101                                  ; $4ee6: $01 $01 $01
    ld bc, $0101                                  ; $4ee9: $01 $01 $01
    ld bc, $0101                                  ; $4eec: $01 $01 $01
    ld bc, $0101                                  ; $4eef: $01 $01 $01
    ld bc, $0106                                  ; $4ef2: $01 $06 $01
    ld bc, $d1d1                                  ; $4ef5: $01 $d1 $d1
    pop de                                        ; $4ef8: $d1
    pop de                                        ; $4ef9: $d1
    pop de                                        ; $4efa: $d1
    pop de                                        ; $4efb: $d1
    pop de                                        ; $4efc: $d1
    pop de                                        ; $4efd: $d1
    sub $d7                                       ; $4efe: $d6 $d7
    pop de                                        ; $4f00: $d1
    ld de, $e6e5                                  ; $4f01: $11 $e5 $e6
    pop de                                        ; $4f04: $d1
    pop de                                        ; $4f05: $d1
    ld bc, $0101                                  ; $4f06: $01 $01 $01
    ld bc, $0101                                  ; $4f09: $01 $01 $01
    ld bc, $2101                                  ; $4f0c: $01 $01 $21
    ld h, c                                       ; $4f0f: $61
    ld bc, $0101                                  ; $4f10: $01 $01 $01
    ld bc, $0101                                  ; $4f13: $01 $01 $01
    pop de                                        ; $4f16: $d1
    pop de                                        ; $4f17: $d1
    pop de                                        ; $4f18: $d1
    pop de                                        ; $4f19: $d1
    pop de                                        ; $4f1a: $d1
    pop de                                        ; $4f1b: $d1
    pop de                                        ; $4f1c: $d1
    pop de                                        ; $4f1d: $d1
    ld [de], a                                    ; $4f1e: $12
    jp nc, $d1d3                                  ; $4f1f: $d2 $d3 $d1

    inc de                                        ; $4f22: $13
    jp nc, $d1d8                                  ; $4f23: $d2 $d8 $d1

    ld bc, $0101                                  ; $4f26: $01 $01 $01
    ld bc, $0101                                  ; $4f29: $01 $01 $01
    ld bc, $0101                                  ; $4f2c: $01 $01 $01
    ld bc, $0101                                  ; $4f2f: $01 $01 $01
    ld b, $41                                     ; $4f32: $06 $41
    ld bc, $d101                                  ; $4f34: $01 $01 $d1
    pop de                                        ; $4f37: $d1
    ld [hl], l                                    ; $4f38: $75
    halt                                          ; $4f39: $76
    pop de                                        ; $4f3a: $d1
    pop de                                        ; $4f3b: $d1
    ld [hl], a                                    ; $4f3c: $77
    ld a, b                                       ; $4f3d: $78
    pop de                                        ; $4f3e: $d1
    pop de                                        ; $4f3f: $d1
    ld a, c                                       ; $4f40: $79
    ld a, d                                       ; $4f41: $7a
    pop de                                        ; $4f42: $d1
    pop de                                        ; $4f43: $d1
    ld a, e                                       ; $4f44: $7b
    ld a, h                                       ; $4f45: $7c
    ld bc, $8381                                  ; $4f46: $01 $81 $83
    add l                                         ; $4f49: $85
    ld bc, $8581                                  ; $4f4a: $01 $81 $85
    add l                                         ; $4f4d: $85
    ld bc, $a381                                  ; $4f4e: $01 $81 $a3
    and e                                         ; $4f51: $a3
    ld bc, $a381                                  ; $4f52: $01 $81 $a3
    and e                                         ; $4f55: $a3
    ld e, e                                       ; $4f56: $5b
    ld h, c                                       ; $4f57: $61
    and b                                         ; $4f58: $a0
    and c                                         ; $4f59: $a1
    ld c, [hl]                                    ; $4f5a: $4e
    add d                                         ; $4f5b: $82
    sub l                                         ; $4f5c: $95
    sub [hl]                                      ; $4f5d: $96
    ld c, [hl]                                    ; $4f5e: $4e
    add [hl]                                      ; $4f5f: $86
    sub a                                         ; $4f60: $97
    sbc b                                         ; $4f61: $98
    ld e, e                                       ; $4f62: $5b
    and l                                         ; $4f63: $a5
    sbc c                                         ; $4f64: $99
    sbc d                                         ; $4f65: $9a
    ld [bc], a                                    ; $4f66: $02
    ld [bc], a                                    ; $4f67: $02
    cpl                                           ; $4f68: $2f
    cpl                                           ; $4f69: $2f
    ld [bc], a                                    ; $4f6a: $02
    inc c                                         ; $4f6b: $0c
    cpl                                           ; $4f6c: $2f
    cpl                                           ; $4f6d: $2f
    ld h, h                                       ; $4f6e: $64
    inc c                                         ; $4f6f: $0c
    cpl                                           ; $4f70: $2f
    cpl                                           ; $4f71: $2f
    inc b                                         ; $4f72: $04
    ld a, [bc]                                    ; $4f73: $0a
    cpl                                           ; $4f74: $2f
    cpl                                           ; $4f75: $2f
    ld c, [hl]                                    ; $4f76: $4e
    ld e, c                                       ; $4f77: $59
    ld h, b                                       ; $4f78: $60
    ld h, c                                       ; $4f79: $61
    add b                                         ; $4f7a: $80
    ld e, h                                       ; $4f7b: $5c
    add c                                         ; $4f7c: $81
    add d                                         ; $4f7d: $82
    add e                                         ; $4f7e: $83
    add h                                         ; $4f7f: $84
    add l                                         ; $4f80: $85
    add [hl]                                      ; $4f81: $86
    and e                                         ; $4f82: $a3
    and h                                         ; $4f83: $a4
    and d                                         ; $4f84: $a2
    and l                                         ; $4f85: $a5
    rlca                                          ; $4f86: $07
    rlca                                          ; $4f87: $07
    rlca                                          ; $4f88: $07
    rlca                                          ; $4f89: $07
    rrca                                          ; $4f8a: $0f
    rlca                                          ; $4f8b: $07
    rrca                                          ; $4f8c: $0f
    rrca                                          ; $4f8d: $0f
    rrca                                          ; $4f8e: $0f
    rrca                                          ; $4f8f: $0f
    rrca                                          ; $4f90: $0f
    rrca                                          ; $4f91: $0f
    rrca                                          ; $4f92: $0f
    rrca                                          ; $4f93: $0f
    rrca                                          ; $4f94: $0f
    rrca                                          ; $4f95: $0f
    pop de                                        ; $4f96: $d1
    pop de                                        ; $4f97: $d1
    adc e                                         ; $4f98: $8b
    adc h                                         ; $4f99: $8c
    pop de                                        ; $4f9a: $d1
    pop de                                        ; $4f9b: $d1
    adc l                                         ; $4f9c: $8d
    adc [hl]                                      ; $4f9d: $8e
    pop de                                        ; $4f9e: $d1
    pop de                                        ; $4f9f: $d1
    adc a                                         ; $4fa0: $8f
    sub b                                         ; $4fa1: $90
    pop de                                        ; $4fa2: $d1
    pop de                                        ; $4fa3: $d1
    ld l, l                                       ; $4fa4: $6d
    ld l, [hl]                                    ; $4fa5: $6e
    ld bc, $ab81                                  ; $4fa6: $01 $81 $ab
    xor e                                         ; $4fa9: $ab
    ld bc, $ad81                                  ; $4faa: $01 $81 $ad
    xor e                                         ; $4fad: $ab
    ld bc, $ad81                                  ; $4fae: $01 $81 $ad
    xor e                                         ; $4fb1: $ab
    ld bc, $8381                                  ; $4fb2: $01 $81 $83
    and e                                         ; $4fb5: $a3
    ld c, [hl]                                    ; $4fb6: $4e
    sub c                                         ; $4fb7: $91
    and b                                         ; $4fb8: $a0
    and c                                         ; $4fb9: $a1
    sbc a                                         ; $4fba: $9f
    sub h                                         ; $4fbb: $94
    sub l                                         ; $4fbc: $95
    sub [hl]                                      ; $4fbd: $96
    ld h, b                                       ; $4fbe: $60
    ld h, c                                       ; $4fbf: $61
    sub a                                         ; $4fc0: $97
    sbc b                                         ; $4fc1: $98
    add c                                         ; $4fc2: $81
    ld e, e                                       ; $4fc3: $5b
    sub d                                         ; $4fc4: $92
    sub e                                         ; $4fc5: $93
    ld [bc], a                                    ; $4fc6: $02
    ld a, [bc]                                    ; $4fc7: $0a
    cpl                                           ; $4fc8: $2f
    cpl                                           ; $4fc9: $2f
    ld a, [bc]                                    ; $4fca: $0a
    ld a, [bc]                                    ; $4fcb: $0a
    cpl                                           ; $4fcc: $2f
    cpl                                           ; $4fcd: $2f
    inc b                                         ; $4fce: $04
    ld [bc], a                                    ; $4fcf: $02
    cpl                                           ; $4fd0: $2f
    cpl                                           ; $4fd1: $2f
    inc c                                         ; $4fd2: $0c
    ld [bc], a                                    ; $4fd3: $02
    ld c, a                                       ; $4fd4: $4f
    ld c, a                                       ; $4fd5: $4f
    and [hl]                                      ; $4fd6: $a6
    and a                                         ; $4fd7: $a7
    xor b                                         ; $4fd8: $a8
    sub c                                         ; $4fd9: $91
    ld d, h                                       ; $4fda: $54
    ld d, l                                       ; $4fdb: $55
    sbc a                                         ; $4fdc: $9f
    sub h                                         ; $4fdd: $94
    ld e, b                                       ; $4fde: $58
    ld e, c                                       ; $4fdf: $59
    ld h, b                                       ; $4fe0: $60
    ld h, c                                       ; $4fe1: $61
    sbc e                                         ; $4fe2: $9b
    sbc h                                         ; $4fe3: $9c
    sbc l                                         ; $4fe4: $9d
    sbc [hl]                                      ; $4fe5: $9e
    rrca                                          ; $4fe6: $0f
    rrca                                          ; $4fe7: $0f
    rrca                                          ; $4fe8: $0f
    rrca                                          ; $4fe9: $0f
    rlca                                          ; $4fea: $07
    rlca                                          ; $4feb: $07
    rrca                                          ; $4fec: $0f
    rrca                                          ; $4fed: $0f
    rlca                                          ; $4fee: $07
    rlca                                          ; $4fef: $07
    rlca                                          ; $4ff0: $07
    rlca                                          ; $4ff1: $07
    ld c, a                                       ; $4ff2: $4f
    ld c, a                                       ; $4ff3: $4f
    ld c, a                                       ; $4ff4: $4f
    ld c, a                                       ; $4ff5: $4f
    pop de                                        ; $4ff6: $d1
    pop de                                        ; $4ff7: $d1
    ld [hl], l                                    ; $4ff8: $75
    halt                                          ; $4ff9: $76
    pop de                                        ; $4ffa: $d1
    pop de                                        ; $4ffb: $d1
    ld [hl], a                                    ; $4ffc: $77
    ld a, b                                       ; $4ffd: $78
    pop de                                        ; $4ffe: $d1
    pop de                                        ; $4fff: $d1
    ld a, c                                       ; $5000: $79
    ld a, d                                       ; $5001: $7a
    pop de                                        ; $5002: $d1
    pop de                                        ; $5003: $d1
    ld a, e                                       ; $5004: $7b
    ld a, h                                       ; $5005: $7c
    ld bc, $8581                                  ; $5006: $01 $81 $85
    add e                                         ; $5009: $83
    ld bc, $8581                                  ; $500a: $01 $81 $85
    add e                                         ; $500d: $83
    ld bc, $a581                                  ; $500e: $01 $81 $a5
    and e                                         ; $5011: $a3
    ld bc, $a581                                  ; $5012: $01 $81 $a5
    and e                                         ; $5015: $a3
    add l                                         ; $5016: $85
    add [hl]                                      ; $5017: $86
    ld a, [hl]                                    ; $5018: $7e
    ld a, a                                       ; $5019: $7f
    ld e, e                                       ; $501a: $5b
    and l                                         ; $501b: $a5
    ld a, [hl]                                    ; $501c: $7e
    xor [hl]                                      ; $501d: $ae
    ld c, [hl]                                    ; $501e: $4e
    sub c                                         ; $501f: $91
    xor a                                         ; $5020: $af
    or b                                          ; $5021: $b0
    ld c, [hl]                                    ; $5022: $4e
    sub h                                         ; $5023: $94
    xor h                                         ; $5024: $ac
    xor l                                         ; $5025: $ad
    inc c                                         ; $5026: $0c
    ld a, [bc]                                    ; $5027: $0a
    ld b, d                                       ; $5028: $42
    ld b, a                                       ; $5029: $47
    inc b                                         ; $502a: $04
    inc c                                         ; $502b: $0c
    inc b                                         ; $502c: $04
    ld a, [bc]                                    ; $502d: $0a
    ld [bc], a                                    ; $502e: $02
    ld a, [bc]                                    ; $502f: $0a
    inc c                                         ; $5030: $0c
    inc c                                         ; $5031: $0c
    ld h, d                                       ; $5032: $62
    ld a, [bc]                                    ; $5033: $0a
    ld a, [bc]                                    ; $5034: $0a
    inc c                                         ; $5035: $0c
    add a                                         ; $5036: $87
    adc b                                         ; $5037: $88
    adc c                                         ; $5038: $89
    adc d                                         ; $5039: $8a
    and e                                         ; $503a: $a3
    and h                                         ; $503b: $a4
    and d                                         ; $503c: $a2
    and l                                         ; $503d: $a5
    and [hl]                                      ; $503e: $a6
    and a                                         ; $503f: $a7
    xor b                                         ; $5040: $a8
    sub c                                         ; $5041: $91
    ld d, h                                       ; $5042: $54
    ld d, l                                       ; $5043: $55
    sbc a                                         ; $5044: $9f
    sub h                                         ; $5045: $94
    ld c, a                                       ; $5046: $4f
    ld c, a                                       ; $5047: $4f
    ld c, a                                       ; $5048: $4f
    ld c, a                                       ; $5049: $4f
    inc c                                         ; $504a: $0c
    inc c                                         ; $504b: $0c
    inc c                                         ; $504c: $0c
    inc c                                         ; $504d: $0c
    inc c                                         ; $504e: $0c
    inc c                                         ; $504f: $0c
    ld a, [bc]                                    ; $5050: $0a
    inc c                                         ; $5051: $0c
    inc b                                         ; $5052: $04
    ld [bc], a                                    ; $5053: $02
    ld a, [bc]                                    ; $5054: $0a
    inc c                                         ; $5055: $0c
    pop de                                        ; $5056: $d1
    pop de                                        ; $5057: $d1
    pop de                                        ; $5058: $d1
    pop de                                        ; $5059: $d1
    pop de                                        ; $505a: $d1
    pop de                                        ; $505b: $d1
    pop de                                        ; $505c: $d1
    pop de                                        ; $505d: $d1
    call nc, $d5d1                                ; $505e: $d4 $d1 $d5
    sub $d9                                       ; $5061: $d6 $d9
    pop de                                        ; $5063: $d1
    db $e4                                        ; $5064: $e4
    push hl                                       ; $5065: $e5
    ld bc, $0101                                  ; $5066: $01 $01 $01
    ld bc, $0101                                  ; $5069: $01 $01 $01
    ld bc, $0101                                  ; $506c: $01 $01 $01
    ld bc, $2101                                  ; $506f: $01 $01 $21
    ld bc, $0101                                  ; $5072: $01 $01 $01
    ld bc, $d1d1                                  ; $5075: $01 $d1 $d1
    adc e                                         ; $5078: $8b
    adc h                                         ; $5079: $8c
    pop de                                        ; $507a: $d1
    pop de                                        ; $507b: $d1
    adc l                                         ; $507c: $8d
    adc [hl]                                      ; $507d: $8e
    rst $10                                       ; $507e: $d7
    pop de                                        ; $507f: $d1
    adc a                                         ; $5080: $8f
    sub b                                         ; $5081: $90
    and $d1                                       ; $5082: $e6 $d1
    ld l, l                                       ; $5084: $6d
    ld l, [hl]                                    ; $5085: $6e
    ld bc, $ab81                                  ; $5086: $01 $81 $ab
    xor e                                         ; $5089: $ab
    ld bc, $ab81                                  ; $508a: $01 $81 $ab
    xor e                                         ; $508d: $ab
    ld h, c                                       ; $508e: $61
    add c                                         ; $508f: $81
    xor e                                         ; $5090: $ab
    xor l                                         ; $5091: $ad
    ld b, $81                                     ; $5092: $06 $81
    add l                                         ; $5094: $85
    and l                                         ; $5095: $a5
    ld e, e                                       ; $5096: $5b
    ld h, c                                       ; $5097: $61
    ld h, d                                       ; $5098: $62
    ld d, a                                       ; $5099: $57
    ld c, [hl]                                    ; $509a: $4e
    add d                                         ; $509b: $82
    ld e, d                                       ; $509c: $5a
    ld h, e                                       ; $509d: $63
    add l                                         ; $509e: $85
    add [hl]                                      ; $509f: $86
    xor e                                         ; $50a0: $ab
    ld a, l                                       ; $50a1: $7d
    and d                                         ; $50a2: $a2
    and l                                         ; $50a3: $a5
    ld a, [hl]                                    ; $50a4: $7e
    xor [hl]                                      ; $50a5: $ae
    ld [bc], a                                    ; $50a6: $02
    ld [bc], a                                    ; $50a7: $02
    ld [bc], a                                    ; $50a8: $02
    inc b                                         ; $50a9: $04
    ld [bc], a                                    ; $50aa: $02
    inc c                                         ; $50ab: $0c
    inc b                                         ; $50ac: $04
    ld [bc], a                                    ; $50ad: $02
    ld a, [bc]                                    ; $50ae: $0a
    inc c                                         ; $50af: $0c
    ld a, [bc]                                    ; $50b0: $0a
    ld [bc], a                                    ; $50b1: $02
    ld a, [bc]                                    ; $50b2: $0a
    inc c                                         ; $50b3: $0c
    inc b                                         ; $50b4: $04
    inc c                                         ; $50b5: $0c
    ld e, b                                       ; $50b6: $58
    ld e, c                                       ; $50b7: $59
    ld e, e                                       ; $50b8: $5b
    ld c, [hl]                                    ; $50b9: $4e
    add b                                         ; $50ba: $80
    ld e, h                                       ; $50bb: $5c
    add c                                         ; $50bc: $81
    add d                                         ; $50bd: $82
    add e                                         ; $50be: $83
    add h                                         ; $50bf: $84
    add l                                         ; $50c0: $85
    add [hl]                                      ; $50c1: $86
    and e                                         ; $50c2: $a3
    and h                                         ; $50c3: $a4
    and d                                         ; $50c4: $a2
    and l                                         ; $50c5: $a5
    inc b                                         ; $50c6: $04
    ld [bc], a                                    ; $50c7: $02
    ld [bc], a                                    ; $50c8: $02
    ld [bc], a                                    ; $50c9: $02
    ld a, [bc]                                    ; $50ca: $0a
    ld [bc], a                                    ; $50cb: $02
    inc c                                         ; $50cc: $0c
    ld a, [bc]                                    ; $50cd: $0a
    ld a, [bc]                                    ; $50ce: $0a
    ld a, [bc]                                    ; $50cf: $0a
    ld a, [bc]                                    ; $50d0: $0a
    ld a, [bc]                                    ; $50d1: $0a
    inc c                                         ; $50d2: $0c
    ld a, [bc]                                    ; $50d3: $0a
    inc c                                         ; $50d4: $0c
    inc c                                         ; $50d5: $0c
    ld h, d                                       ; $50d6: $62
    ld d, a                                       ; $50d7: $57
    ld e, b                                       ; $50d8: $58
    ld e, c                                       ; $50d9: $59
    ld e, d                                       ; $50da: $5a
    ld h, e                                       ; $50db: $63
    add b                                         ; $50dc: $80
    ld e, h                                       ; $50dd: $5c
    xor e                                         ; $50de: $ab
    ld a, l                                       ; $50df: $7d
    add e                                         ; $50e0: $83
    add h                                         ; $50e1: $84
    ld a, [hl]                                    ; $50e2: $7e
    xor [hl]                                      ; $50e3: $ae
    and e                                         ; $50e4: $a3
    and h                                         ; $50e5: $a4
    rlca                                          ; $50e6: $07
    rlca                                          ; $50e7: $07
    rlca                                          ; $50e8: $07
    rlca                                          ; $50e9: $07
    rlca                                          ; $50ea: $07
    rlca                                          ; $50eb: $07
    rrca                                          ; $50ec: $0f
    rlca                                          ; $50ed: $07
    rrca                                          ; $50ee: $0f
    rlca                                          ; $50ef: $07
    rrca                                          ; $50f0: $0f
    rrca                                          ; $50f1: $0f
    rlca                                          ; $50f2: $07
    rrca                                          ; $50f3: $0f
    rrca                                          ; $50f4: $0f
    rrca                                          ; $50f5: $0f
    ld h, b                                       ; $50f6: $60
    ld h, c                                       ; $50f7: $61
    ld h, d                                       ; $50f8: $62
    ld d, a                                       ; $50f9: $57
    add c                                         ; $50fa: $81
    add d                                         ; $50fb: $82
    ld e, d                                       ; $50fc: $5a
    ld h, e                                       ; $50fd: $63
    add l                                         ; $50fe: $85
    add [hl]                                      ; $50ff: $86
    xor e                                         ; $5100: $ab
    ld a, l                                       ; $5101: $7d
    and d                                         ; $5102: $a2
    and l                                         ; $5103: $a5
    ld a, [hl]                                    ; $5104: $7e
    xor [hl]                                      ; $5105: $ae
    rlca                                          ; $5106: $07
    rlca                                          ; $5107: $07
    rlca                                          ; $5108: $07
    rlca                                          ; $5109: $07
    rrca                                          ; $510a: $0f
    rrca                                          ; $510b: $0f
    rlca                                          ; $510c: $07
    rlca                                          ; $510d: $07
    rrca                                          ; $510e: $0f
    rrca                                          ; $510f: $0f
    rrca                                          ; $5110: $0f
    rlca                                          ; $5111: $07
    rrca                                          ; $5112: $0f
    rrca                                          ; $5113: $0f
    rlca                                          ; $5114: $07
    rrca                                          ; $5115: $0f
    ld e, b                                       ; $5116: $58
    ld d, [hl]                                    ; $5117: $56
    ld h, b                                       ; $5118: $60
    ld h, c                                       ; $5119: $61
    add b                                         ; $511a: $80
    ld e, h                                       ; $511b: $5c
    add c                                         ; $511c: $81
    add d                                         ; $511d: $82
    add e                                         ; $511e: $83
    add h                                         ; $511f: $84
    add l                                         ; $5120: $85
    add [hl]                                      ; $5121: $86
    and e                                         ; $5122: $a3
    and h                                         ; $5123: $a4
    and d                                         ; $5124: $a2
    and l                                         ; $5125: $a5
    rlca                                          ; $5126: $07
    rlca                                          ; $5127: $07
    rlca                                          ; $5128: $07
    rlca                                          ; $5129: $07
    rrca                                          ; $512a: $0f
    rlca                                          ; $512b: $07
    rrca                                          ; $512c: $0f
    rrca                                          ; $512d: $0f
    rrca                                          ; $512e: $0f
    rrca                                          ; $512f: $0f
    rrca                                          ; $5130: $0f
    rrca                                          ; $5131: $0f
    rrca                                          ; $5132: $0f
    rrca                                          ; $5133: $0f
    rrca                                          ; $5134: $0f
    rrca                                          ; $5135: $0f
    ld h, d                                       ; $5136: $62
    ld e, e                                       ; $5137: $5b
    and c                                         ; $5138: $a1
    and b                                         ; $5139: $a0
    ld e, d                                       ; $513a: $5a
    ld c, [hl]                                    ; $513b: $4e
    sub [hl]                                      ; $513c: $96
    sub l                                         ; $513d: $95
    ld d, e                                       ; $513e: $53
    ld a, l                                       ; $513f: $7d
    sbc b                                         ; $5140: $98
    sub a                                         ; $5141: $97
    ld d, [hl]                                    ; $5142: $56
    xor [hl]                                      ; $5143: $ae
    sbc d                                         ; $5144: $9a
    sbc c                                         ; $5145: $99
    rlca                                          ; $5146: $07
    rlca                                          ; $5147: $07
    rrca                                          ; $5148: $0f
    rrca                                          ; $5149: $0f
    rlca                                          ; $514a: $07
    rlca                                          ; $514b: $07
    rrca                                          ; $514c: $0f
    rrca                                          ; $514d: $0f
    rlca                                          ; $514e: $07
    rlca                                          ; $514f: $07
    rrca                                          ; $5150: $0f
    rrca                                          ; $5151: $0f
    rlca                                          ; $5152: $07
    rrca                                          ; $5153: $0f
    rrca                                          ; $5154: $0f
    rrca                                          ; $5155: $0f
    xor a                                         ; $5156: $af
    or b                                          ; $5157: $b0
    and [hl]                                      ; $5158: $a6
    and a                                         ; $5159: $a7
    xor h                                         ; $515a: $ac
    xor l                                         ; $515b: $ad
    ld d, h                                       ; $515c: $54
    ld d, l                                       ; $515d: $55
    ld h, d                                       ; $515e: $62
    ld d, a                                       ; $515f: $57
    ld e, b                                       ; $5160: $58
    ld e, c                                       ; $5161: $59
    sbc e                                         ; $5162: $9b
    sbc h                                         ; $5163: $9c
    sbc l                                         ; $5164: $9d
    sbc [hl]                                      ; $5165: $9e
    rrca                                          ; $5166: $0f
    rrca                                          ; $5167: $0f
    rrca                                          ; $5168: $0f
    rrca                                          ; $5169: $0f
    rrca                                          ; $516a: $0f
    rrca                                          ; $516b: $0f
    rlca                                          ; $516c: $07
    rlca                                          ; $516d: $07
    rlca                                          ; $516e: $07
    rlca                                          ; $516f: $07
    rlca                                          ; $5170: $07
    rlca                                          ; $5171: $07
    ld c, a                                       ; $5172: $4f
    ld c, a                                       ; $5173: $4f
    ld c, a                                       ; $5174: $4f
    ld c, a                                       ; $5175: $4f
    xor b                                         ; $5176: $a8
    sub c                                         ; $5177: $91
    xor a                                         ; $5178: $af
    or b                                          ; $5179: $b0
    sbc a                                         ; $517a: $9f
    sub h                                         ; $517b: $94
    xor h                                         ; $517c: $ac
    xor l                                         ; $517d: $ad
    ld h, b                                       ; $517e: $60
    ld h, c                                       ; $517f: $61
    ld h, d                                       ; $5180: $62
    ld d, a                                       ; $5181: $57
    sbc e                                         ; $5182: $9b
    sbc h                                         ; $5183: $9c
    sbc l                                         ; $5184: $9d
    sbc [hl]                                      ; $5185: $9e
    rrca                                          ; $5186: $0f
    rrca                                          ; $5187: $0f
    rrca                                          ; $5188: $0f
    rrca                                          ; $5189: $0f
    rrca                                          ; $518a: $0f
    rrca                                          ; $518b: $0f
    rrca                                          ; $518c: $0f
    rrca                                          ; $518d: $0f
    rlca                                          ; $518e: $07
    rlca                                          ; $518f: $07
    rlca                                          ; $5190: $07
    rlca                                          ; $5191: $07
    ld c, a                                       ; $5192: $4f
    ld c, a                                       ; $5193: $4f
    ld c, a                                       ; $5194: $4f
    ld c, a                                       ; $5195: $4f
    and [hl]                                      ; $5196: $a6
    and a                                         ; $5197: $a7
    xor b                                         ; $5198: $a8
    sub c                                         ; $5199: $91
    ld d, h                                       ; $519a: $54
    ld d, l                                       ; $519b: $55
    sbc a                                         ; $519c: $9f
    ld c, [hl]                                    ; $519d: $4e
    ld e, b                                       ; $519e: $58
    ld d, [hl]                                    ; $519f: $56
    ld e, e                                       ; $51a0: $5b
    ld c, [hl]                                    ; $51a1: $4e
    sbc e                                         ; $51a2: $9b
    sbc h                                         ; $51a3: $9c
    sbc l                                         ; $51a4: $9d
    sbc [hl]                                      ; $51a5: $9e
    rrca                                          ; $51a6: $0f
    rrca                                          ; $51a7: $0f
    rrca                                          ; $51a8: $0f
    rrca                                          ; $51a9: $0f
    rlca                                          ; $51aa: $07
    rlca                                          ; $51ab: $07
    rrca                                          ; $51ac: $0f
    rlca                                          ; $51ad: $07
    rlca                                          ; $51ae: $07
    rlca                                          ; $51af: $07
    rlca                                          ; $51b0: $07
    rlca                                          ; $51b1: $07
    ld c, a                                       ; $51b2: $4f
    ld c, a                                       ; $51b3: $4f
    ld c, a                                       ; $51b4: $4f
    ld c, a                                       ; $51b5: $4f
    xor a                                         ; $51b6: $af
    ld c, [hl]                                    ; $51b7: $4e
    and c                                         ; $51b8: $a1
    and b                                         ; $51b9: $a0
    ld d, e                                       ; $51ba: $53
    xor l                                         ; $51bb: $ad
    sub [hl]                                      ; $51bc: $96
    sub l                                         ; $51bd: $95
    ld d, [hl]                                    ; $51be: $56
    ld e, e                                       ; $51bf: $5b
    sbc b                                         ; $51c0: $98
    sub a                                         ; $51c1: $97
    sbc e                                         ; $51c2: $9b
    sbc h                                         ; $51c3: $9c
    sub e                                         ; $51c4: $93
    sub d                                         ; $51c5: $92
    rrca                                          ; $51c6: $0f
    rlca                                          ; $51c7: $07
    rrca                                          ; $51c8: $0f
    rrca                                          ; $51c9: $0f
    rlca                                          ; $51ca: $07
    rrca                                          ; $51cb: $0f
    rrca                                          ; $51cc: $0f
    rrca                                          ; $51cd: $0f
    rlca                                          ; $51ce: $07
    rlca                                          ; $51cf: $07
    rrca                                          ; $51d0: $0f
    rrca                                          ; $51d1: $0f
    ld c, a                                       ; $51d2: $4f
    ld c, a                                       ; $51d3: $4f
    ld l, a                                       ; $51d4: $6f
    ld l, a                                       ; $51d5: $6f
    add a                                         ; $51d6: $87
    adc b                                         ; $51d7: $88
    adc c                                         ; $51d8: $89
    adc d                                         ; $51d9: $8a
    ld a, [hl]                                    ; $51da: $7e
    xor [hl]                                      ; $51db: $ae
    and e                                         ; $51dc: $a3
    and h                                         ; $51dd: $a4
    xor a                                         ; $51de: $af
    or b                                          ; $51df: $b0
    and [hl]                                      ; $51e0: $a6
    and a                                         ; $51e1: $a7
    xor h                                         ; $51e2: $ac
    ld c, [hl]                                    ; $51e3: $4e
    ld c, [hl]                                    ; $51e4: $4e
    or a                                          ; $51e5: $b7
    ld c, a                                       ; $51e6: $4f
    ld c, a                                       ; $51e7: $4f
    ld c, a                                       ; $51e8: $4f
    ld c, a                                       ; $51e9: $4f
    ld [bc], a                                    ; $51ea: $02
    ld a, [bc]                                    ; $51eb: $0a
    ld a, [bc]                                    ; $51ec: $0a
    inc c                                         ; $51ed: $0c
    inc c                                         ; $51ee: $0c
    inc c                                         ; $51ef: $0c
    ld a, [bc]                                    ; $51f0: $0a
    ld a, [bc]                                    ; $51f1: $0a
    ld a, [bc]                                    ; $51f2: $0a
    ld h, d                                       ; $51f3: $62
    ld [bc], a                                    ; $51f4: $02
    db $eb                                        ; $51f5: $eb
    add a                                         ; $51f6: $87
    adc b                                         ; $51f7: $88
    adc c                                         ; $51f8: $89
    adc d                                         ; $51f9: $8a
    and d                                         ; $51fa: $a2
    and l                                         ; $51fb: $a5
    ld a, [hl]                                    ; $51fc: $7e
    ld e, e                                       ; $51fd: $5b
    xor b                                         ; $51fe: $a8
    ld e, e                                       ; $51ff: $5b
    or c                                          ; $5200: $b1
    ld c, [hl]                                    ; $5201: $4e
    cp b                                          ; $5202: $b8
    cp c                                          ; $5203: $b9
    cp d                                          ; $5204: $ba
    call nz, $4f4f                                ; $5205: $c4 $4f $4f
    ld c, a                                       ; $5208: $4f
    ld c, a                                       ; $5209: $4f
    inc c                                         ; $520a: $0c
    ld a, [bc]                                    ; $520b: $0a
    ld [bc], a                                    ; $520c: $02
    ld [bc], a                                    ; $520d: $02
    ld a, [bc]                                    ; $520e: $0a
    ld [bc], a                                    ; $520f: $02
    ld a, [bc]                                    ; $5210: $0a
    ld [bc], a                                    ; $5211: $02
    adc e                                         ; $5212: $8b
    adc e                                         ; $5213: $8b
    adc e                                         ; $5214: $8b
    adc e                                         ; $5215: $8b
    add a                                         ; $5216: $87
    adc b                                         ; $5217: $88
    adc c                                         ; $5218: $89
    adc d                                         ; $5219: $8a
    and e                                         ; $521a: $a3
    and h                                         ; $521b: $a4
    ld e, e                                       ; $521c: $5b
    and l                                         ; $521d: $a5
    ld e, e                                       ; $521e: $5b
    or c                                          ; $521f: $b1
    xor b                                         ; $5220: $a8
    ld e, e                                       ; $5221: $5b
    push bc                                       ; $5222: $c5
    add $c7                                       ; $5223: $c6 $c7
    call nc, $4f4f                                ; $5225: $d4 $4f $4f
    ld c, a                                       ; $5228: $4f
    ld c, a                                       ; $5229: $4f
    ld a, [bc]                                    ; $522a: $0a
    inc c                                         ; $522b: $0c
    inc b                                         ; $522c: $04
    ld a, [bc]                                    ; $522d: $0a
    ld [bc], a                                    ; $522e: $02
    ld a, [bc]                                    ; $522f: $0a
    inc c                                         ; $5230: $0c
    inc b                                         ; $5231: $04
    adc e                                         ; $5232: $8b
    adc e                                         ; $5233: $8b
    adc e                                         ; $5234: $8b
    adc e                                         ; $5235: $8b
    add a                                         ; $5236: $87
    adc b                                         ; $5237: $88
    ld a, a                                       ; $5238: $7f
    ld a, [hl]                                    ; $5239: $7e
    ld a, [hl]                                    ; $523a: $7e
    xor [hl]                                      ; $523b: $ae
    and e                                         ; $523c: $a3
    and h                                         ; $523d: $a4
    xor a                                         ; $523e: $af
    or b                                          ; $523f: $b0
    ld e, e                                       ; $5240: $5b
    or c                                          ; $5241: $b1
    push de                                       ; $5242: $d5
    sub $d7                                       ; $5243: $d6 $d7
    ld [de], a                                    ; $5245: $12
    ld c, a                                       ; $5246: $4f
    ld c, a                                       ; $5247: $4f
    ld h, a                                       ; $5248: $67
    ld h, h                                       ; $5249: $64
    ld [bc], a                                    ; $524a: $02
    ld a, [bc]                                    ; $524b: $0a
    inc c                                         ; $524c: $0c
    inc c                                         ; $524d: $0c
    inc c                                         ; $524e: $0c
    inc c                                         ; $524f: $0c
    ld [bc], a                                    ; $5250: $02
    ld a, [bc]                                    ; $5251: $0a
    adc e                                         ; $5252: $8b
    adc e                                         ; $5253: $8b
    adc e                                         ; $5254: $8b
    adc e                                         ; $5255: $8b
    ld d, [hl]                                    ; $5256: $56
    ld e, e                                       ; $5257: $5b
    ld c, [hl]                                    ; $5258: $4e
    ld c, a                                       ; $5259: $4f
    ld e, d                                       ; $525a: $5a
    ld h, e                                       ; $525b: $63
    add b                                         ; $525c: $80
    or c                                          ; $525d: $b1
    xor e                                         ; $525e: $ab
    ld c, [hl]                                    ; $525f: $4e
    ld c, [hl]                                    ; $5260: $4e
    ld d, e                                       ; $5261: $53
    ld d, [hl]                                    ; $5262: $56
    db $e3                                        ; $5263: $e3
    db $e4                                        ; $5264: $e4
    rst $20                                       ; $5265: $e7
    ld [bc], a                                    ; $5266: $02
    ld [bc], a                                    ; $5267: $02
    ld [bc], a                                    ; $5268: $02
    add e                                         ; $5269: $83
    ld [bc], a                                    ; $526a: $02
    inc b                                         ; $526b: $04
    ld a, [bc]                                    ; $526c: $0a
    ld a, [bc]                                    ; $526d: $0a
    inc c                                         ; $526e: $0c
    ld h, d                                       ; $526f: $62
    ld [bc], a                                    ; $5270: $02
    ld [bc], a                                    ; $5271: $02
    ld [bc], a                                    ; $5272: $02
    adc e                                         ; $5273: $8b
    adc e                                         ; $5274: $8b
    adc e                                         ; $5275: $8b
    cp e                                          ; $5276: $bb
    cp h                                          ; $5277: $bc
    cp l                                          ; $5278: $bd
    ret z                                         ; $5279: $c8

    cp [hl]                                       ; $527a: $be
    cp a                                          ; $527b: $bf
    ret nz                                        ; $527c: $c0

    call z, $c2c1                                 ; $527d: $cc $c1 $c2
    jp $e8d0                                      ; $5280: $c3 $d0 $e8


    jp hl                                         ; $5283: $e9


    ld [$8bf7], a                                 ; $5284: $ea $f7 $8b
    adc e                                         ; $5287: $8b
    adc e                                         ; $5288: $8b
    adc e                                         ; $5289: $8b
    adc e                                         ; $528a: $8b
    adc e                                         ; $528b: $8b
    adc e                                         ; $528c: $8b
    adc l                                         ; $528d: $8d
    adc e                                         ; $528e: $8b
    adc e                                         ; $528f: $8b
    adc e                                         ; $5290: $8b
    adc e                                         ; $5291: $8b
    adc e                                         ; $5292: $8b
    adc l                                         ; $5293: $8d
    adc e                                         ; $5294: $8b
    adc e                                         ; $5295: $8b
    ret                                           ; $5296: $c9


    jp z, $d8cb                                   ; $5297: $ca $cb $d8

    call $cfce                                    ; $529a: $cd $ce $cf
    call c, $d2d1                                 ; $529d: $dc $d1 $d2
    db $d3                                        ; $52a0: $d3
    ldh [$f8], a                                  ; $52a1: $e0 $f8
    ld sp, hl                                     ; $52a3: $f9
    ld a, [$8b05]                                 ; $52a4: $fa $05 $8b
    adc l                                         ; $52a7: $8d
    adc e                                         ; $52a8: $8b
    adc e                                         ; $52a9: $8b
    adc l                                         ; $52aa: $8d
    adc e                                         ; $52ab: $8b
    adc e                                         ; $52ac: $8b
    adc e                                         ; $52ad: $8b
    adc e                                         ; $52ae: $8b
    adc l                                         ; $52af: $8d
    adc l                                         ; $52b0: $8d
    adc e                                         ; $52b1: $8b
    adc e                                         ; $52b2: $8b
    adc e                                         ; $52b3: $8b
    adc l                                         ; $52b4: $8d
    adc l                                         ; $52b5: $8d
    reti                                          ; $52b6: $d9


    jp c, $15db                                   ; $52b7: $da $db $15

    db $dd                                        ; $52ba: $dd
    sbc $df                                       ; $52bb: $de $df
    cp a                                          ; $52bd: $bf
    pop hl                                        ; $52be: $e1
    ld [c], a                                     ; $52bf: $e2
    pop bc                                        ; $52c0: $c1
    jp nz, $0706                                  ; $52c1: $c2 $06 $07

    add sp, -$17                                  ; $52c4: $e8 $e9
    adc e                                         ; $52c6: $8b
    adc e                                         ; $52c7: $8b
    adc e                                         ; $52c8: $8b
    adc e                                         ; $52c9: $8b
    adc e                                         ; $52ca: $8b
    adc l                                         ; $52cb: $8d
    adc l                                         ; $52cc: $8d
    adc e                                         ; $52cd: $8b
    adc l                                         ; $52ce: $8d
    adc l                                         ; $52cf: $8d
    adc l                                         ; $52d0: $8d
    adc e                                         ; $52d1: $8b
    adc l                                         ; $52d2: $8d
    adc l                                         ; $52d3: $8d
    adc l                                         ; $52d4: $8d
    adc e                                         ; $52d5: $8b
    ld h, b                                       ; $52d6: $60
    ld c, [hl]                                    ; $52d7: $4e
    ld a, b                                       ; $52d8: $78
    ld [hl], a                                    ; $52d9: $77
    add c                                         ; $52da: $81
    add d                                         ; $52db: $82
    ld a, d                                       ; $52dc: $7a
    ld a, c                                       ; $52dd: $79
    add l                                         ; $52de: $85
    add [hl]                                      ; $52df: $86
    ld a, h                                       ; $52e0: $7c
    ld a, e                                       ; $52e1: $7b
    and d                                         ; $52e2: $a2
    ld c, [hl]                                    ; $52e3: $4e
    adc h                                         ; $52e4: $8c
    adc e                                         ; $52e5: $8b
    ld [bc], a                                    ; $52e6: $02
    ld [bc], a                                    ; $52e7: $02
    and l                                         ; $52e8: $a5
    and e                                         ; $52e9: $a3
    ld a, [bc]                                    ; $52ea: $0a
    ld a, [bc]                                    ; $52eb: $0a
    add e                                         ; $52ec: $83
    add e                                         ; $52ed: $83
    ld a, [bc]                                    ; $52ee: $0a
    inc c                                         ; $52ef: $0c
    add e                                         ; $52f0: $83
    add e                                         ; $52f1: $83
    ld a, [bc]                                    ; $52f2: $0a
    inc b                                         ; $52f3: $04
    adc e                                         ; $52f4: $8b
    adc l                                         ; $52f5: $8d
    xor b                                         ; $52f6: $a8
    sub c                                         ; $52f7: $91
    adc [hl]                                      ; $52f8: $8e
    adc l                                         ; $52f9: $8d
    sbc a                                         ; $52fa: $9f
    sub h                                         ; $52fb: $94
    sub b                                         ; $52fc: $90
    adc a                                         ; $52fd: $8f
    ld h, b                                       ; $52fe: $60
    ld c, [hl]                                    ; $52ff: $4e
    ld l, [hl]                                    ; $5300: $6e
    ld l, l                                       ; $5301: $6d
    add c                                         ; $5302: $81
    ld e, e                                       ; $5303: $5b
    halt                                          ; $5304: $76
    ld [hl], l                                    ; $5305: $75
    inc c                                         ; $5306: $0c
    ld a, [bc]                                    ; $5307: $0a
    adc e                                         ; $5308: $8b
    adc l                                         ; $5309: $8d
    inc c                                         ; $530a: $0c
    ld a, [bc]                                    ; $530b: $0a
    adc e                                         ; $530c: $8b
    adc l                                         ; $530d: $8d
    inc b                                         ; $530e: $04
    ld [bc], a                                    ; $530f: $02
    add e                                         ; $5310: $83
    and l                                         ; $5311: $a5
    ld a, [bc]                                    ; $5312: $0a
    ld [bc], a                                    ; $5313: $02
    and e                                         ; $5314: $a3
    and l                                         ; $5315: $a5
    add l                                         ; $5316: $85
    ld c, [hl]                                    ; $5317: $4e
    ld a, b                                       ; $5318: $78
    ld [hl], a                                    ; $5319: $77
    ld e, e                                       ; $531a: $5b
    ld c, [hl]                                    ; $531b: $4e
    ld a, d                                       ; $531c: $7a
    ld a, c                                       ; $531d: $79
    ld c, [hl]                                    ; $531e: $4e
    ld e, e                                       ; $531f: $5b
    ld a, h                                       ; $5320: $7c
    ld a, e                                       ; $5321: $7b
    inc de                                        ; $5322: $13
    inc d                                         ; $5323: $14
    push bc                                       ; $5324: $c5
    inc l                                         ; $5325: $2c
    inc c                                         ; $5326: $0c
    ld [bc], a                                    ; $5327: $02
    and e                                         ; $5328: $a3
    and l                                         ; $5329: $a5
    ld [bc], a                                    ; $532a: $02
    ld [bc], a                                    ; $532b: $02
    add e                                         ; $532c: $83
    add l                                         ; $532d: $85
    ld [bc], a                                    ; $532e: $02
    ld [bc], a                                    ; $532f: $02
    add e                                         ; $5330: $83
    add l                                         ; $5331: $85
    adc e                                         ; $5332: $8b
    adc e                                         ; $5333: $8b
    adc e                                         ; $5334: $8b
    adc e                                         ; $5335: $8b
    pop de                                        ; $5336: $d1
    pop de                                        ; $5337: $d1
    pop de                                        ; $5338: $d1
    pop de                                        ; $5339: $d1
    pop de                                        ; $533a: $d1
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
    add c                                         ; $5346: $81
    ld bc, $0101                                  ; $5347: $01 $01 $01
    add l                                         ; $534a: $85
    ld bc, $0101                                  ; $534b: $01 $01 $01
    add c                                         ; $534e: $81
    ld bc, $0105                                  ; $534f: $01 $05 $01
    add c                                         ; $5352: $81
    ld bc, $0101                                  ; $5353: $01 $01 $01
    ld d, $c8                                     ; $5356: $16 $c8
    ret                                           ; $5358: $c9


    pop de                                        ; $5359: $d1
    ret nz                                        ; $535a: $c0

    call z, $d1cd                                 ; $535b: $cc $cd $d1
    jp $d1d0                                      ; $535e: $c3 $d0 $d1


    pop de                                        ; $5361: $d1
    ld [$d1f7], a                                 ; $5362: $ea $f7 $d1
    pop de                                        ; $5365: $d1
    adc e                                         ; $5366: $8b
    adc e                                         ; $5367: $8b
    adc e                                         ; $5368: $8b
    add e                                         ; $5369: $83
    adc e                                         ; $536a: $8b
    adc e                                         ; $536b: $8b
    adc e                                         ; $536c: $8b
    add e                                         ; $536d: $83
    adc e                                         ; $536e: $8b
    adc l                                         ; $536f: $8d
    adc e                                         ; $5370: $8b
    add e                                         ; $5371: $83
    adc e                                         ; $5372: $8b
    adc l                                         ; $5373: $8d
    add e                                         ; $5374: $83
    add e                                         ; $5375: $83
    pop de                                        ; $5376: $d1
    pop de                                        ; $5377: $d1
    pop de                                        ; $5378: $d1
    pop de                                        ; $5379: $d1
    pop de                                        ; $537a: $d1
    pop de                                        ; $537b: $d1
    pop de                                        ; $537c: $d1
    pop de                                        ; $537d: $d1
    pop de                                        ; $537e: $d1
    pop de                                        ; $537f: $d1
    pop de                                        ; $5380: $d1
    pop de                                        ; $5381: $d1
    pop de                                        ; $5382: $d1
    pop de                                        ; $5383: $d1
    pop de                                        ; $5384: $d1
    pop de                                        ; $5385: $d1
    add c                                         ; $5386: $81
    ld bc, $0101                                  ; $5387: $01 $01 $01
    add c                                         ; $538a: $81
    ld bc, $0105                                  ; $538b: $01 $05 $01
    add c                                         ; $538e: $81
    ld bc, $0101                                  ; $538f: $01 $01 $01
    add c                                         ; $5392: $81
    ld bc, $0101                                  ; $5393: $01 $01 $01
    pop de                                        ; $5396: $d1
    dec l                                         ; $5397: $2d
    ld l, $2f                                     ; $5398: $2e $2f
    pop de                                        ; $539a: $d1
    ld a, c                                       ; $539b: $79
    ld a, d                                       ; $539c: $7a
    ld e, e                                       ; $539d: $5b
    pop de                                        ; $539e: $d1
    ld a, e                                       ; $539f: $7b
    ld a, h                                       ; $53a0: $7c
    ld c, [hl]                                    ; $53a1: $4e
    pop de                                        ; $53a2: $d1
    adc e                                         ; $53a3: $8b
    adc h                                         ; $53a4: $8c
    ld c, [hl]                                    ; $53a5: $4e
    ld bc, $8d8d                                  ; $53a6: $01 $8d $8d
    adc e                                         ; $53a9: $8b
    ld bc, $a5a3                                  ; $53aa: $01 $a3 $a5
    ld [bc], a                                    ; $53ad: $02
    dec b                                         ; $53ae: $05
    and e                                         ; $53af: $a3
    and e                                         ; $53b0: $a3
    ld [bc], a                                    ; $53b1: $02
    dec b                                         ; $53b2: $05
    xor l                                         ; $53b3: $ad
    xor e                                         ; $53b4: $ab
    ld [bc], a                                    ; $53b5: $02
    pop de                                        ; $53b6: $d1
    adc l                                         ; $53b7: $8d
    adc [hl]                                      ; $53b8: $8e
    ld e, e                                       ; $53b9: $5b
    pop de                                        ; $53ba: $d1
    adc a                                         ; $53bb: $8f
    sub b                                         ; $53bc: $90
    sub h                                         ; $53bd: $94
    pop de                                        ; $53be: $d1
    ld l, l                                       ; $53bf: $6d
    ld l, [hl]                                    ; $53c0: $6e
    ld h, c                                       ; $53c1: $61
    pop de                                        ; $53c2: $d1
    ld [hl], l                                    ; $53c3: $75
    halt                                          ; $53c4: $76
    ld e, e                                       ; $53c5: $5b
    ld bc, $abad                                  ; $53c6: $01 $ad $ab
    inc b                                         ; $53c9: $04
    ld bc, $abad                                  ; $53ca: $01 $ad $ab
    inc c                                         ; $53cd: $0c
    ld bc, $a585                                  ; $53ce: $01 $85 $a5
    inc b                                         ; $53d1: $04
    ld bc, $8385                                  ; $53d2: $01 $85 $83
    inc b                                         ; $53d5: $04
    pop de                                        ; $53d6: $d1
    ld [hl], a                                    ; $53d7: $77
    ld a, b                                       ; $53d8: $78
    ld c, [hl]                                    ; $53d9: $4e
    pop de                                        ; $53da: $d1
    ld l, l                                       ; $53db: $6d
    jr nc, jr_07e_540f                            ; $53dc: $30 $31

    pop de                                        ; $53de: $d1
    pop de                                        ; $53df: $d1
    ld [hl-], a                                   ; $53e0: $32
    inc sp                                        ; $53e1: $33
    pop de                                        ; $53e2: $d1
    adc e                                         ; $53e3: $8b
    adc h                                         ; $53e4: $8c
    sub h                                         ; $53e5: $94
    ld bc, $8385                                  ; $53e6: $01 $85 $83
    ld [bc], a                                    ; $53e9: $02
    ld bc, $8d85                                  ; $53ea: $01 $85 $8d
    adc l                                         ; $53ed: $8d
    dec b                                         ; $53ee: $05
    add l                                         ; $53ef: $85
    adc e                                         ; $53f0: $8b
    adc e                                         ; $53f1: $8b
    ld bc, $abad                                  ; $53f2: $01 $ad $ab
    ld a, [bc]                                    ; $53f5: $0a
    pop de                                        ; $53f6: $d1
    pop de                                        ; $53f7: $d1
    pop de                                        ; $53f8: $d1
    pop de                                        ; $53f9: $d1
    jp nc, $d1d3                                  ; $53fa: $d2 $d3 $d1

    call nc, $d8d2                                ; $53fd: $d4 $d2 $d8
    pop de                                        ; $5400: $d1
    reti                                          ; $5401: $d9


    pop de                                        ; $5402: $d1
    jp c, $dcdb                                   ; $5403: $da $db $dc

    ld bc, $0101                                  ; $5406: $01 $01 $01
    ld bc, $0101                                  ; $5409: $01 $01 $01
    ld bc, $4101                                  ; $540c: $01 $01 $41

jr_07e_540f:
    ld bc, $0601                                  ; $540f: $01 $01 $06
    ld bc, $0101                                  ; $5412: $01 $01 $01
    ld b, $d1                                     ; $5415: $06 $d1
    pop de                                        ; $5417: $d1
    pop de                                        ; $5418: $d1
    pop de                                        ; $5419: $d1
    pop de                                        ; $541a: $d1
    push de                                       ; $541b: $d5
    sub $d7                                       ; $541c: $d6 $d7
    pop de                                        ; $541e: $d1
    db $e4                                        ; $541f: $e4
    push hl                                       ; $5420: $e5
    and $d6                                       ; $5421: $e6 $d6
    rst $20                                       ; $5423: $e7
    add sp, -$17                                  ; $5424: $e8 $e9
    ld bc, $0101                                  ; $5426: $01 $01 $01
    ld bc, $0101                                  ; $5429: $01 $01 $01
    ld hl, $0161                                  ; $542c: $21 $61 $01
    ld bc, $0601                                  ; $542f: $01 $01 $06
    ld bc, $0101                                  ; $5432: $01 $01 $01
    ld b, $d1                                     ; $5435: $06 $d1
    adc l                                         ; $5437: $8d
    adc [hl]                                      ; $5438: $8e
    ld h, c                                       ; $5439: $61
    pop de                                        ; $543a: $d1
    adc a                                         ; $543b: $8f
    sub b                                         ; $543c: $90
    add d                                         ; $543d: $82
    pop de                                        ; $543e: $d1
    ld l, l                                       ; $543f: $6d
    ld l, [hl]                                    ; $5440: $6e
    add [hl]                                      ; $5441: $86
    pop de                                        ; $5442: $d1
    ld [hl], l                                    ; $5443: $75
    halt                                          ; $5444: $76
    ld c, [hl]                                    ; $5445: $4e
    ld bc, $abad                                  ; $5446: $01 $ad $ab
    ld [bc], a                                    ; $5449: $02
    ld bc, $abad                                  ; $544a: $01 $ad $ab
    inc c                                         ; $544d: $0c
    ld bc, $a385                                  ; $544e: $01 $85 $a3
    inc c                                         ; $5451: $0c
    ld bc, $8385                                  ; $5452: $01 $85 $83
    ld [bc], a                                    ; $5455: $02
    inc [hl]                                      ; $5456: $34
    dec [hl]                                      ; $5457: $35
    ld [hl], $37                                  ; $5458: $36 $37
    ld e, d                                       ; $545a: $5a
    ld h, e                                       ; $545b: $63
    ld e, e                                       ; $545c: $5b
    ld e, h                                       ; $545d: $5c
    xor e                                         ; $545e: $ab
    ld c, [hl]                                    ; $545f: $4e
    add e                                         ; $5460: $83
    add h                                         ; $5461: $84
    ld a, [hl]                                    ; $5462: $7e
    xor [hl]                                      ; $5463: $ae
    and e                                         ; $5464: $a3
    and h                                         ; $5465: $a4
    adc e                                         ; $5466: $8b
    adc e                                         ; $5467: $8b
    adc e                                         ; $5468: $8b
    adc e                                         ; $5469: $8b
    ld [bc], a                                    ; $546a: $02
    ld [bc], a                                    ; $546b: $02
    ld [bc], a                                    ; $546c: $02
    ld [bc], a                                    ; $546d: $02
    ld a, [bc]                                    ; $546e: $0a
    ld h, h                                       ; $546f: $64
    ld a, [bc]                                    ; $5470: $0a
    inc c                                         ; $5471: $0c
    inc b                                         ; $5472: $04
    inc c                                         ; $5473: $0c
    inc c                                         ; $5474: $0c
    ld a, [bc]                                    ; $5475: $0a
    jr c, jr_07e_54e5                             ; $5476: $38 $6d

    pop de                                        ; $5478: $d1
    pop de                                        ; $5479: $d1
    add c                                         ; $547a: $81
    add hl, sp                                    ; $547b: $39
    pop de                                        ; $547c: $d1
    pop de                                        ; $547d: $d1
    ld c, [hl]                                    ; $547e: $4e
    ld a, [hl-]                                   ; $547f: $3a
    pop de                                        ; $5480: $d1
    pop de                                        ; $5481: $d1
    ld e, e                                       ; $5482: $5b
    dec sp                                        ; $5483: $3b
    pop de                                        ; $5484: $d1
    pop de                                        ; $5485: $d1
    adc e                                         ; $5486: $8b
    and e                                         ; $5487: $a3
    add c                                         ; $5488: $81
    add c                                         ; $5489: $81
    inc c                                         ; $548a: $0c
    adc e                                         ; $548b: $8b
    add c                                         ; $548c: $81
    add c                                         ; $548d: $81
    ld h, d                                       ; $548e: $62
    adc e                                         ; $548f: $8b
    add c                                         ; $5490: $81
    add c                                         ; $5491: $81
    ld [bc], a                                    ; $5492: $02
    adc l                                         ; $5493: $8d
    add c                                         ; $5494: $81
    add c                                         ; $5495: $81
    xor a                                         ; $5496: $af
    or b                                          ; $5497: $b0
    and [hl]                                      ; $5498: $a6
    and a                                         ; $5499: $a7
    xor h                                         ; $549a: $ac
    xor l                                         ; $549b: $ad
    ld d, h                                       ; $549c: $54
    ld d, l                                       ; $549d: $55
    ld h, d                                       ; $549e: $62
    ld d, a                                       ; $549f: $57
    ld e, b                                       ; $54a0: $58
    ld d, [hl]                                    ; $54a1: $56
    ld e, d                                       ; $54a2: $5a
    ld h, e                                       ; $54a3: $63
    add b                                         ; $54a4: $80
    or c                                          ; $54a5: $b1
    ld a, [bc]                                    ; $54a6: $0a
    inc c                                         ; $54a7: $0c
    inc c                                         ; $54a8: $0c
    ld a, [bc]                                    ; $54a9: $0a
    ld a, [bc]                                    ; $54aa: $0a
    inc c                                         ; $54ab: $0c
    ld [bc], a                                    ; $54ac: $02
    ld [bc], a                                    ; $54ad: $02
    ld [bc], a                                    ; $54ae: $02
    inc b                                         ; $54af: $04
    inc b                                         ; $54b0: $04
    ld [bc], a                                    ; $54b1: $02
    inc b                                         ; $54b2: $04
    ld [bc], a                                    ; $54b3: $02
    inc c                                         ; $54b4: $0c
    ld a, [bc]                                    ; $54b5: $0a
    ld c, [hl]                                    ; $54b6: $4e
    inc a                                         ; $54b7: $3c
    pop de                                        ; $54b8: $d1
    pop de                                        ; $54b9: $d1
    ld a, d                                       ; $54ba: $7a
    ld a, c                                       ; $54bb: $79
    pop de                                        ; $54bc: $d1
    pop de                                        ; $54bd: $d1
    ld a, h                                       ; $54be: $7c
    ld a, e                                       ; $54bf: $7b
    pop de                                        ; $54c0: $d1
    pop de                                        ; $54c1: $d1
    adc h                                         ; $54c2: $8c
    adc e                                         ; $54c3: $8b
    pop de                                        ; $54c4: $d1
    pop de                                        ; $54c5: $d1
    ld [bc], a                                    ; $54c6: $02
    adc l                                         ; $54c7: $8d
    add c                                         ; $54c8: $81
    add c                                         ; $54c9: $81
    add e                                         ; $54ca: $83
    add e                                         ; $54cb: $83
    add c                                         ; $54cc: $81
    add c                                         ; $54cd: $81
    add e                                         ; $54ce: $83
    add l                                         ; $54cf: $85
    add c                                         ; $54d0: $81
    add c                                         ; $54d1: $81
    adc e                                         ; $54d2: $8b
    adc l                                         ; $54d3: $8d
    add l                                         ; $54d4: $85
    add c                                         ; $54d5: $81
    xor e                                         ; $54d6: $ab
    ld a, l                                       ; $54d7: $7d
    add e                                         ; $54d8: $83
    ld d, e                                       ; $54d9: $53
    dec a                                         ; $54da: $3d
    ld a, $3f                                     ; $54db: $3e $3f
    ld b, b                                       ; $54dd: $40
    ld b, c                                       ; $54de: $41
    ld b, d                                       ; $54df: $42
    ld b, e                                       ; $54e0: $43
    ld b, h                                       ; $54e1: $44
    xor h                                         ; $54e2: $ac
    xor l                                         ; $54e3: $ad
    ld d, h                                       ; $54e4: $54

jr_07e_54e5:
    ld d, l                                       ; $54e5: $55
    inc c                                         ; $54e6: $0c
    inc b                                         ; $54e7: $04
    ld a, [bc]                                    ; $54e8: $0a
    ld [bc], a                                    ; $54e9: $02
    adc l                                         ; $54ea: $8d
    adc l                                         ; $54eb: $8d
    adc l                                         ; $54ec: $8d
    adc e                                         ; $54ed: $8b
    adc e                                         ; $54ee: $8b
    adc e                                         ; $54ef: $8b
    adc e                                         ; $54f0: $8b
    adc e                                         ; $54f1: $8b
    ld a, [bc]                                    ; $54f2: $0a
    ld a, [bc]                                    ; $54f3: $0a
    ld [bc], a                                    ; $54f4: $02
    ld [bc], a                                    ; $54f5: $02
    adc [hl]                                      ; $54f6: $8e
    adc l                                         ; $54f7: $8d
    pop de                                        ; $54f8: $d1
    pop de                                        ; $54f9: $d1
    ld b, l                                       ; $54fa: $45
    ld b, [hl]                                    ; $54fb: $46
    pop de                                        ; $54fc: $d1
    pop de                                        ; $54fd: $d1
    ld b, a                                       ; $54fe: $47
    ld c, b                                       ; $54ff: $48
    pop de                                        ; $5500: $d1
    pop de                                        ; $5501: $d1
    halt                                          ; $5502: $76
    ld [hl], l                                    ; $5503: $75
    pop de                                        ; $5504: $d1
    pop de                                        ; $5505: $d1
    adc e                                         ; $5506: $8b
    adc e                                         ; $5507: $8b
    add l                                         ; $5508: $85
    add c                                         ; $5509: $81
    adc e                                         ; $550a: $8b
    adc e                                         ; $550b: $8b
    add c                                         ; $550c: $81
    add c                                         ; $550d: $81
    adc e                                         ; $550e: $8b
    adc e                                         ; $550f: $8b
    add c                                         ; $5510: $81
    add c                                         ; $5511: $81
    and l                                         ; $5512: $a5
    and e                                         ; $5513: $a3
    add c                                         ; $5514: $81
    add c                                         ; $5515: $81
    ld h, d                                       ; $5516: $62
    ld d, a                                       ; $5517: $57
    ld e, b                                       ; $5518: $58
    ld d, [hl]                                    ; $5519: $56
    ld e, d                                       ; $551a: $5a
    ld h, e                                       ; $551b: $63
    ld e, e                                       ; $551c: $5b
    or c                                          ; $551d: $b1
    xor e                                         ; $551e: $ab
    ld c, [hl]                                    ; $551f: $4e
    add e                                         ; $5520: $83
    ld d, e                                       ; $5521: $53
    ld d, [hl]                                    ; $5522: $56
    ld e, e                                       ; $5523: $5b
    and e                                         ; $5524: $a3
    ld d, [hl]                                    ; $5525: $56
    inc b                                         ; $5526: $04
    inc b                                         ; $5527: $04
    ld [bc], a                                    ; $5528: $02
    ld [bc], a                                    ; $5529: $02
    inc b                                         ; $552a: $04
    ld [bc], a                                    ; $552b: $02
    ld [bc], a                                    ; $552c: $02
    ld a, [bc]                                    ; $552d: $0a
    inc c                                         ; $552e: $0c
    ld h, d                                       ; $552f: $62
    ld a, [bc]                                    ; $5530: $0a
    ld [bc], a                                    ; $5531: $02
    ld [bc], a                                    ; $5532: $02
    ld [bc], a                                    ; $5533: $02
    ld a, [bc]                                    ; $5534: $0a
    inc b                                         ; $5535: $04
    ld a, b                                       ; $5536: $78
    ld [hl], a                                    ; $5537: $77
    pop de                                        ; $5538: $d1
    pop de                                        ; $5539: $d1
    ld a, d                                       ; $553a: $7a
    ld a, c                                       ; $553b: $79
    pop de                                        ; $553c: $d1
    pop de                                        ; $553d: $d1
    ld a, h                                       ; $553e: $7c
    ld a, e                                       ; $553f: $7b
    pop de                                        ; $5540: $d1
    pop de                                        ; $5541: $d1
    adc h                                         ; $5542: $8c
    adc e                                         ; $5543: $8b
    pop de                                        ; $5544: $d1
    pop de                                        ; $5545: $d1
    and l                                         ; $5546: $a5
    and e                                         ; $5547: $a3
    add c                                         ; $5548: $81
    add c                                         ; $5549: $81
    add l                                         ; $554a: $85
    add e                                         ; $554b: $83
    add c                                         ; $554c: $81
    add c                                         ; $554d: $81
    add l                                         ; $554e: $85
    add e                                         ; $554f: $83
    add c                                         ; $5550: $81
    add c                                         ; $5551: $81
    adc l                                         ; $5552: $8d
    adc e                                         ; $5553: $8b
    add c                                         ; $5554: $81
    add c                                         ; $5555: $81
    dec d                                         ; $5556: $15
    ld d, $d1                                     ; $5557: $16 $d1
    jp c, $1918                                   ; $5559: $da $18 $19

    db $dd                                        ; $555c: $dd
    sbc $1a                                       ; $555d: $de $1a
    dec de                                        ; $555f: $1b
    pop hl                                        ; $5560: $e1
    ld [c], a                                     ; $5561: $e2
    dec e                                         ; $5562: $1d
    ld e, $f1                                     ; $5563: $1e $f1
    ld a, [c]                                     ; $5565: $f2
    ld h, c                                       ; $5566: $61
    ld bc, $0601                                  ; $5567: $01 $01 $06
    ld bc, $0101                                  ; $556a: $01 $01 $01
    ld b, $01                                     ; $556d: $06 $01
    ld bc, $0601                                  ; $556f: $01 $01 $06
    ld bc, $0101                                  ; $5572: $01 $01 $01
    ld b, $db                                     ; $5575: $06 $db
    call c, $e7d6                                 ; $5577: $dc $d6 $e7
    rst $18                                       ; $557a: $df
    ldh [$ea], a                                  ; $557b: $e0 $ea
    db $eb                                        ; $557d: $eb
    pop hl                                        ; $557e: $e1
    db $e3                                        ; $557f: $e3

jr_07e_5580:
    xor $ef                                       ; $5580: $ee $ef
    di                                            ; $5582: $f3
    db $f4                                        ; $5583: $f4
    ld bc, $0102                                  ; $5584: $01 $02 $01
    ld b, $01                                     ; $5587: $06 $01
    ld bc, $0601                                  ; $5589: $01 $01 $06
    ld bc, $0101                                  ; $558c: $01 $01 $01
    ld b, $01                                     ; $558f: $06 $01
    ld bc, $0601                                  ; $5591: $01 $01 $06
    ld bc, $e801                                  ; $5594: $01 $01 $e8
    jp hl                                         ; $5597: $e9


    inc d                                         ; $5598: $14
    dec d                                         ; $5599: $15
    db $ec                                        ; $559a: $ec
    db $ed                                        ; $559b: $ed
    rla                                           ; $559c: $17
    jr jr_07e_5580                                ; $559d: $18 $e1

    ldh a, [$d1]                                  ; $559f: $f0 $d1
    ld a, [de]                                    ; $55a1: $1a
    inc bc                                        ; $55a2: $03
    inc b                                         ; $55a3: $04
    inc e                                         ; $55a4: $1c
    dec e                                         ; $55a5: $1d
    ld bc, $4101                                  ; $55a6: $01 $01 $41
    ld h, c                                       ; $55a9: $61
    ld bc, $0101                                  ; $55aa: $01 $01 $01
    ld bc, $0101                                  ; $55ad: $01 $01 $01
    ld bc, $0101                                  ; $55b0: $01 $01 $01
    ld bc, $0101                                  ; $55b3: $01 $01 $01
    ld d, $d1                                     ; $55b6: $16 $d1
    jp c, Jump_000_19db                           ; $55b8: $da $db $19

    db $dd                                        ; $55bb: $dd
    sbc $df                                       ; $55bc: $de $df
    dec de                                        ; $55be: $1b
    pop hl                                        ; $55bf: $e1
    ld [c], a                                     ; $55c0: $e2
    pop hl                                        ; $55c1: $e1
    ld e, $f1                                     ; $55c2: $1e $f1
    ld a, [c]                                     ; $55c4: $f2
    di                                            ; $55c5: $f3
    ld b, $01                                     ; $55c6: $06 $01
    ld bc, $0601                                  ; $55c8: $01 $01 $06
    ld bc, $0101                                  ; $55cb: $01 $01 $01
    ld b, $01                                     ; $55ce: $06 $01
    ld bc, $0601                                  ; $55d0: $01 $01 $06
    ld bc, $0101                                  ; $55d3: $01 $01 $01
    jr nz, jr_07e_55f9                            ; $55d6: $20 $21

    push af                                       ; $55d8: $f5
    or $23                                        ; $55d9: $f6 $23
    inc h                                         ; $55db: $24
    ld sp, hl                                     ; $55dc: $f9
    ld a, [$2726]                                 ; $55dd: $fa $26 $27
    db $fd                                        ; $55e0: $fd
    cp $42                                        ; $55e1: $fe $42
    ld h, h                                       ; $55e3: $64
    ld l, a                                       ; $55e4: $6f
    ld [hl], b                                    ; $55e5: $70
    ld bc, $0101                                  ; $55e6: $01 $01 $01
    ld b, $01                                     ; $55e9: $06 $01
    ld bc, $0601                                  ; $55eb: $01 $01 $06
    ld bc, $0101                                  ; $55ee: $01 $01 $01
    ld b, $01                                     ; $55f1: $06 $01
    ld bc, $0601                                  ; $55f3: $01 $01 $06
    rst $30                                       ; $55f6: $f7
    ld hl, sp+$05                                 ; $55f7: $f8 $05

jr_07e_55f9:
    ld b, $fb                                     ; $55f9: $06 $fb
    db $fc                                        ; $55fb: $fc
    add hl, bc                                    ; $55fc: $09
    ld a, [bc]                                    ; $55fd: $0a
    rst $38                                       ; $55fe: $ff
    nop                                           ; $55ff: $00
    dec c                                         ; $5600: $0d
    ld c, $34                                     ; $5601: $0e $34
    dec [hl]                                      ; $5603: $35
    ld [hl], $37                                  ; $5604: $36 $37
    ld bc, $0106                                  ; $5606: $01 $06 $01
    ld bc, $0601                                  ; $5609: $01 $01 $06
    ld bc, $0101                                  ; $560c: $01 $01 $01
    ld b, $01                                     ; $560f: $06 $01
    ld bc, $0601                                  ; $5611: $01 $01 $06
    ld bc, $0701                                  ; $5614: $01 $01 $07
    ld [$201f], sp                                ; $5617: $08 $1f $20
    dec bc                                        ; $561a: $0b
    inc c                                         ; $561b: $0c
    ld [hl+], a                                   ; $561c: $22
    inc hl                                        ; $561d: $23
    rrca                                          ; $561e: $0f
    db $10                                        ; $561f: $10
    dec h                                         ; $5620: $25
    ld h, $40                                     ; $5621: $26 $40
    ld b, c                                       ; $5623: $41
    dec d                                         ; $5624: $15
    ld b, d                                       ; $5625: $42
    ld bc, $0101                                  ; $5626: $01 $01 $01
    ld bc, $0101                                  ; $5629: $01 $01 $01
    ld bc, $0101                                  ; $562c: $01 $01 $01
    ld bc, $0101                                  ; $562f: $01 $01 $01
    ld bc, $0101                                  ; $5632: $01 $01 $01
    ld bc, $f521                                  ; $5635: $01 $21 $f5
    or $f7                                        ; $5638: $f6 $f7
    inc h                                         ; $563a: $24
    ld sp, hl                                     ; $563b: $f9
    ld a, [$27fb]                                 ; $563c: $fa $fb $27
    db $fd                                        ; $563f: $fd
    cp $ff                                        ; $5640: $fe $ff
    ld h, h                                       ; $5642: $64
    ld l, a                                       ; $5643: $6f
    ld [hl], b                                    ; $5644: $70
    inc [hl]                                      ; $5645: $34
    ld b, $01                                     ; $5646: $06 $01
    ld bc, $0601                                  ; $5648: $01 $01 $06
    ld bc, $0101                                  ; $564b: $01 $01 $01
    ld b, $01                                     ; $564e: $06 $01
    ld bc, $0601                                  ; $5650: $01 $01 $06

Jump_07e_5653:
    ld bc, $0101                                  ; $5653: $01 $01 $01
    xor c                                         ; $5656: $a9
    xor d                                         ; $5657: $aa
    ld [hl], c                                    ; $5658: $71
    ld [hl], d                                    ; $5659: $72
    ld c, d                                       ; $565a: $4a
    ld h, [hl]                                    ; $565b: $66
    ld [hl], e                                    ; $565c: $73
    inc sp                                        ; $565d: $33
    ld h, a                                       ; $565e: $67
    ld c, h                                       ; $565f: $4c
    ld d, b                                       ; $5660: $50
    ld d, c                                       ; $5661: $51
    push de                                       ; $5662: $d5
    sub $d7                                       ; $5663: $d6 $d7
    ld [de], a                                    ; $5665: $12
    add hl, bc                                    ; $5666: $09
    add hl, bc                                    ; $5667: $09
    ld bc, $0101                                  ; $5668: $01 $01 $01
    ld bc, $0101                                  ; $566b: $01 $01 $01
    ld [bc], a                                    ; $566e: $02
    ld [bc], a                                    ; $566f: $02
    ld [bc], a                                    ; $5670: $02
    ld [bc], a                                    ; $5671: $02
    adc e                                         ; $5672: $8b
    adc e                                         ; $5673: $8b
    adc e                                         ; $5674: $8b
    adc e                                         ; $5675: $8b
    jr c, jr_07e_56b1                             ; $5676: $38 $39

    ld a, [hl-]                                   ; $5678: $3a
    dec sp                                        ; $5679: $3b
    inc a                                         ; $567a: $3c
    dec a                                         ; $567b: $3d
    ld a, $3f                                     ; $567c: $3e $3f
    ld d, d                                       ; $567e: $52
    ld e, l                                       ; $567f: $5d
    ld h, a                                       ; $5680: $67
    ld c, h                                       ; $5681: $4c
    inc de                                        ; $5682: $13
    inc d                                         ; $5683: $14
    push bc                                       ; $5684: $c5
    add $01                                       ; $5685: $c6 $01
    ld b, $01                                     ; $5687: $06 $01
    ld bc, $0101                                  ; $5689: $01 $01 $01
    ld bc, $0201                                  ; $568c: $01 $01 $02
    ld [bc], a                                    ; $568f: $02
    ld [bc], a                                    ; $5690: $02
    ld [bc], a                                    ; $5691: $02
    adc e                                         ; $5692: $8b
    adc e                                         ; $5693: $8b
    adc e                                         ; $5694: $8b
    adc e                                         ; $5695: $8b
    ld b, e                                       ; $5696: $43
    ld b, h                                       ; $5697: $44
    ld b, l                                       ; $5698: $45
    xor c                                         ; $5699: $a9
    ld b, a                                       ; $569a: $47
    ld c, b                                       ; $569b: $48
    ld c, c                                       ; $569c: $49
    ld c, d                                       ; $569d: $4a
    ld d, b                                       ; $569e: $50
    ld d, c                                       ; $569f: $51
    ld d, d                                       ; $56a0: $52
    ld e, l                                       ; $56a1: $5d
    rst $00                                       ; $56a2: $c7
    call nc, $d6d5                                ; $56a3: $d4 $d5 $d6
    ld bc, $0101                                  ; $56a6: $01 $01 $01
    add hl, bc                                    ; $56a9: $09
    ld bc, $0101                                  ; $56aa: $01 $01 $01
    ld bc, $0202                                  ; $56ad: $01 $02 $02
    ld [bc], a                                    ; $56b0: $02

jr_07e_56b1:
    ld [bc], a                                    ; $56b1: $02
    adc e                                         ; $56b2: $8b
    adc e                                         ; $56b3: $8b
    adc e                                         ; $56b4: $8b
    adc e                                         ; $56b5: $8b
    xor d                                         ; $56b6: $aa
    ld [hl], c                                    ; $56b7: $71
    ld [hl], d                                    ; $56b8: $72
    jr c, jr_07e_5721                             ; $56b9: $38 $66

    ld [hl], e                                    ; $56bb: $73
    inc sp                                        ; $56bc: $33
    inc a                                         ; $56bd: $3c
    ld h, a                                       ; $56be: $67
    ld c, h                                       ; $56bf: $4c
    ld d, b                                       ; $56c0: $50
    ld d, c                                       ; $56c1: $51
    rst $10                                       ; $56c2: $d7
    ld [de], a                                    ; $56c3: $12
    inc de                                        ; $56c4: $13
    inc d                                         ; $56c5: $14
    ld c, $01                                     ; $56c6: $0e $01
    ld bc, $0601                                  ; $56c8: $01 $01 $06
    ld bc, $0101                                  ; $56cb: $01 $01 $01
    ld [bc], a                                    ; $56ce: $02
    ld [bc], a                                    ; $56cf: $02
    ld [bc], a                                    ; $56d0: $02
    ld [bc], a                                    ; $56d1: $02
    adc e                                         ; $56d2: $8b
    adc e                                         ; $56d3: $8b
    adc e                                         ; $56d4: $8b
    adc e                                         ; $56d5: $8b
    reti                                          ; $56d6: $d9


    jp c, $15db                                   ; $56d7: $da $db $15

    db $dd                                        ; $56da: $dd
    sbc $df                                       ; $56db: $de $df
    cp a                                          ; $56dd: $bf
    pop hl                                        ; $56de: $e1
    ld [c], a                                     ; $56df: $e2
    pop bc                                        ; $56e0: $c1
    jp nz, $0706                                  ; $56e1: $c2 $06 $07

    add sp, -$17                                  ; $56e4: $e8 $e9
    adc e                                         ; $56e6: $8b
    adc l                                         ; $56e7: $8d
    adc l                                         ; $56e8: $8d
    adc e                                         ; $56e9: $8b
    adc l                                         ; $56ea: $8d
    adc e                                         ; $56eb: $8b
    adc e                                         ; $56ec: $8b
    adc e                                         ; $56ed: $8b
    adc l                                         ; $56ee: $8d
    adc e                                         ; $56ef: $8b
    adc e                                         ; $56f0: $8b
    adc e                                         ; $56f1: $8b
    adc e                                         ; $56f2: $8b
    adc e                                         ; $56f3: $8b
    adc e                                         ; $56f4: $8b
    adc l                                         ; $56f5: $8d
    ld d, $c8                                     ; $56f6: $16 $c8
    ret                                           ; $56f8: $c9


    jp z, $ccc0                                   ; $56f9: $ca $c0 $cc

    call $c3ce                                    ; $56fc: $cd $ce $c3
    ret nc                                        ; $56ff: $d0

    pop de                                        ; $5700: $d1
    jp nc, $f7ea                                  ; $5701: $d2 $ea $f7

    ld hl, sp-$07                                 ; $5704: $f8 $f9
    adc e                                         ; $5706: $8b
    adc e                                         ; $5707: $8b
    adc e                                         ; $5708: $8b
    adc e                                         ; $5709: $8b
    adc e                                         ; $570a: $8b
    adc e                                         ; $570b: $8b
    adc e                                         ; $570c: $8b
    adc e                                         ; $570d: $8b
    adc e                                         ; $570e: $8b
    adc e                                         ; $570f: $8b
    adc e                                         ; $5710: $8b
    adc e                                         ; $5711: $8b
    adc e                                         ; $5712: $8b
    adc e                                         ; $5713: $8b
    adc e                                         ; $5714: $8b
    adc e                                         ; $5715: $8b
    set 3, b                                      ; $5716: $cb $d8
    reti                                          ; $5718: $d9


    jp c, $dccf                                   ; $5719: $da $cf $dc

    db $dd                                        ; $571c: $dd
    sbc $d3                                       ; $571d: $de $d3
    ldh [$e1], a                                  ; $571f: $e0 $e1

jr_07e_5721:
    ld [c], a                                     ; $5721: $e2
    ld a, [$0605]                                 ; $5722: $fa $05 $06
    rlca                                          ; $5725: $07
    adc e                                         ; $5726: $8b
    adc e                                         ; $5727: $8b
    adc e                                         ; $5728: $8b
    adc l                                         ; $5729: $8d
    adc e                                         ; $572a: $8b
    adc e                                         ; $572b: $8b
    adc e                                         ; $572c: $8b
    adc l                                         ; $572d: $8d
    adc e                                         ; $572e: $8b
    adc e                                         ; $572f: $8b
    adc l                                         ; $5730: $8d
    adc l                                         ; $5731: $8d
    adc l                                         ; $5732: $8d
    adc l                                         ; $5733: $8d
    adc e                                         ; $5734: $8b
    adc e                                         ; $5735: $8b
    db $db                                        ; $5736: $db
    dec d                                         ; $5737: $15
    ld d, $c8                                     ; $5738: $16 $c8
    rst $18                                       ; $573a: $df
    cp a                                          ; $573b: $bf
    ret nz                                        ; $573c: $c0

    call z, $c2c1                                 ; $573d: $cc $c1 $c2
    jp $e8d0                                      ; $5740: $c3 $d0 $e8


    jp hl                                         ; $5743: $e9


    ld [$8bf7], a                                 ; $5744: $ea $f7 $8b
    adc e                                         ; $5747: $8b
    adc e                                         ; $5748: $8b
    adc e                                         ; $5749: $8b
    adc e                                         ; $574a: $8b
    adc e                                         ; $574b: $8b
    adc e                                         ; $574c: $8b
    adc e                                         ; $574d: $8b
    adc e                                         ; $574e: $8b
    adc e                                         ; $574f: $8b
    adc e                                         ; $5750: $8b
    adc e                                         ; $5751: $8b
    adc e                                         ; $5752: $8b
    adc e                                         ; $5753: $8b
    adc e                                         ; $5754: $8b
    adc e                                         ; $5755: $8b
    call c, $e7d6                                 ; $5756: $dc $d6 $e7
    add sp, -$20                                  ; $5759: $e8 $e0
    ld [$eceb], a                                 ; $575b: $ea $eb $ec
    db $e3                                        ; $575e: $e3
    xor $ef                                       ; $575f: $ee $ef
    pop hl                                        ; $5761: $e1
    db $f4                                        ; $5762: $f4
    ld bc, $0302                                  ; $5763: $01 $02 $03
    ld bc, $0101                                  ; $5766: $01 $01 $01
    ld bc, $0101                                  ; $5769: $01 $01 $01
    ld bc, $0101                                  ; $576c: $01 $01 $01
    ld bc, $0101                                  ; $576f: $01 $01 $01
    ld bc, $0101                                  ; $5772: $01 $01 $01
    ld bc, $d1e9                                  ; $5775: $01 $e9 $d1
    ld [hl], l                                    ; $5778: $75
    halt                                          ; $5779: $76
    db $ed                                        ; $577a: $ed
    pop de                                        ; $577b: $d1
    ld [hl], a                                    ; $577c: $77
    ld a, b                                       ; $577d: $78
    ldh a, [$d1]                                  ; $577e: $f0 $d1
    ld c, c                                       ; $5780: $49
    ld c, d                                       ; $5781: $4a
    inc b                                         ; $5782: $04
    ld c, e                                       ; $5783: $4b
    ld c, h                                       ; $5784: $4c
    ld c, l                                       ; $5785: $4d
    ld b, $81                                     ; $5786: $06 $81
    add l                                         ; $5788: $85
    add e                                         ; $5789: $83
    ld b, $81                                     ; $578a: $06 $81
    add e                                         ; $578c: $83
    add e                                         ; $578d: $83
    ld b, $81                                     ; $578e: $06 $81
    adc e                                         ; $5790: $8b
    adc e                                         ; $5791: $8b
    ld b, $89                                     ; $5792: $06 $89
    adc e                                         ; $5794: $8b
    adc e                                         ; $5795: $8b
    xor b                                         ; $5796: $a8
    sub c                                         ; $5797: $91
    xor a                                         ; $5798: $af
    ld c, [hl]                                    ; $5799: $4e
    ld c, [hl]                                    ; $579a: $4e
    sub h                                         ; $579b: $94
    xor h                                         ; $579c: $ac
    xor l                                         ; $579d: $ad
    ld e, e                                       ; $579e: $5b
    ld c, [hl]                                    ; $579f: $4e
    ld h, d                                       ; $57a0: $62
    ld e, e                                       ; $57a1: $5b
    ld c, [hl]                                    ; $57a2: $4e
    add d                                         ; $57a3: $82
    or c                                          ; $57a4: $b1
    ld h, e                                       ; $57a5: $63
    ld a, [bc]                                    ; $57a6: $0a
    ld a, [bc]                                    ; $57a7: $0a
    ld a, [bc]                                    ; $57a8: $0a
    inc b                                         ; $57a9: $04
    ld h, d                                       ; $57aa: $62
    inc c                                         ; $57ab: $0c
    ld a, [bc]                                    ; $57ac: $0a
    inc c                                         ; $57ad: $0c
    ld [bc], a                                    ; $57ae: $02
    inc b                                         ; $57af: $04
    inc b                                         ; $57b0: $04
    ld [bc], a                                    ; $57b1: $02
    ld [bc], a                                    ; $57b2: $02
    ld a, [bc]                                    ; $57b3: $0a
    ld a, [bc]                                    ; $57b4: $0a
    inc b                                         ; $57b5: $04
    ld e, e                                       ; $57b6: $5b
    or c                                          ; $57b7: $b1
    ld c, [hl]                                    ; $57b8: $4e
    ld e, e                                       ; $57b9: $5b
    ld d, h                                       ; $57ba: $54
    ld d, l                                       ; $57bb: $55
    ld c, [hl]                                    ; $57bc: $4e
    ld c, [hl]                                    ; $57bd: $4e
    ld e, b                                       ; $57be: $58
    ld e, c                                       ; $57bf: $59
    ld h, b                                       ; $57c0: $60
    ld h, c                                       ; $57c1: $61
    add b                                         ; $57c2: $80
    ld e, h                                       ; $57c3: $5c
    add c                                         ; $57c4: $81
    add d                                         ; $57c5: $82
    ld [bc], a                                    ; $57c6: $02
    ld a, [bc]                                    ; $57c7: $0a
    inc b                                         ; $57c8: $04
    ld [bc], a                                    ; $57c9: $02
    ld [bc], a                                    ; $57ca: $02
    ld [bc], a                                    ; $57cb: $02
    ld h, d                                       ; $57cc: $62
    ld [bc], a                                    ; $57cd: $02
    inc b                                         ; $57ce: $04
    ld [bc], a                                    ; $57cf: $02
    inc b                                         ; $57d0: $04
    ld [bc], a                                    ; $57d1: $02
    inc c                                         ; $57d2: $0c
    inc b                                         ; $57d3: $04
    inc c                                         ; $57d4: $0c
    ld a, [bc]                                    ; $57d5: $0a
    ld hl, sp+$05                                 ; $57d6: $f8 $05
    ld b, $07                                     ; $57d8: $06 $07
    db $fc                                        ; $57da: $fc
    add hl, bc                                    ; $57db: $09
    ld a, [bc]                                    ; $57dc: $0a
    dec bc                                        ; $57dd: $0b
    nop                                           ; $57de: $00
    dec c                                         ; $57df: $0d
    ld c, $0f                                     ; $57e0: $0e $0f
    dec [hl]                                      ; $57e2: $35
    ld [hl], $37                                  ; $57e3: $36 $37
    ld b, b                                       ; $57e5: $40
    ld bc, $0101                                  ; $57e6: $01 $01 $01
    ld bc, $0101                                  ; $57e9: $01 $01 $01
    ld bc, $0101                                  ; $57ec: $01 $01 $01
    ld bc, $0101                                  ; $57ef: $01 $01 $01
    ld bc, $0101                                  ; $57f2: $01 $01 $01
    ld bc, $4e08                                  ; $57f5: $01 $08 $4e
    ld c, a                                       ; $57f8: $4f
    ld e, [hl]                                    ; $57f9: $5e
    inc c                                         ; $57fa: $0c
    jp nc, Jump_07e_5653                          ; $57fb: $d2 $53 $56

    db $10                                        ; $57fe: $10
    dec h                                         ; $57ff: $25
    ld c, a                                       ; $5800: $4f
    or c                                          ; $5801: $b1
    ld b, c                                       ; $5802: $41
    or d                                          ; $5803: $b2
    or e                                          ; $5804: $b3
    ld d, l                                       ; $5805: $55
    ld b, $89                                     ; $5806: $06 $89
    adc e                                         ; $5808: $8b
    add e                                         ; $5809: $83
    ld b, $01                                     ; $580a: $06 $01
    ld [bc], a                                    ; $580c: $02
    ld [bc], a                                    ; $580d: $02
    ld b, $01                                     ; $580e: $06 $01
    add e                                         ; $5810: $83
    ld a, [bc]                                    ; $5811: $0a
    ld b, $09                                     ; $5812: $06 $09
    ld a, [bc]                                    ; $5814: $0a
    inc b                                         ; $5815: $04
    add l                                         ; $5816: $85
    ld c, [hl]                                    ; $5817: $4e
    xor e                                         ; $5818: $ab
    ld a, l                                       ; $5819: $7d
    ld e, e                                       ; $581a: $5b
    and l                                         ; $581b: $a5
    ld a, [hl]                                    ; $581c: $7e
    xor [hl]                                      ; $581d: $ae
    xor b                                         ; $581e: $a8
    sub c                                         ; $581f: $91
    xor a                                         ; $5820: $af
    or b                                          ; $5821: $b0
    sbc a                                         ; $5822: $9f
    sub h                                         ; $5823: $94
    xor h                                         ; $5824: $ac
    xor l                                         ; $5825: $ad
    ld a, [bc]                                    ; $5826: $0a
    ld [bc], a                                    ; $5827: $02
    inc c                                         ; $5828: $0c
    ld [bc], a                                    ; $5829: $02
    ld [bc], a                                    ; $582a: $02
    inc c                                         ; $582b: $0c
    ld [bc], a                                    ; $582c: $02
    ld a, [bc]                                    ; $582d: $0a
    ld a, [bc]                                    ; $582e: $0a
    ld a, [bc]                                    ; $582f: $0a
    ld a, [bc]                                    ; $5830: $0a
    inc c                                         ; $5831: $0c
    ld a, [bc]                                    ; $5832: $0a
    ld a, [bc]                                    ; $5833: $0a
    inc c                                         ; $5834: $0c
    ld a, [bc]                                    ; $5835: $0a
    add e                                         ; $5836: $83
    add h                                         ; $5837: $84
    add l                                         ; $5838: $85
    add [hl]                                      ; $5839: $86
    and e                                         ; $583a: $a3
    and h                                         ; $583b: $a4
    and d                                         ; $583c: $a2
    and l                                         ; $583d: $a5
    and [hl]                                      ; $583e: $a6
    or c                                          ; $583f: $b1
    xor b                                         ; $5840: $a8
    sub c                                         ; $5841: $91
    ld c, [hl]                                    ; $5842: $4e
    ld d, l                                       ; $5843: $55
    sbc a                                         ; $5844: $9f
    sub h                                         ; $5845: $94
    ld a, [bc]                                    ; $5846: $0a
    ld a, [bc]                                    ; $5847: $0a
    ld a, [bc]                                    ; $5848: $0a
    ld a, [bc]                                    ; $5849: $0a
    ld a, [bc]                                    ; $584a: $0a
    ld a, [bc]                                    ; $584b: $0a
    inc c                                         ; $584c: $0c
    ld a, [bc]                                    ; $584d: $0a
    ld a, [bc]                                    ; $584e: $0a
    inc c                                         ; $584f: $0c
    ld a, [bc]                                    ; $5850: $0a
    ld a, [bc]                                    ; $5851: $0a
    ld [bc], a                                    ; $5852: $02
    inc b                                         ; $5853: $04
    ld a, [bc]                                    ; $5854: $0a
    ld a, [bc]                                    ; $5855: $0a
    add hl, sp                                    ; $5856: $39

Jump_07e_5857:
    ld a, [hl-]                                   ; $5857: $3a
    dec sp                                        ; $5858: $3b
    ld b, e                                       ; $5859: $43
    dec a                                         ; $585a: $3d
    ld a, $3f                                     ; $585b: $3e $3f
    ld b, a                                       ; $585d: $47
    ld d, d                                       ; $585e: $52
    ld e, l                                       ; $585f: $5d
    ld h, a                                       ; $5860: $67
    ld d, d                                       ; $5861: $52
    push bc                                       ; $5862: $c5
    add $c7                                       ; $5863: $c6 $c7
    call nc, $0101                                ; $5865: $d4 $01 $01
    ld bc, $0101                                  ; $5868: $01 $01 $01
    ld bc, $0101                                  ; $586b: $01 $01 $01
    ld [bc], a                                    ; $586e: $02
    ld [bc], a                                    ; $586f: $02
    ld [bc], a                                    ; $5870: $02
    ld [bc], a                                    ; $5871: $02
    adc e                                         ; $5872: $8b
    adc e                                         ; $5873: $8b
    adc e                                         ; $5874: $8b
    adc e                                         ; $5875: $8b
    ld b, h                                       ; $5876: $44
    ld b, l                                       ; $5877: $45
    or h                                          ; $5878: $b4
    ld e, c                                       ; $5879: $59
    ld c, b                                       ; $587a: $48
    ld c, c                                       ; $587b: $49
    or l                                          ; $587c: $b5
    or c                                          ; $587d: $b1
    ld e, l                                       ; $587e: $5d
    ld h, a                                       ; $587f: $67
    or [hl]                                       ; $5880: $b6
    add h                                         ; $5881: $84
    push de                                       ; $5882: $d5
    rla                                           ; $5883: $17
    ld e, [hl]                                    ; $5884: $5e
    ld d, [hl]                                    ; $5885: $56
    ld b, $01                                     ; $5886: $06 $01
    ld a, [bc]                                    ; $5888: $0a
    inc b                                         ; $5889: $04
    ld bc, $0a01                                  ; $588a: $01 $01 $0a
    ld a, [bc]                                    ; $588d: $0a
    ld [bc], a                                    ; $588e: $02
    ld [bc], a                                    ; $588f: $02
    ld a, [bc]                                    ; $5890: $0a
    ld a, [bc]                                    ; $5891: $0a
    adc e                                         ; $5892: $8b
    adc e                                         ; $5893: $8b
    add e                                         ; $5894: $83
    ld [bc], a                                    ; $5895: $02
    ld h, b                                       ; $5896: $60
    ld h, c                                       ; $5897: $61
    ld h, d                                       ; $5898: $62
    ld e, e                                       ; $5899: $5b
    add c                                         ; $589a: $81
    add d                                         ; $589b: $82
    ld e, d                                       ; $589c: $5a
    ld h, e                                       ; $589d: $63
    add l                                         ; $589e: $85
    ld c, [hl]                                    ; $589f: $4e
    ld d, e                                       ; $58a0: $53
    ld a, l                                       ; $58a1: $7d
    ld e, e                                       ; $58a2: $5b
    ld c, [hl]                                    ; $58a3: $4e
    ld a, [hl]                                    ; $58a4: $7e
    xor [hl]                                      ; $58a5: $ae
    inc b                                         ; $58a6: $04
    inc b                                         ; $58a7: $04
    inc b                                         ; $58a8: $04
    ld [bc], a                                    ; $58a9: $02
    ld a, [bc]                                    ; $58aa: $0a
    ld a, [bc]                                    ; $58ab: $0a
    ld [bc], a                                    ; $58ac: $02
    ld [bc], a                                    ; $58ad: $02
    ld a, [bc]                                    ; $58ae: $0a
    ld [bc], a                                    ; $58af: $02
    ld [bc], a                                    ; $58b0: $02
    ld [bc], a                                    ; $58b1: $02
    inc b                                         ; $58b2: $04
    ld [bc], a                                    ; $58b3: $02
    inc b                                         ; $58b4: $04
    inc c                                         ; $58b5: $0c
    ld e, b                                       ; $58b6: $58
    ld e, c                                       ; $58b7: $59
    ld h, b                                       ; $58b8: $60
    ld h, c                                       ; $58b9: $61
    ld e, e                                       ; $58ba: $5b
    or c                                          ; $58bb: $b1
    add c                                         ; $58bc: $81
    add d                                         ; $58bd: $82
    ld c, [hl]                                    ; $58be: $4e
    add h                                         ; $58bf: $84
    add l                                         ; $58c0: $85
    add [hl]                                      ; $58c1: $86
    and e                                         ; $58c2: $a3
    and h                                         ; $58c3: $a4
    and d                                         ; $58c4: $a2
    and l                                         ; $58c5: $a5
    ld [bc], a                                    ; $58c6: $02
    ld [bc], a                                    ; $58c7: $02
    ld [bc], a                                    ; $58c8: $02
    inc b                                         ; $58c9: $04
    inc b                                         ; $58ca: $04
    inc c                                         ; $58cb: $0c
    ld a, [bc]                                    ; $58cc: $0a
    ld a, [bc]                                    ; $58cd: $0a
    ld [bc], a                                    ; $58ce: $02
    ld a, [bc]                                    ; $58cf: $0a
    ld a, [bc]                                    ; $58d0: $0a
    ld a, [bc]                                    ; $58d1: $0a
    ld a, [bc]                                    ; $58d2: $0a
    inc c                                         ; $58d3: $0c
    ld a, [bc]                                    ; $58d4: $0a
    inc c                                         ; $58d5: $0c
    ret                                           ; $58d6: $c9


    jp z, $d8cb                                   ; $58d7: $ca $cb $d8

    call $cfce                                    ; $58da: $cd $ce $cf
    call c, $d2d1                                 ; $58dd: $dc $d1 $d2
    db $d3                                        ; $58e0: $d3
    ldh [$f8], a                                  ; $58e1: $e0 $f8
    ld sp, hl                                     ; $58e3: $f9
    ld a, [$8b05]                                 ; $58e4: $fa $05 $8b
    adc e                                         ; $58e7: $8b
    adc e                                         ; $58e8: $8b
    adc e                                         ; $58e9: $8b
    adc e                                         ; $58ea: $8b
    adc l                                         ; $58eb: $8d
    adc e                                         ; $58ec: $8b
    adc e                                         ; $58ed: $8b
    adc l                                         ; $58ee: $8d
    adc e                                         ; $58ef: $8b
    adc e                                         ; $58f0: $8b
    adc e                                         ; $58f1: $8b
    adc l                                         ; $58f2: $8d
    adc e                                         ; $58f3: $8b
    adc e                                         ; $58f4: $8b
    adc e                                         ; $58f5: $8b
    reti                                          ; $58f6: $d9


    db $e3                                        ; $58f7: $e3
    ld e, e                                       ; $58f8: $5b
    and a                                         ; $58f9: $a7
    db $dd                                        ; $58fa: $dd
    ld d, b                                       ; $58fb: $50
    ld d, h                                       ; $58fc: $54
    ld d, l                                       ; $58fd: $55
    pop hl                                        ; $58fe: $e1
    ld d, c                                       ; $58ff: $51
    ld c, [hl]                                    ; $5900: $4e
    ld e, c                                       ; $5901: $59
    ld d, d                                       ; $5902: $52
    ld c, d                                       ; $5903: $4a
    add b                                         ; $5904: $80
    ld e, h                                       ; $5905: $5c
    adc e                                         ; $5906: $8b
    adc e                                         ; $5907: $8b
    ld [bc], a                                    ; $5908: $02
    ld a, [bc]                                    ; $5909: $0a
    adc e                                         ; $590a: $8b
    adc e                                         ; $590b: $8b
    ld [bc], a                                    ; $590c: $02
    ld [bc], a                                    ; $590d: $02
    adc e                                         ; $590e: $8b
    adc e                                         ; $590f: $8b
    ld [bc], a                                    ; $5910: $02
    ld [bc], a                                    ; $5911: $02
    adc e                                         ; $5912: $8b
    adc e                                         ; $5913: $8b
    inc c                                         ; $5914: $0c
    inc b                                         ; $5915: $04
    xor b                                         ; $5916: $a8
    sub c                                         ; $5917: $91
    xor a                                         ; $5918: $af
    or b                                          ; $5919: $b0
    ld c, [hl]                                    ; $591a: $4e
    sub h                                         ; $591b: $94
    xor h                                         ; $591c: $ac
    xor l                                         ; $591d: $ad
    ld h, b                                       ; $591e: $60
    ld h, c                                       ; $591f: $61
    ld h, d                                       ; $5920: $62
    ld d, a                                       ; $5921: $57
    add c                                         ; $5922: $81
    add d                                         ; $5923: $82
    ld e, d                                       ; $5924: $5a
    ld h, e                                       ; $5925: $63
    inc c                                         ; $5926: $0c
    ld a, [bc]                                    ; $5927: $0a
    inc c                                         ; $5928: $0c
    ld a, [bc]                                    ; $5929: $0a
    ld h, h                                       ; $592a: $64
    ld a, [bc]                                    ; $592b: $0a
    ld a, [bc]                                    ; $592c: $0a
    inc c                                         ; $592d: $0c
    ld [bc], a                                    ; $592e: $02
    inc b                                         ; $592f: $04
    inc b                                         ; $5930: $04
    ld [bc], a                                    ; $5931: $02
    inc c                                         ; $5932: $0c
    ld a, [bc]                                    ; $5933: $0a
    inc b                                         ; $5934: $04
    ld [bc], a                                    ; $5935: $02
    ld e, e                                       ; $5936: $5b
    or c                                          ; $5937: $b1
    xor b                                         ; $5938: $a8
    sub c                                         ; $5939: $91
    ld c, [hl]                                    ; $593a: $4e
    ld d, l                                       ; $593b: $55
    sbc a                                         ; $593c: $9f
    sub h                                         ; $593d: $94
    ld e, b                                       ; $593e: $58
    ld e, c                                       ; $593f: $59
    ld h, b                                       ; $5940: $60
    ld h, c                                       ; $5941: $61
    add b                                         ; $5942: $80
    ld e, h                                       ; $5943: $5c
    add c                                         ; $5944: $81
    ld e, e                                       ; $5945: $5b
    inc b                                         ; $5946: $04
    ld a, [bc]                                    ; $5947: $0a
    ld a, [bc]                                    ; $5948: $0a
    inc c                                         ; $5949: $0c
    ld [bc], a                                    ; $594a: $02
    ld [bc], a                                    ; $594b: $02
    ld a, [bc]                                    ; $594c: $0a
    inc c                                         ; $594d: $0c
    ld [bc], a                                    ; $594e: $02
    ld [bc], a                                    ; $594f: $02
    inc b                                         ; $5950: $04
    ld [bc], a                                    ; $5951: $02
    inc c                                         ; $5952: $0c
    inc b                                         ; $5953: $04
    ld a, [bc]                                    ; $5954: $0a
    ld [bc], a                                    ; $5955: $02
    or c                                          ; $5956: $b1
    ld a, d                                       ; $5957: $7a
    ld a, c                                       ; $5958: $79
    db $eb                                        ; $5959: $eb
    ld d, e                                       ; $595a: $53
    push hl                                       ; $595b: $e5
    and $ef                                       ; $595c: $e6 $ef
    ld d, [hl]                                    ; $595e: $56
    adc h                                         ; $595f: $8c
    adc e                                         ; $5960: $8b
    di                                            ; $5961: $f3
    ld e, d                                       ; $5962: $5a
    adc [hl]                                      ; $5963: $8e
    adc l                                         ; $5964: $8d
    pop de                                        ; $5965: $d1
    ld a, [bc]                                    ; $5966: $0a
    add e                                         ; $5967: $83
    add e                                         ; $5968: $83
    adc e                                         ; $5969: $8b
    ld [bc], a                                    ; $596a: $02
    adc e                                         ; $596b: $8b
    adc e                                         ; $596c: $8b
    adc e                                         ; $596d: $8b
    ld [bc], a                                    ; $596e: $02
    adc e                                         ; $596f: $8b
    adc e                                         ; $5970: $8b
    adc l                                         ; $5971: $8d
    ld [bc], a                                    ; $5972: $02
    adc e                                         ; $5973: $8b
    adc l                                         ; $5974: $8d
    add e                                         ; $5975: $83
    db $ec                                        ; $5976: $ec
    db $ed                                        ; $5977: $ed
    xor $fb                                       ; $5978: $ee $fb
    ldh a, [$f1]                                  ; $597a: $f0 $f1
    ld a, [c]                                     ; $597c: $f2
    rst $38                                       ; $597d: $ff
    db $f4                                        ; $597e: $f4
    push af                                       ; $597f: $f5
    or $03                                        ; $5980: $f6 $03
    rst $10                                       ; $5982: $d7
    db $10                                        ; $5983: $10
    ld de, $8bd1                                  ; $5984: $11 $d1 $8b
    adc l                                         ; $5987: $8d
    adc l                                         ; $5988: $8d
    adc l                                         ; $5989: $8d
    adc e                                         ; $598a: $8b
    adc e                                         ; $598b: $8b
    adc e                                         ; $598c: $8b
    adc l                                         ; $598d: $8d
    adc e                                         ; $598e: $8b
    adc e                                         ; $598f: $8b
    adc e                                         ; $5990: $8b
    adc e                                         ; $5991: $8b
    add e                                         ; $5992: $83
    adc e                                         ; $5993: $8b
    adc e                                         ; $5994: $8b
    add e                                         ; $5995: $83
    db $fc                                        ; $5996: $fc
    db $fd                                        ; $5997: $fd
    cp $08                                        ; $5998: $fe $08
    nop                                           ; $599a: $00
    ld bc, $0b02                                  ; $599b: $01 $02 $0b
    pop de                                        ; $599e: $d1
    inc b                                         ; $599f: $04
    inc d                                         ; $59a0: $14
    ld c, $d1                                     ; $59a1: $0e $d1
    pop de                                        ; $59a3: $d1
    pop de                                        ; $59a4: $d1
    pop de                                        ; $59a5: $d1
    adc l                                         ; $59a6: $8d
    adc l                                         ; $59a7: $8d
    adc e                                         ; $59a8: $8b
    adc l                                         ; $59a9: $8d
    adc l                                         ; $59aa: $8d
    adc l                                         ; $59ab: $8d
    adc l                                         ; $59ac: $8d
    adc l                                         ; $59ad: $8d
    add e                                         ; $59ae: $83
    adc e                                         ; $59af: $8b
    add e                                         ; $59b0: $83
    adc e                                         ; $59b1: $8b
    add e                                         ; $59b2: $83
    add l                                         ; $59b3: $85
    add e                                         ; $59b4: $83
    add e                                         ; $59b5: $83
    add hl, bc                                    ; $59b6: $09
    ld a, [bc]                                    ; $59b7: $0a
    db $ec                                        ; $59b8: $ec
    db $ed                                        ; $59b9: $ed
    inc c                                         ; $59ba: $0c
    dec c                                         ; $59bb: $0d
    ldh a, [$f1]                                  ; $59bc: $f0 $f1
    rrca                                          ; $59be: $0f
    di                                            ; $59bf: $f3
    db $f4                                        ; $59c0: $f4
    ld d, e                                       ; $59c1: $53
    pop de                                        ; $59c2: $d1
    pop de                                        ; $59c3: $d1
    rst $10                                       ; $59c4: $d7
    pop de                                        ; $59c5: $d1
    adc l                                         ; $59c6: $8d
    adc e                                         ; $59c7: $8b
    adc l                                         ; $59c8: $8d
    adc l                                         ; $59c9: $8d
    adc e                                         ; $59ca: $8b
    adc e                                         ; $59cb: $8b
    adc l                                         ; $59cc: $8d
    adc e                                         ; $59cd: $8b
    adc e                                         ; $59ce: $8b
    adc l                                         ; $59cf: $8d
    adc l                                         ; $59d0: $8d

Jump_07e_59d1:
    adc l                                         ; $59d1: $8d
    add l                                         ; $59d2: $85
    add l                                         ; $59d3: $85
    add l                                         ; $59d4: $85
    add e                                         ; $59d5: $83
    xor e                                         ; $59d6: $ab
    sub b                                         ; $59d7: $90
    adc a                                         ; $59d8: $8f
    pop de                                        ; $59d9: $d1
    ld d, [hl]                                    ; $59da: $56
    ld l, [hl]                                    ; $59db: $6e
    ld l, l                                       ; $59dc: $6d
    pop de                                        ; $59dd: $d1
    or c                                          ; $59de: $b1
    halt                                          ; $59df: $76
    ld [hl], l                                    ; $59e0: $75
    pop de                                        ; $59e1: $d1
    ld d, e                                       ; $59e2: $53
    ld a, b                                       ; $59e3: $78
    ld [hl], a                                    ; $59e4: $77
    pop de                                        ; $59e5: $d1
    ld a, [bc]                                    ; $59e6: $0a
    adc e                                         ; $59e7: $8b
    adc l                                         ; $59e8: $8d
    add c                                         ; $59e9: $81
    ld [bc], a                                    ; $59ea: $02
    add l                                         ; $59eb: $85
    and l                                         ; $59ec: $a5
    add c                                         ; $59ed: $81
    ld a, [bc]                                    ; $59ee: $0a
    and e                                         ; $59ef: $a3
    and e                                         ; $59f0: $a3
    add c                                         ; $59f1: $81
    inc b                                         ; $59f2: $04
    and e                                         ; $59f3: $a3
    and e                                         ; $59f4: $a3
    add c                                         ; $59f5: $81
    pop de                                        ; $59f6: $d1
    pop de                                        ; $59f7: $d1
    pop de                                        ; $59f8: $d1
    pop de                                        ; $59f9: $d1
    pop de                                        ; $59fa: $d1
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
    add l                                         ; $5a06: $85
    add c                                         ; $5a07: $81
    add c                                         ; $5a08: $81
    add c                                         ; $5a09: $81
    ld bc, $0101                                  ; $5a0a: $01 $01 $01
    ld bc, $0105                                  ; $5a0d: $01 $05 $01
    ld bc, $0101                                  ; $5a10: $01 $01 $01
    dec b                                         ; $5a13: $05
    ld bc, $d105                                  ; $5a14: $01 $05 $d1
    pop de                                        ; $5a17: $d1
    pop de                                        ; $5a18: $d1
    pop de                                        ; $5a19: $d1
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
    add c                                         ; $5a26: $81
    add l                                         ; $5a27: $85
    add c                                         ; $5a28: $81
    add c                                         ; $5a29: $81
    ld bc, $0101                                  ; $5a2a: $01 $01 $01
    ld bc, $0101                                  ; $5a2d: $01 $01 $01
    dec b                                         ; $5a30: $05
    ld bc, $0101                                  ; $5a31: $01 $01 $01
    ld bc, $d101                                  ; $5a34: $01 $01 $d1
    pop de                                        ; $5a37: $d1
    pop de                                        ; $5a38: $d1
    pop de                                        ; $5a39: $d1
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
    add l                                         ; $5a46: $85
    add c                                         ; $5a47: $81
    add c                                         ; $5a48: $81
    add c                                         ; $5a49: $81
    ld bc, $0101                                  ; $5a4a: $01 $01 $01
    ld bc, $0101                                  ; $5a4d: $01 $01 $01
    ld bc, $0101                                  ; $5a50: $01 $01 $01
    ld bc, $0101                                  ; $5a53: $01 $01 $01
    ld d, [hl]                                    ; $5a56: $56
    ld a, d                                       ; $5a57: $7a
    ld a, c                                       ; $5a58: $79

Jump_07e_5a59:
    pop de                                        ; $5a59: $d1
    ld e, d                                       ; $5a5a: $5a
    ld a, h                                       ; $5a5b: $7c
    ld a, e                                       ; $5a5c: $7b
    pop de                                        ; $5a5d: $d1
    xor e                                         ; $5a5e: $ab
    adc h                                         ; $5a5f: $8c
    adc e                                         ; $5a60: $8b
    pop de                                        ; $5a61: $d1
    ld a, [hl]                                    ; $5a62: $7e
    adc [hl]                                      ; $5a63: $8e
    adc l                                         ; $5a64: $8d
    pop de                                        ; $5a65: $d1
    inc b                                         ; $5a66: $04
    add e                                         ; $5a67: $83
    add l                                         ; $5a68: $85
    add c                                         ; $5a69: $81
    ld [bc], a                                    ; $5a6a: $02
    add e                                         ; $5a6b: $83
    add e                                         ; $5a6c: $83
    add l                                         ; $5a6d: $85
    ld a, [bc]                                    ; $5a6e: $0a
    adc e                                         ; $5a6f: $8b
    adc l                                         ; $5a70: $8d
    add l                                         ; $5a71: $85
    ld [bc], a                                    ; $5a72: $02
    adc e                                         ; $5a73: $8b
    adc l                                         ; $5a74: $8d
    add l                                         ; $5a75: $85
    or c                                          ; $5a76: $b1
    sub b                                         ; $5a77: $90
    adc a                                         ; $5a78: $8f
    pop de                                        ; $5a79: $d1
    ld d, e                                       ; $5a7a: $53
    ld l, [hl]                                    ; $5a7b: $6e
    ld l, l                                       ; $5a7c: $6d
    pop de                                        ; $5a7d: $d1
    ld d, [hl]                                    ; $5a7e: $56
    halt                                          ; $5a7f: $76
    ld [hl], l                                    ; $5a80: $75
    pop de                                        ; $5a81: $d1
    ld e, d                                       ; $5a82: $5a
    ld a, b                                       ; $5a83: $78
    ld [hl], a                                    ; $5a84: $77
    pop de                                        ; $5a85: $d1
    ld a, [bc]                                    ; $5a86: $0a
    adc e                                         ; $5a87: $8b
    adc e                                         ; $5a88: $8b
    add l                                         ; $5a89: $85
    ld [bc], a                                    ; $5a8a: $02
    add l                                         ; $5a8b: $85
    and e                                         ; $5a8c: $a3
    add c                                         ; $5a8d: $81
    ld [bc], a                                    ; $5a8e: $02
    and l                                         ; $5a8f: $a5
    and l                                         ; $5a90: $a5
    add c                                         ; $5a91: $81
    ld [bc], a                                    ; $5a92: $02
    and e                                         ; $5a93: $a3
    and l                                         ; $5a94: $a5
    add l                                         ; $5a95: $85
    xor $1c                                       ; $5a96: $ee $1c
    pop de                                        ; $5a98: $d1
    pop de                                        ; $5a99: $d1
    ld d, h                                       ; $5a9a: $54
    ld d, l                                       ; $5a9b: $55
    pop de                                        ; $5a9c: $d1
    pop de                                        ; $5a9d: $d1
    pop de                                        ; $5a9e: $d1
    pop de                                        ; $5a9f: $d1
    pop de                                        ; $5aa0: $d1
    pop de                                        ; $5aa1: $d1
    pop de                                        ; $5aa2: $d1
    pop de                                        ; $5aa3: $d1
    pop de                                        ; $5aa4: $d1
    pop de                                        ; $5aa5: $d1
    adc e                                         ; $5aa6: $8b
    adc l                                         ; $5aa7: $8d
    add e                                         ; $5aa8: $83
    add e                                         ; $5aa9: $83
    adc e                                         ; $5aaa: $8b
    adc l                                         ; $5aab: $8d
    add e                                         ; $5aac: $83
    add e                                         ; $5aad: $83
    add e                                         ; $5aae: $83
    add l                                         ; $5aaf: $85
    add e                                         ; $5ab0: $83
    add e                                         ; $5ab1: $83
    add e                                         ; $5ab2: $83
    add e                                         ; $5ab3: $83
    add l                                         ; $5ab4: $85
    add e                                         ; $5ab5: $83
    pop de                                        ; $5ab6: $d1
    pop de                                        ; $5ab7: $d1
    pop de                                        ; $5ab8: $d1
    pop de                                        ; $5ab9: $d1
    pop de                                        ; $5aba: $d1
    pop de                                        ; $5abb: $d1
    pop de                                        ; $5abc: $d1
    pop de                                        ; $5abd: $d1
    pop de                                        ; $5abe: $d1
    pop de                                        ; $5abf: $d1
    pop de                                        ; $5ac0: $d1
    pop de                                        ; $5ac1: $d1
    pop de                                        ; $5ac2: $d1
    pop de                                        ; $5ac3: $d1
    pop de                                        ; $5ac4: $d1
    pop de                                        ; $5ac5: $d1
    add c                                         ; $5ac6: $81
    ld bc, $0101                                  ; $5ac7: $01 $01 $01
    add l                                         ; $5aca: $85
    ld bc, $0101                                  ; $5acb: $01 $01 $01
    add c                                         ; $5ace: $81
    ld bc, $0101                                  ; $5acf: $01 $01 $01
    add c                                         ; $5ad2: $81
    ld bc, $0101                                  ; $5ad3: $01 $01 $01
    db $dd                                        ; $5ad6: $dd
    sbc $df                                       ; $5ad7: $de $df
    ldh [$e1], a                                  ; $5ad9: $e0 $e1
    ld [c], a                                     ; $5adb: $e2
    pop hl                                        ; $5adc: $e1
    db $e3                                        ; $5add: $e3
    pop af                                        ; $5ade: $f1
    ld a, [c]                                     ; $5adf: $f2
    di                                            ; $5ae0: $f3
    db $f4                                        ; $5ae1: $f4
    push af                                       ; $5ae2: $f5
    or $f7                                        ; $5ae3: $f6 $f7
    ld hl, sp+$01                                 ; $5ae5: $f8 $01
    ld bc, $0601                                  ; $5ae7: $01 $01 $06
    ld bc, $0101                                  ; $5aea: $01 $01 $01
    ld b, $01                                     ; $5aed: $06 $01
    ld bc, $0601                                  ; $5aef: $01 $01 $06
    ld bc, $0101                                  ; $5af2: $01 $01 $01
    ld b, $ea                                     ; $5af5: $06 $ea
    db $eb                                        ; $5af7: $eb
    db $ec                                        ; $5af8: $ec
    db $ed                                        ; $5af9: $ed
    xor $ef                                       ; $5afa: $ee $ef
    pop hl                                        ; $5afc: $e1
    ldh a, [rSB]                                  ; $5afd: $f0 $01
    ld [bc], a                                    ; $5aff: $02
    inc bc                                        ; $5b00: $03
    inc b                                         ; $5b01: $04
    dec b                                         ; $5b02: $05
    ld b, $07                                     ; $5b03: $06 $07
    ld [$0101], sp                                ; $5b05: $08 $01 $01
    ld bc, $0106                                  ; $5b08: $01 $06 $01
    ld bc, $0601                                  ; $5b0b: $01 $01 $06
    ld bc, $0101                                  ; $5b0e: $01 $01 $01
    ld b, $01                                     ; $5b11: $06 $01
    ld bc, $0601                                  ; $5b13: $01 $01 $06
    pop de                                        ; $5b16: $d1
    ld [hl], a                                    ; $5b17: $77
    ld a, b                                       ; $5b18: $78
    ld e, e                                       ; $5b19: $5b
    pop de                                        ; $5b1a: $d1
    ld c, c                                       ; $5b1b: $49
    ld c, d                                       ; $5b1c: $4a
    ld c, [hl]                                    ; $5b1d: $4e
    ld c, e                                       ; $5b1e: $4b
    ld c, h                                       ; $5b1f: $4c
    ld c, l                                       ; $5b20: $4d
    ld h, c                                       ; $5b21: $61
    ld c, [hl]                                    ; $5b22: $4e
    ld c, a                                       ; $5b23: $4f
    ld e, [hl]                                    ; $5b24: $5e
    add d                                         ; $5b25: $82
    ld bc, $8383                                  ; $5b26: $01 $83 $83
    inc b                                         ; $5b29: $04
    ld bc, $8b8b                                  ; $5b2a: $01 $8b $8b
    inc b                                         ; $5b2d: $04
    add hl, bc                                    ; $5b2e: $09
    adc l                                         ; $5b2f: $8d
    adc e                                         ; $5b30: $8b
    inc b                                         ; $5b31: $04
    add hl, bc                                    ; $5b32: $09
    adc e                                         ; $5b33: $8b
    add e                                         ; $5b34: $83
    ld a, [bc]                                    ; $5b35: $0a
    ld sp, hl                                     ; $5b36: $f9
    ld a, [$fcfb]                                 ; $5b37: $fa $fb $fc
    db $fd                                        ; $5b3a: $fd
    cp $ff                                        ; $5b3b: $fe $ff
    nop                                           ; $5b3d: $00
    ld l, a                                       ; $5b3e: $6f
    ld [hl], b                                    ; $5b3f: $70
    inc [hl]                                      ; $5b40: $34
    dec [hl]                                      ; $5b41: $35
    ld [hl], c                                    ; $5b42: $71
    ld [hl], d                                    ; $5b43: $72
    jr c, jr_07e_5b7f                             ; $5b44: $38 $39

    ld bc, $0101                                  ; $5b46: $01 $01 $01
    ld b, $01                                     ; $5b49: $06 $01
    ld bc, $0601                                  ; $5b4b: $01 $01 $06
    ld bc, $0101                                  ; $5b4e: $01 $01 $01
    ld b, $01                                     ; $5b51: $06 $01
    ld bc, $0601                                  ; $5b53: $01 $01 $06
    add hl, bc                                    ; $5b56: $09
    ld a, [bc]                                    ; $5b57: $0a
    dec bc                                        ; $5b58: $0b
    inc c                                         ; $5b59: $0c
    dec c                                         ; $5b5a: $0d
    ld c, $0f                                     ; $5b5b: $0e $0f
    db $10                                        ; $5b5d: $10
    ld [hl], $37                                  ; $5b5e: $36 $37
    ld b, b                                       ; $5b60: $40
    ld b, c                                       ; $5b61: $41
    ld a, [hl-]                                   ; $5b62: $3a
    dec sp                                        ; $5b63: $3b
    ld b, e                                       ; $5b64: $43
    ld b, h                                       ; $5b65: $44
    ld bc, $0101                                  ; $5b66: $01 $01 $01
    ld b, $01                                     ; $5b69: $06 $01
    ld bc, $0601                                  ; $5b6b: $01 $01 $06
    ld bc, $0101                                  ; $5b6e: $01 $01 $01
    ld b, $01                                     ; $5b71: $06 $01
    ld bc, $0601                                  ; $5b73: $01 $01 $06
    jp nc, $8553                                  ; $5b76: $d2 $53 $85

    add [hl]                                      ; $5b79: $86
    dec h                                         ; $5b7a: $25
    ld c, a                                       ; $5b7b: $4f
    and d                                         ; $5b7c: $a2
    and l                                         ; $5b7d: $a5
    or d                                          ; $5b7e: $b2

jr_07e_5b7f:
    or e                                          ; $5b7f: $b3
    ld c, [hl]                                    ; $5b80: $4e
    sub c                                         ; $5b81: $91
    ld b, l                                       ; $5b82: $45
    or h                                          ; $5b83: $b4
    ld c, [hl]                                    ; $5b84: $4e
    sub h                                         ; $5b85: $94
    ld bc, $0a02                                  ; $5b86: $01 $02 $0a
    ld a, [bc]                                    ; $5b89: $0a
    ld bc, $0a83                                  ; $5b8a: $01 $83 $0a
    inc c                                         ; $5b8d: $0c
    add hl, bc                                    ; $5b8e: $09
    ld a, [bc]                                    ; $5b8f: $0a
    ld [bc], a                                    ; $5b90: $02
    ld a, [bc]                                    ; $5b91: $0a
    ld bc, $620a                                  ; $5b92: $01 $0a $62
    ld a, [bc]                                    ; $5b95: $0a
    pop de                                        ; $5b96: $d1
    pop de                                        ; $5b97: $d1
    pop de                                        ; $5b98: $d1
    pop de                                        ; $5b99: $d1
    pop de                                        ; $5b9a: $d1
    pop de                                        ; $5b9b: $d1
    pop de                                        ; $5b9c: $d1
    pop de                                        ; $5b9d: $d1
    pop de                                        ; $5b9e: $d1
    pop de                                        ; $5b9f: $d1
    pop de                                        ; $5ba0: $d1
    ld d, [hl]                                    ; $5ba1: $56
    pop de                                        ; $5ba2: $d1
    pop de                                        ; $5ba3: $d1
    pop de                                        ; $5ba4: $d1
    pop de                                        ; $5ba5: $d1
    ld bc, $0101                                  ; $5ba6: $01 $01 $01
    inc bc                                        ; $5ba9: $03
    ld bc, $0101                                  ; $5baa: $01 $01 $01
    inc bc                                        ; $5bad: $03
    ld bc, $8581                                  ; $5bae: $01 $81 $85
    adc l                                         ; $5bb1: $8d
    ld bc, $8181                                  ; $5bb2: $01 $81 $81
    add e                                         ; $5bb5: $83
    ld [hl], e                                    ; $5bb6: $73
    inc sp                                        ; $5bb7: $33
    inc a                                         ; $5bb8: $3c
    dec a                                         ; $5bb9: $3d
    ld d, d                                       ; $5bba: $52
    ld e, l                                       ; $5bbb: $5d
    ld h, a                                       ; $5bbc: $67
    ld c, h                                       ; $5bbd: $4c
    rst $10                                       ; $5bbe: $d7
    ld [de], a                                    ; $5bbf: $12
    inc de                                        ; $5bc0: $13
    inc d                                         ; $5bc1: $14
    db $db                                        ; $5bc2: $db
    dec d                                         ; $5bc3: $15
    ld d, $c8                                     ; $5bc4: $16 $c8
    ld bc, $0101                                  ; $5bc6: $01 $01 $01
    ld bc, $0202                                  ; $5bc9: $01 $02 $02
    ld [bc], a                                    ; $5bcc: $02
    ld [bc], a                                    ; $5bcd: $02
    adc e                                         ; $5bce: $8b
    adc e                                         ; $5bcf: $8b

Jump_07e_5bd0:
    adc e                                         ; $5bd0: $8b

Jump_07e_5bd1:
    adc e                                         ; $5bd1: $8b
    adc l                                         ; $5bd2: $8d
    adc e                                         ; $5bd3: $8b
    adc e                                         ; $5bd4: $8b
    adc e                                         ; $5bd5: $8b
    ld a, $3f                                     ; $5bd6: $3e $3f
    ld b, a                                       ; $5bd8: $47
    ld c, b                                       ; $5bd9: $48
    ld d, b                                       ; $5bda: $50
    ld d, c                                       ; $5bdb: $51
    ld d, d                                       ; $5bdc: $52
    ld e, l                                       ; $5bdd: $5d
    push bc                                       ; $5bde: $c5
    add $c7                                       ; $5bdf: $c6 $c7
    call nc, $cac9                                ; $5be1: $d4 $c9 $ca
    set 3, b                                      ; $5be4: $cb $d8
    ld bc, $0101                                  ; $5be6: $01 $01 $01
    ld bc, $0202                                  ; $5be9: $01 $02 $02
    ld [bc], a                                    ; $5bec: $02
    ld [bc], a                                    ; $5bed: $02
    adc e                                         ; $5bee: $8b
    adc e                                         ; $5bef: $8b
    adc e                                         ; $5bf0: $8b
    adc e                                         ; $5bf1: $8b
    adc e                                         ; $5bf2: $8b
    adc e                                         ; $5bf3: $8b
    adc e                                         ; $5bf4: $8b
    adc e                                         ; $5bf5: $8b
    ld c, c                                       ; $5bf6: $49
    or l                                          ; $5bf7: $b5
    ld e, e                                       ; $5bf8: $5b
    ld c, [hl]                                    ; $5bf9: $4e
    ld h, a                                       ; $5bfa: $67
    or [hl]                                       ; $5bfb: $b6
    ld c, [hl]                                    ; $5bfc: $4e
    ld e, e                                       ; $5bfd: $5b
    push de                                       ; $5bfe: $d5
    rla                                           ; $5bff: $17
    ld e, [hl]                                    ; $5c00: $5e
    ld c, [hl]                                    ; $5c01: $4e
    ld d, a                                       ; $5c02: $57
    jr jr_07e_5c1e                                ; $5c03: $18 $19

    and l                                         ; $5c05: $a5
    ld bc, $040a                                  ; $5c06: $01 $0a $04
    inc b                                         ; $5c09: $04
    ld [bc], a                                    ; $5c0a: $02
    ld a, [bc]                                    ; $5c0b: $0a
    ld [bc], a                                    ; $5c0c: $02
    inc b                                         ; $5c0d: $04
    adc e                                         ; $5c0e: $8b
    adc e                                         ; $5c0f: $8b
    add e                                         ; $5c10: $83
    ld h, d                                       ; $5c11: $62
    adc e                                         ; $5c12: $8b
    adc e                                         ; $5c13: $8b
    adc e                                         ; $5c14: $8b
    ld a, [bc]                                    ; $5c15: $0a
    pop de                                        ; $5c16: $d1
    pop de                                        ; $5c17: $d1
    pop de                                        ; $5c18: $d1
    ld e, b                                       ; $5c19: $58
    pop de                                        ; $5c1a: $d1
    pop de                                        ; $5c1b: $d1
    pop de                                        ; $5c1c: $d1
    pop de                                        ; $5c1d: $d1

jr_07e_5c1e:
    pop de                                        ; $5c1e: $d1
    pop de                                        ; $5c1f: $d1
    pop de                                        ; $5c20: $d1
    ld e, c                                       ; $5c21: $59
    pop de                                        ; $5c22: $d1
    pop de                                        ; $5c23: $d1
    pop de                                        ; $5c24: $d1
    pop de                                        ; $5c25: $d1
    ld bc, $8181                                  ; $5c26: $01 $81 $81
    adc e                                         ; $5c29: $8b
    ld bc, $8181                                  ; $5c2a: $01 $81 $81
    add e                                         ; $5c2d: $83
    ld bc, $8181                                  ; $5c2e: $01 $81 $81
    adc l                                         ; $5c31: $8d
    ld bc, $8181                                  ; $5c32: $01 $81 $81
    add e                                         ; $5c35: $83
    ld e, d                                       ; $5c36: $5a
    cp a                                          ; $5c37: $bf
    ret nz                                        ; $5c38: $c0

    call z, $c2d1                                 ; $5c39: $cc $d1 $c2
    jp Jump_07e_5bd0                              ; $5c3c: $c3 $d0 $5b


    ld e, h                                       ; $5c3f: $5c
    ld [$d1f7], a                                 ; $5c40: $ea $f7 $d1
    pop de                                        ; $5c43: $d1
    ld e, l                                       ; $5c44: $5d
    ei                                            ; $5c45: $fb
    adc e                                         ; $5c46: $8b
    adc l                                         ; $5c47: $8d
    adc l                                         ; $5c48: $8d
    adc e                                         ; $5c49: $8b
    add l                                         ; $5c4a: $85
    adc l                                         ; $5c4b: $8d
    adc l                                         ; $5c4c: $8d
    adc l                                         ; $5c4d: $8d
    adc l                                         ; $5c4e: $8d
    adc l                                         ; $5c4f: $8d
    adc l                                         ; $5c50: $8d
    adc l                                         ; $5c51: $8d
    add e                                         ; $5c52: $83
    add e                                         ; $5c53: $83
    adc e                                         ; $5c54: $8b
    adc l                                         ; $5c55: $8d
    call $cfce                                    ; $5c56: $cd $ce $cf
    call c, $d2d1                                 ; $5c59: $dc $d1 $d2
    db $d3                                        ; $5c5c: $d3
    ldh [$f8], a                                  ; $5c5d: $e0 $f8
    ld sp, hl                                     ; $5c5f: $f9
    ld a, [$fc5e]                                 ; $5c60: $fa $5e $fc
    db $fd                                        ; $5c63: $fd
    cp $08                                        ; $5c64: $fe $08
    adc e                                         ; $5c66: $8b
    adc l                                         ; $5c67: $8d
    adc l                                         ; $5c68: $8d
    adc e                                         ; $5c69: $8b
    adc e                                         ; $5c6a: $8b
    adc l                                         ; $5c6b: $8d
    adc l                                         ; $5c6c: $8d
    adc e                                         ; $5c6d: $8b
    adc e                                         ; $5c6e: $8b
    adc l                                         ; $5c6f: $8d
    adc l                                         ; $5c70: $8d
    adc l                                         ; $5c71: $8d
    adc l                                         ; $5c72: $8d
    adc l                                         ; $5c73: $8d
    adc l                                         ; $5c74: $8d
    adc l                                         ; $5c75: $8d
    ld e, a                                       ; $5c76: $5f
    db $e3                                        ; $5c77: $e3
    ld c, [hl]                                    ; $5c78: $4e
    ld e, e                                       ; $5c79: $5b
    ld h, b                                       ; $5c7a: $60
    ld d, e                                       ; $5c7b: $53
    ld c, [hl]                                    ; $5c7c: $4e
    sub h                                         ; $5c7d: $94
    ld h, c                                       ; $5c7e: $61
    ld e, c                                       ; $5c7f: $59
    ld h, b                                       ; $5c80: $60
    ld h, c                                       ; $5c81: $61
    ld h, d                                       ; $5c82: $62
    ld h, e                                       ; $5c83: $63
    add c                                         ; $5c84: $81
    add d                                         ; $5c85: $82
    adc e                                         ; $5c86: $8b
    db $eb                                        ; $5c87: $eb
    ld [bc], a                                    ; $5c88: $02
    ld [bc], a                                    ; $5c89: $02
    adc e                                         ; $5c8a: $8b
    ld [bc], a                                    ; $5c8b: $02
    ld h, d                                       ; $5c8c: $62
    ld a, [bc]                                    ; $5c8d: $0a
    adc e                                         ; $5c8e: $8b
    inc b                                         ; $5c8f: $04
    ld [bc], a                                    ; $5c90: $02
    ld [bc], a                                    ; $5c91: $02
    adc e                                         ; $5c92: $8b
    adc e                                         ; $5c93: $8b
    inc c                                         ; $5c94: $0c
    inc c                                         ; $5c95: $0c
    or c                                          ; $5c96: $b1
    or b                                          ; $5c97: $b0
    and [hl]                                      ; $5c98: $a6
    and a                                         ; $5c99: $a7
    ld d, e                                       ; $5c9a: $53
    ld c, [hl]                                    ; $5c9b: $4e
    ld c, [hl]                                    ; $5c9c: $4e
    ld d, l                                       ; $5c9d: $55
    ld d, [hl]                                    ; $5c9e: $56
    ld e, e                                       ; $5c9f: $5b
    ld e, b                                       ; $5ca0: $58
    ld e, c                                       ; $5ca1: $59
    or c                                          ; $5ca2: $b1
    ld h, e                                       ; $5ca3: $63
    add b                                         ; $5ca4: $80
    or c                                          ; $5ca5: $b1
    ld a, [bc]                                    ; $5ca6: $0a
    ld a, [bc]                                    ; $5ca7: $0a
    inc c                                         ; $5ca8: $0c
    inc c                                         ; $5ca9: $0c
    inc b                                         ; $5caa: $04
    ld h, h                                       ; $5cab: $64
    ld [bc], a                                    ; $5cac: $02
    ld [bc], a                                    ; $5cad: $02
    ld [bc], a                                    ; $5cae: $02
    ld [bc], a                                    ; $5caf: $02
    ld [bc], a                                    ; $5cb0: $02
    ld [bc], a                                    ; $5cb1: $02
    ld a, [bc]                                    ; $5cb2: $0a
    ld [bc], a                                    ; $5cb3: $02
    ld a, [bc]                                    ; $5cb4: $0a
    ld a, [bc]                                    ; $5cb5: $0a
    adc [hl]                                      ; $5cb6: $8e
    adc l                                         ; $5cb7: $8d
    pop de                                        ; $5cb8: $d1
    pop de                                        ; $5cb9: $d1
    sub b                                         ; $5cba: $90
    adc a                                         ; $5cbb: $8f
    pop de                                        ; $5cbc: $d1
    pop de                                        ; $5cbd: $d1
    ld l, [hl]                                    ; $5cbe: $6e
    ld l, l                                       ; $5cbf: $6d
    pop de                                        ; $5cc0: $d1
    pop de                                        ; $5cc1: $d1
    halt                                          ; $5cc2: $76
    ld [hl], l                                    ; $5cc3: $75
    pop de                                        ; $5cc4: $d1
    pop de                                        ; $5cc5: $d1
    adc l                                         ; $5cc6: $8d
    adc e                                         ; $5cc7: $8b
    add c                                         ; $5cc8: $81
    add c                                         ; $5cc9: $81
    adc e                                         ; $5cca: $8b
    adc l                                         ; $5ccb: $8d
    add c                                         ; $5ccc: $81
    add c                                         ; $5ccd: $81
    add e                                         ; $5cce: $83
    and l                                         ; $5ccf: $a5
    add l                                         ; $5cd0: $85
    add c                                         ; $5cd1: $81
    and e                                         ; $5cd2: $a3
    and e                                         ; $5cd3: $a3
    add c                                         ; $5cd4: $81
    add c                                         ; $5cd5: $81

jr_07e_5cd6:
    xor e                                         ; $5cd6: $ab
    ld a, l                                       ; $5cd7: $7d
    add e                                         ; $5cd8: $83
    ld d, e                                       ; $5cd9: $53
    ld a, [hl]                                    ; $5cda: $7e
    xor [hl]                                      ; $5cdb: $ae
    and e                                         ; $5cdc: $a3
    and h                                         ; $5cdd: $a4
    xor a                                         ; $5cde: $af
    or b                                          ; $5cdf: $b0
    and [hl]                                      ; $5ce0: $a6
    or c                                          ; $5ce1: $b1
    xor h                                         ; $5ce2: $ac
    xor l                                         ; $5ce3: $ad
    ld c, [hl]                                    ; $5ce4: $4e
    ld d, e                                       ; $5ce5: $53
    ld a, [bc]                                    ; $5ce6: $0a
    ld [bc], a                                    ; $5ce7: $02
    ld a, [bc]                                    ; $5ce8: $0a
    ld [bc], a                                    ; $5ce9: $02
    ld [bc], a                                    ; $5cea: $02
    ld a, [bc]                                    ; $5ceb: $0a
    ld a, [bc]                                    ; $5cec: $0a
    ld a, [bc]                                    ; $5ced: $0a
    ld a, [bc]                                    ; $5cee: $0a
    ld a, [bc]                                    ; $5cef: $0a
    inc c                                         ; $5cf0: $0c
    inc c                                         ; $5cf1: $0c
    inc c                                         ; $5cf2: $0c
    inc c                                         ; $5cf3: $0c
    ld [bc], a                                    ; $5cf4: $02
    ld [bc], a                                    ; $5cf5: $02
    ld a, b                                       ; $5cf6: $78
    ld [hl], a                                    ; $5cf7: $77
    pop de                                        ; $5cf8: $d1
    pop de                                        ; $5cf9: $d1
    and d                                         ; $5cfa: $a2
    ld [hl+], a                                   ; $5cfb: $22
    pop de                                        ; $5cfc: $d1
    pop de                                        ; $5cfd: $d1
    ld c, [hl]                                    ; $5cfe: $4e
    daa                                           ; $5cff: $27
    pop de                                        ; $5d00: $d1
    pop de                                        ; $5d01: $d1
    sbc a                                         ; $5d02: $9f
    jr z, jr_07e_5cd6                             ; $5d03: $28 $d1

    pop de                                        ; $5d05: $d1
    and e                                         ; $5d06: $a3
    and e                                         ; $5d07: $a3
    add c                                         ; $5d08: $81
    add c                                         ; $5d09: $81
    ld a, [bc]                                    ; $5d0a: $0a
    adc e                                         ; $5d0b: $8b
    add c                                         ; $5d0c: $81
    add c                                         ; $5d0d: $81
    ld [bc], a                                    ; $5d0e: $02
    adc e                                         ; $5d0f: $8b
    add c                                         ; $5d10: $81
    add c                                         ; $5d11: $81
    ld a, [bc]                                    ; $5d12: $0a
    adc e                                         ; $5d13: $8b
    add c                                         ; $5d14: $81
    add c                                         ; $5d15: $81
    ld h, d                                       ; $5d16: $62
    ld d, a                                       ; $5d17: $57
    ld c, [hl]                                    ; $5d18: $4e
    ld e, c                                       ; $5d19: $59
    or c                                          ; $5d1a: $b1
    ld h, e                                       ; $5d1b: $63
    add b                                         ; $5d1c: $80
    ld e, h                                       ; $5d1d: $5c
    xor e                                         ; $5d1e: $ab
    ld c, [hl]                                    ; $5d1f: $4e
    add e                                         ; $5d20: $83
    add h                                         ; $5d21: $84
    ld d, [hl]                                    ; $5d22: $56
    ld e, e                                       ; $5d23: $5b
    and e                                         ; $5d24: $a3
    ld d, [hl]                                    ; $5d25: $56
    inc b                                         ; $5d26: $04
    ld [bc], a                                    ; $5d27: $02
    ld [bc], a                                    ; $5d28: $02
    ld [bc], a                                    ; $5d29: $02
    ld a, [bc]                                    ; $5d2a: $0a
    ld [bc], a                                    ; $5d2b: $02
    ld a, [bc]                                    ; $5d2c: $0a
    inc b                                         ; $5d2d: $04
    ld a, [bc]                                    ; $5d2e: $0a
    ld h, d                                       ; $5d2f: $62
    inc c                                         ; $5d30: $0c
    ld a, [bc]                                    ; $5d31: $0a
    ld [bc], a                                    ; $5d32: $02
    ld [bc], a                                    ; $5d33: $02
    inc c                                         ; $5d34: $0c
    ld [bc], a                                    ; $5d35: $02
    ld h, b                                       ; $5d36: $60
    add hl, hl                                    ; $5d37: $29
    pop de                                        ; $5d38: $d1
    pop de                                        ; $5d39: $d1
    add c                                         ; $5d3a: $81
    ld h, h                                       ; $5d3b: $64
    pop de                                        ; $5d3c: $d1
    pop de                                        ; $5d3d: $d1
    ld c, [hl]                                    ; $5d3e: $4e
    ld h, l                                       ; $5d3f: $65
    pop de                                        ; $5d40: $d1
    pop de                                        ; $5d41: $d1
    and d                                         ; $5d42: $a2
    ld h, [hl]                                    ; $5d43: $66
    pop de                                        ; $5d44: $d1
    pop de                                        ; $5d45: $d1
    inc b                                         ; $5d46: $04
    adc e                                         ; $5d47: $8b
    add c                                         ; $5d48: $81
    add c                                         ; $5d49: $81
    inc c                                         ; $5d4a: $0c
    adc l                                         ; $5d4b: $8d
    add c                                         ; $5d4c: $81
    add c                                         ; $5d4d: $81
    ld h, d                                       ; $5d4e: $62
    adc l                                         ; $5d4f: $8d
    add c                                         ; $5d50: $81
    add c                                         ; $5d51: $81
    ld a, [bc]                                    ; $5d52: $0a
    adc l                                         ; $5d53: $8d
    add c                                         ; $5d54: $81
    add c                                         ; $5d55: $81
    or c                                          ; $5d56: $b1
    or b                                          ; $5d57: $b0
    and [hl]                                      ; $5d58: $a6
    and a                                         ; $5d59: $a7
    xor h                                         ; $5d5a: $ac
    ld c, [hl]                                    ; $5d5b: $4e
    ld d, h                                       ; $5d5c: $54
    ld d, e                                       ; $5d5d: $53
    ld h, d                                       ; $5d5e: $62
    ld d, a                                       ; $5d5f: $57
    ld c, [hl]                                    ; $5d60: $4e
    ld d, [hl]                                    ; $5d61: $56
    or c                                          ; $5d62: $b1
    ld h, e                                       ; $5d63: $63
    add b                                         ; $5d64: $80
    or c                                          ; $5d65: $b1
    ld a, [bc]                                    ; $5d66: $0a
    inc c                                         ; $5d67: $0c
    ld a, [bc]                                    ; $5d68: $0a
    ld a, [bc]                                    ; $5d69: $0a
    ld a, [bc]                                    ; $5d6a: $0a
    ld h, d                                       ; $5d6b: $62
    inc b                                         ; $5d6c: $04
    ld [bc], a                                    ; $5d6d: $02
    inc b                                         ; $5d6e: $04
    inc b                                         ; $5d6f: $04
    ld [bc], a                                    ; $5d70: $02
    ld [bc], a                                    ; $5d71: $02
    ld a, [bc]                                    ; $5d72: $0a
    ld [bc], a                                    ; $5d73: $02
    ld a, [bc]                                    ; $5d74: $0a
    ld a, [bc]                                    ; $5d75: $0a
    ld c, [hl]                                    ; $5d76: $4e
    ld a, [hl-]                                   ; $5d77: $3a
    pop de                                        ; $5d78: $d1
    pop de                                        ; $5d79: $d1
    ld c, [hl]                                    ; $5d7a: $4e
    dec sp                                        ; $5d7b: $3b
    pop de                                        ; $5d7c: $d1
    pop de                                        ; $5d7d: $d1
    ld e, e                                       ; $5d7e: $5b
    inc a                                         ; $5d7f: $3c
    pop de                                        ; $5d80: $d1
    pop de                                        ; $5d81: $d1
    ld a, d                                       ; $5d82: $7a
    ld a, c                                       ; $5d83: $79
    pop de                                        ; $5d84: $d1
    pop de                                        ; $5d85: $d1
    ld [bc], a                                    ; $5d86: $02
    adc l                                         ; $5d87: $8d
    add c                                         ; $5d88: $81
    add c                                         ; $5d89: $81
    ld h, d                                       ; $5d8a: $62
    adc e                                         ; $5d8b: $8b
    add c                                         ; $5d8c: $81
    add c                                         ; $5d8d: $81
    ld [bc], a                                    ; $5d8e: $02
    adc e                                         ; $5d8f: $8b
    add c                                         ; $5d90: $81
    add c                                         ; $5d91: $81
    add e                                         ; $5d92: $83
    add l                                         ; $5d93: $85
    add l                                         ; $5d94: $85
    add c                                         ; $5d95: $81
    add hl, bc                                    ; $5d96: $09
    ld a, [bc]                                    ; $5d97: $0a
    db $ec                                        ; $5d98: $ec
    db $ed                                        ; $5d99: $ed
    inc c                                         ; $5d9a: $0c
    dec c                                         ; $5d9b: $0d
    ldh a, [$f1]                                  ; $5d9c: $f0 $f1
    rrca                                          ; $5d9e: $0f
    di                                            ; $5d9f: $f3
    db $f4                                        ; $5da0: $f4
    push af                                       ; $5da1: $f5
    pop de                                        ; $5da2: $d1
    pop de                                        ; $5da3: $d1
    rst $10                                       ; $5da4: $d7
    db $10                                        ; $5da5: $10
    adc e                                         ; $5da6: $8b
    adc e                                         ; $5da7: $8b
    adc e                                         ; $5da8: $8b
    adc l                                         ; $5da9: $8d
    adc e                                         ; $5daa: $8b
    adc l                                         ; $5dab: $8d
    adc l                                         ; $5dac: $8d
    adc e                                         ; $5dad: $8b
    adc l                                         ; $5dae: $8d
    adc l                                         ; $5daf: $8d
    adc e                                         ; $5db0: $8b
    adc e                                         ; $5db1: $8b
    add e                                         ; $5db2: $83
    add e                                         ; $5db3: $83
    add e                                         ; $5db4: $83
    adc e                                         ; $5db5: $8b
    xor $fb                                       ; $5db6: $ee $fb
    db $fc                                        ; $5db8: $fc
    db $fd                                        ; $5db9: $fd
    ld a, [c]                                     ; $5dba: $f2
    rst $38                                       ; $5dbb: $ff
    nop                                           ; $5dbc: $00
    ld bc, $03f6                                  ; $5dbd: $01 $f6 $03
    pop de                                        ; $5dc0: $d1
    inc b                                         ; $5dc1: $04
    ld de, $d1d1                                  ; $5dc2: $11 $d1 $d1
    pop de                                        ; $5dc5: $d1
    adc e                                         ; $5dc6: $8b
    adc l                                         ; $5dc7: $8d
    adc e                                         ; $5dc8: $8b
    adc l                                         ; $5dc9: $8d
    adc e                                         ; $5dca: $8b
    adc l                                         ; $5dcb: $8d
    adc e                                         ; $5dcc: $8b
    adc e                                         ; $5dcd: $8b
    adc e                                         ; $5dce: $8b
    adc l                                         ; $5dcf: $8d
    add l                                         ; $5dd0: $85
    adc e                                         ; $5dd1: $8b
    adc e                                         ; $5dd2: $8b
    add e                                         ; $5dd3: $83
    add e                                         ; $5dd4: $83
    add e                                         ; $5dd5: $83
    cp $08                                        ; $5dd6: $fe $08
    add hl, bc                                    ; $5dd8: $09
    ld a, [bc]                                    ; $5dd9: $0a
    ld [bc], a                                    ; $5dda: $02
    dec bc                                        ; $5ddb: $0b
    inc c                                         ; $5ddc: $0c
    dec c                                         ; $5ddd: $0d
    inc d                                         ; $5dde: $14
    ld c, $0f                                     ; $5ddf: $0e $0f
    di                                            ; $5de1: $f3
    pop de                                        ; $5de2: $d1
    pop de                                        ; $5de3: $d1
    pop de                                        ; $5de4: $d1
    pop de                                        ; $5de5: $d1
    adc l                                         ; $5de6: $8d
    adc e                                         ; $5de7: $8b
    adc e                                         ; $5de8: $8b
    adc e                                         ; $5de9: $8b
    adc e                                         ; $5dea: $8b
    adc e                                         ; $5deb: $8b
    adc e                                         ; $5dec: $8b
    adc e                                         ; $5ded: $8b
    add e                                         ; $5dee: $83
    adc e                                         ; $5def: $8b
    adc e                                         ; $5df0: $8b
    adc e                                         ; $5df1: $8b
    add e                                         ; $5df2: $83
    add e                                         ; $5df3: $83
    add l                                         ; $5df4: $85
    add l                                         ; $5df5: $85
    db $ec                                        ; $5df6: $ec
    db $ed                                        ; $5df7: $ed
    xor $fb                                       ; $5df8: $ee $fb
    ldh a, [$f1]                                  ; $5dfa: $f0 $f1
    ld a, [c]                                     ; $5dfc: $f2
    rst $38                                       ; $5dfd: $ff
    db $f4                                        ; $5dfe: $f4
    push af                                       ; $5dff: $f5
    or $03                                        ; $5e00: $f6 $03
    rst $10                                       ; $5e02: $d7
    db $10                                        ; $5e03: $10
    ld de, $8bd1                                  ; $5e04: $11 $d1 $8b
    adc e                                         ; $5e07: $8b
    adc l                                         ; $5e08: $8d
    adc l                                         ; $5e09: $8d
    adc e                                         ; $5e0a: $8b
    adc l                                         ; $5e0b: $8d
    adc e                                         ; $5e0c: $8b
    adc e                                         ; $5e0d: $8b
    adc e                                         ; $5e0e: $8b
    adc l                                         ; $5e0f: $8d
    adc e                                         ; $5e10: $8b
    adc e                                         ; $5e11: $8b
    add l                                         ; $5e12: $85
    adc e                                         ; $5e13: $8b
    adc e                                         ; $5e14: $8b
    add e                                         ; $5e15: $83
    pop de                                        ; $5e16: $d1
    pop de                                        ; $5e17: $d1
    pop de                                        ; $5e18: $d1
    pop de                                        ; $5e19: $d1

Call_07e_5e1a:
    pop de                                        ; $5e1a: $d1
    pop de                                        ; $5e1b: $d1
    pop de                                        ; $5e1c: $d1
    pop de                                        ; $5e1d: $d1
    pop de                                        ; $5e1e: $d1
    pop de                                        ; $5e1f: $d1
    pop de                                        ; $5e20: $d1
    pop de                                        ; $5e21: $d1
    pop de                                        ; $5e22: $d1
    pop de                                        ; $5e23: $d1
    pop de                                        ; $5e24: $d1
    pop de                                        ; $5e25: $d1
    add c                                         ; $5e26: $81
    add c                                         ; $5e27: $81
    add c                                         ; $5e28: $81
    add l                                         ; $5e29: $85
    ld bc, $0101                                  ; $5e2a: $01 $01 $01
    ld bc, $0101                                  ; $5e2d: $01 $01 $01
    ld bc, $0101                                  ; $5e30: $01 $01 $01
    ld bc, $0101                                  ; $5e33: $01 $01 $01
    db $fc                                        ; $5e36: $fc
    db $fd                                        ; $5e37: $fd
    cp $67                                        ; $5e38: $fe $67
    nop                                           ; $5e3a: $00
    ld bc, $6802                                  ; $5e3b: $01 $02 $68
    pop de                                        ; $5e3e: $d1
    inc b                                         ; $5e3f: $04
    ld d, [hl]                                    ; $5e40: $56
    rst $10                                       ; $5e41: $d7
    pop de                                        ; $5e42: $d1
    pop de                                        ; $5e43: $d1
    pop de                                        ; $5e44: $d1
    db $db                                        ; $5e45: $db
    adc e                                         ; $5e46: $8b
    adc e                                         ; $5e47: $8b
    adc e                                         ; $5e48: $8b
    adc e                                         ; $5e49: $8b
    adc e                                         ; $5e4a: $8b
    adc e                                         ; $5e4b: $8b
    adc e                                         ; $5e4c: $8b
    adc e                                         ; $5e4d: $8b
    add e                                         ; $5e4e: $83
    adc e                                         ; $5e4f: $8b
    adc e                                         ; $5e50: $8b
    adc e                                         ; $5e51: $8b
    add e                                         ; $5e52: $83
    add e                                         ; $5e53: $83
    add e                                         ; $5e54: $83
    adc e                                         ; $5e55: $8b
    ld d, e                                       ; $5e56: $53
    ld c, [hl]                                    ; $5e57: $4e
    add e                                         ; $5e58: $83
    add h                                         ; $5e59: $84
    or a                                          ; $5e5a: $b7
    ld e, e                                       ; $5e5b: $5b
    ld c, [hl]                                    ; $5e5c: $4e

Jump_07e_5e5d:
    and h                                         ; $5e5d: $a4
    ld [de], a                                    ; $5e5e: $12
    inc de                                        ; $5e5f: $13
    inc d                                         ; $5e60: $14
    push bc                                       ; $5e61: $c5
    dec d                                         ; $5e62: $15
    ld d, $c8                                     ; $5e63: $16 $c8
    ret                                           ; $5e65: $c9


    ld [bc], a                                    ; $5e66: $02
    ld h, d                                       ; $5e67: $62
    ld a, [bc]                                    ; $5e68: $0a
    ld a, [bc]                                    ; $5e69: $0a
    adc e                                         ; $5e6a: $8b
    ld [bc], a                                    ; $5e6b: $02
    ld [bc], a                                    ; $5e6c: $02
    ld a, [bc]                                    ; $5e6d: $0a
    adc e                                         ; $5e6e: $8b
    adc e                                         ; $5e6f: $8b
    adc e                                         ; $5e70: $8b
    adc e                                         ; $5e71: $8b
    adc e                                         ; $5e72: $8b
    adc e                                         ; $5e73: $8b
    adc e                                         ; $5e74: $8b
    adc e                                         ; $5e75: $8b
    add l                                         ; $5e76: $85
    add [hl]                                      ; $5e77: $86
    xor e                                         ; $5e78: $ab
    ld a, l                                       ; $5e79: $7d
    and d                                         ; $5e7a: $a2
    ld c, [hl]                                    ; $5e7b: $4e
    ld a, [hl]                                    ; $5e7c: $7e
    ld e, e                                       ; $5e7d: $5b
    add $c7                                       ; $5e7e: $c6 $c7
    call nc, $cad5                                ; $5e80: $d4 $d5 $ca
    set 3, b                                      ; $5e83: $cb $d8
    reti                                          ; $5e85: $d9


    ld a, [bc]                                    ; $5e86: $0a
    ld a, [bc]                                    ; $5e87: $0a
    inc c                                         ; $5e88: $0c
    ld [bc], a                                    ; $5e89: $02
    ld a, [bc]                                    ; $5e8a: $0a
    ld [bc], a                                    ; $5e8b: $02
    ld [bc], a                                    ; $5e8c: $02
    ld [bc], a                                    ; $5e8d: $02
    adc e                                         ; $5e8e: $8b
    adc e                                         ; $5e8f: $8b
    adc e                                         ; $5e90: $8b
    adc e                                         ; $5e91: $8b
    adc l                                         ; $5e92: $8d
    adc e                                         ; $5e93: $8b
    adc e                                         ; $5e94: $8b
    adc e                                         ; $5e95: $8b
    ld c, [hl]                                    ; $5e96: $4e
    add h                                         ; $5e97: $84
    ld c, [hl]                                    ; $5e98: $4e
    add [hl]                                      ; $5e99: $86
    ld c, [hl]                                    ; $5e9a: $4e
    ld d, [hl]                                    ; $5e9b: $56
    ld e, e                                       ; $5e9c: $5b
    ld c, [hl]                                    ; $5e9d: $4e
    sub $d7                                       ; $5e9e: $d6 $d7
    ld [de], a                                    ; $5ea0: $12
    inc de                                        ; $5ea1: $13
    jp c, $15db                                   ; $5ea2: $da $db $15

    ld d, $02                                     ; $5ea5: $16 $02
    ld a, [bc]                                    ; $5ea7: $0a
    ld h, d                                       ; $5ea8: $62
    ld a, [bc]                                    ; $5ea9: $0a
    ld [bc], a                                    ; $5eaa: $02
    ld [bc], a                                    ; $5eab: $02
    ld [bc], a                                    ; $5eac: $02
    ld [bc], a                                    ; $5ead: $02
    adc e                                         ; $5eae: $8b
    adc e                                         ; $5eaf: $8b
    adc l                                         ; $5eb0: $8d
    adc e                                         ; $5eb1: $8b
    adc e                                         ; $5eb2: $8b
    adc l                                         ; $5eb3: $8d
    adc e                                         ; $5eb4: $8b
    adc e                                         ; $5eb5: $8b
    pop de                                        ; $5eb6: $d1
    pop de                                        ; $5eb7: $d1
    ld e, b                                       ; $5eb8: $58
    ld e, d                                       ; $5eb9: $5a
    pop de                                        ; $5eba: $d1
    pop de                                        ; $5ebb: $d1
    pop de                                        ; $5ebc: $d1
    pop de                                        ; $5ebd: $d1
    pop de                                        ; $5ebe: $d1
    pop de                                        ; $5ebf: $d1
    ld e, c                                       ; $5ec0: $59
    ld e, e                                       ; $5ec1: $5b
    pop de                                        ; $5ec2: $d1
    pop de                                        ; $5ec3: $d1
    pop de                                        ; $5ec4: $d1
    pop de                                        ; $5ec5: $d1
    add c                                         ; $5ec6: $81
    add c                                         ; $5ec7: $81
    adc e                                         ; $5ec8: $8b
    adc e                                         ; $5ec9: $8b
    ld bc, $8301                                  ; $5eca: $01 $01 $83
    add e                                         ; $5ecd: $83
    ld bc, $8b01                                  ; $5ece: $01 $01 $8b
    adc e                                         ; $5ed1: $8b
    ld bc, $8301                                  ; $5ed2: $01 $01 $83
    add l                                         ; $5ed5: $85
    cp a                                          ; $5ed6: $bf
    ret nz                                        ; $5ed7: $c0

    call z, $c2cd                                 ; $5ed8: $cc $cd $c2
    jp $d1d0                                      ; $5edb: $c3 $d0 $d1


    ld e, h                                       ; $5ede: $5c
    ld [$f8f7], a                                 ; $5edf: $ea $f7 $f8
    pop de                                        ; $5ee2: $d1
    ld e, l                                       ; $5ee3: $5d
    ei                                            ; $5ee4: $fb
    db $fc                                        ; $5ee5: $fc
    adc e                                         ; $5ee6: $8b
    adc e                                         ; $5ee7: $8b
    adc e                                         ; $5ee8: $8b
    adc l                                         ; $5ee9: $8d
    adc e                                         ; $5eea: $8b
    adc e                                         ; $5eeb: $8b
    adc l                                         ; $5eec: $8d
    adc e                                         ; $5eed: $8b
    adc l                                         ; $5eee: $8d
    adc l                                         ; $5eef: $8d
    adc l                                         ; $5ef0: $8d
    adc l                                         ; $5ef1: $8d
    add l                                         ; $5ef2: $85
    adc e                                         ; $5ef3: $8b
    adc e                                         ; $5ef4: $8b
    adc e                                         ; $5ef5: $8b
    adc $cf                                       ; $5ef6: $ce $cf
    call c, $d2dd                                 ; $5ef8: $dc $dd $d2
    db $d3                                        ; $5efb: $d3
    ldh [$e1], a                                  ; $5efc: $e0 $e1
    ld sp, hl                                     ; $5efe: $f9
    ld a, [$0605]                                 ; $5eff: $fa $05 $06
    db $fd                                        ; $5f02: $fd
    cp $08                                        ; $5f03: $fe $08
    add hl, bc                                    ; $5f05: $09
    adc e                                         ; $5f06: $8b
    adc e                                         ; $5f07: $8b
    adc l                                         ; $5f08: $8d
    adc l                                         ; $5f09: $8d
    adc l                                         ; $5f0a: $8d
    adc l                                         ; $5f0b: $8d
    adc l                                         ; $5f0c: $8d
    adc l                                         ; $5f0d: $8d
    adc e                                         ; $5f0e: $8b
    adc e                                         ; $5f0f: $8b
    adc e                                         ; $5f10: $8b
    adc l                                         ; $5f11: $8d
    adc e                                         ; $5f12: $8b
    adc e                                         ; $5f13: $8b
    adc e                                         ; $5f14: $8b
    adc e                                         ; $5f15: $8b
    sbc $df                                       ; $5f16: $de $df
    cp a                                          ; $5f18: $bf
    ret nz                                        ; $5f19: $c0

    ld [c], a                                     ; $5f1a: $e2
    pop bc                                        ; $5f1b: $c1
    jp nz, $07c3                                  ; $5f1c: $c2 $c3 $07

    add sp, -$17                                  ; $5f1f: $e8 $e9
    ld [$ec0a], a                                 ; $5f21: $ea $0a $ec
    db $ed                                        ; $5f24: $ed
    xor $8d                                       ; $5f25: $ee $8d
    adc l                                         ; $5f27: $8d
    adc e                                         ; $5f28: $8b
    adc e                                         ; $5f29: $8b
    adc l                                         ; $5f2a: $8d
    adc l                                         ; $5f2b: $8d
    adc e                                         ; $5f2c: $8b
    adc l                                         ; $5f2d: $8d
    adc l                                         ; $5f2e: $8d
    adc e                                         ; $5f2f: $8b
    adc l                                         ; $5f30: $8d
    adc l                                         ; $5f31: $8d
    adc e                                         ; $5f32: $8b
    adc l                                         ; $5f33: $8d
    adc e                                         ; $5f34: $8b
    adc l                                         ; $5f35: $8d
    pop de                                        ; $5f36: $d1
    pop de                                        ; $5f37: $d1
    pop de                                        ; $5f38: $d1
    ld l, c                                       ; $5f39: $69
    pop de                                        ; $5f3a: $d1
    pop de                                        ; $5f3b: $d1
    pop de                                        ; $5f3c: $d1
    pop de                                        ; $5f3d: $d1
    pop de                                        ; $5f3e: $d1
    pop de                                        ; $5f3f: $d1
    pop de                                        ; $5f40: $d1
    pop de                                        ; $5f41: $d1
    pop de                                        ; $5f42: $d1
    pop de                                        ; $5f43: $d1
    pop de                                        ; $5f44: $d1
    pop de                                        ; $5f45: $d1
    ld bc, $8501                                  ; $5f46: $01 $01 $85
    adc l                                         ; $5f49: $8d
    ld bc, $8301                                  ; $5f4a: $01 $01 $83
    add e                                         ; $5f4d: $83
    ld bc, $8301                                  ; $5f4e: $01 $01 $83
    add e                                         ; $5f51: $83
    ld bc, $8101                                  ; $5f52: $01 $01 $81
    add c                                         ; $5f55: $81
    ld l, d                                       ; $5f56: $6a
    ld l, e                                       ; $5f57: $6b
    rst $38                                       ; $5f58: $ff
    nop                                           ; $5f59: $00
    pop de                                        ; $5f5a: $d1
    pop de                                        ; $5f5b: $d1
    inc bc                                        ; $5f5c: $03
    pop de                                        ; $5f5d: $d1
    pop de                                        ; $5f5e: $d1
    pop de                                        ; $5f5f: $d1
    pop de                                        ; $5f60: $d1
    pop de                                        ; $5f61: $d1
    pop de                                        ; $5f62: $d1
    pop de                                        ; $5f63: $d1
    pop de                                        ; $5f64: $d1
    pop de                                        ; $5f65: $d1
    adc e                                         ; $5f66: $8b
    adc e                                         ; $5f67: $8b
    adc e                                         ; $5f68: $8b
    adc l                                         ; $5f69: $8d
    add e                                         ; $5f6a: $83
    add e                                         ; $5f6b: $83
    adc e                                         ; $5f6c: $8b
    add e                                         ; $5f6d: $83
    add l                                         ; $5f6e: $85
    add l                                         ; $5f6f: $85
    add l                                         ; $5f70: $85
    add l                                         ; $5f71: $85
    add c                                         ; $5f72: $81
    add c                                         ; $5f73: $81
    add c                                         ; $5f74: $81
    add c                                         ; $5f75: $81
    ld bc, $0b02                                  ; $5f76: $01 $02 $0b
    inc c                                         ; $5f79: $0c
    inc b                                         ; $5f7a: $04
    inc d                                         ; $5f7b: $14
    ld c, $0f                                     ; $5f7c: $0e $0f
    pop de                                        ; $5f7e: $d1
    pop de                                        ; $5f7f: $d1
    pop de                                        ; $5f80: $d1
    pop de                                        ; $5f81: $d1
    pop de                                        ; $5f82: $d1
    pop de                                        ; $5f83: $d1
    pop de                                        ; $5f84: $d1
    pop de                                        ; $5f85: $d1
    adc l                                         ; $5f86: $8d
    adc l                                         ; $5f87: $8d
    adc e                                         ; $5f88: $8b
    adc l                                         ; $5f89: $8d
    adc e                                         ; $5f8a: $8b
    add l                                         ; $5f8b: $85
    adc l                                         ; $5f8c: $8d
    adc l                                         ; $5f8d: $8d
    add l                                         ; $5f8e: $85
    add e                                         ; $5f8f: $83
    add e                                         ; $5f90: $83
    add e                                         ; $5f91: $83
    add c                                         ; $5f92: $81
    add c                                         ; $5f93: $81
    add c                                         ; $5f94: $81
    add c                                         ; $5f95: $81
    dec c                                         ; $5f96: $0d
    ldh a, [$f1]                                  ; $5f97: $f0 $f1
    ld d, h                                       ; $5f99: $54
    di                                            ; $5f9a: $f3
    db $f4                                        ; $5f9b: $f4
    ld d, e                                       ; $5f9c: $53
    pop de                                        ; $5f9d: $d1
    pop de                                        ; $5f9e: $d1
    rst $10                                       ; $5f9f: $d7
    pop de                                        ; $5fa0: $d1
    pop de                                        ; $5fa1: $d1
    pop de                                        ; $5fa2: $d1
    pop de                                        ; $5fa3: $d1
    pop de                                        ; $5fa4: $d1
    pop de                                        ; $5fa5: $d1
    adc e                                         ; $5fa6: $8b
    adc l                                         ; $5fa7: $8d
    adc e                                         ; $5fa8: $8b
    adc e                                         ; $5fa9: $8b
    adc e                                         ; $5faa: $8b
    adc e                                         ; $5fab: $8b
    adc e                                         ; $5fac: $8b
    add l                                         ; $5fad: $85
    add e                                         ; $5fae: $83
    add e                                         ; $5faf: $83
    add e                                         ; $5fb0: $83
    add e                                         ; $5fb1: $83
    add c                                         ; $5fb2: $81
    add c                                         ; $5fb3: $81
    add c                                         ; $5fb4: $81
    add c                                         ; $5fb5: $81
    ld d, e                                       ; $5fb6: $53
    ld a, d                                       ; $5fb7: $7a
    ld a, c                                       ; $5fb8: $79
    pop de                                        ; $5fb9: $d1
    ld d, [hl]                                    ; $5fba: $56
    ld a, h                                       ; $5fbb: $7c
    ld a, e                                       ; $5fbc: $7b
    pop de                                        ; $5fbd: $d1
    inc d                                         ; $5fbe: $14
    push bc                                       ; $5fbf: $c5
    inc l                                         ; $5fc0: $2c
    pop de                                        ; $5fc1: $d1
    ret z                                         ; $5fc2: $c8

    ret                                           ; $5fc3: $c9


    pop de                                        ; $5fc4: $d1
    pop de                                        ; $5fc5: $d1
    ld [bc], a                                    ; $5fc6: $02
    add e                                         ; $5fc7: $83
    add l                                         ; $5fc8: $85
    add c                                         ; $5fc9: $81
    ld [bc], a                                    ; $5fca: $02
    add e                                         ; $5fcb: $83
    add e                                         ; $5fcc: $83
    add c                                         ; $5fcd: $81
    adc e                                         ; $5fce: $8b
    adc e                                         ; $5fcf: $8b
    adc l                                         ; $5fd0: $8d
    add c                                         ; $5fd1: $81
    adc e                                         ; $5fd2: $8b
    adc e                                         ; $5fd3: $8b
    add e                                         ; $5fd4: $83
    add c                                         ; $5fd5: $81
    call z, $d1cd                                 ; $5fd6: $cc $cd $d1
    pop de                                        ; $5fd9: $d1
    ret nc                                        ; $5fda: $d0

    pop de                                        ; $5fdb: $d1
    pop de                                        ; $5fdc: $d1
    pop de                                        ; $5fdd: $d1
    rst $30                                       ; $5fde: $f7
    pop de                                        ; $5fdf: $d1
    pop de                                        ; $5fe0: $d1
    pop de                                        ; $5fe1: $d1
    inc e                                         ; $5fe2: $1c
    pop de                                        ; $5fe3: $d1
    pop de                                        ; $5fe4: $d1
    pop de                                        ; $5fe5: $d1
    adc e                                         ; $5fe6: $8b
    adc e                                         ; $5fe7: $8b
    add e                                         ; $5fe8: $83
    add c                                         ; $5fe9: $81
    adc l                                         ; $5fea: $8d
    adc e                                         ; $5feb: $8b
    add e                                         ; $5fec: $83
    add c                                         ; $5fed: $81
    adc l                                         ; $5fee: $8d
    add e                                         ; $5fef: $83
    add e                                         ; $5ff0: $83
    add c                                         ; $5ff1: $81
    adc e                                         ; $5ff2: $8b
    add e                                         ; $5ff3: $83
    add e                                         ; $5ff4: $83
    add c                                         ; $5ff5: $81
    ld d, l                                       ; $5ff6: $55
    pop de                                        ; $5ff7: $d1
    pop de                                        ; $5ff8: $d1
    pop de                                        ; $5ff9: $d1
    pop de                                        ; $5ffa: $d1
    pop de                                        ; $5ffb: $d1
    pop de                                        ; $5ffc: $d1
    pop de                                        ; $5ffd: $d1
    pop de                                        ; $5ffe: $d1
    pop de                                        ; $5fff: $d1
    pop de                                        ; $6000: $d1
    pop de                                        ; $6001: $d1
    pop de                                        ; $6002: $d1
    pop de                                        ; $6003: $d1
    pop de                                        ; $6004: $d1
    pop de                                        ; $6005: $d1
    adc e                                         ; $6006: $8b
    add e                                         ; $6007: $83
    add e                                         ; $6008: $83
    add c                                         ; $6009: $81
    add l                                         ; $600a: $85
    add l                                         ; $600b: $85
    add e                                         ; $600c: $83
    add c                                         ; $600d: $81
    add e                                         ; $600e: $83
    add e                                         ; $600f: $83
    add e                                         ; $6010: $83
    add c                                         ; $6011: $81
    add c                                         ; $6012: $81
    add c                                         ; $6013: $81
    add c                                         ; $6014: $81
    add c                                         ; $6015: $81
    pop de                                        ; $6016: $d1
    pop de                                        ; $6017: $d1
    pop de                                        ; $6018: $d1
    pop de                                        ; $6019: $d1
    pop de                                        ; $601a: $d1
    pop de                                        ; $601b: $d1
    pop de                                        ; $601c: $d1
    pop de                                        ; $601d: $d1
    pop de                                        ; $601e: $d1
    pop de                                        ; $601f: $d1
    pop de                                        ; $6020: $d1
    pop de                                        ; $6021: $d1
    pop de                                        ; $6022: $d1
    pop de                                        ; $6023: $d1
    pop de                                        ; $6024: $d1
    pop de                                        ; $6025: $d1
    ld bc, $8181                                  ; $6026: $01 $81 $81
    add e                                         ; $6029: $83
    ld bc, $8181                                  ; $602a: $01 $81 $81
    add e                                         ; $602d: $83
    ld bc, $8181                                  ; $602e: $01 $81 $81
    add e                                         ; $6031: $83
    ld bc, $8181                                  ; $6032: $01 $81 $81
    add c                                         ; $6035: $81
    ld l, c                                       ; $6036: $69
    ld l, d                                       ; $6037: $6a
    ld l, e                                       ; $6038: $6b
    rst $38                                       ; $6039: $ff
    pop de                                        ; $603a: $d1
    pop de                                        ; $603b: $d1
    pop de                                        ; $603c: $d1
    inc bc                                        ; $603d: $03
    pop de                                        ; $603e: $d1
    pop de                                        ; $603f: $d1
    pop de                                        ; $6040: $d1
    pop de                                        ; $6041: $d1
    pop de                                        ; $6042: $d1
    pop de                                        ; $6043: $d1
    pop de                                        ; $6044: $d1
    pop de                                        ; $6045: $d1
    adc e                                         ; $6046: $8b
    adc e                                         ; $6047: $8b
    adc l                                         ; $6048: $8d
    adc l                                         ; $6049: $8d
    add e                                         ; $604a: $83
    add e                                         ; $604b: $83
    add l                                         ; $604c: $85
    adc e                                         ; $604d: $8b
    add e                                         ; $604e: $83
    add e                                         ; $604f: $83
    add e                                         ; $6050: $83
    add e                                         ; $6051: $83
    add c                                         ; $6052: $81
    add c                                         ; $6053: $81
    add c                                         ; $6054: $81
    add c                                         ; $6055: $81
    nop                                           ; $6056: $00
    ld bc, $0b02                                  ; $6057: $01 $02 $0b
    pop de                                        ; $605a: $d1
    inc b                                         ; $605b: $04
    inc d                                         ; $605c: $14
    ld c, $d1                                     ; $605d: $0e $d1
    pop de                                        ; $605f: $d1
    pop de                                        ; $6060: $d1
    pop de                                        ; $6061: $d1
    pop de                                        ; $6062: $d1
    pop de                                        ; $6063: $d1
    pop de                                        ; $6064: $d1
    pop de                                        ; $6065: $d1
    adc l                                         ; $6066: $8d
    adc l                                         ; $6067: $8d
    adc l                                         ; $6068: $8d
    adc l                                         ; $6069: $8d
    add e                                         ; $606a: $83
    adc l                                         ; $606b: $8d
    add l                                         ; $606c: $85
    adc e                                         ; $606d: $8b
    add e                                         ; $606e: $83
    add e                                         ; $606f: $83
    add e                                         ; $6070: $83
    add e                                         ; $6071: $83
    add c                                         ; $6072: $81
    add c                                         ; $6073: $81
    add c                                         ; $6074: $81
    add c                                         ; $6075: $81
    inc c                                         ; $6076: $0c
    ld a, c                                       ; $6077: $79
    ld a, d                                       ; $6078: $7a
    add [hl]                                      ; $6079: $86
    rrca                                          ; $607a: $0f
    ld a, e                                       ; $607b: $7b
    ld a, h                                       ; $607c: $7c
    ld c, [hl]                                    ; $607d: $4e
    pop de                                        ; $607e: $d1
    adc e                                         ; $607f: $8b
    adc h                                         ; $6080: $8c
    ld e, e                                       ; $6081: $5b
    pop de                                        ; $6082: $d1
    adc l                                         ; $6083: $8d
    adc [hl]                                      ; $6084: $8e
    ld c, [hl]                                    ; $6085: $4e
    adc e                                         ; $6086: $8b
    and e                                         ; $6087: $a3
    and e                                         ; $6088: $a3
    inc c                                         ; $6089: $0c
    adc e                                         ; $608a: $8b
    and e                                         ; $608b: $a3
    and l                                         ; $608c: $a5
    ld [bc], a                                    ; $608d: $02
    add e                                         ; $608e: $83
    xor l                                         ; $608f: $ad
    xor l                                         ; $6090: $ad
    ld [bc], a                                    ; $6091: $02
    add c                                         ; $6092: $81
    xor l                                         ; $6093: $ad
    xor l                                         ; $6094: $ad
    ld [bc], a                                    ; $6095: $02
    pop de                                        ; $6096: $d1
    adc a                                         ; $6097: $8f
    sub b                                         ; $6098: $90
    ld c, [hl]                                    ; $6099: $4e
    pop de                                        ; $609a: $d1
    dec hl                                        ; $609b: $2b
    ld a, [hl+]                                   ; $609c: $2a
    ld h, $d1                                     ; $609d: $26 $d1
    ld l, l                                       ; $609f: $6d
    ld l, h                                       ; $60a0: $6c
    scf                                           ; $60a1: $37
    pop de                                        ; $60a2: $d1
    ld [hl], a                                    ; $60a3: $77
    ld a, b                                       ; $60a4: $78
    ld c, [hl]                                    ; $60a5: $4e
    add c                                         ; $60a6: $81
    xor e                                         ; $60a7: $ab
    xor l                                         ; $60a8: $ad
    ld [bc], a                                    ; $60a9: $02
    add c                                         ; $60aa: $81
    xor e                                         ; $60ab: $ab
    xor e                                         ; $60ac: $ab
    xor l                                         ; $60ad: $ad
    add c                                         ; $60ae: $81
    add l                                         ; $60af: $85
    xor e                                         ; $60b0: $ab
    xor e                                         ; $60b1: $ab
    add c                                         ; $60b2: $81
    add l                                         ; $60b3: $85
    add e                                         ; $60b4: $83
    ld [bc], a                                    ; $60b5: $02
    pop de                                        ; $60b6: $d1
    ld a, c                                       ; $60b7: $79
    ld a, d                                       ; $60b8: $7a
    ld e, e                                       ; $60b9: $5b
    pop de                                        ; $60ba: $d1
    ld a, e                                       ; $60bb: $7b
    ld a, h                                       ; $60bc: $7c
    ld c, [hl]                                    ; $60bd: $4e
    pop de                                        ; $60be: $d1
    adc e                                         ; $60bf: $8b
    adc h                                         ; $60c0: $8c
    ld h, c                                       ; $60c1: $61
    pop de                                        ; $60c2: $d1
    ld l, l                                       ; $60c3: $6d
    jr nc, jr_07e_60f7                            ; $60c4: $30 $31

    add c                                         ; $60c6: $81
    and l                                         ; $60c7: $a5
    and e                                         ; $60c8: $a3
    ld [bc], a                                    ; $60c9: $02
    add c                                         ; $60ca: $81
    and l                                         ; $60cb: $a5
    and e                                         ; $60cc: $a3
    ld [bc], a                                    ; $60cd: $02
    add c                                         ; $60ce: $81
    xor e                                         ; $60cf: $ab
    xor e                                         ; $60d0: $ab
    ld [bc], a                                    ; $60d1: $02
    add c                                         ; $60d2: $81
    add l                                         ; $60d3: $85
    adc l                                         ; $60d4: $8d
    adc l                                         ; $60d5: $8d
    pop de                                        ; $60d6: $d1
    pop de                                        ; $60d7: $d1
    ld [hl-], a                                   ; $60d8: $32
    inc sp                                        ; $60d9: $33
    pop de                                        ; $60da: $d1
    ld l, l                                       ; $60db: $6d
    ld l, [hl]                                    ; $60dc: $6e
    ld c, [hl]                                    ; $60dd: $4e
    pop de                                        ; $60de: $d1
    ld [hl], l                                    ; $60df: $75
    halt                                          ; $60e0: $76
    sub c                                         ; $60e1: $91
    pop de                                        ; $60e2: $d1
    ld [hl], a                                    ; $60e3: $77
    ld a, b                                       ; $60e4: $78
    ld c, [hl]                                    ; $60e5: $4e
    add c                                         ; $60e6: $81
    add l                                         ; $60e7: $85
    adc e                                         ; $60e8: $8b
    adc e                                         ; $60e9: $8b
    add c                                         ; $60ea: $81
    add l                                         ; $60eb: $85
    and e                                         ; $60ec: $a3
    ld [bc], a                                    ; $60ed: $02
    add c                                         ; $60ee: $81
    add e                                         ; $60ef: $83
    add e                                         ; $60f0: $83
    inc c                                         ; $60f1: $0c
    add c                                         ; $60f2: $81
    add e                                         ; $60f3: $83
    add e                                         ; $60f4: $83
    ld [bc], a                                    ; $60f5: $02
    xor e                                         ; $60f6: $ab

jr_07e_60f7:
    ld a, l                                       ; $60f7: $7d
    ld c, [hl]                                    ; $60f8: $4e
    add h                                         ; $60f9: $84
    ld a, [hl]                                    ; $60fa: $7e
    ld e, e                                       ; $60fb: $5b
    and e                                         ; $60fc: $a3
    ld d, [hl]                                    ; $60fd: $56
    or c                                          ; $60fe: $b1
    or b                                          ; $60ff: $b0
    and [hl]                                      ; $6100: $a6
    and a                                         ; $6101: $a7
    xor h                                         ; $6102: $ac
    ld c, [hl]                                    ; $6103: $4e
    ld d, h                                       ; $6104: $54
    ld d, l                                       ; $6105: $55
    ld a, [bc]                                    ; $6106: $0a
    ld [bc], a                                    ; $6107: $02
    ld [bc], a                                    ; $6108: $02
    ld a, [bc]                                    ; $6109: $0a
    ld [bc], a                                    ; $610a: $02
    ld [bc], a                                    ; $610b: $02
    ld a, [bc]                                    ; $610c: $0a
    inc b                                         ; $610d: $04
    ld a, [bc]                                    ; $610e: $0a
    inc c                                         ; $610f: $0c
    inc c                                         ; $6110: $0c
    ld a, [bc]                                    ; $6111: $0a
    inc c                                         ; $6112: $0c
    ld h, h                                       ; $6113: $64
    inc b                                         ; $6114: $04
    inc b                                         ; $6115: $04
    ld a, h                                       ; $6116: $7c
    ld a, e                                       ; $6117: $7b
    pop de                                        ; $6118: $d1
    pop de                                        ; $6119: $d1
    adc h                                         ; $611a: $8c
    adc e                                         ; $611b: $8b
    pop de                                        ; $611c: $d1
    pop de                                        ; $611d: $d1
    adc [hl]                                      ; $611e: $8e
    adc l                                         ; $611f: $8d
    pop de                                        ; $6120: $d1
    pop de                                        ; $6121: $d1
    sub b                                         ; $6122: $90
    adc a                                         ; $6123: $8f
    pop de                                        ; $6124: $d1
    pop de                                        ; $6125: $d1
    add e                                         ; $6126: $83
    add l                                         ; $6127: $85
    add c                                         ; $6128: $81
    add c                                         ; $6129: $81
    adc e                                         ; $612a: $8b
    adc l                                         ; $612b: $8d
    add c                                         ; $612c: $81
    add c                                         ; $612d: $81
    adc l                                         ; $612e: $8d
    adc e                                         ; $612f: $8b
    add c                                         ; $6130: $81
    add c                                         ; $6131: $81
    adc e                                         ; $6132: $8b
    adc e                                         ; $6133: $8b
    add c                                         ; $6134: $81
    add c                                         ; $6135: $81
    ld d, [hl]                                    ; $6136: $56
    ld d, a                                       ; $6137: $57
    ld e, b                                       ; $6138: $58
    ld d, [hl]                                    ; $6139: $56
    dec h                                         ; $613a: $25
    inc h                                         ; $613b: $24
    inc hl                                        ; $613c: $23
    ld hl, $3536                                  ; $613d: $21 $36 $35
    inc [hl]                                      ; $6140: $34
    cpl                                           ; $6141: $2f
    ld a, [hl]                                    ; $6142: $7e
    xor [hl]                                      ; $6143: $ae
    and e                                         ; $6144: $a3
    ld d, [hl]                                    ; $6145: $56
    ld [bc], a                                    ; $6146: $02
    inc b                                         ; $6147: $04
    ld [bc], a                                    ; $6148: $02
    ld [bc], a                                    ; $6149: $02
    xor l                                         ; $614a: $ad
    xor l                                         ; $614b: $ad
    xor l                                         ; $614c: $ad
    xor e                                         ; $614d: $ab
    adc e                                         ; $614e: $8b
    xor e                                         ; $614f: $ab
    xor e                                         ; $6150: $ab
    xor e                                         ; $6151: $ab
    inc b                                         ; $6152: $04
    ld a, [bc]                                    ; $6153: $0a
    inc c                                         ; $6154: $0c
    inc b                                         ; $6155: $04
    ld l, [hl]                                    ; $6156: $6e
    ld l, l                                       ; $6157: $6d
    pop de                                        ; $6158: $d1
    pop de                                        ; $6159: $d1
    jr nz, jr_07e_61c9                            ; $615a: $20 $6d

    pop de                                        ; $615c: $d1
    pop de                                        ; $615d: $d1
    ld l, $2d                                     ; $615e: $2e $2d
    pop de                                        ; $6160: $d1
    pop de                                        ; $6161: $d1
    ld a, d                                       ; $6162: $7a
    ld a, c                                       ; $6163: $79
    pop de                                        ; $6164: $d1
    pop de                                        ; $6165: $d1
    add e                                         ; $6166: $83
    and e                                         ; $6167: $a3
    add c                                         ; $6168: $81
    add c                                         ; $6169: $81
    xor l                                         ; $616a: $ad
    and l                                         ; $616b: $a5
    add c                                         ; $616c: $81
    add c                                         ; $616d: $81
    xor l                                         ; $616e: $ad
    xor l                                         ; $616f: $ad
    add c                                         ; $6170: $81
    add c                                         ; $6171: $81
    add l                                         ; $6172: $85
    add l                                         ; $6173: $85
    add c                                         ; $6174: $81
    add c                                         ; $6175: $81
    xor a                                         ; $6176: $af
    or b                                          ; $6177: $b0
    and [hl]                                      ; $6178: $a6
    or c                                          ; $6179: $b1
    xor h                                         ; $617a: $ac
    xor l                                         ; $617b: $ad
    ld d, h                                       ; $617c: $54
    ld d, l                                       ; $617d: $55
    ld d, [hl]                                    ; $617e: $56
    ld d, a                                       ; $617f: $57
    ld e, b                                       ; $6180: $58
    ld e, c                                       ; $6181: $59
    dec a                                         ; $6182: $3d
    ld a, $3f                                     ; $6183: $3e $3f
    ld b, b                                       ; $6185: $40
    inc c                                         ; $6186: $0c
    ld a, [bc]                                    ; $6187: $0a
    ld a, [bc]                                    ; $6188: $0a
    ld a, [bc]                                    ; $6189: $0a
    ld a, [bc]                                    ; $618a: $0a
    inc c                                         ; $618b: $0c
    inc b                                         ; $618c: $04
    ld [bc], a                                    ; $618d: $02
    ld [bc], a                                    ; $618e: $02
    ld [bc], a                                    ; $618f: $02
    inc b                                         ; $6190: $04
    ld [bc], a                                    ; $6191: $02
    adc l                                         ; $6192: $8d
    adc l                                         ; $6193: $8d
    adc l                                         ; $6194: $8d
    adc l                                         ; $6195: $8d
    ld a, h                                       ; $6196: $7c
    ld a, e                                       ; $6197: $7b
    pop de                                        ; $6198: $d1
    pop de                                        ; $6199: $d1
    adc h                                         ; $619a: $8c
    adc e                                         ; $619b: $8b
    pop de                                        ; $619c: $d1
    pop de                                        ; $619d: $d1
    adc [hl]                                      ; $619e: $8e
    adc l                                         ; $619f: $8d
    pop de                                        ; $61a0: $d1
    pop de                                        ; $61a1: $d1
    ld b, l                                       ; $61a2: $45
    ld b, [hl]                                    ; $61a3: $46
    pop de                                        ; $61a4: $d1
    pop de                                        ; $61a5: $d1
    add e                                         ; $61a6: $83
    add l                                         ; $61a7: $85
    add c                                         ; $61a8: $81
    add c                                         ; $61a9: $81
    adc e                                         ; $61aa: $8b
    adc e                                         ; $61ab: $8b
    add c                                         ; $61ac: $81
    add c                                         ; $61ad: $81
    adc e                                         ; $61ae: $8b
    adc e                                         ; $61af: $8b
    add c                                         ; $61b0: $81
    add c                                         ; $61b1: $81
    adc e                                         ; $61b2: $8b
    adc e                                         ; $61b3: $8b
    add c                                         ; $61b4: $81
    add c                                         ; $61b5: $81
    ld b, c                                       ; $61b6: $41
    ld b, d                                       ; $61b7: $42
    ld b, e                                       ; $61b8: $43
    ld b, h                                       ; $61b9: $44
    ld a, [hl]                                    ; $61ba: $7e
    xor [hl]                                      ; $61bb: $ae
    and e                                         ; $61bc: $a3
    and h                                         ; $61bd: $a4
    or c                                          ; $61be: $b1
    or b                                          ; $61bf: $b0
    and [hl]                                      ; $61c0: $a6
    and a                                         ; $61c1: $a7
    xor h                                         ; $61c2: $ac
    xor l                                         ; $61c3: $ad
    ld d, h                                       ; $61c4: $54
    ld d, l                                       ; $61c5: $55
    adc e                                         ; $61c6: $8b
    adc e                                         ; $61c7: $8b
    adc e                                         ; $61c8: $8b

jr_07e_61c9:
    adc e                                         ; $61c9: $8b
    ld [bc], a                                    ; $61ca: $02
    inc c                                         ; $61cb: $0c
    ld a, [bc]                                    ; $61cc: $0a
    ld a, [bc]                                    ; $61cd: $0a
    inc c                                         ; $61ce: $0c
    ld a, [bc]                                    ; $61cf: $0a
    ld a, [bc]                                    ; $61d0: $0a
    inc c                                         ; $61d1: $0c
    ld a, [bc]                                    ; $61d2: $0a
    ld a, [bc]                                    ; $61d3: $0a
    inc b                                         ; $61d4: $04
    inc b                                         ; $61d5: $04
    ld b, a                                       ; $61d6: $47
    ld c, b                                       ; $61d7: $48
    pop de                                        ; $61d8: $d1
    pop de                                        ; $61d9: $d1
    halt                                          ; $61da: $76
    ld [hl], l                                    ; $61db: $75
    pop de                                        ; $61dc: $d1
    pop de                                        ; $61dd: $d1
    ld a, b                                       ; $61de: $78
    ld [hl], a                                    ; $61df: $77
    pop de                                        ; $61e0: $d1
    pop de                                        ; $61e1: $d1
    ld a, d                                       ; $61e2: $7a
    ld a, c                                       ; $61e3: $79
    pop de                                        ; $61e4: $d1
    pop de                                        ; $61e5: $d1
    adc e                                         ; $61e6: $8b
    adc e                                         ; $61e7: $8b
    add c                                         ; $61e8: $81
    add c                                         ; $61e9: $81
    and e                                         ; $61ea: $a3
    and e                                         ; $61eb: $a3
    add c                                         ; $61ec: $81
    add c                                         ; $61ed: $81
    and e                                         ; $61ee: $a3
    and e                                         ; $61ef: $a3
    add c                                         ; $61f0: $81
    add c                                         ; $61f1: $81
    add e                                         ; $61f2: $83
    add e                                         ; $61f3: $83
    add c                                         ; $61f4: $81
    add c                                         ; $61f5: $81
    ld b, $00                                     ; $61f6: $06 $00
    ld [$e000], sp                                ; $61f8: $08 $00 $e0
    dec b                                         ; $61fb: $05
    pop de                                        ; $61fc: $d1
    jp nc, $d4d3                                  ; $61fd: $d2 $d3 $d4

    pop de                                        ; $6200: $d1
    jp nc, $d6d5                                  ; $6201: $d2 $d5 $d6

    pop de                                        ; $6204: $d1
    jp nc, $d8d7                                  ; $6205: $d2 $d7 $d8

    pop de                                        ; $6208: $d1
    jp nc, $dad9                                  ; $6209: $d2 $d9 $da

    add b                                         ; $620c: $80
    add b                                         ; $620d: $80
    ld bc, $8001                                  ; $620e: $01 $01 $80
    add b                                         ; $6211: $80
    ld bc, $8003                                  ; $6212: $01 $03 $80
    add b                                         ; $6215: $80
    inc b                                         ; $6216: $04
    inc bc                                        ; $6217: $03
    add b                                         ; $6218: $80
    add b                                         ; $6219: $80
    inc b                                         ; $621a: $04
    ld bc, $dcdb                                  ; $621b: $01 $db $dc
    db $dd                                        ; $621e: $dd
    sbc $df                                       ; $621f: $de $df
    ldh [$e1], a                                  ; $6221: $e0 $e1
    ld [c], a                                     ; $6223: $e2
    db $e3                                        ; $6224: $e3
    db $e4                                        ; $6225: $e4
    push hl                                       ; $6226: $e5
    and $e7                                       ; $6227: $e6 $e7
    add sp, -$17                                  ; $6229: $e8 $e9
    ld [$0101], a                                 ; $622b: $ea $01 $01
    ld [bc], a                                    ; $622e: $02
    ld [bc], a                                    ; $622f: $02
    inc bc                                        ; $6230: $03
    ld bc, $0202                                  ; $6231: $01 $02 $02
    inc bc                                        ; $6234: $03
    ld bc, $0202                                  ; $6235: $01 $02 $02
    ld bc, $0201                                  ; $6238: $01 $01 $02
    ld [bc], a                                    ; $623b: $02
    db $eb                                        ; $623c: $eb
    db $ec                                        ; $623d: $ec
    db $d3                                        ; $623e: $d3
    call nc, $ede0                                ; $623f: $d4 $e0 $ed
    xor $ef                                       ; $6242: $ee $ef
    ldh a, [$f1]                                  ; $6244: $f0 $f1
    ld a, [c]                                     ; $6246: $f2
    pop af                                        ; $6247: $f1
    di                                            ; $6248: $f3
    db $f4                                        ; $6249: $f4
    xor $ed                                       ; $624a: $ee $ed
    ld bc, $0101                                  ; $624c: $01 $01 $01
    ld bc, $0321                                  ; $624f: $01 $21 $03
    inc bc                                        ; $6252: $03
    inc bc                                        ; $6253: $03
    ld bc, $0003                                  ; $6254: $01 $03 $00
    ld h, e                                       ; $6257: $63
    ld bc, $6303                                  ; $6258: $01 $03 $63
    ld h, e                                       ; $625b: $63
    db $db                                        ; $625c: $db
    db $ec                                        ; $625d: $ec
    push af                                       ; $625e: $f5
    or $f7                                        ; $625f: $f6 $f7
    ld hl, sp-$07                                 ; $6261: $f8 $f9
    ld a, [$fcfb]                                 ; $6263: $fa $fb $fc
    db $fd                                        ; $6266: $fd
    cp $ff                                        ; $6267: $fe $ff
    nop                                           ; $6269: $00
    ld bc, $0102                                  ; $626a: $01 $02 $01
    ld bc, $0404                                  ; $626d: $01 $04 $04
    ld bc, $0401                                  ; $6270: $01 $01 $04
    inc b                                         ; $6273: $04
    ld bc, $0401                                  ; $6274: $01 $01 $04
    inc b                                         ; $6277: $04
    ld bc, $0401                                  ; $6278: $01 $01 $04
    inc b                                         ; $627b: $04
    pop de                                        ; $627c: $d1
    jp nc, $0403                                  ; $627d: $d2 $03 $04

    pop de                                        ; $6280: $d1
    jp nc, $0605                                  ; $6281: $d2 $05 $06

    pop de                                        ; $6284: $d1
    jp nc, Jump_000_0807                          ; $6285: $d2 $07 $08

    pop de                                        ; $6288: $d1
    jp nc, $0a09                                  ; $6289: $d2 $09 $0a

    add b                                         ; $628c: $80
    add b                                         ; $628d: $80
    inc b                                         ; $628e: $04
    ld b, $80                                     ; $628f: $06 $80
    add b                                         ; $6291: $80
    inc b                                         ; $6292: $04
    ld b, $80                                     ; $6293: $06 $80
    add b                                         ; $6295: $80
    inc b                                         ; $6296: $04
    rlca                                          ; $6297: $07
    add b                                         ; $6298: $80
    add b                                         ; $6299: $80
    rlca                                          ; $629a: $07
    rlca                                          ; $629b: $07
    dec bc                                        ; $629c: $0b
    inc c                                         ; $629d: $0c
    dec c                                         ; $629e: $0d
    ld c, $0f                                     ; $629f: $0e $0f
    db $10                                        ; $62a1: $10
    ld de, $1312                                  ; $62a2: $11 $12 $13
    inc d                                         ; $62a5: $14
    dec d                                         ; $62a6: $15
    ld d, $17                                     ; $62a7: $16 $17
    jr jr_07e_62c4                                ; $62a9: $18 $19

    ld a, [de]                                    ; $62ab: $1a
    dec b                                         ; $62ac: $05
    ld bc, $0101                                  ; $62ad: $01 $01 $01
    dec b                                         ; $62b0: $05
    rlca                                          ; $62b1: $07
    rlca                                          ; $62b2: $07
    rlca                                          ; $62b3: $07
    rlca                                          ; $62b4: $07
    rlca                                          ; $62b5: $07
    ld b, $06                                     ; $62b6: $06 $06
    ld b, $06                                     ; $62b8: $06 $06
    ld b, $06                                     ; $62ba: $06 $06
    dec de                                        ; $62bc: $1b
    inc e                                         ; $62bd: $1c
    dec c                                         ; $62be: $0d
    ld c, $1d                                     ; $62bf: $0e $1d
    ld e, $1f                                     ; $62c1: $1e $1f
    db $10                                        ; $62c3: $10

jr_07e_62c4:
    jr nz, jr_07e_62e7                            ; $62c4: $20 $21

    ld [hl+], a                                   ; $62c6: $22
    inc d                                         ; $62c7: $14
    add hl, bc                                    ; $62c8: $09
    ld a, [bc]                                    ; $62c9: $0a
    inc hl                                        ; $62ca: $23
    jr @+$03                                      ; $62cb: $18 $01

    ld bc, $0101                                  ; $62cd: $01 $01 $01
    rlca                                          ; $62d0: $07
    rlca                                          ; $62d1: $07
    rlca                                          ; $62d2: $07
    rlca                                          ; $62d3: $07
    ld b, $06                                     ; $62d4: $06 $06
    ld b, $07                                     ; $62d6: $06 $07
    ld b, $06                                     ; $62d8: $06 $06
    ld b, $06                                     ; $62da: $06 $06
    dec bc                                        ; $62dc: $0b
    inc b                                         ; $62dd: $04
    inc h                                         ; $62de: $24
    dec h                                         ; $62df: $25
    rrca                                          ; $62e0: $0f
    ld b, $26                                     ; $62e1: $06 $26
    daa                                           ; $62e3: $27
    jr z, jr_07e_630f                             ; $62e4: $28 $29

    ld a, [hl+]                                   ; $62e6: $2a

jr_07e_62e7:
    dec hl                                        ; $62e7: $2b
    inc l                                         ; $62e8: $2c
    ld a, [de]                                    ; $62e9: $1a
    add hl, bc                                    ; $62ea: $09
    ld a, [bc]                                    ; $62eb: $0a
    dec h                                         ; $62ec: $25
    ld h, $04                                     ; $62ed: $26 $04
    inc b                                         ; $62ef: $04
    dec h                                         ; $62f0: $25
    ld h, $04                                     ; $62f1: $26 $04
    inc b                                         ; $62f3: $04
    rlca                                          ; $62f4: $07
    rlca                                          ; $62f5: $07
    inc b                                         ; $62f6: $04
    inc b                                         ; $62f7: $04
    ld b, $07                                     ; $62f8: $06 $07
    rlca                                          ; $62fa: $07
    rlca                                          ; $62fb: $07
    pop de                                        ; $62fc: $d1
    jp nc, Jump_000_2e2d                          ; $62fd: $d2 $2d $2e

    pop de                                        ; $6300: $d1
    jp nc, Jump_000_302f                          ; $6301: $d2 $2f $30

    pop de                                        ; $6304: $d1
    jp nc, $3120                                  ; $6305: $d2 $20 $31

    pop de                                        ; $6308: $d1
    jp nc, Jump_000_3209                          ; $6309: $d2 $09 $32

    add b                                         ; $630c: $80
    add b                                         ; $630d: $80
    rlca                                          ; $630e: $07

jr_07e_630f:
    ld b, $80                                     ; $630f: $06 $80
    add b                                         ; $6311: $80
    rlca                                          ; $6312: $07
    ld b, $80                                     ; $6313: $06 $80
    add b                                         ; $6315: $80
    rlca                                          ; $6316: $07
    add d                                         ; $6317: $82
    add b                                         ; $6318: $80
    add b                                         ; $6319: $80
    rlca                                          ; $631a: $07
    ld [bc], a                                    ; $631b: $02
    inc sp                                        ; $631c: $33
    inc [hl]                                      ; $631d: $34
    dec [hl]                                      ; $631e: $35
    ld [hl], $37                                  ; $631f: $36 $37
    db $10                                        ; $6321: $10
    jr c, jr_07e_635d                             ; $6322: $38 $39

    inc de                                        ; $6324: $13
    inc d                                         ; $6325: $14
    ld a, [hl-]                                   ; $6326: $3a
    dec sp                                        ; $6327: $3b
    inc a                                         ; $6328: $3c
    jr jr_07e_6368                                ; $6329: $18 $3d

    ld a, $06                                     ; $632b: $3e $06
    ld b, $06                                     ; $632d: $06 $06
    ld b, $06                                     ; $632f: $06 $06
    ld b, $84                                     ; $6331: $06 $84
    add h                                         ; $6333: $84
    ld b, $06                                     ; $6334: $06 $06
    add h                                         ; $6336: $84
    add h                                         ; $6337: $84
    ld [bc], a                                    ; $6338: $02
    ld b, $04                                     ; $6339: $06 $04
    inc b                                         ; $633b: $04
    ccf                                           ; $633c: $3f
    ld l, $40                                     ; $633d: $2e $40
    ld b, c                                       ; $633f: $41
    ld b, d                                       ; $6340: $42
    ld e, $1f                                     ; $6341: $1e $1f
    db $10                                        ; $6343: $10
    ld b, e                                       ; $6344: $43
    ld hl, $4422                                  ; $6345: $21 $22 $44
    ld b, l                                       ; $6348: $45
    ld a, [bc]                                    ; $6349: $0a
    inc hl                                        ; $634a: $23
    ld b, [hl]                                    ; $634b: $46
    ld b, $06                                     ; $634c: $06 $06
    ld b, $06                                     ; $634e: $06 $06
    add h                                         ; $6350: $84
    ld b, $06                                     ; $6351: $06 $06
    ld b, $84                                     ; $6353: $06 $84
    rlca                                          ; $6355: $07
    ld b, $06                                     ; $6356: $06 $06
    inc b                                         ; $6358: $04
    rlca                                          ; $6359: $07
    ld b, $06                                     ; $635a: $06 $06
    ld b, a                                       ; $635c: $47

jr_07e_635d:
    ld [hl], $2d                                  ; $635d: $36 $2d
    ld l, $11                                     ; $635f: $2e $11
    ld [de], a                                    ; $6361: $12
    cpl                                           ; $6362: $2f
    jr nc, jr_07e_63ad                            ; $6363: $30 $48

    add hl, hl                                    ; $6365: $29
    jr nz, jr_07e_6370                            ; $6366: $20 $08

jr_07e_6368:
    ld c, c                                       ; $6368: $49
    ld a, [de]                                    ; $6369: $1a
    add hl, bc                                    ; $636a: $09
    ld a, [bc]                                    ; $636b: $0a
    ld b, $06                                     ; $636c: $06 $06
    ld b, $06                                     ; $636e: $06 $06

jr_07e_6370:
    ld b, $06                                     ; $6370: $06 $06
    ld b, $06                                     ; $6372: $06 $06
    ld b, $06                                     ; $6374: $06 $06
    ld b, $06                                     ; $6376: $06 $06
    ld b, $06                                     ; $6378: $06 $06
    ld b, $06                                     ; $637a: $06 $06
    pop de                                        ; $637c: $d1
    jp nc, Jump_07e_4a2d                          ; $637d: $d2 $2d $4a

    pop de                                        ; $6380: $d1
    jp nc, Jump_07e_4b2f                          ; $6381: $d2 $2f $4b

    pop de                                        ; $6384: $d1
    jp nc, $0820                                  ; $6385: $d2 $20 $08

    pop de                                        ; $6388: $d1
    jp nc, $0a09                                  ; $6389: $d2 $09 $0a

    add b                                         ; $638c: $80
    add b                                         ; $638d: $80
    rlca                                          ; $638e: $07
    ld [bc], a                                    ; $638f: $02
    add b                                         ; $6390: $80
    add b                                         ; $6391: $80
    rlca                                          ; $6392: $07
    ld [bc], a                                    ; $6393: $02
    add b                                         ; $6394: $80
    add b                                         ; $6395: $80
    rlca                                          ; $6396: $07
    rlca                                          ; $6397: $07
    add b                                         ; $6398: $80
    add b                                         ; $6399: $80
    rlca                                          ; $639a: $07
    ld b, $4c                                     ; $639b: $06 $4c
    inc [hl]                                      ; $639d: $34
    ld c, l                                       ; $639e: $4d
    ld c, [hl]                                    ; $639f: $4e
    ld c, a                                       ; $63a0: $4f
    db $10                                        ; $63a1: $10
    ld d, b                                       ; $63a2: $50
    ld d, c                                       ; $63a3: $51
    inc de                                        ; $63a4: $13
    inc d                                         ; $63a5: $14
    ld d, d                                       ; $63a6: $52
    ld d, e                                       ; $63a7: $53
    rla                                           ; $63a8: $17
    jr jr_07e_63c4                                ; $63a9: $18 $19

    ld a, [de]                                    ; $63ab: $1a
    ld [bc], a                                    ; $63ac: $02

jr_07e_63ad:
    rlca                                          ; $63ad: $07
    inc b                                         ; $63ae: $04
    inc b                                         ; $63af: $04
    ld [bc], a                                    ; $63b0: $02
    rlca                                          ; $63b1: $07
    inc b                                         ; $63b2: $04
    inc b                                         ; $63b3: $04
    rlca                                          ; $63b4: $07
    rlca                                          ; $63b5: $07
    inc b                                         ; $63b6: $04
    inc b                                         ; $63b7: $04
    ld b, $06                                     ; $63b8: $06 $06
    rlca                                          ; $63ba: $07
    rlca                                          ; $63bb: $07
    ld d, h                                       ; $63bc: $54
    ld l, $40                                     ; $63bd: $2e $40
    ld b, c                                       ; $63bf: $41
    ld d, l                                       ; $63c0: $55
    ld e, $44                                     ; $63c1: $1e $44
    ld c, b                                       ; $63c3: $48

jr_07e_63c4:
    ld d, d                                       ; $63c4: $52
    ld d, [hl]                                    ; $63c5: $56
    ld b, [hl]                                    ; $63c6: $46
    ld c, c                                       ; $63c7: $49
    add hl, bc                                    ; $63c8: $09
    ld a, [bc]                                    ; $63c9: $0a
    inc hl                                        ; $63ca: $23
    jr jr_07e_63d1                                ; $63cb: $18 $04

    rlca                                          ; $63cd: $07
    ld b, $06                                     ; $63ce: $06 $06
    inc b                                         ; $63d0: $04

jr_07e_63d1:
    rlca                                          ; $63d1: $07
    ld b, $06                                     ; $63d2: $06 $06
    inc h                                         ; $63d4: $24
    rlca                                          ; $63d5: $07
    ld b, $06                                     ; $63d6: $06 $06
    rlca                                          ; $63d8: $07
    rlca                                          ; $63d9: $07
    ld b, $06                                     ; $63da: $06 $06
    ld b, a                                       ; $63dc: $47
    ld [hl], $2d                                  ; $63dd: $36 $2d
    ld l, $11                                     ; $63df: $2e $11
    ld [de], a                                    ; $63e1: $12
    cpl                                           ; $63e2: $2f
    jr nc, @+$2a                                  ; $63e3: $30 $28

    add hl, hl                                    ; $63e5: $29
    jr nz, jr_07e_63f0                            ; $63e6: $20 $08

    inc l                                         ; $63e8: $2c
    ld a, [de]                                    ; $63e9: $1a
    add hl, bc                                    ; $63ea: $09
    ld a, [bc]                                    ; $63eb: $0a
    ld b, $06                                     ; $63ec: $06 $06
    ld b, $07                                     ; $63ee: $06 $07

jr_07e_63f0:
    ld b, $06                                     ; $63f0: $06 $06
    ld b, $07                                     ; $63f2: $06 $07
    ld b, $06                                     ; $63f4: $06 $06
    ld b, $07                                     ; $63f6: $06 $07
    ld b, $06                                     ; $63f8: $06 $06
    ld b, $07                                     ; $63fa: $06 $07
    ld d, a                                       ; $63fc: $57
    ld e, b                                       ; $63fd: $58
    jp nc, Jump_07e_59d1                          ; $63fe: $d2 $d1 $59

    ld e, d                                       ; $6401: $5a
    jp nc, Jump_07e_5bd1                          ; $6402: $d2 $d1 $5b

    ld e, h                                       ; $6405: $5c
    ld e, l                                       ; $6406: $5d
    ld e, [hl]                                    ; $6407: $5e
    ld e, a                                       ; $6408: $5f
    ld h, b                                       ; $6409: $60
    ld h, c                                       ; $640a: $61
    call nc, Call_000_0404                        ; $640b: $d4 $04 $04
    add b                                         ; $640e: $80
    add b                                         ; $640f: $80
    inc b                                         ; $6410: $04
    inc b                                         ; $6411: $04
    add b                                         ; $6412: $80
    add b                                         ; $6413: $80
    inc b                                         ; $6414: $04
    inc b                                         ; $6415: $04
    add b                                         ; $6416: $80
    add b                                         ; $6417: $80
    inc b                                         ; $6418: $04
    inc b                                         ; $6419: $04
    ld bc, $d101                                  ; $641a: $01 $01 $d1
    pop de                                        ; $641d: $d1
    pop de                                        ; $641e: $d1
    pop de                                        ; $641f: $d1
    pop de                                        ; $6420: $d1
    pop de                                        ; $6421: $d1
    pop de                                        ; $6422: $d1
    pop de                                        ; $6423: $d1
    ld e, [hl]                                    ; $6424: $5e
    ld e, [hl]                                    ; $6425: $5e
    ld h, d                                       ; $6426: $62
    pop de                                        ; $6427: $d1
    db $db                                        ; $6428: $db
    db $ec                                        ; $6429: $ec
    jp nc, $80d1                                  ; $642a: $d2 $d1 $80

    add b                                         ; $642d: $80
    add b                                         ; $642e: $80
    add b                                         ; $642f: $80
    add b                                         ; $6430: $80
    add b                                         ; $6431: $80
    add b                                         ; $6432: $80
    add b                                         ; $6433: $80
    add b                                         ; $6434: $80
    add b                                         ; $6435: $80
    add b                                         ; $6436: $80
    add b                                         ; $6437: $80
    ld bc, $8001                                  ; $6438: $01 $01 $80
    add b                                         ; $643b: $80
    ld h, e                                       ; $643c: $63
    ld h, h                                       ; $643d: $64
    ld h, l                                       ; $643e: $65
    ld h, [hl]                                    ; $643f: $66
    ld h, a                                       ; $6440: $67
    ld l, b                                       ; $6441: $68
    ld l, c                                       ; $6442: $69
    ld l, d                                       ; $6443: $6a
    ld l, e                                       ; $6444: $6b
    ld l, h                                       ; $6445: $6c
    ld l, l                                       ; $6446: $6d
    jp c, Jump_000_1817                           ; $6447: $da $17 $18

    ld l, [hl]                                    ; $644a: $6e
    ld l, a                                       ; $644b: $6f
    inc b                                         ; $644c: $04
    inc b                                         ; $644d: $04
    ld bc, $0403                                  ; $644e: $01 $03 $04
    inc b                                         ; $6451: $04
    ld bc, $0403                                  ; $6452: $01 $03 $04
    inc b                                         ; $6455: $04
    ld bc, $0701                                  ; $6456: $01 $01 $07
    rlca                                          ; $6459: $07
    ld bc, $7001                                  ; $645a: $01 $01 $70
    rst $30                                       ; $645d: $f7
    ld [hl], c                                    ; $645e: $71
    pop de                                        ; $645f: $d1
    ld [hl], d                                    ; $6460: $72
    ld [hl], e                                    ; $6461: $73
    ld [hl], c                                    ; $6462: $71
    pop de                                        ; $6463: $d1
    rst $20                                       ; $6464: $e7
    nop                                           ; $6465: $00
    ld [hl], c                                    ; $6466: $71
    pop de                                        ; $6467: $d1
    dec de                                        ; $6468: $1b
    inc c                                         ; $6469: $0c
    ld [hl], c                                    ; $646a: $71
    pop de                                        ; $646b: $d1
    inc bc                                        ; $646c: $03
    ld bc, $8080                                  ; $646d: $01 $80 $80
    inc bc                                        ; $6470: $03
    ld bc, $8080                                  ; $6471: $01 $80 $80
    ld bc, $8001                                  ; $6474: $01 $01 $80
    add b                                         ; $6477: $80
    ld bc, $8001                                  ; $6478: $01 $01 $80
    add b                                         ; $647b: $80
    inc sp                                        ; $647c: $33
    inc [hl]                                      ; $647d: $34
    dec [hl]                                      ; $647e: $35
    ld [hl], $37                                  ; $647f: $36 $37
    db $10                                        ; $6481: $10
    ld de, $7412                                  ; $6482: $11 $12 $74
    ld e, [hl]                                    ; $6485: $5e
    ld e, [hl]                                    ; $6486: $5e
    ld e, [hl]                                    ; $6487: $5e
    jp nc, $d1d1                                  ; $6488: $d2 $d1 $d1

    pop de                                        ; $648b: $d1
    ld b, $07                                     ; $648c: $06 $07
    rlca                                          ; $648e: $07
    rlca                                          ; $648f: $07
    ld b, $06                                     ; $6490: $06 $06
    ld b, $06                                     ; $6492: $06 $06
    add b                                         ; $6494: $80
    add b                                         ; $6495: $80
    add b                                         ; $6496: $80
    add b                                         ; $6497: $80
    add b                                         ; $6498: $80
    add b                                         ; $6499: $80
    add b                                         ; $649a: $80
    add b                                         ; $649b: $80
    ccf                                           ; $649c: $3f
    ld l, $71                                     ; $649d: $2e $71
    ld [hl], l                                    ; $649f: $75
    dec e                                         ; $64a0: $1d
    ld e, $d2                                     ; $64a1: $1e $d2
    ld [hl], l                                    ; $64a3: $75
    ld e, [hl]                                    ; $64a4: $5e
    ld e, [hl]                                    ; $64a5: $5e
    halt                                          ; $64a6: $76
    ld [hl], l                                    ; $64a7: $75
    pop de                                        ; $64a8: $d1
    pop de                                        ; $64a9: $d1
    pop de                                        ; $64aa: $d1
    pop de                                        ; $64ab: $d1
    rlca                                          ; $64ac: $07
    rlca                                          ; $64ad: $07
    add b                                         ; $64ae: $80
    add b                                         ; $64af: $80
    ld b, $06                                     ; $64b0: $06 $06
    add b                                         ; $64b2: $80
    add b                                         ; $64b3: $80
    add b                                         ; $64b4: $80
    add b                                         ; $64b5: $80
    add b                                         ; $64b6: $80
    add b                                         ; $64b7: $80
    add b                                         ; $64b8: $80
    add b                                         ; $64b9: $80
    add b                                         ; $64ba: $80
    add b                                         ; $64bb: $80
    jp nc, $d1d1                                  ; $64bc: $d2 $d1 $d1

    pop de                                        ; $64bf: $d1
    jp nc, $d1d1                                  ; $64c0: $d2 $d1 $d1

    pop de                                        ; $64c3: $d1
    jp nc, $d1d1                                  ; $64c4: $d2 $d1 $d1

    pop de                                        ; $64c7: $d1
    jp nc, $d1d1                                  ; $64c8: $d2 $d1 $d1

    pop de                                        ; $64cb: $d1
    add b                                         ; $64cc: $80
    add b                                         ; $64cd: $80
    add b                                         ; $64ce: $80
    add b                                         ; $64cf: $80
    add b                                         ; $64d0: $80
    add b                                         ; $64d1: $80
    add b                                         ; $64d2: $80
    add b                                         ; $64d3: $80
    add b                                         ; $64d4: $80
    add b                                         ; $64d5: $80
    add b                                         ; $64d6: $80
    add b                                         ; $64d7: $80
    add b                                         ; $64d8: $80
    add b                                         ; $64d9: $80
    add b                                         ; $64da: $80
    add b                                         ; $64db: $80
    pop de                                        ; $64dc: $d1
    pop de                                        ; $64dd: $d1
    pop de                                        ; $64de: $d1
    pop de                                        ; $64df: $d1
    pop de                                        ; $64e0: $d1
    pop de                                        ; $64e1: $d1
    pop de                                        ; $64e2: $d1
    pop de                                        ; $64e3: $d1
    pop de                                        ; $64e4: $d1
    pop de                                        ; $64e5: $d1
    pop de                                        ; $64e6: $d1
    pop de                                        ; $64e7: $d1
    pop de                                        ; $64e8: $d1
    pop de                                        ; $64e9: $d1
    pop de                                        ; $64ea: $d1
    pop de                                        ; $64eb: $d1
    add b                                         ; $64ec: $80
    add b                                         ; $64ed: $80
    add b                                         ; $64ee: $80
    add b                                         ; $64ef: $80
    add b                                         ; $64f0: $80
    add b                                         ; $64f1: $80
    add b                                         ; $64f2: $80
    add b                                         ; $64f3: $80
    add b                                         ; $64f4: $80
    add b                                         ; $64f5: $80
    add b                                         ; $64f6: $80
    add b                                         ; $64f7: $80
    add b                                         ; $64f8: $80
    add b                                         ; $64f9: $80
    add b                                         ; $64fa: $80
    add b                                         ; $64fb: $80
    pop de                                        ; $64fc: $d1
    jp nc, Jump_000_2e2d                          ; $64fd: $d2 $2d $2e

    pop de                                        ; $6500: $d1
    jp nc, Jump_000_302f                          ; $6501: $d2 $2f $30

    pop de                                        ; $6504: $d1
    jp nc, $0820                                  ; $6505: $d2 $20 $08

    pop de                                        ; $6508: $d1
    jp nc, Jump_07e_7877                          ; $6509: $d2 $77 $78

    add b                                         ; $650c: $80
    add b                                         ; $650d: $80
    rlca                                          ; $650e: $07
    ld b, $80                                     ; $650f: $06 $80
    add b                                         ; $6511: $80
    rlca                                          ; $6512: $07
    ld b, $80                                     ; $6513: $06 $80
    add b                                         ; $6515: $80
    rlca                                          ; $6516: $07
    ld b, $80                                     ; $6517: $06 $80
    add b                                         ; $6519: $80
    add d                                         ; $651a: $82
    add d                                         ; $651b: $82
    inc sp                                        ; $651c: $33
    inc [hl]                                      ; $651d: $34
    dec [hl]                                      ; $651e: $35
    ld [hl], $37                                  ; $651f: $36 $37
    db $10                                        ; $6521: $10
    ld de, $1312                                  ; $6522: $11 $12 $13
    inc d                                         ; $6525: $14
    dec d                                         ; $6526: $15
    ld d, $79                                     ; $6527: $16 $79
    ld a, d                                       ; $6529: $7a
    ld [hl], a                                    ; $652a: $77
    ld a, b                                       ; $652b: $78
    ld b, $06                                     ; $652c: $06 $06
    ld b, $06                                     ; $652e: $06 $06
    ld b, $06                                     ; $6530: $06 $06
    ld b, $06                                     ; $6532: $06 $06
    ld b, $06                                     ; $6534: $06 $06
    ld b, $06                                     ; $6536: $06 $06
    add d                                         ; $6538: $82
    add d                                         ; $6539: $82
    add d                                         ; $653a: $82
    add d                                         ; $653b: $82
    ccf                                           ; $653c: $3f
    ld l, $40                                     ; $653d: $2e $40
    ld b, c                                       ; $653f: $41
    dec e                                         ; $6540: $1d
    ld e, $1f                                     ; $6541: $1e $1f
    db $10                                        ; $6543: $10
    jr nz, @+$23                                  ; $6544: $20 $21

    ld [hl+], a                                   ; $6546: $22
    inc d                                         ; $6547: $14
    ld a, c                                       ; $6548: $79
    ld a, d                                       ; $6549: $7a
    ld [hl], a                                    ; $654a: $77
    ld a, e                                       ; $654b: $7b
    ld b, $06                                     ; $654c: $06 $06
    ld b, $06                                     ; $654e: $06 $06
    ld b, $06                                     ; $6550: $06 $06
    ld b, $06                                     ; $6552: $06 $06
    ld b, $06                                     ; $6554: $06 $06
    ld b, $06                                     ; $6556: $06 $06
    add d                                         ; $6558: $82
    add d                                         ; $6559: $82
    add d                                         ; $655a: $82
    add d                                         ; $655b: $82
    pop de                                        ; $655c: $d1
    jp nc, Jump_07e_7d7c                          ; $655d: $d2 $7c $7d

    pop de                                        ; $6560: $d1
    jp nc, Jump_07e_7f7e                          ; $6561: $d2 $7e $7f

    pop de                                        ; $6564: $d1
    jp nc, $8180                                  ; $6565: $d2 $80 $81

    pop de                                        ; $6568: $d1
    jp nc, $8382                                  ; $6569: $d2 $82 $83

    add b                                         ; $656c: $80
    add b                                         ; $656d: $80
    add d                                         ; $656e: $82
    add d                                         ; $656f: $82
    add b                                         ; $6570: $80
    add b                                         ; $6571: $80
    ld [bc], a                                    ; $6572: $02
    dec b                                         ; $6573: $05
    add b                                         ; $6574: $80
    add b                                         ; $6575: $80
    ld a, [bc]                                    ; $6576: $0a
    dec c                                         ; $6577: $0d
    add b                                         ; $6578: $80
    add b                                         ; $6579: $80
    inc c                                         ; $657a: $0c
    dec c                                         ; $657b: $0d
    add h                                         ; $657c: $84
    add l                                         ; $657d: $85
    ld a, h                                       ; $657e: $7c
    ld a, l                                       ; $657f: $7d
    rst $10                                       ; $6580: $d7
    add [hl]                                      ; $6581: $86
    ld a, [hl]                                    ; $6582: $7e
    add a                                         ; $6583: $87
    reti                                          ; $6584: $d9


    adc b                                         ; $6585: $88
    add b                                         ; $6586: $80
    adc c                                         ; $6587: $89
    inc bc                                        ; $6588: $03
    inc b                                         ; $6589: $04
    dec bc                                        ; $658a: $0b
    adc d                                         ; $658b: $8a
    adc d                                         ; $658c: $8a
    adc d                                         ; $658d: $8a
    add d                                         ; $658e: $82
    add d                                         ; $658f: $82
    dec b                                         ; $6590: $05
    ld a, [bc]                                    ; $6591: $0a
    ld [bc], a                                    ; $6592: $02
    ld a, [bc]                                    ; $6593: $0a
    dec b                                         ; $6594: $05
    ld a, [bc]                                    ; $6595: $0a
    ld a, [bc]                                    ; $6596: $0a
    ld a, [bc]                                    ; $6597: $0a
    dec b                                         ; $6598: $05
    ld b, $05                                     ; $6599: $06 $05
    ld a, [bc]                                    ; $659b: $0a
    add h                                         ; $659c: $84
    add l                                         ; $659d: $85
    ld a, h                                       ; $659e: $7c
    adc e                                         ; $659f: $8b
    adc h                                         ; $65a0: $8c
    add [hl]                                      ; $65a1: $86
    ld a, [hl]                                    ; $65a2: $7e
    adc l                                         ; $65a3: $8d
    adc [hl]                                      ; $65a4: $8e
    adc b                                         ; $65a5: $88
    add b                                         ; $65a6: $80
    adc a                                         ; $65a7: $8f
    sub b                                         ; $65a8: $90
    sub c                                         ; $65a9: $91
    sub d                                         ; $65aa: $92
    sub e                                         ; $65ab: $93
    adc d                                         ; $65ac: $8a
    adc d                                         ; $65ad: $8a
    add d                                         ; $65ae: $82
    adc d                                         ; $65af: $8a
    ld a, [bc]                                    ; $65b0: $0a
    ld a, [bc]                                    ; $65b1: $0a
    ld [bc], a                                    ; $65b2: $02
    ld a, [bc]                                    ; $65b3: $0a
    ld a, [bc]                                    ; $65b4: $0a
    ld a, [bc]                                    ; $65b5: $0a
    ld a, [bc]                                    ; $65b6: $0a
    ld a, [bc]                                    ; $65b7: $0a
    ld a, [bc]                                    ; $65b8: $0a
    ld a, [bc]                                    ; $65b9: $0a
    ld a, [bc]                                    ; $65ba: $0a
    ld a, [bc]                                    ; $65bb: $0a
    ld b, a                                       ; $65bc: $47
    ld [hl], $2d                                  ; $65bd: $36 $2d
    ld l, $11                                     ; $65bf: $2e $11
    ld [de], a                                    ; $65c1: $12
    cpl                                           ; $65c2: $2f
    jr nc, jr_07e_65ed                            ; $65c3: $30 $28

    add hl, hl                                    ; $65c5: $29
    jr nz, jr_07e_65d0                            ; $65c6: $20 $08

    inc l                                         ; $65c8: $2c
    ld a, [de]                                    ; $65c9: $1a
    add hl, bc                                    ; $65ca: $09
    ld a, [bc]                                    ; $65cb: $0a
    ld b, $06                                     ; $65cc: $06 $06
    ld b, $07                                     ; $65ce: $06 $07

jr_07e_65d0:
    ld b, $06                                     ; $65d0: $06 $06
    ld b, $07                                     ; $65d2: $06 $07
    ld b, $06                                     ; $65d4: $06 $06
    ld b, $07                                     ; $65d6: $06 $07
    rlca                                          ; $65d8: $07
    ld b, $06                                     ; $65d9: $06 $06
    rlca                                          ; $65db: $07
    pop de                                        ; $65dc: $d1
    jp nc, $9594                                  ; $65dd: $d2 $94 $95

    pop de                                        ; $65e0: $d1
    jp nc, $9796                                  ; $65e1: $d2 $96 $97

    pop de                                        ; $65e4: $d1
    jp nc, $9998                                  ; $65e5: $d2 $98 $99

    pop de                                        ; $65e8: $d1
    jp nc, $9b9a                                  ; $65e9: $d2 $9a $9b

    add b                                         ; $65ec: $80

jr_07e_65ed:
    add b                                         ; $65ed: $80
    inc c                                         ; $65ee: $0c
    dec c                                         ; $65ef: $0d
    add b                                         ; $65f0: $80
    add b                                         ; $65f1: $80
    ld [$800a], sp                                ; $65f2: $08 $0a $80
    add b                                         ; $65f5: $80
    ld [$800a], sp                                ; $65f6: $08 $0a $80
    add b                                         ; $65f9: $80
    ld [$050a], sp                                ; $65fa: $08 $0a $05
    ld b, $0f                                     ; $65fd: $06 $0f
    ld [hl], $9c                                  ; $65ff: $36 $9c
    sbc l                                         ; $6601: $9d
    sbc [hl]                                      ; $6602: $9e
    ld [de], a                                    ; $6603: $12
    sbc a                                         ; $6604: $9f
    and b                                         ; $6605: $a0
    and c                                         ; $6606: $a1
    ld d, $a2                                     ; $6607: $16 $a2
    and e                                         ; $6609: $a3
    and h                                         ; $660a: $a4
    ld a, [de]                                    ; $660b: $1a
    dec b                                         ; $660c: $05
    ld b, $05                                     ; $660d: $06 $05
    rlca                                          ; $660f: $07
    ld a, [bc]                                    ; $6610: $0a
    ld a, [bc]                                    ; $6611: $0a
    ld a, [bc]                                    ; $6612: $0a
    rlca                                          ; $6613: $07
    ld a, [bc]                                    ; $6614: $0a
    ld a, [bc]                                    ; $6615: $0a
    ld a, [bc]                                    ; $6616: $0a
    rlca                                          ; $6617: $07
    ld a, [bc]                                    ; $6618: $0a
    ld a, [bc]                                    ; $6619: $0a
    ld a, [bc]                                    ; $661a: $0a
    rlca                                          ; $661b: $07
    ccf                                           ; $661c: $3f
    ld l, $40                                     ; $661d: $2e $40
    ld b, c                                       ; $661f: $41
    dec e                                         ; $6620: $1d
    ld e, $1f                                     ; $6621: $1e $1f
    db $10                                        ; $6623: $10
    jr nz, @+$23                                  ; $6624: $20 $21

    ld [hl+], a                                   ; $6626: $22
    inc d                                         ; $6627: $14
    add hl, bc                                    ; $6628: $09
    ld a, [bc]                                    ; $6629: $0a
    inc hl                                        ; $662a: $23
    jr jr_07e_6634                                ; $662b: $18 $07

    rlca                                          ; $662d: $07
    rlca                                          ; $662e: $07
    rlca                                          ; $662f: $07
    ld b, $06                                     ; $6630: $06 $06
    ld b, $06                                     ; $6632: $06 $06

jr_07e_6634:
    ld b, $06                                     ; $6634: $06 $06
    ld b, $06                                     ; $6636: $06 $06
    ld b, $06                                     ; $6638: $06 $06
    ld b, $06                                     ; $663a: $06 $06
    ld b, a                                       ; $663c: $47
    ld [hl], $2d                                  ; $663d: $36 $2d
    ld l, $11                                     ; $663f: $2e $11
    ld [de], a                                    ; $6641: $12
    cpl                                           ; $6642: $2f
    jr nc, jr_07e_666d                            ; $6643: $30 $28

    add hl, hl                                    ; $6645: $29
    jr nz, jr_07e_6650                            ; $6646: $20 $08

    inc l                                         ; $6648: $2c
    ld a, [de]                                    ; $6649: $1a
    add hl, bc                                    ; $664a: $09
    ld a, [bc]                                    ; $664b: $0a
    rlca                                          ; $664c: $07
    ld b, $06                                     ; $664d: $06 $06
    rlca                                          ; $664f: $07

jr_07e_6650:
    ld b, $06                                     ; $6650: $06 $06
    ld b, $06                                     ; $6652: $06 $06
    ld b, $06                                     ; $6654: $06 $06
    ld b, $06                                     ; $6656: $06 $06
    ld b, $06                                     ; $6658: $06 $06
    ld b, $06                                     ; $665a: $06 $06
    pop de                                        ; $665c: $d1
    jp nc, $a6a5                                  ; $665d: $d2 $a5 $a6

    pop de                                        ; $6660: $d1
    jp nc, $a8a7                                  ; $6661: $d2 $a7 $a8

    pop de                                        ; $6664: $d1
    ld e, l                                       ; $6665: $5d
    ld e, [hl]                                    ; $6666: $5e
    ld e, [hl]                                    ; $6667: $5e
    pop de                                        ; $6668: $d1
    pop de                                        ; $6669: $d1
    pop de                                        ; $666a: $d1
    pop de                                        ; $666b: $d1
    add b                                         ; $666c: $80

jr_07e_666d:
    add b                                         ; $666d: $80
    ld [$8008], sp                                ; $666e: $08 $08 $80
    add b                                         ; $6671: $80
    ld [$8008], sp                                ; $6672: $08 $08 $80
    add b                                         ; $6675: $80
    add b                                         ; $6676: $80
    add b                                         ; $6677: $80
    add b                                         ; $6678: $80
    add b                                         ; $6679: $80
    add b                                         ; $667a: $80
    add b                                         ; $667b: $80
    xor c                                         ; $667c: $a9
    xor d                                         ; $667d: $aa
    xor e                                         ; $667e: $ab
    ld [hl], $37                                  ; $667f: $36 $37
    db $10                                        ; $6681: $10
    ld de, $5e12                                  ; $6682: $11 $12 $5e
    ld e, [hl]                                    ; $6685: $5e
    ld e, [hl]                                    ; $6686: $5e
    ld e, [hl]                                    ; $6687: $5e
    pop de                                        ; $6688: $d1
    pop de                                        ; $6689: $d1
    pop de                                        ; $668a: $d1
    pop de                                        ; $668b: $d1
    ld a, [bc]                                    ; $668c: $0a
    ld a, [bc]                                    ; $668d: $0a
    ld a, [bc]                                    ; $668e: $0a
    rlca                                          ; $668f: $07
    rlca                                          ; $6690: $07
    rlca                                          ; $6691: $07
    rlca                                          ; $6692: $07
    rlca                                          ; $6693: $07
    add b                                         ; $6694: $80
    add b                                         ; $6695: $80
    add b                                         ; $6696: $80
    add b                                         ; $6697: $80
    add b                                         ; $6698: $80
    add b                                         ; $6699: $80
    add b                                         ; $669a: $80
    add b                                         ; $669b: $80
    ccf                                           ; $669c: $3f
    ld l, $40                                     ; $669d: $2e $40
    ld b, c                                       ; $669f: $41
    dec e                                         ; $66a0: $1d
    ld e, $1f                                     ; $66a1: $1e $1f
    db $10                                        ; $66a3: $10
    ld e, [hl]                                    ; $66a4: $5e
    ld e, [hl]                                    ; $66a5: $5e
    ld e, [hl]                                    ; $66a6: $5e
    ld e, [hl]                                    ; $66a7: $5e
    pop de                                        ; $66a8: $d1
    pop de                                        ; $66a9: $d1
    pop de                                        ; $66aa: $d1
    pop de                                        ; $66ab: $d1
    ld b, $06                                     ; $66ac: $06 $06
    ld b, $06                                     ; $66ae: $06 $06
    ld b, $06                                     ; $66b0: $06 $06
    ld b, $06                                     ; $66b2: $06 $06
    add b                                         ; $66b4: $80
    add b                                         ; $66b5: $80
    add b                                         ; $66b6: $80
    add b                                         ; $66b7: $80
    add b                                         ; $66b8: $80
    add b                                         ; $66b9: $80
    add b                                         ; $66ba: $80
    add b                                         ; $66bb: $80
    ld b, a                                       ; $66bc: $47
    ld [hl], $2d                                  ; $66bd: $36 $2d
    ld l, $11                                     ; $66bf: $2e $11
    ld [de], a                                    ; $66c1: $12
    cpl                                           ; $66c2: $2f
    jr nc, jr_07e_6723                            ; $66c3: $30 $5e

    ld e, [hl]                                    ; $66c5: $5e
    ld e, [hl]                                    ; $66c6: $5e
    ld e, [hl]                                    ; $66c7: $5e
    pop de                                        ; $66c8: $d1
    pop de                                        ; $66c9: $d1
    pop de                                        ; $66ca: $d1
    pop de                                        ; $66cb: $d1
    ld b, $06                                     ; $66cc: $06 $06
    ld b, $06                                     ; $66ce: $06 $06
    ld b, $06                                     ; $66d0: $06 $06
    ld b, $06                                     ; $66d2: $06 $06
    add b                                         ; $66d4: $80
    add b                                         ; $66d5: $80
    add b                                         ; $66d6: $80
    add b                                         ; $66d7: $80
    add b                                         ; $66d8: $80
    add b                                         ; $66d9: $80
    add b                                         ; $66da: $80
    add b                                         ; $66db: $80
    jp nc, $d1d1                                  ; $66dc: $d2 $d1 $d1

    pop de                                        ; $66df: $d1
    jp nc, $d1d1                                  ; $66e0: $d2 $d1 $d1

    pop de                                        ; $66e3: $d1
    ld e, l                                       ; $66e4: $5d
    ld e, [hl]                                    ; $66e5: $5e
    ld e, [hl]                                    ; $66e6: $5e
    ld e, [hl]                                    ; $66e7: $5e
    ld h, c                                       ; $66e8: $61
    xor h                                         ; $66e9: $ac
    xor l                                         ; $66ea: $ad
    xor [hl]                                      ; $66eb: $ae
    add b                                         ; $66ec: $80
    add b                                         ; $66ed: $80
    add b                                         ; $66ee: $80
    add b                                         ; $66ef: $80
    add b                                         ; $66f0: $80
    add b                                         ; $66f1: $80
    add b                                         ; $66f2: $80
    add b                                         ; $66f3: $80
    add b                                         ; $66f4: $80
    add b                                         ; $66f5: $80
    add b                                         ; $66f6: $80
    add b                                         ; $66f7: $80
    ld bc, $0c0c                                  ; $66f8: $01 $0c $0c
    inc c                                         ; $66fb: $0c
    pop de                                        ; $66fc: $d1
    pop de                                        ; $66fd: $d1
    pop de                                        ; $66fe: $d1
    pop de                                        ; $66ff: $d1
    pop de                                        ; $6700: $d1
    pop de                                        ; $6701: $d1
    pop de                                        ; $6702: $d1
    pop de                                        ; $6703: $d1
    ld e, [hl]                                    ; $6704: $5e
    ld e, [hl]                                    ; $6705: $5e
    ld h, d                                       ; $6706: $62
    pop de                                        ; $6707: $d1
    xor a                                         ; $6708: $af
    or b                                          ; $6709: $b0
    jp nc, $80d1                                  ; $670a: $d2 $d1 $80

    add b                                         ; $670d: $80
    add b                                         ; $670e: $80
    add b                                         ; $670f: $80
    add b                                         ; $6710: $80
    add b                                         ; $6711: $80
    add b                                         ; $6712: $80
    add b                                         ; $6713: $80
    add b                                         ; $6714: $80
    add b                                         ; $6715: $80
    add b                                         ; $6716: $80
    add b                                         ; $6717: $80
    inc c                                         ; $6718: $0c
    inc c                                         ; $6719: $0c
    add b                                         ; $671a: $80
    add b                                         ; $671b: $80
    or c                                          ; $671c: $b1
    or d                                          ; $671d: $b2
    or e                                          ; $671e: $b3
    or h                                          ; $671f: $b4
    or l                                          ; $6720: $b5
    or [hl]                                       ; $6721: $b6
    or a                                          ; $6722: $b7

jr_07e_6723:
    cp b                                          ; $6723: $b8
    cp c                                          ; $6724: $b9
    cp d                                          ; $6725: $ba
    cp e                                          ; $6726: $bb
    cp h                                          ; $6727: $bc
    ld l, [hl]                                    ; $6728: $6e
    cp l                                          ; $6729: $bd
    cp [hl]                                       ; $672a: $be
    cp a                                          ; $672b: $bf
    add hl, bc                                    ; $672c: $09
    inc c                                         ; $672d: $0c
    inc c                                         ; $672e: $0c
    inc c                                         ; $672f: $0c
    add hl, bc                                    ; $6730: $09
    inc c                                         ; $6731: $0c
    inc c                                         ; $6732: $0c
    inc c                                         ; $6733: $0c
    add hl, bc                                    ; $6734: $09
    inc c                                         ; $6735: $0c
    inc c                                         ; $6736: $0c
    inc c                                         ; $6737: $0c
    ld bc, $0c0c                                  ; $6738: $01 $0c $0c
    inc c                                         ; $673b: $0c
    ret nz                                        ; $673c: $c0

    pop bc                                        ; $673d: $c1
    jp nc, $b7d1                                  ; $673e: $d2 $d1 $b7

    jp nz, $d1d2                                  ; $6741: $c2 $d2 $d1

    cp e                                          ; $6744: $bb
    jp $d1d2                                      ; $6745: $c3 $d2 $d1


    call nz, $d2c5                                ; $6748: $c4 $c5 $d2
    pop de                                        ; $674b: $d1
    inc c                                         ; $674c: $0c
    inc c                                         ; $674d: $0c
    add b                                         ; $674e: $80
    add b                                         ; $674f: $80
    inc c                                         ; $6750: $0c
    inc c                                         ; $6751: $0c
    add b                                         ; $6752: $80
    add b                                         ; $6753: $80
    inc c                                         ; $6754: $0c
    inc c                                         ; $6755: $0c
    add b                                         ; $6756: $80
    add b                                         ; $6757: $80
    inc c                                         ; $6758: $0c
    inc c                                         ; $6759: $0c
    add b                                         ; $675a: $80
    add b                                         ; $675b: $80
    inc sp                                        ; $675c: $33
    add $c7                                       ; $675d: $c6 $c7
    ret z                                         ; $675f: $c8

    scf                                           ; $6760: $37
    ret                                           ; $6761: $c9


    jp z, Jump_000_13cb                           ; $6762: $ca $cb $13

    inc d                                         ; $6765: $14
    dec d                                         ; $6766: $15
    ld d, $17                                     ; $6767: $16 $17
    jr @+$1b                                      ; $6769: $18 $19

    ld a, [de]                                    ; $676b: $1a
    rlca                                          ; $676c: $07
    inc c                                         ; $676d: $0c
    inc c                                         ; $676e: $0c
    inc c                                         ; $676f: $0c
    rlca                                          ; $6770: $07
    inc c                                         ; $6771: $0c
    inc c                                         ; $6772: $0c
    inc c                                         ; $6773: $0c
    rlca                                          ; $6774: $07
    rlca                                          ; $6775: $07
    rlca                                          ; $6776: $07
    rlca                                          ; $6777: $07
    ld b, $06                                     ; $6778: $06 $06
    ld b, $06                                     ; $677a: $06 $06
    call z, $d2cd                                 ; $677c: $cc $cd $d2
    pop de                                        ; $677f: $d1
    adc $cf                                       ; $6780: $ce $cf
    jp nc, $20d1                                  ; $6782: $d2 $d1 $20

    ld hl, $d1d2                                  ; $6785: $21 $d2 $d1
    add hl, bc                                    ; $6788: $09
    ld a, [bc]                                    ; $6789: $0a
    jp nc, Jump_000_0cd1                          ; $678a: $d2 $d1 $0c

    inc c                                         ; $678d: $0c
    add b                                         ; $678e: $80
    add b                                         ; $678f: $80
    inc c                                         ; $6790: $0c
    inc c                                         ; $6791: $0c
    add b                                         ; $6792: $80
    add b                                         ; $6793: $80
    rlca                                          ; $6794: $07
    rlca                                          ; $6795: $07
    add b                                         ; $6796: $80
    add b                                         ; $6797: $80
    ld b, $07                                     ; $6798: $06 $07
    add b                                         ; $679a: $80
    add b                                         ; $679b: $80
    inc sp                                        ; $679c: $33
    inc [hl]                                      ; $679d: $34
    dec [hl]                                      ; $679e: $35
    ld [hl], $37                                  ; $679f: $36 $37
    db $10                                        ; $67a1: $10
    ld de, $5e12                                  ; $67a2: $11 $12 $5e
    ld e, [hl]                                    ; $67a5: $5e
    ld e, [hl]                                    ; $67a6: $5e
    ld e, [hl]                                    ; $67a7: $5e
    pop de                                        ; $67a8: $d1
    pop de                                        ; $67a9: $d1
    pop de                                        ; $67aa: $d1
    pop de                                        ; $67ab: $d1
    ld b, $06                                     ; $67ac: $06 $06
    ld b, $06                                     ; $67ae: $06 $06
    ld b, $06                                     ; $67b0: $06 $06
    ld b, $06                                     ; $67b2: $06 $06
    add b                                         ; $67b4: $80
    add b                                         ; $67b5: $80
    add b                                         ; $67b6: $80
    add b                                         ; $67b7: $80
    add b                                         ; $67b8: $80
    add b                                         ; $67b9: $80
    add b                                         ; $67ba: $80
    add b                                         ; $67bb: $80
    ccf                                           ; $67bc: $3f
    ld l, $d2                                     ; $67bd: $2e $d2
    pop de                                        ; $67bf: $d1
    dec e                                         ; $67c0: $1d
    ld e, $d2                                     ; $67c1: $1e $d2
    pop de                                        ; $67c3: $d1
    ld e, [hl]                                    ; $67c4: $5e
    ld e, [hl]                                    ; $67c5: $5e
    halt                                          ; $67c6: $76
    pop de                                        ; $67c7: $d1
    pop de                                        ; $67c8: $d1
    pop de                                        ; $67c9: $d1
    pop de                                        ; $67ca: $d1
    pop de                                        ; $67cb: $d1
    ld b, $07                                     ; $67cc: $06 $07
    add b                                         ; $67ce: $80
    add b                                         ; $67cf: $80
    ld b, $07                                     ; $67d0: $06 $07
    add b                                         ; $67d2: $80
    add b                                         ; $67d3: $80
    add b                                         ; $67d4: $80
    add b                                         ; $67d5: $80
    add b                                         ; $67d6: $80
    add b                                         ; $67d7: $80
    add b                                         ; $67d8: $80
    add b                                         ; $67d9: $80
    add b                                         ; $67da: $80
    add b                                         ; $67db: $80
    rlca                                          ; $67dc: $07
    nop                                           ; $67dd: $00
    rlca                                          ; $67de: $07
    nop                                           ; $67df: $00
    ldh [rTIMA], a                                ; $67e0: $e0 $05
    pop de                                        ; $67e2: $d1
    jp nc, $d4d3                                  ; $67e3: $d2 $d3 $d4

    pop de                                        ; $67e6: $d1
    jp nc, $d6d5                                  ; $67e7: $d2 $d5 $d6

    pop de                                        ; $67ea: $d1
    jp nc, $d8d7                                  ; $67eb: $d2 $d7 $d8

    pop de                                        ; $67ee: $d1
    jp nc, $dad9                                  ; $67ef: $d2 $d9 $da

    add b                                         ; $67f2: $80
    add b                                         ; $67f3: $80
    ld bc, $8001                                  ; $67f4: $01 $01 $80
    add b                                         ; $67f7: $80
    ld bc, $8001                                  ; $67f8: $01 $01 $80
    add b                                         ; $67fb: $80
    ld bc, $8001                                  ; $67fc: $01 $01 $80
    add b                                         ; $67ff: $80
    ld bc, $db01                                  ; $6800: $01 $01 $db
    call c, $dedd                                 ; $6803: $dc $dd $de
    rst $18                                       ; $6806: $df
    ldh [$e1], a                                  ; $6807: $e0 $e1
    ld [c], a                                     ; $6809: $e2
    db $e3                                        ; $680a: $e3
    db $e4                                        ; $680b: $e4
    push hl                                       ; $680c: $e5
    and $e7                                       ; $680d: $e6 $e7
    add sp, -$17                                  ; $680f: $e8 $e9
    ld [$0001], a                                 ; $6811: $ea $01 $00
    nop                                           ; $6814: $00
    nop                                           ; $6815: $00
    ld bc, $0000                                  ; $6816: $01 $00 $00
    nop                                           ; $6819: $00
    ld bc, $0000                                  ; $681a: $01 $00 $00
    nop                                           ; $681d: $00
    ld bc, $0000                                  ; $681e: $01 $00 $00
    nop                                           ; $6821: $00
    db $eb                                        ; $6822: $eb
    db $ec                                        ; $6823: $ec
    db $ed                                        ; $6824: $ed
    xor $ef                                       ; $6825: $ee $ef
    ldh a, [$ed]                                  ; $6827: $f0 $ed
    pop af                                        ; $6829: $f1
    ld a, [c]                                     ; $682a: $f2
    di                                            ; $682b: $f3
    db $ed                                        ; $682c: $ed
    db $f4                                        ; $682d: $f4
    push af                                       ; $682e: $f5
    or $e8                                        ; $682f: $f6 $e8
    rst $30                                       ; $6831: $f7
    nop                                           ; $6832: $00
    nop                                           ; $6833: $00
    nop                                           ; $6834: $00
    ld bc, $0000                                  ; $6835: $01 $00 $00
    nop                                           ; $6838: $00
    ld bc, $0000                                  ; $6839: $01 $00 $00
    nop                                           ; $683c: $00
    ld bc, $0000                                  ; $683d: $01 $00 $00
    jr nz, @+$03                                  ; $6840: $20 $01

    ld hl, sp-$07                                 ; $6842: $f8 $f9
    ld a, [$fcfb]                                 ; $6844: $fa $fb $fc
    db $fd                                        ; $6847: $fd
    cp $ff                                        ; $6848: $fe $ff
    nop                                           ; $684a: $00
    ld bc, $0302                                  ; $684b: $01 $02 $03
    inc b                                         ; $684e: $04
    dec b                                         ; $684f: $05
    ld b, $07                                     ; $6850: $06 $07
    ld [bc], a                                    ; $6852: $02
    ld [bc], a                                    ; $6853: $02
    ld [bc], a                                    ; $6854: $02
    ld [bc], a                                    ; $6855: $02
    ld [bc], a                                    ; $6856: $02
    ld [bc], a                                    ; $6857: $02
    ld [bc], a                                    ; $6858: $02
    ld [bc], a                                    ; $6859: $02
    nop                                           ; $685a: $00
    nop                                           ; $685b: $00
    nop                                           ; $685c: $00
    nop                                           ; $685d: $00
    nop                                           ; $685e: $00
    nop                                           ; $685f: $00
    nop                                           ; $6860: $00
    nop                                           ; $6861: $00
    pop de                                        ; $6862: $d1
    jp nc, Jump_000_0908                          ; $6863: $d2 $08 $09

    pop de                                        ; $6866: $d1
    jp nc, Jump_000_0b0a                          ; $6867: $d2 $0a $0b

    pop de                                        ; $686a: $d1
    jp nc, Jump_000_0d0c                          ; $686b: $d2 $0c $0d

    pop de                                        ; $686e: $d1
    jp nc, Jump_000_0f0e                          ; $686f: $d2 $0e $0f

    add b                                         ; $6872: $80
    add b                                         ; $6873: $80
    ld bc, $8001                                  ; $6874: $01 $01 $80
    add b                                         ; $6877: $80
    rlca                                          ; $6878: $07
    rlca                                          ; $6879: $07
    add b                                         ; $687a: $80
    add b                                         ; $687b: $80
    rlca                                          ; $687c: $07
    ld b, $80                                     ; $687d: $06 $80
    add b                                         ; $687f: $80
    inc bc                                        ; $6880: $03
    inc bc                                        ; $6881: $03
    db $10                                        ; $6882: $10
    ld de, $1312                                  ; $6883: $11 $12 $13
    inc d                                         ; $6886: $14
    dec d                                         ; $6887: $15
    ld d, $17                                     ; $6888: $16 $17
    jr jr_07e_68a5                                ; $688a: $18 $19

    ld a, [de]                                    ; $688c: $1a
    dec de                                        ; $688d: $1b
    inc e                                         ; $688e: $1c
    dec e                                         ; $688f: $1d
    ld e, $1f                                     ; $6890: $1e $1f
    ld bc, $0101                                  ; $6892: $01 $01 $01
    ld bc, $0707                                  ; $6895: $01 $07 $07
    rlca                                          ; $6898: $07
    rlca                                          ; $6899: $07
    ld [bc], a                                    ; $689a: $02
    dec b                                         ; $689b: $05
    ld b, $02                                     ; $689c: $06 $02
    inc bc                                        ; $689e: $03
    inc bc                                        ; $689f: $03
    ld b, $06                                     ; $68a0: $06 $06
    jr nz, jr_07e_68b5                            ; $68a2: $20 $11

    ld [de], a                                    ; $68a4: $12

jr_07e_68a5:
    ld hl, $0b0a                                  ; $68a5: $21 $0a $0b
    inc d                                         ; $68a8: $14
    dec d                                         ; $68a9: $15
    inc c                                         ; $68aa: $0c
    dec c                                         ; $68ab: $0d
    jr jr_07e_68c7                                ; $68ac: $18 $19

    ld [hl+], a                                   ; $68ae: $22
    inc hl                                        ; $68af: $23
    inc h                                         ; $68b0: $24
    dec h                                         ; $68b1: $25
    ld bc, $0101                                  ; $68b2: $01 $01 $01

jr_07e_68b5:
    ld bc, $0707                                  ; $68b5: $01 $07 $07
    rlca                                          ; $68b8: $07
    rlca                                          ; $68b9: $07
    dec b                                         ; $68ba: $05
    ld b, $06                                     ; $68bb: $06 $06
    ld b, $06                                     ; $68bd: $06 $06
    dec b                                         ; $68bf: $05
    ld b, $02                                     ; $68c0: $06 $02
    ld h, $27                                     ; $68c2: $26 $27
    jr z, jr_07e_68ef                             ; $68c4: $28 $29

    ld a, [hl+]                                   ; $68c6: $2a

jr_07e_68c7:
    dec hl                                        ; $68c7: $2b
    inc l                                         ; $68c8: $2c
    dec l                                         ; $68c9: $2d
    ld l, $2f                                     ; $68ca: $2e $2f
    jr nc, jr_07e_68ff                            ; $68cc: $30 $31

    ld e, $1f                                     ; $68ce: $1e $1f
    ld [hl+], a                                   ; $68d0: $22
    inc hl                                        ; $68d1: $23
    nop                                           ; $68d2: $00
    nop                                           ; $68d3: $00
    nop                                           ; $68d4: $00
    nop                                           ; $68d5: $00
    nop                                           ; $68d6: $00
    nop                                           ; $68d7: $00
    nop                                           ; $68d8: $00
    nop                                           ; $68d9: $00
    nop                                           ; $68da: $00
    nop                                           ; $68db: $00
    nop                                           ; $68dc: $00
    nop                                           ; $68dd: $00
    rlca                                          ; $68de: $07
    rlca                                          ; $68df: $07
    rlca                                          ; $68e0: $07
    rlca                                          ; $68e1: $07
    pop de                                        ; $68e2: $d1
    jp nc, Jump_000_3332                          ; $68e3: $d2 $32 $33

    pop de                                        ; $68e6: $d1
    jp nc, Jump_000_3534                          ; $68e7: $d2 $34 $35

    pop de                                        ; $68ea: $d1
    jp nc, Jump_000_3736                          ; $68eb: $d2 $36 $37

    pop de                                        ; $68ee: $d1

jr_07e_68ef:
    jp nc, $3938                                  ; $68ef: $d2 $38 $39

    add b                                         ; $68f2: $80
    add b                                         ; $68f3: $80
    inc bc                                        ; $68f4: $03
    inc bc                                        ; $68f5: $03
    add b                                         ; $68f6: $80
    add b                                         ; $68f7: $80
    inc bc                                        ; $68f8: $03
    inc bc                                        ; $68f9: $03
    add b                                         ; $68fa: $80
    add b                                         ; $68fb: $80
    ld bc, $8003                                  ; $68fc: $01 $03 $80

jr_07e_68ff:
    add b                                         ; $68ff: $80
    ld bc, $3a01                                  ; $6900: $01 $01 $3a
    dec sp                                        ; $6903: $3b
    inc a                                         ; $6904: $3c
    dec a                                         ; $6905: $3d
    ld a, $3f                                     ; $6906: $3e $3f
    ld b, b                                       ; $6908: $40
    ld b, c                                       ; $6909: $41
    ld b, d                                       ; $690a: $42
    ld b, e                                       ; $690b: $43
    ld b, h                                       ; $690c: $44
    ld b, l                                       ; $690d: $45
    ld b, [hl]                                    ; $690e: $46
    ld b, a                                       ; $690f: $47
    ld c, b                                       ; $6910: $48
    rla                                           ; $6911: $17
    inc bc                                        ; $6912: $03
    inc bc                                        ; $6913: $03
    ld b, $05                                     ; $6914: $06 $05
    inc bc                                        ; $6916: $03
    inc bc                                        ; $6917: $03
    inc b                                         ; $6918: $04
    ld b, $03                                     ; $6919: $06 $03
    inc bc                                        ; $691b: $03
    inc b                                         ; $691c: $04
    rlca                                          ; $691d: $07
    inc bc                                        ; $691e: $03
    inc bc                                        ; $691f: $03
    inc b                                         ; $6920: $04
    rlca                                          ; $6921: $07
    ld c, c                                       ; $6922: $49
    ld c, d                                       ; $6923: $4a
    ld c, e                                       ; $6924: $4b
    ld c, h                                       ; $6925: $4c
    ld c, l                                       ; $6926: $4d
    ld c, [hl]                                    ; $6927: $4e
    ld c, a                                       ; $6928: $4f
    ld d, b                                       ; $6929: $50
    ld d, c                                       ; $692a: $51
    ld d, d                                       ; $692b: $52
    ld d, e                                       ; $692c: $53
    ld d, h                                       ; $692d: $54
    ld a, [bc]                                    ; $692e: $0a
    dec bc                                        ; $692f: $0b
    inc d                                         ; $6930: $14
    dec d                                         ; $6931: $15
    ld b, $06                                     ; $6932: $06 $06
    dec b                                         ; $6934: $05
    ld b, $06                                     ; $6935: $06 $06
    dec b                                         ; $6937: $05
    ld [bc], a                                    ; $6938: $02
    ld b, $06                                     ; $6939: $06 $06
    ld [bc], a                                    ; $693b: $02
    ld b, $05                                     ; $693c: $06 $05
    ld b, $05                                     ; $693e: $06 $05
    ld b, $06                                     ; $6940: $06 $06
    inc a                                         ; $6942: $3c
    dec a                                         ; $6943: $3d
    ld c, c                                       ; $6944: $49
    ld c, d                                       ; $6945: $4a
    ld d, l                                       ; $6946: $55
    ld b, c                                       ; $6947: $41
    ld c, l                                       ; $6948: $4d
    ld c, [hl]                                    ; $6949: $4e
    ld d, [hl]                                    ; $694a: $56
    ld b, l                                       ; $694b: $45
    ld d, c                                       ; $694c: $51
    ld d, d                                       ; $694d: $52
    ld d, $17                                     ; $694e: $16 $17
    ld a, [bc]                                    ; $6950: $0a
    dec bc                                        ; $6951: $0b
    ld [bc], a                                    ; $6952: $02
    dec b                                         ; $6953: $05
    ld b, $06                                     ; $6954: $06 $06
    dec b                                         ; $6956: $05
    ld b, $05                                     ; $6957: $06 $05
    ld b, $06                                     ; $6959: $06 $06
    ld b, $06                                     ; $695b: $06 $06
    dec b                                         ; $695d: $05
    ld [bc], a                                    ; $695e: $02
    dec b                                         ; $695f: $05
    dec b                                         ; $6960: $05
    ld b, $d1                                     ; $6961: $06 $d1
    jp nc, Jump_07e_5857                          ; $6963: $d2 $57 $58

    pop de                                        ; $6966: $d1
    jp nc, Jump_07e_5a59                          ; $6967: $d2 $59 $5a

    pop de                                        ; $696a: $d1
    jp nc, $5c5b                                  ; $696b: $d2 $5b $5c

    pop de                                        ; $696e: $d1
    jp nc, Jump_07e_5e5d                          ; $696f: $d2 $5d $5e

    add b                                         ; $6972: $80
    add b                                         ; $6973: $80
    ld bc, $8001                                  ; $6974: $01 $01 $80
    add b                                         ; $6977: $80
    ld bc, $8001                                  ; $6978: $01 $01 $80
    add b                                         ; $697b: $80
    inc bc                                        ; $697c: $03
    inc bc                                        ; $697d: $03
    add b                                         ; $697e: $80
    add b                                         ; $697f: $80
    ld b, $03                                     ; $6980: $06 $03
    ld e, a                                       ; $6982: $5f
    ld h, b                                       ; $6983: $60
    ld h, c                                       ; $6984: $61
    ld c, $62                                     ; $6985: $0e $62
    ld h, e                                       ; $6987: $63
    ld h, h                                       ; $6988: $64
    ld [hl-], a                                   ; $6989: $32
    ld h, l                                       ; $698a: $65
    ld h, [hl]                                    ; $698b: $66
    ld h, a                                       ; $698c: $67
    inc [hl]                                      ; $698d: $34
    ld l, b                                       ; $698e: $68
    ld l, c                                       ; $698f: $69
    ld l, d                                       ; $6990: $6a
    ld l, e                                       ; $6991: $6b
    inc bc                                        ; $6992: $03
    inc bc                                        ; $6993: $03
    inc b                                         ; $6994: $04
    ld [bc], a                                    ; $6995: $02
    ld [bc], a                                    ; $6996: $02
    ld [bc], a                                    ; $6997: $02
    inc b                                         ; $6998: $04
    ld [bc], a                                    ; $6999: $02
    ld [bc], a                                    ; $699a: $02
    ld [bc], a                                    ; $699b: $02
    ld [bc], a                                    ; $699c: $02
    ld [bc], a                                    ; $699d: $02
    ld [bc], a                                    ; $699e: $02
    ld [bc], a                                    ; $699f: $02
    ld [bc], a                                    ; $69a0: $02
    ld bc, $1c0f                                  ; $69a1: $01 $0f $1c
    dec e                                         ; $69a4: $1d
    add hl, de                                    ; $69a5: $19
    inc sp                                        ; $69a6: $33
    ld a, [hl-]                                   ; $69a7: $3a
    dec sp                                        ; $69a8: $3b
    dec h                                         ; $69a9: $25
    dec [hl]                                      ; $69aa: $35
    ld a, $3f                                     ; $69ab: $3e $3f
    ld c, h                                       ; $69ad: $4c
    ld b, d                                       ; $69ae: $42
    ld b, d                                       ; $69af: $42
    ld b, e                                       ; $69b0: $43
    ld d, b                                       ; $69b1: $50
    ld [bc], a                                    ; $69b2: $02
    ld [bc], a                                    ; $69b3: $02
    ld [bc], a                                    ; $69b4: $02
    ld b, $02                                     ; $69b5: $06 $02
    ld [bc], a                                    ; $69b7: $02
    ld [bc], a                                    ; $69b8: $02
    ld b, $02                                     ; $69b9: $06 $02
    ld [bc], a                                    ; $69bb: $02
    ld [bc], a                                    ; $69bc: $02
    rlca                                          ; $69bd: $07
    ld [bc], a                                    ; $69be: $02
    ld [bc], a                                    ; $69bf: $02
    ld [bc], a                                    ; $69c0: $02
    rlca                                          ; $69c1: $07
    ld a, [de]                                    ; $69c2: $1a
    dec de                                        ; $69c3: $1b
    inc c                                         ; $69c4: $0c
    dec c                                         ; $69c5: $0d
    ld e, $1f                                     ; $69c6: $1e $1f
    ld [hl+], a                                   ; $69c8: $22
    inc hl                                        ; $69c9: $23
    inc a                                         ; $69ca: $3c
    dec a                                         ; $69cb: $3d
    ld c, c                                       ; $69cc: $49
    ld c, d                                       ; $69cd: $4a
    ld d, l                                       ; $69ce: $55
    ld b, c                                       ; $69cf: $41
    ld c, l                                       ; $69d0: $4d
    ld c, [hl]                                    ; $69d1: $4e
    ld b, $02                                     ; $69d2: $06 $02
    dec b                                         ; $69d4: $05
    dec b                                         ; $69d5: $05
    dec b                                         ; $69d6: $05
    ld b, $05                                     ; $69d7: $06 $05
    ld [bc], a                                    ; $69d9: $02
    ld b, $06                                     ; $69da: $06 $06
    dec b                                         ; $69dc: $05
    ld b, $06                                     ; $69dd: $06 $06
    dec b                                         ; $69df: $05
    ld b, $05                                     ; $69e0: $06 $05
    ld l, h                                       ; $69e2: $6c
    ld l, l                                       ; $69e3: $6d
    ld l, [hl]                                    ; $69e4: $6e
    ld l, a                                       ; $69e5: $6f
    ld [hl], b                                    ; $69e6: $70
    ld [hl], c                                    ; $69e7: $71
    ld [hl], d                                    ; $69e8: $72
    ld [hl], e                                    ; $69e9: $73
    ld [hl], h                                    ; $69ea: $74
    ld [hl], l                                    ; $69eb: $75
    halt                                          ; $69ec: $76
    ld [hl], a                                    ; $69ed: $77
    ld a, b                                       ; $69ee: $78
    ld a, c                                       ; $69ef: $79
    ld a, d                                       ; $69f0: $7a
    ld a, e                                       ; $69f1: $7b
    ld [bc], a                                    ; $69f2: $02
    ld [bc], a                                    ; $69f3: $02
    ld bc, $0201                                  ; $69f4: $01 $01 $02
    ld [bc], a                                    ; $69f7: $02
    ld bc, $0001                                  ; $69f8: $01 $01 $00
    nop                                           ; $69fb: $00
    ld bc, $0001                                  ; $69fc: $01 $01 $00
    nop                                           ; $69ff: $00
    ld bc, $7c01                                  ; $6a00: $01 $01 $7c
    ld a, l                                       ; $6a03: $7d
    db $d3                                        ; $6a04: $d3
    call nc, Call_07e_7f7e                        ; $6a05: $d4 $7e $7f
    add b                                         ; $6a08: $80
    add c                                         ; $6a09: $81
    add d                                         ; $6a0a: $82
    add e                                         ; $6a0b: $83
    add h                                         ; $6a0c: $84
    add l                                         ; $6a0d: $85
    add [hl]                                      ; $6a0e: $86
    add a                                         ; $6a0f: $87
    adc b                                         ; $6a10: $88
    adc c                                         ; $6a11: $89
    ld bc, $0101                                  ; $6a12: $01 $01 $01
    ld bc, $0101                                  ; $6a15: $01 $01 $01
    add hl, bc                                    ; $6a18: $09
    add hl, bc                                    ; $6a19: $09
    add hl, bc                                    ; $6a1a: $09
    add hl, bc                                    ; $6a1b: $09
    inc c                                         ; $6a1c: $0c
    inc c                                         ; $6a1d: $0c
    ld a, [bc]                                    ; $6a1e: $0a
    ld a, [bc]                                    ; $6a1f: $0a
    inc c                                         ; $6a20: $0c
    inc c                                         ; $6a21: $0c
    jp nc, $d1d1                                  ; $6a22: $d2 $d1 $d1

    pop de                                        ; $6a25: $d1
    jp nc, $d1d1                                  ; $6a26: $d2 $d1 $d1

    pop de                                        ; $6a29: $d1
    jp nc, $d1d1                                  ; $6a2a: $d2 $d1 $d1

    pop de                                        ; $6a2d: $d1
    jp nc, $d1d1                                  ; $6a2e: $d2 $d1 $d1

    pop de                                        ; $6a31: $d1
    add b                                         ; $6a32: $80
    add b                                         ; $6a33: $80
    add b                                         ; $6a34: $80
    add b                                         ; $6a35: $80
    add b                                         ; $6a36: $80
    add b                                         ; $6a37: $80
    add b                                         ; $6a38: $80
    add b                                         ; $6a39: $80
    add b                                         ; $6a3a: $80
    add b                                         ; $6a3b: $80
    add b                                         ; $6a3c: $80
    add b                                         ; $6a3d: $80
    add b                                         ; $6a3e: $80
    add b                                         ; $6a3f: $80
    add b                                         ; $6a40: $80
    add b                                         ; $6a41: $80
    adc d                                         ; $6a42: $8a
    adc e                                         ; $6a43: $8b
    adc h                                         ; $6a44: $8c
    adc l                                         ; $6a45: $8d
    adc [hl]                                      ; $6a46: $8e
    adc a                                         ; $6a47: $8f
    ld d, $17                                     ; $6a48: $16 $17
    sub b                                         ; $6a4a: $90
    sub c                                         ; $6a4b: $91
    sub d                                         ; $6a4c: $92
    sub e                                         ; $6a4d: $93
    inc h                                         ; $6a4e: $24
    dec h                                         ; $6a4f: $25
    sub h                                         ; $6a50: $94
    sub l                                         ; $6a51: $95
    ld [$0908], sp                                ; $6a52: $08 $08 $09
    add hl, bc                                    ; $6a55: $09
    ld [$0708], sp                                ; $6a56: $08 $08 $07
    rlca                                          ; $6a59: $07
    ld [$0b08], sp                                ; $6a5a: $08 $08 $0b
    dec bc                                        ; $6a5d: $0b
    rlca                                          ; $6a5e: $07
    rlca                                          ; $6a5f: $07
    dec bc                                        ; $6a60: $0b
    dec bc                                        ; $6a61: $0b
    sub [hl]                                      ; $6a62: $96
    sub a                                         ; $6a63: $97
    sbc b                                         ; $6a64: $98
    sbc c                                         ; $6a65: $99
    sbc d                                         ; $6a66: $9a
    sbc e                                         ; $6a67: $9b
    sbc h                                         ; $6a68: $9c
    sbc l                                         ; $6a69: $9d
    sbc [hl]                                      ; $6a6a: $9e
    sbc a                                         ; $6a6b: $9f
    and b                                         ; $6a6c: $a0
    and c                                         ; $6a6d: $a1
    and d                                         ; $6a6e: $a2
    and e                                         ; $6a6f: $a3
    and h                                         ; $6a70: $a4
    and l                                         ; $6a71: $a5
    ld a, [bc]                                    ; $6a72: $0a
    ld a, [bc]                                    ; $6a73: $0a
    inc c                                         ; $6a74: $0c
    inc c                                         ; $6a75: $0c
    ld a, [bc]                                    ; $6a76: $0a
    ld a, [bc]                                    ; $6a77: $0a
    inc c                                         ; $6a78: $0c
    inc c                                         ; $6a79: $0c
    inc c                                         ; $6a7a: $0c
    inc c                                         ; $6a7b: $0c
    inc c                                         ; $6a7c: $0c
    inc c                                         ; $6a7d: $0c
    inc c                                         ; $6a7e: $0c
    inc c                                         ; $6a7f: $0c
    inc c                                         ; $6a80: $0c
    inc c                                         ; $6a81: $0c
    ld c, e                                       ; $6a82: $4b
    ld c, h                                       ; $6a83: $4c
    and [hl]                                      ; $6a84: $a6
    and a                                         ; $6a85: $a7
    ld c, a                                       ; $6a86: $4f
    ld d, b                                       ; $6a87: $50
    xor b                                         ; $6a88: $a8
    xor c                                         ; $6a89: $a9
    ld d, e                                       ; $6a8a: $53
    ld d, h                                       ; $6a8b: $54
    ld d, [hl]                                    ; $6a8c: $56
    ld b, l                                       ; $6a8d: $45
    inc d                                         ; $6a8e: $14
    dec d                                         ; $6a8f: $15
    ld d, $17                                     ; $6a90: $16 $17
    dec b                                         ; $6a92: $05
    ld b, $0b                                     ; $6a93: $06 $0b
    dec bc                                        ; $6a95: $0b
    ld b, $05                                     ; $6a96: $06 $05
    dec bc                                        ; $6a98: $0b
    dec bc                                        ; $6a99: $0b
    ld b, $06                                     ; $6a9a: $06 $06
    rlca                                          ; $6a9c: $07
    rlca                                          ; $6a9d: $07
    dec b                                         ; $6a9e: $05
    ld b, $02                                     ; $6a9f: $06 $02
    ld b, $aa                                     ; $6aa1: $06 $aa
    xor e                                         ; $6aa3: $ab
    xor h                                         ; $6aa4: $ac
    xor l                                         ; $6aa5: $ad
    xor [hl]                                      ; $6aa6: $ae
    xor a                                         ; $6aa7: $af
    or b                                          ; $6aa8: $b0
    or c                                          ; $6aa9: $b1
    sbc d                                         ; $6aaa: $9a
    sbc e                                         ; $6aab: $9b
    or d                                          ; $6aac: $b2
    or e                                          ; $6aad: $b3
    ld a, [bc]                                    ; $6aae: $0a
    dec bc                                        ; $6aaf: $0b
    or h                                          ; $6ab0: $b4
    or l                                          ; $6ab1: $b5
    inc c                                         ; $6ab2: $0c
    inc c                                         ; $6ab3: $0c
    inc c                                         ; $6ab4: $0c
    inc c                                         ; $6ab5: $0c
    dec bc                                        ; $6ab6: $0b
    dec bc                                        ; $6ab7: $0b
    ld a, [bc]                                    ; $6ab8: $0a
    ld a, [bc]                                    ; $6ab9: $0a
    dec bc                                        ; $6aba: $0b
    dec bc                                        ; $6abb: $0b
    ld a, [bc]                                    ; $6abc: $0a
    ld a, [bc]                                    ; $6abd: $0a
    rlca                                          ; $6abe: $07
    rlca                                          ; $6abf: $07
    ld a, [bc]                                    ; $6ac0: $0a
    ld a, [bc]                                    ; $6ac1: $0a
    jr jr_07e_6add                                ; $6ac2: $18 $19

    ld a, [de]                                    ; $6ac4: $1a
    dec de                                        ; $6ac5: $1b
    inc h                                         ; $6ac6: $24
    dec h                                         ; $6ac7: $25
    ld e, $1f                                     ; $6ac8: $1e $1f
    ld c, e                                       ; $6aca: $4b
    ld c, h                                       ; $6acb: $4c
    inc a                                         ; $6acc: $3c
    dec a                                         ; $6acd: $3d
    ld c, a                                       ; $6ace: $4f
    ld d, b                                       ; $6acf: $50
    ld d, l                                       ; $6ad0: $55
    ld b, c                                       ; $6ad1: $41
    ld b, $05                                     ; $6ad2: $06 $05
    ld b, $02                                     ; $6ad4: $06 $02
    dec b                                         ; $6ad6: $05
    ld b, $05                                     ; $6ad7: $06 $05
    ld b, $05                                     ; $6ad9: $06 $05
    dec b                                         ; $6adb: $05
    dec b                                         ; $6adc: $05

jr_07e_6add:
    ld [bc], a                                    ; $6add: $02
    dec b                                         ; $6ade: $05
    dec b                                         ; $6adf: $05
    ld b, $05                                     ; $6ae0: $06 $05
    inc c                                         ; $6ae2: $0c
    dec c                                         ; $6ae3: $0d
    jr @+$1b                                      ; $6ae4: $18 $19

    ld [hl+], a                                   ; $6ae6: $22
    inc hl                                        ; $6ae7: $23
    inc h                                         ; $6ae8: $24
    dec h                                         ; $6ae9: $25
    ld c, c                                       ; $6aea: $49
    ld c, d                                       ; $6aeb: $4a
    ld c, e                                       ; $6aec: $4b
    ld c, h                                       ; $6aed: $4c
    ld c, l                                       ; $6aee: $4d
    ld c, [hl]                                    ; $6aef: $4e
    ld c, a                                       ; $6af0: $4f
    ld d, b                                       ; $6af1: $50
    dec b                                         ; $6af2: $05
    ld b, $07                                     ; $6af3: $06 $07
    rlca                                          ; $6af5: $07
    ld b, $02                                     ; $6af6: $06 $02
    ld b, $07                                     ; $6af8: $06 $07
    dec b                                         ; $6afa: $05
    dec b                                         ; $6afb: $05
    ld b, $07                                     ; $6afc: $06 $07
    ld b, $06                                     ; $6afe: $06 $06
    ld b, $07                                     ; $6b00: $06 $07
    jp nc, $d1d1                                  ; $6b02: $d2 $d1 $d1

    pop de                                        ; $6b05: $d1
    jp nc, $d1d1                                  ; $6b06: $d2 $d1 $d1

    pop de                                        ; $6b09: $d1
    or [hl]                                       ; $6b0a: $b6
    or a                                          ; $6b0b: $b7
    cp b                                          ; $6b0c: $b8
    pop de                                        ; $6b0d: $d1
    cp c                                          ; $6b0e: $b9
    cp d                                          ; $6b0f: $ba
    jp nc, $80d1                                  ; $6b10: $d2 $d1 $80

    add b                                         ; $6b13: $80
    add b                                         ; $6b14: $80
    add b                                         ; $6b15: $80
    add b                                         ; $6b16: $80
    add b                                         ; $6b17: $80
    add b                                         ; $6b18: $80
    add b                                         ; $6b19: $80
    adc b                                         ; $6b1a: $88
    adc b                                         ; $6b1b: $88
    adc b                                         ; $6b1c: $88
    add b                                         ; $6b1d: $80
    add hl, bc                                    ; $6b1e: $09
    add hl, bc                                    ; $6b1f: $09
    add b                                         ; $6b20: $80
    add b                                         ; $6b21: $80
    pop de                                        ; $6b22: $d1
    jp nc, $bcbb                                  ; $6b23: $d2 $bb $bc

    pop de                                        ; $6b26: $d1
    jp nc, $bebd                                  ; $6b27: $d2 $bd $be

    pop de                                        ; $6b2a: $d1
    jp nc, $c0bf                                  ; $6b2b: $d2 $bf $c0

    pop de                                        ; $6b2e: $d1
    jp nc, $3938                                  ; $6b2f: $d2 $38 $39

    add b                                         ; $6b32: $80
    add b                                         ; $6b33: $80
    ld c, $0b                                     ; $6b34: $0e $0b
    add b                                         ; $6b36: $80
    add b                                         ; $6b37: $80
    ld c, $0b                                     ; $6b38: $0e $0b
    add b                                         ; $6b3a: $80
    add b                                         ; $6b3b: $80
    ld c, $0c                                     ; $6b3c: $0e $0c
    add b                                         ; $6b3e: $80
    add b                                         ; $6b3f: $80
    inc bc                                        ; $6b40: $03
    inc bc                                        ; $6b41: $03
    pop bc                                        ; $6b42: $c1
    jp nz, $c4c3                                  ; $6b43: $c2 $c3 $c4

    push bc                                       ; $6b46: $c5
    cp [hl]                                       ; $6b47: $be
    push bc                                       ; $6b48: $c5
    add $c7                                       ; $6b49: $c6 $c7
    ret z                                         ; $6b4b: $c8

    ld e, c                                       ; $6b4c: $59
    ld e, d                                       ; $6b4d: $5a
    ret                                           ; $6b4e: $c9


    jp z, $1f40                                   ; $6b4f: $ca $40 $1f

    dec bc                                        ; $6b52: $0b
    ld a, [bc]                                    ; $6b53: $0a
    ld a, [bc]                                    ; $6b54: $0a
    add hl, bc                                    ; $6b55: $09
    ld a, [bc]                                    ; $6b56: $0a
    ld a, [bc]                                    ; $6b57: $0a
    ld a, [bc]                                    ; $6b58: $0a
    add hl, bc                                    ; $6b59: $09
    inc c                                         ; $6b5a: $0c
    inc c                                         ; $6b5b: $0c
    ld bc, $0c01                                  ; $6b5c: $01 $01 $0c
    inc c                                         ; $6b5f: $0c
    inc bc                                        ; $6b60: $03
    rlca                                          ; $6b61: $07
    set 1, h                                      ; $6b62: $cb $cc
    call Call_000_0a54                            ; $6b64: $cd $54 $0a
    dec bc                                        ; $6b67: $0b
    inc d                                         ; $6b68: $14
    dec d                                         ; $6b69: $15
    inc c                                         ; $6b6a: $0c
    dec c                                         ; $6b6b: $0d
    jr @+$1b                                      ; $6b6c: $18 $19

    ld [hl+], a                                   ; $6b6e: $22
    inc hl                                        ; $6b6f: $23
    inc h                                         ; $6b70: $24
    dec h                                         ; $6b71: $25
    ld a, [bc]                                    ; $6b72: $0a
    ld a, [bc]                                    ; $6b73: $0a
    ld a, [bc]                                    ; $6b74: $0a
    rlca                                          ; $6b75: $07
    rlca                                          ; $6b76: $07
    rlca                                          ; $6b77: $07
    rlca                                          ; $6b78: $07
    rlca                                          ; $6b79: $07
    rlca                                          ; $6b7a: $07
    dec b                                         ; $6b7b: $05
    dec b                                         ; $6b7c: $05
    ld b, $07                                     ; $6b7d: $06 $07
    dec b                                         ; $6b7f: $05
    ld b, $05                                     ; $6b80: $06 $05
    ld d, [hl]                                    ; $6b82: $56
    ld b, l                                       ; $6b83: $45
    ld d, c                                       ; $6b84: $51
    ld d, d                                       ; $6b85: $52
    ld d, $17                                     ; $6b86: $16 $17
    ld a, [bc]                                    ; $6b88: $0a
    dec bc                                        ; $6b89: $0b
    ld a, [de]                                    ; $6b8a: $1a
    dec de                                        ; $6b8b: $1b
    inc c                                         ; $6b8c: $0c
    dec c                                         ; $6b8d: $0d
    ld e, $1f                                     ; $6b8e: $1e $1f
    ld [hl+], a                                   ; $6b90: $22
    inc hl                                        ; $6b91: $23
    ld [bc], a                                    ; $6b92: $02
    ld b, $06                                     ; $6b93: $06 $06
    dec b                                         ; $6b95: $05
    ld b, $05                                     ; $6b96: $06 $05
    dec b                                         ; $6b98: $05
    ld b, $06                                     ; $6b99: $06 $06
    ld b, $02                                     ; $6b9b: $06 $02
    ld b, $05                                     ; $6b9d: $06 $05
    ld b, $06                                     ; $6b9f: $06 $06
    dec b                                         ; $6ba1: $05
    pop de                                        ; $6ba2: $d1
    jp nc, $cfce                                  ; $6ba3: $d2 $ce $cf

    pop de                                        ; $6ba6: $d1
    jp nc, $3938                                  ; $6ba7: $d2 $38 $39

    pop de                                        ; $6baa: $d1
    jp nc, Jump_07e_5857                          ; $6bab: $d2 $57 $58

    pop de                                        ; $6bae: $d1
    jp nc, Jump_07e_5a59                          ; $6baf: $d2 $59 $5a

    add b                                         ; $6bb2: $80
    add b                                         ; $6bb3: $80
    dec bc                                        ; $6bb4: $0b
    dec bc                                        ; $6bb5: $0b
    add b                                         ; $6bb6: $80
    add b                                         ; $6bb7: $80
    inc bc                                        ; $6bb8: $03
    inc bc                                        ; $6bb9: $03
    add b                                         ; $6bba: $80
    add b                                         ; $6bbb: $80
    inc bc                                        ; $6bbc: $03
    inc bc                                        ; $6bbd: $03
    add b                                         ; $6bbe: $80
    add b                                         ; $6bbf: $80
    inc bc                                        ; $6bc0: $03
    inc bc                                        ; $6bc1: $03
    ret nc                                        ; $6bc2: $d0

    pop de                                        ; $6bc3: $d1
    ld b, h                                       ; $6bc4: $44
    dec a                                         ; $6bc5: $3d
    jr c, jr_07e_6c01                             ; $6bc6: $38 $39

    ld c, b                                       ; $6bc8: $48
    ld b, c                                       ; $6bc9: $41
    ld d, a                                       ; $6bca: $57
    ld e, b                                       ; $6bcb: $58
    ld h, c                                       ; $6bcc: $61
    ld b, l                                       ; $6bcd: $45
    ld e, c                                       ; $6bce: $59
    ld e, d                                       ; $6bcf: $5a
    jp nc, Jump_000_0e17                          ; $6bd0: $d2 $17 $0e

    inc c                                         ; $6bd3: $0c
    inc bc                                        ; $6bd4: $03
    rlca                                          ; $6bd5: $07
    ld b, $06                                     ; $6bd6: $06 $06
    inc bc                                        ; $6bd8: $03
    rlca                                          ; $6bd9: $07
    ld b, $06                                     ; $6bda: $06 $06
    inc bc                                        ; $6bdc: $03
    rlca                                          ; $6bdd: $07
    ld b, $06                                     ; $6bde: $06 $06
    dec bc                                        ; $6be0: $0b
    rlca                                          ; $6be1: $07
    ld c, c                                       ; $6be2: $49
    ld c, d                                       ; $6be3: $4a
    ld c, e                                       ; $6be4: $4b
    ld c, h                                       ; $6be5: $4c
    ld c, l                                       ; $6be6: $4d
    ld c, [hl]                                    ; $6be7: $4e
    ld c, a                                       ; $6be8: $4f
    ld d, b                                       ; $6be9: $50
    ld d, c                                       ; $6bea: $51
    ld d, d                                       ; $6beb: $52
    ld d, e                                       ; $6bec: $53
    ld d, h                                       ; $6bed: $54
    ld a, [bc]                                    ; $6bee: $0a
    dec bc                                        ; $6bef: $0b
    inc d                                         ; $6bf0: $14
    dec d                                         ; $6bf1: $15
    ld b, $02                                     ; $6bf2: $06 $02
    dec b                                         ; $6bf4: $05
    ld b, $05                                     ; $6bf5: $06 $05
    dec b                                         ; $6bf7: $05
    ld b, $06                                     ; $6bf8: $06 $06
    ld b, $05                                     ; $6bfa: $06 $05
    ld b, $05                                     ; $6bfc: $06 $05
    dec b                                         ; $6bfe: $05
    ld b, $05                                     ; $6bff: $06 $05

jr_07e_6c01:
    ld b, $3c                                     ; $6c01: $06 $3c
    dec a                                         ; $6c03: $3d
    ld c, c                                       ; $6c04: $49
    ld c, d                                       ; $6c05: $4a
    ld d, l                                       ; $6c06: $55
    ld b, c                                       ; $6c07: $41
    ld c, l                                       ; $6c08: $4d
    ld c, [hl]                                    ; $6c09: $4e
    ld d, [hl]                                    ; $6c0a: $56
    ld b, l                                       ; $6c0b: $45
    ld d, c                                       ; $6c0c: $51
    ld d, d                                       ; $6c0d: $52
    ld d, $17                                     ; $6c0e: $16 $17
    ld a, [bc]                                    ; $6c10: $0a
    dec bc                                        ; $6c11: $0b
    ld [bc], a                                    ; $6c12: $02
    ld b, $05                                     ; $6c13: $06 $05
    ld b, $06                                     ; $6c15: $06 $06
    ld b, $02                                     ; $6c17: $06 $02
    ld b, $06                                     ; $6c19: $06 $06
    dec b                                         ; $6c1b: $05
    ld b, $06                                     ; $6c1c: $06 $06
    ld [bc], a                                    ; $6c1e: $02
    ld b, $06                                     ; $6c1f: $06 $06
    ld b, $d1                                     ; $6c21: $06 $d1
    jp nc, $d35b                                  ; $6c23: $d2 $5b $d3

    pop de                                        ; $6c26: $d1
    or [hl]                                       ; $6c27: $b6
    or a                                          ; $6c28: $b7
    or a                                          ; $6c29: $b7
    pop de                                        ; $6c2a: $d1
    pop de                                        ; $6c2b: $d1
    pop de                                        ; $6c2c: $d1
    pop de                                        ; $6c2d: $d1
    pop de                                        ; $6c2e: $d1
    pop de                                        ; $6c2f: $d1
    pop de                                        ; $6c30: $d1
    pop de                                        ; $6c31: $d1
    add b                                         ; $6c32: $80
    add b                                         ; $6c33: $80
    inc b                                         ; $6c34: $04
    inc c                                         ; $6c35: $0c
    add b                                         ; $6c36: $80
    adc b                                         ; $6c37: $88
    adc b                                         ; $6c38: $88
    adc b                                         ; $6c39: $88
    add b                                         ; $6c3a: $80
    add b                                         ; $6c3b: $80
    add b                                         ; $6c3c: $80
    add b                                         ; $6c3d: $80
    add b                                         ; $6c3e: $80
    add b                                         ; $6c3f: $80
    add b                                         ; $6c40: $80
    add b                                         ; $6c41: $80
    call nc, $d6d5                                ; $6c42: $d4 $d5 $d6
    dec de                                        ; $6c45: $1b
    or a                                          ; $6c46: $b7
    or a                                          ; $6c47: $b7
    or a                                          ; $6c48: $b7
    or a                                          ; $6c49: $b7
    pop de                                        ; $6c4a: $d1
    pop de                                        ; $6c4b: $d1
    pop de                                        ; $6c4c: $d1
    pop de                                        ; $6c4d: $d1
    pop de                                        ; $6c4e: $d1
    pop de                                        ; $6c4f: $d1
    pop de                                        ; $6c50: $d1
    pop de                                        ; $6c51: $d1
    inc c                                         ; $6c52: $0c
    inc c                                         ; $6c53: $0c
    dec bc                                        ; $6c54: $0b
    rlca                                          ; $6c55: $07
    adc b                                         ; $6c56: $88
    adc b                                         ; $6c57: $88
    adc b                                         ; $6c58: $88
    adc b                                         ; $6c59: $88
    add b                                         ; $6c5a: $80
    add b                                         ; $6c5b: $80
    add b                                         ; $6c5c: $80
    add b                                         ; $6c5d: $80
    add b                                         ; $6c5e: $80
    add b                                         ; $6c5f: $80
    add b                                         ; $6c60: $80
    add b                                         ; $6c61: $80
    inc c                                         ; $6c62: $0c
    dec c                                         ; $6c63: $0d
    jr jr_07e_6c7f                                ; $6c64: $18 $19

    or a                                          ; $6c66: $b7
    or a                                          ; $6c67: $b7
    or a                                          ; $6c68: $b7
    or a                                          ; $6c69: $b7
    pop de                                        ; $6c6a: $d1
    pop de                                        ; $6c6b: $d1
    pop de                                        ; $6c6c: $d1
    pop de                                        ; $6c6d: $d1
    pop de                                        ; $6c6e: $d1
    pop de                                        ; $6c6f: $d1
    pop de                                        ; $6c70: $d1
    pop de                                        ; $6c71: $d1
    ld b, $05                                     ; $6c72: $06 $05
    ld b, $02                                     ; $6c74: $06 $02
    adc b                                         ; $6c76: $88
    adc b                                         ; $6c77: $88
    adc b                                         ; $6c78: $88
    adc b                                         ; $6c79: $88
    add b                                         ; $6c7a: $80
    add b                                         ; $6c7b: $80
    add b                                         ; $6c7c: $80
    add b                                         ; $6c7d: $80
    add b                                         ; $6c7e: $80

jr_07e_6c7f:
    add b                                         ; $6c7f: $80
    add b                                         ; $6c80: $80
    add b                                         ; $6c81: $80
    ld a, [de]                                    ; $6c82: $1a
    dec de                                        ; $6c83: $1b
    inc c                                         ; $6c84: $0c
    dec c                                         ; $6c85: $0d
    or a                                          ; $6c86: $b7
    or a                                          ; $6c87: $b7
    or a                                          ; $6c88: $b7
    or a                                          ; $6c89: $b7
    pop de                                        ; $6c8a: $d1
    pop de                                        ; $6c8b: $d1
    pop de                                        ; $6c8c: $d1
    pop de                                        ; $6c8d: $d1
    pop de                                        ; $6c8e: $d1
    pop de                                        ; $6c8f: $d1
    pop de                                        ; $6c90: $d1
    pop de                                        ; $6c91: $d1
    dec b                                         ; $6c92: $05
    ld b, $05                                     ; $6c93: $06 $05
    dec b                                         ; $6c95: $05
    adc b                                         ; $6c96: $88
    adc b                                         ; $6c97: $88
    adc b                                         ; $6c98: $88
    adc b                                         ; $6c99: $88
    add b                                         ; $6c9a: $80
    add b                                         ; $6c9b: $80
    add b                                         ; $6c9c: $80
    add b                                         ; $6c9d: $80
    add b                                         ; $6c9e: $80
    add b                                         ; $6c9f: $80
    add b                                         ; $6ca0: $80
    add b                                         ; $6ca1: $80
    ld d, e                                       ; $6ca2: $53
    ld d, h                                       ; $6ca3: $54
    ld d, [hl]                                    ; $6ca4: $56
    ld b, l                                       ; $6ca5: $45
    inc d                                         ; $6ca6: $14
    dec d                                         ; $6ca7: $15
    ld d, $17                                     ; $6ca8: $16 $17
    jr jr_07e_6cc5                                ; $6caa: $18 $19

    ld a, [de]                                    ; $6cac: $1a
    dec de                                        ; $6cad: $1b
    inc h                                         ; $6cae: $24
    dec h                                         ; $6caf: $25
    ld e, $1f                                     ; $6cb0: $1e $1f
    ld b, $06                                     ; $6cb2: $06 $06
    ld b, $05                                     ; $6cb4: $06 $05
    ld b, $02                                     ; $6cb6: $06 $02
    dec b                                         ; $6cb8: $05
    ld b, $05                                     ; $6cb9: $06 $05
    ld b, $06                                     ; $6cbb: $06 $06
    ld b, $05                                     ; $6cbd: $06 $05
    ld b, $05                                     ; $6cbf: $06 $05
    dec b                                         ; $6cc1: $05
    ld d, c                                       ; $6cc2: $51
    ld d, d                                       ; $6cc3: $52
    ld d, e                                       ; $6cc4: $53

jr_07e_6cc5:
    ld d, h                                       ; $6cc5: $54
    ld a, [bc]                                    ; $6cc6: $0a
    dec bc                                        ; $6cc7: $0b
    inc d                                         ; $6cc8: $14
    dec d                                         ; $6cc9: $15
    inc c                                         ; $6cca: $0c
    dec c                                         ; $6ccb: $0d
    jr @+$1b                                      ; $6ccc: $18 $19

    ld [hl+], a                                   ; $6cce: $22
    inc hl                                        ; $6ccf: $23
    inc h                                         ; $6cd0: $24
    dec h                                         ; $6cd1: $25
    ld b, $02                                     ; $6cd2: $06 $02
    dec b                                         ; $6cd4: $05
    rlca                                          ; $6cd5: $07
    ld b, $06                                     ; $6cd6: $06 $06
    ld b, $07                                     ; $6cd8: $06 $07
    dec b                                         ; $6cda: $05
    ld b, $06                                     ; $6cdb: $06 $06
    rlca                                          ; $6cdd: $07
    dec b                                         ; $6cde: $05
    ld b, $06                                     ; $6cdf: $06 $06
    rlca                                          ; $6ce1: $07
    rst $10                                       ; $6ce2: $d7
    ret c                                         ; $6ce3: $d8

    reti                                          ; $6ce4: $d9


    pop de                                        ; $6ce5: $d1
    jp c, $d9db                                   ; $6ce6: $da $db $d9

    pop de                                        ; $6ce9: $d1
    call c, $d9dd                                 ; $6cea: $dc $dd $d9
    pop de                                        ; $6ced: $d1
    sbc $df                                       ; $6cee: $de $df
    reti                                          ; $6cf0: $d9


    pop de                                        ; $6cf1: $d1
    add hl, bc                                    ; $6cf2: $09
    add hl, bc                                    ; $6cf3: $09
    adc b                                         ; $6cf4: $88
    add b                                         ; $6cf5: $80
    add hl, bc                                    ; $6cf6: $09
    add hl, bc                                    ; $6cf7: $09
    adc b                                         ; $6cf8: $88
    add b                                         ; $6cf9: $80
    add hl, bc                                    ; $6cfa: $09
    add hl, bc                                    ; $6cfb: $09
    adc b                                         ; $6cfc: $88
    add b                                         ; $6cfd: $80
    add hl, bc                                    ; $6cfe: $09
    add hl, bc                                    ; $6cff: $09
    adc b                                         ; $6d00: $88
    add b                                         ; $6d01: $80
    ld c, e                                       ; $6d02: $4b
    ld c, h                                       ; $6d03: $4c
    inc a                                         ; $6d04: $3c
    dec a                                         ; $6d05: $3d
    ld c, a                                       ; $6d06: $4f
    ld d, b                                       ; $6d07: $50
    ld d, l                                       ; $6d08: $55
    ld b, c                                       ; $6d09: $41
    ld d, e                                       ; $6d0a: $53
    ld d, h                                       ; $6d0b: $54
    ld d, [hl]                                    ; $6d0c: $56
    ld b, l                                       ; $6d0d: $45
    inc d                                         ; $6d0e: $14
    dec d                                         ; $6d0f: $15
    ld d, $17                                     ; $6d10: $16 $17
    ld b, $06                                     ; $6d12: $06 $06
    dec b                                         ; $6d14: $05
    dec b                                         ; $6d15: $05
    dec b                                         ; $6d16: $05
    dec b                                         ; $6d17: $05
    dec b                                         ; $6d18: $05
    ld b, $02                                     ; $6d19: $06 $02
    ld b, $05                                     ; $6d1b: $06 $05
    dec b                                         ; $6d1d: $05
    dec b                                         ; $6d1e: $05
    ld b, $06                                     ; $6d1f: $06 $06
    dec b                                         ; $6d21: $05
    ld c, c                                       ; $6d22: $49
    ld c, d                                       ; $6d23: $4a
    ld c, e                                       ; $6d24: $4b
    ld c, h                                       ; $6d25: $4c
    ld c, l                                       ; $6d26: $4d
    ld c, [hl]                                    ; $6d27: $4e
    ld c, a                                       ; $6d28: $4f
    ld d, b                                       ; $6d29: $50
    ld d, c                                       ; $6d2a: $51
    ld d, d                                       ; $6d2b: $52
    ld d, e                                       ; $6d2c: $53
    ld d, h                                       ; $6d2d: $54
    ld a, [bc]                                    ; $6d2e: $0a
    dec bc                                        ; $6d2f: $0b
    inc d                                         ; $6d30: $14
    dec d                                         ; $6d31: $15
    ld b, $02                                     ; $6d32: $06 $02
    dec b                                         ; $6d34: $05
    rlca                                          ; $6d35: $07
    dec b                                         ; $6d36: $05
    ld b, $06                                     ; $6d37: $06 $06
    ld b, $06                                     ; $6d39: $06 $06
    dec b                                         ; $6d3b: $05
    ld b, $05                                     ; $6d3c: $06 $05
    ld b, $06                                     ; $6d3e: $06 $06
    ld b, $06                                     ; $6d40: $06 $06
    inc a                                         ; $6d42: $3c
    dec a                                         ; $6d43: $3d
    reti                                          ; $6d44: $d9


    ldh [rHDMA5], a                               ; $6d45: $e0 $55
    ld b, c                                       ; $6d47: $41
    jp nc, $e1e0                                  ; $6d48: $d2 $e0 $e1

    or a                                          ; $6d4b: $b7
    ld [c], a                                     ; $6d4c: $e2
    ldh [$d2], a                                  ; $6d4d: $e0 $d2
    pop de                                        ; $6d4f: $d1
    pop de                                        ; $6d50: $d1
    pop de                                        ; $6d51: $d1
    rlca                                          ; $6d52: $07
    rlca                                          ; $6d53: $07
    adc b                                         ; $6d54: $88
    adc b                                         ; $6d55: $88
    ld b, $07                                     ; $6d56: $06 $07
    add b                                         ; $6d58: $80
    adc b                                         ; $6d59: $88
    adc b                                         ; $6d5a: $88
    adc b                                         ; $6d5b: $88
    adc b                                         ; $6d5c: $88
    adc b                                         ; $6d5d: $88
    add b                                         ; $6d5e: $80
    add b                                         ; $6d5f: $80
    add b                                         ; $6d60: $80
    add b                                         ; $6d61: $80
    jr jr_07e_6d7d                                ; $6d62: $18 $19

    ld a, [de]                                    ; $6d64: $1a
    dec de                                        ; $6d65: $1b
    or a                                          ; $6d66: $b7
    or a                                          ; $6d67: $b7
    or a                                          ; $6d68: $b7
    or a                                          ; $6d69: $b7
    pop de                                        ; $6d6a: $d1
    pop de                                        ; $6d6b: $d1
    pop de                                        ; $6d6c: $d1
    pop de                                        ; $6d6d: $d1
    pop de                                        ; $6d6e: $d1
    pop de                                        ; $6d6f: $d1
    pop de                                        ; $6d70: $d1
    pop de                                        ; $6d71: $d1
    ld b, $05                                     ; $6d72: $06 $05
    dec b                                         ; $6d74: $05
    ld b, $88                                     ; $6d75: $06 $88
    adc b                                         ; $6d77: $88
    adc b                                         ; $6d78: $88
    adc b                                         ; $6d79: $88
    add b                                         ; $6d7a: $80
    add b                                         ; $6d7b: $80
    add b                                         ; $6d7c: $80

jr_07e_6d7d:
    add b                                         ; $6d7d: $80
    add b                                         ; $6d7e: $80
    add b                                         ; $6d7f: $80
    add b                                         ; $6d80: $80
    add b                                         ; $6d81: $80
    inc c                                         ; $6d82: $0c
    dec c                                         ; $6d83: $0d
    jr jr_07e_6d9f                                ; $6d84: $18 $19

    or a                                          ; $6d86: $b7
    or a                                          ; $6d87: $b7
    or a                                          ; $6d88: $b7
    or a                                          ; $6d89: $b7
    pop de                                        ; $6d8a: $d1
    pop de                                        ; $6d8b: $d1
    pop de                                        ; $6d8c: $d1
    pop de                                        ; $6d8d: $d1
    pop de                                        ; $6d8e: $d1
    pop de                                        ; $6d8f: $d1
    pop de                                        ; $6d90: $d1
    pop de                                        ; $6d91: $d1
    dec b                                         ; $6d92: $05
    ld b, $06                                     ; $6d93: $06 $06
    rlca                                          ; $6d95: $07
    adc b                                         ; $6d96: $88
    adc b                                         ; $6d97: $88
    adc b                                         ; $6d98: $88
    adc b                                         ; $6d99: $88
    add b                                         ; $6d9a: $80
    add b                                         ; $6d9b: $80
    add b                                         ; $6d9c: $80
    add b                                         ; $6d9d: $80
    add b                                         ; $6d9e: $80

jr_07e_6d9f:
    add b                                         ; $6d9f: $80
    add b                                         ; $6da0: $80
    add b                                         ; $6da1: $80
    jp nc, $d1d1                                  ; $6da2: $d2 $d1 $d1

    pop de                                        ; $6da5: $d1
    ld [c], a                                     ; $6da6: $e2
    pop de                                        ; $6da7: $d1
    pop de                                        ; $6da8: $d1
    pop de                                        ; $6da9: $d1
    pop de                                        ; $6daa: $d1
    pop de                                        ; $6dab: $d1
    pop de                                        ; $6dac: $d1
    pop de                                        ; $6dad: $d1
    pop de                                        ; $6dae: $d1
    pop de                                        ; $6daf: $d1
    pop de                                        ; $6db0: $d1
    pop de                                        ; $6db1: $d1
    add b                                         ; $6db2: $80
    add b                                         ; $6db3: $80
    add b                                         ; $6db4: $80
    add b                                         ; $6db5: $80
    adc b                                         ; $6db6: $88
    add b                                         ; $6db7: $80
    add b                                         ; $6db8: $80
    add b                                         ; $6db9: $80
    add b                                         ; $6dba: $80
    add b                                         ; $6dbb: $80
    add b                                         ; $6dbc: $80
    add b                                         ; $6dbd: $80
    add b                                         ; $6dbe: $80
    add b                                         ; $6dbf: $80
    add b                                         ; $6dc0: $80
    add b                                         ; $6dc1: $80
    ld a, [bc]                                    ; $6dc2: $0a
    nop                                           ; $6dc3: $00
    rlca                                          ; $6dc4: $07
    nop                                           ; $6dc5: $00
    ldh [rTAC], a                                 ; $6dc6: $e0 $07
    pop de                                        ; $6dc8: $d1
    jp nc, $d4d3                                  ; $6dc9: $d2 $d3 $d4

    pop de                                        ; $6dcc: $d1
    jp nc, $d5d3                                  ; $6dcd: $d2 $d3 $d5

    pop de                                        ; $6dd0: $d1
    jp nc, $d6d3                                  ; $6dd1: $d2 $d3 $d6

    pop de                                        ; $6dd4: $d1
    jp nc, $d7d3                                  ; $6dd5: $d2 $d3 $d7

    add b                                         ; $6dd8: $80
    add b                                         ; $6dd9: $80
    ld [bc], a                                    ; $6dda: $02
    ld [bc], a                                    ; $6ddb: $02
    add b                                         ; $6ddc: $80
    add b                                         ; $6ddd: $80
    ld [bc], a                                    ; $6dde: $02
    ld [bc], a                                    ; $6ddf: $02
    add b                                         ; $6de0: $80
    add b                                         ; $6de1: $80
    ld [bc], a                                    ; $6de2: $02
    ld [bc], a                                    ; $6de3: $02
    add b                                         ; $6de4: $80
    add b                                         ; $6de5: $80
    ld [bc], a                                    ; $6de6: $02
    ld [bc], a                                    ; $6de7: $02
    ret c                                         ; $6de8: $d8

    reti                                          ; $6de9: $d9


    jp c, $dcdb                                   ; $6dea: $da $db $dc

    db $dd                                        ; $6ded: $dd
    sbc $df                                       ; $6dee: $de $df
    ldh [$e1], a                                  ; $6df0: $e0 $e1
    ld [c], a                                     ; $6df2: $e2
    db $e3                                        ; $6df3: $e3
    db $e4                                        ; $6df4: $e4
    push hl                                       ; $6df5: $e5
    and $e7                                       ; $6df6: $e6 $e7
    ld bc, $0101                                  ; $6df8: $01 $01 $01
    ld bc, $0101                                  ; $6dfb: $01 $01 $01
    ld bc, $0101                                  ; $6dfe: $01 $01 $01
    ld bc, $0101                                  ; $6e01: $01 $01 $01
    ld bc, $0101                                  ; $6e04: $01 $01 $01
    ld bc, $d3d4                                  ; $6e07: $01 $d4 $d3
    db $d3                                        ; $6e0a: $d3
    call nc, $e8d5                                ; $6e0b: $d4 $d5 $e8
    jp hl                                         ; $6e0e: $e9


    push de                                       ; $6e0f: $d5
    sub $ea                                       ; $6e10: $d6 $ea
    db $eb                                        ; $6e12: $eb
    sub $d7                                       ; $6e13: $d6 $d7
    db $ec                                        ; $6e15: $ec
    db $ed                                        ; $6e16: $ed
    rst $10                                       ; $6e17: $d7
    ld [hl+], a                                   ; $6e18: $22
    ld [bc], a                                    ; $6e19: $02
    ld [bc], a                                    ; $6e1a: $02
    ld [bc], a                                    ; $6e1b: $02
    ld [hl+], a                                   ; $6e1c: $22
    ld [bc], a                                    ; $6e1d: $02
    ld [bc], a                                    ; $6e1e: $02
    ld [bc], a                                    ; $6e1f: $02
    ld [hl+], a                                   ; $6e20: $22
    ld [bc], a                                    ; $6e21: $02
    ld [bc], a                                    ; $6e22: $02
    ld [bc], a                                    ; $6e23: $02
    ld [hl+], a                                   ; $6e24: $22
    ld [bc], a                                    ; $6e25: $02
    ld [bc], a                                    ; $6e26: $02
    ld [bc], a                                    ; $6e27: $02
    xor $ef                                       ; $6e28: $ee $ef
    ldh a, [$f1]                                  ; $6e2a: $f0 $f1
    call c, $f3f2                                 ; $6e2c: $dc $f2 $f3
    rst $18                                       ; $6e2f: $df
    ldh [$e1], a                                  ; $6e30: $e0 $e1
    ld [c], a                                     ; $6e32: $e2
    db $e3                                        ; $6e33: $e3
    db $e4                                        ; $6e34: $e4
    push hl                                       ; $6e35: $e5
    and $e7                                       ; $6e36: $e6 $e7
    ld bc, $0101                                  ; $6e38: $01 $01 $01
    ld bc, $0101                                  ; $6e3b: $01 $01 $01
    ld bc, $0101                                  ; $6e3e: $01 $01 $01
    ld bc, $0101                                  ; $6e41: $01 $01 $01
    ld bc, $0101                                  ; $6e44: $01 $01 $01
    ld bc, $d2d1                                  ; $6e47: $01 $d1 $d2
    db $d3                                        ; $6e4a: $d3
    db $f4                                        ; $6e4b: $f4
    pop de                                        ; $6e4c: $d1
    jp nc, $f6f5                                  ; $6e4d: $d2 $f5 $f6

    pop de                                        ; $6e50: $d1
    jp nc, $f8f7                                  ; $6e51: $d2 $f7 $f8

    pop de                                        ; $6e54: $d1
    jp nc, $faf9                                  ; $6e55: $d2 $f9 $fa

    add b                                         ; $6e58: $80
    add b                                         ; $6e59: $80
    ld [bc], a                                    ; $6e5a: $02
    ld [bc], a                                    ; $6e5b: $02
    add b                                         ; $6e5c: $80
    add b                                         ; $6e5d: $80
    ld [bc], a                                    ; $6e5e: $02
    ld [bc], a                                    ; $6e5f: $02
    add b                                         ; $6e60: $80
    add b                                         ; $6e61: $80
    rlca                                          ; $6e62: $07
    rlca                                          ; $6e63: $07
    add b                                         ; $6e64: $80
    add b                                         ; $6e65: $80
    rlca                                          ; $6e66: $07
    ld b, $fb                                     ; $6e67: $06 $fb
    db $fc                                        ; $6e69: $fc
    db $fc                                        ; $6e6a: $fc
    ei                                            ; $6e6b: $fb
    db $fd                                        ; $6e6c: $fd
    cp $ff                                        ; $6e6d: $fe $ff
    nop                                           ; $6e6f: $00
    ld bc, $0302                                  ; $6e70: $01 $02 $03
    inc b                                         ; $6e73: $04
    dec b                                         ; $6e74: $05
    ld b, $07                                     ; $6e75: $06 $07
    ld [$0101], sp                                ; $6e77: $08 $01 $01
    ld hl, $0221                                  ; $6e7a: $21 $21 $02
    ld [bc], a                                    ; $6e7d: $02
    ld [bc], a                                    ; $6e7e: $02
    ld [bc], a                                    ; $6e7f: $02
    rlca                                          ; $6e80: $07
    rlca                                          ; $6e81: $07
    rlca                                          ; $6e82: $07
    rlca                                          ; $6e83: $07
    dec b                                         ; $6e84: $05
    ld b, $06                                     ; $6e85: $06 $06
    dec b                                         ; $6e87: $05
    db $f4                                        ; $6e88: $f4
    add hl, bc                                    ; $6e89: $09
    ld a, [bc]                                    ; $6e8a: $0a
    db $f4                                        ; $6e8b: $f4
    dec bc                                        ; $6e8c: $0b
    inc c                                         ; $6e8d: $0c
    dec c                                         ; $6e8e: $0d
    or $0e                                        ; $6e8f: $f6 $0e
    rrca                                          ; $6e91: $0f
    db $10                                        ; $6e92: $10
    ld hl, sp+$11                                 ; $6e93: $f8 $11
    ld [de], a                                    ; $6e95: $12
    ld sp, hl                                     ; $6e96: $f9
    ld a, [$0222]                                 ; $6e97: $fa $22 $02
    ld [bc], a                                    ; $6e9a: $02
    ld [bc], a                                    ; $6e9b: $02
    ld [bc], a                                    ; $6e9c: $02
    inc bc                                        ; $6e9d: $03
    inc bc                                        ; $6e9e: $03
    ld [bc], a                                    ; $6e9f: $02
    rlca                                          ; $6ea0: $07
    inc bc                                        ; $6ea1: $03
    inc bc                                        ; $6ea2: $03
    rlca                                          ; $6ea3: $07
    ld b, $07                                     ; $6ea4: $06 $07
    rlca                                          ; $6ea6: $07
    rlca                                          ; $6ea7: $07
    ei                                            ; $6ea8: $fb
    db $fc                                        ; $6ea9: $fc
    db $fc                                        ; $6eaa: $fc
    ei                                            ; $6eab: $fb
    db $fd                                        ; $6eac: $fd
    cp $ff                                        ; $6ead: $fe $ff
    nop                                           ; $6eaf: $00
    ld bc, $0302                                  ; $6eb0: $01 $02 $03
    inc b                                         ; $6eb3: $04
    dec b                                         ; $6eb4: $05
    ld b, $07                                     ; $6eb5: $06 $07
    ld [$0101], sp                                ; $6eb7: $08 $01 $01
    ld hl, $0221                                  ; $6eba: $21 $21 $02
    ld [bc], a                                    ; $6ebd: $02
    ld [bc], a                                    ; $6ebe: $02
    ld [bc], a                                    ; $6ebf: $02
    rlca                                          ; $6ec0: $07
    rlca                                          ; $6ec1: $07
    rlca                                          ; $6ec2: $07
    rlca                                          ; $6ec3: $07
    ld b, $06                                     ; $6ec4: $06 $06
    dec b                                         ; $6ec6: $05
    dec b                                         ; $6ec7: $05
    pop de                                        ; $6ec8: $d1
    jp nc, Jump_000_1413                          ; $6ec9: $d2 $13 $14

    pop de                                        ; $6ecc: $d1
    jp nc, $1615                                  ; $6ecd: $d2 $15 $16

    pop de                                        ; $6ed0: $d1
    jp nc, $f8f7                                  ; $6ed1: $d2 $f7 $f8

    pop de                                        ; $6ed4: $d1
    jp nc, $faf9                                  ; $6ed5: $d2 $f9 $fa

    add b                                         ; $6ed8: $80
    add b                                         ; $6ed9: $80
    rlca                                          ; $6eda: $07
    ld b, $80                                     ; $6edb: $06 $80
    add b                                         ; $6edd: $80
    rlca                                          ; $6ede: $07
    dec b                                         ; $6edf: $05
    add b                                         ; $6ee0: $80
    add b                                         ; $6ee1: $80
    rlca                                          ; $6ee2: $07
    ld b, $80                                     ; $6ee3: $06 $80
    add b                                         ; $6ee5: $80
    rlca                                          ; $6ee6: $07
    ld b, $17                                     ; $6ee7: $06 $17
    jr jr_07e_6f04                                ; $6ee9: $18 $19

    ld a, [de]                                    ; $6eeb: $1a
    dec de                                        ; $6eec: $1b
    inc e                                         ; $6eed: $1c
    dec e                                         ; $6eee: $1d
    ld e, $01                                     ; $6eef: $1e $01
    ld [bc], a                                    ; $6ef1: $02
    inc bc                                        ; $6ef2: $03
    inc b                                         ; $6ef3: $04
    dec b                                         ; $6ef4: $05
    ld b, $07                                     ; $6ef5: $06 $07
    ld [$0506], sp                                ; $6ef7: $08 $06 $05
    ld b, $06                                     ; $6efa: $06 $06
    ld b, $06                                     ; $6efc: $06 $06
    ld b, $06                                     ; $6efe: $06 $06
    dec b                                         ; $6f00: $05
    dec b                                         ; $6f01: $05
    ld b, $05                                     ; $6f02: $06 $05

jr_07e_6f04:
    dec b                                         ; $6f04: $05
    ld b, $06                                     ; $6f05: $06 $06
    dec b                                         ; $6f07: $05
    rra                                           ; $6f08: $1f
    jr nz, @+$15                                  ; $6f09: $20 $13

    inc d                                         ; $6f0b: $14
    ld hl, $1522                                  ; $6f0c: $21 $22 $15
    ld d, $0e                                     ; $6f0f: $16 $0e
    inc hl                                        ; $6f11: $23
    rst $30                                       ; $6f12: $f7
    ld hl, sp+$11                                 ; $6f13: $f8 $11
    ld [de], a                                    ; $6f15: $12
    ld sp, hl                                     ; $6f16: $f9
    ld a, [$0506]                                 ; $6f17: $fa $06 $05
    dec b                                         ; $6f1a: $05
    dec b                                         ; $6f1b: $05
    dec b                                         ; $6f1c: $05
    ld b, $06                                     ; $6f1d: $06 $06
    dec b                                         ; $6f1f: $05
    ld b, $05                                     ; $6f20: $06 $05
    ld b, $06                                     ; $6f22: $06 $06
    ld b, $06                                     ; $6f24: $06 $06
    ld b, $06                                     ; $6f26: $06 $06
    rla                                           ; $6f28: $17
    jr jr_07e_6f44                                ; $6f29: $18 $19

    ld a, [de]                                    ; $6f2b: $1a
    dec de                                        ; $6f2c: $1b
    inc e                                         ; $6f2d: $1c
    dec e                                         ; $6f2e: $1d
    ld e, $01                                     ; $6f2f: $1e $01
    ld [bc], a                                    ; $6f31: $02
    inc bc                                        ; $6f32: $03
    inc h                                         ; $6f33: $24
    dec b                                         ; $6f34: $05
    ld b, $07                                     ; $6f35: $06 $07
    dec h                                         ; $6f37: $25
    ld b, $06                                     ; $6f38: $06 $06
    ld b, $05                                     ; $6f3a: $06 $05
    dec b                                         ; $6f3c: $05
    ld b, $06                                     ; $6f3d: $06 $06
    ld b, $05                                     ; $6f3f: $06 $05
    dec b                                         ; $6f41: $05
    ld b, $04                                     ; $6f42: $06 $04

jr_07e_6f44:
    ld b, $05                                     ; $6f44: $06 $05
    ld b, $04                                     ; $6f46: $06 $04
    pop de                                        ; $6f48: $d1
    jp nc, Jump_000_1413                          ; $6f49: $d2 $13 $14

    pop de                                        ; $6f4c: $d1
    jp nc, $1615                                  ; $6f4d: $d2 $15 $16

    pop de                                        ; $6f50: $d1
    jp nc, $f8f7                                  ; $6f51: $d2 $f7 $f8

    pop de                                        ; $6f54: $d1
    jp nc, $faf9                                  ; $6f55: $d2 $f9 $fa

    add b                                         ; $6f58: $80
    add b                                         ; $6f59: $80
    rlca                                          ; $6f5a: $07
    dec b                                         ; $6f5b: $05
    add b                                         ; $6f5c: $80
    add b                                         ; $6f5d: $80
    rlca                                          ; $6f5e: $07
    ld b, $80                                     ; $6f5f: $06 $80
    add b                                         ; $6f61: $80
    rlca                                          ; $6f62: $07
    dec b                                         ; $6f63: $05
    add b                                         ; $6f64: $80
    add b                                         ; $6f65: $80
    rlca                                          ; $6f66: $07
    ld b, $17                                     ; $6f67: $06 $17
    jr jr_07e_6f84                                ; $6f69: $18 $19

    ld a, [de]                                    ; $6f6b: $1a
    ld h, $1c                                     ; $6f6c: $26 $1c
    dec e                                         ; $6f6e: $1d
    daa                                           ; $6f6f: $27
    jr z, @+$2b                                   ; $6f70: $28 $29

    inc bc                                        ; $6f72: $03
    ld a, [hl+]                                   ; $6f73: $2a
    dec hl                                        ; $6f74: $2b
    inc l                                         ; $6f75: $2c
    rlca                                          ; $6f76: $07
    dec l                                         ; $6f77: $2d
    ld b, $06                                     ; $6f78: $06 $06
    dec b                                         ; $6f7a: $05
    ld b, $06                                     ; $6f7b: $06 $06
    dec b                                         ; $6f7d: $05
    ld b, $04                                     ; $6f7e: $06 $04
    inc b                                         ; $6f80: $04
    ld b, $06                                     ; $6f81: $06 $06
    inc b                                         ; $6f83: $04

jr_07e_6f84:
    inc b                                         ; $6f84: $04
    ld b, $05                                     ; $6f85: $06 $05
    inc b                                         ; $6f87: $04
    rra                                           ; $6f88: $1f
    jr nz, jr_07e_6f9e                            ; $6f89: $20 $13

    inc d                                         ; $6f8b: $14
    ld l, $2e                                     ; $6f8c: $2e $2e
    cpl                                           ; $6f8e: $2f
    ld d, $30                                     ; $6f8f: $16 $30
    ld sp, $f832                                  ; $6f91: $31 $32 $f8
    inc sp                                        ; $6f94: $33
    inc [hl]                                      ; $6f95: $34
    dec [hl]                                      ; $6f96: $35
    ld a, [$0505]                                 ; $6f97: $fa $05 $05
    ld b, $05                                     ; $6f9a: $06 $05
    inc b                                         ; $6f9c: $04
    inc b                                         ; $6f9d: $04

jr_07e_6f9e:
    inc b                                         ; $6f9e: $04
    ld b, $04                                     ; $6f9f: $06 $04
    inc b                                         ; $6fa1: $04
    inc b                                         ; $6fa2: $04
    ld b, $04                                     ; $6fa3: $06 $04
    inc b                                         ; $6fa5: $04
    inc b                                         ; $6fa6: $04
    rlca                                          ; $6fa7: $07
    rla                                           ; $6fa8: $17
    jr jr_07e_6fc4                                ; $6fa9: $18 $19

    ld [hl], $1b                                  ; $6fab: $36 $1b
    inc e                                         ; $6fad: $1c
    dec e                                         ; $6fae: $1d
    scf                                           ; $6faf: $37
    ld bc, $0302                                  ; $6fb0: $01 $02 $03
    jr c, jr_07e_6fba                             ; $6fb3: $38 $05

    ld b, $07                                     ; $6fb5: $06 $07
    ld [$0605], sp                                ; $6fb7: $08 $05 $06

jr_07e_6fba:
    dec b                                         ; $6fba: $05
    inc b                                         ; $6fbb: $04
    dec b                                         ; $6fbc: $05
    dec b                                         ; $6fbd: $05
    ld b, $04                                     ; $6fbe: $06 $04
    ld b, $06                                     ; $6fc0: $06 $06
    ld b, $04                                     ; $6fc2: $06 $04

jr_07e_6fc4:
    dec b                                         ; $6fc4: $05
    ld b, $05                                     ; $6fc5: $06 $05
    rlca                                          ; $6fc7: $07
    call nc, $d3d3                                ; $6fc8: $d4 $d3 $d3
    db $d3                                        ; $6fcb: $d3
    push de                                       ; $6fcc: $d5
    db $d3                                        ; $6fcd: $d3
    add hl, sp                                    ; $6fce: $39
    ld a, [hl-]                                   ; $6fcf: $3a
    sub $d3                                       ; $6fd0: $d6 $d3
    dec sp                                        ; $6fd2: $3b
    inc a                                         ; $6fd3: $3c
    rst $10                                       ; $6fd4: $d7
    db $d3                                        ; $6fd5: $d3
    dec a                                         ; $6fd6: $3d
    ld a, $22                                     ; $6fd7: $3e $22
    ld [bc], a                                    ; $6fd9: $02
    ld [bc], a                                    ; $6fda: $02
    ld [bc], a                                    ; $6fdb: $02
    ld [hl+], a                                   ; $6fdc: $22
    ld [bc], a                                    ; $6fdd: $02
    ld [bc], a                                    ; $6fde: $02
    ld [bc], a                                    ; $6fdf: $02
    ld [hl+], a                                   ; $6fe0: $22
    ld [bc], a                                    ; $6fe1: $02
    ld [bc], a                                    ; $6fe2: $02
    ld [bc], a                                    ; $6fe3: $02
    ld [hl+], a                                   ; $6fe4: $22
    ld [bc], a                                    ; $6fe5: $02
    ld [bc], a                                    ; $6fe6: $02
    ld [bc], a                                    ; $6fe7: $02
    db $d3                                        ; $6fe8: $d3
    call nc, $efee                                ; $6fe9: $d4 $ee $ef
    db $d3                                        ; $6fec: $d3
    push de                                       ; $6fed: $d5
    call c, $d3f2                                 ; $6fee: $dc $f2 $d3
    sub $e0                                       ; $6ff1: $d6 $e0
    pop hl                                        ; $6ff3: $e1
    db $d3                                        ; $6ff4: $d3
    rst $10                                       ; $6ff5: $d7
    db $e4                                        ; $6ff6: $e4
    push hl                                       ; $6ff7: $e5
    ld [bc], a                                    ; $6ff8: $02
    ld [bc], a                                    ; $6ff9: $02
    ld bc, $0201                                  ; $6ffa: $01 $01 $02
    ld [bc], a                                    ; $6ffd: $02
    ld bc, $0201                                  ; $6ffe: $01 $01 $02
    ld [bc], a                                    ; $7001: $02
    ld bc, $0201                                  ; $7002: $01 $01 $02
    ld [bc], a                                    ; $7005: $02
    ld bc, $f001                                  ; $7006: $01 $01 $f0
    pop af                                        ; $7009: $f1
    call nc, $f3d3                                ; $700a: $d4 $d3 $f3
    rst $18                                       ; $700d: $df
    push de                                       ; $700e: $d5
    ccf                                           ; $700f: $3f
    ld [c], a                                     ; $7010: $e2
    db $e3                                        ; $7011: $e3
    sub $40                                       ; $7012: $d6 $40
    and $e7                                       ; $7014: $e6 $e7
    rst $10                                       ; $7016: $d7
    ld b, c                                       ; $7017: $41
    ld bc, $2201                                  ; $7018: $01 $01 $22
    ld [bc], a                                    ; $701b: $02
    ld bc, $2201                                  ; $701c: $01 $01 $22
    ld [bc], a                                    ; $701f: $02
    ld bc, $2201                                  ; $7020: $01 $01 $22
    ld [bc], a                                    ; $7023: $02
    ld bc, $2201                                  ; $7024: $01 $01 $22
    ld [bc], a                                    ; $7027: $02
    db $d3                                        ; $7028: $d3
    call nc, $d9d8                                ; $7029: $d4 $d8 $d9
    ld b, d                                       ; $702c: $42
    push de                                       ; $702d: $d5
    call c, Call_07e_43dd                         ; $702e: $dc $dd $43
    sub $e0                                       ; $7031: $d6 $e0
    pop hl                                        ; $7033: $e1
    ld b, h                                       ; $7034: $44
    rst $10                                       ; $7035: $d7
    db $e4                                        ; $7036: $e4
    push hl                                       ; $7037: $e5
    ld [bc], a                                    ; $7038: $02
    ld [bc], a                                    ; $7039: $02
    ld bc, $0201                                  ; $703a: $01 $01 $02
    ld [bc], a                                    ; $703d: $02
    ld bc, $0201                                  ; $703e: $01 $01 $02
    ld [bc], a                                    ; $7041: $02
    ld bc, $0201                                  ; $7042: $01 $01 $02
    ld [bc], a                                    ; $7045: $02
    ld bc, $f401                                  ; $7046: $01 $01 $f4
    db $d3                                        ; $7049: $d3
    ld b, l                                       ; $704a: $45
    ld b, [hl]                                    ; $704b: $46
    dec bc                                        ; $704c: $0b
    push af                                       ; $704d: $f5
    inc c                                         ; $704e: $0c
    dec c                                         ; $704f: $0d
    ld c, $23                                     ; $7050: $0e $23
    rrca                                          ; $7052: $0f
    db $10                                        ; $7053: $10
    ld de, $f912                                  ; $7054: $11 $12 $f9
    ld a, [$0222]                                 ; $7057: $fa $22 $02
    ld [bc], a                                    ; $705a: $02
    ld [bc], a                                    ; $705b: $02
    ld [bc], a                                    ; $705c: $02
    ld [bc], a                                    ; $705d: $02
    inc bc                                        ; $705e: $03
    inc bc                                        ; $705f: $03
    rlca                                          ; $7060: $07
    rlca                                          ; $7061: $07
    inc bc                                        ; $7062: $03
    inc bc                                        ; $7063: $03
    ld b, $05                                     ; $7064: $06 $05
    rlca                                          ; $7066: $07
    rlca                                          ; $7067: $07
    db $d3                                        ; $7068: $d3
    db $f4                                        ; $7069: $f4
    ei                                            ; $706a: $fb
    db $fc                                        ; $706b: $fc
    push af                                       ; $706c: $f5
    or $fd                                        ; $706d: $f6 $fd
    cp $01                                        ; $706f: $fe $01
    ld [bc], a                                    ; $7071: $02
    inc bc                                        ; $7072: $03
    inc b                                         ; $7073: $04
    dec b                                         ; $7074: $05
    ld b, $07                                     ; $7075: $06 $07
    ld [$0202], sp                                ; $7077: $08 $02 $02
    ld bc, $0201                                  ; $707a: $01 $01 $02
    ld [bc], a                                    ; $707d: $02
    ld [bc], a                                    ; $707e: $02
    ld [bc], a                                    ; $707f: $02
    rlca                                          ; $7080: $07
    rlca                                          ; $7081: $07
    rlca                                          ; $7082: $07
    rlca                                          ; $7083: $07
    rlca                                          ; $7084: $07
    ld b, $05                                     ; $7085: $06 $05
    ld b, $fc                                     ; $7087: $06 $fc
    ei                                            ; $7089: $fb
    db $f4                                        ; $708a: $f4
    ld b, a                                       ; $708b: $47
    rst $38                                       ; $708c: $ff
    nop                                           ; $708d: $00
    dec bc                                        ; $708e: $0b
    inc c                                         ; $708f: $0c
    ld c, $23                                     ; $7090: $0e $23
    rst $30                                       ; $7092: $f7
    rrca                                          ; $7093: $0f
    ld de, $f912                                  ; $7094: $11 $12 $f9
    ld a, [$2121]                                 ; $7097: $fa $21 $21
    ld [hl+], a                                   ; $709a: $22
    ld [bc], a                                    ; $709b: $02
    ld [bc], a                                    ; $709c: $02
    ld [bc], a                                    ; $709d: $02
    ld [bc], a                                    ; $709e: $02
    inc bc                                        ; $709f: $03
    rlca                                          ; $70a0: $07
    rlca                                          ; $70a1: $07
    rlca                                          ; $70a2: $07
    inc bc                                        ; $70a3: $03
    dec b                                         ; $70a4: $05
    ld b, $06                                     ; $70a5: $06 $06
    rlca                                          ; $70a7: $07
    ld c, b                                       ; $70a8: $48
    db $f4                                        ; $70a9: $f4
    ei                                            ; $70aa: $fb
    db $fc                                        ; $70ab: $fc
    dec c                                         ; $70ac: $0d
    or $fd                                        ; $70ad: $f6 $fd
    cp $10                                        ; $70af: $fe $10
    ld [bc], a                                    ; $70b1: $02
    inc bc                                        ; $70b2: $03
    inc b                                         ; $70b3: $04
    dec b                                         ; $70b4: $05
    ld b, $07                                     ; $70b5: $06 $07
    ld [$0202], sp                                ; $70b7: $08 $02 $02
    ld bc, $0301                                  ; $70ba: $01 $01 $03
    ld [bc], a                                    ; $70bd: $02
    ld [bc], a                                    ; $70be: $02
    ld [bc], a                                    ; $70bf: $02
    inc bc                                        ; $70c0: $03
    rlca                                          ; $70c1: $07
    rlca                                          ; $70c2: $07
    rlca                                          ; $70c3: $07
    rlca                                          ; $70c4: $07
    rlca                                          ; $70c5: $07
    ld b, $06                                     ; $70c6: $06 $06
    rra                                           ; $70c8: $1f
    jr nz, @+$15                                  ; $70c9: $20 $13

    inc d                                         ; $70cb: $14
    ld hl, $1522                                  ; $70cc: $21 $22 $15
    ld d, $49                                     ; $70cf: $16 $49
    ld c, d                                       ; $70d1: $4a
    rst $30                                       ; $70d2: $f7
    ld hl, sp+$4b                                 ; $70d3: $f8 $4b
    ld c, h                                       ; $70d5: $4c
    ld c, l                                       ; $70d6: $4d
    ld a, [$0605]                                 ; $70d7: $fa $05 $06
    dec b                                         ; $70da: $05
    ld b, $06                                     ; $70db: $06 $06
    ld b, $05                                     ; $70dd: $06 $05
    dec b                                         ; $70df: $05
    inc b                                         ; $70e0: $04
    inc b                                         ; $70e1: $04
    ld b, $06                                     ; $70e2: $06 $06
    inc b                                         ; $70e4: $04
    inc b                                         ; $70e5: $04
    inc b                                         ; $70e6: $04
    ld b, $17                                     ; $70e7: $06 $17
    jr jr_07e_7104                                ; $70e9: $18 $19

    ld a, [de]                                    ; $70eb: $1a
    dec de                                        ; $70ec: $1b
    inc e                                         ; $70ed: $1c
    dec e                                         ; $70ee: $1d
    ld e, $01                                     ; $70ef: $1e $01
    ld [bc], a                                    ; $70f1: $02
    ld c, [hl]                                    ; $70f2: $4e
    ld c, a                                       ; $70f3: $4f
    dec b                                         ; $70f4: $05
    ld b, $50                                     ; $70f5: $06 $50
    ld d, c                                       ; $70f7: $51
    ld b, $06                                     ; $70f8: $06 $06
    dec b                                         ; $70fa: $05
    dec b                                         ; $70fb: $05
    ld b, $05                                     ; $70fc: $06 $05
    ld b, $06                                     ; $70fe: $06 $06
    dec b                                         ; $7100: $05
    ld b, $04                                     ; $7101: $06 $04
    inc b                                         ; $7103: $04

jr_07e_7104:
    dec b                                         ; $7104: $05
    ld b, $04                                     ; $7105: $06 $04
    inc b                                         ; $7107: $04
    rra                                           ; $7108: $1f
    jr nz, jr_07e_711e                            ; $7109: $20 $13

    inc d                                         ; $710b: $14
    ld hl, $1522                                  ; $710c: $21 $22 $15
    ld d, $52                                     ; $710f: $16 $52
    inc hl                                        ; $7111: $23
    rst $30                                       ; $7112: $f7
    ld hl, sp+$53                                 ; $7113: $f8 $53
    ld c, l                                       ; $7115: $4d
    ld sp, hl                                     ; $7116: $f9
    ld a, [$0606]                                 ; $7117: $fa $06 $06
    dec b                                         ; $711a: $05
    ld b, $06                                     ; $711b: $06 $06
    dec b                                         ; $711d: $05

jr_07e_711e:
    ld b, $06                                     ; $711e: $06 $06
    inc b                                         ; $7120: $04
    ld b, $05                                     ; $7121: $06 $05
    ld b, $04                                     ; $7123: $06 $04
    inc b                                         ; $7125: $04
    ld b, $05                                     ; $7126: $06 $05
    rla                                           ; $7128: $17
    jr jr_07e_7144                                ; $7129: $18 $19

    ld a, [de]                                    ; $712b: $1a
    dec de                                        ; $712c: $1b
    inc e                                         ; $712d: $1c
    dec e                                         ; $712e: $1d
    ld e, $01                                     ; $712f: $1e $01
    ld d, h                                       ; $7131: $54
    ld d, l                                       ; $7132: $55
    ld d, [hl]                                    ; $7133: $56
    dec b                                         ; $7134: $05
    ld d, a                                       ; $7135: $57
    ld e, b                                       ; $7136: $58
    ld e, c                                       ; $7137: $59
    ld b, $06                                     ; $7138: $06 $06
    dec b                                         ; $713a: $05
    ld b, $05                                     ; $713b: $06 $05
    ld b, $06                                     ; $713d: $06 $06
    ld b, $06                                     ; $713f: $06 $06
    inc b                                         ; $7141: $04
    inc b                                         ; $7142: $04
    inc b                                         ; $7143: $04

jr_07e_7144:
    ld b, $04                                     ; $7144: $06 $04
    inc b                                         ; $7146: $04
    inc b                                         ; $7147: $04
    ld e, d                                       ; $7148: $5a
    ld e, e                                       ; $7149: $5b
    ld e, h                                       ; $714a: $5c
    inc d                                         ; $714b: $14
    ld e, l                                       ; $714c: $5d
    ld e, [hl]                                    ; $714d: $5e
    ld e, a                                       ; $714e: $5f
    ld d, $60                                     ; $714f: $16 $60
    ld h, c                                       ; $7151: $61
    ld h, d                                       ; $7152: $62
    ld hl, sp+$11                                 ; $7153: $f8 $11
    ld [de], a                                    ; $7155: $12
    ld sp, hl                                     ; $7156: $f9
    ld a, [$0404]                                 ; $7157: $fa $04 $04
    inc b                                         ; $715a: $04
    rlca                                          ; $715b: $07
    inc b                                         ; $715c: $04
    inc b                                         ; $715d: $04
    inc b                                         ; $715e: $04
    rlca                                          ; $715f: $07
    inc b                                         ; $7160: $04
    inc b                                         ; $7161: $04
    inc b                                         ; $7162: $04
    rlca                                          ; $7163: $07
    rlca                                          ; $7164: $07
    rlca                                          ; $7165: $07
    rlca                                          ; $7166: $07
    rlca                                          ; $7167: $07
    rla                                           ; $7168: $17
    jr jr_07e_71ce                                ; $7169: $18 $63

    ld h, h                                       ; $716b: $64
    dec de                                        ; $716c: $1b
    inc e                                         ; $716d: $1c
    scf                                           ; $716e: $37
    ld e, l                                       ; $716f: $5d
    ld bc, $3802                                  ; $7170: $01 $02 $38
    ld h, b                                       ; $7173: $60
    dec b                                         ; $7174: $05
    ld b, $07                                     ; $7175: $06 $07
    ld [$0506], sp                                ; $7177: $08 $06 $05
    inc b                                         ; $717a: $04
    inc b                                         ; $717b: $04
    dec b                                         ; $717c: $05
    dec b                                         ; $717d: $05
    inc b                                         ; $717e: $04
    inc b                                         ; $717f: $04
    ld b, $06                                     ; $7180: $06 $06
    inc b                                         ; $7182: $04
    inc b                                         ; $7183: $04
    ld b, $06                                     ; $7184: $06 $06
    rlca                                          ; $7186: $07
    rlca                                          ; $7187: $07
    ld h, l                                       ; $7188: $65
    ld e, h                                       ; $7189: $5c
    inc de                                        ; $718a: $13
    inc d                                         ; $718b: $14
    ld e, [hl]                                    ; $718c: $5e
    ld e, a                                       ; $718d: $5f
    dec d                                         ; $718e: $15
    ld d, $61                                     ; $718f: $16 $61
    ld h, d                                       ; $7191: $62
    rst $30                                       ; $7192: $f7
    ld hl, sp+$11                                 ; $7193: $f8 $11
    ld [de], a                                    ; $7195: $12
    ld sp, hl                                     ; $7196: $f9
    ld a, [$0404]                                 ; $7197: $fa $04 $04
    rlca                                          ; $719a: $07
    ld b, $04                                     ; $719b: $06 $04
    inc b                                         ; $719d: $04
    rlca                                          ; $719e: $07
    ld b, $04                                     ; $719f: $06 $04
    inc b                                         ; $71a1: $04
    rlca                                          ; $71a2: $07
    dec b                                         ; $71a3: $05
    rlca                                          ; $71a4: $07
    rlca                                          ; $71a5: $07
    rlca                                          ; $71a6: $07
    ld b, $17                                     ; $71a7: $06 $17
    ld h, e                                       ; $71a9: $63
    ld h, [hl]                                    ; $71aa: $66
    ld h, a                                       ; $71ab: $67
    dec de                                        ; $71ac: $1b
    scf                                           ; $71ad: $37
    ld e, l                                       ; $71ae: $5d
    ld e, [hl]                                    ; $71af: $5e
    ld bc, $6038                                  ; $71b0: $01 $38 $60
    ld h, c                                       ; $71b3: $61
    dec b                                         ; $71b4: $05
    ld b, $07                                     ; $71b5: $06 $07
    ld [$0406], sp                                ; $71b7: $08 $06 $04
    inc b                                         ; $71ba: $04
    inc b                                         ; $71bb: $04
    dec b                                         ; $71bc: $05
    inc b                                         ; $71bd: $04
    inc b                                         ; $71be: $04
    inc b                                         ; $71bf: $04
    ld b, $04                                     ; $71c0: $06 $04
    inc b                                         ; $71c2: $04
    inc b                                         ; $71c3: $04
    ld b, $07                                     ; $71c4: $06 $07
    rlca                                          ; $71c6: $07
    rlca                                          ; $71c7: $07
    jp c, $d4db                                   ; $71c8: $da $db $d4

    db $d3                                        ; $71cb: $d3
    sbc $df                                       ; $71cc: $de $df

jr_07e_71ce:
    push de                                       ; $71ce: $d5
    db $d3                                        ; $71cf: $d3
    ld [c], a                                     ; $71d0: $e2
    db $e3                                        ; $71d1: $e3
    sub $d3                                       ; $71d2: $d6 $d3
    and $e7                                       ; $71d4: $e6 $e7
    rst $10                                       ; $71d6: $d7
    db $d3                                        ; $71d7: $d3
    ld bc, $2201                                  ; $71d8: $01 $01 $22
    ld [bc], a                                    ; $71db: $02
    ld bc, $2201                                  ; $71dc: $01 $01 $22
    ld [bc], a                                    ; $71df: $02
    ld bc, $2201                                  ; $71e0: $01 $01 $22
    ld [bc], a                                    ; $71e3: $02
    ld bc, $2201                                  ; $71e4: $01 $01 $22
    ld [bc], a                                    ; $71e7: $02
    jp nc, $d1d1                                  ; $71e8: $d2 $d1 $d1

    pop de                                        ; $71eb: $d1
    jp nc, $d1d1                                  ; $71ec: $d2 $d1 $d1

    pop de                                        ; $71ef: $d1
    jp nc, $d1d1                                  ; $71f0: $d2 $d1 $d1

    pop de                                        ; $71f3: $d1
    jp nc, $d1d1                                  ; $71f4: $d2 $d1 $d1

    pop de                                        ; $71f7: $d1
    add b                                         ; $71f8: $80
    add b                                         ; $71f9: $80
    add b                                         ; $71fa: $80
    add b                                         ; $71fb: $80
    add b                                         ; $71fc: $80
    add b                                         ; $71fd: $80
    add b                                         ; $71fe: $80
    add b                                         ; $71ff: $80
    add b                                         ; $7200: $80
    add b                                         ; $7201: $80
    add b                                         ; $7202: $80
    add b                                         ; $7203: $80
    add b                                         ; $7204: $80
    add b                                         ; $7205: $80
    add b                                         ; $7206: $80
    add b                                         ; $7207: $80
    db $fc                                        ; $7208: $fc
    ei                                            ; $7209: $fb
    db $f4                                        ; $720a: $f4
    db $d3                                        ; $720b: $d3
    rst $38                                       ; $720c: $ff
    nop                                           ; $720d: $00
    dec bc                                        ; $720e: $0b
    push af                                       ; $720f: $f5
    ld c, $23                                     ; $7210: $0e $23
    rst $30                                       ; $7212: $f7
    ld hl, sp+$11                                 ; $7213: $f8 $11
    ld [de], a                                    ; $7215: $12
    ld sp, hl                                     ; $7216: $f9
    ld a, [$2121]                                 ; $7217: $fa $21 $21
    ld [hl+], a                                   ; $721a: $22
    ld [bc], a                                    ; $721b: $02
    ld [bc], a                                    ; $721c: $02
    ld [bc], a                                    ; $721d: $02
    ld [bc], a                                    ; $721e: $02
    ld [bc], a                                    ; $721f: $02
    rlca                                          ; $7220: $07
    rlca                                          ; $7221: $07
    rlca                                          ; $7222: $07
    rlca                                          ; $7223: $07
    dec b                                         ; $7224: $05
    ld b, $06                                     ; $7225: $06 $06
    rlca                                          ; $7227: $07
    rra                                           ; $7228: $1f
    jr nz, @+$15                                  ; $7229: $20 $13

    inc d                                         ; $722b: $14
    ld hl, $1522                                  ; $722c: $21 $22 $15
    ld d, $0e                                     ; $722f: $16 $0e
    inc hl                                        ; $7231: $23
    rst $30                                       ; $7232: $f7
    ld hl, sp+$4d                                 ; $7233: $f8 $4d
    ld [de], a                                    ; $7235: $12
    ld sp, hl                                     ; $7236: $f9
    ld a, [$0506]                                 ; $7237: $fa $06 $05
    ld b, $07                                     ; $723a: $06 $07
    dec b                                         ; $723c: $05
    ld b, $06                                     ; $723d: $06 $06
    rlca                                          ; $723f: $07
    ld b, $05                                     ; $7240: $06 $05
    ld b, $07                                     ; $7242: $06 $07
    inc b                                         ; $7244: $04
    ld b, $05                                     ; $7245: $06 $05
    rlca                                          ; $7247: $07
    ld e, h                                       ; $7248: $5c
    jr nz, jr_07e_725e                            ; $7249: $20 $13

    inc d                                         ; $724b: $14
    ld e, a                                       ; $724c: $5f
    ld [hl+], a                                   ; $724d: $22
    dec d                                         ; $724e: $15
    ld d, $62                                     ; $724f: $16 $62
    inc hl                                        ; $7251: $23
    rst $30                                       ; $7252: $f7
    ld hl, sp+$11                                 ; $7253: $f8 $11
    ld [de], a                                    ; $7255: $12
    ld sp, hl                                     ; $7256: $f9
    ld a, [$0704]                                 ; $7257: $fa $04 $07
    ld b, $07                                     ; $725a: $06 $07
    inc b                                         ; $725c: $04
    rlca                                          ; $725d: $07

jr_07e_725e:
    dec b                                         ; $725e: $05
    rlca                                          ; $725f: $07
    inc b                                         ; $7260: $04
    rlca                                          ; $7261: $07
    ld b, $07                                     ; $7262: $06 $07
    rlca                                          ; $7264: $07
    rlca                                          ; $7265: $07
    ld b, $07                                     ; $7266: $06 $07
    jp nc, $d1d1                                  ; $7268: $d2 $d1 $d1

    pop de                                        ; $726b: $d1
    jp nc, $d1d1                                  ; $726c: $d2 $d1 $d1

    pop de                                        ; $726f: $d1
    jp nc, $d1d1                                  ; $7270: $d2 $d1 $d1

    pop de                                        ; $7273: $d1
    ld l, b                                       ; $7274: $68
    ld l, c                                       ; $7275: $69
    ld l, d                                       ; $7276: $6a
    pop de                                        ; $7277: $d1
    add b                                         ; $7278: $80
    add b                                         ; $7279: $80
    add b                                         ; $727a: $80
    add b                                         ; $727b: $80
    add b                                         ; $727c: $80
    add b                                         ; $727d: $80
    add b                                         ; $727e: $80
    add b                                         ; $727f: $80
    add b                                         ; $7280: $80
    add b                                         ; $7281: $80
    add b                                         ; $7282: $80
    add b                                         ; $7283: $80
    add b                                         ; $7284: $80
    add b                                         ; $7285: $80
    add b                                         ; $7286: $80
    add b                                         ; $7287: $80
    pop de                                        ; $7288: $d1
    jp nc, Jump_000_1413                          ; $7289: $d2 $13 $14

    pop de                                        ; $728c: $d1
    jp nc, $1615                                  ; $728d: $d2 $15 $16

    pop de                                        ; $7290: $d1
    jp nc, $f8f7                                  ; $7291: $d2 $f7 $f8

    pop de                                        ; $7294: $d1
    jp nc, $faf9                                  ; $7295: $d2 $f9 $fa

    add b                                         ; $7298: $80
    add b                                         ; $7299: $80
    rlca                                          ; $729a: $07
    ld b, $80                                     ; $729b: $06 $80
    add b                                         ; $729d: $80
    rlca                                          ; $729e: $07
    dec b                                         ; $729f: $05
    add b                                         ; $72a0: $80
    add b                                         ; $72a1: $80
    rlca                                          ; $72a2: $07
    ld b, $80                                     ; $72a3: $06 $80
    add b                                         ; $72a5: $80
    rlca                                          ; $72a6: $07
    dec b                                         ; $72a7: $05
    ld l, e                                       ; $72a8: $6b
    ld l, h                                       ; $72a9: $6c
    add hl, de                                    ; $72aa: $19
    ld l, l                                       ; $72ab: $6d
    ld l, [hl]                                    ; $72ac: $6e
    ld l, a                                       ; $72ad: $6f
    dec e                                         ; $72ae: $1d
    ld [hl], b                                    ; $72af: $70
    ld [hl], c                                    ; $72b0: $71
    ld [hl], d                                    ; $72b1: $72
    inc bc                                        ; $72b2: $03
    ld [hl], e                                    ; $72b3: $73
    dec b                                         ; $72b4: $05
    ld b, $07                                     ; $72b5: $06 $07
    ld [hl], h                                    ; $72b7: $74
    inc b                                         ; $72b8: $04
    inc b                                         ; $72b9: $04
    ld b, $04                                     ; $72ba: $06 $04
    inc b                                         ; $72bc: $04
    inc b                                         ; $72bd: $04
    rlca                                          ; $72be: $07
    inc b                                         ; $72bf: $04
    inc b                                         ; $72c0: $04
    inc b                                         ; $72c1: $04
    rlca                                          ; $72c2: $07
    inc b                                         ; $72c3: $04
    rlca                                          ; $72c4: $07
    rlca                                          ; $72c5: $07
    rlca                                          ; $72c6: $07
    inc b                                         ; $72c7: $04
    ld [hl], l                                    ; $72c8: $75
    halt                                          ; $72c9: $76
    ld [hl], a                                    ; $72ca: $77
    inc d                                         ; $72cb: $14
    ld a, b                                       ; $72cc: $78
    ld a, b                                       ; $72cd: $78
    ld a, c                                       ; $72ce: $79
    ld d, $7a                                     ; $72cf: $16 $7a
    ld a, d                                       ; $72d1: $7a
    ld a, e                                       ; $72d2: $7b
    ld hl, sp+$7c                                 ; $72d3: $f8 $7c
    ld a, h                                       ; $72d5: $7c
    ld a, l                                       ; $72d6: $7d
    ld a, [$0404]                                 ; $72d7: $fa $04 $04
    inc b                                         ; $72da: $04
    rlca                                          ; $72db: $07
    inc b                                         ; $72dc: $04
    inc b                                         ; $72dd: $04
    inc b                                         ; $72de: $04
    rlca                                          ; $72df: $07
    inc b                                         ; $72e0: $04
    inc b                                         ; $72e1: $04
    inc b                                         ; $72e2: $04
    rlca                                          ; $72e3: $07
    inc b                                         ; $72e4: $04
    inc b                                         ; $72e5: $04
    inc b                                         ; $72e6: $04
    rlca                                          ; $72e7: $07
    rla                                           ; $72e8: $17
    jr jr_07e_7304                                ; $72e9: $18 $19

    ld a, [de]                                    ; $72eb: $1a
    dec de                                        ; $72ec: $1b
    inc e                                         ; $72ed: $1c
    dec e                                         ; $72ee: $1d
    ld e, $01                                     ; $72ef: $1e $01
    ld [bc], a                                    ; $72f1: $02
    inc bc                                        ; $72f2: $03
    ld a, [hl]                                    ; $72f3: $7e
    dec b                                         ; $72f4: $05
    ld b, $07                                     ; $72f5: $06 $07
    ld a, a                                       ; $72f7: $7f
    ld b, $06                                     ; $72f8: $06 $06
    ld b, $06                                     ; $72fa: $06 $06
    dec b                                         ; $72fc: $05
    ld b, $05                                     ; $72fd: $06 $05
    dec b                                         ; $72ff: $05
    ld b, $06                                     ; $7300: $06 $06
    ld b, $04                                     ; $7302: $06 $04

jr_07e_7304:
    dec b                                         ; $7304: $05
    ld b, $06                                     ; $7305: $06 $06
    inc b                                         ; $7307: $04
    rla                                           ; $7308: $17
    jr jr_07e_7324                                ; $7309: $18 $19

    ld a, [de]                                    ; $730b: $1a
    dec de                                        ; $730c: $1b
    inc e                                         ; $730d: $1c
    dec e                                         ; $730e: $1d
    ld e, $01                                     ; $730f: $1e $01
    ld [bc], a                                    ; $7311: $02
    inc bc                                        ; $7312: $03
    inc b                                         ; $7313: $04
    dec b                                         ; $7314: $05
    ld b, $07                                     ; $7315: $06 $07
    ld [$0506], sp                                ; $7317: $08 $06 $05
    ld b, $07                                     ; $731a: $06 $07
    ld b, $06                                     ; $731c: $06 $06
    ld b, $05                                     ; $731e: $06 $05
    ld b, $05                                     ; $7320: $06 $05
    ld b, $05                                     ; $7322: $06 $05

jr_07e_7324:
    ld b, $06                                     ; $7324: $06 $06
    ld b, $06                                     ; $7326: $06 $06
    rra                                           ; $7328: $1f
    jr nz, jr_07e_733e                            ; $7329: $20 $13

    inc d                                         ; $732b: $14
    ld hl, $1522                                  ; $732c: $21 $22 $15
    ld d, $0e                                     ; $732f: $16 $0e
    inc hl                                        ; $7331: $23
    rst $30                                       ; $7332: $f7
    ld hl, sp+$11                                 ; $7333: $f8 $11
    ld [de], a                                    ; $7335: $12
    ld sp, hl                                     ; $7336: $f9
    ld a, [$0707]                                 ; $7337: $fa $07 $07
    rlca                                          ; $733a: $07
    rlca                                          ; $733b: $07
    ld b, $06                                     ; $733c: $06 $06

jr_07e_733e:
    ld b, $06                                     ; $733e: $06 $06
    ld b, $06                                     ; $7340: $06 $06
    ld b, $05                                     ; $7342: $06 $05
    dec b                                         ; $7344: $05
    ld b, $06                                     ; $7345: $06 $06
    ld b, $17                                     ; $7347: $06 $17
    jr jr_07e_7364                                ; $7349: $18 $19

    add b                                         ; $734b: $80
    dec de                                        ; $734c: $1b
    inc e                                         ; $734d: $1c
    dec e                                         ; $734e: $1d
    scf                                           ; $734f: $37
    ld bc, $0302                                  ; $7350: $01 $02 $03
    jr c, jr_07e_735a                             ; $7353: $38 $05

    ld b, $07                                     ; $7355: $06 $07
    ld [$0606], sp                                ; $7357: $08 $06 $06

jr_07e_735a:
    dec b                                         ; $735a: $05
    inc c                                         ; $735b: $0c
    ld b, $05                                     ; $735c: $06 $05
    ld b, $04                                     ; $735e: $06 $04
    ld b, $06                                     ; $7360: $06 $06
    ld b, $04                                     ; $7362: $06 $04

jr_07e_7364:
    dec b                                         ; $7364: $05
    ld b, $05                                     ; $7365: $06 $05
    rlca                                          ; $7367: $07
    pop de                                        ; $7368: $d1
    jp nc, Jump_000_1413                          ; $7369: $d2 $13 $14

    pop de                                        ; $736c: $d1
    ld l, b                                       ; $736d: $68
    ld l, c                                       ; $736e: $69
    ld l, c                                       ; $736f: $69
    pop de                                        ; $7370: $d1
    pop de                                        ; $7371: $d1
    pop de                                        ; $7372: $d1
    pop de                                        ; $7373: $d1
    pop de                                        ; $7374: $d1
    pop de                                        ; $7375: $d1
    pop de                                        ; $7376: $d1
    pop de                                        ; $7377: $d1
    add b                                         ; $7378: $80
    add b                                         ; $7379: $80
    rlca                                          ; $737a: $07
    ld b, $80                                     ; $737b: $06 $80
    add b                                         ; $737d: $80
    add b                                         ; $737e: $80
    add b                                         ; $737f: $80
    add b                                         ; $7380: $80
    add b                                         ; $7381: $80
    add b                                         ; $7382: $80
    add b                                         ; $7383: $80
    add b                                         ; $7384: $80
    add b                                         ; $7385: $80
    add b                                         ; $7386: $80
    add b                                         ; $7387: $80
    rla                                           ; $7388: $17
    jr jr_07e_73a4                                ; $7389: $18 $19

    ld a, [de]                                    ; $738b: $1a
    ld l, c                                       ; $738c: $69
    ld l, c                                       ; $738d: $69
    ld l, c                                       ; $738e: $69
    ld l, c                                       ; $738f: $69
    pop de                                        ; $7390: $d1
    pop de                                        ; $7391: $d1
    pop de                                        ; $7392: $d1
    pop de                                        ; $7393: $d1
    pop de                                        ; $7394: $d1
    pop de                                        ; $7395: $d1
    pop de                                        ; $7396: $d1
    pop de                                        ; $7397: $d1
    dec b                                         ; $7398: $05
    ld b, $05                                     ; $7399: $06 $05
    ld b, $80                                     ; $739b: $06 $80
    add b                                         ; $739d: $80
    add b                                         ; $739e: $80
    add b                                         ; $739f: $80
    add b                                         ; $73a0: $80
    add b                                         ; $73a1: $80
    add b                                         ; $73a2: $80
    add b                                         ; $73a3: $80

jr_07e_73a4:
    add b                                         ; $73a4: $80
    add b                                         ; $73a5: $80
    add b                                         ; $73a6: $80
    add b                                         ; $73a7: $80
    rra                                           ; $73a8: $1f
    jr nz, jr_07e_73be                            ; $73a9: $20 $13

    inc d                                         ; $73ab: $14
    ld l, c                                       ; $73ac: $69
    ld l, c                                       ; $73ad: $69
    ld l, c                                       ; $73ae: $69
    ld l, c                                       ; $73af: $69
    pop de                                        ; $73b0: $d1
    pop de                                        ; $73b1: $d1
    pop de                                        ; $73b2: $d1
    pop de                                        ; $73b3: $d1
    pop de                                        ; $73b4: $d1
    pop de                                        ; $73b5: $d1
    pop de                                        ; $73b6: $d1
    pop de                                        ; $73b7: $d1
    ld b, $06                                     ; $73b8: $06 $06
    dec b                                         ; $73ba: $05
    ld b, $80                                     ; $73bb: $06 $80
    add b                                         ; $73bd: $80

jr_07e_73be:
    add b                                         ; $73be: $80
    add b                                         ; $73bf: $80
    add b                                         ; $73c0: $80
    add b                                         ; $73c1: $80
    add b                                         ; $73c2: $80
    add b                                         ; $73c3: $80
    add b                                         ; $73c4: $80
    add b                                         ; $73c5: $80
    add b                                         ; $73c6: $80
    add b                                         ; $73c7: $80
    rla                                           ; $73c8: $17
    jr jr_07e_73e4                                ; $73c9: $18 $19

    ld a, [de]                                    ; $73cb: $1a
    ld l, c                                       ; $73cc: $69
    ld l, c                                       ; $73cd: $69
    ld l, c                                       ; $73ce: $69
    ld l, c                                       ; $73cf: $69
    pop de                                        ; $73d0: $d1
    pop de                                        ; $73d1: $d1
    pop de                                        ; $73d2: $d1
    pop de                                        ; $73d3: $d1
    pop de                                        ; $73d4: $d1
    pop de                                        ; $73d5: $d1
    pop de                                        ; $73d6: $d1
    pop de                                        ; $73d7: $d1
    dec b                                         ; $73d8: $05
    ld b, $06                                     ; $73d9: $06 $06
    dec b                                         ; $73db: $05
    add b                                         ; $73dc: $80
    add b                                         ; $73dd: $80
    add b                                         ; $73de: $80
    add b                                         ; $73df: $80
    add b                                         ; $73e0: $80
    add b                                         ; $73e1: $80
    add b                                         ; $73e2: $80
    add b                                         ; $73e3: $80

jr_07e_73e4:
    add b                                         ; $73e4: $80
    add b                                         ; $73e5: $80
    add b                                         ; $73e6: $80
    add b                                         ; $73e7: $80
    rra                                           ; $73e8: $1f
    jr nz, jr_07e_73fe                            ; $73e9: $20 $13

    inc d                                         ; $73eb: $14
    ld hl, $1522                                  ; $73ec: $21 $22 $15
    ld d, $81                                     ; $73ef: $16 $81
    ld d, [hl]                                    ; $73f1: $56
    rst $30                                       ; $73f2: $f7
    ld hl, sp-$7e                                 ; $73f3: $f8 $82
    add e                                         ; $73f5: $83
    ld c, l                                       ; $73f6: $4d
    ld a, [$0506]                                 ; $73f7: $fa $06 $05
    ld b, $06                                     ; $73fa: $06 $06
    ld b, $06                                     ; $73fc: $06 $06

jr_07e_73fe:
    ld b, $05                                     ; $73fe: $06 $05
    inc c                                         ; $7400: $0c
    inc b                                         ; $7401: $04
    ld b, $06                                     ; $7402: $06 $06
    inc c                                         ; $7404: $0c
    inc c                                         ; $7405: $0c
    inc b                                         ; $7406: $04
    ld b, $17                                     ; $7407: $06 $17
    jr jr_07e_7424                                ; $7409: $18 $19

    ld a, [de]                                    ; $740b: $1a
    dec de                                        ; $740c: $1b
    inc e                                         ; $740d: $1c
    dec e                                         ; $740e: $1d
    ld e, $01                                     ; $740f: $1e $01
    ld [bc], a                                    ; $7411: $02
    ld d, h                                       ; $7412: $54
    ld d, l                                       ; $7413: $55
    dec b                                         ; $7414: $05
    ld b, $57                                     ; $7415: $06 $57
    ld e, b                                       ; $7417: $58
    dec b                                         ; $7418: $05
    dec b                                         ; $7419: $05
    ld b, $06                                     ; $741a: $06 $06
    dec b                                         ; $741c: $05
    ld b, $06                                     ; $741d: $06 $06
    dec b                                         ; $741f: $05
    dec b                                         ; $7420: $05
    ld b, $04                                     ; $7421: $06 $04
    inc b                                         ; $7423: $04

jr_07e_7424:
    ld b, $05                                     ; $7424: $06 $05
    inc b                                         ; $7426: $04
    inc b                                         ; $7427: $04
    rra                                           ; $7428: $1f
    jr nz, jr_07e_743e                            ; $7429: $20 $13

    inc d                                         ; $742b: $14
    ld hl, $1522                                  ; $742c: $21 $22 $15
    ld d, $56                                     ; $742f: $16 $56
    inc hl                                        ; $7431: $23
    rst $30                                       ; $7432: $f7
    ld hl, sp+$59                                 ; $7433: $f8 $59
    ld c, l                                       ; $7435: $4d
    ld sp, hl                                     ; $7436: $f9
    ld a, [$0605]                                 ; $7437: $fa $05 $06
    ld b, $06                                     ; $743a: $06 $06
    ld b, $05                                     ; $743c: $06 $05

jr_07e_743e:
    ld b, $05                                     ; $743e: $06 $05
    inc b                                         ; $7440: $04
    ld b, $06                                     ; $7441: $06 $06
    ld b, $04                                     ; $7443: $06 $04
    inc b                                         ; $7445: $04
    dec b                                         ; $7446: $05
    ld b, $17                                     ; $7447: $06 $17
    jr jr_07e_7464                                ; $7449: $18 $19

    ld a, [de]                                    ; $744b: $1a
    dec de                                        ; $744c: $1b
    inc e                                         ; $744d: $1c
    dec e                                         ; $744e: $1d
    ld e, $01                                     ; $744f: $1e $01
    add h                                         ; $7451: $84
    add l                                         ; $7452: $85
    ld d, [hl]                                    ; $7453: $56
    dec b                                         ; $7454: $05
    add [hl]                                      ; $7455: $86
    add a                                         ; $7456: $87
    adc b                                         ; $7457: $88
    dec b                                         ; $7458: $05
    ld b, $05                                     ; $7459: $06 $05
    ld b, $06                                     ; $745b: $06 $06
    ld b, $06                                     ; $745d: $06 $06
    ld b, $06                                     ; $745f: $06 $06
    inc c                                         ; $7461: $0c
    inc c                                         ; $7462: $0c
    inc b                                         ; $7463: $04

jr_07e_7464:
    ld b, $0c                                     ; $7464: $06 $0c
    inc c                                         ; $7466: $0c
    inc c                                         ; $7467: $0c
    adc c                                         ; $7468: $89
    adc d                                         ; $7469: $8a
    ld e, h                                       ; $746a: $5c
    inc d                                         ; $746b: $14
    ld e, l                                       ; $746c: $5d
    ld e, [hl]                                    ; $746d: $5e
    ld e, a                                       ; $746e: $5f
    ld d, $60                                     ; $746f: $16 $60
    ld h, c                                       ; $7471: $61
    ld h, d                                       ; $7472: $62
    ld hl, sp+$11                                 ; $7473: $f8 $11
    ld [de], a                                    ; $7475: $12
    ld sp, hl                                     ; $7476: $f9
    ld a, [$0c0c]                                 ; $7477: $fa $0c $0c
    inc b                                         ; $747a: $04
    rlca                                          ; $747b: $07
    inc b                                         ; $747c: $04
    inc b                                         ; $747d: $04
    inc b                                         ; $747e: $04
    rlca                                          ; $747f: $07
    inc b                                         ; $7480: $04
    inc b                                         ; $7481: $04
    inc b                                         ; $7482: $04
    rlca                                          ; $7483: $07
    rlca                                          ; $7484: $07
    rlca                                          ; $7485: $07
    rlca                                          ; $7486: $07
    rlca                                          ; $7487: $07
    rla                                           ; $7488: $17
    jr jr_07e_74ee                                ; $7489: $18 $63

    ld h, [hl]                                    ; $748b: $66
    dec de                                        ; $748c: $1b
    inc e                                         ; $748d: $1c
    scf                                           ; $748e: $37
    ld e, l                                       ; $748f: $5d
    ld bc, $3802                                  ; $7490: $01 $02 $38
    ld h, b                                       ; $7493: $60
    dec b                                         ; $7494: $05
    ld b, $07                                     ; $7495: $06 $07
    ld [$0606], sp                                ; $7497: $08 $06 $06
    inc b                                         ; $749a: $04
    inc b                                         ; $749b: $04
    dec b                                         ; $749c: $05
    ld b, $04                                     ; $749d: $06 $04
    inc b                                         ; $749f: $04
    ld b, $05                                     ; $74a0: $06 $05
    inc b                                         ; $74a2: $04
    inc b                                         ; $74a3: $04
    ld b, $06                                     ; $74a4: $06 $06
    rlca                                          ; $74a6: $07
    rlca                                          ; $74a7: $07
    ld h, a                                       ; $74a8: $67
    ld e, h                                       ; $74a9: $5c
    inc de                                        ; $74aa: $13
    inc d                                         ; $74ab: $14
    ld e, [hl]                                    ; $74ac: $5e
    ld e, a                                       ; $74ad: $5f
    dec d                                         ; $74ae: $15
    ld d, $61                                     ; $74af: $16 $61
    ld h, d                                       ; $74b1: $62
    rst $30                                       ; $74b2: $f7
    ld hl, sp+$11                                 ; $74b3: $f8 $11
    ld [de], a                                    ; $74b5: $12
    ld sp, hl                                     ; $74b6: $f9
    ld a, [$0404]                                 ; $74b7: $fa $04 $04
    rlca                                          ; $74ba: $07
    ld b, $04                                     ; $74bb: $06 $04
    inc b                                         ; $74bd: $04
    rlca                                          ; $74be: $07
    ld b, $04                                     ; $74bf: $06 $04
    inc b                                         ; $74c1: $04
    rlca                                          ; $74c2: $07
    ld b, $07                                     ; $74c3: $06 $07
    rlca                                          ; $74c5: $07
    rlca                                          ; $74c6: $07
    dec b                                         ; $74c7: $05
    rla                                           ; $74c8: $17
    ld h, e                                       ; $74c9: $63
    ld h, [hl]                                    ; $74ca: $66
    adc e                                         ; $74cb: $8b
    dec de                                        ; $74cc: $1b
    scf                                           ; $74cd: $37
    ld e, l                                       ; $74ce: $5d
    ld e, [hl]                                    ; $74cf: $5e
    ld bc, $6038                                  ; $74d0: $01 $38 $60
    ld h, c                                       ; $74d3: $61
    dec b                                         ; $74d4: $05
    ld b, $07                                     ; $74d5: $06 $07
    ld [$0405], sp                                ; $74d7: $08 $05 $04
    inc b                                         ; $74da: $04
    inc c                                         ; $74db: $0c
    ld b, $04                                     ; $74dc: $06 $04
    inc b                                         ; $74de: $04
    inc b                                         ; $74df: $04
    dec b                                         ; $74e0: $05
    inc b                                         ; $74e1: $04
    inc b                                         ; $74e2: $04
    inc b                                         ; $74e3: $04
    ld b, $07                                     ; $74e4: $06 $07
    rlca                                          ; $74e6: $07
    rlca                                          ; $74e7: $07
    rra                                           ; $74e8: $1f
    jr nz, jr_07e_74fe                            ; $74e9: $20 $13

    inc d                                         ; $74eb: $14
    ld l, c                                       ; $74ec: $69
    ld l, c                                       ; $74ed: $69

jr_07e_74ee:
    ld l, c                                       ; $74ee: $69
    ld l, c                                       ; $74ef: $69
    pop de                                        ; $74f0: $d1
    pop de                                        ; $74f1: $d1
    pop de                                        ; $74f2: $d1
    pop de                                        ; $74f3: $d1
    pop de                                        ; $74f4: $d1
    pop de                                        ; $74f5: $d1
    pop de                                        ; $74f6: $d1
    pop de                                        ; $74f7: $d1
    ld b, $05                                     ; $74f8: $06 $05
    ld b, $06                                     ; $74fa: $06 $06
    add b                                         ; $74fc: $80
    add b                                         ; $74fd: $80

jr_07e_74fe:
    add b                                         ; $74fe: $80
    add b                                         ; $74ff: $80
    add b                                         ; $7500: $80
    add b                                         ; $7501: $80
    add b                                         ; $7502: $80
    add b                                         ; $7503: $80
    add b                                         ; $7504: $80
    add b                                         ; $7505: $80
    add b                                         ; $7506: $80
    add b                                         ; $7507: $80
    rra                                           ; $7508: $1f
    jr nz, @+$15                                  ; $7509: $20 $13

    inc d                                         ; $750b: $14
    ld hl, $1522                                  ; $750c: $21 $22 $15
    ld d, $0e                                     ; $750f: $16 $0e
    inc hl                                        ; $7511: $23
    rst $30                                       ; $7512: $f7
    ld hl, sp+$4d                                 ; $7513: $f8 $4d
    ld [de], a                                    ; $7515: $12
    ld sp, hl                                     ; $7516: $f9
    ld a, [$0605]                                 ; $7517: $fa $05 $06
    ld b, $07                                     ; $751a: $06 $07
    dec b                                         ; $751c: $05
    ld b, $05                                     ; $751d: $06 $05
    rlca                                          ; $751f: $07
    ld b, $06                                     ; $7520: $06 $06
    ld b, $07                                     ; $7522: $06 $07
    inc b                                         ; $7524: $04
    ld b, $06                                     ; $7525: $06 $06
    rlca                                          ; $7527: $07
    adc h                                         ; $7528: $8c
    db $d3                                        ; $7529: $d3
    jp nc, $8dd1                                  ; $752a: $d2 $d1 $8d

    db $d3                                        ; $752d: $d3
    adc [hl]                                      ; $752e: $8e
    pop de                                        ; $752f: $d1
    adc a                                         ; $7530: $8f
    db $d3                                        ; $7531: $d3
    adc [hl]                                      ; $7532: $8e
    pop de                                        ; $7533: $d1
    sub b                                         ; $7534: $90
    db $d3                                        ; $7535: $d3
    adc [hl]                                      ; $7536: $8e
    pop de                                        ; $7537: $d1
    ld a, [bc]                                    ; $7538: $0a
    ld [bc], a                                    ; $7539: $02
    add b                                         ; $753a: $80
    add b                                         ; $753b: $80
    ld a, [bc]                                    ; $753c: $0a
    ld [bc], a                                    ; $753d: $02
    adc b                                         ; $753e: $88
    add b                                         ; $753f: $80
    ld a, [bc]                                    ; $7540: $0a
    ld [bc], a                                    ; $7541: $02
    adc b                                         ; $7542: $88
    add b                                         ; $7543: $80
    ld a, [bc]                                    ; $7544: $0a
    ld [bc], a                                    ; $7545: $02
    adc b                                         ; $7546: $88
    add b                                         ; $7547: $80
    ld e, h                                       ; $7548: $5c
    jr nz, jr_07e_755e                            ; $7549: $20 $13

    inc d                                         ; $754b: $14
    ld e, a                                       ; $754c: $5f
    ld [hl+], a                                   ; $754d: $22
    dec d                                         ; $754e: $15
    ld d, $62                                     ; $754f: $16 $62
    inc hl                                        ; $7551: $23
    rst $30                                       ; $7552: $f7
    ld hl, sp+$11                                 ; $7553: $f8 $11
    ld [de], a                                    ; $7555: $12
    ld sp, hl                                     ; $7556: $f9
    ld a, [$0704]                                 ; $7557: $fa $04 $07
    ld b, $07                                     ; $755a: $06 $07
    inc b                                         ; $755c: $04
    rlca                                          ; $755d: $07

jr_07e_755e:
    dec b                                         ; $755e: $05
    rlca                                          ; $755f: $07
    inc b                                         ; $7560: $04
    rlca                                          ; $7561: $07
    ld b, $06                                     ; $7562: $06 $06
    rlca                                          ; $7564: $07
    rlca                                          ; $7565: $07
    ld b, $05                                     ; $7566: $06 $05
    sub c                                         ; $7568: $91
    sub d                                         ; $7569: $92
    adc [hl]                                      ; $756a: $8e
    pop de                                        ; $756b: $d1
    dec de                                        ; $756c: $1b
    inc e                                         ; $756d: $1c
    adc [hl]                                      ; $756e: $8e
    sub e                                         ; $756f: $93
    ld bc, $d202                                  ; $7570: $01 $02 $d2
    sub e                                         ; $7573: $93
    sub h                                         ; $7574: $94
    ld l, c                                       ; $7575: $69
    sub l                                         ; $7576: $95
    sub e                                         ; $7577: $93
    ld a, [bc]                                    ; $7578: $0a
    ld a, [bc]                                    ; $7579: $0a
    adc b                                         ; $757a: $88
    add b                                         ; $757b: $80
    rlca                                          ; $757c: $07
    rlca                                          ; $757d: $07
    adc b                                         ; $757e: $88
    adc b                                         ; $757f: $88
    ld b, $07                                     ; $7580: $06 $07
    add b                                         ; $7582: $80
    adc b                                         ; $7583: $88
    adc b                                         ; $7584: $88
    add b                                         ; $7585: $80
    adc b                                         ; $7586: $88
    adc b                                         ; $7587: $88
    jp nc, $d1d1                                  ; $7588: $d2 $d1 $d1

    pop de                                        ; $758b: $d1
    sub l                                         ; $758c: $95
    pop de                                        ; $758d: $d1
    pop de                                        ; $758e: $d1
    pop de                                        ; $758f: $d1
    pop de                                        ; $7590: $d1
    pop de                                        ; $7591: $d1
    pop de                                        ; $7592: $d1
    pop de                                        ; $7593: $d1
    pop de                                        ; $7594: $d1
    pop de                                        ; $7595: $d1
    pop de                                        ; $7596: $d1
    pop de                                        ; $7597: $d1
    add b                                         ; $7598: $80
    add b                                         ; $7599: $80
    add b                                         ; $759a: $80
    add b                                         ; $759b: $80
    adc b                                         ; $759c: $88
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
    add hl, bc                                    ; $75a8: $09
    nop                                           ; $75a9: $00
    dec b                                         ; $75aa: $05
    nop                                           ; $75ab: $00
    and b                                         ; $75ac: $a0
    dec b                                         ; $75ad: $05
    db $ed                                        ; $75ae: $ed
    db $ed                                        ; $75af: $ed
    db $ed                                        ; $75b0: $ed
    xor $ed                                       ; $75b1: $ee $ed
    db $ed                                        ; $75b3: $ed
    db $ed                                        ; $75b4: $ed
    xor $ed                                       ; $75b5: $ee $ed
    rst $28                                       ; $75b7: $ef
    ldh a, [$f1]                                  ; $75b8: $f0 $f1
    db $ed                                        ; $75ba: $ed
    xor $f2                                       ; $75bb: $ee $f2
    di                                            ; $75bd: $f3
    add b                                         ; $75be: $80
    add b                                         ; $75bf: $80
    add b                                         ; $75c0: $80
    add b                                         ; $75c1: $80
    add b                                         ; $75c2: $80
    add b                                         ; $75c3: $80
    add b                                         ; $75c4: $80
    add b                                         ; $75c5: $80
    add b                                         ; $75c6: $80
    add b                                         ; $75c7: $80
    add b                                         ; $75c8: $80
    add b                                         ; $75c9: $80
    add b                                         ; $75ca: $80
    add b                                         ; $75cb: $80
    ld bc, $f401                                  ; $75cc: $01 $01 $f4
    push af                                       ; $75cf: $f5
    or $f7                                        ; $75d0: $f6 $f7
    ld hl, sp-$07                                 ; $75d2: $f8 $f9
    ld a, [$fcfb]                                 ; $75d4: $fa $fb $fc
    db $fd                                        ; $75d7: $fd
    cp $ff                                        ; $75d8: $fe $ff
    nop                                           ; $75da: $00
    ld bc, $0302                                  ; $75db: $01 $02 $03
    ld bc, $0101                                  ; $75de: $01 $01 $01
    ld bc, $0101                                  ; $75e1: $01 $01 $01
    ld bc, $0101                                  ; $75e4: $01 $01 $01
    ld bc, $0101                                  ; $75e7: $01 $01 $01
    ld bc, $0101                                  ; $75ea: $01 $01 $01
    ld bc, $0504                                  ; $75ed: $01 $04 $05
    ld b, $07                                     ; $75f0: $06 $07
    ld [$0a09], sp                                ; $75f2: $08 $09 $0a
    dec bc                                        ; $75f5: $0b
    inc c                                         ; $75f6: $0c
    dec c                                         ; $75f7: $0d
    ld c, $0f                                     ; $75f8: $0e $0f
    db $10                                        ; $75fa: $10
    ld de, $1312                                  ; $75fb: $11 $12 $13
    ld bc, $0101                                  ; $75fe: $01 $01 $01
    ld bc, $0101                                  ; $7601: $01 $01 $01
    ld bc, $0101                                  ; $7604: $01 $01 $01
    ld bc, $0101                                  ; $7607: $01 $01 $01
    ld bc, $0101                                  ; $760a: $01 $01 $01
    ld bc, $1514                                  ; $760d: $01 $14 $15
    ld d, $05                                     ; $7610: $16 $05
    rla                                           ; $7612: $17
    jr @+$1b                                      ; $7613: $18 $19

    add hl, de                                    ; $7615: $19
    ld a, [de]                                    ; $7616: $1a
    dec de                                        ; $7617: $1b
    add hl, de                                    ; $7618: $19
    add hl, de                                    ; $7619: $19
    inc e                                         ; $761a: $1c
    ld [bc], a                                    ; $761b: $02
    inc bc                                        ; $761c: $03
    db $10                                        ; $761d: $10
    ld bc, $0101                                  ; $761e: $01 $01 $01
    ld bc, $0101                                  ; $7621: $01 $01 $01
    ld bc, $0101                                  ; $7624: $01 $01 $01
    ld bc, $0101                                  ; $7627: $01 $01 $01
    ld bc, $0101                                  ; $762a: $01 $01 $01
    ld bc, $1ded                                  ; $762d: $01 $ed $1d
    ld e, $1f                                     ; $7630: $1e $1f
    db $ed                                        ; $7632: $ed
    dec e                                         ; $7633: $1d
    jr nz, @+$23                                  ; $7634: $20 $21

    db $ed                                        ; $7636: $ed
    dec e                                         ; $7637: $1d
    ld [hl+], a                                   ; $7638: $22
    inc hl                                        ; $7639: $23
    db $ed                                        ; $763a: $ed
    dec e                                         ; $763b: $1d
    inc h                                         ; $763c: $24
    dec h                                         ; $763d: $25
    add b                                         ; $763e: $80
    add b                                         ; $763f: $80
    ld bc, $8001                                  ; $7640: $01 $01 $80
    add b                                         ; $7643: $80
    ld bc, $8001                                  ; $7644: $01 $01 $80
    add b                                         ; $7647: $80
    ld bc, $8001                                  ; $7648: $01 $01 $80
    add b                                         ; $764b: $80
    ld bc, $2601                                  ; $764c: $01 $01 $26
    daa                                           ; $764f: $27
    jr z, jr_07e_767b                             ; $7650: $28 $29

    ld a, [hl+]                                   ; $7652: $2a
    dec hl                                        ; $7653: $2b
    inc l                                         ; $7654: $2c
    dec l                                         ; $7655: $2d
    ld l, $2f                                     ; $7656: $2e $2f
    jr nc, jr_07e_768b                            ; $7658: $30 $31

    ld [hl-], a                                   ; $765a: $32
    inc sp                                        ; $765b: $33
    inc [hl]                                      ; $765c: $34
    dec [hl]                                      ; $765d: $35
    ld bc, $0101                                  ; $765e: $01 $01 $01
    ld bc, $0707                                  ; $7661: $01 $07 $07
    rlca                                          ; $7664: $07
    rlca                                          ; $7665: $07
    rlca                                          ; $7666: $07
    ld b, $04                                     ; $7667: $06 $04
    ld b, $07                                     ; $7669: $06 $07
    ld b, $06                                     ; $766b: $06 $06
    ld b, $36                                     ; $766d: $06 $36
    ld [hl], $37                                  ; $766f: $36 $37
    jr c, jr_07e_76ac                             ; $7671: $38 $39

    ld a, [hl-]                                   ; $7673: $3a
    ld a, [hl+]                                   ; $7674: $2a
    dec hl                                        ; $7675: $2b
    dec sp                                        ; $7676: $3b
    inc a                                         ; $7677: $3c
    ld l, $2f                                     ; $7678: $2e $2f
    dec a                                         ; $767a: $3d

jr_07e_767b:
    ld a, $32                                     ; $767b: $3e $32
    inc sp                                        ; $767d: $33
    ld bc, $0101                                  ; $767e: $01 $01 $01
    ld bc, $0707                                  ; $7681: $01 $07 $07
    rlca                                          ; $7684: $07
    rlca                                          ; $7685: $07
    inc b                                         ; $7686: $04
    ld b, $06                                     ; $7687: $06 $06
    ld b, $06                                     ; $7689: $06 $06

jr_07e_768b:
    inc b                                         ; $768b: $04
    ld b, $04                                     ; $768c: $06 $04
    ccf                                           ; $768e: $3f
    ld b, b                                       ; $768f: $40
    add hl, hl                                    ; $7690: $29
    ld [hl], $2c                                  ; $7691: $36 $2c
    dec l                                         ; $7693: $2d
    add hl, sp                                    ; $7694: $39
    ld a, [hl-]                                   ; $7695: $3a
    jr nc, jr_07e_76c9                            ; $7696: $30 $31

    dec sp                                        ; $7698: $3b
    inc a                                         ; $7699: $3c
    inc [hl]                                      ; $769a: $34
    dec [hl]                                      ; $769b: $35
    dec a                                         ; $769c: $3d
    ld a, $01                                     ; $769d: $3e $01
    ld bc, $0101                                  ; $769f: $01 $01 $01
    rlca                                          ; $76a2: $07
    rlca                                          ; $76a3: $07
    rlca                                          ; $76a4: $07
    rlca                                          ; $76a5: $07
    ld b, $04                                     ; $76a6: $06 $04
    ld b, $04                                     ; $76a8: $06 $04
    ld b, $06                                     ; $76aa: $06 $06

jr_07e_76ac:
    inc b                                         ; $76ac: $04
    ld b, $41                                     ; $76ad: $06 $41
    dec e                                         ; $76af: $1d
    ld b, d                                       ; $76b0: $42
    ld b, e                                       ; $76b1: $43
    ld b, c                                       ; $76b2: $41
    xor $44                                       ; $76b3: $ee $44
    ld b, l                                       ; $76b5: $45
    ld b, c                                       ; $76b6: $41
    ld b, [hl]                                    ; $76b7: $46
    ldh a, [rBGP]                                 ; $76b8: $f0 $47
    db $ed                                        ; $76ba: $ed
    db $ed                                        ; $76bb: $ed
    db $ed                                        ; $76bc: $ed
    xor $80                                       ; $76bd: $ee $80
    add b                                         ; $76bf: $80
    rlca                                          ; $76c0: $07
    rlca                                          ; $76c1: $07
    add b                                         ; $76c2: $80
    add b                                         ; $76c3: $80
    rlca                                          ; $76c4: $07
    ld b, $80                                     ; $76c5: $06 $80
    add b                                         ; $76c7: $80
    add b                                         ; $76c8: $80

jr_07e_76c9:
    add b                                         ; $76c9: $80
    add b                                         ; $76ca: $80
    add b                                         ; $76cb: $80
    add b                                         ; $76cc: $80
    add b                                         ; $76cd: $80
    ld c, b                                       ; $76ce: $48
    ld c, c                                       ; $76cf: $49
    ld c, d                                       ; $76d0: $4a
    ld c, e                                       ; $76d1: $4b
    ld c, h                                       ; $76d2: $4c
    ld c, l                                       ; $76d3: $4d
    ld c, [hl]                                    ; $76d4: $4e
    ld c, a                                       ; $76d5: $4f
    ld d, b                                       ; $76d6: $50
    ld d, c                                       ; $76d7: $51
    ld d, d                                       ; $76d8: $52
    ld d, e                                       ; $76d9: $53
    ld d, h                                       ; $76da: $54
    ld d, l                                       ; $76db: $55
    ld d, [hl]                                    ; $76dc: $56
    ld d, a                                       ; $76dd: $57
    rlca                                          ; $76de: $07
    inc b                                         ; $76df: $04
    inc b                                         ; $76e0: $04
    ld b, $04                                     ; $76e1: $06 $04
    ld b, $06                                     ; $76e3: $06 $06
    ld b, $06                                     ; $76e5: $06 $06
    ld b, $04                                     ; $76e7: $06 $04
    inc b                                         ; $76e9: $04
    ld b, $04                                     ; $76ea: $06 $04
    ld b, $04                                     ; $76ec: $06 $04
    ld b, d                                       ; $76ee: $42
    ld b, e                                       ; $76ef: $43
    ld c, b                                       ; $76f0: $48
    ld c, c                                       ; $76f1: $49
    ld b, h                                       ; $76f2: $44
    ld b, l                                       ; $76f3: $45
    ld c, h                                       ; $76f4: $4c
    ld c, l                                       ; $76f5: $4d
    ld e, b                                       ; $76f6: $58
    ld e, c                                       ; $76f7: $59
    ld d, b                                       ; $76f8: $50
    ld d, c                                       ; $76f9: $51
    ld e, d                                       ; $76fa: $5a
    ld e, e                                       ; $76fb: $5b
    ld d, h                                       ; $76fc: $54
    ld d, l                                       ; $76fd: $55
    ld b, $06                                     ; $76fe: $06 $06
    ld b, $04                                     ; $7700: $06 $04
    inc b                                         ; $7702: $04
    ld b, $06                                     ; $7703: $06 $06
    ld b, $04                                     ; $7705: $06 $04
    inc b                                         ; $7707: $04
    ld b, $04                                     ; $7708: $06 $04
    ld b, $06                                     ; $770a: $06 $06
    inc b                                         ; $770c: $04
    inc b                                         ; $770d: $04
    ld c, d                                       ; $770e: $4a
    ld c, e                                       ; $770f: $4b
    ld b, d                                       ; $7710: $42
    ld b, e                                       ; $7711: $43
    ld c, [hl]                                    ; $7712: $4e
    ld c, a                                       ; $7713: $4f
    ld b, h                                       ; $7714: $44
    ld b, l                                       ; $7715: $45
    ld d, d                                       ; $7716: $52
    ld d, e                                       ; $7717: $53
    ld e, b                                       ; $7718: $58
    ld e, c                                       ; $7719: $59
    ld d, [hl]                                    ; $771a: $56
    ld d, a                                       ; $771b: $57
    ld e, d                                       ; $771c: $5a
    ld e, e                                       ; $771d: $5b
    ld b, $04                                     ; $771e: $06 $04
    ld b, $06                                     ; $7720: $06 $06
    ld b, $04                                     ; $7722: $06 $04
    ld b, $06                                     ; $7724: $06 $06
    ld b, $06                                     ; $7726: $06 $06
    ld b, $04                                     ; $7728: $06 $04
    ld b, $06                                     ; $772a: $06 $06
    inc b                                         ; $772c: $04
    ld b, $ed                                     ; $772d: $06 $ed
    db $ed                                        ; $772f: $ed
    db $ed                                        ; $7730: $ed
    xor $ed                                       ; $7731: $ee $ed
    db $ed                                        ; $7733: $ed
    db $ed                                        ; $7734: $ed
    xor $ed                                       ; $7735: $ee $ed
    db $ed                                        ; $7737: $ed
    db $ed                                        ; $7738: $ed
    ld b, [hl]                                    ; $7739: $46
    db $ed                                        ; $773a: $ed
    db $ed                                        ; $773b: $ed
    db $ed                                        ; $773c: $ed
    db $ed                                        ; $773d: $ed
    add b                                         ; $773e: $80
    add b                                         ; $773f: $80
    add b                                         ; $7740: $80
    add b                                         ; $7741: $80
    add b                                         ; $7742: $80
    add b                                         ; $7743: $80
    add b                                         ; $7744: $80
    add b                                         ; $7745: $80
    add b                                         ; $7746: $80
    add b                                         ; $7747: $80
    add b                                         ; $7748: $80
    add b                                         ; $7749: $80
    add b                                         ; $774a: $80
    add b                                         ; $774b: $80
    add b                                         ; $774c: $80
    add b                                         ; $774d: $80
    ld e, h                                       ; $774e: $5c
    ld e, l                                       ; $774f: $5d
    ld e, [hl]                                    ; $7750: $5e
    ld e, a                                       ; $7751: $5f
    ld h, b                                       ; $7752: $60
    ld h, c                                       ; $7753: $61
    ld h, d                                       ; $7754: $62
    ld h, e                                       ; $7755: $63
    ldh a, [$f0]                                  ; $7756: $f0 $f0
    ldh a, [$f0]                                  ; $7758: $f0 $f0
    db $ed                                        ; $775a: $ed
    db $ed                                        ; $775b: $ed
    db $ed                                        ; $775c: $ed
    db $ed                                        ; $775d: $ed
    rlca                                          ; $775e: $07
    ld b, $06                                     ; $775f: $06 $06
    ld b, $07                                     ; $7761: $06 $07
    ld b, $06                                     ; $7763: $06 $06
    ld b, $80                                     ; $7765: $06 $80
    add b                                         ; $7767: $80
    add b                                         ; $7768: $80
    add b                                         ; $7769: $80
    add b                                         ; $776a: $80
    add b                                         ; $776b: $80
    add b                                         ; $776c: $80
    add b                                         ; $776d: $80
    ld h, h                                       ; $776e: $64
    ld h, l                                       ; $776f: $65
    ld e, h                                       ; $7770: $5c
    ld e, l                                       ; $7771: $5d
    ld h, [hl]                                    ; $7772: $66
    ld h, a                                       ; $7773: $67
    ld h, b                                       ; $7774: $60
    ld h, c                                       ; $7775: $61
    ldh a, [$f0]                                  ; $7776: $f0 $f0
    ldh a, [$f0]                                  ; $7778: $f0 $f0
    db $ed                                        ; $777a: $ed
    db $ed                                        ; $777b: $ed
    db $ed                                        ; $777c: $ed
    db $ed                                        ; $777d: $ed
    inc b                                         ; $777e: $04
    ld b, $06                                     ; $777f: $06 $06
    ld b, $06                                     ; $7781: $06 $06
    ld b, $04                                     ; $7783: $06 $04
    inc b                                         ; $7785: $04
    add b                                         ; $7786: $80
    add b                                         ; $7787: $80
    add b                                         ; $7788: $80
    add b                                         ; $7789: $80
    add b                                         ; $778a: $80
    add b                                         ; $778b: $80
    add b                                         ; $778c: $80
    add b                                         ; $778d: $80
    ld e, [hl]                                    ; $778e: $5e
    ld e, a                                       ; $778f: $5f
    ld h, h                                       ; $7790: $64
    ld h, l                                       ; $7791: $65
    ld h, d                                       ; $7792: $62
    ld h, e                                       ; $7793: $63
    ld h, [hl]                                    ; $7794: $66
    ld h, a                                       ; $7795: $67
    ldh a, [$f0]                                  ; $7796: $f0 $f0
    ldh a, [$f0]                                  ; $7798: $f0 $f0
    db $ed                                        ; $779a: $ed
    db $ed                                        ; $779b: $ed
    db $ed                                        ; $779c: $ed
    db $ed                                        ; $779d: $ed
    ld b, $06                                     ; $779e: $06 $06
    ld b, $04                                     ; $77a0: $06 $04
    inc b                                         ; $77a2: $04
    inc b                                         ; $77a3: $04
    ld b, $06                                     ; $77a4: $06 $06
    add b                                         ; $77a6: $80
    add b                                         ; $77a7: $80
    add b                                         ; $77a8: $80
    add b                                         ; $77a9: $80
    add b                                         ; $77aa: $80
    add b                                         ; $77ab: $80
    add b                                         ; $77ac: $80
    add b                                         ; $77ad: $80
    ld b, $07                                     ; $77ae: $06 $07
    inc d                                         ; $77b0: $14
    dec d                                         ; $77b1: $15
    add hl, de                                    ; $77b2: $19
    add hl, de                                    ; $77b3: $19
    add hl, de                                    ; $77b4: $19
    add hl, de                                    ; $77b5: $19
    add hl, de                                    ; $77b6: $19
    add hl, de                                    ; $77b7: $19
    add hl, de                                    ; $77b8: $19
    add hl, de                                    ; $77b9: $19
    ld l, b                                       ; $77ba: $68
    ld l, c                                       ; $77bb: $69
    inc e                                         ; $77bc: $1c
    ld [bc], a                                    ; $77bd: $02
    ld bc, $0101                                  ; $77be: $01 $01 $01
    ld bc, $0101                                  ; $77c1: $01 $01 $01
    ld bc, $0101                                  ; $77c4: $01 $01 $01
    ld bc, $0101                                  ; $77c7: $01 $01 $01
    ld bc, $0101                                  ; $77ca: $01 $01 $01
    ld bc, $0516                                  ; $77cd: $01 $16 $05
    ld b, $07                                     ; $77d0: $06 $07
    ld l, d                                       ; $77d2: $6a
    ld l, e                                       ; $77d3: $6b
    ld l, h                                       ; $77d4: $6c
    ld l, l                                       ; $77d5: $6d
    ld l, [hl]                                    ; $77d6: $6e
    ld l, a                                       ; $77d7: $6f
    ld [hl], b                                    ; $77d8: $70
    ld [hl], c                                    ; $77d9: $71
    ld [hl], d                                    ; $77da: $72
    ld [hl], e                                    ; $77db: $73
    ld [hl], h                                    ; $77dc: $74
    ld l, c                                       ; $77dd: $69
    ld bc, $0101                                  ; $77de: $01 $01 $01
    ld bc, $0101                                  ; $77e1: $01 $01 $01
    ld bc, $0101                                  ; $77e4: $01 $01 $01
    ld bc, $0101                                  ; $77e7: $01 $01 $01
    ld bc, $0101                                  ; $77ea: $01 $01 $01
    ld bc, $1514                                  ; $77ed: $01 $14 $15
    ld d, $75                                     ; $77f0: $16 $75
    add hl, de                                    ; $77f2: $19
    add hl, de                                    ; $77f3: $19
    add hl, de                                    ; $77f4: $19
    halt                                          ; $77f5: $76
    add hl, de                                    ; $77f6: $19
    add hl, de                                    ; $77f7: $19
    add hl, de                                    ; $77f8: $19
    ld [hl], a                                    ; $77f9: $77
    inc e                                         ; $77fa: $1c
    ld [bc], a                                    ; $77fb: $02
    inc bc                                        ; $77fc: $03
    ld [bc], a                                    ; $77fd: $02
    ld bc, $0101                                  ; $77fe: $01 $01 $01
    ld bc, $0101                                  ; $7801: $01 $01 $01
    ld bc, $0101                                  ; $7804: $01 $01 $01
    ld bc, $0101                                  ; $7807: $01 $01 $01
    ld bc, $0101                                  ; $780a: $01 $01 $01
    ld hl, $7978                                  ; $780d: $21 $78 $79
    ld a, d                                       ; $7810: $7a
    xor $7b                                       ; $7811: $ee $7b
    ld a, h                                       ; $7813: $7c
    ld a, l                                       ; $7814: $7d
    xor $7e                                       ; $7815: $ee $7e
    ld a, a                                       ; $7817: $7f
    add b                                         ; $7818: $80
    xor $81                                       ; $7819: $ee $81
    add d                                         ; $781b: $82
    add e                                         ; $781c: $83
    xor $01                                       ; $781d: $ee $01
    ld bc, $0001                                  ; $781f: $01 $01 $00
    ld bc, $0101                                  ; $7822: $01 $01 $01
    nop                                           ; $7825: $00
    ld bc, $0901                                  ; $7826: $01 $01 $09
    nop                                           ; $7829: $00
    add hl, bc                                    ; $782a: $09
    add hl, bc                                    ; $782b: $09
    add hl, bc                                    ; $782c: $09
    nop                                           ; $782d: $00
    scf                                           ; $782e: $37
    jr c, jr_07e_7870                             ; $782f: $38 $3f

    add h                                         ; $7831: $84
    ld a, [hl+]                                   ; $7832: $2a
    add l                                         ; $7833: $85
    add [hl]                                      ; $7834: $86
    add a                                         ; $7835: $87
    ld l, $88                                     ; $7836: $2e $88
    adc c                                         ; $7838: $89
    adc d                                         ; $7839: $8a
    adc e                                         ; $783a: $8b
    adc h                                         ; $783b: $8c
    adc l                                         ; $783c: $8d
    adc [hl]                                      ; $783d: $8e
    ld bc, $0101                                  ; $783e: $01 $01 $01
    add hl, bc                                    ; $7841: $09
    rlca                                          ; $7842: $07
    rrca                                          ; $7843: $0f
    dec bc                                        ; $7844: $0b
    dec bc                                        ; $7845: $0b
    ld b, $0e                                     ; $7846: $06 $0e
    ld a, [bc]                                    ; $7848: $0a
    ld a, [bc]                                    ; $7849: $0a
    ld c, $0a                                     ; $784a: $0e $0a
    ld a, [bc]                                    ; $784c: $0a
    ld a, [bc]                                    ; $784d: $0a
    adc a                                         ; $784e: $8f
    sub b                                         ; $784f: $90
    sub c                                         ; $7850: $91
    sub d                                         ; $7851: $92
    sub e                                         ; $7852: $93
    sub h                                         ; $7853: $94
    sub l                                         ; $7854: $95
    sub [hl]                                      ; $7855: $96
    sub a                                         ; $7856: $97
    sbc b                                         ; $7857: $98
    sbc c                                         ; $7858: $99
    sbc d                                         ; $7859: $9a
    sbc e                                         ; $785a: $9b
    sbc h                                         ; $785b: $9c
    sbc l                                         ; $785c: $9d
    sbc [hl]                                      ; $785d: $9e
    add hl, bc                                    ; $785e: $09
    add hl, bc                                    ; $785f: $09
    add hl, bc                                    ; $7860: $09
    add hl, bc                                    ; $7861: $09
    dec bc                                        ; $7862: $0b
    dec bc                                        ; $7863: $0b
    dec bc                                        ; $7864: $0b
    rrca                                          ; $7865: $0f
    ld a, [bc]                                    ; $7866: $0a
    ld a, [bc]                                    ; $7867: $0a
    ld a, [bc]                                    ; $7868: $0a
    ld a, [bc]                                    ; $7869: $0a
    ld a, [bc]                                    ; $786a: $0a
    ld a, [bc]                                    ; $786b: $0a
    ld a, [bc]                                    ; $786c: $0a
    ld a, [bc]                                    ; $786d: $0a
    ccf                                           ; $786e: $3f
    ld b, b                                       ; $786f: $40

jr_07e_7870:
    add hl, hl                                    ; $7870: $29
    ld b, b                                       ; $7871: $40
    sbc a                                         ; $7872: $9f
    dec l                                         ; $7873: $2d
    add hl, sp                                    ; $7874: $39
    ld a, [hl-]                                   ; $7875: $3a
    and b                                         ; $7876: $a0

Jump_07e_7877:
    and c                                         ; $7877: $a1
    dec sp                                        ; $7878: $3b
    inc a                                         ; $7879: $3c
    and d                                         ; $787a: $a2
    and e                                         ; $787b: $a3
    and h                                         ; $787c: $a4
    ld a, $01                                     ; $787d: $3e $01
    ld bc, $2101                                  ; $787f: $01 $01 $21
    rrca                                          ; $7882: $0f
    rlca                                          ; $7883: $07
    rlca                                          ; $7884: $07
    rlca                                          ; $7885: $07
    ld a, [bc]                                    ; $7886: $0a
    ld c, $06                                     ; $7887: $0e $06
    ld b, $0a                                     ; $7889: $06 $0a
    ld a, [bc]                                    ; $788b: $0a
    ld c, $06                                     ; $788c: $0e $06
    and l                                         ; $788e: $a5
    and [hl]                                      ; $788f: $a6
    and a                                         ; $7890: $a7
    xor $2a                                       ; $7891: $ee $2a
    dec hl                                        ; $7893: $2b
    inc l                                         ; $7894: $2c
    xor $2e                                       ; $7895: $ee $2e
    cpl                                           ; $7897: $2f
    jr nc, @-$10                                  ; $7898: $30 $ee

    ld [hl-], a                                   ; $789a: $32
    inc sp                                        ; $789b: $33
    inc [hl]                                      ; $789c: $34
    xor $09                                       ; $789d: $ee $09
    add hl, bc                                    ; $789f: $09
    add hl, bc                                    ; $78a0: $09
    nop                                           ; $78a1: $00
    rlca                                          ; $78a2: $07
    rlca                                          ; $78a3: $07
    rlca                                          ; $78a4: $07
    nop                                           ; $78a5: $00
    inc b                                         ; $78a6: $04
    ld b, $07                                     ; $78a7: $06 $07
    nop                                           ; $78a9: $00
    ld b, $04                                     ; $78aa: $06 $04
    rlca                                          ; $78ac: $07
    nop                                           ; $78ad: $00
    xor b                                         ; $78ae: $a8
    add [hl]                                      ; $78af: $86
    xor c                                         ; $78b0: $a9
    xor d                                         ; $78b1: $aa
    ld c, h                                       ; $78b2: $4c
    xor e                                         ; $78b3: $ab
    xor h                                         ; $78b4: $ac
    and b                                         ; $78b5: $a0
    ld d, b                                       ; $78b6: $50
    ld d, c                                       ; $78b7: $51
    xor l                                         ; $78b8: $ad
    xor [hl]                                      ; $78b9: $ae
    ld d, h                                       ; $78ba: $54
    ld d, l                                       ; $78bb: $55
    ld d, [hl]                                    ; $78bc: $56
    xor a                                         ; $78bd: $af
    ld c, $4a                                     ; $78be: $0e $4a
    ld a, [bc]                                    ; $78c0: $0a
    ld a, [bc]                                    ; $78c1: $0a
    inc b                                         ; $78c2: $04
    ld c, $0e                                     ; $78c3: $0e $0e
    ld a, [bc]                                    ; $78c5: $0a
    inc b                                         ; $78c6: $04
    inc b                                         ; $78c7: $04
    ld c, $0e                                     ; $78c8: $0e $0e
    inc b                                         ; $78ca: $04
    ld b, $06                                     ; $78cb: $06 $06
    ld c, $b0                                     ; $78cd: $0e $b0
    or c                                          ; $78cf: $b1
    or d                                          ; $78d0: $b2

Jump_07e_78d1:
    or e                                          ; $78d1: $b3
    or h                                          ; $78d2: $b4
    or l                                          ; $78d3: $b5
    or [hl]                                       ; $78d4: $b6
    or a                                          ; $78d5: $b7
    cp b                                          ; $78d6: $b8
    cp c                                          ; $78d7: $b9
    cp d                                          ; $78d8: $ba
    cp e                                          ; $78d9: $bb
    cp h                                          ; $78da: $bc
    cp l                                          ; $78db: $bd
    cp [hl]                                       ; $78dc: $be
    cp a                                          ; $78dd: $bf
    ld a, [bc]                                    ; $78de: $0a
    ld a, [bc]                                    ; $78df: $0a
    ld a, [bc]                                    ; $78e0: $0a
    ld a, [bc]                                    ; $78e1: $0a
    ld a, [bc]                                    ; $78e2: $0a
    ld a, [bc]                                    ; $78e3: $0a
    ld a, [bc]                                    ; $78e4: $0a
    ld a, [bc]                                    ; $78e5: $0a
    ld a, [bc]                                    ; $78e6: $0a
    ld a, [bc]                                    ; $78e7: $0a
    ld a, [bc]                                    ; $78e8: $0a
    ld a, [bc]                                    ; $78e9: $0a
    ld a, [bc]                                    ; $78ea: $0a
    ld a, [bc]                                    ; $78eb: $0a
    ld a, [bc]                                    ; $78ec: $0a
    ld a, [bc]                                    ; $78ed: $0a
    ret nz                                        ; $78ee: $c0

    pop bc                                        ; $78ef: $c1
    and b                                         ; $78f0: $a0
    jp nz, $c4c3                                  ; $78f1: $c2 $c3 $c4

    push bc                                       ; $78f4: $c5
    add $c7                                       ; $78f5: $c6 $c7
    ret z                                         ; $78f7: $c8

    ret                                           ; $78f8: $c9


    jp z, $cba0                                   ; $78f9: $ca $a0 $cb

    call z, $0acd                                 ; $78fc: $cc $cd $0a
    ld a, [bc]                                    ; $78ff: $0a
    ld a, [bc]                                    ; $7900: $0a
    ld c, $0a                                     ; $7901: $0e $0a
    ld a, [bc]                                    ; $7903: $0a
    ld a, [bc]                                    ; $7904: $0a
    ld c, $0a                                     ; $7905: $0e $0a
    ld a, [bc]                                    ; $7907: $0a
    ld a, [bc]                                    ; $7908: $0a
    ld c, $0a                                     ; $7909: $0e $0a
    ld a, [bc]                                    ; $790b: $0a
    ld a, [bc]                                    ; $790c: $0a
    ld c, $48                                     ; $790d: $0e $48
    ld c, c                                       ; $790f: $49
    ld c, d                                       ; $7910: $4a
    xor $4c                                       ; $7911: $ee $4c
    ld c, l                                       ; $7913: $4d
    ld c, [hl]                                    ; $7914: $4e
    xor $50                                       ; $7915: $ee $50
    ld d, c                                       ; $7917: $51
    ld d, d                                       ; $7918: $52
    xor $54                                       ; $7919: $ee $54
    ld d, l                                       ; $791b: $55
    ld d, [hl]                                    ; $791c: $56
    xor $06                                       ; $791d: $ee $06
    ld b, $07                                     ; $791f: $06 $07
    nop                                           ; $7921: $00
    inc b                                         ; $7922: $04
    ld b, $07                                     ; $7923: $06 $07
    nop                                           ; $7925: $00
    ld b, $06                                     ; $7926: $06 $06
    rlca                                          ; $7928: $07
    nop                                           ; $7929: $00
    ld b, $04                                     ; $792a: $06 $04
    rlca                                          ; $792c: $07
    nop                                           ; $792d: $00
    ld e, h                                       ; $792e: $5c
    ld e, l                                       ; $792f: $5d
    ld e, [hl]                                    ; $7930: $5e
    ld e, a                                       ; $7931: $5f
    ld h, b                                       ; $7932: $60
    ld h, c                                       ; $7933: $61
    ld h, d                                       ; $7934: $62
    ld h, e                                       ; $7935: $63
    ldh a, [$f0]                                  ; $7936: $f0 $f0
    ldh a, [$f0]                                  ; $7938: $f0 $f0
    db $ed                                        ; $793a: $ed
    db $ed                                        ; $793b: $ed
    db $ed                                        ; $793c: $ed
    db $ed                                        ; $793d: $ed
    ld b, $04                                     ; $793e: $06 $04
    ld b, $06                                     ; $7940: $06 $06
    inc b                                         ; $7942: $04
    ld b, $06                                     ; $7943: $06 $06
    inc b                                         ; $7945: $04
    add b                                         ; $7946: $80
    add b                                         ; $7947: $80
    add b                                         ; $7948: $80
    add b                                         ; $7949: $80
    add b                                         ; $794a: $80
    add b                                         ; $794b: $80
    add b                                         ; $794c: $80
    add b                                         ; $794d: $80
    adc $cf                                       ; $794e: $ce $cf
    ret nc                                        ; $7950: $d0

    ld e, l                                       ; $7951: $5d
    ld h, [hl]                                    ; $7952: $66
    ld h, a                                       ; $7953: $67
    ld h, b                                       ; $7954: $60
    ld h, c                                       ; $7955: $61
    ldh a, [$f0]                                  ; $7956: $f0 $f0
    ldh a, [$f0]                                  ; $7958: $f0 $f0
    db $ed                                        ; $795a: $ed
    db $ed                                        ; $795b: $ed
    db $ed                                        ; $795c: $ed
    db $ed                                        ; $795d: $ed
    ld c, $0e                                     ; $795e: $0e $0e
    ld c, $06                                     ; $7960: $0e $06
    ld b, $06                                     ; $7962: $06 $06
    inc b                                         ; $7964: $04
    inc b                                         ; $7965: $04
    add b                                         ; $7966: $80
    add b                                         ; $7967: $80
    add b                                         ; $7968: $80
    add b                                         ; $7969: $80
    add b                                         ; $796a: $80
    add b                                         ; $796b: $80
    add b                                         ; $796c: $80
    add b                                         ; $796d: $80
    ld e, [hl]                                    ; $796e: $5e
    pop de                                        ; $796f: $d1
    adc $65                                       ; $7970: $ce $65
    ld h, d                                       ; $7972: $62
    ld h, e                                       ; $7973: $63
    ld h, [hl]                                    ; $7974: $66
    ld h, a                                       ; $7975: $67
    ldh a, [$f0]                                  ; $7976: $f0 $f0
    ldh a, [$f0]                                  ; $7978: $f0 $f0
    db $ed                                        ; $797a: $ed
    db $ed                                        ; $797b: $ed
    db $ed                                        ; $797c: $ed
    db $ed                                        ; $797d: $ed
    ld b, $0e                                     ; $797e: $06 $0e
    ld c, $06                                     ; $7980: $0e $06
    ld b, $06                                     ; $7982: $06 $06
    ld b, $04                                     ; $7984: $06 $04
    add b                                         ; $7986: $80
    add b                                         ; $7987: $80
    add b                                         ; $7988: $80
    add b                                         ; $7989: $80
    add b                                         ; $798a: $80
    add b                                         ; $798b: $80
    add b                                         ; $798c: $80
    add b                                         ; $798d: $80
    ld e, h                                       ; $798e: $5c
    ld e, l                                       ; $798f: $5d
    ld e, [hl]                                    ; $7990: $5e
    xor $60                                       ; $7991: $ee $60
    ld h, c                                       ; $7993: $61
    ld h, d                                       ; $7994: $62
    xor $f0                                       ; $7995: $ee $f0
    ldh a, [$f0]                                  ; $7997: $f0 $f0
    pop af                                        ; $7999: $f1
    db $ed                                        ; $799a: $ed
    db $ed                                        ; $799b: $ed
    db $ed                                        ; $799c: $ed
    db $ed                                        ; $799d: $ed
    ld b, $06                                     ; $799e: $06 $06
    rlca                                          ; $79a0: $07
    nop                                           ; $79a1: $00
    ld b, $06                                     ; $79a2: $06 $06
    rlca                                          ; $79a4: $07
    nop                                           ; $79a5: $00
    nop                                           ; $79a6: $00
    nop                                           ; $79a7: $00
    nop                                           ; $79a8: $00
    nop                                           ; $79a9: $00
    nop                                           ; $79aa: $00
    nop                                           ; $79ab: $00
    nop                                           ; $79ac: $00
    nop                                           ; $79ad: $00
    db $ed                                        ; $79ae: $ed
    db $ed                                        ; $79af: $ed
    db $ed                                        ; $79b0: $ed
    db $ed                                        ; $79b1: $ed
    db $ed                                        ; $79b2: $ed
    db $ed                                        ; $79b3: $ed
    db $ed                                        ; $79b4: $ed
    db $ed                                        ; $79b5: $ed
    db $ed                                        ; $79b6: $ed
    db $ed                                        ; $79b7: $ed
    db $ed                                        ; $79b8: $ed
    db $ed                                        ; $79b9: $ed
    db $ed                                        ; $79ba: $ed
    db $ed                                        ; $79bb: $ed
    db $ed                                        ; $79bc: $ed
    db $ed                                        ; $79bd: $ed
    add b                                         ; $79be: $80
    add b                                         ; $79bf: $80
    add b                                         ; $79c0: $80
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
    add b                                         ; $79cd: $80
    scf                                           ; $79ce: $37
    jr c, jr_07e_7a10                             ; $79cf: $38 $3f

    add h                                         ; $79d1: $84
    ld a, [hl+]                                   ; $79d2: $2a
    add l                                         ; $79d3: $85
    add [hl]                                      ; $79d4: $86
    jp nc, $882e                                  ; $79d5: $d2 $2e $88

    db $d3                                        ; $79d8: $d3
    call nc, $8c8b                                ; $79d9: $d4 $8b $8c
    push de                                       ; $79dc: $d5
    sub $01                                       ; $79dd: $d6 $01
    ld bc, $0901                                  ; $79df: $01 $01 $09
    rlca                                          ; $79e2: $07
    rrca                                          ; $79e3: $0f
    dec bc                                        ; $79e4: $0b
    dec bc                                        ; $79e5: $0b
    ld b, $0e                                     ; $79e6: $06 $0e
    ld a, [bc]                                    ; $79e8: $0a
    ld a, [bc]                                    ; $79e9: $0a
    ld c, $0a                                     ; $79ea: $0e $0a
    ld a, [bc]                                    ; $79ec: $0a
    ld a, [bc]                                    ; $79ed: $0a
    adc a                                         ; $79ee: $8f
    sub b                                         ; $79ef: $90
    sub c                                         ; $79f0: $91
    sub d                                         ; $79f1: $92
    rst $10                                       ; $79f2: $d7
    ret c                                         ; $79f3: $d8

    sub l                                         ; $79f4: $95
    sub [hl]                                      ; $79f5: $96
    reti                                          ; $79f6: $d9


    jp c, $9adb                                   ; $79f7: $da $db $9a

    call c, $dedd                                 ; $79fa: $dc $dd $de
    rst $18                                       ; $79fd: $df
    add hl, bc                                    ; $79fe: $09
    add hl, bc                                    ; $79ff: $09
    add hl, bc                                    ; $7a00: $09
    add hl, bc                                    ; $7a01: $09
    dec bc                                        ; $7a02: $0b
    dec bc                                        ; $7a03: $0b
    dec bc                                        ; $7a04: $0b
    rrca                                          ; $7a05: $0f
    ld a, [bc]                                    ; $7a06: $0a
    ld a, [bc]                                    ; $7a07: $0a
    ld a, [bc]                                    ; $7a08: $0a
    ld a, [bc]                                    ; $7a09: $0a
    ld a, [bc]                                    ; $7a0a: $0a
    ld a, [bc]                                    ; $7a0b: $0a
    ld a, [bc]                                    ; $7a0c: $0a
    ld a, [bc]                                    ; $7a0d: $0a
    ccf                                           ; $7a0e: $3f
    ld b, b                                       ; $7a0f: $40

jr_07e_7a10:
    add hl, hl                                    ; $7a10: $29
    ld b, b                                       ; $7a11: $40
    sbc a                                         ; $7a12: $9f
    dec l                                         ; $7a13: $2d
    add hl, sp                                    ; $7a14: $39
    ld a, [hl-]                                   ; $7a15: $3a
    and b                                         ; $7a16: $a0
    and c                                         ; $7a17: $a1
    dec sp                                        ; $7a18: $3b
    inc a                                         ; $7a19: $3c
    ldh [$a3], a                                  ; $7a1a: $e0 $a3
    and h                                         ; $7a1c: $a4
    ld a, $01                                     ; $7a1d: $3e $01
    ld bc, $2101                                  ; $7a1f: $01 $01 $21
    rrca                                          ; $7a22: $0f
    rlca                                          ; $7a23: $07
    rlca                                          ; $7a24: $07
    rlca                                          ; $7a25: $07
    ld a, [bc]                                    ; $7a26: $0a
    ld c, $06                                     ; $7a27: $0e $06
    ld b, $0a                                     ; $7a29: $06 $0a
    ld a, [bc]                                    ; $7a2b: $0a
    ld c, $06                                     ; $7a2c: $0e $06
    scf                                           ; $7a2e: $37
    jr c, jr_07e_7a70                             ; $7a2f: $38 $3f

    add h                                         ; $7a31: $84
    ld a, [hl+]                                   ; $7a32: $2a
    dec hl                                        ; $7a33: $2b
    inc l                                         ; $7a34: $2c
    dec l                                         ; $7a35: $2d
    ld l, $2f                                     ; $7a36: $2e $2f
    jr nc, @-$1d                                  ; $7a38: $30 $e1

    ld [hl-], a                                   ; $7a3a: $32
    inc sp                                        ; $7a3b: $33
    ld [c], a                                     ; $7a3c: $e2
    and b                                         ; $7a3d: $a0
    ld bc, $0101                                  ; $7a3e: $01 $01 $01
    add hl, bc                                    ; $7a41: $09
    rlca                                          ; $7a42: $07
    rlca                                          ; $7a43: $07
    rlca                                          ; $7a44: $07
    rlca                                          ; $7a45: $07
    ld b, $06                                     ; $7a46: $06 $06
    ld b, $0e                                     ; $7a48: $06 $0e
    ld b, $06                                     ; $7a4a: $06 $06
    ld c, $0a                                     ; $7a4c: $0e $0a
    adc a                                         ; $7a4e: $8f
    sub b                                         ; $7a4f: $90
    sub c                                         ; $7a50: $91
    sub d                                         ; $7a51: $92
    add hl, sp                                    ; $7a52: $39
    ld a, [hl-]                                   ; $7a53: $3a
    ld a, [hl+]                                   ; $7a54: $2a
    dec hl                                        ; $7a55: $2b
    db $e3                                        ; $7a56: $e3
    db $e4                                        ; $7a57: $e4
    push hl                                       ; $7a58: $e5
    and $e7                                       ; $7a59: $e6 $e7
    add sp, -$17                                  ; $7a5b: $e8 $e9
    ld [$0909], a                                 ; $7a5d: $ea $09 $09
    add hl, bc                                    ; $7a60: $09
    add hl, bc                                    ; $7a61: $09
    rlca                                          ; $7a62: $07
    rlca                                          ; $7a63: $07
    rlca                                          ; $7a64: $07
    rlca                                          ; $7a65: $07
    ld c, $0e                                     ; $7a66: $0e $0e
    ld c, $0e                                     ; $7a68: $0e $0e
    ld a, [bc]                                    ; $7a6a: $0a
    ld a, [bc]                                    ; $7a6b: $0a
    ld a, [bc]                                    ; $7a6c: $0a
    ld a, [bc]                                    ; $7a6d: $0a
    ccf                                           ; $7a6e: $3f
    ld b, b                                       ; $7a6f: $40

jr_07e_7a70:
    add hl, hl                                    ; $7a70: $29
    ld b, b                                       ; $7a71: $40
    inc l                                         ; $7a72: $2c
    dec l                                         ; $7a73: $2d
    add hl, sp                                    ; $7a74: $39
    ld a, [hl-]                                   ; $7a75: $3a
    db $eb                                        ; $7a76: $eb
    db $ec                                        ; $7a77: $ec
    db $ed                                        ; $7a78: $ed
    inc a                                         ; $7a79: $3c
    xor $a0                                       ; $7a7a: $ee $a0
    rst $28                                       ; $7a7c: $ef
    ldh a, [rSB]                                  ; $7a7d: $f0 $01
    ld bc, $2101                                  ; $7a7f: $01 $01 $21
    rlca                                          ; $7a82: $07
    rlca                                          ; $7a83: $07
    rlca                                          ; $7a84: $07
    rlca                                          ; $7a85: $07
    ld c, $0e                                     ; $7a86: $0e $0e
    ld c, $06                                     ; $7a88: $0e $06
    ld a, [bc]                                    ; $7a8a: $0a
    ld a, [bc]                                    ; $7a8b: $0a
    ld c, $0e                                     ; $7a8c: $0e $0e
    ld c, b                                       ; $7a8e: $48
    ld c, c                                       ; $7a8f: $49
    pop af                                        ; $7a90: $f1
    ld a, [c]                                     ; $7a91: $f2
    ld c, h                                       ; $7a92: $4c
    ld c, l                                       ; $7a93: $4d
    di                                            ; $7a94: $f3
    db $f4                                        ; $7a95: $f4
    ld d, b                                       ; $7a96: $50
    ld d, c                                       ; $7a97: $51
    push af                                       ; $7a98: $f5
    or $54                                        ; $7a99: $f6 $54
    ld d, l                                       ; $7a9b: $55
    ld d, [hl]                                    ; $7a9c: $56
    rst $30                                       ; $7a9d: $f7
    ld b, $06                                     ; $7a9e: $06 $06
    ld c, $0a                                     ; $7aa0: $0e $0a
    inc b                                         ; $7aa2: $04
    ld b, $0e                                     ; $7aa3: $06 $0e
    ld a, [bc]                                    ; $7aa5: $0a
    inc b                                         ; $7aa6: $04
    inc b                                         ; $7aa7: $04
    ld c, $0e                                     ; $7aa8: $0e $0e
    inc b                                         ; $7aaa: $04
    ld b, $06                                     ; $7aab: $06 $06
    ld c, $f8                                     ; $7aad: $0e $f8
    ld sp, hl                                     ; $7aaf: $f9
    ld a, [$fcfb]                                 ; $7ab0: $fa $fb $fc
    db $fd                                        ; $7ab3: $fd
    cp $ff                                        ; $7ab4: $fe $ff
    nop                                           ; $7ab6: $00
    ld bc, $0302                                  ; $7ab7: $01 $02 $03
    inc b                                         ; $7aba: $04
    dec b                                         ; $7abb: $05
    ld b, $07                                     ; $7abc: $06 $07
    ld a, [bc]                                    ; $7abe: $0a
    ld a, [bc]                                    ; $7abf: $0a
    ld a, [bc]                                    ; $7ac0: $0a
    ld a, [bc]                                    ; $7ac1: $0a
    ld a, [bc]                                    ; $7ac2: $0a
    ld a, [bc]                                    ; $7ac3: $0a
    ld a, [bc]                                    ; $7ac4: $0a
    ld a, [bc]                                    ; $7ac5: $0a
    ld a, [bc]                                    ; $7ac6: $0a
    ld a, [bc]                                    ; $7ac7: $0a
    ld a, [bc]                                    ; $7ac8: $0a
    ld a, [bc]                                    ; $7ac9: $0a
    ld a, [bc]                                    ; $7aca: $0a
    ld a, [bc]                                    ; $7acb: $0a
    ld a, [bc]                                    ; $7acc: $0a
    ld a, [bc]                                    ; $7acd: $0a
    ld [$0a09], sp                                ; $7ace: $08 $09 $0a

Jump_07e_7ad1:
    dec bc                                        ; $7ad1: $0b
    inc c                                         ; $7ad2: $0c
    dec c                                         ; $7ad3: $0d
    ld c, $0f                                     ; $7ad4: $0e $0f
    db $10                                        ; $7ad6: $10
    ld de, $1312                                  ; $7ad7: $11 $12 $13
    inc d                                         ; $7ada: $14
    dec d                                         ; $7adb: $15
    ld d, $17                                     ; $7adc: $16 $17
    ld a, [bc]                                    ; $7ade: $0a
    ld a, [bc]                                    ; $7adf: $0a
    ld a, [bc]                                    ; $7ae0: $0a
    ld a, [bc]                                    ; $7ae1: $0a
    ld a, [bc]                                    ; $7ae2: $0a
    ld a, [bc]                                    ; $7ae3: $0a
    ld a, [bc]                                    ; $7ae4: $0a
    ld a, [bc]                                    ; $7ae5: $0a
    ld a, [bc]                                    ; $7ae6: $0a
    ld a, [bc]                                    ; $7ae7: $0a
    ld a, [bc]                                    ; $7ae8: $0a
    ld a, [bc]                                    ; $7ae9: $0a
    ld a, [bc]                                    ; $7aea: $0a
    ld a, [bc]                                    ; $7aeb: $0a
    ld a, [bc]                                    ; $7aec: $0a
    ld a, [bc]                                    ; $7aed: $0a
    jr @+$4b                                      ; $7aee: $18 $49

    ld c, d                                       ; $7af0: $4a
    xor $19                                       ; $7af1: $ee $19
    ld c, l                                       ; $7af3: $4d
    ld c, [hl]                                    ; $7af4: $4e
    xor $1a                                       ; $7af5: $ee $1a
    ld d, c                                       ; $7af7: $51
    ld d, d                                       ; $7af8: $52
    xor $1b                                       ; $7af9: $ee $1b
    ld d, l                                       ; $7afb: $55
    ld d, [hl]                                    ; $7afc: $56
    xor $0e                                       ; $7afd: $ee $0e
    ld b, $07                                     ; $7aff: $06 $07
    nop                                           ; $7b01: $00
    inc c                                         ; $7b02: $0c
    ld b, $07                                     ; $7b03: $06 $07
    nop                                           ; $7b05: $00
    ld c, $06                                     ; $7b06: $0e $06
    rlca                                          ; $7b08: $07
    nop                                           ; $7b09: $00
    ld c, $04                                     ; $7b0a: $0e $04
    rlca                                          ; $7b0c: $07
    nop                                           ; $7b0d: $00
    ld c, b                                       ; $7b0e: $48
    ld c, c                                       ; $7b0f: $49
    pop af                                        ; $7b10: $f1
    ld a, [c]                                     ; $7b11: $f2
    ld c, h                                       ; $7b12: $4c
    ld c, l                                       ; $7b13: $4d
    di                                            ; $7b14: $f3
    db $f4                                        ; $7b15: $f4
    inc e                                         ; $7b16: $1c
    dec e                                         ; $7b17: $1d
    ld e, $1f                                     ; $7b18: $1e $1f
    jr nz, jr_07e_7b3d                            ; $7b1a: $20 $21

    ld [hl+], a                                   ; $7b1c: $22
    inc hl                                        ; $7b1d: $23
    ld b, $06                                     ; $7b1e: $06 $06
    ld c, $0a                                     ; $7b20: $0e $0a
    inc b                                         ; $7b22: $04
    ld b, $0e                                     ; $7b23: $06 $0e
    ld a, [bc]                                    ; $7b25: $0a
    inc c                                         ; $7b26: $0c
    inc c                                         ; $7b27: $0c
    ld c, $0e                                     ; $7b28: $0e $0e
    inc c                                         ; $7b2a: $0c
    ld c, $0e                                     ; $7b2b: $0e $0e
    ld c, $48                                     ; $7b2d: $0e $48
    ld c, c                                       ; $7b2f: $49
    pop af                                        ; $7b30: $f1
    ld a, [c]                                     ; $7b31: $f2
    ld c, h                                       ; $7b32: $4c
    ld c, l                                       ; $7b33: $4d
    di                                            ; $7b34: $f3
    db $f4                                        ; $7b35: $f4
    inc h                                         ; $7b36: $24
    dec h                                         ; $7b37: $25
    ld h, $27                                     ; $7b38: $26 $27
    jr z, jr_07e_7b65                             ; $7b3a: $28 $29

    ld a, [hl+]                                   ; $7b3c: $2a

jr_07e_7b3d:
    dec hl                                        ; $7b3d: $2b
    ld b, $06                                     ; $7b3e: $06 $06
    ld c, $0a                                     ; $7b40: $0e $0a
    inc b                                         ; $7b42: $04
    ld b, $0e                                     ; $7b43: $06 $0e
    ld a, [bc]                                    ; $7b45: $0a
    inc c                                         ; $7b46: $0c
    inc c                                         ; $7b47: $0c
    ld c, $0e                                     ; $7b48: $0e $0e
    inc c                                         ; $7b4a: $0c
    ld c, $0e                                     ; $7b4b: $0e $0e
    ld c, $06                                     ; $7b4d: $0e $06
    nop                                           ; $7b4f: $00
    ld b, $00                                     ; $7b50: $06 $00
    ld b, b                                       ; $7b52: $40
    inc b                                         ; $7b53: $04
    pop de                                        ; $7b54: $d1
    pop de                                        ; $7b55: $d1
    pop de                                        ; $7b56: $d1
    pop de                                        ; $7b57: $d1
    pop de                                        ; $7b58: $d1
    pop de                                        ; $7b59: $d1
    pop de                                        ; $7b5a: $d1
    pop de                                        ; $7b5b: $d1
    pop de                                        ; $7b5c: $d1
    pop de                                        ; $7b5d: $d1
    pop de                                        ; $7b5e: $d1
    pop de                                        ; $7b5f: $d1
    pop de                                        ; $7b60: $d1
    pop de                                        ; $7b61: $d1
    pop de                                        ; $7b62: $d1
    pop de                                        ; $7b63: $d1
    add b                                         ; $7b64: $80

jr_07e_7b65:
    add b                                         ; $7b65: $80
    add b                                         ; $7b66: $80
    add b                                         ; $7b67: $80
    add b                                         ; $7b68: $80
    add b                                         ; $7b69: $80
    add b                                         ; $7b6a: $80
    add b                                         ; $7b6b: $80
    add b                                         ; $7b6c: $80
    add b                                         ; $7b6d: $80
    add b                                         ; $7b6e: $80
    add b                                         ; $7b6f: $80
    add b                                         ; $7b70: $80
    add b                                         ; $7b71: $80
    add b                                         ; $7b72: $80
    add b                                         ; $7b73: $80
    jp nc, $d4d3                                  ; $7b74: $d2 $d3 $d4

    push de                                       ; $7b77: $d5
    jp nc, $d7d6                                  ; $7b78: $d2 $d6 $d7

    ret c                                         ; $7b7b: $d8

    jp nc, $dad9                                  ; $7b7c: $d2 $d9 $da

    db $db                                        ; $7b7f: $db
    jp nc, $dddc                                  ; $7b80: $d2 $dc $dd

    sbc $80                                       ; $7b83: $de $80
    ld bc, $0101                                  ; $7b85: $01 $01 $01
    add b                                         ; $7b88: $80
    ld bc, $0101                                  ; $7b89: $01 $01 $01
    add b                                         ; $7b8c: $80
    ld [bc], a                                    ; $7b8d: $02
    ld [bc], a                                    ; $7b8e: $02
    ld [bc], a                                    ; $7b8f: $02
    add b                                         ; $7b90: $80
    ld [bc], a                                    ; $7b91: $02
    ld [bc], a                                    ; $7b92: $02
    ld [bc], a                                    ; $7b93: $02
    rst $18                                       ; $7b94: $df
    ldh [$e1], a                                  ; $7b95: $e0 $e1
    ld [c], a                                     ; $7b97: $e2
    db $e3                                        ; $7b98: $e3
    db $e4                                        ; $7b99: $e4
    push hl                                       ; $7b9a: $e5
    and $e7                                       ; $7b9b: $e6 $e7
    add sp, -$17                                  ; $7b9d: $e8 $e9
    ld [$eceb], a                                 ; $7b9f: $ea $eb $ec
    db $ed                                        ; $7ba2: $ed
    xor $01                                       ; $7ba3: $ee $01
    ld bc, $0101                                  ; $7ba5: $01 $01 $01
    ld bc, $0101                                  ; $7ba8: $01 $01 $01
    ld bc, $0202                                  ; $7bab: $01 $02 $02
    ld [bc], a                                    ; $7bae: $02
    ld [bc], a                                    ; $7baf: $02
    ld [bc], a                                    ; $7bb0: $02
    ld [bc], a                                    ; $7bb1: $02
    ld [bc], a                                    ; $7bb2: $02
    ld [bc], a                                    ; $7bb3: $02
    rst $28                                       ; $7bb4: $ef
    ldh a, [$f1]                                  ; $7bb5: $f0 $f1
    ld a, [c]                                     ; $7bb7: $f2
    di                                            ; $7bb8: $f3
    db $f4                                        ; $7bb9: $f4
    push af                                       ; $7bba: $f5
    or $f7                                        ; $7bbb: $f6 $f7
    ld hl, sp-$07                                 ; $7bbd: $f8 $f9
    ld a, [$fcfb]                                 ; $7bbf: $fa $fb $fc
    db $fd                                        ; $7bc2: $fd
    cp $01                                        ; $7bc3: $fe $01
    inc bc                                        ; $7bc5: $03
    inc bc                                        ; $7bc6: $03
    inc bc                                        ; $7bc7: $03
    ld bc, $0303                                  ; $7bc8: $01 $03 $03
    inc bc                                        ; $7bcb: $03
    ld [bc], a                                    ; $7bcc: $02
    inc bc                                        ; $7bcd: $03
    inc bc                                        ; $7bce: $03
    inc bc                                        ; $7bcf: $03
    ld [bc], a                                    ; $7bd0: $02
    ld bc, $0301                                  ; $7bd1: $01 $01 $03
    jp nc, Jump_000_00ff                          ; $7bd4: $d2 $ff $00

    ld bc, $02d2                                  ; $7bd7: $01 $d2 $02
    inc bc                                        ; $7bda: $03
    inc b                                         ; $7bdb: $04
    jp nc, $0605                                  ; $7bdc: $d2 $05 $06

    rlca                                          ; $7bdf: $07
    jp nc, Jump_000_0908                          ; $7be0: $d2 $08 $09

    ld a, [bc]                                    ; $7be3: $0a
    add b                                         ; $7be4: $80
    ld [bc], a                                    ; $7be5: $02
    ld [bc], a                                    ; $7be6: $02
    ld [bc], a                                    ; $7be7: $02
    add b                                         ; $7be8: $80
    ld [bc], a                                    ; $7be9: $02
    ld [bc], a                                    ; $7bea: $02
    ld [bc], a                                    ; $7beb: $02
    add b                                         ; $7bec: $80
    ld [bc], a                                    ; $7bed: $02
    ld [bc], a                                    ; $7bee: $02
    ld [bc], a                                    ; $7bef: $02
    add b                                         ; $7bf0: $80
    rlca                                          ; $7bf1: $07
    rlca                                          ; $7bf2: $07
    rlca                                          ; $7bf3: $07
    dec bc                                        ; $7bf4: $0b
    inc c                                         ; $7bf5: $0c
    dec c                                         ; $7bf6: $0d
    ld c, $0f                                     ; $7bf7: $0e $0f
    db $10                                        ; $7bf9: $10
    ld de, $1312                                  ; $7bfa: $11 $12 $13
    inc d                                         ; $7bfd: $14
    dec d                                         ; $7bfe: $15
    ld d, $17                                     ; $7bff: $16 $17
    jr jr_07e_7c1c                                ; $7c01: $18 $19

    ld a, [de]                                    ; $7c03: $1a
    ld [bc], a                                    ; $7c04: $02
    ld [bc], a                                    ; $7c05: $02
    ld [bc], a                                    ; $7c06: $02
    ld [bc], a                                    ; $7c07: $02
    ld [bc], a                                    ; $7c08: $02
    ld [bc], a                                    ; $7c09: $02

jr_07e_7c0a:
    ld [bc], a                                    ; $7c0a: $02
    ld [bc], a                                    ; $7c0b: $02
    ld [bc], a                                    ; $7c0c: $02
    ld [bc], a                                    ; $7c0d: $02
    ld [bc], a                                    ; $7c0e: $02
    ld [bc], a                                    ; $7c0f: $02
    rlca                                          ; $7c10: $07
    rlca                                          ; $7c11: $07
    rlca                                          ; $7c12: $07
    rlca                                          ; $7c13: $07
    dec de                                        ; $7c14: $1b
    inc e                                         ; $7c15: $1c
    dec e                                         ; $7c16: $1d
    ld e, $1f                                     ; $7c17: $1e $1f
    jr nz, @+$23                                  ; $7c19: $20 $21

    inc e                                         ; $7c1b: $1c

jr_07e_7c1c:
    ld [hl+], a                                   ; $7c1c: $22
    inc e                                         ; $7c1d: $1c
    dec e                                         ; $7c1e: $1d
    inc hl                                        ; $7c1f: $23
    inc h                                         ; $7c20: $24
    ld [$2625], sp                                ; $7c21: $08 $25 $26
    ld [bc], a                                    ; $7c24: $02
    ld bc, $0101                                  ; $7c25: $01 $01 $01
    ld [bc], a                                    ; $7c28: $02
    ld bc, $0101                                  ; $7c29: $01 $01 $01
    ld [bc], a                                    ; $7c2c: $02
    ld bc, $0701                                  ; $7c2d: $01 $01 $07
    rlca                                          ; $7c30: $07
    rlca                                          ; $7c31: $07
    rlca                                          ; $7c32: $07
    rlca                                          ; $7c33: $07
    pop de                                        ; $7c34: $d1
    pop de                                        ; $7c35: $d1
    daa                                           ; $7c36: $27
    jr z, jr_07e_7c0a                             ; $7c37: $28 $d1

    pop de                                        ; $7c39: $d1
    jp nc, $d129                                  ; $7c3a: $d2 $29 $d1

    pop de                                        ; $7c3d: $d1
    ld a, [hl+]                                   ; $7c3e: $2a
    dec hl                                        ; $7c3f: $2b
    pop de                                        ; $7c40: $d1
    pop de                                        ; $7c41: $d1
    ld a, [hl+]                                   ; $7c42: $2a
    inc l                                         ; $7c43: $2c
    add b                                         ; $7c44: $80
    add b                                         ; $7c45: $80
    add b                                         ; $7c46: $80
    add b                                         ; $7c47: $80
    add b                                         ; $7c48: $80
    add b                                         ; $7c49: $80
    add b                                         ; $7c4a: $80
    inc bc                                        ; $7c4b: $03
    add b                                         ; $7c4c: $80
    add b                                         ; $7c4d: $80
    add b                                         ; $7c4e: $80
    inc bc                                        ; $7c4f: $03
    add b                                         ; $7c50: $80
    add b                                         ; $7c51: $80
    add b                                         ; $7c52: $80
    inc bc                                        ; $7c53: $03
    dec l                                         ; $7c54: $2d
    ld a, [bc]                                    ; $7c55: $0a
    ld l, $2f                                     ; $7c56: $2e $2f
    jr nc, jr_07e_7c8b                            ; $7c58: $30 $31

    ld [hl-], a                                   ; $7c5a: $32
    inc sp                                        ; $7c5b: $33
    inc [hl]                                      ; $7c5c: $34
    ld a, [de]                                    ; $7c5d: $1a
    dec [hl]                                      ; $7c5e: $35
    ld [hl], $37                                  ; $7c5f: $36 $37
    jr c, jr_07e_7c9c                             ; $7c61: $38 $39

    ld a, [hl-]                                   ; $7c63: $3a
    add b                                         ; $7c64: $80
    rlca                                          ; $7c65: $07
    dec b                                         ; $7c66: $05
    inc b                                         ; $7c67: $04
    inc bc                                        ; $7c68: $03
    rlca                                          ; $7c69: $07
    ld b, $04                                     ; $7c6a: $06 $04
    inc bc                                        ; $7c6c: $03
    rlca                                          ; $7c6d: $07
    dec b                                         ; $7c6e: $05
    dec b                                         ; $7c6f: $05
    inc bc                                        ; $7c70: $03
    rlca                                          ; $7c71: $07
    ld b, $06                                     ; $7c72: $06 $06
    dec sp                                        ; $7c74: $3b
    inc sp                                        ; $7c75: $33
    inc a                                         ; $7c76: $3c
    dec a                                         ; $7c77: $3d
    ld a, $3f                                     ; $7c78: $3e $3f
    ld b, b                                       ; $7c7a: $40
    ld a, [hl-]                                   ; $7c7b: $3a
    ld b, c                                       ; $7c7c: $41
    ld a, [de]                                    ; $7c7d: $1a
    ld b, d                                       ; $7c7e: $42
    ld b, e                                       ; $7c7f: $43
    ld b, h                                       ; $7c80: $44
    inc hl                                        ; $7c81: $23
    ld b, l                                       ; $7c82: $45
    ld b, [hl]                                    ; $7c83: $46
    dec b                                         ; $7c84: $05
    inc b                                         ; $7c85: $04
    ld b, $06                                     ; $7c86: $06 $06
    ld b, $06                                     ; $7c88: $06 $06
    dec b                                         ; $7c8a: $05

jr_07e_7c8b:
    ld b, $05                                     ; $7c8b: $06 $05
    dec b                                         ; $7c8d: $05
    ld b, $06                                     ; $7c8e: $06 $06
    dec b                                         ; $7c90: $05
    ld b, $06                                     ; $7c91: $06 $06
    ld b, $47                                     ; $7c93: $06 $47
    ld a, [bc]                                    ; $7c95: $0a
    ld c, b                                       ; $7c96: $48
    ld c, c                                       ; $7c97: $49
    ld c, d                                       ; $7c98: $4a
    ld c, e                                       ; $7c99: $4b
    ld c, h                                       ; $7c9a: $4c
    ld a, [de]                                    ; $7c9b: $1a

jr_07e_7c9c:
    ld c, l                                       ; $7c9c: $4d
    ld a, [bc]                                    ; $7c9d: $0a
    ld c, [hl]                                    ; $7c9e: $4e
    ld c, a                                       ; $7c9f: $4f
    ld d, b                                       ; $7ca0: $50
    cpl                                           ; $7ca1: $2f
    dec sp                                        ; $7ca2: $3b
    inc sp                                        ; $7ca3: $33
    ld b, $06                                     ; $7ca4: $06 $06
    dec b                                         ; $7ca6: $05
    dec b                                         ; $7ca7: $05
    ld b, $05                                     ; $7ca8: $06 $05
    inc b                                         ; $7caa: $04
    dec b                                         ; $7cab: $05
    inc b                                         ; $7cac: $04
    dec b                                         ; $7cad: $05
    dec b                                         ; $7cae: $05
    ld b, $05                                     ; $7caf: $06 $05
    ld b, $04                                     ; $7cb1: $06 $04
    ld b, $d1                                     ; $7cb3: $06 $d1
    pop de                                        ; $7cb5: $d1
    ld a, [hl+]                                   ; $7cb6: $2a
    ld d, c                                       ; $7cb7: $51
    pop de                                        ; $7cb8: $d1
    pop de                                        ; $7cb9: $d1
    ld a, [hl+]                                   ; $7cba: $2a
    ld d, d                                       ; $7cbb: $52
    pop de                                        ; $7cbc: $d1
    ld d, e                                       ; $7cbd: $53
    ld a, [hl+]                                   ; $7cbe: $2a
    ld d, h                                       ; $7cbf: $54
    pop de                                        ; $7cc0: $d1
    ld d, e                                       ; $7cc1: $53
    jp nc, $8033                                  ; $7cc2: $d2 $33 $80

    add b                                         ; $7cc5: $80
    add b                                         ; $7cc6: $80
    inc bc                                        ; $7cc7: $03
    add b                                         ; $7cc8: $80
    add b                                         ; $7cc9: $80
    add b                                         ; $7cca: $80
    inc bc                                        ; $7ccb: $03
    add b                                         ; $7ccc: $80
    add b                                         ; $7ccd: $80
    add b                                         ; $7cce: $80
    rlca                                          ; $7ccf: $07
    add b                                         ; $7cd0: $80
    add b                                         ; $7cd1: $80
    add b                                         ; $7cd2: $80
    rlca                                          ; $7cd3: $07
    ld d, l                                       ; $7cd4: $55
    ld b, [hl]                                    ; $7cd5: $46
    ld d, [hl]                                    ; $7cd6: $56
    ld [$5857], sp                                ; $7cd7: $08 $57 $58
    ld e, c                                       ; $7cda: $59
    ld a, [bc]                                    ; $7cdb: $0a
    ld e, d                                       ; $7cdc: $5a
    ld a, [hl-]                                   ; $7cdd: $3a
    ld e, e                                       ; $7cde: $5b
    ld e, h                                       ; $7cdf: $5c
    ld e, l                                       ; $7ce0: $5d
    ld [$2625], sp                                ; $7ce1: $08 $25 $26
    inc bc                                        ; $7ce4: $03
    rlca                                          ; $7ce5: $07
    ld b, $06                                     ; $7ce6: $06 $06
    inc bc                                        ; $7ce8: $03
    rlca                                          ; $7ce9: $07
    dec b                                         ; $7cea: $05
    dec b                                         ; $7ceb: $05
    rlca                                          ; $7cec: $07
    dec b                                         ; $7ced: $05
    ld b, $05                                     ; $7cee: $06 $05
    ld b, $06                                     ; $7cf0: $06 $06
    dec b                                         ; $7cf2: $05
    inc b                                         ; $7cf3: $04
    dec h                                         ; $7cf4: $25
    ld h, $5e                                     ; $7cf5: $26 $5e
    ld e, a                                       ; $7cf7: $5f
    ld c, b                                       ; $7cf8: $48
    ld c, c                                       ; $7cf9: $49
    ld h, b                                       ; $7cfa: $60
    ld a, [bc]                                    ; $7cfb: $0a
    ld h, c                                       ; $7cfc: $61
    ld a, [de]                                    ; $7cfd: $1a
    ld h, d                                       ; $7cfe: $62
    ld sp, $4f63                                  ; $7cff: $31 $63 $4f
    ld h, h                                       ; $7d02: $64
    ld a, [de]                                    ; $7d03: $1a
    inc b                                         ; $7d04: $04
    dec b                                         ; $7d05: $05
    ld b, $05                                     ; $7d06: $06 $05
    inc b                                         ; $7d08: $04
    inc b                                         ; $7d09: $04
    inc b                                         ; $7d0a: $04
    inc b                                         ; $7d0b: $04
    dec b                                         ; $7d0c: $05
    inc b                                         ; $7d0d: $04
    inc b                                         ; $7d0e: $04
    ld b, $05                                     ; $7d0f: $06 $05
    dec b                                         ; $7d11: $05
    ld b, $04                                     ; $7d12: $06 $04
    ld h, l                                       ; $7d14: $65
    inc sp                                        ; $7d15: $33
    ld a, $3f                                     ; $7d16: $3e $3f
    ld h, [hl]                                    ; $7d18: $66
    ld [hl], $41                                  ; $7d19: $36 $41
    ld a, [de]                                    ; $7d1b: $1a
    ld h, a                                       ; $7d1c: $67
    ld a, [hl-]                                   ; $7d1d: $3a
    ld b, h                                       ; $7d1e: $44
    inc hl                                        ; $7d1f: $23
    inc h                                         ; $7d20: $24
    ld [$2625], sp                                ; $7d21: $08 $25 $26
    inc b                                         ; $7d24: $04
    ld b, $05                                     ; $7d25: $06 $05
    ld b, $05                                     ; $7d27: $06 $05
    inc b                                         ; $7d29: $04
    inc b                                         ; $7d2a: $04
    inc b                                         ; $7d2b: $04
    inc b                                         ; $7d2c: $04
    inc b                                         ; $7d2d: $04
    ld b, $06                                     ; $7d2e: $06 $06
    inc b                                         ; $7d30: $04
    dec b                                         ; $7d31: $05
    ld b, $06                                     ; $7d32: $06 $06
    ld l, b                                       ; $7d34: $68
    ld l, c                                       ; $7d35: $69
    ld l, d                                       ; $7d36: $6a
    ld l, e                                       ; $7d37: $6b
    ld l, h                                       ; $7d38: $6c
    ld l, l                                       ; $7d39: $6d
    ld l, [hl]                                    ; $7d3a: $6e
    ld l, a                                       ; $7d3b: $6f
    ld [hl], b                                    ; $7d3c: $70
    ld [hl], c                                    ; $7d3d: $71
    ld [hl], d                                    ; $7d3e: $72
    ld a, [$7473]                                 ; $7d3f: $fa $73 $74
    ld [hl], l                                    ; $7d42: $75
    cp $03                                        ; $7d43: $fe $03
    inc bc                                        ; $7d45: $03
    inc bc                                        ; $7d46: $03
    inc bc                                        ; $7d47: $03
    inc bc                                        ; $7d48: $03
    inc bc                                        ; $7d49: $03
    inc bc                                        ; $7d4a: $03
    inc bc                                        ; $7d4b: $03
    inc bc                                        ; $7d4c: $03
    inc bc                                        ; $7d4d: $03
    inc bc                                        ; $7d4e: $03
    inc bc                                        ; $7d4f: $03
    inc bc                                        ; $7d50: $03
    inc bc                                        ; $7d51: $03
    inc bc                                        ; $7d52: $03
    inc bc                                        ; $7d53: $03
    halt                                          ; $7d54: $76
    ldh a, [$d2]                                  ; $7d55: $f0 $d2
    pop de                                        ; $7d57: $d1
    ld [hl], a                                    ; $7d58: $77
    db $f4                                        ; $7d59: $f4
    jp nc, Jump_07e_78d1                          ; $7d5a: $d2 $d1 $78

    ld a, c                                       ; $7d5d: $79
    jp nc, Jump_07e_7ad1                          ; $7d5e: $d2 $d1 $7a

    ld a, e                                       ; $7d61: $7b
    jp nc, Jump_000_03d1                          ; $7d62: $d2 $d1 $03

    inc bc                                        ; $7d65: $03
    add b                                         ; $7d66: $80
    add b                                         ; $7d67: $80
    inc bc                                        ; $7d68: $03
    inc bc                                        ; $7d69: $03
    add b                                         ; $7d6a: $80
    add b                                         ; $7d6b: $80
    inc bc                                        ; $7d6c: $03
    inc bc                                        ; $7d6d: $03
    add b                                         ; $7d6e: $80
    add b                                         ; $7d6f: $80
    inc bc                                        ; $7d70: $03
    inc bc                                        ; $7d71: $03
    add b                                         ; $7d72: $80
    add b                                         ; $7d73: $80
    ld a, h                                       ; $7d74: $7c
    ld a, l                                       ; $7d75: $7d
    ld a, [hl]                                    ; $7d76: $7e
    ld d, d                                       ; $7d77: $52
    dec e                                         ; $7d78: $1d
    ld b, e                                       ; $7d79: $43
    ld a, a                                       ; $7d7a: $7f
    ld b, [hl]                                    ; $7d7b: $46

Jump_07e_7d7c:
    ld b, l                                       ; $7d7c: $45
    ld b, [hl]                                    ; $7d7d: $46
    add b                                         ; $7d7e: $80
    add c                                         ; $7d7f: $81
    add d                                         ; $7d80: $82
    ld e, b                                       ; $7d81: $58
    add e                                         ; $7d82: $83
    ld h, $01                                     ; $7d83: $26 $01
    inc bc                                        ; $7d85: $03
    inc bc                                        ; $7d86: $03
    inc bc                                        ; $7d87: $03
    ld bc, $0707                                  ; $7d88: $01 $07 $07
    rlca                                          ; $7d8b: $07
    rlca                                          ; $7d8c: $07
    rlca                                          ; $7d8d: $07
    ld c, $0e                                     ; $7d8e: $0e $0e
    ld c, $05                                     ; $7d90: $0e $05
    ld c, $06                                     ; $7d92: $0e $06
    add h                                         ; $7d94: $84
    add l                                         ; $7d95: $85
    jp nc, $86d1                                  ; $7d96: $d2 $d1 $86

    add a                                         ; $7d99: $87
    jp nc, $88d1                                  ; $7d9a: $d2 $d1 $88

    adc c                                         ; $7d9d: $89
    jp nc, $8ad1                                  ; $7d9e: $d2 $d1 $8a

    adc e                                         ; $7da1: $8b
    jp nc, $0bd1                                  ; $7da2: $d2 $d1 $0b

    dec bc                                        ; $7da5: $0b
    add b                                         ; $7da6: $80
    add b                                         ; $7da7: $80
    rrca                                          ; $7da8: $0f
    rrca                                          ; $7da9: $0f
    add b                                         ; $7daa: $80
    add b                                         ; $7dab: $80
    add hl, bc                                    ; $7dac: $09
    add hl, bc                                    ; $7dad: $09
    add b                                         ; $7dae: $80
    add b                                         ; $7daf: $80
    add hl, bc                                    ; $7db0: $09
    add hl, bc                                    ; $7db1: $09
    add b                                         ; $7db2: $80
    add b                                         ; $7db3: $80
    adc h                                         ; $7db4: $8c
    ld a, [hl-]                                   ; $7db5: $3a
    adc l                                         ; $7db6: $8d
    adc [hl]                                      ; $7db7: $8e
    inc h                                         ; $7db8: $24
    ld [$2625], sp                                ; $7db9: $08 $25 $26
    adc a                                         ; $7dbc: $8f
    ld a, [bc]                                    ; $7dbd: $0a
    ld c, b                                       ; $7dbe: $48
    sub b                                         ; $7dbf: $90
    sub c                                         ; $7dc0: $91
    sub d                                         ; $7dc1: $92
    sub e                                         ; $7dc2: $93
    sub h                                         ; $7dc3: $94
    ld c, $06                                     ; $7dc4: $0e $06
    ld c, $0e                                     ; $7dc6: $0e $0e
    ld b, $06                                     ; $7dc8: $06 $06
    ld b, $06                                     ; $7dca: $06 $06
    ld c, $06                                     ; $7dcc: $0e $06
    ld b, $09                                     ; $7dce: $06 $09
    dec c                                         ; $7dd0: $0d
    dec c                                         ; $7dd1: $0d
    ld c, $09                                     ; $7dd2: $0e $09
    sub l                                         ; $7dd4: $95
    sub [hl]                                      ; $7dd5: $96
    jp nc, $97d1                                  ; $7dd6: $d2 $d1 $97

    ld [hl], $d2                                  ; $7dd9: $36 $d2
    pop de                                        ; $7ddb: $d1
    sbc b                                         ; $7ddc: $98
    ld a, [hl-]                                   ; $7ddd: $3a
    jp nc, $90d1                                  ; $7dde: $d2 $d1 $90

    sbc b                                         ; $7de1: $98
    jp nc, Jump_000_09d1                          ; $7de2: $d2 $d1 $09

    add hl, bc                                    ; $7de5: $09
    add b                                         ; $7de6: $80
    add b                                         ; $7de7: $80
    ld c, $07                                     ; $7de8: $0e $07
    add b                                         ; $7dea: $80
    add b                                         ; $7deb: $80
    add hl, bc                                    ; $7dec: $09
    rlca                                          ; $7ded: $07
    add b                                         ; $7dee: $80
    add b                                         ; $7def: $80
    add hl, bc                                    ; $7df0: $09
    add hl, bc                                    ; $7df1: $09
    add b                                         ; $7df2: $80
    add b                                         ; $7df3: $80
    ld b, b                                       ; $7df4: $40
    ld a, [hl-]                                   ; $7df5: $3a
    sbc c                                         ; $7df6: $99
    sbc d                                         ; $7df7: $9a
    ld b, d                                       ; $7df8: $42
    ld b, e                                       ; $7df9: $43
    sbc e                                         ; $7dfa: $9b
    sbc h                                         ; $7dfb: $9c
    ld b, l                                       ; $7dfc: $45
    ld b, [hl]                                    ; $7dfd: $46
    sbc l                                         ; $7dfe: $9d
    sbc [hl]                                      ; $7dff: $9e
    sub b                                         ; $7e00: $90
    sbc b                                         ; $7e01: $98
    sbc a                                         ; $7e02: $9f
    and b                                         ; $7e03: $a0
    ld b, $06                                     ; $7e04: $06 $06
    ld a, [bc]                                    ; $7e06: $0a
    ld a, [bc]                                    ; $7e07: $0a
    ld b, $06                                     ; $7e08: $06 $06

jr_07e_7e0a:
    ld a, [bc]                                    ; $7e0a: $0a
    ld a, [bc]                                    ; $7e0b: $0a
    ld b, $06                                     ; $7e0c: $06 $06
    add hl, bc                                    ; $7e0e: $09
    add hl, bc                                    ; $7e0f: $09
    add hl, bc                                    ; $7e10: $09
    add hl, bc                                    ; $7e11: $09
    add hl, bc                                    ; $7e12: $09
    add hl, bc                                    ; $7e13: $09
    sub h                                         ; $7e14: $94
    and c                                         ; $7e15: $a1
    jp nc, $9dd1                                  ; $7e16: $d2 $d1 $9d

    sbc [hl]                                      ; $7e19: $9e
    jp nc, $9fd1                                  ; $7e1a: $d2 $d1 $9f

    and b                                         ; $7e1d: $a0
    jp nc, $94d1                                  ; $7e1e: $d2 $d1 $94

    and c                                         ; $7e21: $a1
    jp nc, Jump_000_09d1                          ; $7e22: $d2 $d1 $09

    add hl, bc                                    ; $7e25: $09
    add b                                         ; $7e26: $80
    add b                                         ; $7e27: $80
    add hl, bc                                    ; $7e28: $09
    add hl, bc                                    ; $7e29: $09
    add b                                         ; $7e2a: $80
    add b                                         ; $7e2b: $80
    add hl, bc                                    ; $7e2c: $09
    add hl, bc                                    ; $7e2d: $09
    add b                                         ; $7e2e: $80
    add b                                         ; $7e2f: $80
    add hl, bc                                    ; $7e30: $09
    add hl, bc                                    ; $7e31: $09
    add b                                         ; $7e32: $80

jr_07e_7e33:
    add b                                         ; $7e33: $80
    pop de                                        ; $7e34: $d1
    ld d, e                                       ; $7e35: $53
    and d                                         ; $7e36: $a2
    jr z, jr_07e_7e0a                             ; $7e37: $28 $d1

    pop de                                        ; $7e39: $d1
    pop de                                        ; $7e3a: $d1
    pop de                                        ; $7e3b: $d1
    pop de                                        ; $7e3c: $d1
    pop de                                        ; $7e3d: $d1
    pop de                                        ; $7e3e: $d1
    pop de                                        ; $7e3f: $d1
    pop de                                        ; $7e40: $d1
    pop de                                        ; $7e41: $d1
    pop de                                        ; $7e42: $d1
    pop de                                        ; $7e43: $d1
    add b                                         ; $7e44: $80
    add b                                         ; $7e45: $80
    adc b                                         ; $7e46: $88
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
    and e                                         ; $7e54: $a3
    ld a, [bc]                                    ; $7e55: $0a
    ld c, b                                       ; $7e56: $48
    ld c, c                                       ; $7e57: $49
    jp nc, $9392                                  ; $7e58: $d2 $92 $93

    ld a, [de]                                    ; $7e5b: $1a
    jp nc, $2120                                  ; $7e5c: $d2 $20 $21

    jr c, jr_07e_7e33                             ; $7e5f: $38 $d2

    inc e                                         ; $7e61: $1c
    dec e                                         ; $7e62: $1d
    and h                                         ; $7e63: $a4
    adc b                                         ; $7e64: $88
    ld b, $05                                     ; $7e65: $06 $05
    dec b                                         ; $7e67: $05
    add b                                         ; $7e68: $80
    dec c                                         ; $7e69: $0d
    ld c, $06                                     ; $7e6a: $0e $06
    add b                                         ; $7e6c: $80
    ld bc, $0601                                  ; $7e6d: $01 $01 $06
    add b                                         ; $7e70: $80
    ld bc, $0901                                  ; $7e71: $01 $01 $09
    and l                                         ; $7e74: $a5
    inc sp                                        ; $7e75: $33
    and [hl]                                      ; $7e76: $a6
    jr c, jr_07e_7eae                             ; $7e77: $38 $35

    ld [hl], $a7                                  ; $7e79: $36 $a7
    ld b, [hl]                                    ; $7e7b: $46
    add hl, sp                                    ; $7e7c: $39
    ld a, [hl-]                                   ; $7e7d: $3a
    xor b                                         ; $7e7e: $a8
    ld e, b                                       ; $7e7f: $58
    xor c                                         ; $7e80: $a9
    xor d                                         ; $7e81: $aa
    xor e                                         ; $7e82: $ab
    ld a, [hl-]                                   ; $7e83: $3a
    ld c, $05                                     ; $7e84: $0e $05
    ld c, $05                                     ; $7e86: $0e $05
    ld b, $05                                     ; $7e88: $06 $05
    inc c                                         ; $7e8a: $0c
    ld b, $06                                     ; $7e8b: $06 $06
    inc b                                         ; $7e8d: $04

jr_07e_7e8e:
    ld c, $06                                     ; $7e8e: $0e $06
    add hl, bc                                    ; $7e90: $09
    ld c, $0e                                     ; $7e91: $0e $0e
    ld b, $ac                                     ; $7e93: $06 $ac
    ld a, [bc]                                    ; $7e95: $0a
    ld c, b                                       ; $7e96: $48
    ld c, c                                       ; $7e97: $49
    xor l                                         ; $7e98: $ad
    ld e, h                                       ; $7e99: $5c
    ld h, c                                       ; $7e9a: $61
    ld a, [de]                                    ; $7e9b: $1a
    sbc c                                         ; $7e9c: $99
    sbc d                                         ; $7e9d: $9a
    xor [hl]                                      ; $7e9e: $ae
    xor a                                         ; $7e9f: $af
    sbc e                                         ; $7ea0: $9b
    sbc h                                         ; $7ea1: $9c
    or b                                          ; $7ea2: $b0
    or c                                          ; $7ea3: $b1
    ld c, $05                                     ; $7ea4: $0e $05
    ld b, $06                                     ; $7ea6: $06 $06
    ld c, $06                                     ; $7ea8: $0e $06
    ld b, $06                                     ; $7eaa: $06 $06
    ld a, [bc]                                    ; $7eac: $0a
    ld a, [bc]                                    ; $7ead: $0a

jr_07e_7eae:
    ld a, [bc]                                    ; $7eae: $0a
    ld a, [bc]                                    ; $7eaf: $0a
    ld a, [bc]                                    ; $7eb0: $0a
    ld a, [bc]                                    ; $7eb1: $0a
    ld a, [bc]                                    ; $7eb2: $0a
    ld a, [bc]                                    ; $7eb3: $0a
    jp nc, Jump_000_1e1c                          ; $7eb4: $d2 $1c $1e

    ld a, h                                       ; $7eb7: $7c
    and d                                         ; $7eb8: $a2
    jr z, jr_07e_7ee3                             ; $7eb9: $28 $28

    jr z, jr_07e_7e8e                             ; $7ebb: $28 $d1

    pop de                                        ; $7ebd: $d1
    pop de                                        ; $7ebe: $d1
    pop de                                        ; $7ebf: $d1
    pop de                                        ; $7ec0: $d1
    pop de                                        ; $7ec1: $d1
    pop de                                        ; $7ec2: $d1
    pop de                                        ; $7ec3: $d1
    add b                                         ; $7ec4: $80
    ld bc, $0101                                  ; $7ec5: $01 $01 $01
    adc b                                         ; $7ec8: $88
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
    dec e                                         ; $7ed4: $1d
    ld h, $b2                                     ; $7ed5: $26 $b2
    ld [$2828], sp                                ; $7ed7: $08 $28 $28
    jr z, jr_07e_7f04                             ; $7eda: $28 $28

    pop de                                        ; $7edc: $d1
    pop de                                        ; $7edd: $d1
    pop de                                        ; $7ede: $d1
    pop de                                        ; $7edf: $d1
    pop de                                        ; $7ee0: $d1
    pop de                                        ; $7ee1: $d1
    pop de                                        ; $7ee2: $d1

jr_07e_7ee3:
    pop de                                        ; $7ee3: $d1
    ld bc, $0e06                                  ; $7ee4: $01 $06 $0e
    inc b                                         ; $7ee7: $04
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
    sbc l                                         ; $7ef4: $9d
    sbc [hl]                                      ; $7ef5: $9e
    sbc l                                         ; $7ef6: $9d
    sbc [hl]                                      ; $7ef7: $9e
    jr z, jr_07e_7f22                             ; $7ef8: $28 $28

    jr z, jr_07e_7f24                             ; $7efa: $28 $28

    pop de                                        ; $7efc: $d1
    pop de                                        ; $7efd: $d1
    pop de                                        ; $7efe: $d1
    pop de                                        ; $7eff: $d1
    pop de                                        ; $7f00: $d1
    pop de                                        ; $7f01: $d1
    pop de                                        ; $7f02: $d1
    pop de                                        ; $7f03: $d1

jr_07e_7f04:
    add hl, bc                                    ; $7f04: $09
    add hl, bc                                    ; $7f05: $09
    add hl, bc                                    ; $7f06: $09
    add hl, bc                                    ; $7f07: $09
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
    sub h                                         ; $7f14: $94
    and c                                         ; $7f15: $a1
    or e                                          ; $7f16: $b3
    or h                                          ; $7f17: $b4
    sbc l                                         ; $7f18: $9d
    sbc [hl]                                      ; $7f19: $9e
    xor [hl]                                      ; $7f1a: $ae
    xor a                                         ; $7f1b: $af
    sbc c                                         ; $7f1c: $99
    sbc d                                         ; $7f1d: $9a
    or b                                          ; $7f1e: $b0
    or c                                          ; $7f1f: $b1
    sbc e                                         ; $7f20: $9b
    sbc h                                         ; $7f21: $9c

jr_07e_7f22:
    or l                                          ; $7f22: $b5
    sbc [hl]                                      ; $7f23: $9e

jr_07e_7f24:
    add hl, bc                                    ; $7f24: $09
    add hl, bc                                    ; $7f25: $09
    rrca                                          ; $7f26: $0f
    rrca                                          ; $7f27: $0f
    add hl, bc                                    ; $7f28: $09
    add hl, bc                                    ; $7f29: $09
    ld a, [bc]                                    ; $7f2a: $0a
    ld a, [bc]                                    ; $7f2b: $0a
    ld a, [bc]                                    ; $7f2c: $0a
    ld a, [bc]                                    ; $7f2d: $0a
    ld a, [bc]                                    ; $7f2e: $0a
    ld a, [bc]                                    ; $7f2f: $0a
    ld a, [bc]                                    ; $7f30: $0a
    ld a, [bc]                                    ; $7f31: $0a
    add hl, bc                                    ; $7f32: $09
    add hl, bc                                    ; $7f33: $09
    or [hl]                                       ; $7f34: $b6
    or a                                          ; $7f35: $b7
    jp nc, $b8d1                                  ; $7f36: $d2 $d1 $b8

    cp c                                          ; $7f39: $b9
    jp nc, $9dd1                                  ; $7f3a: $d2 $d1 $9d

    sbc [hl]                                      ; $7f3d: $9e
    jp nc, $9fd1                                  ; $7f3e: $d2 $d1 $9f

    and b                                         ; $7f41: $a0
    jp nc, Jump_000_0ad1                          ; $7f42: $d2 $d1 $0a

    ld a, [bc]                                    ; $7f45: $0a
    add b                                         ; $7f46: $80
    add b                                         ; $7f47: $80
    ld a, [bc]                                    ; $7f48: $0a
    ld a, [bc]                                    ; $7f49: $0a
    add b                                         ; $7f4a: $80
    add b                                         ; $7f4b: $80
    add hl, bc                                    ; $7f4c: $09
    add hl, bc                                    ; $7f4d: $09
    add b                                         ; $7f4e: $80
    add b                                         ; $7f4f: $80
    add hl, bc                                    ; $7f50: $09
    add hl, bc                                    ; $7f51: $09
    add b                                         ; $7f52: $80
    add b                                         ; $7f53: $80
    sbc l                                         ; $7f54: $9d
    sbc [hl]                                      ; $7f55: $9e
    sbc a                                         ; $7f56: $9f
    sub b                                         ; $7f57: $90
    jr z, jr_07e_7f82                             ; $7f58: $28 $28

    jr z, jr_07e_7f84                             ; $7f5a: $28 $28

    pop de                                        ; $7f5c: $d1
    pop de                                        ; $7f5d: $d1
    pop de                                        ; $7f5e: $d1
    pop de                                        ; $7f5f: $d1
    pop de                                        ; $7f60: $d1
    pop de                                        ; $7f61: $d1
    pop de                                        ; $7f62: $d1
    pop de                                        ; $7f63: $d1
    add hl, bc                                    ; $7f64: $09
    add hl, bc                                    ; $7f65: $09
    add hl, bc                                    ; $7f66: $09
    add hl, bc                                    ; $7f67: $09
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
    sbc b                                         ; $7f74: $98
    ld h, $d2                                     ; $7f75: $26 $d2
    pop de                                        ; $7f77: $d1
    jr z, jr_07e_7fa2                             ; $7f78: $28 $28

    dec l                                         ; $7f7a: $2d
    pop de                                        ; $7f7b: $d1
    pop de                                        ; $7f7c: $d1
    pop de                                        ; $7f7d: $d1

Call_07e_7f7e:
Jump_07e_7f7e:
    pop de                                        ; $7f7e: $d1
    pop de                                        ; $7f7f: $d1
    pop de                                        ; $7f80: $d1
    pop de                                        ; $7f81: $d1

jr_07e_7f82:
    pop de                                        ; $7f82: $d1
    pop de                                        ; $7f83: $d1

jr_07e_7f84:
    add hl, bc                                    ; $7f84: $09
    rlca                                          ; $7f85: $07
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
    ld e, d                                       ; $7f94: $5a
    nop                                           ; $7f95: $00
    nop                                           ; $7f96: $00
    nop                                           ; $7f97: $00
    nop                                           ; $7f98: $00
    ld bc, $0200                                  ; $7f99: $01 $00 $02
    nop                                           ; $7f9c: $00
    inc bc                                        ; $7f9d: $03
    nop                                           ; $7f9e: $00
    nop                                           ; $7f9f: $00
    stop                                          ; $7fa0: $10 $00

jr_07e_7fa2:
    ld de, $1200                                  ; $7fa2: $11 $00 $12
    nop                                           ; $7fa5: $00
    inc de                                        ; $7fa6: $13
    nop                                           ; $7fa7: $00
    nop                                           ; $7fa8: $00
    jr nz, jr_07e_7fab                            ; $7fa9: $20 $00

jr_07e_7fab:
    inc b                                         ; $7fab: $04
    nop                                           ; $7fac: $00
    dec b                                         ; $7fad: $05
    nop                                           ; $7fae: $00
    ld b, $00                                     ; $7faf: $06 $00
    nop                                           ; $7fb1: $00
    rlca                                          ; $7fb2: $07
    nop                                           ; $7fb3: $00
    inc d                                         ; $7fb4: $14
    nop                                           ; $7fb5: $00
    dec d                                         ; $7fb6: $15
    nop                                           ; $7fb7: $00
    ld d, $00                                     ; $7fb8: $16 $00
    nop                                           ; $7fba: $00
    rla                                           ; $7fbb: $17
    nop                                           ; $7fbc: $00
    ld hl, $0800                                  ; $7fbd: $21 $00 $08
    nop                                           ; $7fc0: $00
    add hl, bc                                    ; $7fc1: $09
    nop                                           ; $7fc2: $00
    nop                                           ; $7fc3: $00
    ld a, [bc]                                    ; $7fc4: $0a
    nop                                           ; $7fc5: $00
    dec bc                                        ; $7fc6: $0b
    nop                                           ; $7fc7: $00
    jr jr_07e_7fca                                ; $7fc8: $18 $00

jr_07e_7fca:
    add hl, de                                    ; $7fca: $19
    nop                                           ; $7fcb: $00
    nop                                           ; $7fcc: $00
    ld a, [de]                                    ; $7fcd: $1a
    nop                                           ; $7fce: $00
    dec de                                        ; $7fcf: $1b
    nop                                           ; $7fd0: $00
    ld [hl+], a                                   ; $7fd1: $22
    nop                                           ; $7fd2: $00
    inc c                                         ; $7fd3: $0c
    nop                                           ; $7fd4: $00
    nop                                           ; $7fd5: $00
    dec c                                         ; $7fd6: $0d
    nop                                           ; $7fd7: $00
    ld c, $00                                     ; $7fd8: $0e $00
    rrca                                          ; $7fda: $0f
    nop                                           ; $7fdb: $00
    inc e                                         ; $7fdc: $1c
    nop                                           ; $7fdd: $00
    nop                                           ; $7fde: $00
    dec e                                         ; $7fdf: $1d
    nop                                           ; $7fe0: $00
    ld e, $00                                     ; $7fe1: $1e $00
    rra                                           ; $7fe3: $1f
    nop                                           ; $7fe4: $00
    inc hl                                        ; $7fe5: $23
    nop                                           ; $7fe6: $00
    nop                                           ; $7fe7: $00
    nop                                           ; $7fe8: $00
    nop                                           ; $7fe9: $00
    inc h                                         ; $7fea: $24
    nop                                           ; $7feb: $00
    dec h                                         ; $7fec: $25
    nop                                           ; $7fed: $00
    ld h, $00                                     ; $7fee: $26 $00
    nop                                           ; $7ff0: $00
    daa                                           ; $7ff1: $27
    nop                                           ; $7ff2: $00
    jr z, jr_07e_7ff5                             ; $7ff3: $28 $00

jr_07e_7ff5:
    add hl, hl                                    ; $7ff5: $29
    nop                                           ; $7ff6: $00
    ld a, [hl+]                                   ; $7ff7: $2a
    nop                                           ; $7ff8: $00
    nop                                           ; $7ff9: $00
    dec hl                                        ; $7ffa: $2b
    nop                                           ; $7ffb: $00
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
