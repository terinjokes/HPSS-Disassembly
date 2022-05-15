; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $07d", ROMX[$4000], BANK[$7d]

    ld a, l                                       ; $4000: $7d
    ld sp, $3332                                  ; $4001: $31 $32 $33
    inc [hl]                                      ; $4004: $34
    dec [hl]                                      ; $4005: $35
    ld [hl], $37                                  ; $4006: $36 $37
    jr c, jr_07d_4043                             ; $4008: $38 $39

    jr nc, @+$33                                  ; $400a: $30 $31

    ld [hl-], a                                   ; $400c: $32
    inc sp                                        ; $400d: $33
    inc [hl]                                      ; $400e: $34
    dec [hl]                                      ; $400f: $35
    ld d, $00                                     ; $4010: $16 $00
    ld a, [bc]                                    ; $4012: $0a
    nop                                           ; $4013: $00
    ret nz                                        ; $4014: $c0

    ld [de], a                                    ; $4015: $12
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
    ld bc, $0101                                  ; $4026: $01 $01 $01
    ld bc, $0101                                  ; $4029: $01 $01 $01
    ld bc, $0101                                  ; $402c: $01 $01 $01
    ld bc, $0101                                  ; $402f: $01 $01 $01
    ld bc, $0101                                  ; $4032: $01 $01 $01
    ld bc, $d2d1                                  ; $4035: $01 $d1 $d2
    pop de                                        ; $4038: $d1
    db $d3                                        ; $4039: $d3
    pop de                                        ; $403a: $d1
    call nc, $d6d5                                ; $403b: $d4 $d5 $d6
    pop de                                        ; $403e: $d1
    rst $10                                       ; $403f: $d7
    ret c                                         ; $4040: $d8

    reti                                          ; $4041: $d9


    pop de                                        ; $4042: $d1

jr_07d_4043:
    jp c, $dbd1                                   ; $4043: $da $d1 $db

    ld bc, $0101                                  ; $4046: $01 $01 $01
    ld bc, $0101                                  ; $4049: $01 $01 $01
    ld bc, $0101                                  ; $404c: $01 $01 $01
    ld bc, $0101                                  ; $404f: $01 $01 $01
    ld bc, $0101                                  ; $4052: $01 $01 $01
    ld bc, $d1d1                                  ; $4055: $01 $d1 $d1
    pop de                                        ; $4058: $d1
    pop de                                        ; $4059: $d1
    pop de                                        ; $405a: $d1
    call c, $ddd1                                 ; $405b: $dc $d1 $dd
    pop de                                        ; $405e: $d1
    sbc $d1                                       ; $405f: $de $d1
    rst $18                                       ; $4061: $df
    ldh [$da], a                                  ; $4062: $e0 $da
    pop de                                        ; $4064: $d1
    db $d3                                        ; $4065: $d3
    ld bc, $0101                                  ; $4066: $01 $01 $01
    ld bc, $0101                                  ; $4069: $01 $01 $01
    ld bc, $0101                                  ; $406c: $01 $01 $01
    ld bc, $0101                                  ; $406f: $01 $01 $01
    ld bc, HeaderLogo                             ; $4072: $01 $04 $01
    ld bc, $e1d1                                  ; $4075: $01 $d1 $e1
    push de                                       ; $4078: $d5
    pop de                                        ; $4079: $d1
    ld [c], a                                     ; $407a: $e2
    db $e3                                        ; $407b: $e3
    db $e4                                        ; $407c: $e4
    ld [c], a                                     ; $407d: $e2
    push hl                                       ; $407e: $e5
    and $e7                                       ; $407f: $e6 $e7
    add sp, -$17                                  ; $4081: $e8 $e9
    ld [$eceb], a                                 ; $4083: $ea $eb $ec
    ld bc, $0101                                  ; $4086: $01 $01 $01
    ld bc, $0101                                  ; $4089: $01 $01 $01
    ld bc, $0101                                  ; $408c: $01 $01 $01
    ld bc, $0101                                  ; $408f: $01 $01 $01
    ld bc, $0101                                  ; $4092: $01 $01 $01
    ld bc, $d1d1                                  ; $4095: $01 $d1 $d1
    pop de                                        ; $4098: $d1
    pop de                                        ; $4099: $d1
    pop de                                        ; $409a: $d1
    db $ed                                        ; $409b: $ed
    pop de                                        ; $409c: $d1
    call c, $efee                                 ; $409d: $dc $ee $ef
    pop de                                        ; $40a0: $d1
    sbc $f0                                       ; $40a1: $de $f0
    pop af                                        ; $40a3: $f1
    ld a, [c]                                     ; $40a4: $f2
    di                                            ; $40a5: $f3
    ld bc, $0101                                  ; $40a6: $01 $01 $01
    ld bc, $0101                                  ; $40a9: $01 $01 $01
    ld bc, $0101                                  ; $40ac: $01 $01 $01
    ld bc, $0101                                  ; $40af: $01 $01 $01
    ld bc, HeaderLogo                             ; $40b2: $01 $04 $01
    ld bc, $d2d1                                  ; $40b5: $01 $d1 $d2
    pop de                                        ; $40b8: $d1
    db $f4                                        ; $40b9: $f4
    pop de                                        ; $40ba: $d1
    call nc, $f5d5                                ; $40bb: $d4 $d5 $f5
    pop de                                        ; $40be: $d1
    rst $10                                       ; $40bf: $d7
    ret c                                         ; $40c0: $d8

    or $e0                                        ; $40c1: $f6 $e0
    jp c, $f7d1                                   ; $40c3: $da $d1 $f7

    ld bc, $0101                                  ; $40c6: $01 $01 $01
    ld bc, $0101                                  ; $40c9: $01 $01 $01
    ld bc, $0101                                  ; $40cc: $01 $01 $01
    ld bc, $0101                                  ; $40cf: $01 $01 $01
    ld bc, $0101                                  ; $40d2: $01 $01 $01
    ld bc, $d2f8                                  ; $40d5: $01 $f8 $d2
    pop de                                        ; $40d8: $d1
    sub $f9                                       ; $40d9: $d6 $f9
    call nc, $d9d5                                ; $40db: $d4 $d5 $d9
    ld a, [$d8d7]                                 ; $40de: $fa $d7 $d8
    db $db                                        ; $40e1: $db
    ei                                            ; $40e2: $fb
    db $fc                                        ; $40e3: $fc
    pop de                                        ; $40e4: $d1
    db $f4                                        ; $40e5: $f4
    ld bc, $0404                                  ; $40e6: $01 $04 $04
    ld bc, $0401                                  ; $40e9: $01 $01 $04
    inc b                                         ; $40ec: $04
    ld bc, $0401                                  ; $40ed: $01 $01 $04
    inc b                                         ; $40f0: $04
    ld bc, $0401                                  ; $40f1: $01 $01 $04
    inc b                                         ; $40f4: $04
    ld bc, $fefd                                  ; $40f5: $01 $fd $fe
    rst $38                                       ; $40f8: $ff
    nop                                           ; $40f9: $00
    ld bc, $0302                                  ; $40fa: $01 $02 $03
    inc b                                         ; $40fd: $04
    dec b                                         ; $40fe: $05
    ld b, $07                                     ; $40ff: $06 $07
    ld [$0a09], sp                                ; $4101: $08 $09 $0a
    dec bc                                        ; $4104: $0b
    inc c                                         ; $4105: $0c
    ld bc, $0101                                  ; $4106: $01 $01 $01
    ld bc, $0101                                  ; $4109: $01 $01 $01
    ld bc, $0101                                  ; $410c: $01 $01 $01
    ld bc, $0101                                  ; $410f: $01 $01 $01
    ld bc, $0101                                  ; $4112: $01 $01 $01
    ld bc, $0e0d                                  ; $4115: $01 $0d $0e
    rrca                                          ; $4118: $0f
    db $10                                        ; $4119: $10
    ld de, $1312                                  ; $411a: $11 $12 $13
    inc d                                         ; $411d: $14
    dec d                                         ; $411e: $15
    ld d, $17                                     ; $411f: $16 $17
    jr @+$1b                                      ; $4121: $18 $19

    ld a, [de]                                    ; $4123: $1a
    dec de                                        ; $4124: $1b
    inc e                                         ; $4125: $1c
    ld bc, HeaderLogo                             ; $4126: $01 $04 $01
    ld bc, $0401                                  ; $4129: $01 $01 $04
    ld bc, $0101                                  ; $412c: $01 $01 $01
    inc b                                         ; $412f: $04
    ld bc, $0101                                  ; $4130: $01 $01 $01
    inc b                                         ; $4133: $04
    ld bc, $f801                                  ; $4134: $01 $01 $f8
    jp nc, $1dd1                                  ; $4137: $d2 $d1 $1d

    ld sp, hl                                     ; $413a: $f9
    call nc, Call_000_1ed5                        ; $413b: $d4 $d5 $1e
    ld a, [$d8d7]                                 ; $413e: $fa $d7 $d8
    rra                                           ; $4141: $1f
    ei                                            ; $4142: $fb
    db $fc                                        ; $4143: $fc
    pop de                                        ; $4144: $d1
    jr nz, @+$03                                  ; $4145: $20 $01

    ld bc, $0201                                  ; $4147: $01 $01 $02
    ld bc, $0101                                  ; $414a: $01 $01 $01
    ld [bc], a                                    ; $414d: $02
    ld bc, $0101                                  ; $414e: $01 $01 $01
    ld [bc], a                                    ; $4151: $02
    ld bc, $0101                                  ; $4152: $01 $01 $01
    ld bc, $2221                                  ; $4155: $01 $21 $22
    pop de                                        ; $4158: $d1
    inc hl                                        ; $4159: $23
    inc h                                         ; $415a: $24
    dec h                                         ; $415b: $25
    ld h, $27                                     ; $415c: $26 $27
    jr z, jr_07d_4189                             ; $415e: $28 $29

    ld a, [hl+]                                   ; $4160: $2a
    dec hl                                        ; $4161: $2b
    inc l                                         ; $4162: $2c
    dec l                                         ; $4163: $2d
    ld l, $2f                                     ; $4164: $2e $2f
    ld bc, $0404                                  ; $4166: $01 $04 $04
    ld bc, $0401                                  ; $4169: $01 $01 $04
    inc b                                         ; $416c: $04
    ld bc, $0401                                  ; $416d: $01 $01 $04
    inc b                                         ; $4170: $04
    ld bc, $0101                                  ; $4171: $01 $01 $01
    ld [bc], a                                    ; $4174: $02
    ld [bc], a                                    ; $4175: $02
    jr nc, jr_07d_41a9                            ; $4176: $30 $31

    ld [hl-], a                                   ; $4178: $32
    inc sp                                        ; $4179: $33
    inc [hl]                                      ; $417a: $34
    dec [hl]                                      ; $417b: $35
    ld [hl], $37                                  ; $417c: $36 $37
    jr c, jr_07d_41b9                             ; $417e: $38 $39

    ld a, [hl-]                                   ; $4180: $3a
    dec sp                                        ; $4181: $3b
    inc a                                         ; $4182: $3c
    dec a                                         ; $4183: $3d
    ld a, $3f                                     ; $4184: $3e $3f
    ld bc, $0101                                  ; $4186: $01 $01 $01

jr_07d_4189:
    ld bc, $0101                                  ; $4189: $01 $01 $01
    ld bc, $0101                                  ; $418c: $01 $01 $01
    ld bc, $0101                                  ; $418f: $01 $01 $01
    ld [bc], a                                    ; $4192: $02
    ld [bc], a                                    ; $4193: $02
    ld [bc], a                                    ; $4194: $02
    ld [bc], a                                    ; $4195: $02
    ld b, b                                       ; $4196: $40
    ld b, c                                       ; $4197: $41
    ld b, d                                       ; $4198: $42
    ld b, e                                       ; $4199: $43
    ld b, h                                       ; $419a: $44
    ld b, l                                       ; $419b: $45
    ld b, [hl]                                    ; $419c: $46
    ld b, a                                       ; $419d: $47
    ld c, b                                       ; $419e: $48
    ld c, c                                       ; $419f: $49
    ld c, d                                       ; $41a0: $4a
    ld c, e                                       ; $41a1: $4b
    ld l, $4c                                     ; $41a2: $2e $4c
    ld c, h                                       ; $41a4: $4c
    ld c, l                                       ; $41a5: $4d
    ld bc, HeaderLogo                             ; $41a6: $01 $04 $01

jr_07d_41a9:
    ld bc, $0401                                  ; $41a9: $01 $01 $04
    ld bc, $0101                                  ; $41ac: $01 $01 $01
    inc b                                         ; $41af: $04
    ld bc, $0201                                  ; $41b0: $01 $01 $02
    ld [bc], a                                    ; $41b3: $02
    ld [bc], a                                    ; $41b4: $02
    ld [bc], a                                    ; $41b5: $02
    ld hl, $d122                                  ; $41b6: $21 $22 $d1

jr_07d_41b9:
    ld c, [hl]                                    ; $41b9: $4e
    inc h                                         ; $41ba: $24
    dec h                                         ; $41bb: $25
    ld h, $27                                     ; $41bc: $26 $27
    jr z, @+$2b                                   ; $41be: $28 $29

    ld a, [hl+]                                   ; $41c0: $2a
    dec hl                                        ; $41c1: $2b
    ld c, a                                       ; $41c2: $4f
    ld d, b                                       ; $41c3: $50
    ld d, c                                       ; $41c4: $51
    ld d, d                                       ; $41c5: $52
    ld bc, $0101                                  ; $41c6: $01 $01 $01
    ld bc, $0101                                  ; $41c9: $01 $01 $01
    ld bc, $0101                                  ; $41cc: $01 $01 $01
    ld bc, $0101                                  ; $41cf: $01 $01 $01
    ld [bc], a                                    ; $41d2: $02
    ld [bc], a                                    ; $41d3: $02
    ld [bc], a                                    ; $41d4: $02
    ld [bc], a                                    ; $41d5: $02
    jp hl                                         ; $41d6: $e9


    ld [$eceb], a                                 ; $41d7: $ea $eb $ec
    db $fd                                        ; $41da: $fd
    cp $ff                                        ; $41db: $fe $ff
    nop                                           ; $41dd: $00
    ld bc, $0302                                  ; $41de: $01 $02 $03
    inc b                                         ; $41e1: $04
    dec b                                         ; $41e2: $05
    ld b, $07                                     ; $41e3: $06 $07
    ld [$0101], sp                                ; $41e5: $08 $01 $01
    ld bc, $0101                                  ; $41e8: $01 $01 $01
    ld bc, $0101                                  ; $41eb: $01 $01 $01
    ld bc, $0101                                  ; $41ee: $01 $01 $01
    ld bc, $0101                                  ; $41f1: $01 $01 $01
    ld bc, $f001                                  ; $41f4: $01 $01 $f0
    pop af                                        ; $41f7: $f1
    ld a, [c]                                     ; $41f8: $f2
    di                                            ; $41f9: $f3
    dec c                                         ; $41fa: $0d
    ld c, $0f                                     ; $41fb: $0e $0f
    db $10                                        ; $41fd: $10
    ld de, $1312                                  ; $41fe: $11 $12 $13
    inc d                                         ; $4201: $14
    dec d                                         ; $4202: $15
    ld d, $17                                     ; $4203: $16 $17
    jr @+$03                                      ; $4205: $18 $01

    ld bc, $0101                                  ; $4207: $01 $01 $01
    ld bc, $0101                                  ; $420a: $01 $01 $01
    ld bc, $0101                                  ; $420d: $01 $01 $01
    ld bc, $0101                                  ; $4210: $01 $01 $01
    ld bc, $0101                                  ; $4213: $01 $01 $01
    ldh [$da], a                                  ; $4216: $e0 $da
    pop de                                        ; $4218: $d1
    db $d3                                        ; $4219: $d3
    ld hl, sp-$2e                                 ; $421a: $f8 $d2
    pop de                                        ; $421c: $d1
    sub $f9                                       ; $421d: $d6 $f9
    call nc, $d9d5                                ; $421f: $d4 $d5 $d9
    ld a, [$d8d7]                                 ; $4222: $fa $d7 $d8
    db $db                                        ; $4225: $db
    ld bc, $0101                                  ; $4226: $01 $01 $01
    ld bc, $0101                                  ; $4229: $01 $01 $01
    ld bc, $0101                                  ; $422c: $01 $01 $01
    ld bc, $0101                                  ; $422f: $01 $01 $01
    ld bc, $0101                                  ; $4232: $01 $01 $01
    ld bc, $d153                                  ; $4235: $01 $53 $d1
    pop de                                        ; $4238: $d1
    pop de                                        ; $4239: $d1
    ld d, h                                       ; $423a: $54
    pop de                                        ; $423b: $d1
    pop de                                        ; $423c: $d1
    pop de                                        ; $423d: $d1
    ld d, l                                       ; $423e: $55
    pop de                                        ; $423f: $d1
    pop de                                        ; $4240: $d1
    pop de                                        ; $4241: $d1
    ld d, [hl]                                    ; $4242: $56
    pop de                                        ; $4243: $d1
    pop de                                        ; $4244: $d1
    pop de                                        ; $4245: $d1
    ld bc, $0101                                  ; $4246: $01 $01 $01
    ld bc, $0101                                  ; $4249: $01 $01 $01
    ld bc, $0101                                  ; $424c: $01 $01 $01
    ld bc, $0101                                  ; $424f: $01 $01 $01
    ld bc, $0101                                  ; $4252: $01 $01 $01
    ld bc, $0a09                                  ; $4255: $01 $09 $0a
    dec bc                                        ; $4258: $0b
    inc c                                         ; $4259: $0c
    jr nc, @+$33                                  ; $425a: $30 $31

    ld [hl-], a                                   ; $425c: $32
    inc sp                                        ; $425d: $33
    inc [hl]                                      ; $425e: $34
    dec [hl]                                      ; $425f: $35
    ld [hl], $37                                  ; $4260: $36 $37
    jr c, jr_07d_429d                             ; $4262: $38 $39

    ld a, [hl-]                                   ; $4264: $3a
    dec sp                                        ; $4265: $3b
    ld bc, $0101                                  ; $4266: $01 $01 $01
    ld bc, $0101                                  ; $4269: $01 $01 $01
    ld bc, $0101                                  ; $426c: $01 $01 $01
    ld bc, $0101                                  ; $426f: $01 $01 $01
    ld bc, $0101                                  ; $4272: $01 $01 $01
    ld bc, $1a19                                  ; $4275: $01 $19 $1a
    dec de                                        ; $4278: $1b
    inc e                                         ; $4279: $1c
    ld b, b                                       ; $427a: $40
    ld b, c                                       ; $427b: $41
    ld b, d                                       ; $427c: $42
    ld b, e                                       ; $427d: $43
    ld b, h                                       ; $427e: $44
    ld b, l                                       ; $427f: $45
    ld b, [hl]                                    ; $4280: $46
    ld b, a                                       ; $4281: $47
    ld c, b                                       ; $4282: $48
    ld c, c                                       ; $4283: $49
    ld c, d                                       ; $4284: $4a
    ld c, e                                       ; $4285: $4b
    ld bc, $0101                                  ; $4286: $01 $01 $01
    ld bc, $0101                                  ; $4289: $01 $01 $01
    ld bc, $0101                                  ; $428c: $01 $01 $01
    ld bc, $0101                                  ; $428f: $01 $01 $01
    ld bc, $0101                                  ; $4292: $01 $01 $01
    ld bc, $fcfb                                  ; $4295: $01 $fb $fc
    pop de                                        ; $4298: $d1
    db $f4                                        ; $4299: $f4
    ld hl, $d122                                  ; $429a: $21 $22 $d1

jr_07d_429d:
    inc hl                                        ; $429d: $23
    inc h                                         ; $429e: $24
    dec h                                         ; $429f: $25
    ld h, $27                                     ; $42a0: $26 $27
    jr z, @+$2b                                   ; $42a2: $28 $29

    ld a, [hl+]                                   ; $42a4: $2a
    dec hl                                        ; $42a5: $2b
    ld bc, $0101                                  ; $42a6: $01 $01 $01
    ld bc, $0101                                  ; $42a9: $01 $01 $01
    ld bc, $0101                                  ; $42ac: $01 $01 $01
    ld bc, $0101                                  ; $42af: $01 $01 $01
    ld bc, $0101                                  ; $42b2: $01 $01 $01
    ld bc, $e157                                  ; $42b5: $01 $57 $e1
    push de                                       ; $42b8: $d5
    pop de                                        ; $42b9: $d1
    ld e, b                                       ; $42ba: $58
    db $e3                                        ; $42bb: $e3
    db $e4                                        ; $42bc: $e4
    ld [c], a                                     ; $42bd: $e2
    ld e, c                                       ; $42be: $59
    ld e, d                                       ; $42bf: $5a
    rst $20                                       ; $42c0: $e7
    add sp, $5b                                   ; $42c1: $e8 $5b
    ld e, h                                       ; $42c3: $5c
    db $eb                                        ; $42c4: $eb
    db $ec                                        ; $42c5: $ec
    ld bc, $0101                                  ; $42c6: $01 $01 $01
    ld bc, $0101                                  ; $42c9: $01 $01 $01
    ld bc, $0101                                  ; $42cc: $01 $01 $01
    ld bc, $0101                                  ; $42cf: $01 $01 $01
    ld bc, $0101                                  ; $42d2: $01 $01 $01
    ld bc, $3c2f                                  ; $42d5: $01 $2f $3c
    dec a                                         ; $42d8: $3d
    ld a, $5d                                     ; $42d9: $3e $5d
    ld e, [hl]                                    ; $42db: $5e
    ld e, a                                       ; $42dc: $5f
    ld h, b                                       ; $42dd: $60
    ld h, c                                       ; $42de: $61
    ld h, d                                       ; $42df: $62
    ld h, e                                       ; $42e0: $63
    ld h, c                                       ; $42e1: $61
    ld h, h                                       ; $42e2: $64
    ld h, l                                       ; $42e3: $65
    ld h, [hl]                                    ; $42e4: $66
    ld h, [hl]                                    ; $42e5: $66
    ld [bc], a                                    ; $42e6: $02
    ld [bc], a                                    ; $42e7: $02
    ld [bc], a                                    ; $42e8: $02
    ld [bc], a                                    ; $42e9: $02
    ld [bc], a                                    ; $42ea: $02
    rlca                                          ; $42eb: $07
    rlca                                          ; $42ec: $07
    ld b, $02                                     ; $42ed: $06 $02
    ld [bc], a                                    ; $42ef: $02
    ld [bc], a                                    ; $42f0: $02
    rlca                                          ; $42f1: $07
    add e                                         ; $42f2: $83
    add e                                         ; $42f3: $83
    add e                                         ; $42f4: $83
    add e                                         ; $42f5: $83
    ccf                                           ; $42f6: $3f
    ld l, $4c                                     ; $42f7: $2e $4c
    ld c, l                                       ; $42f9: $4d
    ld h, a                                       ; $42fa: $67
    ld e, a                                       ; $42fb: $5f
    ld l, b                                       ; $42fc: $68
    ld e, [hl]                                    ; $42fd: $5e
    ld l, c                                       ; $42fe: $69
    ld l, d                                       ; $42ff: $6a
    ld l, e                                       ; $4300: $6b
    ld l, h                                       ; $4301: $6c
    ld l, l                                       ; $4302: $6d
    ld l, [hl]                                    ; $4303: $6e
    ld l, a                                       ; $4304: $6f
    ld [hl], b                                    ; $4305: $70
    ld [bc], a                                    ; $4306: $02
    ld [bc], a                                    ; $4307: $02
    ld [bc], a                                    ; $4308: $02
    ld [bc], a                                    ; $4309: $02
    ld b, $02                                     ; $430a: $06 $02
    ld [bc], a                                    ; $430c: $02
    ld [bc], a                                    ; $430d: $02
    rlca                                          ; $430e: $07
    ld b, $06                                     ; $430f: $06 $06
    rlca                                          ; $4311: $07
    add e                                         ; $4312: $83
    ld [bc], a                                    ; $4313: $02
    rlca                                          ; $4314: $07
    ld b, $4f                                     ; $4315: $06 $4f
    ld d, b                                       ; $4317: $50
    ld d, c                                       ; $4318: $51
    dec e                                         ; $4319: $1d
    ld [hl], c                                    ; $431a: $71
    ld e, l                                       ; $431b: $5d
    ld h, a                                       ; $431c: $67
    ld e, $63                                     ; $431d: $1e $63
    ld [hl], d                                    ; $431f: $72
    ld h, d                                       ; $4320: $62
    ld [hl], e                                    ; $4321: $73
    ld l, [hl]                                    ; $4322: $6e
    ld [hl], h                                    ; $4323: $74
    ld [hl], l                                    ; $4324: $75
    halt                                          ; $4325: $76
    ld [bc], a                                    ; $4326: $02
    ld [bc], a                                    ; $4327: $02
    ld [bc], a                                    ; $4328: $02
    ld [hl+], a                                   ; $4329: $22
    rlca                                          ; $432a: $07
    ld [bc], a                                    ; $432b: $02
    ld [bc], a                                    ; $432c: $02
    ld [hl+], a                                   ; $432d: $22
    rlca                                          ; $432e: $07
    ld [bc], a                                    ; $432f: $02
    ld [bc], a                                    ; $4330: $02
    ld [bc], a                                    ; $4331: $02
    ld [bc], a                                    ; $4332: $02
    add e                                         ; $4333: $83
    add e                                         ; $4334: $83
    add e                                         ; $4335: $83
    ld [hl], a                                    ; $4336: $77
    cp $ff                                        ; $4337: $fe $ff
    nop                                           ; $4339: $00
    ld a, b                                       ; $433a: $78
    ld [bc], a                                    ; $433b: $02
    inc bc                                        ; $433c: $03
    inc b                                         ; $433d: $04
    ld a, c                                       ; $433e: $79
    ld b, $07                                     ; $433f: $06 $07
    ld [$0a7a], sp                                ; $4341: $08 $7a $0a
    dec bc                                        ; $4344: $0b
    inc c                                         ; $4345: $0c
    ld bc, $0101                                  ; $4346: $01 $01 $01
    ld bc, $0101                                  ; $4349: $01 $01 $01
    ld bc, $0101                                  ; $434c: $01 $01 $01
    ld bc, $0101                                  ; $434f: $01 $01 $01
    ld bc, $0101                                  ; $4352: $01 $01 $01
    ld bc, $5e5d                                  ; $4355: $01 $5d $5e
    ld a, e                                       ; $4358: $7b
    ld a, h                                       ; $4359: $7c
    ld [hl], l                                    ; $435a: $75
    ld a, l                                       ; $435b: $7d
    ld h, [hl]                                    ; $435c: $66
    ld h, c                                       ; $435d: $61
    ld l, a                                       ; $435e: $6f
    ld a, [hl]                                    ; $435f: $7e
    ld a, a                                       ; $4360: $7f
    add b                                         ; $4361: $80
    ld l, b                                       ; $4362: $68
    add c                                         ; $4363: $81
    ld [hl], c                                    ; $4364: $71
    ld h, b                                       ; $4365: $60
    ld [bc], a                                    ; $4366: $02
    ld [bc], a                                    ; $4367: $02
    ld [bc], a                                    ; $4368: $02
    ld b, $e3                                     ; $4369: $06 $e3
    add e                                         ; $436b: $83
    db $e3                                        ; $436c: $e3
    ld [bc], a                                    ; $436d: $02
    ld [bc], a                                    ; $436e: $02
    rlca                                          ; $436f: $07
    ld [bc], a                                    ; $4370: $02
    ld c, $02                                     ; $4371: $0e $02
    rrca                                          ; $4373: $0f
    ld b, $06                                     ; $4374: $06 $06
    add d                                         ; $4376: $82
    add e                                         ; $4377: $83
    add h                                         ; $4378: $84
    add l                                         ; $4379: $85
    ld h, d                                       ; $437a: $62
    add [hl]                                      ; $437b: $86
    add a                                         ; $437c: $87
    adc b                                         ; $437d: $88
    adc c                                         ; $437e: $89
    adc d                                         ; $437f: $8a
    adc e                                         ; $4380: $8b
    adc h                                         ; $4381: $8c
    ld h, a                                       ; $4382: $67
    adc l                                         ; $4383: $8d
    ld l, b                                       ; $4384: $68
    ld e, [hl]                                    ; $4385: $5e
    ld c, $0e                                     ; $4386: $0e $0e
    rrca                                          ; $4388: $0f
    ld a, [bc]                                    ; $4389: $0a
    ld b, $0e                                     ; $438a: $06 $0e
    rrca                                          ; $438c: $0f
    ld c, $0e                                     ; $438d: $0e $0e
    rrca                                          ; $438f: $0f
    ld a, [bc]                                    ; $4390: $0a
    ld c, $07                                     ; $4391: $0e $07
    ld a, [bc]                                    ; $4393: $0a
    ld [bc], a                                    ; $4394: $02
    ld b, $7b                                     ; $4395: $06 $7b
    ld a, h                                       ; $4397: $7c
    ld e, [hl]                                    ; $4398: $5e
    ld e, a                                       ; $4399: $5f
    adc [hl]                                      ; $439a: $8e
    adc a                                         ; $439b: $8f
    ld h, d                                       ; $439c: $62
    sub b                                         ; $439d: $90
    ld a, a                                       ; $439e: $7f
    add b                                         ; $439f: $80
    adc c                                         ; $43a0: $89
    ld l, [hl]                                    ; $43a1: $6e
    ld [hl], c                                    ; $43a2: $71
    ld h, b                                       ; $43a3: $60
    ld h, a                                       ; $43a4: $67
    adc l                                         ; $43a5: $8d
    rlca                                          ; $43a6: $07
    ld [bc], a                                    ; $43a7: $02
    ld [bc], a                                    ; $43a8: $02
    ld [bc], a                                    ; $43a9: $02
    ld c, $0a                                     ; $43aa: $0e $0a
    ld [bc], a                                    ; $43ac: $02
    adc e                                         ; $43ad: $8b
    ld b, $0e                                     ; $43ae: $06 $0e
    ld a, [bc]                                    ; $43b0: $0a
    ld [bc], a                                    ; $43b1: $02
    ld [bc], a                                    ; $43b2: $02
    ld b, $06                                     ; $43b3: $06 $06
    ld c, $91                                     ; $43b5: $0e $91
    ld sp, $3332                                  ; $43b7: $31 $32 $33
    inc [hl]                                      ; $43ba: $34
    dec [hl]                                      ; $43bb: $35
    ld [hl], $37                                  ; $43bc: $36 $37
    jr c, jr_07d_43f9                             ; $43be: $38 $39

    ld a, [hl-]                                   ; $43c0: $3a
    dec sp                                        ; $43c1: $3b
    cpl                                           ; $43c2: $2f
    inc a                                         ; $43c3: $3c
    dec a                                         ; $43c4: $3d
    ld a, $09                                     ; $43c5: $3e $09
    ld bc, $0101                                  ; $43c7: $01 $01 $01
    ld bc, $0101                                  ; $43ca: $01 $01 $01
    ld bc, $0101                                  ; $43cd: $01 $01 $01
    ld bc, $0201                                  ; $43d0: $01 $01 $02
    ld [bc], a                                    ; $43d3: $02
    ld [bc], a                                    ; $43d4: $02
    ld [bc], a                                    ; $43d5: $02
    pop de                                        ; $43d6: $d1
    jp nc, $d3d1                                  ; $43d7: $d2 $d1 $d3

    pop de                                        ; $43da: $d1
    call nc, $d6d5                                ; $43db: $d4 $d5 $d6
    pop de                                        ; $43de: $d1
    rst $10                                       ; $43df: $d7
    ret c                                         ; $43e0: $d8

    reti                                          ; $43e1: $d9


    pop de                                        ; $43e2: $d1
    jp c, $dbd1                                   ; $43e3: $da $d1 $db

    ld bc, $0404                                  ; $43e6: $01 $04 $04
    ld bc, $0401                                  ; $43e9: $01 $01 $04
    inc b                                         ; $43ec: $04
    ld bc, $0401                                  ; $43ed: $01 $01 $04
    inc b                                         ; $43f0: $04
    ld bc, $0401                                  ; $43f1: $01 $01 $04
    inc b                                         ; $43f4: $04
    ld bc, $d1d1                                  ; $43f5: $01 $d1 $d1
    pop de                                        ; $43f8: $d1

jr_07d_43f9:
    pop de                                        ; $43f9: $d1
    pop de                                        ; $43fa: $d1
    db $ed                                        ; $43fb: $ed
    pop de                                        ; $43fc: $d1
    call c, $efee                                 ; $43fd: $dc $ee $ef
    pop de                                        ; $4400: $d1
    sbc $f0                                       ; $4401: $de $f0
    pop af                                        ; $4403: $f1
    ld a, [c]                                     ; $4404: $f2
    di                                            ; $4405: $f3
    ld bc, $0101                                  ; $4406: $01 $01 $01
    ld bc, $0101                                  ; $4409: $01 $01 $01
    ld bc, $0101                                  ; $440c: $01 $01 $01
    ld bc, $0101                                  ; $440f: $01 $01 $01
    ld bc, $0101                                  ; $4412: $01 $01 $01
    ld bc, $d2d1                                  ; $4415: $01 $d1 $d2
    pop de                                        ; $4418: $d1
    db $f4                                        ; $4419: $f4
    pop de                                        ; $441a: $d1
    call nc, $f5d5                                ; $441b: $d4 $d5 $f5
    pop de                                        ; $441e: $d1
    rst $10                                       ; $441f: $d7
    ret c                                         ; $4420: $d8

    or $e0                                        ; $4421: $f6 $e0
    jp c, $f7d1                                   ; $4423: $da $d1 $f7

    ld bc, $0404                                  ; $4426: $01 $04 $04
    ld bc, $0401                                  ; $4429: $01 $01 $04
    inc b                                         ; $442c: $04
    ld bc, $0401                                  ; $442d: $01 $01 $04
    inc b                                         ; $4430: $04
    ld bc, $0401                                  ; $4431: $01 $01 $04
    inc b                                         ; $4434: $04
    ld bc, $0e0d                                  ; $4435: $01 $0d $0e
    rrca                                          ; $4438: $0f
    db $10                                        ; $4439: $10
    ld de, $1312                                  ; $443a: $11 $12 $13
    inc d                                         ; $443d: $14
    dec d                                         ; $443e: $15
    ld d, $17                                     ; $443f: $16 $17
    jr @+$1b                                      ; $4441: $18 $19

    ld a, [de]                                    ; $4443: $1a
    dec de                                        ; $4444: $1b
    inc e                                         ; $4445: $1c
    ld bc, $0101                                  ; $4446: $01 $01 $01
    ld bc, $0101                                  ; $4449: $01 $01 $01
    ld bc, $0101                                  ; $444c: $01 $01 $01
    ld bc, $0101                                  ; $444f: $01 $01 $01
    ld bc, $0101                                  ; $4452: $01 $01 $01
    ld bc, $d2f8                                  ; $4455: $01 $f8 $d2
    pop de                                        ; $4458: $d1
    dec e                                         ; $4459: $1d
    ld sp, hl                                     ; $445a: $f9
    call nc, Call_000_1ed5                        ; $445b: $d4 $d5 $1e
    ld a, [$d8d7]                                 ; $445e: $fa $d7 $d8
    rra                                           ; $4461: $1f
    ei                                            ; $4462: $fb
    db $fc                                        ; $4463: $fc
    pop de                                        ; $4464: $d1
    jr nz, jr_07d_4468                            ; $4465: $20 $01

    inc b                                         ; $4467: $04

jr_07d_4468:
    inc b                                         ; $4468: $04
    ld [bc], a                                    ; $4469: $02
    ld bc, $0404                                  ; $446a: $01 $04 $04
    ld [bc], a                                    ; $446d: $02
    ld bc, $0404                                  ; $446e: $01 $04 $04
    ld [bc], a                                    ; $4471: $02
    ld bc, $0404                                  ; $4472: $01 $04 $04
    ld bc, $3c2f                                  ; $4475: $01 $2f $3c
    dec a                                         ; $4478: $3d
    ld a, $5d                                     ; $4479: $3e $5d
    ld e, [hl]                                    ; $447b: $5e
    ld e, a                                       ; $447c: $5f
    ld e, l                                       ; $447d: $5d
    ld h, c                                       ; $447e: $61
    ld h, d                                       ; $447f: $62
    sub d                                         ; $4480: $92
    ld [hl], d                                    ; $4481: $72
    ld h, h                                       ; $4482: $64
    ld h, l                                       ; $4483: $65
    ld h, [hl]                                    ; $4484: $66
    ld h, [hl]                                    ; $4485: $66
    ld [bc], a                                    ; $4486: $02
    ld [bc], a                                    ; $4487: $02
    ld [bc], a                                    ; $4488: $02
    ld [bc], a                                    ; $4489: $02
    ld [bc], a                                    ; $448a: $02
    ld [bc], a                                    ; $448b: $02
    rlca                                          ; $448c: $07
    ld [bc], a                                    ; $448d: $02
    ld [bc], a                                    ; $448e: $02
    ld [bc], a                                    ; $448f: $02
    ld a, [bc]                                    ; $4490: $0a
    rlca                                          ; $4491: $07
    add e                                         ; $4492: $83
    add e                                         ; $4493: $83
    add e                                         ; $4494: $83
    add e                                         ; $4495: $83
    ccf                                           ; $4496: $3f
    ld l, $4c                                     ; $4497: $2e $4c
    ld c, l                                       ; $4499: $4d
    ld e, [hl]                                    ; $449a: $5e
    adc l                                         ; $449b: $8d
    ld e, l                                       ; $449c: $5d
    add c                                         ; $449d: $81
    ld l, c                                       ; $449e: $69
    ld l, d                                       ; $449f: $6a
    ld l, e                                       ; $44a0: $6b
    ld l, h                                       ; $44a1: $6c
    ld l, l                                       ; $44a2: $6d
    ld l, [hl]                                    ; $44a3: $6e
    sub e                                         ; $44a4: $93
    ld [hl], b                                    ; $44a5: $70
    ld [bc], a                                    ; $44a6: $02
    ld [bc], a                                    ; $44a7: $02
    ld [bc], a                                    ; $44a8: $02
    ld [bc], a                                    ; $44a9: $02
    ld [bc], a                                    ; $44aa: $02
    ld a, [bc]                                    ; $44ab: $0a
    ld [bc], a                                    ; $44ac: $02
    ld a, [bc]                                    ; $44ad: $0a
    rlca                                          ; $44ae: $07
    rlca                                          ; $44af: $07
    rlca                                          ; $44b0: $07
    rlca                                          ; $44b1: $07
    add e                                         ; $44b2: $83
    ld [bc], a                                    ; $44b3: $02
    rrca                                          ; $44b4: $0f
    ld [bc], a                                    ; $44b5: $02
    ld b, b                                       ; $44b6: $40
    ld b, c                                       ; $44b7: $41
    ld b, d                                       ; $44b8: $42
    ld b, e                                       ; $44b9: $43
    ld b, h                                       ; $44ba: $44
    ld b, l                                       ; $44bb: $45
    ld b, [hl]                                    ; $44bc: $46
    ld b, a                                       ; $44bd: $47
    ld c, b                                       ; $44be: $48
    ld c, c                                       ; $44bf: $49
    ld c, d                                       ; $44c0: $4a
    ld c, e                                       ; $44c1: $4b
    ccf                                           ; $44c2: $3f
    ld l, $4c                                     ; $44c3: $2e $4c
    ld c, l                                       ; $44c5: $4d
    ld bc, $0101                                  ; $44c6: $01 $01 $01
    ld bc, $0101                                  ; $44c9: $01 $01 $01
    ld bc, $0101                                  ; $44cc: $01 $01 $01
    ld bc, $0101                                  ; $44cf: $01 $01 $01
    ld [bc], a                                    ; $44d2: $02
    ld [bc], a                                    ; $44d3: $02
    ld [bc], a                                    ; $44d4: $02
    ld [bc], a                                    ; $44d5: $02
    ld hl, $d122                                  ; $44d6: $21 $22 $d1
    ld c, [hl]                                    ; $44d9: $4e
    inc h                                         ; $44da: $24
    dec h                                         ; $44db: $25
    ld h, $27                                     ; $44dc: $26 $27
    jr z, jr_07d_4509                             ; $44de: $28 $29

    ld a, [hl+]                                   ; $44e0: $2a
    dec hl                                        ; $44e1: $2b
    ld c, a                                       ; $44e2: $4f
    ld d, b                                       ; $44e3: $50
    ld d, c                                       ; $44e4: $51
    ld d, d                                       ; $44e5: $52
    ld bc, $0404                                  ; $44e6: $01 $04 $04
    ld bc, $0401                                  ; $44e9: $01 $01 $04
    inc b                                         ; $44ec: $04
    ld bc, $0401                                  ; $44ed: $01 $01 $04
    inc b                                         ; $44f0: $04
    ld bc, $0202                                  ; $44f1: $01 $02 $02
    ld [bc], a                                    ; $44f4: $02
    ld [bc], a                                    ; $44f5: $02
    ld e, l                                       ; $44f6: $5d
    ld e, [hl]                                    ; $44f7: $5e
    ld e, a                                       ; $44f8: $5f
    ld a, h                                       ; $44f9: $7c
    ld [hl], l                                    ; $44fa: $75
    ld a, l                                       ; $44fb: $7d
    ld h, [hl]                                    ; $44fc: $66
    ld h, c                                       ; $44fd: $61
    ld l, a                                       ; $44fe: $6f
    ld a, [hl]                                    ; $44ff: $7e
    ld a, a                                       ; $4500: $7f
    add b                                         ; $4501: $80
    ld l, b                                       ; $4502: $68
    add c                                         ; $4503: $81
    ld [hl], c                                    ; $4504: $71
    ld h, b                                       ; $4505: $60
    ld [bc], a                                    ; $4506: $02
    ld [bc], a                                    ; $4507: $02
    ld [bc], a                                    ; $4508: $02

jr_07d_4509:
    ld [bc], a                                    ; $4509: $02
    db $e3                                        ; $450a: $e3
    add e                                         ; $450b: $83
    db $e3                                        ; $450c: $e3
    ld [bc], a                                    ; $450d: $02
    ld [bc], a                                    ; $450e: $02
    ld [bc], a                                    ; $450f: $02
    ld [bc], a                                    ; $4510: $02
    rrca                                          ; $4511: $0f
    ld [bc], a                                    ; $4512: $02
    ld a, [bc]                                    ; $4513: $0a
    rlca                                          ; $4514: $07
    ld [bc], a                                    ; $4515: $02
    add d                                         ; $4516: $82
    add e                                         ; $4517: $83
    add h                                         ; $4518: $84
    ld e, [hl]                                    ; $4519: $5e
    sub h                                         ; $451a: $94
    add [hl]                                      ; $451b: $86
    add a                                         ; $451c: $87
    adc b                                         ; $451d: $88
    adc c                                         ; $451e: $89
    ld l, [hl]                                    ; $451f: $6e
    ld l, a                                       ; $4520: $6f
    sub l                                         ; $4521: $95
    ld h, a                                       ; $4522: $67
    adc l                                         ; $4523: $8d
    ld l, b                                       ; $4524: $68
    sub [hl]                                      ; $4525: $96
    ld c, $0e                                     ; $4526: $0e $0e
    ld c, $06                                     ; $4528: $0e $06
    ld c, $0e                                     ; $452a: $0e $0e
    ld a, [bc]                                    ; $452c: $0a
    ld a, [bc]                                    ; $452d: $0a
    ld a, [bc]                                    ; $452e: $0a
    ld [bc], a                                    ; $452f: $02
    ld [bc], a                                    ; $4530: $02
    adc e                                         ; $4531: $8b
    rlca                                          ; $4532: $07
    rrca                                          ; $4533: $0f
    rlca                                          ; $4534: $07
    adc e                                         ; $4535: $8b
    ldh [$da], a                                  ; $4536: $e0 $da
    pop de                                        ; $4538: $d1
    db $d3                                        ; $4539: $d3
    ld hl, sp-$2e                                 ; $453a: $f8 $d2
    pop de                                        ; $453c: $d1
    sub $f9                                       ; $453d: $d6 $f9
    call nc, $d9d5                                ; $453f: $d4 $d5 $d9
    ld a, [$d8d7]                                 ; $4542: $fa $d7 $d8
    db $db                                        ; $4545: $db
    ld bc, $0404                                  ; $4546: $01 $04 $04
    ld bc, $0401                                  ; $4549: $01 $01 $04
    inc b                                         ; $454c: $04
    ld bc, $0401                                  ; $454d: $01 $01 $04
    inc b                                         ; $4550: $04
    ld bc, $0401                                  ; $4551: $01 $01 $04
    inc b                                         ; $4554: $04
    ld bc, $eae9                                  ; $4555: $01 $e9 $ea
    db $eb                                        ; $4558: $eb
    db $ec                                        ; $4559: $ec
    db $fd                                        ; $455a: $fd
    cp $ff                                        ; $455b: $fe $ff
    nop                                           ; $455d: $00
    ld bc, $0302                                  ; $455e: $01 $02 $03
    inc b                                         ; $4561: $04
    dec b                                         ; $4562: $05
    ld b, $07                                     ; $4563: $06 $07
    ld [$0101], sp                                ; $4565: $08 $01 $01
    inc b                                         ; $4568: $04
    ld bc, $0101                                  ; $4569: $01 $01 $01
    inc b                                         ; $456c: $04
    ld bc, $0101                                  ; $456d: $01 $01 $01
    inc b                                         ; $4570: $04
    ld bc, $0101                                  ; $4571: $01 $01 $01
    inc b                                         ; $4574: $04
    ld bc, $fcfb                                  ; $4575: $01 $fb $fc
    pop de                                        ; $4578: $d1
    db $f4                                        ; $4579: $f4
    ld hl, $d122                                  ; $457a: $21 $22 $d1
    inc hl                                        ; $457d: $23
    inc h                                         ; $457e: $24
    dec h                                         ; $457f: $25
    ld h, $27                                     ; $4580: $26 $27
    jr z, jr_07d_45ad                             ; $4582: $28 $29

    ld a, [hl+]                                   ; $4584: $2a
    dec hl                                        ; $4585: $2b
    ld bc, $0404                                  ; $4586: $01 $04 $04
    ld bc, $0401                                  ; $4589: $01 $01 $04
    inc b                                         ; $458c: $04
    ld bc, $0401                                  ; $458d: $01 $01 $04
    inc b                                         ; $4590: $04
    ld bc, $0401                                  ; $4591: $01 $01 $04
    inc b                                         ; $4594: $04
    ld bc, $0a09                                  ; $4595: $01 $09 $0a
    dec bc                                        ; $4598: $0b
    inc c                                         ; $4599: $0c
    jr nc, jr_07d_45cd                            ; $459a: $30 $31

    ld [hl-], a                                   ; $459c: $32
    inc sp                                        ; $459d: $33
    inc [hl]                                      ; $459e: $34
    dec [hl]                                      ; $459f: $35
    ld [hl], $37                                  ; $45a0: $36 $37
    jr c, jr_07d_45dd                             ; $45a2: $38 $39

    ld a, [hl-]                                   ; $45a4: $3a
    dec sp                                        ; $45a5: $3b
    ld bc, $0401                                  ; $45a6: $01 $01 $04
    ld bc, $0101                                  ; $45a9: $01 $01 $01
    inc b                                         ; $45ac: $04

jr_07d_45ad:
    ld bc, $0101                                  ; $45ad: $01 $01 $01
    inc b                                         ; $45b0: $04
    ld bc, $0101                                  ; $45b1: $01 $01 $01
    inc b                                         ; $45b4: $04
    ld bc, $504f                                  ; $45b5: $01 $4f $50
    ld d, c                                       ; $45b8: $51
    ld d, d                                       ; $45b9: $52
    ld e, a                                       ; $45ba: $5f
    ld h, b                                       ; $45bb: $60
    ld e, [hl]                                    ; $45bc: $5e
    adc l                                         ; $45bd: $8d
    ld h, e                                       ; $45be: $63
    ld h, c                                       ; $45bf: $61
    ld l, c                                       ; $45c0: $69
    ld l, d                                       ; $45c1: $6a
    sub a                                         ; $45c2: $97
    sbc b                                         ; $45c3: $98
    sbc c                                         ; $45c4: $99
    sbc d                                         ; $45c5: $9a
    ld [bc], a                                    ; $45c6: $02
    ld [bc], a                                    ; $45c7: $02
    ld [bc], a                                    ; $45c8: $02
    ld [bc], a                                    ; $45c9: $02
    rlca                                          ; $45ca: $07
    ld [bc], a                                    ; $45cb: $02
    ld [bc], a                                    ; $45cc: $02

jr_07d_45cd:
    ld c, $02                                     ; $45cd: $0e $02
    ld [bc], a                                    ; $45cf: $02
    rlca                                          ; $45d0: $07
    ld b, $0a                                     ; $45d1: $06 $0a
    rrca                                          ; $45d3: $0f
    rrca                                          ; $45d4: $0f
    rrca                                          ; $45d5: $0f
    cpl                                           ; $45d6: $2f
    inc a                                         ; $45d7: $3c
    dec a                                         ; $45d8: $3d
    ld a, $5d                                     ; $45d9: $3e $5d
    ld e, [hl]                                    ; $45db: $5e
    ld [hl], c                                    ; $45dc: $71

jr_07d_45dd:
    ld h, b                                       ; $45dd: $60
    ld l, e                                       ; $45de: $6b
    ld l, h                                       ; $45df: $6c
    sub d                                         ; $45e0: $92
    ld [hl], d                                    ; $45e1: $72
    ld l, a                                       ; $45e2: $6f
    ld [hl], b                                    ; $45e3: $70
    sub a                                         ; $45e4: $97
    ld l, a                                       ; $45e5: $6f
    ld [bc], a                                    ; $45e6: $02
    ld [bc], a                                    ; $45e7: $02
    ld [bc], a                                    ; $45e8: $02
    ld [bc], a                                    ; $45e9: $02
    ld b, $02                                     ; $45ea: $06 $02
    rlca                                          ; $45ec: $07
    ld [bc], a                                    ; $45ed: $02
    ld b, $06                                     ; $45ee: $06 $06
    ld c, $06                                     ; $45f0: $0e $06
    ld b, $07                                     ; $45f2: $06 $07
    ld a, [bc]                                    ; $45f4: $0a
    rlca                                          ; $45f5: $07
    ccf                                           ; $45f6: $3f
    ld l, $4c                                     ; $45f7: $2e $4c
    ld c, l                                       ; $45f9: $4d
    ld e, [hl]                                    ; $45fa: $5e
    ld e, a                                       ; $45fb: $5f
    ld e, l                                       ; $45fc: $5d
    add c                                         ; $45fd: $81
    ld l, c                                       ; $45fe: $69
    sub d                                         ; $45ff: $92
    ld l, e                                       ; $4600: $6b
    ld l, h                                       ; $4601: $6c
    sbc c                                         ; $4602: $99
    sbc d                                         ; $4603: $9a
    sub e                                         ; $4604: $93
    ld [hl], b                                    ; $4605: $70
    ld [bc], a                                    ; $4606: $02
    ld [bc], a                                    ; $4607: $02
    ld [bc], a                                    ; $4608: $02
    ld [bc], a                                    ; $4609: $02
    ld [bc], a                                    ; $460a: $02
    ld [bc], a                                    ; $460b: $02
    ld [bc], a                                    ; $460c: $02
    ld a, [bc]                                    ; $460d: $0a
    rlca                                          ; $460e: $07
    ld a, [bc]                                    ; $460f: $0a
    rlca                                          ; $4610: $07
    ld [bc], a                                    ; $4611: $02
    ld c, $0e                                     ; $4612: $0e $0e
    rrca                                          ; $4614: $0f
    rlca                                          ; $4615: $07
    ld c, a                                       ; $4616: $4f
    ld d, b                                       ; $4617: $50
    ld d, c                                       ; $4618: $51
    ld d, d                                       ; $4619: $52
    ld [hl], c                                    ; $461a: $71
    ld h, b                                       ; $461b: $60
    ld e, [hl]                                    ; $461c: $5e
    adc l                                         ; $461d: $8d
    ld h, e                                       ; $461e: $63
    ld h, c                                       ; $461f: $61
    ld l, c                                       ; $4620: $69
    ld l, d                                       ; $4621: $6a
    ld l, [hl]                                    ; $4622: $6e
    sbc b                                         ; $4623: $98
    sbc c                                         ; $4624: $99
    sbc d                                         ; $4625: $9a
    ld [bc], a                                    ; $4626: $02
    ld [bc], a                                    ; $4627: $02
    ld [bc], a                                    ; $4628: $02
    ld [bc], a                                    ; $4629: $02
    rlca                                          ; $462a: $07
    ld [bc], a                                    ; $462b: $02
    ld [bc], a                                    ; $462c: $02
    ld a, [bc]                                    ; $462d: $0a
    ld [bc], a                                    ; $462e: $02
    rlca                                          ; $462f: $07
    ld b, $07                                     ; $4630: $06 $07
    ld b, $0e                                     ; $4632: $06 $0e
    ld a, [bc]                                    ; $4634: $0a
    ld c, $7b                                     ; $4635: $0e $7b
    ld a, h                                       ; $4637: $7c
    add d                                         ; $4638: $82
    ld e, a                                       ; $4639: $5f
    sub d                                         ; $463a: $92
    ld h, c                                       ; $463b: $61
    sbc e                                         ; $463c: $9b
    sbc h                                         ; $463d: $9c
    sbc l                                         ; $463e: $9d
    sbc [hl]                                      ; $463f: $9e
    sbc a                                         ; $4640: $9f
    and b                                         ; $4641: $a0
    and c                                         ; $4642: $a1
    and d                                         ; $4643: $a2
    and e                                         ; $4644: $a3
    and h                                         ; $4645: $a4
    rlca                                          ; $4646: $07
    ld [bc], a                                    ; $4647: $02
    ld a, [bc]                                    ; $4648: $0a
    ld [bc], a                                    ; $4649: $02
    ld a, [bc]                                    ; $464a: $0a
    ld [bc], a                                    ; $464b: $02
    adc e                                         ; $464c: $8b
    adc l                                         ; $464d: $8d
    db $eb                                        ; $464e: $eb
    adc e                                         ; $464f: $8b
    adc e                                         ; $4650: $8b
    adc e                                         ; $4651: $8b
    adc e                                         ; $4652: $8b
    adc e                                         ; $4653: $8b
    adc e                                         ; $4654: $8b
    adc e                                         ; $4655: $8b
    ld e, l                                       ; $4656: $5d
    ld e, [hl]                                    ; $4657: $5e
    ld e, a                                       ; $4658: $5f
    ld a, h                                       ; $4659: $7c
    and l                                         ; $465a: $a5
    and [hl]                                      ; $465b: $a6
    and a                                         ; $465c: $a7
    xor b                                         ; $465d: $a8
    xor c                                         ; $465e: $a9
    xor d                                         ; $465f: $aa
    xor e                                         ; $4660: $ab
    xor h                                         ; $4661: $ac
    xor l                                         ; $4662: $ad
    xor [hl]                                      ; $4663: $ae
    xor a                                         ; $4664: $af
    or b                                          ; $4665: $b0
    ld [bc], a                                    ; $4666: $02
    rlca                                          ; $4667: $07
    rlca                                          ; $4668: $07
    ld b, $8d                                     ; $4669: $06 $8d
    adc e                                         ; $466b: $8b
    adc e                                         ; $466c: $8b
    adc e                                         ; $466d: $8b
    adc l                                         ; $466e: $8d
    adc e                                         ; $466f: $8b
    adc e                                         ; $4670: $8b
    adc e                                         ; $4671: $8b
    adc e                                         ; $4672: $8b
    adc e                                         ; $4673: $8b
    adc e                                         ; $4674: $8b
    adc e                                         ; $4675: $8b
    ld e, [hl]                                    ; $4676: $5e
    ld e, a                                       ; $4677: $5f
    add h                                         ; $4678: $84
    add l                                         ; $4679: $85
    sbc l                                         ; $467a: $9d
    or c                                          ; $467b: $b1
    or d                                          ; $467c: $b2
    sbc e                                         ; $467d: $9b
    or e                                          ; $467e: $b3
    halt                                          ; $467f: $76
    sbc [hl]                                      ; $4680: $9e
    sbc a                                         ; $4681: $9f
    or h                                          ; $4682: $b4
    or l                                          ; $4683: $b5
    and d                                         ; $4684: $a2
    and e                                         ; $4685: $a3
    ld b, $06                                     ; $4686: $06 $06
    rrca                                          ; $4688: $0f
    ld a, [bc]                                    ; $4689: $0a
    adc e                                         ; $468a: $8b
    adc e                                         ; $468b: $8b
    adc e                                         ; $468c: $8b
    adc e                                         ; $468d: $8b
    adc e                                         ; $468e: $8b
    db $e3                                        ; $468f: $e3
    adc e                                         ; $4690: $8b
    adc e                                         ; $4691: $8b
    adc e                                         ; $4692: $8b
    adc e                                         ; $4693: $8b
    adc e                                         ; $4694: $8b
    adc e                                         ; $4695: $8b
    ld a, e                                       ; $4696: $7b
    ld e, l                                       ; $4697: $5d
    ld e, [hl]                                    ; $4698: $5e
    add e                                         ; $4699: $83
    sbc h                                         ; $469a: $9c
    and l                                         ; $469b: $a5
    and [hl]                                      ; $469c: $a6
    and a                                         ; $469d: $a7
    and b                                         ; $469e: $a0
    xor c                                         ; $469f: $a9
    xor d                                         ; $46a0: $aa
    xor e                                         ; $46a1: $ab
    and h                                         ; $46a2: $a4
    xor l                                         ; $46a3: $ad
    xor [hl]                                      ; $46a4: $ae
    xor a                                         ; $46a5: $af
    ld [bc], a                                    ; $46a6: $02
    ld [bc], a                                    ; $46a7: $02
    ld [bc], a                                    ; $46a8: $02
    rrca                                          ; $46a9: $0f
    adc e                                         ; $46aa: $8b
    adc e                                         ; $46ab: $8b
    adc e                                         ; $46ac: $8b
    adc e                                         ; $46ad: $8b
    adc e                                         ; $46ae: $8b
    adc e                                         ; $46af: $8b
    adc e                                         ; $46b0: $8b
    adc e                                         ; $46b1: $8b
    adc e                                         ; $46b2: $8b
    adc e                                         ; $46b3: $8b
    adc e                                         ; $46b4: $8b
    adc e                                         ; $46b5: $8b
    cpl                                           ; $46b6: $2f
    inc a                                         ; $46b7: $3c
    dec a                                         ; $46b8: $3d
    ld a, $68                                     ; $46b9: $3e $68
    ld e, [hl]                                    ; $46bb: $5e
    ld [hl], c                                    ; $46bc: $71
    ld e, l                                       ; $46bd: $5d
    ld h, c                                       ; $46be: $61
    ld l, h                                       ; $46bf: $6c
    sub d                                         ; $46c0: $92
    ld [hl], d                                    ; $46c1: $72
    sub e                                         ; $46c2: $93
    ld [hl], b                                    ; $46c3: $70
    sub a                                         ; $46c4: $97
    sbc b                                         ; $46c5: $98
    ld [bc], a                                    ; $46c6: $02
    ld [bc], a                                    ; $46c7: $02
    ld [bc], a                                    ; $46c8: $02
    ld [bc], a                                    ; $46c9: $02
    ld [bc], a                                    ; $46ca: $02
    ld [bc], a                                    ; $46cb: $02
    rlca                                          ; $46cc: $07
    ld [bc], a                                    ; $46cd: $02
    ld b, $07                                     ; $46ce: $06 $07
    ld a, [bc]                                    ; $46d0: $0a
    rlca                                          ; $46d1: $07
    ld a, [bc]                                    ; $46d2: $0a
    rlca                                          ; $46d3: $07
    rrca                                          ; $46d4: $0f
    ld a, [bc]                                    ; $46d5: $0a
    ccf                                           ; $46d6: $3f
    ld l, $4c                                     ; $46d7: $2e $4c
    ld c, l                                       ; $46d9: $4d
    ld h, a                                       ; $46da: $67
    adc l                                         ; $46db: $8d
    ld e, l                                       ; $46dc: $5d
    add c                                         ; $46dd: $81
    ld l, c                                       ; $46de: $69
    sub d                                         ; $46df: $92
    ld l, e                                       ; $46e0: $6b
    ld h, d                                       ; $46e1: $62
    sbc c                                         ; $46e2: $99
    sbc d                                         ; $46e3: $9a
    sub e                                         ; $46e4: $93
    ld [hl], b                                    ; $46e5: $70
    ld [bc], a                                    ; $46e6: $02
    ld [bc], a                                    ; $46e7: $02
    ld [bc], a                                    ; $46e8: $02
    ld [bc], a                                    ; $46e9: $02
    ld [bc], a                                    ; $46ea: $02
    ld c, $02                                     ; $46eb: $0e $02
    ld a, [bc]                                    ; $46ed: $0a
    ld [bc], a                                    ; $46ee: $02
    ld c, $06                                     ; $46ef: $0e $06
    ld [bc], a                                    ; $46f1: $02
    ld a, [bc]                                    ; $46f2: $0a
    rrca                                          ; $46f3: $0f
    rrca                                          ; $46f4: $0f
    ld b, $4f                                     ; $46f5: $06 $4f
    ld d, b                                       ; $46f7: $50
    ld d, c                                       ; $46f8: $51
    ld d, d                                       ; $46f9: $52
    ld e, a                                       ; $46fa: $5f
    ld e, l                                       ; $46fb: $5d
    ld h, a                                       ; $46fc: $67
    adc l                                         ; $46fd: $8d
    ld h, e                                       ; $46fe: $63
    ld [hl], d                                    ; $46ff: $72
    ld l, c                                       ; $4700: $69
    ld l, d                                       ; $4701: $6a
    sub a                                         ; $4702: $97
    sbc b                                         ; $4703: $98
    sbc c                                         ; $4704: $99
    sbc d                                         ; $4705: $9a
    ld [bc], a                                    ; $4706: $02
    ld [bc], a                                    ; $4707: $02
    ld [bc], a                                    ; $4708: $02
    ld [bc], a                                    ; $4709: $02
    rlca                                          ; $470a: $07
    ld [bc], a                                    ; $470b: $02
    rlca                                          ; $470c: $07
    ld a, [bc]                                    ; $470d: $0a
    ld [bc], a                                    ; $470e: $02
    ld b, $02                                     ; $470f: $06 $02
    ld b, $0e                                     ; $4711: $06 $0e
    ld c, $0f                                     ; $4713: $0e $0f
    rrca                                          ; $4715: $0f
    cpl                                           ; $4716: $2f
    inc a                                         ; $4717: $3c
    dec a                                         ; $4718: $3d
    ld a, $68                                     ; $4719: $3e $68
    add c                                         ; $471b: $81
    ld e, a                                       ; $471c: $5f
    ld h, b                                       ; $471d: $60
    ld l, e                                       ; $471e: $6b
    ld h, d                                       ; $471f: $62
    ld h, e                                       ; $4720: $63
    ld [hl], d                                    ; $4721: $72
    ld l, a                                       ; $4722: $6f
    ld [hl], b                                    ; $4723: $70
    ld l, [hl]                                    ; $4724: $6e
    sbc b                                         ; $4725: $98
    ld [bc], a                                    ; $4726: $02
    ld [bc], a                                    ; $4727: $02
    ld [bc], a                                    ; $4728: $02
    ld [bc], a                                    ; $4729: $02
    ld b, $0e                                     ; $472a: $06 $0e
    ld [bc], a                                    ; $472c: $02
    ld [bc], a                                    ; $472d: $02
    ld [bc], a                                    ; $472e: $02
    ld [bc], a                                    ; $472f: $02
    rlca                                          ; $4730: $07
    ld [bc], a                                    ; $4731: $02
    ld [bc], a                                    ; $4732: $02
    ld [bc], a                                    ; $4733: $02
    ld [bc], a                                    ; $4734: $02
    rrca                                          ; $4735: $0f
    add h                                         ; $4736: $84
    add l                                         ; $4737: $85
    ld a, e                                       ; $4738: $7b
    ld a, h                                       ; $4739: $7c
    xor b                                         ; $473a: $a8
    sbc l                                         ; $473b: $9d
    or c                                          ; $473c: $b1
    ld h, c                                       ; $473d: $61
    xor h                                         ; $473e: $ac
    or e                                          ; $473f: $b3
    halt                                          ; $4740: $76
    or [hl]                                       ; $4741: $b6
    or b                                          ; $4742: $b0
    or h                                          ; $4743: $b4
    or l                                          ; $4744: $b5
    or a                                          ; $4745: $b7
    ld c, $0e                                     ; $4746: $0e $0e
    ld b, $06                                     ; $4748: $06 $06
    adc e                                         ; $474a: $8b
    adc e                                         ; $474b: $8b
    adc e                                         ; $474c: $8b
    ld [bc], a                                    ; $474d: $02
    adc e                                         ; $474e: $8b
    adc e                                         ; $474f: $8b
    db $e3                                        ; $4750: $e3
    adc e                                         ; $4751: $8b
    adc e                                         ; $4752: $8b
    adc e                                         ; $4753: $8b
    adc e                                         ; $4754: $8b
    adc e                                         ; $4755: $8b
    add d                                         ; $4756: $82
    ld e, a                                       ; $4757: $5f
    ld e, l                                       ; $4758: $5d
    ld e, [hl]                                    ; $4759: $5e
    ld h, d                                       ; $475a: $62
    cp b                                          ; $475b: $b8
    cp c                                          ; $475c: $b9
    or c                                          ; $475d: $b1
    cp d                                          ; $475e: $ba
    cp e                                          ; $475f: $bb
    or c                                          ; $4760: $b1
    or c                                          ; $4761: $b1
    sbc l                                         ; $4762: $9d
    sbc l                                         ; $4763: $9d
    cp c                                          ; $4764: $b9
    or c                                          ; $4765: $b1
    ld c, $02                                     ; $4766: $0e $02
    ld [bc], a                                    ; $4768: $02
    ld [bc], a                                    ; $4769: $02
    ld [bc], a                                    ; $476a: $02
    adc e                                         ; $476b: $8b
    adc e                                         ; $476c: $8b
    adc e                                         ; $476d: $8b
    adc e                                         ; $476e: $8b
    adc e                                         ; $476f: $8b
    db $eb                                        ; $4770: $eb
    db $eb                                        ; $4771: $eb
    adc e                                         ; $4772: $8b
    adc e                                         ; $4773: $8b
    adc e                                         ; $4774: $8b
    adc e                                         ; $4775: $8b
    ld e, a                                       ; $4776: $5f
    ld a, h                                       ; $4777: $7c
    add d                                         ; $4778: $82
    add e                                         ; $4779: $83
    cp h                                          ; $477a: $bc
    ld h, c                                       ; $477b: $61
    ld h, d                                       ; $477c: $62
    sub d                                         ; $477d: $92
    ld l, l                                       ; $477e: $6d
    cp l                                          ; $477f: $bd
    cp [hl]                                       ; $4780: $be
    sbc l                                         ; $4781: $9d
    ld e, a                                       ; $4782: $5f
    ld h, b                                       ; $4783: $60
    ld e, [hl]                                    ; $4784: $5e
    cp a                                          ; $4785: $bf
    rlca                                          ; $4786: $07
    rlca                                          ; $4787: $07
    ld a, [bc]                                    ; $4788: $0a
    ld a, [bc]                                    ; $4789: $0a
    adc e                                         ; $478a: $8b
    ld [bc], a                                    ; $478b: $02
    ld [bc], a                                    ; $478c: $02
    ld a, [bc]                                    ; $478d: $0a
    db $e3                                        ; $478e: $e3
    adc e                                         ; $478f: $8b
    adc e                                         ; $4790: $8b
    db $eb                                        ; $4791: $eb
    ld [bc], a                                    ; $4792: $02
    rlca                                          ; $4793: $07
    ld [bc], a                                    ; $4794: $02
    adc e                                         ; $4795: $8b
    add h                                         ; $4796: $84
    ld e, [hl]                                    ; $4797: $5e
    ld e, a                                       ; $4798: $5f
    ld e, l                                       ; $4799: $5d
    ld h, c                                       ; $479a: $61
    sbc e                                         ; $479b: $9b
    sbc h                                         ; $479c: $9c
    and l                                         ; $479d: $a5
    sbc [hl]                                      ; $479e: $9e
    sbc a                                         ; $479f: $9f
    and b                                         ; $47a0: $a0
    xor c                                         ; $47a1: $a9
    and d                                         ; $47a2: $a2
    and e                                         ; $47a3: $a3
    and h                                         ; $47a4: $a4
    xor l                                         ; $47a5: $ad
    ld a, [bc]                                    ; $47a6: $0a
    ld [bc], a                                    ; $47a7: $02
    ld [bc], a                                    ; $47a8: $02
    ld [bc], a                                    ; $47a9: $02
    ld [bc], a                                    ; $47aa: $02
    adc e                                         ; $47ab: $8b
    adc e                                         ; $47ac: $8b
    adc e                                         ; $47ad: $8b
    adc e                                         ; $47ae: $8b
    adc e                                         ; $47af: $8b
    adc e                                         ; $47b0: $8b
    adc l                                         ; $47b1: $8d
    adc e                                         ; $47b2: $8b
    adc e                                         ; $47b3: $8b
    adc e                                         ; $47b4: $8b
    adc e                                         ; $47b5: $8b
    ccf                                           ; $47b6: $3f
    ld l, $4c                                     ; $47b7: $2e $4c
    ld c, l                                       ; $47b9: $4d
    ld h, a                                       ; $47ba: $67
    adc l                                         ; $47bb: $8d
    ld l, b                                       ; $47bc: $68
    ld e, [hl]                                    ; $47bd: $5e
    ld h, d                                       ; $47be: $62
    ld l, d                                       ; $47bf: $6a
    ld l, e                                       ; $47c0: $6b
    ld l, h                                       ; $47c1: $6c
    sbc c                                         ; $47c2: $99
    sbc d                                         ; $47c3: $9a
    sub e                                         ; $47c4: $93
    ld [hl], b                                    ; $47c5: $70
    ld [bc], a                                    ; $47c6: $02
    ld [bc], a                                    ; $47c7: $02
    ld [bc], a                                    ; $47c8: $02
    ld [bc], a                                    ; $47c9: $02
    ld [bc], a                                    ; $47ca: $02
    rrca                                          ; $47cb: $0f
    rlca                                          ; $47cc: $07
    ld [bc], a                                    ; $47cd: $02
    ld [bc], a                                    ; $47ce: $02
    rlca                                          ; $47cf: $07
    rlca                                          ; $47d0: $07
    ld [bc], a                                    ; $47d1: $02
    rrca                                          ; $47d2: $0f
    rrca                                          ; $47d3: $0f
    rrca                                          ; $47d4: $0f
    rlca                                          ; $47d5: $07
    ld c, a                                       ; $47d6: $4f
    ld d, b                                       ; $47d7: $50
    ld d, c                                       ; $47d8: $51
    ld d, d                                       ; $47d9: $52
    ld e, a                                       ; $47da: $5f
    ld h, b                                       ; $47db: $60
    ld h, a                                       ; $47dc: $67
    ld e, a                                       ; $47dd: $5f
    ld h, e                                       ; $47de: $63
    ld h, c                                       ; $47df: $61
    ld l, c                                       ; $47e0: $69
    ld l, d                                       ; $47e1: $6a
    sub a                                         ; $47e2: $97
    sbc b                                         ; $47e3: $98
    sbc c                                         ; $47e4: $99
    sbc d                                         ; $47e5: $9a
    ld [bc], a                                    ; $47e6: $02
    ld [bc], a                                    ; $47e7: $02
    ld [bc], a                                    ; $47e8: $02
    ld [bc], a                                    ; $47e9: $02
    ld [bc], a                                    ; $47ea: $02
    rlca                                          ; $47eb: $07
    rlca                                          ; $47ec: $07
    ld [bc], a                                    ; $47ed: $02
    ld [bc], a                                    ; $47ee: $02
    ld [bc], a                                    ; $47ef: $02
    ld [bc], a                                    ; $47f0: $02
    ld [bc], a                                    ; $47f1: $02
    rrca                                          ; $47f2: $0f
    ld a, [bc]                                    ; $47f3: $0a
    ld a, [bc]                                    ; $47f4: $0a
    ld a, [bc]                                    ; $47f5: $0a
    ld e, [hl]                                    ; $47f6: $5e
    ld e, a                                       ; $47f7: $5f
    ld e, l                                       ; $47f8: $5d
    ld e, [hl]                                    ; $47f9: $5e
    and [hl]                                      ; $47fa: $a6
    and a                                         ; $47fb: $a7
    xor b                                         ; $47fc: $a8
    sbc l                                         ; $47fd: $9d
    xor d                                         ; $47fe: $aa
    xor e                                         ; $47ff: $ab
    xor h                                         ; $4800: $ac
    or e                                          ; $4801: $b3
    xor [hl]                                      ; $4802: $ae
    xor a                                         ; $4803: $af
    or b                                          ; $4804: $b0
    or h                                          ; $4805: $b4
    ld [bc], a                                    ; $4806: $02
    ld [bc], a                                    ; $4807: $02
    rlca                                          ; $4808: $07
    rlca                                          ; $4809: $07
    adc e                                         ; $480a: $8b
    adc e                                         ; $480b: $8b
    adc e                                         ; $480c: $8b
    adc e                                         ; $480d: $8b
    adc e                                         ; $480e: $8b
    adc e                                         ; $480f: $8b
    adc e                                         ; $4810: $8b
    adc e                                         ; $4811: $8b
    adc l                                         ; $4812: $8d
    adc e                                         ; $4813: $8b
    adc e                                         ; $4814: $8b
    adc e                                         ; $4815: $8b
    ld e, a                                       ; $4816: $5f
    ld e, l                                       ; $4817: $5d
    ld e, [hl]                                    ; $4818: $5e
    ld e, a                                       ; $4819: $5f
    or c                                          ; $481a: $b1
    sbc l                                         ; $481b: $9d
    or c                                          ; $481c: $b1
    or d                                          ; $481d: $b2
    halt                                          ; $481e: $76
    or e                                          ; $481f: $b3
    halt                                          ; $4820: $76
    sbc [hl]                                      ; $4821: $9e
    or l                                          ; $4822: $b5
    or h                                          ; $4823: $b4
    or l                                          ; $4824: $b5
    and d                                         ; $4825: $a2
    rlca                                          ; $4826: $07
    ld [bc], a                                    ; $4827: $02
    rlca                                          ; $4828: $07
    ld [bc], a                                    ; $4829: $02
    adc e                                         ; $482a: $8b
    adc e                                         ; $482b: $8b
    adc e                                         ; $482c: $8b
    adc e                                         ; $482d: $8b
    db $e3                                        ; $482e: $e3
    adc e                                         ; $482f: $8b
    db $e3                                        ; $4830: $e3
    adc e                                         ; $4831: $8b
    adc e                                         ; $4832: $8b
    adc e                                         ; $4833: $8b
    adc e                                         ; $4834: $8b
    adc e                                         ; $4835: $8b
    pop de                                        ; $4836: $d1
    ret nz                                        ; $4837: $c0

    ld h, d                                       ; $4838: $62
    ld l, d                                       ; $4839: $6a
    pop de                                        ; $483a: $d1
    pop bc                                        ; $483b: $c1
    jp nz, $d19a                                  ; $483c: $c2 $9a $d1

    jp $c5c4                                      ; $483f: $c3 $c4 $c5


    pop de                                        ; $4842: $d1
    pop de                                        ; $4843: $d1
    add $c7                                       ; $4844: $c6 $c7
    add e                                         ; $4846: $83
    adc e                                         ; $4847: $8b
    ld [bc], a                                    ; $4848: $02
    ld b, $83                                     ; $4849: $06 $83
    adc l                                         ; $484b: $8d
    adc e                                         ; $484c: $8b
    ld a, [bc]                                    ; $484d: $0a
    add e                                         ; $484e: $83
    adc l                                         ; $484f: $8d
    adc e                                         ; $4850: $8b
    adc e                                         ; $4851: $8b
    add e                                         ; $4852: $83
    add e                                         ; $4853: $83
    adc l                                         ; $4854: $8d
    adc e                                         ; $4855: $8b
    ld l, e                                       ; $4856: $6b
    ld l, h                                       ; $4857: $6c
    sub d                                         ; $4858: $92
    ld [hl], d                                    ; $4859: $72
    sub e                                         ; $485a: $93
    ld [hl], b                                    ; $485b: $70
    sub a                                         ; $485c: $97
    sbc b                                         ; $485d: $98
    ld e, l                                       ; $485e: $5d
    add l                                         ; $485f: $85
    ld a, e                                       ; $4860: $7b
    ld a, h                                       ; $4861: $7c
    push bc                                       ; $4862: $c5
    ld h, d                                       ; $4863: $62
    sub d                                         ; $4864: $92
    adc a                                         ; $4865: $8f
    ld b, $06                                     ; $4866: $06 $06
    ld c, $02                                     ; $4868: $0e $02
    ld a, [bc]                                    ; $486a: $0a
    rlca                                          ; $486b: $07
    rrca                                          ; $486c: $0f
    rrca                                          ; $486d: $0f
    ld [bc], a                                    ; $486e: $02
    rrca                                          ; $486f: $0f
    ld [bc], a                                    ; $4870: $02
    ld [bc], a                                    ; $4871: $02
    adc e                                         ; $4872: $8b
    ld [bc], a                                    ; $4873: $02
    ld a, [bc]                                    ; $4874: $0a
    ld a, [bc]                                    ; $4875: $0a
    ld l, c                                       ; $4876: $69
    ld l, d                                       ; $4877: $6a
    ld l, e                                       ; $4878: $6b
    ld l, h                                       ; $4879: $6c
    ld a, [hl]                                    ; $487a: $7e
    ld l, [hl]                                    ; $487b: $6e
    sub e                                         ; $487c: $93
    ld [hl], b                                    ; $487d: $70
    add d                                         ; $487e: $82
    add e                                         ; $487f: $83
    ld e, l                                       ; $4880: $5d
    add l                                         ; $4881: $85
    sub h                                         ; $4882: $94
    add [hl]                                      ; $4883: $86
    add a                                         ; $4884: $87
    ld h, d                                       ; $4885: $62
    rlca                                          ; $4886: $07
    rlca                                          ; $4887: $07
    rlca                                          ; $4888: $07
    ld [bc], a                                    ; $4889: $02
    rlca                                          ; $488a: $07
    ld [bc], a                                    ; $488b: $02
    ld a, [bc]                                    ; $488c: $0a
    ld [bc], a                                    ; $488d: $02
    ld a, [bc]                                    ; $488e: $0a
    ld a, [bc]                                    ; $488f: $0a
    rlca                                          ; $4890: $07
    rrca                                          ; $4891: $0f
    rrca                                          ; $4892: $0f
    ld a, [bc]                                    ; $4893: $0a
    rrca                                          ; $4894: $0f
    ld [bc], a                                    ; $4895: $02
    ld h, e                                       ; $4896: $63
    ld [hl], d                                    ; $4897: $72
    ld l, c                                       ; $4898: $69
    ld l, d                                       ; $4899: $6a
    sub a                                         ; $489a: $97
    sbc b                                         ; $489b: $98
    sbc c                                         ; $489c: $99
    sbc d                                         ; $489d: $9a
    ld a, e                                       ; $489e: $7b
    ld a, h                                       ; $489f: $7c
    ld e, [hl]                                    ; $48a0: $5e
    add e                                         ; $48a1: $83
    adc [hl]                                      ; $48a2: $8e
    adc a                                         ; $48a3: $8f
    sub h                                         ; $48a4: $94
    sub d                                         ; $48a5: $92
    rlca                                          ; $48a6: $07
    ld [bc], a                                    ; $48a7: $02
    ld [bc], a                                    ; $48a8: $02
    rlca                                          ; $48a9: $07
    ld a, [bc]                                    ; $48aa: $0a
    rrca                                          ; $48ab: $0f
    rrca                                          ; $48ac: $0f
    ld a, [bc]                                    ; $48ad: $0a
    ld [bc], a                                    ; $48ae: $02
    ld [bc], a                                    ; $48af: $02
    rlca                                          ; $48b0: $07
    rrca                                          ; $48b1: $0f
    ld a, [bc]                                    ; $48b2: $0a
    ld c, $0e                                     ; $48b3: $0e $0e
    rrca                                          ; $48b5: $0f
    pop de                                        ; $48b6: $d1
    pop de                                        ; $48b7: $d1
    ret z                                         ; $48b8: $c8

    ret                                           ; $48b9: $c9


    pop de                                        ; $48ba: $d1
    pop de                                        ; $48bb: $d1
    jp z, $d1d1                                   ; $48bc: $ca $d1 $d1

    pop de                                        ; $48bf: $d1
    set 2, c                                      ; $48c0: $cb $d1
    pop de                                        ; $48c2: $d1
    pop de                                        ; $48c3: $d1
    pop de                                        ; $48c4: $d1
    pop de                                        ; $48c5: $d1
    add e                                         ; $48c6: $83
    add e                                         ; $48c7: $83
    adc l                                         ; $48c8: $8d
    adc e                                         ; $48c9: $8b
    add e                                         ; $48ca: $83
    add e                                         ; $48cb: $83
    adc e                                         ; $48cc: $8b
    add l                                         ; $48cd: $85
    add e                                         ; $48ce: $83
    add e                                         ; $48cf: $83
    adc e                                         ; $48d0: $8b
    add e                                         ; $48d1: $83
    add e                                         ; $48d2: $83
    add e                                         ; $48d3: $83
    add e                                         ; $48d4: $83
    add e                                         ; $48d5: $83
    rst $00                                       ; $48d6: $c7
    call z, $cecd                                 ; $48d7: $cc $cd $ce
    ret                                           ; $48da: $c9


    pop de                                        ; $48db: $d1
    rst $08                                       ; $48dc: $cf
    ret nc                                        ; $48dd: $d0

    pop de                                        ; $48de: $d1
    pop de                                        ; $48df: $d1
    pop de                                        ; $48e0: $d1
    pop de                                        ; $48e1: $d1
    pop de                                        ; $48e2: $d1
    pop de                                        ; $48e3: $d1
    pop de                                        ; $48e4: $d1
    pop bc                                        ; $48e5: $c1
    adc e                                         ; $48e6: $8b
    adc e                                         ; $48e7: $8b
    adc e                                         ; $48e8: $8b
    adc e                                         ; $48e9: $8b
    adc e                                         ; $48ea: $8b
    add e                                         ; $48eb: $83
    adc e                                         ; $48ec: $8b
    adc e                                         ; $48ed: $8b
    add e                                         ; $48ee: $83
    add e                                         ; $48ef: $83
    add e                                         ; $48f0: $83
    adc l                                         ; $48f1: $8d
    add e                                         ; $48f2: $83
    add e                                         ; $48f3: $83
    add e                                         ; $48f4: $83
    adc l                                         ; $48f5: $8d
    adc c                                         ; $48f6: $89
    adc d                                         ; $48f7: $8a
    ld l, a                                       ; $48f8: $6f
    adc h                                         ; $48f9: $8c
    ld e, [hl]                                    ; $48fa: $5e
    ld e, a                                       ; $48fb: $5f
    ld l, b                                       ; $48fc: $68
    ld e, [hl]                                    ; $48fd: $5e
    jp nc, $9db1                                  ; $48fe: $d2 $b1 $9d

    xor b                                         ; $4901: $a8
    db $d3                                        ; $4902: $d3
    halt                                          ; $4903: $76
    or e                                          ; $4904: $b3
    xor h                                         ; $4905: $ac
    ld a, [bc]                                    ; $4906: $0a
    ld a, [bc]                                    ; $4907: $0a
    rlca                                          ; $4908: $07
    ld c, $02                                     ; $4909: $0e $02
    ld [bc], a                                    ; $490b: $02
    ld [bc], a                                    ; $490c: $02
    ld b, $8b                                     ; $490d: $06 $8b
    xor e                                         ; $490f: $ab
    xor e                                         ; $4910: $ab
    xor e                                         ; $4911: $ab
    adc e                                         ; $4912: $8b
    jp $abab                                      ; $4913: $c3 $ab $ab


    ld a, a                                       ; $4916: $7f
    add b                                         ; $4917: $80
    adc c                                         ; $4918: $89
    adc d                                         ; $4919: $8a
    ld e, a                                       ; $491a: $5f
    ld e, l                                       ; $491b: $5d
    ld h, a                                       ; $491c: $67
    adc l                                         ; $491d: $8d
    and a                                         ; $491e: $a7
    and [hl]                                      ; $491f: $a6
    and l                                         ; $4920: $a5
    sbc h                                         ; $4921: $9c
    xor e                                         ; $4922: $ab
    xor d                                         ; $4923: $aa
    xor c                                         ; $4924: $a9
    and b                                         ; $4925: $a0
    ld [bc], a                                    ; $4926: $02
    ld c, $0e                                     ; $4927: $0e $0e
    ld a, [bc]                                    ; $4929: $0a
    ld b, $06                                     ; $492a: $06 $06
    ld b, $0e                                     ; $492c: $06 $0e
    xor e                                         ; $492e: $ab
    xor e                                         ; $492f: $ab
    xor l                                         ; $4930: $ad
    xor e                                         ; $4931: $ab
    xor e                                         ; $4932: $ab
    xor e                                         ; $4933: $ab
    xor e                                         ; $4934: $ab
    xor e                                         ; $4935: $ab
    pop de                                        ; $4936: $d1
    pop de                                        ; $4937: $d1
    pop de                                        ; $4938: $d1
    pop de                                        ; $4939: $d1
    pop de                                        ; $493a: $d1
    pop de                                        ; $493b: $d1
    pop de                                        ; $493c: $d1
    pop de                                        ; $493d: $d1
    pop de                                        ; $493e: $d1
    pop de                                        ; $493f: $d1
    pop de                                        ; $4940: $d1
    pop de                                        ; $4941: $d1
    pop de                                        ; $4942: $d1
    pop de                                        ; $4943: $d1
    pop de                                        ; $4944: $d1
    pop de                                        ; $4945: $d1
    add e                                         ; $4946: $83
    add e                                         ; $4947: $83
    add e                                         ; $4948: $83
    add e                                         ; $4949: $83
    add e                                         ; $494a: $83
    add e                                         ; $494b: $83
    add e                                         ; $494c: $83
    add e                                         ; $494d: $83
    add e                                         ; $494e: $83
    add e                                         ; $494f: $83
    add e                                         ; $4950: $83
    add e                                         ; $4951: $83
    add e                                         ; $4952: $83
    add e                                         ; $4953: $83
    add e                                         ; $4954: $83
    add e                                         ; $4955: $83
    pop de                                        ; $4956: $d1
    pop de                                        ; $4957: $d1
    pop de                                        ; $4958: $d1
    jp $d1d1                                      ; $4959: $c3 $d1 $d1


    pop de                                        ; $495c: $d1
    pop de                                        ; $495d: $d1
    pop de                                        ; $495e: $d1
    pop de                                        ; $495f: $d1
    pop de                                        ; $4960: $d1
    pop de                                        ; $4961: $d1
    pop de                                        ; $4962: $d1
    pop de                                        ; $4963: $d1
    pop de                                        ; $4964: $d1
    pop de                                        ; $4965: $d1
    add e                                         ; $4966: $83
    add e                                         ; $4967: $83
    add e                                         ; $4968: $83
    adc l                                         ; $4969: $8d
    add e                                         ; $496a: $83
    add e                                         ; $496b: $83
    add e                                         ; $496c: $83
    add e                                         ; $496d: $83
    add e                                         ; $496e: $83
    add e                                         ; $496f: $83
    add e                                         ; $4970: $83
    add e                                         ; $4971: $83
    add e                                         ; $4972: $83
    add e                                         ; $4973: $83
    add e                                         ; $4974: $83
    add e                                         ; $4975: $83
    call nz, $b4b5                                ; $4976: $c4 $b5 $b4
    or b                                          ; $4979: $b0
    add $d4                                       ; $497a: $c6 $d4
    push de                                       ; $497c: $d5
    sub $c8                                       ; $497d: $d6 $c8
    rst $10                                       ; $497f: $d7
    ret c                                         ; $4980: $d8

    reti                                          ; $4981: $d9


    jp z, $dbda                                   ; $4982: $ca $da $db

    call c, $ab8d                                 ; $4985: $dc $8d $ab
    xor e                                         ; $4988: $ab
    xor e                                         ; $4989: $ab
    adc l                                         ; $498a: $8d
    xor e                                         ; $498b: $ab
    xor e                                         ; $498c: $ab
    xor e                                         ; $498d: $ab
    adc e                                         ; $498e: $8b
    xor e                                         ; $498f: $ab
    xor e                                         ; $4990: $ab
    xor e                                         ; $4991: $ab
    adc e                                         ; $4992: $8b
    xor e                                         ; $4993: $ab
    xor e                                         ; $4994: $ab
    xor e                                         ; $4995: $ab
    xor a                                         ; $4996: $af
    xor [hl]                                      ; $4997: $ae
    xor l                                         ; $4998: $ad
    and h                                         ; $4999: $a4
    db $dd                                        ; $499a: $dd
    sbc $df                                       ; $499b: $de $df
    ldh [$e1], a                                  ; $499d: $e0 $e1
    ld [c], a                                     ; $499f: $e2
    db $e3                                        ; $49a0: $e3
    db $e4                                        ; $49a1: $e4
    push hl                                       ; $49a2: $e5
    and $e7                                       ; $49a3: $e6 $e7
    add sp, -$55                                  ; $49a5: $e8 $ab
    xor e                                         ; $49a7: $ab
    xor e                                         ; $49a8: $ab
    xor e                                         ; $49a9: $ab
    xor e                                         ; $49aa: $ab
    xor l                                         ; $49ab: $ad
    xor e                                         ; $49ac: $ab
    xor e                                         ; $49ad: $ab
    xor l                                         ; $49ae: $ad
    xor e                                         ; $49af: $ab
    xor e                                         ; $49b0: $ab
    xor e                                         ; $49b1: $ab
    xor l                                         ; $49b2: $ad
    xor e                                         ; $49b3: $ab
    xor e                                         ; $49b4: $ab
    xor e                                         ; $49b5: $ab
    set 5, c                                      ; $49b6: $cb $e9
    ld [$d1eb], a                                 ; $49b8: $ea $eb $d1
    db $ec                                        ; $49bb: $ec
    db $ed                                        ; $49bc: $ed
    ret                                           ; $49bd: $c9


    pop de                                        ; $49be: $d1
    pop de                                        ; $49bf: $d1
    pop de                                        ; $49c0: $d1
    pop de                                        ; $49c1: $d1
    pop de                                        ; $49c2: $d1
    pop de                                        ; $49c3: $d1
    pop de                                        ; $49c4: $d1
    pop de                                        ; $49c5: $d1
    adc e                                         ; $49c6: $8b
    xor e                                         ; $49c7: $ab
    xor e                                         ; $49c8: $ab
    xor l                                         ; $49c9: $ad
    add e                                         ; $49ca: $83
    xor l                                         ; $49cb: $ad
    xor l                                         ; $49cc: $ad
    adc e                                         ; $49cd: $8b
    add e                                         ; $49ce: $83
    add l                                         ; $49cf: $85
    add e                                         ; $49d0: $83
    add e                                         ; $49d1: $83
    add e                                         ; $49d2: $83
    add e                                         ; $49d3: $83
    add e                                         ; $49d4: $83
    add e                                         ; $49d5: $83
    xor $d1                                       ; $49d6: $ee $d1
    rst $28                                       ; $49d8: $ef
    ldh a, [$d1]                                  ; $49d9: $f0 $d1
    pop de                                        ; $49db: $d1
    pop af                                        ; $49dc: $f1
    ld a, [c]                                     ; $49dd: $f2
    pop de                                        ; $49de: $d1
    pop de                                        ; $49df: $d1
    pop de                                        ; $49e0: $d1
    pop de                                        ; $49e1: $d1
    pop de                                        ; $49e2: $d1
    pop de                                        ; $49e3: $d1
    pop de                                        ; $49e4: $d1
    pop de                                        ; $49e5: $d1
    xor e                                         ; $49e6: $ab
    add e                                         ; $49e7: $83
    xor e                                         ; $49e8: $ab
    xor e                                         ; $49e9: $ab
    add e                                         ; $49ea: $83
    add e                                         ; $49eb: $83
    xor e                                         ; $49ec: $ab
    xor e                                         ; $49ed: $ab
    add e                                         ; $49ee: $83
    add e                                         ; $49ef: $83
    add e                                         ; $49f0: $83
    add e                                         ; $49f1: $83
    add e                                         ; $49f2: $83
    add e                                         ; $49f3: $83
    add e                                         ; $49f4: $83
    add e                                         ; $49f5: $83
    ld l, e                                       ; $49f6: $6b
    ld l, h                                       ; $49f7: $6c
    sub d                                         ; $49f8: $92
    ld [hl], d                                    ; $49f9: $72
    ld l, a                                       ; $49fa: $6f
    ld [hl], b                                    ; $49fb: $70
    sub a                                         ; $49fc: $97
    sbc b                                         ; $49fd: $98
    add h                                         ; $49fe: $84
    add l                                         ; $49ff: $85
    ld a, e                                       ; $4a00: $7b
    ld a, h                                       ; $4a01: $7c
    add a                                         ; $4a02: $87
    adc b                                         ; $4a03: $88
    adc [hl]                                      ; $4a04: $8e
    ld h, c                                       ; $4a05: $61
    ld [bc], a                                    ; $4a06: $02
    rlca                                          ; $4a07: $07
    ld c, $06                                     ; $4a08: $0e $06
    ld [bc], a                                    ; $4a0a: $02
    ld b, $0e                                     ; $4a0b: $06 $0e
    ld c, $0a                                     ; $4a0d: $0e $0a
    ld a, [bc]                                    ; $4a0f: $0a
    ld b, $06                                     ; $4a10: $06 $06
    ld a, [bc]                                    ; $4a12: $0a
    ld a, [bc]                                    ; $4a13: $0a
    ld a, [bc]                                    ; $4a14: $0a
    ld [bc], a                                    ; $4a15: $02
    ld l, c                                       ; $4a16: $69
    ld l, d                                       ; $4a17: $6a
    ld h, c                                       ; $4a18: $61
    ld l, h                                       ; $4a19: $6c
    ld a, [hl]                                    ; $4a1a: $7e
    ld l, [hl]                                    ; $4a1b: $6e
    sub e                                         ; $4a1c: $93
    ld [hl], b                                    ; $4a1d: $70
    add d                                         ; $4a1e: $82
    ld e, a                                       ; $4a1f: $5f
    add h                                         ; $4a20: $84
    add l                                         ; $4a21: $85
    sub h                                         ; $4a22: $94
    add [hl]                                      ; $4a23: $86
    ld h, c                                       ; $4a24: $61
    adc b                                         ; $4a25: $88
    ld [bc], a                                    ; $4a26: $02
    ld b, $06                                     ; $4a27: $06 $06
    ld b, $06                                     ; $4a29: $06 $06
    ld b, $0e                                     ; $4a2b: $06 $0e
    ld [bc], a                                    ; $4a2d: $02
    ld c, $06                                     ; $4a2e: $0e $06
    rrca                                          ; $4a30: $0f
    ld a, [bc]                                    ; $4a31: $0a
    ld a, [bc]                                    ; $4a32: $0a
    ld a, [bc]                                    ; $4a33: $0a
    ld b, $0e                                     ; $4a34: $06 $0e
    ld h, e                                       ; $4a36: $63
    ld [hl], d                                    ; $4a37: $72
    ld l, c                                       ; $4a38: $69
    sub d                                         ; $4a39: $92
    sub a                                         ; $4a3a: $97
    sbc b                                         ; $4a3b: $98
    sbc c                                         ; $4a3c: $99
    sbc d                                         ; $4a3d: $9a
    ld a, e                                       ; $4a3e: $7b
    ld e, l                                       ; $4a3f: $5d
    add d                                         ; $4a40: $82
    ld e, a                                       ; $4a41: $5f
    adc [hl]                                      ; $4a42: $8e
    adc a                                         ; $4a43: $8f
    sub h                                         ; $4a44: $94
    add [hl]                                      ; $4a45: $86
    ld [bc], a                                    ; $4a46: $02
    ld b, $06                                     ; $4a47: $06 $06
    ld a, [bc]                                    ; $4a49: $0a
    ld a, [bc]                                    ; $4a4a: $0a
    ld c, $0e                                     ; $4a4b: $0e $0e
    ld c, $06                                     ; $4a4d: $0e $06
    ld b, $0e                                     ; $4a4f: $06 $0e
    ld [bc], a                                    ; $4a51: $02
    rrca                                          ; $4a52: $0f
    ld c, $0e                                     ; $4a53: $0e $0e
    ld c, $61                                     ; $4a55: $0e $61
    ld h, d                                       ; $4a57: $62
    sub d                                         ; $4a58: $92
    ld [hl], d                                    ; $4a59: $72
    ld l, a                                       ; $4a5a: $6f
    ld [hl], b                                    ; $4a5b: $70
    sub a                                         ; $4a5c: $97
    sbc b                                         ; $4a5d: $98
    add h                                         ; $4a5e: $84
    add l                                         ; $4a5f: $85
    ld e, a                                       ; $4a60: $5f
    ld a, h                                       ; $4a61: $7c
    add a                                         ; $4a62: $87
    ld h, d                                       ; $4a63: $62
    adc [hl]                                      ; $4a64: $8e
    ld h, c                                       ; $4a65: $61
    ld [bc], a                                    ; $4a66: $02
    ld [bc], a                                    ; $4a67: $02
    ld a, [bc]                                    ; $4a68: $0a
    ld [bc], a                                    ; $4a69: $02
    ld [bc], a                                    ; $4a6a: $02
    ld [bc], a                                    ; $4a6b: $02
    ld a, [bc]                                    ; $4a6c: $0a
    ld a, [bc]                                    ; $4a6d: $0a
    ld a, [bc]                                    ; $4a6e: $0a
    ld a, [bc]                                    ; $4a6f: $0a
    ld b, $07                                     ; $4a70: $06 $07
    ld c, $02                                     ; $4a72: $0e $02
    ld a, [bc]                                    ; $4a74: $0a
    rlca                                          ; $4a75: $07
    adc e                                         ; $4a76: $8b
    adc h                                         ; $4a77: $8c
    ld a, a                                       ; $4a78: $7f
    add b                                         ; $4a79: $80
    ld l, b                                       ; $4a7a: $68
    ld e, [hl]                                    ; $4a7b: $5e
    ld e, a                                       ; $4a7c: $5f
    ld e, l                                       ; $4a7d: $5d
    sbc e                                         ; $4a7e: $9b
    or d                                          ; $4a7f: $b2
    or c                                          ; $4a80: $b1
    sbc l                                         ; $4a81: $9d
    sbc a                                         ; $4a82: $9f
    sbc [hl]                                      ; $4a83: $9e
    halt                                          ; $4a84: $76
    or e                                          ; $4a85: $b3
    rrca                                          ; $4a86: $0f
    rrca                                          ; $4a87: $0f
    rlca                                          ; $4a88: $07
    ld a, [bc]                                    ; $4a89: $0a
    ld [bc], a                                    ; $4a8a: $02
    ld [bc], a                                    ; $4a8b: $02
    ld [bc], a                                    ; $4a8c: $02
    ld [bc], a                                    ; $4a8d: $02
    xor e                                         ; $4a8e: $ab
    xor e                                         ; $4a8f: $ab
    xor e                                         ; $4a90: $ab
    xor e                                         ; $4a91: $ab
    xor e                                         ; $4a92: $ab
    xor e                                         ; $4a93: $ab
    jp $89ab                                      ; $4a94: $c3 $ab $89


    adc d                                         ; $4a97: $8a
    adc e                                         ; $4a98: $8b
    adc h                                         ; $4a99: $8c
    ld e, [hl]                                    ; $4a9a: $5e
    adc l                                         ; $4a9b: $8d
    ld l, b                                       ; $4a9c: $68
    add c                                         ; $4a9d: $81
    xor b                                         ; $4a9e: $a8
    sub [hl]                                      ; $4a9f: $96
    ld h, c                                       ; $4aa0: $61
    ld h, d                                       ; $4aa1: $62
    xor h                                         ; $4aa2: $ac
    di                                            ; $4aa3: $f3
    sbc [hl]                                      ; $4aa4: $9e
    sbc l                                         ; $4aa5: $9d
    rrca                                          ; $4aa6: $0f
    ld c, $0e                                     ; $4aa7: $0e $0e
    ld c, $07                                     ; $4aa9: $0e $07
    ld a, [bc]                                    ; $4aab: $0a
    ld [bc], a                                    ; $4aac: $02
    ld a, [bc]                                    ; $4aad: $0a
    xor e                                         ; $4aae: $ab
    xor e                                         ; $4aaf: $ab
    ld [bc], a                                    ; $4ab0: $02
    ld [bc], a                                    ; $4ab1: $02
    xor e                                         ; $4ab2: $ab
    adc e                                         ; $4ab3: $8b
    xor e                                         ; $4ab4: $ab
    bit 7, a                                      ; $4ab5: $cb $7f
    add b                                         ; $4ab7: $80
    ld a, [hl]                                    ; $4ab8: $7e
    adc d                                         ; $4ab9: $8a
    ld [hl], c                                    ; $4aba: $71
    ld h, b                                       ; $4abb: $60
    ld h, a                                       ; $4abc: $67
    adc l                                         ; $4abd: $8d
    ld h, e                                       ; $4abe: $63
    ld [hl], d                                    ; $4abf: $72
    ld l, c                                       ; $4ac0: $69
    ld l, d                                       ; $4ac1: $6a
    or c                                          ; $4ac2: $b1
    ld l, a                                       ; $4ac3: $6f
    sbc c                                         ; $4ac4: $99
    sbc d                                         ; $4ac5: $9a
    ld b, $0a                                     ; $4ac6: $06 $0a
    ld [bc], a                                    ; $4ac8: $02
    ld a, [bc]                                    ; $4ac9: $0a
    rlca                                          ; $4aca: $07
    ld [bc], a                                    ; $4acb: $02
    ld [bc], a                                    ; $4acc: $02
    ld a, [bc]                                    ; $4acd: $0a
    ld [bc], a                                    ; $4ace: $02
    ld [bc], a                                    ; $4acf: $02
    ld [bc], a                                    ; $4ad0: $02
    rlca                                          ; $4ad1: $07
    rlc d                                         ; $4ad2: $cb $02
    rrca                                          ; $4ad4: $0f
    rrca                                          ; $4ad5: $0f
    adc e                                         ; $4ad6: $8b
    adc h                                         ; $4ad7: $8c
    ld a, a                                       ; $4ad8: $7f
    add b                                         ; $4ad9: $80
    ld l, b                                       ; $4ada: $68
    add c                                         ; $4adb: $81
    ld [hl], c                                    ; $4adc: $71
    ld h, b                                       ; $4add: $60
    ld l, e                                       ; $4ade: $6b
    ld l, h                                       ; $4adf: $6c
    ld h, e                                       ; $4ae0: $63
    ld [hl], d                                    ; $4ae1: $72
    sub e                                         ; $4ae2: $93
    ld [hl], b                                    ; $4ae3: $70
    ld l, [hl]                                    ; $4ae4: $6e
    sub l                                         ; $4ae5: $95
    ld a, [bc]                                    ; $4ae6: $0a
    ld a, [bc]                                    ; $4ae7: $0a
    ld [bc], a                                    ; $4ae8: $02
    ld a, [bc]                                    ; $4ae9: $0a
    rlca                                          ; $4aea: $07
    rrca                                          ; $4aeb: $0f
    ld [bc], a                                    ; $4aec: $02
    ld [bc], a                                    ; $4aed: $02
    rlca                                          ; $4aee: $07
    ld [bc], a                                    ; $4aef: $02
    ld [bc], a                                    ; $4af0: $02
    ld [bc], a                                    ; $4af1: $02
    ld a, [bc]                                    ; $4af2: $0a
    ld [bc], a                                    ; $4af3: $02
    ld b, $8b                                     ; $4af4: $06 $8b
    and e                                         ; $4af6: $a3
    and d                                         ; $4af7: $a2
    or l                                          ; $4af8: $b5
    or h                                          ; $4af9: $b4
    db $f4                                        ; $4afa: $f4
    push af                                       ; $4afb: $f5
    call nc, $f6d5                                ; $4afc: $d4 $d5 $f6
    rst $30                                       ; $4aff: $f7
    rst $10                                       ; $4b00: $d7
    ret c                                         ; $4b01: $d8

    ld hl, sp-$07                                 ; $4b02: $f8 $f9
    jp c, $abdb                                   ; $4b04: $da $db $ab

    xor e                                         ; $4b07: $ab
    xor e                                         ; $4b08: $ab
    xor e                                         ; $4b09: $ab
    xor e                                         ; $4b0a: $ab
    xor e                                         ; $4b0b: $ab
    xor e                                         ; $4b0c: $ab
    xor e                                         ; $4b0d: $ab
    xor e                                         ; $4b0e: $ab
    xor e                                         ; $4b0f: $ab
    xor e                                         ; $4b10: $ab
    xor e                                         ; $4b11: $ab
    xor l                                         ; $4b12: $ad
    xor l                                         ; $4b13: $ad
    xor l                                         ; $4b14: $ad
    xor e                                         ; $4b15: $ab
    or b                                          ; $4b16: $b0
    ld a, [$a1a2]                                 ; $4b17: $fa $a2 $a1
    sub $fb                                       ; $4b1a: $d6 $fb
    push af                                       ; $4b1c: $f5
    db $fc                                        ; $4b1d: $fc
    reti                                          ; $4b1e: $d9


    db $fd                                        ; $4b1f: $fd
    rst $30                                       ; $4b20: $f7
    cp $dc                                        ; $4b21: $fe $dc
    push hl                                       ; $4b23: $e5
    ld sp, hl                                     ; $4b24: $f9
    rst $38                                       ; $4b25: $ff
    xor e                                         ; $4b26: $ab
    adc e                                         ; $4b27: $8b
    xor e                                         ; $4b28: $ab
    xor e                                         ; $4b29: $ab
    xor e                                         ; $4b2a: $ab
    adc e                                         ; $4b2b: $8b
    xor e                                         ; $4b2c: $ab
    xor e                                         ; $4b2d: $ab
    xor e                                         ; $4b2e: $ab
    adc l                                         ; $4b2f: $8d
    xor e                                         ; $4b30: $ab
    xor e                                         ; $4b31: $ab
    xor e                                         ; $4b32: $ab
    xor l                                         ; $4b33: $ad
    xor e                                         ; $4b34: $ab
    xor e                                         ; $4b35: $ab
    sub [hl]                                      ; $4b36: $96
    ld e, l                                       ; $4b37: $5d
    ld e, [hl]                                    ; $4b38: $5e
    ld e, a                                       ; $4b39: $5f
    sub d                                         ; $4b3a: $92
    ld h, c                                       ; $4b3b: $61
    sub h                                         ; $4b3c: $94
    add [hl]                                      ; $4b3d: $86
    nop                                           ; $4b3e: $00
    ld l, a                                       ; $4b3f: $6f
    ld a, [hl]                                    ; $4b40: $7e
    adc d                                         ; $4b41: $8a
    ld e, a                                       ; $4b42: $5f
    ld h, b                                       ; $4b43: $60
    ld h, a                                       ; $4b44: $67
    adc l                                         ; $4b45: $8d
    xor e                                         ; $4b46: $ab
    ld [bc], a                                    ; $4b47: $02
    ld [bc], a                                    ; $4b48: $02
    ld [bc], a                                    ; $4b49: $02
    ld a, [bc]                                    ; $4b4a: $0a
    rlca                                          ; $4b4b: $07
    ld a, [bc]                                    ; $4b4c: $0a
    ld c, $ab                                     ; $4b4d: $0e $ab
    ld [bc], a                                    ; $4b4f: $02
    rlca                                          ; $4b50: $07
    ld c, $02                                     ; $4b51: $0e $02
    ld [bc], a                                    ; $4b53: $02
    ld [bc], a                                    ; $4b54: $02
    rrca                                          ; $4b55: $0f
    add h                                         ; $4b56: $84
    add l                                         ; $4b57: $85
    ld a, e                                       ; $4b58: $7b
    sub [hl]                                      ; $4b59: $96
    add a                                         ; $4b5a: $87
    adc b                                         ; $4b5b: $88
    adc [hl]                                      ; $4b5c: $8e
    ld h, c                                       ; $4b5d: $61
    adc e                                         ; $4b5e: $8b
    ld a, [hl]                                    ; $4b5f: $7e
    ld l, [hl]                                    ; $4b60: $6e
    nop                                           ; $4b61: $00
    ld l, b                                       ; $4b62: $68
    add c                                         ; $4b63: $81
    ld [hl], c                                    ; $4b64: $71
    ld e, l                                       ; $4b65: $5d
    ld a, [bc]                                    ; $4b66: $0a
    ld c, $02                                     ; $4b67: $0e $02
    adc e                                         ; $4b69: $8b
    ld c, $0a                                     ; $4b6a: $0e $0a
    rrca                                          ; $4b6c: $0f
    ld [bc], a                                    ; $4b6d: $02
    ld a, [bc]                                    ; $4b6e: $0a
    rlca                                          ; $4b6f: $07
    ld [bc], a                                    ; $4b70: $02
    adc e                                         ; $4b71: $8b
    rlca                                          ; $4b72: $07
    ld a, [bc]                                    ; $4b73: $0a
    ld [bc], a                                    ; $4b74: $02
    ld [bc], a                                    ; $4b75: $02
    ld bc, $e902                                  ; $4b76: $01 $02 $e9
    ld [$0403], a                                 ; $4b79: $ea $03 $04
    db $ec                                        ; $4b7c: $ec
    db $ed                                        ; $4b7d: $ed
    pop de                                        ; $4b7e: $d1
    pop de                                        ; $4b7f: $d1
    pop de                                        ; $4b80: $d1
    pop de                                        ; $4b81: $d1
    pop de                                        ; $4b82: $d1
    pop de                                        ; $4b83: $d1
    pop de                                        ; $4b84: $d1
    pop de                                        ; $4b85: $d1
    xor l                                         ; $4b86: $ad
    xor l                                         ; $4b87: $ad
    xor l                                         ; $4b88: $ad
    xor e                                         ; $4b89: $ab
    xor l                                         ; $4b8a: $ad
    xor l                                         ; $4b8b: $ad
    xor l                                         ; $4b8c: $ad
    xor e                                         ; $4b8d: $ab
    add e                                         ; $4b8e: $83
    add e                                         ; $4b8f: $83
    add e                                         ; $4b90: $83
    add e                                         ; $4b91: $83
    add e                                         ; $4b92: $83
    add e                                         ; $4b93: $83
    add e                                         ; $4b94: $83
    add e                                         ; $4b95: $83
    db $eb                                        ; $4b96: $eb
    xor $02                                       ; $4b97: $ee $02
    dec b                                         ; $4b99: $05
    ret                                           ; $4b9a: $c9


    pop de                                        ; $4b9b: $d1
    ld b, $07                                     ; $4b9c: $06 $07
    pop de                                        ; $4b9e: $d1
    pop de                                        ; $4b9f: $d1
    pop de                                        ; $4ba0: $d1
    ld [$d1d1], sp                                ; $4ba1: $08 $d1 $d1
    pop de                                        ; $4ba4: $d1
    pop de                                        ; $4ba5: $d1
    xor l                                         ; $4ba6: $ad
    xor e                                         ; $4ba7: $ab
    xor l                                         ; $4ba8: $ad
    xor e                                         ; $4ba9: $ab
    adc l                                         ; $4baa: $8d
    add e                                         ; $4bab: $83
    xor l                                         ; $4bac: $ad
    xor e                                         ; $4bad: $ab
    add e                                         ; $4bae: $83
    add e                                         ; $4baf: $83
    add e                                         ; $4bb0: $83
    xor l                                         ; $4bb1: $ad
    add e                                         ; $4bb2: $83
    add e                                         ; $4bb3: $83
    add e                                         ; $4bb4: $83
    adc l                                         ; $4bb5: $8d
    add hl, bc                                    ; $4bb6: $09
    ld [hl], d                                    ; $4bb7: $72
    ld l, c                                       ; $4bb8: $69
    ld l, d                                       ; $4bb9: $6a
    ld a, [bc]                                    ; $4bba: $0a
    sbc b                                         ; $4bbb: $98
    sbc c                                         ; $4bbc: $99
    sbc d                                         ; $4bbd: $9a
    dec bc                                        ; $4bbe: $0b
    ld a, h                                       ; $4bbf: $7c
    add d                                         ; $4bc0: $82
    add e                                         ; $4bc1: $83
    inc c                                         ; $4bc2: $0c
    adc a                                         ; $4bc3: $8f
    sub h                                         ; $4bc4: $94
    add [hl]                                      ; $4bc5: $86
    xor e                                         ; $4bc6: $ab
    ld [bc], a                                    ; $4bc7: $02
    rlca                                          ; $4bc8: $07
    rlca                                          ; $4bc9: $07
    xor e                                         ; $4bca: $ab
    rrca                                          ; $4bcb: $0f
    rrca                                          ; $4bcc: $0f
    ld a, [bc]                                    ; $4bcd: $0a
    xor l                                         ; $4bce: $ad
    rlca                                          ; $4bcf: $07
    rrca                                          ; $4bd0: $0f
    rrca                                          ; $4bd1: $0f
    adc e                                         ; $4bd2: $8b
    ld a, [bc]                                    ; $4bd3: $0a
    ld c, $0e                                     ; $4bd4: $0e $0e
    ld l, e                                       ; $4bd6: $6b
    ld l, h                                       ; $4bd7: $6c
    ld h, e                                       ; $4bd8: $63
    add hl, bc                                    ; $4bd9: $09
    sub e                                         ; $4bda: $93
    ld [hl], b                                    ; $4bdb: $70
    sub a                                         ; $4bdc: $97
    ld a, [bc]                                    ; $4bdd: $0a
    add h                                         ; $4bde: $84
    add l                                         ; $4bdf: $85
    ld a, e                                       ; $4be0: $7b
    dec bc                                        ; $4be1: $0b
    ld h, c                                       ; $4be2: $61
    ld h, d                                       ; $4be3: $62
    sub d                                         ; $4be4: $92
    jp nc, Jump_000_0207                          ; $4be5: $d2 $07 $02

    ld b, $8b                                     ; $4be8: $06 $8b
    ld a, [bc]                                    ; $4bea: $0a
    rlca                                          ; $4beb: $07
    ld c, $8b                                     ; $4bec: $0e $8b
    rrca                                          ; $4bee: $0f
    ld a, [bc]                                    ; $4bef: $0a
    ld [bc], a                                    ; $4bf0: $02
    adc e                                         ; $4bf1: $8b
    ld [bc], a                                    ; $4bf2: $02
    ld [bc], a                                    ; $4bf3: $02
    ld a, [bc]                                    ; $4bf4: $0a
    xor e                                         ; $4bf5: $ab
    ld l, c                                       ; $4bf6: $69
    ld l, d                                       ; $4bf7: $6a
    ld l, e                                       ; $4bf8: $6b
    ld h, d                                       ; $4bf9: $62
    sbc c                                         ; $4bfa: $99
    ld l, [hl]                                    ; $4bfb: $6e
    sub e                                         ; $4bfc: $93
    ld [hl], b                                    ; $4bfd: $70
    ld e, [hl]                                    ; $4bfe: $5e
    add e                                         ; $4bff: $83
    add h                                         ; $4c00: $84
    add l                                         ; $4c01: $85
    sub h                                         ; $4c02: $94
    add [hl]                                      ; $4c03: $86
    add a                                         ; $4c04: $87
    adc b                                         ; $4c05: $88
    ld [bc], a                                    ; $4c06: $02
    ld [bc], a                                    ; $4c07: $02
    rlca                                          ; $4c08: $07
    rlca                                          ; $4c09: $07
    ld c, $06                                     ; $4c0a: $0e $06
    rrca                                          ; $4c0c: $0f
    ld [bc], a                                    ; $4c0d: $02
    ld [bc], a                                    ; $4c0e: $02
    ld a, [bc]                                    ; $4c0f: $0a
    ld c, $0a                                     ; $4c10: $0e $0a
    ld c, $0e                                     ; $4c12: $0e $0e
    rrca                                          ; $4c14: $0f
    rrca                                          ; $4c15: $0f
    ld h, e                                       ; $4c16: $63
    ld h, c                                       ; $4c17: $61
    ld l, c                                       ; $4c18: $69
    ld l, d                                       ; $4c19: $6a
    sub a                                         ; $4c1a: $97
    sbc b                                         ; $4c1b: $98
    sbc c                                         ; $4c1c: $99
    ld l, [hl]                                    ; $4c1d: $6e
    ld a, e                                       ; $4c1e: $7b
    ld a, h                                       ; $4c1f: $7c
    ld e, [hl]                                    ; $4c20: $5e
    add e                                         ; $4c21: $83
    sub d                                         ; $4c22: $92
    adc a                                         ; $4c23: $8f
    sub h                                         ; $4c24: $94
    add [hl]                                      ; $4c25: $86
    ld [bc], a                                    ; $4c26: $02
    ld [bc], a                                    ; $4c27: $02
    ld [bc], a                                    ; $4c28: $02
    ld [bc], a                                    ; $4c29: $02
    ld c, $0e                                     ; $4c2a: $0e $0e
    rrca                                          ; $4c2c: $0f
    rlca                                          ; $4c2d: $07
    ld [bc], a                                    ; $4c2e: $02
    ld [bc], a                                    ; $4c2f: $02
    ld [bc], a                                    ; $4c30: $02
    rrca                                          ; $4c31: $0f
    rrca                                          ; $4c32: $0f
    ld a, [bc]                                    ; $4c33: $0a
    rrca                                          ; $4c34: $0f
    ld a, [bc]                                    ; $4c35: $0a
    ld h, c                                       ; $4c36: $61
    ld l, h                                       ; $4c37: $6c
    ld h, e                                       ; $4c38: $63
    ld h, c                                       ; $4c39: $61
    sub e                                         ; $4c3a: $93
    ld [hl], b                                    ; $4c3b: $70
    ld l, [hl]                                    ; $4c3c: $6e
    sbc b                                         ; $4c3d: $98
    add h                                         ; $4c3e: $84
    ld e, [hl]                                    ; $4c3f: $5e
    ld a, e                                       ; $4c40: $7b
    ld e, l                                       ; $4c41: $5d
    add a                                         ; $4c42: $87
    adc b                                         ; $4c43: $88
    sub d                                         ; $4c44: $92
    adc a                                         ; $4c45: $8f
    rlca                                          ; $4c46: $07
    rlca                                          ; $4c47: $07
    ld [bc], a                                    ; $4c48: $02
    rlca                                          ; $4c49: $07
    rrca                                          ; $4c4a: $0f
    ld [bc], a                                    ; $4c4b: $02
    ld [bc], a                                    ; $4c4c: $02
    ld a, [bc]                                    ; $4c4d: $0a
    rrca                                          ; $4c4e: $0f
    ld [bc], a                                    ; $4c4f: $02
    ld [bc], a                                    ; $4c50: $02
    ld b, $0a                                     ; $4c51: $06 $0a
    ld c, $0a                                     ; $4c53: $0e $0a
    rrca                                          ; $4c55: $0f
    ld l, c                                       ; $4c56: $69
    ld l, d                                       ; $4c57: $6a
    ld l, e                                       ; $4c58: $6b
    ld h, d                                       ; $4c59: $62
    sbc c                                         ; $4c5a: $99
    sbc d                                         ; $4c5b: $9a
    ld l, a                                       ; $4c5c: $6f
    nop                                           ; $4c5d: $00
    add d                                         ; $4c5e: $82
    add e                                         ; $4c5f: $83
    add h                                         ; $4c60: $84
    ld e, [hl]                                    ; $4c61: $5e
    sub h                                         ; $4c62: $94
    add [hl]                                      ; $4c63: $86
    add a                                         ; $4c64: $87
    add hl, bc                                    ; $4c65: $09
    rlca                                          ; $4c66: $07
    ld [bc], a                                    ; $4c67: $02
    ld [bc], a                                    ; $4c68: $02
    ld [bc], a                                    ; $4c69: $02
    ld a, [bc]                                    ; $4c6a: $0a
    rrca                                          ; $4c6b: $0f
    ld [bc], a                                    ; $4c6c: $02
    adc e                                         ; $4c6d: $8b
    rrca                                          ; $4c6e: $0f
    ld c, $0a                                     ; $4c6f: $0e $0a
    ld [bc], a                                    ; $4c71: $02
    ld a, [bc]                                    ; $4c72: $0a
    ld a, [bc]                                    ; $4c73: $0a
    ld a, [bc]                                    ; $4c74: $0a
    adc e                                         ; $4c75: $8b
    adc c                                         ; $4c76: $89
    adc d                                         ; $4c77: $8a
    ld l, a                                       ; $4c78: $6f
    adc h                                         ; $4c79: $8c
    ld h, a                                       ; $4c7a: $67
    ld e, a                                       ; $4c7b: $5f
    ld l, b                                       ; $4c7c: $68
    ld e, [hl]                                    ; $4c7d: $5e
    ld h, d                                       ; $4c7e: $62
    sub d                                         ; $4c7f: $92
    sub [hl]                                      ; $4c80: $96
    xor b                                         ; $4c81: $a8
    sbc l                                         ; $4c82: $9d
    sbc [hl]                                      ; $4c83: $9e
    di                                            ; $4c84: $f3
    xor h                                         ; $4c85: $ac
    rrca                                          ; $4c86: $0f
    ld c, $02                                     ; $4c87: $0e $02
    ld a, [bc]                                    ; $4c89: $0a
    ld [bc], a                                    ; $4c8a: $02
    ld [bc], a                                    ; $4c8b: $02
    ld [bc], a                                    ; $4c8c: $02
    ld [bc], a                                    ; $4c8d: $02
    ld [bc], a                                    ; $4c8e: $02
    ld a, [bc]                                    ; $4c8f: $0a
    adc e                                         ; $4c90: $8b
    adc e                                         ; $4c91: $8b
    db $eb                                        ; $4c92: $eb
    adc e                                         ; $4c93: $8b
    xor e                                         ; $4c94: $ab
    adc e                                         ; $4c95: $8b
    ld a, a                                       ; $4c96: $7f
    ld l, a                                       ; $4c97: $6f
    adc c                                         ; $4c98: $89
    adc d                                         ; $4c99: $8a
    ld e, a                                       ; $4c9a: $5f
    ld h, b                                       ; $4c9b: $60
    ld e, [hl]                                    ; $4c9c: $5e
    ld e, a                                       ; $4c9d: $5f
    sbc l                                         ; $4c9e: $9d
    or c                                          ; $4c9f: $b1
    or d                                          ; $4ca0: $b2
    sbc e                                         ; $4ca1: $9b
    or e                                          ; $4ca2: $b3
    halt                                          ; $4ca3: $76
    sbc [hl]                                      ; $4ca4: $9e
    sbc a                                         ; $4ca5: $9f
    ld b, $06                                     ; $4ca6: $06 $06
    ld c, $0a                                     ; $4ca8: $0e $0a
    ld [bc], a                                    ; $4caa: $02
    ld [bc], a                                    ; $4cab: $02
    ld [bc], a                                    ; $4cac: $02
    ld [bc], a                                    ; $4cad: $02
    adc e                                         ; $4cae: $8b
    adc e                                         ; $4caf: $8b
    adc e                                         ; $4cb0: $8b
    adc e                                         ; $4cb1: $8b
    adc e                                         ; $4cb2: $8b
    db $e3                                        ; $4cb3: $e3
    adc e                                         ; $4cb4: $8b
    adc e                                         ; $4cb5: $8b
    adc e                                         ; $4cb6: $8b
    ld a, [hl]                                    ; $4cb7: $7e
    ld a, a                                       ; $4cb8: $7f
    ld l, a                                       ; $4cb9: $6f
    ld e, l                                       ; $4cba: $5d
    ld e, [hl]                                    ; $4cbb: $5e
    ld e, a                                       ; $4cbc: $5f
    ld h, b                                       ; $4cbd: $60
    sbc h                                         ; $4cbe: $9c
    and l                                         ; $4cbf: $a5
    and [hl]                                      ; $4cc0: $a6
    and a                                         ; $4cc1: $a7
    and b                                         ; $4cc2: $a0
    xor c                                         ; $4cc3: $a9
    xor d                                         ; $4cc4: $aa
    xor e                                         ; $4cc5: $ab
    ld a, [bc]                                    ; $4cc6: $0a
    rlca                                          ; $4cc7: $07
    rlca                                          ; $4cc8: $07
    ld [bc], a                                    ; $4cc9: $02
    rlca                                          ; $4cca: $07
    ld [bc], a                                    ; $4ccb: $02
    ld [bc], a                                    ; $4ccc: $02
    ld [bc], a                                    ; $4ccd: $02
    adc e                                         ; $4cce: $8b
    adc e                                         ; $4ccf: $8b
    adc e                                         ; $4cd0: $8b
    adc e                                         ; $4cd1: $8b
    adc e                                         ; $4cd2: $8b
    adc e                                         ; $4cd3: $8b
    adc l                                         ; $4cd4: $8d
    adc e                                         ; $4cd5: $8b
    adc c                                         ; $4cd6: $89
    adc d                                         ; $4cd7: $8a
    ld l, a                                       ; $4cd8: $6f
    ld a, [bc]                                    ; $4cd9: $0a
    ld e, [hl]                                    ; $4cda: $5e
    ld e, a                                       ; $4cdb: $5f
    ld e, l                                       ; $4cdc: $5d
    dec bc                                        ; $4cdd: $0b
    xor b                                         ; $4cde: $a8
    sbc l                                         ; $4cdf: $9d
    or c                                          ; $4ce0: $b1
    jp nc, $b3ac                                  ; $4ce1: $d2 $ac $b3

    halt                                          ; $4ce4: $76
    db $d3                                        ; $4ce5: $d3
    ld a, [bc]                                    ; $4ce6: $0a
    ld a, [bc]                                    ; $4ce7: $0a
    ld [bc], a                                    ; $4ce8: $02
    adc e                                         ; $4ce9: $8b
    ld [bc], a                                    ; $4cea: $02
    ld [bc], a                                    ; $4ceb: $02
    ld [bc], a                                    ; $4cec: $02
    adc e                                         ; $4ced: $8b
    adc e                                         ; $4cee: $8b
    adc e                                         ; $4cef: $8b
    adc e                                         ; $4cf0: $8b
    xor e                                         ; $4cf1: $ab
    adc e                                         ; $4cf2: $8b
    adc e                                         ; $4cf3: $8b
    db $e3                                        ; $4cf4: $e3
    xor e                                         ; $4cf5: $ab
    and c                                         ; $4cf6: $a1
    and d                                         ; $4cf7: $a2
    ld a, [$fcb0]                                 ; $4cf8: $fa $b0 $fc
    push af                                       ; $4cfb: $f5
    ei                                            ; $4cfc: $fb
    sub $fe                                       ; $4cfd: $d6 $fe
    rst $30                                       ; $4cff: $f7
    db $fd                                        ; $4d00: $fd
    reti                                          ; $4d01: $d9


    rst $38                                       ; $4d02: $ff
    ld sp, hl                                     ; $4d03: $f9
    push hl                                       ; $4d04: $e5
    call c, $8b8b                                 ; $4d05: $dc $8b $8b
    adc e                                         ; $4d08: $8b
    adc e                                         ; $4d09: $8b
    adc e                                         ; $4d0a: $8b
    adc e                                         ; $4d0b: $8b
    xor l                                         ; $4d0c: $ad
    adc e                                         ; $4d0d: $8b
    adc e                                         ; $4d0e: $8b
    adc e                                         ; $4d0f: $8b
    xor l                                         ; $4d10: $ad
    adc e                                         ; $4d11: $8b
    adc e                                         ; $4d12: $8b
    adc e                                         ; $4d13: $8b
    adc l                                         ; $4d14: $8d
    adc e                                         ; $4d15: $8b
    or h                                          ; $4d16: $b4
    or l                                          ; $4d17: $b5
    and d                                         ; $4d18: $a2
    and e                                         ; $4d19: $a3
    push de                                       ; $4d1a: $d5
    call nc, $f4f5                                ; $4d1b: $d4 $f5 $f4
    ret c                                         ; $4d1e: $d8

    rst $10                                       ; $4d1f: $d7
    rst $30                                       ; $4d20: $f7
    or $db                                        ; $4d21: $f6 $db
    jp c, $f8f9                                   ; $4d23: $da $f9 $f8

    adc e                                         ; $4d26: $8b
    adc e                                         ; $4d27: $8b
    adc e                                         ; $4d28: $8b
    adc e                                         ; $4d29: $8b
    adc e                                         ; $4d2a: $8b
    adc e                                         ; $4d2b: $8b
    adc l                                         ; $4d2c: $8d
    adc e                                         ; $4d2d: $8b
    adc e                                         ; $4d2e: $8b
    adc e                                         ; $4d2f: $8b
    adc l                                         ; $4d30: $8d
    adc e                                         ; $4d31: $8b
    adc e                                         ; $4d32: $8b
    adc e                                         ; $4d33: $8b
    adc l                                         ; $4d34: $8d
    adc e                                         ; $4d35: $8b
    and h                                         ; $4d36: $a4
    xor l                                         ; $4d37: $ad
    xor [hl]                                      ; $4d38: $ae
    xor a                                         ; $4d39: $af
    ldh [$df], a                                  ; $4d3a: $e0 $df
    sbc $dd                                       ; $4d3c: $de $dd
    db $e4                                        ; $4d3e: $e4
    db $e3                                        ; $4d3f: $e3
    ld [c], a                                     ; $4d40: $e2
    pop hl                                        ; $4d41: $e1
    add sp, -$19                                  ; $4d42: $e8 $e7
    and $e5                                       ; $4d44: $e6 $e5
    adc e                                         ; $4d46: $8b
    adc e                                         ; $4d47: $8b
    adc l                                         ; $4d48: $8d
    adc e                                         ; $4d49: $8b
    adc e                                         ; $4d4a: $8b
    adc e                                         ; $4d4b: $8b
    adc e                                         ; $4d4c: $8b
    adc l                                         ; $4d4d: $8d
    adc e                                         ; $4d4e: $8b
    adc e                                         ; $4d4f: $8b
    adc e                                         ; $4d50: $8b
    adc l                                         ; $4d51: $8d
    adc e                                         ; $4d52: $8b
    adc e                                         ; $4d53: $8b
    adc e                                         ; $4d54: $8b
    adc e                                         ; $4d55: $8b
    or b                                          ; $4d56: $b0
    or h                                          ; $4d57: $b4
    or l                                          ; $4d58: $b5
    call nz, $d5d6                                ; $4d59: $c4 $d6 $d5
    call nc, $d9c6                                ; $4d5c: $d4 $c6 $d9
    ret c                                         ; $4d5f: $d8

    rst $10                                       ; $4d60: $d7
    ret z                                         ; $4d61: $c8

    call c, $dadb                                 ; $4d62: $dc $db $da
    jp z, $8b8b                                   ; $4d65: $ca $8b $8b

    adc e                                         ; $4d68: $8b
    xor e                                         ; $4d69: $ab
    adc e                                         ; $4d6a: $8b
    adc e                                         ; $4d6b: $8b
    adc e                                         ; $4d6c: $8b
    xor e                                         ; $4d6d: $ab
    adc e                                         ; $4d6e: $8b
    adc e                                         ; $4d6f: $8b
    adc e                                         ; $4d70: $8b
    xor e                                         ; $4d71: $ab
    adc l                                         ; $4d72: $8d
    adc e                                         ; $4d73: $8b
    adc e                                         ; $4d74: $8b
    xor e                                         ; $4d75: $ab
    dec b                                         ; $4d76: $05
    ld [bc], a                                    ; $4d77: $02
    xor $eb                                       ; $4d78: $ee $eb
    rlca                                          ; $4d7a: $07
    ld b, $d1                                     ; $4d7b: $06 $d1
    ret                                           ; $4d7d: $c9


    ld [$d1d1], sp                                ; $4d7e: $08 $d1 $d1
    pop de                                        ; $4d81: $d1
    pop de                                        ; $4d82: $d1
    pop de                                        ; $4d83: $d1
    pop de                                        ; $4d84: $d1
    pop de                                        ; $4d85: $d1
    adc e                                         ; $4d86: $8b
    adc e                                         ; $4d87: $8b
    adc e                                         ; $4d88: $8b
    adc l                                         ; $4d89: $8d
    adc e                                         ; $4d8a: $8b
    adc e                                         ; $4d8b: $8b
    add e                                         ; $4d8c: $83
    xor e                                         ; $4d8d: $ab
    adc e                                         ; $4d8e: $8b
    add e                                         ; $4d8f: $83
    add e                                         ; $4d90: $83
    add e                                         ; $4d91: $83
    xor l                                         ; $4d92: $ad
    add e                                         ; $4d93: $83
    add e                                         ; $4d94: $83
    add e                                         ; $4d95: $83
    ld [$02e9], a                                 ; $4d96: $ea $e9 $02
    ld bc, $eced                                  ; $4d99: $01 $ed $ec
    inc b                                         ; $4d9c: $04
    inc bc                                        ; $4d9d: $03
    pop de                                        ; $4d9e: $d1
    pop de                                        ; $4d9f: $d1
    pop de                                        ; $4da0: $d1
    pop de                                        ; $4da1: $d1
    pop de                                        ; $4da2: $d1
    pop de                                        ; $4da3: $d1
    pop de                                        ; $4da4: $d1
    pop de                                        ; $4da5: $d1
    adc e                                         ; $4da6: $8b
    adc e                                         ; $4da7: $8b
    adc e                                         ; $4da8: $8b
    adc l                                         ; $4da9: $8d
    adc l                                         ; $4daa: $8d
    adc e                                         ; $4dab: $8b
    adc e                                         ; $4dac: $8b
    adc l                                         ; $4dad: $8d
    add e                                         ; $4dae: $83
    add e                                         ; $4daf: $83
    add e                                         ; $4db0: $83
    add e                                         ; $4db1: $83
    add e                                         ; $4db2: $83
    add e                                         ; $4db3: $83
    add e                                         ; $4db4: $83
    add e                                         ; $4db5: $83
    ldh a, [$ef]                                  ; $4db6: $f0 $ef
    pop de                                        ; $4db8: $d1
    xor $f2                                       ; $4db9: $ee $f2
    pop af                                        ; $4dbb: $f1
    pop de                                        ; $4dbc: $d1
    pop de                                        ; $4dbd: $d1
    pop de                                        ; $4dbe: $d1
    pop de                                        ; $4dbf: $d1
    pop de                                        ; $4dc0: $d1
    pop de                                        ; $4dc1: $d1
    pop de                                        ; $4dc2: $d1
    pop de                                        ; $4dc3: $d1
    pop de                                        ; $4dc4: $d1
    pop de                                        ; $4dc5: $d1
    adc e                                         ; $4dc6: $8b
    adc e                                         ; $4dc7: $8b
    add e                                         ; $4dc8: $83
    adc e                                         ; $4dc9: $8b
    adc l                                         ; $4dca: $8d
    adc e                                         ; $4dcb: $8b
    add e                                         ; $4dcc: $83
    add e                                         ; $4dcd: $83
    add e                                         ; $4dce: $83
    add e                                         ; $4dcf: $83
    add e                                         ; $4dd0: $83
    add e                                         ; $4dd1: $83
    add e                                         ; $4dd2: $83
    add e                                         ; $4dd3: $83
    add e                                         ; $4dd4: $83
    add e                                         ; $4dd5: $83
    db $eb                                        ; $4dd6: $eb
    ld [$cbe9], a                                 ; $4dd7: $ea $e9 $cb
    ret                                           ; $4dda: $c9


    db $ed                                        ; $4ddb: $ed
    db $ec                                        ; $4ddc: $ec
    pop de                                        ; $4ddd: $d1
    pop de                                        ; $4dde: $d1
    pop de                                        ; $4ddf: $d1
    pop de                                        ; $4de0: $d1
    pop de                                        ; $4de1: $d1
    pop de                                        ; $4de2: $d1
    pop de                                        ; $4de3: $d1
    pop de                                        ; $4de4: $d1
    pop de                                        ; $4de5: $d1
    adc l                                         ; $4de6: $8d
    adc e                                         ; $4de7: $8b
    adc e                                         ; $4de8: $8b
    xor e                                         ; $4de9: $ab
    xor e                                         ; $4dea: $ab
    adc e                                         ; $4deb: $8b
    adc e                                         ; $4dec: $8b
    add e                                         ; $4ded: $83
    add e                                         ; $4dee: $83
    add e                                         ; $4def: $83
    add e                                         ; $4df0: $83
    add e                                         ; $4df1: $83
    add e                                         ; $4df2: $83
    add e                                         ; $4df3: $83
    add e                                         ; $4df4: $83
    add e                                         ; $4df5: $83
    db $fc                                        ; $4df6: $fc
    push af                                       ; $4df7: $f5
    db $f4                                        ; $4df8: $f4
    ldh [$fe], a                                  ; $4df9: $e0 $fe
    rst $30                                       ; $4dfb: $f7
    or $e4                                        ; $4dfc: $f6 $e4
    rst $38                                       ; $4dfe: $ff
    ld sp, hl                                     ; $4dff: $f9
    ld hl, sp-$18                                 ; $4e00: $f8 $e8
    dec b                                         ; $4e02: $05
    ld [bc], a                                    ; $4e03: $02
    ld bc, $8bf0                                  ; $4e04: $01 $f0 $8b
    adc e                                         ; $4e07: $8b
    adc e                                         ; $4e08: $8b
    adc e                                         ; $4e09: $8b
    adc e                                         ; $4e0a: $8b
    adc e                                         ; $4e0b: $8b
    adc e                                         ; $4e0c: $8b
    adc e                                         ; $4e0d: $8b
    adc e                                         ; $4e0e: $8b
    adc l                                         ; $4e0f: $8d
    adc e                                         ; $4e10: $8b
    adc e                                         ; $4e11: $8b
    adc e                                         ; $4e12: $8b
    adc e                                         ; $4e13: $8b
    adc l                                         ; $4e14: $8d
    adc e                                         ; $4e15: $8b
    rst $18                                       ; $4e16: $df
    sbc $dd                                       ; $4e17: $de $dd
    sub $e3                                       ; $4e19: $d6 $e3
    ld [c], a                                     ; $4e1b: $e2
    pop hl                                        ; $4e1c: $e1
    reti                                          ; $4e1d: $d9


    rst $20                                       ; $4e1e: $e7
    and $e5                                       ; $4e1f: $e6 $e5
    call c, $d1ef                                 ; $4e21: $dc $ef $d1
    xor $eb                                       ; $4e24: $ee $eb
    adc e                                         ; $4e26: $8b
    adc e                                         ; $4e27: $8b
    adc e                                         ; $4e28: $8b
    adc l                                         ; $4e29: $8d
    adc e                                         ; $4e2a: $8b
    adc e                                         ; $4e2b: $8b
    adc l                                         ; $4e2c: $8d
    adc l                                         ; $4e2d: $8d
    adc e                                         ; $4e2e: $8b
    adc e                                         ; $4e2f: $8b
    adc e                                         ; $4e30: $8b
    adc e                                         ; $4e31: $8b
    adc l                                         ; $4e32: $8d
    add l                                         ; $4e33: $85
    adc e                                         ; $4e34: $8b
    adc l                                         ; $4e35: $8d
    push de                                       ; $4e36: $d5
    call nc, $f4f5                                ; $4e37: $d4 $f5 $f4
    ret c                                         ; $4e3a: $d8

    rst $10                                       ; $4e3b: $d7
    rst $30                                       ; $4e3c: $f7
    or $db                                        ; $4e3d: $f6 $db
    jp c, $f8f9                                   ; $4e3f: $da $f9 $f8

    ld [$02e9], a                                 ; $4e42: $ea $e9 $02
    ld bc, $8b8b                                  ; $4e45: $01 $8b $8b
    adc e                                         ; $4e48: $8b
    adc e                                         ; $4e49: $8b
    adc e                                         ; $4e4a: $8b
    adc e                                         ; $4e4b: $8b
    adc e                                         ; $4e4c: $8b
    adc e                                         ; $4e4d: $8b
    adc e                                         ; $4e4e: $8b
    adc e                                         ; $4e4f: $8b
    adc e                                         ; $4e50: $8b
    adc l                                         ; $4e51: $8d
    adc l                                         ; $4e52: $8d
    adc e                                         ; $4e53: $8b
    adc l                                         ; $4e54: $8d
    adc e                                         ; $4e55: $8b
    ldh [$df], a                                  ; $4e56: $e0 $df
    sbc $dd                                       ; $4e58: $de $dd
    db $e4                                        ; $4e5a: $e4
    db $e3                                        ; $4e5b: $e3
    ld [c], a                                     ; $4e5c: $e2
    pop hl                                        ; $4e5d: $e1
    add sp, -$19                                  ; $4e5e: $e8 $e7
    and $e5                                       ; $4e60: $e6 $e5
    ldh a, [$ef]                                  ; $4e62: $f0 $ef
    pop de                                        ; $4e64: $d1
    xor $8b                                       ; $4e65: $ee $8b
    adc e                                         ; $4e67: $8b
    adc e                                         ; $4e68: $8b
    adc e                                         ; $4e69: $8b
    adc e                                         ; $4e6a: $8b
    adc l                                         ; $4e6b: $8d
    adc e                                         ; $4e6c: $8b
    adc l                                         ; $4e6d: $8d
    adc l                                         ; $4e6e: $8d
    adc e                                         ; $4e6f: $8b
    adc e                                         ; $4e70: $8b
    adc e                                         ; $4e71: $8b
    adc e                                         ; $4e72: $8b
    adc e                                         ; $4e73: $8b
    add e                                         ; $4e74: $83
    adc e                                         ; $4e75: $8b
    rlca                                          ; $4e76: $07
    ld b, $03                                     ; $4e77: $06 $03
    ld a, [c]                                     ; $4e79: $f2
    ld [$d1d1], sp                                ; $4e7a: $08 $d1 $d1
    pop de                                        ; $4e7d: $d1
    pop de                                        ; $4e7e: $d1
    pop de                                        ; $4e7f: $d1
    pop de                                        ; $4e80: $d1
    pop de                                        ; $4e81: $d1
    pop bc                                        ; $4e82: $c1
    pop de                                        ; $4e83: $d1
    pop de                                        ; $4e84: $d1
    pop de                                        ; $4e85: $d1
    adc e                                         ; $4e86: $8b
    adc e                                         ; $4e87: $8b
    adc l                                         ; $4e88: $8d
    adc l                                         ; $4e89: $8d
    adc e                                         ; $4e8a: $8b
    add e                                         ; $4e8b: $83
    add e                                         ; $4e8c: $83
    add e                                         ; $4e8d: $83
    xor e                                         ; $4e8e: $ab
    add e                                         ; $4e8f: $83
    add e                                         ; $4e90: $83
    add e                                         ; $4e91: $83
    xor e                                         ; $4e92: $ab
    add e                                         ; $4e93: $83
    add e                                         ; $4e94: $83
    add e                                         ; $4e95: $83
    pop af                                        ; $4e96: $f1
    pop de                                        ; $4e97: $d1
    pop de                                        ; $4e98: $d1
    ret                                           ; $4e99: $c9


    pop de                                        ; $4e9a: $d1
    pop de                                        ; $4e9b: $d1
    pop de                                        ; $4e9c: $d1
    pop de                                        ; $4e9d: $d1
    pop de                                        ; $4e9e: $d1
    pop de                                        ; $4e9f: $d1
    pop de                                        ; $4ea0: $d1
    pop de                                        ; $4ea1: $d1
    pop de                                        ; $4ea2: $d1
    pop de                                        ; $4ea3: $d1
    pop de                                        ; $4ea4: $d1
    pop de                                        ; $4ea5: $d1
    adc e                                         ; $4ea6: $8b
    add e                                         ; $4ea7: $83
    add e                                         ; $4ea8: $83
    xor e                                         ; $4ea9: $ab
    add e                                         ; $4eaa: $83
    add e                                         ; $4eab: $83
    add e                                         ; $4eac: $83
    add e                                         ; $4ead: $83
    add e                                         ; $4eae: $83
    add e                                         ; $4eaf: $83
    add e                                         ; $4eb0: $83
    add e                                         ; $4eb1: $83
    add e                                         ; $4eb2: $83
    add e                                         ; $4eb3: $83
    add e                                         ; $4eb4: $83
    add e                                         ; $4eb5: $83
    db $ed                                        ; $4eb6: $ed
    db $ec                                        ; $4eb7: $ec
    inc b                                         ; $4eb8: $04
    inc bc                                        ; $4eb9: $03
    pop de                                        ; $4eba: $d1
    pop de                                        ; $4ebb: $d1
    pop de                                        ; $4ebc: $d1
    pop de                                        ; $4ebd: $d1
    pop de                                        ; $4ebe: $d1
    pop de                                        ; $4ebf: $d1
    pop de                                        ; $4ec0: $d1
    pop de                                        ; $4ec1: $d1
    pop de                                        ; $4ec2: $d1
    pop de                                        ; $4ec3: $d1
    pop de                                        ; $4ec4: $d1
    pop de                                        ; $4ec5: $d1
    adc l                                         ; $4ec6: $8d
    adc l                                         ; $4ec7: $8d
    adc e                                         ; $4ec8: $8b
    adc e                                         ; $4ec9: $8b
    add e                                         ; $4eca: $83
    add e                                         ; $4ecb: $83
    add e                                         ; $4ecc: $83
    add e                                         ; $4ecd: $83
    add e                                         ; $4ece: $83
    add e                                         ; $4ecf: $83
    add e                                         ; $4ed0: $83
    add e                                         ; $4ed1: $83
    add e                                         ; $4ed2: $83
    add e                                         ; $4ed3: $83
    add e                                         ; $4ed4: $83
    add e                                         ; $4ed5: $83
    ld a, [c]                                     ; $4ed6: $f2
    pop af                                        ; $4ed7: $f1
    pop de                                        ; $4ed8: $d1
    pop de                                        ; $4ed9: $d1
    pop de                                        ; $4eda: $d1
    pop de                                        ; $4edb: $d1
    pop de                                        ; $4edc: $d1
    pop de                                        ; $4edd: $d1
    pop de                                        ; $4ede: $d1
    pop de                                        ; $4edf: $d1
    pop de                                        ; $4ee0: $d1
    pop de                                        ; $4ee1: $d1
    pop de                                        ; $4ee2: $d1
    pop de                                        ; $4ee3: $d1
    pop de                                        ; $4ee4: $d1
    pop de                                        ; $4ee5: $d1
    adc e                                         ; $4ee6: $8b
    adc e                                         ; $4ee7: $8b
    add e                                         ; $4ee8: $83
    add e                                         ; $4ee9: $83
    add e                                         ; $4eea: $83
    add e                                         ; $4eeb: $83
    add e                                         ; $4eec: $83
    add e                                         ; $4eed: $83
    add e                                         ; $4eee: $83
    add e                                         ; $4eef: $83
    add e                                         ; $4ef0: $83
    add e                                         ; $4ef1: $83
    add e                                         ; $4ef2: $83
    add e                                         ; $4ef3: $83
    add e                                         ; $4ef4: $83
    add e                                         ; $4ef5: $83
    jp $d1d1                                      ; $4ef6: $c3 $d1 $d1


    pop de                                        ; $4ef9: $d1
    pop de                                        ; $4efa: $d1
    pop de                                        ; $4efb: $d1
    pop de                                        ; $4efc: $d1
    pop de                                        ; $4efd: $d1
    pop de                                        ; $4efe: $d1
    pop de                                        ; $4eff: $d1
    pop de                                        ; $4f00: $d1
    pop de                                        ; $4f01: $d1
    pop de                                        ; $4f02: $d1
    pop de                                        ; $4f03: $d1
    pop de                                        ; $4f04: $d1
    pop de                                        ; $4f05: $d1
    xor e                                         ; $4f06: $ab
    add e                                         ; $4f07: $83
    add e                                         ; $4f08: $83
    add e                                         ; $4f09: $83
    add e                                         ; $4f0a: $83
    add e                                         ; $4f0b: $83
    add e                                         ; $4f0c: $83
    add e                                         ; $4f0d: $83
    add e                                         ; $4f0e: $83
    add e                                         ; $4f0f: $83
    add e                                         ; $4f10: $83
    add e                                         ; $4f11: $83
    add e                                         ; $4f12: $83
    add e                                         ; $4f13: $83
    add e                                         ; $4f14: $83
    add e                                         ; $4f15: $83
    sub $d5                                       ; $4f16: $d6 $d5
    call nc, $d90d                                ; $4f18: $d4 $0d $d9
    ret c                                         ; $4f1b: $d8

    rst $10                                       ; $4f1c: $d7
    ld c, $dc                                     ; $4f1d: $0e $dc
    db $db                                        ; $4f1f: $db
    jp c, $ebf9                                   ; $4f20: $da $f9 $eb

    ld [$02e9], a                                 ; $4f23: $ea $e9 $02
    adc e                                         ; $4f26: $8b
    adc e                                         ; $4f27: $8b
    adc e                                         ; $4f28: $8b
    adc e                                         ; $4f29: $8b
    adc e                                         ; $4f2a: $8b
    adc e                                         ; $4f2b: $8b
    adc e                                         ; $4f2c: $8b
    adc e                                         ; $4f2d: $8b
    adc l                                         ; $4f2e: $8d
    adc e                                         ; $4f2f: $8b
    adc l                                         ; $4f30: $8d
    adc l                                         ; $4f31: $8d
    adc e                                         ; $4f32: $8b
    adc e                                         ; $4f33: $8b
    adc e                                         ; $4f34: $8b
    adc e                                         ; $4f35: $8b
    rrca                                          ; $4f36: $0f
    ld a, [hl]                                    ; $4f37: $7e
    ld l, e                                       ; $4f38: $6b
    ld l, h                                       ; $4f39: $6c
    db $10                                        ; $4f3a: $10
    ld l, [hl]                                    ; $4f3b: $6e
    ld l, a                                       ; $4f3c: $6f
    ld [hl], b                                    ; $4f3d: $70
    ld de, $125f                                  ; $4f3e: $11 $5f $12
    ld e, [hl]                                    ; $4f41: $5e
    inc de                                        ; $4f42: $13
    inc d                                         ; $4f43: $14
    dec d                                         ; $4f44: $15
    ld d, $8b                                     ; $4f45: $16 $8b
    ld [bc], a                                    ; $4f47: $02
    ld [bc], a                                    ; $4f48: $02
    ld [bc], a                                    ; $4f49: $02
    adc e                                         ; $4f4a: $8b
    ld [bc], a                                    ; $4f4b: $02
    ld [bc], a                                    ; $4f4c: $02
    rlca                                          ; $4f4d: $07
    adc e                                         ; $4f4e: $8b
    ld [bc], a                                    ; $4f4f: $02
    adc e                                         ; $4f50: $8b
    ld [bc], a                                    ; $4f51: $02
    adc l                                         ; $4f52: $8d
    adc e                                         ; $4f53: $8b
    adc e                                         ; $4f54: $8b
    adc e                                         ; $4f55: $8b
    ld h, e                                       ; $4f56: $63
    ld [hl], d                                    ; $4f57: $72
    ld l, c                                       ; $4f58: $69
    rla                                           ; $4f59: $17
    sub a                                         ; $4f5a: $97
    sbc b                                         ; $4f5b: $98
    ld a, [hl]                                    ; $4f5c: $7e
    jr jr_07d_4fda                                ; $4f5d: $18 $7b

    ld e, l                                       ; $4f5f: $5d
    add hl, de                                    ; $4f60: $19
    ld a, [de]                                    ; $4f61: $1a
    dec de                                        ; $4f62: $1b
    inc e                                         ; $4f63: $1c
    dec e                                         ; $4f64: $1d
    ld e, $02                                     ; $4f65: $1e $02
    ld b, $02                                     ; $4f67: $06 $02
    adc e                                         ; $4f69: $8b
    rrca                                          ; $4f6a: $0f
    ld c, $06                                     ; $4f6b: $0e $06
    adc e                                         ; $4f6d: $8b
    ld [bc], a                                    ; $4f6e: $02
    ld [bc], a                                    ; $4f6f: $02
    adc e                                         ; $4f70: $8b
    adc e                                         ; $4f71: $8b
    adc e                                         ; $4f72: $8b
    adc e                                         ; $4f73: $8b
    adc e                                         ; $4f74: $8b
    adc e                                         ; $4f75: $8b
    push af                                       ; $4f76: $f5
    db $f4                                        ; $4f77: $f4
    ldh [$df], a                                  ; $4f78: $e0 $df
    rst $30                                       ; $4f7a: $f7
    or $e4                                        ; $4f7b: $f6 $e4
    db $e3                                        ; $4f7d: $e3
    ld sp, hl                                     ; $4f7e: $f9
    ld hl, sp-$18                                 ; $4f7f: $f8 $e8
    rst $20                                       ; $4f81: $e7
    ld [bc], a                                    ; $4f82: $02
    ld bc, $eff0                                  ; $4f83: $01 $f0 $ef
    adc e                                         ; $4f86: $8b
    adc e                                         ; $4f87: $8b
    adc e                                         ; $4f88: $8b
    adc e                                         ; $4f89: $8b
    adc l                                         ; $4f8a: $8d
    adc e                                         ; $4f8b: $8b
    adc e                                         ; $4f8c: $8b
    adc e                                         ; $4f8d: $8b
    adc l                                         ; $4f8e: $8d
    adc e                                         ; $4f8f: $8b
    adc e                                         ; $4f90: $8b
    adc e                                         ; $4f91: $8b
    adc e                                         ; $4f92: $8b
    adc l                                         ; $4f93: $8d
    adc l                                         ; $4f94: $8d
    adc l                                         ; $4f95: $8d
    ret                                           ; $4f96: $c9


    db $ed                                        ; $4f97: $ed
    db $ec                                        ; $4f98: $ec
    inc b                                         ; $4f99: $04
    pop de                                        ; $4f9a: $d1
    pop de                                        ; $4f9b: $d1
    pop de                                        ; $4f9c: $d1
    pop de                                        ; $4f9d: $d1
    pop de                                        ; $4f9e: $d1
    pop de                                        ; $4f9f: $d1
    pop de                                        ; $4fa0: $d1
    pop de                                        ; $4fa1: $d1
    pop de                                        ; $4fa2: $d1
    pop de                                        ; $4fa3: $d1
    pop de                                        ; $4fa4: $d1
    pop de                                        ; $4fa5: $d1
    xor e                                         ; $4fa6: $ab
    adc l                                         ; $4fa7: $8d
    adc l                                         ; $4fa8: $8d
    adc e                                         ; $4fa9: $8b
    add e                                         ; $4faa: $83
    add e                                         ; $4fab: $83
    add e                                         ; $4fac: $83
    add e                                         ; $4fad: $83
    add e                                         ; $4fae: $83
    add e                                         ; $4faf: $83
    add e                                         ; $4fb0: $83
    add e                                         ; $4fb1: $83
    add e                                         ; $4fb2: $83
    add e                                         ; $4fb3: $83
    add e                                         ; $4fb4: $83
    add e                                         ; $4fb5: $83
    inc bc                                        ; $4fb6: $03
    rra                                           ; $4fb7: $1f
    jr nz, jr_07d_4fdb                            ; $4fb8: $20 $21

    pop de                                        ; $4fba: $d1
    pop de                                        ; $4fbb: $d1
    ld [hl+], a                                   ; $4fbc: $22
    inc hl                                        ; $4fbd: $23
    pop de                                        ; $4fbe: $d1
    pop de                                        ; $4fbf: $d1
    inc h                                         ; $4fc0: $24
    dec h                                         ; $4fc1: $25
    pop de                                        ; $4fc2: $d1
    pop de                                        ; $4fc3: $d1
    ld h, $27                                     ; $4fc4: $26 $27
    adc l                                         ; $4fc6: $8d
    adc e                                         ; $4fc7: $8b
    adc e                                         ; $4fc8: $8b
    adc e                                         ; $4fc9: $8b
    add e                                         ; $4fca: $83
    add l                                         ; $4fcb: $85
    adc l                                         ; $4fcc: $8d
    adc l                                         ; $4fcd: $8d
    add e                                         ; $4fce: $83
    add e                                         ; $4fcf: $83
    adc l                                         ; $4fd0: $8d
    adc l                                         ; $4fd1: $8d
    add e                                         ; $4fd2: $83
    add e                                         ; $4fd3: $83
    adc l                                         ; $4fd4: $8d
    adc l                                         ; $4fd5: $8d
    jr z, jr_07d_5001                             ; $4fd6: $28 $29

    ld a, [hl+]                                   ; $4fd8: $2a
    db $ec                                        ; $4fd9: $ec

jr_07d_4fda:
    dec hl                                        ; $4fda: $2b

jr_07d_4fdb:
    inc l                                         ; $4fdb: $2c
    pop de                                        ; $4fdc: $d1
    pop de                                        ; $4fdd: $d1
    dec l                                         ; $4fde: $2d
    ld l, $2f                                     ; $4fdf: $2e $2f
    jr nc, jr_07d_5014                            ; $4fe1: $30 $31

    ld [hl-], a                                   ; $4fe3: $32
    inc sp                                        ; $4fe4: $33
    inc [hl]                                      ; $4fe5: $34
    adc e                                         ; $4fe6: $8b
    adc e                                         ; $4fe7: $8b
    adc e                                         ; $4fe8: $8b
    adc e                                         ; $4fe9: $8b
    adc e                                         ; $4fea: $8b
    adc e                                         ; $4feb: $8b
    add e                                         ; $4fec: $83
    add e                                         ; $4fed: $83
    adc l                                         ; $4fee: $8d
    adc l                                         ; $4fef: $8d
    adc e                                         ; $4ff0: $8b
    adc e                                         ; $4ff1: $8b
    adc e                                         ; $4ff2: $8b
    adc e                                         ; $4ff3: $8b
    adc e                                         ; $4ff4: $8b
    adc e                                         ; $4ff5: $8b
    inc b                                         ; $4ff6: $04
    inc bc                                        ; $4ff7: $03
    ld a, [c]                                     ; $4ff8: $f2
    pop af                                        ; $4ff9: $f1
    pop de                                        ; $4ffa: $d1
    pop de                                        ; $4ffb: $d1
    pop de                                        ; $4ffc: $d1
    pop de                                        ; $4ffd: $d1
    pop de                                        ; $4ffe: $d1
    pop de                                        ; $4fff: $d1
    pop de                                        ; $5000: $d1

jr_07d_5001:
    pop de                                        ; $5001: $d1
    pop de                                        ; $5002: $d1
    pop de                                        ; $5003: $d1
    pop de                                        ; $5004: $d1
    pop de                                        ; $5005: $d1
    adc e                                         ; $5006: $8b
    adc e                                         ; $5007: $8b
    adc l                                         ; $5008: $8d
    adc e                                         ; $5009: $8b
    add e                                         ; $500a: $83
    add e                                         ; $500b: $83
    add e                                         ; $500c: $83
    add e                                         ; $500d: $83
    add e                                         ; $500e: $83
    add e                                         ; $500f: $83
    add e                                         ; $5010: $83
    add e                                         ; $5011: $83
    add e                                         ; $5012: $83
    add e                                         ; $5013: $83

jr_07d_5014:
    add e                                         ; $5014: $83
    add e                                         ; $5015: $83
    pop de                                        ; $5016: $d1
    pop de                                        ; $5017: $d1
    dec [hl]                                      ; $5018: $35
    ld [hl], $d1                                  ; $5019: $36 $d1
    scf                                           ; $501b: $37
    jr c, jr_07d_5080                             ; $501c: $38 $62

    pop de                                        ; $501e: $d1
    add hl, sp                                    ; $501f: $39
    ld a, [hl-]                                   ; $5020: $3a
    ld a, [hl]                                    ; $5021: $7e
    pop de                                        ; $5022: $d1
    dec sp                                        ; $5023: $3b
    inc a                                         ; $5024: $3c
    dec a                                         ; $5025: $3d
    add e                                         ; $5026: $83
    add e                                         ; $5027: $83
    adc e                                         ; $5028: $8b
    adc e                                         ; $5029: $8b
    add e                                         ; $502a: $83
    adc e                                         ; $502b: $8b
    adc e                                         ; $502c: $8b
    ld [bc], a                                    ; $502d: $02
    add e                                         ; $502e: $83
    adc e                                         ; $502f: $8b
    adc e                                         ; $5030: $8b
    ld [bc], a                                    ; $5031: $02
    add e                                         ; $5032: $83
    adc e                                         ; $5033: $8b
    adc e                                         ; $5034: $8b
    adc e                                         ; $5035: $8b
    ld a, $3f                                     ; $5036: $3e $3f
    ld b, b                                       ; $5038: $40
    ld b, c                                       ; $5039: $41
    sub d                                         ; $503a: $92
    ld h, c                                       ; $503b: $61
    ld h, d                                       ; $503c: $62
    jr c, jr_07d_50ad                             ; $503d: $38 $6e

    ld l, a                                       ; $503f: $6f
    ld a, [hl]                                    ; $5040: $7e
    ld a, [hl-]                                   ; $5041: $3a
    ld b, d                                       ; $5042: $42
    ld b, e                                       ; $5043: $43
    ld b, h                                       ; $5044: $44
    ld b, l                                       ; $5045: $45
    adc e                                         ; $5046: $8b
    adc e                                         ; $5047: $8b
    adc e                                         ; $5048: $8b
    adc e                                         ; $5049: $8b
    rrca                                          ; $504a: $0f
    rlca                                          ; $504b: $07
    rlca                                          ; $504c: $07
    xor e                                         ; $504d: $ab
    rlca                                          ; $504e: $07
    ld [bc], a                                    ; $504f: $02
    ld [bc], a                                    ; $5050: $02
    xor e                                         ; $5051: $ab
    adc e                                         ; $5052: $8b
    adc e                                         ; $5053: $8b
    adc e                                         ; $5054: $8b
    adc e                                         ; $5055: $8b
    pop de                                        ; $5056: $d1
    pop de                                        ; $5057: $d1
    pop de                                        ; $5058: $d1
    pop de                                        ; $5059: $d1
    scf                                           ; $505a: $37
    pop de                                        ; $505b: $d1
    pop de                                        ; $505c: $d1
    pop de                                        ; $505d: $d1
    add hl, sp                                    ; $505e: $39
    pop de                                        ; $505f: $d1
    pop de                                        ; $5060: $d1
    pop de                                        ; $5061: $d1
    ld b, [hl]                                    ; $5062: $46
    pop de                                        ; $5063: $d1
    pop de                                        ; $5064: $d1
    pop de                                        ; $5065: $d1
    add e                                         ; $5066: $83
    add e                                         ; $5067: $83
    add e                                         ; $5068: $83
    add e                                         ; $5069: $83
    xor e                                         ; $506a: $ab
    add e                                         ; $506b: $83
    add e                                         ; $506c: $83
    add e                                         ; $506d: $83
    xor e                                         ; $506e: $ab
    add l                                         ; $506f: $85
    add e                                         ; $5070: $83
    add e                                         ; $5071: $83
    adc l                                         ; $5072: $8d
    add e                                         ; $5073: $83
    add e                                         ; $5074: $83
    add e                                         ; $5075: $83
    pop de                                        ; $5076: $d1
    add hl, sp                                    ; $5077: $39
    ld a, [hl-]                                   ; $5078: $3a
    ld h, d                                       ; $5079: $62
    pop de                                        ; $507a: $d1
    scf                                           ; $507b: $37
    jr c, jr_07d_50fc                             ; $507c: $38 $7e

    pop de                                        ; $507e: $d1
    add hl, sp                                    ; $507f: $39

jr_07d_5080:
    ld b, a                                       ; $5080: $47
    ld [hl], l                                    ; $5081: $75
    pop de                                        ; $5082: $d1
    scf                                           ; $5083: $37
    jr c, jr_07d_50e8                             ; $5084: $38 $62

    add e                                         ; $5086: $83
    adc l                                         ; $5087: $8d
    adc e                                         ; $5088: $8b
    ld [bc], a                                    ; $5089: $02
    add e                                         ; $508a: $83
    adc e                                         ; $508b: $8b
    adc l                                         ; $508c: $8d
    ld [bc], a                                    ; $508d: $02
    add e                                         ; $508e: $83
    adc e                                         ; $508f: $8b
    adc l                                         ; $5090: $8d
    db $e3                                        ; $5091: $e3
    add e                                         ; $5092: $83
    adc e                                         ; $5093: $8b
    adc l                                         ; $5094: $8d
    rlca                                          ; $5095: $07
    sub d                                         ; $5096: $92
    ld h, c                                       ; $5097: $61
    ld h, d                                       ; $5098: $62
    ld a, [hl-]                                   ; $5099: $3a
    ld l, [hl]                                    ; $509a: $6e
    ld l, a                                       ; $509b: $6f
    sbc c                                         ; $509c: $99
    jr c, jr_07d_511c                             ; $509d: $38 $7d

    ld h, [hl]                                    ; $509f: $66
    ld e, [hl]                                    ; $50a0: $5e
    ld a, [hl-]                                   ; $50a1: $3a
    sub d                                         ; $50a2: $92
    ld h, c                                       ; $50a3: $61
    sub h                                         ; $50a4: $94
    jr c, jr_07d_50b1                             ; $50a5: $38 $0a

    ld [bc], a                                    ; $50a7: $02
    ld [bc], a                                    ; $50a8: $02
    xor e                                         ; $50a9: $ab
    ld [bc], a                                    ; $50aa: $02
    ld [bc], a                                    ; $50ab: $02
    ld a, [bc]                                    ; $50ac: $0a

jr_07d_50ad:
    xor l                                         ; $50ad: $ad
    add e                                         ; $50ae: $83
    db $e3                                        ; $50af: $e3
    ld [bc], a                                    ; $50b0: $02

jr_07d_50b1:
    xor l                                         ; $50b1: $ad
    ld a, [bc]                                    ; $50b2: $0a
    ld [bc], a                                    ; $50b3: $02
    rrca                                          ; $50b4: $0f
    xor l                                         ; $50b5: $ad
    add hl, sp                                    ; $50b6: $39
    pop de                                        ; $50b7: $d1
    pop de                                        ; $50b8: $d1
    pop de                                        ; $50b9: $d1
    scf                                           ; $50ba: $37
    pop de                                        ; $50bb: $d1
    pop de                                        ; $50bc: $d1
    pop de                                        ; $50bd: $d1
    add hl, sp                                    ; $50be: $39
    pop de                                        ; $50bf: $d1
    pop de                                        ; $50c0: $d1
    pop de                                        ; $50c1: $d1
    scf                                           ; $50c2: $37
    pop de                                        ; $50c3: $d1
    pop de                                        ; $50c4: $d1
    pop de                                        ; $50c5: $d1
    xor l                                         ; $50c6: $ad
    add e                                         ; $50c7: $83
    add e                                         ; $50c8: $83
    add e                                         ; $50c9: $83
    xor l                                         ; $50ca: $ad
    add e                                         ; $50cb: $83
    add e                                         ; $50cc: $83
    add e                                         ; $50cd: $83
    xor e                                         ; $50ce: $ab
    add e                                         ; $50cf: $83
    add e                                         ; $50d0: $83
    add e                                         ; $50d1: $83
    xor l                                         ; $50d2: $ad
    add l                                         ; $50d3: $85
    add l                                         ; $50d4: $85
    add e                                         ; $50d5: $83
    sbc $dd                                       ; $50d6: $de $dd
    sub $d5                                       ; $50d8: $d6 $d5
    ld [c], a                                     ; $50da: $e2
    pop hl                                        ; $50db: $e1
    reti                                          ; $50dc: $d9


    ret c                                         ; $50dd: $d8

    and $e5                                       ; $50de: $e6 $e5
    call c, $d1db                                 ; $50e0: $dc $db $d1
    xor $eb                                       ; $50e3: $ee $eb
    ld [$8b8b], a                                 ; $50e5: $ea $8b $8b

jr_07d_50e8:
    adc e                                         ; $50e8: $8b
    adc e                                         ; $50e9: $8b
    adc e                                         ; $50ea: $8b
    adc e                                         ; $50eb: $8b
    adc e                                         ; $50ec: $8b
    adc e                                         ; $50ed: $8b
    adc e                                         ; $50ee: $8b
    adc e                                         ; $50ef: $8b
    adc e                                         ; $50f0: $8b
    adc e                                         ; $50f1: $8b
    add e                                         ; $50f2: $83
    adc e                                         ; $50f3: $8b
    adc l                                         ; $50f4: $8d
    adc e                                         ; $50f5: $8b
    call nc, $d4d5                                ; $50f6: $d4 $d5 $d4
    push af                                       ; $50f9: $f5
    rst $10                                       ; $50fa: $d7
    ret c                                         ; $50fb: $d8

jr_07d_50fc:
    rst $10                                       ; $50fc: $d7
    rst $30                                       ; $50fd: $f7
    jp c, $dadb                                   ; $50fe: $da $db $da

    ld sp, hl                                     ; $5101: $f9
    jp hl                                         ; $5102: $e9


    ld [$02e9], a                                 ; $5103: $ea $e9 $02
    adc e                                         ; $5106: $8b
    adc e                                         ; $5107: $8b
    adc e                                         ; $5108: $8b
    adc e                                         ; $5109: $8b
    adc e                                         ; $510a: $8b
    adc e                                         ; $510b: $8b
    adc e                                         ; $510c: $8b
    adc e                                         ; $510d: $8b
    adc e                                         ; $510e: $8b
    adc e                                         ; $510f: $8b
    adc e                                         ; $5110: $8b
    adc e                                         ; $5111: $8b
    adc e                                         ; $5112: $8b
    adc e                                         ; $5113: $8b
    adc e                                         ; $5114: $8b
    adc e                                         ; $5115: $8b
    pop de                                        ; $5116: $d1
    pop de                                        ; $5117: $d1
    ret                                           ; $5118: $c9


    db $ed                                        ; $5119: $ed
    pop de                                        ; $511a: $d1
    pop de                                        ; $511b: $d1

jr_07d_511c:
    pop de                                        ; $511c: $d1
    pop de                                        ; $511d: $d1
    pop de                                        ; $511e: $d1
    pop de                                        ; $511f: $d1
    pop de                                        ; $5120: $d1
    pop de                                        ; $5121: $d1
    pop de                                        ; $5122: $d1
    pop de                                        ; $5123: $d1
    pop de                                        ; $5124: $d1
    pop de                                        ; $5125: $d1
    add e                                         ; $5126: $83
    add e                                         ; $5127: $83
    xor e                                         ; $5128: $ab
    adc l                                         ; $5129: $8d
    add e                                         ; $512a: $83
    add e                                         ; $512b: $83
    add e                                         ; $512c: $83
    add e                                         ; $512d: $83
    add e                                         ; $512e: $83
    add e                                         ; $512f: $83
    add e                                         ; $5130: $83
    add e                                         ; $5131: $83
    add e                                         ; $5132: $83
    add e                                         ; $5133: $83
    add e                                         ; $5134: $83
    add e                                         ; $5135: $83
    db $ec                                        ; $5136: $ec
    db $ed                                        ; $5137: $ed
    db $ec                                        ; $5138: $ec
    inc b                                         ; $5139: $04
    pop de                                        ; $513a: $d1
    pop de                                        ; $513b: $d1
    pop de                                        ; $513c: $d1
    pop de                                        ; $513d: $d1
    pop de                                        ; $513e: $d1
    pop de                                        ; $513f: $d1
    pop de                                        ; $5140: $d1
    pop de                                        ; $5141: $d1
    pop de                                        ; $5142: $d1
    pop de                                        ; $5143: $d1
    pop de                                        ; $5144: $d1
    pop de                                        ; $5145: $d1
    adc e                                         ; $5146: $8b
    adc e                                         ; $5147: $8b
    adc e                                         ; $5148: $8b
    adc e                                         ; $5149: $8b
    add l                                         ; $514a: $85
    add e                                         ; $514b: $83
    add e                                         ; $514c: $83
    add e                                         ; $514d: $83
    add e                                         ; $514e: $83
    add e                                         ; $514f: $83
    add e                                         ; $5150: $83
    add e                                         ; $5151: $83
    add e                                         ; $5152: $83
    add e                                         ; $5153: $83
    add e                                         ; $5154: $83
    add e                                         ; $5155: $83
    pop de                                        ; $5156: $d1
    pop de                                        ; $5157: $d1
    pop de                                        ; $5158: $d1
    pop bc                                        ; $5159: $c1
    pop de                                        ; $515a: $d1
    pop de                                        ; $515b: $d1
    pop de                                        ; $515c: $d1
    jp $d1d1                                      ; $515d: $c3 $d1 $d1


    pop de                                        ; $5160: $d1
    pop de                                        ; $5161: $d1
    pop de                                        ; $5162: $d1
    pop de                                        ; $5163: $d1
    pop de                                        ; $5164: $d1
    pop de                                        ; $5165: $d1
    add e                                         ; $5166: $83
    add e                                         ; $5167: $83
    add e                                         ; $5168: $83
    adc l                                         ; $5169: $8d
    add e                                         ; $516a: $83
    add e                                         ; $516b: $83
    add e                                         ; $516c: $83
    adc l                                         ; $516d: $8d
    add e                                         ; $516e: $83
    add e                                         ; $516f: $83
    add e                                         ; $5170: $83
    add e                                         ; $5171: $83
    add e                                         ; $5172: $83
    add e                                         ; $5173: $83
    add e                                         ; $5174: $83
    add e                                         ; $5175: $83
    jp nz, Jump_07d_6d6f                          ; $5176: $c2 $6f $6d

    ld h, [hl]                                    ; $5179: $66
    call nz, Call_07d_5ec5                        ; $517a: $c4 $c5 $5e
    ld e, a                                       ; $517d: $5f
    add $c7                                       ; $517e: $c6 $c7
    call z, $c8cd                                 ; $5180: $cc $cd $c8
    ret                                           ; $5183: $c9


    pop de                                        ; $5184: $d1
    rst $08                                       ; $5185: $cf
    adc e                                         ; $5186: $8b
    ld [bc], a                                    ; $5187: $02
    db $e3                                        ; $5188: $e3
    db $e3                                        ; $5189: $e3
    adc e                                         ; $518a: $8b
    adc e                                         ; $518b: $8b
    ld [bc], a                                    ; $518c: $02
    ld [bc], a                                    ; $518d: $02
    adc l                                         ; $518e: $8d
    adc e                                         ; $518f: $8b
    adc e                                         ; $5190: $8b
    adc l                                         ; $5191: $8d
    adc e                                         ; $5192: $8b
    adc l                                         ; $5193: $8d
    add e                                         ; $5194: $83
    adc e                                         ; $5195: $8b
    ld h, [hl]                                    ; $5196: $66
    ld h, l                                       ; $5197: $65
    ld h, h                                       ; $5198: $64
    db $d3                                        ; $5199: $d3
    ld e, l                                       ; $519a: $5d
    ld e, [hl]                                    ; $519b: $5e
    push bc                                       ; $519c: $c5
    call nz, $cc48                                ; $519d: $c4 $48 $cc
    rst $00                                       ; $51a0: $c7
    add $d1                                       ; $51a1: $c6 $d1
    pop de                                        ; $51a3: $d1
    ret                                           ; $51a4: $c9


    ret z                                         ; $51a5: $c8

    db $e3                                        ; $51a6: $e3
    db $e3                                        ; $51a7: $e3
    db $e3                                        ; $51a8: $e3
    xor e                                         ; $51a9: $ab
    ld [bc], a                                    ; $51aa: $02
    ld [bc], a                                    ; $51ab: $02
    xor e                                         ; $51ac: $ab
    xor l                                         ; $51ad: $ad
    adc l                                         ; $51ae: $8d
    xor l                                         ; $51af: $ad
    xor l                                         ; $51b0: $ad
    xor e                                         ; $51b1: $ab
    add e                                         ; $51b2: $83
    add e                                         ; $51b3: $83
    xor l                                         ; $51b4: $ad
    xor e                                         ; $51b5: $ab
    jp z, $d1d1                                   ; $51b6: $ca $d1 $d1

    pop de                                        ; $51b9: $d1
    set 2, c                                      ; $51ba: $cb $d1
    pop de                                        ; $51bc: $d1
    pop de                                        ; $51bd: $d1
    pop de                                        ; $51be: $d1
    pop de                                        ; $51bf: $d1
    pop de                                        ; $51c0: $d1
    pop de                                        ; $51c1: $d1
    pop de                                        ; $51c2: $d1
    pop de                                        ; $51c3: $d1
    pop de                                        ; $51c4: $d1
    pop de                                        ; $51c5: $d1
    adc e                                         ; $51c6: $8b
    add e                                         ; $51c7: $83
    add e                                         ; $51c8: $83
    add e                                         ; $51c9: $83
    adc e                                         ; $51ca: $8b
    add e                                         ; $51cb: $83
    add e                                         ; $51cc: $83
    add e                                         ; $51cd: $83
    add e                                         ; $51ce: $83
    add e                                         ; $51cf: $83
    add e                                         ; $51d0: $83

jr_07d_51d1:
    add e                                         ; $51d1: $83
    add e                                         ; $51d2: $83
    add e                                         ; $51d3: $83
    add e                                         ; $51d4: $83
    add e                                         ; $51d5: $83
    pop de                                        ; $51d6: $d1
    pop de                                        ; $51d7: $d1
    pop de                                        ; $51d8: $d1
    jp z, $d1d1                                   ; $51d9: $ca $d1 $d1

    pop de                                        ; $51dc: $d1
    set 2, c                                      ; $51dd: $cb $d1
    pop de                                        ; $51df: $d1
    pop de                                        ; $51e0: $d1
    pop de                                        ; $51e1: $d1
    pop de                                        ; $51e2: $d1
    pop de                                        ; $51e3: $d1
    pop de                                        ; $51e4: $d1
    pop de                                        ; $51e5: $d1
    add e                                         ; $51e6: $83
    add e                                         ; $51e7: $83
    add e                                         ; $51e8: $83
    xor e                                         ; $51e9: $ab
    add e                                         ; $51ea: $83
    add e                                         ; $51eb: $83
    add e                                         ; $51ec: $83
    xor e                                         ; $51ed: $ab
    add e                                         ; $51ee: $83
    add e                                         ; $51ef: $83
    add e                                         ; $51f0: $83
    add e                                         ; $51f1: $83
    add e                                         ; $51f2: $83
    add e                                         ; $51f3: $83
    add e                                         ; $51f4: $83
    add e                                         ; $51f5: $83
    pop bc                                        ; $51f6: $c1
    pop de                                        ; $51f7: $d1
    pop de                                        ; $51f8: $d1
    pop de                                        ; $51f9: $d1
    jp $d1d1                                      ; $51fa: $c3 $d1 $d1


    pop de                                        ; $51fd: $d1
    pop de                                        ; $51fe: $d1
    pop de                                        ; $51ff: $d1
    pop de                                        ; $5200: $d1
    pop de                                        ; $5201: $d1
    pop de                                        ; $5202: $d1
    pop de                                        ; $5203: $d1
    pop de                                        ; $5204: $d1
    pop de                                        ; $5205: $d1

jr_07d_5206:
    xor l                                         ; $5206: $ad

jr_07d_5207:
    add e                                         ; $5207: $83
    add e                                         ; $5208: $83
    add e                                         ; $5209: $83
    xor e                                         ; $520a: $ab
    add e                                         ; $520b: $83
    add e                                         ; $520c: $83
    add e                                         ; $520d: $83
    add e                                         ; $520e: $83
    add e                                         ; $520f: $83
    add e                                         ; $5210: $83
    add e                                         ; $5211: $83
    add e                                         ; $5212: $83
    add e                                         ; $5213: $83
    add e                                         ; $5214: $83
    add e                                         ; $5215: $83
    pop de                                        ; $5216: $d1
    add hl, sp                                    ; $5217: $39
    ld a, [hl-]                                   ; $5218: $3a
    adc h                                         ; $5219: $8c
    pop de                                        ; $521a: $d1
    scf                                           ; $521b: $37
    jr c, @-$7d                                   ; $521c: $38 $81

    pop de                                        ; $521e: $d1
    add hl, sp                                    ; $521f: $39
    ld a, [hl-]                                   ; $5220: $3a
    ld h, d                                       ; $5221: $62
    pop de                                        ; $5222: $d1
    ld b, [hl]                                    ; $5223: $46
    ld b, l                                       ; $5224: $45
    ld b, h                                       ; $5225: $44
    add e                                         ; $5226: $83
    adc e                                         ; $5227: $8b
    adc l                                         ; $5228: $8d
    ld a, [bc]                                    ; $5229: $0a
    add e                                         ; $522a: $83
    adc e                                         ; $522b: $8b
    adc l                                         ; $522c: $8d
    ld c, $83                                     ; $522d: $0e $83
    adc e                                         ; $522f: $8b
    adc e                                         ; $5230: $8b
    ld [bc], a                                    ; $5231: $02
    add e                                         ; $5232: $83
    xor e                                         ; $5233: $ab
    xor e                                         ; $5234: $ab
    xor e                                         ; $5235: $ab
    ld a, a                                       ; $5236: $7f
    add b                                         ; $5237: $80
    adc c                                         ; $5238: $89
    ld a, [hl-]                                   ; $5239: $3a
    ld [hl], c                                    ; $523a: $71
    ld h, b                                       ; $523b: $60
    ld h, a                                       ; $523c: $67
    jr c, jr_07d_51d1                             ; $523d: $38 $92

    ld h, c                                       ; $523f: $61
    ld h, d                                       ; $5240: $62
    ld a, [hl-]                                   ; $5241: $3a
    ld b, e                                       ; $5242: $43
    ld b, d                                       ; $5243: $42
    dec a                                         ; $5244: $3d
    inc a                                         ; $5245: $3c
    rlca                                          ; $5246: $07
    ld c, $0f                                     ; $5247: $0e $0f
    xor e                                         ; $5249: $ab
    ld b, $07                                     ; $524a: $06 $07
    ld [bc], a                                    ; $524c: $02
    xor e                                         ; $524d: $ab
    ld a, [bc]                                    ; $524e: $0a
    ld [bc], a                                    ; $524f: $02
    ld [bc], a                                    ; $5250: $02
    xor e                                         ; $5251: $ab
    xor e                                         ; $5252: $ab
    xor e                                         ; $5253: $ab
    xor e                                         ; $5254: $ab
    xor e                                         ; $5255: $ab
    add hl, sp                                    ; $5256: $39
    pop de                                        ; $5257: $d1
    pop de                                        ; $5258: $d1
    pop de                                        ; $5259: $d1
    scf                                           ; $525a: $37
    pop de                                        ; $525b: $d1
    pop de                                        ; $525c: $d1
    pop de                                        ; $525d: $d1
    add hl, sp                                    ; $525e: $39
    pop de                                        ; $525f: $d1
    pop de                                        ; $5260: $d1
    pop de                                        ; $5261: $d1
    dec sp                                        ; $5262: $3b
    pop de                                        ; $5263: $d1
    pop de                                        ; $5264: $d1
    pop de                                        ; $5265: $d1
    xor e                                         ; $5266: $ab
    add e                                         ; $5267: $83
    add e                                         ; $5268: $83
    add e                                         ; $5269: $83
    xor e                                         ; $526a: $ab
    add e                                         ; $526b: $83
    add e                                         ; $526c: $83
    add e                                         ; $526d: $83
    xor e                                         ; $526e: $ab
    add e                                         ; $526f: $83
    add e                                         ; $5270: $83
    add e                                         ; $5271: $83
    xor e                                         ; $5272: $ab
    add e                                         ; $5273: $83
    add e                                         ; $5274: $83
    add e                                         ; $5275: $83
    pop de                                        ; $5276: $d1
    add hl, sp                                    ; $5277: $39
    ld a, [hl-]                                   ; $5278: $3a
    ld e, [hl]                                    ; $5279: $5e
    pop de                                        ; $527a: $d1
    scf                                           ; $527b: $37
    jr c, jr_07d_5206                             ; $527c: $38 $88

    pop de                                        ; $527e: $d1
    add hl, sp                                    ; $527f: $39
    ld a, [hl-]                                   ; $5280: $3a
    adc h                                         ; $5281: $8c
    pop de                                        ; $5282: $d1
    scf                                           ; $5283: $37
    jr c, jr_07d_5207                             ; $5284: $38 $81

    add e                                         ; $5286: $83
    adc e                                         ; $5287: $8b
    adc l                                         ; $5288: $8d
    ld [bc], a                                    ; $5289: $02
    add e                                         ; $528a: $83
    adc l                                         ; $528b: $8d
    adc l                                         ; $528c: $8d
    ld a, [bc]                                    ; $528d: $0a
    add e                                         ; $528e: $83
    adc l                                         ; $528f: $8d
    adc e                                         ; $5290: $8b
    rrca                                          ; $5291: $0f
    add e                                         ; $5292: $83
    adc e                                         ; $5293: $8b
    adc e                                         ; $5294: $8b
    ld a, [bc]                                    ; $5295: $0a
    ld e, a                                       ; $5296: $5f
    ld e, l                                       ; $5297: $5d
    ld e, [hl]                                    ; $5298: $5e
    ld a, [hl-]                                   ; $5299: $3a
    sub d                                         ; $529a: $92
    ld c, c                                       ; $529b: $49
    ld c, d                                       ; $529c: $4a
    ld c, e                                       ; $529d: $4b
    ld a, a                                       ; $529e: $7f
    ld l, a                                       ; $529f: $6f
    ld a, [hl]                                    ; $52a0: $7e
    ld a, [hl-]                                   ; $52a1: $3a
    ld [hl], c                                    ; $52a2: $71
    ld h, b                                       ; $52a3: $60
    ld h, a                                       ; $52a4: $67
    jr c, jr_07d_52a9                             ; $52a5: $38 $02

    ld [bc], a                                    ; $52a7: $02
    ld [bc], a                                    ; $52a8: $02

jr_07d_52a9:
    xor e                                         ; $52a9: $ab
    ld c, $8b                                     ; $52aa: $0e $8b
    adc e                                         ; $52ac: $8b
    adc e                                         ; $52ad: $8b
    ld b, $02                                     ; $52ae: $06 $02
    ld [bc], a                                    ; $52b0: $02
    xor e                                         ; $52b1: $ab
    rlca                                          ; $52b2: $07
    ld b, $06                                     ; $52b3: $06 $06
    xor e                                         ; $52b5: $ab
    add hl, sp                                    ; $52b6: $39
    pop de                                        ; $52b7: $d1
    pop de                                        ; $52b8: $d1
    pop de                                        ; $52b9: $d1
    ld c, h                                       ; $52ba: $4c
    pop de                                        ; $52bb: $d1
    pop de                                        ; $52bc: $d1
    pop de                                        ; $52bd: $d1
    add hl, sp                                    ; $52be: $39
    pop de                                        ; $52bf: $d1
    pop de                                        ; $52c0: $d1
    pop de                                        ; $52c1: $d1
    scf                                           ; $52c2: $37
    pop de                                        ; $52c3: $d1
    pop de                                        ; $52c4: $d1
    pop de                                        ; $52c5: $d1
    xor e                                         ; $52c6: $ab
    add e                                         ; $52c7: $83
    add e                                         ; $52c8: $83
    add e                                         ; $52c9: $83
    adc e                                         ; $52ca: $8b
    add e                                         ; $52cb: $83
    add e                                         ; $52cc: $83
    add e                                         ; $52cd: $83
    xor e                                         ; $52ce: $ab
    add e                                         ; $52cf: $83
    add e                                         ; $52d0: $83
    add e                                         ; $52d1: $83
    xor e                                         ; $52d2: $ab
    add e                                         ; $52d3: $83
    add e                                         ; $52d4: $83
    add e                                         ; $52d5: $83
    add hl, bc                                    ; $52d6: $09
    nop                                           ; $52d7: $00
    rla                                           ; $52d8: $17
    nop                                           ; $52d9: $00
    ret nz                                        ; $52da: $c0

    ld de, $d1d1                                  ; $52db: $11 $d1 $d1
    pop de                                        ; $52de: $d1
    pop de                                        ; $52df: $d1
    pop de                                        ; $52e0: $d1
    pop de                                        ; $52e1: $d1
    pop de                                        ; $52e2: $d1
    pop de                                        ; $52e3: $d1
    pop de                                        ; $52e4: $d1
    pop de                                        ; $52e5: $d1
    pop de                                        ; $52e6: $d1
    pop de                                        ; $52e7: $d1
    pop de                                        ; $52e8: $d1
    pop de                                        ; $52e9: $d1
    pop de                                        ; $52ea: $d1
    pop de                                        ; $52eb: $d1
    add e                                         ; $52ec: $83
    add e                                         ; $52ed: $83
    add e                                         ; $52ee: $83
    add e                                         ; $52ef: $83
    add e                                         ; $52f0: $83
    add e                                         ; $52f1: $83
    add e                                         ; $52f2: $83
    add e                                         ; $52f3: $83
    add e                                         ; $52f4: $83
    add e                                         ; $52f5: $83
    inc bc                                        ; $52f6: $03
    add e                                         ; $52f7: $83
    add e                                         ; $52f8: $83
    add e                                         ; $52f9: $83
    inc bc                                        ; $52fa: $03
    add e                                         ; $52fb: $83
    jp nc, $d4d3                                  ; $52fc: $d2 $d3 $d4

    push de                                       ; $52ff: $d5
    sub $d7                                       ; $5300: $d6 $d7
    ret c                                         ; $5302: $d8

    reti                                          ; $5303: $d9


    jp c, $dcdb                                   ; $5304: $da $db $dc

    db $dd                                        ; $5307: $dd
    sbc $df                                       ; $5308: $de $df
    call nc, $03e0                                ; $530a: $d4 $e0 $03
    add e                                         ; $530d: $83
    dec b                                         ; $530e: $05
    ld [bc], a                                    ; $530f: $02
    inc bc                                        ; $5310: $03
    add e                                         ; $5311: $83
    dec b                                         ; $5312: $05
    ld [bc], a                                    ; $5313: $02
    and e                                         ; $5314: $a3
    and e                                         ; $5315: $a3
    ld [bc], a                                    ; $5316: $02
    dec b                                         ; $5317: $05
    and e                                         ; $5318: $a3
    and e                                         ; $5319: $a3
    ld [bc], a                                    ; $531a: $02
    dec b                                         ; $531b: $05
    pop hl                                        ; $531c: $e1
    call nc, $dadb                                ; $531d: $d4 $db $da
    ld [c], a                                     ; $5320: $e2
    db $e3                                        ; $5321: $e3
    rst $18                                       ; $5322: $df
    sbc $e4                                       ; $5323: $de $e4
    push hl                                       ; $5325: $e5
    and $e7                                       ; $5326: $e6 $e7
    add sp, -$17                                  ; $5328: $e8 $e9
    ld [$02eb], a                                 ; $532a: $ea $eb $02
    dec b                                         ; $532d: $05
    add e                                         ; $532e: $83
    add e                                         ; $532f: $83
    dec b                                         ; $5330: $05
    ld [bc], a                                    ; $5331: $02
    add e                                         ; $5332: $83
    add e                                         ; $5333: $83
    dec b                                         ; $5334: $05
    ld [bc], a                                    ; $5335: $02
    add e                                         ; $5336: $83
    add e                                         ; $5337: $83
    ld [bc], a                                    ; $5338: $02
    ld [bc], a                                    ; $5339: $02
    add e                                         ; $533a: $83
    add e                                         ; $533b: $83
    pop de                                        ; $533c: $d1
    db $ec                                        ; $533d: $ec
    db $ed                                        ; $533e: $ed
    xor $ef                                       ; $533f: $ee $ef
    ldh a, [$f1]                                  ; $5341: $f0 $f1
    ld a, [c]                                     ; $5343: $f2
    di                                            ; $5344: $f3
    db $f4                                        ; $5345: $f4
    push af                                       ; $5346: $f5
    or $d1                                        ; $5347: $f6 $d1
    rst $30                                       ; $5349: $f7
    ld hl, sp-$07                                 ; $534a: $f8 $f9
    ld bc, $0101                                  ; $534c: $01 $01 $01
    ld bc, $0101                                  ; $534f: $01 $01 $01
    ld bc, $0101                                  ; $5352: $01 $01 $01
    ld bc, $0101                                  ; $5355: $01 $01 $01
    ld bc, $0101                                  ; $5358: $01 $01 $01
    ld bc, $e6e7                                  ; $535b: $01 $e7 $e6
    ld a, [$ebfb]                                 ; $535e: $fa $fb $eb
    ld [$fdfc], a                                 ; $5361: $ea $fc $fd
    cp $ff                                        ; $5364: $fe $ff
    nop                                           ; $5366: $00
    ld bc, $0302                                  ; $5367: $01 $02 $03
    inc b                                         ; $536a: $04
    reti                                          ; $536b: $d9


    and [hl]                                      ; $536c: $a6
    and [hl]                                      ; $536d: $a6
    ld [bc], a                                    ; $536e: $02
    ld [bc], a                                    ; $536f: $02
    and [hl]                                      ; $5370: $a6
    and [hl]                                      ; $5371: $a6
    ld [bc], a                                    ; $5372: $02
    ld [bc], a                                    ; $5373: $02
    and [hl]                                      ; $5374: $a6
    and [hl]                                      ; $5375: $a6
    dec b                                         ; $5376: $05
    dec b                                         ; $5377: $05
    add [hl]                                      ; $5378: $86
    add e                                         ; $5379: $83
    dec b                                         ; $537a: $05
    ld [bc], a                                    ; $537b: $02
    dec b                                         ; $537c: $05
    ld b, $ff                                     ; $537d: $06 $ff
    cp $07                                        ; $537f: $fe $07
    push hl                                       ; $5381: $e5
    ld [$0a09], sp                                ; $5382: $08 $09 $0a
    dec bc                                        ; $5385: $0b
    inc c                                         ; $5386: $0c
    dec c                                         ; $5387: $0d
    ld [c], a                                     ; $5388: $e2
    ret c                                         ; $5389: $d8

    ld c, $0f                                     ; $538a: $0e $0f
    ld [bc], a                                    ; $538c: $02
    ld [bc], a                                    ; $538d: $02
    add e                                         ; $538e: $83
    add e                                         ; $538f: $83
    dec b                                         ; $5390: $05
    dec b                                         ; $5391: $05
    ld [bc], a                                    ; $5392: $02
    ld bc, $0205                                  ; $5393: $01 $05 $02
    ld [bc], a                                    ; $5396: $02
    ld bc, $0502                                  ; $5397: $01 $02 $05
    ld [bc], a                                    ; $539a: $02
    ld bc, $1110                                  ; $539b: $01 $10 $11
    ld [de], a                                    ; $539e: $12
    inc de                                        ; $539f: $13
    pop de                                        ; $53a0: $d1
    inc d                                         ; $53a1: $14
    dec d                                         ; $53a2: $15
    ld d, $17                                     ; $53a3: $16 $17
    jr jr_07d_53c0                                ; $53a5: $18 $19

    ld a, [de]                                    ; $53a7: $1a
    pop de                                        ; $53a8: $d1
    dec de                                        ; $53a9: $1b
    inc e                                         ; $53aa: $1c
    dec e                                         ; $53ab: $1d
    ld bc, $0101                                  ; $53ac: $01 $01 $01
    ld bc, $0101                                  ; $53af: $01 $01 $01
    ld bc, $0101                                  ; $53b2: $01 $01 $01
    ld bc, $0101                                  ; $53b5: $01 $01 $01
    ld bc, $0101                                  ; $53b8: $01 $01 $01
    ld bc, $d1d1                                  ; $53bb: $01 $d1 $d1
    pop de                                        ; $53be: $d1

jr_07d_53bf:
    pop de                                        ; $53bf: $d1

jr_07d_53c0:
    pop de                                        ; $53c0: $d1
    pop de                                        ; $53c1: $d1
    pop de                                        ; $53c2: $d1
    pop de                                        ; $53c3: $d1
    pop de                                        ; $53c4: $d1
    pop de                                        ; $53c5: $d1
    pop de                                        ; $53c6: $d1
    pop de                                        ; $53c7: $d1
    pop de                                        ; $53c8: $d1
    pop de                                        ; $53c9: $d1
    pop de                                        ; $53ca: $d1
    pop de                                        ; $53cb: $d1
    inc bc                                        ; $53cc: $03
    inc bc                                        ; $53cd: $03
    inc bc                                        ; $53ce: $03
    inc bc                                        ; $53cf: $03
    inc bc                                        ; $53d0: $03
    inc bc                                        ; $53d1: $03
    inc bc                                        ; $53d2: $03
    ld b, $03                                     ; $53d3: $06 $03
    inc bc                                        ; $53d5: $03
    inc bc                                        ; $53d6: $03
    ld b, $03                                     ; $53d7: $06 $03
    inc bc                                        ; $53d9: $03
    inc bc                                        ; $53da: $03
    ld b, $d2                                     ; $53db: $06 $d2
    db $d3                                        ; $53dd: $d3
    push hl                                       ; $53de: $e5
    db $dd                                        ; $53df: $dd
    sub $1e                                       ; $53e0: $d6 $1e
    rra                                           ; $53e2: $1f
    jr nz, jr_07d_53bf                            ; $53e3: $20 $da

    ld hl, $2322                                  ; $53e5: $21 $22 $23
    sbc $24                                       ; $53e8: $de $24
    dec h                                         ; $53ea: $25
    ld h, $86                                     ; $53eb: $26 $86
    add e                                         ; $53ed: $83
    ld [bc], a                                    ; $53ee: $02
    ld [bc], a                                    ; $53ef: $02
    add e                                         ; $53f0: $83
    add e                                         ; $53f1: $83
    add e                                         ; $53f2: $83
    add e                                         ; $53f3: $83
    and e                                         ; $53f4: $a3
    add e                                         ; $53f5: $83
    add e                                         ; $53f6: $83
    add [hl]                                      ; $53f7: $86
    and e                                         ; $53f8: $a3
    add e                                         ; $53f9: $83
    add e                                         ; $53fa: $83
    add [hl]                                      ; $53fb: $86
    daa                                           ; $53fc: $27
    push hl                                       ; $53fd: $e5
    jr z, jr_07d_5429                             ; $53fe: $28 $29

    ld a, [hl+]                                   ; $5400: $2a
    dec hl                                        ; $5401: $2b
    inc l                                         ; $5402: $2c
    dec l                                         ; $5403: $2d
    ld l, $2f                                     ; $5404: $2e $2f
    jr nc, jr_07d_5439                            ; $5406: $30 $31

    ld [hl-], a                                   ; $5408: $32
    inc sp                                        ; $5409: $33
    inc [hl]                                      ; $540a: $34
    dec [hl]                                      ; $540b: $35
    ld [bc], a                                    ; $540c: $02
    ld [bc], a                                    ; $540d: $02
    ld [bc], a                                    ; $540e: $02
    ld [bc], a                                    ; $540f: $02
    add e                                         ; $5410: $83
    add e                                         ; $5411: $83
    add e                                         ; $5412: $83
    add e                                         ; $5413: $83
    add e                                         ; $5414: $83
    add e                                         ; $5415: $83
    add e                                         ; $5416: $83
    add e                                         ; $5417: $83
    add e                                         ; $5418: $83
    add [hl]                                      ; $5419: $86
    add [hl]                                      ; $541a: $86
    add [hl]                                      ; $541b: $86
    ld [hl], $37                                  ; $541c: $36 $37
    jr c, jr_07d_5459                             ; $541e: $38 $39

    ld a, [hl-]                                   ; $5420: $3a
    dec sp                                        ; $5421: $3b
    inc a                                         ; $5422: $3c
    inc a                                         ; $5423: $3c
    dec a                                         ; $5424: $3d
    ld a, $3f                                     ; $5425: $3e $3f
    reti                                          ; $5427: $d9


    ld b, b                                       ; $5428: $40

jr_07d_5429:
    ld b, c                                       ; $5429: $41
    daa                                           ; $542a: $27
    push hl                                       ; $542b: $e5
    ld [bc], a                                    ; $542c: $02
    ld [bc], a                                    ; $542d: $02
    ld [bc], a                                    ; $542e: $02
    ld [bc], a                                    ; $542f: $02
    add e                                         ; $5430: $83
    add e                                         ; $5431: $83
    add e                                         ; $5432: $83
    add e                                         ; $5433: $83
    add e                                         ; $5434: $83
    add [hl]                                      ; $5435: $86
    ld [bc], a                                    ; $5436: $02
    ld [bc], a                                    ; $5437: $02
    add e                                         ; $5438: $83

jr_07d_5439:
    add e                                         ; $5439: $83
    ld [bc], a                                    ; $543a: $02
    ld [bc], a                                    ; $543b: $02
    rst $20                                       ; $543c: $e7
    ld b, d                                       ; $543d: $42
    ld b, e                                       ; $543e: $43
    ld b, h                                       ; $543f: $44
    db $eb                                        ; $5440: $eb
    ld b, l                                       ; $5441: $45
    ld b, [hl]                                    ; $5442: $46
    ld b, a                                       ; $5443: $47
    cp $48                                        ; $5444: $fe $48
    ld c, c                                       ; $5446: $49
    ld c, d                                       ; $5447: $4a
    pop de                                        ; $5448: $d1
    ld c, e                                       ; $5449: $4b
    ld c, h                                       ; $544a: $4c
    ld c, l                                       ; $544b: $4d
    and [hl]                                      ; $544c: $a6
    add [hl]                                      ; $544d: $86
    add e                                         ; $544e: $83
    add [hl]                                      ; $544f: $86
    and [hl]                                      ; $5450: $a6
    add [hl]                                      ; $5451: $86
    add e                                         ; $5452: $83
    add e                                         ; $5453: $83
    and e                                         ; $5454: $a3
    add [hl]                                      ; $5455: $86
    add e                                         ; $5456: $83
    add e                                         ; $5457: $83
    add e                                         ; $5458: $83

jr_07d_5459:
    add e                                         ; $5459: $83
    add e                                         ; $545a: $83
    add e                                         ; $545b: $83
    ld c, [hl]                                    ; $545c: $4e
    ld c, a                                       ; $545d: $4f
    ld d, b                                       ; $545e: $50
    ld d, c                                       ; $545f: $51
    ld d, d                                       ; $5460: $52
    ld d, e                                       ; $5461: $53
    ld d, h                                       ; $5462: $54
    ld d, l                                       ; $5463: $55
    ld d, [hl]                                    ; $5464: $56
    ld d, a                                       ; $5465: $57
    ld e, b                                       ; $5466: $58
    ld e, c                                       ; $5467: $59
    ld e, d                                       ; $5468: $5a
    ld e, e                                       ; $5469: $5b
    ld e, h                                       ; $546a: $5c
    ld e, l                                       ; $546b: $5d
    add [hl]                                      ; $546c: $86
    add [hl]                                      ; $546d: $86
    add [hl]                                      ; $546e: $86
    add e                                         ; $546f: $83
    add [hl]                                      ; $5470: $86
    add [hl]                                      ; $5471: $86
    add [hl]                                      ; $5472: $86
    add [hl]                                      ; $5473: $86
    add e                                         ; $5474: $83
    add e                                         ; $5475: $83
    add [hl]                                      ; $5476: $86
    add [hl]                                      ; $5477: $86
    add e                                         ; $5478: $83
    add e                                         ; $5479: $83
    add [hl]                                      ; $547a: $86
    add e                                         ; $547b: $83
    ld e, [hl]                                    ; $547c: $5e
    ld e, a                                       ; $547d: $5f
    ld h, b                                       ; $547e: $60
    ld h, c                                       ; $547f: $61
    ld h, d                                       ; $5480: $62
    ld h, e                                       ; $5481: $63
    ccf                                           ; $5482: $3f
    ret c                                         ; $5483: $d8

    ld h, h                                       ; $5484: $64
    ld h, l                                       ; $5485: $65
    ld h, [hl]                                    ; $5486: $66
    db $fd                                        ; $5487: $fd
    ld h, a                                       ; $5488: $67
    ld l, b                                       ; $5489: $68
    ld l, c                                       ; $548a: $69
    ld l, d                                       ; $548b: $6a
    add e                                         ; $548c: $83
    add e                                         ; $548d: $83
    add e                                         ; $548e: $83
    add e                                         ; $548f: $83
    add [hl]                                      ; $5490: $86
    add e                                         ; $5491: $83
    dec b                                         ; $5492: $05
    dec b                                         ; $5493: $05
    add e                                         ; $5494: $83
    add e                                         ; $5495: $83
    add e                                         ; $5496: $83
    ld [bc], a                                    ; $5497: $02
    add e                                         ; $5498: $83
    add e                                         ; $5499: $83
    add e                                         ; $549a: $83
    add e                                         ; $549b: $83
    ld l, e                                       ; $549c: $6b
    ld l, h                                       ; $549d: $6c
    ld l, l                                       ; $549e: $6d
    ld l, [hl]                                    ; $549f: $6e
    ld l, a                                       ; $54a0: $6f
    ld [hl], b                                    ; $54a1: $70
    ld [hl], c                                    ; $54a2: $71
    ld [hl], d                                    ; $54a3: $72
    ld [hl], e                                    ; $54a4: $73
    ld [hl], h                                    ; $54a5: $74
    ld [hl], l                                    ; $54a6: $75
    halt                                          ; $54a7: $76
    ld [hl], a                                    ; $54a8: $77
    ld a, b                                       ; $54a9: $78
    ld a, c                                       ; $54aa: $79
    ld a, d                                       ; $54ab: $7a
    ld bc, $0101                                  ; $54ac: $01 $01 $01
    rlca                                          ; $54af: $07
    ld bc, $0101                                  ; $54b0: $01 $01 $01
    rlca                                          ; $54b3: $07
    ld bc, $0101                                  ; $54b4: $01 $01 $01
    rlca                                          ; $54b7: $07
    ld bc, $0101                                  ; $54b8: $01 $01 $01
    rlca                                          ; $54bb: $07
    ld a, e                                       ; $54bc: $7b
    ld a, h                                       ; $54bd: $7c
    ld a, l                                       ; $54be: $7d
    ld a, [hl]                                    ; $54bf: $7e
    ld a, a                                       ; $54c0: $7f
    add b                                         ; $54c1: $80
    add c                                         ; $54c2: $81
    add d                                         ; $54c3: $82
    add e                                         ; $54c4: $83
    add h                                         ; $54c5: $84
    add l                                         ; $54c6: $85
    add d                                         ; $54c7: $82
    add [hl]                                      ; $54c8: $86
    add a                                         ; $54c9: $87
    adc b                                         ; $54ca: $88
    add d                                         ; $54cb: $82
    ld bc, $0701                                  ; $54cc: $01 $01 $07
    rlca                                          ; $54cf: $07
    ld bc, $0f09                                  ; $54d0: $01 $09 $0f
    rrca                                          ; $54d3: $0f
    add hl, bc                                    ; $54d4: $09
    add hl, bc                                    ; $54d5: $09
    rrca                                          ; $54d6: $0f
    rrca                                          ; $54d7: $0f
    add hl, bc                                    ; $54d8: $09
    add hl, bc                                    ; $54d9: $09
    rrca                                          ; $54da: $0f
    ld c, a                                       ; $54db: $4f
    adc c                                         ; $54dc: $89
    adc d                                         ; $54dd: $8a
    adc e                                         ; $54de: $8b
    adc h                                         ; $54df: $8c
    adc l                                         ; $54e0: $8d
    adc [hl]                                      ; $54e1: $8e
    adc a                                         ; $54e2: $8f
    sub b                                         ; $54e3: $90
    sub c                                         ; $54e4: $91
    sub d                                         ; $54e5: $92
    sub e                                         ; $54e6: $93
    sub h                                         ; $54e7: $94
    sub l                                         ; $54e8: $95
    sub [hl]                                      ; $54e9: $96
    sub a                                         ; $54ea: $97
    sbc b                                         ; $54eb: $98
    add hl, bc                                    ; $54ec: $09
    add hl, bc                                    ; $54ed: $09
    add hl, bc                                    ; $54ee: $09
    rrca                                          ; $54ef: $0f
    add hl, bc                                    ; $54f0: $09
    add hl, bc                                    ; $54f1: $09
    add hl, bc                                    ; $54f2: $09
    rrca                                          ; $54f3: $0f
    add hl, bc                                    ; $54f4: $09
    add hl, bc                                    ; $54f5: $09
    add hl, bc                                    ; $54f6: $09
    rrca                                          ; $54f7: $0f
    add hl, bc                                    ; $54f8: $09
    add hl, bc                                    ; $54f9: $09
    add hl, bc                                    ; $54fa: $09
    add hl, bc                                    ; $54fb: $09
    sbc c                                         ; $54fc: $99
    sbc d                                         ; $54fd: $9a
    sbc e                                         ; $54fe: $9b
    add d                                         ; $54ff: $82
    sbc h                                         ; $5500: $9c
    sbc l                                         ; $5501: $9d
    sbc [hl]                                      ; $5502: $9e
    sbc a                                         ; $5503: $9f
    and b                                         ; $5504: $a0
    and c                                         ; $5505: $a1
    and d                                         ; $5506: $a2
    and e                                         ; $5507: $a3
    and h                                         ; $5508: $a4
    and l                                         ; $5509: $a5
    and [hl]                                      ; $550a: $a6
    and a                                         ; $550b: $a7
    add hl, bc                                    ; $550c: $09
    add hl, bc                                    ; $550d: $09
    rrca                                          ; $550e: $0f
    ld c, a                                       ; $550f: $4f
    add hl, bc                                    ; $5510: $09
    add hl, bc                                    ; $5511: $09
    rrca                                          ; $5512: $0f
    rrca                                          ; $5513: $0f
    add hl, bc                                    ; $5514: $09
    add hl, bc                                    ; $5515: $09
    rrca                                          ; $5516: $0f
    rrca                                          ; $5517: $0f
    add hl, bc                                    ; $5518: $09
    add hl, bc                                    ; $5519: $09
    rrca                                          ; $551a: $0f
    rrca                                          ; $551b: $0f
    xor b                                         ; $551c: $a8
    xor c                                         ; $551d: $a9
    xor d                                         ; $551e: $aa
    xor e                                         ; $551f: $ab
    xor h                                         ; $5520: $ac
    xor l                                         ; $5521: $ad
    call nc, $e2d5                                ; $5522: $d4 $d5 $e2
    db $e3                                        ; $5525: $e3
    xor [hl]                                      ; $5526: $ae
    xor a                                         ; $5527: $af
    db $e4                                        ; $5528: $e4
    daa                                           ; $5529: $27
    or b                                          ; $552a: $b0
    or c                                          ; $552b: $b1
    ld a, [bc]                                    ; $552c: $0a
    ld a, [bc]                                    ; $552d: $0a
    ld a, [bc]                                    ; $552e: $0a
    ld a, [bc]                                    ; $552f: $0a
    adc e                                         ; $5530: $8b
    adc e                                         ; $5531: $8b
    ld [bc], a                                    ; $5532: $02
    dec b                                         ; $5533: $05
    ld [bc], a                                    ; $5534: $02
    dec b                                         ; $5535: $05
    dec c                                         ; $5536: $0d
    dec c                                         ; $5537: $0d
    dec b                                         ; $5538: $05
    ld [bc], a                                    ; $5539: $02
    ld a, [bc]                                    ; $553a: $0a
    ld a, [bc]                                    ; $553b: $0a
    or d                                          ; $553c: $b2
    jr z, @+$05                                   ; $553d: $28 $03

    ld [bc], a                                    ; $553f: $02
    nop                                           ; $5540: $00
    ld bc, $d2d3                                  ; $5541: $01 $d3 $d2
    inc b                                         ; $5544: $04
    reti                                          ; $5545: $d9


    rst $10                                       ; $5546: $d7
    sub $dc                                       ; $5547: $d6 $dc
    db $dd                                        ; $5549: $dd
    db $db                                        ; $554a: $db
    jp c, $220a                                   ; $554b: $da $0a $22

    and e                                         ; $554e: $a3
    and [hl]                                      ; $554f: $a6
    dec b                                         ; $5550: $05
    ld [bc], a                                    ; $5551: $02
    and e                                         ; $5552: $a3
    and [hl]                                      ; $5553: $a6
    ld [bc], a                                    ; $5554: $02
    ld [bc], a                                    ; $5555: $02
    and [hl]                                      ; $5556: $a6
    and e                                         ; $5557: $a3
    dec b                                         ; $5558: $05
    ld [bc], a                                    ; $5559: $02
    add e                                         ; $555a: $83
    add e                                         ; $555b: $83
    or e                                          ; $555c: $b3
    or h                                          ; $555d: $b4
    or l                                          ; $555e: $b5
    or [hl]                                       ; $555f: $b6
    dec b                                         ; $5560: $05
    ccf                                           ; $5561: $3f
    ret c                                         ; $5562: $d8

    or a                                          ; $5563: $b7
    rlca                                          ; $5564: $07
    cp b                                          ; $5565: $b8
    cp c                                          ; $5566: $b9
    cp d                                          ; $5567: $ba
    cp e                                          ; $5568: $bb
    cp h                                          ; $5569: $bc
    call nc, $8bbd                                ; $556a: $d4 $bd $8b
    adc e                                         ; $556d: $8b
    adc e                                         ; $556e: $8b
    adc e                                         ; $556f: $8b
    dec b                                         ; $5570: $05
    dec b                                         ; $5571: $05
    dec b                                         ; $5572: $05
    dec c                                         ; $5573: $0d
    ld [bc], a                                    ; $5574: $02
    ld a, [bc]                                    ; $5575: $0a
    ld a, [bc]                                    ; $5576: $0a
    dec c                                         ; $5577: $0d
    adc e                                         ; $5578: $8b
    adc e                                         ; $5579: $8b
    dec b                                         ; $557a: $05
    dec c                                         ; $557b: $0d
    cp [hl]                                       ; $557c: $be
    call nc, $dedf                                ; $557d: $d4 $df $de
    ld a, [$e6fb]                                 ; $5580: $fa $fb $e6
    rst $20                                       ; $5583: $e7
    db $fc                                        ; $5584: $fc
    push hl                                       ; $5585: $e5
    ld [$0aeb], a                                 ; $5586: $ea $eb $0a
    call nc, $feff                                ; $5589: $d4 $ff $fe
    adc e                                         ; $558c: $8b
    ld [bc], a                                    ; $558d: $02
    add [hl]                                      ; $558e: $86
    add e                                         ; $558f: $83
    dec b                                         ; $5590: $05
    ld [bc], a                                    ; $5591: $02
    add [hl]                                      ; $5592: $86
    add [hl]                                      ; $5593: $86
    dec b                                         ; $5594: $05
    ld [bc], a                                    ; $5595: $02
    add e                                         ; $5596: $83
    add e                                         ; $5597: $83
    ld [bc], a                                    ; $5598: $02
    ld [bc], a                                    ; $5599: $02
    add e                                         ; $559a: $83
    add [hl]                                      ; $559b: $86
    pop de                                        ; $559c: $d1
    pop de                                        ; $559d: $d1
    pop de                                        ; $559e: $d1
    pop de                                        ; $559f: $d1
    pop de                                        ; $55a0: $d1
    pop de                                        ; $55a1: $d1
    pop de                                        ; $55a2: $d1
    pop de                                        ; $55a3: $d1
    pop de                                        ; $55a4: $d1
    pop de                                        ; $55a5: $d1
    pop de                                        ; $55a6: $d1
    pop de                                        ; $55a7: $d1
    pop de                                        ; $55a8: $d1
    pop de                                        ; $55a9: $d1
    pop de                                        ; $55aa: $d1
    pop de                                        ; $55ab: $d1
    inc bc                                        ; $55ac: $03
    inc bc                                        ; $55ad: $03
    inc bc                                        ; $55ae: $03
    inc bc                                        ; $55af: $03
    inc bc                                        ; $55b0: $03
    inc bc                                        ; $55b1: $03
    inc bc                                        ; $55b2: $03
    inc bc                                        ; $55b3: $03
    ld b, $03                                     ; $55b4: $06 $03
    inc bc                                        ; $55b6: $03
    inc bc                                        ; $55b7: $03
    inc bc                                        ; $55b8: $03
    inc bc                                        ; $55b9: $03
    inc bc                                        ; $55ba: $03
    inc bc                                        ; $55bb: $03
    pop de                                        ; $55bc: $d1
    cp a                                          ; $55bd: $bf
    ret nz                                        ; $55be: $c0

    pop bc                                        ; $55bf: $c1
    pop de                                        ; $55c0: $d1
    pop de                                        ; $55c1: $d1
    jp nz, $d1d1                                  ; $55c2: $c2 $d1 $d1

    pop de                                        ; $55c5: $d1
    pop de                                        ; $55c6: $d1
    jp $d1d1                                      ; $55c7: $c3 $d1 $d1


    pop de                                        ; $55ca: $d1
    call nz, $8b83                                ; $55cb: $c4 $83 $8b
    adc e                                         ; $55ce: $8b
    adc e                                         ; $55cf: $8b
    add e                                         ; $55d0: $83
    add e                                         ; $55d1: $83
    adc e                                         ; $55d2: $8b
    add e                                         ; $55d3: $83
    inc bc                                        ; $55d4: $03
    inc bc                                        ; $55d5: $03
    ld bc, $0309                                  ; $55d6: $01 $09 $03
    inc bc                                        ; $55d9: $03
    ld bc, $c509                                  ; $55da: $01 $09 $c5
    add $c7                                       ; $55dd: $c6 $c7
    ret z                                         ; $55df: $c8

    ret                                           ; $55e0: $c9


    jp z, $d1cb                                   ; $55e1: $ca $cb $d1

    pop de                                        ; $55e4: $d1
    call z, $cdd1                                 ; $55e5: $cc $d1 $cd
    pop de                                        ; $55e8: $d1
    adc $d1                                       ; $55e9: $ce $d1
    rst $08                                       ; $55eb: $cf
    adc e                                         ; $55ec: $8b
    adc [hl]                                      ; $55ed: $8e
    adc [hl]                                      ; $55ee: $8e
    adc e                                         ; $55ef: $8b
    adc [hl]                                      ; $55f0: $8e
    adc e                                         ; $55f1: $8b
    adc [hl]                                      ; $55f2: $8e
    add [hl]                                      ; $55f3: $86
    ld bc, $010f                                  ; $55f4: $01 $0f $01
    add hl, bc                                    ; $55f7: $09
    ld bc, $010f                                  ; $55f8: $01 $0f $01
    add hl, bc                                    ; $55fb: $09
    ret nc                                        ; $55fc: $d0

    pop de                                        ; $55fd: $d1
    sbc $df                                       ; $55fe: $de $df
    pop de                                        ; $5600: $d1
    pop de                                        ; $5601: $d1
    rst $20                                       ; $5602: $e7
    jp nc, $d1d3                                  ; $5603: $d2 $d3 $d1

    call nc, $d6d5                                ; $5606: $d4 $d5 $d6
    pop de                                        ; $5609: $d1
    cp $d7                                        ; $560a: $fe $d7
    adc [hl]                                      ; $560c: $8e
    adc e                                         ; $560d: $8b
    and e                                         ; $560e: $a3
    and e                                         ; $560f: $a3
    add [hl]                                      ; $5610: $86
    add e                                         ; $5611: $83
    and e                                         ; $5612: $a3
    adc e                                         ; $5613: $8b
    add hl, bc                                    ; $5614: $09
    ld bc, $8b8b                                  ; $5615: $01 $8b $8b
    add hl, bc                                    ; $5618: $09
    ld bc, $8ba3                                  ; $5619: $01 $a3 $8b
    pop de                                        ; $561c: $d1
    pop de                                        ; $561d: $d1
    pop de                                        ; $561e: $d1
    ret c                                         ; $561f: $d8

    pop de                                        ; $5620: $d1
    pop de                                        ; $5621: $d1
    pop de                                        ; $5622: $d1
    reti                                          ; $5623: $d9


    pop de                                        ; $5624: $d1
    pop de                                        ; $5625: $d1
    jp c, $d1db                                   ; $5626: $da $db $d1

    pop de                                        ; $5629: $d1
    call c, Call_000_03dd                         ; $562a: $dc $dd $03
    inc bc                                        ; $562d: $03
    ld bc, $0309                                  ; $562e: $01 $09 $03
    inc bc                                        ; $5631: $03
    ld bc, $0309                                  ; $5632: $01 $09 $03
    inc bc                                        ; $5635: $03
    add hl, bc                                    ; $5636: $09
    add hl, bc                                    ; $5637: $09
    inc bc                                        ; $5638: $03
    inc bc                                        ; $5639: $03
    add hl, bc                                    ; $563a: $09
    add hl, bc                                    ; $563b: $09
    ld l, l                                       ; $563c: $6d
    ld l, [hl]                                    ; $563d: $6e
    ld a, e                                       ; $563e: $7b
    ld a, h                                       ; $563f: $7c
    ld [hl], c                                    ; $5640: $71
    ld [hl], d                                    ; $5641: $72
    ld a, a                                       ; $5642: $7f
    add b                                         ; $5643: $80
    ld [hl], l                                    ; $5644: $75
    halt                                          ; $5645: $76
    add e                                         ; $5646: $83
    add h                                         ; $5647: $84
    adc e                                         ; $5648: $8b
    adc h                                         ; $5649: $8c
    sbc c                                         ; $564a: $99
    sbc d                                         ; $564b: $9a
    ld bc, $0107                                  ; $564c: $01 $07 $01
    ld bc, $0701                                  ; $564f: $01 $01 $07
    ld bc, $0109                                  ; $5652: $01 $09 $01
    rlca                                          ; $5655: $07
    add hl, bc                                    ; $5656: $09
    add hl, bc                                    ; $5657: $09
    add hl, bc                                    ; $5658: $09
    rrca                                          ; $5659: $0f
    add hl, bc                                    ; $565a: $09
    add hl, bc                                    ; $565b: $09
    ld a, l                                       ; $565c: $7d
    ld a, [hl]                                    ; $565d: $7e
    sbc $df                                       ; $565e: $de $df
    add c                                         ; $5660: $81
    add d                                         ; $5661: $82
    ldh [$e1], a                                  ; $5662: $e0 $e1
    add l                                         ; $5664: $85
    add d                                         ; $5665: $82
    ld [$9bd9], sp                                ; $5666: $08 $d9 $9b
    add d                                         ; $5669: $82
    ld [c], a                                     ; $566a: $e2
    push hl                                       ; $566b: $e5
    ld bc, $8b01                                  ; $566c: $01 $01 $8b
    adc e                                         ; $566f: $8b
    add hl, bc                                    ; $5670: $09
    add hl, bc                                    ; $5671: $09
    adc e                                         ; $5672: $8b
    adc e                                         ; $5673: $8b
    add hl, bc                                    ; $5674: $09
    add hl, bc                                    ; $5675: $09
    dec h                                         ; $5676: $25
    ld [bc], a                                    ; $5677: $02
    add hl, bc                                    ; $5678: $09
    ld c, c                                       ; $5679: $49
    ld a, [bc]                                    ; $567a: $0a
    ld [bc], a                                    ; $567b: $02
    pop de                                        ; $567c: $d1
    pop de                                        ; $567d: $d1
    pop de                                        ; $567e: $d1
    db $e3                                        ; $567f: $e3
    pop de                                        ; $5680: $d1
    pop de                                        ; $5681: $d1
    pop de                                        ; $5682: $d1
    db $e4                                        ; $5683: $e4
    pop de                                        ; $5684: $d1
    pop de                                        ; $5685: $d1
    pop de                                        ; $5686: $d1
    push hl                                       ; $5687: $e5
    pop de                                        ; $5688: $d1
    pop de                                        ; $5689: $d1
    and $e7                                       ; $568a: $e6 $e7
    inc bc                                        ; $568c: $03
    inc bc                                        ; $568d: $03
    ld bc, $0309                                  ; $568e: $01 $09 $03
    inc bc                                        ; $5691: $03
    ld bc, $0309                                  ; $5692: $01 $09 $03
    inc bc                                        ; $5695: $03
    add [hl]                                      ; $5696: $86
    adc [hl]                                      ; $5697: $8e
    inc bc                                        ; $5698: $03
    inc bc                                        ; $5699: $03
    adc e                                         ; $569a: $8b
    adc [hl]                                      ; $569b: $8e
    sub e                                         ; $569c: $93
    sub h                                         ; $569d: $94
    and b                                         ; $569e: $a0
    and c                                         ; $569f: $a1
    sub a                                         ; $56a0: $97
    sbc b                                         ; $56a1: $98
    and h                                         ; $56a2: $a4
    and l                                         ; $56a3: $a5
    jr z, jr_07d_56cf                             ; $56a4: $28 $29

    ld [hl], $37                                  ; $56a6: $36 $37
    add sp, $20                                   ; $56a8: $e8 $20
    ld a, [hl+]                                   ; $56aa: $2a
    dec hl                                        ; $56ab: $2b
    add hl, bc                                    ; $56ac: $09

jr_07d_56ad:
    rrca                                          ; $56ad: $0f
    add hl, bc                                    ; $56ae: $09
    add hl, bc                                    ; $56af: $09
    add hl, bc                                    ; $56b0: $09
    add hl, bc                                    ; $56b1: $09
    add hl, bc                                    ; $56b2: $09
    add hl, bc                                    ; $56b3: $09
    ld [bc], a                                    ; $56b4: $02
    ld [bc], a                                    ; $56b5: $02
    ld [bc], a                                    ; $56b6: $02
    ld [bc], a                                    ; $56b7: $02
    adc e                                         ; $56b8: $8b
    add e                                         ; $56b9: $83
    add e                                         ; $56ba: $83
    add e                                         ; $56bb: $83
    and d                                         ; $56bc: $a2
    and e                                         ; $56bd: $a3
    inc c                                         ; $56be: $0c
    ldh [$a6], a                                  ; $56bf: $e0 $a6
    jp hl                                         ; $56c1: $e9


    ld c, $fb                                     ; $56c2: $0e $fb
    jr c, @+$3b                                   ; $56c4: $38 $39

    jr z, jr_07d_56ad                             ; $56c6: $28 $e5

    inc l                                         ; $56c8: $2c
    dec l                                         ; $56c9: $2d
    ld a, [hl-]                                   ; $56ca: $3a
    dec sp                                        ; $56cb: $3b
    add hl, bc                                    ; $56cc: $09
    add hl, bc                                    ; $56cd: $09
    ld [hl+], a                                   ; $56ce: $22

jr_07d_56cf:
    ld [bc], a                                    ; $56cf: $02
    add hl, bc                                    ; $56d0: $09
    add hl, bc                                    ; $56d1: $09
    ld [hl+], a                                   ; $56d2: $22
    dec b                                         ; $56d3: $05
    ld [bc], a                                    ; $56d4: $02
    ld [bc], a                                    ; $56d5: $02
    ld [hl+], a                                   ; $56d6: $22
    ld [bc], a                                    ; $56d7: $02
    add e                                         ; $56d8: $83
    add e                                         ; $56d9: $83
    add e                                         ; $56da: $83
    add e                                         ; $56db: $83
    pop de                                        ; $56dc: $d1
    pop de                                        ; $56dd: $d1
    ld [$d1eb], a                                 ; $56de: $ea $eb $d1
    pop de                                        ; $56e1: $d1
    pop de                                        ; $56e2: $d1
    pop de                                        ; $56e3: $d1
    pop de                                        ; $56e4: $d1
    pop de                                        ; $56e5: $d1
    db $ec                                        ; $56e6: $ec
    db $ed                                        ; $56e7: $ed
    pop de                                        ; $56e8: $d1
    pop de                                        ; $56e9: $d1
    pop de                                        ; $56ea: $d1
    xor $03                                       ; $56eb: $ee $03
    inc bc                                        ; $56ed: $03
    adc e                                         ; $56ee: $8b
    adc e                                         ; $56ef: $8b
    inc bc                                        ; $56f0: $03
    inc bc                                        ; $56f1: $03
    add e                                         ; $56f2: $83
    add e                                         ; $56f3: $83
    inc bc                                        ; $56f4: $03
    inc bc                                        ; $56f5: $03
    adc e                                         ; $56f6: $8b
    adc e                                         ; $56f7: $8b
    inc bc                                        ; $56f8: $03
    add e                                         ; $56f9: $83
    add e                                         ; $56fa: $83
    adc e                                         ; $56fb: $8b
    rst $28                                       ; $56fc: $ef
    inc hl                                        ; $56fd: $23
    ld l, $2f                                     ; $56fe: $2e $2f
    ldh a, [$f1]                                  ; $5700: $f0 $f1
    ld [hl-], a                                   ; $5702: $32
    inc sp                                        ; $5703: $33
    ld a, [c]                                     ; $5704: $f2
    ld b, h                                       ; $5705: $44
    ld c, [hl]                                    ; $5706: $4e
    ld c, a                                       ; $5707: $4f
    di                                            ; $5708: $f3
    ld b, a                                       ; $5709: $47
    ld d, d                                       ; $570a: $52
    ld d, e                                       ; $570b: $53
    adc [hl]                                      ; $570c: $8e
    add e                                         ; $570d: $83
    add e                                         ; $570e: $83
    add e                                         ; $570f: $83
    adc e                                         ; $5710: $8b
    adc [hl]                                      ; $5711: $8e
    add e                                         ; $5712: $83
    add [hl]                                      ; $5713: $86
    adc e                                         ; $5714: $8b
    add e                                         ; $5715: $83
    add e                                         ; $5716: $83
    add e                                         ; $5717: $83
    adc [hl]                                      ; $5718: $8e
    add [hl]                                      ; $5719: $86
    add [hl]                                      ; $571a: $86
    add [hl]                                      ; $571b: $86
    jr nc, jr_07d_574f                            ; $571c: $30 $31

    dec a                                         ; $571e: $3d
    ld a, $34                                     ; $571f: $3e $34
    dec [hl]                                      ; $5721: $35
    ld b, b                                       ; $5722: $40
    ld b, c                                       ; $5723: $41
    ld d, b                                       ; $5724: $50
    ld d, c                                       ; $5725: $51
    ld e, [hl]                                    ; $5726: $5e
    ld e, a                                       ; $5727: $5f
    ld d, h                                       ; $5728: $54
    ld d, l                                       ; $5729: $55
    ld h, d                                       ; $572a: $62
    ld h, e                                       ; $572b: $63
    add e                                         ; $572c: $83
    add e                                         ; $572d: $83
    add [hl]                                      ; $572e: $86
    add [hl]                                      ; $572f: $86
    add e                                         ; $5730: $83
    add [hl]                                      ; $5731: $86
    add e                                         ; $5732: $83
    add e                                         ; $5733: $83
    add e                                         ; $5734: $83
    add e                                         ; $5735: $83
    add e                                         ; $5736: $83
    add e                                         ; $5737: $83
    add e                                         ; $5738: $83
    add e                                         ; $5739: $83
    add e                                         ; $573a: $83
    add e                                         ; $573b: $83
    db $f4                                        ; $573c: $f4
    db $e3                                        ; $573d: $e3
    xor [hl]                                      ; $573e: $ae
    xor a                                         ; $573f: $af
    push af                                       ; $5740: $f5
    or $f7                                        ; $5741: $f6 $f7
    ld hl, sp-$07                                 ; $5743: $f8 $f9
    ld a, [$fcfb]                                 ; $5745: $fa $fb $fc
    dec b                                         ; $5748: $05
    ld b, $fd                                     ; $5749: $06 $fd
    or a                                          ; $574b: $b7
    ld a, [bc]                                    ; $574c: $0a
    ld [bc], a                                    ; $574d: $02
    ld a, [bc]                                    ; $574e: $0a

jr_07d_574f:
    ld a, [bc]                                    ; $574f: $0a
    adc e                                         ; $5750: $8b
    adc [hl]                                      ; $5751: $8e
    adc [hl]                                      ; $5752: $8e
    adc [hl]                                      ; $5753: $8e
    adc e                                         ; $5754: $8b
    adc e                                         ; $5755: $8b
    adc e                                         ; $5756: $8b
    adc e                                         ; $5757: $8b
    ld [bc], a                                    ; $5758: $02
    ld [bc], a                                    ; $5759: $02
    ld a, [bc]                                    ; $575a: $0a
    dec c                                         ; $575b: $0d
    inc b                                         ; $575c: $04
    ret c                                         ; $575d: $d8

    inc bc                                        ; $575e: $03
    ld [bc], a                                    ; $575f: $02
    cp $ff                                        ; $5760: $fe $ff
    nop                                           ; $5762: $00
    ld bc, $0302                                  ; $5763: $01 $02 $03
    inc b                                         ; $5766: $04
    dec b                                         ; $5767: $05
    ld a, [$06fb]                                 ; $5768: $fa $fb $06
    rlca                                          ; $576b: $07
    ld [bc], a                                    ; $576c: $02
    ld [bc], a                                    ; $576d: $02
    and [hl]                                      ; $576e: $a6
    and [hl]                                      ; $576f: $a6
    adc e                                         ; $5770: $8b
    adc e                                         ; $5771: $8b
    adc [hl]                                      ; $5772: $8e
    adc e                                         ; $5773: $8b
    adc e                                         ; $5774: $8b
    adc e                                         ; $5775: $8b
    adc e                                         ; $5776: $8b
    adc e                                         ; $5777: $8b
    dec b                                         ; $5778: $05
    ld [bc], a                                    ; $5779: $02
    adc e                                         ; $577a: $8b
    adc [hl]                                      ; $577b: $8e
    rlca                                          ; $577c: $07
    daa                                           ; $577d: $27
    cp c                                          ; $577e: $b9
    cp d                                          ; $577f: $ba
    push de                                       ; $5780: $d5
    dec bc                                        ; $5781: $0b
    ld [$e2bd], sp                                ; $5782: $08 $bd $e2
    db $e3                                        ; $5785: $e3
    xor [hl]                                      ; $5786: $ae
    db $f4                                        ; $5787: $f4
    db $e4                                        ; $5788: $e4
    add hl, bc                                    ; $5789: $09
    push hl                                       ; $578a: $e5
    ld a, [bc]                                    ; $578b: $0a
    ld [bc], a                                    ; $578c: $02
    dec b                                         ; $578d: $05
    ld a, [bc]                                    ; $578e: $0a
    ld a, [bc]                                    ; $578f: $0a
    ld [bc], a                                    ; $5790: $02
    ld [bc], a                                    ; $5791: $02
    ld a, [bc]                                    ; $5792: $0a
    ld a, [bc]                                    ; $5793: $0a
    dec b                                         ; $5794: $05
    ld [bc], a                                    ; $5795: $02
    ld a, [bc]                                    ; $5796: $0a
    ld a, [bc]                                    ; $5797: $0a
    ld [bc], a                                    ; $5798: $02
    dec c                                         ; $5799: $0d
    ld [bc], a                                    ; $579a: $02
    ld a, [bc]                                    ; $579b: $0a
    db $fc                                        ; $579c: $fc
    db $fd                                        ; $579d: $fd
    rst $18                                       ; $579e: $df
    sbc $00                                       ; $579f: $de $00
    ld bc, $e7e6                                  ; $57a1: $01 $e6 $e7
    inc b                                         ; $57a4: $04
    ret c                                         ; $57a5: $d8

    ld [$27eb], a                                 ; $57a6: $ea $eb $27
    db $dd                                        ; $57a9: $dd
    rst $38                                       ; $57aa: $ff
    cp $05                                        ; $57ab: $fe $05
    ld [bc], a                                    ; $57ad: $02
    add e                                         ; $57ae: $83
    add [hl]                                      ; $57af: $86
    ld [bc], a                                    ; $57b0: $02
    ld [bc], a                                    ; $57b1: $02
    add [hl]                                      ; $57b2: $86
    add [hl]                                      ; $57b3: $86
    ld [bc], a                                    ; $57b4: $02
    ld [bc], a                                    ; $57b5: $02
    add e                                         ; $57b6: $83
    add e                                         ; $57b7: $83
    ld [bc], a                                    ; $57b8: $02
    ld [bc], a                                    ; $57b9: $02
    add [hl]                                      ; $57ba: $86
    add e                                         ; $57bb: $83
    add sp, -$17                                  ; $57bc: $e8 $e9
    dec bc                                        ; $57be: $0b
    inc c                                         ; $57bf: $0c
    dec b                                         ; $57c0: $05
    ld b, $fd                                     ; $57c1: $06 $fd
    or a                                          ; $57c3: $b7
    ld a, [bc]                                    ; $57c4: $0a
    cp b                                          ; $57c5: $b8
    cp c                                          ; $57c6: $b9
    cp d                                          ; $57c7: $ba
    inc a                                         ; $57c8: $3c
    xor h                                         ; $57c9: $ac
    xor l                                         ; $57ca: $ad
    push de                                       ; $57cb: $d5
    dec b                                         ; $57cc: $05
    dec b                                         ; $57cd: $05
    ld a, [bc]                                    ; $57ce: $0a
    ld a, [bc]                                    ; $57cf: $0a
    dec b                                         ; $57d0: $05
    ld [bc], a                                    ; $57d1: $02
    ld a, [bc]                                    ; $57d2: $0a
    ld a, [bc]                                    ; $57d3: $0a
    ld a, [bc]                                    ; $57d4: $0a
    ld a, [bc]                                    ; $57d5: $0a
    ld a, [bc]                                    ; $57d6: $0a
    ld a, [bc]                                    ; $57d7: $0a
    add e                                         ; $57d8: $83
    adc e                                         ; $57d9: $8b
    adc e                                         ; $57da: $8b
    ld [bc], a                                    ; $57db: $02
    dec c                                         ; $57dc: $0d
    call nc, Call_000_0203                        ; $57dd: $d4 $03 $02
    ld a, [$d3fb]                                 ; $57e0: $fa $fb $d3
    jp nc, $fdfc                                  ; $57e3: $d2 $fc $fd

    rst $10                                       ; $57e6: $d7
    sub $0a                                       ; $57e7: $d6 $0a
    ld bc, $dadb                                  ; $57e9: $01 $db $da
    ld a, [bc]                                    ; $57ec: $0a
    ld [bc], a                                    ; $57ed: $02
    and e                                         ; $57ee: $a3
    and [hl]                                      ; $57ef: $a6
    dec b                                         ; $57f0: $05
    ld [bc], a                                    ; $57f1: $02
    and e                                         ; $57f2: $a3
    and [hl]                                      ; $57f3: $a6
    ld [bc], a                                    ; $57f4: $02
    ld [bc], a                                    ; $57f5: $02
    and e                                         ; $57f6: $a3
    and [hl]                                      ; $57f7: $a6
    ld [bc], a                                    ; $57f8: $02
    dec b                                         ; $57f9: $05
    add e                                         ; $57fa: $83
    add [hl]                                      ; $57fb: $86
    pop de                                        ; $57fc: $d1
    pop de                                        ; $57fd: $d1
    pop de                                        ; $57fe: $d1
    pop de                                        ; $57ff: $d1
    pop de                                        ; $5800: $d1
    pop de                                        ; $5801: $d1
    ld c, $0f                                     ; $5802: $0e $0f
    pop de                                        ; $5804: $d1
    pop de                                        ; $5805: $d1
    db $10                                        ; $5806: $10
    ld de, $ecd1                                  ; $5807: $11 $d1 $ec
    db $ed                                        ; $580a: $ed
    xor $03                                       ; $580b: $ee $03
    inc bc                                        ; $580d: $03
    rlca                                          ; $580e: $07
    inc bc                                        ; $580f: $03
    ld b, $01                                     ; $5810: $06 $01
    rrca                                          ; $5812: $0f
    add hl, bc                                    ; $5813: $09
    ld bc, $0f01                                  ; $5814: $01 $01 $0f
    add hl, bc                                    ; $5817: $09
    ld bc, $0701                                  ; $5818: $01 $01 $07
    ld bc, $d1d1                                  ; $581b: $01 $d1 $d1
    pop de                                        ; $581e: $d1
    pop de                                        ; $581f: $d1
    ld [de], a                                    ; $5820: $12
    jp $ccd1                                      ; $5821: $c3 $d1 $cc


    and e                                         ; $5824: $a3
    call nz, $ced1                                ; $5825: $c4 $d1 $ce
    ld l, e                                       ; $5828: $6b
    ld l, h                                       ; $5829: $6c
    ld l, l                                       ; $582a: $6d
    ld l, [hl]                                    ; $582b: $6e
    inc bc                                        ; $582c: $03
    inc bc                                        ; $582d: $03
    inc bc                                        ; $582e: $03
    inc bc                                        ; $582f: $03
    add hl, bc                                    ; $5830: $09
    add hl, bc                                    ; $5831: $09
    ld bc, $4909                                  ; $5832: $01 $09 $49
    add hl, bc                                    ; $5835: $09
    ld bc, $0109                                  ; $5836: $01 $09 $01
    ld bc, $0101                                  ; $5839: $01 $01 $01
    db $f4                                        ; $583c: $f4
    ccf                                           ; $583d: $3f
    xor [hl]                                      ; $583e: $ae
    xor a                                         ; $583f: $af
    db $e4                                        ; $5840: $e4
    add hl, bc                                    ; $5841: $09
    or b                                          ; $5842: $b0
    or c                                          ; $5843: $b1
    ld h, c                                       ; $5844: $61
    or e                                          ; $5845: $b3
    or h                                          ; $5846: $b4
    or l                                          ; $5847: $b5
    db $f4                                        ; $5848: $f4
    ccf                                           ; $5849: $3f
    pop hl                                        ; $584a: $e1
    dec bc                                        ; $584b: $0b
    ld a, [bc]                                    ; $584c: $0a
    ld [bc], a                                    ; $584d: $02
    dec c                                         ; $584e: $0d
    ld a, [bc]                                    ; $584f: $0a
    ld [bc], a                                    ; $5850: $02
    dec c                                         ; $5851: $0d
    ld a, [bc]                                    ; $5852: $0a
    ld a, [bc]                                    ; $5853: $0a
    add e                                         ; $5854: $83
    adc e                                         ; $5855: $8b
    adc e                                         ; $5856: $8b
    adc e                                         ; $5857: $8b
    ld a, [bc]                                    ; $5858: $0a
    dec b                                         ; $5859: $05
    dec b                                         ; $585a: $05
    dec b                                         ; $585b: $05
    inc b                                         ; $585c: $04
    reti                                          ; $585d: $d9


    rst $18                                       ; $585e: $df
    sbc $dc                                       ; $585f: $de $dc
    db $dd                                        ; $5861: $dd
    and $e7                                       ; $5862: $e6 $e7
    or [hl]                                       ; $5864: $b6
    cp [hl]                                       ; $5865: $be
    ld [$08eb], a                                 ; $5866: $ea $eb $08
    cp l                                          ; $5869: $bd
    rst $38                                       ; $586a: $ff
    cp $02                                        ; $586b: $fe $02
    ld [bc], a                                    ; $586d: $02
    add e                                         ; $586e: $83
    add e                                         ; $586f: $83
    dec b                                         ; $5870: $05
    ld [bc], a                                    ; $5871: $02
    add e                                         ; $5872: $83
    add [hl]                                      ; $5873: $86
    adc e                                         ; $5874: $8b
    adc e                                         ; $5875: $8b
    add [hl]                                      ; $5876: $86
    add e                                         ; $5877: $83
    ld a, [bc]                                    ; $5878: $0a
    ld a, [bc]                                    ; $5879: $0a
    add e                                         ; $587a: $83
    add e                                         ; $587b: $83
    pop de                                        ; $587c: $d1
    inc de                                        ; $587d: $13
    pop af                                        ; $587e: $f1
    ld a, [c]                                     ; $587f: $f2
    pop de                                        ; $5880: $d1
    inc d                                         ; $5881: $14
    push af                                       ; $5882: $f5
    or $d1                                        ; $5883: $f6 $d1
    rst $30                                       ; $5885: $f7
    ld hl, sp-$07                                 ; $5886: $f8 $f9
    pop de                                        ; $5888: $d1
    dec d                                         ; $5889: $15
    ld [de], a                                    ; $588a: $12
    inc de                                        ; $588b: $13
    ld bc, $0709                                  ; $588c: $01 $09 $07
    ld bc, $0901                                  ; $588f: $01 $01 $09
    rlca                                          ; $5892: $07
    ld bc, $0101                                  ; $5893: $01 $01 $01
    rlca                                          ; $5896: $07
    ld bc, $0901                                  ; $5897: $01 $01 $09
    rlca                                          ; $589a: $07
    ld bc, $706f                                  ; $589b: $01 $6f $70
    ld [hl], c                                    ; $589e: $71
    ld [hl], d                                    ; $589f: $72
    ld [hl], e                                    ; $58a0: $73
    ld [hl], h                                    ; $58a1: $74
    ld [hl], l                                    ; $58a2: $75
    halt                                          ; $58a3: $76
    ld [hl], a                                    ; $58a4: $77
    ld a, b                                       ; $58a5: $78
    ld a, c                                       ; $58a6: $79
    ld a, d                                       ; $58a7: $7a
    adc c                                         ; $58a8: $89
    adc d                                         ; $58a9: $8a
    adc e                                         ; $58aa: $8b
    adc h                                         ; $58ab: $8c
    ld bc, $0101                                  ; $58ac: $01 $01 $01
    ld bc, $0101                                  ; $58af: $01 $01 $01
    ld bc, $0101                                  ; $58b2: $01 $01 $01
    ld bc, $0101                                  ; $58b5: $01 $01 $01
    add hl, bc                                    ; $58b8: $09
    add hl, bc                                    ; $58b9: $09
    add hl, bc                                    ; $58ba: $09
    add hl, bc                                    ; $58bb: $09
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
    pop de                                        ; $58c6: $d1
    pop de                                        ; $58c7: $d1
    pop de                                        ; $58c8: $d1
    pop de                                        ; $58c9: $d1
    pop de                                        ; $58ca: $d1
    pop de                                        ; $58cb: $d1
    inc bc                                        ; $58cc: $03
    inc bc                                        ; $58cd: $03
    inc bc                                        ; $58ce: $03
    inc bc                                        ; $58cf: $03
    ld bc, $0303                                  ; $58d0: $01 $03 $03
    inc bc                                        ; $58d3: $03
    ld bc, $0303                                  ; $58d4: $01 $03 $03
    inc bc                                        ; $58d7: $03
    ld bc, $0303                                  ; $58d8: $01 $03 $03
    inc bc                                        ; $58db: $03
    ld d, $d1                                     ; $58dc: $16 $d1
    pop de                                        ; $58de: $d1
    pop de                                        ; $58df: $d1
    rla                                           ; $58e0: $17
    pop de                                        ; $58e1: $d1
    pop de                                        ; $58e2: $d1
    pop de                                        ; $58e3: $d1
    pop de                                        ; $58e4: $d1
    pop de                                        ; $58e5: $d1
    pop de                                        ; $58e6: $d1
    pop de                                        ; $58e7: $d1
    add d                                         ; $58e8: $82
    pop de                                        ; $58e9: $d1
    pop de                                        ; $58ea: $d1
    pop de                                        ; $58eb: $d1
    add hl, bc                                    ; $58ec: $09
    inc bc                                        ; $58ed: $03
    inc bc                                        ; $58ee: $03
    inc bc                                        ; $58ef: $03
    add hl, bc                                    ; $58f0: $09
    inc bc                                        ; $58f1: $03
    inc bc                                        ; $58f2: $03
    inc bc                                        ; $58f3: $03
    ld bc, $0303                                  ; $58f4: $01 $03 $03
    inc bc                                        ; $58f7: $03
    ld c, c                                       ; $58f8: $49
    inc bc                                        ; $58f9: $03
    inc bc                                        ; $58fa: $03
    inc bc                                        ; $58fb: $03
    pop de                                        ; $58fc: $d1
    pop de                                        ; $58fd: $d1
    pop de                                        ; $58fe: $d1
    jr @-$2d                                      ; $58ff: $18 $d1

    pop de                                        ; $5901: $d1
    pop de                                        ; $5902: $d1
    add hl, de                                    ; $5903: $19
    pop de                                        ; $5904: $d1
    pop de                                        ; $5905: $d1
    pop de                                        ; $5906: $d1
    cp a                                          ; $5907: $bf
    pop de                                        ; $5908: $d1
    pop de                                        ; $5909: $d1
    pop de                                        ; $590a: $d1
    pop de                                        ; $590b: $d1
    inc bc                                        ; $590c: $03
    add e                                         ; $590d: $83
    add e                                         ; $590e: $83
    adc [hl]                                      ; $590f: $8e
    inc bc                                        ; $5910: $03
    add e                                         ; $5911: $83
    add e                                         ; $5912: $83
    adc e                                         ; $5913: $8b
    add e                                         ; $5914: $83
    add e                                         ; $5915: $83
    add e                                         ; $5916: $83
    adc e                                         ; $5917: $8b
    add e                                         ; $5918: $83
    add e                                         ; $5919: $83
    add e                                         ; $591a: $83
    add e                                         ; $591b: $83
    ld c, c                                       ; $591c: $49
    ld c, d                                       ; $591d: $4a
    ld d, [hl]                                    ; $591e: $56
    ld d, a                                       ; $591f: $57
    ld a, [de]                                    ; $5920: $1a
    ld c, l                                       ; $5921: $4d
    ld e, d                                       ; $5922: $5a
    ld e, e                                       ; $5923: $5b
    ret nz                                        ; $5924: $c0

    pop bc                                        ; $5925: $c1
    push bc                                       ; $5926: $c5
    add $c2                                       ; $5927: $c6 $c2
    pop de                                        ; $5929: $d1
    ret                                           ; $592a: $c9


    jp z, $8383                                   ; $592b: $ca $83 $83

    add e                                         ; $592e: $83
    add [hl]                                      ; $592f: $86
    adc e                                         ; $5930: $8b
    add [hl]                                      ; $5931: $86
    add [hl]                                      ; $5932: $86
    add e                                         ; $5933: $83
    adc e                                         ; $5934: $8b
    adc e                                         ; $5935: $8b
    adc e                                         ; $5936: $8b
    adc e                                         ; $5937: $8b
    adc [hl]                                      ; $5938: $8e
    add e                                         ; $5939: $83
    adc e                                         ; $593a: $8b
    adc e                                         ; $593b: $8b
    ld e, b                                       ; $593c: $58
    ld e, c                                       ; $593d: $59
    ld h, h                                       ; $593e: $64
    dec de                                        ; $593f: $1b
    ld e, h                                       ; $5940: $5c
    ld e, l                                       ; $5941: $5d
    ld h, a                                       ; $5942: $67
    ld l, b                                       ; $5943: $68
    rst $00                                       ; $5944: $c7
    ret z                                         ; $5945: $c8

    ret nc                                        ; $5946: $d0

    pop de                                        ; $5947: $d1
    set 2, c                                      ; $5948: $cb $d1
    pop de                                        ; $594a: $d1
    pop de                                        ; $594b: $d1
    add e                                         ; $594c: $83
    add e                                         ; $594d: $83
    add e                                         ; $594e: $83
    adc [hl]                                      ; $594f: $8e
    add e                                         ; $5950: $83
    add [hl]                                      ; $5951: $86
    add [hl]                                      ; $5952: $86
    add e                                         ; $5953: $83
    adc [hl]                                      ; $5954: $8e
    adc e                                         ; $5955: $8b
    adc e                                         ; $5956: $8b
    adc e                                         ; $5957: $8b
    adc e                                         ; $5958: $8b
    add e                                         ; $5959: $83
    add e                                         ; $595a: $83
    add e                                         ; $595b: $83
    pop de                                        ; $595c: $d1
    pop de                                        ; $595d: $d1
    pop de                                        ; $595e: $d1
    pop de                                        ; $595f: $d1
    pop de                                        ; $5960: $d1
    pop de                                        ; $5961: $d1
    pop de                                        ; $5962: $d1
    pop de                                        ; $5963: $d1
    pop de                                        ; $5964: $d1
    pop de                                        ; $5965: $d1
    pop de                                        ; $5966: $d1
    pop de                                        ; $5967: $d1
    pop de                                        ; $5968: $d1
    pop de                                        ; $5969: $d1
    pop de                                        ; $596a: $d1
    pop de                                        ; $596b: $d1
    inc bc                                        ; $596c: $03
    inc bc                                        ; $596d: $03
    inc bc                                        ; $596e: $03
    inc bc                                        ; $596f: $03
    inc bc                                        ; $5970: $03
    inc bc                                        ; $5971: $03
    inc bc                                        ; $5972: $03
    inc bc                                        ; $5973: $03
    inc bc                                        ; $5974: $03
    inc bc                                        ; $5975: $03
    rlca                                          ; $5976: $07
    inc bc                                        ; $5977: $03
    inc bc                                        ; $5978: $03
    inc bc                                        ; $5979: $03
    rlca                                          ; $597a: $07
    inc bc                                        ; $597b: $03
    pop de                                        ; $597c: $d1
    pop de                                        ; $597d: $d1
    ld c, $0f                                     ; $597e: $0e $0f
    pop de                                        ; $5980: $d1
    pop de                                        ; $5981: $d1
    db $10                                        ; $5982: $10
    ld de, $ecd1                                  ; $5983: $11 $d1 $ec
    db $ed                                        ; $5986: $ed
    xor $d1                                       ; $5987: $ee $d1
    inc de                                        ; $5989: $13
    pop af                                        ; $598a: $f1
    ld a, [c]                                     ; $598b: $f2
    ld bc, $0f01                                  ; $598c: $01 $01 $0f
    add hl, bc                                    ; $598f: $09
    ld bc, $0f01                                  ; $5990: $01 $01 $0f
    add hl, bc                                    ; $5993: $09
    ld bc, $0701                                  ; $5994: $01 $01 $07
    ld bc, $0901                                  ; $5997: $01 $01 $09
    rlca                                          ; $599a: $07
    ld bc, $c312                                  ; $599b: $01 $12 $c3
    pop de                                        ; $599e: $d1
    call z, $c4a3                                 ; $599f: $cc $a3 $c4
    pop de                                        ; $59a2: $d1
    adc $6b                                       ; $59a3: $ce $6b
    ld l, h                                       ; $59a5: $6c
    ld l, l                                       ; $59a6: $6d
    ld l, [hl]                                    ; $59a7: $6e
    ld l, a                                       ; $59a8: $6f
    ld [hl], b                                    ; $59a9: $70
    ld [hl], c                                    ; $59aa: $71
    ld [hl], d                                    ; $59ab: $72
    add hl, bc                                    ; $59ac: $09
    add hl, bc                                    ; $59ad: $09
    ld bc, $4909                                  ; $59ae: $01 $09 $49
    add hl, bc                                    ; $59b1: $09
    ld bc, $0109                                  ; $59b2: $01 $09 $01
    ld bc, $0101                                  ; $59b5: $01 $01 $01
    ld bc, $0101                                  ; $59b8: $01 $01 $01
    ld bc, $cdd1                                  ; $59bb: $01 $d1 $cd
    db $d3                                        ; $59be: $d3
    pop de                                        ; $59bf: $d1
    pop de                                        ; $59c0: $d1
    rst $08                                       ; $59c1: $cf
    sub $d1                                       ; $59c2: $d6 $d1
    ld a, e                                       ; $59c4: $7b
    ld a, h                                       ; $59c5: $7c
    ld a, l                                       ; $59c6: $7d
    ld a, [hl]                                    ; $59c7: $7e
    ld a, a                                       ; $59c8: $7f
    add b                                         ; $59c9: $80
    add c                                         ; $59ca: $81
    add d                                         ; $59cb: $82
    ld bc, $0f09                                  ; $59cc: $01 $09 $0f
    rlca                                          ; $59cf: $07
    ld bc, $0f09                                  ; $59d0: $01 $09 $0f
    rlca                                          ; $59d3: $07
    ld bc, $0701                                  ; $59d4: $01 $01 $07
    rlca                                          ; $59d7: $07
    ld bc, $0f09                                  ; $59d8: $01 $09 $0f
    rrca                                          ; $59db: $0f
    pop de                                        ; $59dc: $d1
    inc d                                         ; $59dd: $14
    push af                                       ; $59de: $f5
    or $d1                                        ; $59df: $f6 $d1
    rst $30                                       ; $59e1: $f7
    ld hl, sp-$07                                 ; $59e2: $f8 $f9
    pop de                                        ; $59e4: $d1
    dec d                                         ; $59e5: $15
    ld [de], a                                    ; $59e6: $12
    inc de                                        ; $59e7: $13
    pop de                                        ; $59e8: $d1
    inc d                                         ; $59e9: $14
    dec d                                         ; $59ea: $15
    ld d, $01                                     ; $59eb: $16 $01
    add hl, bc                                    ; $59ed: $09
    rlca                                          ; $59ee: $07
    ld bc, $0101                                  ; $59ef: $01 $01 $01
    rlca                                          ; $59f2: $07
    ld bc, $0901                                  ; $59f3: $01 $01 $09
    rlca                                          ; $59f6: $07
    ld bc, $0101                                  ; $59f7: $01 $01 $01
    rlca                                          ; $59fa: $07
    ld bc, $7473                                  ; $59fb: $01 $73 $74
    ld [hl], l                                    ; $59fe: $75
    halt                                          ; $59ff: $76
    ld [hl], a                                    ; $5a00: $77
    ld a, b                                       ; $5a01: $78
    ld a, c                                       ; $5a02: $79
    ld a, d                                       ; $5a03: $7a
    adc c                                         ; $5a04: $89
    adc d                                         ; $5a05: $8a
    adc e                                         ; $5a06: $8b
    adc h                                         ; $5a07: $8c
    adc l                                         ; $5a08: $8d
    adc [hl]                                      ; $5a09: $8e
    adc a                                         ; $5a0a: $8f
    sub b                                         ; $5a0b: $90
    ld bc, $0101                                  ; $5a0c: $01 $01 $01
    ld bc, $0101                                  ; $5a0f: $01 $01 $01
    ld bc, $0901                                  ; $5a12: $01 $01 $09
    add hl, bc                                    ; $5a15: $09
    add hl, bc                                    ; $5a16: $09
    add hl, bc                                    ; $5a17: $09
    add hl, bc                                    ; $5a18: $09
    add hl, bc                                    ; $5a19: $09
    add hl, bc                                    ; $5a1a: $09
    add hl, bc                                    ; $5a1b: $09
    add e                                         ; $5a1c: $83
    add h                                         ; $5a1d: $84
    add l                                         ; $5a1e: $85
    add d                                         ; $5a1f: $82
    add [hl]                                      ; $5a20: $86
    add a                                         ; $5a21: $87
    adc b                                         ; $5a22: $88
    add d                                         ; $5a23: $82
    sbc c                                         ; $5a24: $99
    sbc d                                         ; $5a25: $9a
    sbc e                                         ; $5a26: $9b
    add d                                         ; $5a27: $82
    sbc h                                         ; $5a28: $9c
    sbc l                                         ; $5a29: $9d
    sbc [hl]                                      ; $5a2a: $9e
    sbc a                                         ; $5a2b: $9f
    add hl, bc                                    ; $5a2c: $09
    add hl, bc                                    ; $5a2d: $09
    rrca                                          ; $5a2e: $0f
    add hl, bc                                    ; $5a2f: $09
    add hl, bc                                    ; $5a30: $09
    add hl, bc                                    ; $5a31: $09
    rrca                                          ; $5a32: $0f
    ld c, a                                       ; $5a33: $4f
    add hl, bc                                    ; $5a34: $09
    add hl, bc                                    ; $5a35: $09
    rrca                                          ; $5a36: $0f
    ld c, a                                       ; $5a37: $4f
    add hl, bc                                    ; $5a38: $09
    add hl, bc                                    ; $5a39: $09
    rrca                                          ; $5a3a: $0f
    rrca                                          ; $5a3b: $0f
    ld h, [hl]                                    ; $5a3c: $66
    reti                                          ; $5a3d: $d9


    ld [c], a                                     ; $5a3e: $e2
    db $e3                                        ; $5a3f: $e3
    ld l, c                                       ; $5a40: $69
    ld l, d                                       ; $5a41: $6a
    cp e                                          ; $5a42: $bb
    cp h                                          ; $5a43: $bc
    sbc $df                                       ; $5a44: $de $df
    ret c                                         ; $5a46: $d8

    db $f4                                        ; $5a47: $f4
    rst $20                                       ; $5a48: $e7
    and $05                                       ; $5a49: $e6 $05
    ld b, $86                                     ; $5a4b: $06 $86
    ld [bc], a                                    ; $5a4d: $02
    ld [bc], a                                    ; $5a4e: $02
    dec b                                         ; $5a4f: $05
    add e                                         ; $5a50: $83
    add e                                         ; $5a51: $83
    adc e                                         ; $5a52: $8b
    adc e                                         ; $5a53: $8b
    and e                                         ; $5a54: $a3
    and e                                         ; $5a55: $a3
    ld [bc], a                                    ; $5a56: $02
    dec c                                         ; $5a57: $0d
    and [hl]                                      ; $5a58: $a6
    and [hl]                                      ; $5a59: $a6
    ld [bc], a                                    ; $5a5a: $02
    ld [bc], a                                    ; $5a5b: $02
    xor [hl]                                      ; $5a5c: $ae
    xor a                                         ; $5a5d: $af
    ld [$0a09], sp                                ; $5a5e: $08 $09 $0a
    call nc, Call_000_0d0c                        ; $5a61: $d4 $0c $0d
    dec bc                                        ; $5a64: $0b
    inc c                                         ; $5a65: $0c
    ld c, $0f                                     ; $5a66: $0e $0f
    db $fd                                        ; $5a68: $fd
    or a                                          ; $5a69: $b7
    jr z, jr_07d_5aa3                             ; $5a6a: $28 $37

    dec c                                         ; $5a6c: $0d
    ld a, [bc]                                    ; $5a6d: $0a
    ld [bc], a                                    ; $5a6e: $02
    ld bc, $0202                                  ; $5a6f: $01 $02 $02
    ld [bc], a                                    ; $5a72: $02
    ld bc, $0a0a                                  ; $5a73: $01 $0a $0a
    ld [bc], a                                    ; $5a76: $02
    ld bc, $0a0d                                  ; $5a77: $01 $0d $0a
    ld [bc], a                                    ; $5a7a: $02
    ld [bc], a                                    ; $5a7b: $02
    pop de                                        ; $5a7c: $d1
    inc d                                         ; $5a7d: $14
    dec d                                         ; $5a7e: $15
    ld d, $d1                                     ; $5a7f: $16 $d1
    inc e                                         ; $5a81: $1c
    add hl, de                                    ; $5a82: $19
    ld a, [de]                                    ; $5a83: $1a
    pop de                                        ; $5a84: $d1
    dec de                                        ; $5a85: $1b
    inc e                                         ; $5a86: $1c
    dec e                                         ; $5a87: $1d
    jr c, jr_07d_5ac3                             ; $5a88: $38 $39

    xor b                                         ; $5a8a: $a8
    xor c                                         ; $5a8b: $a9
    ld bc, $0701                                  ; $5a8c: $01 $01 $07
    ld bc, $0901                                  ; $5a8f: $01 $01 $09
    rlca                                          ; $5a92: $07
    ld bc, $0101                                  ; $5a93: $01 $01 $01
    ld bc, $0201                                  ; $5a96: $01 $01 $02
    ld [bc], a                                    ; $5a99: $02
    ld a, [bc]                                    ; $5a9a: $0a
    ld a, [bc]                                    ; $5a9b: $0a
    adc l                                         ; $5a9c: $8d
    adc [hl]                                      ; $5a9d: $8e
    adc a                                         ; $5a9e: $8f
    sub b                                         ; $5a9f: $90
    sub c                                         ; $5aa0: $91
    sub d                                         ; $5aa1: $92
    sub e                                         ; $5aa2: $93

jr_07d_5aa3:
    sub h                                         ; $5aa3: $94
    sub l                                         ; $5aa4: $95
    sub [hl]                                      ; $5aa5: $96
    sub a                                         ; $5aa6: $97
    sbc b                                         ; $5aa7: $98
    xor d                                         ; $5aa8: $aa
    xor e                                         ; $5aa9: $ab
    or d                                          ; $5aaa: $b2
    jr z, jr_07d_5ab6                             ; $5aab: $28 $09

    add hl, bc                                    ; $5aad: $09
    add hl, bc                                    ; $5aae: $09
    add hl, bc                                    ; $5aaf: $09
    add hl, bc                                    ; $5ab0: $09
    add hl, bc                                    ; $5ab1: $09
    add hl, bc                                    ; $5ab2: $09
    add hl, bc                                    ; $5ab3: $09
    add hl, bc                                    ; $5ab4: $09
    add hl, bc                                    ; $5ab5: $09

jr_07d_5ab6:
    add hl, bc                                    ; $5ab6: $09
    add hl, bc                                    ; $5ab7: $09
    ld a, [bc]                                    ; $5ab8: $0a
    ld a, [bc]                                    ; $5ab9: $0a
    ld a, [bc]                                    ; $5aba: $0a
    ld [hl+], a                                   ; $5abb: $22
    db $eb                                        ; $5abc: $eb
    ld [$b807], a                                 ; $5abd: $ea $07 $b8
    cp $ff                                        ; $5ac0: $fe $ff
    pop hl                                        ; $5ac2: $e1

jr_07d_5ac3:
    dec bc                                        ; $5ac3: $0b
    ld [bc], a                                    ; $5ac4: $02
    inc bc                                        ; $5ac5: $03
    ld [c], a                                     ; $5ac6: $e2
    ld a, [bc]                                    ; $5ac7: $0a
    jp nc, $e4d3                                  ; $5ac8: $d2 $d3 $e4

    add hl, bc                                    ; $5acb: $09
    and e                                         ; $5acc: $a3
    and [hl]                                      ; $5acd: $a6
    ld [bc], a                                    ; $5ace: $02
    dec c                                         ; $5acf: $0d
    and e                                         ; $5ad0: $a3
    and [hl]                                      ; $5ad1: $a6
    ld [bc], a                                    ; $5ad2: $02
    dec b                                         ; $5ad3: $05
    add e                                         ; $5ad4: $83
    add e                                         ; $5ad5: $83
    dec b                                         ; $5ad6: $05
    dec c                                         ; $5ad7: $0d
    add e                                         ; $5ad8: $83
    add e                                         ; $5ad9: $83
    dec b                                         ; $5ada: $05
    ld a, [bc]                                    ; $5adb: $0a
    cp c                                          ; $5adc: $b9
    cp d                                          ; $5add: $ba
    db $fc                                        ; $5ade: $fc
    db $fd                                        ; $5adf: $fd
    ld [$f4d8], sp                                ; $5ae0: $08 $d8 $f4
    dec e                                         ; $5ae3: $1d
    daa                                           ; $5ae4: $27
    ld e, $1d                                     ; $5ae5: $1e $1d
    rra                                           ; $5ae7: $1f
    or b                                          ; $5ae8: $b0
    or c                                          ; $5ae9: $b1
    call c, $0d0a                                 ; $5aea: $dc $0a $0d
    ld a, [bc]                                    ; $5aed: $0a
    dec b                                         ; $5aee: $05
    dec b                                         ; $5aef: $05
    ld a, [bc]                                    ; $5af0: $0a
    ld [bc], a                                    ; $5af1: $02
    ld a, [bc]                                    ; $5af2: $0a
    adc e                                         ; $5af3: $8b
    ld [bc], a                                    ; $5af4: $02
    adc e                                         ; $5af5: $8b
    adc e                                         ; $5af6: $8b
    adc e                                         ; $5af7: $8b
    dec c                                         ; $5af8: $0d
    ld a, [bc]                                    ; $5af9: $0a
    ld [bc], a                                    ; $5afa: $02
    ld [bc], a                                    ; $5afb: $02
    rlca                                          ; $5afc: $07
    cp b                                          ; $5afd: $b8
    cp c                                          ; $5afe: $b9
    cp d                                          ; $5aff: $ba
    jr nz, jr_07d_5b21                            ; $5b00: $20 $1f

    jr nz, jr_07d_5b2e                            ; $5b02: $20 $2a

    ld hl, $2322                                  ; $5b04: $21 $22 $23
    ld l, $22                                     ; $5b07: $2e $22
    dec h                                         ; $5b09: $25
    ld h, $32                                     ; $5b0a: $26 $32
    dec b                                         ; $5b0c: $05
    dec c                                         ; $5b0d: $0d
    ld a, [bc]                                    ; $5b0e: $0a
    ld a, [bc]                                    ; $5b0f: $0a
    adc e                                         ; $5b10: $8b
    add e                                         ; $5b11: $83
    add e                                         ; $5b12: $83
    add e                                         ; $5b13: $83
    adc e                                         ; $5b14: $8b
    add e                                         ; $5b15: $83
    add [hl]                                      ; $5b16: $86
    add e                                         ; $5b17: $83
    adc e                                         ; $5b18: $8b
    add [hl]                                      ; $5b19: $86
    add e                                         ; $5b1a: $83
    add [hl]                                      ; $5b1b: $86
    db $fc                                        ; $5b1c: $fc
    db $fd                                        ; $5b1d: $fd
    rlca                                          ; $5b1e: $07
    cp b                                          ; $5b1f: $b8
    dec hl                                        ; $5b20: $2b

jr_07d_5b21:
    inc l                                         ; $5b21: $2c
    dec l                                         ; $5b22: $2d
    inc hl                                        ; $5b23: $23
    cpl                                           ; $5b24: $2f
    jr nc, jr_07d_5b58                            ; $5b25: $30 $31

    inc h                                         ; $5b27: $24
    inc sp                                        ; $5b28: $33
    inc [hl]                                      ; $5b29: $34
    dec [hl]                                      ; $5b2a: $35
    dec h                                         ; $5b2b: $25
    ld [bc], a                                    ; $5b2c: $02
    ld [bc], a                                    ; $5b2d: $02

jr_07d_5b2e:
    dec b                                         ; $5b2e: $05
    dec c                                         ; $5b2f: $0d
    add e                                         ; $5b30: $83
    add e                                         ; $5b31: $83
    add e                                         ; $5b32: $83
    adc e                                         ; $5b33: $8b
    add e                                         ; $5b34: $83
    add e                                         ; $5b35: $83
    add e                                         ; $5b36: $83
    adc e                                         ; $5b37: $8b
    add [hl]                                      ; $5b38: $86
    add e                                         ; $5b39: $83
    add e                                         ; $5b3a: $83
    adc e                                         ; $5b3b: $8b
    sbc $df                                       ; $5b3c: $de $df
    add sp, -$17                                  ; $5b3e: $e8 $e9
    rst $20                                       ; $5b40: $e7
    and $05                                       ; $5b41: $e6 $05
    ld a, [bc]                                    ; $5b43: $0a
    db $eb                                        ; $5b44: $eb
    ld [$b8d4], a                                 ; $5b45: $ea $d4 $b8
    cp $ff                                        ; $5b48: $fe $ff
    pop hl                                        ; $5b4a: $e1
    db $f4                                        ; $5b4b: $f4
    and [hl]                                      ; $5b4c: $a6
    and e                                         ; $5b4d: $a3
    ld [bc], a                                    ; $5b4e: $02
    ld [bc], a                                    ; $5b4f: $02
    and [hl]                                      ; $5b50: $a6
    and e                                         ; $5b51: $a3
    dec b                                         ; $5b52: $05
    dec c                                         ; $5b53: $0d
    and [hl]                                      ; $5b54: $a6
    and [hl]                                      ; $5b55: $a6
    dec b                                         ; $5b56: $05
    ld a, [bc]                                    ; $5b57: $0a

jr_07d_5b58:
    and e                                         ; $5b58: $a3
    and e                                         ; $5b59: $a3
    dec b                                         ; $5b5a: $05
    dec c                                         ; $5b5b: $0d
    ccf                                           ; $5b5c: $3f
    ret c                                         ; $5b5d: $d8

    ld h, $27                                     ; $5b5e: $26 $27
    db $fd                                        ; $5b60: $fd
    or a                                          ; $5b61: $b7
    ld a, [$b928]                                 ; $5b62: $fa $28 $b9
    cp d                                          ; $5b65: $ba
    db $fc                                        ; $5b66: $fc
    add hl, hl                                    ; $5b67: $29
    ld [$03bd], sp                                ; $5b68: $08 $bd $03
    ld [bc], a                                    ; $5b6b: $02
    dec b                                         ; $5b6c: $05
    ld [bc], a                                    ; $5b6d: $02
    adc e                                         ; $5b6e: $8b
    adc e                                         ; $5b6f: $8b
    ld a, [bc]                                    ; $5b70: $0a
    dec c                                         ; $5b71: $0d
    ld [bc], a                                    ; $5b72: $02
    adc e                                         ; $5b73: $8b
    ld a, [bc]                                    ; $5b74: $0a
    dec c                                         ; $5b75: $0d
    ld [bc], a                                    ; $5b76: $02
    adc e                                         ; $5b77: $8b
    ld a, [bc]                                    ; $5b78: $0a
    dec c                                         ; $5b79: $0d
    and e                                         ; $5b7a: $a3
    and [hl]                                      ; $5b7b: $a6
    ld b, d                                       ; $5b7c: $42
    ld b, e                                       ; $5b7d: $43
    ld b, h                                       ; $5b7e: $44
    ld c, [hl]                                    ; $5b7f: $4e
    ld b, l                                       ; $5b80: $45
    ld b, [hl]                                    ; $5b81: $46
    ld b, a                                       ; $5b82: $47
    ld d, d                                       ; $5b83: $52
    ld c, b                                       ; $5b84: $48
    ld c, c                                       ; $5b85: $49
    ld c, d                                       ; $5b86: $4a
    ld d, [hl]                                    ; $5b87: $56
    ld c, e                                       ; $5b88: $4b
    ld c, h                                       ; $5b89: $4c
    ld c, l                                       ; $5b8a: $4d
    ld e, d                                       ; $5b8b: $5a
    add e                                         ; $5b8c: $83
    add [hl]                                      ; $5b8d: $86
    add [hl]                                      ; $5b8e: $86
    add e                                         ; $5b8f: $83
    add e                                         ; $5b90: $83
    add [hl]                                      ; $5b91: $86
    add [hl]                                      ; $5b92: $86
    add [hl]                                      ; $5b93: $86
    add e                                         ; $5b94: $83
    add e                                         ; $5b95: $83
    add [hl]                                      ; $5b96: $86
    add e                                         ; $5b97: $83
    add e                                         ; $5b98: $83
    add e                                         ; $5b99: $83
    add e                                         ; $5b9a: $83
    add e                                         ; $5b9b: $83
    ld c, a                                       ; $5b9c: $4f
    ld d, b                                       ; $5b9d: $50
    ld d, c                                       ; $5b9e: $51
    ld a, [hl+]                                   ; $5b9f: $2a
    ld d, e                                       ; $5ba0: $53
    ld d, h                                       ; $5ba1: $54
    ld d, l                                       ; $5ba2: $55
    dec hl                                        ; $5ba3: $2b
    ld d, a                                       ; $5ba4: $57
    ld e, b                                       ; $5ba5: $58
    inc l                                         ; $5ba6: $2c
    dec l                                         ; $5ba7: $2d
    ld e, e                                       ; $5ba8: $5b
    ld e, h                                       ; $5ba9: $5c
    pop de                                        ; $5baa: $d1
    pop de                                        ; $5bab: $d1
    add e                                         ; $5bac: $83
    add e                                         ; $5bad: $83
    add e                                         ; $5bae: $83
    adc e                                         ; $5baf: $8b
    add e                                         ; $5bb0: $83
    add [hl]                                      ; $5bb1: $86
    add e                                         ; $5bb2: $83
    adc [hl]                                      ; $5bb3: $8e
    add e                                         ; $5bb4: $83
    add [hl]                                      ; $5bb5: $86
    adc [hl]                                      ; $5bb6: $8e
    adc e                                         ; $5bb7: $8b
    add [hl]                                      ; $5bb8: $86
    add [hl]                                      ; $5bb9: $86
    add e                                         ; $5bba: $83
    add e                                         ; $5bbb: $83
    sbc $df                                       ; $5bbc: $de $df
    ld [c], a                                     ; $5bbe: $e2
    db $e3                                        ; $5bbf: $e3
    ldh [$e1], a                                  ; $5bc0: $e0 $e1
    db $e4                                        ; $5bc2: $e4
    add hl, bc                                    ; $5bc3: $09
    ld [$e83f], sp                                ; $5bc4: $08 $3f $e8
    db $f4                                        ; $5bc7: $f4
    inc c                                         ; $5bc8: $0c
    ei                                            ; $5bc9: $fb
    dec b                                         ; $5bca: $05
    ld b, $8e                                     ; $5bcb: $06 $8e
    adc e                                         ; $5bcd: $8b
    ld [bc], a                                    ; $5bce: $02
    dec b                                         ; $5bcf: $05
    adc e                                         ; $5bd0: $8b
    adc e                                         ; $5bd1: $8b
    ld [bc], a                                    ; $5bd2: $02
    ld a, [bc]                                    ; $5bd3: $0a
    ld [hl+], a                                   ; $5bd4: $22
    ld [bc], a                                    ; $5bd5: $02
    ld [bc], a                                    ; $5bd6: $02
    dec c                                         ; $5bd7: $0d
    ld [hl+], a                                   ; $5bd8: $22
    dec b                                         ; $5bd9: $05
    ld [bc], a                                    ; $5bda: $02
    dec b                                         ; $5bdb: $05
    xor [hl]                                      ; $5bdc: $ae
    xor a                                         ; $5bdd: $af
    db $d3                                        ; $5bde: $d3
    jp nc, $b10a                                  ; $5bdf: $d2 $0a $b1

    rst $10                                       ; $5be2: $d7
    sub $0b                                       ; $5be3: $d6 $0b
    inc c                                         ; $5be5: $0c
    rst $18                                       ; $5be6: $df
    sbc $fd                                       ; $5be7: $de $fd
    push hl                                       ; $5be9: $e5
    and $e7                                       ; $5bea: $e6 $e7
    ld a, [bc]                                    ; $5bec: $0a
    ld a, [bc]                                    ; $5bed: $0a
    and [hl]                                      ; $5bee: $a6
    and [hl]                                      ; $5bef: $a6
    dec b                                         ; $5bf0: $05
    ld a, [bc]                                    ; $5bf1: $0a
    and [hl]                                      ; $5bf2: $a6
    and e                                         ; $5bf3: $a3
    dec c                                         ; $5bf4: $0d
    dec c                                         ; $5bf5: $0d
    add e                                         ; $5bf6: $83
    add e                                         ; $5bf7: $83
    ld a, [bc]                                    ; $5bf8: $0a
    ld [bc], a                                    ; $5bf9: $02
    add e                                         ; $5bfa: $83
    add [hl]                                      ; $5bfb: $86
    cp a                                          ; $5bfc: $bf
    ret nz                                        ; $5bfd: $c0

    pop bc                                        ; $5bfe: $c1
    push bc                                       ; $5bff: $c5
    pop de                                        ; $5c00: $d1
    jp nz, $c9d1                                  ; $5c01: $c2 $d1 $c9

    pop de                                        ; $5c04: $d1
    pop de                                        ; $5c05: $d1
    pop de                                        ; $5c06: $d1
    pop de                                        ; $5c07: $d1
    pop de                                        ; $5c08: $d1
    pop de                                        ; $5c09: $d1
    pop de                                        ; $5c0a: $d1
    pop de                                        ; $5c0b: $d1
    adc e                                         ; $5c0c: $8b
    adc e                                         ; $5c0d: $8b
    adc e                                         ; $5c0e: $8b
    adc e                                         ; $5c0f: $8b
    add e                                         ; $5c10: $83
    adc e                                         ; $5c11: $8b
    add e                                         ; $5c12: $83
    adc e                                         ; $5c13: $8b
    add e                                         ; $5c14: $83
    add e                                         ; $5c15: $83
    inc bc                                        ; $5c16: $03

jr_07d_5c17:
    inc bc                                        ; $5c17: $03
    add e                                         ; $5c18: $83
    add e                                         ; $5c19: $83
    inc bc                                        ; $5c1a: $03
    inc bc                                        ; $5c1b: $03
    add $c7                                       ; $5c1c: $c6 $c7
    pop de                                        ; $5c1e: $d1
    pop de                                        ; $5c1f: $d1
    jp z, $d1cb                                   ; $5c20: $ca $cb $d1

    pop de                                        ; $5c23: $d1
    pop de                                        ; $5c24: $d1
    pop de                                        ; $5c25: $d1
    pop de                                        ; $5c26: $d1
    pop de                                        ; $5c27: $d1
    pop de                                        ; $5c28: $d1
    pop de                                        ; $5c29: $d1
    pop de                                        ; $5c2a: $d1
    pop de                                        ; $5c2b: $d1
    adc e                                         ; $5c2c: $8b
    adc e                                         ; $5c2d: $8b
    add e                                         ; $5c2e: $83
    add e                                         ; $5c2f: $83
    adc e                                         ; $5c30: $8b
    adc e                                         ; $5c31: $8b
    add e                                         ; $5c32: $83
    add e                                         ; $5c33: $83
    inc bc                                        ; $5c34: $03
    inc bc                                        ; $5c35: $03
    inc bc                                        ; $5c36: $03
    inc bc                                        ; $5c37: $03
    inc bc                                        ; $5c38: $03
    inc bc                                        ; $5c39: $03
    inc bc                                        ; $5c3a: $03
    inc bc                                        ; $5c3b: $03
    ld l, $d1                                     ; $5c3c: $2e $d1
    pop de                                        ; $5c3e: $d1
    pop de                                        ; $5c3f: $d1
    cpl                                           ; $5c40: $2f
    pop de                                        ; $5c41: $d1
    pop de                                        ; $5c42: $d1
    pop de                                        ; $5c43: $d1
    jr nc, jr_07d_5c17                            ; $5c44: $30 $d1

    pop de                                        ; $5c46: $d1
    pop de                                        ; $5c47: $d1
    ld sp, $d1d1                                  ; $5c48: $31 $d1 $d1
    pop de                                        ; $5c4b: $d1
    add hl, bc                                    ; $5c4c: $09
    inc bc                                        ; $5c4d: $03
    inc bc                                        ; $5c4e: $03
    inc bc                                        ; $5c4f: $03
    add hl, bc                                    ; $5c50: $09
    inc bc                                        ; $5c51: $03
    inc bc                                        ; $5c52: $03
    inc bc                                        ; $5c53: $03
    add hl, bc                                    ; $5c54: $09
    inc bc                                        ; $5c55: $03
    inc bc                                        ; $5c56: $03
    inc bc                                        ; $5c57: $03
    adc e                                         ; $5c58: $8b
    add e                                         ; $5c59: $83
    add e                                         ; $5c5a: $83
    inc bc                                        ; $5c5b: $03
    ld [hl-], a                                   ; $5c5c: $32
    pop de                                        ; $5c5d: $d1
    pop de                                        ; $5c5e: $d1
    pop de                                        ; $5c5f: $d1
    inc sp                                        ; $5c60: $33
    pop de                                        ; $5c61: $d1
    pop de                                        ; $5c62: $d1
    pop de                                        ; $5c63: $d1
    inc [hl]                                      ; $5c64: $34
    pop de                                        ; $5c65: $d1
    pop de                                        ; $5c66: $d1
    pop de                                        ; $5c67: $d1
    dec [hl]                                      ; $5c68: $35
    pop de                                        ; $5c69: $d1
    pop de                                        ; $5c6a: $d1
    pop de                                        ; $5c6b: $d1
    adc [hl]                                      ; $5c6c: $8e
    add e                                         ; $5c6d: $83
    add e                                         ; $5c6e: $83
    inc bc                                        ; $5c6f: $03
    adc e                                         ; $5c70: $8b
    add e                                         ; $5c71: $83
    add e                                         ; $5c72: $83
    inc bc                                        ; $5c73: $03
    adc e                                         ; $5c74: $8b
    add e                                         ; $5c75: $83
    add e                                         ; $5c76: $83
    inc bc                                        ; $5c77: $03
    adc [hl]                                      ; $5c78: $8e
    add e                                         ; $5c79: $83
    add e                                         ; $5c7a: $83
    inc bc                                        ; $5c7b: $03
    pop de                                        ; $5c7c: $d1
    pop de                                        ; $5c7d: $d1
    pop de                                        ; $5c7e: $d1
    pop de                                        ; $5c7f: $d1
    ld [hl], $d1                                  ; $5c80: $36 $d1
    pop de                                        ; $5c82: $d1
    pop de                                        ; $5c83: $d1
    pop de                                        ; $5c84: $d1
    pop de                                        ; $5c85: $d1
    pop de                                        ; $5c86: $d1
    pop de                                        ; $5c87: $d1
    pop de                                        ; $5c88: $d1
    pop de                                        ; $5c89: $d1
    pop de                                        ; $5c8a: $d1
    pop de                                        ; $5c8b: $d1
    add e                                         ; $5c8c: $83
    add e                                         ; $5c8d: $83
    add e                                         ; $5c8e: $83
    inc bc                                        ; $5c8f: $03
    adc e                                         ; $5c90: $8b
    add e                                         ; $5c91: $83
    add e                                         ; $5c92: $83
    inc bc                                        ; $5c93: $03
    add e                                         ; $5c94: $83
    add e                                         ; $5c95: $83
    add e                                         ; $5c96: $83
    inc bc                                        ; $5c97: $03
    add e                                         ; $5c98: $83
    add e                                         ; $5c99: $83
    add e                                         ; $5c9a: $83
    inc bc                                        ; $5c9b: $03
    pop de                                        ; $5c9c: $d1
    inc e                                         ; $5c9d: $1c
    add hl, de                                    ; $5c9e: $19
    ld a, [de]                                    ; $5c9f: $1a
    pop de                                        ; $5ca0: $d1
    dec de                                        ; $5ca1: $1b
    inc e                                         ; $5ca2: $1c
    dec e                                         ; $5ca3: $1d
    ld [bc], a                                    ; $5ca4: $02
    inc bc                                        ; $5ca5: $03
    jr z, jr_07d_5cd1                             ; $5ca6: $28 $29

    jp nc, $d4d3                                  ; $5ca8: $d2 $d3 $d4

    ld bc, $0901                                  ; $5cab: $01 $01 $09
    rlca                                          ; $5cae: $07
    ld bc, $0101                                  ; $5caf: $01 $01 $01
    ld bc, $8301                                  ; $5cb2: $01 $01 $83
    add [hl]                                      ; $5cb5: $86
    ld [bc], a                                    ; $5cb6: $02
    ld [bc], a                                    ; $5cb7: $02
    add [hl]                                      ; $5cb8: $86
    add [hl]                                      ; $5cb9: $86
    ld [bc], a                                    ; $5cba: $02
    dec b                                         ; $5cbb: $05
    sub c                                         ; $5cbc: $91
    sub d                                         ; $5cbd: $92
    sub e                                         ; $5cbe: $93
    sub h                                         ; $5cbf: $94
    sub l                                         ; $5cc0: $95
    sub [hl]                                      ; $5cc1: $96
    sub a                                         ; $5cc2: $97
    sbc b                                         ; $5cc3: $98
    ld [hl], $37                                  ; $5cc4: $36 $37
    jr c, @+$3b                                   ; $5cc6: $38 $39

    pop hl                                        ; $5cc8: $e1
    dec bc                                        ; $5cc9: $0b
    push de                                       ; $5cca: $d5
    dec e                                         ; $5ccb: $1d
    add hl, bc                                    ; $5ccc: $09
    add hl, bc                                    ; $5ccd: $09
    add hl, bc                                    ; $5cce: $09
    add hl, bc                                    ; $5ccf: $09
    add hl, bc                                    ; $5cd0: $09

jr_07d_5cd1:
    add hl, bc                                    ; $5cd1: $09
    add hl, bc                                    ; $5cd2: $09
    add hl, bc                                    ; $5cd3: $09
    ld [bc], a                                    ; $5cd4: $02
    ld [bc], a                                    ; $5cd5: $02
    ld [bc], a                                    ; $5cd6: $02
    ld [bc], a                                    ; $5cd7: $02
    dec b                                         ; $5cd8: $05
    ld [bc], a                                    ; $5cd9: $02
    ld [bc], a                                    ; $5cda: $02
    adc e                                         ; $5cdb: $8b
    and b                                         ; $5cdc: $a0
    and c                                         ; $5cdd: $a1
    and d                                         ; $5cde: $a2
    and e                                         ; $5cdf: $a3
    and h                                         ; $5ce0: $a4
    and l                                         ; $5ce1: $a5
    and [hl]                                      ; $5ce2: $a6
    scf                                           ; $5ce3: $37
    xor b                                         ; $5ce4: $a8
    xor c                                         ; $5ce5: $a9
    xor d                                         ; $5ce6: $aa
    xor e                                         ; $5ce7: $ab
    jr nz, jr_07d_5d09                            ; $5ce8: $20 $1f

    jr nz, jr_07d_5d16                            ; $5cea: $20 $2a

    add hl, bc                                    ; $5cec: $09
    add hl, bc                                    ; $5ced: $09
    rrca                                          ; $5cee: $0f
    rrca                                          ; $5cef: $0f
    add hl, bc                                    ; $5cf0: $09
    add hl, bc                                    ; $5cf1: $09
    rrca                                          ; $5cf2: $0f
    add hl, bc                                    ; $5cf3: $09
    ld a, [bc]                                    ; $5cf4: $0a
    ld a, [bc]                                    ; $5cf5: $0a
    ld a, [bc]                                    ; $5cf6: $0a
    ld a, [bc]                                    ; $5cf7: $0a
    adc e                                         ; $5cf8: $8b
    add e                                         ; $5cf9: $83
    add e                                         ; $5cfa: $83
    add e                                         ; $5cfb: $83
    sub $d7                                       ; $5cfc: $d6 $d7
    inc b                                         ; $5cfe: $04
    reti                                          ; $5cff: $d9


    jp c, $dcdb                                   ; $5d00: $da $db $dc

    db $dd                                        ; $5d03: $dd
    sbc $df                                       ; $5d04: $de $df
    dec c                                         ; $5d06: $0d
    ldh [$e7], a                                  ; $5d07: $e0 $e7

jr_07d_5d09:
    and $fa                                       ; $5d09: $e6 $fa
    ei                                            ; $5d0b: $fb
    add [hl]                                      ; $5d0c: $86
    add e                                         ; $5d0d: $83
    dec b                                         ; $5d0e: $05
    dec b                                         ; $5d0f: $05
    and [hl]                                      ; $5d10: $a6
    and e                                         ; $5d11: $a3
    dec b                                         ; $5d12: $05
    ld [bc], a                                    ; $5d13: $02
    and e                                         ; $5d14: $a3
    and e                                         ; $5d15: $a3

jr_07d_5d16:
    dec c                                         ; $5d16: $0d
    ld [bc], a                                    ; $5d17: $02
    and [hl]                                      ; $5d18: $a6
    and e                                         ; $5d19: $a3
    dec b                                         ; $5d1a: $05
    dec b                                         ; $5d1b: $05
    ld [c], a                                     ; $5d1c: $e2
    ld e, $1d                                     ; $5d1d: $1e $1d
    rra                                           ; $5d1f: $1f
    db $e4                                        ; $5d20: $e4
    push hl                                       ; $5d21: $e5
    ld a, [bc]                                    ; $5d22: $0a
    daa                                           ; $5d23: $27
    ld a, [bc]                                    ; $5d24: $0a
    call nc, Call_000_2726                        ; $5d25: $d4 $26 $27
    dec b                                         ; $5d28: $05
    ld b, $f4                                     ; $5d29: $06 $f4
    jr z, jr_07d_5d2f                             ; $5d2b: $28 $02

    adc e                                         ; $5d2d: $8b
    adc e                                         ; $5d2e: $8b

jr_07d_5d2f:
    adc e                                         ; $5d2f: $8b
    ld [bc], a                                    ; $5d30: $02
    ld [bc], a                                    ; $5d31: $02
    ld a, [bc]                                    ; $5d32: $0a
    ld [bc], a                                    ; $5d33: $02
    dec b                                         ; $5d34: $05
    ld [bc], a                                    ; $5d35: $02
    adc e                                         ; $5d36: $8b
    adc e                                         ; $5d37: $8b
    dec b                                         ; $5d38: $05
    ld [bc], a                                    ; $5d39: $02
    dec c                                         ; $5d3a: $0d
    adc e                                         ; $5d3b: $8b
    ld hl, $2322                                  ; $5d3c: $21 $22 $23
    ld l, $22                                     ; $5d3f: $2e $22
    dec h                                         ; $5d41: $25
    ld h, $32                                     ; $5d42: $26 $32
    ld b, d                                       ; $5d44: $42
    ld b, e                                       ; $5d45: $43
    ld b, h                                       ; $5d46: $44
    ld c, [hl]                                    ; $5d47: $4e
    ld b, l                                       ; $5d48: $45
    ld b, [hl]                                    ; $5d49: $46
    ld b, a                                       ; $5d4a: $47
    ld d, d                                       ; $5d4b: $52
    adc e                                         ; $5d4c: $8b
    add e                                         ; $5d4d: $83
    add [hl]                                      ; $5d4e: $86
    add e                                         ; $5d4f: $83
    adc e                                         ; $5d50: $8b
    add e                                         ; $5d51: $83
    add [hl]                                      ; $5d52: $86
    add e                                         ; $5d53: $83
    add e                                         ; $5d54: $83
    add e                                         ; $5d55: $83
    add [hl]                                      ; $5d56: $86
    add [hl]                                      ; $5d57: $86
    add [hl]                                      ; $5d58: $86
    add e                                         ; $5d59: $83
    add [hl]                                      ; $5d5a: $86
    add [hl]                                      ; $5d5b: $86
    db $eb                                        ; $5d5c: $eb
    ld [$fdfc], a                                 ; $5d5d: $ea $fc $fd
    cp $ff                                        ; $5d60: $fe $ff
    call nc, $0201                                ; $5d62: $d4 $01 $02
    inc bc                                        ; $5d65: $03
    inc b                                         ; $5d66: $04
    db $f4                                        ; $5d67: $f4
    jp nc, $e5d3                                  ; $5d68: $d2 $d3 $e5

    db $dd                                        ; $5d6b: $dd
    and [hl]                                      ; $5d6c: $a6
    and [hl]                                      ; $5d6d: $a6
    ld [bc], a                                    ; $5d6e: $02
    ld [bc], a                                    ; $5d6f: $02
    and [hl]                                      ; $5d70: $a6
    and e                                         ; $5d71: $a3
    ld [bc], a                                    ; $5d72: $02
    dec b                                         ; $5d73: $05
    add [hl]                                      ; $5d74: $86
    add e                                         ; $5d75: $83
    ld [bc], a                                    ; $5d76: $02
    dec c                                         ; $5d77: $0d
    add e                                         ; $5d78: $83
    add e                                         ; $5d79: $83
    ld [bc], a                                    ; $5d7a: $02
    ld [bc], a                                    ; $5d7b: $02
    rlca                                          ; $5d7c: $07
    cp b                                          ; $5d7d: $b8
    cp c                                          ; $5d7e: $b9
    add hl, hl                                    ; $5d7f: $29
    pop hl                                        ; $5d80: $e1
    dec bc                                        ; $5d81: $0b
    inc bc                                        ; $5d82: $03
    ld [bc], a                                    ; $5d83: $02
    ld [c], a                                     ; $5d84: $e2
    db $e3                                        ; $5d85: $e3
    db $d3                                        ; $5d86: $d3
    jp nc, Jump_000_09e4                          ; $5d87: $d2 $e4 $09

    rst $10                                       ; $5d8a: $d7
    sub $05                                       ; $5d8b: $d6 $05
    ld a, [bc]                                    ; $5d8d: $0a
    ld a, [bc]                                    ; $5d8e: $0a
    adc [hl]                                      ; $5d8f: $8e
    dec b                                         ; $5d90: $05
    ld [bc], a                                    ; $5d91: $02
    and e                                         ; $5d92: $a3
    and [hl]                                      ; $5d93: $a6
    ld [bc], a                                    ; $5d94: $02
    dec b                                         ; $5d95: $05
    and e                                         ; $5d96: $a3
    and e                                         ; $5d97: $a3
    dec b                                         ; $5d98: $05
    dec c                                         ; $5d99: $0d
    and e                                         ; $5d9a: $a3
    and [hl]                                      ; $5d9b: $a6
    ld c, b                                       ; $5d9c: $48
    ld c, c                                       ; $5d9d: $49
    ld c, d                                       ; $5d9e: $4a
    ld d, [hl]                                    ; $5d9f: $56
    ld c, e                                       ; $5da0: $4b
    ld c, h                                       ; $5da1: $4c
    ld c, l                                       ; $5da2: $4d
    ld e, d                                       ; $5da3: $5a
    cp a                                          ; $5da4: $bf
    ret nz                                        ; $5da5: $c0

    pop bc                                        ; $5da6: $c1
    push bc                                       ; $5da7: $c5
    pop de                                        ; $5da8: $d1
    jp nz, $c9d1                                  ; $5da9: $c2 $d1 $c9

    add [hl]                                      ; $5dac: $86
    add e                                         ; $5dad: $83
    add e                                         ; $5dae: $83
    add [hl]                                      ; $5daf: $86
    add e                                         ; $5db0: $83
    add e                                         ; $5db1: $83
    add e                                         ; $5db2: $83
    add [hl]                                      ; $5db3: $86
    adc e                                         ; $5db4: $8b
    adc e                                         ; $5db5: $8b
    adc e                                         ; $5db6: $8b
    adc [hl]                                      ; $5db7: $8e
    inc bc                                        ; $5db8: $03
    dec bc                                        ; $5db9: $0b
    inc bc                                        ; $5dba: $03
    dec bc                                        ; $5dbb: $0b
    sub $d7                                       ; $5dbc: $d6 $d7
    dec c                                         ; $5dbe: $0d
    ldh [$da], a                                  ; $5dbf: $e0 $da
    db $db                                        ; $5dc1: $db
    ld a, [$38fb]                                 ; $5dc2: $fa $fb $38
    add hl, sp                                    ; $5dc5: $39
    ld a, [hl-]                                   ; $5dc6: $3a
    dec sp                                        ; $5dc7: $3b
    inc a                                         ; $5dc8: $3c
    dec a                                         ; $5dc9: $3d
    ld a, $3f                                     ; $5dca: $3e $3f
    add e                                         ; $5dcc: $83
    add e                                         ; $5dcd: $83
    ld a, [bc]                                    ; $5dce: $0a
    dec b                                         ; $5dcf: $05
    and e                                         ; $5dd0: $a3
    and e                                         ; $5dd1: $a3
    dec b                                         ; $5dd2: $05
    dec b                                         ; $5dd3: $05
    adc [hl]                                      ; $5dd4: $8e
    adc [hl]                                      ; $5dd5: $8e
    adc e                                         ; $5dd6: $8b
    adc [hl]                                      ; $5dd7: $8e
    adc e                                         ; $5dd8: $8b
    adc [hl]                                      ; $5dd9: $8e
    adc [hl]                                      ; $5dda: $8e
    adc e                                         ; $5ddb: $8b
    add sp, -$2c                                  ; $5ddc: $e8 $d4
    db $db                                        ; $5dde: $db
    jp c, $0605                                   ; $5ddf: $da $05 $06

    rst $18                                       ; $5de2: $df
    sbc $40                                       ; $5de3: $de $40
    ld b, c                                       ; $5de5: $41
    ld b, d                                       ; $5de6: $42
    rst $20                                       ; $5de7: $e7
    ld b, e                                       ; $5de8: $43
    ld b, h                                       ; $5de9: $44
    ld b, l                                       ; $5dea: $45
    ld b, [hl]                                    ; $5deb: $46
    dec b                                         ; $5dec: $05
    ld [bc], a                                    ; $5ded: $02
    add e                                         ; $5dee: $83
    add [hl]                                      ; $5def: $86
    ld [bc], a                                    ; $5df0: $02
    dec b                                         ; $5df1: $05
    add [hl]                                      ; $5df2: $86
    add e                                         ; $5df3: $83
    adc [hl]                                      ; $5df4: $8e
    adc e                                         ; $5df5: $8b
    adc [hl]                                      ; $5df6: $8e
    add e                                         ; $5df7: $83
    adc e                                         ; $5df8: $8b
    adc e                                         ; $5df9: $8b
    adc e                                         ; $5dfa: $8b
    adc e                                         ; $5dfb: $8b
    inc c                                         ; $5dfc: $0c
    db $fd                                        ; $5dfd: $fd
    rlca                                          ; $5dfe: $07
    cp b                                          ; $5dff: $b8
    ld c, $01                                     ; $5e00: $0e $01
    pop hl                                        ; $5e02: $e1
    dec bc                                        ; $5e03: $0b
    jr z, jr_07d_5e2d                             ; $5e04: $28 $27

    ld [c], a                                     ; $5e06: $e2
    ld a, [bc]                                    ; $5e07: $0a
    dec hl                                        ; $5e08: $2b
    inc l                                         ; $5e09: $2c
    dec l                                         ; $5e0a: $2d
    ld a, [hl-]                                   ; $5e0b: $3a
    ld [hl+], a                                   ; $5e0c: $22
    dec b                                         ; $5e0d: $05
    dec b                                         ; $5e0e: $05
    ld a, [bc]                                    ; $5e0f: $0a
    ld [hl+], a                                   ; $5e10: $22
    ld [bc], a                                    ; $5e11: $02
    dec b                                         ; $5e12: $05
    dec b                                         ; $5e13: $05
    ld [hl+], a                                   ; $5e14: $22
    ld [bc], a                                    ; $5e15: $02
    ld [bc], a                                    ; $5e16: $02
    dec c                                         ; $5e17: $0d
    add e                                         ; $5e18: $83
    add e                                         ; $5e19: $83
    add e                                         ; $5e1a: $83
    add e                                         ; $5e1b: $83
    cp c                                          ; $5e1c: $b9
    cp d                                          ; $5e1d: $ba
    ld [$08eb], a                                 ; $5e1e: $ea $eb $08
    cp l                                          ; $5e21: $bd
    db $f4                                        ; $5e22: $f4
    ld sp, $e5ae                                  ; $5e23: $31 $ae $e5
    ld a, [bc]                                    ; $5e26: $0a
    ld [hl-], a                                   ; $5e27: $32
    inc l                                         ; $5e28: $2c
    dec l                                         ; $5e29: $2d
    inc hl                                        ; $5e2a: $23
    inc sp                                        ; $5e2b: $33
    dec c                                         ; $5e2c: $0d

jr_07d_5e2d:
    ld a, [bc]                                    ; $5e2d: $0a
    add e                                         ; $5e2e: $83
    add [hl]                                      ; $5e2f: $86
    ld a, [bc]                                    ; $5e30: $0a
    dec c                                         ; $5e31: $0d
    ld a, [bc]                                    ; $5e32: $0a
    adc [hl]                                      ; $5e33: $8e
    ld a, [bc]                                    ; $5e34: $0a
    ld [bc], a                                    ; $5e35: $02
    ld a, [bc]                                    ; $5e36: $0a
    adc [hl]                                      ; $5e37: $8e
    add e                                         ; $5e38: $83
    add e                                         ; $5e39: $83
    adc e                                         ; $5e3a: $8b
    adc [hl]                                      ; $5e3b: $8e
    cpl                                           ; $5e3c: $2f
    jr nc, jr_07d_5e70                            ; $5e3d: $30 $31

    dec a                                         ; $5e3f: $3d
    inc sp                                        ; $5e40: $33
    inc [hl]                                      ; $5e41: $34
    dec [hl]                                      ; $5e42: $35
    ld b, b                                       ; $5e43: $40
    ld c, a                                       ; $5e44: $4f
    ld d, b                                       ; $5e45: $50
    ld d, c                                       ; $5e46: $51
    ld e, [hl]                                    ; $5e47: $5e
    ld d, e                                       ; $5e48: $53
    ld d, h                                       ; $5e49: $54
    ld d, l                                       ; $5e4a: $55
    ld h, d                                       ; $5e4b: $62
    add e                                         ; $5e4c: $83
    add [hl]                                      ; $5e4d: $86
    add [hl]                                      ; $5e4e: $86
    add [hl]                                      ; $5e4f: $86
    add [hl]                                      ; $5e50: $86
    add e                                         ; $5e51: $83
    add [hl]                                      ; $5e52: $86
    add e                                         ; $5e53: $83
    add [hl]                                      ; $5e54: $86
    add [hl]                                      ; $5e55: $86
    add e                                         ; $5e56: $83
    add [hl]                                      ; $5e57: $86
    add [hl]                                      ; $5e58: $86
    add [hl]                                      ; $5e59: $86
    add e                                         ; $5e5a: $83
    add e                                         ; $5e5b: $83
    jr nc, jr_07d_5e8f                            ; $5e5c: $30 $31

    inc h                                         ; $5e5e: $24
    inc [hl]                                      ; $5e5f: $34
    inc [hl]                                      ; $5e60: $34
    dec [hl]                                      ; $5e61: $35
    dec h                                         ; $5e62: $25
    dec [hl]                                      ; $5e63: $35
    ld d, b                                       ; $5e64: $50
    ld d, c                                       ; $5e65: $51
    ld a, [hl+]                                   ; $5e66: $2a
    pop de                                        ; $5e67: $d1
    ld d, h                                       ; $5e68: $54
    ld d, l                                       ; $5e69: $55
    dec hl                                        ; $5e6a: $2b
    ld [hl], $83                                  ; $5e6b: $36 $83
    add e                                         ; $5e6d: $83
    adc e                                         ; $5e6e: $8b
    adc e                                         ; $5e6f: $8b

jr_07d_5e70:
    add e                                         ; $5e70: $83
    add [hl]                                      ; $5e71: $86
    adc e                                         ; $5e72: $8b
    adc e                                         ; $5e73: $8b
    add [hl]                                      ; $5e74: $86
    add e                                         ; $5e75: $83
    adc e                                         ; $5e76: $8b
    add e                                         ; $5e77: $83
    add e                                         ; $5e78: $83
    add e                                         ; $5e79: $83
    adc e                                         ; $5e7a: $8b
    adc e                                         ; $5e7b: $8b
    pop de                                        ; $5e7c: $d1
    pop de                                        ; $5e7d: $d1
    pop de                                        ; $5e7e: $d1
    pop de                                        ; $5e7f: $d1
    pop de                                        ; $5e80: $d1
    pop de                                        ; $5e81: $d1
    pop de                                        ; $5e82: $d1
    pop de                                        ; $5e83: $d1
    pop de                                        ; $5e84: $d1
    pop de                                        ; $5e85: $d1
    pop de                                        ; $5e86: $d1
    pop de                                        ; $5e87: $d1
    pop de                                        ; $5e88: $d1
    pop de                                        ; $5e89: $d1
    pop de                                        ; $5e8a: $d1
    pop de                                        ; $5e8b: $d1
    add [hl]                                      ; $5e8c: $86
    add e                                         ; $5e8d: $83
    inc bc                                        ; $5e8e: $03

jr_07d_5e8f:
    inc bc                                        ; $5e8f: $03
    add e                                         ; $5e90: $83
    add e                                         ; $5e91: $83
    inc bc                                        ; $5e92: $03
    inc bc                                        ; $5e93: $03
    add e                                         ; $5e94: $83
    add e                                         ; $5e95: $83
    inc bc                                        ; $5e96: $03
    inc bc                                        ; $5e97: $03
    add e                                         ; $5e98: $83
    add e                                         ; $5e99: $83
    inc bc                                        ; $5e9a: $03
    inc bc                                        ; $5e9b: $03
    ld d, a                                       ; $5e9c: $57
    ld e, b                                       ; $5e9d: $58
    ld e, c                                       ; $5e9e: $59
    ld h, h                                       ; $5e9f: $64
    ld e, e                                       ; $5ea0: $5b
    ld e, h                                       ; $5ea1: $5c
    ld e, l                                       ; $5ea2: $5d
    ld h, a                                       ; $5ea3: $67
    add $c7                                       ; $5ea4: $c6 $c7
    ret z                                         ; $5ea6: $c8

    ret nc                                        ; $5ea7: $d0

    jp z, $d1cb                                   ; $5ea8: $ca $cb $d1

    pop de                                        ; $5eab: $d1
    add e                                         ; $5eac: $83
    add [hl]                                      ; $5ead: $86
    add [hl]                                      ; $5eae: $86
    add [hl]                                      ; $5eaf: $86
    add [hl]                                      ; $5eb0: $86
    add [hl]                                      ; $5eb1: $86
    add e                                         ; $5eb2: $83
    add e                                         ; $5eb3: $83
    adc [hl]                                      ; $5eb4: $8e
    adc [hl]                                      ; $5eb5: $8e
    adc [hl]                                      ; $5eb6: $8e
    adc e                                         ; $5eb7: $8b
    ld c, $0e                                     ; $5eb8: $0e $0e
    inc bc                                        ; $5eba: $03
    inc bc                                        ; $5ebb: $03
    ld e, b                                       ; $5ebc: $58
    inc l                                         ; $5ebd: $2c
    dec l                                         ; $5ebe: $2d
    pop de                                        ; $5ebf: $d1
    ld e, h                                       ; $5ec0: $5c
    pop de                                        ; $5ec1: $d1
    pop de                                        ; $5ec2: $d1
    pop de                                        ; $5ec3: $d1
    rst $00                                       ; $5ec4: $c7

Call_07d_5ec5:
    pop de                                        ; $5ec5: $d1
    pop de                                        ; $5ec6: $d1
    pop de                                        ; $5ec7: $d1
    set 2, c                                      ; $5ec8: $cb $d1
    pop de                                        ; $5eca: $d1
    pop de                                        ; $5ecb: $d1
    add [hl]                                      ; $5ecc: $86
    adc [hl]                                      ; $5ecd: $8e
    adc e                                         ; $5ece: $8b
    add e                                         ; $5ecf: $83
    add e                                         ; $5ed0: $83
    add e                                         ; $5ed1: $83
    add [hl]                                      ; $5ed2: $86
    add e                                         ; $5ed3: $83
    adc [hl]                                      ; $5ed4: $8e
    add [hl]                                      ; $5ed5: $86
    add [hl]                                      ; $5ed6: $86
    add e                                         ; $5ed7: $83
    dec bc                                        ; $5ed8: $0b
    inc bc                                        ; $5ed9: $03
    inc bc                                        ; $5eda: $03
    inc bc                                        ; $5edb: $03
    pop de                                        ; $5edc: $d1
    call $d1d3                                    ; $5edd: $cd $d3 $d1
    pop de                                        ; $5ee0: $d1
    rst $08                                       ; $5ee1: $cf
    sub $d1                                       ; $5ee2: $d6 $d1
    ld a, e                                       ; $5ee4: $7b
    ld a, h                                       ; $5ee5: $7c
    ld a, l                                       ; $5ee6: $7d
    ld a, [hl]                                    ; $5ee7: $7e
    ld a, a                                       ; $5ee8: $7f
    add b                                         ; $5ee9: $80
    add c                                         ; $5eea: $81
    add d                                         ; $5eeb: $82
    ld bc, $0909                                  ; $5eec: $01 $09 $09
    ld bc, $0901                                  ; $5eef: $01 $01 $09
    add hl, bc                                    ; $5ef2: $09
    ld bc, $0101                                  ; $5ef3: $01 $01 $01
    ld bc, $0101                                  ; $5ef6: $01 $01 $01
    add hl, bc                                    ; $5ef9: $09
    add hl, bc                                    ; $5efa: $09
    add hl, bc                                    ; $5efb: $09
    pop de                                        ; $5efc: $d1
    ld c, $0f                                     ; $5efd: $0e $0f
    ld [de], a                                    ; $5eff: $12
    pop de                                        ; $5f00: $d1
    db $10                                        ; $5f01: $10
    ld de, $eca3                                  ; $5f02: $11 $a3 $ec
    db $ed                                        ; $5f05: $ed
    xor $6b                                       ; $5f06: $ee $6b
    inc de                                        ; $5f08: $13
    pop af                                        ; $5f09: $f1
    ld a, [c]                                     ; $5f0a: $f2
    ld l, a                                       ; $5f0b: $6f
    ld bc, $0909                                  ; $5f0c: $01 $09 $09
    add hl, bc                                    ; $5f0f: $09
    ld bc, $0909                                  ; $5f10: $01 $09 $09
    ld c, c                                       ; $5f13: $49
    ld bc, $0101                                  ; $5f14: $01 $01 $01
    ld bc, $0109                                  ; $5f17: $01 $09 $01
    ld bc, $c301                                  ; $5f1a: $01 $01 $c3
    pop de                                        ; $5f1d: $d1
    call z, $c4d1                                 ; $5f1e: $cc $d1 $c4
    pop de                                        ; $5f21: $d1
    adc $d1                                       ; $5f22: $ce $d1
    ld l, h                                       ; $5f24: $6c
    ld l, l                                       ; $5f25: $6d
    ld l, [hl]                                    ; $5f26: $6e
    ld a, e                                       ; $5f27: $7b
    ld [hl], b                                    ; $5f28: $70
    ld [hl], c                                    ; $5f29: $71
    ld [hl], d                                    ; $5f2a: $72
    ld a, a                                       ; $5f2b: $7f
    add hl, bc                                    ; $5f2c: $09
    ld bc, $0109                                  ; $5f2d: $01 $09 $01
    add hl, bc                                    ; $5f30: $09
    ld bc, $0109                                  ; $5f31: $01 $09 $01
    ld bc, $0101                                  ; $5f34: $01 $01 $01
    ld bc, $0101                                  ; $5f37: $01 $01 $01
    ld bc, $cd01                                  ; $5f3a: $01 $01 $cd
    db $d3                                        ; $5f3d: $d3
    pop de                                        ; $5f3e: $d1
    pop de                                        ; $5f3f: $d1
    rst $08                                       ; $5f40: $cf
    sub $d1                                       ; $5f41: $d6 $d1
    pop de                                        ; $5f43: $d1
    ld a, h                                       ; $5f44: $7c
    ld a, l                                       ; $5f45: $7d
    ld a, [hl]                                    ; $5f46: $7e
    db $ec                                        ; $5f47: $ec
    add b                                         ; $5f48: $80
    add c                                         ; $5f49: $81
    add d                                         ; $5f4a: $82
    inc de                                        ; $5f4b: $13
    add hl, bc                                    ; $5f4c: $09
    add hl, bc                                    ; $5f4d: $09
    ld bc, $0901                                  ; $5f4e: $01 $01 $09
    add hl, bc                                    ; $5f51: $09
    ld bc, $0101                                  ; $5f52: $01 $01 $01
    ld bc, $0101                                  ; $5f55: $01 $01 $01
    add hl, bc                                    ; $5f58: $09
    add hl, bc                                    ; $5f59: $09
    add hl, bc                                    ; $5f5a: $09
    add hl, bc                                    ; $5f5b: $09
    db $eb                                        ; $5f5c: $eb
    ld [$d9d8], a                                 ; $5f5d: $ea $d8 $d9
    cp $ff                                        ; $5f60: $fe $ff
    call c, $02dd                                 ; $5f62: $dc $dd $02
    inc bc                                        ; $5f65: $03
    call nc, $d2e0                                ; $5f66: $d4 $e0 $d2
    db $d3                                        ; $5f69: $d3
    ld a, [$a6f4]                                 ; $5f6a: $fa $f4 $a6
    and e                                         ; $5f6d: $a3
    ld [bc], a                                    ; $5f6e: $02
    ld [bc], a                                    ; $5f6f: $02
    and [hl]                                      ; $5f70: $a6
    and e                                         ; $5f71: $a3
    ld [bc], a                                    ; $5f72: $02
    dec b                                         ; $5f73: $05
    add [hl]                                      ; $5f74: $86
    add e                                         ; $5f75: $83
    ld [bc], a                                    ; $5f76: $02
    dec b                                         ; $5f77: $05
    add e                                         ; $5f78: $83
    add [hl]                                      ; $5f79: $86
    ld [bc], a                                    ; $5f7a: $02
    dec c                                         ; $5f7b: $0d
    ld [c], a                                     ; $5f7c: $e2
    ret c                                         ; $5f7d: $d8

    ld b, a                                       ; $5f7e: $47
    ld c, b                                       ; $5f7f: $48
    db $e4                                        ; $5f80: $e4
    add hl, bc                                    ; $5f81: $09
    ld [$e809], sp                                ; $5f82: $08 $09 $e8
    jp hl                                         ; $5f85: $e9


    inc c                                         ; $5f86: $0c
    dec c                                         ; $5f87: $0d
    dec b                                         ; $5f88: $05
    ld b, $0e                                     ; $5f89: $06 $0e
    rrca                                          ; $5f8b: $0f
    ld [bc], a                                    ; $5f8c: $02
    ld [bc], a                                    ; $5f8d: $02
    adc e                                         ; $5f8e: $8b
    adc e                                         ; $5f8f: $8b
    ld [bc], a                                    ; $5f90: $02
    dec c                                         ; $5f91: $0d
    ld [bc], a                                    ; $5f92: $02
    ld bc, $0205                                  ; $5f93: $01 $05 $02
    ld [bc], a                                    ; $5f96: $02
    ld bc, $0205                                  ; $5f97: $01 $05 $02
    ld [bc], a                                    ; $5f9a: $02
    ld bc, $14d1                                  ; $5f9b: $01 $d1 $14
    push af                                       ; $5f9e: $f5
    or $d1                                        ; $5f9f: $f6 $d1
    dec d                                         ; $5fa1: $15
    ld [de], a                                    ; $5fa2: $12
    inc de                                        ; $5fa3: $13
    pop de                                        ; $5fa4: $d1
    inc e                                         ; $5fa5: $1c
    add hl, de                                    ; $5fa6: $19
    ld a, [de]                                    ; $5fa7: $1a
    pop de                                        ; $5fa8: $d1
    dec de                                        ; $5fa9: $1b
    inc e                                         ; $5faa: $1c
    dec e                                         ; $5fab: $1d
    ld bc, $0709                                  ; $5fac: $01 $09 $07
    ld bc, $0901                                  ; $5faf: $01 $01 $09
    rlca                                          ; $5fb2: $07
    ld bc, $0901                                  ; $5fb3: $01 $01 $09
    rlca                                          ; $5fb6: $07
    ld bc, $0101                                  ; $5fb7: $01 $01 $01
    ld bc, $d601                                  ; $5fba: $01 $01 $d6
    rst $10                                       ; $5fbd: $d7
    push hl                                       ; $5fbe: $e5
    db $fd                                        ; $5fbf: $fd
    jp c, $d4db                                   ; $5fc0: $da $db $d4

    push de                                       ; $5fc3: $d5
    sbc $df                                       ; $5fc4: $de $df
    jr nz, jr_07d_5ff2                            ; $5fc6: $20 $2a

    rst $20                                       ; $5fc8: $e7
    and $23                                       ; $5fc9: $e6 $23
    ld l, $83                                     ; $5fcb: $2e $83
    add [hl]                                      ; $5fcd: $86
    dec b                                         ; $5fce: $05
    ld [bc], a                                    ; $5fcf: $02
    and e                                         ; $5fd0: $a3
    and [hl]                                      ; $5fd1: $a6
    ld [bc], a                                    ; $5fd2: $02
    ld [bc], a                                    ; $5fd3: $02
    and [hl]                                      ; $5fd4: $a6
    and e                                         ; $5fd5: $a3
    add e                                         ; $5fd6: $83
    add e                                         ; $5fd7: $83
    and [hl]                                      ; $5fd8: $a6
    and e                                         ; $5fd9: $a3
    add e                                         ; $5fda: $83
    add [hl]                                      ; $5fdb: $86
    daa                                           ; $5fdc: $27
    cp b                                          ; $5fdd: $b8
    jr z, jr_07d_6029                             ; $5fde: $28 $49

    pop hl                                        ; $5fe0: $e1
    call nc, Call_000_0a08                        ; $5fe1: $d4 $08 $0a
    dec hl                                        ; $5fe4: $2b
    inc l                                         ; $5fe5: $2c
    dec l                                         ; $5fe6: $2d
    ld a, [hl-]                                   ; $5fe7: $3a
    cpl                                           ; $5fe8: $2f
    jr nc, jr_07d_601c                            ; $5fe9: $30 $31

    dec a                                         ; $5feb: $3d
    ld [bc], a                                    ; $5fec: $02
    ld a, [bc]                                    ; $5fed: $0a
    ld [bc], a                                    ; $5fee: $02
    ld a, [bc]                                    ; $5fef: $0a
    ld [bc], a                                    ; $5ff0: $02
    dec b                                         ; $5ff1: $05

jr_07d_5ff2:
    dec c                                         ; $5ff2: $0d
    dec b                                         ; $5ff3: $05
    add e                                         ; $5ff4: $83
    add e                                         ; $5ff5: $83
    add e                                         ; $5ff6: $83
    add e                                         ; $5ff7: $83
    add e                                         ; $5ff8: $83
    add e                                         ; $5ff9: $83
    add e                                         ; $5ffa: $83
    add [hl]                                      ; $5ffb: $86
    add hl, hl                                    ; $5ffc: $29
    ld [hl], $37                                  ; $5ffd: $36 $37
    jr c, jr_07d_6001                             ; $5fff: $38 $00

jr_07d_6001:
    ld bc, $d4e1                                  ; $6001: $01 $e1 $d4
    dec sp                                        ; $6004: $3b
    ld e, $1f                                     ; $6005: $1e $1f
    jr nz, jr_07d_6047                            ; $6007: $20 $3e

    ld hl, $2322                                  ; $6009: $21 $22 $23
    ld [bc], a                                    ; $600c: $02
    ld [bc], a                                    ; $600d: $02
    ld [bc], a                                    ; $600e: $02
    ld [bc], a                                    ; $600f: $02
    dec b                                         ; $6010: $05
    dec b                                         ; $6011: $05
    ld [bc], a                                    ; $6012: $02
    ld [bc], a                                    ; $6013: $02
    add e                                         ; $6014: $83
    add e                                         ; $6015: $83
    add e                                         ; $6016: $83
    add e                                         ; $6017: $83
    add e                                         ; $6018: $83
    add e                                         ; $6019: $83
    add e                                         ; $601a: $83
    add [hl]                                      ; $601b: $86

jr_07d_601c:
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
    pop de                                        ; $6026: $d1
    pop de                                        ; $6027: $d1
    pop de                                        ; $6028: $d1

jr_07d_6029:
    pop de                                        ; $6029: $d1
    pop de                                        ; $602a: $d1
    pop de                                        ; $602b: $d1
    inc bc                                        ; $602c: $03
    inc bc                                        ; $602d: $03
    inc bc                                        ; $602e: $03
    add [hl]                                      ; $602f: $86
    inc bc                                        ; $6030: $03
    inc bc                                        ; $6031: $03
    inc bc                                        ; $6032: $03
    add e                                         ; $6033: $83
    inc bc                                        ; $6034: $03
    inc bc                                        ; $6035: $03
    inc bc                                        ; $6036: $03
    add [hl]                                      ; $6037: $86
    inc bc                                        ; $6038: $03
    inc bc                                        ; $6039: $03
    inc bc                                        ; $603a: $03
    add e                                         ; $603b: $83
    db $eb                                        ; $603c: $eb
    ld [$3226], a                                 ; $603d: $ea $26 $32
    cp $43                                        ; $6040: $fe $43
    ld b, h                                       ; $6042: $44
    ld c, [hl]                                    ; $6043: $4e
    ld b, l                                       ; $6044: $45
    ld b, [hl]                                    ; $6045: $46
    ld b, a                                       ; $6046: $47

jr_07d_6047:
    ld d, d                                       ; $6047: $52
    ld c, b                                       ; $6048: $48
    ld c, c                                       ; $6049: $49
    ld c, d                                       ; $604a: $4a
    ld d, [hl]                                    ; $604b: $56
    and e                                         ; $604c: $a3
    and e                                         ; $604d: $a3
    add [hl]                                      ; $604e: $86
    add e                                         ; $604f: $83
    and e                                         ; $6050: $a3
    add [hl]                                      ; $6051: $86
    add [hl]                                      ; $6052: $86
    add e                                         ; $6053: $83
    add [hl]                                      ; $6054: $86
    add [hl]                                      ; $6055: $86
    add [hl]                                      ; $6056: $86
    add [hl]                                      ; $6057: $86
    add e                                         ; $6058: $83
    add [hl]                                      ; $6059: $86
    add [hl]                                      ; $605a: $86
    add e                                         ; $605b: $83
    inc sp                                        ; $605c: $33
    inc [hl]                                      ; $605d: $34
    dec [hl]                                      ; $605e: $35
    ld b, b                                       ; $605f: $40
    ld c, a                                       ; $6060: $4f
    ld d, b                                       ; $6061: $50
    ld d, c                                       ; $6062: $51
    ld e, [hl]                                    ; $6063: $5e
    ld d, e                                       ; $6064: $53
    ld d, h                                       ; $6065: $54
    ld d, l                                       ; $6066: $55
    ld h, d                                       ; $6067: $62
    ld d, a                                       ; $6068: $57
    ld e, b                                       ; $6069: $58
    ld e, c                                       ; $606a: $59
    ld h, h                                       ; $606b: $64
    add [hl]                                      ; $606c: $86
    add e                                         ; $606d: $83
    add e                                         ; $606e: $83
    add [hl]                                      ; $606f: $86
    add [hl]                                      ; $6070: $86
    add e                                         ; $6071: $83
    add e                                         ; $6072: $83
    add e                                         ; $6073: $83
    add e                                         ; $6074: $83
    add e                                         ; $6075: $83
    add [hl]                                      ; $6076: $86
    add e                                         ; $6077: $83
    add e                                         ; $6078: $83
    add [hl]                                      ; $6079: $86
    add e                                         ; $607a: $83
    add e                                         ; $607b: $83
    ld b, c                                       ; $607c: $41
    inc h                                         ; $607d: $24
    dec h                                         ; $607e: $25
    ld h, $5f                                     ; $607f: $26 $5f
    ld b, d                                       ; $6081: $42
    ld b, e                                       ; $6082: $43
    ld b, h                                       ; $6083: $44
    ld h, e                                       ; $6084: $63
    ld b, l                                       ; $6085: $45
    ld b, [hl]                                    ; $6086: $46
    ld b, a                                       ; $6087: $47
    ld h, l                                       ; $6088: $65
    ld c, b                                       ; $6089: $48
    ld c, c                                       ; $608a: $49
    ld c, d                                       ; $608b: $4a
    add [hl]                                      ; $608c: $86
    add e                                         ; $608d: $83
    add e                                         ; $608e: $83
    add [hl]                                      ; $608f: $86
    add [hl]                                      ; $6090: $86
    add e                                         ; $6091: $83
    add e                                         ; $6092: $83
    add e                                         ; $6093: $83
    add [hl]                                      ; $6094: $86
    add e                                         ; $6095: $83
    add e                                         ; $6096: $83
    add e                                         ; $6097: $83
    add e                                         ; $6098: $83
    add [hl]                                      ; $6099: $86
    add [hl]                                      ; $609a: $86
    add [hl]                                      ; $609b: $86
    ld c, e                                       ; $609c: $4b
    ld c, h                                       ; $609d: $4c
    ld c, l                                       ; $609e: $4d
    ld e, d                                       ; $609f: $5a
    cp a                                          ; $60a0: $bf
    ret nz                                        ; $60a1: $c0

    pop bc                                        ; $60a2: $c1
    push bc                                       ; $60a3: $c5
    pop de                                        ; $60a4: $d1
    jp nz, $c9d1                                  ; $60a5: $c2 $d1 $c9

    pop de                                        ; $60a8: $d1
    pop de                                        ; $60a9: $d1
    pop de                                        ; $60aa: $d1
    pop de                                        ; $60ab: $d1
    add e                                         ; $60ac: $83
    add [hl]                                      ; $60ad: $86
    add e                                         ; $60ae: $83
    add e                                         ; $60af: $83
    adc [hl]                                      ; $60b0: $8e
    adc e                                         ; $60b1: $8b
    adc e                                         ; $60b2: $8b
    adc e                                         ; $60b3: $8b
    add e                                         ; $60b4: $83
    adc e                                         ; $60b5: $8b
    add e                                         ; $60b6: $83
    adc e                                         ; $60b7: $8b
    inc bc                                        ; $60b8: $03
    inc bc                                        ; $60b9: $03
    inc bc                                        ; $60ba: $03
    inc bc                                        ; $60bb: $03
    ld e, e                                       ; $60bc: $5b
    ld e, h                                       ; $60bd: $5c
    ld e, l                                       ; $60be: $5d
    ld h, a                                       ; $60bf: $67
    add $c7                                       ; $60c0: $c6 $c7
    ret z                                         ; $60c2: $c8

    ret nc                                        ; $60c3: $d0

    jp z, $d1cb                                   ; $60c4: $ca $cb $d1

    pop de                                        ; $60c7: $d1
    pop de                                        ; $60c8: $d1
    pop de                                        ; $60c9: $d1
    pop de                                        ; $60ca: $d1
    pop de                                        ; $60cb: $d1
    add e                                         ; $60cc: $83
    add [hl]                                      ; $60cd: $86
    add [hl]                                      ; $60ce: $86
    add e                                         ; $60cf: $83
    adc e                                         ; $60d0: $8b
    adc [hl]                                      ; $60d1: $8e
    adc e                                         ; $60d2: $8b
    adc e                                         ; $60d3: $8b
    adc e                                         ; $60d4: $8b
    adc e                                         ; $60d5: $8b
    add e                                         ; $60d6: $83
    add e                                         ; $60d7: $83
    inc bc                                        ; $60d8: $03
    inc bc                                        ; $60d9: $03
    inc bc                                        ; $60da: $03
    inc bc                                        ; $60db: $03
    ld l, b                                       ; $60dc: $68
    ld c, e                                       ; $60dd: $4b
    ld c, h                                       ; $60de: $4c
    ld c, l                                       ; $60df: $4d
    pop de                                        ; $60e0: $d1
    cp a                                          ; $60e1: $bf
    ret nz                                        ; $60e2: $c0

    pop bc                                        ; $60e3: $c1
    pop de                                        ; $60e4: $d1
    pop de                                        ; $60e5: $d1
    jp nz, $d1d1                                  ; $60e6: $c2 $d1 $d1

    pop de                                        ; $60e9: $d1
    pop de                                        ; $60ea: $d1
    pop de                                        ; $60eb: $d1
    add [hl]                                      ; $60ec: $86
    add [hl]                                      ; $60ed: $86
    add [hl]                                      ; $60ee: $86
    add e                                         ; $60ef: $83
    adc e                                         ; $60f0: $8b
    adc e                                         ; $60f1: $8b
    adc e                                         ; $60f2: $8b
    adc e                                         ; $60f3: $8b
    add e                                         ; $60f4: $83
    add e                                         ; $60f5: $83
    adc e                                         ; $60f6: $8b
    add e                                         ; $60f7: $83
    inc bc                                        ; $60f8: $03
    inc bc                                        ; $60f9: $03
    inc bc                                        ; $60fa: $03
    inc bc                                        ; $60fb: $03
    ld [hl], e                                    ; $60fc: $73
    ld [hl], h                                    ; $60fd: $74
    ld [hl], l                                    ; $60fe: $75
    halt                                          ; $60ff: $76
    adc c                                         ; $6100: $89
    adc d                                         ; $6101: $8a
    adc e                                         ; $6102: $8b
    adc h                                         ; $6103: $8c
    sub c                                         ; $6104: $91
    sub d                                         ; $6105: $92
    sub e                                         ; $6106: $93
    sub h                                         ; $6107: $94
    sub l                                         ; $6108: $95
    sub [hl]                                      ; $6109: $96
    sub a                                         ; $610a: $97
    sbc b                                         ; $610b: $98
    ld bc, $0101                                  ; $610c: $01 $01 $01
    ld bc, $0909                                  ; $610f: $01 $09 $09
    add hl, bc                                    ; $6112: $09
    add hl, bc                                    ; $6113: $09
    add hl, bc                                    ; $6114: $09
    add hl, bc                                    ; $6115: $09
    add hl, bc                                    ; $6116: $09
    add hl, bc                                    ; $6117: $09
    add hl, bc                                    ; $6118: $09
    add hl, bc                                    ; $6119: $09
    add hl, bc                                    ; $611a: $09
    add hl, bc                                    ; $611b: $09
    add e                                         ; $611c: $83
    add h                                         ; $611d: $84
    add l                                         ; $611e: $85
    add d                                         ; $611f: $82
    sbc c                                         ; $6120: $99
    sbc d                                         ; $6121: $9a
    sbc e                                         ; $6122: $9b
    add d                                         ; $6123: $82
    and b                                         ; $6124: $a0
    and c                                         ; $6125: $a1
    and d                                         ; $6126: $a2
    and e                                         ; $6127: $a3
    and h                                         ; $6128: $a4
    and l                                         ; $6129: $a5
    and [hl]                                      ; $612a: $a6
    and a                                         ; $612b: $a7
    add hl, bc                                    ; $612c: $09
    add hl, bc                                    ; $612d: $09
    add hl, bc                                    ; $612e: $09
    add hl, bc                                    ; $612f: $09
    add hl, bc                                    ; $6130: $09
    add hl, bc                                    ; $6131: $09
    add hl, bc                                    ; $6132: $09
    ld c, c                                       ; $6133: $49
    add hl, bc                                    ; $6134: $09
    add hl, bc                                    ; $6135: $09
    add hl, bc                                    ; $6136: $09
    add hl, bc                                    ; $6137: $09
    add hl, bc                                    ; $6138: $09
    add hl, bc                                    ; $6139: $09
    add hl, bc                                    ; $613a: $09
    add hl, bc                                    ; $613b: $09
    inc d                                         ; $613c: $14
    push af                                       ; $613d: $f5
    or $73                                        ; $613e: $f6 $73
    dec d                                         ; $6140: $15
    ld [de], a                                    ; $6141: $12
    inc de                                        ; $6142: $13
    adc c                                         ; $6143: $89
    inc e                                         ; $6144: $1c
    add hl, de                                    ; $6145: $19
    ld a, [de]                                    ; $6146: $1a
    sub c                                         ; $6147: $91
    dec de                                        ; $6148: $1b
    inc e                                         ; $6149: $1c
    dec e                                         ; $614a: $1d
    sub l                                         ; $614b: $95
    add hl, bc                                    ; $614c: $09
    ld bc, $0101                                  ; $614d: $01 $01 $01
    add hl, bc                                    ; $6150: $09
    ld bc, $0901                                  ; $6151: $01 $01 $09
    add hl, bc                                    ; $6154: $09
    ld bc, $0901                                  ; $6155: $01 $01 $09
    ld bc, $0101                                  ; $6158: $01 $01 $01
    add hl, bc                                    ; $615b: $09
    ld [hl], h                                    ; $615c: $74
    ld [hl], l                                    ; $615d: $75
    halt                                          ; $615e: $76
    add e                                         ; $615f: $83
    adc d                                         ; $6160: $8a
    adc e                                         ; $6161: $8b
    adc h                                         ; $6162: $8c
    sbc c                                         ; $6163: $99
    sub d                                         ; $6164: $92
    sub e                                         ; $6165: $93
    sub h                                         ; $6166: $94
    and b                                         ; $6167: $a0
    sub [hl]                                      ; $6168: $96
    sub a                                         ; $6169: $97
    sbc b                                         ; $616a: $98
    and h                                         ; $616b: $a4
    ld bc, $0101                                  ; $616c: $01 $01 $01
    add hl, bc                                    ; $616f: $09
    add hl, bc                                    ; $6170: $09
    add hl, bc                                    ; $6171: $09
    add hl, bc                                    ; $6172: $09
    add hl, bc                                    ; $6173: $09
    add hl, bc                                    ; $6174: $09
    add hl, bc                                    ; $6175: $09
    add hl, bc                                    ; $6176: $09
    add hl, bc                                    ; $6177: $09
    add hl, bc                                    ; $6178: $09
    add hl, bc                                    ; $6179: $09
    add hl, bc                                    ; $617a: $09
    add hl, bc                                    ; $617b: $09
    add hl, sp                                    ; $617c: $39
    xor b                                         ; $617d: $a8
    xor c                                         ; $617e: $a9
    xor d                                         ; $617f: $aa
    push de                                       ; $6180: $d5
    ld a, [bc]                                    ; $6181: $0a
    nop                                           ; $6182: $00
    push de                                       ; $6183: $d5
    ld a, [hl+]                                   ; $6184: $2a
    dec hl                                        ; $6185: $2b
    inc l                                         ; $6186: $2c
    dec l                                         ; $6187: $2d
    ld l, $2f                                     ; $6188: $2e $2f
    jr nc, jr_07d_61bd                            ; $618a: $30 $31

    ld [bc], a                                    ; $618c: $02
    ld a, [bc]                                    ; $618d: $0a
    ld a, [bc]                                    ; $618e: $0a
    ld a, [bc]                                    ; $618f: $0a
    ld [bc], a                                    ; $6190: $02
    ld [bc], a                                    ; $6191: $02
    dec b                                         ; $6192: $05
    dec b                                         ; $6193: $05
    add e                                         ; $6194: $83
    add e                                         ; $6195: $83
    add e                                         ; $6196: $83
    add e                                         ; $6197: $83
    add e                                         ; $6198: $83
    add e                                         ; $6199: $83
    add e                                         ; $619a: $83
    add e                                         ; $619b: $83
    xor e                                         ; $619c: $ab
    or d                                          ; $619d: $b2
    ld c, d                                       ; $619e: $4a
    ld c, c                                       ; $619f: $49
    pop hl                                        ; $61a0: $e1
    dec bc                                        ; $61a1: $0b
    ld [$3abd], sp                                ; $61a2: $08 $bd $3a
    dec sp                                        ; $61a5: $3b
    inc a                                         ; $61a6: $3c
    xor h                                         ; $61a7: $ac
    dec a                                         ; $61a8: $3d
    ld a, $0a                                     ; $61a9: $3e $0a
    daa                                           ; $61ab: $27
    ld a, [bc]                                    ; $61ac: $0a
    ld a, [bc]                                    ; $61ad: $0a
    ld a, [bc]                                    ; $61ae: $0a
    ld a, [bc]                                    ; $61af: $0a
    dec b                                         ; $61b0: $05
    dec b                                         ; $61b1: $05
    ld a, [bc]                                    ; $61b2: $0a
    ld a, [bc]                                    ; $61b3: $0a
    add e                                         ; $61b4: $83
    add e                                         ; $61b5: $83
    add e                                         ; $61b6: $83
    adc e                                         ; $61b7: $8b
    add [hl]                                      ; $61b8: $86
    add e                                         ; $61b9: $83
    ld a, [bc]                                    ; $61ba: $0a
    ld [bc], a                                    ; $61bb: $02
    add hl, hl                                    ; $61bc: $29

jr_07d_61bd:
    ld [hl], $37                                  ; $61bd: $36 $37
    jr c, jr_07d_61c1                             ; $61bf: $38 $00

jr_07d_61c1:
    ld bc, $0be1                                  ; $61c1: $01 $e1 $0b
    xor l                                         ; $61c4: $ad
    db $f4                                        ; $61c5: $f4
    ccf                                           ; $61c6: $3f
    ret c                                         ; $61c7: $d8

    call c, $e4dd                                 ; $61c8: $dc $dd $e4
    ld e, $02                                     ; $61cb: $1e $02
    ld [bc], a                                    ; $61cd: $02
    ld [bc], a                                    ; $61ce: $02
    ld [bc], a                                    ; $61cf: $02
    ld [bc], a                                    ; $61d0: $02
    ld [bc], a                                    ; $61d1: $02
    ld [bc], a                                    ; $61d2: $02
    ld [bc], a                                    ; $61d3: $02
    adc e                                         ; $61d4: $8b
    ld a, [bc]                                    ; $61d5: $0a
    ld [bc], a                                    ; $61d6: $02
    ld [bc], a                                    ; $61d7: $02
    dec b                                         ; $61d8: $05
    dec b                                         ; $61d9: $05
    ld [bc], a                                    ; $61da: $02
    adc e                                         ; $61db: $8b
    add hl, sp                                    ; $61dc: $39
    xor b                                         ; $61dd: $a8
    xor c                                         ; $61de: $a9
    xor d                                         ; $61df: $aa
    ld [$00bd], sp                                ; $61e0: $08 $bd $00
    push de                                       ; $61e3: $d5
    db $f4                                        ; $61e4: $f4
    dec e                                         ; $61e5: $1d
    jr nz, jr_07d_6207                            ; $61e6: $20 $1f

    dec e                                         ; $61e8: $1d
    rra                                           ; $61e9: $1f
    ld hl, $0222                                  ; $61ea: $21 $22 $02
    ld a, [bc]                                    ; $61ed: $0a
    ld a, [bc]                                    ; $61ee: $0a
    ld a, [bc]                                    ; $61ef: $0a
    dec c                                         ; $61f0: $0d
    ld a, [bc]                                    ; $61f1: $0a
    dec b                                         ; $61f2: $05
    dec b                                         ; $61f3: $05
    ld a, [bc]                                    ; $61f4: $0a
    adc e                                         ; $61f5: $8b
    adc e                                         ; $61f6: $8b
    add e                                         ; $61f7: $83
    adc e                                         ; $61f8: $8b
    adc e                                         ; $61f9: $8b
    adc e                                         ; $61fa: $8b
    add e                                         ; $61fb: $83
    ld [hl-], a                                   ; $61fc: $32
    inc sp                                        ; $61fd: $33
    inc [hl]                                      ; $61fe: $34
    dec [hl]                                      ; $61ff: $35
    ld c, [hl]                                    ; $6200: $4e
    ld c, a                                       ; $6201: $4f
    ld d, b                                       ; $6202: $50
    ld d, c                                       ; $6203: $51
    ld d, d                                       ; $6204: $52
    ld d, e                                       ; $6205: $53
    ld d, h                                       ; $6206: $54

jr_07d_6207:
    ld d, l                                       ; $6207: $55
    ld d, [hl]                                    ; $6208: $56
    ld d, a                                       ; $6209: $57
    ld e, b                                       ; $620a: $58
    ld e, c                                       ; $620b: $59
    add e                                         ; $620c: $83
    add e                                         ; $620d: $83
    add e                                         ; $620e: $83
    add e                                         ; $620f: $83
    add [hl]                                      ; $6210: $86
    add e                                         ; $6211: $83
    add e                                         ; $6212: $83
    add [hl]                                      ; $6213: $86
    add [hl]                                      ; $6214: $86
    add [hl]                                      ; $6215: $86
    add [hl]                                      ; $6216: $86
    add [hl]                                      ; $6217: $86
    add e                                         ; $6218: $83
    add e                                         ; $6219: $83
    add e                                         ; $621a: $83
    add e                                         ; $621b: $83
    ld b, b                                       ; $621c: $40
    ld b, c                                       ; $621d: $41
    push de                                       ; $621e: $d5
    inc c                                         ; $621f: $0c
    ld e, [hl]                                    ; $6220: $5e
    ld e, a                                       ; $6221: $5f
    ld h, c                                       ; $6222: $61
    or e                                          ; $6223: $b3
    ld h, d                                       ; $6224: $62
    ld h, e                                       ; $6225: $63
    ld a, [bc]                                    ; $6226: $0a
    daa                                           ; $6227: $27
    ld h, h                                       ; $6228: $64
    ld h, l                                       ; $6229: $65
    ld h, [hl]                                    ; $622a: $66
    cp l                                          ; $622b: $bd
    add [hl]                                      ; $622c: $86
    add e                                         ; $622d: $83
    ld [bc], a                                    ; $622e: $02
    ld a, [bc]                                    ; $622f: $0a
    add e                                         ; $6230: $83
    add e                                         ; $6231: $83
    add e                                         ; $6232: $83
    adc e                                         ; $6233: $8b
    add e                                         ; $6234: $83
    add e                                         ; $6235: $83
    ld a, [bc]                                    ; $6236: $0a
    ld [bc], a                                    ; $6237: $02
    add e                                         ; $6238: $83
    add e                                         ; $6239: $83
    add e                                         ; $623a: $83
    ld a, [bc]                                    ; $623b: $0a
    call nc, $e8e0                                ; $623c: $d4 $e0 $e8
    jp hl                                         ; $623f: $e9


    or h                                          ; $6240: $b4
    or l                                          ; $6241: $b5
    or [hl]                                       ; $6242: $b6
    ret c                                         ; $6243: $d8

    db $fc                                        ; $6244: $fc
    db $fd                                        ; $6245: $fd
    rlca                                          ; $6246: $07
    cp b                                          ; $6247: $b8
    nop                                           ; $6248: $00
    ld bc, $0be1                                  ; $6249: $01 $e1 $0b
    ld [bc], a                                    ; $624c: $02
    dec b                                         ; $624d: $05
    dec b                                         ; $624e: $05
    dec b                                         ; $624f: $05
    adc e                                         ; $6250: $8b
    adc e                                         ; $6251: $8b
    adc e                                         ; $6252: $8b
    ld [bc], a                                    ; $6253: $02
    ld [bc], a                                    ; $6254: $02
    ld [bc], a                                    ; $6255: $02
    ld [bc], a                                    ; $6256: $02
    ld a, [bc]                                    ; $6257: $0a
    ld [bc], a                                    ; $6258: $02
    ld [bc], a                                    ; $6259: $02
    ld [bc], a                                    ; $625a: $02
    ld [bc], a                                    ; $625b: $02
    dec bc                                        ; $625c: $0b
    ld a, [bc]                                    ; $625d: $0a
    ld [hl+], a                                   ; $625e: $22
    dec h                                         ; $625f: $25
    ld h, $27                                     ; $6260: $26 $27
    ld b, d                                       ; $6262: $42
    ld b, e                                       ; $6263: $43
    ld a, [bc]                                    ; $6264: $0a
    jr z, @+$47                                   ; $6265: $28 $45

    ld b, [hl]                                    ; $6267: $46
    ld [$4829], sp                                ; $6268: $08 $29 $48
    ld c, c                                       ; $626b: $49
    dec c                                         ; $626c: $0d
    ld [bc], a                                    ; $626d: $02
    adc e                                         ; $626e: $8b
    add e                                         ; $626f: $83
    adc e                                         ; $6270: $8b
    adc e                                         ; $6271: $8b
    add e                                         ; $6272: $83
    add e                                         ; $6273: $83
    ld a, [bc]                                    ; $6274: $0a
    adc e                                         ; $6275: $8b
    add e                                         ; $6276: $83
    add e                                         ; $6277: $83
    ld a, [bc]                                    ; $6278: $0a
    adc e                                         ; $6279: $8b
    add e                                         ; $627a: $83
    add e                                         ; $627b: $83
    ld e, d                                       ; $627c: $5a
    ld e, e                                       ; $627d: $5b
    ld e, h                                       ; $627e: $5c
    ld e, l                                       ; $627f: $5d
    push bc                                       ; $6280: $c5
    add $c7                                       ; $6281: $c6 $c7
    ret z                                         ; $6283: $c8

    ret                                           ; $6284: $c9


    jp z, $d1cb                                   ; $6285: $ca $cb $d1

    pop de                                        ; $6288: $d1
    pop de                                        ; $6289: $d1
    pop de                                        ; $628a: $d1
    pop de                                        ; $628b: $d1
    add e                                         ; $628c: $83
    add e                                         ; $628d: $83
    add e                                         ; $628e: $83
    add e                                         ; $628f: $83
    adc e                                         ; $6290: $8b
    adc e                                         ; $6291: $8b
    adc e                                         ; $6292: $8b
    adc e                                         ; $6293: $8b
    adc e                                         ; $6294: $8b
    adc e                                         ; $6295: $8b
    adc e                                         ; $6296: $8b
    add e                                         ; $6297: $83
    inc bc                                        ; $6298: $03
    inc bc                                        ; $6299: $03
    inc bc                                        ; $629a: $03
    inc bc                                        ; $629b: $03
    ld h, a                                       ; $629c: $67
    ld l, b                                       ; $629d: $68
    ld l, c                                       ; $629e: $69
    ld l, d                                       ; $629f: $6a
    ret nc                                        ; $62a0: $d0

    pop de                                        ; $62a1: $d1
    sbc $df                                       ; $62a2: $de $df
    pop de                                        ; $62a4: $d1
    pop de                                        ; $62a5: $d1
    rst $20                                       ; $62a6: $e7
    and $d1                                       ; $62a7: $e6 $d1
    pop de                                        ; $62a9: $d1
    db $eb                                        ; $62aa: $eb
    ld [$8383], a                                 ; $62ab: $ea $83 $83
    add [hl]                                      ; $62ae: $86
    add e                                         ; $62af: $83
    adc e                                         ; $62b0: $8b
    adc e                                         ; $62b1: $8b
    and [hl]                                      ; $62b2: $a6
    and [hl]                                      ; $62b3: $a6
    add e                                         ; $62b4: $83
    add e                                         ; $62b5: $83
    and e                                         ; $62b6: $a3
    and [hl]                                      ; $62b7: $a6
    inc bc                                        ; $62b8: $03
    add e                                         ; $62b9: $83
    and [hl]                                      ; $62ba: $a6
    and [hl]                                      ; $62bb: $a6
    cp e                                          ; $62bc: $bb
    cp h                                          ; $62bd: $bc
    ccf                                           ; $62be: $3f
    ret c                                         ; $62bf: $d8

    push hl                                       ; $62c0: $e5
    ld a, [bc]                                    ; $62c1: $0a
    db $e4                                        ; $62c2: $e4
    add hl, bc                                    ; $62c3: $09
    call nc, $e8e0                                ; $62c4: $d4 $e0 $e8
    jp hl                                         ; $62c7: $e9


    ld a, [$3ffb]                                 ; $62c8: $fa $fb $3f
    ld b, $8b                                     ; $62cb: $06 $8b
    adc e                                         ; $62cd: $8b
    ld [bc], a                                    ; $62ce: $02
    ld [bc], a                                    ; $62cf: $02
    ld [bc], a                                    ; $62d0: $02
    ld a, [bc]                                    ; $62d1: $0a
    dec b                                         ; $62d2: $05
    ld a, [bc]                                    ; $62d3: $0a
    ld [bc], a                                    ; $62d4: $02
    dec b                                         ; $62d5: $05
    dec b                                         ; $62d6: $05
    ld [bc], a                                    ; $62d7: $02
    ld [bc], a                                    ; $62d8: $02
    ld [bc], a                                    ; $62d9: $02
    ld [bc], a                                    ; $62da: $02
    dec b                                         ; $62db: $05
    inc bc                                        ; $62dc: $03
    ld [bc], a                                    ; $62dd: $02
    ld c, e                                       ; $62de: $4b
    ld c, h                                       ; $62df: $4c
    db $d3                                        ; $62e0: $d3
    jp nc, $c0bf                                  ; $62e1: $d2 $bf $c0

    rst $10                                       ; $62e4: $d7
    sub $d1                                       ; $62e5: $d6 $d1
    jp nz, $dadb                                  ; $62e7: $c2 $db $da

    pop de                                        ; $62ea: $d1
    pop de                                        ; $62eb: $d1
    and e                                         ; $62ec: $a3
    and [hl]                                      ; $62ed: $a6
    add e                                         ; $62ee: $83
    add [hl]                                      ; $62ef: $86
    and e                                         ; $62f0: $a3
    and [hl]                                      ; $62f1: $a6
    adc e                                         ; $62f2: $8b
    adc [hl]                                      ; $62f3: $8e
    and e                                         ; $62f4: $a3
    and [hl]                                      ; $62f5: $a6
    add e                                         ; $62f6: $83
    dec bc                                        ; $62f7: $0b
    add e                                         ; $62f8: $83
    add e                                         ; $62f9: $83
    add e                                         ; $62fa: $83
    inc bc                                        ; $62fb: $03
    add h                                         ; $62fc: $84
    add l                                         ; $62fd: $85
    add d                                         ; $62fe: $82
    inc d                                         ; $62ff: $14
    sbc d                                         ; $6300: $9a
    sbc e                                         ; $6301: $9b
    add d                                         ; $6302: $82
    dec d                                         ; $6303: $15
    and c                                         ; $6304: $a1
    and d                                         ; $6305: $a2
    and e                                         ; $6306: $a3
    inc e                                         ; $6307: $1c
    and l                                         ; $6308: $a5
    and [hl]                                      ; $6309: $a6
    and a                                         ; $630a: $a7
    dec de                                        ; $630b: $1b
    add hl, bc                                    ; $630c: $09
    add hl, bc                                    ; $630d: $09
    add hl, bc                                    ; $630e: $09
    add hl, bc                                    ; $630f: $09
    add hl, bc                                    ; $6310: $09
    add hl, bc                                    ; $6311: $09
    ld c, c                                       ; $6312: $49
    add hl, bc                                    ; $6313: $09
    add hl, bc                                    ; $6314: $09
    add hl, bc                                    ; $6315: $09
    add hl, bc                                    ; $6316: $09
    add hl, bc                                    ; $6317: $09
    add hl, bc                                    ; $6318: $09
    add hl, bc                                    ; $6319: $09
    add hl, bc                                    ; $631a: $09
    ld bc, $b2ab                                  ; $631b: $01 $ab $b2
    ld c, d                                       ; $631e: $4a
    ld c, c                                       ; $631f: $49
    pop hl                                        ; $6320: $e1
    dec bc                                        ; $6321: $0b
    push de                                       ; $6322: $d5
    ld a, [bc]                                    ; $6323: $0a
    jr nz, jr_07d_6350                            ; $6324: $20 $2a

    dec hl                                        ; $6326: $2b
    inc l                                         ; $6327: $2c
    inc hl                                        ; $6328: $23
    ld l, $2f                                     ; $6329: $2e $2f
    jr nc, jr_07d_6337                            ; $632b: $30 $0a

    ld a, [bc]                                    ; $632d: $0a
    ld a, [bc]                                    ; $632e: $0a
    ld a, [bc]                                    ; $632f: $0a
    dec b                                         ; $6330: $05
    ld [bc], a                                    ; $6331: $02
    ld [bc], a                                    ; $6332: $02
    ld [bc], a                                    ; $6333: $02
    add [hl]                                      ; $6334: $86
    add e                                         ; $6335: $83
    add e                                         ; $6336: $83

jr_07d_6337:
    add e                                         ; $6337: $83
    add [hl]                                      ; $6338: $86
    add [hl]                                      ; $6339: $86
    add e                                         ; $633a: $83
    add e                                         ; $633b: $83
    ld h, $32                                     ; $633c: $26 $32
    inc sp                                        ; $633e: $33
    inc [hl]                                      ; $633f: $34
    ld b, h                                       ; $6340: $44
    ld c, [hl]                                    ; $6341: $4e
    ld c, a                                       ; $6342: $4f
    ld d, b                                       ; $6343: $50
    ld b, a                                       ; $6344: $47
    ld d, d                                       ; $6345: $52
    ld d, e                                       ; $6346: $53
    ld d, h                                       ; $6347: $54
    ld c, d                                       ; $6348: $4a
    ld d, [hl]                                    ; $6349: $56
    ld d, a                                       ; $634a: $57
    ld e, b                                       ; $634b: $58
    add e                                         ; $634c: $83
    add [hl]                                      ; $634d: $86
    add e                                         ; $634e: $83
    add e                                         ; $634f: $83

jr_07d_6350:
    add e                                         ; $6350: $83
    add [hl]                                      ; $6351: $86
    add e                                         ; $6352: $83
    add e                                         ; $6353: $83
    add e                                         ; $6354: $83
    add [hl]                                      ; $6355: $86
    add e                                         ; $6356: $83
    add e                                         ; $6357: $83
    add [hl]                                      ; $6358: $86
    add e                                         ; $6359: $83
    add e                                         ; $635a: $83
    add [hl]                                      ; $635b: $86
    ld c, l                                       ; $635c: $4d
    ld e, d                                       ; $635d: $5a
    ld e, e                                       ; $635e: $5b
    ld e, h                                       ; $635f: $5c
    pop bc                                        ; $6360: $c1
    push bc                                       ; $6361: $c5
    add $c7                                       ; $6362: $c6 $c7
    pop de                                        ; $6364: $d1
    ret                                           ; $6365: $c9


    jp z, $d1cb                                   ; $6366: $ca $cb $d1

    pop de                                        ; $6369: $d1
    pop de                                        ; $636a: $d1
    pop de                                        ; $636b: $d1
    add e                                         ; $636c: $83
    add [hl]                                      ; $636d: $86
    add [hl]                                      ; $636e: $86
    add [hl]                                      ; $636f: $86
    adc e                                         ; $6370: $8b
    adc e                                         ; $6371: $8b
    adc [hl]                                      ; $6372: $8e
    adc e                                         ; $6373: $8b
    ld b, $0e                                     ; $6374: $06 $0e
    dec bc                                        ; $6376: $0b
    dec bc                                        ; $6377: $0b
    ld b, $06                                     ; $6378: $06 $06
    inc bc                                        ; $637a: $03
    inc bc                                        ; $637b: $03
    pop de                                        ; $637c: $d1
    pop de                                        ; $637d: $d1
    cp $ff                                        ; $637e: $fe $ff
    pop de                                        ; $6380: $d1
    pop de                                        ; $6381: $d1
    rst $20                                       ; $6382: $e7
    ld b, d                                       ; $6383: $42
    pop de                                        ; $6384: $d1
    pop de                                        ; $6385: $d1
    ld b, [hl]                                    ; $6386: $46
    ld b, l                                       ; $6387: $45
    pop de                                        ; $6388: $d1
    pop de                                        ; $6389: $d1
    ld c, b                                       ; $638a: $48
    ld b, a                                       ; $638b: $47
    inc bc                                        ; $638c: $03
    add e                                         ; $638d: $83
    and e                                         ; $638e: $a3
    and [hl]                                      ; $638f: $a6
    inc bc                                        ; $6390: $03
    add e                                         ; $6391: $83
    and e                                         ; $6392: $a3
    xor [hl]                                      ; $6393: $ae

jr_07d_6394:
    inc bc                                        ; $6394: $03
    add e                                         ; $6395: $83
    xor e                                         ; $6396: $ab
    xor [hl]                                      ; $6397: $ae
    inc bc                                        ; $6398: $03
    add e                                         ; $6399: $83
    xor e                                         ; $639a: $ab
    xor [hl]                                      ; $639b: $ae
    push hl                                       ; $639c: $e5
    db $fd                                        ; $639d: $fd
    rlca                                          ; $639e: $07
    cp b                                          ; $639f: $b8
    ld b, c                                       ; $63a0: $41
    ld b, b                                       ; $63a1: $40
    dec sp                                        ; $63a2: $3b
    ld a, [hl-]                                   ; $63a3: $3a
    ld b, h                                       ; $63a4: $44
    ld b, e                                       ; $63a5: $43
    ccf                                           ; $63a6: $3f
    ld a, $d8                                     ; $63a7: $3e $d8
    ld [c], a                                     ; $63a9: $e2
    reti                                          ; $63aa: $d9


    ret c                                         ; $63ab: $d8

    ld [bc], a                                    ; $63ac: $02
    ld [bc], a                                    ; $63ad: $02
    ld [bc], a                                    ; $63ae: $02
    dec c                                         ; $63af: $0d
    xor e                                         ; $63b0: $ab
    xor e                                         ; $63b1: $ab
    xor [hl]                                      ; $63b2: $ae
    xor [hl]                                      ; $63b3: $ae
    xor e                                         ; $63b4: $ab
    xor e                                         ; $63b5: $ab
    xor e                                         ; $63b6: $ab
    xor e                                         ; $63b7: $ab
    ld [hl+], a                                   ; $63b8: $22
    dec h                                         ; $63b9: $25
    dec h                                         ; $63ba: $25
    ld [hl+], a                                   ; $63bb: $22
    rst $18                                       ; $63bc: $df
    sbc $d1                                       ; $63bd: $de $d1
    pop de                                        ; $63bf: $d1
    add hl, sp                                    ; $63c0: $39
    jr c, jr_07d_6394                             ; $63c1: $38 $d1

    pop de                                        ; $63c3: $d1
    dec a                                         ; $63c4: $3d
    inc a                                         ; $63c5: $3c
    pop de                                        ; $63c6: $d1
    pop de                                        ; $63c7: $d1
    ld [$d1eb], a                                 ; $63c8: $ea $eb $d1
    pop de                                        ; $63cb: $d1
    add e                                         ; $63cc: $83
    add e                                         ; $63cd: $83
    add e                                         ; $63ce: $83
    inc bc                                        ; $63cf: $03
    xor [hl]                                      ; $63d0: $ae
    xor e                                         ; $63d1: $ab
    add e                                         ; $63d2: $83
    inc bc                                        ; $63d3: $03
    xor e                                         ; $63d4: $ab
    xor e                                         ; $63d5: $ab
    add e                                         ; $63d6: $83
    inc bc                                        ; $63d7: $03
    add e                                         ; $63d8: $83
    add e                                         ; $63d9: $83
    add [hl]                                      ; $63da: $86
    inc bc                                        ; $63db: $03
    pop de                                        ; $63dc: $d1
    pop de                                        ; $63dd: $d1
    jp c, $d1db                                   ; $63de: $da $db $d1

    pop de                                        ; $63e1: $d1
    sbc $df                                       ; $63e2: $de $df
    pop de                                        ; $63e4: $d1
    pop de                                        ; $63e5: $d1
    rst $20                                       ; $63e6: $e7
    and $d1                                       ; $63e7: $e6 $d1
    pop de                                        ; $63e9: $d1
    db $eb                                        ; $63ea: $eb
    ld [$8303], a                                 ; $63eb: $ea $03 $83
    and [hl]                                      ; $63ee: $a6
    and e                                         ; $63ef: $a3
    inc bc                                        ; $63f0: $03
    add e                                         ; $63f1: $83
    and [hl]                                      ; $63f2: $a6
    and e                                         ; $63f3: $a3
    inc bc                                        ; $63f4: $03
    add e                                         ; $63f5: $83
    and [hl]                                      ; $63f6: $a6
    and e                                         ; $63f7: $a3
    inc bc                                        ; $63f8: $03
    add e                                         ; $63f9: $83
    and e                                         ; $63fa: $a3
    and e                                         ; $63fb: $a3
    call nc, $e8e0                                ; $63fc: $d4 $e0 $e8
    call nc, $fbfa                                ; $63ff: $d4 $fa $fb
    dec b                                         ; $6402: $05
    ret c                                         ; $6403: $d8

    db $fc                                        ; $6404: $fc
    db $fd                                        ; $6405: $fd
    rlca                                          ; $6406: $07
    cp b                                          ; $6407: $b8
    nop                                           ; $6408: $00
    ld bc, $d4e1                                  ; $6409: $01 $e1 $d4
    dec b                                         ; $640c: $05
    dec b                                         ; $640d: $05
    ld [bc], a                                    ; $640e: $02
    ld [bc], a                                    ; $640f: $02
    dec b                                         ; $6410: $05
    dec b                                         ; $6411: $05
    ld [bc], a                                    ; $6412: $02
    dec b                                         ; $6413: $05
    ld [bc], a                                    ; $6414: $02
    dec b                                         ; $6415: $05
    ld [bc], a                                    ; $6416: $02
    ld a, [bc]                                    ; $6417: $0a
    ld [bc], a                                    ; $6418: $02
    ld [bc], a                                    ; $6419: $02
    dec b                                         ; $641a: $05
    dec b                                         ; $641b: $05
    inc bc                                        ; $641c: $03
    ld [bc], a                                    ; $641d: $02
    pop de                                        ; $641e: $d1
    pop de                                        ; $641f: $d1
    db $d3                                        ; $6420: $d3
    jp nc, $d1d1                                  ; $6421: $d2 $d1 $d1

    rst $10                                       ; $6424: $d7
    sub $d1                                       ; $6425: $d6 $d1
    pop de                                        ; $6427: $d1
    db $db                                        ; $6428: $db
    jp c, $d1d1                                   ; $6429: $da $d1 $d1

    and e                                         ; $642c: $a3
    and e                                         ; $642d: $a3
    add [hl]                                      ; $642e: $86
    inc bc                                        ; $642f: $03
    and e                                         ; $6430: $a3
    and [hl]                                      ; $6431: $a6
    add e                                         ; $6432: $83
    inc bc                                        ; $6433: $03
    and e                                         ; $6434: $a3
    and [hl]                                      ; $6435: $a6
    add e                                         ; $6436: $83
    inc bc                                        ; $6437: $03
    add [hl]                                      ; $6438: $86
    add e                                         ; $6439: $83
    add e                                         ; $643a: $83
    inc bc                                        ; $643b: $03
    pop de                                        ; $643c: $d1
    pop de                                        ; $643d: $d1
    cp $ff                                        ; $643e: $fe $ff
    pop de                                        ; $6440: $d1
    pop de                                        ; $6441: $d1
    jr c, jr_07d_647d                             ; $6442: $38 $39

    pop de                                        ; $6444: $d1
    pop de                                        ; $6445: $d1
    inc a                                         ; $6446: $3c
    dec a                                         ; $6447: $3d
    pop de                                        ; $6448: $d1
    pop de                                        ; $6449: $d1
    db $eb                                        ; $644a: $eb
    ld [$8303], a                                 ; $644b: $ea $03 $83
    and e                                         ; $644e: $a3
    and e                                         ; $644f: $a3
    inc bc                                        ; $6450: $03
    add e                                         ; $6451: $83
    adc [hl]                                      ; $6452: $8e
    adc [hl]                                      ; $6453: $8e
    inc bc                                        ; $6454: $03
    add e                                         ; $6455: $83
    adc e                                         ; $6456: $8b
    adc e                                         ; $6457: $8b
    inc bc                                        ; $6458: $03
    add e                                         ; $6459: $83
    and e                                         ; $645a: $a3
    and e                                         ; $645b: $a3
    inc b                                         ; $645c: $04
    db $f4                                        ; $645d: $f4
    ld [c], a                                     ; $645e: $e2
    db $e3                                        ; $645f: $e3
    ld a, [hl-]                                   ; $6460: $3a
    dec sp                                        ; $6461: $3b
    ld b, b                                       ; $6462: $40
    ld b, c                                       ; $6463: $41
    ld a, $3f                                     ; $6464: $3e $3f
    ld b, e                                       ; $6466: $43
    ld b, h                                       ; $6467: $44
    ret c                                         ; $6468: $d8

    reti                                          ; $6469: $d9


    ld [c], a                                     ; $646a: $e2
    ret c                                         ; $646b: $d8

    ld [bc], a                                    ; $646c: $02
    ld a, [bc]                                    ; $646d: $0a
    ld [bc], a                                    ; $646e: $02
    ld [bc], a                                    ; $646f: $02
    adc e                                         ; $6470: $8b
    adc [hl]                                      ; $6471: $8e
    adc [hl]                                      ; $6472: $8e
    adc [hl]                                      ; $6473: $8e
    adc e                                         ; $6474: $8b
    adc e                                         ; $6475: $8b
    adc e                                         ; $6476: $8b
    adc e                                         ; $6477: $8b
    ld [bc], a                                    ; $6478: $02
    dec b                                         ; $6479: $05
    dec b                                         ; $647a: $05
    ld [bc], a                                    ; $647b: $02
    rst $18                                       ; $647c: $df

jr_07d_647d:
    sbc $d1                                       ; $647d: $de $d1
    pop de                                        ; $647f: $d1
    ld b, d                                       ; $6480: $42
    rst $20                                       ; $6481: $e7
    pop de                                        ; $6482: $d1
    pop de                                        ; $6483: $d1
    ld b, l                                       ; $6484: $45
    ld b, [hl]                                    ; $6485: $46
    pop de                                        ; $6486: $d1
    pop de                                        ; $6487: $d1
    ld b, a                                       ; $6488: $47
    ld c, b                                       ; $6489: $48
    pop de                                        ; $648a: $d1
    pop de                                        ; $648b: $d1
    add [hl]                                      ; $648c: $86
    add [hl]                                      ; $648d: $86
    add e                                         ; $648e: $83
    inc bc                                        ; $648f: $03
    adc [hl]                                      ; $6490: $8e
    add [hl]                                      ; $6491: $86
    add e                                         ; $6492: $83
    inc bc                                        ; $6493: $03
    adc e                                         ; $6494: $8b
    adc e                                         ; $6495: $8b
    add e                                         ; $6496: $83
    inc bc                                        ; $6497: $03
    adc e                                         ; $6498: $8b
    adc e                                         ; $6499: $8b
    add e                                         ; $649a: $83
    inc bc                                        ; $649b: $03
    inc c                                         ; $649c: $0c
    nop                                           ; $649d: $00
    inc c                                         ; $649e: $0c
    nop                                           ; $649f: $00
    jr nz, jr_07d_64af                            ; $64a0: $20 $0d

    db $ed                                        ; $64a2: $ed
    xor $ef                                       ; $64a3: $ee $ef
    ldh a, [$f1]                                  ; $64a5: $f0 $f1
    ld a, [c]                                     ; $64a7: $f2
    di                                            ; $64a8: $f3
    db $f4                                        ; $64a9: $f4
    push af                                       ; $64aa: $f5
    push af                                       ; $64ab: $f5
    push af                                       ; $64ac: $f5
    push af                                       ; $64ad: $f5
    push af                                       ; $64ae: $f5

jr_07d_64af:
    push af                                       ; $64af: $f5
    push af                                       ; $64b0: $f5
    push af                                       ; $64b1: $f5
    add d                                         ; $64b2: $82
    add d                                         ; $64b3: $82
    ld [bc], a                                    ; $64b4: $02
    ld [bc], a                                    ; $64b5: $02
    add d                                         ; $64b6: $82
    add d                                         ; $64b7: $82
    ld [bc], a                                    ; $64b8: $02
    ld [bc], a                                    ; $64b9: $02
    add b                                         ; $64ba: $80
    add b                                         ; $64bb: $80
    nop                                           ; $64bc: $00
    nop                                           ; $64bd: $00
    add b                                         ; $64be: $80
    add b                                         ; $64bf: $80
    nop                                           ; $64c0: $00
    nop                                           ; $64c1: $00
    push af                                       ; $64c2: $f5
    push af                                       ; $64c3: $f5
    push af                                       ; $64c4: $f5
    push af                                       ; $64c5: $f5
    push af                                       ; $64c6: $f5
    push af                                       ; $64c7: $f5
    push af                                       ; $64c8: $f5
    push af                                       ; $64c9: $f5
    push af                                       ; $64ca: $f5
    push af                                       ; $64cb: $f5
    push af                                       ; $64cc: $f5
    push af                                       ; $64cd: $f5
    push af                                       ; $64ce: $f5
    push af                                       ; $64cf: $f5
    push af                                       ; $64d0: $f5
    push af                                       ; $64d1: $f5
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
    add b                                         ; $64dc: $80
    add b                                         ; $64dd: $80
    add b                                         ; $64de: $80
    add b                                         ; $64df: $80
    add b                                         ; $64e0: $80
    add b                                         ; $64e1: $80
    push af                                       ; $64e2: $f5
    push af                                       ; $64e3: $f5
    push af                                       ; $64e4: $f5
    push af                                       ; $64e5: $f5
    push af                                       ; $64e6: $f5
    push af                                       ; $64e7: $f5
    push af                                       ; $64e8: $f5
    push af                                       ; $64e9: $f5
    push af                                       ; $64ea: $f5
    push af                                       ; $64eb: $f5
    push af                                       ; $64ec: $f5
    push af                                       ; $64ed: $f5
    push af                                       ; $64ee: $f5
    or $f7                                        ; $64ef: $f6 $f7
    rst $30                                       ; $64f1: $f7
    add b                                         ; $64f2: $80
    add b                                         ; $64f3: $80
    nop                                           ; $64f4: $00
    nop                                           ; $64f5: $00
    add b                                         ; $64f6: $80
    add b                                         ; $64f7: $80
    nop                                           ; $64f8: $00
    nop                                           ; $64f9: $00
    add b                                         ; $64fa: $80
    add b                                         ; $64fb: $80
    nop                                           ; $64fc: $00
    nop                                           ; $64fd: $00
    add b                                         ; $64fe: $80
    add b                                         ; $64ff: $80
    nop                                           ; $6500: $00
    nop                                           ; $6501: $00
    push af                                       ; $6502: $f5
    push af                                       ; $6503: $f5
    push af                                       ; $6504: $f5
    push af                                       ; $6505: $f5
    push af                                       ; $6506: $f5
    push af                                       ; $6507: $f5
    push af                                       ; $6508: $f5
    push af                                       ; $6509: $f5
    push af                                       ; $650a: $f5
    push af                                       ; $650b: $f5
    push af                                       ; $650c: $f5
    push af                                       ; $650d: $f5
    rst $30                                       ; $650e: $f7
    rst $30                                       ; $650f: $f7
    rst $30                                       ; $6510: $f7
    rst $30                                       ; $6511: $f7
    nop                                           ; $6512: $00
    nop                                           ; $6513: $00
    nop                                           ; $6514: $00
    nop                                           ; $6515: $00
    nop                                           ; $6516: $00
    nop                                           ; $6517: $00
    nop                                           ; $6518: $00
    nop                                           ; $6519: $00
    nop                                           ; $651a: $00
    nop                                           ; $651b: $00
    nop                                           ; $651c: $00
    nop                                           ; $651d: $00
    nop                                           ; $651e: $00
    nop                                           ; $651f: $00
    nop                                           ; $6520: $00
    nop                                           ; $6521: $00
    push af                                       ; $6522: $f5
    ld hl, sp-$07                                 ; $6523: $f8 $f9
    ld a, [$f8f5]                                 ; $6525: $fa $f5 $f8
    ei                                            ; $6528: $fb
    db $fc                                        ; $6529: $fc
    push af                                       ; $652a: $f5
    ld hl, sp-$03                                 ; $652b: $f8 $fd
    cp $f5                                        ; $652d: $fe $f5
    ld hl, sp-$01                                 ; $652f: $f8 $ff
    nop                                           ; $6531: $00
    add b                                         ; $6532: $80
    add b                                         ; $6533: $80
    ld bc, $8001                                  ; $6534: $01 $01 $80
    add b                                         ; $6537: $80
    ld bc, $8001                                  ; $6538: $01 $01 $80
    add b                                         ; $653b: $80
    ld bc, $8001                                  ; $653c: $01 $01 $80
    add b                                         ; $653f: $80
    ld bc, $0101                                  ; $6540: $01 $01 $01
    ld [bc], a                                    ; $6543: $02
    inc bc                                        ; $6544: $03
    inc b                                         ; $6545: $04
    dec b                                         ; $6546: $05
    ld b, $07                                     ; $6547: $06 $07
    ld [$0a09], sp                                ; $6549: $08 $09 $0a
    dec bc                                        ; $654c: $0b
    inc c                                         ; $654d: $0c
    dec c                                         ; $654e: $0d
    ld c, $0f                                     ; $654f: $0e $0f
    db $10                                        ; $6551: $10
    ld bc, $0101                                  ; $6552: $01 $01 $01
    ld bc, $0101                                  ; $6555: $01 $01 $01
    ld bc, $0101                                  ; $6558: $01 $01 $01
    ld bc, $0101                                  ; $655b: $01 $01 $01
    ld bc, $0101                                  ; $655e: $01 $01 $01
    ld bc, $0111                                  ; $6561: $01 $11 $01
    ld [de], a                                    ; $6564: $12
    ld [bc], a                                    ; $6565: $02
    inc de                                        ; $6566: $13
    inc d                                         ; $6567: $14
    dec d                                         ; $6568: $15
    ld d, $17                                     ; $6569: $16 $17
    jr @+$1b                                      ; $656b: $18 $19

    ld a, [de]                                    ; $656d: $1a
    dec de                                        ; $656e: $1b
    inc e                                         ; $656f: $1c
    dec e                                         ; $6570: $1d
    ld e, $01                                     ; $6571: $1e $01
    ld bc, $0101                                  ; $6573: $01 $01 $01
    ld bc, $0101                                  ; $6576: $01 $01 $01
    ld bc, $0101                                  ; $6579: $01 $01 $01
    ld bc, $0101                                  ; $657c: $01 $01 $01
    ld bc, $0101                                  ; $657f: $01 $01 $01
    inc bc                                        ; $6582: $03
    ld sp, hl                                     ; $6583: $f9
    rra                                           ; $6584: $1f
    jr nz, @+$23                                  ; $6585: $20 $21

    ei                                            ; $6587: $fb
    ld [hl+], a                                   ; $6588: $22
    inc hl                                        ; $6589: $23
    inc h                                         ; $658a: $24
    db $fd                                        ; $658b: $fd
    dec h                                         ; $658c: $25
    ld h, $27                                     ; $658d: $26 $27
    rst $38                                       ; $658f: $ff
    jr z, jr_07d_65bb                             ; $6590: $28 $29

    ld bc, $0101                                  ; $6592: $01 $01 $01
    ld bc, $0101                                  ; $6595: $01 $01 $01
    ld bc, $0101                                  ; $6598: $01 $01 $01
    ld bc, $0101                                  ; $659b: $01 $01 $01
    ld bc, $0101                                  ; $659e: $01 $01 $01
    ld bc, $f8f5                                  ; $65a1: $01 $f5 $f8
    ld a, [hl+]                                   ; $65a4: $2a
    dec hl                                        ; $65a5: $2b
    push af                                       ; $65a6: $f5
    ld hl, sp+$2c                                 ; $65a7: $f8 $2c
    dec l                                         ; $65a9: $2d
    push af                                       ; $65aa: $f5
    ld hl, sp+$2e                                 ; $65ab: $f8 $2e
    cpl                                           ; $65ad: $2f
    push af                                       ; $65ae: $f5
    ld hl, sp+$30                                 ; $65af: $f8 $30
    ld sp, $8080                                  ; $65b1: $31 $80 $80
    ld bc, $8001                                  ; $65b4: $01 $01 $80
    add b                                         ; $65b7: $80
    ld b, $06                                     ; $65b8: $06 $06
    add b                                         ; $65ba: $80

jr_07d_65bb:
    add b                                         ; $65bb: $80
    ld b, $02                                     ; $65bc: $06 $02
    add b                                         ; $65be: $80
    add b                                         ; $65bf: $80
    ld b, $02                                     ; $65c0: $06 $02
    ld [hl-], a                                   ; $65c2: $32
    inc sp                                        ; $65c3: $33
    inc [hl]                                      ; $65c4: $34
    ld a, [hl+]                                   ; $65c5: $2a
    dec [hl]                                      ; $65c6: $35
    ld [hl], $37                                  ; $65c7: $36 $37
    jr c, jr_07d_6604                             ; $65c9: $38 $39

    ld a, [hl-]                                   ; $65cb: $3a
    dec sp                                        ; $65cc: $3b
    inc a                                         ; $65cd: $3c
    dec a                                         ; $65ce: $3d
    ld a, $ed                                     ; $65cf: $3e $ed
    ccf                                           ; $65d1: $3f
    ld bc, $0101                                  ; $65d2: $01 $01 $01
    ld bc, $0606                                  ; $65d5: $01 $06 $06
    ld b, $06                                     ; $65d8: $06 $06
    ld [bc], a                                    ; $65da: $02
    ld [bc], a                                    ; $65db: $02
    ld [bc], a                                    ; $65dc: $02
    inc b                                         ; $65dd: $04
    ld [bc], a                                    ; $65de: $02
    ld [bc], a                                    ; $65df: $02
    inc b                                         ; $65e0: $04
    ld [bc], a                                    ; $65e1: $02
    dec hl                                        ; $65e2: $2b
    ld [hl-], a                                   ; $65e3: $32
    ld b, b                                       ; $65e4: $40
    inc sp                                        ; $65e5: $33
    ld b, c                                       ; $65e6: $41
    ld b, d                                       ; $65e7: $42
    ld b, e                                       ; $65e8: $43
    ld b, h                                       ; $65e9: $44
    ld b, l                                       ; $65ea: $45
    ld b, [hl]                                    ; $65eb: $46
    ld b, a                                       ; $65ec: $47
    ld c, b                                       ; $65ed: $48
    ld c, c                                       ; $65ee: $49
    ld c, d                                       ; $65ef: $4a
    ld c, e                                       ; $65f0: $4b
    ld c, h                                       ; $65f1: $4c
    ld bc, $0101                                  ; $65f2: $01 $01 $01
    ld bc, $0606                                  ; $65f5: $01 $06 $06
    ld b, $06                                     ; $65f8: $06 $06
    inc b                                         ; $65fa: $04
    inc b                                         ; $65fb: $04
    inc b                                         ; $65fc: $04
    inc b                                         ; $65fd: $04
    ld [bc], a                                    ; $65fe: $02
    ld [bc], a                                    ; $65ff: $02
    ld [bc], a                                    ; $6600: $02
    ld [bc], a                                    ; $6601: $02
    ld c, l                                       ; $6602: $4d
    ld a, [hl+]                                   ; $6603: $2a

jr_07d_6604:
    dec hl                                        ; $6604: $2b
    ld [hl-], a                                   ; $6605: $32
    ld c, [hl]                                    ; $6606: $4e
    ld c, a                                       ; $6607: $4f
    ld d, b                                       ; $6608: $50
    ld d, c                                       ; $6609: $51
    ld d, d                                       ; $660a: $52
    ld d, e                                       ; $660b: $53
    ld d, h                                       ; $660c: $54
    ld d, l                                       ; $660d: $55
    ld d, [hl]                                    ; $660e: $56
    ld d, a                                       ; $660f: $57
    ld e, b                                       ; $6610: $58
    ld e, c                                       ; $6611: $59
    ld bc, $0101                                  ; $6612: $01 $01 $01
    ld bc, $0606                                  ; $6615: $01 $06 $06
    ld b, $06                                     ; $6618: $06 $06
    ld [bc], a                                    ; $661a: $02
    ld [bc], a                                    ; $661b: $02
    ld [bc], a                                    ; $661c: $02
    ld [bc], a                                    ; $661d: $02
    ld [bc], a                                    ; $661e: $02
    ld [bc], a                                    ; $661f: $02
    ld [bc], a                                    ; $6620: $02
    ld [bc], a                                    ; $6621: $02
    ld e, d                                       ; $6622: $5a
    ld [bc], a                                    ; $6623: $02
    inc bc                                        ; $6624: $03
    ld sp, hl                                     ; $6625: $f9
    ld e, e                                       ; $6626: $5b
    ld e, h                                       ; $6627: $5c
    ld e, l                                       ; $6628: $5d
    ei                                            ; $6629: $fb
    ld e, [hl]                                    ; $662a: $5e
    ld e, a                                       ; $662b: $5f
    ld h, b                                       ; $662c: $60
    ld h, c                                       ; $662d: $61
    ld h, d                                       ; $662e: $62
    ld h, e                                       ; $662f: $63
    ld h, h                                       ; $6630: $64
    ld h, l                                       ; $6631: $65
    ld bc, $0101                                  ; $6632: $01 $01 $01
    ld bc, $0101                                  ; $6635: $01 $01 $01
    ld bc, $0101                                  ; $6638: $01 $01 $01
    ld bc, $0101                                  ; $663b: $01 $01 $01
    ld bc, $0101                                  ; $663e: $01 $01 $01
    ld bc, $01fa                                  ; $6641: $01 $fa $01
    ld [de], a                                    ; $6644: $12
    ld h, [hl]                                    ; $6645: $66
    db $fc                                        ; $6646: $fc
    dec b                                         ; $6647: $05
    dec d                                         ; $6648: $15
    ld d, $fe                                     ; $6649: $16 $fe
    ld h, a                                       ; $664b: $67
    add hl, de                                    ; $664c: $19
    ld a, [de]                                    ; $664d: $1a
    nop                                           ; $664e: $00
    ld l, b                                       ; $664f: $68
    ld l, c                                       ; $6650: $69
    ld l, d                                       ; $6651: $6a
    ld bc, $0101                                  ; $6652: $01 $01 $01
    ld bc, $0101                                  ; $6655: $01 $01 $01
    ld bc, $0101                                  ; $6658: $01 $01 $01
    ld bc, $0101                                  ; $665b: $01 $01 $01
    ld bc, $0101                                  ; $665e: $01 $01 $01
    ld bc, $f96b                                  ; $6661: $01 $6b $f9
    ld a, [$6c01]                                 ; $6664: $fa $01 $6c
    ld l, l                                       ; $6667: $6d
    db $fc                                        ; $6668: $fc
    dec b                                         ; $6669: $05
    ld l, [hl]                                    ; $666a: $6e
    ld l, a                                       ; $666b: $6f
    cp $09                                        ; $666c: $fe $09
    ld [hl], b                                    ; $666e: $70
    rst $38                                       ; $666f: $ff
    ld [hl], c                                    ; $6670: $71
    dec c                                         ; $6671: $0d
    ld bc, $0101                                  ; $6672: $01 $01 $01
    ld bc, $0101                                  ; $6675: $01 $01 $01
    ld bc, $0101                                  ; $6678: $01 $01 $01
    ld bc, $0101                                  ; $667b: $01 $01 $01
    ld bc, $0101                                  ; $667e: $01 $01 $01
    ld bc, $0212                                  ; $6681: $01 $12 $02
    inc bc                                        ; $6684: $03
    ld [hl], d                                    ; $6685: $72
    dec d                                         ; $6686: $15
    ld d, $21                                     ; $6687: $16 $21
    ei                                            ; $6689: $fb
    add hl, de                                    ; $668a: $19
    ld a, [de]                                    ; $668b: $1a
    inc h                                         ; $668c: $24
    db $fd                                        ; $668d: $fd
    dec e                                         ; $668e: $1d
    ld e, $27                                     ; $668f: $1e $27
    rst $38                                       ; $6691: $ff
    ld bc, $0101                                  ; $6692: $01 $01 $01
    ld bc, $0101                                  ; $6695: $01 $01 $01
    ld bc, $0101                                  ; $6698: $01 $01 $01
    ld bc, $0101                                  ; $669b: $01 $01 $01
    ld bc, $0101                                  ; $669e: $01 $01 $01
    ld bc, $7340                                  ; $66a1: $01 $40 $73
    ld [hl], h                                    ; $66a4: $74
    ld [hl], l                                    ; $66a5: $75
    halt                                          ; $66a6: $76
    ld [hl], a                                    ; $66a7: $77
    ld a, b                                       ; $66a8: $78
    ld a, c                                       ; $66a9: $79
    ld a, d                                       ; $66aa: $7a
    ld a, e                                       ; $66ab: $7b
    ld a, h                                       ; $66ac: $7c
    ld a, l                                       ; $66ad: $7d
    ld a, [hl]                                    ; $66ae: $7e
    ld a, a                                       ; $66af: $7f
    add b                                         ; $66b0: $80
    add c                                         ; $66b1: $81
    ld bc, $0101                                  ; $66b2: $01 $01 $01
    ld bc, $0606                                  ; $66b5: $01 $06 $06
    ld b, $06                                     ; $66b8: $06 $06
    ld [bc], a                                    ; $66ba: $02
    ld [bc], a                                    ; $66bb: $02
    ld [bc], a                                    ; $66bc: $02
    ld [bc], a                                    ; $66bd: $02
    inc b                                         ; $66be: $04
    ld [bc], a                                    ; $66bf: $02
    inc c                                         ; $66c0: $0c
    inc c                                         ; $66c1: $0c
    add d                                         ; $66c2: $82
    add e                                         ; $66c3: $83
    add h                                         ; $66c4: $84
    add l                                         ; $66c5: $85
    add [hl]                                      ; $66c6: $86
    add a                                         ; $66c7: $87
    adc b                                         ; $66c8: $88
    adc c                                         ; $66c9: $89
    adc d                                         ; $66ca: $8a
    adc e                                         ; $66cb: $8b
    pop af                                        ; $66cc: $f1
    adc h                                         ; $66cd: $8c
    adc l                                         ; $66ce: $8d
    adc [hl]                                      ; $66cf: $8e
    adc a                                         ; $66d0: $8f
    sub b                                         ; $66d1: $90
    add hl, bc                                    ; $66d2: $09
    add hl, bc                                    ; $66d3: $09
    add hl, bc                                    ; $66d4: $09
    add hl, bc                                    ; $66d5: $09
    ld c, $0e                                     ; $66d6: $0e $0e
    ld c, $0e                                     ; $66d8: $0e $0e
    ld a, [bc]                                    ; $66da: $0a
    ld a, [bc]                                    ; $66db: $0a
    ld [bc], a                                    ; $66dc: $02
    ld a, [bc]                                    ; $66dd: $0a
    inc c                                         ; $66de: $0c
    ld a, [bc]                                    ; $66df: $0a
    ld a, [bc]                                    ; $66e0: $0a
    ld a, [bc]                                    ; $66e1: $0a
    sub c                                         ; $66e2: $91
    sub d                                         ; $66e3: $92
    sub e                                         ; $66e4: $93
    ld [hl-], a                                   ; $66e5: $32
    sub h                                         ; $66e6: $94
    sub l                                         ; $66e7: $95
    sub [hl]                                      ; $66e8: $96
    dec [hl]                                      ; $66e9: $35
    sub a                                         ; $66ea: $97
    ld l, $2f                                     ; $66eb: $2e $2f
    add hl, sp                                    ; $66ed: $39
    sbc b                                         ; $66ee: $98
    jr nc, jr_07d_6722                            ; $66ef: $30 $31

    dec a                                         ; $66f1: $3d
    add hl, bc                                    ; $66f2: $09
    add hl, bc                                    ; $66f3: $09
    add hl, bc                                    ; $66f4: $09
    ld bc, $0e0e                                  ; $66f5: $01 $0e $0e
    ld c, $06                                     ; $66f8: $0e $06
    ld a, [bc]                                    ; $66fa: $0a
    ld [bc], a                                    ; $66fb: $02
    ld [bc], a                                    ; $66fc: $02
    ld [bc], a                                    ; $66fd: $02
    ld a, [bc]                                    ; $66fe: $0a
    ld [bc], a                                    ; $66ff: $02
    ld [bc], a                                    ; $6700: $02
    ld [bc], a                                    ; $6701: $02
    ld b, b                                       ; $6702: $40
    inc sp                                        ; $6703: $33
    ld c, l                                       ; $6704: $4d
    ld a, [hl+]                                   ; $6705: $2a
    ld [hl], $37                                  ; $6706: $36 $37
    jr c, jr_07d_674b                             ; $6708: $38 $41

    ld a, [hl-]                                   ; $670a: $3a
    dec sp                                        ; $670b: $3b
    inc a                                         ; $670c: $3c
    ld b, l                                       ; $670d: $45
    ld a, $ed                                     ; $670e: $3e $ed
    ccf                                           ; $6710: $3f
    ld c, c                                       ; $6711: $49
    ld bc, $0101                                  ; $6712: $01 $01 $01
    ld bc, $0606                                  ; $6715: $01 $06 $06
    ld b, $06                                     ; $6718: $06 $06
    ld [bc], a                                    ; $671a: $02
    ld [bc], a                                    ; $671b: $02
    ld [bc], a                                    ; $671c: $02
    ld [bc], a                                    ; $671d: $02
    ld [bc], a                                    ; $671e: $02
    inc b                                         ; $671f: $04
    ld [bc], a                                    ; $6720: $02
    inc b                                         ; $6721: $04

jr_07d_6722:
    push af                                       ; $6722: $f5
    push af                                       ; $6723: $f5
    push af                                       ; $6724: $f5
    push af                                       ; $6725: $f5
    push af                                       ; $6726: $f5
    push af                                       ; $6727: $f5
    push af                                       ; $6728: $f5
    push af                                       ; $6729: $f5
    push af                                       ; $672a: $f5
    push af                                       ; $672b: $f5
    push af                                       ; $672c: $f5
    push af                                       ; $672d: $f5
    sbc c                                         ; $672e: $99
    push af                                       ; $672f: $f5
    push af                                       ; $6730: $f5
    push af                                       ; $6731: $f5
    add b                                         ; $6732: $80
    add b                                         ; $6733: $80
    add b                                         ; $6734: $80
    add b                                         ; $6735: $80
    add b                                         ; $6736: $80
    add b                                         ; $6737: $80
    add b                                         ; $6738: $80
    add b                                         ; $6739: $80
    add b                                         ; $673a: $80
    add b                                         ; $673b: $80
    add b                                         ; $673c: $80
    add b                                         ; $673d: $80
    adc b                                         ; $673e: $88
    add b                                         ; $673f: $80
    add b                                         ; $6740: $80
    add b                                         ; $6741: $80
    sbc d                                         ; $6742: $9a
    sbc e                                         ; $6743: $9b
    sbc h                                         ; $6744: $9c
    ld [bc], a                                    ; $6745: $02
    sbc l                                         ; $6746: $9d
    sbc [hl]                                      ; $6747: $9e
    sbc a                                         ; $6748: $9f
    and b                                         ; $6749: $a0
    and c                                         ; $674a: $a1

jr_07d_674b:
    and d                                         ; $674b: $a2
    and e                                         ; $674c: $a3
    and h                                         ; $674d: $a4
    and l                                         ; $674e: $a5
    and [hl]                                      ; $674f: $a6
    and a                                         ; $6750: $a7
    ld e, $09                                     ; $6751: $1e $09
    add hl, bc                                    ; $6753: $09
    add hl, bc                                    ; $6754: $09
    ld bc, $0909                                  ; $6755: $01 $09 $09
    add hl, bc                                    ; $6758: $09
    add hl, bc                                    ; $6759: $09
    add hl, bc                                    ; $675a: $09
    add hl, bc                                    ; $675b: $09
    add hl, bc                                    ; $675c: $09
    add hl, bc                                    ; $675d: $09
    add hl, bc                                    ; $675e: $09
    add hl, bc                                    ; $675f: $09
    add hl, bc                                    ; $6760: $09
    ld bc, $f903                                  ; $6761: $01 $03 $f9
    ld a, [$a9a8]                                 ; $6764: $fa $a8 $a9
    ei                                            ; $6767: $fb
    db $fc                                        ; $6768: $fc
    xor d                                         ; $6769: $aa
    xor e                                         ; $676a: $ab
    db $fd                                        ; $676b: $fd
    cp $ac                                        ; $676c: $fe $ac
    daa                                           ; $676e: $27
    rst $38                                       ; $676f: $ff
    nop                                           ; $6770: $00
    xor l                                         ; $6771: $ad
    ld bc, $0101                                  ; $6772: $01 $01 $01
    add hl, bc                                    ; $6775: $09
    add hl, bc                                    ; $6776: $09
    ld bc, $0901                                  ; $6777: $01 $01 $09
    add hl, bc                                    ; $677a: $09
    ld bc, $0901                                  ; $677b: $01 $01 $09
    ld bc, $0101                                  ; $677e: $01 $01 $01
    add hl, bc                                    ; $6781: $09
    xor [hl]                                      ; $6782: $ae
    rst $30                                       ; $6783: $f7
    sbc c                                         ; $6784: $99
    push af                                       ; $6785: $f5
    xor a                                         ; $6786: $af
    ld [de], a                                    ; $6787: $12
    ld hl, sp-$0b                                 ; $6788: $f8 $f5
    or b                                          ; $678a: $b0
    dec d                                         ; $678b: $15
    or c                                          ; $678c: $b1
    push af                                       ; $678d: $f5
    or d                                          ; $678e: $b2
    add hl, de                                    ; $678f: $19
    or c                                          ; $6790: $b1
    push af                                       ; $6791: $f5
    adc b                                         ; $6792: $88
    add b                                         ; $6793: $80
    adc b                                         ; $6794: $88
    add b                                         ; $6795: $80
    add hl, bc                                    ; $6796: $09
    ld bc, $8080                                  ; $6797: $01 $80 $80
    add hl, bc                                    ; $679a: $09
    ld bc, $8088                                  ; $679b: $01 $88 $80
    add hl, bc                                    ; $679e: $09
    ld bc, $8088                                  ; $679f: $01 $88 $80
    dec hl                                        ; $67a2: $2b
    or e                                          ; $67a3: $b3
    or h                                          ; $67a4: $b4
    inc sp                                        ; $67a5: $33
    ld b, d                                       ; $67a6: $42
    ld b, e                                       ; $67a7: $43
    ld b, h                                       ; $67a8: $44
    ld c, [hl]                                    ; $67a9: $4e
    ld b, [hl]                                    ; $67aa: $46
    ld b, a                                       ; $67ab: $47
    ld c, b                                       ; $67ac: $48
    ld d, d                                       ; $67ad: $52
    ld c, d                                       ; $67ae: $4a
    ld c, e                                       ; $67af: $4b
    ld c, h                                       ; $67b0: $4c
    ld d, [hl]                                    ; $67b1: $56
    ld bc, $0909                                  ; $67b2: $01 $09 $09
    ld bc, $0606                                  ; $67b5: $01 $06 $06
    ld b, $06                                     ; $67b8: $06 $06
    inc b                                         ; $67ba: $04
    ld [bc], a                                    ; $67bb: $02
    inc b                                         ; $67bc: $04
    inc b                                         ; $67bd: $04
    ld [bc], a                                    ; $67be: $02
    ld [bc], a                                    ; $67bf: $02
    ld [bc], a                                    ; $67c0: $02
    ld [bc], a                                    ; $67c1: $02
    ld c, l                                       ; $67c2: $4d
    ld a, [hl+]                                   ; $67c3: $2a
    dec hl                                        ; $67c4: $2b
    or l                                          ; $67c5: $b5
    or [hl]                                       ; $67c6: $b6
    or a                                          ; $67c7: $b7
    cp b                                          ; $67c8: $b8
    cp c                                          ; $67c9: $b9
    cp d                                          ; $67ca: $ba
    cp e                                          ; $67cb: $bb
    cp h                                          ; $67cc: $bc
    cp l                                          ; $67cd: $bd
    ld d, a                                       ; $67ce: $57
    cp [hl]                                       ; $67cf: $be
    cp a                                          ; $67d0: $bf
    ret nz                                        ; $67d1: $c0

    ld bc, $0101                                  ; $67d2: $01 $01 $01
    add hl, bc                                    ; $67d5: $09
    ld c, $0f                                     ; $67d6: $0e $0f
    rrca                                          ; $67d8: $0f
    rrca                                          ; $67d9: $0f
    inc c                                         ; $67da: $0c
    dec c                                         ; $67db: $0d
    dec c                                         ; $67dc: $0d
    rrca                                          ; $67dd: $0f
    ld [bc], a                                    ; $67de: $02
    dec bc                                        ; $67df: $0b
    dec bc                                        ; $67e0: $0b
    dec c                                         ; $67e1: $0d
    pop bc                                        ; $67e2: $c1
    dec e                                         ; $67e3: $1d
    or c                                          ; $67e4: $b1
    push af                                       ; $67e5: $f5
    jp nz, $b140                                  ; $67e6: $c2 $40 $b1

    push af                                       ; $67e9: $f5
    jp $b1c4                                      ; $67ea: $c3 $c4 $b1


    push bc                                       ; $67ed: $c5
    add $c7                                       ; $67ee: $c6 $c7
    ld hl, sp-$3b                                 ; $67f0: $f8 $c5
    add hl, bc                                    ; $67f2: $09
    ld bc, $8088                                  ; $67f3: $01 $88 $80
    add hl, bc                                    ; $67f6: $09
    ld bc, $8088                                  ; $67f7: $01 $88 $80
    rrca                                          ; $67fa: $0f
    rrca                                          ; $67fb: $0f
    adc b                                         ; $67fc: $88
    adc b                                         ; $67fd: $88
    dec bc                                        ; $67fe: $0b
    rrca                                          ; $67ff: $0f
    add b                                         ; $6800: $80
    adc b                                         ; $6801: $88
    push af                                       ; $6802: $f5
    ld hl, sp-$38                                 ; $6803: $f8 $c8
    ret                                           ; $6805: $c9


    push af                                       ; $6806: $f5
    ld hl, sp-$36                                 ; $6807: $f8 $ca
    set 6, l                                      ; $6809: $cb $f5
    ld hl, sp-$34                                 ; $680b: $f8 $cc
    call $f8f5                                    ; $680d: $cd $f5 $f8
    adc $cf                                       ; $6810: $ce $cf
    add b                                         ; $6812: $80
    add b                                         ; $6813: $80
    ld c, $0a                                     ; $6814: $0e $0a
    add b                                         ; $6816: $80
    add b                                         ; $6817: $80
    ld c, $0c                                     ; $6818: $0e $0c
    add b                                         ; $681a: $80
    add b                                         ; $681b: $80
    ld c, $0c                                     ; $681c: $0e $0c
    add b                                         ; $681e: $80
    add b                                         ; $681f: $80
    ld c, $0a                                     ; $6820: $0e $0a
    ret nc                                        ; $6822: $d0

    pop de                                        ; $6823: $d1
    jp nc, $d4d3                                  ; $6824: $d2 $d3 $d4

    push de                                       ; $6827: $d5
    sub $ef                                       ; $6828: $d6 $ef
    rst $10                                       ; $682a: $d7
    ret c                                         ; $682b: $d8

    reti                                          ; $682c: $d9


    add [hl]                                      ; $682d: $86
    ld a, e                                       ; $682e: $7b
    ld a, h                                       ; $682f: $7c
    ld a, l                                       ; $6830: $7d
    adc d                                         ; $6831: $8a
    ld a, [bc]                                    ; $6832: $0a
    inc c                                         ; $6833: $0c
    ld a, [bc]                                    ; $6834: $0a
    ld a, [bc]                                    ; $6835: $0a
    inc c                                         ; $6836: $0c
    inc c                                         ; $6837: $0c
    ld a, [bc]                                    ; $6838: $0a
    ld [bc], a                                    ; $6839: $02
    ld a, [bc]                                    ; $683a: $0a
    ld a, [bc]                                    ; $683b: $0a
    ld a, [bc]                                    ; $683c: $0a
    ld a, [bc]                                    ; $683d: $0a
    inc b                                         ; $683e: $04
    ld [bc], a                                    ; $683f: $02
    ld [bc], a                                    ; $6840: $02
    ld a, [bc]                                    ; $6841: $0a
    xor $da                                       ; $6842: $ee $da
    db $db                                        ; $6844: $db
    call c, $dedd                                 ; $6845: $dc $dd $de
    ldh a, [$df]                                  ; $6848: $f0 $df
    ldh [$e1], a                                  ; $684a: $e0 $e1
    ld [c], a                                     ; $684c: $e2
    db $e3                                        ; $684d: $e3
    adc e                                         ; $684e: $8b
    pop af                                        ; $684f: $f1
    adc h                                         ; $6850: $8c
    sub a                                         ; $6851: $97
    ld [bc], a                                    ; $6852: $02
    ld a, [bc]                                    ; $6853: $0a
    ld a, [bc]                                    ; $6854: $0a
    ld a, [bc]                                    ; $6855: $0a
    ld a, [bc]                                    ; $6856: $0a
    ld a, [bc]                                    ; $6857: $0a
    inc b                                         ; $6858: $04
    ld a, [bc]                                    ; $6859: $0a
    ld a, [bc]                                    ; $685a: $0a
    inc c                                         ; $685b: $0c
    ld a, [bc]                                    ; $685c: $0a
    inc c                                         ; $685d: $0c
    inc c                                         ; $685e: $0c
    inc b                                         ; $685f: $04
    ld a, [bc]                                    ; $6860: $0a
    ld a, [bc]                                    ; $6861: $0a
    db $e4                                        ; $6862: $e4
    push hl                                       ; $6863: $e5
    and $e7                                       ; $6864: $e6 $e7
    add sp, -$17                                  ; $6866: $e8 $e9
    ld [$2ceb], a                                 ; $6868: $ea $eb $2c
    dec l                                         ; $686b: $2d
    db $ec                                        ; $686c: $ec
    db $ed                                        ; $686d: $ed
    ld l, $2f                                     ; $686e: $2e $2f
    xor $ef                                       ; $6870: $ee $ef
    ld a, [bc]                                    ; $6872: $0a
    inc c                                         ; $6873: $0c
    ld a, [bc]                                    ; $6874: $0a
    inc c                                         ; $6875: $0c
    inc c                                         ; $6876: $0c
    ld a, [bc]                                    ; $6877: $0a
    ld a, [bc]                                    ; $6878: $0a
    ld a, [bc]                                    ; $6879: $0a
    inc b                                         ; $687a: $04
    inc b                                         ; $687b: $04
    ld a, [bc]                                    ; $687c: $0a
    ld a, [bc]                                    ; $687d: $0a
    inc b                                         ; $687e: $04
    ld [bc], a                                    ; $687f: $02
    inc c                                         ; $6880: $0c
    ld a, [bc]                                    ; $6881: $0a
    push af                                       ; $6882: $f5
    ld hl, sp+$59                                 ; $6883: $f8 $59
    ld a, [hl]                                    ; $6885: $7e
    push af                                       ; $6886: $f5
    ld hl, sp-$19                                 ; $6887: $f8 $e7
    ldh a, [$f5]                                  ; $6889: $f0 $f5
    ld hl, sp-$15                                 ; $688b: $f8 $eb
    pop af                                        ; $688d: $f1
    push af                                       ; $688e: $f5
    ld hl, sp-$13                                 ; $688f: $f8 $ed
    ld a, [c]                                     ; $6891: $f2
    add b                                         ; $6892: $80
    add b                                         ; $6893: $80
    ld b, $02                                     ; $6894: $06 $02
    add b                                         ; $6896: $80
    add b                                         ; $6897: $80
    ld c, $0a                                     ; $6898: $0e $0a
    add b                                         ; $689a: $80
    add b                                         ; $689b: $80
    ld c, $0a                                     ; $689c: $0e $0a
    add b                                         ; $689e: $80
    add b                                         ; $689f: $80
    ld c, $0a                                     ; $68a0: $0e $0a
    ld a, a                                       ; $68a2: $7f
    add b                                         ; $68a3: $80
    add c                                         ; $68a4: $81
    adc l                                         ; $68a5: $8d
    di                                            ; $68a6: $f3
    db $f4                                        ; $68a7: $f4
    push af                                       ; $68a8: $f5
    or $f3                                        ; $68a9: $f6 $f3
    rst $30                                       ; $68ab: $f7
    ld hl, sp-$07                                 ; $68ac: $f8 $f9
    ld a, [$fcfb]                                 ; $68ae: $fa $fb $fc
    db $fd                                        ; $68b1: $fd
    ld [bc], a                                    ; $68b2: $02
    inc c                                         ; $68b3: $0c
    ld a, [bc]                                    ; $68b4: $0a
    inc c                                         ; $68b5: $0c
    ld a, [bc]                                    ; $68b6: $0a
    ld a, [bc]                                    ; $68b7: $0a
    inc c                                         ; $68b8: $0c
    ld a, [bc]                                    ; $68b9: $0a
    ld [bc], a                                    ; $68ba: $02
    ld a, [bc]                                    ; $68bb: $0a
    inc c                                         ; $68bc: $0c
    inc c                                         ; $68bd: $0c
    ld a, [bc]                                    ; $68be: $0a
    ld a, [bc]                                    ; $68bf: $0a
    inc c                                         ; $68c0: $0c
    inc c                                         ; $68c1: $0c
    adc [hl]                                      ; $68c2: $8e
    adc a                                         ; $68c3: $8f
    sub b                                         ; $68c4: $90
    sbc b                                         ; $68c5: $98
    cp $ff                                        ; $68c6: $fe $ff
    ld a, [c]                                     ; $68c8: $f2
    nop                                           ; $68c9: $00
    ld bc, $0302                                  ; $68ca: $01 $02 $03
    inc b                                         ; $68cd: $04
    dec b                                         ; $68ce: $05
    ld b, $f4                                     ; $68cf: $06 $f4
    rlca                                          ; $68d1: $07
    ld a, [bc]                                    ; $68d2: $0a
    ld a, [bc]                                    ; $68d3: $0a
    ld a, [bc]                                    ; $68d4: $0a
    ld a, [bc]                                    ; $68d5: $0a
    ld a, [bc]                                    ; $68d6: $0a
    inc c                                         ; $68d7: $0c
    inc b                                         ; $68d8: $04
    ld a, [bc]                                    ; $68d9: $0a
    inc c                                         ; $68da: $0c
    inc c                                         ; $68db: $0c
    ld a, [bc]                                    ; $68dc: $0a
    ld a, [bc]                                    ; $68dd: $0a
    ld a, [bc]                                    ; $68de: $0a
    ld a, [bc]                                    ; $68df: $0a
    ld [bc], a                                    ; $68e0: $02
    inc c                                         ; $68e1: $0c
    jr nc, @+$33                                  ; $68e2: $30 $31

    dec a                                         ; $68e4: $3d
    ld a, $c8                                     ; $68e5: $3e $c8
    ret                                           ; $68e7: $c9


    ret nc                                        ; $68e8: $d0

    pop de                                        ; $68e9: $d1
    jp z, $d4cb                                   ; $68ea: $ca $cb $d4

    push de                                       ; $68ed: $d5
    call z, $d7cd                                 ; $68ee: $cc $cd $d7
    ret c                                         ; $68f1: $d8

    ld [bc], a                                    ; $68f2: $02
    ld [bc], a                                    ; $68f3: $02
    ld [bc], a                                    ; $68f4: $02
    ld [bc], a                                    ; $68f5: $02
    ld a, [bc]                                    ; $68f6: $0a
    ld a, [bc]                                    ; $68f7: $0a
    ld a, [bc]                                    ; $68f8: $0a
    ld a, [bc]                                    ; $68f9: $0a
    inc c                                         ; $68fa: $0c
    inc c                                         ; $68fb: $0c
    ld a, [bc]                                    ; $68fc: $0a
    ld a, [bc]                                    ; $68fd: $0a
    ld a, [bc]                                    ; $68fe: $0a
    inc c                                         ; $68ff: $0c
    ld a, [bc]                                    ; $6900: $0a
    ld a, [bc]                                    ; $6901: $0a
    push af                                       ; $6902: $f5
    ld hl, sp-$11                                 ; $6903: $f8 $ef
    ld [$f8f5], sp                                ; $6905: $08 $f5 $f8
    ld a, $ed                                     ; $6908: $3e $ed
    push af                                       ; $690a: $f5
    ld hl, sp-$2f                                 ; $690b: $f8 $d1
    jp nc, $f8f5                                  ; $690d: $d2 $f5 $f8

    push de                                       ; $6910: $d5
    sub $80                                       ; $6911: $d6 $80
    add b                                         ; $6913: $80
    ld c, $0a                                     ; $6914: $0e $0a
    add b                                         ; $6916: $80
    add b                                         ; $6917: $80
    ld b, $02                                     ; $6918: $06 $02
    add b                                         ; $691a: $80
    add b                                         ; $691b: $80
    ld c, $0a                                     ; $691c: $0e $0a
    add b                                         ; $691e: $80
    add b                                         ; $691f: $80
    ld c, $0a                                     ; $6920: $0e $0a
    add hl, bc                                    ; $6922: $09
    ld a, [bc]                                    ; $6923: $0a
    dec bc                                        ; $6924: $0b
    inc c                                         ; $6925: $0c
    ccf                                           ; $6926: $3f
    ld c, c                                       ; $6927: $49
    ld c, d                                       ; $6928: $4a
    ld c, e                                       ; $6929: $4b
    db $d3                                        ; $692a: $d3
    xor $da                                       ; $692b: $ee $da
    db $db                                        ; $692d: $db
    rst $28                                       ; $692e: $ef
    db $dd                                        ; $692f: $dd
    sbc $f0                                       ; $6930: $de $f0
    ld a, [bc]                                    ; $6932: $0a
    ld a, [bc]                                    ; $6933: $0a
    inc c                                         ; $6934: $0c
    inc c                                         ; $6935: $0c
    ld [bc], a                                    ; $6936: $02
    inc b                                         ; $6937: $04
    ld [bc], a                                    ; $6938: $02
    inc b                                         ; $6939: $04
    inc c                                         ; $693a: $0c
    ld [bc], a                                    ; $693b: $02
    ld a, [bc]                                    ; $693c: $0a
    ld a, [bc]                                    ; $693d: $0a
    inc b                                         ; $693e: $04
    ld a, [bc]                                    ; $693f: $0a
    ld a, [bc]                                    ; $6940: $0a
    ld [bc], a                                    ; $6941: $02
    dec c                                         ; $6942: $0d
    ld c, $0f                                     ; $6943: $0e $0f
    db $10                                        ; $6945: $10
    ld c, h                                       ; $6946: $4c
    ld d, [hl]                                    ; $6947: $56
    ld d, a                                       ; $6948: $57
    ld e, b                                       ; $6949: $58
    call c, $e5e4                                 ; $694a: $dc $e4 $e5
    and $df                                       ; $694d: $e6 $df
    add sp, -$17                                  ; $694f: $e8 $e9
    ld [$0a0c], a                                 ; $6951: $ea $0c $0a
    inc c                                         ; $6954: $0c
    ld a, [bc]                                    ; $6955: $0a
    ld [bc], a                                    ; $6956: $02
    inc b                                         ; $6957: $04
    ld [bc], a                                    ; $6958: $02
    ld [bc], a                                    ; $6959: $02
    inc c                                         ; $695a: $0c
    inc c                                         ; $695b: $0c
    inc c                                         ; $695c: $0c
    inc c                                         ; $695d: $0c
    inc c                                         ; $695e: $0c
    ld a, [bc]                                    ; $695f: $0a
    ld a, [bc]                                    ; $6960: $0a
    inc c                                         ; $6961: $0c
    adc $cf                                       ; $6962: $ce $cf
    ld a, e                                       ; $6964: $7b
    ld a, h                                       ; $6965: $7c
    ld e, c                                       ; $6966: $59
    ld a, [hl]                                    ; $6967: $7e
    ld a, a                                       ; $6968: $7f
    add b                                         ; $6969: $80
    rst $20                                       ; $696a: $e7
    ldh a, [$f3]                                  ; $696b: $f0 $f3
    db $f4                                        ; $696d: $f4
    db $eb                                        ; $696e: $eb
    pop af                                        ; $696f: $f1
    di                                            ; $6970: $f3
    rst $30                                       ; $6971: $f7
    inc c                                         ; $6972: $0c
    ld a, [bc]                                    ; $6973: $0a
    ld [bc], a                                    ; $6974: $02
    ld [bc], a                                    ; $6975: $02
    ld [bc], a                                    ; $6976: $02
    ld [bc], a                                    ; $6977: $02
    ld [bc], a                                    ; $6978: $02
    ld a, [bc]                                    ; $6979: $0a
    ld a, [bc]                                    ; $697a: $0a
    ld a, [bc]                                    ; $697b: $0a
    ld a, [bc]                                    ; $697c: $0a
    ld a, [bc]                                    ; $697d: $0a
    inc c                                         ; $697e: $0c
    ld a, [bc]                                    ; $697f: $0a
    ld [bc], a                                    ; $6980: $02
    inc c                                         ; $6981: $0c
    push af                                       ; $6982: $f5
    ld hl, sp-$28                                 ; $6983: $f8 $d8
    reti                                          ; $6985: $d9


    push af                                       ; $6986: $f5
    ld hl, sp+$7c                                 ; $6987: $f8 $7c
    ld a, l                                       ; $6989: $7d
    push af                                       ; $698a: $f5
    ld hl, sp-$80                                 ; $698b: $f8 $80
    add c                                         ; $698d: $81
    push af                                       ; $698e: $f5
    ld hl, sp-$0c                                 ; $698f: $f8 $f4
    push af                                       ; $6991: $f5
    add b                                         ; $6992: $80
    add b                                         ; $6993: $80
    ld c, $0a                                     ; $6994: $0e $0a
    add b                                         ; $6996: $80
    add b                                         ; $6997: $80
    ld b, $02                                     ; $6998: $06 $02
    add b                                         ; $699a: $80
    add b                                         ; $699b: $80
    ld c, $0a                                     ; $699c: $0e $0a
    add b                                         ; $699e: $80
    add b                                         ; $699f: $80
    ld c, $0a                                     ; $69a0: $0e $0a
    add [hl]                                      ; $69a2: $86
    ldh [$e1], a                                  ; $69a3: $e0 $e1
    ld [c], a                                     ; $69a5: $e2
    adc d                                         ; $69a6: $8a
    adc e                                         ; $69a7: $8b
    pop af                                        ; $69a8: $f1
    adc h                                         ; $69a9: $8c
    adc l                                         ; $69aa: $8d
    adc [hl]                                      ; $69ab: $8e
    adc a                                         ; $69ac: $8f
    sub b                                         ; $69ad: $90
    or $fe                                        ; $69ae: $f6 $fe
    rst $38                                       ; $69b0: $ff
    ld a, [c]                                     ; $69b1: $f2
    inc c                                         ; $69b2: $0c
    ld a, [bc]                                    ; $69b3: $0a
    inc c                                         ; $69b4: $0c
    inc c                                         ; $69b5: $0c
    inc c                                         ; $69b6: $0c
    ld a, [bc]                                    ; $69b7: $0a
    ld [bc], a                                    ; $69b8: $02
    inc c                                         ; $69b9: $0c
    inc c                                         ; $69ba: $0c
    inc c                                         ; $69bb: $0c
    inc c                                         ; $69bc: $0c
    inc c                                         ; $69bd: $0c
    ld a, [bc]                                    ; $69be: $0a
    ld a, [bc]                                    ; $69bf: $0a
    inc c                                         ; $69c0: $0c
    ld [bc], a                                    ; $69c1: $02
    db $e3                                        ; $69c2: $e3
    inc l                                         ; $69c3: $2c
    dec l                                         ; $69c4: $2d
    db $ec                                        ; $69c5: $ec
    sub a                                         ; $69c6: $97
    ld l, $2f                                     ; $69c7: $2e $2f
    xor $98                                       ; $69c9: $ee $98
    jr nc, jr_07d_69fe                            ; $69cb: $30 $31

    dec a                                         ; $69cd: $3d
    nop                                           ; $69ce: $00
    ret z                                         ; $69cf: $c8

    ret                                           ; $69d0: $c9


    ret nc                                        ; $69d1: $d0

    ld a, [bc]                                    ; $69d2: $0a
    inc b                                         ; $69d3: $04
    ld [bc], a                                    ; $69d4: $02
    ld a, [bc]                                    ; $69d5: $0a
    ld a, [bc]                                    ; $69d6: $0a
    ld [bc], a                                    ; $69d7: $02
    ld [bc], a                                    ; $69d8: $02
    inc c                                         ; $69d9: $0c
    ld a, [bc]                                    ; $69da: $0a
    inc b                                         ; $69db: $04
    inc b                                         ; $69dc: $04
    ld [bc], a                                    ; $69dd: $02
    ld a, [bc]                                    ; $69de: $0a
    ld a, [bc]                                    ; $69df: $0a
    inc c                                         ; $69e0: $0c
    inc c                                         ; $69e1: $0c
    db $ed                                        ; $69e2: $ed
    ld a, [c]                                     ; $69e3: $f2
    ld a, [$effb]                                 ; $69e4: $fa $fb $ef
    ld [$0a09], sp                                ; $69e7: $08 $09 $0a
    ld a, $ed                                     ; $69ea: $3e $ed
    ccf                                           ; $69ec: $3f
    ld c, c                                       ; $69ed: $49
    pop de                                        ; $69ee: $d1
    jp nc, $eed3                                  ; $69ef: $d2 $d3 $ee

    inc c                                         ; $69f2: $0c
    inc c                                         ; $69f3: $0c
    ld a, [bc]                                    ; $69f4: $0a
    ld a, [bc]                                    ; $69f5: $0a
    inc c                                         ; $69f6: $0c
    inc c                                         ; $69f7: $0c
    inc c                                         ; $69f8: $0c
    inc c                                         ; $69f9: $0c
    ld [bc], a                                    ; $69fa: $02
    inc b                                         ; $69fb: $04
    inc b                                         ; $69fc: $04
    ld [bc], a                                    ; $69fd: $02

jr_07d_69fe:
    ld a, [bc]                                    ; $69fe: $0a
    ld a, [bc]                                    ; $69ff: $0a
    ld a, [bc]                                    ; $6a00: $0a
    inc b                                         ; $6a01: $04
    ldh a, [$f3]                                  ; $6a02: $f0 $f3
    db $f4                                        ; $6a04: $f4
    push af                                       ; $6a05: $f5
    pop af                                        ; $6a06: $f1
    di                                            ; $6a07: $f3
    rst $30                                       ; $6a08: $f7
    ld hl, sp-$0e                                 ; $6a09: $f8 $f2
    ld a, [$fcfb]                                 ; $6a0b: $fa $fb $fc
    ld [$0a09], sp                                ; $6a0e: $08 $09 $0a
    dec bc                                        ; $6a11: $0b
    ld a, [bc]                                    ; $6a12: $0a
    ld a, [bc]                                    ; $6a13: $0a
    ld a, [bc]                                    ; $6a14: $0a
    ld a, [bc]                                    ; $6a15: $0a
    ld a, [bc]                                    ; $6a16: $0a
    ld [bc], a                                    ; $6a17: $02
    ld a, [bc]                                    ; $6a18: $0a
    ld a, [bc]                                    ; $6a19: $0a
    ld a, [bc]                                    ; $6a1a: $0a
    ld a, [bc]                                    ; $6a1b: $0a
    ld a, [bc]                                    ; $6a1c: $0a
    ld a, [bc]                                    ; $6a1d: $0a
    ld a, [bc]                                    ; $6a1e: $0a
    inc c                                         ; $6a1f: $0c
    ld a, [bc]                                    ; $6a20: $0a
    inc c                                         ; $6a21: $0c
    or $fe                                        ; $6a22: $f6 $fe
    rst $38                                       ; $6a24: $ff
    ld a, [c]                                     ; $6a25: $f2
    ld sp, hl                                     ; $6a26: $f9
    ld bc, $0302                                  ; $6a27: $01 $02 $03
    db $fd                                        ; $6a2a: $fd
    dec b                                         ; $6a2b: $05
    ld b, $f4                                     ; $6a2c: $06 $f4
    inc c                                         ; $6a2e: $0c
    dec c                                         ; $6a2f: $0d
    ld c, $0f                                     ; $6a30: $0e $0f
    ld a, [bc]                                    ; $6a32: $0a
    ld a, [bc]                                    ; $6a33: $0a
    ld a, [bc]                                    ; $6a34: $0a
    ld [bc], a                                    ; $6a35: $02
    ld a, [bc]                                    ; $6a36: $0a
    inc c                                         ; $6a37: $0c
    inc c                                         ; $6a38: $0c
    ld a, [bc]                                    ; $6a39: $0a
    inc c                                         ; $6a3a: $0c
    ld a, [bc]                                    ; $6a3b: $0a
    inc c                                         ; $6a3c: $0c
    ld [bc], a                                    ; $6a3d: $02
    ld a, [bc]                                    ; $6a3e: $0a
    ld a, [bc]                                    ; $6a3f: $0a
    ld a, [bc]                                    ; $6a40: $0a
    ld a, [bc]                                    ; $6a41: $0a
    nop                                           ; $6a42: $00
    ret z                                         ; $6a43: $c8

    ret                                           ; $6a44: $c9


    ret nc                                        ; $6a45: $d0

    inc b                                         ; $6a46: $04
    jp z, $d4cb                                   ; $6a47: $ca $cb $d4

    rlca                                          ; $6a4a: $07
    call z, $d7cd                                 ; $6a4b: $cc $cd $d7
    db $10                                        ; $6a4e: $10
    adc $cf                                       ; $6a4f: $ce $cf
    ld a, e                                       ; $6a51: $7b
    ld a, [bc]                                    ; $6a52: $0a
    inc c                                         ; $6a53: $0c
    inc c                                         ; $6a54: $0c
    inc c                                         ; $6a55: $0c
    inc c                                         ; $6a56: $0c
    inc c                                         ; $6a57: $0c
    ld a, [bc]                                    ; $6a58: $0a
    inc c                                         ; $6a59: $0c
    inc c                                         ; $6a5a: $0c
    inc c                                         ; $6a5b: $0c
    inc c                                         ; $6a5c: $0c
    inc c                                         ; $6a5d: $0c
    ld a, [bc]                                    ; $6a5e: $0a
    inc c                                         ; $6a5f: $0c
    inc c                                         ; $6a60: $0c
    inc b                                         ; $6a61: $04
    pop de                                        ; $6a62: $d1
    jp nc, $eed3                                  ; $6a63: $d2 $d3 $ee

    push de                                       ; $6a66: $d5
    sub $ef                                       ; $6a67: $d6 $ef
    db $dd                                        ; $6a69: $dd
    ret c                                         ; $6a6a: $d8

    reti                                          ; $6a6b: $d9


    add [hl]                                      ; $6a6c: $86
    ldh [$7c], a                                  ; $6a6d: $e0 $7c
    ld a, l                                       ; $6a6f: $7d
    adc d                                         ; $6a70: $8a
    adc e                                         ; $6a71: $8b
    inc c                                         ; $6a72: $0c
    ld a, [bc]                                    ; $6a73: $0a
    inc c                                         ; $6a74: $0c
    ld [bc], a                                    ; $6a75: $02
    inc c                                         ; $6a76: $0c
    inc c                                         ; $6a77: $0c
    ld [bc], a                                    ; $6a78: $02
    ld a, [bc]                                    ; $6a79: $0a
    inc c                                         ; $6a7a: $0c
    inc c                                         ; $6a7b: $0c
    inc c                                         ; $6a7c: $0c
    inc c                                         ; $6a7d: $0c
    ld [bc], a                                    ; $6a7e: $02
    inc b                                         ; $6a7f: $04
    ld a, [bc]                                    ; $6a80: $0a
    ld a, [bc]                                    ; $6a81: $0a
    db $ed                                        ; $6a82: $ed
    ccf                                           ; $6a83: $3f
    ld c, c                                       ; $6a84: $49
    ld c, d                                       ; $6a85: $4a
    jp nc, $eed3                                  ; $6a86: $d2 $d3 $ee

    jp c, $efd6                                   ; $6a89: $da $d6 $ef

    db $dd                                        ; $6a8c: $dd
    sbc $d9                                       ; $6a8d: $de $d9
    add [hl]                                      ; $6a8f: $86
    ldh [$e1], a                                  ; $6a90: $e0 $e1
    ld [bc], a                                    ; $6a92: $02
    ld [bc], a                                    ; $6a93: $02
    ld [bc], a                                    ; $6a94: $02
    inc b                                         ; $6a95: $04
    ld a, [bc]                                    ; $6a96: $0a
    inc c                                         ; $6a97: $0c
    inc b                                         ; $6a98: $04
    inc c                                         ; $6a99: $0c
    ld a, [bc]                                    ; $6a9a: $0a
    ld [bc], a                                    ; $6a9b: $02
    ld a, [bc]                                    ; $6a9c: $0a
    ld a, [bc]                                    ; $6a9d: $0a
    ld a, [bc]                                    ; $6a9e: $0a
    inc c                                         ; $6a9f: $0c
    inc c                                         ; $6aa0: $0c
    inc c                                         ; $6aa1: $0c
    ld c, e                                       ; $6aa2: $4b
    ld c, h                                       ; $6aa3: $4c
    ld d, [hl]                                    ; $6aa4: $56
    ld d, a                                       ; $6aa5: $57
    db $db                                        ; $6aa6: $db
    call c, $e5e4                                 ; $6aa7: $dc $e4 $e5
    ldh a, [$df]                                  ; $6aaa: $f0 $df
    add sp, -$17                                  ; $6aac: $e8 $e9
    ld [c], a                                     ; $6aae: $e2
    db $e3                                        ; $6aaf: $e3
    inc l                                         ; $6ab0: $2c
    dec l                                         ; $6ab1: $2d
    ld [bc], a                                    ; $6ab2: $02
    ld [bc], a                                    ; $6ab3: $02
    inc b                                         ; $6ab4: $04
    ld [bc], a                                    ; $6ab5: $02
    inc c                                         ; $6ab6: $0c
    inc c                                         ; $6ab7: $0c
    ld a, [bc]                                    ; $6ab8: $0a
    ld a, [bc]                                    ; $6ab9: $0a
    ld [bc], a                                    ; $6aba: $02
    inc c                                         ; $6abb: $0c
    ld a, [bc]                                    ; $6abc: $0a
    ld a, [bc]                                    ; $6abd: $0a
    inc c                                         ; $6abe: $0c
    inc c                                         ; $6abf: $0c
    inc b                                         ; $6ac0: $04
    ld [bc], a                                    ; $6ac1: $02
    ld e, b                                       ; $6ac2: $58
    ld e, c                                       ; $6ac3: $59
    ld a, [hl]                                    ; $6ac4: $7e
    ld a, a                                       ; $6ac5: $7f
    and $e7                                       ; $6ac6: $e6 $e7
    ldh a, [$f3]                                  ; $6ac8: $f0 $f3
    ld [$f1eb], a                                 ; $6aca: $ea $eb $f1
    di                                            ; $6acd: $f3
    db $ec                                        ; $6ace: $ec
    db $ed                                        ; $6acf: $ed
    ld a, [c]                                     ; $6ad0: $f2
    ld a, [$0402]                                 ; $6ad1: $fa $02 $04
    inc b                                         ; $6ad4: $04
    ld [bc], a                                    ; $6ad5: $02
    ld a, [bc]                                    ; $6ad6: $0a
    ld a, [bc]                                    ; $6ad7: $0a
    ld a, [bc]                                    ; $6ad8: $0a
    ld a, [bc]                                    ; $6ad9: $0a
    ld a, [bc]                                    ; $6ada: $0a
    ld a, [bc]                                    ; $6adb: $0a
    ld a, [bc]                                    ; $6adc: $0a
    inc b                                         ; $6add: $04
    ld a, [bc]                                    ; $6ade: $0a
    ld a, [bc]                                    ; $6adf: $0a
    inc c                                         ; $6ae0: $0c
    ld a, [bc]                                    ; $6ae1: $0a
    add b                                         ; $6ae2: $80
    add c                                         ; $6ae3: $81
    adc l                                         ; $6ae4: $8d
    adc [hl]                                      ; $6ae5: $8e
    db $f4                                        ; $6ae6: $f4
    push af                                       ; $6ae7: $f5
    or $fe                                        ; $6ae8: $f6 $fe
    rst $30                                       ; $6aea: $f7
    ld hl, sp-$07                                 ; $6aeb: $f8 $f9
    ld bc, $fcfb                                  ; $6aed: $01 $fb $fc
    db $fd                                        ; $6af0: $fd
    dec b                                         ; $6af1: $05
    inc c                                         ; $6af2: $0c
    inc c                                         ; $6af3: $0c
    inc c                                         ; $6af4: $0c
    ld a, [bc]                                    ; $6af5: $0a
    inc c                                         ; $6af6: $0c
    inc c                                         ; $6af7: $0c
    ld a, [bc]                                    ; $6af8: $0a
    ld a, [bc]                                    ; $6af9: $0a
    inc c                                         ; $6afa: $0c
    inc c                                         ; $6afb: $0c
    ld a, [bc]                                    ; $6afc: $0a
    ld a, [bc]                                    ; $6afd: $0a
    ld a, [bc]                                    ; $6afe: $0a
    inc c                                         ; $6aff: $0c
    inc c                                         ; $6b00: $0c
    ld a, [bc]                                    ; $6b01: $0a
    ld a, l                                       ; $6b02: $7d
    adc d                                         ; $6b03: $8a
    adc e                                         ; $6b04: $8b
    pop af                                        ; $6b05: $f1
    add c                                         ; $6b06: $81
    adc l                                         ; $6b07: $8d
    adc [hl]                                      ; $6b08: $8e
    adc a                                         ; $6b09: $8f
    push af                                       ; $6b0a: $f5
    or $fe                                        ; $6b0b: $f6 $fe
    rst $38                                       ; $6b0d: $ff
    ld hl, sp-$07                                 ; $6b0e: $f8 $f9
    ld bc, $0402                                  ; $6b10: $01 $02 $04
    ld a, [bc]                                    ; $6b13: $0a
    inc c                                         ; $6b14: $0c
    inc b                                         ; $6b15: $04
    ld a, [bc]                                    ; $6b16: $0a
    inc c                                         ; $6b17: $0c
    inc c                                         ; $6b18: $0c
    ld a, [bc]                                    ; $6b19: $0a
    ld a, [bc]                                    ; $6b1a: $0a
    inc c                                         ; $6b1b: $0c
    inc c                                         ; $6b1c: $0c
    inc c                                         ; $6b1d: $0c
    ld a, [bc]                                    ; $6b1e: $0a
    inc c                                         ; $6b1f: $0c
    inc c                                         ; $6b20: $0c
    inc c                                         ; $6b21: $0c
    adc h                                         ; $6b22: $8c
    sub a                                         ; $6b23: $97
    ld l, $2f                                     ; $6b24: $2e $2f
    sub b                                         ; $6b26: $90
    sbc b                                         ; $6b27: $98
    jr nc, jr_07d_6b5b                            ; $6b28: $30 $31

    ld a, [c]                                     ; $6b2a: $f2
    nop                                           ; $6b2b: $00
    ret z                                         ; $6b2c: $c8

    ret                                           ; $6b2d: $c9


    inc bc                                        ; $6b2e: $03
    inc b                                         ; $6b2f: $04
    jp z, Jump_000_0ccb                           ; $6b30: $ca $cb $0c

    inc c                                         ; $6b33: $0c
    inc b                                         ; $6b34: $04
    ld [bc], a                                    ; $6b35: $02
    ld a, [bc]                                    ; $6b36: $0a
    ld a, [bc]                                    ; $6b37: $0a
    ld [bc], a                                    ; $6b38: $02
    inc b                                         ; $6b39: $04
    ld [bc], a                                    ; $6b3a: $02
    ld a, [bc]                                    ; $6b3b: $0a
    ld a, [bc]                                    ; $6b3c: $0a
    ld a, [bc]                                    ; $6b3d: $0a
    inc c                                         ; $6b3e: $0c
    ld a, [bc]                                    ; $6b3f: $0a
    inc c                                         ; $6b40: $0c
    inc c                                         ; $6b41: $0c
    xor $ef                                       ; $6b42: $ee $ef
    ld [$3d09], sp                                ; $6b44: $08 $09 $3d
    ld a, $ed                                     ; $6b47: $3e $ed
    ccf                                           ; $6b49: $3f
    ret nc                                        ; $6b4a: $d0

    pop de                                        ; $6b4b: $d1
    jp nc, $d4d3                                  ; $6b4c: $d2 $d3 $d4

    push de                                       ; $6b4f: $d5
    sub $ef                                       ; $6b50: $d6 $ef
    ld a, [bc]                                    ; $6b52: $0a
    ld a, [bc]                                    ; $6b53: $0a
    inc c                                         ; $6b54: $0c
    ld a, [bc]                                    ; $6b55: $0a
    ld [bc], a                                    ; $6b56: $02
    inc b                                         ; $6b57: $04
    ld [bc], a                                    ; $6b58: $02
    ld [bc], a                                    ; $6b59: $02
    inc c                                         ; $6b5a: $0c

jr_07d_6b5b:
    ld a, [bc]                                    ; $6b5b: $0a
    ld a, [bc]                                    ; $6b5c: $0a
    ld a, [bc]                                    ; $6b5d: $0a
    inc c                                         ; $6b5e: $0c
    inc c                                         ; $6b5f: $0c
    ld a, [bc]                                    ; $6b60: $0a
    inc b                                         ; $6b61: $04
    ld a, [bc]                                    ; $6b62: $0a
    dec bc                                        ; $6b63: $0b
    inc c                                         ; $6b64: $0c
    dec c                                         ; $6b65: $0d
    ld c, c                                       ; $6b66: $49
    ld c, d                                       ; $6b67: $4a
    ld c, e                                       ; $6b68: $4b
    ld c, h                                       ; $6b69: $4c
    xor $da                                       ; $6b6a: $ee $da
    db $db                                        ; $6b6c: $db
    call c, $dedd                                 ; $6b6d: $dc $dd $de
    ldh a, [$df]                                  ; $6b70: $f0 $df
    ld a, [bc]                                    ; $6b72: $0a
    ld a, [bc]                                    ; $6b73: $0a
    ld a, [bc]                                    ; $6b74: $0a
    ld a, [bc]                                    ; $6b75: $0a
    ld [bc], a                                    ; $6b76: $02
    ld [bc], a                                    ; $6b77: $02
    ld [bc], a                                    ; $6b78: $02
    ld [bc], a                                    ; $6b79: $02
    ld [bc], a                                    ; $6b7a: $02
    ld a, [bc]                                    ; $6b7b: $0a
    inc c                                         ; $6b7c: $0c
    ld a, [bc]                                    ; $6b7d: $0a
    inc c                                         ; $6b7e: $0c
    inc c                                         ; $6b7f: $0c
    inc b                                         ; $6b80: $04
    ld a, [bc]                                    ; $6b81: $0a
    db $fc                                        ; $6b82: $fc
    db $fd                                        ; $6b83: $fd
    dec b                                         ; $6b84: $05
    ld b, $0b                                     ; $6b85: $06 $0b
    inc c                                         ; $6b87: $0c
    dec c                                         ; $6b88: $0d
    ld c, $4a                                     ; $6b89: $0e $4a
    ld c, e                                       ; $6b8b: $4b
    ld c, h                                       ; $6b8c: $4c
    ld d, [hl]                                    ; $6b8d: $56
    jp c, $dcdb                                   ; $6b8e: $da $db $dc

    db $e4                                        ; $6b91: $e4
    ld a, [bc]                                    ; $6b92: $0a
    ld a, [bc]                                    ; $6b93: $0a
    ld a, [bc]                                    ; $6b94: $0a
    ld a, [bc]                                    ; $6b95: $0a
    inc c                                         ; $6b96: $0c
    ld a, [bc]                                    ; $6b97: $0a
    ld a, [bc]                                    ; $6b98: $0a
    ld a, [bc]                                    ; $6b99: $0a
    ld [bc], a                                    ; $6b9a: $02
    ld [bc], a                                    ; $6b9b: $02
    ld [bc], a                                    ; $6b9c: $02
    ld [bc], a                                    ; $6b9d: $02
    ld a, [bc]                                    ; $6b9e: $0a
    ld a, [bc]                                    ; $6b9f: $0a
    ld a, [bc]                                    ; $6ba0: $0a
    ld a, [bc]                                    ; $6ba1: $0a
    db $f4                                        ; $6ba2: $f4
    rlca                                          ; $6ba3: $07
    call z, Call_000_0fcd                         ; $6ba4: $cc $cd $0f
    db $10                                        ; $6ba7: $10
    adc $cf                                       ; $6ba8: $ce $cf
    ld d, a                                       ; $6baa: $57
    ld e, b                                       ; $6bab: $58
    ld e, c                                       ; $6bac: $59
    ld a, [hl]                                    ; $6bad: $7e
    push hl                                       ; $6bae: $e5
    and $e7                                       ; $6baf: $e6 $e7
    ldh a, [rSC]                                  ; $6bb1: $f0 $02
    ld a, [bc]                                    ; $6bb3: $0a
    inc c                                         ; $6bb4: $0c
    inc c                                         ; $6bb5: $0c
    ld a, [bc]                                    ; $6bb6: $0a
    ld a, [bc]                                    ; $6bb7: $0a
    inc c                                         ; $6bb8: $0c
    inc c                                         ; $6bb9: $0c
    ld [bc], a                                    ; $6bba: $02
    ld [bc], a                                    ; $6bbb: $02
    ld [bc], a                                    ; $6bbc: $02
    inc b                                         ; $6bbd: $04
    ld a, [bc]                                    ; $6bbe: $0a
    inc c                                         ; $6bbf: $0c
    ld a, [bc]                                    ; $6bc0: $0a
    ld a, [bc]                                    ; $6bc1: $0a
    rst $10                                       ; $6bc2: $d7
    ret c                                         ; $6bc3: $d8

    reti                                          ; $6bc4: $d9


    add [hl]                                      ; $6bc5: $86
    ld a, e                                       ; $6bc6: $7b
    ld a, h                                       ; $6bc7: $7c
    ld a, l                                       ; $6bc8: $7d
    adc d                                         ; $6bc9: $8a
    ld a, a                                       ; $6bca: $7f
    add b                                         ; $6bcb: $80
    add c                                         ; $6bcc: $81
    adc l                                         ; $6bcd: $8d
    di                                            ; $6bce: $f3
    db $f4                                        ; $6bcf: $f4
    push af                                       ; $6bd0: $f5
    or $0c                                        ; $6bd1: $f6 $0c
    ld a, [bc]                                    ; $6bd3: $0a
    ld a, [bc]                                    ; $6bd4: $0a
    inc c                                         ; $6bd5: $0c
    ld [bc], a                                    ; $6bd6: $02
    ld [bc], a                                    ; $6bd7: $02
    inc b                                         ; $6bd8: $04
    ld a, [bc]                                    ; $6bd9: $0a
    ld [bc], a                                    ; $6bda: $02
    ld a, [bc]                                    ; $6bdb: $0a
    ld a, [bc]                                    ; $6bdc: $0a
    ld a, [bc]                                    ; $6bdd: $0a
    inc c                                         ; $6bde: $0c
    inc c                                         ; $6bdf: $0c
    inc c                                         ; $6be0: $0c
    ld a, [bc]                                    ; $6be1: $0a
    ldh [$e1], a                                  ; $6be2: $e0 $e1
    ld [c], a                                     ; $6be4: $e2
    db $e3                                        ; $6be5: $e3
    adc e                                         ; $6be6: $8b
    pop af                                        ; $6be7: $f1
    adc h                                         ; $6be8: $8c
    sub a                                         ; $6be9: $97
    adc [hl]                                      ; $6bea: $8e
    adc a                                         ; $6beb: $8f
    sub b                                         ; $6bec: $90
    sbc b                                         ; $6bed: $98
    cp $ff                                        ; $6bee: $fe $ff
    ld a, [c]                                     ; $6bf0: $f2
    nop                                           ; $6bf1: $00
    inc c                                         ; $6bf2: $0c
    inc c                                         ; $6bf3: $0c
    inc c                                         ; $6bf4: $0c
    ld a, [bc]                                    ; $6bf5: $0a
    ld a, [bc]                                    ; $6bf6: $0a
    inc b                                         ; $6bf7: $04
    ld a, [bc]                                    ; $6bf8: $0a
    inc c                                         ; $6bf9: $0c
    ld a, [bc]                                    ; $6bfa: $0a
    ld a, [bc]                                    ; $6bfb: $0a
    ld a, [bc]                                    ; $6bfc: $0a
    inc c                                         ; $6bfd: $0c
    inc c                                         ; $6bfe: $0c
    ld a, [bc]                                    ; $6bff: $0a
    inc b                                         ; $6c00: $04
    inc c                                         ; $6c01: $0c
    jp c, $dcdb                                   ; $6c02: $da $db $dc

    db $e4                                        ; $6c05: $e4
    sbc $f6                                       ; $6c06: $de $f6
    rst $30                                       ; $6c08: $f7
    rst $30                                       ; $6c09: $f7
    pop hl                                        ; $6c0a: $e1
    ld hl, sp-$0b                                 ; $6c0b: $f8 $f5
    push af                                       ; $6c0d: $f5
    pop af                                        ; $6c0e: $f1
    ld hl, sp-$0b                                 ; $6c0f: $f8 $f5
    push af                                       ; $6c11: $f5
    ld a, [bc]                                    ; $6c12: $0a
    ld a, [bc]                                    ; $6c13: $0a
    ld a, [bc]                                    ; $6c14: $0a
    ld a, [bc]                                    ; $6c15: $0a
    inc c                                         ; $6c16: $0c
    add b                                         ; $6c17: $80
    add b                                         ; $6c18: $80
    add b                                         ; $6c19: $80
    ld a, [bc]                                    ; $6c1a: $0a
    add b                                         ; $6c1b: $80
    add b                                         ; $6c1c: $80
    add b                                         ; $6c1d: $80
    ld b, $80                                     ; $6c1e: $06 $80
    add b                                         ; $6c20: $80
    add b                                         ; $6c21: $80
    push hl                                       ; $6c22: $e5
    ld de, $1312                                  ; $6c23: $11 $12 $13
    rst $30                                       ; $6c26: $f7
    rst $30                                       ; $6c27: $f7
    rst $30                                       ; $6c28: $f7
    rst $30                                       ; $6c29: $f7
    push af                                       ; $6c2a: $f5
    push af                                       ; $6c2b: $f5
    push af                                       ; $6c2c: $f5
    push af                                       ; $6c2d: $f5
    push af                                       ; $6c2e: $f5
    push af                                       ; $6c2f: $f5
    push af                                       ; $6c30: $f5
    push af                                       ; $6c31: $f5
    ld a, [bc]                                    ; $6c32: $0a
    dec bc                                        ; $6c33: $0b
    dec c                                         ; $6c34: $0d
    dec bc                                        ; $6c35: $0b
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
    or $f7                                        ; $6c42: $f6 $f7
    inc d                                         ; $6c44: $14
    push bc                                       ; $6c45: $c5
    inc d                                         ; $6c46: $14
    push af                                       ; $6c47: $f5
    push af                                       ; $6c48: $f5
    push af                                       ; $6c49: $f5
    push af                                       ; $6c4a: $f5
    push af                                       ; $6c4b: $f5
    push af                                       ; $6c4c: $f5
    push af                                       ; $6c4d: $f5
    push af                                       ; $6c4e: $f5
    push af                                       ; $6c4f: $f5
    push af                                       ; $6c50: $f5
    push af                                       ; $6c51: $f5
    add b                                         ; $6c52: $80
    add b                                         ; $6c53: $80
    adc b                                         ; $6c54: $88
    adc b                                         ; $6c55: $88
    adc b                                         ; $6c56: $88
    add b                                         ; $6c57: $80
    add b                                         ; $6c58: $80
    add b                                         ; $6c59: $80
    add b                                         ; $6c5a: $80
    add b                                         ; $6c5b: $80
    add b                                         ; $6c5c: $80
    add b                                         ; $6c5d: $80
    add b                                         ; $6c5e: $80
    add b                                         ; $6c5f: $80
    add b                                         ; $6c60: $80
    add b                                         ; $6c61: $80
    adc a                                         ; $6c62: $8f
    ld hl, sp-$0b                                 ; $6c63: $f8 $f5
    push af                                       ; $6c65: $f5
    rst $38                                       ; $6c66: $ff
    ld hl, sp-$0b                                 ; $6c67: $f8 $f5
    push af                                       ; $6c69: $f5
    ld [bc], a                                    ; $6c6a: $02
    ld hl, sp-$0b                                 ; $6c6b: $f8 $f5
    push af                                       ; $6c6d: $f5
    ld b, $f8                                     ; $6c6e: $06 $f8
    push af                                       ; $6c70: $f5
    push af                                       ; $6c71: $f5
    ld c, $80                                     ; $6c72: $0e $80
    add b                                         ; $6c74: $80
    add b                                         ; $6c75: $80
    ld c, $80                                     ; $6c76: $0e $80
    add b                                         ; $6c78: $80
    add b                                         ; $6c79: $80
    ld c, $80                                     ; $6c7a: $0e $80
    add b                                         ; $6c7c: $80
    add b                                         ; $6c7d: $80
    ld c, $80                                     ; $6c7e: $0e $80
    add b                                         ; $6c80: $80
    add b                                         ; $6c81: $80
    ld c, $f8                                     ; $6c82: $0e $f8
    push af                                       ; $6c84: $f5
    push af                                       ; $6c85: $f5
    ld d, [hl]                                    ; $6c86: $56
    ld hl, sp-$0b                                 ; $6c87: $f8 $f5
    push af                                       ; $6c89: $f5
    db $e4                                        ; $6c8a: $e4
    ld hl, sp-$0b                                 ; $6c8b: $f8 $f5
    push af                                       ; $6c8d: $f5
    add sp, -$08                                  ; $6c8e: $e8 $f8
    push af                                       ; $6c90: $f5
    push af                                       ; $6c91: $f5
    ld c, $80                                     ; $6c92: $0e $80
    add b                                         ; $6c94: $80
    add b                                         ; $6c95: $80
    ld b, $80                                     ; $6c96: $06 $80
    add b                                         ; $6c98: $80
    add b                                         ; $6c99: $80
    ld c, $80                                     ; $6c9a: $0e $80
    add b                                         ; $6c9c: $80
    add b                                         ; $6c9d: $80
    ld c, $80                                     ; $6c9e: $0e $80
    add b                                         ; $6ca0: $80
    add b                                         ; $6ca1: $80
    inc l                                         ; $6ca2: $2c
    ld hl, sp-$0b                                 ; $6ca3: $f8 $f5
    push af                                       ; $6ca5: $f5
    ld l, $f8                                     ; $6ca6: $2e $f8
    push af                                       ; $6ca8: $f5
    push af                                       ; $6ca9: $f5
    jr nc, @-$06                                  ; $6caa: $30 $f8

    push af                                       ; $6cac: $f5
    push af                                       ; $6cad: $f5
    ret z                                         ; $6cae: $c8

    ld hl, sp-$0b                                 ; $6caf: $f8 $f5
    push af                                       ; $6cb1: $f5
    ld b, $80                                     ; $6cb2: $06 $80
    add b                                         ; $6cb4: $80
    add b                                         ; $6cb5: $80
    ld b, $80                                     ; $6cb6: $06 $80
    add b                                         ; $6cb8: $80
    add b                                         ; $6cb9: $80
    ld b, $80                                     ; $6cba: $06 $80
    add b                                         ; $6cbc: $80
    add b                                         ; $6cbd: $80
    ld c, $80                                     ; $6cbe: $0e $80
    add b                                         ; $6cc0: $80
    add b                                         ; $6cc1: $80
    push af                                       ; $6cc2: $f5
    ld hl, sp-$09                                 ; $6cc3: $f8 $f7
    ld hl, sp-$0b                                 ; $6cc5: $f8 $f5
    ld hl, sp-$05                                 ; $6cc7: $f8 $fb
    db $fc                                        ; $6cc9: $fc
    push af                                       ; $6cca: $f5
    ld hl, sp+$0a                                 ; $6ccb: $f8 $0a
    dec bc                                        ; $6ccd: $0b
    push af                                       ; $6cce: $f5
    ld hl, sp+$49                                 ; $6ccf: $f8 $49
    ld c, d                                       ; $6cd1: $4a
    add b                                         ; $6cd2: $80
    add b                                         ; $6cd3: $80
    ld c, $0c                                     ; $6cd4: $0e $0c
    add b                                         ; $6cd6: $80
    add b                                         ; $6cd7: $80
    ld c, $0c                                     ; $6cd8: $0e $0c
    add b                                         ; $6cda: $80
    add b                                         ; $6cdb: $80
    ld c, $0c                                     ; $6cdc: $0e $0c
    add b                                         ; $6cde: $80
    add b                                         ; $6cdf: $80
    ld b, $04                                     ; $6ce0: $06 $04
    ld sp, hl                                     ; $6ce2: $f9
    ld bc, $0302                                  ; $6ce3: $01 $02 $03
    db $fd                                        ; $6ce6: $fd
    dec b                                         ; $6ce7: $05
    ld b, $f4                                     ; $6ce8: $06 $f4
    inc c                                         ; $6cea: $0c
    dec c                                         ; $6ceb: $0d
    ld c, $0f                                     ; $6cec: $0e $0f
    ld c, e                                       ; $6cee: $4b
    ld c, h                                       ; $6cef: $4c
    ld d, [hl]                                    ; $6cf0: $56
    ld d, a                                       ; $6cf1: $57
    inc c                                         ; $6cf2: $0c
    ld a, [bc]                                    ; $6cf3: $0a
    ld a, [bc]                                    ; $6cf4: $0a
    inc c                                         ; $6cf5: $0c
    ld a, [bc]                                    ; $6cf6: $0a
    ld a, [bc]                                    ; $6cf7: $0a
    ld a, [bc]                                    ; $6cf8: $0a
    ld [bc], a                                    ; $6cf9: $02
    ld a, [bc]                                    ; $6cfa: $0a
    ld a, [bc]                                    ; $6cfb: $0a
    ld a, [bc]                                    ; $6cfc: $0a
    ld a, [bc]                                    ; $6cfd: $0a
    inc b                                         ; $6cfe: $04
    inc b                                         ; $6cff: $04
    inc b                                         ; $6d00: $04
    inc b                                         ; $6d01: $04
    inc b                                         ; $6d02: $04
    jp z, $d4cb                                   ; $6d03: $ca $cb $d4

    rlca                                          ; $6d06: $07
    call z, $d7cd                                 ; $6d07: $cc $cd $d7
    db $10                                        ; $6d0a: $10
    adc $cf                                       ; $6d0b: $ce $cf
    ld a, e                                       ; $6d0d: $7b
    ld e, b                                       ; $6d0e: $58
    ld e, c                                       ; $6d0f: $59
    ld a, [hl]                                    ; $6d10: $7e
    ld a, a                                       ; $6d11: $7f
    ld a, [bc]                                    ; $6d12: $0a
    ld a, [bc]                                    ; $6d13: $0a
    ld a, [bc]                                    ; $6d14: $0a
    ld a, [bc]                                    ; $6d15: $0a
    ld a, [bc]                                    ; $6d16: $0a
    inc c                                         ; $6d17: $0c
    inc c                                         ; $6d18: $0c
    inc c                                         ; $6d19: $0c
    ld a, [bc]                                    ; $6d1a: $0a
    ld a, [bc]                                    ; $6d1b: $0a
    ld a, [bc]                                    ; $6d1c: $0a
    ld [bc], a                                    ; $6d1d: $02
    inc b                                         ; $6d1e: $04
    ld [bc], a                                    ; $6d1f: $02
    ld [bc], a                                    ; $6d20: $02
    ld [bc], a                                    ; $6d21: $02
    push de                                       ; $6d22: $d5
    sub $ef                                       ; $6d23: $d6 $ef
    db $dd                                        ; $6d25: $dd
    ret c                                         ; $6d26: $d8

    reti                                          ; $6d27: $d9


    add [hl]                                      ; $6d28: $86
    ldh [$7c], a                                  ; $6d29: $e0 $7c
    ld a, l                                       ; $6d2b: $7d
    adc d                                         ; $6d2c: $8a
    adc e                                         ; $6d2d: $8b
    add b                                         ; $6d2e: $80
    add c                                         ; $6d2f: $81
    adc l                                         ; $6d30: $8d
    adc [hl]                                      ; $6d31: $8e
    ld a, [bc]                                    ; $6d32: $0a
    ld a, [bc]                                    ; $6d33: $0a
    ld [bc], a                                    ; $6d34: $02
    ld a, [bc]                                    ; $6d35: $0a
    inc c                                         ; $6d36: $0c
    ld a, [bc]                                    ; $6d37: $0a
    ld a, [bc]                                    ; $6d38: $0a
    inc c                                         ; $6d39: $0c
    ld [bc], a                                    ; $6d3a: $02
    ld [bc], a                                    ; $6d3b: $02
    ld a, [bc]                                    ; $6d3c: $0a
    ld a, [bc]                                    ; $6d3d: $0a
    inc c                                         ; $6d3e: $0c
    inc c                                         ; $6d3f: $0c
    ld a, [bc]                                    ; $6d40: $0a
    ld a, [bc]                                    ; $6d41: $0a
    push af                                       ; $6d42: $f5
    ld hl, sp-$12                                 ; $6d43: $f8 $ee
    jp c, $f8f5                                   ; $6d45: $da $f5 $f8

    db $dd                                        ; $6d48: $dd
    sbc $f5                                       ; $6d49: $de $f5
    ld hl, sp-$20                                 ; $6d4b: $f8 $e0
    pop hl                                        ; $6d4d: $e1
    push af                                       ; $6d4e: $f5
    ld hl, sp-$75                                 ; $6d4f: $f8 $8b
    pop af                                        ; $6d51: $f1
    add b                                         ; $6d52: $80
    add b                                         ; $6d53: $80
    ld b, $0a                                     ; $6d54: $06 $0a
    add b                                         ; $6d56: $80
    add b                                         ; $6d57: $80
    ld c, $0a                                     ; $6d58: $0e $0a
    add b                                         ; $6d5a: $80
    add b                                         ; $6d5b: $80
    ld c, $0a                                     ; $6d5c: $0e $0a
    add b                                         ; $6d5e: $80
    add b                                         ; $6d5f: $80
    ld c, $02                                     ; $6d60: $0e $02
    db $db                                        ; $6d62: $db
    call c, $e5e4                                 ; $6d63: $dc $e4 $e5
    ldh a, [$df]                                  ; $6d66: $f0 $df
    add sp, -$17                                  ; $6d68: $e8 $e9
    ld [c], a                                     ; $6d6a: $e2
    db $e3                                        ; $6d6b: $e3
    inc l                                         ; $6d6c: $2c
    dec l                                         ; $6d6d: $2d
    adc h                                         ; $6d6e: $8c

Jump_07d_6d6f:
    sub a                                         ; $6d6f: $97
    ld l, $2f                                     ; $6d70: $2e $2f
    ld a, [bc]                                    ; $6d72: $0a
    ld a, [bc]                                    ; $6d73: $0a
    ld a, [bc]                                    ; $6d74: $0a
    ld a, [bc]                                    ; $6d75: $0a
    ld [bc], a                                    ; $6d76: $02
    ld a, [bc]                                    ; $6d77: $0a
    ld a, [bc]                                    ; $6d78: $0a
    ld a, [bc]                                    ; $6d79: $0a
    ld a, [bc]                                    ; $6d7a: $0a
    ld a, [bc]                                    ; $6d7b: $0a
    ld [bc], a                                    ; $6d7c: $02
    ld [bc], a                                    ; $6d7d: $02
    inc c                                         ; $6d7e: $0c
    inc c                                         ; $6d7f: $0c
    inc b                                         ; $6d80: $04
    inc b                                         ; $6d81: $04
    and $e7                                       ; $6d82: $e6 $e7
    ldh a, [$f3]                                  ; $6d84: $f0 $f3
    ld [$f1eb], a                                 ; $6d86: $ea $eb $f1
    di                                            ; $6d89: $f3
    db $ec                                        ; $6d8a: $ec
    db $ed                                        ; $6d8b: $ed
    ld a, [c]                                     ; $6d8c: $f2
    ld a, [$efee]                                 ; $6d8d: $fa $ee $ef
    ld [$0a09], sp                                ; $6d90: $08 $09 $0a
    ld a, [bc]                                    ; $6d93: $0a
    ld a, [bc]                                    ; $6d94: $0a
    inc c                                         ; $6d95: $0c
    ld a, [bc]                                    ; $6d96: $0a
    ld a, [bc]                                    ; $6d97: $0a
    ld a, [bc]                                    ; $6d98: $0a
    inc b                                         ; $6d99: $04
    ld a, [bc]                                    ; $6d9a: $0a
    ld a, [bc]                                    ; $6d9b: $0a
    ld a, [bc]                                    ; $6d9c: $0a
    ld a, [bc]                                    ; $6d9d: $0a
    inc c                                         ; $6d9e: $0c
    inc c                                         ; $6d9f: $0c
    ld a, [bc]                                    ; $6da0: $0a
    inc c                                         ; $6da1: $0c
    db $f4                                        ; $6da2: $f4
    push af                                       ; $6da3: $f5
    or $fe                                        ; $6da4: $f6 $fe
    rst $30                                       ; $6da6: $f7
    ld hl, sp-$07                                 ; $6da7: $f8 $f9
    ld bc, $fcfb                                  ; $6da9: $01 $fb $fc
    db $fd                                        ; $6dac: $fd
    dec b                                         ; $6dad: $05
    ld a, [bc]                                    ; $6dae: $0a
    dec bc                                        ; $6daf: $0b
    inc c                                         ; $6db0: $0c
    dec c                                         ; $6db1: $0d
    inc c                                         ; $6db2: $0c
    ld a, [bc]                                    ; $6db3: $0a
    ld a, [bc]                                    ; $6db4: $0a
    ld a, [bc]                                    ; $6db5: $0a
    inc c                                         ; $6db6: $0c
    ld a, [bc]                                    ; $6db7: $0a
    ld a, [bc]                                    ; $6db8: $0a
    inc c                                         ; $6db9: $0c
    ld a, [bc]                                    ; $6dba: $0a
    inc c                                         ; $6dbb: $0c
    ld a, [bc]                                    ; $6dbc: $0a
    inc c                                         ; $6dbd: $0c
    ld a, [bc]                                    ; $6dbe: $0a
    ld a, [bc]                                    ; $6dbf: $0a
    ld a, [bc]                                    ; $6dc0: $0a
    ld a, [bc]                                    ; $6dc1: $0a
    push af                                       ; $6dc2: $f5
    ld hl, sp-$72                                 ; $6dc3: $f8 $8e
    adc a                                         ; $6dc5: $8f
    push af                                       ; $6dc6: $f5
    xor [hl]                                      ; $6dc7: $ae
    rst $30                                       ; $6dc8: $f7
    rst $30                                       ; $6dc9: $f7
    push af                                       ; $6dca: $f5
    push af                                       ; $6dcb: $f5
    push af                                       ; $6dcc: $f5
    push af                                       ; $6dcd: $f5
    push af                                       ; $6dce: $f5
    push af                                       ; $6dcf: $f5
    push af                                       ; $6dd0: $f5
    push af                                       ; $6dd1: $f5
    add b                                         ; $6dd2: $80
    add b                                         ; $6dd3: $80
    ld c, $0a                                     ; $6dd4: $0e $0a
    add b                                         ; $6dd6: $80
    adc b                                         ; $6dd7: $88
    add b                                         ; $6dd8: $80
    add b                                         ; $6dd9: $80
    add b                                         ; $6dda: $80
    add b                                         ; $6ddb: $80
    add b                                         ; $6ddc: $80
    add b                                         ; $6ddd: $80
    add b                                         ; $6dde: $80
    add b                                         ; $6ddf: $80
    add b                                         ; $6de0: $80
    add b                                         ; $6de1: $80
    sub b                                         ; $6de2: $90
    sbc b                                         ; $6de3: $98
    jr nc, jr_07d_6e17                            ; $6de4: $30 $31

    rst $30                                       ; $6de6: $f7
    rst $30                                       ; $6de7: $f7
    rst $30                                       ; $6de8: $f7
    rst $30                                       ; $6de9: $f7
    push af                                       ; $6dea: $f5
    push af                                       ; $6deb: $f5
    push af                                       ; $6dec: $f5
    push af                                       ; $6ded: $f5
    push af                                       ; $6dee: $f5
    push af                                       ; $6def: $f5
    push af                                       ; $6df0: $f5
    push af                                       ; $6df1: $f5
    inc c                                         ; $6df2: $0c
    inc c                                         ; $6df3: $0c
    ld [bc], a                                    ; $6df4: $02
    ld [bc], a                                    ; $6df5: $02
    add b                                         ; $6df6: $80
    add b                                         ; $6df7: $80
    add b                                         ; $6df8: $80
    add b                                         ; $6df9: $80
    add b                                         ; $6dfa: $80
    add b                                         ; $6dfb: $80
    add b                                         ; $6dfc: $80
    add b                                         ; $6dfd: $80
    add b                                         ; $6dfe: $80
    add b                                         ; $6dff: $80
    add b                                         ; $6e00: $80
    add b                                         ; $6e01: $80
    dec a                                         ; $6e02: $3d
    ld a, $ed                                     ; $6e03: $3e $ed
    ccf                                           ; $6e05: $3f
    rst $30                                       ; $6e06: $f7
    rst $30                                       ; $6e07: $f7
    rst $30                                       ; $6e08: $f7
    rst $30                                       ; $6e09: $f7
    push af                                       ; $6e0a: $f5
    push af                                       ; $6e0b: $f5
    push af                                       ; $6e0c: $f5
    push af                                       ; $6e0d: $f5
    push af                                       ; $6e0e: $f5
    push af                                       ; $6e0f: $f5
    push af                                       ; $6e10: $f5
    push af                                       ; $6e11: $f5
    ld [bc], a                                    ; $6e12: $02
    ld [bc], a                                    ; $6e13: $02
    ld [bc], a                                    ; $6e14: $02
    ld [bc], a                                    ; $6e15: $02
    add b                                         ; $6e16: $80

jr_07d_6e17:
    add b                                         ; $6e17: $80
    add b                                         ; $6e18: $80
    add b                                         ; $6e19: $80
    add b                                         ; $6e1a: $80
    add b                                         ; $6e1b: $80
    add b                                         ; $6e1c: $80
    add b                                         ; $6e1d: $80
    add b                                         ; $6e1e: $80
    add b                                         ; $6e1f: $80
    add b                                         ; $6e20: $80
    add b                                         ; $6e21: $80
    ld c, c                                       ; $6e22: $49
    ld c, d                                       ; $6e23: $4a
    ld c, e                                       ; $6e24: $4b
    ld c, h                                       ; $6e25: $4c
    rst $30                                       ; $6e26: $f7
    rst $30                                       ; $6e27: $f7
    rst $30                                       ; $6e28: $f7
    rst $30                                       ; $6e29: $f7
    push af                                       ; $6e2a: $f5
    push af                                       ; $6e2b: $f5
    push af                                       ; $6e2c: $f5
    push af                                       ; $6e2d: $f5
    push af                                       ; $6e2e: $f5
    push af                                       ; $6e2f: $f5
    push af                                       ; $6e30: $f5
    push af                                       ; $6e31: $f5
    ld [bc], a                                    ; $6e32: $02
    inc b                                         ; $6e33: $04
    ld [bc], a                                    ; $6e34: $02
    ld [bc], a                                    ; $6e35: $02
    add b                                         ; $6e36: $80
    add b                                         ; $6e37: $80
    add b                                         ; $6e38: $80
    add b                                         ; $6e39: $80
    add b                                         ; $6e3a: $80
    add b                                         ; $6e3b: $80
    add b                                         ; $6e3c: $80
    add b                                         ; $6e3d: $80
    add b                                         ; $6e3e: $80
    add b                                         ; $6e3f: $80
    add b                                         ; $6e40: $80
    add b                                         ; $6e41: $80
    sbc $f0                                       ; $6e42: $de $f0
    rst $18                                       ; $6e44: $df
    add sp, -$1f                                  ; $6e45: $e8 $e1
    ld [c], a                                     ; $6e47: $e2
    db $e3                                        ; $6e48: $e3
    inc l                                         ; $6e49: $2c
    pop af                                        ; $6e4a: $f1
    adc h                                         ; $6e4b: $8c
    sub a                                         ; $6e4c: $97
    ld l, $8f                                     ; $6e4d: $2e $8f
    sub b                                         ; $6e4f: $90
    sbc b                                         ; $6e50: $98
    jr nc, jr_07d_6e5d                            ; $6e51: $30 $0a

    inc b                                         ; $6e53: $04
    ld a, [bc]                                    ; $6e54: $0a
    ld a, [bc]                                    ; $6e55: $0a
    ld a, [bc]                                    ; $6e56: $0a
    ld a, [bc]                                    ; $6e57: $0a
    ld a, [bc]                                    ; $6e58: $0a
    ld [bc], a                                    ; $6e59: $02
    ld [bc], a                                    ; $6e5a: $02
    inc c                                         ; $6e5b: $0c
    ld a, [bc]                                    ; $6e5c: $0a

jr_07d_6e5d:
    ld [bc], a                                    ; $6e5d: $02
    inc c                                         ; $6e5e: $0c
    inc c                                         ; $6e5f: $0c
    ld a, [bc]                                    ; $6e60: $0a
    ld [bc], a                                    ; $6e61: $02
    jp hl                                         ; $6e62: $e9


    ld [$f1eb], a                                 ; $6e63: $ea $eb $f1
    dec l                                         ; $6e66: $2d
    db $ec                                        ; $6e67: $ec
    db $ed                                        ; $6e68: $ed
    ld a, [c]                                     ; $6e69: $f2
    cpl                                           ; $6e6a: $2f
    xor $ef                                       ; $6e6b: $ee $ef
    ld [$3d31], sp                                ; $6e6d: $08 $31 $3d
    ld a, $ed                                     ; $6e70: $3e $ed
    ld a, [bc]                                    ; $6e72: $0a
    ld a, [bc]                                    ; $6e73: $0a
    inc c                                         ; $6e74: $0c
    inc c                                         ; $6e75: $0c
    ld [bc], a                                    ; $6e76: $02
    inc c                                         ; $6e77: $0c
    ld a, [bc]                                    ; $6e78: $0a
    inc c                                         ; $6e79: $0c
    inc b                                         ; $6e7a: $04
    inc c                                         ; $6e7b: $0c
    inc c                                         ; $6e7c: $0c
    inc c                                         ; $6e7d: $0c
    inc b                                         ; $6e7e: $04
    inc b                                         ; $6e7f: $04
    inc b                                         ; $6e80: $04
    ld [bc], a                                    ; $6e81: $02
    di                                            ; $6e82: $f3
    rst $30                                       ; $6e83: $f7
    ld hl, sp-$07                                 ; $6e84: $f8 $f9
    ld a, [$fcfb]                                 ; $6e86: $fa $fb $fc
    db $fd                                        ; $6e89: $fd
    add hl, bc                                    ; $6e8a: $09
    ld a, [bc]                                    ; $6e8b: $0a
    dec bc                                        ; $6e8c: $0b
    inc c                                         ; $6e8d: $0c
    ccf                                           ; $6e8e: $3f
    ld c, c                                       ; $6e8f: $49
    ld c, d                                       ; $6e90: $4a
    ld c, e                                       ; $6e91: $4b
    ld [bc], a                                    ; $6e92: $02
    ld a, [bc]                                    ; $6e93: $0a
    inc c                                         ; $6e94: $0c
    inc c                                         ; $6e95: $0c
    inc c                                         ; $6e96: $0c
    ld a, [bc]                                    ; $6e97: $0a
    inc c                                         ; $6e98: $0c
    inc c                                         ; $6e99: $0c
    ld a, [bc]                                    ; $6e9a: $0a
    inc c                                         ; $6e9b: $0c
    inc c                                         ; $6e9c: $0c
    ld a, [bc]                                    ; $6e9d: $0a
    inc b                                         ; $6e9e: $04
    ld [bc], a                                    ; $6e9f: $02
    ld [bc], a                                    ; $6ea0: $02
    ld [bc], a                                    ; $6ea1: $02
    ld bc, $0302                                  ; $6ea2: $01 $02 $03
    inc b                                         ; $6ea5: $04
    dec b                                         ; $6ea6: $05
    ld b, $f4                                     ; $6ea7: $06 $f4
    rlca                                          ; $6ea9: $07
    dec c                                         ; $6eaa: $0d
    ld c, $0f                                     ; $6eab: $0e $0f
    db $10                                        ; $6ead: $10
    ld c, h                                       ; $6eae: $4c
    ld d, [hl]                                    ; $6eaf: $56
    ld d, a                                       ; $6eb0: $57
    dec d                                         ; $6eb1: $15
    inc c                                         ; $6eb2: $0c
    inc c                                         ; $6eb3: $0c
    ld a, [bc]                                    ; $6eb4: $0a
    ld a, [bc]                                    ; $6eb5: $0a
    inc c                                         ; $6eb6: $0c
    ld a, [bc]                                    ; $6eb7: $0a
    ld [bc], a                                    ; $6eb8: $02
    ld a, [bc]                                    ; $6eb9: $0a
    inc c                                         ; $6eba: $0c
    ld a, [bc]                                    ; $6ebb: $0a
    ld a, [bc]                                    ; $6ebc: $0a
    ld a, [bc]                                    ; $6ebd: $0a
    ld [bc], a                                    ; $6ebe: $02
    ld [bc], a                                    ; $6ebf: $02
    ld [bc], a                                    ; $6ec0: $02
    ld a, [bc]                                    ; $6ec1: $0a
    rst $38                                       ; $6ec2: $ff
    ld a, [c]                                     ; $6ec3: $f2
    nop                                           ; $6ec4: $00
    ret z                                         ; $6ec5: $c8

jr_07d_6ec6:
    ld [bc], a                                    ; $6ec6: $02
    inc bc                                        ; $6ec7: $03
    inc b                                         ; $6ec8: $04
    jp z, $f406                                   ; $6ec9: $ca $06 $f4

    rlca                                          ; $6ecc: $07
    call z, Call_000_0f0e                         ; $6ecd: $cc $0e $0f
    db $10                                        ; $6ed0: $10
    adc $0c                                       ; $6ed1: $ce $0c
    ld [bc], a                                    ; $6ed3: $02
    ld a, [bc]                                    ; $6ed4: $0a
    ld a, [bc]                                    ; $6ed5: $0a
    inc c                                         ; $6ed6: $0c
    inc c                                         ; $6ed7: $0c
    ld a, [bc]                                    ; $6ed8: $0a
    ld a, [bc]                                    ; $6ed9: $0a
    ld a, [bc]                                    ; $6eda: $0a
    inc b                                         ; $6edb: $04
    ld a, [bc]                                    ; $6edc: $0a
    ld a, [bc]                                    ; $6edd: $0a
    ld a, [bc]                                    ; $6ede: $0a
    ld a, [bc]                                    ; $6edf: $0a
    ld a, [bc]                                    ; $6ee0: $0a
    ld a, [bc]                                    ; $6ee1: $0a
    ret                                           ; $6ee2: $c9


    ret nc                                        ; $6ee3: $d0

    pop de                                        ; $6ee4: $d1
    jp nc, $d4cb                                  ; $6ee5: $d2 $cb $d4

    push de                                       ; $6ee8: $d5
    sub $cd                                       ; $6ee9: $d6 $cd
    rst $10                                       ; $6eeb: $d7
    ret c                                         ; $6eec: $d8

    reti                                          ; $6eed: $d9


    rst $08                                       ; $6eee: $cf
    ld a, e                                       ; $6eef: $7b
    ld a, h                                       ; $6ef0: $7c
    ld a, l                                       ; $6ef1: $7d
    ld a, [bc]                                    ; $6ef2: $0a
    ld a, [bc]                                    ; $6ef3: $0a
    ld a, [bc]                                    ; $6ef4: $0a
    ld a, [bc]                                    ; $6ef5: $0a
    ld a, [bc]                                    ; $6ef6: $0a
    ld a, [bc]                                    ; $6ef7: $0a
    inc c                                         ; $6ef8: $0c
    inc c                                         ; $6ef9: $0c
    ld a, [bc]                                    ; $6efa: $0a
    inc c                                         ; $6efb: $0c
    inc c                                         ; $6efc: $0c
    ld a, [bc]                                    ; $6efd: $0a
    ld a, [bc]                                    ; $6efe: $0a
    ld [bc], a                                    ; $6eff: $02
    ld [bc], a                                    ; $6f00: $02
    ld [bc], a                                    ; $6f01: $02
    db $d3                                        ; $6f02: $d3
    xor $da                                       ; $6f03: $ee $da
    db $db                                        ; $6f05: $db
    rst $28                                       ; $6f06: $ef
    db $dd                                        ; $6f07: $dd
    sbc $f0                                       ; $6f08: $de $f0
    add [hl]                                      ; $6f0a: $86
    ldh [$e1], a                                  ; $6f0b: $e0 $e1
    ld [c], a                                     ; $6f0d: $e2
    adc d                                         ; $6f0e: $8a
    adc e                                         ; $6f0f: $8b
    pop af                                        ; $6f10: $f1
    adc h                                         ; $6f11: $8c
    ld a, [bc]                                    ; $6f12: $0a
    ld [bc], a                                    ; $6f13: $02
    ld a, [bc]                                    ; $6f14: $0a
    inc c                                         ; $6f15: $0c
    ld [bc], a                                    ; $6f16: $02
    ld a, [bc]                                    ; $6f17: $0a
    inc c                                         ; $6f18: $0c
    ld [bc], a                                    ; $6f19: $02
    ld a, [bc]                                    ; $6f1a: $0a
    inc c                                         ; $6f1b: $0c
    inc c                                         ; $6f1c: $0c
    ld a, [bc]                                    ; $6f1d: $0a
    ld a, [bc]                                    ; $6f1e: $0a
    ld a, [bc]                                    ; $6f1f: $0a
    ld [bc], a                                    ; $6f20: $02
    inc c                                         ; $6f21: $0c
    call c, $e5e4                                 ; $6f22: $dc $e4 $e5
    ld d, $df                                     ; $6f25: $16 $df
    add sp, -$17                                  ; $6f27: $e8 $e9
    rla                                           ; $6f29: $17
    db $e3                                        ; $6f2a: $e3
    inc l                                         ; $6f2b: $2c
    dec l                                         ; $6f2c: $2d
    jr jr_07d_6ec6                                ; $6f2d: $18 $97

    ld l, $2f                                     ; $6f2f: $2e $2f
    add hl, de                                    ; $6f31: $19
    ld a, [bc]                                    ; $6f32: $0a
    ld a, [bc]                                    ; $6f33: $0a
    ld a, [bc]                                    ; $6f34: $0a
    ld a, [bc]                                    ; $6f35: $0a
    ld a, [bc]                                    ; $6f36: $0a
    ld a, [bc]                                    ; $6f37: $0a
    ld a, [bc]                                    ; $6f38: $0a
    ld a, [bc]                                    ; $6f39: $0a
    ld a, [bc]                                    ; $6f3a: $0a
    inc b                                         ; $6f3b: $04
    ld [bc], a                                    ; $6f3c: $02
    ld a, [bc]                                    ; $6f3d: $0a
    inc c                                         ; $6f3e: $0c
    ld [bc], a                                    ; $6f3f: $02
    ld [bc], a                                    ; $6f40: $02
    ld a, [bc]                                    ; $6f41: $0a
    ld d, [hl]                                    ; $6f42: $56
    ld d, a                                       ; $6f43: $57
    ld e, b                                       ; $6f44: $58
    ld e, c                                       ; $6f45: $59
    rst $30                                       ; $6f46: $f7
    rst $30                                       ; $6f47: $f7
    rst $30                                       ; $6f48: $f7
    rst $30                                       ; $6f49: $f7
    push af                                       ; $6f4a: $f5
    push af                                       ; $6f4b: $f5
    push af                                       ; $6f4c: $f5
    push af                                       ; $6f4d: $f5
    push af                                       ; $6f4e: $f5
    push af                                       ; $6f4f: $f5
    push af                                       ; $6f50: $f5
    push af                                       ; $6f51: $f5
    ld [bc], a                                    ; $6f52: $02
    ld [bc], a                                    ; $6f53: $02
    ld [bc], a                                    ; $6f54: $02
    ld [bc], a                                    ; $6f55: $02
    add b                                         ; $6f56: $80
    add b                                         ; $6f57: $80
    add b                                         ; $6f58: $80
    add b                                         ; $6f59: $80
    add b                                         ; $6f5a: $80
    add b                                         ; $6f5b: $80
    add b                                         ; $6f5c: $80
    add b                                         ; $6f5d: $80
    add b                                         ; $6f5e: $80
    add b                                         ; $6f5f: $80
    add b                                         ; $6f60: $80
    add b                                         ; $6f61: $80
    ld a, [hl]                                    ; $6f62: $7e
    ld a, a                                       ; $6f63: $7f
    add b                                         ; $6f64: $80
    add c                                         ; $6f65: $81
    rst $30                                       ; $6f66: $f7
    rst $30                                       ; $6f67: $f7
    rst $30                                       ; $6f68: $f7
    rst $30                                       ; $6f69: $f7
    push af                                       ; $6f6a: $f5
    push af                                       ; $6f6b: $f5
    push af                                       ; $6f6c: $f5
    push af                                       ; $6f6d: $f5
    push af                                       ; $6f6e: $f5
    push af                                       ; $6f6f: $f5
    push af                                       ; $6f70: $f5
    push af                                       ; $6f71: $f5
    ld [bc], a                                    ; $6f72: $02

jr_07d_6f73:
    ld [bc], a                                    ; $6f73: $02
    ld a, [bc]                                    ; $6f74: $0a
    ld a, [bc]                                    ; $6f75: $0a
    add b                                         ; $6f76: $80
    add b                                         ; $6f77: $80
    add b                                         ; $6f78: $80
    add b                                         ; $6f79: $80
    add b                                         ; $6f7a: $80
    add b                                         ; $6f7b: $80
    add b                                         ; $6f7c: $80
    add b                                         ; $6f7d: $80
    add b                                         ; $6f7e: $80
    add b                                         ; $6f7f: $80
    add b                                         ; $6f80: $80
    add b                                         ; $6f81: $80
    adc l                                         ; $6f82: $8d
    adc [hl]                                      ; $6f83: $8e
    adc a                                         ; $6f84: $8f
    sub b                                         ; $6f85: $90
    rst $30                                       ; $6f86: $f7
    rst $30                                       ; $6f87: $f7
    rst $30                                       ; $6f88: $f7
    rst $30                                       ; $6f89: $f7
    push af                                       ; $6f8a: $f5
    push af                                       ; $6f8b: $f5
    push af                                       ; $6f8c: $f5
    push af                                       ; $6f8d: $f5
    push af                                       ; $6f8e: $f5
    push af                                       ; $6f8f: $f5
    push af                                       ; $6f90: $f5
    push af                                       ; $6f91: $f5
    inc c                                         ; $6f92: $0c
    inc c                                         ; $6f93: $0c
    inc c                                         ; $6f94: $0c
    inc c                                         ; $6f95: $0c
    add b                                         ; $6f96: $80
    add b                                         ; $6f97: $80
    add b                                         ; $6f98: $80
    add b                                         ; $6f99: $80
    add b                                         ; $6f9a: $80
    add b                                         ; $6f9b: $80
    add b                                         ; $6f9c: $80
    add b                                         ; $6f9d: $80
    add b                                         ; $6f9e: $80
    add b                                         ; $6f9f: $80
    add b                                         ; $6fa0: $80
    add b                                         ; $6fa1: $80
    sbc b                                         ; $6fa2: $98
    jr nc, jr_07d_6fd6                            ; $6fa3: $30 $31

    ld a, [de]                                    ; $6fa5: $1a
    rst $30                                       ; $6fa6: $f7
    rst $30                                       ; $6fa7: $f7
    rst $30                                       ; $6fa8: $f7
    rst $30                                       ; $6fa9: $f7
    push af                                       ; $6faa: $f5
    push af                                       ; $6fab: $f5
    push af                                       ; $6fac: $f5
    push af                                       ; $6fad: $f5
    push af                                       ; $6fae: $f5
    push af                                       ; $6faf: $f5
    push af                                       ; $6fb0: $f5
    push af                                       ; $6fb1: $f5
    ld a, [bc]                                    ; $6fb2: $0a
    ld [bc], a                                    ; $6fb3: $02
    ld [bc], a                                    ; $6fb4: $02
    ld a, [bc]                                    ; $6fb5: $0a
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
    jp z, $f7ae                                   ; $6fc2: $ca $ae $f7

    rst $30                                       ; $6fc5: $f7
    call z, Call_000_12af                         ; $6fc6: $cc $af $12
    ld [bc], a                                    ; $6fc9: $02
    dec de                                        ; $6fca: $1b
    or b                                          ; $6fcb: $b0
    dec d                                         ; $6fcc: $15
    ld b, $1c                                     ; $6fcd: $06 $1c
    or d                                          ; $6fcf: $b2
    add hl, de                                    ; $6fd0: $19
    ld a, [bc]                                    ; $6fd1: $0a
    ld c, $88                                     ; $6fd2: $0e $88
    add b                                         ; $6fd4: $80
    add b                                         ; $6fd5: $80

jr_07d_6fd6:
    ld c, $09                                     ; $6fd6: $0e $09
    ld bc, $0e01                                  ; $6fd8: $01 $01 $0e
    add hl, bc                                    ; $6fdb: $09
    ld bc, $0e01                                  ; $6fdc: $01 $01 $0e
    add hl, bc                                    ; $6fdf: $09
    ld bc, $f701                                  ; $6fe0: $01 $01 $f7
    rst $30                                       ; $6fe3: $f7
    rst $30                                       ; $6fe4: $f7
    rst $30                                       ; $6fe5: $f7
    inc bc                                        ; $6fe6: $03
    inc b                                         ; $6fe7: $04
    ld de, $0701                                  ; $6fe8: $11 $01 $07
    ld [$1413], sp                                ; $6feb: $08 $13 $14
    dec bc                                        ; $6fee: $0b
    inc c                                         ; $6fef: $0c
    rla                                           ; $6ff0: $17
    jr jr_07d_6f73                                ; $6ff1: $18 $80

    add b                                         ; $6ff3: $80
    add b                                         ; $6ff4: $80
    add b                                         ; $6ff5: $80
    ld bc, $0101                                  ; $6ff6: $01 $01 $01
    ld bc, $0101                                  ; $6ff9: $01 $01 $01
    ld bc, $0101                                  ; $6ffc: $01 $01 $01
    ld bc, $0101                                  ; $6fff: $01 $01 $01
    rst $30                                       ; $7002: $f7
    rst $30                                       ; $7003: $f7
    rst $30                                       ; $7004: $f7
    rst $30                                       ; $7005: $f7
    ld [de], a                                    ; $7006: $12
    ld [bc], a                                    ; $7007: $02
    inc bc                                        ; $7008: $03
    ld [hl], d                                    ; $7009: $72
    dec d                                         ; $700a: $15
    ld d, $21                                     ; $700b: $16 $21
    ei                                            ; $700d: $fb
    add hl, de                                    ; $700e: $19
    ld a, [de]                                    ; $700f: $1a
    inc h                                         ; $7010: $24
    db $fd                                        ; $7011: $fd
    add b                                         ; $7012: $80
    add b                                         ; $7013: $80
    add b                                         ; $7014: $80
    add b                                         ; $7015: $80
    ld bc, $0101                                  ; $7016: $01 $01 $01
    ld bc, $0101                                  ; $7019: $01 $01 $01
    ld bc, $0101                                  ; $701c: $01 $01 $01
    ld bc, $0101                                  ; $701f: $01 $01 $01
    rst $30                                       ; $7022: $f7
    rst $30                                       ; $7023: $f7
    sbc c                                         ; $7024: $99
    push af                                       ; $7025: $f5
    sbc d                                         ; $7026: $9a
    sbc e                                         ; $7027: $9b
    ld hl, sp-$0b                                 ; $7028: $f8 $f5
    sbc l                                         ; $702a: $9d
    sbc [hl]                                      ; $702b: $9e
    ld hl, sp-$0b                                 ; $702c: $f8 $f5
    and c                                         ; $702e: $a1
    and d                                         ; $702f: $a2
    ld hl, sp-$0b                                 ; $7030: $f8 $f5
    add b                                         ; $7032: $80
    add b                                         ; $7033: $80
    adc b                                         ; $7034: $88
    add b                                         ; $7035: $80
    add hl, bc                                    ; $7036: $09
    add hl, bc                                    ; $7037: $09
    add b                                         ; $7038: $80
    add b                                         ; $7039: $80
    add hl, bc                                    ; $703a: $09
    add hl, bc                                    ; $703b: $09
    add b                                         ; $703c: $80
    add b                                         ; $703d: $80
    add hl, bc                                    ; $703e: $09
    add hl, bc                                    ; $703f: $09
    add b                                         ; $7040: $80
    add b                                         ; $7041: $80
    dec e                                         ; $7042: $1d
    pop bc                                        ; $7043: $c1
    dec e                                         ; $7044: $1d
    ld c, $1e                                     ; $7045: $0e $1e
    jp nz, $3340                                  ; $7047: $c2 $40 $33

    rra                                           ; $704a: $1f
    jr nz, jr_07d_706e                            ; $704b: $20 $21

    cp b                                          ; $704d: $b8
    ld [hl+], a                                   ; $704e: $22
    inc hl                                        ; $704f: $23
    inc h                                         ; $7050: $24
    cp h                                          ; $7051: $bc
    ld c, $09                                     ; $7052: $0e $09
    ld bc, $0e01                                  ; $7054: $01 $01 $0e
    add hl, bc                                    ; $7057: $09
    ld bc, $0e01                                  ; $7058: $01 $01 $0e
    rrca                                          ; $705b: $0f
    rrca                                          ; $705c: $0f
    rrca                                          ; $705d: $0f
    ld a, [bc]                                    ; $705e: $0a
    dec bc                                        ; $705f: $0b
    dec c                                         ; $7060: $0d
    dec bc                                        ; $7061: $0b
    rrca                                          ; $7062: $0f
    db $10                                        ; $7063: $10
    dec de                                        ; $7064: $1b
    inc e                                         ; $7065: $1c
    inc [hl]                                      ; $7066: $34
    ld a, [hl+]                                   ; $7067: $2a
    dec hl                                        ; $7068: $2b
    ld [hl-], a                                   ; $7069: $32
    cp c                                          ; $706a: $b9
    dec h                                         ; $706b: $25
    ld h, $b8                                     ; $706c: $26 $b8

jr_07d_706e:
    cp l                                          ; $706e: $bd
    jp $bcc4                                      ; $706f: $c3 $c4 $bc


    ld bc, $0101                                  ; $7072: $01 $01 $01
    ld bc, $0101                                  ; $7075: $01 $01 $01
    ld bc, $0f01                                  ; $7078: $01 $01 $0f
    rrca                                          ; $707b: $0f
    rrca                                          ; $707c: $0f
    rrca                                          ; $707d: $0f
    dec bc                                        ; $707e: $0b
    dec bc                                        ; $707f: $0b
    dec bc                                        ; $7080: $0b
    dec bc                                        ; $7081: $0b
    dec e                                         ; $7082: $1d
    ld e, $27                                     ; $7083: $1e $27
    rst $38                                       ; $7085: $ff
    ld b, b                                       ; $7086: $40
    inc sp                                        ; $7087: $33
    ld c, l                                       ; $7088: $4d
    ld a, [hl+]                                   ; $7089: $2a
    cp c                                          ; $708a: $b9
    dec h                                         ; $708b: $25
    ld h, $b8                                     ; $708c: $26 $b8
    cp l                                          ; $708e: $bd
    jp $bcc4                                      ; $708f: $c3 $c4 $bc


    ld bc, $0101                                  ; $7092: $01 $01 $01
    ld bc, $0101                                  ; $7095: $01 $01 $01
    ld bc, $0f01                                  ; $7098: $01 $01 $0f
    rrca                                          ; $709b: $0f
    rrca                                          ; $709c: $0f
    rrca                                          ; $709d: $0f
    dec bc                                        ; $709e: $0b
    dec bc                                        ; $709f: $0b
    dec bc                                        ; $70a0: $0b
    dec c                                         ; $70a1: $0d
    and l                                         ; $70a2: $a5
    and [hl]                                      ; $70a3: $a6
    ld hl, sp-$0b                                 ; $70a4: $f8 $f5
    dec hl                                        ; $70a6: $2b
    or e                                          ; $70a7: $b3
    ld hl, sp-$0b                                 ; $70a8: $f8 $f5
    cp c                                          ; $70aa: $b9
    dec h                                         ; $70ab: $25
    ld hl, sp-$0b                                 ; $70ac: $f8 $f5
    cp l                                          ; $70ae: $bd
    jp $f5f8                                      ; $70af: $c3 $f8 $f5


    add hl, bc                                    ; $70b2: $09
    add hl, bc                                    ; $70b3: $09
    add b                                         ; $70b4: $80
    add b                                         ; $70b5: $80
    ld bc, $8009                                  ; $70b6: $01 $09 $80
    add b                                         ; $70b9: $80
    rrca                                          ; $70ba: $0f
    rrca                                          ; $70bb: $0f
    add b                                         ; $70bc: $80
    add b                                         ; $70bd: $80
    dec bc                                        ; $70be: $0b
    rrca                                          ; $70bf: $0f
    add b                                         ; $70c0: $80
    add b                                         ; $70c1: $80
    daa                                           ; $70c2: $27
    jr z, jr_07d_70ee                             ; $70c3: $28 $29

    cp a                                          ; $70c5: $bf
    rst $30                                       ; $70c6: $f7
    sbc c                                         ; $70c7: $99
    ld a, [hl+]                                   ; $70c8: $2a
    ld [de], a                                    ; $70c9: $12
    push af                                       ; $70ca: $f5
    ld hl, sp+$26                                 ; $70cb: $f8 $26
    cp b                                          ; $70cd: $b8
    push af                                       ; $70ce: $f5
    ld hl, sp-$3c                                 ; $70cf: $f8 $c4
    cp h                                          ; $70d1: $bc
    ld a, [bc]                                    ; $70d2: $0a
    ld a, [bc]                                    ; $70d3: $0a
    dec bc                                        ; $70d4: $0b
    dec c                                         ; $70d5: $0d
    add b                                         ; $70d6: $80
    adc b                                         ; $70d7: $88
    dec bc                                        ; $70d8: $0b
    dec bc                                        ; $70d9: $0b
    add b                                         ; $70da: $80
    add b                                         ; $70db: $80
    dec bc                                        ; $70dc: $0b
    dec bc                                        ; $70dd: $0b
    add b                                         ; $70de: $80
    add b                                         ; $70df: $80
    rrca                                          ; $70e0: $0f
    dec c                                         ; $70e1: $0d
    ret nz                                        ; $70e2: $c0

    add $c7                                       ; $70e3: $c6 $c7
    cp a                                          ; $70e5: $bf
    inc de                                        ; $70e6: $13
    dec hl                                        ; $70e7: $2b
    inc l                                         ; $70e8: $2c
    ld [de], a                                    ; $70e9: $12
    cp c                                          ; $70ea: $b9
    dec h                                         ; $70eb: $25
    ld h, $b8                                     ; $70ec: $26 $b8

jr_07d_70ee:
    cp l                                          ; $70ee: $bd
    jp $bcc4                                      ; $70ef: $c3 $c4 $bc


    dec c                                         ; $70f2: $0d
    dec bc                                        ; $70f3: $0b
    dec bc                                        ; $70f4: $0b
    dec c                                         ; $70f5: $0d
    dec c                                         ; $70f6: $0d
    dec bc                                        ; $70f7: $0b
    dec c                                         ; $70f8: $0d
    dec bc                                        ; $70f9: $0b
    dec bc                                        ; $70fa: $0b
    dec c                                         ; $70fb: $0d
    dec c                                         ; $70fc: $0d
    dec bc                                        ; $70fd: $0b
    dec bc                                        ; $70fe: $0b
    dec bc                                        ; $70ff: $0b
    dec bc                                        ; $7100: $0b
    dec c                                         ; $7101: $0d
    ret nz                                        ; $7102: $c0

    add $c7                                       ; $7103: $c6 $c7
    cp a                                          ; $7105: $bf
    inc de                                        ; $7106: $13
    dec hl                                        ; $7107: $2b
    inc l                                         ; $7108: $2c
    ld [de], a                                    ; $7109: $12
    cp c                                          ; $710a: $b9
    dec h                                         ; $710b: $25
    ld h, $b8                                     ; $710c: $26 $b8
    cp l                                          ; $710e: $bd
    jp $bcc4                                      ; $710f: $c3 $c4 $bc


    dec c                                         ; $7112: $0d
    dec bc                                        ; $7113: $0b
    dec bc                                        ; $7114: $0b
    dec c                                         ; $7115: $0d
    dec bc                                        ; $7116: $0b
    dec c                                         ; $7117: $0d
    dec bc                                        ; $7118: $0b
    dec bc                                        ; $7119: $0b
    dec c                                         ; $711a: $0d
    dec c                                         ; $711b: $0d
    dec c                                         ; $711c: $0d
    dec c                                         ; $711d: $0d
    dec c                                         ; $711e: $0d
    dec bc                                        ; $711f: $0b
    dec bc                                        ; $7120: $0b
    dec c                                         ; $7121: $0d
    ret nz                                        ; $7122: $c0

    add $f8                                       ; $7123: $c6 $f8
    push af                                       ; $7125: $f5
    inc de                                        ; $7126: $13
    dec hl                                        ; $7127: $2b
    ld hl, sp-$0b                                 ; $7128: $f8 $f5
    cp c                                          ; $712a: $b9
    dec h                                         ; $712b: $25
    ld hl, sp-$0b                                 ; $712c: $f8 $f5
    cp l                                          ; $712e: $bd
    jp $f5f8                                      ; $712f: $c3 $f8 $f5


    dec bc                                        ; $7132: $0b
    rrca                                          ; $7133: $0f
    add b                                         ; $7134: $80
    add b                                         ; $7135: $80
    dec bc                                        ; $7136: $0b
    rrca                                          ; $7137: $0f
    add b                                         ; $7138: $80
    add b                                         ; $7139: $80
    dec c                                         ; $713a: $0d
    rrca                                          ; $713b: $0f
    add b                                         ; $713c: $80
    add b                                         ; $713d: $80
    dec c                                         ; $713e: $0d
    rrca                                          ; $713f: $0f
    add b                                         ; $7140: $80
    add b                                         ; $7141: $80
    push af                                       ; $7142: $f5
    ld hl, sp-$39                                 ; $7143: $f8 $c7
    cp a                                          ; $7145: $bf
    push af                                       ; $7146: $f5
    xor [hl]                                      ; $7147: $ae
    rst $30                                       ; $7148: $f7
    rst $30                                       ; $7149: $f7
    push af                                       ; $714a: $f5
    push af                                       ; $714b: $f5
    push af                                       ; $714c: $f5
    push af                                       ; $714d: $f5
    push af                                       ; $714e: $f5
    push af                                       ; $714f: $f5
    push af                                       ; $7150: $f5
    push af                                       ; $7151: $f5
    add b                                         ; $7152: $80
    add b                                         ; $7153: $80
    rrca                                          ; $7154: $0f
    dec bc                                        ; $7155: $0b
    add b                                         ; $7156: $80
    adc b                                         ; $7157: $88
    add b                                         ; $7158: $80
    add b                                         ; $7159: $80
    add b                                         ; $715a: $80
    add b                                         ; $715b: $80
    add b                                         ; $715c: $80
    add b                                         ; $715d: $80
    add b                                         ; $715e: $80
    add b                                         ; $715f: $80
    add b                                         ; $7160: $80
    add b                                         ; $7161: $80
    ret nz                                        ; $7162: $c0

    add $c7                                       ; $7163: $c6 $c7
    cp a                                          ; $7165: $bf
    rst $30                                       ; $7166: $f7
    rst $30                                       ; $7167: $f7
    rst $30                                       ; $7168: $f7
    rst $30                                       ; $7169: $f7
    push af                                       ; $716a: $f5
    push af                                       ; $716b: $f5
    push af                                       ; $716c: $f5
    push af                                       ; $716d: $f5
    push af                                       ; $716e: $f5
    push af                                       ; $716f: $f5
    push af                                       ; $7170: $f5
    push af                                       ; $7171: $f5
    dec c                                         ; $7172: $0d
    dec c                                         ; $7173: $0d
    dec c                                         ; $7174: $0d
    dec bc                                        ; $7175: $0b
    add b                                         ; $7176: $80
    add b                                         ; $7177: $80
    add b                                         ; $7178: $80
    add b                                         ; $7179: $80
    add b                                         ; $717a: $80
    add b                                         ; $717b: $80
    add b                                         ; $717c: $80
    add b                                         ; $717d: $80
    add b                                         ; $717e: $80
    add b                                         ; $717f: $80
    add b                                         ; $7180: $80
    add b                                         ; $7181: $80
    ret nz                                        ; $7182: $c0

    add $c7                                       ; $7183: $c6 $c7
    cp a                                          ; $7185: $bf
    rst $30                                       ; $7186: $f7
    rst $30                                       ; $7187: $f7
    rst $30                                       ; $7188: $f7
    rst $30                                       ; $7189: $f7
    push af                                       ; $718a: $f5
    push af                                       ; $718b: $f5
    push af                                       ; $718c: $f5
    push af                                       ; $718d: $f5
    push af                                       ; $718e: $f5
    push af                                       ; $718f: $f5
    push af                                       ; $7190: $f5
    push af                                       ; $7191: $f5
    dec bc                                        ; $7192: $0b
    dec bc                                        ; $7193: $0b
    dec bc                                        ; $7194: $0b
    dec bc                                        ; $7195: $0b
    add b                                         ; $7196: $80
    add b                                         ; $7197: $80
    add b                                         ; $7198: $80
    add b                                         ; $7199: $80
    add b                                         ; $719a: $80
    add b                                         ; $719b: $80
    add b                                         ; $719c: $80
    add b                                         ; $719d: $80
    add b                                         ; $719e: $80
    add b                                         ; $719f: $80
    add b                                         ; $71a0: $80
    add b                                         ; $71a1: $80
    ret nz                                        ; $71a2: $c0

    add $f8                                       ; $71a3: $c6 $f8
    push af                                       ; $71a5: $f5
    rst $30                                       ; $71a6: $f7
    rst $30                                       ; $71a7: $f7
    inc d                                         ; $71a8: $14
    push af                                       ; $71a9: $f5
    push af                                       ; $71aa: $f5
    push af                                       ; $71ab: $f5
    push af                                       ; $71ac: $f5
    push af                                       ; $71ad: $f5
    push af                                       ; $71ae: $f5
    push af                                       ; $71af: $f5
    push af                                       ; $71b0: $f5
    push af                                       ; $71b1: $f5
    dec bc                                        ; $71b2: $0b
    rrca                                          ; $71b3: $0f
    add b                                         ; $71b4: $80
    add b                                         ; $71b5: $80
    add b                                         ; $71b6: $80
    add b                                         ; $71b7: $80
    adc b                                         ; $71b8: $88
    add b                                         ; $71b9: $80
    add b                                         ; $71ba: $80
    add b                                         ; $71bb: $80
    add b                                         ; $71bc: $80
    add b                                         ; $71bd: $80
    add b                                         ; $71be: $80
    add b                                         ; $71bf: $80
    add b                                         ; $71c0: $80
    add b                                         ; $71c1: $80
    ld [$0800], sp                                ; $71c2: $08 $00 $08
    nop                                           ; $71c5: $00
    ld b, b                                       ; $71c6: $40
    dec b                                         ; $71c7: $05
    db $ed                                        ; $71c8: $ed
    db $ed                                        ; $71c9: $ed
    db $ed                                        ; $71ca: $ed
    db $ed                                        ; $71cb: $ed
    db $ed                                        ; $71cc: $ed
    db $ed                                        ; $71cd: $ed
    db $ed                                        ; $71ce: $ed
    db $ed                                        ; $71cf: $ed
    db $ed                                        ; $71d0: $ed
    db $ed                                        ; $71d1: $ed
    db $ed                                        ; $71d2: $ed
    db $ed                                        ; $71d3: $ed
    db $ed                                        ; $71d4: $ed
    db $ed                                        ; $71d5: $ed
    db $ed                                        ; $71d6: $ed
    db $ed                                        ; $71d7: $ed
    add b                                         ; $71d8: $80
    add b                                         ; $71d9: $80
    add b                                         ; $71da: $80
    add b                                         ; $71db: $80
    add b                                         ; $71dc: $80
    add b                                         ; $71dd: $80
    add b                                         ; $71de: $80
    add b                                         ; $71df: $80
    add b                                         ; $71e0: $80
    add b                                         ; $71e1: $80
    add b                                         ; $71e2: $80
    add b                                         ; $71e3: $80
    add b                                         ; $71e4: $80
    add b                                         ; $71e5: $80
    add b                                         ; $71e6: $80
    add b                                         ; $71e7: $80
    db $ed                                        ; $71e8: $ed
    db $ed                                        ; $71e9: $ed
    db $ed                                        ; $71ea: $ed
    db $ed                                        ; $71eb: $ed
    db $ed                                        ; $71ec: $ed
    db $ed                                        ; $71ed: $ed
    db $ed                                        ; $71ee: $ed
    db $ed                                        ; $71ef: $ed
    db $ed                                        ; $71f0: $ed
    xor $ef                                       ; $71f1: $ee $ef
    rst $28                                       ; $71f3: $ef
    db $ed                                        ; $71f4: $ed
    ldh a, [$f1]                                  ; $71f5: $f0 $f1
    ld a, [c]                                     ; $71f7: $f2
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
    ld bc, $ed21                                  ; $7206: $01 $21 $ed
    db $ed                                        ; $7209: $ed
    db $ed                                        ; $720a: $ed
    db $ed                                        ; $720b: $ed
    db $ed                                        ; $720c: $ed
    db $ed                                        ; $720d: $ed
    db $ed                                        ; $720e: $ed
    db $ed                                        ; $720f: $ed
    rst $28                                       ; $7210: $ef
    rst $28                                       ; $7211: $ef
    rst $28                                       ; $7212: $ef
    rst $28                                       ; $7213: $ef
    di                                            ; $7214: $f3
    db $f4                                        ; $7215: $f4
    push af                                       ; $7216: $f5
    or $80                                        ; $7217: $f6 $80
    add b                                         ; $7219: $80
    add b                                         ; $721a: $80
    add b                                         ; $721b: $80
    add b                                         ; $721c: $80
    add b                                         ; $721d: $80
    add b                                         ; $721e: $80
    add b                                         ; $721f: $80
    add b                                         ; $7220: $80
    add b                                         ; $7221: $80
    add b                                         ; $7222: $80
    add b                                         ; $7223: $80
    ld hl, $2121                                  ; $7224: $21 $21 $21
    ld bc, $eded                                  ; $7227: $01 $ed $ed
    db $ed                                        ; $722a: $ed
    db $ed                                        ; $722b: $ed
    db $ed                                        ; $722c: $ed
    db $ed                                        ; $722d: $ed
    db $ed                                        ; $722e: $ed
    db $ed                                        ; $722f: $ed
    rst $28                                       ; $7230: $ef
    rst $28                                       ; $7231: $ef
    rst $28                                       ; $7232: $ef
    rst $28                                       ; $7233: $ef
    pop af                                        ; $7234: $f1
    rst $30                                       ; $7235: $f7
    or $f8                                        ; $7236: $f6 $f8
    add b                                         ; $7238: $80
    add b                                         ; $7239: $80
    add b                                         ; $723a: $80
    add b                                         ; $723b: $80
    add b                                         ; $723c: $80
    add b                                         ; $723d: $80
    add b                                         ; $723e: $80
    add b                                         ; $723f: $80
    add b                                         ; $7240: $80
    add b                                         ; $7241: $80
    add b                                         ; $7242: $80
    add b                                         ; $7243: $80
    ld bc, $0101                                  ; $7244: $01 $01 $01
    ld bc, $f0ed                                  ; $7247: $01 $ed $f0
    ld sp, hl                                     ; $724a: $f9
    ld a, [$f0ed]                                 ; $724b: $fa $ed $f0
    ei                                            ; $724e: $fb
    db $fc                                        ; $724f: $fc
    db $ed                                        ; $7250: $ed
    ldh a, [$fd]                                  ; $7251: $f0 $fd
    cp $ed                                        ; $7253: $fe $ed
    ldh a, [rIE]                                  ; $7255: $f0 $ff
    nop                                           ; $7257: $00
    add b                                         ; $7258: $80
    add b                                         ; $7259: $80
    ld bc, $8021                                  ; $725a: $01 $21 $80
    add b                                         ; $725d: $80
    ld bc, $8021                                  ; $725e: $01 $21 $80
    add b                                         ; $7261: $80
    ld bc, $8021                                  ; $7262: $01 $21 $80
    add b                                         ; $7265: $80
    ld bc, $0121                                  ; $7266: $01 $21 $01
    ld [bc], a                                    ; $7269: $02
    inc bc                                        ; $726a: $03
    inc b                                         ; $726b: $04
    dec b                                         ; $726c: $05
    ld b, $07                                     ; $726d: $06 $07
    ld [$0a09], sp                                ; $726f: $08 $09 $0a
    dec bc                                        ; $7272: $0b
    inc c                                         ; $7273: $0c
    dec c                                         ; $7274: $0d
    ld c, $0f                                     ; $7275: $0e $0f
    db $10                                        ; $7277: $10
    ld hl, $2121                                  ; $7278: $21 $21 $21
    ld bc, $2121                                  ; $727b: $01 $21 $21
    ld hl, $2101                                  ; $727e: $21 $01 $21
    ld hl, $0303                                  ; $7281: $21 $03 $03
    ld hl, $0321                                  ; $7284: $21 $21 $03
    inc bc                                        ; $7287: $03
    ld sp, hl                                     ; $7288: $f9
    ld de, $1204                                  ; $7289: $11 $04 $12
    ei                                            ; $728c: $fb
    inc de                                        ; $728d: $13
    ld [$1514], sp                                ; $728e: $08 $14 $15
    ld d, $17                                     ; $7291: $16 $17
    jr jr_07d_72ae                                ; $7293: $18 $19

    ld a, [de]                                    ; $7295: $1a
    dec de                                        ; $7296: $1b
    inc e                                         ; $7297: $1c
    ld bc, $0101                                  ; $7298: $01 $01 $01
    ld bc, $0101                                  ; $729b: $01 $01 $01
    ld bc, $0301                                  ; $729e: $01 $01 $03
    inc bc                                        ; $72a1: $03
    ld b, $01                                     ; $72a2: $06 $01
    inc bc                                        ; $72a4: $03
    inc bc                                        ; $72a5: $03
    ld b, $01                                     ; $72a6: $06 $01
    db $ed                                        ; $72a8: $ed
    db $ed                                        ; $72a9: $ed
    xor $ef                                       ; $72aa: $ee $ef
    db $ed                                        ; $72ac: $ed
    db $ed                                        ; $72ad: $ed

jr_07d_72ae:
    ldh a, [$f6]                                  ; $72ae: $f0 $f6
    db $ed                                        ; $72b0: $ed
    db $ed                                        ; $72b1: $ed
    ldh a, [rDIV]                                 ; $72b2: $f0 $04
    db $ed                                        ; $72b4: $ed
    db $ed                                        ; $72b5: $ed
    ldh a, [$08]                                  ; $72b6: $f0 $08
    add b                                         ; $72b8: $80
    add b                                         ; $72b9: $80
    add b                                         ; $72ba: $80
    add b                                         ; $72bb: $80
    add b                                         ; $72bc: $80
    add b                                         ; $72bd: $80
    add b                                         ; $72be: $80
    ld bc, $8080                                  ; $72bf: $01 $80 $80
    add b                                         ; $72c2: $80
    ld bc, $8080                                  ; $72c3: $01 $80 $80
    add b                                         ; $72c6: $80
    ld bc, $efef                                  ; $72c7: $01 $ef $ef
    rst $28                                       ; $72ca: $ef
    rst $28                                       ; $72cb: $ef
    pop af                                        ; $72cc: $f1
    rst $30                                       ; $72cd: $f7
    push af                                       ; $72ce: $f5
    db $f4                                        ; $72cf: $f4
    ld sp, hl                                     ; $72d0: $f9
    ld de, $0203                                  ; $72d1: $11 $03 $02
    ei                                            ; $72d4: $fb
    inc de                                        ; $72d5: $13
    rlca                                          ; $72d6: $07
    ld b, $80                                     ; $72d7: $06 $80
    add b                                         ; $72d9: $80
    add b                                         ; $72da: $80
    add b                                         ; $72db: $80
    ld bc, $0101                                  ; $72dc: $01 $01 $01
    ld bc, $0101                                  ; $72df: $01 $01 $01
    ld bc, $0101                                  ; $72e2: $01 $01 $01
    ld bc, $0101                                  ; $72e5: $01 $01 $01
    rst $28                                       ; $72e8: $ef
    rst $28                                       ; $72e9: $ef
    rst $28                                       ; $72ea: $ef
    dec e                                         ; $72eb: $1d
    di                                            ; $72ec: $f3
    ld a, [c]                                     ; $72ed: $f2
    pop af                                        ; $72ee: $f1
    ld e, $01                                     ; $72ef: $1e $01
    ld a, [$1ff9]                                 ; $72f1: $fa $f9 $1f
    dec b                                         ; $72f4: $05
    db $fc                                        ; $72f5: $fc
    ei                                            ; $72f6: $fb
    jr nz, @-$7e                                  ; $72f7: $20 $80

    add b                                         ; $72f9: $80
    add b                                         ; $72fa: $80
    add b                                         ; $72fb: $80
    ld bc, $0101                                  ; $72fc: $01 $01 $01
    add b                                         ; $72ff: $80
    ld bc, $0101                                  ; $7300: $01 $01 $01
    ld bc, $0101                                  ; $7303: $01 $01 $01
    ld bc, $ed01                                  ; $7306: $01 $01 $ed
    db $ed                                        ; $7309: $ed
    db $ed                                        ; $730a: $ed
    db $ed                                        ; $730b: $ed
    rst $28                                       ; $730c: $ef
    dec e                                         ; $730d: $1d
    db $ed                                        ; $730e: $ed
    db $ed                                        ; $730f: $ed
    rst $30                                       ; $7310: $f7
    ldh a, [$ed]                                  ; $7311: $f0 $ed
    db $ed                                        ; $7313: $ed
    ld hl, $ed22                                  ; $7314: $21 $22 $ed
    db $ed                                        ; $7317: $ed
    add b                                         ; $7318: $80
    add b                                         ; $7319: $80
    add b                                         ; $731a: $80
    add b                                         ; $731b: $80
    add b                                         ; $731c: $80
    add b                                         ; $731d: $80
    add b                                         ; $731e: $80
    add b                                         ; $731f: $80
    ld bc, $8080                                  ; $7320: $01 $80 $80
    add b                                         ; $7323: $80
    ld bc, $8080                                  ; $7324: $01 $80 $80
    add b                                         ; $7327: $80
    db $ed                                        ; $7328: $ed
    db $ed                                        ; $7329: $ed
    ldh a, [rNR44]                                ; $732a: $f0 $23
    db $ed                                        ; $732c: $ed
    db $ed                                        ; $732d: $ed
    ldh a, [rNR50]                                ; $732e: $f0 $24
    db $ed                                        ; $7330: $ed
    db $ed                                        ; $7331: $ed
    ldh a, [rNR51]                                ; $7332: $f0 $25
    db $ed                                        ; $7334: $ed
    db $ed                                        ; $7335: $ed
    ldh a, [rNR52]                                ; $7336: $f0 $26
    add b                                         ; $7338: $80
    add b                                         ; $7339: $80
    add b                                         ; $733a: $80
    ld bc, $8080                                  ; $733b: $01 $80 $80
    add b                                         ; $733e: $80
    ld bc, $8080                                  ; $733f: $01 $80 $80
    add b                                         ; $7342: $80
    rlca                                          ; $7343: $07
    add b                                         ; $7344: $80
    add b                                         ; $7345: $80
    add b                                         ; $7346: $80
    rlca                                          ; $7347: $07
    db $fd                                        ; $7348: $fd
    daa                                           ; $7349: $27
    jr z, @+$0c                                   ; $734a: $28 $0a

    rst $38                                       ; $734c: $ff
    add hl, hl                                    ; $734d: $29
    ld a, [hl+]                                   ; $734e: $2a
    ld c, $2b                                     ; $734f: $0e $2b
    inc l                                         ; $7351: $2c
    dec l                                         ; $7352: $2d
    ld l, $2f                                     ; $7353: $2e $2f
    jr nc, jr_07d_7388                            ; $7355: $30 $31

    ld [hl-], a                                   ; $7357: $32
    ld bc, $0101                                  ; $7358: $01 $01 $01
    ld bc, $0101                                  ; $735b: $01 $01 $01
    ld bc, $0701                                  ; $735e: $01 $01 $07
    rlca                                          ; $7361: $07
    rlca                                          ; $7362: $07
    rlca                                          ; $7363: $07
    ld [bc], a                                    ; $7364: $02
    inc b                                         ; $7365: $04
    ld [bc], a                                    ; $7366: $02
    dec b                                         ; $7367: $05
    add hl, bc                                    ; $7368: $09
    cp $fd                                        ; $7369: $fe $fd
    inc sp                                        ; $736b: $33
    dec c                                         ; $736c: $0d
    nop                                           ; $736d: $00
    rst $38                                       ; $736e: $ff
    inc [hl]                                      ; $736f: $34
    dec [hl]                                      ; $7370: $35
    dec h                                         ; $7371: $25
    dec hl                                        ; $7372: $2b
    ld [hl], $37                                  ; $7373: $36 $37
    ld h, $2f                                     ; $7375: $26 $2f
    jr nc, @+$03                                  ; $7377: $30 $01

    ld bc, $0101                                  ; $7379: $01 $01 $01
    ld bc, $0101                                  ; $737c: $01 $01 $01
    ld bc, $0707                                  ; $737f: $01 $07 $07
    rlca                                          ; $7382: $07
    ld bc, $0402                                  ; $7383: $01 $02 $04
    rlca                                          ; $7386: $07
    rlca                                          ; $7387: $07

jr_07d_7388:
    jr c, jr_07d_73ac                             ; $7388: $38 $22

    db $ed                                        ; $738a: $ed
    db $ed                                        ; $738b: $ed
    add hl, sp                                    ; $738c: $39
    ld [hl+], a                                   ; $738d: $22
    db $ed                                        ; $738e: $ed
    db $ed                                        ; $738f: $ed
    add hl, hl                                    ; $7390: $29
    ld [hl+], a                                   ; $7391: $22
    db $ed                                        ; $7392: $ed
    db $ed                                        ; $7393: $ed
    ld sp, $3a22                                  ; $7394: $31 $22 $3a
    db $ed                                        ; $7397: $ed
    ld bc, $8080                                  ; $7398: $01 $80 $80
    add b                                         ; $739b: $80
    ld bc, $8080                                  ; $739c: $01 $80 $80
    add b                                         ; $739f: $80
    ld bc, $8080                                  ; $73a0: $01 $80 $80
    add b                                         ; $73a3: $80
    rlca                                          ; $73a4: $07
    add b                                         ; $73a5: $80
    add b                                         ; $73a6: $80
    add b                                         ; $73a7: $80
    db $ed                                        ; $73a8: $ed
    db $ed                                        ; $73a9: $ed
    ldh a, [$3b]                                  ; $73aa: $f0 $3b

jr_07d_73ac:
    db $ed                                        ; $73ac: $ed
    db $ed                                        ; $73ad: $ed
    ldh a, [$3c]                                  ; $73ae: $f0 $3c
    rst $28                                       ; $73b0: $ef
    rst $28                                       ; $73b1: $ef
    dec a                                         ; $73b2: $3d
    ld a, $3f                                     ; $73b3: $3e $3f
    ld b, b                                       ; $73b5: $40
    ld b, c                                       ; $73b6: $41
    ld b, d                                       ; $73b7: $42
    add b                                         ; $73b8: $80
    add b                                         ; $73b9: $80
    add b                                         ; $73ba: $80
    rlca                                          ; $73bb: $07
    add b                                         ; $73bc: $80
    add b                                         ; $73bd: $80
    add b                                         ; $73be: $80
    rlca                                          ; $73bf: $07
    add b                                         ; $73c0: $80
    add b                                         ; $73c1: $80
    add b                                         ; $73c2: $80
    rlca                                          ; $73c3: $07
    ld bc, $0101                                  ; $73c4: $01 $01 $01
    rlca                                          ; $73c7: $07
    ld b, e                                       ; $73c8: $43
    ld b, h                                       ; $73c9: $44
    ld b, l                                       ; $73ca: $45
    ld b, [hl]                                    ; $73cb: $46
    ld b, a                                       ; $73cc: $47
    ld c, b                                       ; $73cd: $48
    ld c, c                                       ; $73ce: $49
    ld c, d                                       ; $73cf: $4a
    ld c, e                                       ; $73d0: $4b
    ld c, h                                       ; $73d1: $4c
    xor $ef                                       ; $73d2: $ee $ef
    ld c, l                                       ; $73d4: $4d
    ld c, [hl]                                    ; $73d5: $4e
    ldh a, [$ed]                                  ; $73d6: $f0 $ed
    inc b                                         ; $73d8: $04
    dec b                                         ; $73d9: $05
    ld [bc], a                                    ; $73da: $02
    inc b                                         ; $73db: $04
    ld [bc], a                                    ; $73dc: $02
    inc b                                         ; $73dd: $04
    inc b                                         ; $73de: $04
    dec b                                         ; $73df: $05
    dec b                                         ; $73e0: $05
    ld [bc], a                                    ; $73e1: $02
    add b                                         ; $73e2: $80
    add b                                         ; $73e3: $80
    inc b                                         ; $73e4: $04
    ld [bc], a                                    ; $73e5: $02
    add b                                         ; $73e6: $80
    add b                                         ; $73e7: $80
    ld c, a                                       ; $73e8: $4f
    dec sp                                        ; $73e9: $3b
    ld b, e                                       ; $73ea: $43
    ld b, h                                       ; $73eb: $44
    ld d, b                                       ; $73ec: $50
    inc a                                         ; $73ed: $3c
    ld b, a                                       ; $73ee: $47
    xor $ef                                       ; $73ef: $ee $ef
    rst $28                                       ; $73f1: $ef
    rst $28                                       ; $73f2: $ef
    dec a                                         ; $73f3: $3d
    db $ed                                        ; $73f4: $ed
    db $ed                                        ; $73f5: $ed
    db $ed                                        ; $73f6: $ed
    db $ed                                        ; $73f7: $ed
    dec b                                         ; $73f8: $05
    dec b                                         ; $73f9: $05
    inc b                                         ; $73fa: $04
    ld [bc], a                                    ; $73fb: $02
    ld [bc], a                                    ; $73fc: $02
    dec b                                         ; $73fd: $05
    ld [bc], a                                    ; $73fe: $02
    add b                                         ; $73ff: $80
    add b                                         ; $7400: $80
    add b                                         ; $7401: $80
    add b                                         ; $7402: $80
    add b                                         ; $7403: $80
    add b                                         ; $7404: $80
    add b                                         ; $7405: $80
    add b                                         ; $7406: $80
    add b                                         ; $7407: $80
    ld b, l                                       ; $7408: $45
    ldh a, [$3a]                                  ; $7409: $f0 $3a
    db $ed                                        ; $740b: $ed
    rst $28                                       ; $740c: $ef
    dec a                                         ; $740d: $3d
    ld a, [hl-]                                   ; $740e: $3a
    db $ed                                        ; $740f: $ed
    db $ed                                        ; $7410: $ed
    db $ed                                        ; $7411: $ed
    db $ed                                        ; $7412: $ed
    db $ed                                        ; $7413: $ed
    db $ed                                        ; $7414: $ed
    db $ed                                        ; $7415: $ed
    db $ed                                        ; $7416: $ed
    db $ed                                        ; $7417: $ed
    rlca                                          ; $7418: $07
    add b                                         ; $7419: $80
    add b                                         ; $741a: $80
    add b                                         ; $741b: $80
    add b                                         ; $741c: $80
    add b                                         ; $741d: $80
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
    ld d, c                                       ; $7428: $51
    ld d, d                                       ; $7429: $52
    ld d, e                                       ; $742a: $53
    dec h                                         ; $742b: $25
    ld d, h                                       ; $742c: $54
    ld d, l                                       ; $742d: $55
    ld d, [hl]                                    ; $742e: $56
    ld h, $57                                     ; $742f: $26 $57
    ld e, b                                       ; $7431: $58
    ld e, c                                       ; $7432: $59
    dec sp                                        ; $7433: $3b
    ld e, d                                       ; $7434: $5a
    ld e, e                                       ; $7435: $5b
    ld e, h                                       ; $7436: $5c
    inc a                                         ; $7437: $3c
    ld bc, $0101                                  ; $7438: $01 $01 $01
    rlca                                          ; $743b: $07
    ld bc, $0101                                  ; $743c: $01 $01 $01

jr_07d_743f:
    rlca                                          ; $743f: $07
    ld bc, $0101                                  ; $7440: $01 $01 $01
    rlca                                          ; $7443: $07
    ld bc, $0101                                  ; $7444: $01 $01 $01
    rlca                                          ; $7447: $07
    dec hl                                        ; $7448: $2b
    inc l                                         ; $7449: $2c
    ldh a, [$ed]                                  ; $744a: $f0 $ed
    cpl                                           ; $744c: $2f
    jr nc, jr_07d_743f                            ; $744d: $30 $f0

    db $ed                                        ; $744f: $ed
    ld b, e                                       ; $7450: $43
    ld b, h                                       ; $7451: $44
    ldh a, [$ed]                                  ; $7452: $f0 $ed
    ld b, a                                       ; $7454: $47
    ld c, b                                       ; $7455: $48
    ldh a, [$ed]                                  ; $7456: $f0 $ed
    ld [bc], a                                    ; $7458: $02
    rlca                                          ; $7459: $07
    add b                                         ; $745a: $80
    add b                                         ; $745b: $80
    dec b                                         ; $745c: $05
    rlca                                          ; $745d: $07
    add b                                         ; $745e: $80
    add b                                         ; $745f: $80
    ld [bc], a                                    ; $7460: $02
    rlca                                          ; $7461: $07
    add b                                         ; $7462: $80
    add b                                         ; $7463: $80
    inc b                                         ; $7464: $04
    rlca                                          ; $7465: $07
    add b                                         ; $7466: $80
    add b                                         ; $7467: $80
    db $ed                                        ; $7468: $ed
    db $ed                                        ; $7469: $ed
    db $ed                                        ; $746a: $ed
    xor $ed                                       ; $746b: $ee $ed
    db $ed                                        ; $746d: $ed
    db $ed                                        ; $746e: $ed
    ldh a, [$ed]                                  ; $746f: $f0 $ed
    db $ed                                        ; $7471: $ed
    db $ed                                        ; $7472: $ed
    ld [hl+], a                                   ; $7473: $22
    db $ed                                        ; $7474: $ed
    db $ed                                        ; $7475: $ed
    db $ed                                        ; $7476: $ed
    ld [hl+], a                                   ; $7477: $22
    add b                                         ; $7478: $80
    add b                                         ; $7479: $80
    add b                                         ; $747a: $80
    add b                                         ; $747b: $80
    add b                                         ; $747c: $80
    add b                                         ; $747d: $80
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
    rst $28                                       ; $7488: $ef
    dec a                                         ; $7489: $3d
    ld e, l                                       ; $748a: $5d
    ld a, $f7                                     ; $748b: $3e $f7
    rra                                           ; $748d: $1f
    ld e, [hl]                                    ; $748e: $5e
    ld b, d                                       ; $748f: $42
    ld hl, $3520                                  ; $7490: $21 $20 $35
    dec h                                         ; $7493: $25
    jr c, jr_07d_74c9                             ; $7494: $38 $33

    scf                                           ; $7496: $37
    ld h, $80                                     ; $7497: $26 $80
    add b                                         ; $7499: $80
    rlca                                          ; $749a: $07
    rlca                                          ; $749b: $07
    ld hl, $0721                                  ; $749c: $21 $21 $07
    ld [bc], a                                    ; $749f: $02
    ld hl, $0721                                  ; $74a0: $21 $21 $07
    inc b                                         ; $74a3: $04
    ld hl, $0721                                  ; $74a4: $21 $21 $07
    dec b                                         ; $74a7: $05
    ld c, e                                       ; $74a8: $4b
    ld c, h                                       ; $74a9: $4c
    ld e, a                                       ; $74aa: $5f
    ld h, b                                       ; $74ab: $60
    ld c, l                                       ; $74ac: $4d
    ld c, [hl]                                    ; $74ad: $4e
    ld h, c                                       ; $74ae: $61
    ld h, d                                       ; $74af: $62
    dec hl                                        ; $74b0: $2b
    inc l                                         ; $74b1: $2c
    dec l                                         ; $74b2: $2d
    ld l, $2f                                     ; $74b3: $2e $2f
    jr nc, jr_07d_74e8                            ; $74b5: $30 $31

    ld [hl-], a                                   ; $74b7: $32
    rlca                                          ; $74b8: $07
    rlca                                          ; $74b9: $07
    inc bc                                        ; $74ba: $03
    inc bc                                        ; $74bb: $03
    inc b                                         ; $74bc: $04
    inc b                                         ; $74bd: $04
    inc bc                                        ; $74be: $03
    rlca                                          ; $74bf: $07
    ld [bc], a                                    ; $74c0: $02
    dec b                                         ; $74c1: $05
    rlca                                          ; $74c2: $07
    rlca                                          ; $74c3: $07
    ld [bc], a                                    ; $74c4: $02
    inc b                                         ; $74c5: $04
    ld [bc], a                                    ; $74c6: $02
    ld [bc], a                                    ; $74c7: $02
    ld h, e                                       ; $74c8: $63

jr_07d_74c9:
    ld h, h                                       ; $74c9: $64
    ld h, l                                       ; $74ca: $65
    ld h, [hl]                                    ; $74cb: $66
    ld e, [hl]                                    ; $74cc: $5e
    ld b, d                                       ; $74cd: $42
    ld h, a                                       ; $74ce: $67
    ld l, b                                       ; $74cf: $68
    dec [hl]                                      ; $74d0: $35
    dec h                                         ; $74d1: $25
    dec hl                                        ; $74d2: $2b
    inc l                                         ; $74d3: $2c
    scf                                           ; $74d4: $37
    ld h, $2f                                     ; $74d5: $26 $2f
    jr nc, jr_07d_74dc                            ; $74d7: $30 $03

    inc bc                                        ; $74d9: $03
    inc bc                                        ; $74da: $03
    rlca                                          ; $74db: $07

jr_07d_74dc:
    rlca                                          ; $74dc: $07
    rlca                                          ; $74dd: $07
    inc bc                                        ; $74de: $03
    rlca                                          ; $74df: $07
    rlca                                          ; $74e0: $07
    rlca                                          ; $74e1: $07
    rlca                                          ; $74e2: $07
    rlca                                          ; $74e3: $07
    inc b                                         ; $74e4: $04
    ld [bc], a                                    ; $74e5: $02
    dec b                                         ; $74e6: $05
    ld [bc], a                                    ; $74e7: $02

jr_07d_74e8:
    db $ed                                        ; $74e8: $ed
    db $ed                                        ; $74e9: $ed
    db $ed                                        ; $74ea: $ed
    ld [hl+], a                                   ; $74eb: $22
    db $ed                                        ; $74ec: $ed
    db $ed                                        ; $74ed: $ed
    db $ed                                        ; $74ee: $ed
    ld [hl+], a                                   ; $74ef: $22
    db $ed                                        ; $74f0: $ed
    db $ed                                        ; $74f1: $ed
    ld a, [hl-]                                   ; $74f2: $3a
    ld [hl+], a                                   ; $74f3: $22
    db $ed                                        ; $74f4: $ed
    db $ed                                        ; $74f5: $ed
    ld a, [hl-]                                   ; $74f6: $3a
    ldh a, [$80]                                  ; $74f7: $f0 $80
    add b                                         ; $74f9: $80
    add b                                         ; $74fa: $80
    add b                                         ; $74fb: $80
    add b                                         ; $74fc: $80
    add b                                         ; $74fd: $80
    add b                                         ; $74fe: $80
    add b                                         ; $74ff: $80
    add b                                         ; $7500: $80
    add b                                         ; $7501: $80
    and b                                         ; $7502: $a0
    add b                                         ; $7503: $80
    add b                                         ; $7504: $80
    add b                                         ; $7505: $80
    and b                                         ; $7506: $a0
    add b                                         ; $7507: $80
    add hl, sp                                    ; $7508: $39
    inc [hl]                                      ; $7509: $34
    ld c, a                                       ; $750a: $4f
    dec sp                                        ; $750b: $3b
    add hl, hl                                    ; $750c: $29
    ld [hl], $50                                  ; $750d: $36 $50
    inc a                                         ; $750f: $3c
    ld l, c                                       ; $7510: $69
    ld l, d                                       ; $7511: $6a
    ld e, l                                       ; $7512: $5d
    ld a, $6b                                     ; $7513: $3e $6b
    ld h, d                                       ; $7515: $62
    ld e, [hl]                                    ; $7516: $5e
    ld b, d                                       ; $7517: $42
    ld hl, $0721                                  ; $7518: $21 $21 $07
    inc b                                         ; $751b: $04
    ld hl, $0721                                  ; $751c: $21 $21 $07
    ld [bc], a                                    ; $751f: $02
    rlca                                          ; $7520: $07
    rlca                                          ; $7521: $07
    rlca                                          ; $7522: $07
    ld [bc], a                                    ; $7523: $02
    rlca                                          ; $7524: $07
    ld [bc], a                                    ; $7525: $02
    dec b                                         ; $7526: $05
    inc b                                         ; $7527: $04
    ld b, e                                       ; $7528: $43
    ld b, h                                       ; $7529: $44
    ld b, l                                       ; $752a: $45
    ld b, [hl]                                    ; $752b: $46
    ld b, a                                       ; $752c: $47
    ld c, b                                       ; $752d: $48
    ld l, h                                       ; $752e: $6c
    ld l, l                                       ; $752f: $6d
    ld c, e                                       ; $7530: $4b
    ld c, h                                       ; $7531: $4c
    ld l, [hl]                                    ; $7532: $6e
    ld l, a                                       ; $7533: $6f
    ld c, l                                       ; $7534: $4d
    ld c, [hl]                                    ; $7535: $4e
    ld l, e                                       ; $7536: $6b
    ld h, d                                       ; $7537: $62
    dec b                                         ; $7538: $05
    inc b                                         ; $7539: $04
    inc b                                         ; $753a: $04
    dec b                                         ; $753b: $05
    inc b                                         ; $753c: $04
    ld [bc], a                                    ; $753d: $02
    dec b                                         ; $753e: $05
    inc b                                         ; $753f: $04
    dec b                                         ; $7540: $05
    ld [bc], a                                    ; $7541: $02
    dec b                                         ; $7542: $05
    ld [bc], a                                    ; $7543: $02
    ld [bc], a                                    ; $7544: $02
    dec b                                         ; $7545: $05
    ld [bc], a                                    ; $7546: $02
    inc b                                         ; $7547: $04
    ld c, a                                       ; $7548: $4f
    dec sp                                        ; $7549: $3b
    ld b, e                                       ; $754a: $43
    ld b, h                                       ; $754b: $44
    ld [hl], b                                    ; $754c: $70
    ld [hl], c                                    ; $754d: $71
    ld [hl], d                                    ; $754e: $72
    ld [hl], e                                    ; $754f: $73
    ld [hl], h                                    ; $7550: $74
    ld [hl], l                                    ; $7551: $75
    halt                                          ; $7552: $76
    ld [hl], a                                    ; $7553: $77
    ld e, [hl]                                    ; $7554: $5e
    ld b, d                                       ; $7555: $42
    ld c, l                                       ; $7556: $4d
    ld c, [hl]                                    ; $7557: $4e
    dec b                                         ; $7558: $05
    inc b                                         ; $7559: $04
    inc b                                         ; $755a: $04
    dec b                                         ; $755b: $05
    inc b                                         ; $755c: $04
    ld [bc], a                                    ; $755d: $02
    ld [bc], a                                    ; $755e: $02
    ld [bc], a                                    ; $755f: $02
    dec b                                         ; $7560: $05
    dec b                                         ; $7561: $05
    inc b                                         ; $7562: $04
    ld [bc], a                                    ; $7563: $02
    inc b                                         ; $7564: $04
    ld [bc], a                                    ; $7565: $02
    dec b                                         ; $7566: $05
    inc b                                         ; $7567: $04
    db $ed                                        ; $7568: $ed
    db $ed                                        ; $7569: $ed
    ld a, [hl-]                                   ; $756a: $3a
    ld e, $ed                                     ; $756b: $1e $ed
    db $ed                                        ; $756d: $ed
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
    add b                                         ; $7578: $80
    add b                                         ; $7579: $80
    and b                                         ; $757a: $a0
    add b                                         ; $757b: $80
    add b                                         ; $757c: $80
    add b                                         ; $757d: $80
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
    rst $28                                       ; $7588: $ef
    dec e                                         ; $7589: $1d
    ld a, b                                       ; $758a: $78
    dec h                                         ; $758b: $25
    db $ed                                        ; $758c: $ed
    ldh a, [$79]                                  ; $758d: $f0 $79
    ld a, d                                       ; $758f: $7a
    db $ed                                        ; $7590: $ed
    ldh a, [$7b]                                  ; $7591: $f0 $7b
    ld a, h                                       ; $7593: $7c
    db $ed                                        ; $7594: $ed
    ldh a, [$50]                                  ; $7595: $f0 $50
    inc a                                         ; $7597: $3c
    add b                                         ; $7598: $80
    add b                                         ; $7599: $80
    inc b                                         ; $759a: $04
    ld [bc], a                                    ; $759b: $02
    add b                                         ; $759c: $80
    add b                                         ; $759d: $80
    ld [bc], a                                    ; $759e: $02
    dec b                                         ; $759f: $05
    add b                                         ; $75a0: $80
    add b                                         ; $75a1: $80
    rlca                                          ; $75a2: $07
    ld [bc], a                                    ; $75a3: $02
    add b                                         ; $75a4: $80
    add b                                         ; $75a5: $80
    rlca                                          ; $75a6: $07
    inc b                                         ; $75a7: $04
    dec hl                                        ; $75a8: $2b
    inc l                                         ; $75a9: $2c
    dec l                                         ; $75aa: $2d
    ld l, $7d                                     ; $75ab: $2e $7d
    jr nc, jr_07d_75e0                            ; $75ad: $30 $31

    ld [hl-], a                                   ; $75af: $32
    ld a, [hl]                                    ; $75b0: $7e
    ld b, h                                       ; $75b1: $44
    ld b, l                                       ; $75b2: $45
    ld b, [hl]                                    ; $75b3: $46
    ld b, a                                       ; $75b4: $47
    ld c, b                                       ; $75b5: $48
    ld c, c                                       ; $75b6: $49
    ld c, d                                       ; $75b7: $4a
    ld [bc], a                                    ; $75b8: $02
    ld [bc], a                                    ; $75b9: $02
    inc b                                         ; $75ba: $04
    dec b                                         ; $75bb: $05
    inc b                                         ; $75bc: $04
    ld [bc], a                                    ; $75bd: $02
    ld [bc], a                                    ; $75be: $02
    inc b                                         ; $75bf: $04
    inc b                                         ; $75c0: $04
    inc b                                         ; $75c1: $04
    dec b                                         ; $75c2: $05
    inc b                                         ; $75c3: $04
    ld [bc], a                                    ; $75c4: $02
    dec b                                         ; $75c5: $05
    inc b                                         ; $75c6: $04
    ld [bc], a                                    ; $75c7: $02
    dec [hl]                                      ; $75c8: $35
    dec h                                         ; $75c9: $25
    dec hl                                        ; $75ca: $2b
    inc l                                         ; $75cb: $2c
    scf                                           ; $75cc: $37
    ld h, $2f                                     ; $75cd: $26 $2f
    jr nc, jr_07d_7620                            ; $75cf: $30 $4f

    dec sp                                        ; $75d1: $3b
    ld b, e                                       ; $75d2: $43
    ld b, h                                       ; $75d3: $44
    ld d, b                                       ; $75d4: $50
    inc a                                         ; $75d5: $3c
    ld b, a                                       ; $75d6: $47
    ld c, b                                       ; $75d7: $48
    ld [bc], a                                    ; $75d8: $02
    ld [bc], a                                    ; $75d9: $02
    ld [bc], a                                    ; $75da: $02
    inc b                                         ; $75db: $04
    ld [bc], a                                    ; $75dc: $02
    dec b                                         ; $75dd: $05
    ld [bc], a                                    ; $75de: $02
    dec b                                         ; $75df: $05

jr_07d_75e0:
    dec b                                         ; $75e0: $05
    inc b                                         ; $75e1: $04
    ld [bc], a                                    ; $75e2: $02
    dec b                                         ; $75e3: $05
    ld [bc], a                                    ; $75e4: $02
    inc b                                         ; $75e5: $04
    dec b                                         ; $75e6: $05
    inc b                                         ; $75e7: $04
    db $ed                                        ; $75e8: $ed
    ld e, $ef                                     ; $75e9: $1e $ef
    rst $28                                       ; $75eb: $ef
    db $ed                                        ; $75ec: $ed
    db $ed                                        ; $75ed: $ed
    db $ed                                        ; $75ee: $ed
    db $ed                                        ; $75ef: $ed
    db $ed                                        ; $75f0: $ed
    db $ed                                        ; $75f1: $ed
    db $ed                                        ; $75f2: $ed
    db $ed                                        ; $75f3: $ed
    db $ed                                        ; $75f4: $ed
    db $ed                                        ; $75f5: $ed
    db $ed                                        ; $75f6: $ed
    db $ed                                        ; $75f7: $ed
    add b                                         ; $75f8: $80
    add b                                         ; $75f9: $80
    add b                                         ; $75fa: $80
    add b                                         ; $75fb: $80
    add b                                         ; $75fc: $80
    add b                                         ; $75fd: $80
    add b                                         ; $75fe: $80
    add b                                         ; $75ff: $80
    add b                                         ; $7600: $80
    add b                                         ; $7601: $80
    add b                                         ; $7602: $80
    add b                                         ; $7603: $80
    add b                                         ; $7604: $80
    add b                                         ; $7605: $80
    add b                                         ; $7606: $80
    add b                                         ; $7607: $80
    rst $28                                       ; $7608: $ef
    rst $28                                       ; $7609: $ef
    rst $28                                       ; $760a: $ef
    rst $28                                       ; $760b: $ef
    db $ed                                        ; $760c: $ed
    db $ed                                        ; $760d: $ed
    db $ed                                        ; $760e: $ed
    db $ed                                        ; $760f: $ed
    db $ed                                        ; $7610: $ed
    db $ed                                        ; $7611: $ed
    db $ed                                        ; $7612: $ed
    db $ed                                        ; $7613: $ed
    db $ed                                        ; $7614: $ed
    db $ed                                        ; $7615: $ed
    db $ed                                        ; $7616: $ed
    db $ed                                        ; $7617: $ed
    add b                                         ; $7618: $80
    add b                                         ; $7619: $80
    add b                                         ; $761a: $80
    add b                                         ; $761b: $80
    add b                                         ; $761c: $80
    add b                                         ; $761d: $80
    add b                                         ; $761e: $80
    add b                                         ; $761f: $80

jr_07d_7620:
    add b                                         ; $7620: $80
    add b                                         ; $7621: $80
    add b                                         ; $7622: $80
    add b                                         ; $7623: $80
    add b                                         ; $7624: $80
    add b                                         ; $7625: $80
    add b                                         ; $7626: $80
    add b                                         ; $7627: $80
    ld a, a                                       ; $7628: $7f
    add b                                         ; $7629: $80
    add c                                         ; $762a: $81
    ld a, $82                                     ; $762b: $3e $82
    add e                                         ; $762d: $83
    add h                                         ; $762e: $84
    add l                                         ; $762f: $85
    add [hl]                                      ; $7630: $86
    add a                                         ; $7631: $87
    adc b                                         ; $7632: $88
    adc c                                         ; $7633: $89
    ld sp, $3732                                  ; $7634: $31 $32 $37
    ld h, $07                                     ; $7637: $26 $07
    rrca                                          ; $7639: $0f
    rrca                                          ; $763a: $0f
    rlca                                          ; $763b: $07
    ld a, [bc]                                    ; $763c: $0a
    inc c                                         ; $763d: $0c
    ld a, [bc]                                    ; $763e: $0a
    dec c                                         ; $763f: $0d
    ld a, [bc]                                    ; $7640: $0a
    dec c                                         ; $7641: $0d
    dec c                                         ; $7642: $0d
    ld a, [bc]                                    ; $7643: $0a
    inc b                                         ; $7644: $04
    dec b                                         ; $7645: $05
    inc b                                         ; $7646: $04

jr_07d_7647:
    dec b                                         ; $7647: $05
    ld c, e                                       ; $7648: $4b
    ld c, h                                       ; $7649: $4c
    ldh a, [$ed]                                  ; $764a: $f0 $ed
    ld c, l                                       ; $764c: $4d
    ld c, [hl]                                    ; $764d: $4e
    ldh a, [$ed]                                  ; $764e: $f0 $ed
    dec hl                                        ; $7650: $2b
    inc l                                         ; $7651: $2c
    ldh a, [$ed]                                  ; $7652: $f0 $ed
    cpl                                           ; $7654: $2f
    jr nc, jr_07d_7647                            ; $7655: $30 $f0

    db $ed                                        ; $7657: $ed
    dec b                                         ; $7658: $05
    rlca                                          ; $7659: $07
    add b                                         ; $765a: $80
    add b                                         ; $765b: $80
    inc b                                         ; $765c: $04
    rlca                                          ; $765d: $07
    add b                                         ; $765e: $80
    add b                                         ; $765f: $80
    ld [bc], a                                    ; $7660: $02
    rlca                                          ; $7661: $07
    add b                                         ; $7662: $80
    add b                                         ; $7663: $80
    ld [bc], a                                    ; $7664: $02
    rlca                                          ; $7665: $07
    add b                                         ; $7666: $80
    add b                                         ; $7667: $80
    ld b, l                                       ; $7668: $45
    ld b, [hl]                                    ; $7669: $46
    ld c, a                                       ; $766a: $4f
    dec sp                                        ; $766b: $3b
    ld c, c                                       ; $766c: $49
    ld c, d                                       ; $766d: $4a
    ld d, b                                       ; $766e: $50
    inc a                                         ; $766f: $3c
    ld l, c                                       ; $7670: $69
    ld l, d                                       ; $7671: $6a
    ld e, l                                       ; $7672: $5d
    ld a, $6b                                     ; $7673: $3e $6b
    adc d                                         ; $7675: $8a
    adc e                                         ; $7676: $8b
    add l                                         ; $7677: $85
    ld [bc], a                                    ; $7678: $02
    inc b                                         ; $7679: $04
    ld [bc], a                                    ; $767a: $02
    ld [bc], a                                    ; $767b: $02
    inc b                                         ; $767c: $04
    ld [bc], a                                    ; $767d: $02
    dec b                                         ; $767e: $05
    inc b                                         ; $767f: $04
    inc b                                         ; $7680: $04
    ld [bc], a                                    ; $7681: $02
    dec b                                         ; $7682: $05
    dec b                                         ; $7683: $05
    ld [bc], a                                    ; $7684: $02
    dec c                                         ; $7685: $0d
    inc c                                         ; $7686: $0c
    ld a, [bc]                                    ; $7687: $0a
    ld b, e                                       ; $7688: $43
    ld b, h                                       ; $7689: $44
    ldh a, [$ed]                                  ; $768a: $f0 $ed
    ld b, a                                       ; $768c: $47
    ld c, b                                       ; $768d: $48
    ldh a, [$ed]                                  ; $768e: $f0 $ed
    ld c, e                                       ; $7690: $4b
    ld c, h                                       ; $7691: $4c
    ldh a, [$ed]                                  ; $7692: $f0 $ed
    ld c, l                                       ; $7694: $4d
    ld c, [hl]                                    ; $7695: $4e
    ldh a, [$ed]                                  ; $7696: $f0 $ed
    ld [bc], a                                    ; $7698: $02
    rlca                                          ; $7699: $07
    add b                                         ; $769a: $80
    add b                                         ; $769b: $80
    inc b                                         ; $769c: $04
    rlca                                          ; $769d: $07
    add b                                         ; $769e: $80
    add b                                         ; $769f: $80
    ld [bc], a                                    ; $76a0: $02
    rlca                                          ; $76a1: $07
    add b                                         ; $76a2: $80
    add b                                         ; $76a3: $80
    dec b                                         ; $76a4: $05
    rlca                                          ; $76a5: $07
    add b                                         ; $76a6: $80
    add b                                         ; $76a7: $80
    dec l                                         ; $76a8: $2d
    adc h                                         ; $76a9: $8c
    adc l                                         ; $76aa: $8d
    adc c                                         ; $76ab: $89
    ld sp, $8f8e                                  ; $76ac: $31 $8e $8f
    sub b                                         ; $76af: $90
    ld b, l                                       ; $76b0: $45
    ld b, [hl]                                    ; $76b1: $46
    sub c                                         ; $76b2: $91
    sub d                                         ; $76b3: $92
    ld c, c                                       ; $76b4: $49
    ld c, d                                       ; $76b5: $4a
    ld d, b                                       ; $76b6: $50
    inc a                                         ; $76b7: $3c
    inc b                                         ; $76b8: $04
    inc c                                         ; $76b9: $0c
    ld a, [bc]                                    ; $76ba: $0a
    dec c                                         ; $76bb: $0d
    dec b                                         ; $76bc: $05
    ld a, [bc]                                    ; $76bd: $0a
    dec c                                         ; $76be: $0d

jr_07d_76bf:
    inc c                                         ; $76bf: $0c
    inc b                                         ; $76c0: $04
    dec b                                         ; $76c1: $05
    inc c                                         ; $76c2: $0c
    inc c                                         ; $76c3: $0c
    dec b                                         ; $76c4: $05
    ld [bc], a                                    ; $76c5: $02
    dec b                                         ; $76c6: $05
    ld [bc], a                                    ; $76c7: $02
    dec hl                                        ; $76c8: $2b
    inc l                                         ; $76c9: $2c
    ldh a, [$ed]                                  ; $76ca: $f0 $ed
    cpl                                           ; $76cc: $2f
    jr nc, jr_07d_76bf                            ; $76cd: $30 $f0

    db $ed                                        ; $76cf: $ed
    ld b, e                                       ; $76d0: $43
    ld b, h                                       ; $76d1: $44
    ldh a, [$ed]                                  ; $76d2: $f0 $ed
    ld b, a                                       ; $76d4: $47
    ld c, b                                       ; $76d5: $48
    ldh a, [$ed]                                  ; $76d6: $f0 $ed
    inc b                                         ; $76d8: $04
    rlca                                          ; $76d9: $07
    add b                                         ; $76da: $80
    add b                                         ; $76db: $80
    ld [bc], a                                    ; $76dc: $02
    rlca                                          ; $76dd: $07
    add b                                         ; $76de: $80
    add b                                         ; $76df: $80
    dec b                                         ; $76e0: $05
    rlca                                          ; $76e1: $07
    add b                                         ; $76e2: $80
    add b                                         ; $76e3: $80
    inc b                                         ; $76e4: $04
    rlca                                          ; $76e5: $07
    add b                                         ; $76e6: $80
    add b                                         ; $76e7: $80
    rst $28                                       ; $76e8: $ef
    rst $28                                       ; $76e9: $ef
    dec a                                         ; $76ea: $3d
    db $ed                                        ; $76eb: $ed
    db $ed                                        ; $76ec: $ed
    db $ed                                        ; $76ed: $ed
    db $ed                                        ; $76ee: $ed
    db $ed                                        ; $76ef: $ed
    db $ed                                        ; $76f0: $ed
    db $ed                                        ; $76f1: $ed
    db $ed                                        ; $76f2: $ed
    db $ed                                        ; $76f3: $ed
    db $ed                                        ; $76f4: $ed
    db $ed                                        ; $76f5: $ed
    db $ed                                        ; $76f6: $ed
    db $ed                                        ; $76f7: $ed
    add b                                         ; $76f8: $80
    add b                                         ; $76f9: $80
    add b                                         ; $76fa: $80
    add b                                         ; $76fb: $80
    add b                                         ; $76fc: $80
    add b                                         ; $76fd: $80
    add b                                         ; $76fe: $80
    add b                                         ; $76ff: $80
    add b                                         ; $7700: $80
    add b                                         ; $7701: $80
    add b                                         ; $7702: $80
    add b                                         ; $7703: $80
    add b                                         ; $7704: $80
    add b                                         ; $7705: $80
    add b                                         ; $7706: $80
    add b                                         ; $7707: $80
    ld b, $00                                     ; $7708: $06 $00
    rlca                                          ; $770a: $07
    nop                                           ; $770b: $00
    ldh [rDIV], a                                 ; $770c: $e0 $04
    db $ed                                        ; $770e: $ed
    db $ed                                        ; $770f: $ed
    db $ed                                        ; $7710: $ed
    db $ed                                        ; $7711: $ed
    db $ed                                        ; $7712: $ed
    db $ed                                        ; $7713: $ed
    db $ed                                        ; $7714: $ed
    db $ed                                        ; $7715: $ed
    db $ed                                        ; $7716: $ed
    db $ed                                        ; $7717: $ed
    db $ed                                        ; $7718: $ed
    db $ed                                        ; $7719: $ed
    db $ed                                        ; $771a: $ed
    db $ed                                        ; $771b: $ed
    db $ed                                        ; $771c: $ed
    db $ed                                        ; $771d: $ed
    add b                                         ; $771e: $80
    add b                                         ; $771f: $80
    add b                                         ; $7720: $80
    add b                                         ; $7721: $80
    add b                                         ; $7722: $80
    add b                                         ; $7723: $80
    add b                                         ; $7724: $80
    add b                                         ; $7725: $80
    add b                                         ; $7726: $80
    add b                                         ; $7727: $80
    add b                                         ; $7728: $80
    add b                                         ; $7729: $80
    add b                                         ; $772a: $80
    add b                                         ; $772b: $80
    add b                                         ; $772c: $80
    add b                                         ; $772d: $80
    xor $ef                                       ; $772e: $ee $ef
    db $ed                                        ; $7730: $ed
    ldh a, [$ee]                                  ; $7731: $f0 $ee
    pop af                                        ; $7733: $f1
    ld a, [c]                                     ; $7734: $f2
    di                                            ; $7735: $f3
    xor $f4                                       ; $7736: $ee $f4
    push af                                       ; $7738: $f5
    di                                            ; $7739: $f3
    xor $f3                                       ; $773a: $ee $f3
    or $f3                                        ; $773c: $f6 $f3
    add b                                         ; $773e: $80
    inc b                                         ; $773f: $04
    inc bc                                        ; $7740: $03
    inc b                                         ; $7741: $04
    add b                                         ; $7742: $80
    inc b                                         ; $7743: $04
    inc bc                                        ; $7744: $03
    inc b                                         ; $7745: $04
    add b                                         ; $7746: $80
    inc b                                         ; $7747: $04
    inc bc                                        ; $7748: $03
    inc b                                         ; $7749: $04
    add b                                         ; $774a: $80
    inc b                                         ; $774b: $04
    inc bc                                        ; $774c: $03
    inc b                                         ; $774d: $04
    rst $30                                       ; $774e: $f7
    ld hl, sp-$0d                                 ; $774f: $f8 $f3
    ld sp, hl                                     ; $7751: $f9
    ld a, [$f3fb]                                 ; $7752: $fa $fb $f3
    db $fc                                        ; $7755: $fc
    db $fd                                        ; $7756: $fd
    cp $f3                                        ; $7757: $fe $f3
    rst $38                                       ; $7759: $ff
    nop                                           ; $775a: $00
    ld bc, $02f3                                  ; $775b: $01 $f3 $02
    inc bc                                        ; $775e: $03
    inc bc                                        ; $775f: $03
    inc b                                         ; $7760: $04
    inc bc                                        ; $7761: $03
    inc bc                                        ; $7762: $03
    inc bc                                        ; $7763: $03
    inc b                                         ; $7764: $04
    inc bc                                        ; $7765: $03
    inc bc                                        ; $7766: $03
    inc bc                                        ; $7767: $03
    inc b                                         ; $7768: $04
    inc bc                                        ; $7769: $03
    inc bc                                        ; $776a: $03
    inc bc                                        ; $776b: $03
    inc b                                         ; $776c: $04
    inc bc                                        ; $776d: $03
    inc bc                                        ; $776e: $03
    inc b                                         ; $776f: $04
    dec b                                         ; $7770: $05
    ld b, $07                                     ; $7771: $06 $07
    inc b                                         ; $7773: $04
    ld [$0a09], sp                                ; $7774: $08 $09 $0a
    inc b                                         ; $7777: $04
    dec bc                                        ; $7778: $0b
    inc c                                         ; $7779: $0c
    dec c                                         ; $777a: $0d
    inc b                                         ; $777b: $04
    ld c, $0f                                     ; $777c: $0e $0f
    inc bc                                        ; $777e: $03
    inc b                                         ; $777f: $04
    inc bc                                        ; $7780: $03
    inc bc                                        ; $7781: $03
    inc bc                                        ; $7782: $03
    inc b                                         ; $7783: $04
    inc bc                                        ; $7784: $03
    inc bc                                        ; $7785: $03
    inc bc                                        ; $7786: $03
    inc b                                         ; $7787: $04
    inc bc                                        ; $7788: $03
    inc bc                                        ; $7789: $03
    inc bc                                        ; $778a: $03
    inc b                                         ; $778b: $04
    inc bc                                        ; $778c: $03
    inc bc                                        ; $778d: $03
    xor $f3                                       ; $778e: $ee $f3
    db $10                                        ; $7790: $10
    di                                            ; $7791: $f3
    xor $f3                                       ; $7792: $ee $f3
    ld de, $ee12                                  ; $7794: $11 $12 $ee
    di                                            ; $7797: $f3
    inc de                                        ; $7798: $13
    inc d                                         ; $7799: $14
    xor $12                                       ; $779a: $ee $12
    dec d                                         ; $779c: $15
    ld d, $80                                     ; $779d: $16 $80
    inc b                                         ; $779f: $04
    inc bc                                        ; $77a0: $03
    inc b                                         ; $77a1: $04
    add b                                         ; $77a2: $80
    inc b                                         ; $77a3: $04
    inc bc                                        ; $77a4: $03
    inc b                                         ; $77a5: $04
    add b                                         ; $77a6: $80
    inc b                                         ; $77a7: $04
    inc bc                                        ; $77a8: $03
    inc bc                                        ; $77a9: $03
    add b                                         ; $77aa: $80
    inc b                                         ; $77ab: $04
    inc bc                                        ; $77ac: $03
    inc bc                                        ; $77ad: $03
    rla                                           ; $77ae: $17
    jr jr_07d_77ca                                ; $77af: $18 $19

    ld a, [de]                                    ; $77b1: $1a
    dec de                                        ; $77b2: $1b
    inc e                                         ; $77b3: $1c
    dec e                                         ; $77b4: $1d
    ld e, $1f                                     ; $77b5: $1e $1f
    jr nz, jr_07d_77da                            ; $77b7: $20 $21

    ld [hl+], a                                   ; $77b9: $22
    inc hl                                        ; $77ba: $23
    inc h                                         ; $77bb: $24
    dec h                                         ; $77bc: $25
    ld h, $03                                     ; $77bd: $26 $03
    inc bc                                        ; $77bf: $03
    inc b                                         ; $77c0: $04
    inc bc                                        ; $77c1: $03
    inc bc                                        ; $77c2: $03
    inc bc                                        ; $77c3: $03
    inc bc                                        ; $77c4: $03
    inc bc                                        ; $77c5: $03
    inc bc                                        ; $77c6: $03
    inc bc                                        ; $77c7: $03
    inc bc                                        ; $77c8: $03
    inc bc                                        ; $77c9: $03

jr_07d_77ca:
    dec b                                         ; $77ca: $05
    ld b, $02                                     ; $77cb: $06 $02
    dec b                                         ; $77cd: $05
    daa                                           ; $77ce: $27
    jr z, jr_07d_77fa                             ; $77cf: $28 $29

    ld a, [hl+]                                   ; $77d1: $2a
    dec hl                                        ; $77d2: $2b
    inc l                                         ; $77d3: $2c
    dec l                                         ; $77d4: $2d
    ld e, $2e                                     ; $77d5: $1e $2e
    cpl                                           ; $77d7: $2f
    jr nc, jr_07d_77fc                            ; $77d8: $30 $22

jr_07d_77da:
    ld sp, $3332                                  ; $77da: $31 $32 $33
    inc [hl]                                      ; $77dd: $34
    inc bc                                        ; $77de: $03
    inc b                                         ; $77df: $04
    inc bc                                        ; $77e0: $03
    inc bc                                        ; $77e1: $03
    inc bc                                        ; $77e2: $03
    inc bc                                        ; $77e3: $03
    inc bc                                        ; $77e4: $03
    inc hl                                        ; $77e5: $23
    inc bc                                        ; $77e6: $03
    inc bc                                        ; $77e7: $03
    inc bc                                        ; $77e8: $03
    inc hl                                        ; $77e9: $23
    ld b, $05                                     ; $77ea: $06 $05
    dec b                                         ; $77ec: $05
    dec b                                         ; $77ed: $05
    xor $35                                       ; $77ee: $ee $35
    ld [hl], $37                                  ; $77f0: $36 $37
    xor $38                                       ; $77f2: $ee $38
    add hl, sp                                    ; $77f4: $39
    ld a, [hl-]                                   ; $77f5: $3a
    xor $3b                                       ; $77f6: $ee $3b
    inc a                                         ; $77f8: $3c
    dec a                                         ; $77f9: $3d

jr_07d_77fa:
    xor $3e                                       ; $77fa: $ee $3e

jr_07d_77fc:
    ccf                                           ; $77fc: $3f
    ld b, b                                       ; $77fd: $40
    add b                                         ; $77fe: $80
    inc bc                                        ; $77ff: $03
    inc bc                                        ; $7800: $03
    inc bc                                        ; $7801: $03
    add b                                         ; $7802: $80
    inc bc                                        ; $7803: $03
    inc bc                                        ; $7804: $03
    inc bc                                        ; $7805: $03
    add b                                         ; $7806: $80
    rlca                                          ; $7807: $07
    ld b, $05                                     ; $7808: $06 $05
    add b                                         ; $780a: $80
    rlca                                          ; $780b: $07
    dec b                                         ; $780c: $05
    ld b, $41                                     ; $780d: $06 $41
    ld b, d                                       ; $780f: $42
    ld b, e                                       ; $7810: $43
    ld b, h                                       ; $7811: $44
    ld b, l                                       ; $7812: $45
    ld b, [hl]                                    ; $7813: $46
    ld b, a                                       ; $7814: $47
    ld c, b                                       ; $7815: $48
    ld c, c                                       ; $7816: $49
    ld c, d                                       ; $7817: $4a
    ld c, e                                       ; $7818: $4b
    ld c, h                                       ; $7819: $4c
    ld c, l                                       ; $781a: $4d
    ld c, [hl]                                    ; $781b: $4e
    ld c, a                                       ; $781c: $4f
    ld d, b                                       ; $781d: $50
    ld b, $02                                     ; $781e: $06 $02
    dec b                                         ; $7820: $05
    dec b                                         ; $7821: $05
    dec b                                         ; $7822: $05
    ld b, $05                                     ; $7823: $06 $05
    dec b                                         ; $7825: $05
    ld b, $02                                     ; $7826: $06 $02
    dec b                                         ; $7828: $05
    add c                                         ; $7829: $81
    dec b                                         ; $782a: $05
    dec b                                         ; $782b: $05
    dec b                                         ; $782c: $05
    ld bc, $5251                                  ; $782d: $01 $51 $52
    ld d, e                                       ; $7830: $53
    ld d, h                                       ; $7831: $54
    ld d, l                                       ; $7832: $55
    ld d, [hl]                                    ; $7833: $56
    ld d, l                                       ; $7834: $55
    ld d, a                                       ; $7835: $57
    ld e, b                                       ; $7836: $58
    ld e, c                                       ; $7837: $59
    ld e, b                                       ; $7838: $58
    ld c, h                                       ; $7839: $4c
    ld e, d                                       ; $783a: $5a
    ld e, e                                       ; $783b: $5b
    ld e, d                                       ; $783c: $5a
    ld d, b                                       ; $783d: $50
    dec b                                         ; $783e: $05
    add c                                         ; $783f: $81
    dec b                                         ; $7840: $05
    dec b                                         ; $7841: $05
    add c                                         ; $7842: $81
    add c                                         ; $7843: $81
    and c                                         ; $7844: $a1
    dec b                                         ; $7845: $05
    add c                                         ; $7846: $81
    add c                                         ; $7847: $81
    and c                                         ; $7848: $a1
    and c                                         ; $7849: $a1
    nop                                           ; $784a: $00
    nop                                           ; $784b: $00
    jr nz, jr_07d_786f                            ; $784c: $20 $21

    db $ed                                        ; $784e: $ed
    ld e, h                                       ; $784f: $5c
    ld e, l                                       ; $7850: $5d
    ld e, l                                       ; $7851: $5d
    db $ed                                        ; $7852: $ed
    xor $f9                                       ; $7853: $ee $f9
    inc bc                                        ; $7855: $03
    db $ed                                        ; $7856: $ed
    ld e, [hl]                                    ; $7857: $5e
    db $fc                                        ; $7858: $fc
    rlca                                          ; $7859: $07
    db $ed                                        ; $785a: $ed
    ld e, [hl]                                    ; $785b: $5e
    rst $38                                       ; $785c: $ff
    ld a, [bc]                                    ; $785d: $0a
    add b                                         ; $785e: $80
    add b                                         ; $785f: $80
    add b                                         ; $7860: $80
    add b                                         ; $7861: $80
    add b                                         ; $7862: $80
    add b                                         ; $7863: $80
    inc bc                                        ; $7864: $03
    inc bc                                        ; $7865: $03
    add b                                         ; $7866: $80
    add b                                         ; $7867: $80
    inc bc                                        ; $7868: $03
    inc bc                                        ; $7869: $03
    add b                                         ; $786a: $80
    add b                                         ; $786b: $80
    inc bc                                        ; $786c: $03
    inc bc                                        ; $786d: $03
    ld e, a                                       ; $786e: $5f

jr_07d_786f:
    ld h, b                                       ; $786f: $60
    ld h, c                                       ; $7870: $61
    ld h, d                                       ; $7871: $62
    inc b                                         ; $7872: $04
    ld h, e                                       ; $7873: $63
    inc sp                                        ; $7874: $33
    inc [hl]                                      ; $7875: $34
    inc b                                         ; $7876: $04
    ld h, h                                       ; $7877: $64
    ld h, l                                       ; $7878: $65
    ld h, [hl]                                    ; $7879: $66
    inc b                                         ; $787a: $04
    ld h, a                                       ; $787b: $67
    ld l, b                                       ; $787c: $68
    ld l, c                                       ; $787d: $69
    add b                                         ; $787e: $80
    rlca                                          ; $787f: $07
    ld b, $02                                     ; $7880: $06 $02
    inc b                                         ; $7882: $04
    rlca                                          ; $7883: $07
    ld [bc], a                                    ; $7884: $02
    ld b, $04                                     ; $7885: $06 $04
    rlca                                          ; $7887: $07
    ld b, $06                                     ; $7888: $06 $06
    inc b                                         ; $788a: $04
    rlca                                          ; $788b: $07
    ld b, $05                                     ; $788c: $06 $05
    ld l, d                                       ; $788e: $6a
    ld l, e                                       ; $788f: $6b
    ld l, h                                       ; $7890: $6c
    ld l, l                                       ; $7891: $6d
    inc hl                                        ; $7892: $23
    inc h                                         ; $7893: $24
    ld l, [hl]                                    ; $7894: $6e
    ld l, a                                       ; $7895: $6f
    ld b, c                                       ; $7896: $41
    ld b, d                                       ; $7897: $42
    ld [hl], b                                    ; $7898: $70
    ld [hl], c                                    ; $7899: $71
    ld b, l                                       ; $789a: $45
    ld b, [hl]                                    ; $789b: $46
    ld [hl], d                                    ; $789c: $72
    ld [hl], e                                    ; $789d: $73
    ld b, $05                                     ; $789e: $06 $05
    dec b                                         ; $78a0: $05
    ld bc, $0605                                  ; $78a1: $01 $05 $06
    dec b                                         ; $78a4: $05
    ld bc, $0502                                  ; $78a5: $01 $02 $05
    dec b                                         ; $78a8: $05
    ld bc, $0206                                  ; $78a9: $01 $06 $02
    dec b                                         ; $78ac: $05
    ld bc, $7574                                  ; $78ad: $01 $74 $75
    halt                                          ; $78b0: $76
    ld l, l                                       ; $78b1: $6d
    ld [hl], a                                    ; $78b2: $77
    ld a, b                                       ; $78b3: $78
    ld a, c                                       ; $78b4: $79
    ld l, a                                       ; $78b5: $6f
    ld a, d                                       ; $78b6: $7a
    ld a, e                                       ; $78b7: $7b
    ld a, h                                       ; $78b8: $7c
    ld [hl], c                                    ; $78b9: $71
    ld a, l                                       ; $78ba: $7d
    ld a, [hl]                                    ; $78bb: $7e
    ld a, l                                       ; $78bc: $7d
    ld [hl], e                                    ; $78bd: $73
    nop                                           ; $78be: $00
    nop                                           ; $78bf: $00
    nop                                           ; $78c0: $00
    ld hl, $0000                                  ; $78c1: $21 $00 $00
    nop                                           ; $78c4: $00
    ld hl, $0000                                  ; $78c5: $21 $00 $00
    nop                                           ; $78c8: $00
    ld hl, $0101                                  ; $78c9: $21 $01 $01
    ld hl, $f321                                  ; $78cc: $21 $21 $f3
    ld hl, sp-$09                                 ; $78cf: $f8 $f7
    ldh a, [$f3]                                  ; $78d1: $f0 $f3
    ei                                            ; $78d3: $fb
    ld a, [$f3f3]                                 ; $78d4: $fa $f3 $f3
    cp $fd                                        ; $78d7: $fe $fd
    di                                            ; $78d9: $f3
    di                                            ; $78da: $f3
    ld bc, $f300                                  ; $78db: $01 $00 $f3
    inc h                                         ; $78de: $24
    inc hl                                        ; $78df: $23
    inc hl                                        ; $78e0: $23
    inc h                                         ; $78e1: $24
    inc h                                         ; $78e2: $24
    inc hl                                        ; $78e3: $23
    inc hl                                        ; $78e4: $23
    inc h                                         ; $78e5: $24
    inc h                                         ; $78e6: $24
    inc hl                                        ; $78e7: $23
    inc hl                                        ; $78e8: $23
    inc h                                         ; $78e9: $24
    inc h                                         ; $78ea: $24
    inc hl                                        ; $78eb: $23
    inc hl                                        ; $78ec: $23
    inc h                                         ; $78ed: $24
    db $ed                                        ; $78ee: $ed
    rst $28                                       ; $78ef: $ef
    xor $ed                                       ; $78f0: $ee $ed
    ld a, [c]                                     ; $78f2: $f2
    pop af                                        ; $78f3: $f1
    xor $ed                                       ; $78f4: $ee $ed
    push af                                       ; $78f6: $f5
    db $f4                                        ; $78f7: $f4
    xor $ed                                       ; $78f8: $ee $ed
    or $f3                                        ; $78fa: $f6 $f3
    xor $ed                                       ; $78fc: $ee $ed
    inc bc                                        ; $78fe: $03
    inc h                                         ; $78ff: $24
    add b                                         ; $7900: $80
    add b                                         ; $7901: $80
    inc hl                                        ; $7902: $23
    inc h                                         ; $7903: $24
    add b                                         ; $7904: $80
    add b                                         ; $7905: $80
    inc hl                                        ; $7906: $23
    inc h                                         ; $7907: $24
    add b                                         ; $7908: $80
    add b                                         ; $7909: $80
    inc hl                                        ; $790a: $23
    inc h                                         ; $790b: $24
    add b                                         ; $790c: $80
    add b                                         ; $790d: $80
    ld a, a                                       ; $790e: $7f
    jr jr_07d_7928                                ; $790f: $18 $17

    di                                            ; $7911: $f3
    dec e                                         ; $7912: $1d
    inc e                                         ; $7913: $1c
    dec de                                        ; $7914: $1b
    ld [de], a                                    ; $7915: $12
    ld hl, $1f20                                  ; $7916: $21 $20 $1f
    inc d                                         ; $7919: $14
    inc hl                                        ; $791a: $23
    inc h                                         ; $791b: $24
    dec h                                         ; $791c: $25
    ld d, $04                                     ; $791d: $16 $04
    inc hl                                        ; $791f: $23
    inc hl                                        ; $7920: $23
    inc h                                         ; $7921: $24
    inc hl                                        ; $7922: $23
    inc hl                                        ; $7923: $23
    inc hl                                        ; $7924: $23
    inc h                                         ; $7925: $24
    inc hl                                        ; $7926: $23
    inc hl                                        ; $7927: $23

jr_07d_7928:
    inc hl                                        ; $7928: $23
    inc hl                                        ; $7929: $23
    ld b, $05                                     ; $792a: $06 $05
    ld b, $23                                     ; $792c: $06 $23
    db $10                                        ; $792e: $10
    di                                            ; $792f: $f3
    xor $ed                                       ; $7930: $ee $ed
    ld de, $eef3                                  ; $7932: $11 $f3 $ee
    db $ed                                        ; $7935: $ed
    inc de                                        ; $7936: $13
    di                                            ; $7937: $f3
    xor $ed                                       ; $7938: $ee $ed
    dec d                                         ; $793a: $15
    ld [de], a                                    ; $793b: $12
    xor $ed                                       ; $793c: $ee $ed
    inc hl                                        ; $793e: $23
    inc h                                         ; $793f: $24
    add b                                         ; $7940: $80
    add b                                         ; $7941: $80
    inc hl                                        ; $7942: $23
    inc h                                         ; $7943: $24
    add b                                         ; $7944: $80
    add b                                         ; $7945: $80
    inc hl                                        ; $7946: $23
    inc h                                         ; $7947: $24
    add b                                         ; $7948: $80
    add b                                         ; $7949: $80
    inc hl                                        ; $794a: $23
    inc h                                         ; $794b: $24
    add b                                         ; $794c: $80
    add b                                         ; $794d: $80
    ld b, c                                       ; $794e: $41
    ld b, d                                       ; $794f: $42
    ld b, e                                       ; $7950: $43
    scf                                           ; $7951: $37
    add b                                         ; $7952: $80
    ld b, [hl]                                    ; $7953: $46
    add c                                         ; $7954: $81
    ld a, [hl-]                                   ; $7955: $3a
    add d                                         ; $7956: $82
    ld c, d                                       ; $7957: $4a
    ld c, e                                       ; $7958: $4b
    add e                                         ; $7959: $83
    add h                                         ; $795a: $84
    ld c, [hl]                                    ; $795b: $4e
    add l                                         ; $795c: $85
    add [hl]                                      ; $795d: $86
    ld [bc], a                                    ; $795e: $02
    ld b, $05                                     ; $795f: $06 $05
    inc hl                                        ; $7961: $23
    dec c                                         ; $7962: $0d

jr_07d_7963:
    dec b                                         ; $7963: $05
    ld c, $23                                     ; $7964: $0e $23
    dec c                                         ; $7966: $0d
    ld b, $06                                     ; $7967: $06 $06
    dec c                                         ; $7969: $0d
    dec c                                         ; $796a: $0d
    dec b                                         ; $796b: $05
    ld c, $0e                                     ; $796c: $0e $0e
    ld [hl], $35                                  ; $796e: $36 $35
    xor $ed                                       ; $7970: $ee $ed
    add hl, sp                                    ; $7972: $39
    jr c, jr_07d_7963                             ; $7973: $38 $ee

    db $ed                                        ; $7975: $ed
    add a                                         ; $7976: $87
    dec sp                                        ; $7977: $3b
    xor $ed                                       ; $7978: $ee $ed
    adc b                                         ; $797a: $88
    ld a, $ee                                     ; $797b: $3e $ee
    db $ed                                        ; $797d: $ed
    inc hl                                        ; $797e: $23
    inc hl                                        ; $797f: $23
    add b                                         ; $7980: $80
    add b                                         ; $7981: $80
    inc hl                                        ; $7982: $23
    inc hl                                        ; $7983: $23
    add b                                         ; $7984: $80
    add b                                         ; $7985: $80
    ld c, $07                                     ; $7986: $0e $07
    add b                                         ; $7988: $80
    add b                                         ; $7989: $80
    ld a, [bc]                                    ; $798a: $0a
    rlca                                          ; $798b: $07
    add b                                         ; $798c: $80
    add b                                         ; $798d: $80
    adc c                                         ; $798e: $89
    ld l, e                                       ; $798f: $6b
    adc d                                         ; $7990: $8a
    adc e                                         ; $7991: $8b
    adc h                                         ; $7992: $8c
    inc h                                         ; $7993: $24
    dec h                                         ; $7994: $25
    ld h, $8d                                     ; $7995: $26 $8d
    ld b, d                                       ; $7997: $42
    ld b, e                                       ; $7998: $43
    ld b, h                                       ; $7999: $44
    adc [hl]                                      ; $799a: $8e
    ld b, [hl]                                    ; $799b: $46
    add c                                         ; $799c: $81
    adc a                                         ; $799d: $8f
    dec c                                         ; $799e: $0d
    ld b, $0e                                     ; $799f: $06 $0e
    dec c                                         ; $79a1: $0d
    dec c                                         ; $79a2: $0d
    dec b                                         ; $79a3: $05
    ld b, $05                                     ; $79a4: $06 $05
    dec c                                         ; $79a6: $0d
    ld [bc], a                                    ; $79a7: $02
    ld [bc], a                                    ; $79a8: $02
    ld b, $0d                                     ; $79a9: $06 $0d
    ld b, $0e                                     ; $79ab: $06 $0e
    ld c, $90                                     ; $79ad: $0e $90
    ld h, b                                       ; $79af: $60
    xor $ed                                       ; $79b0: $ee $ed
    ld sp, $ee63                                  ; $79b2: $31 $63 $ee
    db $ed                                        ; $79b5: $ed
    sub c                                         ; $79b6: $91
    ld h, h                                       ; $79b7: $64
    xor $ed                                       ; $79b8: $ee $ed
    sub d                                         ; $79ba: $92
    ld h, a                                       ; $79bb: $67
    xor $ed                                       ; $79bc: $ee $ed
    ld a, [bc]                                    ; $79be: $0a
    rlca                                          ; $79bf: $07
    add b                                         ; $79c0: $80
    add b                                         ; $79c1: $80
    ld [bc], a                                    ; $79c2: $02
    rlca                                          ; $79c3: $07
    add b                                         ; $79c4: $80
    add b                                         ; $79c5: $80
    dec c                                         ; $79c6: $0d
    rlca                                          ; $79c7: $07
    add b                                         ; $79c8: $80
    add b                                         ; $79c9: $80
    dec c                                         ; $79ca: $0d
    rlca                                          ; $79cb: $07
    add b                                         ; $79cc: $80
    add b                                         ; $79cd: $80
    db $ed                                        ; $79ce: $ed
    ld e, [hl]                                    ; $79cf: $5e
    ld [bc], a                                    ; $79d0: $02
    dec c                                         ; $79d1: $0d
    db $ed                                        ; $79d2: $ed
    ld e, [hl]                                    ; $79d3: $5e
    ld a, [de]                                    ; $79d4: $1a
    daa                                           ; $79d5: $27
    sub e                                         ; $79d6: $93
    ld e, [hl]                                    ; $79d7: $5e
    adc d                                         ; $79d8: $8a
    adc e                                         ; $79d9: $8b
    sub e                                         ; $79da: $93
    xor $25                                       ; $79db: $ee $25
    ld h, $80                                     ; $79dd: $26 $80
    add b                                         ; $79df: $80
    inc bc                                        ; $79e0: $03
    inc bc                                        ; $79e1: $03
    add b                                         ; $79e2: $80
    add b                                         ; $79e3: $80
    inc bc                                        ; $79e4: $03
    inc bc                                        ; $79e5: $03
    adc b                                         ; $79e6: $88
    add b                                         ; $79e7: $80
    rrca                                          ; $79e8: $0f
    rrca                                          ; $79e9: $0f
    adc b                                         ; $79ea: $88
    add b                                         ; $79eb: $80
    rlca                                          ; $79ec: $07
    ld [bc], a                                    ; $79ed: $02
    inc b                                         ; $79ee: $04
    dec sp                                        ; $79ef: $3b
    inc a                                         ; $79f0: $3c
    dec a                                         ; $79f1: $3d
    jr z, jr_07d_7a32                             ; $79f2: $28 $3e

    ccf                                           ; $79f4: $3f
    ld b, b                                       ; $79f5: $40
    sub b                                         ; $79f6: $90
    ld h, b                                       ; $79f7: $60
    ld h, c                                       ; $79f8: $61
    ld h, d                                       ; $79f9: $62
    ld sp, $3363                                  ; $79fa: $31 $63 $33
    inc [hl]                                      ; $79fd: $34
    inc b                                         ; $79fe: $04
    rlca                                          ; $79ff: $07
    dec b                                         ; $7a00: $05
    ld b, $04                                     ; $7a01: $06 $04
    rlca                                          ; $7a03: $07
    ld [bc], a                                    ; $7a04: $02
    ld b, $0f                                     ; $7a05: $06 $0f
    rlca                                          ; $7a07: $07
    ld b, $06                                     ; $7a08: $06 $06
    dec b                                         ; $7a0a: $05
    ld b, $05                                     ; $7a0b: $06 $05
    ld b, $49                                     ; $7a0d: $06 $49
    ld c, d                                       ; $7a0f: $4a
    ld c, e                                       ; $7a10: $4b
    sub h                                         ; $7a11: $94
    ld c, l                                       ; $7a12: $4d
    ld c, [hl]                                    ; $7a13: $4e
    add l                                         ; $7a14: $85
    add [hl]                                      ; $7a15: $86
    ld l, d                                       ; $7a16: $6a
    ld l, e                                       ; $7a17: $6b
    adc d                                         ; $7a18: $8a
    adc e                                         ; $7a19: $8b
    inc hl                                        ; $7a1a: $23
    inc h                                         ; $7a1b: $24
    dec h                                         ; $7a1c: $25
    ld h, $02                                     ; $7a1d: $26 $02
    dec b                                         ; $7a1f: $05
    ld b, $0d                                     ; $7a20: $06 $0d
    dec b                                         ; $7a22: $05
    ld b, $0d                                     ; $7a23: $06 $0d
    dec c                                         ; $7a25: $0d
    ld b, $05                                     ; $7a26: $06 $05
    ld a, [bc]                                    ; $7a28: $0a
    dec c                                         ; $7a29: $0d
    dec b                                         ; $7a2a: $05
    ld [bc], a                                    ; $7a2b: $02
    dec b                                         ; $7a2c: $05
    ld [bc], a                                    ; $7a2d: $02
    sub l                                         ; $7a2e: $95
    sub [hl]                                      ; $7a2f: $96
    sub a                                         ; $7a30: $97
    sbc b                                         ; $7a31: $98

jr_07d_7a32:
    adc b                                         ; $7a32: $88
    ld a, $3f                                     ; $7a33: $3e $3f
    ld b, b                                       ; $7a35: $40
    sub b                                         ; $7a36: $90
    ld h, b                                       ; $7a37: $60
    ld h, c                                       ; $7a38: $61
    ld h, d                                       ; $7a39: $62
    ld sp, $3363                                  ; $7a3a: $31 $63 $33
    inc [hl]                                      ; $7a3d: $34
    dec c                                         ; $7a3e: $0d
    ld a, [bc]                                    ; $7a3f: $0a
    dec c                                         ; $7a40: $0d
    dec c                                         ; $7a41: $0d
    ld a, [bc]                                    ; $7a42: $0a
    dec b                                         ; $7a43: $05
    ld [bc], a                                    ; $7a44: $02
    dec b                                         ; $7a45: $05
    dec c                                         ; $7a46: $0d
    dec b                                         ; $7a47: $05
    dec b                                         ; $7a48: $05
    ld [bc], a                                    ; $7a49: $02
    dec b                                         ; $7a4a: $05
    ld [bc], a                                    ; $7a4b: $02
    ld b, $05                                     ; $7a4c: $06 $05
    sub e                                         ; $7a4e: $93
    sbc c                                         ; $7a4f: $99
    ld e, l                                       ; $7a50: $5d
    ld e, l                                       ; $7a51: $5d
    db $ed                                        ; $7a52: $ed
    db $ed                                        ; $7a53: $ed
    db $ed                                        ; $7a54: $ed
    db $ed                                        ; $7a55: $ed
    db $ed                                        ; $7a56: $ed
    db $ed                                        ; $7a57: $ed
    db $ed                                        ; $7a58: $ed
    db $ed                                        ; $7a59: $ed
    db $ed                                        ; $7a5a: $ed
    db $ed                                        ; $7a5b: $ed
    db $ed                                        ; $7a5c: $ed
    db $ed                                        ; $7a5d: $ed
    adc b                                         ; $7a5e: $88
    adc b                                         ; $7a5f: $88
    add b                                         ; $7a60: $80
    add b                                         ; $7a61: $80
    add b                                         ; $7a62: $80
    add b                                         ; $7a63: $80
    add b                                         ; $7a64: $80
    add b                                         ; $7a65: $80
    add b                                         ; $7a66: $80
    add b                                         ; $7a67: $80
    add b                                         ; $7a68: $80
    add b                                         ; $7a69: $80
    add b                                         ; $7a6a: $80
    add b                                         ; $7a6b: $80
    add b                                         ; $7a6c: $80
    add b                                         ; $7a6d: $80
    sbc d                                         ; $7a6e: $9a
    ld h, h                                       ; $7a6f: $64
    ld h, l                                       ; $7a70: $65
    ld h, [hl]                                    ; $7a71: $66
    xor $67                                       ; $7a72: $ee $67
    ld l, b                                       ; $7a74: $68
    ld l, c                                       ; $7a75: $69
    xor $3b                                       ; $7a76: $ee $3b
    inc a                                         ; $7a78: $3c
    dec a                                         ; $7a79: $3d
    xor $3e                                       ; $7a7a: $ee $3e
    ccf                                           ; $7a7c: $3f
    ld b, b                                       ; $7a7d: $40
    adc b                                         ; $7a7e: $88
    ld b, $05                                     ; $7a7f: $06 $05
    dec b                                         ; $7a81: $05
    add b                                         ; $7a82: $80
    dec b                                         ; $7a83: $05
    ld [bc], a                                    ; $7a84: $02
    ld b, $80                                     ; $7a85: $06 $80
    rlca                                          ; $7a87: $07
    dec b                                         ; $7a88: $05
    dec b                                         ; $7a89: $05
    add b                                         ; $7a8a: $80
    rlca                                          ; $7a8b: $07
    ld [bc], a                                    ; $7a8c: $02
    ld [bc], a                                    ; $7a8d: $02
    ld b, c                                       ; $7a8e: $41
    ld b, d                                       ; $7a8f: $42
    ld b, e                                       ; $7a90: $43
    ld b, h                                       ; $7a91: $44
    ld b, l                                       ; $7a92: $45
    ld b, [hl]                                    ; $7a93: $46
    add c                                         ; $7a94: $81
    adc a                                         ; $7a95: $8f
    ld c, c                                       ; $7a96: $49
    ld c, d                                       ; $7a97: $4a
    ld c, e                                       ; $7a98: $4b
    add e                                         ; $7a99: $83
    ld c, l                                       ; $7a9a: $4d
    ld c, [hl]                                    ; $7a9b: $4e
    add l                                         ; $7a9c: $85
    add [hl]                                      ; $7a9d: $86
    ld b, $05                                     ; $7a9e: $06 $05
    ld [bc], a                                    ; $7aa0: $02
    ld b, $06                                     ; $7aa1: $06 $06
    ld b, $0d                                     ; $7aa3: $06 $0d
    ld a, [bc]                                    ; $7aa5: $0a
    ld b, $05                                     ; $7aa6: $06 $05
    dec b                                         ; $7aa8: $05
    ld c, $05                                     ; $7aa9: $0e $05
    ld b, $0d                                     ; $7aab: $06 $0d
    dec c                                         ; $7aad: $0d
    sub c                                         ; $7aae: $91
    ld h, h                                       ; $7aaf: $64
    ld h, l                                       ; $7ab0: $65
    ld h, [hl]                                    ; $7ab1: $66
    sub d                                         ; $7ab2: $92
    ld h, a                                       ; $7ab3: $67
    ld l, b                                       ; $7ab4: $68
    ld l, c                                       ; $7ab5: $69
    add a                                         ; $7ab6: $87
    dec sp                                        ; $7ab7: $3b
    inc a                                         ; $7ab8: $3c
    dec a                                         ; $7ab9: $3d
    adc b                                         ; $7aba: $88
    ld a, $3f                                     ; $7abb: $3e $3f
    ld b, b                                       ; $7abd: $40
    ld c, $02                                     ; $7abe: $0e $02
    ld b, $06                                     ; $7ac0: $06 $06
    dec c                                         ; $7ac2: $0d
    dec b                                         ; $7ac3: $05
    ld b, $02                                     ; $7ac4: $06 $02
    ld c, $05                                     ; $7ac6: $0e $05
    dec b                                         ; $7ac8: $05
    dec b                                         ; $7ac9: $05
    ld a, [bc]                                    ; $7aca: $0a
    ld b, $05                                     ; $7acb: $06 $05
    ld b, $ee                                     ; $7acd: $06 $ee
    ld h, b                                       ; $7acf: $60
    ld h, c                                       ; $7ad0: $61
    ld h, d                                       ; $7ad1: $62
    sbc c                                         ; $7ad2: $99
    ld e, l                                       ; $7ad3: $5d
    ld e, l                                       ; $7ad4: $5d
    ld e, l                                       ; $7ad5: $5d
    db $ed                                        ; $7ad6: $ed
    db $ed                                        ; $7ad7: $ed
    db $ed                                        ; $7ad8: $ed
    db $ed                                        ; $7ad9: $ed
    db $ed                                        ; $7ada: $ed
    db $ed                                        ; $7adb: $ed
    db $ed                                        ; $7adc: $ed
    db $ed                                        ; $7add: $ed
    add b                                         ; $7ade: $80
    rlca                                          ; $7adf: $07
    ld b, $05                                     ; $7ae0: $06 $05
    adc b                                         ; $7ae2: $88
    add b                                         ; $7ae3: $80
    add b                                         ; $7ae4: $80
    add b                                         ; $7ae5: $80
    add b                                         ; $7ae6: $80
    add b                                         ; $7ae7: $80
    add b                                         ; $7ae8: $80
    add b                                         ; $7ae9: $80
    add b                                         ; $7aea: $80
    add b                                         ; $7aeb: $80
    add b                                         ; $7aec: $80
    add b                                         ; $7aed: $80
    ld l, d                                       ; $7aee: $6a
    ld l, e                                       ; $7aef: $6b
    adc d                                         ; $7af0: $8a
    adc e                                         ; $7af1: $8b
    ld e, l                                       ; $7af2: $5d
    ld e, l                                       ; $7af3: $5d
    ld e, l                                       ; $7af4: $5d
    ld e, l                                       ; $7af5: $5d
    db $ed                                        ; $7af6: $ed
    db $ed                                        ; $7af7: $ed
    db $ed                                        ; $7af8: $ed
    db $ed                                        ; $7af9: $ed
    db $ed                                        ; $7afa: $ed
    db $ed                                        ; $7afb: $ed
    db $ed                                        ; $7afc: $ed
    db $ed                                        ; $7afd: $ed
    ld [bc], a                                    ; $7afe: $02
    dec b                                         ; $7aff: $05
    ld c, $0d                                     ; $7b00: $0e $0d
    add b                                         ; $7b02: $80
    add b                                         ; $7b03: $80
    add b                                         ; $7b04: $80
    add b                                         ; $7b05: $80
    add b                                         ; $7b06: $80
    add b                                         ; $7b07: $80
    add b                                         ; $7b08: $80
    add b                                         ; $7b09: $80
    add b                                         ; $7b0a: $80
    add b                                         ; $7b0b: $80
    add b                                         ; $7b0c: $80
    add b                                         ; $7b0d: $80
    sub b                                         ; $7b0e: $90
    ld h, b                                       ; $7b0f: $60
    ld h, c                                       ; $7b10: $61
    ld h, d                                       ; $7b11: $62
    ld e, l                                       ; $7b12: $5d
    ld e, l                                       ; $7b13: $5d
    ld e, l                                       ; $7b14: $5d
    ld e, l                                       ; $7b15: $5d
    db $ed                                        ; $7b16: $ed
    db $ed                                        ; $7b17: $ed
    db $ed                                        ; $7b18: $ed
    db $ed                                        ; $7b19: $ed
    db $ed                                        ; $7b1a: $ed
    db $ed                                        ; $7b1b: $ed
    db $ed                                        ; $7b1c: $ed
    db $ed                                        ; $7b1d: $ed
    ld a, [bc]                                    ; $7b1e: $0a
    dec b                                         ; $7b1f: $05
    ld b, $05                                     ; $7b20: $06 $05
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
    ld c, c                                       ; $7b2e: $49
    ld c, d                                       ; $7b2f: $4a
    ld c, e                                       ; $7b30: $4b
    add e                                         ; $7b31: $83
    ld c, l                                       ; $7b32: $4d
    ld c, [hl]                                    ; $7b33: $4e
    add l                                         ; $7b34: $85
    add [hl]                                      ; $7b35: $86
    ld l, d                                       ; $7b36: $6a
    ld l, e                                       ; $7b37: $6b
    adc d                                         ; $7b38: $8a
    adc e                                         ; $7b39: $8b
    inc hl                                        ; $7b3a: $23
    inc h                                         ; $7b3b: $24
    dec h                                         ; $7b3c: $25
    ld h, $02                                     ; $7b3d: $26 $02
    dec b                                         ; $7b3f: $05
    ld b, $0d                                     ; $7b40: $06 $0d
    dec b                                         ; $7b42: $05
    ld b, $0d                                     ; $7b43: $06 $0d
    ld a, [bc]                                    ; $7b45: $0a
    ld [bc], a                                    ; $7b46: $02
    dec b                                         ; $7b47: $05
    ld c, $0d                                     ; $7b48: $0e $0d
    ld b, $02                                     ; $7b4a: $06 $02
    dec b                                         ; $7b4c: $05
    dec b                                         ; $7b4d: $05
    add a                                         ; $7b4e: $87
    dec sp                                        ; $7b4f: $3b
    xor $ed                                       ; $7b50: $ee $ed
    adc b                                         ; $7b52: $88
    ld a, $ee                                     ; $7b53: $3e $ee
    db $ed                                        ; $7b55: $ed
    sub b                                         ; $7b56: $90
    ld h, b                                       ; $7b57: $60
    xor $ed                                       ; $7b58: $ee $ed
    ld sp, $ee63                                  ; $7b5a: $31 $63 $ee
    db $ed                                        ; $7b5d: $ed
    dec c                                         ; $7b5e: $0d
    rlca                                          ; $7b5f: $07
    add b                                         ; $7b60: $80
    add b                                         ; $7b61: $80
    ld c, $07                                     ; $7b62: $0e $07
    add b                                         ; $7b64: $80
    add b                                         ; $7b65: $80
    dec c                                         ; $7b66: $0d
    rlca                                          ; $7b67: $07
    add b                                         ; $7b68: $80
    add b                                         ; $7b69: $80
    ld [bc], a                                    ; $7b6a: $02
    rlca                                          ; $7b6b: $07
    add b                                         ; $7b6c: $80
    add b                                         ; $7b6d: $80
    ld b, c                                       ; $7b6e: $41
    ld b, d                                       ; $7b6f: $42
    ld b, e                                       ; $7b70: $43
    ld b, h                                       ; $7b71: $44
    ld b, l                                       ; $7b72: $45
    ld b, [hl]                                    ; $7b73: $46
    add c                                         ; $7b74: $81
    adc a                                         ; $7b75: $8f
    ld c, c                                       ; $7b76: $49
    ld c, d                                       ; $7b77: $4a
    ld c, e                                       ; $7b78: $4b
    add e                                         ; $7b79: $83
    ld c, l                                       ; $7b7a: $4d
    ld c, [hl]                                    ; $7b7b: $4e
    add l                                         ; $7b7c: $85
    add [hl]                                      ; $7b7d: $86
    dec b                                         ; $7b7e: $05
    dec b                                         ; $7b7f: $05
    ld b, $05                                     ; $7b80: $06 $05
    dec b                                         ; $7b82: $05
    dec b                                         ; $7b83: $05
    ld c, $0d                                     ; $7b84: $0e $0d
    ld [bc], a                                    ; $7b86: $02
    ld b, $05                                     ; $7b87: $06 $05
    ld c, $06                                     ; $7b89: $0e $06
    dec b                                         ; $7b8b: $05
    ld c, $0d                                     ; $7b8c: $0e $0d
    sub c                                         ; $7b8e: $91
    ld h, h                                       ; $7b8f: $64
    xor $ed                                       ; $7b90: $ee $ed
    sub d                                         ; $7b92: $92
    ld h, a                                       ; $7b93: $67
    xor $ed                                       ; $7b94: $ee $ed
    add a                                         ; $7b96: $87
    dec sp                                        ; $7b97: $3b
    xor $ed                                       ; $7b98: $ee $ed
    adc b                                         ; $7b9a: $88
    ld a, $ee                                     ; $7b9b: $3e $ee
    db $ed                                        ; $7b9d: $ed
    ld a, [bc]                                    ; $7b9e: $0a
    rlca                                          ; $7b9f: $07
    add b                                         ; $7ba0: $80
    add b                                         ; $7ba1: $80
    ld c, $07                                     ; $7ba2: $0e $07
    add b                                         ; $7ba4: $80
    add b                                         ; $7ba5: $80
    dec c                                         ; $7ba6: $0d
    rlca                                          ; $7ba7: $07
    add b                                         ; $7ba8: $80
    add b                                         ; $7ba9: $80
    ld a, [bc]                                    ; $7baa: $0a
    rlca                                          ; $7bab: $07
    add b                                         ; $7bac: $80
    add b                                         ; $7bad: $80
    ld l, d                                       ; $7bae: $6a
    ld l, e                                       ; $7baf: $6b
    adc d                                         ; $7bb0: $8a
    adc e                                         ; $7bb1: $8b
    ld e, l                                       ; $7bb2: $5d
    ld e, l                                       ; $7bb3: $5d
    ld e, l                                       ; $7bb4: $5d
    ld e, l                                       ; $7bb5: $5d
    db $ed                                        ; $7bb6: $ed
    db $ed                                        ; $7bb7: $ed
    db $ed                                        ; $7bb8: $ed
    db $ed                                        ; $7bb9: $ed
    db $ed                                        ; $7bba: $ed
    db $ed                                        ; $7bbb: $ed
    db $ed                                        ; $7bbc: $ed
    db $ed                                        ; $7bbd: $ed
    dec b                                         ; $7bbe: $05
    ld [bc], a                                    ; $7bbf: $02
    dec c                                         ; $7bc0: $0d
    dec c                                         ; $7bc1: $0d
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
    add b                                         ; $7bcd: $80
    sub b                                         ; $7bce: $90
    ld h, b                                       ; $7bcf: $60
    xor $ed                                       ; $7bd0: $ee $ed
    ld e, l                                       ; $7bd2: $5d
    ld e, l                                       ; $7bd3: $5d
    ld e, a                                       ; $7bd4: $5f
    db $ed                                        ; $7bd5: $ed
    db $ed                                        ; $7bd6: $ed
    db $ed                                        ; $7bd7: $ed
    db $ed                                        ; $7bd8: $ed
    db $ed                                        ; $7bd9: $ed
    db $ed                                        ; $7bda: $ed
    db $ed                                        ; $7bdb: $ed
    db $ed                                        ; $7bdc: $ed
    db $ed                                        ; $7bdd: $ed
    dec c                                         ; $7bde: $0d
    rlca                                          ; $7bdf: $07
    add b                                         ; $7be0: $80
    add b                                         ; $7be1: $80
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
    add b                                         ; $7bed: $80
    dec b                                         ; $7bee: $05
    nop                                           ; $7bef: $00
    dec b                                         ; $7bf0: $05
    nop                                           ; $7bf1: $00
    nop                                           ; $7bf2: $00
    inc bc                                        ; $7bf3: $03
    pop de                                        ; $7bf4: $d1
    jp nc, $d4d3                                  ; $7bf5: $d2 $d3 $d4

    pop de                                        ; $7bf8: $d1
    jp nc, $d6d5                                  ; $7bf9: $d2 $d5 $d6

    pop de                                        ; $7bfc: $d1
    jp nc, $d8d7                                  ; $7bfd: $d2 $d7 $d8

    pop de                                        ; $7c00: $d1
    jp nc, $dad9                                  ; $7c01: $d2 $d9 $da

    add b                                         ; $7c04: $80
    add c                                         ; $7c05: $81
    rlca                                          ; $7c06: $07
    rlca                                          ; $7c07: $07
    add b                                         ; $7c08: $80
    add c                                         ; $7c09: $81
    inc bc                                        ; $7c0a: $03
    inc bc                                        ; $7c0b: $03
    add b                                         ; $7c0c: $80
    add c                                         ; $7c0d: $81
    inc bc                                        ; $7c0e: $03
    inc bc                                        ; $7c0f: $03
    add b                                         ; $7c10: $80
    add c                                         ; $7c11: $81
    inc bc                                        ; $7c12: $03
    inc bc                                        ; $7c13: $03
    db $db                                        ; $7c14: $db
    call c, $dedd                                 ; $7c15: $dc $dd $de
    rst $18                                       ; $7c18: $df
    ldh [$e1], a                                  ; $7c19: $e0 $e1
    sbc $e2                                       ; $7c1b: $de $e2
    db $e3                                        ; $7c1d: $e3
    db $e4                                        ; $7c1e: $e4
    sbc $e5                                       ; $7c1f: $de $e5
    and $e7                                       ; $7c21: $e6 $e7
    add sp, $07                                   ; $7c23: $e8 $07
    rlca                                          ; $7c25: $07
    rlca                                          ; $7c26: $07
    ld bc, $0303                                  ; $7c27: $01 $03 $03
    rlca                                          ; $7c2a: $07
    ld bc, $0303                                  ; $7c2b: $01 $03 $03
    rlca                                          ; $7c2e: $07
    ld bc, $0303                                  ; $7c2f: $01 $03 $03
    rlca                                          ; $7c32: $07
    ld bc, $dbe9                                  ; $7c33: $01 $e9 $db
    call c, $eadd                                 ; $7c36: $dc $dd $ea
    db $eb                                        ; $7c39: $eb
    db $ec                                        ; $7c3a: $ec
    pop hl                                        ; $7c3b: $e1
    db $ed                                        ; $7c3c: $ed
    xor $ef                                       ; $7c3d: $ee $ef
    db $e4                                        ; $7c3f: $e4
    ldh a, [$f1]                                  ; $7c40: $f0 $f1
    ld a, [c]                                     ; $7c42: $f2
    rst $20                                       ; $7c43: $e7
    rlca                                          ; $7c44: $07
    rlca                                          ; $7c45: $07
    rlca                                          ; $7c46: $07
    rlca                                          ; $7c47: $07
    rlca                                          ; $7c48: $07
    rlca                                          ; $7c49: $07
    rlca                                          ; $7c4a: $07
    rlca                                          ; $7c4b: $07
    rlca                                          ; $7c4c: $07
    inc b                                         ; $7c4d: $04
    inc b                                         ; $7c4e: $04
    rlca                                          ; $7c4f: $07
    rlca                                          ; $7c50: $07
    inc b                                         ; $7c51: $04
    inc b                                         ; $7c52: $04
    rlca                                          ; $7c53: $07
    sbc $e9                                       ; $7c54: $de $e9
    db $db                                        ; $7c56: $db
    call c, $eade                                 ; $7c57: $dc $de $ea
    db $eb                                        ; $7c5a: $eb
    db $ec                                        ; $7c5b: $ec
    sbc $ed                                       ; $7c5c: $de $ed
    di                                            ; $7c5e: $f3
    db $f4                                        ; $7c5f: $f4
    add sp, -$10                                  ; $7c60: $e8 $f0
    push af                                       ; $7c62: $f5
    or $01                                        ; $7c63: $f6 $01
    rlca                                          ; $7c65: $07
    rlca                                          ; $7c66: $07
    rlca                                          ; $7c67: $07
    ld bc, $0707                                  ; $7c68: $01 $07 $07
    rlca                                          ; $7c6b: $07
    ld bc, $0707                                  ; $7c6c: $01 $07 $07
    rlca                                          ; $7c6f: $07
    ld bc, $0707                                  ; $7c70: $01 $07 $07
    inc bc                                        ; $7c73: $03
    pop de                                        ; $7c74: $d1
    rst $30                                       ; $7c75: $f7
    ld hl, sp-$07                                 ; $7c76: $f8 $f9
    pop de                                        ; $7c78: $d1
    ld a, [$fcfb]                                 ; $7c79: $fa $fb $fc
    pop de                                        ; $7c7c: $d1
    jp nc, $fefd                                  ; $7c7d: $d2 $fd $fe

    pop de                                        ; $7c80: $d1
    jp nc, Jump_000_00ff                          ; $7c81: $d2 $ff $00

    add b                                         ; $7c84: $80
    add c                                         ; $7c85: $81
    inc bc                                        ; $7c86: $03
    inc bc                                        ; $7c87: $03
    add b                                         ; $7c88: $80
    add c                                         ; $7c89: $81
    inc b                                         ; $7c8a: $04
    inc b                                         ; $7c8b: $04
    add b                                         ; $7c8c: $80
    add c                                         ; $7c8d: $81
    inc b                                         ; $7c8e: $04
    inc b                                         ; $7c8f: $04
    add b                                         ; $7c90: $80
    add c                                         ; $7c91: $81
    inc b                                         ; $7c92: $04
    inc b                                         ; $7c93: $04
    ld bc, $0302                                  ; $7c94: $01 $02 $03
    inc b                                         ; $7c97: $04
    dec b                                         ; $7c98: $05
    ld b, $07                                     ; $7c99: $06 $07
    ld [$0a09], sp                                ; $7c9b: $08 $09 $0a
    dec bc                                        ; $7c9e: $0b
    inc c                                         ; $7c9f: $0c
    dec c                                         ; $7ca0: $0d
    ld c, $0f                                     ; $7ca1: $0e $0f
    db $10                                        ; $7ca3: $10
    inc bc                                        ; $7ca4: $03
    inc bc                                        ; $7ca5: $03
    ld b, $06                                     ; $7ca6: $06 $06
    inc b                                         ; $7ca8: $04
    inc b                                         ; $7ca9: $04
    ld b, $05                                     ; $7caa: $06 $05
    inc b                                         ; $7cac: $04
    inc b                                         ; $7cad: $04
    ld b, $02                                     ; $7cae: $06 $02
    inc b                                         ; $7cb0: $04
    inc b                                         ; $7cb1: $04
    ld b, $02                                     ; $7cb2: $06 $02
    ld de, $1312                                  ; $7cb4: $11 $12 $13
    inc d                                         ; $7cb7: $14
    dec d                                         ; $7cb8: $15
    ld d, $17                                     ; $7cb9: $16 $17
    jr @+$1b                                      ; $7cbb: $18 $19

    ld a, [de]                                    ; $7cbd: $1a
    dec de                                        ; $7cbe: $1b
    inc e                                         ; $7cbf: $1c
    dec e                                         ; $7cc0: $1d
    ld e, $1f                                     ; $7cc1: $1e $1f
    jr nz, jr_07d_7ccb                            ; $7cc3: $20 $06

    inc b                                         ; $7cc5: $04
    inc b                                         ; $7cc6: $04
    ld b, $05                                     ; $7cc7: $06 $05
    inc b                                         ; $7cc9: $04
    inc b                                         ; $7cca: $04

jr_07d_7ccb:
    ld b, $02                                     ; $7ccb: $06 $02
    ld b, $06                                     ; $7ccd: $06 $06
    ld b, $05                                     ; $7ccf: $06 $05
    dec b                                         ; $7cd1: $05
    ld [bc], a                                    ; $7cd2: $02
    dec b                                         ; $7cd3: $05
    ld hl, $0322                                  ; $7cd4: $21 $22 $03
    inc hl                                        ; $7cd7: $23
    inc h                                         ; $7cd8: $24
    dec h                                         ; $7cd9: $25
    rlca                                          ; $7cda: $07
    ld [$2726], sp                                ; $7cdb: $08 $26 $27
    dec bc                                        ; $7cde: $0b
    inc c                                         ; $7cdf: $0c
    jr z, @+$2b                                   ; $7ce0: $28 $29

    rrca                                          ; $7ce2: $0f
    db $10                                        ; $7ce3: $10
    ld b, $06                                     ; $7ce4: $06 $06
    ld b, $03                                     ; $7ce6: $06 $03
    ld [bc], a                                    ; $7ce8: $02
    dec b                                         ; $7ce9: $05
    dec b                                         ; $7cea: $05
    ld b, $05                                     ; $7ceb: $06 $05
    ld [bc], a                                    ; $7ced: $02
    dec b                                         ; $7cee: $05
    ld [bc], a                                    ; $7cef: $02
    ld [bc], a                                    ; $7cf0: $02
    dec b                                         ; $7cf1: $05
    dec b                                         ; $7cf2: $05
    ld [bc], a                                    ; $7cf3: $02
    pop de                                        ; $7cf4: $d1
    jp nc, $2b2a                                  ; $7cf5: $d2 $2a $2b

    pop de                                        ; $7cf8: $d1
    jp nc, Jump_000_0807                          ; $7cf9: $d2 $07 $08

    pop de                                        ; $7cfc: $d1
    rst $30                                       ; $7cfd: $f7
    dec bc                                        ; $7cfe: $0b
    inc c                                         ; $7cff: $0c
    pop de                                        ; $7d00: $d1
    ld a, [$100f]                                 ; $7d01: $fa $0f $10
    add b                                         ; $7d04: $80
    add c                                         ; $7d05: $81
    inc b                                         ; $7d06: $04
    inc b                                         ; $7d07: $04
    add b                                         ; $7d08: $80
    add c                                         ; $7d09: $81
    ld b, $06                                     ; $7d0a: $06 $06
    add b                                         ; $7d0c: $80
    add c                                         ; $7d0d: $81
    ld b, $05                                     ; $7d0e: $06 $05
    add b                                         ; $7d10: $80
    add c                                         ; $7d11: $81
    ld b, $02                                     ; $7d12: $06 $02
    inc l                                         ; $7d14: $2c
    dec l                                         ; $7d15: $2d
    ld l, $14                                     ; $7d16: $2e $14
    dec d                                         ; $7d18: $15
    cpl                                           ; $7d19: $2f
    jr nc, jr_07d_7d34                            ; $7d1a: $30 $18

    add hl, de                                    ; $7d1c: $19
    ld a, [de]                                    ; $7d1d: $1a
    dec de                                        ; $7d1e: $1b
    inc e                                         ; $7d1f: $1c
    dec e                                         ; $7d20: $1d
    ld e, $1f                                     ; $7d21: $1e $1f
    jr nz, @+$06                                  ; $7d23: $20 $04

    inc b                                         ; $7d25: $04
    ld b, $05                                     ; $7d26: $06 $05
    ld b, $06                                     ; $7d28: $06 $06
    ld b, $05                                     ; $7d2a: $06 $05
    dec b                                         ; $7d2c: $05
    dec b                                         ; $7d2d: $05
    dec b                                         ; $7d2e: $05
    ld [bc], a                                    ; $7d2f: $02
    dec b                                         ; $7d30: $05
    ld [bc], a                                    ; $7d31: $02
    dec b                                         ; $7d32: $05
    ld [bc], a                                    ; $7d33: $02

jr_07d_7d34:
    ld hl, $0322                                  ; $7d34: $21 $22 $03
    inc b                                         ; $7d37: $04
    inc h                                         ; $7d38: $24
    dec h                                         ; $7d39: $25
    rlca                                          ; $7d3a: $07
    ld [$2726], sp                                ; $7d3b: $08 $26 $27
    dec bc                                        ; $7d3e: $0b
    inc c                                         ; $7d3f: $0c
    jr z, jr_07d_7d6b                             ; $7d40: $28 $29

    rrca                                          ; $7d42: $0f
    db $10                                        ; $7d43: $10
    dec b                                         ; $7d44: $05
    ld [bc], a                                    ; $7d45: $02
    dec b                                         ; $7d46: $05
    ld [bc], a                                    ; $7d47: $02
    ld [bc], a                                    ; $7d48: $02
    dec b                                         ; $7d49: $05
    ld [bc], a                                    ; $7d4a: $02
    dec b                                         ; $7d4b: $05
    ld [bc], a                                    ; $7d4c: $02
    ld [bc], a                                    ; $7d4d: $02
    dec b                                         ; $7d4e: $05
    dec b                                         ; $7d4f: $05
    dec b                                         ; $7d50: $05
    ld [bc], a                                    ; $7d51: $02
    dec b                                         ; $7d52: $05
    ld [bc], a                                    ; $7d53: $02
    ld de, $2e31                                  ; $7d54: $11 $31 $2e
    inc d                                         ; $7d57: $14
    dec d                                         ; $7d58: $15
    cpl                                           ; $7d59: $2f
    jr nc, jr_07d_7d74                            ; $7d5a: $30 $18

    add hl, de                                    ; $7d5c: $19
    ld a, [de]                                    ; $7d5d: $1a
    dec de                                        ; $7d5e: $1b
    inc e                                         ; $7d5f: $1c
    dec e                                         ; $7d60: $1d
    ld e, $1f                                     ; $7d61: $1e $1f
    jr nz, jr_07d_7d6a                            ; $7d63: $20 $05

    ld [bc], a                                    ; $7d65: $02
    dec b                                         ; $7d66: $05
    ld [bc], a                                    ; $7d67: $02
    ld [bc], a                                    ; $7d68: $02
    dec b                                         ; $7d69: $05

jr_07d_7d6a:
    ld [bc], a                                    ; $7d6a: $02

jr_07d_7d6b:
    dec b                                         ; $7d6b: $05
    dec b                                         ; $7d6c: $05
    ld [bc], a                                    ; $7d6d: $02
    dec b                                         ; $7d6e: $05
    ld [bc], a                                    ; $7d6f: $02
    ld [bc], a                                    ; $7d70: $02
    dec b                                         ; $7d71: $05
    dec b                                         ; $7d72: $05
    dec b                                         ; $7d73: $05

jr_07d_7d74:
    pop de                                        ; $7d74: $d1
    jp nc, $142e                                  ; $7d75: $d2 $2e $14

    pop de                                        ; $7d78: $d1
    jp nc, $1830                                  ; $7d79: $d2 $30 $18

    pop de                                        ; $7d7c: $d1
    jp nc, $1c1b                                  ; $7d7d: $d2 $1b $1c

    pop de                                        ; $7d80: $d1
    rst $30                                       ; $7d81: $f7
    ld [hl-], a                                   ; $7d82: $32
    ld [hl-], a                                   ; $7d83: $32
    add b                                         ; $7d84: $80
    add c                                         ; $7d85: $81
    ld b, $05                                     ; $7d86: $06 $05
    add b                                         ; $7d88: $80
    add c                                         ; $7d89: $81
    ld b, $05                                     ; $7d8a: $06 $05
    add b                                         ; $7d8c: $80
    add c                                         ; $7d8d: $81
    ld b, $02                                     ; $7d8e: $06 $02
    add b                                         ; $7d90: $80
    add c                                         ; $7d91: $81
    add c                                         ; $7d92: $81
    add c                                         ; $7d93: $81
    ld hl, $0322                                  ; $7d94: $21 $22 $03
    inc b                                         ; $7d97: $04
    inc h                                         ; $7d98: $24
    dec h                                         ; $7d99: $25
    rlca                                          ; $7d9a: $07
    ld [$2726], sp                                ; $7d9b: $08 $26 $27
    dec bc                                        ; $7d9e: $0b
    inc c                                         ; $7d9f: $0c
    ld [hl-], a                                   ; $7da0: $32
    ld [hl-], a                                   ; $7da1: $32
    ld [hl-], a                                   ; $7da2: $32
    rst $30                                       ; $7da3: $f7
    ld [bc], a                                    ; $7da4: $02
    dec b                                         ; $7da5: $05
    ld [bc], a                                    ; $7da6: $02
    dec b                                         ; $7da7: $05
    dec b                                         ; $7da8: $05
    ld [bc], a                                    ; $7da9: $02
    dec b                                         ; $7daa: $05
    ld [bc], a                                    ; $7dab: $02
    dec b                                         ; $7dac: $05
    dec b                                         ; $7dad: $05
    ld [bc], a                                    ; $7dae: $02
    ld [bc], a                                    ; $7daf: $02
    add c                                         ; $7db0: $81
    add c                                         ; $7db1: $81
    add c                                         ; $7db2: $81
    add c                                         ; $7db3: $81
    ld de, $2e31                                  ; $7db4: $11 $31 $2e
    inc d                                         ; $7db7: $14
    dec d                                         ; $7db8: $15
    cpl                                           ; $7db9: $2f
    jr nc, jr_07d_7dd4                            ; $7dba: $30 $18

    add hl, de                                    ; $7dbc: $19
    ld a, [de]                                    ; $7dbd: $1a
    dec de                                        ; $7dbe: $1b
    inc e                                         ; $7dbf: $1c
    dec e                                         ; $7dc0: $1d
    ld e, $1f                                     ; $7dc1: $1e $1f
    jr nz, jr_07d_7dc7                            ; $7dc3: $20 $02

    dec b                                         ; $7dc5: $05
    ld [bc], a                                    ; $7dc6: $02

jr_07d_7dc7:
    ld [bc], a                                    ; $7dc7: $02
    ld [bc], a                                    ; $7dc8: $02
    ld [bc], a                                    ; $7dc9: $02
    ld [bc], a                                    ; $7dca: $02
    dec b                                         ; $7dcb: $05
    dec b                                         ; $7dcc: $05
    ld [bc], a                                    ; $7dcd: $02
    dec b                                         ; $7dce: $05
    dec b                                         ; $7dcf: $05
    dec b                                         ; $7dd0: $05
    dec b                                         ; $7dd1: $05
    dec b                                         ; $7dd2: $05
    ld [bc], a                                    ; $7dd3: $02

jr_07d_7dd4:
    ld hl, $0322                                  ; $7dd4: $21 $22 $03
    inc b                                         ; $7dd7: $04
    inc h                                         ; $7dd8: $24
    dec h                                         ; $7dd9: $25
    rlca                                          ; $7dda: $07
    ld [$2726], sp                                ; $7ddb: $08 $26 $27
    dec bc                                        ; $7dde: $0b
    inc c                                         ; $7ddf: $0c
    rst $30                                       ; $7de0: $f7
    ld [hl-], a                                   ; $7de1: $32
    ld [hl-], a                                   ; $7de2: $32
    ld [hl-], a                                   ; $7de3: $32
    dec b                                         ; $7de4: $05
    dec b                                         ; $7de5: $05
    ld [bc], a                                    ; $7de6: $02
    ld [bc], a                                    ; $7de7: $02
    ld [bc], a                                    ; $7de8: $02
    ld [bc], a                                    ; $7de9: $02
    dec b                                         ; $7dea: $05
    dec b                                         ; $7deb: $05
    ld [bc], a                                    ; $7dec: $02
    dec b                                         ; $7ded: $05
    ld [bc], a                                    ; $7dee: $02
    ld [bc], a                                    ; $7def: $02
    add c                                         ; $7df0: $81
    add c                                         ; $7df1: $81
    add c                                         ; $7df2: $81
    add c                                         ; $7df3: $81
    db $d3                                        ; $7df4: $d3
    call nc, $d1d2                                ; $7df5: $d4 $d2 $d1
    inc sp                                        ; $7df8: $33
    inc [hl]                                      ; $7df9: $34
    jp nc, $35d1                                  ; $7dfa: $d2 $d1 $35

    ld [hl], $d2                                  ; $7dfd: $36 $d2
    pop de                                        ; $7dff: $d1
    scf                                           ; $7e00: $37
    jr c, @-$2c                                   ; $7e01: $38 $d2

    pop de                                        ; $7e03: $d1
    rlca                                          ; $7e04: $07
    rlca                                          ; $7e05: $07
    add c                                         ; $7e06: $81
    add b                                         ; $7e07: $80
    rlca                                          ; $7e08: $07
    rlca                                          ; $7e09: $07
    add c                                         ; $7e0a: $81
    add b                                         ; $7e0b: $80
    rlca                                          ; $7e0c: $07
    rlca                                          ; $7e0d: $07
    add c                                         ; $7e0e: $81
    add b                                         ; $7e0f: $80
    inc bc                                        ; $7e10: $03
    inc bc                                        ; $7e11: $03
    add c                                         ; $7e12: $81
    add b                                         ; $7e13: $80
    add hl, sp                                    ; $7e14: $39
    ld a, [hl-]                                   ; $7e15: $3a
    rst $30                                       ; $7e16: $f7
    pop de                                        ; $7e17: $d1
    dec d                                         ; $7e18: $15
    cpl                                           ; $7e19: $2f
    ld a, [$19d1]                                 ; $7e1a: $fa $d1 $19
    ld a, [de]                                    ; $7e1d: $1a
    jp nc, $1dd1                                  ; $7e1e: $d2 $d1 $1d

    ld e, $d2                                     ; $7e21: $1e $d2
    pop de                                        ; $7e23: $d1
    inc bc                                        ; $7e24: $03
    inc bc                                        ; $7e25: $03
    add c                                         ; $7e26: $81
    add b                                         ; $7e27: $80
    ld b, $06                                     ; $7e28: $06 $06
    add c                                         ; $7e2a: $81
    add b                                         ; $7e2b: $80
    ld [bc], a                                    ; $7e2c: $02
    ld b, $81                                     ; $7e2d: $06 $81
    add b                                         ; $7e2f: $80
    ld [bc], a                                    ; $7e30: $02
    ld b, $81                                     ; $7e31: $06 $81
    add b                                         ; $7e33: $80
    ld hl, $d222                                  ; $7e34: $21 $22 $d2
    pop de                                        ; $7e37: $d1
    inc h                                         ; $7e38: $24
    dec h                                         ; $7e39: $25
    jp nc, $26d1                                  ; $7e3a: $d2 $d1 $26

    daa                                           ; $7e3d: $27
    rst $30                                       ; $7e3e: $f7
    pop de                                        ; $7e3f: $d1
    jr z, jr_07d_7e6b                             ; $7e40: $28 $29

    ld a, [$05d1]                                 ; $7e42: $fa $d1 $05
    ld b, $81                                     ; $7e45: $06 $81
    add b                                         ; $7e47: $80
    ld [bc], a                                    ; $7e48: $02
    ld b, $81                                     ; $7e49: $06 $81
    add b                                         ; $7e4b: $80
    ld [bc], a                                    ; $7e4c: $02
    ld b, $81                                     ; $7e4d: $06 $81
    add b                                         ; $7e4f: $80
    dec b                                         ; $7e50: $05
    ld b, $81                                     ; $7e51: $06 $81
    add b                                         ; $7e53: $80
    ld de, $d231                                  ; $7e54: $11 $31 $d2
    pop de                                        ; $7e57: $d1
    dec d                                         ; $7e58: $15
    cpl                                           ; $7e59: $2f
    jp nc, Jump_000_19d1                          ; $7e5a: $d2 $d1 $19

    ld a, [de]                                    ; $7e5d: $1a
    jp nc, Jump_000_32d1                          ; $7e5e: $d2 $d1 $32

    ld [hl-], a                                   ; $7e61: $32
    rst $30                                       ; $7e62: $f7
    pop de                                        ; $7e63: $d1
    dec b                                         ; $7e64: $05
    ld b, $81                                     ; $7e65: $06 $81
    add b                                         ; $7e67: $80
    ld [bc], a                                    ; $7e68: $02
    ld b, $81                                     ; $7e69: $06 $81

jr_07d_7e6b:
    add b                                         ; $7e6b: $80
    dec b                                         ; $7e6c: $05
    ld b, $81                                     ; $7e6d: $06 $81
    add b                                         ; $7e6f: $80
    add c                                         ; $7e70: $81
    add c                                         ; $7e71: $81
    add c                                         ; $7e72: $81
    add b                                         ; $7e73: $80
    pop de                                        ; $7e74: $d1
    pop de                                        ; $7e75: $d1
    pop de                                        ; $7e76: $d1
    pop de                                        ; $7e77: $d1
    pop de                                        ; $7e78: $d1
    pop de                                        ; $7e79: $d1
    pop de                                        ; $7e7a: $d1
    pop de                                        ; $7e7b: $d1
    pop de                                        ; $7e7c: $d1
    pop de                                        ; $7e7d: $d1
    pop de                                        ; $7e7e: $d1
    pop de                                        ; $7e7f: $d1
    pop de                                        ; $7e80: $d1
    pop de                                        ; $7e81: $d1
    pop de                                        ; $7e82: $d1
    pop de                                        ; $7e83: $d1

jr_07d_7e84:
    add b                                         ; $7e84: $80
    add b                                         ; $7e85: $80
    add b                                         ; $7e86: $80
    add b                                         ; $7e87: $80
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

jr_07d_7e93:
    add b                                         ; $7e93: $80
    pop de                                        ; $7e94: $d1
    pop de                                        ; $7e95: $d1
    pop de                                        ; $7e96: $d1
    ld a, [$d1d1]                                 ; $7e97: $fa $d1 $d1
    pop de                                        ; $7e9a: $d1
    rst $30                                       ; $7e9b: $f7
    pop de                                        ; $7e9c: $d1
    pop de                                        ; $7e9d: $d1
    pop de                                        ; $7e9e: $d1
    pop de                                        ; $7e9f: $d1
    pop de                                        ; $7ea0: $d1
    pop de                                        ; $7ea1: $d1
    pop de                                        ; $7ea2: $d1
    pop de                                        ; $7ea3: $d1
    add b                                         ; $7ea4: $80
    add b                                         ; $7ea5: $80
    add b                                         ; $7ea6: $80
    add c                                         ; $7ea7: $81
    add b                                         ; $7ea8: $80
    add b                                         ; $7ea9: $80
    add b                                         ; $7eaa: $80
    add c                                         ; $7eab: $81
    add b                                         ; $7eac: $80
    add b                                         ; $7ead: $80
    add b                                         ; $7eae: $80
    add b                                         ; $7eaf: $80
    add b                                         ; $7eb0: $80
    add b                                         ; $7eb1: $80
    add b                                         ; $7eb2: $80
    add b                                         ; $7eb3: $80
    ld hl, $0322                                  ; $7eb4: $21 $22 $03
    inc b                                         ; $7eb7: $04
    dec sp                                        ; $7eb8: $3b
    dec sp                                        ; $7eb9: $3b
    dec sp                                        ; $7eba: $3b
    dec sp                                        ; $7ebb: $3b
    inc a                                         ; $7ebc: $3c
    inc a                                         ; $7ebd: $3c
    inc a                                         ; $7ebe: $3c
    inc a                                         ; $7ebf: $3c
    pop de                                        ; $7ec0: $d1
    pop de                                        ; $7ec1: $d1
    pop de                                        ; $7ec2: $d1
    pop de                                        ; $7ec3: $d1
    dec b                                         ; $7ec4: $05
    ld [bc], a                                    ; $7ec5: $02
    dec b                                         ; $7ec6: $05
    dec b                                         ; $7ec7: $05
    add c                                         ; $7ec8: $81
    add c                                         ; $7ec9: $81
    add c                                         ; $7eca: $81
    add c                                         ; $7ecb: $81
    add b                                         ; $7ecc: $80
    add b                                         ; $7ecd: $80
    add b                                         ; $7ece: $80
    add b                                         ; $7ecf: $80
    add b                                         ; $7ed0: $80
    add b                                         ; $7ed1: $80
    add b                                         ; $7ed2: $80
    add b                                         ; $7ed3: $80
    ld a, [$d1d1]                                 ; $7ed4: $fa $d1 $d1
    pop de                                        ; $7ed7: $d1
    rst $30                                       ; $7ed8: $f7
    pop de                                        ; $7ed9: $d1
    pop de                                        ; $7eda: $d1
    pop de                                        ; $7edb: $d1
    pop de                                        ; $7edc: $d1
    pop de                                        ; $7edd: $d1
    pop de                                        ; $7ede: $d1
    pop de                                        ; $7edf: $d1
    pop de                                        ; $7ee0: $d1
    pop de                                        ; $7ee1: $d1
    pop de                                        ; $7ee2: $d1
    pop de                                        ; $7ee3: $d1
    add c                                         ; $7ee4: $81
    add b                                         ; $7ee5: $80
    add b                                         ; $7ee6: $80
    add b                                         ; $7ee7: $80
    add c                                         ; $7ee8: $81
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
    cp c                                          ; $7ef4: $b9
    nop                                           ; $7ef5: $00
    ld b, c                                       ; $7ef6: $41
    nop                                           ; $7ef7: $00
    ld bc, $0130                                  ; $7ef8: $01 $30 $01
    nop                                           ; $7efb: $00
    ld [bc], a                                    ; $7efc: $02
    nop                                           ; $7efd: $00
    inc bc                                        ; $7efe: $03
    rrca                                          ; $7eff: $0f
    jr c, jr_07d_7e84                             ; $7f00: $38 $82

    add hl, de                                    ; $7f02: $19
    jr nc, @+$06                                  ; $7f03: $30 $04

    nop                                           ; $7f05: $00
    dec b                                         ; $7f06: $05
    nop                                           ; $7f07: $00
    ld b, $18                                     ; $7f08: $06 $18
    add b                                         ; $7f0a: $80
    rlca                                          ; $7f0b: $07
    ld [$0800], sp                                ; $7f0c: $08 $00 $08
    nop                                           ; $7f0f: $00
    add hl, bc                                    ; $7f10: $09
    jr nc, jr_07d_7e93                            ; $7f11: $30 $80

    ld a, [bc]                                    ; $7f13: $0a
    nop                                           ; $7f14: $00
    dec bc                                        ; $7f15: $0b
    nop                                           ; $7f16: $00
    nop                                           ; $7f17: $00
    inc c                                         ; $7f18: $0c
    nop                                           ; $7f19: $00
    dec c                                         ; $7f1a: $0d
    nop                                           ; $7f1b: $00
    ld c, $00                                     ; $7f1c: $0e $00
    rrca                                          ; $7f1e: $0f
    adc b                                         ; $7f1f: $88
    ld e, l                                       ; $7f20: $5d
    db $10                                        ; $7f21: $10
    stop                                          ; $7f22: $10 $00
    ld de, $1065                                  ; $7f24: $11 $65 $10
    ld e, $00                                     ; $7f27: $1e $00
    rra                                           ; $7f29: $1f
    nop                                           ; $7f2a: $00
    nop                                           ; $7f2b: $00
    jr nz, jr_07d_7f2e                            ; $7f2c: $20 $00

jr_07d_7f2e:
    dec l                                         ; $7f2e: $2d
    nop                                           ; $7f2f: $00
    ld l, $00                                     ; $7f30: $2e $00
    cpl                                           ; $7f32: $2f
    nop                                           ; $7f33: $00
    nop                                           ; $7f34: $00
    jr nc, jr_07d_7f37                            ; $7f35: $30 $00

jr_07d_7f37:
    ld [de], a                                    ; $7f37: $12
    nop                                           ; $7f38: $00
    inc de                                        ; $7f39: $13
    nop                                           ; $7f3a: $00
    inc d                                         ; $7f3b: $14
    nop                                           ; $7f3c: $00
    nop                                           ; $7f3d: $00
    dec d                                         ; $7f3e: $15
    nop                                           ; $7f3f: $00
    ld hl, $2200                                  ; $7f40: $21 $00 $22
    nop                                           ; $7f43: $00
    inc hl                                        ; $7f44: $23
    nop                                           ; $7f45: $00
    nop                                           ; $7f46: $00
    inc h                                         ; $7f47: $24
    nop                                           ; $7f48: $00
    ld sp, $3200                                  ; $7f49: $31 $00 $32
    nop                                           ; $7f4c: $00
    inc sp                                        ; $7f4d: $33
    nop                                           ; $7f4e: $00
    nop                                           ; $7f4f: $00
    inc [hl]                                      ; $7f50: $34
    nop                                           ; $7f51: $00
    ld d, $00                                     ; $7f52: $16 $00
    rla                                           ; $7f54: $17
    nop                                           ; $7f55: $00
    jr jr_07d_7f58                                ; $7f56: $18 $00

jr_07d_7f58:
    nop                                           ; $7f58: $00
    add hl, de                                    ; $7f59: $19
    nop                                           ; $7f5a: $00
    dec h                                         ; $7f5b: $25
    nop                                           ; $7f5c: $00
    ld h, $00                                     ; $7f5d: $26 $00
    daa                                           ; $7f5f: $27
    nop                                           ; $7f60: $00
    nop                                           ; $7f61: $00
    jr z, jr_07d_7f64                             ; $7f62: $28 $00

jr_07d_7f64:
    dec [hl]                                      ; $7f64: $35
    nop                                           ; $7f65: $00
    ld [hl], $00                                  ; $7f66: $36 $00
    scf                                           ; $7f68: $37
    nop                                           ; $7f69: $00
    nop                                           ; $7f6a: $00
    jr c, jr_07d_7f6d                             ; $7f6b: $38 $00

jr_07d_7f6d:
    ld a, [de]                                    ; $7f6d: $1a
    nop                                           ; $7f6e: $00
    dec de                                        ; $7f6f: $1b
    nop                                           ; $7f70: $00
    inc e                                         ; $7f71: $1c
    nop                                           ; $7f72: $00
    nop                                           ; $7f73: $00
    dec e                                         ; $7f74: $1d
    nop                                           ; $7f75: $00
    add hl, hl                                    ; $7f76: $29
    nop                                           ; $7f77: $00
    ld a, [hl+]                                   ; $7f78: $2a
    nop                                           ; $7f79: $00
    dec hl                                        ; $7f7a: $2b
    jr nz, jr_07d_7f7d                            ; $7f7b: $20 $00

jr_07d_7f7d:
    inc l                                         ; $7f7d: $2c
    xor b                                         ; $7f7e: $a8
    ld b, b                                       ; $7f7f: $40
    add hl, sp                                    ; $7f80: $39
    nop                                           ; $7f81: $00
    ld a, [hl-]                                   ; $7f82: $3a
    nop                                           ; $7f83: $00
    dec sp                                        ; $7f84: $3b
    nop                                           ; $7f85: $00
    nop                                           ; $7f86: $00
    inc a                                         ; $7f87: $3c
    nop                                           ; $7f88: $00
    dec a                                         ; $7f89: $3d
    nop                                           ; $7f8a: $00
    ld a, $00                                     ; $7f8b: $3e $00
    ccf                                           ; $7f8d: $3f
    nop                                           ; $7f8e: $00
    nop                                           ; $7f8f: $00
    ld c, h                                       ; $7f90: $4c
    nop                                           ; $7f91: $00
    ld c, l                                       ; $7f92: $4d
    nop                                           ; $7f93: $00
    ld c, [hl]                                    ; $7f94: $4e
    nop                                           ; $7f95: $00
    ld c, a                                       ; $7f96: $4f
    add b                                         ; $7f97: $80
    rst $10                                       ; $7f98: $d7
    jr nc, @+$42                                  ; $7f99: $30 $40

    nop                                           ; $7f9b: $00
    ld b, c                                       ; $7f9c: $41
    nop                                           ; $7f9d: $00
    ld b, d                                       ; $7f9e: $42
    nop                                           ; $7f9f: $00
    ld b, e                                       ; $7fa0: $43
    nop                                           ; $7fa1: $00
    nop                                           ; $7fa2: $00
    ld d, b                                       ; $7fa3: $50
    nop                                           ; $7fa4: $00
    ld d, c                                       ; $7fa5: $51
    nop                                           ; $7fa6: $00
    ld d, d                                       ; $7fa7: $52
    nop                                           ; $7fa8: $00
    ld d, e                                       ; $7fa9: $53
    add b                                         ; $7faa: $80
    rst $28                                       ; $7fab: $ef
    jr nc, jr_07d_7ff2                            ; $7fac: $30 $44

    nop                                           ; $7fae: $00
    ld b, l                                       ; $7faf: $45
    nop                                           ; $7fb0: $00
    ld b, [hl]                                    ; $7fb1: $46
    nop                                           ; $7fb2: $00
    ld b, a                                       ; $7fb3: $47
    nop                                           ; $7fb4: $00
    nop                                           ; $7fb5: $00
    ld d, h                                       ; $7fb6: $54
    nop                                           ; $7fb7: $00
    ld d, l                                       ; $7fb8: $55
    nop                                           ; $7fb9: $00
    ld d, [hl]                                    ; $7fba: $56
    nop                                           ; $7fbb: $00
    ld d, a                                       ; $7fbc: $57
    add b                                         ; $7fbd: $80
    rlca                                          ; $7fbe: $07
    ld sp, $0048                                  ; $7fbf: $31 $48 $00
    ld c, c                                       ; $7fc2: $49
    nop                                           ; $7fc3: $00
    ld c, d                                       ; $7fc4: $4a
    nop                                           ; $7fc5: $00
    ld c, e                                       ; $7fc6: $4b
    nop                                           ; $7fc7: $00
    nop                                           ; $7fc8: $00
    ld e, b                                       ; $7fc9: $58
    nop                                           ; $7fca: $00
    ld e, c                                       ; $7fcb: $59
    nop                                           ; $7fcc: $00
    ld e, d                                       ; $7fcd: $5a
    nop                                           ; $7fce: $00
    ld e, e                                       ; $7fcf: $5b
    nop                                           ; $7fd0: $00
    nop                                           ; $7fd1: $00
    inc c                                         ; $7fd2: $0c
    nop                                           ; $7fd3: $00
    nop                                           ; $7fd4: $00
    ld [de], a                                    ; $7fd5: $12
    nop                                           ; $7fd6: $00
    ld bc, $0012                                  ; $7fd7: $01 $12 $00
    ld bc, $0018                                  ; $7fda: $01 $18 $00
    ld [bc], a                                    ; $7fdd: $02
    rlca                                          ; $7fde: $07
    ld [bc], a                                    ; $7fdf: $02
    dec de                                        ; $7fe0: $1b
    nop                                           ; $7fe1: $00
    cpl                                           ; $7fe2: $2f
    nop                                           ; $7fe3: $00
    rlca                                          ; $7fe4: $07
    nop                                           ; $7fe5: $00
    sbc h                                         ; $7fe6: $9c
    nop                                           ; $7fe7: $00
    cpl                                           ; $7fe8: $2f
    nop                                           ; $7fe9: $00
    ld [bc], a                                    ; $7fea: $02
    nop                                           ; $7feb: $00
    add sp, $00                                   ; $7fec: $e8 $00
    ld h, a                                       ; $7fee: $67
    nop                                           ; $7fef: $00
    rst $38                                       ; $7ff0: $ff
    rst $38                                       ; $7ff1: $ff

jr_07d_7ff2:
    rst $38                                       ; $7ff2: $ff
    rst $38                                       ; $7ff3: $ff
    rst $38                                       ; $7ff4: $ff
    rst $38                                       ; $7ff5: $ff
    ld h, b                                       ; $7ff6: $60
    ld c, l                                       ; $7ff7: $4d
    rst $30                                       ; $7ff8: $f7
    inc bc                                        ; $7ff9: $03
    ld d, c                                       ; $7ffa: $51
    ld bc, $0080                                  ; $7ffb: $01 $80 $00
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
