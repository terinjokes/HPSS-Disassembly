; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $09c", ROMX[$4000], BANK[$9c]

    db $9c

    sub b                                         ; $4001: $90
    jr jr_09c_402c                                ; $4002: $18 $28

    rrca                                          ; $4004: $0f
    ld b, d                                       ; $4005: $42
    rst $38                                       ; $4006: $ff
    ld bc, $8360                                  ; $4007: $01 $60 $83
    rst $38                                       ; $400a: $ff
    pop bc                                        ; $400b: $c1
    cp a                                          ; $400c: $bf
    inc b                                         ; $400d: $04
    ld c, b                                       ; $400e: $48
    ld d, l                                       ; $400f: $55
    ld bc, $eeaa                                  ; $4010: $01 $aa $ee
    ld de, $02fd                                  ; $4013: $11 $fd $02
    rst $38                                       ; $4016: $ff
    nop                                           ; $4017: $00
    ld [bc], a                                    ; $4018: $02
    jr z, jr_09c_4023                             ; $4019: $28 $08

    db $fd                                        ; $401b: $fd
    ld [bc], a                                    ; $401c: $02
    ld a, a                                       ; $401d: $7f
    add b                                         ; $401e: $80
    ld a, [bc]                                    ; $401f: $0a
    jr z, @+$01                                   ; $4020: $28 $ff

    nop                                           ; $4022: $00

jr_09c_4023:
    cp [hl]                                       ; $4023: $be

Jump_09c_4024:
    inc b                                         ; $4024: $04

Jump_09c_4025:
    ld b, c                                       ; $4025: $41
    rst $30                                       ; $4026: $f7
    ld [$40bf], sp                                ; $4027: $08 $bf $40
    ld c, $28                                     ; $402a: $0e $28

jr_09c_402c:
    rst $38                                       ; $402c: $ff
    nop                                           ; $402d: $00
    ld [$40bf], sp                                ; $402e: $08 $bf $40
    or l                                          ; $4031: $b5
    ld c, d                                       ; $4032: $4a
    inc h                                         ; $4033: $24
    ld [$847b], sp                                ; $4034: $08 $7b $84
    jp nc, $2d00                                  ; $4037: $d2 $00 $2d

    and l                                         ; $403a: $a5
    ld e, d                                       ; $403b: $5a
    ld b, e                                       ; $403c: $43
    cp h                                          ; $403d: $bc
    ld b, $f9                                     ; $403e: $06 $f9
    rst $38                                       ; $4040: $ff
    nop                                           ; $4041: $00
    nop                                           ; $4042: $00
    rst $30                                       ; $4043: $f7
    ld [$04fb], sp                                ; $4044: $08 $fb $04
    rst $28                                       ; $4047: $ef
    db $10                                        ; $4048: $10
    add $00                                       ; $4049: $c6 $00
    add hl, sp                                    ; $404b: $39
    call $9f32                                    ; $404c: $cd $32 $9f
    ld h, b                                       ; $404f: $60
    ld l, $d1                                     ; $4050: $2e $d1
    dec b                                         ; $4052: $05
    nop                                           ; $4053: $00
    ld a, [$f52a]                                 ; $4054: $fa $2a $f5
    add h                                         ; $4057: $84
    ei                                            ; $4058: $fb
    nop                                           ; $4059: $00
    rst $38                                       ; $405a: $ff
    ld c, b                                       ; $405b: $48
    nop                                           ; $405c: $00
    rst $38                                       ; $405d: $ff
    add b                                         ; $405e: $80
    rst $38                                       ; $405f: $ff
    inc d                                         ; $4060: $14
    rst $38                                       ; $4061: $ff
    xor d                                         ; $4062: $aa
    rst $38                                       ; $4063: $ff
    ld d, l                                       ; $4064: $55
    ld [bc], a                                    ; $4065: $02
    xor d                                         ; $4066: $aa
    ld a, [hl+]                                   ; $4067: $2a
    push de                                       ; $4068: $d5
    inc b                                         ; $4069: $04
    ei                                            ; $406a: $fb
    ld b, b                                       ; $406b: $40
    ld c, $00                                     ; $406c: $0e $00
    ld a, [bc]                                    ; $406e: $0a
    jr nz, @+$01                                  ; $406f: $20 $ff

    ld d, c                                       ; $4071: $51
    stop                                          ; $4072: $10 $00
    ld [$db85], a                                 ; $4074: $ea $85 $db
    and b                                         ; $4077: $a0
    xor l                                         ; $4078: $ad
    nop                                           ; $4079: $00
    ld d, e                                       ; $407a: $53
    or e                                          ; $407b: $b3
    dec b                                         ; $407c: $05
    rst $20                                       ; $407d: $e7
    ld sp, hl                                     ; $407e: $f9
    ld e, [hl]                                    ; $407f: $5e
    rst $38                                       ; $4080: $ff
    add hl, hl                                    ; $4081: $29
    nop                                           ; $4082: $00
    sbc $82                                       ; $4083: $de $82
    rst $38                                       ; $4085: $ff
    db $db                                        ; $4086: $db
    and h                                         ; $4087: $a4
    ld l, a                                       ; $4088: $6f
    add b                                         ; $4089: $80
    xor c                                         ; $408a: $a9
    nop                                           ; $408b: $00
    ld d, l                                       ; $408c: $55
    rst $18                                       ; $408d: $df
    ld bc, $8b75                                  ; $408e: $01 $75 $8b
    sub $22                                       ; $4091: $d6 $22
    cp a                                          ; $4093: $bf
    nop                                           ; $4094: $00
    ld [bc], a                                    ; $4095: $02
    db $eb                                        ; $4096: $eb
    ld [de], a                                    ; $4097: $12
    pop de                                        ; $4098: $d1
    and h                                         ; $4099: $a4
    cp d                                          ; $409a: $ba
    add b                                         ; $409b: $80
    ld b, l                                       ; $409c: $45
    nop                                           ; $409d: $00
    ld de, $05ab                                  ; $409e: $11 $ab $05
    dec e                                         ; $40a1: $1d
    ld b, c                                       ; $40a2: $41
    xor d                                         ; $40a3: $aa
    ld b, d                                       ; $40a4: $42
    ld h, l                                       ; $40a5: $65
    nop                                           ; $40a6: $00
    ld [de], a                                    ; $40a7: $12
    xor d                                         ; $40a8: $aa
    ld [bc], a                                    ; $40a9: $02
    push af                                       ; $40aa: $f5
    xor b                                         ; $40ab: $a8
    xor d                                         ; $40ac: $aa
    push bc                                       ; $40ad: $c5
    ld d, c                                       ; $40ae: $51
    nop                                           ; $40af: $00
    adc e                                         ; $40b0: $8b
    xor e                                         ; $40b1: $ab
    ld d, l                                       ; $40b2: $55
    sub l                                         ; $40b3: $95
    db $eb                                        ; $40b4: $eb
    cp e                                          ; $40b5: $bb
    ld e, [hl]                                    ; $40b6: $5e
    ld d, a                                       ; $40b7: $57
    nop                                           ; $40b8: $00
    ld a, [bc]                                    ; $40b9: $0a
    adc e                                         ; $40ba: $8b
    ld [hl+], a                                   ; $40bb: $22
    ld d, a                                       ; $40bc: $57
    cp h                                          ; $40bd: $bc
    daa                                           ; $40be: $27
    call c, Call_000_0005                         ; $40bf: $dc $05 $00
    db $fc                                        ; $40c2: $fc
    xor a                                         ; $40c3: $af
    ld a, b                                       ; $40c4: $78
    inc b                                         ; $40c5: $04
    ld a, [$dcab]                                 ; $40c6: $fa $ab $dc
    rra                                           ; $40c9: $1f
    nop                                           ; $40ca: $00
    rst $30                                       ; $40cb: $f7
    ld e, l                                       ; $40cc: $5d
    or d                                          ; $40cd: $b2
    ld e, l                                       ; $40ce: $5d
    daa                                           ; $40cf: $27
    and $0d                                       ; $40d0: $e6 $0d
    ld a, l                                       ; $40d2: $7d

jr_09c_40d3:
    nop                                           ; $40d3: $00
    add [hl]                                      ; $40d4: $86
    jp c, $bd0c                                   ; $40d5: $da $0c $bd

    ld c, b                                       ; $40d8: $48
    jp nc, Jump_000_352d                          ; $40d9: $d2 $2d $35

    nop                                           ; $40dc: $00
    sbc d                                         ; $40dd: $9a
    ld [$44f5], a                                 ; $40de: $ea $f5 $44
    call nc, $7cbe                                ; $40e1: $d4 $be $7c
    ld d, b                                       ; $40e4: $50
    nop                                           ; $40e5: $00
    xor h                                         ; $40e6: $ac
    xor d                                         ; $40e7: $aa
    ld e, b                                       ; $40e8: $58
    dec d                                         ; $40e9: $15
    xor d                                         ; $40ea: $aa
    adc d                                         ; $40eb: $8a
    ld a, b                                       ; $40ec: $78
    ld d, c                                       ; $40ed: $51
    nop                                           ; $40ee: $00
    inc [hl]                                      ; $40ef: $34
    cp b                                          ; $40f0: $b8
    ld d, d                                       ; $40f1: $52
    ld d, a                                       ; $40f2: $57
    add h                                         ; $40f3: $84
    add d                                         ; $40f4: $82
    inc c                                         ; $40f5: $0c
    ld d, [hl]                                    ; $40f6: $56
    nop                                           ; $40f7: $00
    add l                                         ; $40f8: $85
    adc a                                         ; $40f9: $8f
    jr z, @+$1f                                   ; $40fa: $28 $1d

    adc b                                         ; $40fc: $88
    and a                                         ; $40fd: $a7
    ld [$001b], sp                                ; $40fe: $08 $1b $00
    ld d, b                                       ; $4101: $50
    ld l, $10                                     ; $4102: $2e $10
    dec de                                        ; $4104: $1b
    db $f4                                        ; $4105: $f4
    ld e, $e0                                     ; $4106: $1e $e0
    xor d                                         ; $4108: $aa
    nop                                           ; $4109: $00
    ld [hl], l                                    ; $410a: $75
    rra                                           ; $410b: $1f
    ldh [$f5], a                                  ; $410c: $e0 $f5
    jp z, Jump_09c_55aa                           ; $410e: $ca $aa $55

    ld [hl], a                                    ; $4111: $77
    nop                                           ; $4112: $00
    ld b, b                                       ; $4113: $40
    db $db                                        ; $4114: $db
    and h                                         ; $4115: $a4
    or l                                          ; $4116: $b5
    ld e, h                                       ; $4117: $5c

jr_09c_4118:
    ld [$b935], a                                 ; $4118: $ea $35 $b9
    nop                                           ; $411b: $00
    ld l, e                                       ; $411c: $6b
    ld c, d                                       ; $411d: $4a
    dec [hl]                                      ; $411e: $35
    sub h                                         ; $411f: $94
    ld h, d                                       ; $4120: $62
    add sp, $55                                   ; $4121: $e8 $55
    ld d, l                                       ; $4123: $55
    nop                                           ; $4124: $00
    xor $aa                                       ; $4125: $ee $aa
    push af                                       ; $4127: $f5
    ld d, c                                       ; $4128: $51
    jr nc, jr_09c_40d3                            ; $4129: $30 $a8

    ld h, b                                       ; $412b: $60
    ld [hl], h                                    ; $412c: $74
    nop                                           ; $412d: $00
    xor c                                         ; $412e: $a9
    xor d                                         ; $412f: $aa
    ld h, h                                       ; $4130: $64
    ld b, h                                       ; $4131: $44
    ret nc                                        ; $4132: $d0

    jp hl                                         ; $4133: $e9


    ld b, b                                       ; $4134: $40
    ld l, h                                       ; $4135: $6c
    nop                                           ; $4136: $00
    ld sp, hl                                     ; $4137: $f9

Call_09c_4138:
    cp h                                          ; $4138: $bc
    rst $00                                       ; $4139: $c7
    dec de                                        ; $413a: $1b
    sub h                                         ; $413b: $94
    cp l                                          ; $413c: $bd
    jr nz, jr_09c_419a                            ; $413d: $20 $5b

    nop                                           ; $413f: $00
    jr nz, jr_09c_4181                            ; $4140: $20 $3f

    cp h                                          ; $4142: $bc
    add c                                         ; $4143: $81
    ld a, a                                       ; $4144: $7f
    call nc, $c16f                                ; $4145: $d4 $6f $c1
    ld [$aa7e], sp                                ; $4148: $08 $7e $aa
    push af                                       ; $414b: $f5
    rst $38                                       ; $414c: $ff
    ret c                                         ; $414d: $d8

    nop                                           ; $414e: $00
    add b                                         ; $414f: $80
    rst $38                                       ; $4150: $ff
    ret nz                                        ; $4151: $c0

    ld b, h                                       ; $4152: $44
    cp a                                          ; $4153: $bf
    inc b                                         ; $4154: $04
    jr jr_09c_4118                                ; $4155: $18 $c1

    cp a                                          ; $4157: $bf
    rst $38                                       ; $4158: $ff
    dec sp                                        ; $4159: $3b
    ld bc, $55aa                                  ; $415a: $01 $aa $55
    and b                                         ; $415d: $a0
    ccf                                           ; $415e: $3f
    add hl, de                                    ; $415f: $19
    xor d                                         ; $4160: $aa
    ld h, b                                       ; $4161: $60
    ld de, $bf41                                  ; $4162: $11 $41 $bf
    add e                                         ; $4165: $83
    ld a, a                                       ; $4166: $7f
    ld bc, $ff02                                  ; $4167: $01 $02 $ff
    inc bc                                        ; $416a: $03
    rst $38                                       ; $416b: $ff
    ld bc, $abff                                  ; $416c: $01 $ff $ab
    ld a, l                                       ; $416f: $7d
    ld bc, $0051                                  ; $4170: $01 $51 $00
    xor a                                         ; $4173: $af
    jp hl                                         ; $4174: $e9


    rla                                           ; $4175: $17
    db $fc                                        ; $4176: $fc
    inc bc                                        ; $4177: $03
    ld sp, hl                                     ; $4178: $f9
    rlca                                          ; $4179: $07
    db $fd                                        ; $417a: $fd
    nop                                           ; $417b: $00
    inc bc                                        ; $417c: $03
    ld hl, sp+$07                                 ; $417d: $f8 $07
    ld a, l                                       ; $417f: $7d
    add e                                         ; $4180: $83

jr_09c_4181:
    call c, $c323                                 ; $4181: $dc $23 $c3
    ld de, $d7ff                                  ; $4184: $11 $ff $d7
    rst $28                                       ; $4187: $ef
    inc b                                         ; $4188: $04
    ld c, b                                       ; $4189: $48
    db $fd                                        ; $418a: $fd
    inc bc                                        ; $418b: $03
    db $fc                                        ; $418c: $fc
    ld [bc], a                                    ; $418d: $02
    nop                                           ; $418e: $00
    ret nz                                        ; $418f: $c0

    ld b, $18                                     ; $4190: $06 $18
    ld [$fd08], sp                                ; $4192: $08 $08 $fd
    add d                                         ; $4195: $82
    xor $91                                       ; $4196: $ee $91
    ei                                            ; $4198: $fb
    dec b                                         ; $4199: $05

jr_09c_419a:
    nop                                           ; $419a: $00
    ld c, a                                       ; $419b: $4f
    and c                                         ; $419c: $a1
    ei                                            ; $419d: $fb
    ld bc, $2b94                                  ; $419e: $01 $94 $2b
    ld a, a                                       ; $41a1: $7f
    add d                                         ; $41a2: $82
    nop                                           ; $41a3: $00
    rst $28                                       ; $41a4: $ef
    ld [de], a                                    ; $41a5: $12
    push bc                                       ; $41a6: $c5
    xor b                                         ; $41a7: $a8
    and d                                         ; $41a8: $a2
    push de                                       ; $41a9: $d5
    dec d                                         ; $41aa: $15
    xor e                                         ; $41ab: $ab
    nop                                           ; $41ac: $00
    xor e                                         ; $41ad: $ab
    ld e, l                                       ; $41ae: $5d
    ld b, l                                       ; $41af: $45
    xor e                                         ; $41b0: $ab
    adc e                                         ; $41b1: $8b
    or $be                                        ; $41b2: $f6 $be
    rra                                           ; $41b4: $1f
    nop                                           ; $41b5: $00
    ld e, e                                       ; $41b6: $5b
    and d                                         ; $41b7: $a2
    rst $28                                       ; $41b8: $ef
    sub b                                         ; $41b9: $90
    reti                                          ; $41ba: $d9


    add d                                         ; $41bb: $82
    rst $30                                       ; $41bc: $f7
    ld bc, $1700                                  ; $41bd: $01 $00 $17
    xor c                                         ; $41c0: $a9
    ld [$d615], a                                 ; $41c1: $ea $15 $d6
    dec hl                                        ; $41c4: $2b
    inc l                                         ; $41c5: $2c
    ld b, e                                       ; $41c6: $43
    nop                                           ; $41c7: $00
    ld a, [$8007]                                 ; $41c8: $fa $07 $80
    rst $38                                       ; $41cb: $ff
    call nz, Call_000_31fb                        ; $41cc: $c4 $fb $31
    rst $18                                       ; $41cf: $df
    nop                                           ; $41d0: $00
    dec b                                         ; $41d1: $05
    ei                                            ; $41d2: $fb
    ld d, c                                       ; $41d3: $51
    cp a                                          ; $41d4: $bf
    jr z, @-$07                                   ; $41d5: $28 $f7

    sub b                                         ; $41d7: $90
    ld l, a                                       ; $41d8: $6f
    nop                                           ; $41d9: $00
    inc bc                                        ; $41da: $03
    rst $38                                       ; $41db: $ff
    or a                                          ; $41dc: $b7
    ld b, h                                       ; $41dd: $44
    ld e, a                                       ; $41de: $5f
    and h                                         ; $41df: $a4
    or c                                          ; $41e0: $b1
    ld c, h                                       ; $41e1: $4c
    nop                                           ; $41e2: $00
    rst $38                                       ; $41e3: $ff
    ld [$18ae], sp                                ; $41e4: $08 $ae $18
    ld a, l                                       ; $41e7: $7d
    adc d                                         ; $41e8: $8a
    xor a                                         ; $41e9: $af
    ld d, b                                       ; $41ea: $50
    nop                                           ; $41eb: $00
    ld [$6b11], a                                 ; $41ec: $ea $11 $6b
    inc d                                         ; $41ef: $14
    jp z, $7f25                                   ; $41f0: $ca $25 $7f

    add h                                         ; $41f3: $84
    nop                                           ; $41f4: $00
    db $dd                                        ; $41f5: $dd
    ld a, [bc]                                    ; $41f6: $0a
    cp a                                          ; $41f7: $bf
    ld c, b                                       ; $41f8: $48
    sbc $28                                       ; $41f9: $de $28
    cp l                                          ; $41fb: $bd
    ld [de], a                                    ; $41fc: $12
    nop                                           ; $41fd: $00
    ei                                            ; $41fe: $fb
    db $10                                        ; $41ff: $10

Jump_09c_4200:
    ld e, l                                       ; $4200: $5d

Jump_09c_4201:
    and a                                         ; $4201: $a7
    jr nc, jr_09c_4253                            ; $4202: $30 $4f

    db $fc                                        ; $4204: $fc
    rlca                                          ; $4205: $07
    nop                                           ; $4206: $00
    ld e, b                                       ; $4207: $58
    cpl                                           ; $4208: $2f
    ld a, c                                       ; $4209: $79
    adc [hl]                                      ; $420a: $8e
    cp c                                          ; $420b: $b9
    ld c, $f4                                     ; $420c: $0e $f4
    rra                                           ; $420e: $1f
    nop                                           ; $420f: $00
    ld [hl], c                                    ; $4210: $71
    sbc [hl]                                      ; $4211: $9e
    ld d, l                                       ; $4212: $55
    cp [hl]                                       ; $4213: $be
    ld b, $fd                                     ; $4214: $06 $fd
    sub h                                         ; $4216: $94
    ld l, [hl]                                    ; $4217: $6e
    nop                                           ; $4218: $00
    ld a, [bc]                                    ; $4219: $0a
    db $fd                                        ; $421a: $fd
    cpl                                           ; $421b: $2f
    jp c, $fc4a                                   ; $421c: $da $4a $fc

    dec [hl]                                      ; $421f: $35
    jp c, Jump_000_1b00                           ; $4220: $da $00 $1b

    push af                                       ; $4223: $f5
    ld a, a                                       ; $4224: $7f
    sub b                                         ; $4225: $90
    xor d                                         ; $4226: $aa
    ld h, l                                       ; $4227: $65
    ld a, l                                       ; $4228: $7d
    jr nz, jr_09c_422b                            ; $4229: $20 $00

jr_09c_422b:
    ld [hl], a                                    ; $422b: $77
    xor b                                         ; $422c: $a8
    cp $40                                        ; $422d: $fe $40
    push hl                                       ; $422f: $e5
    ld d, d                                       ; $4230: $52
    rst $38                                       ; $4231: $ff
    ld b, b                                       ; $4232: $40
    nop                                           ; $4233: $00
    jp c, Jump_09c_7ca1                           ; $4234: $da $a1 $7c

    ld de, $20f6                                  ; $4237: $11 $f6 $20
    sbc a                                         ; $423a: $9f
    ld h, b                                       ; $423b: $60
    nop                                           ; $423c: $00
    ld a, [hl]                                    ; $423d: $7e
    cp l                                          ; $423e: $bd
    db $eb                                        ; $423f: $eb
    ld b, a                                       ; $4240: $47
    ld [$df51], a                                 ; $4241: $ea $51 $df
    ld h, b                                       ; $4244: $60
    nop                                           ; $4245: $00
    ld [$ee84], a                                 ; $4246: $ea $84 $ee
    rra                                           ; $4249: $1f
    db $eb                                        ; $424a: $eb
    ld sp, $a174                                  ; $424b: $31 $74 $a1
    nop                                           ; $424e: $00
    call z, $c522                                 ; $424f: $cc $22 $c5
    ret nc                                        ; $4252: $d0

jr_09c_4253:
    and d                                         ; $4253: $a2
    ld c, h                                       ; $4254: $4c
    ld d, h                                       ; $4255: $54
    pop bc                                        ; $4256: $c1
    nop                                           ; $4257: $00
    xor [hl]                                      ; $4258: $ae
    sub b                                         ; $4259: $90
    ld de, $eafa                                  ; $425a: $11 $fa $ea
    push af                                       ; $425d: $f5
    ld a, l                                       ; $425e: $7d
    jr z, jr_09c_4261                             ; $425f: $28 $00

jr_09c_4261:
    and d                                         ; $4261: $a2
    dec [hl]                                      ; $4262: $35
    ld d, l                                       ; $4263: $55
    ld l, a                                       ; $4264: $6f
    ld h, d                                       ; $4265: $62
    push de                                       ; $4266: $d5
    ld d, c                                       ; $4267: $51
    ld l, d                                       ; $4268: $6a
    ld [$d5aa], sp                                ; $4269: $08 $aa $d5
    db $ec                                        ; $426c: $ec
    inc de                                        ; $426d: $13
    jp nc, $fd08                                  ; $426e: $d2 $08 $fd

    inc bc                                        ; $4271: $03
    ret c                                         ; $4272: $d8

    ld b, h                                       ; $4273: $44
    daa                                           ; $4274: $27
    ld a, [c]                                     ; $4275: $f2
    ld [$0bf5], sp                                ; $4276: $08 $f5 $0b
    ld hl, sp-$06                                 ; $4279: $f8 $fa
    db $10                                        ; $427b: $10
    cp h                                          ; $427c: $bc
    ld b, e                                       ; $427d: $43
    nop                                           ; $427e: $00
    push af                                       ; $427f: $f5
    dec bc                                        ; $4280: $0b
    ld a, c                                       ; $4281: $79
    add a                                         ; $4282: $87
    db $ed                                        ; $4283: $ed
    inc de                                        ; $4284: $13
    db $dd                                        ; $4285: $dd
    inc hl                                        ; $4286: $23
    nop                                           ; $4287: $00
    xor c                                         ; $4288: $a9
    ld d, a                                       ; $4289: $57
    ld d, b                                       ; $428a: $50
    xor a                                         ; $428b: $af
    ld hl, $00df                                  ; $428c: $21 $df $00
    rst $38                                       ; $428f: $ff
    inc b                                         ; $4290: $04
    ld de, $23ff                                  ; $4291: $11 $ff $23
    rst $38                                       ; $4294: $ff
    ld b, l                                       ; $4295: $45
    ld [hl+], a                                   ; $4296: $22
    add hl, bc                                    ; $4297: $09
    add sp, -$01                                  ; $4298: $e8 $ff
    ld b, b                                       ; $429a: $40
    ld d, l                                       ; $429b: $55
    inc b                                         ; $429c: $04
    ld c, b                                       ; $429d: $48
    ld l, l                                       ; $429e: $6d
    cp h                                          ; $429f: $bc
    xor [hl]                                      ; $42a0: $ae
    call nc, $8c54                                ; $42a1: $d4 $54 $8c
    nop                                           ; $42a4: $00
    xor d                                         ; $42a5: $aa
    ld e, b                                       ; $42a6: $58
    ld e, l                                       ; $42a7: $5d
    xor b                                         ; $42a8: $a8
    adc d                                         ; $42a9: $8a
    ld e, b                                       ; $42aa: $58
    push de                                       ; $42ab: $d5
    or b                                          ; $42ac: $b0
    nop                                           ; $42ad: $00
    cp d                                          ; $42ae: $ba
    ld d, c                                       ; $42af: $51
    rla                                           ; $42b0: $17
    inc b                                         ; $42b1: $04
    ld a, [hl+]                                   ; $42b2: $2a
    add h                                         ; $42b3: $84
    ld d, [hl]                                    ; $42b4: $56
    dec h                                         ; $42b5: $25
    nop                                           ; $42b6: $00
    adc a                                         ; $42b7: $8f
    ld c, b                                       ; $42b8: $48
    ld e, l                                       ; $42b9: $5d
    ld a, [bc]                                    ; $42ba: $0a
    ld [hl+], a                                   ; $42bb: $22
    adc h                                         ; $42bc: $8c
    ld e, l                                       ; $42bd: $5d
    ld [hl-], a                                   ; $42be: $32
    nop                                           ; $42bf: $00
    cp l                                          ; $42c0: $bd
    ld d, b                                       ; $42c1: $50
    ld d, l                                       ; $42c2: $55
    xor d                                         ; $42c3: $aa
    ld a, [hl]                                    ; $42c4: $7e
    add c                                         ; $42c5: $81
    rst $08                                       ; $42c6: $cf
    pop af                                        ; $42c7: $f1
    nop                                           ; $42c8: $00
    cp h                                          ; $42c9: $bc
    rst $38                                       ; $42ca: $ff
    di                                            ; $42cb: $f3
    adc a                                         ; $42cc: $8f
    jp nz, $d080                                  ; $42cd: $c2 $80 $d0

    add b                                         ; $42d0: $80
    db $10                                        ; $42d1: $10
    ret z                                         ; $42d2: $c8

    add b                                         ; $42d3: $80
    nop                                           ; $42d4: $00
    pop hl                                        ; $42d5: $e1
    ld [bc], a                                    ; $42d6: $02
    add c                                         ; $42d7: $81
    nop                                           ; $42d8: $00
    jp Jump_000_0081                              ; $42d9: $c3 $81 $00


    nop                                           ; $42dc: $00
    add c                                         ; $42dd: $81
    sub c                                         ; $42de: $91
    nop                                           ; $42df: $00
    ld [$0000], sp                                ; $42e0: $08 $00 $00
    nop                                           ; $42e3: $00
    nop                                           ; $42e4: $00
    ld d, l                                       ; $42e5: $55
    xor d                                         ; $42e6: $aa
    ld l, [hl]                                    ; $42e7: $6e
    sub c                                         ; $42e8: $91
    db $e3                                        ; $42e9: $e3
    sbc a                                         ; $42ea: $9f
    dec a                                         ; $42eb: $3d
    rst $38                                       ; $42ec: $ff
    nop                                           ; $42ed: $00
    rst $08                                       ; $42ee: $cf
    pop af                                        ; $42ef: $f1
    ld b, e                                       ; $42f0: $43
    ld bc, $0103                                  ; $42f1: $01 $03 $01
    dec bc                                        ; $42f4: $0b
    ld bc, $c100                                  ; $42f5: $01 $00 $c1
    add b                                         ; $42f8: $80
    adc $80                                       ; $42f9: $ce $80
    ld a, [c]                                     ; $42fb: $f2
    adc h                                         ; $42fc: $8c
    pop bc                                        ; $42fd: $c1
    cp [hl]                                       ; $42fe: $be
    nop                                           ; $42ff: $00
    add b                                         ; $4300: $80
    rst $38                                       ; $4301: $ff
    ldh [$9f], a                                  ; $4302: $e0 $9f
    sub b                                         ; $4304: $90
    rst $08                                       ; $4305: $cf
    adc b                                         ; $4306: $88
    rst $00                                       ; $4307: $c7
    ld d, b                                       ; $4308: $50
    rst $38                                       ; $4309: $ff
    inc h                                         ; $430a: $24
    nop                                           ; $430b: $00
    inc h                                         ; $430c: $24
    jr z, jr_09c_430f                             ; $430d: $28 $00

jr_09c_430f:
    sub b                                         ; $430f: $90
    nop                                           ; $4310: $00
    ld b, b                                       ; $4311: $40
    add b                                         ; $4312: $80
    nop                                           ; $4313: $00
    ld hl, $10c0                                  ; $4314: $21 $c0 $10
    ldh [$87], a                                  ; $4317: $e0 $87
    ld bc, $0173                                  ; $4319: $01 $73 $01
    ld bc, $010f                                  ; $431c: $01 $0f $01
    add e                                         ; $431f: $83
    ld bc, $0301                                  ; $4320: $01 $01 $03
    ld b, e                                       ; $4323: $43
    inc b                                         ; $4324: $04
    nop                                           ; $4325: $00
    nop                                           ; $4326: $00
    ld de, $8403                                  ; $4327: $11 $03 $84
    jp $c162                                      ; $432a: $c3 $62 $c1


    ld h, l                                       ; $432d: $65
    ret nz                                        ; $432e: $c0

    nop                                           ; $432f: $00
    ld h, b                                       ; $4330: $60
    ret nz                                        ; $4331: $c0

    ret nz                                        ; $4332: $c0

    ld h, b                                       ; $4333: $60
    or h                                          ; $4334: $b4
    ld h, b                                       ; $4335: $60
    pop hl                                        ; $4336: $e1
    jr nc, jr_09c_4339                            ; $4337: $30 $00

jr_09c_4339:
    ret c                                         ; $4339: $d8

    jr nc, jr_09c_4344                            ; $433a: $30 $08

    ldh a, [rDIV]                                 ; $433c: $f0 $04
    ld hl, sp+$02                                 ; $433e: $f8 $02
    db $fc                                        ; $4340: $fc
    nop                                           ; $4341: $00
    add c                                         ; $4342: $81
    ld a, [hl]                                    ; $4343: $7e

jr_09c_4344:
    ld b, b                                       ; $4344: $40
    ccf                                           ; $4345: $3f
    jr nz, jr_09c_4367                            ; $4346: $20 $1f

    db $10                                        ; $4348: $10
    rrca                                          ; $4349: $0f
    nop                                           ; $434a: $00
    adc b                                         ; $434b: $88
    rlca                                          ; $434c: $07
    adc e                                         ; $434d: $8b
    inc bc                                        ; $434e: $03
    ld b, [hl]                                    ; $434f: $46
    inc bc                                        ; $4350: $03
    ld h, $03                                     ; $4351: $26 $03
    nop                                           ; $4353: $00
    ld b, $03                                     ; $4354: $06 $03
    add e                                         ; $4356: $83
    ld b, $4d                                     ; $4357: $06 $4d
    add [hl]                                      ; $4359: $86
    dec h                                         ; $435a: $25
    adc $00                                       ; $435b: $ce $00
    ld a, [de]                                    ; $435d: $1a
    db $ed                                        ; $435e: $ed
    db $ec                                        ; $435f: $ec
    jr jr_09c_43d8                                ; $4360: $18 $76

    adc h                                         ; $4362: $8c
    ei                                            ; $4363: $fb
    ld b, $00                                     ; $4364: $06 $00
    db $ed                                        ; $4366: $ed

jr_09c_4367:
    inc de                                        ; $4367: $13
    ld a, [c]                                     ; $4368: $f2
    dec c                                         ; $4369: $0d
    pop hl                                        ; $436a: $e1
    ld e, $53                                     ; $436b: $1e $53
    xor h                                         ; $436d: $ac
    nop                                           ; $436e: $00
    and l                                         ; $436f: $a5
    ld e, d                                       ; $4370: $5a
    inc h                                         ; $4371: $24
    inc bc                                        ; $4372: $03
    ld [bc], a                                    ; $4373: $02
    ld bc, $0021                                  ; $4374: $01 $21 $00
    add b                                         ; $4377: $80
    sub d                                         ; $4378: $92
    ld [$c366], sp                                ; $4379: $08 $66 $c3
    and l                                         ; $437c: $a5
    ld a, [hl]                                    ; $437d: $7e
    reti                                          ; $437e: $d9


    ld a, $35                                     ; $437f: $3e $35
    nop                                           ; $4381: $00
    jp c, $b06f                                   ; $4382: $da $6f $b0

    db $dd                                        ; $4385: $dd
    ld h, d                                       ; $4386: $62
    cp e                                          ; $4387: $bb
    call nz, $007f                                ; $4388: $c4 $7f $00
    add b                                         ; $438b: $80
    xor $11                                       ; $438c: $ee $11
    cp l                                          ; $438e: $bd
    ld b, d                                       ; $438f: $42
    ld hl, sp+$07                                 ; $4390: $f8 $07
    ld d, h                                       ; $4392: $54
    nop                                           ; $4393: $00

jr_09c_4394:
    and c                                         ; $4394: $a1
    pop hl                                        ; $4395: $e1
    ld de, $01f8                                  ; $4396: $11 $f8 $01
    db $fd                                        ; $4399: $fd
    ld bc, $00f8                                  ; $439a: $01 $f8 $00
    dec b                                         ; $439d: $05
    or l                                          ; $439e: $b5
    ld c, l                                       ; $439f: $4d
    ld hl, sp+$09                                 ; $43a0: $f8 $09
    pop af                                        ; $43a2: $f1
    ld bc, $64f4                                  ; $43a3: $01 $f4 $64
    ld bc, $1804                                  ; $43a6: $01 $04 $18
    inc d                                         ; $43a9: $14
    jr @-$09                                      ; $43aa: $18 $f5

    dec c                                         ; $43ac: $0d
    inc d                                         ; $43ad: $14
    jr z, jr_09c_4394                             ; $43ae: $28 $e4

    ld de, $7102                                  ; $43b0: $11 $02 $71
    add c                                         ; $43b3: $81
    ret c                                         ; $43b4: $d8

    ld hl, $817d                                  ; $43b5: $21 $7d $81
    inc d                                         ; $43b8: $14
    jr @-$1d                                      ; $43b9: $18 $e1

    nop                                           ; $43bb: $00
    ld de, $31c4                                  ; $43bc: $11 $c4 $31
    pop bc                                        ; $43bf: $c1
    ld sp, $6194                                  ; $43c0: $31 $94 $61
    ld hl, $d104                                  ; $43c3: $21 $04 $d1
    jr nz, jr_09c_443d                            ; $43c6: $20 $75

    ld [hl+], a                                   ; $43c8: $22
    xor b                                         ; $43c9: $a8
    inc b                                         ; $43ca: $04
    ld c, b                                       ; $43cb: $48
    nop                                           ; $43cc: $00
    ld d, l                                       ; $43cd: $55
    nop                                           ; $43ce: $00
    nop                                           ; $43cf: $00
    xor d                                         ; $43d0: $aa
    ld bc, $0355                                  ; $43d1: $01 $55 $03
    xor e                                         ; $43d4: $ab
    rlca                                          ; $43d5: $07
    ld d, [hl]                                    ; $43d6: $56
    nop                                           ; $43d7: $00

jr_09c_43d8:
    rrca                                          ; $43d8: $0f
    xor l                                         ; $43d9: $ad
    rrca                                          ; $43da: $0f
    ld e, e                                       ; $43db: $5b
    rrca                                          ; $43dc: $0f
    xor [hl]                                      ; $43dd: $ae
    dec e                                         ; $43de: $1d
    ld d, d                                       ; $43df: $52
    nop                                           ; $43e0: $00
    ld [hl], a                                    ; $43e1: $77
    db $eb                                        ; $43e2: $eb
    rst $18                                       ; $43e3: $df
    cp [hl]                                       ; $43e4: $be
    db $fd                                        ; $43e5: $fd
    sbc d                                         ; $43e6: $9a
    rst $30                                       ; $43e7: $f7
    db $eb                                        ; $43e8: $eb
    nop                                           ; $43e9: $00
    rst $38                                       ; $43ea: $ff
    ld a, c                                       ; $43eb: $79
    rst $38                                       ; $43ec: $ff
    db $fc                                        ; $43ed: $fc
    ccf                                           ; $43ee: $3f
    rrca                                          ; $43ef: $0f
    call nc, $0041                                ; $43f0: $d4 $41 $00
    add sp, $42                                   ; $43f3: $e8 $42
    ld [hl], h                                    ; $43f5: $74
    and c                                         ; $43f6: $a1
    ld [$f4a0], a                                 ; $43f7: $ea $a0 $f4
    and c                                         ; $43fa: $a1
    nop                                           ; $43fb: $00
    cp d                                          ; $43fc: $ba
    ld d, b                                       ; $43fd: $50
    push af                                       ; $43fe: $f5
    ld d, b                                       ; $43ff: $50
    ld a, [$6450]                                 ; $4400: $fa $50 $64
    ld [hl], c                                    ; $4403: $71
    ld [$f872], sp                                ; $4404: $08 $72 $f8
    ld [hl], l                                    ; $4407: $75
    ld [hl], b                                    ; $4408: $70
    inc b                                         ; $4409: $04
    jr z, @-$04                                   ; $440a: $28 $fa

    ldh a, [rNR34]                                ; $440c: $f0 $1e
    nop                                           ; $440e: $00
    ld e, d                                       ; $440f: $5a
    rra                                           ; $4410: $1f
    cp [hl]                                       ; $4411: $be
    rlca                                          ; $4412: $07
    ld d, a                                       ; $4413: $57
    inc bc                                        ; $4414: $03
    xor e                                         ; $4415: $ab
    inc bc                                        ; $4416: $03
    nop                                           ; $4417: $00
    ld d, a                                       ; $4418: $57
    ld [bc], a                                    ; $4419: $02
    xor e                                         ; $441a: $ab
    ld b, $57                                     ; $441b: $06 $57
    ld c, $aa                                     ; $441d: $0e $aa
    ld bc, $0000                                  ; $441f: $01 $00 $00
    ld c, $06                                     ; $4422: $0e $06
    rra                                           ; $4424: $1f
    rrca                                          ; $4425: $0f
    cp h                                          ; $4426: $bc
    sbc h                                         ; $4427: $9c
    db $ec                                        ; $4428: $ec
    nop                                           ; $4429: $00
    db $fc                                        ; $442a: $fc
    call z, $ccdc                                 ; $442b: $cc $dc $cc
    call c, $8080                                 ; $442e: $dc $80 $80
    db $fd                                        ; $4431: $fd
    nop                                           ; $4432: $00
    adc b                                         ; $4433: $88
    ld a, d                                       ; $4434: $7a
    ld c, b                                       ; $4435: $48
    dec a                                         ; $4436: $3d
    jr z, @+$3c                                   ; $4437: $28 $3a

    db $10                                        ; $4439: $10
    dec [hl]                                      ; $443a: $35
    nop                                           ; $443b: $00
    db $10                                        ; $443c: $10

jr_09c_443d:
    ld a, [hl-]                                   ; $443d: $3a
    jr nc, jr_09c_44b5                            ; $443e: $30 $75

    jr nc, jr_09c_44bc                            ; $4440: $30 $7a

    ld d, b                                       ; $4442: $50
    ld a, l                                       ; $4443: $7d
    nop                                           ; $4444: $00
    inc a                                         ; $4445: $3c
    ld e, $1a                                     ; $4446: $1e $1a
    dec de                                        ; $4448: $1b
    ld a, [bc]                                    ; $4449: $0a
    or $52                                        ; $444a: $f6 $52
    dec [hl]                                      ; $444c: $35
    nop                                           ; $444d: $00
    inc h                                         ; $444e: $24
    or $e4                                        ; $444f: $f6 $e4
    ld a, l                                       ; $4451: $7d
    dec [hl]                                      ; $4452: $35
    ei                                            ; $4453: $fb
    ld a, d                                       ; $4454: $7a
    ld c, l                                       ; $4455: $4d
    nop                                           ; $4456: $00
    inc e                                         ; $4457: $1c
    cp a                                          ; $4458: $bf
    rla                                           ; $4459: $17
    ld e, a                                       ; $445a: $5f
    rla                                           ; $445b: $17
    cp [hl]                                       ; $445c: $be
    inc a                                         ; $445d: $3c
    ld a, a                                       ; $445e: $7f
    nop                                           ; $445f: $00
    ld a, a                                       ; $4460: $7f
    rst $18                                       ; $4461: $df
    xor b                                         ; $4462: $a8
    xor a                                         ; $4463: $af
    ld d, h                                       ; $4464: $54
    rst $18                                       ; $4465: $df
    ld a, [hl+]                                   ; $4466: $2a
    ldh [rP1], a                                  ; $4467: $e0 $00
    ret nz                                        ; $4469: $c0

    ld sp, hl                                     ; $446a: $f9
    pop af                                        ; $446b: $f1
    ld a, [hl]                                    ; $446c: $7e
    ld a, a                                       ; $446d: $7f
    dec a                                         ; $446e: $3d
    ld a, [hl-]                                   ; $446f: $3a
    ld a, [c]                                     ; $4470: $f2
    nop                                           ; $4471: $00
    call $1ce3                                    ; $4472: $cd $e3 $1c
    ld d, a                                       ; $4475: $57
    xor e                                         ; $4476: $ab
    rst $38                                       ; $4477: $ff
    ld b, $f5                                     ; $4478: $06 $f5
    nop                                           ; $447a: $00
    sub b                                         ; $447b: $90
    rst $38                                       ; $447c: $ff
    ld e, $ff                                     ; $447d: $1e $ff
    ld hl, $ae71                                  ; $447f: $21 $71 $ae
    db $e3                                        ; $4482: $e3
    nop                                           ; $4483: $00
    ld e, h                                       ; $4484: $5c
    rst $30                                       ; $4485: $f7
    adc c                                         ; $4486: $89
    rst $38                                       ; $4487: $ff
    ld b, d                                       ; $4488: $42
    rst $38                                       ; $4489: $ff
    dec d                                         ; $448a: $15
    ld sp, hl                                     ; $448b: $f9
    nop                                           ; $448c: $00
    db $fd                                        ; $448d: $fd
    rst $38                                       ; $448e: $ff
    cp $ff                                        ; $448f: $fe $ff
    ld sp, hl                                     ; $4491: $f9
    ld sp, hl                                     ; $4492: $f9
    cp $ff                                        ; $4493: $fe $ff
    ld b, b                                       ; $4495: $40
    ld hl, sp+$02                                 ; $4496: $f8 $02
    nop                                           ; $4498: $00
    db $fc                                        ; $4499: $fc
    ei                                            ; $449a: $fb
    ei                                            ; $449b: $fb
    rst $38                                       ; $449c: $ff
    add hl, bc                                    ; $449d: $09
    rst $38                                       ; $449e: $ff
    nop                                           ; $449f: $00
    call z, Call_09c_7aff                         ; $44a0: $cc $ff $7a
    rst $38                                       ; $44a3: $ff
    cp h                                          ; $44a4: $bc
    rst $30                                       ; $44a5: $f7
    ld h, [hl]                                    ; $44a6: $66
    rst $28                                       ; $44a7: $ef
    nop                                           ; $44a8: $00
    ld b, l                                       ; $44a9: $45
    db $d3                                        ; $44aa: $d3
    add a                                         ; $44ab: $87
    and e                                         ; $44ac: $a3
    ld a, [bc]                                    ; $44ad: $0a
    cp $f9                                        ; $44ae: $fe $f9
    db $fc                                        ; $44b0: $fc
    ld bc, $ea03                                  ; $44b1: $01 $03 $ea
    dec d                                         ; $44b4: $15

jr_09c_44b5:
    db $fd                                        ; $44b5: $fd
    ld [bc], a                                    ; $44b6: $02
    db $eb                                        ; $44b7: $eb
    inc d                                         ; $44b8: $14
    rra                                           ; $44b9: $1f
    ld [bc], a                                    ; $44ba: $02

jr_09c_44bb:
    nop                                           ; $44bb: $00

jr_09c_44bc:
    rst $38                                       ; $44bc: $ff
    db $f4                                        ; $44bd: $f4
    dec bc                                        ; $44be: $0b
    rst $38                                       ; $44bf: $ff
    ld l, $7f                                     ; $44c0: $2e $7f
    cp h                                          ; $44c2: $bc
    rst $30                                       ; $44c3: $f7
    nop                                           ; $44c4: $00
    ld [hl-], a                                   ; $44c5: $32
    ei                                            ; $44c6: $fb
    ld d, d                                       ; $44c7: $52
    push af                                       ; $44c8: $f5
    or c                                          ; $44c9: $b1
    db $eb                                        ; $44ca: $eb
    ld h, c                                       ; $44cb: $61
    push af                                       ; $44cc: $f5
    nop                                           ; $44cd: $00
    and c                                         ; $44ce: $a1
    db $eb                                        ; $44cf: $eb
    inc hl                                        ; $44d0: $23
    xor b                                         ; $44d1: $a8
    ld d, a                                       ; $44d2: $57
    ld d, c                                       ; $44d3: $51
    xor [hl]                                      ; $44d4: $ae
    ld [hl+], a                                   ; $44d5: $22
    nop                                           ; $44d6: $00
    db $dd                                        ; $44d7: $dd
    nop                                           ; $44d8: $00
    rst $38                                       ; $44d9: $ff
    db $10                                        ; $44da: $10
    rst $38                                       ; $44db: $ff
    ld [hl+], a                                   ; $44dc: $22
    rst $38                                       ; $44dd: $ff
    ld b, h                                       ; $44de: $44
    add d                                         ; $44df: $82
    ld h, b                                       ; $44e0: $60
    inc d                                         ; $44e1: $14
    jr z, jr_09c_44bb                             ; $44e2: $28 $d7

    ld b, b                                       ; $44e4: $40
    cp a                                          ; $44e5: $bf
    inc b                                         ; $44e6: $04
    pop bc                                        ; $44e7: $c1
    inc b                                         ; $44e8: $04
    inc h                                         ; $44e9: $24
    inc h                                         ; $44ea: $24
    rst $38                                       ; $44eb: $ff
    ld b, c                                       ; $44ec: $41
    ld [hl], b                                    ; $44ed: $70
    inc h                                         ; $44ee: $24
    sub b                                         ; $44ef: $90
    ld l, a                                       ; $44f0: $6f
    jr nz, jr_09c_44fb                            ; $44f1: $20 $08

    and d                                         ; $44f3: $a2
    rst $38                                       ; $44f4: $ff
    ld b, b                                       ; $44f5: $40
    dec b                                         ; $44f6: $05
    add b                                         ; $44f7: $80
    inc b                                         ; $44f8: $04
    xor d                                         ; $44f9: $aa
    rst $30                                       ; $44fa: $f7

jr_09c_44fb:
    or h                                          ; $44fb: $b4
    rst $38                                       ; $44fc: $ff
    ei                                            ; $44fd: $fb
    rrca                                          ; $44fe: $0f
    nop                                           ; $44ff: $00
    xor a                                         ; $4500: $af
    ld bc, $01d7                                  ; $4501: $01 $d7 $01
    ld l, c                                       ; $4504: $69
    ld [de], a                                    ; $4505: $12
    ld e, a                                       ; $4506: $5f
    add d                                         ; $4507: $82
    nop                                           ; $4508: $00
    ret                                           ; $4509: $c9


    ld h, $a5                                     ; $450a: $26 $a5
    jp z, $80ff                                   ; $450c: $ca $ff $80

    db $ec                                        ; $450f: $ec
    inc de                                        ; $4510: $13
    nop                                           ; $4511: $00
    or d                                          ; $4512: $b2
    ld c, c                                       ; $4513: $49
    adc $21                                       ; $4514: $ce $21
    halt                                          ; $4516: $76
    adc e                                         ; $4517: $8b
    jp c, Jump_000_0027                           ; $4518: $da $27 $00

    dec l                                         ; $451b: $2d
    ld b, e                                       ; $451c: $43
    ld a, e                                       ; $451d: $7b
    inc b                                         ; $451e: $04
    sub $0d                                       ; $451f: $d6 $0d
    rst $38                                       ; $4521: $ff
    inc b                                         ; $4522: $04
    nop                                           ; $4523: $00
    ld e, h                                       ; $4524: $5c
    ld a, [bc]                                    ; $4525: $0a
    rst $18                                       ; $4526: $df
    jr z, jr_09c_45a8                             ; $4527: $28 $7f

    rrca                                          ; $4529: $0f
    and b                                         ; $452a: $a0
    rra                                           ; $452b: $1f
    nop                                           ; $452c: $00
    db $f4                                        ; $452d: $f4
    dec de                                        ; $452e: $1b
    db $f4                                        ; $452f: $f4
    rrca                                          ; $4530: $0f
    reti                                          ; $4531: $d9


    ld h, $fc                                     ; $4532: $26 $fc
    rlca                                          ; $4534: $07
    nop                                           ; $4535: $00
    cp e                                          ; $4536: $bb
    ld c, l                                       ; $4537: $4d
    ld e, b                                       ; $4538: $58
    xor a                                         ; $4539: $af
    ld sp, hl                                     ; $453a: $f9
    ld c, $e0                                     ; $453b: $0e $e0
    rst $38                                       ; $453d: $ff
    nop                                           ; $453e: $00
    sub d                                         ; $453f: $92
    ld a, l                                       ; $4540: $7d
    or b                                          ; $4541: $b0
    rra                                           ; $4542: $1f
    ld l, d                                       ; $4543: $6a

jr_09c_4544:
    or l                                          ; $4544: $b5
    ld h, b                                       ; $4545: $60
    ccf                                           ; $4546: $3f
    inc b                                         ; $4547: $04
    push hl                                       ; $4548: $e5
    ld a, $50                                     ; $4549: $3e $50
    rst $28                                       ; $454b: $ef
    ld b, h                                       ; $454c: $44
    sub $04                                       ; $454d: $d6 $04
    sub d                                         ; $454f: $92
    db $ed                                        ; $4550: $ed
    nop                                           ; $4551: $00
    jr nc, @+$01                                  ; $4552: $30 $ff

    ld h, h                                       ; $4554: $64
    ei                                            ; $4555: $fb
    jr z, @+$01                                   ; $4556: $28 $ff

    cp h                                          ; $4558: $bc
    rst $38                                       ; $4559: $ff
    nop                                           ; $455a: $00
    rla                                           ; $455b: $17
    jp $c860                                      ; $455c: $c3 $60 $c8


    ld d, l                                       ; $455f: $55
    ret nz                                        ; $4560: $c0

    add d                                         ; $4561: $82
    adc c                                         ; $4562: $89
    inc bc                                        ; $4563: $03
    ld d, b                                       ; $4564: $50
    xor b                                         ; $4565: $a8
    jr nz, jr_09c_4544                            ; $4566: $20 $dc

    nop                                           ; $4568: $00
    cp $e0                                        ; $4569: $fe $e0
    inc a                                         ; $456b: $3c
    ld c, c                                       ; $456c: $49
    dec b                                         ; $456d: $05
    ld [bc], a                                    ; $456e: $02
    nop                                           ; $456f: $00
    ld a, [bc]                                    ; $4570: $0a
    ret nz                                        ; $4571: $c0

    nop                                           ; $4572: $00
    ldh [$08], a                                  ; $4573: $e0 $08
    sbc $02                                       ; $4575: $de $02
    and b                                         ; $4577: $a0
    jp nz, Jump_000_02db                          ; $4578: $c2 $db $02

    db $10                                        ; $457b: $10
    ld [$0014], sp                                ; $457c: $08 $14 $00
    nop                                           ; $457f: $00
    pop bc                                        ; $4580: $c1
    and b                                         ; $4581: $a0
    ld [$8082], sp                                ; $4582: $08 $82 $80
    db $eb                                        ; $4585: $eb
    ld [bc], a                                    ; $4586: $02
    add b                                         ; $4587: $80
    rst $38                                       ; $4588: $ff
    sbc b                                         ; $4589: $98
    rst $28                                       ; $458a: $ef
    dec b                                         ; $458b: $05
    ei                                            ; $458c: $fb
    add hl, hl                                    ; $458d: $29
    nop                                           ; $458e: $00
    rst $10                                       ; $458f: $d7
    ld h, c                                       ; $4590: $61
    rst $18                                       ; $4591: $df
    ld [de], a                                    ; $4592: $12
    cp $a9                                        ; $4593: $fe $a9
    or $c2                                        ; $4595: $f6 $c2
    nop                                           ; $4597: $00
    cp $c0                                        ; $4598: $fe $c0
    sub h                                         ; $459a: $94
    xor d                                         ; $459b: $aa
    ret nz                                        ; $459c: $c0

    ld d, c                                       ; $459d: $51
    ld bc, $0083                                  ; $459e: $01 $83 $00
    add hl, bc                                    ; $45a1: $09

jr_09c_45a2:
    dec d                                         ; $45a2: $15
    ld b, c                                       ; $45a3: $41
    dec hl                                        ; $45a4: $2b
    add d                                         ; $45a5: $82
    ld d, a                                       ; $45a6: $57
    ld [bc], a                                    ; $45a7: $02

jr_09c_45a8:
    ld [bc], a                                    ; $45a8: $02
    nop                                           ; $45a9: $00
    adc e                                         ; $45aa: $8b
    rra                                           ; $45ab: $1f
    cp [hl]                                       ; $45ac: $be
    dec l                                         ; $45ad: $2d
    ld [hl], a                                    ; $45ae: $77
    ld l, b                                       ; $45af: $68
    cp a                                          ; $45b0: $bf
    and b                                         ; $45b1: $a0
    nop                                           ; $45b2: $00
    ld a, a                                       ; $45b3: $7f
    ld b, l                                       ; $45b4: $45
    ei                                            ; $45b5: $fb
    add h                                         ; $45b6: $84
    ld a, a                                       ; $45b7: $7f
    ld [hl], c                                    ; $45b8: $71
    rst $28                                       ; $45b9: $ef
    add d                                         ; $45ba: $82
    nop                                           ; $45bb: $00
    rst $38                                       ; $45bc: $ff
    ld d, [hl]                                    ; $45bd: $56
    add hl, de                                    ; $45be: $19
    ld a, e                                       ; $45bf: $7b
    db $e4                                        ; $45c0: $e4
    sub a                                         ; $45c1: $97
    ldh [$35], a                                  ; $45c2: $e0 $35
    nop                                           ; $45c4: $00
    ld [$d16e], a                                 ; $45c5: $ea $6e $d1
    di                                            ; $45c8: $f3
    ld c, b                                       ; $45c9: $48
    ld e, d                                       ; $45ca: $5a
    push hl                                       ; $45cb: $e5
    db $ed                                        ; $45cc: $ed
    ld [de], a                                    ; $45cd: $12
    sub d                                         ; $45ce: $92
    and b                                         ; $45cf: $a0
    ld e, a                                       ; $45d0: $5f
    nop                                           ; $45d1: $00
    ld e, c                                       ; $45d2: $59
    rst $38                                       ; $45d3: $ff
    ret nz                                        ; $45d4: $c0

    ld [bc], a                                    ; $45d5: $02
    nop                                           ; $45d6: $00
    ld b, h                                       ; $45d7: $44
    nop                                           ; $45d8: $00
    rst $38                                       ; $45d9: $ff
    ld h, l                                       ; $45da: $65
    ld a, a                                       ; $45db: $7f
    ld h, d                                       ; $45dc: $62
    rst $38                                       ; $45dd: $ff
    inc sp                                        ; $45de: $33
    ld a, a                                       ; $45df: $7f
    add hl, sp                                    ; $45e0: $39
    jr nz, jr_09c_45a2                            ; $45e1: $20 $bf

    inc d                                         ; $45e3: $14
    jp z, $0125                                   ; $45e4: $ca $25 $01

    rst $38                                       ; $45e7: $ff
    adc [hl]                                      ; $45e8: $8e
    ld hl, sp+$50                                 ; $45e9: $f8 $50
    ld [$a1f1], sp                                ; $45eb: $08 $f1 $a1
    and $e6                                       ; $45ee: $e6 $e6
    ld c, $20                                     ; $45f0: $0e $20
    pop af                                        ; $45f2: $f1
    rra                                           ; $45f3: $1f
    dec c                                         ; $45f4: $0d
    ld [bc], a                                    ; $45f5: $02
    ld b, $02                                     ; $45f6: $06 $02
    ldh [$e0], a                                  ; $45f8: $e0 $e0
    jr nc, jr_09c_462c                            ; $45fa: $30 $30

    jr nc, jr_09c_45fe                            ; $45fc: $30 $00

jr_09c_45fe:
    add b                                         ; $45fe: $80
    nop                                           ; $45ff: $00
    rst $38                                       ; $4600: $ff
    add l                                         ; $4601: $85
    rst $38                                       ; $4602: $ff
    ld a, [$0d9f]                                 ; $4603: $fa $9f $0d
    ld a, a                                       ; $4606: $7f
    ld a, a                                       ; $4607: $7f
    nop                                           ; $4608: $00
    or a                                          ; $4609: $b7
    or h                                          ; $460a: $b4
    ld b, [hl]                                    ; $460b: $46
    ld [hl], h                                    ; $460c: $74
    ld e, a                                       ; $460d: $5f
    ld a, [de]                                    ; $460e: $1a
    xor a                                         ; $460f: $af
    dec c                                         ; $4610: $0d
    ld bc, $0757                                  ; $4611: $01 $57 $07
    xor e                                         ; $4614: $ab
    inc bc                                        ; $4615: $03
    ld d, l                                       ; $4616: $55
    ld bc, $4bab                                  ; $4617: $01 $ab $4b
    ld a, [bc]                                    ; $461a: $0a
    ld [$c800], sp                                ; $461b: $08 $00 $c8
    ret z                                         ; $461e: $c8

    ld bc, $0001                                  ; $461f: $01 $01 $00
    nop                                           ; $4622: $00
    nop                                           ; $4623: $00
    ret nz                                        ; $4624: $c0

    adc b                                         ; $4625: $88
    ld bc, $e000                                  ; $4626: $01 $00 $e0
    ld b, b                                       ; $4629: $40
    ldh [$09], a                                  ; $462a: $e0 $09

jr_09c_462c:
    inc bc                                        ; $462c: $03
    nop                                           ; $462d: $00
    ret nz                                        ; $462e: $c0

    ld b, c                                       ; $462f: $41
    inc b                                         ; $4630: $04
    ret nz                                        ; $4631: $c0

    ld b, b                                       ; $4632: $40
    ret nz                                        ; $4633: $c0

    nop                                           ; $4634: $00
    nop                                           ; $4635: $00
    ld d, $08                                     ; $4636: $16 $08
    nop                                           ; $4638: $00
    nop                                           ; $4639: $00
    inc b                                         ; $463a: $04
    ld d, a                                       ; $463b: $57
    ld [hl], h                                    ; $463c: $74
    ld d, $36                                     ; $463d: $16 $36
    add a                                         ; $463f: $87
    inc l                                         ; $4640: $2c
    inc bc                                        ; $4641: $03
    ld b, c                                       ; $4642: $41
    ld b, b                                       ; $4643: $40
    nop                                           ; $4644: $00
    add b                                         ; $4645: $80
    add b                                         ; $4646: $80
    nop                                           ; $4647: $00
    nop                                           ; $4648: $00
    ld b, b                                       ; $4649: $40
    ld b, b                                       ; $464a: $40
    rst $38                                       ; $464b: $ff
    ld d, [hl]                                    ; $464c: $56
    nop                                           ; $464d: $00

jr_09c_464e:
    cp $ac                                        ; $464e: $fe $ac
    db $fd                                        ; $4650: $fd
    ld e, b                                       ; $4651: $58
    ld a, [$f5b0]                                 ; $4652: $fa $b0 $f5
    ldh [$30], a                                  ; $4655: $e0 $30
    ld [$4080], a                                 ; $4657: $ea $80 $40
    ld [$2004], sp                                ; $465a: $08 $04 $20
    add b                                         ; $465d: $80
    push de                                       ; $465e: $d5
    add b                                         ; $465f: $80
    ld [$c002], a                                 ; $4660: $ea $02 $c0
    push de                                       ; $4663: $d5
    ret nz                                        ; $4664: $c0

    ld [$81c0], a                                 ; $4665: $ea $c0 $81
    inc l                                         ; $4668: $2c
    dec [hl]                                      ; $4669: $35
    ret nz                                        ; $466a: $c0

    ld e, h                                       ; $466b: $5c
    cp a                                          ; $466c: $bf
    jr nz, jr_09c_467c                            ; $466d: $20 $0d

    rst $38                                       ; $466f: $ff
    jr jr_09c_4677                                ; $4670: $18 $05

    jr nz, jr_09c_46a1                            ; $4672: $20 $2d

    add b                                         ; $4674: $80
    ld d, $ff                                     ; $4675: $16 $ff

jr_09c_4677:
    jr nz, jr_09c_4699                            ; $4677: $20 $20

    rst $38                                       ; $4679: $ff
    ld b, b                                       ; $467a: $40
    ld a, [hl+]                                   ; $467b: $2a

jr_09c_467c:
    ld bc, $f20d                                  ; $467c: $01 $0d $f2
    ld a, [de]                                    ; $467f: $1a
    push hl                                       ; $4680: $e5
    ld [hl], h                                    ; $4681: $74
    ld [$e98b], sp                                ; $4682: $08 $8b $e9
    ld d, $55                                     ; $4685: $16 $55
    jr c, @+$07                                   ; $4687: $38 $05

    ld b, c                                       ; $4689: $41
    cp a                                          ; $468a: $bf
    add l                                         ; $468b: $85
    ld [$097b], sp                                ; $468c: $08 $7b $09
    rst $30                                       ; $468f: $f7
    ld de, $0128                                  ; $4690: $11 $28 $01
    ld e, c                                       ; $4693: $59
    and a                                         ; $4694: $a7
    add d                                         ; $4695: $82
    nop                                           ; $4696: $00
    ld a, l                                       ; $4697: $7d
    ld d, c                                       ; $4698: $51

jr_09c_4699:
    cp [hl]                                       ; $4699: $be
    and e                                         ; $469a: $a3
    ld a, h                                       ; $469b: $7c
    rlca                                          ; $469c: $07
    ld hl, sp+$49                                 ; $469d: $f8 $49
    nop                                           ; $469f: $00
    or [hl]                                       ; $46a0: $b6

jr_09c_46a1:
    ld sp, $e3ce                                  ; $46a1: $31 $ce $e3
    inc e                                         ; $46a4: $1c
    ld d, e                                       ; $46a5: $53
    xor h                                         ; $46a6: $ac
    di                                            ; $46a7: $f3
    nop                                           ; $46a8: $00
    rrca                                          ; $46a9: $0f
    pop hl                                        ; $46aa: $e1
    rra                                           ; $46ab: $1f
    jp $953f                                      ; $46ac: $c3 $3f $95


    ld l, a                                       ; $46af: $6f
    and c                                         ; $46b0: $a1
    nop                                           ; $46b1: $00
    ld e, a                                       ; $46b2: $5f
    ld l, e                                       ; $46b3: $6b
    sub a                                         ; $46b4: $97
    pop de                                        ; $46b5: $d1
    cpl                                           ; $46b6: $2f
    pop bc                                        ; $46b7: $c1
    ccf                                           ; $46b8: $3f
    ld h, e                                       ; $46b9: $63
    nop                                           ; $46ba: $00
    sbc h                                         ; $46bb: $9c
    rst $00                                       ; $46bc: $c7

jr_09c_46bd:
    jr c, jr_09c_464e                             ; $46bd: $38 $8f

    ld [hl], b                                    ; $46bf: $70
    ld c, $f1                                     ; $46c0: $0e $f1
    add hl, de                                    ; $46c2: $19
    nop                                           ; $46c3: $00
    and $22                                       ; $46c4: $e6 $22
    db $dd                                        ; $46c6: $dd
    ld b, h                                       ; $46c7: $44
    cp e                                          ; $46c8: $bb
    nop                                           ; $46c9: $00
    rst $38                                       ; $46ca: $ff
    sub e                                         ; $46cb: $93
    ld [bc], a                                    ; $46cc: $02
    ld a, a                                       ; $46cd: $7f
    add l                                         ; $46ce: $85
    ld a, a                                       ; $46cf: $7f
    add hl, bc                                    ; $46d0: $09
    rst $38                                       ; $46d1: $ff
    sub c                                         ; $46d2: $91
    add d                                         ; $46d3: $82
    dec b                                         ; $46d4: $05
    ld hl, $84ab                                  ; $46d5: $21 $ab $84
    dec b                                         ; $46d8: $05
    dec b                                         ; $46d9: $05
    rst $38                                       ; $46da: $ff
    ld b, $55                                     ; $46db: $06 $55
    inc bc                                        ; $46dd: $03
    rlca                                          ; $46de: $07
    ld a, a                                       ; $46df: $7f
    rlca                                          ; $46e0: $07
    ld b, a                                       ; $46e1: $47
    db $10                                        ; $46e2: $10
    ld [$fd40], sp                                ; $46e3: $08 $40 $fd
    rla                                           ; $46e6: $17
    ccf                                           ; $46e7: $3f
    inc b                                         ; $46e8: $04
    rst $10                                       ; $46e9: $d7
    ld [$05fe], sp                                ; $46ea: $08 $fe $05
    rst $18                                       ; $46ed: $df
    jr nc, jr_09c_4718                            ; $46ee: $30 $28

    cp a                                          ; $46f0: $bf
    ret z                                         ; $46f1: $c8

    ld b, $ea                                     ; $46f2: $06 $ea
    ld c, $bf                                     ; $46f4: $0e $bf
    ld d, h                                       ; $46f6: $54
    rst $38                                       ; $46f7: $ff
    jr nz, jr_09c_46fa                            ; $46f8: $20 $00

jr_09c_46fa:
    cp e                                          ; $46fa: $bb
    ld b, c                                       ; $46fb: $41
    ld e, a                                       ; $46fc: $5f
    jr nz, jr_09c_46bd                            ; $46fd: $20 $be

    ld b, b                                       ; $46ff: $40
    db $fd                                        ; $4700: $fd
    nop                                           ; $4701: $00
    or b                                          ; $4702: $b0
    ld h, c                                       ; $4703: $61

jr_09c_4704:
    ld [bc], a                                    ; $4704: $02
    and b                                         ; $4705: $a0
    db $f4                                        ; $4706: $f4
    ld [$8804], sp                                ; $4707: $08 $04 $88
    inc bc                                        ; $470a: $03
    inc bc                                        ; $470b: $03
    ld c, $0f                                     ; $470c: $0e $0f
    ld [$3f38], sp                                ; $470e: $08 $38 $3f
    ldh a, [rIE]                                  ; $4711: $f0 $ff
    add hl, sp                                    ; $4713: $39
    inc b                                         ; $4714: $04
    inc bc                                        ; $4715: $03
    ld b, $07                                     ; $4716: $06 $07

jr_09c_4718:
    nop                                           ; $4718: $00
    dec c                                         ; $4719: $0d
    rrca                                          ; $471a: $0f
    ld a, [de]                                    ; $471b: $1a
    rra                                           ; $471c: $1f
    inc [hl]                                      ; $471d: $34
    ccf                                           ; $471e: $3f
    ld l, c                                       ; $471f: $69
    ld a, [hl]                                    ; $4720: $7e
    nop                                           ; $4721: $00
    ret nc                                        ; $4722: $d0

    rst $38                                       ; $4723: $ff
    and e                                         ; $4724: $a3
    db $fc                                        ; $4725: $fc
    ld c, [hl]                                    ; $4726: $4e
    pop af                                        ; $4727: $f1
    sbc h                                         ; $4728: $9c
    db $e3                                        ; $4729: $e3
    nop                                           ; $472a: $00
    jr z, jr_09c_4704                             ; $472b: $28 $d7

    ld d, b                                       ; $472d: $50
    xor d                                         ; $472e: $aa
    add b                                         ; $472f: $80
    ld [hl], a                                    ; $4730: $77
    nop                                           ; $4731: $00
    ld [$0028], a                                 ; $4732: $ea $28 $00
    rst $10                                       ; $4735: $d7
    ld c, [hl]                                    ; $4736: $4e
    add hl, bc                                    ; $4737: $09
    inc bc                                        ; $4738: $03
    ld bc, $0600                                  ; $4739: $01 $00 $06
    rlca                                          ; $473c: $07
    dec b                                         ; $473d: $05
    ld [bc], a                                    ; $473e: $02
    rlca                                          ; $473f: $07
    ld c, $0f                                     ; $4740: $0e $0f
    inc c                                         ; $4742: $0c
    rrca                                          ; $4743: $0f
    and h                                         ; $4744: $a4
    inc c                                         ; $4745: $0c
    rlca                                          ; $4746: $07
    sub b                                         ; $4747: $90
    nop                                           ; $4748: $00
    xor $00                                       ; $4749: $ee $00
    push af                                       ; $474b: $f5
    nop                                           ; $474c: $00
    xor $00                                       ; $474d: $ee $00
    db $dd                                        ; $474f: $dd
    nop                                           ; $4750: $00
    inc e                                         ; $4751: $1c
    ld a, [$d500]                                 ; $4752: $fa $00 $d5
    inc sp                                        ; $4755: $33
    ld de, $197b                                  ; $4756: $11 $7b $19
    ccf                                           ; $4759: $3f
    add hl, de                                    ; $475a: $19
    nop                                           ; $475b: $00
    rlca                                          ; $475c: $07
    ld [$3f07], sp                                ; $475d: $08 $07 $3f
    ccf                                           ; $4760: $3f
    db $f4                                        ; $4761: $f4
    rst $10                                       ; $4762: $d7
    ld bc, $fa85                                  ; $4763: $01 $85 $fa
    cpl                                           ; $4766: $2f
    nop                                           ; $4767: $00
    ret nc                                        ; $4768: $d0

    rst $38                                       ; $4769: $ff
    nop                                           ; $476a: $00
    ccf                                           ; $476b: $3f
    ccf                                           ; $476c: $3f
    rst $38                                       ; $476d: $ff
    rst $38                                       ; $476e: $ff
    ld d, h                                       ; $476f: $54
    ret nz                                        ; $4770: $c0

    ld h, h                                       ; $4771: $64
    ld d, $a4                                     ; $4772: $16 $a4
    cpl                                           ; $4774: $2f
    xor a                                         ; $4775: $af
    ld d, b                                       ; $4776: $50
    ld e, a                                       ; $4777: $5f
    and b                                         ; $4778: $a0
    ccf                                           ; $4779: $3f
    ret nz                                        ; $477a: $c0

    nop                                           ; $477b: $00
    ld e, a                                       ; $477c: $5f
    and b                                         ; $477d: $a0
    cpl                                           ; $477e: $2f
    ret nc                                        ; $477f: $d0

    ld e, a                                       ; $4780: $5f
    and b                                         ; $4781: $a0
    dec d                                         ; $4782: $15
    ld [$bac0], a                                 ; $4783: $ea $c0 $ba
    ccf                                           ; $4786: $3f
    call nz, $f52f                                ; $4787: $c4 $2f $f5
    ld a, [bc]                                    ; $478a: $0a
    ld a, [$fc05]                                 ; $478b: $fa $05 $fc
    inc bc                                        ; $478e: $03
    nop                                           ; $478f: $00
    ld a, [$f405]                                 ; $4790: $fa $05 $f4
    dec bc                                        ; $4793: $0b
    ld a, [$ec05]                                 ; $4794: $fa $05 $ec
    inc de                                        ; $4797: $13
    nop                                           ; $4798: $00
    dec hl                                        ; $4799: $2b
    call nc, Call_09c_7a05                        ; $479a: $d4 $05 $7a
    ld [$05b7], sp                                ; $479d: $08 $b7 $05
    ld e, d                                       ; $47a0: $5a
    ld bc, $ef00                                  ; $47a1: $01 $00 $ef
    ld bc, $0056                                  ; $47a4: $01 $56 $00
    cp e                                          ; $47a7: $bb
    nop                                           ; $47a8: $00
    sub c                                         ; $47a9: $91
    ld [bc], a                                    ; $47aa: $02
    nop                                           ; $47ab: $00
    ld a, a                                       ; $47ac: $7f
    add b                                         ; $47ad: $80
    cp a                                          ; $47ae: $bf
    ld b, b                                       ; $47af: $40
    ld e, a                                       ; $47b0: $5f
    and b                                         ; $47b1: $a0
    xor e                                         ; $47b2: $ab
    ld d, h                                       ; $47b3: $54
    ld [bc], a                                    ; $47b4: $02
    dec d                                         ; $47b5: $15
    ld [$d52a], a                                 ; $47b6: $ea $2a $d5
    dec b                                         ; $47b9: $05
    ld a, [$1ffa]                                 ; $47ba: $fa $fa $1f
    ld a, [$0500]                                 ; $47bd: $fa $00 $05
    push de                                       ; $47c0: $d5
    ld a, [hl+]                                   ; $47c1: $2a
    xor d                                         ; $47c2: $aa
    ld d, l                                       ; $47c3: $55
    ld d, h                                       ; $47c4: $54
    xor e                                         ; $47c5: $ab
    xor b                                         ; $47c6: $a8
    nop                                           ; $47c7: $00
    ld d, a                                       ; $47c8: $57
    call nc, $a82b                                ; $47c9: $d4 $2b $a8
    ld d, a                                       ; $47cc: $57
    ld d, b                                       ; $47cd: $50
    xor [hl]                                      ; $47ce: $ae
    and b                                         ; $47cf: $a0
    inc b                                         ; $47d0: $04
    ld e, l                                       ; $47d1: $5d
    ld b, b                                       ; $47d2: $40
    cp e                                          ; $47d3: $bb
    add b                                         ; $47d4: $80
    ld [hl], l                                    ; $47d5: $75
    and h                                         ; $47d6: $a4
    nop                                           ; $47d7: $00
    push de                                       ; $47d8: $d5
    jr jr_09c_47db                                ; $47d9: $18 $00

jr_09c_47db:
    rra                                           ; $47db: $1f
    inc d                                         ; $47dc: $14
    rra                                           ; $47dd: $1f
    jr c, jr_09c_481f                             ; $47de: $38 $3f

    jr nc, jr_09c_4821                            ; $47e0: $30 $3f

    jr z, jr_09c_47e4                             ; $47e2: $28 $00

jr_09c_47e4:
    ld a, $70                                     ; $47e4: $3e $70
    ld a, a                                       ; $47e6: $7f
    ld h, b                                       ; $47e7: $60
    ld a, [hl]                                    ; $47e8: $7e
    ld d, b                                       ; $47e9: $50
    ld a, l                                       ; $47ea: $7d
    nop                                           ; $47eb: $00
    ld d, $ba                                     ; $47ec: $16 $ba
    nop                                           ; $47ee: $00
    ld [hl], l                                    ; $47ef: $75
    daa                                           ; $47f0: $27
    ld [bc], a                                    ; $47f1: $02
    ld [hl], l                                    ; $47f2: $75
    call c, $bc00                                 ; $47f3: $dc $00 $bc
    ld [$c0d5], sp                                ; $47f6: $08 $d5 $c0
    cp d                                          ; $47f9: $ba
    ld b, b                                       ; $47fa: $40
    db $fd                                        ; $47fb: $fd
    ld de, $7e60                                  ; $47fc: $11 $60 $7e
    ld b, b                                       ; $47ff: $40

Jump_09c_4800:
    ld a, l                                       ; $4800: $7d
    ldh [$fe], a                                  ; $4801: $e0 $fe
    ld bc, $ffc0                                  ; $4803: $01 $c0 $ff
    ldh [$fe], a                                  ; $4806: $e0 $fe

jr_09c_4808:
    call nz, $e0fb                                ; $4808: $c4 $fb $e0
    sbc h                                         ; $480b: $9c
    ld b, $d0                                     ; $480c: $06 $d0
    inc h                                         ; $480e: $24
    db $10                                        ; $480f: $10
    inc b                                         ; $4810: $04
    jr jr_09c_4808                                ; $4811: $18 $f5

    jr nc, jr_09c_481d                            ; $4813: $30 $08

    ld [c], a                                     ; $4815: $e2
    db $fd                                        ; $4816: $fd
    pop bc                                        ; $4817: $c1
    cp $00                                        ; $4818: $fe $00
    ld [c], a                                     ; $481a: $e2
    db $fd                                        ; $481b: $fd
    pop hl                                        ; $481c: $e1

jr_09c_481d:
    cp $f0                                        ; $481d: $fe $f0

jr_09c_481f:
    rst $38                                       ; $481f: $ff
    pop hl                                        ; $4820: $e1

jr_09c_4821:
    cp $b0                                        ; $4821: $fe $b0
    ld d, d                                       ; $4823: $52
    nop                                           ; $4824: $00
    ld a, a                                       ; $4825: $7f
    inc b                                         ; $4826: $04
    ld de, $0108                                  ; $4827: $11 $08 $01
    add b                                         ; $482a: $80
    ld l, [hl]                                    ; $482b: $6e
    ld b, b                                       ; $482c: $40
    or a                                          ; $482d: $b7
    inc c                                         ; $482e: $0c
    and b                                         ; $482f: $a0
    ld e, d                                       ; $4830: $5a
    ret nc                                        ; $4831: $d0

    dec l                                         ; $4832: $2d
    ld [de], a                                    ; $4833: $12
    ld hl, $3249                                  ; $4834: $21 $49 $32
    ld [hl], b                                    ; $4837: $70
    ld a, a                                       ; $4838: $7f
    nop                                           ; $4839: $00
    ld a, b                                       ; $483a: $78
    ld a, a                                       ; $483b: $7f
    ld [hl], b                                    ; $483c: $70
    ld a, a                                       ; $483d: $7f
    jr c, @+$41                                   ; $483e: $38 $3f

    inc a                                         ; $4840: $3c
    ccf                                           ; $4841: $3f
    nop                                           ; $4842: $00
    ld a, [hl-]                                   ; $4843: $3a
    ccf                                           ; $4844: $3f
    inc e                                         ; $4845: $1c
    rra                                           ; $4846: $1f
    ld e, $1f                                     ; $4847: $1e $1f
    ld l, b                                       ; $4849: $68
    sub [hl]                                      ; $484a: $96
    nop                                           ; $484b: $00
    inc [hl]                                      ; $484c: $34
    rr d                                          ; $484d: $cb $1a
    push hl                                       ; $484f: $e5
    dec l                                         ; $4850: $2d
    jp nc, $e916                                  ; $4851: $d2 $16 $e9

    ld [bc], a                                    ; $4854: $02
    dec bc                                        ; $4855: $0b
    db $f4                                        ; $4856: $f4
    dec b                                         ; $4857: $05
    ld a, [$fd02]                                 ; $4858: $fa $02 $fd
    adc h                                         ; $485b: $8c
    db $10                                        ; $485c: $10
    xor d                                         ; $485d: $aa
    ld [bc], a                                    ; $485e: $02
    nop                                           ; $485f: $00
    db $dd                                        ; $4860: $dd
    add b                                         ; $4861: $80
    ld a, e                                       ; $4862: $7b
    ld b, b                                       ; $4863: $40
    cp l                                          ; $4864: $bd
    cp [hl]                                       ; $4865: $be
    ld [$5d00], sp                                ; $4866: $08 $00 $5d
    xor [hl]                                      ; $4869: $ae
    sub d                                         ; $486a: $92
    ld h, b                                       ; $486b: $60
    cp a                                          ; $486c: $bf
    ld h, h                                       ; $486d: $64
    ld bc, $00f8                                  ; $486e: $01 $f8 $00
    sbc e                                         ; $4871: $9b
    ld [hl-], a                                   ; $4872: $32
    cp $32                                        ; $4873: $fe $32
    dec b                                         ; $4875: $05
    ld e, e                                       ; $4876: $5b
    cp [hl]                                       ; $4877: $be
    ld [hl], b                                    ; $4878: $70
    ld b, c                                       ; $4879: $41
    cp d                                          ; $487a: $ba
    ld [hl], d                                    ; $487b: $72
    ld l, b                                       ; $487c: $68
    adc h                                         ; $487d: $8c
    ld sp, $4c75                                  ; $487e: $31 $75 $4c
    nop                                           ; $4881: $00
    or h                                          ; $4882: $b4
    ld [$d7a2], sp                                ; $4883: $08 $a2 $d7
    ld a, [hl-]                                   ; $4886: $3a
    xor $a8                                       ; $4887: $ee $a8
    ld b, c                                       ; $4889: $41
    xor e                                         ; $488a: $ab
    nop                                           ; $488b: $00
    ld e, l                                       ; $488c: $5d
    ldh [rSB], a                                  ; $488d: $e0 $01
    ld e, a                                       ; $488f: $5f

jr_09c_4890:
    nop                                           ; $4890: $00
    xor $54                                       ; $4891: $ee $54
    rst $38                                       ; $4893: $ff
    jr z, jr_09c_4890                             ; $4894: $28 $fa

    inc b                                         ; $4896: $04
    rst $38                                       ; $4897: $ff
    ld [$ff00], sp                                ; $4898: $08 $00 $ff
    nop                                           ; $489b: $00
    rst $18                                       ; $489c: $df
    jr z, @-$03                                   ; $489d: $28 $fb

    inc b                                         ; $489f: $04
    db $fd                                        ; $48a0: $fd
    ld [bc], a                                    ; $48a1: $02
    nop                                           ; $48a2: $00
    cp d                                          ; $48a3: $ba
    dec d                                         ; $48a4: $15
    ld a, a                                       ; $48a5: $7f
    and b                                         ; $48a6: $a0
    ld [$f515], a                                 ; $48a7: $ea $15 $f5
    ld a, [hl+]                                   ; $48aa: $2a
    nop                                           ; $48ab: $00
    ld a, [$5545]                                 ; $48ac: $fa $45 $55
    xor d                                         ; $48af: $aa
    ld [$f715], a                                 ; $48b0: $ea $15 $f7
    ld [$dcb0], sp                                ; $48b3: $08 $b0 $dc
    ld de, $e0ea                                  ; $48b6: $11 $ea $e0
    add hl, sp                                    ; $48b9: $39
    db $fc                                        ; $48ba: $fc
    ld c, $08                                     ; $48bb: $0e $08
    rst $30                                       ; $48bd: $f7
    nop                                           ; $48be: $00
    ld l, a                                       ; $48bf: $6f
    ld [$b700], sp                                ; $48c0: $08 $00 $b7
    nop                                           ; $48c3: $00
    ld e, e                                       ; $48c4: $5b
    sbc h                                         ; $48c5: $9c
    nop                                           ; $48c6: $00
    ld e, e                                       ; $48c7: $5b
    nop                                           ; $48c8: $00
    xor l                                         ; $48c9: $ad
    dec hl                                        ; $48ca: $2b
    nop                                           ; $48cb: $00
    ld e, [hl]                                    ; $48cc: $5e
    inc b                                         ; $48cd: $04
    nop                                           ; $48ce: $00
    ld d, [hl]                                    ; $48cf: $56
    inc b                                         ; $48d0: $04
    ld [bc], a                                    ; $48d1: $02
    ld d, a                                       ; $48d2: $57
    ld [$0412], sp                                ; $48d3: $08 $12 $04
    ld e, b                                       ; $48d6: $58
    ld l, b                                       ; $48d7: $68
    ld e, a                                       ; $48d8: $5f
    sbc h                                         ; $48d9: $9c
    ld h, b                                       ; $48da: $60
    inc h                                         ; $48db: $24
    ld [$305f], sp                                ; $48dc: $08 $5f $30
    ld [bc], a                                    ; $48df: $02
    ld [hl], a                                    ; $48e0: $77
    ld bc, $02ae                                  ; $48e1: $01 $ae $02
    ld [bc], a                                    ; $48e4: $02
    db $dd                                        ; $48e5: $dd
    dec b                                         ; $48e6: $05
    cp d                                          ; $48e7: $ba
    dec bc                                        ; $48e8: $0b
    ld [hl], h                                    ; $48e9: $74
    ld [hl], e                                    ; $48ea: $73
    inc de                                        ; $48eb: $13
    cp e                                          ; $48ec: $bb
    jr nz, jr_09c_48ef                            ; $48ed: $20 $00

jr_09c_48ef:
    ld d, a                                       ; $48ef: $57
    stop                                          ; $48f0: $10 $00
    ld e, l                                       ; $48f2: $5d
    dec d                                         ; $48f3: $15
    ld [$d42b], a                                 ; $48f4: $ea $2b $d4
    nop                                           ; $48f7: $00
    ld d, $e9                                     ; $48f8: $16 $e9
    inc l                                         ; $48fa: $2c
    db $d3                                        ; $48fb: $d3
    ld e, b                                       ; $48fc: $58
    and a                                         ; $48fd: $a7
    or h                                          ; $48fe: $b4
    ld c, e                                       ; $48ff: $4b
    nop                                           ; $4900: $00

jr_09c_4901:
    ld l, b                                       ; $4901: $68
    sub a                                         ; $4902: $97
    ret nc                                        ; $4903: $d0

    cpl                                           ; $4904: $2f
    and b                                         ; $4905: $a0
    ld e, a                                       ; $4906: $5f
    ld b, b                                       ; $4907: $40
    cp a                                          ; $4908: $bf
    or h                                          ; $4909: $b4
    ld [hl], b                                    ; $490a: $70
    ld c, e                                       ; $490b: $4b
    inc bc                                        ; $490c: $03
    ld [hl], b                                    ; $490d: $70
    dec bc                                        ; $490e: $0b
    and e                                         ; $490f: $a3
    inc d                                         ; $4910: $14
    rst $38                                       ; $4911: $ff
    xor $02                                       ; $4912: $ee $02
    ld [$0015], a                                 ; $4914: $ea $15 $00
    ldh a, [rIF]                                  ; $4917: $f0 $0f
    rst $28                                       ; $4919: $ef
    db $10                                        ; $491a: $10
    rst $28                                       ; $491b: $ef
    stop                                          ; $491c: $10 $00
    rst $38                                       ; $491e: $ff
    nop                                           ; $491f: $00
    ld sp, hl                                     ; $4920: $f9
    rlca                                          ; $4921: $07
    db $fd                                        ; $4922: $fd
    ld b, $17                                     ; $4923: $06 $17
    db $ec                                        ; $4925: $ec
    ld [hl], e                                    ; $4926: $73
    db $fc                                        ; $4927: $fc
    jr nz, jr_09c_4901                            ; $4928: $20 $d7

    jr z, @+$78                                   ; $492a: $28 $76

    dec b                                         ; $492c: $05
    nop                                           ; $492d: $00
    ld a, e                                       ; $492e: $7b
    add h                                         ; $492f: $84
    rst $30                                       ; $4930: $f7
    ld [$eb08], sp                                ; $4931: $08 $08 $eb

jr_09c_4934:
    inc d                                         ; $4934: $14
    di                                            ; $4935: $f3
    inc c                                         ; $4936: $0c
    ret nc                                        ; $4937: $d0

    ld e, $57                                     ; $4938: $1e $57
    inc bc                                        ; $493a: $03
    cp a                                          ; $493b: $bf
    ld b, $0f                                     ; $493c: $06 $0f
    ld a, a                                       ; $493e: $7f
    inc a                                         ; $493f: $3c
    rst $38                                       ; $4940: $ff
    ld h, b                                       ; $4941: $60
    jr c, jr_09c_4958                             ; $4942: $38 $14

    ld e, b                                       ; $4944: $58
    inc b                                         ; $4945: $04
    ldh a, [rP1]                                  ; $4946: $f0 $00
    ldh [$f0], a                                  ; $4948: $e0 $f0
    ldh a, [$e8]                                  ; $494a: $f0 $e8
    jr z, jr_09c_4934                             ; $494c: $28 $e6

    ld h, h                                       ; $494e: $64
    di                                            ; $494f: $f3
    nop                                           ; $4950: $00
    or e                                          ; $4951: $b3
    ld hl, sp+$58                                 ; $4952: $f8 $58
    cp $2e                                        ; $4954: $fe $2e
    rst $38                                       ; $4956: $ff
    rst $10                                       ; $4957: $d7

jr_09c_4958:
    rla                                           ; $4958: $17
    nop                                           ; $4959: $00
    db $10                                        ; $495a: $10
    rra                                           ; $495b: $1f
    db $10                                        ; $495c: $10
    db $10                                        ; $495d: $10
    stop                                          ; $495e: $10 $00
    nop                                           ; $4960: $00
    ret z                                         ; $4961: $c8

    nop                                           ; $4962: $00
    adc b                                         ; $4963: $88
    ld a, h                                       ; $4964: $7c
    ld a, h                                       ; $4965: $7c
    inc bc                                        ; $4966: $03
    inc bc                                        ; $4967: $03
    ret nz                                        ; $4968: $c0

    ret nz                                        ; $4969: $c0

    pop bc                                        ; $496a: $c1
    nop                                           ; $496b: $00
    ld b, b                                       ; $496c: $40
    and c                                         ; $496d: $a1
    ld hl, $0307                                  ; $496e: $21 $07 $03
    rra                                           ; $4971: $1f
    ld c, $7f                                     ; $4972: $0e $7f
    nop                                           ; $4974: $00
    inc a                                         ; $4975: $3c
    rst $18                                       ; $4976: $df
    jp c, Jump_000_343f                           ; $4977: $da $3f $34

    rst $38                                       ; $497a: $ff
    db $eb                                        ; $497b: $eb
    rst $38                                       ; $497c: $ff
    nop                                           ; $497d: $00
    ld [bc], a                                    ; $497e: $02
    cp $04                                        ; $497f: $fe $04
    db $fc                                        ; $4981: $fc
    inc b                                         ; $4982: $04
    db $fc                                        ; $4983: $fc
    inc c                                         ; $4984: $0c
    cp $00                                        ; $4985: $fe $00
    inc d                                         ; $4987: $14
    rst $38                                       ; $4988: $ff
    ld h, $ff                                     ; $4989: $26 $ff
    ld c, e                                       ; $498b: $4b
    rst $38                                       ; $498c: $ff
    sub a                                         ; $498d: $97
    ld a, a                                       ; $498e: $7f
    nop                                           ; $498f: $00

jr_09c_4990:
    dec sp                                        ; $4990: $3b
    rra                                           ; $4991: $1f
    dec c                                         ; $4992: $0d
    rlca                                          ; $4993: $07
    inc bc                                        ; $4994: $03
    add hl, sp                                    ; $4995: $39
    jr jr_09c_49a5                                ; $4996: $18 $0d

    nop                                           ; $4998: $00
    dec c                                         ; $4999: $0d
    db $dd                                        ; $499a: $dd
    rst $08                                       ; $499b: $cf
    db $fc                                        ; $499c: $fc
    sbc $fc                                       ; $499d: $de $fc
    rst $30                                       ; $499f: $f7
    rst $38                                       ; $49a0: $ff
    ld bc, $feff                                  ; $49a1: $01 $ff $fe
    ld a, [hl]                                    ; $49a4: $7e

jr_09c_49a5:
    cp $aa                                        ; $49a5: $fe $aa
    rst $38                                       ; $49a7: $ff
    add c                                         ; $49a8: $81
    or h                                          ; $49a9: $b4
    inc d                                         ; $49aa: $14
    nop                                           ; $49ab: $00
    add d                                         ; $49ac: $82
    rst $38                                       ; $49ad: $ff
    add c                                         ; $49ae: $81
    cp $f3                                        ; $49af: $fe $f3
    ld c, h                                       ; $49b1: $4c
    ld l, l                                       ; $49b2: $6d
    jr nz, jr_09c_49b5                            ; $49b3: $20 $00

jr_09c_49b5:
    cp a                                          ; $49b5: $bf
    ld de, $845f                                  ; $49b6: $11 $5f $84
    sub a                                         ; $49b9: $97
    jp nz, Jump_09c_70cb                          ; $49ba: $c2 $cb $70

    db $10                                        ; $49bd: $10
    ld sp, $0f9f                                  ; $49be: $31 $9f $0f
    ld d, b                                       ; $49c1: $50
    dec c                                         ; $49c2: $0d
    ld d, b                                       ; $49c3: $50
    inc bc                                        ; $49c4: $03
    nop                                           ; $49c5: $00
    rlca                                          ; $49c6: $07
    jr jr_09c_4a11                                ; $49c7: $18 $48

    rst $38                                       ; $49c9: $ff
    ld [de], a                                    ; $49ca: $12
    ld de, $6006                                  ; $49cb: $11 $06 $60
    dec e                                         ; $49ce: $1d
    inc d                                         ; $49cf: $14
    add b                                         ; $49d0: $80
    nop                                           ; $49d1: $00
    ld h, b                                       ; $49d2: $60
    pop bc                                        ; $49d3: $c1
    nop                                           ; $49d4: $00
    ld l, $64                                     ; $49d5: $2e $64

jr_09c_49d7:
    inc c                                         ; $49d7: $0c
    db $fd                                        ; $49d8: $fd
    ldh a, [$fe]                                  ; $49d9: $f0 $fe
    inc a                                         ; $49db: $3c
    rst $38                                       ; $49dc: $ff
    ld b, b                                       ; $49dd: $40
    ld c, $53                                     ; $49de: $0e $53
    inc d                                         ; $49e0: $14
    ldh a, [rIF]                                  ; $49e1: $f0 $0f
    ret z                                         ; $49e3: $c8

    rrca                                          ; $49e4: $0f
    db $fc                                        ; $49e5: $fc
    rlc b                                         ; $49e6: $cb $00
    ld a, [$36b7]                                 ; $49e8: $fa $b7 $36
    rst $10                                       ; $49eb: $d7
    sub d                                         ; $49ec: $92
    ld d, a                                       ; $49ed: $57
    call nz, Call_000_228f                        ; $49ee: $c4 $8f $22
    adc b                                         ; $49f1: $88

jr_09c_49f2:
    ccf                                           ; $49f2: $3f
    sbc $00                                       ; $49f3: $de $00
    nop                                           ; $49f5: $00
    nop                                           ; $49f6: $00
    jr z, jr_09c_49d7                             ; $49f7: $28 $de

    rlca                                          ; $49f9: $07
    ld [de], a                                    ; $49fa: $12
    xor e                                         ; $49fb: $ab
    inc de                                        ; $49fc: $13
    dec b                                         ; $49fd: $05
    jr z, jr_09c_4990                             ; $49fe: $28 $90

    dec b                                         ; $4a00: $05
    rrca                                          ; $4a01: $0f
    ld bc, $0700                                  ; $4a02: $01 $00 $07
    ld bc, $9400                                  ; $4a05: $01 $00 $94
    dec bc                                        ; $4a08: $0b
    adc b                                         ; $4a09: $88
    ld [$010c], a                                 ; $4a0a: $ea $0c $01
    cp $80                                        ; $4a0d: $fe $80
    add b                                         ; $4a0f: $80
    inc d                                         ; $4a10: $14

jr_09c_4a11:
    ret nc                                        ; $4a11: $d0

    rst $38                                       ; $4a12: $ff
    add sp, $01                                   ; $4a13: $e8 $01
    rst $38                                       ; $4a15: $ff
    db $f4                                        ; $4a16: $f4
    rst $38                                       ; $4a17: $ff
    ld a, [$7aff]                                 ; $4a18: $fa $ff $7a
    add l                                         ; $4a1b: $85
    ld e, $0b                                     ; $4a1c: $1e $0b
    nop                                           ; $4a1e: $00
    cpl                                           ; $4a1f: $2f
    ret nc                                        ; $4a20: $d0

    dec d                                         ; $4a21: $15
    ld [$fd02], a                                 ; $4a22: $ea $02 $fd
    ld bc, $20fe                                  ; $4a25: $01 $fe $20
    nop                                           ; $4a28: $00
    rst $38                                       ; $4a29: $ff
    ret c                                         ; $4a2a: $d8

    ld bc, $ff20                                  ; $4a2b: $01 $20 $ff
    nop                                           ; $4a2e: $00
    db $dd                                        ; $4a2f: $dd
    ld a, [bc]                                    ; $4a30: $0a
    jr nz, jr_09c_49f2                            ; $4a31: $20 $bf

    ld b, b                                       ; $4a33: $40
    inc h                                         ; $4a34: $24
    inc b                                         ; $4a35: $04
    db $10                                        ; $4a36: $10
    rst $38                                       ; $4a37: $ff
    nop                                           ; $4a38: $00
    db $fd                                        ; $4a39: $fd
    rst $38                                       ; $4a3a: $ff
    inc bc                                        ; $4a3b: $03
    ld a, [hl]                                    ; $4a3c: $7e
    ld a, a                                       ; $4a3d: $7f
    ccf                                           ; $4a3e: $3f
    ccf                                           ; $4a3f: $3f
    rra                                           ; $4a40: $1f
    rra                                           ; $4a41: $1f
    ld b, [hl]                                    ; $4a42: $46
    ld [$0842], sp                                ; $4a43: $08 $42 $08
    ld b, b                                       ; $4a46: $40
    nop                                           ; $4a47: $00
    ld a, [$5005]                                 ; $4a48: $fa $05 $50
    rst $38                                       ; $4a4b: $ff
    xor b                                         ; $4a4c: $a8
    rst $38                                       ; $4a4d: $ff
    push af                                       ; $4a4e: $f5
    rst $38                                       ; $4a4f: $ff
    ld b, b                                       ; $4a50: $40
    jp c, Jump_000_1458                           ; $4a51: $da $58 $14

    rst $28                                       ; $4a54: $ef
    db $10                                        ; $4a55: $10
    rst $38                                       ; $4a56: $ff

jr_09c_4a57:
    jr nz, jr_09c_4a57                            ; $4a57: $20 $fe

    ld bc, $dd00                                  ; $4a59: $01 $00 $dd
    ld [hl+], a                                   ; $4a5c: $22
    rst $28                                       ; $4a5d: $ef
    ld d, b                                       ; $4a5e: $50
    rst $30                                       ; $4a5f: $f7
    ld [$41fe], sp                                ; $4a60: $08 $fe $41
    add b                                         ; $4a63: $80
    rla                                           ; $4a64: $17
    ld b, $ff                                     ; $4a65: $06 $ff
    ccf                                           ; $4a67: $3f
    ccf                                           ; $4a68: $3f
    rrca                                          ; $4a69: $0f
    rrca                                          ; $4a6a: $0f
    inc bc                                        ; $4a6b: $03
    inc bc                                        ; $4a6c: $03
    add b                                         ; $4a6d: $80
    ld c, b                                       ; $4a6e: $48
    inc l                                         ; $4a6f: $2c
    pop de                                        ; $4a70: $d1
    and h                                         ; $4a71: $a4
    cp d                                          ; $4a72: $ba
    add b                                         ; $4a73: $80
    ld b, l                                       ; $4a74: $45
    ld de, $00ab                                  ; $4a75: $11 $ab $00
    dec b                                         ; $4a78: $05
    dec e                                         ; $4a79: $1d
    ld b, c                                       ; $4a7a: $41
    xor d                                         ; $4a7b: $aa
    ld b, d                                       ; $4a7c: $42
    ld h, l                                       ; $4a7d: $65
    ld [de], a                                    ; $4a7e: $12
    xor e                                         ; $4a7f: $ab
    nop                                           ; $4a80: $00
    ld [bc], a                                    ; $4a81: $02
    push af                                       ; $4a82: $f5
    xor b                                         ; $4a83: $a8
    xor d                                         ; $4a84: $aa
    push bc                                       ; $4a85: $c5
    ld d, c                                       ; $4a86: $51
    adc e                                         ; $4a87: $8b
    xor c                                         ; $4a88: $a9
    nop                                           ; $4a89: $00
    ld d, a                                       ; $4a8a: $57
    sbc e                                         ; $4a8b: $9b
    rst $28                                       ; $4a8c: $ef
    sbc [hl]                                      ; $4a8d: $9e
    ld a, a                                       ; $4a8e: $7f
    ld a, [hl+]                                   ; $4a8f: $2a
    ld e, a                                       ; $4a90: $5f
    halt                                          ; $4a91: $76
    rlca                                          ; $4a92: $07
    xor e                                         ; $4a93: $ab
    add b                                         ; $4a94: $80
    ld a, a                                       ; $4a95: $7f
    ld d, h                                       ; $4a96: $54
    xor e                                         ; $4a97: $ab
    nop                                           ; $4a98: $00
    rrca                                          ; $4a99: $0f
    ld c, c                                       ; $4a9a: $49
    ld c, $e4                                     ; $4a9b: $0e $e4
    dec bc                                        ; $4a9d: $0b
    db $f4                                        ; $4a9e: $f4
    inc h                                         ; $4a9f: $24
    inc b                                         ; $4aa0: $04
    db $fc                                        ; $4aa1: $fc
    inc bc                                        ; $4aa2: $03
    or [hl]                                       ; $4aa3: $b6
    add hl, hl                                    ; $4aa4: $29
    ld e, l                                       ; $4aa5: $5d
    ld b, $af                                     ; $4aa6: $06 $af
    db $10                                        ; $4aa8: $10
    ld e, b                                       ; $4aa9: $58
    dec d                                         ; $4aaa: $15
    ld [$01a0], a                                 ; $4aab: $ea $a0 $01
    inc l                                         ; $4aae: $2c
    xor b                                         ; $4aaf: $a8
    ld l, [hl]                                    ; $4ab0: $6e
    ld b, $ea                                     ; $4ab1: $06 $ea
    rst $38                                       ; $4ab3: $ff
    ld a, a                                       ; $4ab4: $7f
    add b                                         ; $4ab5: $80
    xor d                                         ; $4ab6: $aa
    inc [hl]                                      ; $4ab7: $34
    ld d, l                                       ; $4ab8: $55
    dec b                                         ; $4ab9: $05
    inc [hl]                                      ; $4aba: $34
    nop                                           ; $4abb: $00
    rlca                                          ; $4abc: $07
    ld c, $40                                     ; $4abd: $0e $40
    jr nz, jr_09c_4ac8                            ; $4abf: $20 $07

    cp a                                          ; $4ac1: $bf
    rst $38                                       ; $4ac2: $ff
    ld b, c                                       ; $4ac3: $41
    ei                                            ; $4ac4: $fb
    db $fc                                        ; $4ac5: $fc
    inc h                                         ; $4ac6: $24
    ccf                                           ; $4ac7: $3f

jr_09c_4ac8:
    ccf                                           ; $4ac8: $3f
    rlca                                          ; $4ac9: $07
    rlca                                          ; $4aca: $07
    nop                                           ; $4acb: $00
    ld bc, $1004                                  ; $4acc: $01 $04 $10
    rst $38                                       ; $4acf: $ff
    rst $38                                       ; $4ad0: $ff
    ld l, l                                       ; $4ad1: $6d
    ld c, $35                                     ; $4ad2: $0e $35
    ccf                                           ; $4ad4: $3f
    ccf                                           ; $4ad5: $3f
    xor d                                         ; $4ad6: $aa
    rst $30                                       ; $4ad7: $f7
    nop                                           ; $4ad8: $00
    cp a                                          ; $4ad9: $bf
    rst $38                                       ; $4ada: $ff
    adc a                                         ; $4adb: $8f
    ld a, a                                       ; $4adc: $7f
    ld d, c                                       ; $4add: $51
    xor a                                         ; $4ade: $af
    add hl, hl                                    ; $4adf: $29
    rst $10                                       ; $4ae0: $d7
    nop                                           ; $4ae1: $00
    sub [hl]                                      ; $4ae2: $96
    ld a, e                                       ; $4ae3: $7b
    and d                                         ; $4ae4: $a2
    rst $18                                       ; $4ae5: $df
    ld [hl], $ef                                  ; $4ae6: $36 $ef
    jp c, Jump_000_00ef                           ; $4ae8: $da $ef $00

    add b                                         ; $4aeb: $80
    rst $38                                       ; $4aec: $ff
    inc de                                        ; $4aed: $13
    rst $38                                       ; $4aee: $ff
    ld c, l                                       ; $4aef: $4d
    ei                                            ; $4af0: $fb
    ld sp, $00ef                                  ; $4af1: $31 $ef $00
    adc e                                         ; $4af4: $8b
    rst $38                                       ; $4af5: $ff
    daa                                           ; $4af6: $27
    rst $38                                       ; $4af7: $ff
    db $d3                                        ; $4af8: $d3
    ld l, a                                       ; $4af9: $6f
    sub h                                         ; $4afa: $94
    rst $28                                       ; $4afb: $ef
    ld bc, $fba4                                  ; $4afc: $01 $a4 $fb
    ld d, e                                       ; $4aff: $53
    rst $38                                       ; $4b00: $ff
    ld c, l                                       ; $4b01: $4d
    or a                                          ; $4b02: $b7
    ld sp, hl                                     ; $4b03: $f9
    cp h                                          ; $4b04: $bc
    dec b                                         ; $4b05: $05
    ld b, b                                       ; $4b06: $40
    sbc $c0                                       ; $4b07: $de $c0
    dec b                                         ; $4b09: $05
    db $db                                        ; $4b0a: $db
    and h                                         ; $4b0b: $a4
    sbc a                                         ; $4b0c: $9f
    ldh [$57], a                                  ; $4b0d: $e0 $57
    db $fd                                        ; $4b0f: $fd
    nop                                           ; $4b10: $00
    ld hl, $8bdf                                  ; $4b11: $21 $df $8b
    rst $38                                       ; $4b14: $ff
    dec hl                                        ; $4b15: $2b
    or $42                                        ; $4b16: $f6 $42
    cp a                                          ; $4b18: $bf
    nop                                           ; $4b19: $00
    ld d, $fb                                     ; $4b1a: $16 $fb
    ld b, a                                       ; $4b1c: $47
    call nc, $7ebd                                ; $4b1d: $d4 $bd $7e
    ld e, a                                       ; $4b20: $5f
    xor h                                         ; $4b21: $ac
    nop                                           ; $4b22: $00
    cp l                                          ; $4b23: $bd
    ld e, d                                       ; $4b24: $5a
    ld a, [hl+]                                   ; $4b25: $2a
    cp a                                          ; $4b26: $bf
    cp l                                          ; $4b27: $bd
    ld a, d                                       ; $4b28: $7a
    ld a, $75                                     ; $4b29: $3e $75
    nop                                           ; $4b2b: $00
    rst $10                                       ; $4b2c: $d7
    ld a, d                                       ; $4b2d: $7a
    xor h                                         ; $4b2e: $ac
    rst $10                                       ; $4b2f: $d7
    ld a, l                                       ; $4b30: $7d
    adc [hl]                                      ; $4b31: $8e
    xor l                                         ; $4b32: $ad
    rst $10                                       ; $4b33: $d7
    nop                                           ; $4b34: $00
    ld a, b                                       ; $4b35: $78
    xor a                                         ; $4b36: $af
    ld [$589d], a                                 ; $4b37: $ea $9d $58
    xor a                                         ; $4b3a: $af
    db $f4                                        ; $4b3b: $f4
    ld e, e                                       ; $4b3c: $5b
    nop                                           ; $4b3d: $00
    pop de                                        ; $4b3e: $d1
    ld a, $be                                     ; $4b3f: $3e $be
    ld [hl], c                                    ; $4b41: $71
    ld [hl], a                                    ; $4b42: $77
    add sp, -$55                                  ; $4b43: $e8 $ab
    db $fd                                        ; $4b45: $fd
    nop                                           ; $4b46: $00
    ld [hl], l                                    ; $4b47: $75
    xor $fb                                       ; $4b48: $ee $fb
    call nc, $e956                                ; $4b4a: $d4 $56 $e9
    ei                                            ; $4b4d: $fb
    db $fd                                        ; $4b4e: $fd
    nop                                           ; $4b4f: $00
    rst $00                                       ; $4b50: $c7
    rst $38                                       ; $4b51: $ff
    db $f4                                        ; $4b52: $f4
    sbc a                                         ; $4b53: $9f
    ld h, d                                       ; $4b54: $62
    cp l                                          ; $4b55: $bd

jr_09c_4b56:
    and h                                         ; $4b56: $a4
    ld a, e                                       ; $4b57: $7b
    ld bc, $bffc                                  ; $4b58: $01 $fc $bf
    ld a, a                                       ; $4b5b: $7f
    rst $38                                       ; $4b5c: $ff
    ld l, a                                       ; $4b5d: $6f
    rst $38                                       ; $4b5e: $ff
    ld a, [hl]                                    ; $4b5f: $7e
    ld [hl], $01                                  ; $4b60: $36 $01
    nop                                           ; $4b62: $00
    sub b                                         ; $4b63: $90
    rst $38                                       ; $4b64: $ff
    and [hl]                                      ; $4b65: $a6
    db $db                                        ; $4b66: $db
    ret                                           ; $4b67: $c9


    scf                                           ; $4b68: $37
    add hl, hl                                    ; $4b69: $29
    cp a                                          ; $4b6a: $bf
    nop                                           ; $4b6b: $00
    push af                                       ; $4b6c: $f5
    rra                                           ; $4b6d: $1f
    db $db                                        ; $4b6e: $db
    cpl                                           ; $4b6f: $2f
    dec hl                                        ; $4b70: $2b
    ld b, a                                       ; $4b71: $47
    ei                                            ; $4b72: $fb
    rlca                                          ; $4b73: $07
    ld d, c                                       ; $4b74: $51
    rst $38                                       ; $4b75: $ff
    or b                                          ; $4b76: $b0
    nop                                           ; $4b77: $00
    rst $18                                       ; $4b78: $df
    or h                                          ; $4b79: $b4
    nop                                           ; $4b7a: $00
    cp a                                          ; $4b7b: $bf
    rst $38                                       ; $4b7c: $ff
    rst $30                                       ; $4b7d: $f7
    ld [hl+], a                                   ; $4b7e: $22
    nop                                           ; $4b7f: $00
    nop                                           ; $4b80: $00
    rst $38                                       ; $4b81: $ff
    rst $38                                       ; $4b82: $ff
    cp [hl]                                       ; $4b83: $be
    rst $38                                       ; $4b84: $ff
    ld a, l                                       ; $4b85: $7d
    rst $38                                       ; $4b86: $ff
    xor a                                         ; $4b87: $af
    ld a, [hl]                                    ; $4b88: $7e
    nop                                           ; $4b89: $00
    dec c                                         ; $4b8a: $0d
    rst $38                                       ; $4b8b: $ff
    ld l, $db                                     ; $4b8c: $2e $db
    ld c, d                                       ; $4b8e: $4a
    db $fc                                        ; $4b8f: $fc
    dec [hl]                                      ; $4b90: $35
    jp c, Jump_000_1b00                           ; $4b91: $da $00 $1b

    push af                                       ; $4b94: $f5
    add h                                         ; $4b95: $84
    ld a, a                                       ; $4b96: $7f
    dec l                                         ; $4b97: $2d
    rst $18                                       ; $4b98: $df
    inc b                                         ; $4b99: $04
    rst $38                                       ; $4b9a: $ff
    db $10                                        ; $4b9b: $10
    xor e                                         ; $4b9c: $ab
    ld e, [hl]                                    ; $4b9d: $5e
    jr z, jr_09c_4b56                             ; $4b9e: $28 $b6

    nop                                           ; $4ba0: $00
    ld e, a                                       ; $4ba1: $5f
    cp a                                          ; $4ba2: $bf
    dec de                                        ; $4ba3: $1b
    rst $38                                       ; $4ba4: $ff
    ld b, c                                       ; $4ba5: $41
    rrca                                          ; $4ba6: $0f
    ld d, a                                       ; $4ba7: $57
    ld [bc], a                                    ; $4ba8: $02
    rlca                                          ; $4ba9: $07
    rst $38                                       ; $4baa: $ff
    ld c, l                                       ; $4bab: $4d
    rst $38                                       ; $4bac: $ff
    xor a                                         ; $4bad: $af
    ld bc, $4002                                  ; $4bae: $01 $02 $40
    rst $38                                       ; $4bb1: $ff
    inc l                                         ; $4bb2: $2c
    nop                                           ; $4bb3: $00
    cp h                                          ; $4bb4: $bc
    rst $38                                       ; $4bb5: $ff
    call c, $feff                                 ; $4bb6: $dc $ff $fe
    db $fd                                        ; $4bb9: $fd
    inc b                                         ; $4bba: $04
    ld a, b                                       ; $4bbb: $78
    rst $38                                       ; $4bbc: $ff
    ei                                            ; $4bbd: $fb
    cp $dc                                        ; $4bbe: $fe $dc
    ld b, d                                       ; $4bc0: $42
    nop                                           ; $4bc1: $00
    or d                                          ; $4bc2: $b2
    rst $38                                       ; $4bc3: $ff
    nop                                           ; $4bc4: $00
    and a                                         ; $4bc5: $a7
    ld a, a                                       ; $4bc6: $7f
    dec e                                         ; $4bc7: $1d
    rst $28                                       ; $4bc8: $ef
    add [hl]                                      ; $4bc9: $86
    rst $38                                       ; $4bca: $ff
    dec l                                         ; $4bcb: $2d
    sbc $00                                       ; $4bcc: $de $00
    ld c, d                                       ; $4bce: $4a
    db $fd                                        ; $4bcf: $fd
    dec l                                         ; $4bd0: $2d
    rst $38                                       ; $4bd1: $ff
    jp c, $f5bf                                   ; $4bd2: $da $bf $f5

    rst $38                                       ; $4bd5: $ff
    nop                                           ; $4bd6: $00
    ld e, a                                       ; $4bd7: $5f
    cp a                                          ; $4bd8: $bf
    or l                                          ; $4bd9: $b5
    rst $38                                       ; $4bda: $ff
    cp a                                          ; $4bdb: $bf
    ld a, a                                       ; $4bdc: $7f
    ld a, $ff                                     ; $4bdd: $3e $ff
    ld e, b                                       ; $4bdf: $58
    rst $28                                       ; $4be0: $ef
    jr jr_09c_4bf4                                ; $4be1: $18 $11

    db $ed                                        ; $4be3: $ed
    sub d                                         ; $4be4: $92
    ld b, $20                                     ; $4be5: $06 $20
    add hl, de                                    ; $4be7: $19
    db $eb                                        ; $4be8: $eb
    rst $10                                       ; $4be9: $d7
    rst $18                                       ; $4bea: $df
    ld [bc], a                                    ; $4beb: $02
    add sp, -$16                                  ; $4bec: $e8 $ea
    push de                                       ; $4bee: $d5
    db $fd                                        ; $4bef: $fd
    adc e                                         ; $4bf0: $8b
    db $f4                                        ; $4bf1: $f4
    sbc b                                         ; $4bf2: $98
    inc b                                         ; $4bf3: $04

jr_09c_4bf4:
    ld [hl], l                                    ; $4bf4: $75
    ld [$e0ff], sp                                ; $4bf5: $08 $ff $e0
    rst $38                                       ; $4bf8: $ff
    jp z, Jump_000_07bc                           ; $4bf9: $ca $bc $07

    ret z                                         ; $4bfc: $c8

    ld [hl], a                                    ; $4bfd: $77
    and h                                         ; $4bfe: $a4
    nop                                           ; $4bff: $00
    rst $38                                       ; $4c00: $ff
    ld e, [hl]                                    ; $4c01: $5e
    db $fd                                        ; $4c02: $fd
    dec [hl]                                      ; $4c03: $35
    rst $38                                       ; $4c04: $ff
    ld l, a                                       ; $4c05: $6f
    ei                                            ; $4c06: $fb
    or l                                          ; $4c07: $b5
    ld [bc], a                                    ; $4c08: $02
    ld a, a                                       ; $4c09: $7f
    ld l, e                                       ; $4c0a: $6b
    or $57                                        ; $4c0b: $f6 $57
    db $fd                                        ; $4c0d: $fd
    xor $e6                                       ; $4c0e: $ee $e6
    ld bc, $a2ff                                  ; $4c10: $01 $ff $a2
    ld a, [hl-]                                   ; $4c13: $3a
    db $10                                        ; $4c14: $10
    rst $10                                       ; $4c15: $d7
    and h                                         ; $4c16: $a4
    nop                                           ; $4c17: $00
    rst $38                                       ; $4c18: $ff
    cp $f6                                        ; $4c19: $fe $f6
    cp l                                          ; $4c1b: $bd
    ld [bc], a                                    ; $4c1c: $02
    cp a                                          ; $4c1d: $bf
    nop                                           ; $4c1e: $00
    call nc, $ead5                                ; $4c1f: $d4 $d5 $ea
    xor a                                         ; $4c22: $af
    ld d, c                                       ; $4c23: $51
    ld a, l                                       ; $4c24: $7d
    adc e                                         ; $4c25: $8b
    db $eb                                        ; $4c26: $eb
    nop                                           ; $4c27: $00
    ld d, l                                       ; $4c28: $55
    sub $ab                                       ; $4c29: $d6 $ab
    xor d                                         ; $4c2b: $aa
    ld d, a                                       ; $4c2c: $57
    rst $38                                       ; $4c2d: $ff
    adc e                                         ; $4c2e: $8b
    add d                                         ; $4c2f: $82
    jr z, @+$01                                   ; $4c30: $28 $ff

    sub c                                         ; $4c32: $91
    halt                                          ; $4c33: $76
    ld b, $b1                                     ; $4c34: $06 $b1
    db $e4                                        ; $4c36: $e4
    rlca                                          ; $4c37: $07
    ld l, e                                       ; $4c38: $6b
    cp a                                          ; $4c39: $bf
    add d                                         ; $4c3a: $82
    add b                                         ; $4c3b: $80

jr_09c_4c3c:
    or h                                          ; $4c3c: $b4
    ld [bc], a                                    ; $4c3d: $02
    cp d                                          ; $4c3e: $ba
    db $ed                                        ; $4c3f: $ed
    db $dd                                        ; $4c40: $dd
    rst $30                                       ; $4c41: $f7
    db $eb                                        ; $4c42: $eb
    cp a                                          ; $4c43: $bf
    ld e, l                                       ; $4c44: $5d
    ld [$bbff], sp                                ; $4c45: $08 $ff $bb
    rst $28                                       ; $4c48: $ef
    or $7c                                        ; $4c49: $f6 $7c
    nop                                           ; $4c4b: $00
    and [hl]                                      ; $4c4c: $a6
    ei                                            ; $4c4d: $fb
    cp [hl]                                       ; $4c4e: $be
    nop                                           ; $4c4f: $00
    db $fd                                        ; $4c50: $fd
    push de                                       ; $4c51: $d5
    cp $af                                        ; $4c52: $fe $af
    call c, $fa5d                                 ; $4c54: $dc $5d $fa
    xor d                                         ; $4c57: $aa
    nop                                           ; $4c58: $00
    db $fd                                        ; $4c59: $fd
    db $fd                                        ; $4c5a: $fd
    ld e, d                                       ; $4c5b: $5a
    jp c, $bab5                                   ; $4c5c: $da $b5 $ba

    ld d, c                                       ; $4c5f: $51
    db $ec                                        ; $4c60: $ec
    nop                                           ; $4c61: $00
    rla                                           ; $4c62: $17
    push de                                       ; $4c63: $d5
    xor [hl]                                      ; $4c64: $ae
    xor l                                         ; $4c65: $ad
    ld [hl], a                                    ; $4c66: $77
    ld a, b                                       ; $4c67: $78
    rst $08                                       ; $4c68: $cf
    xor d                                         ; $4c69: $aa
    nop                                           ; $4c6a: $00
    ld e, a                                       ; $4c6b: $5f
    db $dd                                        ; $4c6c: $dd
    xor [hl]                                      ; $4c6d: $ae
    or d                                          ; $4c6e: $b2
    ld a, a                                       ; $4c6f: $7f
    jp nc, $4c7d                                  ; $4c70: $d2 $7d $4c

    nop                                           ; $4c73: $00
    rst $30                                       ; $4c74: $f7
    and h                                         ; $4c75: $a4
    rst $38                                       ; $4c76: $ff
    ld c, [hl]                                    ; $4c77: $4e
    db $fd                                        ; $4c78: $fd
    ld [$59ff], sp                                ; $4c79: $08 $ff $59
    jr nz, jr_09c_4c3c                            ; $4c7c: $20 $be

    adc d                                         ; $4c7e: $8a
    ld e, b                                       ; $4c7f: $58
    ld [bc], a                                    ; $4c80: $02
    inc d                                         ; $4c81: $14
    ei                                            ; $4c82: $fb
    sub h                                         ; $4c83: $94
    ld a, a                                       ; $4c84: $7f
    dec [hl]                                      ; $4c85: $35
    nop                                           ; $4c86: $00
    rst $28                                       ; $4c87: $ef
    add h                                         ; $4c88: $84
    rst $38                                       ; $4c89: $ff
    ld a, [hl+]                                   ; $4c8a: $2a
    rst $18                                       ; $4c8b: $df
    ld c, b                                       ; $4c8c: $48
    rst $38                                       ; $4c8d: $ff
    jr z, jr_09c_4c90                             ; $4c8e: $28 $00

jr_09c_4c90:
    cp $5d                                        ; $4c90: $fe $5d
    or d                                          ; $4c92: $b2
    ei                                            ; $4c93: $fb
    db $10                                        ; $4c94: $10
    rst $38                                       ; $4c95: $ff
    inc b                                         ; $4c96: $04
    rst $38                                       ; $4c97: $ff
    ld a, $00                                     ; $4c98: $3e $00
    cp $70                                        ; $4c9a: $fe $70
    inc d                                         ; $4c9c: $14
    ld [hl], h                                    ; $4c9d: $74
    inc b                                         ; $4c9e: $04
    sub b                                         ; $4c9f: $90
    ld [bc], a                                    ; $4ca0: $02
    inc b                                         ; $4ca1: $04
    nop                                           ; $4ca2: $00
    and b                                         ; $4ca3: $a0
    ld [bc], a                                    ; $4ca4: $02
    rst $30                                       ; $4ca5: $f7
    dec b                                         ; $4ca6: $05
    jr nz, @+$01                                  ; $4ca7: $20 $ff

    ld b, l                                       ; $4ca9: $45
    ld [hl], a                                    ; $4caa: $77
    add b                                         ; $4cab: $80
    ld e, e                                       ; $4cac: $5b
    ld b, $80                                     ; $4cad: $06 $80
    ld h, b                                       ; $4caf: $60
    ld a, [de]                                    ; $4cb0: $1a
    nop                                           ; $4cb1: $00
    ld l, e                                       ; $4cb2: $6b
    add l                                         ; $4cb3: $85
    db $ed                                        ; $4cb4: $ed
    ld d, c                                       ; $4cb5: $51
    ld d, [hl]                                    ; $4cb6: $56
    ld [$769b], a                                 ; $4cb7: $ea $9b $76
    jr nz, jr_09c_4d13                            ; $4cba: $20 $57

    xor d                                         ; $4cbc: $aa
    ld h, b                                       ; $4cbd: $60
    ld a, [de]                                    ; $4cbe: $1a
    xor e                                         ; $4cbf: $ab
    ld d, l                                       ; $4cc0: $55
    sub l                                         ; $4cc1: $95
    db $eb                                        ; $4cc2: $eb
    cp e                                          ; $4cc3: $bb
    nop                                           ; $4cc4: $00
    ld e, [hl]                                    ; $4cc5: $5e
    ld d, a                                       ; $4cc6: $57
    ld a, [bc]                                    ; $4cc7: $0a
    dec bc                                        ; $4cc8: $0b
    and d                                         ; $4cc9: $a2
    rst $38                                       ; $4cca: $ff
    call nc, Call_000_007d                        ; $4ccb: $d4 $7d $00
    cp $af                                        ; $4cce: $fe $af
    db $fc                                        ; $4cd0: $fc
    ld e, l                                       ; $4cd1: $5d
    ld a, [$bfea]                                 ; $4cd2: $fa $ea $bf
    ld a, l                                       ; $4cd5: $7d
    nop                                           ; $4cd6: $00
    ld a, [$75be]                                 ; $4cd7: $fa $be $75
    ld d, a                                       ; $4cda: $57
    ld a, [$c497]                                 ; $4cdb: $fa $97 $c4
    ld h, d                                       ; $4cde: $62
    nop                                           ; $4cdf: $00
    adc h                                         ; $4ce0: $8c
    and [hl]                                      ; $4ce1: $a6
    push de                                       ; $4ce2: $d5
    ld a, a                                       ; $4ce3: $7f
    xor b                                         ; $4ce4: $a8
    jp hl                                         ; $4ce5: $e9


    sbc h                                         ; $4ce6: $9c
    ld e, e                                       ; $4ce7: $5b
    dec b                                         ; $4ce8: $05
    xor h                                         ; $4ce9: $ac
    push af                                       ; $4cea: $f5
    ld e, d                                       ; $4ceb: $5a
    ret nc                                        ; $4cec: $d0

    ld a, $a0                                     ; $4ced: $3e $a0
    ld e, c                                       ; $4cef: $59
    db $f4                                        ; $4cf0: $f4
    and b                                         ; $4cf1: $a0
    ld de, $0901                                  ; $4cf2: $11 $01 $09
    rst $30                                       ; $4cf5: $f7
    jp hl                                         ; $4cf6: $e9


    cp a                                          ; $4cf7: $bf
    dec d                                         ; $4cf8: $15
    rst $38                                       ; $4cf9: $ff
    dec hl                                        ; $4cfa: $2b
    ld c, $02                                     ; $4cfb: $0e $02
    db $10                                        ; $4cfd: $10
    rlca                                          ; $4cfe: $07
    rst $38                                       ; $4cff: $ff
    cp $24                                        ; $4d00: $fe $24
    inc bc                                        ; $4d02: $03
    db $dd                                        ; $4d03: $dd
    rst $38                                       ; $4d04: $ff
    ld sp, hl                                     ; $4d05: $f9
    rst $38                                       ; $4d06: $ff
    nop                                           ; $4d07: $00
    cp c                                          ; $4d08: $b9
    rst $38                                       ; $4d09: $ff
    ld hl, sp-$09                                 ; $4d0a: $f8 $f7
    ld [hl], b                                    ; $4d0c: $70
    rst $28                                       ; $4d0d: $ef
    jp Jump_000_00ff                              ; $4d0e: $c3 $ff $00


    and a                                         ; $4d11: $a7
    rst $38                                       ; $4d12: $ff

jr_09c_4d13:
    adc $7f                                       ; $4d13: $ce $7f
    inc b                                         ; $4d15: $04
    rst $38                                       ; $4d16: $ff
    xor b                                         ; $4d17: $a8
    ld a, a                                       ; $4d18: $7f
    nop                                           ; $4d19: $00
    cp c                                          ; $4d1a: $b9

jr_09c_4d1b:
    adc $b9                                       ; $4d1b: $ce $b9
    ld c, $f4                                     ; $4d1d: $0e $f4
    rra                                           ; $4d1f: $1f
    ld [hl], c                                    ; $4d20: $71
    sbc [hl]                                      ; $4d21: $9e
    nop                                           ; $4d22: $00
    push de                                       ; $4d23: $d5
    cp [hl]                                       ; $4d24: $be
    ld b, $fd                                     ; $4d25: $06 $fd
    sub h                                         ; $4d27: $94
    ld l, [hl]                                    ; $4d28: $6e
    ld a, [bc]                                    ; $4d29: $0a
    db $fd                                        ; $4d2a: $fd
    jr nz, jr_09c_4d5c                            ; $4d2b: $20 $2f

    jp c, Jump_000_19b0                           ; $4d2d: $da $b0 $19

    ldh [$9f], a                                  ; $4d30: $e0 $9f
    rst $08                                       ; $4d32: $cf
    ccf                                           ; $4d33: $3f
    rst $08                                       ; $4d34: $cf
    inc bc                                        ; $4d35: $03
    cp a                                          ; $4d36: $bf
    rst $08                                       ; $4d37: $cf
    ccf                                           ; $4d38: $3f
    ret z                                         ; $4d39: $c8

    cp a                                          ; $4d3a: $bf
    ret z                                         ; $4d3b: $c8

    inc b                                         ; $4d3c: $04
    db $10                                        ; $4d3d: $10
    ld d, d                                       ; $4d3e: $52
    inc bc                                        ; $4d3f: $03
    db $fc                                        ; $4d40: $fc
    adc h                                         ; $4d41: $8c
    rla                                           ; $4d42: $17
    or a                                          ; $4d43: $b7
    ld l, $18                                     ; $4d44: $2e $18
    jr z, jr_09c_4d68                             ; $4d46: $28 $20

    jr c, jr_09c_4d1b                             ; $4d48: $38 $d1

    ld e, [hl]                                    ; $4d4a: $5e
    jr c, jr_09c_4d75                             ; $4d4b: $38 $28

    rst $08                                       ; $4d4d: $cf
    cp a                                          ; $4d4e: $bf
    rrca                                          ; $4d4f: $0f
    ret nc                                        ; $4d50: $d0

    cpl                                           ; $4d51: $2f
    ldh [$9f], a                                  ; $4d52: $e0 $9f
    dec c                                         ; $4d54: $0d
    inc b                                         ; $4d55: $04
    rlca                                          ; $4d56: $07
    daa                                           ; $4d57: $27
    ld b, d                                       ; $4d58: $42
    jr jr_09c_4d74                                ; $4d59: $18 $19

    rlca                                          ; $4d5b: $07

jr_09c_4d5c:
    nop                                           ; $4d5c: $00
    ld a, [hl+]                                   ; $4d5d: $2a
    ret nz                                        ; $4d5e: $c0

    ccf                                           ; $4d5f: $3f
    ldh [$3f], a                                  ; $4d60: $e0 $3f
    rst $00                                       ; $4d62: $c7
    ccf                                           ; $4d63: $3f
    ld l, a                                       ; $4d64: $6f
    nop                                           ; $4d65: $00
    cp b                                          ; $4d66: $b8
    rst $18                                       ; $4d67: $df

jr_09c_4d68:
    scf                                           ; $4d68: $37
    ld l, a                                       ; $4d69: $6f
    or a                                          ; $4d6a: $b7

jr_09c_4d6b:
    rst $08                                       ; $4d6b: $cf
    scf                                           ; $4d6c: $37
    rst $38                                       ; $4d6d: $ff
    ld b, b                                       ; $4d6e: $40
    xor d                                         ; $4d6f: $aa
    ld e, $18                                     ; $4d70: $1e $18
    rst $38                                       ; $4d72: $ff
    nop                                           ; $4d73: $00

jr_09c_4d74:
    db $fc                                        ; $4d74: $fc

jr_09c_4d75:
    db $fc                                        ; $4d75: $fc
    ld hl, sp-$08                                 ; $4d76: $f8 $f8
    jr nz, jr_09c_4d6b                            ; $4d78: $20 $f1

    pop af                                        ; $4d7a: $f1
    db $10                                        ; $4d7b: $10
    jr c, @+$61                                   ; $4d7c: $38 $5f

    ld e, a                                       ; $4d7e: $5f
    cp a                                          ; $4d7f: $bf
    cp a                                          ; $4d80: $bf
    ld a, a                                       ; $4d81: $7f
    ld h, c                                       ; $4d82: $61
    ld a, a                                       ; $4d83: $7f
    jr nz, jr_09c_4dbe                            ; $4d84: $20 $38

    rst $38                                       ; $4d86: $ff
    rra                                           ; $4d87: $1f
    ld l, a                                       ; $4d88: $6f
    or a                                          ; $4d89: $b7
    ld c, a                                       ; $4d8a: $4f
    or a                                          ; $4d8b: $b7
    inc b                                         ; $4d8c: $04
    ld [$6e00], sp                                ; $4d8d: $08 $00 $6e
    or [hl]                                       ; $4d90: $b6
    ld c, h                                       ; $4d91: $4c
    or h                                          ; $4d92: $b4
    ld l, b                                       ; $4d93: $68
    or b                                          ; $4d94: $b0
    ld c, c                                       ; $4d95: $49
    or c                                          ; $4d96: $b1
    nop                                           ; $4d97: $00
    ld [c], a                                     ; $4d98: $e2
    ld [c], a                                     ; $4d99: $e2
    push bc                                       ; $4d9a: $c5
    push bc                                       ; $4d9b: $c5
    adc e                                         ; $4d9c: $8b
    adc e                                         ; $4d9d: $8b
    rla                                           ; $4d9e: $17
    rla                                           ; $4d9f: $17
    ld [hl], $2f                                  ; $4da0: $36 $2f
    cpl                                           ; $4da2: $2f
    jr nc, jr_09c_4dc5                            ; $4da3: $30 $20

    ld a, $23                                     ; $4da5: $3e $23
    add b                                         ; $4da7: $80
    rrc e                                         ; $4da8: $cb $0b
    dec b                                         ; $4daa: $05
    nop                                           ; $4dab: $00
    cp $00                                        ; $4dac: $fe $00
    cp $fc                                        ; $4dae: $fe $fc
    db $fc                                        ; $4db0: $fc
    ld sp, hl                                     ; $4db1: $f9
    ld sp, hl                                     ; $4db2: $f9
    ld a, [c]                                     ; $4db3: $f2
    ld a, [c]                                     ; $4db4: $f2
    nop                                           ; $4db5: $00
    nop                                           ; $4db6: $00
    push hl                                       ; $4db7: $e5
    nop                                           ; $4db8: $00
    res 2, [hl]                                   ; $4db9: $cb $96
    nop                                           ; $4dbb: $00
    dec l                                         ; $4dbc: $2d
    nop                                           ; $4dbd: $00

jr_09c_4dbe:
    ld l, d                                       ; $4dbe: $6a
    nop                                           ; $4dbf: $00
    or d                                          ; $4dc0: $b2
    ld c, l                                       ; $4dc1: $4d
    or l                                          ; $4dc2: $b5
    ld l, d                                       ; $4dc3: $6a
    or e                                          ; $4dc4: $b3

jr_09c_4dc5:
    ld c, a                                       ; $4dc5: $4f
    or [hl]                                       ; $4dc6: $b6
    ld l, a                                       ; $4dc7: $6f
    ld c, $b6                                     ; $4dc8: $0e $b6
    ld c, a                                       ; $4dca: $4f
    or [hl]                                       ; $4dcb: $b6
    ld l, l                                       ; $4dcc: $6d
    inc b                                         ; $4dcd: $04
    nop                                           ; $4dce: $00
    ld l, l                                       ; $4dcf: $6d
    dec bc                                        ; $4dd0: $0b
    add $02                                       ; $4dd1: $c6 $02
    ei                                            ; $4dd3: $fb
    add b                                         ; $4dd4: $80
    ld [hl], a                                    ; $4dd5: $77
    inc bc                                        ; $4dd6: $03
    inc bc                                        ; $4dd7: $03
    db $fd                                        ; $4dd8: $fd
    xor e                                         ; $4dd9: $ab
    rst $38                                       ; $4dda: $ff
    inc bc                                        ; $4ddb: $03
    sbc $fe                                       ; $4ddc: $de $fe
    nop                                           ; $4dde: $00
    db $fc                                        ; $4ddf: $fc
    call c, $d8f9                                 ; $4de0: $dc $f9 $d8
    jp nc, $e5a2                                  ; $4de3: $d2 $a2 $e5

    call nz, $ca10                                ; $4de6: $c4 $10 $ca
    adc c                                         ; $4de9: $89
    ld d, $31                                     ; $4dea: $16 $31
    nop                                           ; $4dec: $00
    ld d, e                                       ; $4ded: $53
    ld e, e                                       ; $4dee: $5b
    or a                                          ; $4def: $b7
    and e                                         ; $4df0: $a3
    nop                                           ; $4df1: $00
    ld l, a                                       ; $4df2: $6f
    ld h, a                                       ; $4df3: $67
    rst $10                                       ; $4df4: $d7
    res 7, a                                      ; $4df5: $cb $bf
    or a                                          ; $4df7: $b7
    ld [hl], a                                    ; $4df8: $77
    ld l, e                                       ; $4df9: $6b
    nop                                           ; $4dfa: $00
    db $dd                                        ; $4dfb: $dd
    rst $30                                       ; $4dfc: $f7
    sub h                                         ; $4dfd: $94
    ld l, e                                       ; $4dfe: $6b
    ld l, l                                       ; $4dff: $6d
    or [hl]                                       ; $4e00: $b6
    ld c, e                                       ; $4e01: $4b
    or [hl]                                       ; $4e02: $b6
    nop                                           ; $4e03: $00
    db $ed                                        ; $4e04: $ed
    ld [hl], $48                                  ; $4e05: $36 $48
    or a                                          ; $4e07: $b7
    db $ed                                        ; $4e08: $ed
    scf                                           ; $4e09: $37
    ld c, b                                       ; $4e0a: $48
    or a                                          ; $4e0b: $b7
    nop                                           ; $4e0c: $00
    add sp, $37                                   ; $4e0d: $e8 $37

Call_09c_4e0f:
    ret z                                         ; $4e0f: $c8

    scf                                           ; $4e10: $37
    db $fc                                        ; $4e11: $fc
    xor d                                         ; $4e12: $aa
    db $fc                                        ; $4e13: $fc
    nop                                           ; $4e14: $00
    dec b                                         ; $4e15: $05
    ld sp, hl                                     ; $4e16: $f9
    xor c                                         ; $4e17: $a9
    ldh a, [rSC]                                  ; $4e18: $f0 $02
    push hl                                       ; $4e1a: $e5
    ld h, b                                       ; $4e1b: $60
    nop                                           ; $4e1c: $00
    nop                                           ; $4e1d: $00
    jr nc, jr_09c_4e28                            ; $4e1e: $30 $08

    nop                                           ; $4e20: $00
    ld e, d                                       ; $4e21: $5a
    and a                                         ; $4e22: $a7
    or c                                          ; $4e23: $b1
    ld l, a                                       ; $4e24: $6f
    nop                                           ; $4e25: $00
    nop                                           ; $4e26: $00
    rst $18                                       ; $4e27: $df

jr_09c_4e28:
    dec d                                         ; $4e28: $15
    db $10                                        ; $4e29: $10
    cp a                                          ; $4e2a: $bf
    nop                                           ; $4e2b: $00
    ld a, a                                       ; $4e2c: $7f
    rst $38                                       ; $4e2d: $ff
    rrca                                          ; $4e2e: $0f
    sbc h                                         ; $4e2f: $9c
    rst $30                                       ; $4e30: $f7
    add hl, sp                                    ; $4e31: $39
    adc $e6                                       ; $4e32: $ce $e6
    ld b, $09                                     ; $4e34: $06 $09
    ret                                           ; $4e36: $c9


    rlca                                          ; $4e37: $07
    ei                                            ; $4e38: $fb
    rla                                           ; $4e39: $17
    rst $20                                       ; $4e3a: $e7
    jr c, jr_09c_4e3d                             ; $4e3b: $38 $00

jr_09c_4e3d:
    add hl, bc                                    ; $4e3d: $09
    inc b                                         ; $4e3e: $04
    jr z, jr_09c_4ec0                             ; $4e3f: $28 $7f

    ld b, b                                       ; $4e41: $40
    cp a                                          ; $4e42: $bf
    ld [hl+], a                                   ; $4e43: $22
    add hl, bc                                    ; $4e44: $09
    rlca                                          ; $4e45: $07
    rst $38                                       ; $4e46: $ff
    rlca                                          ; $4e47: $07
    ld hl, sp+$07                                 ; $4e48: $f8 $07
    ld hl, sp-$20                                 ; $4e4a: $f8 $e0
    ld [$ee29], sp                                ; $4e4c: $08 $29 $ee
    jr nz, jr_09c_4e8b                            ; $4e4f: $20 $3a

    ld de, $ffff                                  ; $4e51: $11 $ff $ff
    ld b, d                                       ; $4e54: $42
    cp l                                          ; $4e55: $bd
    add c                                         ; $4e56: $81
    inc b                                         ; $4e57: $04
    ld a, [hl]                                    ; $4e58: $7e
    ld [bc], a                                    ; $4e59: $02
    db $fd                                        ; $4e5a: $fd
    jr nz, @+$01                                  ; $4e5b: $20 $ff

    ld d, b                                       ; $4e5d: $50
    dec l                                         ; $4e5e: $2d
    cp h                                          ; $4e5f: $bc
    jp $c002                                      ; $4e60: $c3 $02 $c0


    add c                                         ; $4e63: $81
    and c                                         ; $4e64: $a1
    ret nz                                        ; $4e65: $c0

    pop bc                                        ; $4e66: $c1
    add b                                         ; $4e67: $80
    inc b                                         ; $4e68: $04
    xor b                                         ; $4e69: $a8
    dec h                                         ; $4e6a: $25
    nop                                           ; $4e6b: $00
    sbc d                                         ; $4e6c: $9a
    ld a, [bc]                                    ; $4e6d: $0a
    sub h                                         ; $4e6e: $94
    inc h                                         ; $4e6f: $24
    sbc b                                         ; $4e70: $98
    dec c                                         ; $4e71: $0d
    sub b                                         ; $4e72: $90
    ld [hl+], a                                   ; $4e73: $22
    adc b                                         ; $4e74: $88
    inc b                                         ; $4e75: $04
    nop                                           ; $4e76: $00
    cpl                                           ; $4e77: $2f
    sbc a                                         ; $4e78: $9f
    rrca                                          ; $4e79: $0f
    add d                                         ; $4e7a: $82
    ld bc, $0009                                  ; $4e7b: $01 $09 $00
    ld [de], a                                    ; $4e7e: $12
    ld bc, $7400                                  ; $4e7f: $01 $00 $74
    nop                                           ; $4e82: $00
    ld e, d                                       ; $4e83: $5a
    add b                                         ; $4e84: $80
    or h                                          ; $4e85: $b4
    ld b, b                                       ; $4e86: $40
    ret                                           ; $4e87: $c9


    add hl, de                                    ; $4e88: $19
    ld b, b                                       ; $4e89: $40
    ld b, b                                       ; $4e8a: $40

jr_09c_4e8b:
    db $db                                        ; $4e8b: $db
    inc b                                         ; $4e8c: $04
    ld bc, $0400                                  ; $4e8d: $01 $00 $04
    ld [bc], a                                    ; $4e90: $02
    ld a, [hl+]                                   ; $4e91: $2a
    inc b                                         ; $4e92: $04
    add b                                         ; $4e93: $80
    ld l, c                                       ; $4e94: $69
    inc c                                         ; $4e95: $0c
    rst $18                                       ; $4e96: $df
    jr nz, @+$2a                                  ; $4e97: $20 $28

    nop                                           ; $4e99: $00
    sub b                                         ; $4e9a: $90
    nop                                           ; $4e9b: $00
    inc bc                                        ; $4e9c: $03
    and b                                         ; $4e9d: $a0
    stop                                          ; $4e9e: $10 $00
    add hl, bc                                    ; $4ea0: $09
    db $10                                        ; $4ea1: $10
    db $10                                        ; $4ea2: $10
    rst $38                                       ; $4ea3: $ff
    nop                                           ; $4ea4: $00
    ld d, l                                       ; $4ea5: $55
    ld [bc], a                                    ; $4ea6: $02
    adc d                                         ; $4ea7: $8a
    ld bc, $1804                                  ; $4ea8: $01 $04 $18
    nop                                           ; $4eab: $00
    sub h                                         ; $4eac: $94
    nop                                           ; $4ead: $00
    ld a, [bc]                                    ; $4eae: $0a
    ld bc, $19f9                                  ; $4eaf: $01 $f9 $19
    stop                                          ; $4eb2: $10 $00
    nop                                           ; $4eb4: $00
    add b                                         ; $4eb5: $80
    jr nc, jr_09c_4eb8                            ; $4eb6: $30 $00

jr_09c_4eb8:
    ld a, [bc]                                    ; $4eb8: $0a
    nop                                           ; $4eb9: $00
    dec d                                         ; $4eba: $15
    ld [bc], a                                    ; $4ebb: $02
    push bc                                       ; $4ebc: $c5
    sbc c                                         ; $4ebd: $99
    inc c                                         ; $4ebe: $0c
    ld h, b                                       ; $4ebf: $60

jr_09c_4ec0:
    ld [$9825], sp                                ; $4ec0: $08 $25 $98
    rrca                                          ; $4ec3: $0f
    ld h, b                                       ; $4ec4: $60
    ld b, b                                       ; $4ec5: $40
    xor d                                         ; $4ec6: $aa
    or c                                          ; $4ec7: $b1
    rlca                                          ; $4ec8: $07
    and b                                         ; $4ec9: $a0
    ld sp, hl                                     ; $4eca: $f9
    ld c, $b5                                     ; $4ecb: $0e $b5
    jr nz, jr_09c_4edf                            ; $4ecd: $20 $10

    jp c, $35bf                                   ; $4ecf: $da $bf $35

    sbc [hl]                                      ; $4ed2: $9e
    db $db                                        ; $4ed3: $db
    nop                                           ; $4ed4: $00

jr_09c_4ed5:
    cp h                                          ; $4ed5: $bc
    ld [hl], d                                    ; $4ed6: $72
    sbc l                                         ; $4ed7: $9d
    db $dd                                        ; $4ed8: $dd
    cp d                                          ; $4ed9: $ba
    ld a, [c]                                     ; $4eda: $f2
    sbc l                                         ; $4edb: $9d
    rst $18                                       ; $4edc: $df
    nop                                           ; $4edd: $00
    cp a                                          ; $4ede: $bf

jr_09c_4edf:
    rst $38                                       ; $4edf: $ff
    sbc a                                         ; $4ee0: $9f
    jr nz, @+$01                                  ; $4ee1: $20 $ff

    rst $10                                       ; $4ee3: $d7
    jr z, jr_09c_4f55                             ; $4ee4: $28 $6f

    ld bc, $fc90                                  ; $4ee6: $01 $90 $fc
    inc bc                                        ; $4ee9: $03
    ei                                            ; $4eea: $fb
    ld b, $f6                                     ; $4eeb: $06 $f6
    dec c                                         ; $4eed: $0d
    reti                                          ; $4eee: $d9


    inc c                                         ; $4eef: $0c
    nop                                           ; $4ef0: $00
    cp a                                          ; $4ef1: $bf
    rst $38                                       ; $4ef2: $ff
    sbc $bf                                       ; $4ef3: $de $bf
    cp h                                          ; $4ef5: $bc
    rst $38                                       ; $4ef6: $ff
    sbc l                                         ; $4ef7: $9d
    rst $38                                       ; $4ef8: $ff
    ld [hl], l                                    ; $4ef9: $75
    cp d                                          ; $4efa: $ba
    inc b                                         ; $4efb: $04
    nop                                           ; $4efc: $00
    rra                                           ; $4efd: $1f
    nop                                           ; $4efe: $00
    ld [hl+], a                                   ; $4eff: $22
    ld b, $09                                     ; $4f00: $06 $09
    ld a, [hl+]                                   ; $4f02: $2a
    ld b, $74                                     ; $4f03: $06 $74
    adc [hl]                                      ; $4f05: $8e
    dec b                                         ; $4f06: $05
    ld c, b                                       ; $4f07: $48
    db $f4                                        ; $4f08: $f4
    ld hl, sp+$14                                 ; $4f09: $f8 $14

jr_09c_4f0b:
    rst $18                                       ; $4f0b: $df
    jr nz, jr_09c_4f5e                            ; $4f0c: $20 $50

    jr jr_09c_4f64                                ; $4f0e: $18 $54

    ld [bc], a                                    ; $4f10: $02
    xor c                                         ; $4f11: $a9
    add a                                         ; $4f12: $87
    sub b                                         ; $4f13: $90
    jr nz, jr_09c_4f0b                            ; $4f14: $20 $f5

    ld [bc], a                                    ; $4f16: $02
    db $db                                        ; $4f17: $db
    inc b                                         ; $4f18: $04
    push af                                       ; $4f19: $f5
    rla                                           ; $4f1a: $17
    sub b                                         ; $4f1b: $90
    jr nz, jr_09c_4f97                            ; $4f1c: $20 $79

    rrca                                          ; $4f1e: $0f
    rlca                                          ; $4f1f: $07
    cp $00                                        ; $4f20: $fe $00
    ld e, e                                       ; $4f22: $5b
    add b                                         ; $4f23: $80
    or [hl]                                       ; $4f24: $b6
    ret nc                                        ; $4f25: $d0

    jr nz, jr_09c_4ed5                            ; $4f26: $20 $ad

    rrca                                          ; $4f28: $0f
    or l                                          ; $4f29: $b5
    rlca                                          ; $4f2a: $07
    jr nc, jr_09c_4f2f                            ; $4f2b: $30 $02

    xor d                                         ; $4f2d: $aa
    ret nc                                        ; $4f2e: $d0

jr_09c_4f2f:
    db $10                                        ; $4f2f: $10
    ld a, [hl]                                    ; $4f30: $7e
    dec b                                         ; $4f31: $05
    ld d, a                                       ; $4f32: $57
    ld [hl], l                                    ; $4f33: $75
    adc [hl]                                      ; $4f34: $8e
    rst $20                                       ; $4f35: $e7
    inc b                                         ; $4f36: $04
    jr jr_09c_4fa4                                ; $4f37: $18 $6b

    sub h                                         ; $4f39: $94
    push af                                       ; $4f3a: $f5
    dec bc                                        ; $4f3b: $0b
    cp b                                          ; $4f3c: $b8
    ld a, [de]                                    ; $4f3d: $1a
    or $09                                        ; $4f3e: $f6 $09
    ld bc, $12ed                                  ; $4f40: $01 $ed $12
    adc e                                         ; $4f43: $8b
    ld [hl], h                                    ; $4f44: $74
    and l                                         ; $4f45: $a5
    jp c, Jump_09c_614b                           ; $4f46: $da $4b $61

    stop                                          ; $4f49: $10 $00
    xor d                                         ; $4f4b: $aa
    rst $38                                       ; $4f4c: $ff
    ld d, a                                       ; $4f4d: $57
    rst $38                                       ; $4f4e: $ff
    adc [hl]                                      ; $4f4f: $8e
    rst $38                                       ; $4f50: $ff
    jr @+$01                                      ; $4f51: $18 $ff

    inc sp                                        ; $4f53: $33
    sub h                                         ; $4f54: $94

jr_09c_4f55:
    rst $38                                       ; $4f55: $ff
    rra                                           ; $4f56: $1f
    db $10                                        ; $4f57: $10
    call c, $aa22                                 ; $4f58: $dc $22 $aa
    ld d, l                                       ; $4f5b: $55
    or [hl]                                       ; $4f5c: $b6
    dec b                                         ; $4f5d: $05

jr_09c_4f5e:
    ld a, b                                       ; $4f5e: $78
    dec e                                         ; $4f5f: $1d
    cp a                                          ; $4f60: $bf
    xor c                                         ; $4f61: $a9
    add hl, bc                                    ; $4f62: $09
    ld d, l                                       ; $4f63: $55

jr_09c_4f64:
    cp c                                          ; $4f64: $b9
    ld b, $04                                     ; $4f65: $06 $04
    ld [$002f], sp                                ; $4f67: $08 $2f $00
    ld [$102e], sp                                ; $4f6a: $08 $2e $10
    ld e, $40                                     ; $4f6d: $1e $40
    ld b, $80                                     ; $4f6f: $06 $80
    add hl, de                                    ; $4f71: $19
    ld d, $03                                     ; $4f72: $16 $03
    inc bc                                        ; $4f74: $03
    ld c, $0f                                     ; $4f75: $0e $0f
    jr c, @+$41                                   ; $4f77: $38 $3f

    ldh a, [rP1]                                  ; $4f79: $f0 $00
    rst $38                                       ; $4f7b: $ff
    and e                                         ; $4f7c: $a3
    db $fc                                        ; $4f7d: $fc
    inc bc                                        ; $4f7e: $03
    inc bc                                        ; $4f7f: $03
    ld b, $07                                     ; $4f80: $06 $07
    dec c                                         ; $4f82: $0d
    nop                                           ; $4f83: $00
    rrca                                          ; $4f84: $0f
    ld a, [de]                                    ; $4f85: $1a
    rra                                           ; $4f86: $1f
    inc [hl]                                      ; $4f87: $34
    ccf                                           ; $4f88: $3f
    ld l, c                                       ; $4f89: $69
    ld a, [hl]                                    ; $4f8a: $7e
    ret nc                                        ; $4f8b: $d0

    nop                                           ; $4f8c: $00
    rst $38                                       ; $4f8d: $ff
    and h                                         ; $4f8e: $a4
    ei                                            ; $4f8f: $fb
    ld c, [hl]                                    ; $4f90: $4e
    pop af                                        ; $4f91: $f1
    sbc h                                         ; $4f92: $9c
    db $e3                                        ; $4f93: $e3
    jr z, jr_09c_4f9b                             ; $4f94: $28 $05

    rst $10                                       ; $4f96: $d7

jr_09c_4f97:
    ld d, b                                       ; $4f97: $50
    xor d                                         ; $4f98: $aa
    add b                                         ; $4f99: $80
    ld [hl], a                                    ; $4f9a: $77

jr_09c_4f9b:
    sbc c                                         ; $4f9b: $99
    nop                                           ; $4f9c: $00
    rst $10                                       ; $4f9d: $d7
    or l                                          ; $4f9e: $b5
    nop                                           ; $4f9f: $00
    ld b, b                                       ; $4fa0: $40
    ld bc, $0eba                                  ; $4fa1: $01 $ba $0e

jr_09c_4fa4:
    ld b, $07                                     ; $4fa4: $06 $07
    dec b                                         ; $4fa6: $05
    rlca                                          ; $4fa7: $07
    ld c, $0f                                     ; $4fa8: $0e $0f
    nop                                           ; $4faa: $00
    inc c                                         ; $4fab: $0c
    rrca                                          ; $4fac: $0f
    jr jr_09c_4fce                                ; $4fad: $18 $1f

    ld b, b                                       ; $4faf: $40
    rst $38                                       ; $4fb0: $ff
    sub b                                         ; $4fb1: $90
    xor $02                                       ; $4fb2: $ee $02
    nop                                           ; $4fb4: $00
    push af                                       ; $4fb5: $f5
    nop                                           ; $4fb6: $00
    xor $00                                       ; $4fb7: $ee $00
    db $dd                                        ; $4fb9: $dd
    ld a, [hl+]                                   ; $4fba: $2a
    ld b, $d5                                     ; $4fbb: $06 $d5
    ld a, $00                                     ; $4fbd: $3e $00
    cp d                                          ; $4fbf: $ba
    cp l                                          ; $4fc0: $bd
    jr @+$47                                      ; $4fc1: $18 $45

    ld bc, $2804                                  ; $4fc3: $01 $04 $28
    ld [hl], c                                    ; $4fc6: $71
    ld d, b                                       ; $4fc7: $50
    inc b                                         ; $4fc8: $04
    ld c, $3f                                     ; $4fc9: $0e $3f
    ld hl, $f43f                                  ; $4fcb: $21 $3f $f4

jr_09c_4fce:
    call $8507                                    ; $4fce: $cd $07 $85
    ld a, [$d02f]                                 ; $4fd1: $fa $2f $d0
    ld c, c                                       ; $4fd4: $49
    dec de                                        ; $4fd5: $1b
    ld h, b                                       ; $4fd6: $60
    ld d, h                                       ; $4fd7: $54
    or b                                          ; $4fd8: $b0
    db $10                                        ; $4fd9: $10
    ld h, b                                       ; $4fda: $60
    ld l, $af                                     ; $4fdb: $2e $af
    ld d, b                                       ; $4fdd: $50
    ld e, a                                       ; $4fde: $5f
    and b                                         ; $4fdf: $a0
    ccf                                           ; $4fe0: $3f
    ld b, b                                       ; $4fe1: $40
    ret nz                                        ; $4fe2: $c0

    ld [bc], a                                    ; $4fe3: $02
    rrca                                          ; $4fe4: $0f
    ld e, a                                       ; $4fe5: $5f
    and b                                         ; $4fe6: $a0
    dec d                                         ; $4fe7: $15
    ld [$d42b], a                                 ; $4fe8: $ea $2b $d4
    nop                                           ; $4feb: $00
    push af                                       ; $4fec: $f5
    ld a, [bc]                                    ; $4fed: $0a
    ld a, [$fc05]                                 ; $4fee: $fa $05 $fc
    inc bc                                        ; $4ff1: $03
    ld a, [$0005]                                 ; $4ff2: $fa $05 $00
    db $f4                                        ; $4ff5: $f4
    dec bc                                        ; $4ff6: $0b
    ld a, [$ec05]                                 ; $4ff7: $fa $05 $ec
    inc de                                        ; $4ffa: $13
    call nc, $002b                                ; $4ffb: $d4 $2b $00
    dec b                                         ; $4ffe: $05
    ld a, d                                       ; $4fff: $7a
    ld [$05b7], sp                                ; $5000: $08 $b7 $05
    ld e, d                                       ; $5003: $5a
    nop                                           ; $5004: $00
    rst $28                                       ; $5005: $ef
    ld [$5601], sp                                ; $5006: $08 $01 $56
    nop                                           ; $5009: $00
    cp e                                          ; $500a: $bb
    add hl, hl                                    ; $500b: $29
    ld bc, $7fae                                  ; $500c: $01 $ae $7f
    add b                                         ; $500f: $80
    add c                                         ; $5010: $81
    jr nc, @+$11                                  ; $5011: $30 $0f

    xor e                                         ; $5013: $ab
    ld d, h                                       ; $5014: $54
    dec d                                         ; $5015: $15
    ld [$d52a], a                                 ; $5016: $ea $2a $d5
    ld a, b                                       ; $5019: $78

Jump_09c_501a:
    ld b, $80                                     ; $501a: $06 $80
    add b                                         ; $501c: $80
    ld [bc], a                                    ; $501d: $02
    rst $38                                       ; $501e: $ff
    nop                                           ; $501f: $00
    ld a, [$d505]                                 ; $5020: $fa $05 $d5
    ld a, [hl+]                                   ; $5023: $2a
    xor d                                         ; $5024: $aa
    ld [$5455], sp                                ; $5025: $08 $55 $54
    xor e                                         ; $5028: $ab
    xor b                                         ; $5029: $a8
    ld e, c                                       ; $502a: $59
    ld bc, $57a8                                  ; $502b: $01 $a8 $57
    ld d, b                                       ; $502e: $50
    ld bc, $a0ae                                  ; $502f: $01 $ae $a0
    ld e, l                                       ; $5032: $5d
    ld b, b                                       ; $5033: $40
    cp e                                          ; $5034: $bb
    add b                                         ; $5035: $80
    ld [hl], l                                    ; $5036: $75
    and h                                         ; $5037: $a4
    nop                                           ; $5038: $00
    add b                                         ; $5039: $80
    and b                                         ; $503a: $a0
    nop                                           ; $503b: $00
    ld [hl], b                                    ; $503c: $70
    adc a                                         ; $503d: $8f
    jr c, @-$37                                   ; $503e: $38 $c7

    inc d                                         ; $5040: $14
    db $eb                                        ; $5041: $eb
    ld a, [bc]                                    ; $5042: $0a
    nop                                           ; $5043: $00
    ld [hl], l                                    ; $5044: $75
    ld bc, $00de                                  ; $5045: $01 $de $00
    ld l, a                                       ; $5048: $6f
    nop                                           ; $5049: $00
    rst $30                                       ; $504a: $f7
    nop                                           ; $504b: $00
    nop                                           ; $504c: $00
    xor e                                         ; $504d: $ab
    ret nz                                        ; $504e: $c0

    ret nz                                        ; $504f: $c0

    ld h, b                                       ; $5050: $60
    ldh [$b0], a                                  ; $5051: $e0 $b0
    ldh a, [$58]                                  ; $5053: $f0 $58
    nop                                           ; $5055: $00
    ld hl, sp+$2c                                 ; $5056: $f8 $2c
    db $fc                                        ; $5058: $fc
    sub [hl]                                      ; $5059: $96
    ld a, [hl]                                    ; $505a: $7e
    dec bc                                        ; $505b: $0b
    rst $38                                       ; $505c: $ff
    ld hl, $df71                                  ; $505d: $21 $71 $df
    ld a, l                                       ; $5060: $7d
    ld bc, $0981                                  ; $5061: $01 $81 $09
    ret nz                                        ; $5064: $c0

    jr c, @+$01                                   ; $5065: $38 $ff

    ld [$2af7], sp                                ; $5067: $08 $f7 $2a
    nop                                           ; $506a: $00
    inc b                                         ; $506b: $04
    or a                                          ; $506c: $b7
    nop                                           ; $506d: $00
    ld e, e                                       ; $506e: $5b
    nop                                           ; $506f: $00
    cp a                                          ; $5070: $bf
    inc b                                         ; $5071: $04
    nop                                           ; $5072: $00
    xor l                                         ; $5073: $ad
    inc d                                         ; $5074: $14
    nop                                           ; $5075: $00
    rra                                           ; $5076: $1f
    jr c, jr_09c_50b8                             ; $5077: $38 $3f

    jr nc, jr_09c_50ba                            ; $5079: $30 $3f

    jr z, jr_09c_50bb                             ; $507b: $28 $3e

    ld [hl], b                                    ; $507d: $70
    nop                                           ; $507e: $00
    ld a, a                                       ; $507f: $7f
    ld h, b                                       ; $5080: $60
    ld a, [hl]                                    ; $5081: $7e
    ld d, b                                       ; $5082: $50
    ld a, l                                       ; $5083: $7d
    ld h, b                                       ; $5084: $60
    ld a, [hl]                                    ; $5085: $7e
    nop                                           ; $5086: $00
    ld e, h                                       ; $5087: $5c
    ld [hl], l                                    ; $5088: $75
    ld sp, $7502                                  ; $5089: $31 $02 $75
    or l                                          ; $508c: $b5
    ld bc, $01d1                                  ; $508d: $01 $d1 $01
    push de                                       ; $5090: $d5
    add hl, bc                                    ; $5091: $09
    ld b, b                                       ; $5092: $40
    ld a, l                                       ; $5093: $7d
    nop                                           ; $5094: $00
    ldh [$fe], a                                  ; $5095: $e0 $fe
    ret nz                                        ; $5097: $c0

    rst $38                                       ; $5098: $ff
    ldh [$fe], a                                  ; $5099: $e0 $fe
    call nz, $03fb                                ; $509b: $c4 $fb $03
    ldh [rIE], a                                  ; $509e: $e0 $ff
    call nz, $e2fb                                ; $50a0: $c4 $fb $e2
    db $fd                                        ; $50a3: $fd
    jr jr_09c_50ce                                ; $50a4: $18 $28

    inc h                                         ; $50a6: $24
    ld bc, $5980                                  ; $50a7: $01 $80 $59
    ld a, [bc]                                    ; $50aa: $0a
    ld a, [$fec1]                                 ; $50ab: $fa $c1 $fe
    ld [c], a                                     ; $50ae: $e2
    db $fd                                        ; $50af: $fd
    pop hl                                        ; $50b0: $e1
    cp $62                                        ; $50b1: $fe $62
    ldh a, [$e6]                                  ; $50b3: $f0 $e6
    dec b                                         ; $50b5: $05
    ld b, d                                       ; $50b6: $42
    nop                                           ; $50b7: $00

jr_09c_50b8:
    ld a, a                                       ; $50b8: $7f
    ld [hl], b                                    ; $50b9: $70

jr_09c_50ba:
    ld a, a                                       ; $50ba: $7f

jr_09c_50bb:
    inc d                                         ; $50bb: $14
    ld [$0000], sp                                ; $50bc: $08 $00 $00
    push de                                       ; $50bf: $d5
    add b                                         ; $50c0: $80
    ld l, [hl]                                    ; $50c1: $6e
    ld b, b                                       ; $50c2: $40
    or a                                          ; $50c3: $b7
    and b                                         ; $50c4: $a0
    ld e, d                                       ; $50c5: $5a
    ret nc                                        ; $50c6: $d0

    ld [$682d], sp                                ; $50c7: $08 $2d $68
    sub [hl]                                      ; $50ca: $96
    ld a, b                                       ; $50cb: $78
    inc d                                         ; $50cc: $14
    nop                                           ; $50cd: $00

jr_09c_50ce:
    jr c, jr_09c_510f                             ; $50ce: $38 $3f

    inc a                                         ; $50d0: $3c
    ld [bc], a                                    ; $50d1: $02
    ccf                                           ; $50d2: $3f
    ld a, [hl-]                                   ; $50d3: $3a
    ccf                                           ; $50d4: $3f
    inc e                                         ; $50d5: $1c
    rra                                           ; $50d6: $1f
    ld e, $e6                                     ; $50d7: $1e $e6
    rlca                                          ; $50d9: $07
    inc [hl]                                      ; $50da: $34
    nop                                           ; $50db: $00
    rr d                                          ; $50dc: $cb $1a
    push hl                                       ; $50de: $e5
    dec l                                         ; $50df: $2d
    jp nc, $e916                                  ; $50e0: $d2 $16 $e9

    dec bc                                        ; $50e3: $0b
    ld bc, $05f4                                  ; $50e4: $01 $f4 $05
    ld a, [$fd02]                                 ; $50e7: $fa $02 $fd
    ld bc, $70fe                                  ; $50ea: $01 $fe $70
    stop                                          ; $50ed: $10 $00
    db $dd                                        ; $50ef: $dd
    add b                                         ; $50f0: $80
    ld a, e                                       ; $50f1: $7b
    ld b, b                                       ; $50f2: $40
    cp l                                          ; $50f3: $bd
    xor b                                         ; $50f4: $a8
    ld d, a                                       ; $50f5: $57
    call nc, $2b1c                                ; $50f6: $d4 $1c $2b
    ld a, d                                       ; $50f9: $7a
    add l                                         ; $50fa: $85
    xor l                                         ; $50fb: $ad
    ld [bc], a                                    ; $50fc: $02
    ld [$7009], sp                                ; $50fd: $08 $09 $70
    add hl, sp                                    ; $5100: $39
    ld d, l                                       ; $5101: $55
    nop                                           ; $5102: $00
    ld h, b                                       ; $5103: $60
    cp [hl]                                       ; $5104: $be
    db $10                                        ; $5105: $10
    ld h, b                                       ; $5106: $60
    adc h                                         ; $5107: $8c
    add hl, de                                    ; $5108: $19
    ld [hl], l                                    ; $5109: $75
    nop                                           ; $510a: $00
    xor [hl]                                      ; $510b: $ae
    nop                                           ; $510c: $00
    push af                                       ; $510d: $f5
    ld a, [hl+]                                   ; $510e: $2a

jr_09c_510f:
    add b                                         ; $510f: $80
    ld a, a                                       ; $5110: $7f
    sbc h                                         ; $5111: $9c
    ld b, c                                       ; $5112: $41
    xor $69                                       ; $5113: $ee $69
    ld [bc], a                                    ; $5115: $02
    ld a, [$6010]                                 ; $5116: $fa $10 $60
    xor a                                         ; $5119: $af
    adc d                                         ; $511a: $8a
    cp h                                          ; $511b: $bc
    ld hl, $00ab                                  ; $511c: $21 $ab $00
    ld e, l                                       ; $511f: $5d
    adc c                                         ; $5120: $89
    ld [bc], a                                    ; $5121: $02
    ld e, a                                       ; $5122: $5f
    ld [hl], b                                    ; $5123: $70
    nop                                           ; $5124: $00
    ld e, [hl]                                    ; $5125: $5e
    ld c, $00                                     ; $5126: $0e $00
    xor l                                         ; $5128: $ad
    nop                                           ; $5129: $00
    ld d, [hl]                                    ; $512a: $56
    and l                                         ; $512b: $a5
    ld [de], a                                    ; $512c: $12
    ret c                                         ; $512d: $d8

    add hl, bc                                    ; $512e: $09
    inc b                                         ; $512f: $04
    ld e, b                                       ; $5130: $58
    ld e, a                                       ; $5131: $5f
    add b                                         ; $5132: $80
    inc b                                         ; $5133: $04

jr_09c_5134:
    jr nz, @+$79                                  ; $5134: $20 $77

    ld bc, $02ae                                  ; $5136: $01 $ae $02
    db $dd                                        ; $5139: $dd
    dec b                                         ; $513a: $05
    cp d                                          ; $513b: $ba
    ld [$740b], sp                                ; $513c: $08 $0b $74
    ld d, $e9                                     ; $513f: $16 $e9
    cp l                                          ; $5141: $bd
    ld [bc], a                                    ; $5142: $02
    cp e                                          ; $5143: $bb
    nop                                           ; $5144: $00
    ld d, a                                       ; $5145: $57
    and b                                         ; $5146: $a0
    stop                                          ; $5147: $10 $00
    ld e, l                                       ; $5149: $5d
    cp [hl]                                       ; $514a: $be
    add hl, bc                                    ; $514b: $09
    ld e, [hl]                                    ; $514c: $5e
    and c                                         ; $514d: $a1
    rrca                                          ; $514e: $0f
    rrca                                          ; $514f: $0f
    rlca                                          ; $5150: $07
    ret c                                         ; $5151: $d8

    ld bc, $3400                                  ; $5152: $01 $00 $34
    ld a, [bc]                                    ; $5155: $0a
    ld bc, $0001                                  ; $5156: $01 $01 $00
    ld a, h                                       ; $5159: $7c
    inc bc                                        ; $515a: $03
    rst $38                                       ; $515b: $ff
    ld b, b                                       ; $515c: $40
    rst $38                                       ; $515d: $ff
    inc b                                         ; $515e: $04
    and b                                         ; $515f: $a0
    rst $38                                       ; $5160: $ff
    ret nc                                        ; $5161: $d0

    rst $38                                       ; $5162: $ff
    add sp, -$24                                  ; $5163: $e8 $dc
    dec b                                         ; $5165: $05
    ld a, [$21ff]                                 ; $5166: $fa $ff $21
    db $fd                                        ; $5169: $fd
    rst $38                                       ; $516a: $ff
    cp [hl]                                       ; $516b: $be
    add hl, bc                                    ; $516c: $09
    cpl                                           ; $516d: $2f
    ret nc                                        ; $516e: $d0

    dec d                                         ; $516f: $15
    ld [$10dc], a                                 ; $5170: $ea $dc $10
    add e                                         ; $5173: $83
    ld d, l                                       ; $5174: $55
    ld b, $7e                                     ; $5175: $06 $7e
    ld a, a                                       ; $5177: $7f
    ccf                                           ; $5178: $3f
    ccf                                           ; $5179: $3f
    rra                                           ; $517a: $1f
    ld hl, sp+$00                                 ; $517b: $f8 $00
    inc [hl]                                      ; $517d: $34
    ld [$308a], sp                                ; $517e: $08 $8a $30
    jr jr_09c_51d3                                ; $5181: $18 $50

    rst $38                                       ; $5183: $ff
    xor b                                         ; $5184: $a8
    xor b                                         ; $5185: $a8
    rlca                                          ; $5186: $07
    jp c, Jump_000_07fc                           ; $5187: $da $fc $07

    db $fd                                        ; $518a: $fd
    add c                                         ; $518b: $81
    sub b                                         ; $518c: $90
    rlca                                          ; $518d: $07
    ccf                                           ; $518e: $3f
    ccf                                           ; $518f: $3f
    rrca                                          ; $5190: $0f
    rrca                                          ; $5191: $0f
    inc bc                                        ; $5192: $03
    inc bc                                        ; $5193: $03
    add $3a                                       ; $5194: $c6 $3a
    inc bc                                        ; $5196: $03
    ld d, h                                       ; $5197: $54
    xor e                                         ; $5198: $ab
    ld [$fd15], a                                 ; $5199: $ea $15 $fd
    ld [bc], a                                    ; $519c: $02
    rst $08                                       ; $519d: $cf
    dec c                                         ; $519e: $0d
    ld c, b                                       ; $519f: $48
    jr jr_09c_5134                                ; $51a0: $18 $92

    db $fc                                        ; $51a2: $fc
    ld a, [bc]                                    ; $51a3: $0a
    ld d, l                                       ; $51a4: $55
    xor d                                         ; $51a5: $aa
    rst $18                                       ; $51a6: $df
    dec l                                         ; $51a7: $2d
    ld a, a                                       ; $51a8: $7f
    add b                                         ; $51a9: $80
    db $10                                        ; $51aa: $10
    ld e, b                                       ; $51ab: $58
    cp $54                                        ; $51ac: $fe $54
    ld bc, $2df8                                  ; $51ae: $01 $f8 $2d
    xor b                                         ; $51b1: $a8
    ld h, b                                       ; $51b2: $60
    rlca                                          ; $51b3: $07
    ld [$07e6], a                                 ; $51b4: $ea $e6 $07
    xor d                                         ; $51b7: $aa
    ld d, l                                       ; $51b8: $55
    call c, Call_000_0236                         ; $51b9: $dc $36 $02
    ld c, $16                                     ; $51bc: $0e $16
    ld b, b                                       ; $51be: $40
    dec h                                         ; $51bf: $25
    inc de                                        ; $51c0: $13
    adc [hl]                                      ; $51c1: $8e
    rra                                           ; $51c2: $1f
    ld l, b                                       ; $51c3: $68
    ld [$0707], sp                                ; $51c4: $08 $07 $07
    adc c                                         ; $51c7: $89
    inc l                                         ; $51c8: $2c
    dec bc                                        ; $51c9: $0b
    rst $38                                       ; $51ca: $ff
    rst $38                                       ; $51cb: $ff
    ld l, l                                       ; $51cc: $6d
    ld e, b                                       ; $51cd: $58
    inc sp                                        ; $51ce: $33
    ccf                                           ; $51cf: $3f
    ccf                                           ; $51d0: $3f
    ld a, $6b                                     ; $51d1: $3e $6b

jr_09c_51d3:
    ret                                           ; $51d3: $c9


    adc d                                         ; $51d4: $8a
    jr jr_09c_5215                                ; $51d5: $18 $3e

    dec sp                                        ; $51d7: $3b
    ld c, [hl]                                    ; $51d8: $4e
    pop af                                        ; $51d9: $f1
    ld e, [hl]                                    ; $51da: $5e
    ld e, e                                       ; $51db: $5b
    ld bc, $4e01                                  ; $51dc: $01 $01 $4e
    ld e, e                                       ; $51df: $5b
    inc h                                         ; $51e0: $24
    ld b, b                                       ; $51e1: $40
    rst $38                                       ; $51e2: $ff
    ld c, [hl]                                    ; $51e3: $4e
    ld e, e                                       ; $51e4: $5b
    nop                                           ; $51e5: $00
    ld d, l                                       ; $51e6: $55
    ld c, [hl]                                    ; $51e7: $4e
    ld e, e                                       ; $51e8: $5b
    inc d                                         ; $51e9: $14
    rra                                           ; $51ea: $1f
    cp [hl]                                       ; $51eb: $be
    ld c, [hl]                                    ; $51ec: $4e
    ld h, e                                       ; $51ed: $63
    ld [hl], l                                    ; $51ee: $75
    or b                                          ; $51ef: $b0
    ld e, e                                       ; $51f0: $5b
    sub h                                         ; $51f1: $94
    jr jr_09c_5242                                ; $51f2: $18 $4e

    dec sp                                        ; $51f4: $3b
    db $10                                        ; $51f5: $10
    add hl, bc                                    ; $51f6: $09
    ld c, [hl]                                    ; $51f7: $4e
    ld c, e                                       ; $51f8: $4b
    xor a                                         ; $51f9: $af
    ld [hl], d                                    ; $51fa: $72
    ld d, b                                       ; $51fb: $50
    ld c, [hl]                                    ; $51fc: $4e
    ld e, e                                       ; $51fd: $5b
    ld d, $09                                     ; $51fe: $16 $09
    ld c, [hl]                                    ; $5200: $4e
    ld c, e                                       ; $5201: $4b
    dec b                                         ; $5202: $05
    ld a, d                                       ; $5203: $7a
    rst $18                                       ; $5204: $df
    ld e, [hl]                                    ; $5205: $5e
    ld a, a                                       ; $5206: $7f
    ld c, c                                       ; $5207: $49
    add b                                         ; $5208: $80
    ld e, [hl]                                    ; $5209: $5e
    ld e, e                                       ; $520a: $5b
    xor b                                         ; $520b: $a8
    ld d, a                                       ; $520c: $57
    ld e, [hl]                                    ; $520d: $5e
    ld e, e                                       ; $520e: $5b
    nop                                           ; $520f: $00
    ld d, l                                       ; $5210: $55
    ld e, [hl]                                    ; $5211: $5e
    ld e, e                                       ; $5212: $5b
    inc h                                         ; $5213: $24
    nop                                           ; $5214: $00

jr_09c_5215:
    push de                                       ; $5215: $d5
    ld e, [hl]                                    ; $5216: $5e
    ld e, e                                       ; $5217: $5b
    nop                                           ; $5218: $00
    ld d, l                                       ; $5219: $55
    ld e, [hl]                                    ; $521a: $5e
    ld e, e                                       ; $521b: $5b
    nop                                           ; $521c: $00
    push de                                       ; $521d: $d5
    sbc c                                         ; $521e: $99
    ld e, [hl]                                    ; $521f: $5e
    ld e, e                                       ; $5220: $5b
    nop                                           ; $5221: $00
    ld d, l                                       ; $5222: $55
    ld e, [hl]                                    ; $5223: $5e
    ld h, e                                       ; $5224: $63
    ld c, [hl]                                    ; $5225: $4e
    ld h, e                                       ; $5226: $63
    nop                                           ; $5227: $00
    ld e, [hl]                                    ; $5228: $5e
    ld c, [hl]                                    ; $5229: $4e
    ld e, e                                       ; $522a: $5b
    inc h                                         ; $522b: $24
    ld b, b                                       ; $522c: $40
    ld a, l                                       ; $522d: $7d
    ld c, [hl]                                    ; $522e: $4e
    ld e, e                                       ; $522f: $5b
    nop                                           ; $5230: $00
    push de                                       ; $5231: $d5
    ld c, [hl]                                    ; $5232: $4e
    ld e, e                                       ; $5233: $5b
    pop bc                                        ; $5234: $c1
    cp $92                                        ; $5235: $fe $92
    ld c, [hl]                                    ; $5237: $4e
    ld e, e                                       ; $5238: $5b
    nop                                           ; $5239: $00
    push de                                       ; $523a: $d5
    ld c, [hl]                                    ; $523b: $4e
    ld e, e                                       ; $523c: $5b
    ld a, b                                       ; $523d: $78
    ld a, a                                       ; $523e: $7f
    ld c, [hl]                                    ; $523f: $4e
    ld e, e                                       ; $5240: $5b
    inc [hl]                                      ; $5241: $34

jr_09c_5242:
    ld l, c                                       ; $5242: $69
    res 1, d                                      ; $5243: $cb $8a
    ld b, h                                       ; $5245: $44
    and d                                         ; $5246: $a2
    dec bc                                        ; $5247: $0b
    ld [hl], l                                    ; $5248: $75
    ld e, [hl]                                    ; $5249: $5e
    ld e, e                                       ; $524a: $5b
    rrca                                          ; $524b: $0f
    rrca                                          ; $524c: $0f
    ld e, [hl]                                    ; $524d: $5e
    ld e, e                                       ; $524e: $5b
    ld h, [hl]                                    ; $524f: $66
    add b                                         ; $5250: $80
    rst $38                                       ; $5251: $ff
    dec c                                         ; $5252: $0d
    ld e, [hl]                                    ; $5253: $5e
    ld b, e                                       ; $5254: $43
    cp a                                          ; $5255: $bf
    ld b, b                                       ; $5256: $40
    ld e, [hl]                                    ; $5257: $5e
    ei                                            ; $5258: $fb
    ld e, [hl]                                    ; $5259: $5e
    ld c, e                                       ; $525a: $4b
    ld d, h                                       ; $525b: $54
    ld a, h                                       ; $525c: $7c
    xor e                                         ; $525d: $ab
    ld e, [hl]                                    ; $525e: $5e
    ld h, e                                       ; $525f: $63
    ld c, a                                       ; $5260: $4f
    ld c, $5e                                     ; $5261: $0e $5e
    ld c, e                                       ; $5263: $4b
    db $10                                        ; $5264: $10
    jr @+$60                                      ; $5265: $18 $5e

    inc sp                                        ; $5267: $33
    ld a, [hl+]                                   ; $5268: $2a
    push de                                       ; $5269: $d5
    reti                                          ; $526a: $d9


    ld e, [hl]                                    ; $526b: $5e
    di                                            ; $526c: $f3
    ld c, d                                       ; $526d: $4a
    dec a                                         ; $526e: $3d
    ld d, a                                       ; $526f: $57
    sbc d                                         ; $5270: $9a
    inc hl                                        ; $5271: $23
    ld l, [hl]                                    ; $5272: $6e
    ld b, e                                       ; $5273: $43
    inc l                                         ; $5274: $2c
    db $d3                                        ; $5275: $d3
    ld l, [hl]                                    ; $5276: $6e
    ld e, e                                       ; $5277: $5b
    inc h                                         ; $5278: $24
    db $fd                                        ; $5279: $fd
    ld [bc], a                                    ; $527a: $02
    ld l, [hl]                                    ; $527b: $6e
    ld e, e                                       ; $527c: $5b
    nop                                           ; $527d: $00
    nop                                           ; $527e: $00
    ld l, [hl]                                    ; $527f: $6e
    ld e, e                                       ; $5280: $5b
    ld a, [hl]                                    ; $5281: $7e
    ld a, a                                       ; $5282: $7f
    or d                                          ; $5283: $b2
    ld l, [hl]                                    ; $5284: $6e
    ld e, e                                       ; $5285: $5b
    add b                                         ; $5286: $80
    ld d, b                                       ; $5287: $50
    inc bc                                        ; $5288: $03
    ld l, [hl]                                    ; $5289: $6e
    ld c, e                                       ; $528a: $4b
    nop                                           ; $528b: $00
    nop                                           ; $528c: $00
    ld l, [hl]                                    ; $528d: $6e
    db $db                                        ; $528e: $db
    nop                                           ; $528f: $00
    ld c, e                                       ; $5290: $4b
    nop                                           ; $5291: $00
    ld l, [hl]                                    ; $5292: $6e
    db $db                                        ; $5293: $db
    xor d                                         ; $5294: $aa
    ld d, l                                       ; $5295: $55
    ld l, [hl]                                    ; $5296: $6e
    ld e, e                                       ; $5297: $5b
    ld d, l                                       ; $5298: $55
    ld b, b                                       ; $5299: $40
    dec b                                         ; $529a: $05
    ld l, [hl]                                    ; $529b: $6e
    ld c, e                                       ; $529c: $4b
    ld a, $fb                                     ; $529d: $3e $fb
    rst $38                                       ; $529f: $ff
    ld l, [hl]                                    ; $52a0: $6e
    ld e, e                                       ; $52a1: $5b
    ld e, d                                       ; $52a2: $5a
    dec sp                                        ; $52a3: $3b
    jp c, $6e2a                                   ; $52a4: $da $2a $6e

    ld l, e                                       ; $52a7: $6b
    call c, $ed0b                                 ; $52a8: $dc $0b $ed
    nop                                           ; $52ab: $00
    ld [de], a                                    ; $52ac: $12
    db $db                                        ; $52ad: $db

jr_09c_52ae:
    inc h                                         ; $52ae: $24
    rst $38                                       ; $52af: $ff
    nop                                           ; $52b0: $00
    xor $11                                       ; $52b1: $ee $11
    cp l                                          ; $52b3: $bd
    ld bc, $f842                                  ; $52b4: $01 $42 $f8
    rlca                                          ; $52b7: $07
    ei                                            ; $52b8: $fb
    inc b                                         ; $52b9: $04
    cp a                                          ; $52ba: $bf
    ld b, b                                       ; $52bb: $40
    inc l                                         ; $52bc: $2c
    ld e, $09                                     ; $52bd: $1e $09
    rst $30                                       ; $52bf: $f7
    ld [$02fd], sp                                ; $52c0: $08 $fd $02
    ld h, d                                       ; $52c3: $62
    ld [$14eb], sp                                ; $52c4: $08 $eb $14
    inc a                                         ; $52c7: $3c
    ld l, $00                                     ; $52c8: $2e $00
    ccf                                           ; $52ca: $3f
    ret nz                                        ; $52cb: $c0

    rst $18                                       ; $52cc: $df
    jr nz, jr_09c_52ae                            ; $52cd: $20 $df

    jr nz, jr_09c_5350                            ; $52cf: $20 $7f

    ret nz                                        ; $52d1: $c0

    rlca                                          ; $52d2: $07
    rst $18                                       ; $52d3: $df
    and b                                         ; $52d4: $a0
    cp a                                          ; $52d5: $bf
    ld b, b                                       ; $52d6: $40
    ld a, a                                       ; $52d7: $7f
    rlc c                                         ; $52d8: $cb $01
    ld d, h                                       ; $52da: $54
    ld l, $34                                     ; $52db: $2e $34
    ld [$f700], sp                                ; $52dd: $08 $00 $f7
    ld [$847b], sp                                ; $52e0: $08 $7b $84
    rst $28                                       ; $52e3: $ef
    db $10                                        ; $52e4: $10
    db $dd                                        ; $52e5: $dd
    ld [hl+], a                                   ; $52e6: $22
    nop                                           ; $52e7: $00
    inc de                                        ; $52e8: $13
    sbc d                                         ; $52e9: $9a
    dec c                                         ; $52ea: $0d
    ld b, d                                       ; $52eb: $42
    rst $38                                       ; $52ec: $ff
    ld bc, $8360                                  ; $52ed: $01 $60 $83
    rst $38                                       ; $52f0: $ff
    pop bc                                        ; $52f1: $c1
    cp a                                          ; $52f2: $bf
    inc b                                         ; $52f3: $04
    ld c, b                                       ; $52f4: $48
    nop                                           ; $52f5: $00
    nop                                           ; $52f6: $00
    rst $38                                       ; $52f7: $ff
    nop                                           ; $52f8: $00
    rst $38                                       ; $52f9: $ff
    ld [$42f7], sp                                ; $52fa: $08 $f7 $42
    cp l                                          ; $52fd: $bd
    inc h                                         ; $52fe: $24
    nop                                           ; $52ff: $00
    db $db                                        ; $5300: $db
    ld d, b                                       ; $5301: $50
    xor a                                         ; $5302: $af
    xor d                                         ; $5303: $aa
    ld d, l                                       ; $5304: $55
    push de                                       ; $5305: $d5
    ld a, [hl+]                                   ; $5306: $2a
    ld l, a                                       ; $5307: $6f
    nop                                           ; $5308: $00
    sub b                                         ; $5309: $90
    cp $01                                        ; $530a: $fe $01
    ei                                            ; $530c: $fb
    inc b                                         ; $530d: $04
    rst $38                                       ; $530e: $ff
    nop                                           ; $530f: $00
    rst $28                                       ; $5310: $ef
    nop                                           ; $5311: $00
    nop                                           ; $5312: $00
    ei                                            ; $5313: $fb
    nop                                           ; $5314: $00
    or [hl]                                       ; $5315: $b6
    nop                                           ; $5316: $00
    ld a, l                                       ; $5317: $7d
    nop                                           ; $5318: $00
    ld [hl], d                                    ; $5319: $72
    ld bc, $a800                                  ; $531a: $01 $00 $a8
    nop                                           ; $531d: $00
    ld de, $a400                                  ; $531e: $11 $00 $a4
    nop                                           ; $5321: $00
    ld bc, $0038                                  ; $5322: $01 $38 $00
    stop                                          ; $5325: $10 $00
    ld [bc], a                                    ; $5327: $02

jr_09c_5328:
    nop                                           ; $5328: $00
    ld b, l                                       ; $5329: $45
    nop                                           ; $532a: $00
    adc [hl]                                      ; $532b: $8e
    nop                                           ; $532c: $00
    nop                                           ; $532d: $00
    ld e, a                                       ; $532e: $5f
    nop                                           ; $532f: $00
    xor l                                         ; $5330: $ad
    nop                                           ; $5331: $00
    db $db                                        ; $5332: $db
    inc b                                         ; $5333: $04
    ldh [$a0], a                                  ; $5334: $e0 $a0
    add b                                         ; $5336: $80
    ld [bc], a                                    ; $5337: $02
    db $10                                        ; $5338: $10
    or l                                          ; $5339: $b5
    ldh [$a0], a                                  ; $533a: $e0 $a0
    pop hl                                        ; $533c: $e1
    or l                                          ; $533d: $b5
    db $e3                                        ; $533e: $e3
    xor e                                         ; $533f: $ab
    jr nz, jr_09c_5328                            ; $5340: $20 $e6

    or a                                          ; $5342: $b7
    add hl, hl                                    ; $5343: $29
    ld [$0e0c], sp                                ; $5344: $08 $0c $0e
    ld e, $5f                                     ; $5347: $1e $5f
    ld sp, $3b00                                  ; $5349: $31 $00 $3b
    ldh a, [$f9]                                  ; $534c: $f0 $f9
    ld d, b                                       ; $534e: $50
    pop af                                        ; $534f: $f1

jr_09c_5350:
    ld a, h                                       ; $5350: $7c
    ld a, l                                       ; $5351: $7d
    inc bc                                        ; $5352: $03
    nop                                           ; $5353: $00
    inc bc                                        ; $5354: $03
    rlca                                          ; $5355: $07
    inc b                                         ; $5356: $04
    dec c                                         ; $5357: $0d
    ld a, [bc]                                    ; $5358: $0a
    ld c, $5f                                     ; $5359: $0e $5f
    dec b                                         ; $535b: $05
    nop                                           ; $535c: $00
    add [hl]                                      ; $535d: $86
    add e                                         ; $535e: $83
    rst $10                                       ; $535f: $d7
    ld b, b                                       ; $5360: $40
    ld [$d5c1], a                                 ; $5361: $ea $c1 $d5
    rlca                                          ; $5364: $07
    nop                                           ; $5365: $00
    dec b                                         ; $5366: $05
    add a                                         ; $5367: $87
    add l                                         ; $5368: $85
    rst $00                                       ; $5369: $c7
    ld b, l                                       ; $536a: $45
    rst $20                                       ; $536b: $e7
    dec [hl]                                      ; $536c: $35
    rst $30                                       ; $536d: $f7
    nop                                           ; $536e: $00
    dec d                                         ; $536f: $15
    rst $38                                       ; $5370: $ff
    adc l                                         ; $5371: $8d
    cp a                                          ; $5372: $bf
    push bc                                       ; $5373: $c5
    ccf                                           ; $5374: $3f
    push bc                                       ; $5375: $c5
    and $00                                       ; $5376: $e6 $00
    xor a                                         ; $5378: $af
    rst $20                                       ; $5379: $e7
    or a                                          ; $537a: $b7
    rst $20                                       ; $537b: $e7
    xor a                                         ; $537c: $af
    db $e3                                        ; $537d: $e3
    or a                                          ; $537e: $b7
    pop hl                                        ; $537f: $e1
    ld [$e2ab], sp                                ; $5380: $08 $ab $e2
    or a                                          ; $5383: $b7
    db $e3                                        ; $5384: $e3
    inc b                                         ; $5385: $04
    nop                                           ; $5386: $00
    ld [hl], e                                    ; $5387: $73
    ld a, a                                       ; $5388: $7f
    ld l, [hl]                                    ; $5389: $6e
    nop                                           ; $538a: $00
    ld [hl], e                                    ; $538b: $73
    db $dd                                        ; $538c: $dd
    db $e3                                        ; $538d: $e3
    daa                                           ; $538e: $27
    ret c                                         ; $538f: $d8

    ld a, e                                       ; $5390: $7b
    sbc h                                         ; $5391: $9c
    cp l                                          ; $5392: $bd
    nop                                           ; $5393: $00
    jp nz, $8cf7                                  ; $5394: $c2 $f7 $8c

    cp a                                          ; $5397: $bf
    ldh [$a1], a                                  ; $5398: $e0 $a1
    db $eb                                        ; $539a: $eb
    db $d3                                        ; $539b: $d3
    nop                                           ; $539c: $00
    rst $30                                       ; $539d: $f7
    call c, $efff                                 ; $539e: $dc $ff $ef
    cp $fe                                        ; $53a1: $fe $fe
    db $fd                                        ; $53a3: $fd
    db $fc                                        ; $53a4: $fc
    nop                                           ; $53a5: $00
    rst $38                                       ; $53a6: $ff
    ld [hl], a                                    ; $53a7: $77
    cp $df                                        ; $53a8: $fe $df
    ld [hl], a                                    ; $53aa: $77
    ccf                                           ; $53ab: $3f
    call Call_000_00ff                            ; $53ac: $cd $ff $00
    db $fd                                        ; $53af: $fd
    rst $18                                       ; $53b0: $df
    ld a, l                                       ; $53b1: $7d
    cpl                                           ; $53b2: $2f
    db $ed                                        ; $53b3: $ed
    rst $28                                       ; $53b4: $ef
    ld l, l                                       ; $53b5: $6d
    ld c, a                                       ; $53b6: $4f
    nop                                           ; $53b7: $00
    call $cdcf                                    ; $53b8: $cd $cf $cd
    adc a                                         ; $53bb: $8f
    sbc l                                         ; $53bc: $9d
    db $e3                                        ; $53bd: $e3
    cp a                                          ; $53be: $bf
    pop hl                                        ; $53bf: $e1
    nop                                           ; $53c0: $00
    or l                                          ; $53c1: $b5
    rst $20                                       ; $53c2: $e7
    cp a                                          ; $53c3: $bf
    rst $28                                       ; $53c4: $ef
    cp a                                          ; $53c5: $bf
    xor $bb                                       ; $53c6: $ee $bb
    db $eb                                        ; $53c8: $eb
    nop                                           ; $53c9: $00
    cp a                                          ; $53ca: $bf
    db $fd                                        ; $53cb: $fd
    cp h                                          ; $53cc: $bc
    push af                                       ; $53cd: $f5
    or c                                          ; $53ce: $b1
    rst $38                                       ; $53cf: $ff
    ret nz                                        ; $53d0: $c0

    rst $18                                       ; $53d1: $df
    nop                                           ; $53d2: $00
    rst $20                                       ; $53d3: $e7
    ld l, a                                       ; $53d4: $6f
    ei                                            ; $53d5: $fb
    sbc a                                         ; $53d6: $9f
    db $fc                                        ; $53d7: $fc
    ld a, $fb                                     ; $53d8: $3e $fb
    ld a, e                                       ; $53da: $7b
    nop                                           ; $53db: $00
    rst $38                                       ; $53dc: $ff
    ld e, l                                       ; $53dd: $5d
    ld h, d                                       ; $53de: $62
    rst $28                                       ; $53df: $ef
    ldh a, [$6f]                                  ; $53e0: $f0 $6f
    rst $30                                       ; $53e2: $f7
    ld a, e                                       ; $53e3: $7b
    nop                                           ; $53e4: $00
    rst $28                                       ; $53e5: $ef
    ld sp, hl                                     ; $53e6: $f9
    rst $28                                       ; $53e7: $ef

jr_09c_53e8:
    ld e, c                                       ; $53e8: $59
    cp a                                          ; $53e9: $bf
    pop de                                        ; $53ea: $d1
    ccf                                           ; $53eb: $3f
    pop de                                        ; $53ec: $d1
    nop                                           ; $53ed: $00
    rst $38                                       ; $53ee: $ff
    pop af                                        ; $53ef: $f1
    ccf                                           ; $53f0: $3f
    push de                                       ; $53f1: $d5
    ccf                                           ; $53f2: $3f
    rrca                                          ; $53f3: $0f
    dec e                                         ; $53f4: $1d

jr_09c_53f5:
    rra                                           ; $53f5: $1f
    ld [bc], a                                    ; $53f6: $02
    ld a, l                                       ; $53f7: $7d
    ld [hl], a                                    ; $53f8: $77
    ld a, l                                       ; $53f9: $7d
    rst $00                                       ; $53fa: $c7
    db $fd                                        ; $53fb: $fd
    add a                                         ; $53fc: $87
    ld [bc], a                                    ; $53fd: $02
    jr nz, jr_09c_53e8                            ; $53fe: $20 $e8

    add c                                         ; $5400: $81
    ret nz                                        ; $5401: $c0

    nop                                           ; $5402: $00
    ldh a, [$b0]                                  ; $5403: $f0 $b0
    ldh a, [$bb]                                  ; $5405: $f0 $bb
    rst $38                                       ; $5407: $ff
    cp a                                          ; $5408: $bf
    ld [bc], a                                    ; $5409: $02
    nop                                           ; $540a: $00
    nop                                           ; $540b: $00
    add b                                         ; $540c: $80
    rst $38                                       ; $540d: $ff
    rst $38                                       ; $540e: $ff
    rra                                           ; $540f: $1f
    db $10                                        ; $5410: $10
    dec d                                         ; $5411: $15
    ld e, e                                       ; $5412: $5b
    ld a, [bc]                                    ; $5413: $0a
    inc b                                         ; $5414: $04
    cp a                                          ; $5415: $bf
    ld a, h                                       ; $5416: $7c
    rst $38                                       ; $5417: $ff
    ld [c], a                                     ; $5418: $e2
    db $fd                                        ; $5419: $fd
    ld a, [hl-]                                   ; $541a: $3a
    ld bc, $ff00                                  ; $541b: $01 $00 $ff
    nop                                           ; $541e: $00
    rst $38                                       ; $541f: $ff
    db $d3                                        ; $5420: $d3
    ccf                                           ; $5421: $3f
    db $f4                                        ; $5422: $f4
    ccf                                           ; $5423: $3f
    and d                                         ; $5424: $a2
    rst $38                                       ; $5425: $ff
    or $10                                        ; $5426: $f6 $10
    rst $38                                       ; $5428: $ff
    and a                                         ; $5429: $a7
    ld a, a                                       ; $542a: $7f
    db $10                                        ; $542b: $10
    jr jr_09c_53f5                                ; $542c: $18 $c7

    db $fd                                        ; $542e: $fd
    rst $00                                       ; $542f: $c7
    db $fd                                        ; $5430: $fd
    nop                                           ; $5431: $00
    ld b, a                                       ; $5432: $47
    db $fd                                        ; $5433: $fd
    ld h, a                                       ; $5434: $67

jr_09c_5435:
    db $fd                                        ; $5435: $fd
    scf                                           ; $5436: $37
    db $fd                                        ; $5437: $fd
    rst $38                                       ; $5438: $ff
    db $fd                                        ; $5439: $fd
    jr nc, @+$01                                  ; $543a: $30 $ff

    ld bc, $0823                                  ; $543c: $01 $23 $08
    ld b, d                                       ; $543f: $42
    add hl, bc                                    ; $5440: $09
    db $10                                        ; $5441: $10
    rst $28                                       ; $5442: $ef
    ld b, d                                       ; $5443: $42
    cp l                                          ; $5444: $bd
    ld bc, $ea15                                  ; $5445: $01 $15 $ea
    ld a, [hl+]                                   ; $5448: $2a
    push de                                       ; $5449: $d5
    ld e, l                                       ; $544a: $5d
    and d                                         ; $544b: $a2
    ld bc, $0015                                  ; $544c: $01 $15 $00
    ld [bc], a                                    ; $544f: $02
    ld b, c                                       ; $5450: $41
    cp a                                          ; $5451: $bf
    dec b                                         ; $5452: $05
    ei                                            ; $5453: $fb
    inc bc                                        ; $5454: $03
    db $fd                                        ; $5455: $fd
    ld d, b                                       ; $5456: $50
    add hl, bc                                    ; $5457: $09
    ld d, h                                       ; $5458: $54
    nop                                           ; $5459: $00
    xor e                                         ; $545a: $ab
    ld bc, $0a81                                  ; $545b: $01 $81 $0a
    adc d                                         ; $545e: $8a
    inc bc                                        ; $545f: $03
    add e                                         ; $5460: $83
    ld hl, $a100                                  ; $5461: $21 $00 $a1
    ld [bc], a                                    ; $5464: $02
    add d                                         ; $5465: $82
    nop                                           ; $5466: $00
    add b                                         ; $5467: $80
    ld l, b                                       ; $5468: $68
    add sp, $40                                   ; $5469: $e8 $40
    nop                                           ; $546b: $00
    ret nz                                        ; $546c: $c0

    dec sp                                        ; $546d: $3b
    call nz, $916e                                ; $546e: $c4 $6e $91
    ld a, a                                       ; $5471: $7f
    add b                                         ; $5472: $80
    ld [hl], a                                    ; $5473: $77
    nop                                           ; $5474: $00
    add b                                         ; $5475: $80
    ld l, a                                       ; $5476: $6f
    add b                                         ; $5477: $80
    ld d, l                                       ; $5478: $55
    add b                                         ; $5479: $80
    db $eb                                        ; $547a: $eb
    nop                                           ; $547b: $00
    ld b, l                                       ; $547c: $45
    nop                                           ; $547d: $00
    add b                                         ; $547e: $80
    cp [hl]                                       ; $547f: $be
    ld b, c                                       ; $5480: $41
    ld a, [$f605]                                 ; $5481: $fa $05 $f6
    add hl, bc                                    ; $5484: $09
    cp $00                                        ; $5485: $fe $00
    ld bc, $01bc                                  ; $5487: $01 $bc $01
    halt                                          ; $548a: $76
    ld bc, $01ae                                  ; $548b: $01 $ae $01
    ld e, [hl]                                    ; $548e: $5e
    nop                                           ; $548f: $00
    ld bc, $8000                                  ; $5490: $01 $00 $80
    jr nz, jr_09c_5435                            ; $5493: $20 $a0

    ld [hl-], a                                   ; $5495: $32
    or d                                          ; $5496: $b2
    nop                                           ; $5497: $00
    nop                                           ; $5498: $00
    add b                                         ; $5499: $80
    ld a, [hl+]                                   ; $549a: $2a
    xor d                                         ; $549b: $aa
    dec b                                         ; $549c: $05
    add l                                         ; $549d: $85
    ld b, $86                                     ; $549e: $06 $86
    ld b, b                                       ; $54a0: $40
    nop                                           ; $54a1: $00
    ret nz                                        ; $54a2: $c0

    and d                                         ; $54a3: $a2
    nop                                           ; $54a4: $00
    ld b, h                                       ; $54a5: $44
    add b                                         ; $54a6: $80
    sub b                                         ; $54a7: $90
    nop                                           ; $54a8: $00
    and b                                         ; $54a9: $a0
    jr nz, jr_09c_54ac                            ; $54aa: $20 $00

jr_09c_54ac:
    add b                                         ; $54ac: $80
    ld [bc], a                                    ; $54ad: $02
    jr nz, jr_09c_54db                            ; $54ae: $20 $2b

    nop                                           ; $54b0: $00
    ld d, $01                                     ; $54b1: $16 $01
    dec bc                                        ; $54b3: $0b
    inc b                                         ; $54b4: $04
    nop                                           ; $54b5: $00
    inc d                                         ; $54b6: $14
    ld bc, $0001                                  ; $54b7: $01 $01 $00
    ld [bc], a                                    ; $54ba: $02
    jr @+$62                                      ; $54bb: $18 $60

    ldh [rP1], a                                  ; $54bd: $e0 $00
    ld l, b                                       ; $54bf: $68
    add sp, $0d                                   ; $54c0: $e8 $0d
    adc l                                         ; $54c2: $8d
    db $10                                        ; $54c3: $10
    sub b                                         ; $54c4: $90
    inc b                                         ; $54c5: $04
    add h                                         ; $54c6: $84
    nop                                           ; $54c7: $00
    inc c                                         ; $54c8: $0c
    adc h                                         ; $54c9: $8c
    nop                                           ; $54ca: $00
    add b                                         ; $54cb: $80
    db $10                                        ; $54cc: $10
    sub b                                         ; $54cd: $90
    add b                                         ; $54ce: $80
    nop                                           ; $54cf: $00
    nop                                           ; $54d0: $00
    add c                                         ; $54d1: $81
    nop                                           ; $54d2: $00
    adc d                                         ; $54d3: $8a
    nop                                           ; $54d4: $00
    sub l                                         ; $54d5: $95
    nop                                           ; $54d6: $00
    ld a, [hl+]                                   ; $54d7: $2a
    add b                                         ; $54d8: $80
    ld [bc], a                                    ; $54d9: $02
    db $dd                                        ; $54da: $dd

jr_09c_54db:
    nop                                           ; $54db: $00
    halt                                          ; $54dc: $76
    add b                                         ; $54dd: $80
    ld a, e                                       ; $54de: $7b
    add b                                         ; $54df: $80
    jr z, jr_09c_54ea                             ; $54e0: $28 $08

    inc hl                                        ; $54e2: $23
    nop                                           ; $54e3: $00
    nop                                           ; $54e4: $00
    ld c, c                                       ; $54e5: $49
    nop                                           ; $54e6: $00
    and c                                         ; $54e7: $a1
    nop                                           ; $54e8: $00
    ld d, l                                       ; $54e9: $55

jr_09c_54ea:
    nop                                           ; $54ea: $00
    xor e                                         ; $54eb: $ab
    sbc b                                         ; $54ec: $98
    db $ed                                        ; $54ed: $ed
    ld bc, $a020                                  ; $54ee: $01 $20 $a0
    adc d                                         ; $54f1: $8a
    ld [$084f], sp                                ; $54f2: $08 $4f $08
    rlca                                          ; $54f5: $07
    add b                                         ; $54f6: $80
    rlca                                          ; $54f7: $07
    ld b, b                                       ; $54f8: $40
    ld hl, sp-$02                                 ; $54f9: $f8 $fe
    ld bc, $1300                                  ; $54fb: $01 $00 $13
    inc de                                        ; $54fe: $13
    ld [$2108], sp                                ; $54ff: $08 $08 $21
    nop                                           ; $5502: $00
    ld [hl+], a                                   ; $5503: $22
    ld b, $01                                     ; $5504: $06 $01
    jr c, jr_09c_553c                             ; $5506: $38 $34

    ld [hl], h                                    ; $5508: $74
    ld h, h                                       ; $5509: $64
    ld h, b                                       ; $550a: $60
    nop                                           ; $550b: $00
    ld b, b                                       ; $550c: $40
    ld b, b                                       ; $550d: $40
    ld b, b                                       ; $550e: $40
    ld bc, $8201                                  ; $550f: $01 $01 $82
    add d                                         ; $5512: $82
    db $ec                                        ; $5513: $ec
    nop                                           ; $5514: $00
    ld [de], a                                    ; $5515: $12
    inc hl                                        ; $5516: $23
    ld h, h                                       ; $5517: $64
    call nz, $b0a4                                ; $5518: $c4 $a4 $b0
    inc d                                         ; $551b: $14
    or $10                                        ; $551c: $f6 $10
    sub d                                         ; $551e: $92
    ld a, [bc]                                    ; $551f: $0a
    ld a, [bc]                                    ; $5520: $0a
    inc de                                        ; $5521: $13
    nop                                           ; $5522: $00
    ld b, b                                       ; $5523: $40
    add c                                         ; $5524: $81
    add c                                         ; $5525: $81
    add b                                         ; $5526: $80
    ld [bc], a                                    ; $5527: $02
    nop                                           ; $5528: $00
    ld d, h                                       ; $5529: $54
    inc d                                         ; $552a: $14
    jr z, @+$0a                                   ; $552b: $28 $08

    ld d, b                                       ; $552d: $50
    jr nz, jr_09c_5530                            ; $552e: $20 $00

jr_09c_5530:
    nop                                           ; $5530: $00
    nop                                           ; $5531: $00
    nop                                           ; $5532: $00
    ld bc, $1210                                  ; $5533: $01 $10 $12
    nop                                           ; $5536: $00
    ld de, $1908                                  ; $5537: $11 $08 $19
    nop                                           ; $553a: $00
    db $10                                        ; $553b: $10

jr_09c_553c:
    add hl, bc                                    ; $553c: $09
    nop                                           ; $553d: $00
    jr jr_09c_5551                                ; $553e: $18 $11

    inc hl                                        ; $5540: $23
    inc bc                                        ; $5541: $03
    stop                                          ; $5542: $10 $00
    ld c, b                                       ; $5544: $48
    ret z                                         ; $5545: $c8

    add h                                         ; $5546: $84
    call z, $0488                                 ; $5547: $cc $88 $04
    ld c, b                                       ; $554a: $48
    ld c, b                                       ; $554b: $48
    nop                                           ; $554c: $00
    inc b                                         ; $554d: $04

jr_09c_554e:
    ld c, l                                       ; $554e: $4d
    dec b                                         ; $554f: $05
    ld c, [hl]                                    ; $5550: $4e

jr_09c_5551:
    ld d, $2a                                     ; $5551: $16 $2a
    ld [hl+], a                                   ; $5553: $22
    ld sp, $4900                                  ; $5554: $31 $00 $49
    ld bc, $f081                                  ; $5557: $01 $81 $f0
    ld [hl], b                                    ; $555a: $70
    halt                                          ; $555b: $76
    jr c, jr_09c_5599                             ; $555c: $38 $3b

    jr nz, jr_09c_5566                            ; $555e: $20 $06

    add h                                         ; $5560: $84
    ld bc, $3d00                                  ; $5561: $01 $00 $3d
    dec [hl]                                      ; $5564: $35
    dec b                                         ; $5565: $05

jr_09c_5566:
    dec c                                         ; $5566: $0d
    ld b, $00                                     ; $5567: $06 $00
    ld [bc], a                                    ; $5569: $02
    inc d                                         ; $556a: $14
    db $10                                        ; $556b: $10
    inc h                                         ; $556c: $24
    jr nz, @-$7a                                  ; $556d: $20 $84

    ld b, b                                       ; $556f: $40
    ld h, h                                       ; $5570: $64
    nop                                           ; $5571: $00
    jr z, jr_09c_554e                             ; $5572: $28 $da

    ld d, [hl]                                    ; $5574: $56
    ld [bc], a                                    ; $5575: $02
    ld a, [bc]                                    ; $5576: $0a
    ld b, h                                       ; $5577: $44
    ld b, h                                       ; $5578: $44
    jr jr_09c_557b                                ; $5579: $18 $00

jr_09c_557b:
    jr @+$0c                                      ; $557b: $18 $0a

    ld a, [bc]                                    ; $557d: $0a
    ld d, h                                       ; $557e: $54
    ld d, [hl]                                    ; $557f: $56
    ld h, $25                                     ; $5580: $26 $25
    inc bc                                        ; $5582: $03
    nop                                           ; $5583: $00
    nop                                           ; $5584: $00
    ld [$2009], sp                                ; $5585: $08 $09 $20
    ld [$8898], sp                                ; $5588: $08 $98 $88
    adc d                                         ; $558b: $8a
    nop                                           ; $558c: $00
    add d                                         ; $558d: $82
    ld d, $10                                     ; $558e: $16 $10
    add d                                         ; $5590: $82
    add e                                         ; $5591: $83
    ld d, d                                       ; $5592: $52
    ld d, d                                       ; $5593: $52
    inc b                                         ; $5594: $04
    ld [bc], a                                    ; $5595: $02
    inc b                                         ; $5596: $04
    jr nz, jr_09c_55b9                            ; $5597: $20 $20

jr_09c_5599:
    sub d                                         ; $5599: $92
    sub e                                         ; $559a: $93
    add c                                         ; $559b: $81
    or h                                          ; $559c: $b4
    nop                                           ; $559d: $00
    ld e, b                                       ; $559e: $58
    nop                                           ; $559f: $00
    ld e, b                                       ; $55a0: $58
    rst $38                                       ; $55a1: $ff
    nop                                           ; $55a2: $00
    ld d, a                                       ; $55a3: $57
    ld d, a                                       ; $55a4: $57
    ld de, $4011                                  ; $55a5: $11 $11 $40
    nop                                           ; $55a8: $00
    ld b, b                                       ; $55a9: $40

Jump_09c_55aa:
    jr jr_09c_55bc                                ; $55aa: $18 $10

    jr nc, @+$22                                  ; $55ac: $30 $20

    inc h                                         ; $55ae: $24
    inc b                                         ; $55af: $04
    ret nz                                        ; $55b0: $c0

    nop                                           ; $55b1: $00
    nop                                           ; $55b2: $00
    add hl, bc                                    ; $55b3: $09
    adc c                                         ; $55b4: $89
    ld l, b                                       ; $55b5: $68
    ld l, b                                       ; $55b6: $68
    sbc a                                         ; $55b7: $9f
    sbc a                                         ; $55b8: $9f

jr_09c_55b9:
    db $fc                                        ; $55b9: $fc
    nop                                           ; $55ba: $00
    db $fc                                        ; $55bb: $fc

jr_09c_55bc:
    ld d, $16                                     ; $55bc: $16 $16
    inc [hl]                                      ; $55be: $34
    inc [hl]                                      ; $55bf: $34
    add h                                         ; $55c0: $84
    add h                                         ; $55c1: $84
    add d                                         ; $55c2: $82
    nop                                           ; $55c3: $00
    add c                                         ; $55c4: $81
    add hl, bc                                    ; $55c5: $09
    ld a, [bc]                                    ; $55c6: $0a
    add [hl]                                      ; $55c7: $86
    add h                                         ; $55c8: $84
    ld [$2808], sp                                ; $55c9: $08 $08 $28
    db $10                                        ; $55cc: $10
    jr z, jr_09c_55e1                             ; $55cd: $28 $12

    ld [de], a                                    ; $55cf: $12
    sbc e                                         ; $55d0: $9b
    ld a, [de]                                    ; $55d1: $1a
    sub e                                         ; $55d2: $93
    sub e                                         ; $55d3: $93
    ldh [rP1], a                                  ; $55d4: $e0 $00
    nop                                           ; $55d6: $00
    ldh [$1f], a                                  ; $55d7: $e0 $1f
    nop                                           ; $55d9: $00
    rst $38                                       ; $55da: $ff
    ld c, c                                       ; $55db: $49
    ld c, c                                       ; $55dc: $49
    ld b, e                                       ; $55dd: $43
    ld b, e                                       ; $55de: $43
    ld [de], a                                    ; $55df: $12
    rst $10                                       ; $55e0: $d7

jr_09c_55e1:
    rst $10                                       ; $55e1: $d7
    ld b, h                                       ; $55e2: $44
    ld bc, $0800                                  ; $55e3: $01 $00 $08
    ld [$0adc], sp                                ; $55e6: $08 $dc $0a
    rst $18                                       ; $55e9: $df
    nop                                           ; $55ea: $00
    rst $18                                       ; $55eb: $df
    cp b                                          ; $55ec: $b8
    cp b                                          ; $55ed: $b8
    jr nz, jr_09c_5610                            ; $55ee: $20 $20

    nop                                           ; $55f0: $00
    nop                                           ; $55f1: $00
    add h                                         ; $55f2: $84
    ld [de], a                                    ; $55f3: $12
    add h                                         ; $55f4: $84
    ld a, [bc]                                    ; $55f5: $0a
    ld a, [bc]                                    ; $55f6: $0a
    db $ec                                        ; $55f7: $ec
    ld a, [bc]                                    ; $55f8: $0a
    ld c, b                                       ; $55f9: $48
    ld c, b                                       ; $55fa: $48
    ret nc                                        ; $55fb: $d0

    ld [$6060], sp                                ; $55fc: $08 $60 $60
    ld h, b                                       ; $55ff: $60
    inc d                                         ; $5600: $14
    ld [$0afc], sp                                ; $5601: $08 $fc $0a
    db $fd                                        ; $5604: $fd
    ld [bc], a                                    ; $5605: $02
    jp nc, $a12d                                  ; $5606: $d2 $2d $a1

    nop                                           ; $5609: $00
    ld e, [hl]                                    ; $560a: $5e
    ld [$22f7], sp                                ; $560b: $08 $f7 $22
    rst $38                                       ; $560e: $ff
    ld b, l                                       ; $560f: $45

jr_09c_5610:
    rst $38                                       ; $5610: $ff
    xor $80                                       ; $5611: $ee $80
    dec l                                         ; $5613: $2d
    inc bc                                        ; $5614: $03
    db $f4                                        ; $5615: $f4
    ld [$05bb], sp                                ; $5616: $08 $bb $05
    db $ed                                        ; $5619: $ed
    ld [bc], a                                    ; $561a: $02
    or [hl]                                       ; $561b: $b6
    nop                                           ; $561c: $00
    ld bc, $80eb                                  ; $561d: $01 $eb $80
    ld a, a                                       ; $5620: $7f
    ret nz                                        ; $5621: $c0

    rra                                           ; $5622: $1f
    ldh [$9b], a                                  ; $5623: $e0 $9b
    nop                                           ; $5625: $00
    ld [hl], b                                    ; $5626: $70
    rlca                                          ; $5627: $07
    ld hl, sp+$43                                 ; $5628: $f8 $43
    cp h                                          ; $562a: $bc
    dec c                                         ; $562b: $0d
    ld a, [$001f]                                 ; $562c: $fa $1f $00
    pop hl                                        ; $562f: $e1
    ld e, e                                       ; $5630: $5b
    add b                                         ; $5631: $80
    cp a                                          ; $5632: $bf
    ld b, b                                       ; $5633: $40
    jp c, $af20                                   ; $5634: $da $20 $af

    nop                                           ; $5637: $00
    db $10                                        ; $5638: $10
    rst $30                                       ; $5639: $f7
    ld [$04ab], sp                                ; $563a: $08 $ab $04
    push af                                       ; $563d: $f5
    ld [bc], a                                    ; $563e: $02
    rst $18                                       ; $563f: $df
    nop                                           ; $5640: $00
    ld bc, $80fd                                  ; $5641: $01 $fd $80
    cp h                                          ; $5644: $bc
    ld b, e                                       ; $5645: $43
    db $d3                                        ; $5646: $d3
    inc l                                         ; $5647: $2c
    xor $00                                       ; $5648: $ee $00
    stop                                          ; $564a: $10 $00
    rst $38                                       ; $564c: $ff
    push af                                       ; $564d: $f5
    ld a, [bc]                                    ; $564e: $0a
    ld b, e                                       ; $564f: $43
    cp h                                          ; $5650: $bc
    nop                                           ; $5651: $00
    ld a, [bc]                                    ; $5652: $0a
    rst $38                                       ; $5653: $ff
    ld [hl+], a                                   ; $5654: $22
    rst $38                                       ; $5655: $ff
    ld b, h                                       ; $5656: $44
    ld b, b                                       ; $5657: $40
    nop                                           ; $5658: $00
    rst $18                                       ; $5659: $df
    ld c, [hl]                                    ; $565a: $4e
    inc bc                                        ; $565b: $03
    jp c, Jump_000_2500                           ; $565c: $da $00 $25

    or l                                          ; $565f: $b5
    ld c, d                                       ; $5660: $4a
    ld c, b                                       ; $5661: $48
    or a                                          ; $5662: $b7
    ld [bc], a                                    ; $5663: $02
    rst $38                                       ; $5664: $ff
    ld d, l                                       ; $5665: $55

jr_09c_5666:
    sub b                                         ; $5666: $90
    ld d, b                                       ; $5667: $50
    stop                                          ; $5668: $10 $00
    rst $38                                       ; $566a: $ff
    ld h, b                                       ; $566b: $60
    ld e, b                                       ; $566c: $58
    adc b                                         ; $566d: $88
    ld l, a                                       ; $566e: $6f
    add h                                         ; $566f: $84
    add a                                         ; $5670: $87
    nop                                           ; $5671: $00
    ld [bc], a                                    ; $5672: $02
    inc bc                                        ; $5673: $03
    and b                                         ; $5674: $a0
    ld bc, $8044                                  ; $5675: $01 $44 $80
    xor d                                         ; $5678: $aa
    ld b, b                                       ; $5679: $40
    nop                                           ; $567a: $00
    ld d, b                                       ; $567b: $50
    jr nz, jr_09c_5666                            ; $567c: $20 $e8

    db $10                                        ; $567e: $10
    ld c, a                                       ; $567f: $4f
    cp b                                          ; $5680: $b8
    add a                                         ; $5681: $87
    ld a, h                                       ; $5682: $7c
    nop                                           ; $5683: $00
    inc hl                                        ; $5684: $23
    sbc $05                                       ; $5685: $de $05
    ei                                            ; $5687: $fb
    add b                                         ; $5688: $80
    rst $38                                       ; $5689: $ff
    ld b, [hl]                                    ; $568a: $46
    ld a, e                                       ; $568b: $7b
    ld bc, $3c03                                  ; $568c: $01 $03 $3c
    rra                                           ; $568f: $1f
    db $10                                        ; $5690: $10
    cp h                                          ; $5691: $bc
    ld [$607a], sp                                ; $5692: $08 $7a $60
    nop                                           ; $5695: $00
    nop                                           ; $5696: $00
    xor $01                                       ; $5697: $ee $01
    rst $30                                       ; $5699: $f7
    add b                                         ; $569a: $80
    cp l                                          ; $569b: $bd
    ld b, e                                       ; $569c: $43
    rst $30                                       ; $569d: $f7
    inc l                                         ; $569e: $2c
    nop                                           ; $569f: $00
    ld l, a                                       ; $56a0: $6f
    db $10                                        ; $56a1: $10
    ld b, a                                       ; $56a2: $47
    ld [$0407], sp                                ; $56a3: $08 $07 $04
    ld d, c                                       ; $56a6: $51
    ld [bc], a                                    ; $56a7: $02
    nop                                           ; $56a8: $00
    add c                                         ; $56a9: $81
    ld bc, $80c4                                  ; $56aa: $01 $c4 $80
    and d                                         ; $56ad: $a2
    ld b, b                                       ; $56ae: $40
    ldh a, [rNR41]                                ; $56af: $f0 $20
    nop                                           ; $56b1: $00
    ld l, c                                       ; $56b2: $69
    db $10                                        ; $56b3: $10
    ld a, h                                       ; $56b4: $7c
    add hl, bc                                    ; $56b5: $09
    ld hl, sp+$06                                 ; $56b6: $f8 $06
    ld e, d                                       ; $56b8: $5a
    dec b                                         ; $56b9: $05
    nop                                           ; $56ba: $00
    push af                                       ; $56bb: $f5
    dec bc                                        ; $56bc: $0b
    ld h, d                                       ; $56bd: $62
    adc a                                         ; $56be: $8f
    db $f4                                        ; $56bf: $f4
    ld c, a                                       ; $56c0: $4f
    ld a, [$012f]                                 ; $56c1: $fa $2f $01
    rst $30                                       ; $56c4: $f7
    inc e                                         ; $56c5: $1c
    and [hl]                                      ; $56c6: $a6
    jr z, jr_09c_572c                             ; $56c7: $28 $63

    inc h                                         ; $56c9: $24
    ld d, l                                       ; $56ca: $55
    cp c                                          ; $56cb: $b9
    ld [bc], a                                    ; $56cc: $02
    nop                                           ; $56cd: $00
    ld [$0cf7], sp                                ; $56ce: $08 $f7 $0c
    db $e3                                        ; $56d1: $e3
    ld [de], a                                    ; $56d2: $12
    db $ed                                        ; $56d3: $ed
    adc d                                         ; $56d4: $8a
    ld [hl], c                                    ; $56d5: $71
    nop                                           ; $56d6: $00
    push af                                       ; $56d7: $f5
    ld [$04df], sp                                ; $56d8: $08 $df $04
    ld a, a                                       ; $56db: $7f
    ld [bc], a                                    ; $56dc: $02
    ld e, [hl]                                    ; $56dd: $5e
    pop bc                                        ; $56de: $c1
    nop                                           ; $56df: $00
    dec sp                                        ; $56e0: $3b
    ldh [$57], a                                  ; $56e1: $e0 $57
    or b                                          ; $56e3: $b0
    ld l, [hl]                                    ; $56e4: $6e
    sbc c                                         ; $56e5: $99
    or $0f                                        ; $56e6: $f6 $0f
    ld b, b                                       ; $56e8: $40
    db $f4                                        ; $56e9: $f4
    ld d, b                                       ; $56ea: $50
    nop                                           ; $56eb: $00
    db $dd                                        ; $56ec: $dd
    ld [bc], a                                    ; $56ed: $02
    rst $38                                       ; $56ee: $ff
    ld bc, $805f                                  ; $56ef: $01 $5f $80
    nop                                           ; $56f2: $00
    cp e                                          ; $56f3: $bb
    ld b, b                                       ; $56f4: $40
    rra                                           ; $56f5: $1f
    ldh [$5d], a                                  ; $56f6: $e0 $5d
    or b                                          ; $56f8: $b0
    cp c                                          ; $56f9: $b9
    ld e, $00                                     ; $56fa: $1e $00
    halt                                          ; $56fc: $76
    dec a                                         ; $56fd: $3d
    ld hl, sp+$3e                                 ; $56fe: $f8 $3e
    or $3d                                        ; $5700: $f6 $3d
    ld a, d                                       ; $5702: $7a
    cp a                                          ; $5703: $bf
    nop                                           ; $5704: $00
    cp h                                          ; $5705: $bc
    ld a, a                                       ; $5706: $7f
    ld a, d                                       ; $5707: $7a
    ccf                                           ; $5708: $3f
    db $fd                                        ; $5709: $fd
    ccf                                           ; $570a: $3f
    nop                                           ; $570b: $00
    cp a                                          ; $570c: $bf
    nop                                           ; $570d: $00
    jp nz, $8d3d                                  ; $570e: $c2 $3d $8d

    ld [hl], d                                    ; $5711: $72
    ld a, [bc]                                    ; $5712: $0a
    push hl                                       ; $5713: $e5
    inc d                                         ; $5714: $14
    db $e3                                        ; $5715: $e3
    add b                                         ; $5716: $80
    jp z, Jump_09c_501a                           ; $5717: $ca $1a $50

    xor a                                         ; $571a: $af
    cp e                                          ; $571b: $bb
    ld b, [hl]                                    ; $571c: $46
    ld e, b                                       ; $571d: $58
    and a                                         ; $571e: $a7
    ld a, [hl+]                                   ; $571f: $2a
    nop                                           ; $5720: $00
    ld d, a                                       ; $5721: $57
    add hl, de                                    ; $5722: $19
    and [hl]                                      ; $5723: $a6
    dec sp                                        ; $5724: $3b
    add $11                                       ; $5725: $c6 $11
    xor $30                                       ; $5727: $ee $30
    nop                                           ; $5729: $00

jr_09c_572a:
    ret                                           ; $572a: $c9


    rlca                                          ; $572b: $07

jr_09c_572c:
    ld hl, sp+$07                                 ; $572c: $f8 $07
    db $fc                                        ; $572e: $fc
    dec hl                                        ; $572f: $2b
    sub $01                                       ; $5730: $d6 $01
    add b                                         ; $5732: $80
    dec de                                        ; $5733: $1b
    inc bc                                        ; $5734: $03
    push de                                       ; $5735: $d5
    ld l, d                                       ; $5736: $6a
    ldh [$3f], a                                  ; $5737: $e0 $3f
    pop hl                                        ; $5739: $e1
    ld e, $6f                                     ; $573a: $1e $6f
    ld c, b                                       ; $573c: $48
    sub b                                         ; $573d: $90
    ldh [$58], a                                  ; $573e: $e0 $58
    ld a, e                                       ; $5740: $7b
    add h                                         ; $5741: $84
    nop                                           ; $5742: $00
    ld e, c                                       ; $5743: $59
    cp a                                          ; $5744: $bf
    ld a, a                                       ; $5745: $7f
    ret nz                                        ; $5746: $c0

    ld b, b                                       ; $5747: $40
    ccf                                           ; $5748: $3f
    nop                                           ; $5749: $00
    ld c, c                                       ; $574a: $49
    cp h                                          ; $574b: $bc
    ld [$04de], sp                                ; $574c: $08 $de $04
    cp l                                          ; $574f: $bd
    ld [bc], a                                    ; $5750: $02
    nop                                           ; $5751: $00
    or $01                                        ; $5752: $f6 $01
    ld e, b                                       ; $5754: $58
    add a                                         ; $5755: $87
    ld [hl], b                                    ; $5756: $70
    ld e, a                                       ; $5757: $5f
    jr nz, @+$41                                  ; $5758: $20 $3f

    nop                                           ; $575a: $00
    inc b                                         ; $575b: $04
    dec de                                        ; $575c: $1b
    ld bc, $000e                                  ; $575d: $01 $0e $00
    rlca                                          ; $5760: $07
    ld [hl+], a                                   ; $5761: $22
    inc bc                                        ; $5762: $03
    nop                                           ; $5763: $00
    add c                                         ; $5764: $81
    ld bc, $80d4                                  ; $5765: $01 $d4 $80
    jr nz, jr_09c_572a                            ; $5768: $20 $c0

    ld sp, $10e0                                  ; $576a: $31 $e0 $10
    adc b                                         ; $576d: $88
    ld [hl], b                                    ; $576e: $70
    ld b, $60                                     ; $576f: $06 $60
    ld bc, $fe01                                  ; $5771: $01 $01 $fe
    jr z, @-$27                                   ; $5774: $28 $d7

    nop                                           ; $5776: $00
    add h                                         ; $5777: $84
    ei                                            ; $5778: $fb
    nop                                           ; $5779: $00
    ld a, a                                       ; $577a: $7f
    nop                                           ; $577b: $00
    ccf                                           ; $577c: $3f
    ld d, d                                       ; $577d: $52
    dec e                                         ; $577e: $1d
    nop                                           ; $577f: $00
    ld b, d                                       ; $5780: $42
    dec c                                         ; $5781: $0d
    inc h                                         ; $5782: $24
    rlca                                          ; $5783: $07
    ld b, $03                                     ; $5784: $06 $03
    sub e                                         ; $5786: $93
    dec c                                         ; $5787: $0d
    nop                                           ; $5788: $00
    ld c, a                                       ; $5789: $4f
    or b                                          ; $578a: $b0
    cp l                                          ; $578b: $bd
    ld b, b                                       ; $578c: $40
    ld e, a                                       ; $578d: $5f
    jr nz, @+$01                                  ; $578e: $20 $ff

    stop                                          ; $5790: $10 $00
    inc b                                         ; $5792: $04
    ld hl, sp+$26                                 ; $5793: $f8 $26
    call c, $fe01                                 ; $5795: $dc $01 $fe
    ld [$00f7], sp                                ; $5798: $08 $f7 $00
    db $10                                        ; $579b: $10
    rst $28                                       ; $579c: $ef
    pop bc                                        ; $579d: $c1
    ld a, [hl]                                    ; $579e: $7e
    ld h, b                                       ; $579f: $60
    ccf                                           ; $57a0: $3f
    ldh [$1f], a                                  ; $57a1: $e0 $1f
    nop                                           ; $57a3: $00
    sbc b                                         ; $57a4: $98
    rrca                                          ; $57a5: $0f
    ld c, h                                       ; $57a6: $4c
    scf                                           ; $57a7: $37
    or h                                          ; $57a8: $b4
    jp $01ff                                      ; $57a9: $c3 $ff $01


    db $10                                        ; $57ac: $10
    ld a, a                                       ; $57ad: $7f
    add b                                         ; $57ae: $80
    dec l                                         ; $57af: $2d
    and b                                         ; $57b0: $a0
    ld bc, $b05e                                  ; $57b1: $01 $5e $b0
    halt                                          ; $57b4: $76
    ld [$fb00], sp                                ; $57b5: $08 $00 $fb
    inc b                                         ; $57b8: $04
    ld [hl], a                                    ; $57b9: $77
    ld [bc], a                                    ; $57ba: $02
    ldh a, [$0d]                                  ; $57bb: $f0 $0d
    ret nz                                        ; $57bd: $c0

    or b                                          ; $57be: $b0
    nop                                           ; $57bf: $00
    inc h                                         ; $57c0: $24
    ret nz                                        ; $57c1: $c0

    ld de, $0ae0                                  ; $57c2: $11 $e0 $0a
    ldh a, [$f1]                                  ; $57c5: $f0 $f1
    ld c, $04                                     ; $57c7: $0e $04
    call c, $fc07                                 ; $57c9: $dc $07 $fc
    inc bc                                        ; $57cc: $03
    sub $20                                       ; $57cd: $d6 $20
    nop                                           ; $57cf: $00
    ld a, l                                       ; $57d0: $7d
    ld b, b                                       ; $57d1: $40
    ld [$201b], sp                                ; $57d2: $08 $1b $20
    adc a                                         ; $57d5: $8f
    db $10                                        ; $57d6: $10
    ret nz                                        ; $57d7: $c0

    ld [$fa05], sp                                ; $57d8: $08 $05 $fa
    ld a, $00                                     ; $57db: $3e $00
    pop hl                                        ; $57dd: $e1
    ld a, e                                       ; $57de: $7b
    add b                                         ; $57df: $80
    or a                                          ; $57e0: $b7
    ld b, b                                       ; $57e1: $40
    sbc $20                                       ; $57e2: $de $20
    ld a, a                                       ; $57e4: $7f
    ld a, [hl]                                    ; $57e5: $7e
    db $10                                        ; $57e6: $10
    push de                                       ; $57e7: $d5
    dec bc                                        ; $57e8: $0b
    ldh a, [rOBP1]                                ; $57e9: $f0 $49
    push hl                                       ; $57eb: $e5
    dec bc                                        ; $57ec: $0b
    ret nz                                        ; $57ed: $c0

    ld c, c                                       ; $57ee: $49
    push af                                       ; $57ef: $f5
    dec bc                                        ; $57f0: $0b
    ret nz                                        ; $57f1: $c0

    ld c, c                                       ; $57f2: $49
    ld a, l                                       ; $57f3: $7d
    ld [$fa08], sp                                ; $57f4: $08 $08 $fa
    inc b                                         ; $57f7: $04
    ld e, l                                       ; $57f8: $5d
    ret nz                                        ; $57f9: $c0

    nop                                           ; $57fa: $00
    ld l, l                                       ; $57fb: $6d
    add b                                         ; $57fc: $80
    rst $30                                       ; $57fd: $f7
    nop                                           ; $57fe: $00
    ld b, b                                       ; $57ff: $40
    cp $20                                        ; $5800: $fe $20
    rst $28                                       ; $5802: $ef
    db $10                                        ; $5803: $10
    ld b, [hl]                                    ; $5804: $46
    ld [$0003], sp                                ; $5805: $08 $03 $00
    inc b                                         ; $5808: $04
    inc de                                        ; $5809: $13
    ld [bc], a                                    ; $580a: $02
    add b                                         ; $580b: $80
    ld bc, $8052                                  ; $580c: $01 $52 $80
    db $e4                                        ; $580f: $e4
    inc b                                         ; $5810: $04
    ld b, b                                       ; $5811: $40
    ret nc                                        ; $5812: $d0

    jr nz, jr_09c_581e                            ; $5813: $20 $09

    ret nc                                        ; $5815: $d0

    ld [hl], b                                    ; $5816: $70
    add hl, de                                    ; $5817: $19
    sbc $01                                       ; $5818: $de $01
    nop                                           ; $581a: $00
    ei                                            ; $581b: $fb
    add b                                         ; $581c: $80

jr_09c_581d:
    scf                                           ; $581d: $37

jr_09c_581e:
    ld b, b                                       ; $581e: $40
    ld e, $21                                     ; $581f: $1e $21
    ld c, d                                       ; $5821: $4a
    rla                                           ; $5822: $17
    dec b                                         ; $5823: $05
    or l                                          ; $5824: $b5
    dec bc                                        ; $5825: $0b
    ld e, [hl]                                    ; $5826: $5e
    inc b                                         ; $5827: $04
    db $fd                                        ; $5828: $fd
    ret nz                                        ; $5829: $c0

    ld bc, $707f                                  ; $582a: $01 $7f $70
    ld bc, $7e01                                  ; $582d: $01 $01 $7e
    jr nz, jr_09c_581d                            ; $5830: $20 $eb

    db $10                                        ; $5832: $10
    ld d, l                                       ; $5833: $55
    xor d                                         ; $5834: $aa
    ld a, [hl+]                                   ; $5835: $2a
    ld [$a303], a                                 ; $5836: $ea $03 $a3
    cp a                                          ; $5839: $bf
    dec de                                        ; $583a: $1b
    ld a, a                                       ; $583b: $7f
    push bc                                       ; $583c: $c5
    inc bc                                        ; $583d: $03
    ld d, l                                       ; $583e: $55
    xor d                                         ; $583f: $aa
    xor d                                         ; $5840: $aa
    adc d                                         ; $5841: $8a
    inc bc                                        ; $5842: $03
    ld c, a                                       ; $5843: $4f
    dec e                                         ; $5844: $1d
    sub b                                         ; $5845: $90
    ld a, l                                       ; $5846: $7d
    inc bc                                        ; $5847: $03
    nop                                           ; $5848: $00
    or $b0                                        ; $5849: $f6 $b0
    ld bc, $02ff                                  ; $584b: $01 $ff $02
    db $db                                        ; $584e: $db
    ld bc, $ef05                                  ; $584f: $01 $05 $ef
    add b                                         ; $5852: $80
    cp l                                          ; $5853: $bd
    ld b, b                                       ; $5854: $40
    rst $10                                       ; $5855: $d7
    ld h, b                                       ; $5856: $60
    nop                                           ; $5857: $00
    cp $60                                        ; $5858: $fe $60
    ld [bc], a                                    ; $585a: $02
    ld b, h                                       ; $585b: $44
    db $fd                                        ; $585c: $fd
    ret nc                                        ; $585d: $d0

    db $10                                        ; $585e: $10
    ld h, b                                       ; $585f: $60
    ret nz                                        ; $5860: $c0

    dec [hl]                                      ; $5861: $35
    jr nz, jr_09c_5865                            ; $5862: $20 $01

    inc c                                         ; $5864: $0c

jr_09c_5865:
    ld hl, sp+$00                                 ; $5865: $f8 $00
    ld [hl+], a                                   ; $5867: $22
    call c, $fe03                                 ; $5868: $dc $03 $fe
    ld hl, $08df                                  ; $586b: $21 $df $08
    rst $30                                       ; $586e: $f7
    nop                                           ; $586f: $00
    jp nz, $687d                                  ; $5870: $c2 $7d $68

    scf                                           ; $5873: $37
    ld a, [c]                                     ; $5874: $f2
    dec e                                         ; $5875: $1d
    ldh a, [rIF]                                  ; $5876: $f0 $0f
    dec b                                         ; $5878: $05
    cp b                                          ; $5879: $b8
    rlca                                          ; $587a: $07
    xor $03                                       ; $587b: $ee $03
    db $db                                        ; $587d: $db
    jr nz, jr_09c_5882                            ; $587e: $20 $02

    ld a, $e0                                     ; $5880: $3e $e0

jr_09c_5882:
    nop                                           ; $5882: $00
    nop                                           ; $5883: $00
    sbc a                                         ; $5884: $9f
    db $10                                        ; $5885: $10
    sbc $3f                                       ; $5886: $de $3f
    rst $38                                       ; $5888: $ff
    rra                                           ; $5889: $1f
    xor a                                         ; $588a: $af
    rra                                           ; $588b: $1f
    nop                                           ; $588c: $00
    rst $30                                       ; $588d: $f7
    rrca                                          ; $588e: $0f
    ld b, e                                       ; $588f: $43
    cp a                                          ; $5890: $bf
    ret                                           ; $5891: $c9


    ld [hl], a                                    ; $5892: $77
    ldh [$3f], a                                  ; $5893: $e0 $3f
    nop                                           ; $5895: $00
    ld [hl], d                                    ; $5896: $72
    dec e                                         ; $5897: $1d
    and c                                         ; $5898: $a1
    cp $55                                        ; $5899: $fe $55
    db $fc                                        ; $589b: $fc
    xor [hl]                                      ; $589c: $ae
    ei                                            ; $589d: $fb
    add b                                         ; $589e: $80
    cp l                                          ; $589f: $bd
    inc c                                         ; $58a0: $0c
    rst $38                                       ; $58a1: $ff
    rst $38                                       ; $58a2: $ff
    ld a, a                                       ; $58a3: $7f
    rst $38                                       ; $58a4: $ff
    add e                                         ; $58a5: $83
    db $fc                                        ; $58a6: $fc
    ld h, b                                       ; $58a7: $60
    nop                                           ; $58a8: $00
    add hl, de                                    ; $58a9: $19
    ld e, d                                       ; $58aa: $5a
    or c                                          ; $58ab: $b1
    and c                                         ; $58ac: $a1
    ld a, [c]                                     ; $58ad: $f2
    ld [hl], l                                    ; $58ae: $75
    db $e3                                        ; $58af: $e3
    db $eb                                        ; $58b0: $eb
    nop                                           ; $58b1: $00
    add $d7                                       ; $58b2: $c6 $d7
    adc b                                         ; $58b4: $88
    adc [hl]                                      ; $58b5: $8e
    jr nc, jr_09c_58f5                            ; $58b6: $30 $3d

    ret nc                                        ; $58b8: $d0

    jp nc, $0d02                                  ; $58b9: $d2 $02 $0d

    cp h                                          ; $58bc: $bc
    rlca                                          ; $58bd: $07
    cp $03                                        ; $58be: $fe $03
    xor $d1                                       ; $58c0: $ee $d1
    ld bc, $80b5                                  ; $58c2: $01 $b5 $80
    db $10                                        ; $58c5: $10
    ld bc, $10ef                                  ; $58c6: $01 $ef $10
    pop af                                        ; $58c9: $f1
    rrca                                          ; $58ca: $0f
    reti                                          ; $58cb: $d9


    rlca                                          ; $58cc: $07
    cp [hl]                                       ; $58cd: $be
    nop                                           ; $58ce: $00
    inc bc                                        ; $58cf: $03
    rst $28                                       ; $58d0: $ef
    ld bc, $8077                                  ; $58d1: $01 $77 $80
    ld a, $43                                     ; $58d4: $3e $43
    jr nc, jr_09c_58e0                            ; $58d6: $30 $08

    inc l                                         ; $58d8: $2c
    ld [$e710], sp                                ; $58d9: $08 $10 $e7
    ld sp, $2816                                  ; $58dc: $31 $16 $28
    rst $10                                       ; $58df: $d7

jr_09c_58e0:
    nop                                           ; $58e0: $00
    nop                                           ; $58e1: $00
    rst $38                                       ; $58e2: $ff
    ld b, l                                       ; $58e3: $45
    ld a, d                                       ; $58e4: $7a
    jr nz, @+$41                                  ; $58e5: $20 $3f

    sub c                                         ; $58e7: $91
    ld e, $bf                                     ; $58e8: $1e $bf
    ld [$fb88], sp                                ; $58ea: $08 $88 $fb
    add h                                         ; $58ed: $84
    push de                                       ; $58ee: $d5
    ld b, b                                       ; $58ef: $40
    ld [bc], a                                    ; $58f0: $02
    ld l, l                                       ; $58f1: $6d
    add [hl]                                      ; $58f2: $86
    cpl                                           ; $58f3: $2f
    nop                                           ; $58f4: $00

jr_09c_58f5:
    ret c                                         ; $58f5: $d8

    sbc e                                         ; $58f6: $9b
    ld h, b                                       ; $58f7: $60
    rrca                                          ; $58f8: $0f
    ldh a, [$bf]                                  ; $58f9: $f0 $bf
    ld [$087b], sp                                ; $58fb: $08 $7b $08
    inc b                                         ; $58fe: $04
    or l                                          ; $58ff: $b5
    ld [bc], a                                    ; $5900: $02
    ld a, [$0030]                                 ; $5901: $fa $30 $00
    db $fd                                        ; $5904: $fd
    ld b, e                                       ; $5905: $43
    ld [hl], b                                    ; $5906: $70
    nop                                           ; $5907: $00
    inc l                                         ; $5908: $2c
    jp hl                                         ; $5909: $e9


    db $10                                        ; $590a: $10
    inc b                                         ; $590b: $04
    ld [$0446], sp                                ; $590c: $08 $46 $04
    ld de, $0200                                  ; $590f: $11 $00 $02
    adc b                                         ; $5912: $88
    ld bc, $8041                                  ; $5913: $01 $41 $80
    inc h                                         ; $5916: $24
    jp $0033                                      ; $5917: $c3 $33 $00


    db $ec                                        ; $591a: $ec
    ld e, $f0                                     ; $591b: $1e $f0
    nop                                           ; $591d: $00
    rrca                                          ; $591e: $0f
    and b                                         ; $591f: $a0
    rlca                                          ; $5920: $07
    ld [de], a                                    ; $5921: $12
    ld a, [bc]                                    ; $5922: $0a
    inc bc                                        ; $5923: $03
    add l                                         ; $5924: $85
    ld bc, $b048                                  ; $5925: $01 $48 $b0
    ld [bc], a                                    ; $5928: $02
    ld [hl], c                                    ; $5929: $71
    ldh [rSC], a                                  ; $592a: $e0 $02
    cpl                                           ; $592c: $2f
    nop                                           ; $592d: $00
    ret c                                         ; $592e: $d8

    rlca                                          ; $592f: $07
    db $fc                                        ; $5930: $fc
    ld b, c                                       ; $5931: $41
    cp [hl]                                       ; $5932: $be
    add hl, bc                                    ; $5933: $09
    rst $30                                       ; $5934: $f7
    ld [bc], a                                    ; $5935: $02
    nop                                           ; $5936: $00
    db $fd                                        ; $5937: $fd
    ld b, l                                       ; $5938: $45
    ld a, e                                       ; $5939: $7b
    inc hl                                        ; $593a: $23
    ccf                                           ; $593b: $3f
    rlca                                          ; $593c: $07
    rra                                           ; $593d: $1f
    ld a, h                                       ; $593e: $7c
    ld h, $08                                     ; $593f: $26 $08
    jp c, $02a0                                   ; $5941: $da $a0 $02

    jp c, $5b01                                   ; $5944: $da $01 $5b

    dec b                                         ; $5947: $05
    sbc e                                         ; $5948: $9b
    ld d, $8f                                     ; $5949: $16 $8f
    ld [bc], a                                    ; $594b: $02
    ld a, b                                       ; $594c: $78
    dec hl                                        ; $594d: $2b
    db $f4                                        ; $594e: $f4
    ld a, l                                       ; $594f: $7d
    jp nz, Jump_000_00f6                          ; $5950: $c2 $f6 $00

    ld de, $02db                                  ; $5953: $11 $db $02
    jr nz, jr_09c_59c7                            ; $5956: $20 $6f

    db $10                                        ; $5958: $10
    push af                                       ; $5959: $f5
    ld [$60be], sp                                ; $595a: $08 $be $60
    inc bc                                        ; $595d: $03
    sbc $00                                       ; $595e: $de $00
    ld bc, $816a                                  ; $5960: $01 $6a $81
    cp l                                          ; $5963: $bd
    ld b, e                                       ; $5964: $43
    db $db                                        ; $5965: $db
    daa                                           ; $5966: $27
    ld [hl], a                                    ; $5967: $77
    nop                                           ; $5968: $00
    rra                                           ; $5969: $1f
    ld c, a                                       ; $596a: $4f
    ld e, $1f                                     ; $596b: $1e $1f
    inc a                                         ; $596d: $3c
    dec a                                         ; $596e: $3d
    ld a, b                                       ; $596f: $78
    ld a, a                                       ; $5970: $7f
    nop                                           ; $5971: $00
    ldh a, [$e6]                                  ; $5972: $f0 $e6
    add sp, -$3d                                  ; $5974: $e8 $c3
    call nz, $82a1                                ; $5976: $c4 $a1 $82
    adc b                                         ; $5979: $88
    adc b                                         ; $597a: $88
    ld hl, sp+$01                                 ; $597b: $f8 $01
    push af                                       ; $597d: $f5
    ld b, b                                       ; $597e: $40
    rst $18                                       ; $597f: $df
    jr z, jr_09c_5982                             ; $5980: $28 $00

jr_09c_5982:
    db $fd                                        ; $5982: $fd
    ld [$20bb], sp                                ; $5983: $08 $bb $20
    inc b                                         ; $5986: $04
    db $ed                                        ; $5987: $ed
    ret c                                         ; $5988: $d8

    ld [bc], a                                    ; $5989: $02
    ld b, h                                       ; $598a: $44
    cp b                                          ; $598b: $b8

jr_09c_598c:
    ld [de], a                                    ; $598c: $12
    db $ec                                        ; $598d: $ec
    inc bc                                        ; $598e: $03
    nop                                           ; $598f: $00
    cp $25                                        ; $5990: $fe $25
    db $db                                        ; $5992: $db
    adc b                                         ; $5993: $88
    rst $30                                       ; $5994: $f7
    add e                                         ; $5995: $83
    ld a, a                                       ; $5996: $7f
    rst $28                                       ; $5997: $ef
    nop                                           ; $5998: $00
    inc a                                         ; $5999: $3c
    xor $10                                       ; $599a: $ee $10
    add a                                         ; $599c: $87
    ld [$0413], sp                                ; $599d: $08 $13 $04
    inc hl                                        ; $59a0: $23
    add d                                         ; $59a1: $82
    sub b                                         ; $59a2: $90
    nop                                           ; $59a3: $00
    ret nz                                        ; $59a4: $c0

    add b                                         ; $59a5: $80
    ld [c], a                                     ; $59a6: $e2
    ld b, b                                       ; $59a7: $40
    pop de                                        ; $59a8: $d1
    ld h, b                                       ; $59a9: $60
    inc bc                                        ; $59aa: $03
    rst $30                                       ; $59ab: $f7

jr_09c_59ac:
    jr z, jr_09c_59b6                             ; $59ac: $28 $08

    ld e, d                                       ; $59ae: $5a
    sub b                                         ; $59af: $90
    ld bc, $c1f6                                  ; $59b0: $01 $f6 $c1
    ld [bc], a                                    ; $59b3: $02
    ld l, $40                                     ; $59b4: $2e $40

jr_09c_59b6:
    dec a                                         ; $59b6: $3d
    ld [$0e20], sp                                ; $59b7: $08 $20 $0e
    db $10                                        ; $59ba: $10
    or l                                          ; $59bb: $b5
    ret nz                                        ; $59bc: $c0

    nop                                           ; $59bd: $00
    rst $28                                       ; $59be: $ef
    ld [bc], a                                    ; $59bf: $02
    cp $00                                        ; $59c0: $fe $00
    ld bc, $80ed                                  ; $59c2: $01 $ed $80
    ld a, a                                       ; $59c5: $7f
    ld b, b                                       ; $59c6: $40

jr_09c_59c7:
    ccf                                           ; $59c7: $3f
    jr nz, jr_09c_5a17                            ; $59c8: $20 $4d

    xor h                                         ; $59ca: $ac
    stop                                          ; $59cb: $10 $00
    ld a, [$12a0]                                 ; $59cd: $fa $a0 $12
    rst $28                                       ; $59d0: $ef
    jr nz, jr_09c_59d6                            ; $59d1: $20 $03

    jr nz, jr_09c_59df                            ; $59d3: $20 $0a

    rla                                           ; $59d5: $17

jr_09c_59d6:
    ld [$5300], sp                                ; $59d6: $08 $00 $53

jr_09c_59d9:
    inc a                                         ; $59d9: $3c
    inc bc                                        ; $59da: $03
    cp $01                                        ; $59db: $fe $01
    rst $38                                       ; $59dd: $ff
    inc h                                         ; $59de: $24

jr_09c_59df:
    db $db                                        ; $59df: $db
    nop                                           ; $59e0: $00
    ret nz                                        ; $59e1: $c0

    ld a, a                                       ; $59e2: $7f
    call nz, $f03b                                ; $59e3: $c4 $3b $f0
    rra                                           ; $59e6: $1f
    rlca                                          ; $59e7: $07
    ld [$4305], sp                                ; $59e8: $08 $05 $43
    inc b                                         ; $59eb: $04
    ld bc, $a902                                  ; $59ec: $01 $02 $a9
    or b                                          ; $59ef: $b0
    jr nc, jr_09c_59c7                            ; $59f0: $30 $d5

    ld a, b                                       ; $59f2: $78
    nop                                           ; $59f3: $00
    ld [$1ae1], sp                                ; $59f4: $08 $e1 $1a
    ret nz                                        ; $59f7: $c0

    ld h, c                                       ; $59f8: $61
    ret nz                                        ; $59f9: $c0

    jr z, jr_09c_59ac                             ; $59fa: $28 $b0

    rrca                                          ; $59fc: $0f
    db $fd                                        ; $59fd: $fd
    ld c, $06                                     ; $59fe: $0e $06
    cp [hl]                                       ; $5a00: $be
    inc bc                                        ; $5a01: $03
    rst $30                                       ; $5a02: $f7
    ret nc                                        ; $5a03: $d0

    jr nc, jr_09c_59b6                            ; $5a04: $30 $b0

    add hl, hl                                    ; $5a06: $29
    ldh [$28], a                                  ; $5a07: $e0 $28
    ld d, h                                       ; $5a09: $54
    jr z, jr_09c_598c                             ; $5a0a: $28 $80

    jp hl                                         ; $5a0c: $e9


    jr z, jr_09c_5a11                             ; $5a0d: $28 $02

    ld l, b                                       ; $5a0f: $68
    ld a, b                                       ; $5a10: $78

jr_09c_5a11:
    nop                                           ; $5a11: $00
    adc $34                                       ; $5a12: $ce $34
    ld a, a                                       ; $5a14: $7f
    jr nz, jr_09c_59d9                            ; $5a15: $20 $c2

jr_09c_5a17:
    rst $30                                       ; $5a17: $f7
    ld hl, sp+$03                                 ; $5a18: $f8 $03
    jr z, jr_09c_5a5c                             ; $5a1a: $28 $40

    ld [de], a                                    ; $5a1c: $12
    ld hl, $0c58                                  ; $5a1d: $21 $58 $0c
    ld d, $0c                                     ; $5a20: $16 $0c
    ld [$5842], sp                                ; $5a22: $08 $42 $58
    nop                                           ; $5a25: $00
    ret nc                                        ; $5a26: $d0

    ld [$40fb], sp                                ; $5a27: $08 $fb $40
    inc b                                         ; $5a2a: $04
    ld a, $a0                                     ; $5a2b: $3e $a0
    dec c                                         ; $5a2d: $0d
    db $10                                        ; $5a2e: $10
    ld c, a                                       ; $5a2f: $4f
    ld e, b                                       ; $5a30: $58
    ld [bc], a                                    ; $5a31: $02
    ld hl, $0002                                  ; $5a32: $21 $02 $00
    adc c                                         ; $5a35: $89
    ld bc, $f708                                  ; $5a36: $01 $08 $f7
    add d                                         ; $5a39: $82
    ld a, a                                       ; $5a3a: $7f
    rst $20                                       ; $5a3b: $e7
    inc a                                         ; $5a3c: $3c
    dec b                                         ; $5a3d: $05
    cp a                                          ; $5a3e: $bf
    db $10                                        ; $5a3f: $10
    ld a, [hl]                                    ; $5a40: $7e
    ld [$38eb], sp                                ; $5a41: $08 $eb $38
    inc de                                        ; $5a44: $13
    sub $e0                                       ; $5a45: $d6 $e0
    ld [bc], a                                    ; $5a47: $02
    ld bc, $02ad                                  ; $5a48: $01 $ad $02
    pop af                                        ; $5a4b: $f1
    rrca                                          ; $5a4c: $0f
    ld b, b                                       ; $5a4d: $40
    cp a                                          ; $5a4e: $bf
    ret z                                         ; $5a4f: $c8

    ldh [rNR11], a                                ; $5a50: $e0 $11
    stop                                          ; $5a52: $10 $00
    rst $38                                       ; $5a54: $ff
    ld a, a                                       ; $5a55: $7f
    ld b, h                                       ; $5a56: $44
    ld a, [bc]                                    ; $5a57: $0a
    push de                                       ; $5a58: $d5
    nop                                           ; $5a59: $00
    rst $38                                       ; $5a5a: $ff
    xor d                                         ; $5a5b: $aa

jr_09c_5a5c:
    ld a, [bc]                                    ; $5a5c: $0a
    push de                                       ; $5a5d: $d5
    add b                                         ; $5a5e: $80
    rst $38                                       ; $5a5f: $ff
    xor d                                         ; $5a60: $aa
    and e                                         ; $5a61: $a3
    ld c, $00                                     ; $5a62: $0e $00
    ld d, h                                       ; $5a64: $54
    ld [bc], a                                    ; $5a65: $02
    ld d, l                                       ; $5a66: $55
    jp RST_10                                     ; $5a67: $c3 $10 $00


    inc b                                         ; $5a6a: $04
    ld [$f0ff], sp                                ; $5a6b: $08 $ff $f0
    rrca                                          ; $5a6e: $0f
    ret c                                         ; $5a6f: $d8

    ret nc                                        ; $5a70: $d0

    ld d, c                                       ; $5a71: $51
    inc h                                         ; $5a72: $24
    ld [$d577], sp                                ; $5a73: $08 $77 $d5
    cp b                                          ; $5a76: $b8
    ld [$2170], sp                                ; $5a77: $08 $70 $21
    inc h                                         ; $5a7a: $24
    ld [$db55], sp                                ; $5a7b: $08 $55 $db
    ld b, $04                                     ; $5a7e: $06 $04
    ld [$0aff], sp                                ; $5a80: $08 $ff $0a
    db $fd                                        ; $5a83: $fd
    ret nz                                        ; $5a84: $c0

    add hl, hl                                    ; $5a85: $29
    sub b                                         ; $5a86: $90
    add hl, hl                                    ; $5a87: $29
    ret nz                                        ; $5a88: $c0

    add hl, hl                                    ; $5a89: $29
    and b                                         ; $5a8a: $a0
    add hl, hl                                    ; $5a8b: $29
    ret nz                                        ; $5a8c: $c0

    add hl, hl                                    ; $5a8d: $29
    or b                                          ; $5a8e: $b0
    add hl, hl                                    ; $5a8f: $29
    rst $38                                       ; $5a90: $ff
    ld c, b                                       ; $5a91: $48
    inc b                                         ; $5a92: $04
    ld bc, $20df                                  ; $5a93: $01 $df $20
    ld l, l                                       ; $5a96: $6d
    db $10                                        ; $5a97: $10
    or $08                                        ; $5a98: $f6 $08
    db $db                                        ; $5a9a: $db
    ret c                                         ; $5a9b: $d8

    inc bc                                        ; $5a9c: $03
    ld bc, $01f7                                  ; $5a9d: $01 $f7 $01
    ld d, h                                       ; $5aa0: $54
    add b                                         ; $5aa1: $80
    ldh [rLCDC], a                                ; $5aa2: $e0 $40
    ld d, l                                       ; $5aa4: $55
    ret z                                         ; $5aa5: $c8

    inc b                                         ; $5aa6: $04
    ld b, c                                       ; $5aa7: $41
    or h                                          ; $5aa8: $b4
    ret c                                         ; $5aa9: $d8

    ld bc, $1ae3                                  ; $5aaa: $01 $e3 $1a
    pop hl                                        ; $5aad: $e1
    ld h, c                                       ; $5aae: $61
    rst $28                                       ; $5aaf: $ef
    ld [$0403], sp                                ; $5ab0: $08 $03 $04
    dec a                                         ; $5ab3: $3d
    jr nz, jr_09c_5ad5                            ; $5ab4: $20 $1f

    db $10                                        ; $5ab6: $10
    add [hl]                                      ; $5ab7: $86
    ret nc                                        ; $5ab8: $d0

    db $10                                        ; $5ab9: $10
    adc b                                         ; $5aba: $88
    ld bc, $0610                                  ; $5abb: $01 $10 $06
    ld [$0853], sp                                ; $5abe: $08 $53 $08
    db $10                                        ; $5ac1: $10
    ld b, h                                       ; $5ac2: $44
    add b                                         ; $5ac3: $80
    and b                                         ; $5ac4: $a0
    ld b, b                                       ; $5ac5: $40
    ld h, b                                       ; $5ac6: $60
    ld d, d                                       ; $5ac7: $52
    ldh a, [rDIV]                                 ; $5ac8: $f0 $04
    ld h, b                                       ; $5aca: $60
    dec l                                         ; $5acb: $2d
    ld [$7d81], a                                 ; $5acc: $ea $81 $7d
    jp $001b                                      ; $5acf: $c3 $1b $00


    rst $20                                       ; $5ad2: $e7
    sub a                                         ; $5ad3: $97
    ld a, a                                       ; $5ad4: $7f

jr_09c_5ad5:
    rrca                                          ; $5ad5: $0f
    cp $5f                                        ; $5ad6: $fe $5f
    cp h                                          ; $5ad8: $bc
    dec a                                         ; $5ad9: $3d
    nop                                           ; $5ada: $00
    ld hl, sp+$7f                                 ; $5adb: $f8 $7f
    ldh a, [$f6]                                  ; $5add: $f0 $f6
    add sp, -$01                                  ; $5adf: $e8 $ff
    call nz, $08af                                ; $5ae1: $c4 $af $08
    add d                                         ; $5ae4: $82
    cp $01                                        ; $5ae5: $fe $01
    ld a, e                                       ; $5ae7: $7b
    sbc b                                         ; $5ae8: $98
    ld [bc], a                                    ; $5ae9: $02
    ld e, a                                       ; $5aea: $5f

jr_09c_5aeb:
    jr nz, jr_09c_5aeb                            ; $5aeb: $20 $fe

    nop                                           ; $5aed: $00
    db $10                                        ; $5aee: $10
    rst $10                                       ; $5aef: $d7
    ld [$34cb], sp                                ; $5af0: $08 $cb $34
    scf                                           ; $5af3: $37
    jp nz, $48ee                                  ; $5af4: $c2 $ee $48

    ld bc, $02f9                                  ; $5af7: $01 $f9 $02
    inc a                                         ; $5afa: $3c
    ld c, e                                       ; $5afb: $4b
    cp a                                          ; $5afc: $bf
    ld bc, $eb14                                  ; $5afd: $01 $14 $eb
    ld bc, $7f00                                  ; $5b00: $01 $00 $7f
    add e                                         ; $5b03: $83
    ccf                                           ; $5b04: $3f
    scf                                           ; $5b05: $37
    rra                                           ; $5b06: $1f
    xor $1e                                       ; $5b07: $ee $1e
    ld e, h                                       ; $5b09: $5c
    nop                                           ; $5b0a: $00
    inc a                                         ; $5b0b: $3c
    cp d                                          ; $5b0c: $ba
    ld a, b                                       ; $5b0d: $78
    ld a, b                                       ; $5b0e: $78
    ldh a, [$fc]                                  ; $5b0f: $f0 $fc
    add sp, -$26                                  ; $5b11: $e8 $da
    nop                                           ; $5b13: $00
    call nz, $82fd                                ; $5b14: $c4 $fd $82
    xor a                                         ; $5b17: $af
    ld bc, $80c1                                  ; $5b18: $01 $c1 $80
    daa                                           ; $5b1b: $27
    ld [bc], a                                    ; $5b1c: $02
    ld b, e                                       ; $5b1d: $43
    sub a                                         ; $5b1e: $97
    inc l                                         ; $5b1f: $2c
    rrca                                          ; $5b20: $0f
    db $10                                        ; $5b21: $10
    add l                                         ; $5b22: $85
    ld hl, sp+$01                                 ; $5b23: $f8 $01
    ld hl, $98a9                                  ; $5b25: $21 $a9 $98
    inc bc                                        ; $5b28: $03
    ld e, e                                       ; $5b29: $5b
    ld c, b                                       ; $5b2a: $48
    inc bc                                        ; $5b2b: $03
    ei                                            ; $5b2c: $fb
    jr nz, jr_09c_5b39                            ; $5b2d: $20 $0a

    dec bc                                        ; $5b2f: $0b
    cp d                                          ; $5b30: $ba
    add sp, $01                                   ; $5b31: $e8 $01
    nop                                           ; $5b33: $00
    sbc $01                                       ; $5b34: $de $01
    adc [hl]                                      ; $5b36: $8e
    ld a, a                                       ; $5b37: $7f
    sbc h                                         ; $5b38: $9c

jr_09c_5b39:
    cp a                                          ; $5b39: $bf
    ld a, [hl-]                                   ; $5b3a: $3a
    ld a, l                                       ; $5b3b: $7d
    nop                                           ; $5b3c: $00
    ld [hl], b                                    ; $5b3d: $70
    rst $38                                       ; $5b3e: $ff
    add sp, -$11                                  ; $5b3f: $e8 $ef
    db $e4                                        ; $5b41: $e4
    rst $00                                       ; $5b42: $c7
    add b                                         ; $5b43: $80
    add e                                         ; $5b44: $83
    ld b, h                                       ; $5b45: $44
    add c                                         ; $5b46: $81
    xor b                                         ; $5b47: $a8
    inc bc                                        ; $5b48: $03
    ld [hl], a                                    ; $5b49: $77
    ret nz                                        ; $5b4a: $c0

    ccf                                           ; $5b4b: $3f
    jr c, jr_09c_5b52                             ; $5b4c: $38 $04

    rrca                                          ; $5b4e: $0f
    ld hl, sp+$17                                 ; $5b4f: $f8 $17
    ld l, e                                       ; $5b51: $6b

jr_09c_5b52:
    or h                                          ; $5b52: $b4
    ccf                                           ; $5b53: $3f
    ld a, b                                       ; $5b54: $78
    ld [bc], a                                    ; $5b55: $02
    call nz, Call_000_0098                        ; $5b56: $c4 $98 $00
    ret nz                                        ; $5b59: $c0

    ld [$0298], sp                                ; $5b5a: $08 $98 $02
    or b                                          ; $5b5d: $b0
    and b                                         ; $5b5e: $a0
    ld bc, $80f6                                  ; $5b5f: $01 $f6 $80
    nop                                           ; $5b62: $00
    jr c, jr_09c_5b71                             ; $5b63: $38 $0c

    rra                                           ; $5b65: $1f
    db $10                                        ; $5b66: $10
    ld b, l                                       ; $5b67: $45
    ld [$2705], sp                                ; $5b68: $08 $05 $27
    dec b                                         ; $5b6b: $05
    ld [bc], a                                    ; $5b6c: $02
    inc bc                                        ; $5b6d: $03
    sub b                                         ; $5b6e: $90
    xor b                                         ; $5b6f: $a8
    inc b                                         ; $5b70: $04

jr_09c_5b71:
    and b                                         ; $5b71: $a0
    ld c, b                                       ; $5b72: $48
    ld [bc], a                                    ; $5b73: $02
    inc b                                         ; $5b74: $04
    ld l, b                                       ; $5b75: $68
    db $10                                        ; $5b76: $10
    push de                                       ; $5b77: $d5
    ld [$707e], sp                                ; $5b78: $08 $7e $70
    ld [bc], a                                    ; $5b7b: $02
    ldh a, [$0d]                                  ; $5b7c: $f0 $0d
    nop                                           ; $5b7e: $00
    ld l, a                                       ; $5b7f: $6f
    add b                                         ; $5b80: $80
    dec a                                         ; $5b81: $3d
    ld b, b                                       ; $5b82: $40
    scf                                           ; $5b83: $37
    jr nz, jr_09c_5b93                            ; $5b84: $20 $0d

    db $10                                        ; $5b86: $10
    ld d, c                                       ; $5b87: $51
    cpl                                           ; $5b88: $2f
    jr jr_09c_5b9d                                ; $5b89: $18 $12

    sub h                                         ; $5b8b: $94
    ld e, b                                       ; $5b8c: $58
    dec b                                         ; $5b8d: $05
    rst $30                                       ; $5b8e: $f7
    ld b, b                                       ; $5b8f: $40
    db $fd                                        ; $5b90: $fd
    jr jr_09c_5b97                                ; $5b91: $18 $04

jr_09c_5b93:
    add d                                         ; $5b93: $82
    ld e, b                                       ; $5b94: $58
    ld a, [bc]                                    ; $5b95: $0a
    pop hl                                        ; $5b96: $e1

jr_09c_5b97:
    ld e, $a5                                     ; $5b97: $1e $a5
    ld a, e                                       ; $5b99: $7b

jr_09c_5b9a:
    ld b, h                                       ; $5b9a: $44
    xor b                                         ; $5b9b: $a8
    dec b                                         ; $5b9c: $05

jr_09c_5b9d:
    ret nc                                        ; $5b9d: $d0

    ld [bc], a                                    ; $5b9e: $02
    jr nz, jr_09c_5b9a                            ; $5b9f: $20 $f9

    db $10                                        ; $5ba1: $10
    db $f4                                        ; $5ba2: $f4
    dec bc                                        ; $5ba3: $0b
    cp e                                          ; $5ba4: $bb
    jr z, jr_09c_5bbd                             ; $5ba5: $28 $16

    ld d, b                                       ; $5ba7: $50
    ld d, l                                       ; $5ba8: $55
    or b                                          ; $5ba9: $b0
    jr z, jr_09c_5bb8                             ; $5baa: $28 $0c

    jp hl                                         ; $5bac: $e9


    ld hl, sp+$00                                 ; $5bad: $f8 $00
    cp [hl]                                       ; $5baf: $be
    or b                                          ; $5bb0: $b0
    ld [bc], a                                    ; $5bb1: $02
    cp d                                          ; $5bb2: $ba
    sbc b                                         ; $5bb3: $98
    ld [bc], a                                    ; $5bb4: $02
    nop                                           ; $5bb5: $00
    jr nz, jr_09c_5bf8                            ; $5bb6: $20 $40

jr_09c_5bb8:
    or d                                          ; $5bb8: $b2
    jr nz, @+$0a                                  ; $5bb9: $20 $08

    db $10                                        ; $5bbb: $10
    inc l                                         ; $5bbc: $2c

jr_09c_5bbd:
    ld [$4600], sp                                ; $5bbd: $08 $00 $46
    dec b                                         ; $5bc0: $05
    ld bc, $a802                                  ; $5bc1: $01 $02 $a8
    ld bc, $ff80                                  ; $5bc4: $01 $80 $ff
    db $10                                        ; $5bc7: $10
    db $10                                        ; $5bc8: $10
    ld l, a                                       ; $5bc9: $6f
    ld [bc], a                                    ; $5bca: $02
    ld sp, $f801                                  ; $5bcb: $31 $01 $f8
    ld l, a                                       ; $5bce: $6f
    ld a, l                                       ; $5bcf: $7d
    add [hl]                                      ; $5bd0: $86
    ld d, b                                       ; $5bd1: $50
    cp $79                                        ; $5bd2: $fe $79
    ld [bc], a                                    ; $5bd4: $02
    ld [hl], a                                    ; $5bd5: $77
    ld a, b                                       ; $5bd6: $78
    ld b, $b7                                     ; $5bd7: $06 $b7
    ld h, b                                       ; $5bd9: $60
    rra                                           ; $5bda: $1f
    ldh a, [rP1]                                  ; $5bdb: $f0 $00
    inc c                                         ; $5bdd: $0c
    ei                                            ; $5bde: $fb
    ld d, d                                       ; $5bdf: $52
    xor h                                         ; $5be0: $ac
    ld bc, $10fe                                  ; $5be1: $01 $fe $10
    rst $28                                       ; $5be4: $ef
    db $10                                        ; $5be5: $10
    ld a, a                                       ; $5be6: $7f
    add b                                         ; $5be7: $80
    xor l                                         ; $5be8: $ad
    ldh a, [rSC]                                  ; $5be9: $f0 $02
    sbc e                                         ; $5beb: $9b
    ret nc                                        ; $5bec: $d0

    rlca                                          ; $5bed: $07
    ld [$0241], sp                                ; $5bee: $08 $41 $02
    ld d, b                                       ; $5bf1: $50
    ld de, $80c1                                  ; $5bf2: $11 $c1 $80
    db $e4                                        ; $5bf5: $e4
    ld b, e                                       ; $5bf6: $43
    di                                            ; $5bf7: $f3

jr_09c_5bf8:
    jr jr_09c_5c00                                ; $5bf8: $18 $06

    sub b                                         ; $5bfa: $90
    add b                                         ; $5bfb: $80
    add hl, bc                                    ; $5bfc: $09
    ld h, c                                       ; $5bfd: $61
    ld e, $c5                                     ; $5bfe: $1e $c5

jr_09c_5c00:
    ld [bc], a                                    ; $5c00: $02
    add b                                         ; $5c01: $80
    and l                                         ; $5c02: $a5
    ld b, b                                       ; $5c03: $40
    jp nc, Jump_09c_6082                          ; $5c04: $d2 $82 $60

    ld [bc], a                                    ; $5c07: $02
    db $f4                                        ; $5c08: $f4
    ld [$04ea], sp                                ; $5c09: $08 $ea $04
    push de                                       ; $5c0c: $d5
    ret c                                         ; $5c0d: $d8

    ld [bc], a                                    ; $5c0e: $02
    ld l, l                                       ; $5c0f: $6d
    nop                                           ; $5c10: $00
    add b                                         ; $5c11: $80
    ccf                                           ; $5c12: $3f
    ld b, e                                       ; $5c13: $43
    inc d                                         ; $5c14: $14
    cpl                                           ; $5c15: $2f
    add b                                         ; $5c16: $80
    rra                                           ; $5c17: $1f
    ld b, c                                       ; $5c18: $41
    adc d                                         ; $5c19: $8a
    ld l, b                                       ; $5c1a: $68
    dec b                                         ; $5c1b: $05
    jr z, @+$05                                   ; $5c1c: $28 $03

    add e                                         ; $5c1e: $83
    ld [$e003], sp                                ; $5c1f: $08 $03 $e0
    jr nz, jr_09c_5c34                            ; $5c22: $20 $10

    adc l                                         ; $5c24: $8d
    nop                                           ; $5c25: $00
    ld a, b                                       ; $5c26: $78
    ld [bc], a                                    ; $5c27: $02
    db $fc                                        ; $5c28: $fc
    inc bc                                        ; $5c29: $03
    cp $48                                        ; $5c2a: $fe $48
    or a                                          ; $5c2c: $b7
    stop                                          ; $5c2d: $10 $00
    rst $28                                       ; $5c2f: $ef
    inc b                                         ; $5c30: $04
    ld a, e                                       ; $5c31: $7b
    jr nz, @+$41                                  ; $5c32: $20 $3f

jr_09c_5c34:
    ld [de], a                                    ; $5c34: $12
    dec e                                         ; $5c35: $1d
    ld c, b                                       ; $5c36: $48
    ld [$000f], sp                                ; $5c37: $08 $0f $00
    rlca                                          ; $5c3a: $07
    db $10                                        ; $5c3b: $10
    xor b                                         ; $5c3c: $a8
    inc bc                                        ; $5c3d: $03
    ld l, a                                       ; $5c3e: $6f
    add b                                         ; $5c3f: $80
    dec sp                                        ; $5c40: $3b
    nop                                           ; $5c41: $00
    ret nz                                        ; $5c42: $c0

    ld e, $e0                                     ; $5c43: $1e $e0
    adc e                                         ; $5c45: $8b
    ld [hl], b                                    ; $5c46: $70
    ld c, [hl]                                    ; $5c47: $4e
    cp b                                          ; $5c48: $b8
    rlca                                          ; $5c49: $07
    nop                                           ; $5c4a: $00
    db $fc                                        ; $5c4b: $fc
    ld bc, $29fe                                  ; $5c4c: $01 $fe $29
    rst $10                                       ; $5c4f: $d7
    ld c, b                                       ; $5c50: $48
    add [hl]                                      ; $5c51: $86
    cp b                                          ; $5c52: $b8
    ld a, [bc]                                    ; $5c53: $0a
    ld e, b                                       ; $5c54: $58
    ret nc                                        ; $5c55: $d0

    jr nz, jr_09c_5cc2                            ; $5c56: $20 $6a

    ret nc                                        ; $5c58: $d0

    ld bc, $e8fa                                  ; $5c59: $01 $fa $e8
    ld b, $be                                     ; $5c5c: $06 $be
    nop                                           ; $5c5e: $00
    ld bc, $df20                                  ; $5c5f: $01 $20 $df
    ld b, d                                       ; $5c62: $42
    ld a, l                                       ; $5c63: $7d
    ld h, b                                       ; $5c64: $60
    ccf                                           ; $5c65: $3f
    jr nc, jr_09c_5cb8                            ; $5c66: $30 $50

    rst $18                                       ; $5c68: $df
    ld e, b                                       ; $5c69: $58
    dec c                                         ; $5c6a: $0d
    or $19                                        ; $5c6b: $f6 $19
    inc bc                                        ; $5c6d: $03
    ld c, c                                       ; $5c6e: $49
    add b                                         ; $5c6f: $80
    ld h, h                                       ; $5c70: $64
    jp Jump_000_1b10                              ; $5c71: $c3 $10 $1b


    db $ec                                        ; $5c74: $ec
    adc a                                         ; $5c75: $8f
    jr @+$09                                      ; $5c76: $18 $07

    ld [de], a                                    ; $5c78: $12
    db $ec                                        ; $5c79: $ec
    ld bc, $80fe                                  ; $5c7a: $01 $fe $80
    cp b                                          ; $5c7d: $b8
    ld c, $c4                                     ; $5c7e: $0e $c4
    ld a, e                                       ; $5c80: $7b
    ld b, b                                       ; $5c81: $40
    ccf                                           ; $5c82: $3f
    pop af                                        ; $5c83: $f1
    ld e, $f5                                     ; $5c84: $1e $f5
    adc b                                         ; $5c86: $88
    db $10                                        ; $5c87: $10
    ld [bc], a                                    ; $5c88: $02
    db $fd                                        ; $5c89: $fd
    ld [bc], a                                    ; $5c8a: $02
    ld [$0448], a                                 ; $5c8b: $ea $48 $04
    ccf                                           ; $5c8e: $3f
    ret nz                                        ; $5c8f: $c0

    push de                                       ; $5c90: $d5
    nop                                           ; $5c91: $00
    and b                                         ; $5c92: $a0
    rst $38                                       ; $5c93: $ff
    db $10                                        ; $5c94: $10
    or [hl]                                       ; $5c95: $b6
    ld [$04ff], sp                                ; $5c96: $08 $ff $04
    xor a                                         ; $5c99: $af
    and d                                         ; $5c9a: $a2
    ld l, b                                       ; $5c9b: $68
    inc bc                                        ; $5c9c: $03
    ld l, a                                       ; $5c9d: $6f
    ret c                                         ; $5c9e: $d8

    inc b                                         ; $5c9f: $04
    ld a, a                                       ; $5ca0: $7f
    jr nz, @+$0f                                  ; $5ca1: $20 $0d

    ret nz                                        ; $5ca3: $c0

    nop                                           ; $5ca4: $00
    ld b, a                                       ; $5ca5: $47
    add d                                         ; $5ca6: $82
    jr z, jr_09c_5cad                             ; $5ca7: $28 $04

    xor b                                         ; $5ca9: $a8
    ld bc, $ef10                                  ; $5caa: $01 $10 $ef

jr_09c_5cad:
    ret nz                                        ; $5cad: $c0

    ld [hl+], a                                   ; $5cae: $22
    ld b, $63                                     ; $5caf: $06 $63
    jr nz, jr_09c_5cd1                            ; $5cb1: $20 $1e

    rst $30                                       ; $5cb3: $f7
    ld b, b                                       ; $5cb4: $40
    ld [hl+], a                                   ; $5cb5: $22
    ld a, a                                       ; $5cb6: $7f
    add b                                         ; $5cb7: $80

jr_09c_5cb8:
    ld a, d                                       ; $5cb8: $7a
    ret nz                                        ; $5cb9: $c0

    ld e, a                                       ; $5cba: $5f
    dec d                                         ; $5cbb: $15
    and b                                         ; $5cbc: $a0
    db $ed                                        ; $5cbd: $ed
    db $10                                        ; $5cbe: $10
    ld e, b                                       ; $5cbf: $58
    inc c                                         ; $5cc0: $0c
    db $ed                                        ; $5cc1: $ed

jr_09c_5cc2:
    sbc b                                         ; $5cc2: $98
    inc bc                                        ; $5cc3: $03
    rst $38                                       ; $5cc4: $ff
    and b                                         ; $5cc5: $a0
    ld bc, $bd01                                  ; $5cc6: $01 $01 $bd
    ld h, b                                       ; $5cc9: $60
    dec de                                        ; $5cca: $1b
    ldh a, [rVBK]                                 ; $5ccb: $f0 $4f
    cp b                                          ; $5ccd: $b8
    inc de                                        ; $5cce: $13
    ret c                                         ; $5ccf: $d8

    inc bc                                        ; $5cd0: $03

jr_09c_5cd1:
    inc l                                         ; $5cd1: $2c
    db $10                                        ; $5cd2: $10
    rst $28                                       ; $5cd3: $ef
    jr c, jr_09c_5cf0                             ; $5cd4: $38 $1a

    ld hl, sp-$60                                 ; $5cd6: $f8 $a0
    add hl, bc                                    ; $5cd8: $09
    ld e, b                                       ; $5cd9: $58
    dec b                                         ; $5cda: $05
    xor a                                         ; $5cdb: $af
    ld bc, $8400                                  ; $5cdc: $01 $00 $84
    ei                                            ; $5cdf: $fb
    ld c, b                                       ; $5ce0: $48
    ld [hl], a                                    ; $5ce1: $77
    ld [hl+], a                                   ; $5ce2: $22
    dec a                                         ; $5ce3: $3d
    nop                                           ; $5ce4: $00
    rra                                           ; $5ce5: $1f
    inc b                                         ; $5ce6: $04
    ld c, b                                       ; $5ce7: $48
    rrca                                          ; $5ce8: $0f
    and h                                         ; $5ce9: $a4
    rlca                                          ; $5cea: $07
    nop                                           ; $5ceb: $00
    ld c, b                                       ; $5cec: $48
    ld b, $00                                     ; $5ced: $06 $00
    nop                                           ; $5cef: $00

jr_09c_5cf0:
    nop                                           ; $5cf0: $00
    and b                                         ; $5cf1: $a0
    and b                                         ; $5cf2: $a0
    add [hl]                                      ; $5cf3: $86
    ld [$2168], sp                                ; $5cf4: $08 $68 $21
    jp c, Jump_000_0012                           ; $5cf7: $da $12 $00

    ld a, [hl+]                                   ; $5cfa: $2a
    ld [bc], a                                    ; $5cfb: $02
    ld a, [hl+]                                   ; $5cfc: $2a
    ld [bc], a                                    ; $5cfd: $02

jr_09c_5cfe:
    or a                                          ; $5cfe: $b7
    ld a, [de]                                    ; $5cff: $1a
    nop                                           ; $5d00: $00
    nop                                           ; $5d01: $00
    nop                                           ; $5d02: $00
    ld h, $26                                     ; $5d03: $26 $26
    ld sp, $5801                                  ; $5d05: $31 $01 $58
    db $10                                        ; $5d08: $10
    db $db                                        ; $5d09: $db
    ld d, e                                       ; $5d0a: $53
    nop                                           ; $5d0b: $00
    add $42                                       ; $5d0c: $c6 $42
    inc c                                         ; $5d0e: $0c
    adc b                                         ; $5d0f: $88
    ld b, h                                       ; $5d10: $44
    nop                                           ; $5d11: $00
    db $10                                        ; $5d12: $10
    ld de, $1002                                  ; $5d13: $11 $02 $10
    ld de, $6362                                  ; $5d16: $11 $62 $63
    ld b, b                                       ; $5d19: $40
    ld b, c                                       ; $5d1a: $41
    ld [bc], a                                    ; $5d1b: $02
    ld [$08c2], sp                                ; $5d1c: $08 $c2 $08
    jp Jump_000_3130                              ; $5d1f: $c3 $30 $31


    add b                                         ; $5d22: $80
    inc l                                         ; $5d23: $2c
    rlca                                          ; $5d24: $07
    ret nz                                        ; $5d25: $c0

    cp a                                          ; $5d26: $bf
    add h                                         ; $5d27: $84
    nop                                           ; $5d28: $00
    ei                                            ; $5d29: $fb
    add d                                         ; $5d2a: $82
    db $fd                                        ; $5d2b: $fd
    ld d, b                                       ; $5d2c: $50
    xor a                                         ; $5d2d: $af
    ld a, [hl+]                                   ; $5d2e: $2a
    push de                                       ; $5d2f: $d5
    ld d, l                                       ; $5d30: $55
    nop                                           ; $5d31: $00
    xor d                                         ; $5d32: $aa
    jp $d0a5                                      ; $5d33: $c3 $a5 $d0


    ret nc                                        ; $5d36: $d0

    ld d, d                                       ; $5d37: $52
    ld d, d                                       ; $5d38: $52
    ld l, b                                       ; $5d39: $68
    nop                                           ; $5d3a: $00
    ld l, b                                       ; $5d3b: $68
    ld bc, $fa02                                  ; $5d3c: $01 $02 $fa
    push af                                       ; $5d3f: $f5
    rla                                           ; $5d40: $17
    adc e                                         ; $5d41: $8b
    reti                                          ; $5d42: $d9


    nop                                           ; $5d43: $00
    jr z, jr_09c_5cfe                             ; $5d44: $28 $b8

    add b                                         ; $5d46: $80
    ld a, [de]                                    ; $5d47: $1a
    ld a, [de]                                    ; $5d48: $1a
    ld b, h                                       ; $5d49: $44
    ld b, h                                       ; $5d4a: $44
    inc a                                         ; $5d4b: $3c
    nop                                           ; $5d4c: $00
    inc a                                         ; $5d4d: $3c
    ld bc, $e600                                  ; $5d4e: $01 $00 $e6
    ld d, l                                       ; $5d51: $55
    ld e, l                                       ; $5d52: $5d
    and d                                         ; $5d53: $a2
    ld [hl], b                                    ; $5d54: $70
    nop                                           ; $5d55: $00
    adc b                                         ; $5d56: $88
    jr nz, jr_09c_5d7a                            ; $5d57: $20 $21

    ld b, b                                       ; $5d59: $40
    ld b, c                                       ; $5d5a: $41
    ret z                                         ; $5d5b: $c8

    ret                                           ; $5d5c: $c9


    inc h                                         ; $5d5d: $24
    nop                                           ; $5d5e: $00
    dec h                                         ; $5d5f: $25
    inc b                                         ; $5d60: $04
    dec b                                         ; $5d61: $05
    add [hl]                                      ; $5d62: $86
    add a                                         ; $5d63: $87
    ld d, b                                       ; $5d64: $50
    or c                                          ; $5d65: $b1
    ld d, b                                       ; $5d66: $50
    nop                                           ; $5d67: $00
    ld d, c                                       ; $5d68: $51
    ccf                                           ; $5d69: $3f
    ret nz                                        ; $5d6a: $c0

    ld a, e                                       ; $5d6b: $7b
    add h                                         ; $5d6c: $84
    ld [hl], a                                    ; $5d6d: $77
    adc b                                         ; $5d6e: $88
    ld a, a                                       ; $5d6f: $7f
    nop                                           ; $5d70: $00
    add b                                         ; $5d71: $80
    dec a                                         ; $5d72: $3d
    add b                                         ; $5d73: $80
    ld [hl], a                                    ; $5d74: $77
    add b                                         ; $5d75: $80
    cpl                                           ; $5d76: $2f
    add b                                         ; $5d77: $80
    ld e, [hl]                                    ; $5d78: $5e
    nop                                           ; $5d79: $00

jr_09c_5d7a:
    add b                                         ; $5d7a: $80
    or b                                          ; $5d7b: $b0
    ret nz                                        ; $5d7c: $c0

    inc c                                         ; $5d7d: $0c
    inc c                                         ; $5d7e: $0c
    dec hl                                        ; $5d7f: $2b
    dec hl                                        ; $5d80: $2b
    ret nz                                        ; $5d81: $c0

    nop                                           ; $5d82: $00
    ld b, b                                       ; $5d83: $40
    ld h, h                                       ; $5d84: $64
    and c                                         ; $5d85: $a1
    dec hl                                        ; $5d86: $2b
    ld d, b                                       ; $5d87: $50
    ld d, c                                       ; $5d88: $51
    ld b, c                                       ; $5d89: $41
    ld b, d                                       ; $5d8a: $42
    nop                                           ; $5d8b: $00
    ld b, d                                       ; $5d8c: $42
    nop                                           ; $5d8d: $00
    nop                                           ; $5d8e: $00
    ld h, d                                       ; $5d8f: $62
    ld h, d                                       ; $5d90: $62
    jr nz, @+$32                                  ; $5d91: $20 $30

    jp hl                                         ; $5d93: $e9


    nop                                           ; $5d94: $00
    push bc                                       ; $5d95: $c5
    ld b, [hl]                                    ; $5d96: $46
    adc c                                         ; $5d97: $89
    adc l                                         ; $5d98: $8d
    ld d, e                                       ; $5d99: $53
    dec d                                         ; $5d9a: $15
    dec l                                         ; $5d9b: $2d
    stop                                          ; $5d9c: $10 $00
    db $10                                        ; $5d9e: $10
    ld [bc], a                                    ; $5d9f: $02
    inc bc                                        ; $5da0: $03
    ld c, b                                       ; $5da1: $48
    ld c, c                                       ; $5da2: $49
    nop                                           ; $5da3: $00
    ld bc, $0050                                  ; $5da4: $01 $50 $00
    ld d, c                                       ; $5da7: $51
    inc b                                         ; $5da8: $04
    dec b                                         ; $5da9: $05
    nop                                           ; $5daa: $00
    ld bc, $0302                                  ; $5dab: $01 $02 $03
    nop                                           ; $5dae: $00
    nop                                           ; $5daf: $00
    ld bc, $00ab                                  ; $5db0: $01 $ab $00
    rla                                           ; $5db3: $17
    add b                                         ; $5db4: $80
    adc d                                         ; $5db5: $8a
    nop                                           ; $5db6: $00
    inc d                                         ; $5db7: $14
    ld b, b                                       ; $5db8: $40
    add b                                         ; $5db9: $80
    inc de                                        ; $5dba: $13
    ld h, $00                                     ; $5dbb: $26 $00
    ld hl, $0221                                  ; $5dbd: $21 $21 $02
    ld [bc], a                                    ; $5dc0: $02
    ld [$0801], sp                                ; $5dc1: $08 $01 $08
    sub c                                         ; $5dc4: $91
    sub c                                         ; $5dc5: $91
    nop                                           ; $5dc6: $00
    nop                                           ; $5dc7: $00
    jr nc, jr_09c_5dfa                            ; $5dc8: $30 $30

    add d                                         ; $5dca: $82
    rla                                           ; $5dcb: $17
    nop                                           ; $5dcc: $00
    nop                                           ; $5dcd: $00
    inc h                                         ; $5dce: $24
    inc h                                         ; $5dcf: $24
    ld de, $0111                                  ; $5dd0: $11 $11 $01
    ld bc, $1020                                  ; $5dd3: $01 $20 $10
    jr nz, jr_09c_5e57                            ; $5dd6: $20 $7f

    nop                                           ; $5dd8: $00
    jr nc, @+$08                                  ; $5dd9: $30 $06

    rst $38                                       ; $5ddb: $ff
    db $10                                        ; $5ddc: $10
    ld de, $0700                                  ; $5ddd: $11 $00 $07
    ld bc, $0100                                  ; $5de0: $01 $00 $01
    or b                                          ; $5de3: $b0
    or c                                          ; $5de4: $b1
    ld b, $08                                     ; $5de5: $06 $08
    and d                                         ; $5de7: $a2
    rrca                                          ; $5de8: $0f
    ld c, e                                       ; $5de9: $4b
    ld c, $00                                     ; $5dea: $0e $00
    and d                                         ; $5dec: $a2
    nop                                           ; $5ded: $00
    ret z                                         ; $5dee: $c8

    nop                                           ; $5def: $00
    and b                                         ; $5df0: $a0
    nop                                           ; $5df1: $00
    push de                                       ; $5df2: $d5
    nop                                           ; $5df3: $00
    ld h, b                                       ; $5df4: $60
    xor d                                         ; $5df5: $aa
    ld b, d                                       ; $5df6: $42
    ld c, $b6                                     ; $5df7: $0e $b6
    rla                                           ; $5df9: $17

jr_09c_5dfa:
    db $10                                        ; $5dfa: $10
    rst $28                                       ; $5dfb: $ef
    ld b, d                                       ; $5dfc: $42
    cp l                                          ; $5dfd: $bd
    dec d                                         ; $5dfe: $15
    dec h                                         ; $5dff: $25
    ld [$b2aa], a                                 ; $5e00: $ea $aa $b2
    nop                                           ; $5e03: $00
    ldh [$a0], a                                  ; $5e04: $e0 $a0
    ld [bc], a                                    ; $5e06: $02
    nop                                           ; $5e07: $00
    xor d                                         ; $5e08: $aa
    inc b                                         ; $5e09: $04
    ld [$e102], sp                                ; $5e0a: $08 $02 $e1
    or l                                          ; $5e0d: $b5
    pop hl                                        ; $5e0e: $e1
    xor e                                         ; $5e0f: $ab
    rst $20                                       ; $5e10: $e7
    or [hl]                                       ; $5e11: $b6
    ld l, e                                       ; $5e12: $6b
    ld d, $aa                                     ; $5e13: $16 $aa
    nop                                           ; $5e15: $00
    ld a, [hl]                                    ; $5e16: $7e
    ld a, a                                       ; $5e17: $7f
    pop bc                                        ; $5e18: $c1
    db $e3                                        ; $5e19: $e3
    ret nz                                        ; $5e1a: $c0

    ld h, c                                       ; $5e1b: $61
    inc hl                                        ; $5e1c: $23
    rst $20                                       ; $5e1d: $e7
    nop                                           ; $5e1e: $00
    and a                                         ; $5e1f: $a7
    db $ed                                        ; $5e20: $ed
    cp e                                          ; $5e21: $bb
    ld b, h                                       ; $5e22: $44
    xor $11                                       ; $5e23: $ee $11
    rst $38                                       ; $5e25: $ff
    nop                                           ; $5e26: $00
    db $10                                        ; $5e27: $10
    rst $30                                       ; $5e28: $f7
    nop                                           ; $5e29: $00
    rst $28                                       ; $5e2a: $ef
    ld b, b                                       ; $5e2b: $40
    nop                                           ; $5e2c: $00
    ld l, e                                       ; $5e2d: $6b
    nop                                           ; $5e2e: $00
    push bc                                       ; $5e2f: $c5
    nop                                           ; $5e30: $00
    nop                                           ; $5e31: $00
    ld a, [$f7bf]                                 ; $5e32: $fa $bf $f7
    xor e                                         ; $5e35: $ab
    rst $38                                       ; $5e36: $ff
    and d                                         ; $5e37: $a2
    rst $38                                       ; $5e38: $ff
    and b                                         ; $5e39: $a0
    nop                                           ; $5e3a: $00
    rst $38                                       ; $5e3b: $ff
    or c                                          ; $5e3c: $b1
    rst $38                                       ; $5e3d: $ff
    cp c                                          ; $5e3e: $b9
    db $ed                                        ; $5e3f: $ed
    xor [hl]                                      ; $5e40: $ae
    db $eb                                        ; $5e41: $eb
    cp h                                          ; $5e42: $bc
    nop                                           ; $5e43: $00
    ld h, [hl]                                    ; $5e44: $66
    db $eb                                        ; $5e45: $eb
    ld l, a                                       ; $5e46: $6f
    ld a, [$ffb6]                                 ; $5e47: $fa $b6 $ff
    ld d, $ff                                     ; $5e4a: $16 $ff
    nop                                           ; $5e4c: $00
    rla                                           ; $5e4d: $17
    cp $0d                                        ; $5e4e: $fe $0d
    cp $0c                                        ; $5e50: $fe $0c
    rst $38                                       ; $5e52: $ff
    ld [hl], a                                    ; $5e53: $77
    rst $18                                       ; $5e54: $df
    inc h                                         ; $5e55: $24
    and d                                         ; $5e56: $a2

jr_09c_5e57:
    nop                                           ; $5e57: $00
    ld b, h                                       ; $5e58: $44
    ld bc, $2000                                  ; $5e59: $01 $00 $20
    or d                                          ; $5e5c: $b2
    ld h, $00                                     ; $5e5d: $26 $00
    nop                                           ; $5e5f: $00
    ld bc, $aeed                                  ; $5e60: $01 $ed $ae
    rst $20                                       ; $5e63: $e7
    or a                                          ; $5e64: $b7
    db $e3                                        ; $5e65: $e3
    xor e                                         ; $5e66: $ab
    ld [c], a                                     ; $5e67: $e2
    inc b                                         ; $5e68: $04
    nop                                           ; $5e69: $00
    nop                                           ; $5e6a: $00
    db $e3                                        ; $5e6b: $e3
    or a                                          ; $5e6c: $b7
    pop hl                                        ; $5e6d: $e1
    xor e                                         ; $5e6e: $ab
    pop hl                                        ; $5e6f: $e1
    or l                                          ; $5e70: $b5
    db $eb                                        ; $5e71: $eb
    rst $18                                       ; $5e72: $df
    nop                                           ; $5e73: $00
    db $fc                                        ; $5e74: $fc
    rst $08                                       ; $5e75: $cf
    ld [hl], l                                    ; $5e76: $75
    db $eb                                        ; $5e77: $eb
    ld l, c                                       ; $5e78: $69
    rst $30                                       ; $5e79: $f7
    ccf                                           ; $5e7a: $3f
    ld sp, hl                                     ; $5e7b: $f9
    inc b                                         ; $5e7c: $04
    cp a                                          ; $5e7d: $bf
    sbc $44                                       ; $5e7e: $de $44
    rst $38                                       ; $5e80: $ff
    add e                                         ; $5e81: $83
    db $d3                                        ; $5e82: $d3
    ld b, $01                                     ; $5e83: $06 $01
    nop                                           ; $5e85: $00
    db $10                                        ; $5e86: $10
    adc d                                         ; $5e87: $8a
    nop                                           ; $5e88: $00
    dec d                                         ; $5e89: $15
    sbc h                                         ; $5e8a: $9c
    nop                                           ; $5e8b: $00
    ld e, l                                       ; $5e8c: $5d
    nop                                           ; $5e8d: $00
    or $00                                        ; $5e8e: $f6 $00
    nop                                           ; $5e90: $00
    ld a, e                                       ; $5e91: $7b
    nop                                           ; $5e92: $00
    pop hl                                        ; $5e93: $e1
    xor e                                         ; $5e94: $ab
    ldh [$b5], a                                  ; $5e95: $e0 $b5
    ldh [$bf], a                                  ; $5e97: $e0 $bf
    sub b                                         ; $5e99: $90
    inc b                                         ; $5e9a: $04
    ld [$bfff], sp                                ; $5e9b: $08 $ff $bf
    ld a, e                                       ; $5e9e: $7b
    ld bc, $d3ff                                  ; $5e9f: $01 $ff $d3
    cp $fe                                        ; $5ea2: $fe $fe
    ld bc, $7dff                                  ; $5ea4: $01 $ff $7d
    rst $38                                       ; $5ea7: $ff
    ld a, a                                       ; $5ea8: $7f
    ld a, a                                       ; $5ea9: $7f
    ld c, a                                       ; $5eaa: $4f
    ld hl, sp+$7b                                 ; $5eab: $f8 $7b
    rla                                           ; $5ead: $17
    add b                                         ; $5eae: $80
    inc bc                                        ; $5eaf: $03
    rlca                                          ; $5eb0: $07
    ld a, $3e                                     ; $5eb1: $3e $3e
    ld e, l                                       ; $5eb3: $5d
    rst $38                                       ; $5eb4: $ff
    cp e                                          ; $5eb5: $bb
    or $fd                                        ; $5eb6: $f6 $fd
    nop                                           ; $5eb8: $00
    rst $38                                       ; $5eb9: $ff

Call_09c_5eba:
    rst $18                                       ; $5eba: $df
    cp a                                          ; $5ebb: $bf
    ld l, l                                       ; $5ebc: $6d
    sub e                                         ; $5ebd: $93
    cp a                                          ; $5ebe: $bf
    pop bc                                        ; $5ebf: $c1
    rlca                                          ; $5ec0: $07
    ld b, b                                       ; $5ec1: $40
    dec b                                         ; $5ec2: $05
    ld [bc], a                                    ; $5ec3: $02
    nop                                           ; $5ec4: $00
    xor l                                         ; $5ec5: $ad
    add a                                         ; $5ec6: $87
    push bc                                       ; $5ec7: $c5
    rst $00                                       ; $5ec8: $c7
    db $ed                                        ; $5ec9: $ed
    rst $00                                       ; $5eca: $c7
    nop                                           ; $5ecb: $00
    ld d, l                                       ; $5ecc: $55
    ld b, a                                       ; $5ecd: $47
    db $ed                                        ; $5ece: $ed
    and a                                         ; $5ecf: $a7
    push af                                       ; $5ed0: $f5
    cp e                                          ; $5ed1: $bb
    push bc                                       ; $5ed2: $c5
    ld a, e                                       ; $5ed3: $7b
    nop                                           ; $5ed4: $00
    sbc l                                         ; $5ed5: $9d
    rst $38                                       ; $5ed6: $ff
    ld de, $c3bf                                  ; $5ed7: $11 $bf $c3
    ld a, a                                       ; $5eda: $7f
    rst $00                                       ; $5edb: $c7
    and a                                         ; $5edc: $a7
    nop                                           ; $5edd: $00
    ld a, l                                       ; $5ede: $7d
    ei                                            ; $5edf: $fb
    rst $08                                       ; $5ee0: $cf
    db $fd                                        ; $5ee1: $fd
    cp $67                                        ; $5ee2: $fe $67
    db $ed                                        ; $5ee4: $ed
    rst $20                                       ; $5ee5: $e7
    nop                                           ; $5ee6: $00
    push af                                       ; $5ee7: $f5
    rst $10                                       ; $5ee8: $d7
    db $fd                                        ; $5ee9: $fd
    rst $28                                       ; $5eea: $ef
    db $dd                                        ; $5eeb: $dd
    adc a                                         ; $5eec: $8f
    db $fd                                        ; $5eed: $fd
    ld b, a                                       ; $5eee: $47
    nop                                           ; $5eef: $00
    cp l                                          ; $5ef0: $bd
    and a                                         ; $5ef1: $a7
    ld e, l                                       ; $5ef2: $5d
    rst $30                                       ; $5ef3: $f7
    dec c                                         ; $5ef4: $0d
    ei                                            ; $5ef5: $fb
    rst $38                                       ; $5ef6: $ff
    or b                                          ; $5ef7: $b0
    nop                                           ; $5ef8: $00
    ld [hl], b                                    ; $5ef9: $70
    ld h, b                                       ; $5efa: $60
    or b                                          ; $5efb: $b0
    inc d                                         ; $5efc: $14
    db $fc                                        ; $5efd: $fc
    ld l, $da                                     ; $5efe: $2e $da
    cp e                                          ; $5f00: $bb
    nop                                           ; $5f01: $00
    db $fd                                        ; $5f02: $fd
    push bc                                       ; $5f03: $c5
    ld a, a                                       ; $5f04: $7f
    cp e                                          ; $5f05: $bb
    ld b, a                                       ; $5f06: $47
    rst $00                                       ; $5f07: $c7
    db $fd                                        ; $5f08: $fd
    ccf                                           ; $5f09: $3f
    ld bc, $177d                                  ; $5f0a: $01 $7d $17
    dec a                                         ; $5f0d: $3d
    rrca                                          ; $5f0e: $0f
    dec e                                         ; $5f0f: $1d
    rrca                                          ; $5f10: $0f
    dec c                                         ; $5f11: $0d
    ld [bc], a                                    ; $5f12: $02
    ld [$cf00], sp                                ; $5f13: $08 $00 $cf
    db $fd                                        ; $5f16: $fd
    db $db                                        ; $5f17: $db
    ld h, a                                       ; $5f18: $67
    ld h, [hl]                                    ; $5f19: $66
    rst $38                                       ; $5f1a: $ff
    db $fd                                        ; $5f1b: $fd
    cp $08                                        ; $5f1c: $fe $08
    cp $e5                                        ; $5f1e: $fe $e5
    ld a, h                                       ; $5f20: $7c
    ei                                            ; $5f21: $fb
    ld [hl], b                                    ; $5f22: $70
    jr jr_09c_5fa4                                ; $5f23: $18 $7f

    cp l                                          ; $5f25: $bd
    rra                                           ; $5f26: $1f
    inc b                                         ; $5f27: $04
    db $fd                                        ; $5f28: $fd
    ccf                                           ; $5f29: $3f
    db $dd                                        ; $5f2a: $dd
    rst $38                                       ; $5f2b: $ff
    ld e, l                                       ; $5f2c: $5d
    add l                                         ; $5f2d: $85
    nop                                           ; $5f2e: $00
    db $fd                                        ; $5f2f: $fd
    rst $38                                       ; $5f30: $ff
    jr nz, jr_09c_5f34                            ; $5f31: $20 $01

    rst $38                                       ; $5f33: $ff

jr_09c_5f34:
    inc e                                         ; $5f34: $1c
    nop                                           ; $5f35: $00
    ld [bc], a                                    ; $5f36: $02
    db $fd                                        ; $5f37: $fd
    and c                                         ; $5f38: $a1
    ld e, [hl]                                    ; $5f39: $5e
    ld [$f708], sp                                ; $5f3a: $08 $08 $f7
    ld [hl+], a                                   ; $5f3d: $22
    rst $38                                       ; $5f3e: $ff
    ld b, l                                       ; $5f3f: $45
    ldh a, [rNR22]                                ; $5f40: $f0 $17
    ld d, h                                       ; $5f42: $54
    xor e                                         ; $5f43: $ab
    xor d                                         ; $5f44: $aa
    inc [hl]                                      ; $5f45: $34
    ld bc, $6c54                                  ; $5f46: $01 $54 $6c
    add hl, bc                                    ; $5f49: $09
    halt                                          ; $5f4a: $76
    ld bc, $7afe                                  ; $5f4b: $01 $fe $7a
    ld bc, $10ef                                  ; $5f4e: $01 $ef $10
    ld bc, $25da                                  ; $5f51: $01 $da $25
    or l                                          ; $5f54: $b5
    ld c, d                                       ; $5f55: $4a
    ld c, b                                       ; $5f56: $48
    or a                                          ; $5f57: $b7
    ld [bc], a                                    ; $5f58: $02
    ld [hl], $05                                  ; $5f59: $36 $05
    ret nz                                        ; $5f5b: $c0

    jr nz, jr_09c_5f66                            ; $5f5c: $20 $08

    cp b                                          ; $5f5e: $b8
    dec c                                         ; $5f5f: $0d
    dec bc                                        ; $5f60: $0b
    ld [bc], a                                    ; $5f61: $02
    sub b                                         ; $5f62: $90
    ld bc, $8042                                  ; $5f63: $01 $42 $80

jr_09c_5f66:
    add b                                         ; $5f66: $80
    ret c                                         ; $5f67: $d8

    dec bc                                        ; $5f68: $0b
    xor d                                         ; $5f69: $aa
    db $10                                        ; $5f6a: $10
    ld [$010f], sp                                ; $5f6b: $08 $0f $01
    ld b, $20                                     ; $5f6e: $06 $20
    nop                                           ; $5f70: $00
    inc bc                                        ; $5f71: $03
    add d                                         ; $5f72: $82
    ld bc, $86cf                                  ; $5f73: $01 $cf $86
    ld h, a                                       ; $5f76: $67
    ld e, b                                       ; $5f77: $58
    rra                                           ; $5f78: $1f
    nop                                           ; $5f79: $00
    jr nz, @-$6f                                  ; $5f7a: $20 $8f

    stop                                          ; $5f7c: $10 $00
    rst $38                                       ; $5f7e: $ff
    cp $01                                        ; $5f7f: $fe $01
    ld d, l                                       ; $5f81: $55
    inc bc                                        ; $5f82: $03
    xor e                                         ; $5f83: $ab
    xor d                                         ; $5f84: $aa
    ld d, l                                       ; $5f85: $55
    ld bc, $abff                                  ; $5f86: $01 $ff $ab
    inc b                                         ; $5f89: $04
    ld [$0063], sp                                ; $5f8a: $08 $63 $00
    ld d, h                                       ; $5f8d: $54
    xor e                                         ; $5f8e: $ab
    ld [hl], b                                    ; $5f8f: $70
    ld d, l                                       ; $5f90: $55
    db $f4                                        ; $5f91: $f4
    ret z                                         ; $5f92: $c8

    ld [de], a                                    ; $5f93: $12
    or a                                          ; $5f94: $b7
    ret z                                         ; $5f95: $c8

    ld b, $77                                     ; $5f96: $06 $77
    ret nz                                        ; $5f98: $c0

    nop                                           ; $5f99: $00
    rra                                           ; $5f9a: $1f
    ldh [rKEY1], a                                ; $5f9b: $e0 $4d
    or b                                          ; $5f9d: $b0
    ld c, a                                       ; $5f9e: $4f
    ld [$0417], sp                                ; $5f9f: $08 $17 $04
    nop                                           ; $5fa2: $00
    ld b, c                                       ; $5fa3: $41

jr_09c_5fa4:
    ld [bc], a                                    ; $5fa4: $02
    sub e                                         ; $5fa5: $93
    ld bc, $86cb                                  ; $5fa6: $01 $cb $86
    rst $28                                       ; $5fa9: $ef
    ld e, b                                       ; $5faa: $58
    nop                                           ; $5fab: $00

jr_09c_5fac:
    ld e, [hl]                                    ; $5fac: $5e
    jr nz, jr_09c_5fac                            ; $5fad: $20 $fd

    db $10                                        ; $5faf: $10
    rlca                                          ; $5fb0: $07
    ld hl, sp+$43                                 ; $5fb1: $f8 $43
    cp h                                          ; $5fb3: $bc
    inc a                                         ; $5fb4: $3c
    inc bc                                        ; $5fb5: $03
    cp $80                                        ; $5fb6: $fe $80
    ld b, a                                       ; $5fb8: $47
    nop                                           ; $5fb9: $00
    ld b, $80                                     ; $5fba: $06 $80
    ld c, a                                       ; $5fbc: $4f
    ld b, b                                       ; $5fbd: $40
    cpl                                           ; $5fbe: $2f
    rst $38                                       ; $5fbf: $ff
    add b                                         ; $5fc0: $80
    nop                                           ; $5fc1: $00
    ld a, [$ffc0]                                 ; $5fc2: $fa $c0 $ff
    ldh [rIE], a                                  ; $5fc5: $e0 $ff
    ldh a, [$7f]                                  ; $5fc7: $f0 $7f
    ld hl, sp+$00                                 ; $5fc9: $f8 $00
    rst $38                                       ; $5fcb: $ff
    ld a, h                                       ; $5fcc: $7c
    rst $18                                       ; $5fcd: $df
    ld a, $6f                                     ; $5fce: $3e $6f
    rra                                           ; $5fd0: $1f
    rst $38                                       ; $5fd1: $ff
    rrca                                          ; $5fd2: $0f
    ld [bc], a                                    ; $5fd3: $02
    cp e                                          ; $5fd4: $bb
    rlca                                          ; $5fd5: $07
    db $ed                                        ; $5fd6: $ed
    inc bc                                        ; $5fd7: $03
    rst $38                                       ; $5fd8: $ff
    ld bc, $2eb0                                  ; $5fd9: $01 $b0 $2e
    ld b, [hl]                                    ; $5fdc: $46
    adc l                                         ; $5fdd: $8d
    ld [hl], b                                    ; $5fde: $70
    dec b                                         ; $5fdf: $05
    call nc, $a820                                ; $5fe0: $d4 $20 $a8
    cp b                                          ; $5fe3: $b8
    inc b                                         ; $5fe4: $04
    or b                                          ; $5fe5: $b0
    ld e, $48                                     ; $5fe6: $1e $48
    ld a, b                                       ; $5fe8: $78
    inc b                                         ; $5fe9: $04
    ld h, d                                       ; $5fea: $62
    dec d                                         ; $5feb: $15
    ld a, b                                       ; $5fec: $78
    inc b                                         ; $5fed: $04
    or b                                          ; $5fee: $b0
    ld l, $7f                                     ; $5fef: $2e $7f
    add [hl]                                      ; $5ff1: $86
    daa                                           ; $5ff2: $27
    or b                                          ; $5ff3: $b0
    nop                                           ; $5ff4: $00
    dec e                                         ; $5ff5: $1d
    and b                                         ; $5ff6: $a0
    ld [hl], b                                    ; $5ff7: $70
    rlca                                          ; $5ff8: $07
    ld e, [hl]                                    ; $5ff9: $5e
    jr nz, jr_09c_6013                            ; $5ffa: $20 $17

    db $db                                        ; $5ffc: $db
    add b                                         ; $5ffd: $80
    db $fc                                        ; $5ffe: $fc
    jp $02f7                                      ; $5fff: $c3 $f7 $02


    db $ec                                        ; $6002: $ec
    rst $38                                       ; $6003: $ff
    ldh a, [rLY]                                  ; $6004: $f0 $44
    ld [$f092], sp                                ; $6006: $08 $92 $f0
    ld b, $85                                     ; $6009: $06 $85
    jr nz, jr_09c_600e                            ; $600b: $20 $01

    ld d, b                                       ; $600d: $50

jr_09c_600e:
    ldh [rP1], a                                  ; $600e: $e0 $00
    ldh a, [rNR41]                                ; $6010: $f0 $20
    ld a, b                                       ; $6012: $78

jr_09c_6013:
    db $10                                        ; $6013: $10
    ld b, a                                       ; $6014: $47
    nop                                           ; $6015: $00
    ld [$048f], sp                                ; $6016: $08 $8f $04
    inc hl                                        ; $6019: $23
    ld a, [de]                                    ; $601a: $1a
    add b                                         ; $601b: $80
    ld h, c                                       ; $601c: $61
    call nz, $b880                                ; $601d: $c4 $80 $b8
    inc b                                         ; $6020: $04
    ld [de], a                                    ; $6021: $12
    jr nz, jr_09c_5fac                            ; $6022: $20 $88

    db $10                                        ; $6024: $10
    ld a, a                                       ; $6025: $7f
    ld hl, sp-$42                                 ; $6026: $f8 $be
    add b                                         ; $6028: $80
    ld [hl], b                                    ; $6029: $70
    nop                                           ; $602a: $00
    sbc a                                         ; $602b: $9f
    rst $18                                       ; $602c: $df
    rlca                                          ; $602d: $07
    rrca                                          ; $602e: $0f
    inc bc                                        ; $602f: $03
    rlca                                          ; $6030: $07
    ld hl, $0300                                  ; $6031: $21 $00 $03
    adc b                                         ; $6034: $88
    ld bc, $08fc                                  ; $6035: $01 $fc $08
    sbc $04                                       ; $6038: $de $04
    rst $38                                       ; $603a: $ff
    add b                                         ; $603b: $80
    ret nc                                        ; $603c: $d0

    dec b                                         ; $603d: $05
    rst $38                                       ; $603e: $ff
    add b                                         ; $603f: $80
    db $ed                                        ; $6040: $ed
    ret nz                                        ; $6041: $c0

    or $e1                                        ; $6042: $f6 $e1
    ld hl, sp+$02                                 ; $6044: $f8 $02
    rst $30                                       ; $6046: $f7
    inc d                                         ; $6047: $14
    ld [$344a], sp                                ; $6048: $08 $4a $34
    dec a                                         ; $604b: $3d
    ret nc                                        ; $604c: $d0

    rlca                                          ; $604d: $07
    ld l, a                                       ; $604e: $6f
    nop                                           ; $604f: $00
    add b                                         ; $6050: $80
    cp [hl]                                       ; $6051: $be
    ld b, b                                       ; $6052: $40
    dec e                                         ; $6053: $1d
    ldh [rIF], a                                  ; $6054: $e0 $0f
    ldh a, [$79]                                  ; $6056: $f0 $79
    nop                                           ; $6058: $00
    cp $3c                                        ; $6059: $fe $3c
    ld a, a                                       ; $605b: $7f
    ld a, $3f                                     ; $605c: $3e $3f
    rra                                           ; $605e: $1f
    rra                                           ; $605f: $1f
    ld c, a                                       ; $6060: $4f
    xor d                                         ; $6061: $aa
    jr nc, jr_09c_6064                            ; $6062: $30 $00

jr_09c_6064:
    ld de, $0658                                  ; $6064: $11 $58 $06
    ld b, $e0                                     ; $6067: $06 $e0
    nop                                           ; $6069: $00
    ld bc, $00e0                                  ; $606a: $01 $e0 $00
    add h                                         ; $606d: $84
    ld b, b                                       ; $606e: $40
    ei                                            ; $606f: $fb
    cp a                                          ; $6070: $bf
    ld [$fdf2], sp                                ; $6071: $08 $f2 $fd
    ld hl, sp-$01                                 ; $6074: $f8 $ff
    db $fc                                        ; $6076: $fc
    ld a, a                                       ; $6077: $7f
    nop                                           ; $6078: $00
    ld e, [hl]                                    ; $6079: $5e
    ccf                                           ; $607a: $3f
    rst $38                                       ; $607b: $ff
    rra                                           ; $607c: $1f
    rst $30                                       ; $607d: $f7
    rrca                                          ; $607e: $0f
    db $db                                        ; $607f: $db
    rlca                                          ; $6080: $07
    db $10                                        ; $6081: $10

Jump_09c_6082:
    db $fd                                        ; $6082: $fd
    inc bc                                        ; $6083: $03
    ld [$04c0], a                                 ; $6084: $ea $c0 $04
    rst $38                                       ; $6087: $ff
    ld b, b                                       ; $6088: $40
    ld a, [$4520]                                 ; $6089: $fa $20 $45
    cp a                                          ; $608c: $bf
    ld b, b                                       ; $608d: $40
    dec b                                         ; $608e: $05
    call c, $7e07                                 ; $608f: $dc $07 $7e
    ld e, b                                       ; $6092: $58
    rlca                                          ; $6093: $07
    rst $28                                       ; $6094: $ef
    ret nc                                        ; $6095: $d0

    dec b                                         ; $6096: $05
    ld de, $20db                                  ; $6097: $11 $db $20
    ld c, $00                                     ; $609a: $0e $00
    dec b                                         ; $609c: $05
    inc bc                                        ; $609d: $03
    inc b                                         ; $609e: $04
    ld d, e                                       ; $609f: $53
    ldh [rTIMA], a                                ; $60a0: $e0 $05
    nop                                           ; $60a2: $00
    ret nz                                        ; $60a3: $c0

    add b                                         ; $60a4: $80
    inc h                                         ; $60a5: $24
    ret nz                                        ; $60a6: $c0

    ld sp, $18e0                                  ; $60a7: $31 $e0 $18
    ldh a, [rP1]                                  ; $60aa: $f0 $00
    add h                                         ; $60ac: $84
    ld a, b                                       ; $60ad: $78
    ld [hl+], a                                   ; $60ae: $22
    call c, $7e83                                 ; $60af: $dc $83 $7e
    ld hl, $80df                                  ; $60b2: $21 $df $80
    ld h, b                                       ; $60b5: $60
    inc c                                         ; $60b6: $0c
    rst $18                                       ; $60b7: $df
    jr nz, jr_09c_60d5                            ; $60b8: $20 $1b

    ldh a, [rTAC]                                 ; $60ba: $f0 $07
    ld hl, sp-$79                                 ; $60bc: $f8 $87
    nop                                           ; $60be: $00
    ld a, h                                       ; $60bf: $7c
    ld bc, $24fe                                  ; $60c0: $01 $fe $24
    db $db                                        ; $60c3: $db
    ld b, h                                       ; $60c4: $44
    add b                                         ; $60c5: $80
    and c                                         ; $60c6: $a1
    add c                                         ; $60c7: $81
    ld hl, sp+$00                                 ; $60c8: $f8 $00
    ld a, c                                       ; $60ca: $79
    db $10                                        ; $60cb: $10
    db $fc                                        ; $60cc: $fc
    ld [$057e], sp                                ; $60cd: $08 $7e $05
    add b                                         ; $60d0: $80
    dec c                                         ; $60d1: $0d
    inc b                                         ; $60d2: $04
    ld d, l                                       ; $60d3: $55
    xor d                                         ; $60d4: $aa

jr_09c_60d5:
    nop                                           ; $60d5: $00
    add b                                         ; $60d6: $80
    ld a, [hl+]                                   ; $60d7: $2a
    ld l, l                                       ; $60d8: $6d
    inc de                                        ; $60d9: $13
    ld a, [bc]                                    ; $60da: $0a
    add b                                         ; $60db: $80
    ld b, h                                       ; $60dc: $44
    ld d, l                                       ; $60dd: $55
    ld [hl], l                                    ; $60de: $75
    inc bc                                        ; $60df: $03
    ld d, l                                       ; $60e0: $55
    xor d                                         ; $60e1: $aa
    ld [bc], a                                    ; $60e2: $02
    inc de                                        ; $60e3: $13
    inc bc                                        ; $60e4: $03
    ld d, b                                       ; $60e5: $50
    nop                                           ; $60e6: $00
    ld h, b                                       ; $60e7: $60
    ld a, [bc]                                    ; $60e8: $0a
    ld b, d                                       ; $60e9: $42
    inc bc                                        ; $60ea: $03
    inc e                                         ; $60eb: $1c
    inc de                                        ; $60ec: $13
    rst $38                                       ; $60ed: $ff
    add h                                         ; $60ee: $84
    ld a, e                                       ; $60ef: $7b
    ldh [$3f], a                                  ; $60f0: $e0 $3f
    nop                                           ; $60f2: $00
    ld a, [c]                                     ; $60f3: $f2
    dec e                                         ; $60f4: $1d
    ld [hl], b                                    ; $60f5: $70
    rrca                                          ; $60f6: $0f
    db $e4                                        ; $60f7: $e4
    scf                                           ; $60f8: $37
    ld [bc], a                                    ; $60f9: $02
    jp $8940                                      ; $60fa: $c3 $40 $89


    add b                                         ; $60fd: $80
    ld b, $3f                                     ; $60fe: $06 $3f
    ret nz                                        ; $6100: $c0

    dec a                                         ; $6101: $3d
    ldh [$8f], a                                  ; $6102: $e0 $8f
    ld [hl], b                                    ; $6104: $70
    nop                                           ; $6105: $00
    ld b, $f8                                     ; $6106: $06 $f8
    ld d, d                                       ; $6108: $52
    xor l                                         ; $6109: $ad
    add hl, bc                                    ; $610a: $09
    or $10                                        ; $610b: $f6 $10
    rst $28                                       ; $610d: $ef
    nop                                           ; $610e: $00
    push de                                       ; $610f: $d5
    xor d                                         ; $6110: $aa
    ld a, a                                       ; $6111: $7f
    add b                                         ; $6112: $80
    ld a, [$788f]                                 ; $6113: $fa $8f $78
    adc a                                         ; $6116: $8f
    nop                                           ; $6117: $00
    rst $38                                       ; $6118: $ff
    adc b                                         ; $6119: $88
    ld a, c                                       ; $611a: $79
    adc b                                         ; $611b: $88
    db $fc                                        ; $611c: $fc
    adc d                                         ; $611d: $8a
    ld a, d                                       ; $611e: $7a
    adc l                                         ; $611f: $8d
    ld b, b                                       ; $6120: $40
    ld d, l                                       ; $6121: $55
    ld [hl], e                                    ; $6122: $73
    rlca                                          ; $6123: $07
    cp a                                          ; $6124: $bf
    ldh [$3f], a                                  ; $6125: $e0 $3f
    ldh [$bf], a                                  ; $6127: $e0 $bf
    ld h, b                                       ; $6129: $60
    nop                                           ; $612a: $00
    ld a, a                                       ; $612b: $7f
    jr nz, jr_09c_61ad                            ; $612c: $20 $7f

    and b                                         ; $612e: $a0
    cp a                                          ; $612f: $bf
    ld h, b                                       ; $6130: $60
    ld b, b                                       ; $6131: $40
    add b                                         ; $6132: $80
    inc e                                         ; $6133: $1c
    ld l, d                                       ; $6134: $6a
    ld b, b                                       ; $6135: $40
    ld de, $0118                                  ; $6136: $11 $18 $01
    ld hl, sp+$08                                 ; $6139: $f8 $08
    or b                                          ; $613b: $b0
    ld c, $02                                     ; $613c: $0e $02
    db $fd                                        ; $613e: $fd
    nop                                           ; $613f: $00
    nop                                           ; $6140: $00
    ld a, a                                       ; $6141: $7f
    inc h                                         ; $6142: $24
    dec sp                                        ; $6143: $3b
    ld d, b                                       ; $6144: $50
    rra                                           ; $6145: $1f
    add b                                         ; $6146: $80
    rrca                                          ; $6147: $0f
    ld b, h                                       ; $6148: $44
    inc h                                         ; $6149: $24
    ld c, b                                       ; $614a: $48

Jump_09c_614b:
    rlca                                          ; $614b: $07
    add b                                         ; $614c: $80
    ld bc, $3cf8                                  ; $614d: $01 $f8 $3c
    ld [$7d8f], sp                                ; $6150: $08 $8f $7d
    nop                                           ; $6153: $00
    adc d                                         ; $6154: $8a
    rst $38                                       ; $6155: $ff
    adc a                                         ; $6156: $8f
    ld a, a                                       ; $6157: $7f
    add b                                         ; $6158: $80
    ret nz                                        ; $6159: $c0

    add b                                         ; $615a: $80
    add b                                         ; $615b: $80
    ld hl, $3fff                                  ; $615c: $21 $ff $3f
    inc a                                         ; $615f: $3c
    nop                                           ; $6160: $00
    rst $38                                       ; $6161: $ff
    ldh [$5f], a                                  ; $6162: $e0 $5f
    and b                                         ; $6164: $a0
    cp h                                          ; $6165: $bc
    ld bc, $7eb3                                  ; $6166: $01 $b3 $7e
    db $10                                        ; $6169: $10
    xor d                                         ; $616a: $aa
    sub b                                         ; $616b: $90
    inc b                                         ; $616c: $04
    and d                                         ; $616d: $a2
    ccf                                           ; $616e: $3f
    ld a, a                                       ; $616f: $7f
    add b                                         ; $6170: $80
    jp nc, $a20f                                  ; $6171: $d2 $0f $a2

    ld b, a                                       ; $6174: $47
    push bc                                       ; $6175: $c5
    call c, Call_09c_4e0f                         ; $6176: $dc $0f $4e
    inc bc                                        ; $6179: $03
    nop                                           ; $617a: $00
    nop                                           ; $617b: $00
    sub b                                         ; $617c: $90
    ret                                           ; $617d: $c9


    inc bc                                        ; $617e: $03
    dec b                                         ; $617f: $05
    call $0403                                    ; $6180: $cd $03 $04
    ld d, h                                       ; $6183: $54
    xor e                                         ; $6184: $ab
    nop                                           ; $6185: $00
    ld bc, $a044                                  ; $6186: $01 $44 $a0
    ld [de], a                                    ; $6189: $12
    xor d                                         ; $618a: $aa
    ld bc, $4060                                  ; $618b: $01 $60 $40
    ld a, [de]                                    ; $618e: $1a
    inc b                                         ; $618f: $04
    jr nz, jr_09c_61b0                            ; $6190: $20 $1e

    ld l, l                                       ; $6192: $6d
    db $10                                        ; $6193: $10
    cp $08                                        ; $6194: $fe $08
    db $eb                                        ; $6196: $eb
    ld c, $04                                     ; $6197: $0e $04
    db $dd                                        ; $6199: $dd

Jump_09c_619a:
    ld [bc], a                                    ; $619a: $02
    xor $f0                                       ; $619b: $ee $f0
    nop                                           ; $619d: $00
    ld de, $0414                                  ; $619e: $11 $14 $04
    jr nc, jr_09c_61f8                            ; $61a1: $30 $55

    ld [hl], c                                    ; $61a3: $71
    xor e                                         ; $61a4: $ab
    ld d, h                                       ; $61a5: $54
    dec b                                         ; $61a6: $05
    jp z, $0402                                   ; $61a7: $ca $02 $04

    jr z, jr_09c_622b                             ; $61aa: $28 $7f

    add b                                         ; $61ac: $80

jr_09c_61ad:
    ld a, [hl-]                                   ; $61ad: $3a
    nop                                           ; $61ae: $00
    rlca                                          ; $61af: $07

jr_09c_61b0:
    nop                                           ; $61b0: $00
    rra                                           ; $61b1: $1f
    ldh a, [$4c]                                  ; $61b2: $f0 $4c
    cp e                                          ; $61b4: $bb
    ld b, $fc                                     ; $61b5: $06 $fc
    ld b, e                                       ; $61b7: $43
    cp [hl]                                       ; $61b8: $be
    jr c, jr_09c_61c3                             ; $61b9: $38 $08

    rst $30                                       ; $61bb: $f7
    ld l, $48                                     ; $61bc: $2e $48
    ld c, $09                                     ; $61be: $0e $09
    inc l                                         ; $61c0: $2c
    ld c, b                                       ; $61c1: $48
    inc bc                                        ; $61c2: $03

jr_09c_61c3:
    ld bc, $8001                                  ; $61c3: $01 $01 $80
    sub d                                         ; $61c6: $92
    inc b                                         ; $61c7: $04
    jp nc, $e06d                                  ; $61c8: $d2 $6d $e0

    ccf                                           ; $61cb: $3f
    ld [hl], d                                    ; $61cc: $72
    dec e                                         ; $61cd: $1d
    ldh a, [rSB]                                  ; $61ce: $f0 $01
    ld l, a                                       ; $61d0: $6f
    ld a, h                                       ; $61d1: $7c
    add a                                         ; $61d2: $87
    or $03                                        ; $61d3: $f6 $03
    rst $18                                       ; $61d5: $df
    ld bc, $5ad2                                  ; $61d6: $01 $d2 $5a

jr_09c_61d9:
    jr nz, jr_09c_61d9                            ; $61d9: $20 $fe

    ld bc, $0920                                  ; $61db: $01 $20 $09
    rst $38                                       ; $61de: $ff
    add b                                         ; $61df: $80
    ld a, b                                       ; $61e0: $78
    add b                                         ; $61e1: $80
    ld hl, sp+$60                                 ; $61e2: $f8 $60
    add e                                         ; $61e4: $83
    inc b                                         ; $61e5: $04
    jr @-$7e                                      ; $61e6: $18 $80

    jr jr_09c_61f9                                ; $61e8: $18 $0f

    nop                                           ; $61ea: $00
    xor a                                         ; $61eb: $af
    ld b, b                                       ; $61ec: $40
    rrca                                          ; $61ed: $0f
    ld bc, $4f00                                  ; $61ee: $01 $00 $4f
    add b                                         ; $61f1: $80
    rrca                                          ; $61f2: $0f
    nop                                           ; $61f3: $00
    ld sp, hl                                     ; $61f4: $f9
    add d                                         ; $61f5: $82
    inc e                                         ; $61f6: $1c
    nop                                           ; $61f7: $00

jr_09c_61f8:
    xor l                                         ; $61f8: $ad

jr_09c_61f9:
    jr nz, jr_09c_6203                            ; $61f9: $20 $08

    add a                                         ; $61fb: $87
    nop                                           ; $61fc: $00
    add hl, de                                    ; $61fd: $19
    ld c, a                                       ; $61fe: $4f
    inc e                                         ; $61ff: $1c

Call_09c_6200:
    nop                                           ; $6200: $00
    ld [bc], a                                    ; $6201: $02
    db $10                                        ; $6202: $10

jr_09c_6203:
    ldh a, [rP1]                                  ; $6203: $f0 $00
    add hl, de                                    ; $6205: $19
    ld bc, $8080                                  ; $6206: $01 $80 $80
    ld d, h                                       ; $6209: $54
    add b                                         ; $620a: $80
    adc d                                         ; $620b: $8a
    add b                                         ; $620c: $80
    ld a, a                                       ; $620d: $7f
    ld a, [de]                                    ; $620e: $1a
    ld bc, $8015                                  ; $620f: $01 $15 $80
    rst $38                                       ; $6212: $ff
    di                                            ; $6213: $f3
    ld [bc], a                                    ; $6214: $02
    nop                                           ; $6215: $00
    ld b, l                                       ; $6216: $45
    or c                                          ; $6217: $b1
    inc b                                         ; $6218: $04
    ld a, [hl+]                                   ; $6219: $2a
    ret c                                         ; $621a: $d8

jr_09c_621b:
    inc h                                         ; $621b: $24
    add d                                         ; $621c: $82
    inc sp                                        ; $621d: $33
    dec bc                                        ; $621e: $0b
    ld d, b                                       ; $621f: $50
    nop                                           ; $6220: $00
    ld [bc], a                                    ; $6221: $02
    nop                                           ; $6222: $00
    inc d                                         ; $6223: $14
    db $10                                        ; $6224: $10
    ld b, b                                       ; $6225: $40
    dec bc                                        ; $6226: $0b
    inc c                                         ; $6227: $0c
    ld bc, $0184                                  ; $6228: $01 $84 $01

jr_09c_622b:
    ld bc, $039a                                  ; $622b: $01 $9a $03
    push de                                       ; $622e: $d5
    nop                                           ; $622f: $00
    rst $38                                       ; $6230: $ff
    rst $08                                       ; $6231: $cf
    add b                                         ; $6232: $80
    ld [bc], a                                    ; $6233: $02
    nop                                           ; $6234: $00
    db $fd                                        ; $6235: $fd
    add b                                         ; $6236: $80
    ld a, e                                       ; $6237: $7b
    ld b, b                                       ; $6238: $40
    rra                                           ; $6239: $1f
    jr nz, jr_09c_627a                            ; $623a: $20 $3e

    ld [bc], a                                    ; $623c: $02
    db $10                                        ; $623d: $10
    cp a                                          ; $623e: $bf
    ld l, b                                       ; $623f: $68
    ei                                            ; $6240: $fb
    add h                                         ; $6241: $84
    db $ed                                        ; $6242: $ed
    ldh a, [rTAC]                                 ; $6243: $f0 $07
    inc h                                         ; $6245: $24
    nop                                           ; $6246: $00
    db $db                                        ; $6247: $db
    pop bc                                        ; $6248: $c1
    ld a, [hl]                                    ; $6249: $7e
    ldh [$3f], a                                  ; $624a: $e0 $3f
    ld [c], a                                     ; $624c: $e2
    dec e                                         ; $624d: $1d
    ld hl, sp+$0f                                 ; $624e: $f8 $0f
    rrca                                          ; $6250: $0f
    ld e, b                                       ; $6251: $58
    rlca                                          ; $6252: $07
    xor $50                                       ; $6253: $ee $50
    rlca                                          ; $6255: $07
    and b                                         ; $6256: $a0
    jr jr_09c_625d                                ; $6257: $18 $04

    jr c, jr_09c_621b                             ; $6259: $38 $c0

    add hl, bc                                    ; $625b: $09
    ld a, b                                       ; $625c: $78

jr_09c_625d:
    cp $da                                        ; $625d: $fe $da
    inc bc                                        ; $625f: $03
    inc b                                         ; $6260: $04
    ld e, b                                       ; $6261: $58
    ld a, [bc]                                    ; $6262: $0a
    inc b                                         ; $6263: $04
    nop                                           ; $6264: $00
    ld hl, $8048                                  ; $6265: $21 $48 $80
    ld hl, $c000                                  ; $6268: $21 $00 $c0
    ld [hl-], a                                   ; $626b: $32
    ldh [$58], a                                  ; $626c: $e0 $58
    or b                                          ; $626e: $b0
    adc h                                         ; $626f: $8c
    ld a, b                                       ; $6270: $78
    ld a, $20                                     ; $6271: $3e $20
    db $f4                                        ; $6273: $f4
    db $fd                                        ; $6274: $fd
    ret nc                                        ; $6275: $d0

    ld bc, $807f                                  ; $6276: $01 $7f $80
    dec [hl]                                      ; $6279: $35

jr_09c_627a:
    ld b, b                                       ; $627a: $40
    ccf                                           ; $627b: $3f
    add e                                         ; $627c: $83
    ret c                                         ; $627d: $d8

    inc bc                                        ; $627e: $03
    rrca                                          ; $627f: $0f
    ld [$0422], sp                                ; $6280: $08 $22 $04
    inc de                                        ; $6283: $13
    add b                                         ; $6284: $80
    ld [bc], a                                    ; $6285: $02
    nop                                           ; $6286: $00
    ld a, [bc]                                    ; $6287: $0a
    nop                                           ; $6288: $00
    rlca                                          ; $6289: $07
    ld hl, sp+$02                                 ; $628a: $f8 $02
    dec b                                         ; $628c: $05
    dec b                                         ; $628d: $05
    ld [hl], d                                    ; $628e: $72

Jump_09c_628f:
    dec b                                         ; $628f: $05
    ld [bc], a                                    ; $6290: $02
    ld [$6215], sp                                ; $6291: $08 $15 $62
    dec b                                         ; $6294: $05
    ld [bc], a                                    ; $6295: $02
    ld h, b                                       ; $6296: $60
    add hl, bc                                    ; $6297: $09
    inc bc                                        ; $6298: $03
    db $fd                                        ; $6299: $fd
    ld [bc], a                                    ; $629a: $02
    nop                                           ; $629b: $00
    dec b                                         ; $629c: $05
    ld b, e                                       ; $629d: $43
    dec [hl]                                      ; $629e: $35
    ld [bc], a                                    ; $629f: $02
    dec b                                         ; $62a0: $05
    inc bc                                        ; $62a1: $03
    ld [hl], l                                    ; $62a2: $75
    ld [bc], a                                    ; $62a3: $02
    ld c, [hl]                                    ; $62a4: $4e
    dec b                                         ; $62a5: $05
    inc d                                         ; $62a6: $14
    ld [$fa05], sp                                ; $62a7: $08 $05 $fa
    call c, $5e14                                 ; $62aa: $dc $14 $5e
    ld [de], a                                    ; $62ad: $12
    jr jr_09c_62c0                                ; $62ae: $18 $10

    db $fd                                        ; $62b0: $fd
    ld h, c                                       ; $62b1: $61
    cp $6c                                        ; $62b2: $fe $6c
    inc b                                         ; $62b4: $04
    ld d, b                                       ; $62b5: $50
    add hl, de                                    ; $62b6: $19
    ld d, l                                       ; $62b7: $55
    xor d                                         ; $62b8: $aa
    cp $00                                        ; $62b9: $fe $00
    ld [bc], a                                    ; $62bb: $02
    ld [$e000], sp                                ; $62bc: $08 $00 $e0
    nop                                           ; $62bf: $00

jr_09c_62c0:
    ld [c], a                                     ; $62c0: $e2
    dec c                                         ; $62c1: $0d
    ldh [rP1], a                                  ; $62c2: $e0 $00
    pop hl                                        ; $62c4: $e1
    ld c, $06                                     ; $62c5: $0e $06
    ldh [rP1], a                                  ; $62c7: $e0 $00
    push hl                                       ; $62c9: $e5
    ld [$0ee0], sp                                ; $62ca: $08 $e0 $0e
    nop                                           ; $62cd: $00
    inc b                                         ; $62ce: $04
    nop                                           ; $62cf: $00
    rra                                           ; $62d0: $1f
    add b                                         ; $62d1: $80
    adc [hl]                                      ; $62d2: $8e
    ld a, [bc]                                    ; $62d3: $0a
    ld d, c                                       ; $62d4: $51
    add b                                         ; $62d5: $80
    and l                                         ; $62d6: $a5
    ld b, e                                       ; $62d7: $43
    ret nc                                        ; $62d8: $d0

    cpl                                           ; $62d9: $2f
    ld h, b                                       ; $62da: $60
    ld [bc], a                                    ; $62db: $02
    rra                                           ; $62dc: $1f
    ld a, [c]                                     ; $62dd: $f2
    dec c                                         ; $62de: $0d
    cp h                                          ; $62df: $bc
    rlca                                          ; $62e0: $07
    db $ec                                        ; $62e1: $ec
    ret nc                                        ; $62e2: $d0

    inc bc                                        ; $62e3: $03
    ld e, e                                       ; $62e4: $5b
    nop                                           ; $62e5: $00
    add b                                         ; $62e6: $80
    cp a                                          ; $62e7: $bf
    ld b, b                                       ; $62e8: $40
    dec de                                        ; $62e9: $1b
    and b                                         ; $62ea: $a0
    rrca                                          ; $62eb: $0f
    db $10                                        ; $62ec: $10
    add a                                         ; $62ed: $87
    ld [bc], a                                    ; $62ee: $02
    ld [$0502], sp                                ; $62ef: $08 $02 $05
    ld d, c                                       ; $62f2: $51
    ld [bc], a                                    ; $62f3: $02
    add c                                         ; $62f4: $81
    ldh [rNR42], a                                ; $62f5: $e0 $21
    add c                                         ; $62f7: $81
    nop                                           ; $62f8: $00
    ld a, [hl]                                    ; $62f9: $7e
    add b                                         ; $62fa: $80
    ld b, c                                       ; $62fb: $41
    add c                                         ; $62fc: $81
    ld e, h                                       ; $62fd: $5c
    add c                                         ; $62fe: $81
    ld b, b                                       ; $62ff: $40
    add l                                         ; $6300: $85
    ld b, b                                       ; $6301: $40
    ld e, b                                       ; $6302: $58
    ldh a, [rNR24]                                ; $6303: $f0 $19
    ret nz                                        ; $6305: $c0

    ccf                                           ; $6306: $3f
    add b                                         ; $6307: $80
    ld b, c                                       ; $6308: $41
    ld d, b                                       ; $6309: $50
    adc l                                         ; $630a: $8d
    ld [$8140], sp                                ; $630b: $08 $40 $81
    ld b, b                                       ; $630e: $40
    sbc l                                         ; $630f: $9d
    inc d                                         ; $6310: $14
    ld [$4081], sp                                ; $6311: $08 $81 $40
    add c                                         ; $6314: $81
    ld [de], a                                    ; $6315: $12
    ld a, [hl]                                    ; $6316: $7e
    rst $38                                       ; $6317: $ff
    ld a, a                                       ; $6318: $7f
    ld h, b                                       ; $6319: $60

jr_09c_631a:
    ld a, [de]                                    ; $631a: $1a
    ld b, b                                       ; $631b: $40
    add c                                         ; $631c: $81
    jr jr_09c_632f                                ; $631d: $18 $10

    cp a                                          ; $631f: $bf
    ldh [$6e], a                                  ; $6320: $e0 $6e
    dec c                                         ; $6322: $0d
    xor $0a                                       ; $6323: $ee $0a
    ld d, b                                       ; $6325: $50
    ld [$20fb], sp                                ; $6326: $08 $fb $20
    rst $28                                       ; $6329: $ef
    db $10                                        ; $632a: $10
    sbc $80                                       ; $632b: $de $80
    ld e, b                                       ; $632d: $58
    inc b                                         ; $632e: $04

jr_09c_632f:
    db $fd                                        ; $632f: $fd
    ld [bc], a                                    ; $6330: $02
    rst $10                                       ; $6331: $d7
    ld bc, $807d                                  ; $6332: $01 $7d $80
    dec sp                                        ; $6335: $3b
    nop                                           ; $6336: $00

jr_09c_6337:
    ld b, b                                       ; $6337: $40
    ld e, $21                                     ; $6338: $1e $21
    sbc h                                         ; $633a: $9c
    ld d, $64                                     ; $633b: $16 $64
    ld [$8e02], sp                                ; $633d: $08 $02 $8e
    adc b                                         ; $6340: $88
    inc b                                         ; $6341: $04
    add b                                         ; $6342: $80
    ld bc, $1e81                                  ; $6343: $01 $81 $1e
    rlca                                          ; $6346: $07
    ld [hl+], a                                   ; $6347: $22
    rrca                                          ; $6348: $0f
    ld h, $0f                                     ; $6349: $26 $0f
    xor d                                         ; $634b: $aa
    ret c                                         ; $634c: $d8

    or h                                          ; $634d: $b4
    inc d                                         ; $634e: $14
    and h                                         ; $634f: $a4
    ld [bc], a                                    ; $6350: $02
    ld d, l                                       ; $6351: $55
    ld h, [hl]                                    ; $6352: $66
    ld e, $10                                     ; $6353: $1e $10
    jr jr_09c_6358                                ; $6355: $18 $01

    rst $38                                       ; $6357: $ff

jr_09c_6358:
    add e                                         ; $6358: $83

jr_09c_6359:
    jr jr_09c_63da                                ; $6359: $18 $7f

    ld bc, $6bff                                  ; $635b: $01 $ff $6b
    inc b                                         ; $635e: $04
    inc b                                         ; $635f: $04
    nop                                           ; $6360: $00
    pop bc                                        ; $6361: $c1
    cp a                                          ; $6362: $bf
    ld d, l                                       ; $6363: $55
    nop                                           ; $6364: $00
    xor e                                         ; $6365: $ab
    ld [bc], a                                    ; $6366: $02
    ld bc, $d12b                                  ; $6367: $01 $2b $d1
    ld [bc], a                                    ; $636a: $02
    ld bc, $0013                                  ; $636b: $01 $13 $00
    ld hl, $2182                                  ; $636e: $21 $82 $21
    inc de                                        ; $6371: $13
    ld hl, $2102                                  ; $6372: $21 $02 $21
    inc bc                                        ; $6375: $03
    add b                                         ; $6376: $80
    inc b                                         ; $6377: $04
    ld [$3e3d], sp                                ; $6378: $08 $3d $3e
    ld bc, $013f                 ; $637b: $01 $3f $01
    ld a, $c1                                     ; $637e: $3e $c1
    ld hl, sp-$10                                 ; $6380: $f8 $f0
    jr jr_09c_6359                                ; $6382: $18 $d5

    ld b, $ad                                     ; $6384: $06 $ad
    add hl, bc                                    ; $6386: $09
    inc b                                         ; $6387: $04
    jr nz, jr_09c_631a                            ; $6388: $20 $90

    ld a, [bc]                                    ; $638a: $0a
    ld d, a                                       ; $638b: $57
    db $fd                                        ; $638c: $fd
    cp $00                                        ; $638d: $fe $00
    dec b                                         ; $638f: $05
    rst $38                                       ; $6390: $ff
    ld h, l                                       ; $6391: $65
    cp $f5                                        ; $6392: $fe $f5
    rst $38                                       ; $6394: $ff
    dec b                                         ; $6395: $05
    halt                                          ; $6396: $76
    ld h, b                                       ; $6397: $60
    adc l                                         ; $6398: $8d
    inc e                                         ; $6399: $1c
    ld b, b                                       ; $639a: $40
    adc [hl]                                      ; $639b: $8e
    inc de                                        ; $639c: $13
    xor a                                         ; $639d: $af
    ld d, l                                       ; $639e: $55
    ld d, [hl]                                    ; $639f: $56
    xor l                                         ; $63a0: $ad

jr_09c_63a1:
    rst $38                                       ; $63a1: $ff
    jr jr_09c_63a1                                ; $63a2: $18 $fd

    xor d                                         ; $63a4: $aa
    ld d, l                                       ; $63a5: $55
    or l                                          ; $63a6: $b5
    dec b                                         ; $63a7: $05
    add b                                         ; $63a8: $80
    ld [de], a                                    ; $63a9: $12
    jp $d7ff                                      ; $63aa: $c3 $ff $d7


    ld e, d                                       ; $63ad: $5a
    rst $28                                       ; $63ae: $ef
    inc b                                         ; $63af: $04
    ld c, b                                       ; $63b0: $48
    rst $38                                       ; $63b1: $ff
    ret nz                                        ; $63b2: $c0

    rlca                                          ; $63b3: $07
    and b                                         ; $63b4: $a0
    jr z, jr_09c_6337                             ; $63b5: $28 $80

    add b                                         ; $63b7: $80
    nop                                           ; $63b8: $00
    rst $38                                       ; $63b9: $ff
    ld h, c                                       ; $63ba: $61
    rla                                           ; $63bb: $17
    ld b, e                                       ; $63bc: $43
    inc bc                                        ; $63bd: $03
    inc b                                         ; $63be: $04
    ld b, b                                       ; $63bf: $40
    add e                                         ; $63c0: $83
    rst $38                                       ; $63c1: $ff
    ld b, c                                       ; $63c2: $41
    cp a                                          ; $63c3: $bf
    and b                                         ; $63c4: $a0
    jr z, jr_09c_6407                             ; $63c5: $28 $40

    xor e                                         ; $63c7: $ab
    ld h, e                                       ; $63c8: $63
    ld b, $20                                     ; $63c9: $06 $20
    db $10                                        ; $63cb: $10
    pop af                                        ; $63cc: $f1
    ld a, [bc]                                    ; $63cd: $0a
    ld b, d                                       ; $63ce: $42
    rst $38                                       ; $63cf: $ff
    ld bc, $8360                                  ; $63d0: $01 $60 $83
    rst $38                                       ; $63d3: $ff
    pop bc                                        ; $63d4: $c1
    cp a                                          ; $63d5: $bf
    inc b                                         ; $63d6: $04
    ld c, b                                       ; $63d7: $48
    sub $00                                       ; $63d8: $d6 $00

jr_09c_63da:
    add hl, hl                                    ; $63da: $29
    cp $00                                        ; $63db: $fe $00
    or h                                          ; $63dd: $b4
    nop                                           ; $63de: $00
    ld [$0100], sp                                ; $63df: $08 $00 $01
    nop                                           ; $63e2: $00
    nop                                           ; $63e3: $00
    ld d, $00                                     ; $63e4: $16 $00
    xor l                                         ; $63e6: $ad

jr_09c_63e7:
    nop                                           ; $63e7: $00
    ld e, e                                       ; $63e8: $5b
    nop                                           ; $63e9: $00
    rst $30                                       ; $63ea: $f7
    nop                                           ; $63eb: $00
    ld a, [bc]                                    ; $63ec: $0a
    sub [hl]                                      ; $63ed: $96
    nop                                           ; $63ee: $00
    dec bc                                        ; $63ef: $0b
    nop                                           ; $63f0: $00
    add d                                         ; $63f1: $82
    nop                                           ; $63f2: $00
    ld b, e                                       ; $63f3: $43
    nop                                           ; $63f4: $00
    nop                                           ; $63f5: $00
    add h                                         ; $63f6: $84
    ld [bc], a                                    ; $63f7: $02
    ld l, a                                       ; $63f8: $6f
    nop                                           ; $63f9: $00
    ret c                                         ; $63fa: $d8

    ld [bc], a                                    ; $63fb: $02
    dec hl                                        ; $63fc: $2b
    db $10                                        ; $63fd: $10
    ldh a, [rOCPS]                                ; $63fe: $f0 $6a
    pop af                                        ; $6400: $f1
    inc b                                         ; $6401: $04
    ld c, b                                       ; $6402: $48
    ld d, a                                       ; $6403: $57
    ld a, [$f867]                                 ; $6404: $fa $67 $f8

jr_09c_6407:
    nop                                           ; $6407: $00
    ld d, b                                       ; $6408: $50
    ld a, [$f862]                                 ; $6409: $fa $62 $f8
    ld d, a                                       ; $640c: $57
    ld hl, sp+$60                                 ; $640d: $f8 $60
    ld a, [$5600]                                 ; $640f: $fa $00 $56
    ld hl, sp+$61                                 ; $6412: $f8 $61
    ld a, [$00bd]                                 ; $6414: $fa $bd $00
    rst $28                                       ; $6417: $ef
    nop                                           ; $6418: $00
    nop                                           ; $6419: $00
    cp $01                                        ; $641a: $fe $01
    xor e                                         ; $641c: $ab
    ld d, h                                       ; $641d: $54
    ld b, l                                       ; $641e: $45
    cp d                                          ; $641f: $ba
    and d                                         ; $6420: $a2
    ld e, l                                       ; $6421: $5d
    nop                                           ; $6422: $00
    inc b                                         ; $6423: $04
    ei                                            ; $6424: $fb
    ld b, b                                       ; $6425: $40
    cp a                                          ; $6426: $bf
    cp l                                          ; $6427: $bd
    ld [bc], a                                    ; $6428: $02
    db $fd                                        ; $6429: $fd
    ld [bc], a                                    ; $642a: $02
    nop                                           ; $642b: $00
    ret c                                         ; $642c: $d8

    inc hl                                        ; $642d: $23
    xor l                                         ; $642e: $ad
    ld d, d                                       ; $642f: $52
    ld d, h                                       ; $6430: $54
    xor e                                         ; $6431: $ab
    cpl                                           ; $6432: $2f
    jp nc, Jump_09c_4800                          ; $6433: $d2 $00 $48

    or a                                          ; $6436: $b7
    rlca                                          ; $6437: $07
    ld a, [$fa55]                                 ; $6438: $fa $55 $fa
    ld h, l                                       ; $643b: $65
    ld a, [$5302]                                 ; $643c: $fa $02 $53
    db $fc                                        ; $643f: $fc
    ld h, l                                       ; $6440: $65
    ld a, [$fe50]                                 ; $6441: $fa $50 $fe
    inc b                                         ; $6444: $04
    nop                                           ; $6445: $00
    rst $38                                       ; $6446: $ff
    nop                                           ; $6447: $00
    ld h, a                                       ; $6448: $67
    ld a, [$ff00]                                 ; $6449: $fa $00 $ff
    ld [$10ff], sp                                ; $644c: $08 $ff $10
    rst $38                                       ; $644f: $ff
    db $10                                        ; $6450: $10
    xor b                                         ; $6451: $a8
    rst $38                                       ; $6452: $ff
    ld [hl], l                                    ; $6453: $75
    sbc c                                         ; $6454: $99
    db $10                                        ; $6455: $10
    ld d, l                                       ; $6456: $55
    rst $38                                       ; $6457: $ff
    add d                                         ; $6458: $82
    ld a, a                                       ; $6459: $7f
    ld bc, $ff06                                  ; $645a: $01 $06 $ff
    ld a, [bc]                                    ; $645d: $0a
    rst $38                                       ; $645e: $ff
    sub a                                         ; $645f: $97
    rst $38                                       ; $6460: $ff
    ld a, e                                       ; $6461: $7b
    db $10                                        ; $6462: $10
    jr nz, jr_09c_63e7                            ; $6463: $20 $82

    ld [hl], b                                    ; $6465: $70
    jr z, @-$53                                   ; $6466: $28 $ab

    ldh a, [$ea]                                  ; $6468: $f0 $ea
    pop af                                        ; $646a: $f1
    db $eb                                        ; $646b: $eb
    ld a, h                                       ; $646c: $7c
    nop                                           ; $646d: $00
    ld d, b                                       ; $646e: $50
    nop                                           ; $646f: $00
    rst $38                                       ; $6470: $ff
    ld h, d                                       ; $6471: $62
    rst $38                                       ; $6472: $ff
    ld d, d                                       ; $6473: $52
    rst $38                                       ; $6474: $ff
    ld l, d                                       ; $6475: $6a
    rst $38                                       ; $6476: $ff
    ld e, e                                       ; $6477: $5b
    jr nz, @+$01                                  ; $6478: $20 $ff

    ld a, a                                       ; $647a: $7f
    ld [bc], a                                    ; $647b: $02
    nop                                           ; $647c: $00
    ld [hl], l                                    ; $647d: $75
    rst $38                                       ; $647e: $ff
    xor d                                         ; $647f: $aa
    rst $38                                       ; $6480: $ff
    nop                                           ; $6481: $00
    add [hl]                                      ; $6482: $86
    inc b                                         ; $6483: $04
    jr jr_09c_64db                                ; $6484: $18 $55

    nop                                           ; $6486: $00
    nop                                           ; $6487: $00
    rst $38                                       ; $6488: $ff
    inc c                                         ; $6489: $0c
    jr z, jr_09c_649c                             ; $648a: $28 $10

    jr nc, jr_09c_6496                            ; $648c: $30 $08

    ld b, b                                       ; $648e: $40
    rst $38                                       ; $648f: $ff
    jr c, jr_09c_6492                             ; $6490: $38 $00

jr_09c_6492:
    or c                                          ; $6492: $b1
    sbc e                                         ; $6493: $9b
    ret nc                                        ; $6494: $d0

    ld d, c                                       ; $6495: $51

jr_09c_6496:
    and b                                         ; $6496: $a0
    sub b                                         ; $6497: $90
    ld b, b                                       ; $6498: $40
    ld c, a                                       ; $6499: $4f
    jr nz, jr_09c_64b4                            ; $649a: $20 $18

jr_09c_649c:
    ld e, d                                       ; $649c: $5a
    rst $38                                       ; $649d: $ff
    ld [hl], b                                    ; $649e: $70
    rst $18                                       ; $649f: $df
    jp c, Jump_000_08bf                           ; $64a0: $da $bf $08

    and b                                         ; $64a3: $a0
    ld e, a                                       ; $64a4: $5f
    xor d                                         ; $64a5: $aa
    dec d                                         ; $64a6: $15
    jr nz, jr_09c_64c1                            ; $64a7: $20 $18

    ld d, a                                       ; $64a9: $57
    xor b                                         ; $64aa: $a8
    push de                                       ; $64ab: $d5
    add b                                         ; $64ac: $80
    sbc $00                                       ; $64ad: $de $00
    add hl, hl                                    ; $64af: $29
    nop                                           ; $64b0: $00
    ld d, h                                       ; $64b1: $54
    nop                                           ; $64b2: $00
    xor h                                         ; $64b3: $ac

jr_09c_64b4:
    nop                                           ; $64b4: $00
    db $dd                                        ; $64b5: $dd
    ld [$fb00], sp                                ; $64b6: $08 $00 $fb
    nop                                           ; $64b9: $00
    db $fd                                        ; $64ba: $fd
    or b                                          ; $64bb: $b0
    nop                                           ; $64bc: $00
    sbc b                                         ; $64bd: $98
    ld [bc], a                                    ; $64be: $02
    rlca                                          ; $64bf: $07
    nop                                           ; $64c0: $00

jr_09c_64c1:
    nop                                           ; $64c1: $00
    nop                                           ; $64c2: $00
    ld [bc], a                                    ; $64c3: $02
    ld [de], a                                    ; $64c4: $12
    nop                                           ; $64c5: $00
    and d                                         ; $64c6: $a2
    nop                                           ; $64c7: $00
    ld d, e                                       ; $64c8: $53
    jr nz, jr_09c_64cb                            ; $64c9: $20 $00

jr_09c_64cb:
    rst $30                                       ; $64cb: $f7
    ld [de], a                                    ; $64cc: $12
    nop                                           ; $64cd: $00
    db $db                                        ; $64ce: $db
    inc b                                         ; $64cf: $04
    push af                                       ; $64d0: $f5
    ld a, [bc]                                    ; $64d1: $0a
    ld hl, sp+$00                                 ; $64d2: $f8 $00
    rlca                                          ; $64d4: $07
    pop de                                        ; $64d5: $d1
    ld l, $a4                                     ; $64d6: $2e $a4
    ld e, e                                       ; $64d8: $5b
    ld b, b                                       ; $64d9: $40
    cp a                                          ; $64da: $bf

jr_09c_64db:
    db $ec                                        ; $64db: $ec
    jr nz, jr_09c_64e0                            ; $64dc: $20 $02

    ld e, a                                       ; $64de: $5f
    inc h                                         ; $64df: $24

jr_09c_64e0:
    nop                                           ; $64e0: $00
    jp hl                                         ; $64e1: $e9


    ld [de], a                                    ; $64e2: $12
    cp l                                          ; $64e3: $bd
    ld b, d                                       ; $64e4: $42
    ld a, b                                       ; $64e5: $78
    nop                                           ; $64e6: $00
    add a                                         ; $64e7: $87
    or a                                          ; $64e8: $b7
    ld c, d                                       ; $64e9: $4a
    ld [hl+], a                                   ; $64ea: $22
    rst $18                                       ; $64eb: $df
    ld [$20f7], sp                                ; $64ec: $08 $f7 $20
    jr z, @+$01                                   ; $64ef: $28 $ff

    ld b, h                                       ; $64f1: $44
    ret nz                                        ; $64f2: $c0

    nop                                           ; $64f3: $00
    ret nc                                        ; $64f4: $d0

    ret nz                                        ; $64f5: $c0

    jr nz, jr_09c_64fa                            ; $64f6: $20 $02

    rst $38                                       ; $64f8: $ff
    adc e                                         ; $64f9: $8b

jr_09c_64fa:
    ld [bc], a                                    ; $64fa: $02
    ld a, [hl]                                    ; $64fb: $7e
    ld [de], a                                    ; $64fc: $12
    rst $38                                       ; $64fd: $ff
    ld a, [hl+]                                   ; $64fe: $2a
    rst $38                                       ; $64ff: $ff
    rst $10                                       ; $6500: $d7
    ret nc                                        ; $6501: $d0

    jr nz, @+$01                                  ; $6502: $20 $ff

    ld [hl], h                                    ; $6504: $74
    nop                                           ; $6505: $00
    sbc d                                         ; $6506: $9a
    nop                                           ; $6507: $00
    and h                                         ; $6508: $a4
    ld [$009f], sp                                ; $6509: $08 $9f $00
    xor d                                         ; $650c: $aa
    ld a, l                                       ; $650d: $7d
    ld bc, $08f7                                  ; $650e: $01 $f7 $08
    ld de, $5da2                                  ; $6511: $11 $a2 $5d
    ld [$00f4], sp                                ; $6514: $08 $f4 $00
    and d                                         ; $6517: $a2
    ld [$1008], sp                                ; $6518: $08 $08 $10
    stop                                          ; $651b: $10 $00
    rlca                                          ; $651d: $07
    ld a, [$5fe1]                                 ; $651e: $fa $e1 $5f
    ld [c], a                                     ; $6521: $e2
    dec a                                         ; $6522: $3d
    ld [hl], c                                    ; $6523: $71
    sbc a                                         ; $6524: $9f
    nop                                           ; $6525: $00
    or c                                          ; $6526: $b1
    adc $47                                       ; $6527: $ce $47
    ld h, h                                       ; $6529: $64
    ld l, $33                                     ; $652a: $2e $33
    scf                                           ; $652c: $37
    add hl, de                                    ; $652d: $19

jr_09c_652e:
    nop                                           ; $652e: $00
    ld a, d                                       ; $652f: $7a
    daa                                           ; $6530: $27
    sub l                                         ; $6531: $95
    ld c, [hl]                                    ; $6532: $4e
    pop hl                                        ; $6533: $e1
    sbc [hl]                                      ; $6534: $9e
    pop de                                        ; $6535: $d1
    ld a, $00                                     ; $6536: $3e $00
    add h                                         ; $6538: $84
    ld a, e                                       ; $6539: $7b
    ld d, c                                       ; $653a: $51
    rst $28                                       ; $653b: $ef
    ld d, d                                       ; $653c: $52
    xor a                                         ; $653d: $af
    ld de, $00ee                                  ; $653e: $11 $ee $00
    call c, $152b                                 ; $6541: $dc $2b $15
    ei                                            ; $6544: $fb
    or d                                          ; $6545: $b2
    ld l, a                                       ; $6546: $6f
    ld b, [hl]                                    ; $6547: $46
    db $fd                                        ; $6548: $fd
    nop                                           ; $6549: $00
    adc h                                         ; $654a: $8c
    ei                                            ; $654b: $fb
    dec bc                                        ; $654c: $0b
    pop af                                        ; $654d: $f1
    ld [hl-], a                                   ; $654e: $32
    pop hl                                        ; $654f: $e1

jr_09c_6550:
    ld l, l                                       ; $6550: $6d
    jp $ae00                                      ; $6551: $c3 $00 $ae


    adc b                                         ; $6554: $88
    add [hl]                                      ; $6555: $86
    inc b                                         ; $6556: $04
    pop de                                        ; $6557: $d1
    add d                                         ; $6558: $82
    ld h, c                                       ; $6559: $61
    pop bc                                        ; $655a: $c1
    nop                                           ; $655b: $00
    or e                                          ; $655c: $b3
    ld h, b                                       ; $655d: $60
    jr jr_09c_6550                                ; $655e: $18 $f0

    sbc h                                         ; $6560: $9c
    add sp, $06                                   ; $6561: $e8 $06
    ld a, h                                       ; $6563: $7c
    nop                                           ; $6564: $00
    dec hl                                        ; $6565: $2b
    inc c                                         ; $6566: $0c
    and h                                         ; $6567: $a4
    ld b, $c6                                     ; $6568: $06 $c6
    add e                                         ; $656a: $83
    jr z, jr_09c_652e                             ; $656b: $28 $c1

    nop                                           ; $656d: $00
    ld sp, $8fe0                                  ; $656e: $31 $e0 $8f
    ld [hl], c                                    ; $6571: $71
    rrca                                          ; $6572: $0f
    ld a, [$7f04]                                 ; $6573: $fa $04 $7f
    nop                                           ; $6576: $00
    ret c                                         ; $6577: $d8

    xor a                                         ; $6578: $af
    pop bc                                        ; $6579: $c1
    ld a, a                                       ; $657a: $7f
    and c                                         ; $657b: $a1
    ld a, [hl]                                    ; $657c: $7e
    ld b, d                                       ; $657d: $42
    db $fc                                        ; $657e: $fc
    nop                                           ; $657f: $00
    adc $b8                                       ; $6580: $ce $b8
    inc bc                                        ; $6582: $03
    ldh a, [rNR34]                                ; $6583: $f0 $1e
    pop hl                                        ; $6585: $e1
    ld d, l                                       ; $6586: $55
    jp $d900                                      ; $6587: $c3 $00 $d9


    add h                                         ; $658a: $84
    ld a, [c]                                     ; $658b: $f2
    add hl, bc                                    ; $658c: $09
    xor d                                         ; $658d: $aa
    add hl, de                                    ; $658e: $19
    jp nc, Jump_000_0031                          ; $658f: $d2 $31 $00

    and d                                         ; $6592: $a2
    ld h, c                                       ; $6593: $61
    ld c, d                                       ; $6594: $4a
    pop bc                                        ; $6595: $c1
    sbc e                                         ; $6596: $9b
    adc c                                         ; $6597: $89
    inc hl                                        ; $6598: $23
    add hl, de                                    ; $6599: $19
    nop                                           ; $659a: $00
    ld h, e                                       ; $659b: $63
    ld a, $b0                                     ; $659c: $3e $b0
    sbc [hl]                                      ; $659e: $9e
    sub c                                         ; $659f: $91
    add c                                         ; $65a0: $81
    adc a                                         ; $65a1: $8f
    adc [hl]                                      ; $65a2: $8e
    nop                                           ; $65a3: $00
    rst $38                                       ; $65a4: $ff
    ldh a, [rIE]                                  ; $65a5: $f0 $ff
    add b                                         ; $65a7: $80
    ld [$ff15], a                                 ; $65a8: $ea $15 $ff
    rst $38                                       ; $65ab: $ff
    nop                                           ; $65ac: $00
    inc bc                                        ; $65ad: $03
    ld a, $15                                     ; $65ae: $3e $15
    dec de                                        ; $65b0: $1b
    inc h                                         ; $65b1: $24
    dec bc                                        ; $65b2: $0b
    sub [hl]                                      ; $65b3: $96
    dec b                                         ; $65b4: $05
    nop                                           ; $65b5: $00
    sub $83                                       ; $65b6: $d6 $83
    ld h, e                                       ; $65b8: $63
    pop bc                                        ; $65b9: $c1
    or c                                          ; $65ba: $b1
    ld h, b                                       ; $65bb: $60
    dec de                                        ; $65bc: $1b
    pop af                                        ; $65bd: $f1
    nop                                           ; $65be: $00

jr_09c_65bf:
    ld a, b                                       ; $65bf: $78
    add [hl]                                      ; $65c0: $86
    ld h, h                                       ; $65c1: $64
    adc h                                         ; $65c2: $8c
    add hl, hl                                    ; $65c3: $29
    ret c                                         ; $65c4: $d8

    jp $0071                                      ; $65c5: $c3 $71 $00


    inc h                                         ; $65c8: $24
    ld [c], a                                     ; $65c9: $e2
    ld c, l                                       ; $65ca: $4d
    push bc                                       ; $65cb: $c5
    sub c                                         ; $65cc: $91
    add c                                         ; $65cd: $81
    cpl                                           ; $65ce: $2f
    rrca                                          ; $65cf: $0f
    nop                                           ; $65d0: $00
    ld e, d                                       ; $65d1: $5a
    ld hl, $7182                                  ; $65d2: $21 $82 $71
    ld a, [bc]                                    ; $65d5: $0a
    ret                                           ; $65d6: $c9


    ccf                                           ; $65d7: $3f
    dec [hl]                                      ; $65d8: $35
    ld [$c5ff], sp                                ; $65d9: $08 $ff $c5
    rst $38                                       ; $65dc: $ff
    inc bc                                        ; $65dd: $03
    ld [bc], a                                    ; $65de: $02
    nop                                           ; $65df: $00
    ld b, $ff                                     ; $65e0: $06 $ff
    rst $38                                       ; $65e2: $ff
    nop                                           ; $65e3: $00
    add b                                         ; $65e4: $80
    add b                                         ; $65e5: $80
    adc e                                         ; $65e6: $8b
    sub [hl]                                      ; $65e7: $96
    pop hl                                        ; $65e8: $e1
    ld h, e                                       ; $65e9: $63
    ld a, h                                       ; $65ea: $7c
    sbc h                                         ; $65eb: $9c
    nop                                           ; $65ec: $00
    rst $38                                       ; $65ed: $ff
    add e                                         ; $65ee: $83
    cp a                                          ; $65ef: $bf
    ret nz                                        ; $65f0: $c0

    rst $38                                       ; $65f1: $ff
    ret nz                                        ; $65f2: $c0

    rst $20                                       ; $65f3: $e7
    nop                                           ; $65f4: $00
    nop                                           ; $65f5: $00
    ld a, [$3c19]                                 ; $65f6: $fa $19 $3c
    db $db                                        ; $65f9: $db
    jr @+$01                                      ; $65fa: $18 $ff

    cp d                                          ; $65fc: $ba
    jr jr_09c_65bf                                ; $65fd: $18 $c0

    inc b                                         ; $65ff: $04
    nop                                           ; $6600: $00
    ld e, l                                       ; $6601: $5d
    ld [bc], a                                    ; $6602: $02
    db $fc                                        ; $6603: $fc
    dec de                                        ; $6604: $1b
    dec a                                         ; $6605: $3d
    db $db                                        ; $6606: $db
    cp [hl]                                       ; $6607: $be
    ld e, e                                       ; $6608: $5b
    nop                                           ; $6609: $00
    ld a, [hl]                                    ; $660a: $7e
    reti                                          ; $660b: $d9


    cp h                                          ; $660c: $bc
    db $db                                        ; $660d: $db
    ccf                                           ; $660e: $3f
    reti                                          ; $660f: $d9


    ld a, $d9                                     ; $6610: $3e $d9
    nop                                           ; $6612: $00
    ld a, l                                       ; $6613: $7d
    db $db                                        ; $6614: $db
    dec hl                                        ; $6615: $2b
    inc c                                         ; $6616: $0c
    inc b                                         ; $6617: $04
    ld b, $e6                                     ; $6618: $06 $e6
    db $e3                                        ; $661a: $e3
    nop                                           ; $661b: $00
    ldh a, [rNR11]                                ; $661c: $f0 $11
    pop af                                        ; $661e: $f1
    db $10                                        ; $661f: $10
    rst $30                                       ; $6620: $f7
    ld de, $ea1b                                  ; $6621: $11 $1b $ea
    nop                                           ; $6624: $00
    ld hl, sp-$05                                 ; $6625: $f8 $fb
    and $9b                                       ; $6627: $e6 $9b
    jp Jump_09c_4025                              ; $6629: $c3 $25 $40


    ld b, e                                       ; $662c: $43
    nop                                           ; $662d: $00
    ld h, b                                       ; $662e: $60
    jp $bc7e                                      ; $662f: $c3 $7e $bc


    db $db                                        ; $6632: $db
    inc a                                         ; $6633: $3c
    ld a, [de]                                    ; $6634: $1a
    dec a                                         ; $6635: $3d
    nop                                           ; $6636: $00
    ld e, b                                       ; $6637: $58
    ccf                                           ; $6638: $3f
    db $e3                                        ; $6639: $e3
    ld a, $f1                                     ; $663a: $3e $f1
    ld e, a                                       ; $663c: $5f
    jp c, $008d                                   ; $663d: $da $8d $00

    sub h                                         ; $6640: $94
    rlca                                          ; $6641: $07
    di                                            ; $6642: $f3
    add d                                         ; $6643: $82
    jp hl                                         ; $6644: $e9


    ld b, c                                       ; $6645: $41
    or h                                          ; $6646: $b4
    ld h, b                                       ; $6647: $60
    ld [bc], a                                    ; $6648: $02
    ld e, b                                       ; $6649: $58
    or b                                          ; $664a: $b0
    ei                                            ; $664b: $fb
    ld a, [$0301]                                 ; $664c: $fa $01 $03
    sub b                                         ; $664f: $90
    ld [$0156], sp                                ; $6650: $08 $56 $01
    inc bc                                        ; $6653: $03
    add e                                         ; $6654: $83
    add c                                         ; $6655: $81
    pop hl                                        ; $6656: $e1
    ld h, b                                       ; $6657: $60
    sub e                                         ; $6658: $93
    ld [hl], c                                    ; $6659: $71
    sub b                                         ; $665a: $90
    jr nc, jr_09c_665d                            ; $665b: $30 $00

jr_09c_665d:
    db $e3                                        ; $665d: $e3
    ld c, [hl]                                    ; $665e: $4e
    push bc                                       ; $665f: $c5
    sub b                                         ; $6660: $90
    adc a                                         ; $6661: $8f
    jr c, jr_09c_667b                             ; $6662: $38 $17

    sbc d                                         ; $6664: $9a
    nop                                           ; $6665: $00
    ld a, h                                       ; $6666: $7c
    ld e, e                                       ; $6667: $5b
    cp h                                          ; $6668: $bc
    reti                                          ; $6669: $d9


    ld e, d                                       ; $666a: $5a
    sbc b                                         ; $666b: $98
    sbc c                                         ; $666c: $99
    ret c                                         ; $666d: $d8

    nop                                           ; $666e: $00
    sbc c                                         ; $666f: $99
    cp c                                          ; $6670: $b9
    db $db                                        ; $6671: $db
    db $db                                        ; $6672: $db
    ld a, [hl]                                    ; $6673: $7e
    ld a, [hl]                                    ; $6674: $7e
    inc a                                         ; $6675: $3c
    rrca                                          ; $6676: $0f
    nop                                           ; $6677: $00
    ld hl, sp-$72                                 ; $6678: $f8 $8e
    ld [hl], h                                    ; $667a: $74

jr_09c_667b:
    dec hl                                        ; $667b: $2b
    halt                                          ; $667c: $76
    ld e, l                                       ; $667d: $5d
    db $d3                                        ; $667e: $d3
    ret nz                                        ; $667f: $c0

    nop                                           ; $6680: $00
    adc a                                         ; $6681: $8f
    add a                                         ; $6682: $87

jr_09c_6683:
    inc b                                         ; $6683: $04
    add $83                                       ; $6684: $c6 $83

jr_09c_6686:
    add hl, hl                                    ; $6686: $29
    ld b, c                                       ; $6687: $41
    ccf                                           ; $6688: $3f
    rla                                           ; $6689: $17
    rst $38                                       ; $668a: $ff
    ld a, a                                       ; $668b: $7f
    cp a                                          ; $668c: $bf
    ld [bc], a                                    ; $668d: $02
    ld [$0260], sp                                ; $668e: $08 $60 $02
    jr nz, jr_09c_6683                            ; $6691: $20 $f0

    ld a, [hl+]                                   ; $6693: $2a
    add h                                         ; $6694: $84
    add hl, bc                                    ; $6695: $09
    ret nz                                        ; $6696: $c0

    adc b                                         ; $6697: $88
    add hl, bc                                    ; $6698: $09
    jr jr_09c_66c3                                ; $6699: $18 $28

    ld e, a                                       ; $669b: $5f
    cp a                                          ; $669c: $bf
    ccf                                           ; $669d: $3f
    ret nz                                        ; $669e: $c0

    ld a, a                                       ; $669f: $7f
    add b                                         ; $66a0: $80
    db $f4                                        ; $66a1: $f4
    ld d, $28                                     ; $66a2: $16 $28
    dec sp                                        ; $66a4: $3b
    ld [bc], a                                    ; $66a5: $02

jr_09c_66a6:
    inc hl                                        ; $66a6: $23

jr_09c_66a7:
    db $10                                        ; $66a7: $10
    ld [$c310], sp                                ; $66a8: $08 $10 $c3
    ld [bc], a                                    ; $66ab: $02
    nop                                           ; $66ac: $00
    add $df                                       ; $66ad: $c6 $df
    ld [$ffca], sp                                ; $66af: $08 $ca $ff
    jp nz, Jump_000_06df                          ; $66b2: $c2 $df $06

    ld [$c7ff], sp                                ; $66b5: $08 $ff $c7
    rst $38                                       ; $66b8: $ff
    nop                                           ; $66b9: $00
    ret nz                                        ; $66ba: $c0

    ld hl, sp-$40                                 ; $66bb: $f8 $c0
    jr c, jr_09c_66c3                             ; $66bd: $38 $04

    dec sp                                        ; $66bf: $3b
    call nz, Call_000_033b                        ; $66c0: $c4 $3b $03

jr_09c_66c3:
    nop                                           ; $66c3: $00
    jr c, jr_09c_6686                             ; $66c4: $38 $c0

    jr c, jr_09c_66a7                             ; $66c6: $38 $df

    jp nz, Jump_000_1802                          ; $66c8: $c2 $02 $18

    ld c, b                                       ; $66cb: $48
    inc de                                        ; $66cc: $13
    ld c, $fe                                     ; $66cd: $0e $fe
    rst $38                                       ; $66cf: $ff
    cp $c0                                        ; $66d0: $fe $c0
    inc d                                         ; $66d2: $14
    nop                                           ; $66d3: $00
    inc b                                         ; $66d4: $04
    ld [$100f], sp                                ; $66d5: $08 $0f $10
    rra                                           ; $66d8: $1f
    ld [hl-], a                                   ; $66d9: $32
    cp $1f                                        ; $66da: $fe $1f
    jr nz, jr_09c_66df                            ; $66dc: $20 $01

    ld [bc], a                                    ; $66de: $02

jr_09c_66df:
    nop                                           ; $66df: $00
    ret nz                                        ; $66e0: $c0

    cp a                                          ; $66e1: $bf
    inc b                                         ; $66e2: $04
    jr jr_09c_66a6                                ; $66e3: $18 $c1

    ldh a, [$80]                                  ; $66e5: $f0 $80
    nop                                           ; $66e7: $00
    sbc h                                         ; $66e8: $9c
    ld [de], a                                    ; $66e9: $12
    add b                                         ; $66ea: $80
    stop                                          ; $66eb: $10 $00
    ld a, [bc]                                    ; $66ed: $0a
    add e                                         ; $66ee: $83
    rst $38                                       ; $66ef: $ff
    ld b, c                                       ; $66f0: $41
    cp a                                          ; $66f1: $bf
    ld de, $7f83                                  ; $66f2: $11 $83 $7f
    ld bc, $014d                  ; $66f5: $01 $4d $01
    ld bc, $abff                                  ; $66f8: $01 $ff $ab
    adc l                                         ; $66fb: $8d
    inc bc                                        ; $66fc: $03
    nop                                           ; $66fd: $00
    ld [hl], d                                    ; $66fe: $72
    xor a                                         ; $66ff: $af

jr_09c_6700:
    ld h, [hl]                                    ; $6700: $66
    rrca                                          ; $6701: $0f
    or d                                          ; $6702: $b2
    rrca                                          ; $6703: $0f
    ld h, $0f                                     ; $6704: $26 $0f
    nop                                           ; $6706: $00
    ld [hl-], a                                   ; $6707: $32
    rrca                                          ; $6708: $0f
    ld b, [hl]                                    ; $6709: $46
    cpl                                           ; $670a: $2f
    ld a, [c]                                     ; $670b: $f2
    rrca                                          ; $670c: $0f
    add [hl]                                      ; $670d: $86
    cpl                                           ; $670e: $2f
    ld [$0fb5], sp                                ; $670f: $08 $b5 $0f
    and [hl]                                      ; $6712: $a6
    rra                                           ; $6713: $1f
    inc b                                         ; $6714: $04
    ld c, b                                       ; $6715: $48
    call z, Call_09c_5eba                         ; $6716: $cc $ba $5e
    nop                                           ; $6719: $00
    ld h, h                                       ; $671a: $64
    or e                                          ; $671b: $b3
    ld l, $13                                     ; $671c: $2e $13
    dec e                                         ; $671e: $1d
    xor b                                         ; $671f: $a8
    rrca                                          ; $6720: $0f
    xor h                                         ; $6721: $ac
    nop                                           ; $6722: $00
    rlca                                          ; $6723: $07
    res 0, d                                      ; $6724: $cb $82
    pop hl                                        ; $6726: $e1
    ld b, c                                       ; $6727: $41
    ld e, a                                       ; $6728: $5f
    db $10                                        ; $6729: $10
    rst $18                                       ; $672a: $df
    nop                                           ; $672b: $00
    ld d, b                                       ; $672c: $50
    ld e, a                                       ; $672d: $5f
    sub e                                         ; $672e: $93
    or a                                          ; $672f: $b7
    inc l                                         ; $6730: $2c
    cp [hl]                                       ; $6731: $be
    cp a                                          ; $6732: $bf
    ccf                                           ; $6733: $3f
    nop                                           ; $6734: $00
    cp a                                          ; $6735: $bf
    add c                                         ; $6736: $81
    ld bc, $cc32                                  ; $6737: $01 $32 $cc
    cp $f9                                        ; $673a: $fe $f9
    rst $38                                       ; $673c: $ff
    jr nz, jr_09c_6700                            ; $673d: $20 $c1

    db $fd                                        ; $673f: $fd
    sbc d                                         ; $6740: $9a
    ld bc, $877a                                  ; $6741: $01 $7a $87
    sbc [hl]                                      ; $6744: $9e
    rst $20                                       ; $6745: $e7
    and $00                                       ; $6746: $e6 $00
    db $fd                                        ; $6748: $fd
    ld a, [hl]                                    ; $6749: $7e
    ld a, l                                       ; $674a: $7d
    sbc $e1                                       ; $674b: $de $e1
    ld sp, hl                                     ; $674d: $f9
    rst $20                                       ; $674e: $e7
    and a                                         ; $674f: $a7
    ld b, b                                       ; $6750: $40
    cp a                                          ; $6751: $bf
    sbc d                                         ; $6752: $9a
    nop                                           ; $6753: $00
    ret c                                         ; $6754: $d8

    db $fd                                        ; $6755: $fd
    add e                                         ; $6756: $83
    ei                                            ; $6757: $fb
    add a                                         ; $6758: $87
    xor $00                                       ; $6759: $ee $00
    sbc [hl]                                      ; $675b: $9e
    ld [hl], l                                    ; $675c: $75
    jr nz, @+$7d                                  ; $675d: $20 $7b

    sub c                                         ; $675f: $91
    or a                                          ; $6760: $b7
    jp z, $001d                                   ; $6761: $ca $1d $00

    and $2e                                       ; $6764: $e6 $2e
    di                                            ; $6766: $f3
    or a                                          ; $6767: $b7
    ld e, c                                       ; $6768: $59
    add hl, bc                                    ; $6769: $09
    db $fc                                        ; $676a: $fc
    ld b, c                                       ; $676b: $41
    nop                                           ; $676c: $00
    cp [hl]                                       ; $676d: $be
    rst $08                                       ; $676e: $cf
    sbc b                                         ; $676f: $98
    jr @+$32                                      ; $6770: $18 $30

    ld [hl], $61                                  ; $6772: $36 $61
    ld a, h                                       ; $6774: $7c
    nop                                           ; $6775: $00
    jp $8659                                      ; $6776: $c3 $59 $86


    ld [hl], l                                    ; $6779: $75
    adc h                                         ; $677a: $8c
    ld c, $d9                                     ; $677b: $0e $d9
    sbc l                                         ; $677d: $9d
    nop                                           ; $677e: $00
    ld [hl], e                                    ; $677f: $73
    sbc d                                         ; $6780: $9a
    add hl, de                                    ; $6781: $19
    ld h, d                                       ; $6782: $62
    pop bc                                        ; $6783: $c1
    ld a, [bc]                                    ; $6784: $0a
    sbc c                                         ; $6785: $99
    jp nc, Jump_000_3100                          ; $6786: $d2 $00 $31

    add d                                         ; $6789: $82
    ld h, c                                       ; $678a: $61
    ld b, d                                       ; $678b: $42
    pop bc                                        ; $678c: $c1
    add d                                         ; $678d: $82
    add c                                         ; $678e: $81
    ld [de], a                                    ; $678f: $12
    nop                                           ; $6790: $00
    ld bc, $bcdd                                  ; $6791: $01 $dd $bc

jr_09c_6794:
    ldh a, [$b0]                                  ; $6794: $f0 $b0
    rst $20                                       ; $6796: $e7
    rst $20                                       ; $6797: $e7
    rst $38                                       ; $6798: $ff
    inc b                                         ; $6799: $04
    ld hl, sp-$01                                 ; $679a: $f8 $ff
    ret nz                                        ; $679c: $c0

    push af                                       ; $679d: $f5
    adc d                                         ; $679e: $8a
    jr nz, jr_09c_67b5                            ; $679f: $20 $14

    cp $e1                                        ; $67a1: $fe $e1
    nop                                           ; $67a3: $00
    ld e, a                                       ; $67a4: $5f
    ldh [$3f], a                                  ; $67a5: $e0 $3f
    ld a, c                                       ; $67a7: $79
    sub a                                         ; $67a8: $97
    inc a                                         ; $67a9: $3c
    jp z, Jump_000_00d3                           ; $67aa: $ca $d3 $00

    ld h, h                                       ; $67ad: $64

jr_09c_67ae:
    pop bc                                        ; $67ae: $c1
    ld [hl-], a                                   ; $67af: $32
    rst $30                                       ; $67b0: $f7
    add hl, de                                    ; $67b1: $19
    halt                                          ; $67b2: $76
    ld [hl+], a                                   ; $67b3: $22
    db $fc                                        ; $67b4: $fc

jr_09c_67b5:
    nop                                           ; $67b5: $00
    ld b, h                                       ; $67b6: $44
    ld l, h                                       ; $67b7: $6c
    adc b                                         ; $67b8: $88
    pop de                                        ; $67b9: $d1
    ld de, $21b1                                  ; $67ba: $11 $b1 $21
    rst $08                                       ; $67bd: $cf
    ld bc, $1f4f                                  ; $67be: $01 $4f $1f
    sub b                                         ; $67c1: $90
    rra                                           ; $67c2: $1f
    db $10                                        ; $67c3: $10
    ld c, d                                       ; $67c4: $4a
    add hl, bc                                    ; $67c5: $09
    inc e                                         ; $67c6: $1c
    ld a, [hl-]                                   ; $67c7: $3a
    add [hl]                                      ; $67c8: $86
    adc h                                         ; $67c9: $8c
    ld [$8080], sp                                ; $67ca: $08 $80 $80
    db $e3                                        ; $67cd: $e3
    ld h, b                                       ; $67ce: $60
    inc e                                         ; $67cf: $1c
    ld a, [hl+]                                   ; $67d0: $2a
    adc h                                         ; $67d1: $8c
    ld [$00d9], sp                                ; $67d2: $08 $d9 $00
    inc c                                         ; $67d5: $0c
    add hl, hl                                    ; $67d6: $29
    add [hl]                                      ; $67d7: $86
    cp b                                          ; $67d8: $b8
    jp $e159                                      ; $67d9: $c3 $59 $e1


    ld c, $01                                     ; $67dc: $0e $01
    pop af                                        ; $67de: $f1
    dec d                                         ; $67df: $15
    ei                                            ; $67e0: $fb
    adc e                                         ; $67e1: $8b
    cp $5d                                        ; $67e2: $fe $5d
    ld h, [hl]                                    ; $67e4: $66
    cp h                                          ; $67e5: $bc
    stop                                          ; $67e6: $10 $00
    ccf                                           ; $67e8: $3f
    ccf                                           ; $67e9: $3f
    cp a                                          ; $67ea: $bf
    ld bc, $5681                                  ; $67eb: $01 $81 $56
    jr nc, jr_09c_67ae                            ; $67ee: $30 $be

    inc d                                         ; $67f0: $14
    ld h, c                                       ; $67f1: $61
    dec a                                         ; $67f2: $3d
    jp $08bc                                      ; $67f3: $c3 $bc $08


    ld a, e                                       ; $67f6: $7b
    cp h                                          ; $67f7: $bc
    jr nz, jr_09c_6794                            ; $67f8: $20 $9a

    sbc c                                         ; $67fa: $99
    jr nc, jr_09c_681f                            ; $67fb: $30 $22

    pop bc                                        ; $67fd: $c1
    cp h                                          ; $67fe: $bc
    ld c, b                                       ; $67ff: $48
    adc h                                         ; $6800: $8c
    ld [$f274], sp                                ; $6801: $08 $74 $f2
    xor $e4                                       ; $6804: $ee $e4
    nop                                           ; $6806: $00
    sub e                                         ; $6807: $93
    adc [hl]                                      ; $6808: $8e
    sub e                                         ; $6809: $93
    sbc l                                         ; $680a: $9d
    xor b                                         ; $680b: $a8
    adc a                                         ; $680c: $8f
    xor h                                         ; $680d: $ac
    add a                                         ; $680e: $87
    nop                                           ; $680f: $00
    ld c, e                                       ; $6810: $4b
    ld [bc], a                                    ; $6811: $02
    pop hl                                        ; $6812: $e1
    ld b, c                                       ; $6813: $41
    ld h, c                                       ; $6814: $61
    ld a, $c2                                     ; $6815: $3e $c2
    ld a, l                                       ; $6817: $7d
    nop                                           ; $6818: $00
    ld h, e                                       ; $6819: $63
    sbc [hl]                                      ; $681a: $9e
    and e                                         ; $681b: $a3
    ld e, h                                       ; $681c: $5c
    adc [hl]                                      ; $681d: $8e
    ld sp, hl                                     ; $681e: $f9

jr_09c_681f:
    ld d, l                                       ; $681f: $55
    di                                            ; $6820: $f3
    nop                                           ; $6821: $00
    cp e                                          ; $6822: $bb
    ld h, [hl]                                    ; $6823: $66
    inc sp                                        ; $6824: $33
    call z, $9bfe                                 ; $6825: $cc $fe $9b
    cp a                                          ; $6828: $bf
    add hl, de                                    ; $6829: $19
    nop                                           ; $682a: $00
    ld a, $59                                     ; $682b: $3e $59
    ld a, h                                       ; $682d: $7c
    db $db                                        ; $682e: $db
    ld a, h                                       ; $682f: $7c
    sbc d                                         ; $6830: $9a
    rst $38                                       ; $6831: $ff
    jr jr_09c_6834                                ; $6832: $18 $00

jr_09c_6834:
    ld a, $19                                     ; $6834: $3e $19
    ld a, h                                       ; $6836: $7c
    dec de                                        ; $6837: $1b
    ld sp, $5a20                                  ; $6838: $31 $20 $5a
    sub b                                         ; $683b: $90
    nop                                           ; $683c: $00
    cp h                                          ; $683d: $bc
    ret z                                         ; $683e: $c8

    sbc [hl]                                      ; $683f: $9e
    ld h, h                                       ; $6840: $64
    inc hl                                        ; $6841: $23
    ld [hl], d                                    ; $6842: $72
    ld d, l                                       ; $6843: $55
    ld sp, hl                                     ; $6844: $f9
    nop                                           ; $6845: $00
    cp e                                          ; $6846: $bb
    call z, Call_000_2ed4                         ; $6847: $cc $d4 $2e
    dec b                                         ; $684a: $05
    nop                                           ; $684b: $00
    di                                            ; $684c: $f3
    pop af                                        ; $684d: $f1
    nop                                           ; $684e: $00
    ei                                            ; $684f: $fb

jr_09c_6850:
    ld a, [bc]                                    ; $6850: $0a
    ld sp, hl                                     ; $6851: $f9
    ld a, [bc]                                    ; $6852: $0a
    ld a, [$0d0b]                                 ; $6853: $fa $0b $0d
    push af                                       ; $6856: $f5
    ld [bc], a                                    ; $6857: $02
    db $fd                                        ; $6858: $fd
    db $fc                                        ; $6859: $fc
    db $fd                                        ; $685a: $fd
    db $fc                                        ; $685b: $fc
    adc d                                         ; $685c: $8a
    rst $30                                       ; $685d: $f7
    jr nz, jr_09c_6863                            ; $685e: $20 $03

    ld a, $00                                     ; $6860: $3e $00
    ld h, b                                       ; $6862: $60

jr_09c_6863:
    sbc a                                         ; $6863: $9f
    add b                                         ; $6864: $80

jr_09c_6865:
    rst $08                                       ; $6865: $cf
    ld e, h                                       ; $6866: $5c
    ld h, a                                       ; $6867: $67
    ld h, $73                                     ; $6868: $26 $73
    nop                                           ; $686a: $00
    ld h, a                                       ; $686b: $67
    reti                                          ; $686c: $d9


    ld bc, $e100                                  ; $686d: $01 $00 $e1
    ld e, a                                       ; $6870: $5f
    ld h, b                                       ; $6871: $60
    ccf                                           ; $6872: $3f
    nop                                           ; $6873: $00
    sbc c                                         ; $6874: $99
    sub a                                         ; $6875: $97
    db $ec                                        ; $6876: $ec
    ld l, d                                       ; $6877: $6a
    sub e                                         ; $6878: $93
    ld [hl], h                                    ; $6879: $74
    ld [hl], c                                    ; $687a: $71
    ld a, [c]                                     ; $687b: $f2
    jr nz, jr_09c_6865                            ; $687c: $20 $e7

    jp hl                                         ; $687e: $e9


    ldh [rNR41], a                                ; $687f: $e0 $20
    db $10                                        ; $6881: $10
    or a                                          ; $6882: $b7
    jr nz, jr_09c_6850                            ; $6883: $20 $cb

    ld b, c                                       ; $6885: $41
    nop                                           ; $6886: $00
    dec b                                         ; $6887: $05
    add d                                         ; $6888: $82
    dec bc                                        ; $6889: $0b
    inc b                                         ; $688a: $04
    ld d, [hl]                                    ; $688b: $56
    adc b                                         ; $688c: $88
    ld a, e                                       ; $688d: $7b
    add h                                         ; $688e: $84
    nop                                           ; $688f: $00
    sub c                                         ; $6890: $91
    jp nz, $e10f                                  ; $6891: $c2 $0f $e1

    dec bc                                        ; $6894: $0b
    ldh a, [$15]                                  ; $6895: $f0 $15
    ld hl, sp+$00                                 ; $6897: $f8 $00
    ld b, d                                       ; $6899: $42
    cp h                                          ; $689a: $bc
    ld d, l                                       ; $689b: $55
    xor $99                                       ; $689c: $ee $99
    adc h                                         ; $689e: $8c
    xor c                                         ; $689f: $a9
    add [hl]                                      ; $68a0: $86
    nop                                           ; $68a1: $00
    cp b                                          ; $68a2: $b8
    add e                                         ; $68a3: $83
    sbc c                                         ; $68a4: $99
    and c                                         ; $68a5: $a1
    ld c, $71                                     ; $68a6: $0e $71
    dec d                                         ; $68a8: $15
    ei                                            ; $68a9: $fb
    nop                                           ; $68aa: $00
    dec bc                                        ; $68ab: $0b
    ld c, $f5                                     ; $68ac: $0e $f5
    or $50                                        ; $68ae: $f6 $50
    adc c                                         ; $68b0: $89
    db $fc                                        ; $68b1: $fc
    ld d, e                                       ; $68b2: $53
    ld [bc], a                                    ; $68b3: $02
    xor c                                         ; $68b4: $a9
    ld h, [hl]                                    ; $68b5: $66
    ld d, a                                       ; $68b6: $57
    call z, $9847                                 ; $68b7: $cc $47 $98
    ret nc                                        ; $68ba: $d0

    jr jr_09c_693b                                ; $68bb: $18 $7e

    nop                                           ; $68bd: $00
    sbc e                                         ; $68be: $9b
    db $fd                                        ; $68bf: $fd
    ld a, [de]                                    ; $68c0: $1a
    dec a                                         ; $68c1: $3d
    ld a, [de]                                    ; $68c2: $1a
    ld a, l                                       ; $68c3: $7d
    dec de                                        ; $68c4: $1b
    cp h                                          ; $68c5: $bc
    ld [$7c5b], sp                                ; $68c6: $08 $5b $7c
    db $db                                        ; $68c9: $db
    cp [hl]                                       ; $68ca: $be
    inc b                                         ; $68cb: $04
    inc bc                                        ; $68cc: $03
    ld [hl-], a                                   ; $68cd: $32
    rst $28                                       ; $68ce: $ef
    jr jr_09c_68d1                                ; $68cf: $18 $00

jr_09c_68d1:
    rst $10                                       ; $68d1: $d7
    adc c                                         ; $68d2: $89
    adc [hl]                                      ; $68d3: $8e
    and h                                         ; $68d4: $a4
    rlca                                          ; $68d5: $07
    ld b, [hl]                                    ; $68d6: $46
    add e                                         ; $68d7: $83
    inc sp                                        ; $68d8: $33
    nop                                           ; $68d9: $00
    pop bc                                        ; $68da: $c1
    ret nc                                        ; $68db: $d0

    jr nz, @+$3c                                  ; $68dc: $20 $3a

    ret nc                                        ; $68de: $d0

    rst $38                                       ; $68df: $ff
    sbc $ff                                       ; $68e0: $de $ff
    ld bc, $f3de                                  ; $68e2: $01 $de $f3
    ld a, [c]                                     ; $68e5: $f2
    di                                            ; $68e6: $f3
    jp nc, $fef3                                  ; $68e7: $d2 $f3 $fe

    inc b                                         ; $68ea: $04
    nop                                           ; $68eb: $00
    add b                                         ; $68ec: $80
    ld [bc], a                                    ; $68ed: $02
    nop                                           ; $68ee: $00
    db $e3                                        ; $68ef: $e3
    dec e                                         ; $68f0: $1d
    db $e3                                        ; $68f1: $e3
    dec e                                         ; $68f2: $1d
    ld [c], a                                     ; $68f3: $e2
    cp l                                          ; $68f4: $bd
    cp $04                                        ; $68f5: $fe $04
    ld bc, $a1fe                                  ; $68f7: $01 $fe $a1
    ld [c], a                                     ; $68fa: $e2
    dec e                                         ; $68fb: $1d
    ld [bc], a                                    ; $68fc: $02
    ld [$d2f3], sp                                ; $68fd: $08 $f3 $d2
    add b                                         ; $6900: $80
    ld e, d                                       ; $6901: $5a
    ld a, [de]                                    ; $6902: $1a
    pop af                                        ; $6903: $f1
    ldh a, [$f1]                                  ; $6904: $f0 $f1
    ldh a, [$d1]                                  ; $6906: $f0 $d1
    ret nz                                        ; $6908: $c0

    rst $18                                       ; $6909: $df
    inc d                                         ; $690a: $14
    ret nz                                        ; $690b: $c0

    ld [c], a                                     ; $690c: $e2
    dec e                                         ; $690d: $1d
    or d                                          ; $690e: $b2
    dec c                                         ; $690f: $0d
    rlca                                          ; $6910: $07
    ld [bc], a                                    ; $6911: $02
    nop                                           ; $6912: $00
    scf                                           ; $6913: $37
    ld hl, sp+$00                                 ; $6914: $f8 $00
    inc b                                         ; $6916: $04
    ld hl, sp+$34                                 ; $6917: $f8 $34
    ret z                                         ; $6919: $c8

    rst $38                                       ; $691a: $ff
    ldh [$d1], a                                  ; $691b: $e0 $d1
    ret nz                                        ; $691d: $c0

    db $ec                                        ; $691e: $ec
    ld [bc], a                                    ; $691f: $02
    jr z, jr_09c_693c                             ; $6920: $28 $1a

    db $10                                        ; $6922: $10
    ld d, $00                                     ; $6923: $16 $00
    rlca                                          ; $6925: $07
    ld [bc], a                                    ; $6926: $02
    jr nz, @-$22                                  ; $6927: $20 $dc

    dec c                                         ; $6929: $0d
    ld h, d                                       ; $692a: $62
    add a                                         ; $692b: $87
    nop                                           ; $692c: $00
    push af                                       ; $692d: $f5
    ld c, $21                                     ; $692e: $0e $21
    ld e, $41                                     ; $6930: $1e $41
    ccf                                           ; $6932: $3f
    sub b                                         ; $6933: $90
    ld l, a                                       ; $6934: $6f
    nop                                           ; $6935: $00
    ld b, h                                       ; $6936: $44
    rst $38                                       ; $6937: $ff
    and [hl]                                      ; $6938: $a6
    db $db                                        ; $6939: $db
    inc sp                                        ; $693a: $33

jr_09c_693b:
    pop de                                        ; $693b: $d1

jr_09c_693c:
    jp Jump_000_20ff                              ; $693c: $c3 $ff $20


    rst $20                                       ; $693f: $e7
    rst $18                                       ; $6940: $df
    inc b                                         ; $6941: $04
    ld c, b                                       ; $6942: $48
    jp nc, $d62f                                  ; $6943: $d2 $2f $d6

    cpl                                           ; $6946: $2f
    add d                                         ; $6947: $82
    nop                                           ; $6948: $00
    ccf                                           ; $6949: $3f
    sub $2f                                       ; $694a: $d6 $2f
    ld b, d                                       ; $694c: $42
    cp a                                          ; $694d: $bf
    or $2f                                        ; $694e: $f6 $2f
    add d                                         ; $6950: $82
    nop                                           ; $6951: $00
    ld a, a                                       ; $6952: $7f
    halt                                          ; $6953: $76
    xor a                                         ; $6954: $af
    ld [hl+], a                                   ; $6955: $22
    rst $38                                       ; $6956: $ff
    ld h, [hl]                                    ; $6957: $66
    rst $38                                       ; $6958: $ff
    and d                                         ; $6959: $a2
    ld sp, $76ff                                  ; $695a: $31 $ff $76
    cp h                                          ; $695d: $bc
    inc bc                                        ; $695e: $03
    call $ff02                                    ; $695f: $cd $02 $ff
    ld d, [hl]                                    ; $6962: $56
    rst $38                                       ; $6963: $ff
    add b                                         ; $6964: $80
    ld a, [hl-]                                   ; $6965: $3a
    db $10                                        ; $6966: $10
    and a                                         ; $6967: $a7
    rra                                           ; $6968: $1f
    or a                                          ; $6969: $b7
    inc b                                         ; $696a: $04
    nop                                           ; $696b: $00
    xor d                                         ; $696c: $aa
    rst $38                                       ; $696d: $ff
    ld c, $fb                                     ; $696e: $0e $fb
    ld [bc], a                                    ; $6970: $02
    xor c                                         ; $6971: $a9
    db $fd                                        ; $6972: $fd
    dec b                                         ; $6973: $05
    ld a, [$54a9]                                 ; $6974: $fa $a9 $54
    ld h, b                                       ; $6977: $60
    dec c                                         ; $6978: $0d
    add b                                         ; $6979: $80
    add b                                         ; $697a: $80
    jr nz, jr_09c_697d                            ; $697b: $20 $00

jr_09c_697d:
    and a                                         ; $697d: $a7
    dec e                                         ; $697e: $1d
    cp l                                          ; $697f: $bd
    dec bc                                        ; $6980: $0b
    ld a, [de]                                    ; $6981: $1a
    dec b                                         ; $6982: $05
    dec bc                                        ; $6983: $0b
    ld [$00f1], sp                                ; $6984: $08 $f1 $00
    ld bc, $c4ff                                  ; $6987: $01 $ff $c4
    ld [bc], a                                    ; $698a: $02
    ld a, a                                       ; $698b: $7f
    add b                                         ; $698c: $80
    ld a, [hl+]                                   ; $698d: $2a
    ld b, h                                       ; $698e: $44
    push de                                       ; $698f: $d5
    ld a, [c]                                     ; $6990: $f2
    ld a, [bc]                                    ; $6991: $0a
    ld a, [hl+]                                   ; $6992: $2a
    add b                                         ; $6993: $80
    add b                                         ; $6994: $80
    ldh [rNR14], a                                ; $6995: $e0 $14
    db $fd                                        ; $6997: $fd
    inc bc                                        ; $6998: $03
    ld [de], a                                    ; $6999: $12
    xor c                                         ; $699a: $a9

jr_09c_699b:
    ld d, a                                       ; $699b: $57
    ld bc, $02dc                                  ; $699c: $01 $dc $02
    xor c                                         ; $699f: $a9
    inc bc                                        ; $69a0: $03
    ldh [rNR30], a                                ; $69a1: $e0 $1a
    adc d                                         ; $69a3: $8a
    nop                                           ; $69a4: $00
    scf                                           ; $69a5: $37
    inc [hl]                                      ; $69a6: $34
    dec de                                        ; $69a7: $1b
    ld c, b                                       ; $69a8: $48
    rrca                                          ; $69a9: $0f
    ldh [rTAC], a                                 ; $69aa: $e0 $07
    jp nz, $8300                                  ; $69ac: $c2 $00 $83

    and b                                         ; $69af: $a0
    ld b, c                                       ; $69b0: $41
    dec [hl]                                      ; $69b1: $35
    ldh [rNR31], a                                ; $69b2: $e0 $1b
    pop af                                        ; $69b4: $f1
    jp hl                                         ; $69b5: $e9


    nop                                           ; $69b6: $00
    add [hl]                                      ; $69b7: $86
    ld d, e                                       ; $69b8: $53
    adc h                                         ; $69b9: $8c
    jr z, jr_09c_699b                             ; $69ba: $28 $df

    dec de                                        ; $69bc: $1b
    push af                                       ; $69bd: $f5
    inc hl                                        ; $69be: $23
    nop                                           ; $69bf: $00
    cp $47                                        ; $69c0: $fe $47
    db $fc                                        ; $69c2: $fc
    sbc h                                         ; $69c3: $9c
    add sp, -$71                                  ; $69c4: $e8 $8f
    ld [hl], b                                    ; $69c6: $70
    ld a, [hl-]                                   ; $69c7: $3a
    nop                                           ; $69c8: $00
    pop hl                                        ; $69c9: $e1
    ld [hl], d                                    ; $69ca: $72
    pop bc                                        ; $69cb: $c1
    ld e, d                                       ; $69cc: $5a
    add c                                         ; $69cd: $81
    ld a, [c]                                     ; $69ce: $f2
    add hl, bc                                    ; $69cf: $09
    ld h, d                                       ; $69d0: $62
    ld bc, $d219                                  ; $69d1: $01 $19 $d2
    add hl, sp                                    ; $69d4: $39
    add h                                         ; $69d5: $84
    ld a, c                                       ; $69d6: $79
    ld b, d                                       ; $69d7: $42
    db $fc                                        ; $69d8: $fc
    ld a, h                                       ; $69d9: $7c
    ld c, d                                       ; $69da: $4a
    nop                                           ; $69db: $00
    add b                                         ; $69dc: $80
    add b                                         ; $69dd: $80
    sbc d                                         ; $69de: $9a
    ld h, c                                       ; $69df: $61
    adc a                                         ; $69e0: $8f
    ld a, [$5ee5]                                 ; $69e1: $fa $e5 $5e
    nop                                           ; $69e4: $00
    sub $2b                                       ; $69e5: $d6 $2b
    pop af                                        ; $69e7: $f1
    rra                                           ; $69e8: $1f
    xor c                                         ; $69e9: $a9
    ld c, $7f                                     ; $69ea: $0e $7f
    add h                                         ; $69ec: $84
    nop                                           ; $69ed: $00
    ld a, $c3                                     ; $69ee: $3e $c3
    ld c, a                                       ; $69f0: $4f
    ld h, c                                       ; $69f1: $61
    ld a, [hl-]                                   ; $69f2: $3a
    pop hl                                        ; $69f3: $e1
    db $fd                                        ; $69f4: $fd
    ld b, e                                       ; $69f5: $43
    nop                                           ; $69f6: $00
    xor d                                         ; $69f7: $aa
    add a                                         ; $69f8: $87

jr_09c_69f9:
    ld d, h                                       ; $69f9: $54
    adc a                                         ; $69fa: $8f
    add e                                         ; $69fb: $83
    call c, $fb55                                 ; $69fc: $dc $55 $fb
    nop                                           ; $69ff: $00
    ld d, e                                       ; $6a00: $53
    xor [hl]                                      ; $6a01: $ae
    dec [hl]                                      ; $6a02: $35
    call z, $daab                                 ; $6a03: $cc $ab $da
    jr jr_09c_69f9                                ; $6a06: $18 $f1

    nop                                           ; $6a08: $00
    dec l                                         ; $6a09: $2d
    ldh [rDMA], a                                 ; $6a0a: $e0 $46
    pop bc                                        ; $6a0c: $c1
    rla                                           ; $6a0d: $17
    add d                                         ; $6a0e: $82
    rlc h                                         ; $6a0f: $cb $04
    nop                                           ; $6a11: $00
    cp h                                          ; $6a12: $bc
    add hl, bc                                    ; $6a13: $09
    inc a                                         ; $6a14: $3c
    inc de                                        ; $6a15: $13
    rrca                                          ; $6a16: $0f
    jr nc, @-$69                                  ; $6a17: $30 $95

    jr jr_09c_6a1b                                ; $6a19: $18 $00

jr_09c_6a1b:
    res 1, h                                      ; $6a1b: $cb $8c
    pop af                                        ; $6a1d: $f1
    ld b, [hl]                                    ; $6a1e: $46
    ld [hl-], a                                   ; $6a1f: $32
    ld h, e                                       ; $6a20: $63
    ld c, l                                       ; $6a21: $4d
    pop af                                        ; $6a22: $f1
    nop                                           ; $6a23: $00
    sbc [hl]                                      ; $6a24: $9e
    add sp, $1a                                   ; $6a25: $e8 $1a
    db $e4                                        ; $6a27: $e4
    inc h                                         ; $6a28: $24
    ld sp, $1b94                                  ; $6a29: $31 $94 $1b
    nop                                           ; $6a2c: $00
    jp z, $ac8f                                   ; $6a2d: $ca $8f $ac

    ld b, a                                       ; $6a30: $47
    ld [hl], $e3                                  ; $6a31: $36 $e3
    add hl, hl                                    ; $6a33: $29
    pop de                                        ; $6a34: $d1
    nop                                           ; $6a35: $00
    inc e                                         ; $6a36: $1c
    add sp, $06                                   ; $6a37: $e8 $06
    db $fc                                        ; $6a39: $fc
    ld l, [hl]                                    ; $6a3a: $6e
    sbc b                                         ; $6a3b: $98
    dec de                                        ; $6a3c: $1b
    ldh a, [rP1]                                  ; $6a3d: $f0 $00
    dec [hl]                                      ; $6a3f: $35
    ldh [$e2], a                                  ; $6a40: $e0 $e2
    ld b, c                                       ; $6a42: $41
    and a                                         ; $6a43: $a7
    add d                                         ; $6a44: $82
    adc a                                         ; $6a45: $8f
    inc b                                         ; $6a46: $04
    nop                                           ; $6a47: $00
    cp $89                                        ; $6a48: $fe $89
    ld [hl], b                                    ; $6a4a: $70
    ld d, e                                       ; $6a4b: $53
    ei                                            ; $6a4c: $fb
    ld h, $a6                                     ; $6a4d: $26 $a6
    ld c, h                                       ; $6a4f: $4c
    nop                                           ; $6a50: $00
    rst $28                                       ; $6a51: $ef
    sbc d                                         ; $6a52: $9a
    reti                                          ; $6a53: $d9


    scf                                           ; $6a54: $37
    add d                                         ; $6a55: $82
    ld a, l                                       ; $6a56: $7d
    ld b, c                                       ; $6a57: $41
    rst $38                                       ; $6a58: $ff
    nop                                           ; $6a59: $00
    inc bc                                        ; $6a5a: $03
    cp $4c                                        ; $6a5b: $fe $4c
    or a                                          ; $6a5d: $b7
    add c                                         ; $6a5e: $81
    cp $a1                                        ; $6a5f: $fe $a1
    ld e, a                                       ; $6a61: $5f
    nop                                           ; $6a62: $00
    ldh a, [$2f]                                  ; $6a63: $f0 $2f
    jr c, jr_09c_6a7e                             ; $6a65: $38 $17

    or b                                          ; $6a67: $b0
    adc a                                         ; $6a68: $8f
    ld l, $c5                                     ; $6a69: $2e $c5
    ld bc, $638e                                  ; $6a6b: $01 $8e $63
    ld c, e                                       ; $6a6e: $4b
    pop de                                        ; $6a6f: $d1
    ld a, [$f80b]                                 ; $6a70: $fa $0b $f8
    ld [bc], a                                    ; $6a73: $02
    nop                                           ; $6a74: $00
    jr nz, jr_09c_6a83                            ; $6a75: $20 $0c

    push af                                       ; $6a77: $f5
    dec sp                                        ; $6a78: $3b
    ld [bc], a                                    ; $6a79: $02
    db $fd                                        ; $6a7a: $fd
    ld bc, $1b00                                  ; $6a7b: $01 $00 $1b

jr_09c_6a7e:
    pop af                                        ; $6a7e: $f1
    nop                                           ; $6a7f: $00
    adc h                                         ; $6a80: $8c
    ld hl, sp+$4a                                 ; $6a81: $f8 $4a

jr_09c_6a83:
    db $f4                                        ; $6a83: $f4
    inc hl                                        ; $6a84: $23
    cp $71                                        ; $6a85: $fe $71
    rst $18                                       ; $6a87: $df
    nop                                           ; $6a88: $00
    ld hl, sp-$71                                 ; $6a89: $f8 $8f
    dec a                                         ; $6a8b: $3d
    add [hl]                                      ; $6a8c: $86
    sbc [hl]                                      ; $6a8d: $9e
    jp Jump_09c_619a                              ; $6a8e: $c3 $9a $61


    nop                                           ; $6a91: $00
    rst $38                                       ; $6a92: $ff
    ld a, [de]                                    ; $6a93: $1a
    cp [hl]                                       ; $6a94: $be
    ld e, b                                       ; $6a95: $58
    rst $38                                       ; $6a96: $ff
    sbc d                                         ; $6a97: $9a
    db $fd                                        ; $6a98: $fd
    dec de                                        ; $6a99: $1b
    nop                                           ; $6a9a: $00
    cp [hl]                                       ; $6a9b: $be
    ld e, c                                       ; $6a9c: $59
    ld a, l                                       ; $6a9d: $7d
    db $db                                        ; $6a9e: $db
    ccf                                           ; $6a9f: $3f
    jp c, $9b7c                                   ; $6aa0: $da $7c $9b

    add b                                         ; $6aa3: $80
    ld h, b                                       ; $6aa4: $60
    rrca                                          ; $6aa5: $0f
    ld hl, sp+$78                                 ; $6aa6: $f8 $78
    ld hl, sp+$78                                 ; $6aa8: $f8 $78
    adc b                                         ; $6aaa: $88
    nop                                           ; $6aab: $00
    adc a                                         ; $6aac: $8f
    ld [$ff00], sp                                ; $6aad: $08 $00 $ff
    ld [hl], b                                    ; $6ab0: $70
    adc b                                         ; $6ab1: $88
    sub h                                         ; $6ab2: $94
    ld b, $8f                                     ; $6ab3: $06 $8f
    ld a, a                                       ; $6ab5: $7f
    adc a                                         ; $6ab6: $8f
    add b                                         ; $6ab7: $80
    sub e                                         ; $6ab8: $93
    inc b                                         ; $6ab9: $04
    cp b                                          ; $6aba: $b8
    ld [hl], a                                    ; $6abb: $77
    adc b                                         ; $6abc: $88
    ld [hl], a                                    ; $6abd: $77
    adc l                                         ; $6abe: $8d
    ld [hl], a                                    ; $6abf: $77
    adc d                                         ; $6ac0: $8a
    ld b, b                                       ; $6ac1: $40
    ld [hl], a                                    ; $6ac2: $77
    rra                                           ; $6ac3: $1f
    ld [$888f], sp                                ; $6ac4: $08 $8f $88
    adc h                                         ; $6ac7: $8c
    adc b                                         ; $6ac8: $88
    adc h                                         ; $6ac9: $8c
    ld [$8f02], sp                                ; $6aca: $08 $02 $8f
    ld [$0d8f], sp                                ; $6acd: $08 $8f $0d

jr_09c_6ad0:
    adc a                                         ; $6ad0: $8f
    ld [$0460], sp                                ; $6ad1: $08 $60 $04
    ld h, e                                       ; $6ad4: $63
    nop                                           ; $6ad5: $00
    rst $00                                       ; $6ad6: $c7
    ld h, e                                       ; $6ad7: $63
    call z, $d462                                 ; $6ad8: $cc $62 $d4
    ld h, c                                       ; $6adb: $61
    call z, Call_000_0362                         ; $6adc: $cc $62 $03
    call nz, $c463                                ; $6adf: $c4 $63 $c4
    ld h, e                                       ; $6ae2: $63
    adc b                                         ; $6ae3: $88
    nop                                           ; $6ae4: $00
    ld [bc], a                                    ; $6ae5: $02
    jr @-$56                                      ; $6ae6: $18 $a8

    rrca                                          ; $6ae8: $0f
    ld e, a                                       ; $6ae9: $5f
    ccf                                           ; $6aea: $3f
    ld [bc], a                                    ; $6aeb: $02
    nop                                           ; $6aec: $00
    adc b                                         ; $6aed: $88
    jr c, jr_09c_6af0                             ; $6aee: $38 $00

jr_09c_6af0:
    inc b                                         ; $6af0: $04
    ld [$1058], sp                                ; $6af1: $08 $58 $10
    sub a                                         ; $6af4: $97
    inc bc                                        ; $6af5: $03
    ld [hl], $00                                  ; $6af6: $36 $00
    xor $02                                       ; $6af8: $ee $02
    db $10                                        ; $6afa: $10
    ret z                                         ; $6afb: $c8

    rrca                                          ; $6afc: $0f
    ld h, a                                       ; $6afd: $67
    nop                                           ; $6afe: $00
    ld hl, sp+$34                                 ; $6aff: $f8 $34

jr_09c_6b01:
    ld [$0838], sp                                ; $6b01: $08 $38 $08
    ret c                                         ; $6b04: $d8

    rrca                                          ; $6b05: $0f
    db $e4                                        ; $6b06: $e4
    jr nz, jr_09c_6b01                            ; $6b07: $20 $f8

    db $e4                                        ; $6b09: $e4
    inc b                                         ; $6b0a: $04
    ld a, [bc]                                    ; $6b0b: $0a
    db $e3                                        ; $6b0c: $e3
    rst $38                                       ; $6b0d: $ff
    db $e3                                        ; $6b0e: $e3

jr_09c_6b0f:
    cp a                                          ; $6b0f: $bf
    ld b, $00                                     ; $6b10: $06 $00
    ld e, a                                       ; $6b12: $5f
    ld a, [bc]                                    ; $6b13: $0a
    cp a                                          ; $6b14: $bf
    ld [bc], a                                    ; $6b15: $02
    rra                                           ; $6b16: $1f
    ld b, $1f                                     ; $6b17: $06 $1f
    ld a, [bc]                                    ; $6b19: $0a
    jr c, jr_09c_6b3b                             ; $6b1a: $38 $1f

    ld [bc], a                                    ; $6b1c: $02
    ld [bc], a                                    ; $6b1d: $02
    jr jr_09c_6ad0                                ; $6b1e: $18 $b0

    inc l                                         ; $6b20: $2c
    rst $38                                       ; $6b21: $ff
    rlca                                          ; $6b22: $07
    ld a, a                                       ; $6b23: $7f
    rst $38                                       ; $6b24: $ff
    ld b, e                                       ; $6b25: $43
    inc b                                         ; $6b26: $04
    rst $08                                       ; $6b27: $cf
    ld h, e                                       ; $6b28: $63
    rst $10                                       ; $6b29: $d7
    ld h, e                                       ; $6b2a: $63
    rst $08                                       ; $6b2b: $cf
    ld a, b                                       ; $6b2c: $78
    nop                                           ; $6b2d: $00
    rst $00                                       ; $6b2e: $c7
    ld h, e                                       ; $6b2f: $63
    nop                                           ; $6b30: $00
    jp c, $f586                                   ; $6b31: $da $86 $f5

    inc c                                         ; $6b34: $0c
    xor c                                         ; $6b35: $a9
    jr jr_09c_6b0f                                ; $6b36: $18 $d7

    ld sp, $a700                                  ; $6b38: $31 $00 $a7

jr_09c_6b3b:
    ld h, d                                       ; $6b3b: $62
    ld c, h                                       ; $6b3c: $4c
    rst $00                                       ; $6b3d: $c7
    sbc d                                         ; $6b3e: $9a
    adc a                                         ; $6b3f: $8f
    dec h                                         ; $6b40: $25
    dec de                                        ; $6b41: $1b
    ldh [$8e], a                                  ; $6b42: $e0 $8e
    ld [$0892], sp                                ; $6b44: $08 $92 $08
    adc a                                         ; $6b47: $8f
    rrca                                          ; $6b48: $0f
    rst $20                                       ; $6b49: $e7
    ei                                            ; $6b4a: $fb
    rst $20                                       ; $6b4b: $e7
    ei                                            ; $6b4c: $fb
    ld e, c                                       ; $6b4d: $59
    nop                                           ; $6b4e: $00
    ld h, $80                                     ; $6b4f: $26 $80
    ld a, a                                       ; $6b51: $7f
    ld [hl+], a                                   ; $6b52: $22
    sbc $e6                                       ; $6b53: $de $e6
    inc e                                         ; $6b55: $1c
    adc $01                                       ; $6b56: $ce $01
    add hl, sp                                    ; $6b58: $39
    inc d                                         ; $6b59: $14
    di                                            ; $6b5a: $f3
    dec sp                                        ; $6b5b: $3b
    and $f5                                       ; $6b5c: $e6 $f5
    ld c, [hl]                                    ; $6b5e: $4e
    ld e, b                                       ; $6b5f: $58
    dec l                                         ; $6b60: $2d
    add b                                         ; $6b61: $80
    ld h, b                                       ; $6b62: $60
    dec l                                         ; $6b63: $2d
    db $fc                                        ; $6b64: $fc
    ld hl, sp-$3c                                 ; $6b65: $f8 $c4
    ret nz                                        ; $6b67: $c0

    inc b                                         ; $6b68: $04
    jp $083c                                      ; $6b69: $c3 $3c $08


    jp $c03c                                      ; $6b6c: $c3 $3c $c0


    inc b                                         ; $6b6f: $04
    ld [bc], a                                    ; $6b70: $02
    db $10                                        ; $6b71: $10
    ld a, e                                       ; $6b72: $7b
    ld a, a                                       ; $6b73: $7f

jr_09c_6b74:
    ld a, b                                       ; $6b74: $78
    ld bc, $7b7f                                  ; $6b75: $01 $7f $7b
    db $fc                                        ; $6b78: $fc
    ld a, b                                       ; $6b79: $78

jr_09c_6b7a:
    rst $38                                       ; $6b7a: $ff
    ld a, b                                       ; $6b7b: $78
    rrca                                          ; $6b7c: $0f
    ld [bc], a                                    ; $6b7d: $02
    jr jr_09c_6b80                                ; $6b7e: $18 $00

jr_09c_6b80:
    ld a, a                                       ; $6b80: $7f
    add a                                         ; $6b81: $87
    ld c, b                                       ; $6b82: $48
    add b                                         ; $6b83: $80
    ld c, a                                       ; $6b84: $4f
    add a                                         ; $6b85: $87
    ld a, b                                       ; $6b86: $78
    add b                                         ; $6b87: $80
    inc de                                        ; $6b88: $13
    ld c, b                                       ; $6b89: $48
    add b                                         ; $6b8a: $80
    ld a, b                                       ; $6b8b: $78
    ld [bc], a                                    ; $6b8c: $02
    db $10                                        ; $6b8d: $10
    rst $20                                       ; $6b8e: $e7
    ldh [$a6], a                                  ; $6b8f: $e0 $a6
    ld [$00aa], sp                                ; $6b91: $08 $aa $00
    ld d, h                                       ; $6b94: $54
    jr jr_09c_6b99                                ; $6b95: $18 $02

    jr @+$06                                      ; $6b97: $18 $04

jr_09c_6b99:
    add $12                                       ; $6b99: $c6 $12
    adc b                                         ; $6b9b: $88

jr_09c_6b9c:
    ld bc, $fd00                                  ; $6b9c: $01 $00 $fd
    ld a, b                                       ; $6b9f: $78
    ld [bc], a                                    ; $6ba0: $02
    adc d                                         ; $6ba1: $8a
    ld [$78fd], sp                                ; $6ba2: $08 $fd $78
    ld a, b                                       ; $6ba5: $78
    rrca                                          ; $6ba6: $0f
    ld c, d                                       ; $6ba7: $4a
    dec l                                         ; $6ba8: $2d
    cp $01                                        ; $6ba9: $fe $01
    ld sp, $51f8                                  ; $6bab: $31 $f8 $51
    cp $11                                        ; $6bae: $fe $11
    ld a, b                                       ; $6bb0: $78
    add b                                         ; $6bb1: $80
    ld a, [bc]                                    ; $6bb2: $0a
    add hl, de                                    ; $6bb3: $19
    nop                                           ; $6bb4: $00
    rlca                                          ; $6bb5: $07
    jp $c307                                      ; $6bb6: $c3 $07 $c3


    inc h                                         ; $6bb9: $24
    ret c                                         ; $6bba: $d8

    daa                                           ; $6bbb: $27
    db $db                                        ; $6bbc: $db
    jr nz, @-$1a                                  ; $6bbd: $20 $e4

    jr @+$6b                                      ; $6bbf: $18 $69

    rrca                                          ; $6bc1: $0f
    adc a                                         ; $6bc2: $8f
    ld a, h                                       ; $6bc3: $7c
    adc a                                         ; $6bc4: $8f
    ld a, h                                       ; $6bc5: $7c
    rst $38                                       ; $6bc6: $ff
    ld bc, $ff0c                                  ; $6bc7: $01 $0c $ff
    inc c                                         ; $6bca: $0c
    adc a                                         ; $6bcb: $8f
    ld a, h                                       ; $6bcc: $7c
    adc b                                         ; $6bcd: $88
    ld [$3802], sp                                ; $6bce: $08 $02 $38
    sbc l                                         ; $6bd1: $9d
    ld a, h                                       ; $6bd2: $7c
    ld de, $fe31                                  ; $6bd3: $11 $31 $fe
    ld [hl], $00                                  ; $6bd6: $36 $00
    ld [bc], a                                    ; $6bd8: $02
    jr @+$3c                                      ; $6bd9: $18 $3a

    inc de                                        ; $6bdb: $13
    jp Jump_000_1898                              ; $6bdc: $c3 $98 $18


    call z, Call_000_089e                         ; $6bdf: $cc $9e $08
    ld a, [hl-]                                   ; $6be2: $3a
    jr z, jr_09c_6b74                             ; $6be3: $28 $8f

    ld [hl], h                                    ; $6be5: $74
    ld [bc], a                                    ; $6be6: $02
    jr jr_09c_6b9c                                ; $6be7: $18 $b3

    rla                                           ; $6be9: $17
    ld e, $ff                                     ; $6bea: $1e $ff
    nop                                           ; $6bec: $00
    ld e, $f3                                     ; $6bed: $1e $f3
    or d                                          ; $6bef: $b2
    di                                            ; $6bf0: $f3
    ld d, d                                       ; $6bf1: $52
    di                                            ; $6bf2: $f3
    ld a, $f3                                     ; $6bf3: $3e $f3
    ld h, b                                       ; $6bf5: $60
    ld [de], a                                    ; $6bf6: $12
    ld [bc], a                                    ; $6bf7: $02
    jr jr_09c_6b7a                                ; $6bf8: $18 $80

    dec sp                                        ; $6bfa: $3b
    ld de, $1f00                                  ; $6bfb: $11 $00 $1f
    nop                                           ; $6bfe: $00
    rst $38                                       ; $6bff: $ff
    dec de                                        ; $6c00: $1b
    ldh [rNR11], a                                ; $6c01: $e0 $11
    nop                                           ; $6c03: $00
    ld [bc], a                                    ; $6c04: $02
    jr z, @+$16                                   ; $6c05: $28 $14

    ld de, $16e3                                  ; $6c07: $11 $e3 $16
    add hl, bc                                    ; $6c0a: $09
    ld a, [de]                                    ; $6c0b: $1a
    ld bc, $1b40                                  ; $6c0c: $01 $40 $1b
    ld [bc], a                                    ; $6c0f: $02
    jr @-$30                                      ; $6c10: $18 $ce

    sbc e                                         ; $6c12: $9b
    sbc a                                         ; $6c13: $9f
    ld sp, $611a                                  ; $6c14: $31 $1a $61
    nop                                           ; $6c17: $00
    ld d, h                                       ; $6c18: $54
    jp $8648                                      ; $6c19: $c3 $48 $86


jr_09c_6c1c:
    rst $30                                       ; $6c1c: $f7
    inc c                                         ; $6c1d: $0c
    ld [bc], a                                    ; $6c1e: $02
    add hl, de                                    ; $6c1f: $19
    inc c                                         ; $6c20: $0c
    ld e, h                                       ; $6c21: $5c
    inc sp                                        ; $6c22: $33
    rst $20                                       ; $6c23: $e7
    dec de                                        ; $6c24: $1b
    and b                                         ; $6c25: $a0
    db $10                                        ; $6c26: $10
    db $f4                                        ; $6c27: $f4
    ld bc, $0fff                                  ; $6c28: $01 $ff $0f
    nop                                           ; $6c2b: $00
    rst $38                                       ; $6c2c: $ff
    rrca                                          ; $6c2d: $0f
    adc a                                         ; $6c2e: $8f
    ld a, a                                       ; $6c2f: $7f
    sbc d                                         ; $6c30: $9a
    ld h, [hl]                                    ; $6c31: $66
    ld [hl], l                                    ; $6c32: $75
    adc $00                                       ; $6c33: $ce $00
    ld [$d19b], sp                                ; $6c35: $08 $9b $d1
    ld sp, $6085                                  ; $6c38: $31 $85 $60
    ld b, e                                       ; $6c3b: $43
    pop bc                                        ; $6c3c: $c1
    add hl, bc                                    ; $6c3d: $09
    add a                                         ; $6c3e: $87
    add d                                         ; $6c3f: $82
    ld e, $04                                     ; $6c40: $1e $04
    ld c, $0a                                     ; $6c42: $0e $0a
    adc a                                         ; $6c44: $8f
    ld [hl], a                                    ; $6c45: $77
    ld [bc], a                                    ; $6c46: $02
    jr @-$7e                                      ; $6c47: $18 $80

    sbc h                                         ; $6c49: $9c
    ld c, $50                                     ; $6c4a: $0e $50
    add hl, bc                                    ; $6c4c: $09
    ld h, c                                       ; $6c4d: $61
    inc de                                        ; $6c4e: $13
    ld h, b                                       ; $6c4f: $60
    daa                                           ; $6c50: $27
    add c                                         ; $6c51: $81
    nop                                           ; $6c52: $00
    ld c, [hl]                                    ; $6c53: $4e
    jp nz, $839b                                  ; $6c54: $c2 $9b $83

    ld sp, $612e                                  ; $6c57: $31 $2e $61
    dec d                                         ; $6c5a: $15
    nop                                           ; $6c5b: $00

jr_09c_6c5c:
    jp $e13c                                      ; $6c5c: $c3 $3c $e1


    ld [hl], h                                    ; $6c5f: $74
    jp $875a                                      ; $6c60: $c3 $5a $87


    ldh a, [rP1]                                  ; $6c63: $f0 $00
    rrca                                          ; $6c65: $0f
    ld h, h                                       ; $6c66: $64
    dec de                                        ; $6c67: $1b
    pop de                                        ; $6c68: $d1
    ccf                                           ; $6c69: $3f
    add [hl]                                      ; $6c6a: $86
    ld a, d                                       ; $6c6b: $7a
    ld b, d                                       ; $6c6c: $42
    ld c, b                                       ; $6c6d: $48
    db $fc                                        ; $6c6e: $fc
    rst $30                                       ; $6c6f: $f7
    ld de, $ccc8                                  ; $6c70: $11 $c8 $cc
    ld [bc], a                                    ; $6c73: $02
    nop                                           ; $6c74: $00
    rst $08                                       ; $6c75: $cf
    ret z                                         ; $6c76: $c8

    rst $08                                       ; $6c77: $cf
    ld a, h                                       ; $6c78: $7c
    call Call_000_0004                            ; $6c79: $cd $04 $00
    ld [bc], a                                    ; $6c7c: $02
    jr nz, jr_09c_6ce7                            ; $6c7d: $20 $68

    ld [de], a                                    ; $6c7f: $12
    ld bc, $d800                                  ; $6c80: $01 $00 $d8
    ld l, $03                                     ; $6c83: $2e $03
    rst $38                                       ; $6c85: $ff
    ld [bc], a                                    ; $6c86: $02
    dec b                                         ; $6c87: $05
    cp $07                                        ; $6c88: $fe $07
    db $fc                                        ; $6c8a: $fc
    ld b, $fd                                     ; $6c8b: $06 $fd
    or b                                          ; $6c8d: $b0
    ld c, $c7                                     ; $6c8e: $0e $c7
    dec b                                         ; $6c90: $05
    ei                                            ; $6c91: $fb
    rst $00                                       ; $6c92: $c7
    dec sp                                        ; $6c93: $3b
    rlca                                          ; $6c94: $07
    dec sp                                        ; $6c95: $3b
    inc b                                         ; $6c96: $04
    jr jr_09c_6c5c                                ; $6c97: $18 $c3

    ld [bc], a                                    ; $6c99: $02
    jr nz, jr_09c_6c1c                            ; $6c9a: $20 $80

    ld [$1f17], sp                                ; $6c9c: $08 $17 $1f
    rst $38                                       ; $6c9f: $ff
    rra                                           ; $6ca0: $1f
    ld a, [hl]                                    ; $6ca1: $7e
    dec de                                        ; $6ca2: $1b
    cp l                                          ; $6ca3: $bd
    ld e, d                                       ; $6ca4: $5a
    nop                                           ; $6ca5: $00
    db $fd                                        ; $6ca6: $fd
    sbc d                                         ; $6ca7: $9a
    db $fd                                        ; $6ca8: $fd
    ld a, [de]                                    ; $6ca9: $1a
    cp h                                          ; $6caa: $bc
    ld e, e                                       ; $6cab: $5b
    ld a, l                                       ; $6cac: $7d
    db $db                                        ; $6cad: $db
    ld [$9b7e], sp                                ; $6cae: $08 $7e $9b
    dec a                                         ; $6cb1: $3d
    jp c, $3740                                   ; $6cb2: $da $40 $37

    adc [hl]                                      ; $6cb5: $8e
    add l                                         ; $6cb6: $85
    dec b                                         ; $6cb7: $05
    nop                                           ; $6cb8: $00
    pop bc                                        ; $6cb9: $c1
    add c                                         ; $6cba: $81
    cpl                                           ; $6cbb: $2f
    ld c, a                                       ; $6cbc: $4f
    add hl, hl                                    ; $6cbd: $29
    inc c                                         ; $6cbe: $0c
    and d                                         ; $6cbf: $a2
    ld bc, $c200                                  ; $6cc0: $01 $00 $c2
    add c                                         ; $6cc3: $81
    ld a, [hl+]                                   ; $6cc4: $2a
    pop bc                                        ; $6cc5: $c1
    ld [hl-], a                                   ; $6cc6: $32
    pop hl                                        ; $6cc7: $e1
    adc d                                         ; $6cc8: $8a
    ld [hl], c                                    ; $6cc9: $71
    nop                                           ; $6cca: $00
    dec bc                                        ; $6ccb: $0b
    ld sp, hl                                     ; $6ccc: $f9
    inc bc                                        ; $6ccd: $03
    ld a, c                                       ; $6cce: $79
    ld e, b                                       ; $6ccf: $58
    cpl                                           ; $6cd0: $2f
    add b                                         ; $6cd1: $80
    cp [hl]                                       ; $6cd2: $be
    nop                                           ; $6cd3: $00
    and c                                         ; $6cd4: $a1
    or c                                          ; $6cd5: $b1
    adc a                                         ; $6cd6: $8f
    adc [hl]                                      ; $6cd7: $8e
    rst $38                                       ; $6cd8: $ff
    ldh a, [rIE]                                  ; $6cd9: $f0 $ff
    add b                                         ; $6cdb: $80
    nop                                           ; $6cdc: $00
    ld [$ff15], a                                 ; $6cdd: $ea $15 $ff
    rst $38                                       ; $6ce0: $ff
    jp c, Jump_000_1586                           ; $6ce1: $da $86 $15

    inc c                                         ; $6ce4: $0c
    nop                                           ; $6ce5: $00
    jp hl                                         ; $6ce6: $e9


jr_09c_6ce7:
    add sp, -$09                                  ; $6ce7: $e8 $f7
    ld de, $12f7                                  ; $6ce9: $11 $f7 $12
    db $f4                                        ; $6cec: $f4
    rla                                           ; $6ced: $17
    nop                                           ; $6cee: $00
    ld a, [de]                                    ; $6cef: $1a
    db $eb                                        ; $6cf0: $eb
    ld sp, hl                                     ; $6cf1: $f9
    ei                                            ; $6cf2: $fb
    ld [bc], a                                    ; $6cf3: $02
    add hl, sp                                    ; $6cf4: $39
    ld [de], a                                    ; $6cf5: $12
    ld de, $0a61                                  ; $6cf6: $11 $61 $0a
    inc b                                         ; $6cf9: $04
    ld b, [hl]                                    ; $6cfa: $46
    or [hl]                                       ; $6cfb: $b6
    dec bc                                        ; $6cfc: $0b
    adc c                                         ; $6cfd: $89
    sbc b                                         ; $6cfe: $98
    db $e3                                        ; $6cff: $e3
    ld h, c                                       ; $6d00: $61
    inc b                                         ; $6d01: $04
    ld l, $08                                     ; $6d02: $2e $08
    ld sp, hl                                     ; $6d04: $f9
    ld a, [$0300]                                 ; $6d05: $fa $00 $03
    ld b, b                                       ; $6d08: $40
    ld a, [bc]                                    ; $6d09: $0a
    ld c, [hl]                                    ; $6d0a: $4e
    add hl, sp                                    ; $6d0b: $39
    sub h                                         ; $6d0c: $94
    nop                                           ; $6d0d: $00
    sub e                                         ; $6d0e: $93
    db $eb                                        ; $6d0f: $eb
    ld h, [hl]                                    ; $6d10: $66
    sub l                                         ; $6d11: $95

jr_09c_6d12:
    halt                                          ; $6d12: $76
    ld a, l                                       ; $6d13: $7d
    ld a, [de]                                    ; $6d14: $1a
    cp $00                                        ; $6d15: $fe $00
    ld e, c                                       ; $6d17: $59
    ld a, a                                       ; $6d18: $7f
    sbc d                                         ; $6d19: $9a
    cp a                                          ; $6d1a: $bf
    ld e, b                                       ; $6d1b: $58
    cp [hl]                                       ; $6d1c: $be
    reti                                          ; $6d1d: $d9


    ld a, l                                       ; $6d1e: $7d
    nop                                           ; $6d1f: $00
    db $db                                        ; $6d20: $db
    cp a                                          ; $6d21: $bf
    ld e, d                                       ; $6d22: $5a
    ccf                                           ; $6d23: $3f
    ret c                                         ; $6d24: $d8

    rra                                           ; $6d25: $1f
    db $10                                        ; $6d26: $10
    ld e, a                                       ; $6d27: $5f
    ld [bc], a                                    ; $6d28: $02
    sub b                                         ; $6d29: $90
    sbc a                                         ; $6d2a: $9f
    db $d3                                        ; $6d2b: $d3
    or a                                          ; $6d2c: $b7
    inc l                                         ; $6d2d: $2c
    ld a, $14                                     ; $6d2e: $3e $14
    ld b, $81                                     ; $6d30: $06 $81
    db $10                                        ; $6d32: $10
    add c                                         ; $6d33: $81
    call nc, Call_09c_702e                        ; $6d34: $d4 $2e $70
    dec c                                         ; $6d37: $0d
    sub b                                         ; $6d38: $90
    jp nz, $e10d                                  ; $6d39: $c2 $0d $e1

    nop                                           ; $6d3c: $00
    ld bc, $0ff1                                  ; $6d3d: $01 $f1 $0f
    rst $28                                       ; $6d40: $ef
    ld e, a                                       ; $6d41: $5f
    sub b                                         ; $6d42: $90
    ld e, a                                       ; $6d43: $5f
    ret nc                                        ; $6d44: $d0

    nop                                           ; $6d45: $00
    ld a, h                                       ; $6d46: $7c
    sbc c                                         ; $6d47: $99
    db $fc                                        ; $6d48: $fc
    ld e, e                                       ; $6d49: $5b
    cp l                                          ; $6d4a: $bd
    ld e, d                                       ; $6d4b: $5a
    ld a, a                                       ; $6d4c: $7f
    ret c                                         ; $6d4d: $d8

    nop                                           ; $6d4e: $00
    ld a, a                                       ; $6d4f: $7f
    sbc b                                         ; $6d50: $98
    ld a, [hl]                                    ; $6d51: $7e
    jr jr_09c_6d12                                ; $6d52: $18 $be

    ld e, c                                       ; $6d54: $59
    dec a                                         ; $6d55: $3d
    db $db                                        ; $6d56: $db
    nop                                           ; $6d57: $00
    rra                                           ; $6d58: $1f
    db $d3                                        ; $6d59: $d3
    scf                                           ; $6d5a: $37
    xor h                                         ; $6d5b: $ac
    cp [hl]                                       ; $6d5c: $be
    cp a                                          ; $6d5d: $bf
    cp a                                          ; $6d5e: $bf
    ccf                                           ; $6d5f: $3f
    ld [$8101], sp                                ; $6d60: $08 $01 $81
    ld [hl-], a                                   ; $6d63: $32
    ret nz                                        ; $6d64: $c0

    ld d, b                                       ; $6d65: $50
    dec c                                         ; $6d66: $0d
    halt                                          ; $6d67: $76
    di                                            ; $6d68: $f3
    rst $28                                       ; $6d69: $ef
    nop                                           ; $6d6a: $00
    pop hl                                        ; $6d6b: $e1
    sbc d                                         ; $6d6c: $9a
    add c                                         ; $6d6d: $81
    sub h                                         ; $6d6e: $94
    add e                                         ; $6d6f: $83
    adc b                                         ; $6d70: $88
    add [hl]                                      ; $6d71: $86
    or a                                          ; $6d72: $b7
    ld b, b                                       ; $6d73: $40
    adc h                                         ; $6d74: $8c
    add b                                         ; $6d75: $80
    add hl, bc                                    ; $6d76: $09
    ld a, [de]                                    ; $6d77: $1a
    add hl, de                                    ; $6d78: $19
    ld h, d                                       ; $6d79: $62
    add c                                         ; $6d7a: $81
    or d                                          ; $6d7b: $b2
    ret                                           ; $6d7c: $c9


    nop                                           ; $6d7d: $00
    ld a, [de]                                    ; $6d7e: $1a
    pop hl                                        ; $6d7f: $e1
    ld a, [hl+]                                   ; $6d80: $2a
    pop af                                        ; $6d81: $f1
    or d                                          ; $6d82: $b2
    ld e, c                                       ; $6d83: $59
    ld a, [bc]                                    ; $6d84: $0a
    ld sp, hl                                     ; $6d85: $f9
    nop                                           ; $6d86: $00
    ld b, d                                       ; $6d87: $42
    or c                                          ; $6d88: $b1
    ld a, [bc]                                    ; $6d89: $0a
    ld b, $f5                                     ; $6d8a: $06 $f5
    or $f8                                        ; $6d8c: $f6 $f8
    dec bc                                        ; $6d8e: $0b
    ld [$09f9], sp                                ; $6d8f: $08 $f9 $09
    ld sp, hl                                     ; $6d92: $f9
    ld [$0e00], sp                                ; $6d93: $08 $00 $0e
    db $fc                                        ; $6d96: $fc
    db $fc                                        ; $6d97: $fc
    adc d                                         ; $6d98: $8a
    ld d, d                                       ; $6d99: $52
    ret                                           ; $6d9a: $c9


    or b                                          ; $6d9b: $b0
    ld l, [hl]                                    ; $6d9c: $6e
    ldh [$b0], a                                  ; $6d9d: $e0 $b0
    ld d, [hl]                                    ; $6d9f: $56
    nop                                           ; $6da0: $00
    ld bc, $1190                                  ; $6da1: $01 $90 $11
    adc [hl]                                      ; $6da4: $8e
    nop                                           ; $6da5: $00
    ld [c], a                                     ; $6da6: $e2
    ld l, e                                       ; $6da7: $6b
    sub e                                         ; $6da8: $93
    ld [hl], c                                    ; $6da9: $71
    halt                                          ; $6daa: $76
    pop af                                        ; $6dab: $f1
    push hl                                       ; $6dac: $e5
    db $e3                                        ; $6dad: $e3
    add b                                         ; $6dae: $80
    and b                                         ; $6daf: $a0
    ld e, [hl]                                    ; $6db0: $5e
    ld b, d                                       ; $6db1: $42
    ld h, c                                       ; $6db2: $61
    add d                                         ; $6db3: $82
    add a                                         ; $6db4: $87
    or l                                          ; $6db5: $b5
    adc [hl]                                      ; $6db6: $8e
    and c                                         ; $6db7: $a1
    ld [$819e], sp                                ; $6db8: $08 $9e $81
    cp a                                          ; $6dbb: $bf
    db $10                                        ; $6dbc: $10
    ld h, b                                       ; $6dbd: $60
    dec b                                         ; $6dbe: $05
    ld b, $0b                                     ; $6dbf: $06 $0b
    di                                            ; $6dc1: $f3
    nop                                           ; $6dc2: $00
    pop af                                        ; $6dc3: $f1
    ld a, [hl]                                    ; $6dc4: $7e
    sbc b                                         ; $6dc5: $98
    ccf                                           ; $6dc6: $3f
    ret c                                         ; $6dc7: $d8

    dec a                                         ; $6dc8: $3d
    ret c                                         ; $6dc9: $d8

    cp $00                                        ; $6dca: $fe $00
    ld e, c                                       ; $6dcc: $59
    cp a                                          ; $6dcd: $bf
    sbc d                                         ; $6dce: $9a
    cp a                                          ; $6dcf: $bf

jr_09c_6dd0:
    jr jr_09c_6dd0                                ; $6dd0: $18 $fe

    sbc c                                         ; $6dd2: $99
    ld a, h                                       ; $6dd3: $7c
    nop                                           ; $6dd4: $00
    ld e, e                                       ; $6dd5: $5b
    adc d                                         ; $6dd6: $8a
    ld sp, $1932                                  ; $6dd7: $31 $32 $19
    ld c, d                                       ; $6dda: $4a
    add hl, bc                                    ; $6ddb: $09
    ld [c], a                                     ; $6ddc: $e2
    add c                                         ; $6ddd: $81
    ld b, h                                       ; $6dde: $44
    ld bc, $41a2                                  ; $6ddf: $01 $a2 $41
    inc [hl]                                      ; $6de2: $34
    pop hl                                        ; $6de3: $e1
    dec de                                        ; $6de4: $1b
    pop af                                        ; $6de5: $f1
    ret nc                                        ; $6de6: $d0

    ld e, h                                       ; $6de7: $5c
    ld bc, $708f                                  ; $6de8: $01 $8f $70
    ld hl, sp+$09                                 ; $6deb: $f8 $09
    ld hl, sp+$0b                                 ; $6ded: $f8 $0b
    ld a, [$1450]                                 ; $6def: $fa $50 $14
    ld [$fdfd], sp                                ; $6df2: $08 $fd $fd
    nop                                           ; $6df5: $00
    nop                                           ; $6df6: $00
    ldh [rSB], a                                  ; $6df7: $e0 $01
    db $f4                                        ; $6df9: $f4
    rst $38                                       ; $6dfa: $ff
    jp c, $ff22                                   ; $6dfb: $da $22 $ff

    ld [hl], h                                    ; $6dfe: $74
    inc b                                         ; $6dff: $04
    nop                                           ; $6e00: $00
    db $f4                                        ; $6e01: $f4
    rst $38                                       ; $6e02: $ff
    ld e, d                                       ; $6e03: $5a
    inc c                                         ; $6e04: $0c
    ld [$0e81], sp                                ; $6e05: $08 $81 $0e
    rst $38                                       ; $6e08: $ff
    ret nz                                        ; $6e09: $c0

    cp a                                          ; $6e0a: $bf
    add b                                         ; $6e0b: $80
    inc b                                         ; $6e0c: $04
    jr nz, jr_09c_6e5f                            ; $6e0d: $20 $50

    dec c                                         ; $6e0f: $0d
    ld h, h                                       ; $6e10: $64
    dec c                                         ; $6e11: $0d
    add e                                         ; $6e12: $83
    ld sp, $017f                                  ; $6e13: $31 $7f $01
    ld h, c                                       ; $6e16: $61
    rlca                                          ; $6e17: $07
    inc b                                         ; $6e18: $04
    ld [$bfc1], sp                                ; $6e19: $08 $c1 $bf
    ld a, l                                       ; $6e1c: $7d
    cp d                                          ; $6e1d: $ba
    ld bc, $3e01                                  ; $6e1e: $01 $01 $3e
    jp c, $18fe                                   ; $6e21: $da $fe $18

    cp $19                                        ; $6e24: $fe $19
    inc a                                         ; $6e26: $3c
    ld [hl], b                                    ; $6e27: $70
    inc b                                         ; $6e28: $04
    ld bc, $5afd                                  ; $6e29: $01 $fd $5a
    ld a, h                                       ; $6e2c: $7c
    add hl, de                                    ; $6e2d: $19
    ld a, l                                       ; $6e2e: $7d
    dec de                                        ; $6e2f: $1b
    ld a, h                                       ; $6e30: $7c
    call nc, $8001                                ; $6e31: $d4 $01 $80
    ld [$3d1f], sp                                ; $6e34: $08 $1f $3d
    db $db                                        ; $6e37: $db
    ld h, h                                       ; $6e38: $64
    sbc c                                         ; $6e39: $99
    jp nz, Jump_09c_4024                          ; $6e3a: $c2 $24 $40

    nop                                           ; $6e3d: $00
    ld b, d                                       ; $6e3e: $42
    ld h, c                                       ; $6e3f: $61
    ld b, d                                       ; $6e40: $42
    cp $24                                        ; $6e41: $fe $24
    ld e, c                                       ; $6e43: $59
    ld a, $92                                     ; $6e44: $3e $92
    db $10                                        ; $6e46: $10
    dec h                                         ; $6e47: $25
    ld d, e                                       ; $6e48: $53
    and h                                         ; $6e49: $a4
    add b                                         ; $6e4a: $80
    ld e, $e7                                     ; $6e4b: $1e $e7
    add l                                         ; $6e4d: $85
    rst $38                                       ; $6e4e: $ff
    rst $20                                       ; $6e4f: $e7
    add b                                         ; $6e50: $80
    ld d, l                                       ; $6e51: $55
    ld b, $7e                                     ; $6e52: $06 $7e
    ld a, $d8                                     ; $6e54: $3e $d8
    sub d                                         ; $6e56: $92
    daa                                           ; $6e57: $27

jr_09c_6e58:
    ld d, b                                       ; $6e58: $50
    ld h, a                                       ; $6e59: $67
    nop                                           ; $6e5a: $00
    jp nz, $80a5                                  ; $6e5b: $c2 $a5 $80

    add c                                         ; $6e5e: $81

jr_09c_6e5f:
    ret nz                                        ; $6e5f: $c0

    add c                                         ; $6e60: $81
    or c                                          ; $6e61: $b1
    jp Jump_09c_4200                              ; $6e62: $c3 $00 $42


    rst $38                                       ; $6e65: $ff
    cp l                                          ; $6e66: $bd
    ld a, [hl]                                    ; $6e67: $7e
    and l                                         ; $6e68: $a5
    jr @+$45                                      ; $6e69: $18 $43

    and h                                         ; $6e6b: $a4
    nop                                           ; $6e6c: $00
    pop bc                                        ; $6e6d: $c1
    jp $c3e1                                      ; $6e6e: $c3 $e1 $c3


    cp $a5                                        ; $6e71: $fe $a5
    db $db                                        ; $6e73: $db
    inc a                                         ; $6e74: $3c
    ld [$2452], sp                                ; $6e75: $08 $52 $24
    inc de                                        ; $6e78: $13
    inc h                                         ; $6e79: $24
    ret nc                                        ; $6e7a: $d0

    ld c, $e9                                     ; $6e7b: $0e $e9
    ld h, $ff                                     ; $6e7d: $26 $ff
    ld h, h                                       ; $6e7f: $64
    call nz, $0586                                ; $6e80: $c4 $86 $05
    add c                                         ; $6e83: $81
    inc b                                         ; $6e84: $04
    ccf                                           ; $6e85: $3f
    jp Jump_000_2e50                              ; $6e86: $c3 $50 $2e


    cp e                                          ; $6e89: $bb
    ld b, h                                       ; $6e8a: $44
    and c                                         ; $6e8b: $a1
    sbc b                                         ; $6e8c: $98
    ld d, $ff                                     ; $6e8d: $16 $ff
    ret nc                                        ; $6e8f: $d0

    ld c, $8b                                     ; $6e90: $0e $8b
    adc h                                         ; $6e92: $8c
    or a                                          ; $6e93: $b7
    inc bc                                        ; $6e94: $03
    ld c, h                                       ; $6e95: $4c
    ld [bc], a                                    ; $6e96: $02
    ld bc, $ffff                                  ; $6e97: $01 $ff $ff
    db $fc                                        ; $6e9a: $fc
    ld a, [$ebc0]                                 ; $6e9b: $fa $c0 $eb

jr_09c_6e9e:
    add h                                         ; $6e9e: $84
    ret nc                                        ; $6e9f: $d0

    dec c                                         ; $6ea0: $0d
    add hl, bc                                    ; $6ea1: $09
    sbc e                                         ; $6ea2: $9b
    ld [hl], l                                    ; $6ea3: $75
    and e                                         ; $6ea4: $a3
    ld a, [hl]                                    ; $6ea5: $7e
    ret nc                                        ; $6ea6: $d0

    dec e                                         ; $6ea7: $1d
    cp l                                          ; $6ea8: $bd
    ld b, b                                       ; $6ea9: $40
    ret nz                                        ; $6eaa: $c0

    ld e, d                                       ; $6eab: $5a
    ld [hl+], a                                   ; $6eac: $22
    call z, $30b8                                 ; $6ead: $cc $b8 $30
    dec d                                         ; $6eb0: $15
    sbc $f9                                       ; $6eb1: $de $f9
    adc [hl]                                      ; $6eb3: $8e
    jr nc, jr_09c_6edb                            ; $6eb4: $30 $25

    rst $00                                       ; $6eb6: $c7
    nop                                           ; $6eb7: $00
    ret z                                         ; $6eb8: $c8

    ret nz                                        ; $6eb9: $c0

    rst $08                                       ; $6eba: $cf
    rst $00                                       ; $6ebb: $c7
    ld hl, sp-$40                                 ; $6ebc: $f8 $c0
    ret z                                         ; $6ebe: $c8

    ret nz                                        ; $6ebf: $c0

    ld h, b                                       ; $6ec0: $60
    ld hl, sp+$02                                 ; $6ec1: $f8 $02
    jr nz, jr_09c_6f1d                            ; $6ec3: $20 $58

    jr @-$37                                      ; $6ec5: $18 $c7

    jp $c3c7                                      ; $6ec7: $c3 $c7 $c3


    db $e4                                        ; $6eca: $e4
    ld bc, $e7d8                                  ; $6ecb: $01 $d8 $e7
    db $db                                        ; $6ece: $db
    rst $00                                       ; $6ecf: $c7
    jp $c0c4                                      ; $6ed0: $c3 $c4 $c0


    ld [bc], a                                    ; $6ed3: $02
    jr z, jr_09c_6e58                             ; $6ed4: $28 $82

    ld a, [bc]                                    ; $6ed6: $0a
    rrca                                          ; $6ed7: $0f
    push hl                                       ; $6ed8: $e5
    jr jr_09c_6e9e                                ; $6ed9: $18 $c3

jr_09c_6edb:
    inc h                                         ; $6edb: $24
    ret nz                                        ; $6edc: $c0

    and b                                         ; $6edd: $a0
    db $10                                        ; $6ede: $10
    sbc c                                         ; $6edf: $99
    inc b                                         ; $6ee0: $04
    ld a, a                                       ; $6ee1: $7f
    sub e                                         ; $6ee2: $93
    and $51                                       ; $6ee3: $e6 $51
    ld h, [hl]                                    ; $6ee5: $66
    add l                                         ; $6ee6: $85

jr_09c_6ee7:
    ld c, $7f                                     ; $6ee7: $0e $7f
    add b                                         ; $6ee9: $80
    nop                                           ; $6eea: $00
    nop                                           ; $6eeb: $00
    rst $38                                       ; $6eec: $ff
    db $fd                                        ; $6eed: $fd
    add b                                         ; $6eee: $80
    ld d, d                                       ; $6eef: $52
    add b                                         ; $6ef0: $80
    or [hl]                                       ; $6ef1: $b6
    ret                                           ; $6ef2: $c9


    nop                                           ; $6ef3: $00
    jp z, Jump_09c_7d80                           ; $6ef4: $ca $80 $7d

    add b                                         ; $6ef7: $80
    or a                                          ; $6ef8: $b7
    add b                                         ; $6ef9: $80
    ld h, b                                       ; $6efa: $60
    sbc l                                         ; $6efb: $9d
    db $10                                        ; $6efc: $10
    or a                                          ; $6efd: $b7
    add b                                         ; $6efe: $80
    ld c, l                                       ; $6eff: $4d
    add l                                         ; $6f00: $85
    ld b, $34                                     ; $6f01: $06 $34
    add b                                         ; $6f03: $80
    and l                                         ; $6f04: $a5
    jp c, $7d40                                   ; $6f05: $da $40 $7d

    adc l                                         ; $6f08: $8d
    ld b, $0b                                     ; $6f09: $06 $0b
    add b                                         ; $6f0b: $80
    call z, Call_09c_7fb3                         ; $6f0c: $cc $b3 $7f
    add b                                         ; $6f0f: $80
    nop                                           ; $6f10: $00

jr_09c_6f11:
    jp c, $7580                                   ; $6f11: $da $80 $75

    add b                                         ; $6f14: $80
    sbc d                                         ; $6f15: $9a
    add b                                         ; $6f16: $80
    ld [hl], a                                    ; $6f17: $77
    adc b                                         ; $6f18: $88
    ld h, b                                       ; $6f19: $60
    push de                                       ; $6f1a: $d5
    jr nc, jr_09c_6f1d                            ; $6f1b: $30 $00

jr_09c_6f1d:
    ld b, l                                       ; $6f1d: $45
    inc c                                         ; $6f1e: $0c
    rst $20                                       ; $6f1f: $e7
    rst $38                                       ; $6f20: $ff
    rst $28                                       ; $6f21: $ef
    rst $30                                       ; $6f22: $f7
    rst $28                                       ; $6f23: $ef
    ld b, b                                       ; $6f24: $40
    rst $30                                       ; $6f25: $f7
    rlca                                          ; $6f26: $07
    ld bc, $ab80                                  ; $6f27: $01 $80 $ab
    add b                                         ; $6f2a: $80
    db $fd                                        ; $6f2b: $fd
    add b                                         ; $6f2c: $80
    rst $30                                       ; $6f2d: $f7
    push de                                       ; $6f2e: $d5
    inc d                                         ; $6f2f: $14
    db $10                                        ; $6f30: $10
    dec l                                         ; $6f31: $2d
    dec b                                         ; $6f32: $05
    rra                                           ; $6f33: $1f
    ld [bc], a                                    ; $6f34: $02
    nop                                           ; $6f35: $00
    cp a                                          ; $6f36: $bf
    ccf                                           ; $6f37: $3f
    inc bc                                        ; $6f38: $03
    and e                                         ; $6f39: $a3
    ld a, [bc]                                    ; $6f3a: $0a
    db $10                                        ; $6f3b: $10
    ret nz                                        ; $6f3c: $c0

    ld c, $00                                     ; $6f3d: $0e $00
    ld [hl], b                                    ; $6f3f: $70
    scf                                           ; $6f40: $37
    ei                                            ; $6f41: $fb
    rlca                                          ; $6f42: $07
    ei                                            ; $6f43: $fb
    scf                                           ; $6f44: $37
    rlc a                                         ; $6f45: $cb $07
    add sp, $06                                   ; $6f47: $e8 $06
    nop                                           ; $6f49: $00
    inc b                                         ; $6f4a: $04
    jr z, jr_09c_6ee7                             ; $6f4b: $28 $9a

    rrca                                          ; $6f4d: $0f
    ld h, l                                       ; $6f4e: $65
    jr nc, jr_09c_6f52                            ; $6f4f: $30 $01

    add e                                         ; $6f51: $83

jr_09c_6f52:
    ld b, e                                       ; $6f52: $43
    inc hl                                        ; $6f53: $23
    nop                                           ; $6f54: $00
    jp Jump_000_25ff                              ; $6f55: $c3 $ff $25


    ld e, c                                       ; $6f58: $59
    cp [hl]                                       ; $6f59: $be
    sub e                                         ; $6f5a: $93
    ld h, [hl]                                    ; $6f5b: $66
    ld d, c                                       ; $6f5c: $51
    ld c, e                                       ; $6f5d: $4b
    ld h, $70                                     ; $6f5e: $26 $70
    cpl                                           ; $6f60: $2f
    push de                                       ; $6f61: $d5
    ld a, [hl+]                                   ; $6f62: $2a
    jr nz, jr_09c_6fde                            ; $6f63: $20 $79

    cp $20                                        ; $6f65: $fe $20
    ld bc, $0735                                  ; $6f67: $01 $35 $07
    add b                                         ; $6f6a: $80
    and e                                         ; $6f6b: $a3
    inc bc                                        ; $6f6c: $03
    nop                                           ; $6f6d: $00
    rst $38                                       ; $6f6e: $ff
    rst $30                                       ; $6f6f: $f7
    nop                                           ; $6f70: $00
    adc c                                         ; $6f71: $89
    nop                                           ; $6f72: $00
    ld h, h                                       ; $6f73: $64
    jr nc, jr_09c_6f11                            ; $6f74: $30 $9b

    xor $45                                       ; $6f76: $ee $45
    rrca                                          ; $6f78: $0f
    db $10                                        ; $6f79: $10
    db $10                                        ; $6f7a: $10
    ld e, e                                       ; $6f7b: $5b
    nop                                           ; $6f7c: $00
    xor [hl]                                      ; $6f7d: $ae
    nop                                           ; $6f7e: $00
    db $10                                        ; $6f7f: $10
    db $ec                                        ; $6f80: $ec
    inc de                                        ; $6f81: $13
    or c                                          ; $6f82: $b1
    ld d, l                                       ; $6f83: $55
    rrca                                          ; $6f84: $0f
    ld bc, $01fe                                  ; $6f85: $01 $fe $01
    nop                                           ; $6f88: $00
    nop                                           ; $6f89: $00
    rst $38                                       ; $6f8a: $ff
    rst $18                                       ; $6f8b: $df
    ld bc, $0134                            ; $6f8c: $01 $34 $01
    daa                                           ; $6f8f: $27
    reti                                          ; $6f90: $d9


    ld d, a                                       ; $6f91: $57
    nop                                           ; $6f92: $00
    ld bc, $00bb                                  ; $6f93: $01 $bb $00
    ld d, h                                       ; $6f96: $54
    nop                                           ; $6f97: $00
    add b                                         ; $6f98: $80
    cpl                                           ; $6f99: $2f
    or $00                                        ; $6f9a: $f6 $00
    nop                                           ; $6f9c: $00
    ccf                                           ; $6f9d: $3f
    nop                                           ; $6f9e: $00
    ld [$9500], a                                 ; $6f9f: $ea $00 $95
    nop                                           ; $6fa2: $00
    or b                                          ; $6fa3: $b0
    nop                                           ; $6fa4: $00
    ld c, a                                       ; $6fa5: $4f
    rst $38                                       ; $6fa6: $ff
    nop                                           ; $6fa7: $00
    ld e, h                                       ; $6fa8: $5c
    nop                                           ; $6fa9: $00

jr_09c_6faa:
    and l                                         ; $6faa: $a5
    ld b, d                                       ; $6fab: $42
    cp b                                          ; $6fac: $b8
    add b                                         ; $6fad: $80
    rst $20                                       ; $6fae: $e7
    inc bc                                        ; $6faf: $03
    jp c, Jump_000_3500                           ; $6fb0: $da $00 $35

    nop                                           ; $6fb3: $00
    or d                                          ; $6fb4: $b2
    ld c, l                                       ; $6fb5: $4d
    ld a, [$0100]                                 ; $6fb6: $fa $00 $01
    rst $28                                       ; $6fb9: $ef
    ld bc, $51a2                                  ; $6fba: $01 $a2 $51
    cp a                                          ; $6fbd: $bf
    ld bc, $22d4                                  ; $6fbe: $01 $d4 $22
    ld bc, $38ab                                  ; $6fc1: $01 $ab $38
    nop                                           ; $6fc4: $00
    push de                                       ; $6fc5: $d5
    dec bc                                        ; $6fc6: $0b
    and c                                         ; $6fc7: $a1
    ld bc, $7504                                  ; $6fc8: $01 $04 $75
    ld [bc], a                                    ; $6fcb: $02
    nop                                           ; $6fcc: $00
    reti                                          ; $6fcd: $d9


    ld h, $5b                                     ; $6fce: $26 $5b
    nop                                           ; $6fd0: $00
    and l                                         ; $6fd1: $a5
    dec bc                                        ; $6fd2: $0b
    inc b                                         ; $6fd3: $04
    ld d, [hl]                                    ; $6fd4: $56
    ld [$4300], sp                                ; $6fd5: $08 $00 $43
    nop                                           ; $6fd8: $00
    db $ed                                        ; $6fd9: $ed
    ld a, [hl+]                                   ; $6fda: $2a
    nop                                           ; $6fdb: $00
    db $dd                                        ; $6fdc: $dd
    ld [hl+], a                                   ; $6fdd: $22

jr_09c_6fde:
    push af                                       ; $6fde: $f5
    jr nz, jr_09c_6fe1                            ; $6fdf: $20 $00

jr_09c_6fe1:
    ld c, d                                       ; $6fe1: $4a
    dec de                                        ; $6fe2: $1b
    inc b                                         ; $6fe3: $04
    add h                                         ; $6fe4: $84
    nop                                           ; $6fe5: $00
    xor b                                         ; $6fe6: $a8
    ld bc, $007f                                  ; $6fe7: $01 $7f $00
    ld bc, $018a                                  ; $6fea: $01 $8a $01
    ld d, c                                       ; $6fed: $51
    xor a                                         ; $6fee: $af
    ld [$d701], a                                 ; $6fef: $ea $01 $d7
    add b                                         ; $6ff2: $80
    ld l, b                                       ; $6ff3: $68
    nop                                           ; $6ff4: $00
    or a                                          ; $6ff5: $b7
    ld bc, $a857                                  ; $6ff6: $01 $57 $a8
    adc e                                         ; $6ff9: $8b
    nop                                           ; $6ffa: $00
    cp $c1                                        ; $6ffb: $fe $c1
    rrc a                                         ; $6ffd: $cb $0f
    ld [bc], a                                    ; $6fff: $02
    jr nz, jr_09c_7059                            ; $7000: $20 $57

    xor b                                         ; $7002: $a8
    ld d, l                                       ; $7003: $55
    nop                                           ; $7004: $00
    cp a                                          ; $7005: $bf
    db $10                                        ; $7006: $10
    ld b, b                                       ; $7007: $40
    inc bc                                        ; $7008: $03
    jr @-$1d                                      ; $7009: $18 $e1

    ld a, a                                       ; $700b: $7f
    ld bc, $01d6                                  ; $700c: $01 $d6 $01
    db $db                                        ; $700f: $db
    rlca                                          ; $7010: $07

jr_09c_7011:
    jr nc, jr_09c_7034                            ; $7011: $30 $21

    dec b                                         ; $7013: $05
    rst $38                                       ; $7014: $ff
    rst $38                                       ; $7015: $ff

jr_09c_7016:
    ei                                            ; $7016: $fb
    nop                                           ; $7017: $00
    ld c, l                                       ; $7018: $4d
    ld h, l                                       ; $7019: $65
    inc b                                         ; $701a: $04
    ld e, e                                       ; $701b: $5b
    inc [hl]                                      ; $701c: $34
    jr nc, jr_09c_7020                            ; $701d: $30 $01

    db $eb                                        ; $701f: $eb

jr_09c_7020:
    nop                                           ; $7020: $00
    or [hl]                                       ; $7021: $b6
    nop                                           ; $7022: $00
    db $dd                                        ; $7023: $dd
    nop                                           ; $7024: $00
    adc [hl]                                      ; $7025: $8e
    ld b, h                                       ; $7026: $44
    jr nz, jr_09c_6faa                            ; $7027: $20 $81

    ld d, a                                       ; $7029: $57
    ld [bc], a                                    ; $702a: $02
    ld bc, $01b5                                  ; $702b: $01 $b5 $01

Call_09c_702e:
    ld l, a                                       ; $702e: $6f
    ld bc, $34db                                  ; $702f: $01 $db $34
    stop                                          ; $7032: $10 $00

jr_09c_7034:
    rst $38                                       ; $7034: $ff
    rst $38                                       ; $7035: $ff
    ld a, h                                       ; $7036: $7c
    sbc d                                         ; $7037: $9a
    ld a, h                                       ; $7038: $7c
    sbc b                                         ; $7039: $98
    dec a                                         ; $703a: $3d
    ret c                                         ; $703b: $d8

    nop                                           ; $703c: $00
    rst $38                                       ; $703d: $ff

jr_09c_703e:
    ld e, c                                       ; $703e: $59
    inc a                                         ; $703f: $3c
    db $db                                        ; $7040: $db
    ld a, [hl]                                    ; $7041: $7e
    reti                                          ; $7042: $d9


    cp h                                          ; $7043: $bc
    sbc e                                         ; $7044: $9b
    nop                                           ; $7045: $00
    inc a                                         ; $7046: $3c
    dec de                                        ; $7047: $1b
    ld a, [hl]                                    ; $7048: $7e
    ld a, [de]                                    ; $7049: $1a
    db $fc                                        ; $704a: $fc
    ld e, b                                       ; $704b: $58
    ld a, h                                       ; $704c: $7c
    sbc b                                         ; $704d: $98
    nop                                           ; $704e: $00
    db $fd                                        ; $704f: $fd
    jr jr_09c_7011                                ; $7050: $18 $bf

    jr @+$01                                      ; $7052: $18 $ff

    ld e, c                                       ; $7054: $59
    dec a                                         ; $7055: $3d
    sbc d                                         ; $7056: $9a
    inc a                                         ; $7057: $3c
    ccf                                           ; $7058: $3f

jr_09c_7059:
    jr jr_09c_70b5                                ; $7059: $18 $5a

    add hl, bc                                    ; $705b: $09
    ld e, [hl]                                    ; $705c: $5e
    add hl, bc                                    ; $705d: $09
    cp b                                          ; $705e: $b8

jr_09c_705f:
    inc l                                         ; $705f: $2c
    ret nc                                        ; $7060: $d0

    ld c, a                                       ; $7061: $4f
    ld d, d                                       ; $7062: $52
    xor [hl]                                      ; $7063: $ae
    ld b, h                                       ; $7064: $44
    inc [hl]                                      ; $7065: $34
    ret nc                                        ; $7066: $d0

    ld b, a                                       ; $7067: $47
    dec bc                                        ; $7068: $0b
    inc b                                         ; $7069: $04
    inc a                                         ; $706a: $3c
    ret nc                                        ; $706b: $d0

    rlca                                          ; $706c: $07
    sbc a                                         ; $706d: $9f
    ldh [rSB], a                                  ; $706e: $e0 $01
    db $10                                        ; $7070: $10
    and b                                         ; $7071: $a0
    sub b                                         ; $7072: $90
    and b                                         ; $7073: $a0
    jr jr_09c_7016                                ; $7074: $18 $a0

    sbc b                                         ; $7076: $98
    inc b                                         ; $7077: $04
    jr nz, jr_09c_703e                            ; $7078: $20 $c4

    ld c, h                                       ; $707a: $4c

jr_09c_707b:
    ld bc, $3802                                  ; $707b: $01 $02 $38
    jr nc, jr_09c_7090                            ; $707e: $30 $10

    ld l, b                                       ; $7080: $68
    jr @+$2a                                      ; $7081: $18 $28

    sbc c                                         ; $7083: $99
    and b                                         ; $7084: $a0
    ld b, b                                       ; $7085: $40
    add hl, de                                    ; $7086: $19
    inc b                                         ; $7087: $04
    stop                                          ; $7088: $10 $00
    jr nc, jr_09c_708c                            ; $708a: $30 $00

jr_09c_708c:
    db $fc                                        ; $708c: $fc
    ld b, b                                       ; $708d: $40
    or h                                          ; $708e: $b4
    nop                                           ; $708f: $00

jr_09c_7090:
    ret nz                                        ; $7090: $c0

    add h                                         ; $7091: $84
    add d                                         ; $7092: $82
    db $fc                                        ; $7093: $fc
    ld a, [$fefc]                                 ; $7094: $fa $fc $fe
    db $fc                                        ; $7097: $fc
    inc hl                                        ; $7098: $23
    cp $00                                        ; $7099: $fe $00
    jr c, @+$0a                                   ; $709b: $38 $08

    add b                                         ; $709d: $80
    cp a                                          ; $709e: $bf
    nop                                           ; $709f: $00

jr_09c_70a0:
    ld [bc], a                                    ; $70a0: $02
    ld a, [bc]                                    ; $70a1: $0a
    ld [hl+], a                                   ; $70a2: $22
    ld [bc], a                                    ; $70a3: $02
    jr c, jr_09c_707b                             ; $70a4: $38 $d5

    xor d                                         ; $70a6: $aa
    ccf                                           ; $70a7: $3f
    db $10                                        ; $70a8: $10
    ld b, l                                       ; $70a9: $45
    ld [$1198], sp                                ; $70aa: $08 $98 $11
    ld d, l                                       ; $70ad: $55
    xor d                                         ; $70ae: $aa
    xor d                                         ; $70af: $aa
    sub l                                         ; $70b0: $95
    rla                                           ; $70b1: $17
    nop                                           ; $70b2: $00
    push de                                       ; $70b3: $d5
    xor d                                         ; $70b4: $aa

jr_09c_70b5:
    dec a                                         ; $70b5: $3d
    ld [bc], a                                    ; $70b6: $02
    rst $38                                       ; $70b7: $ff
    ld a, [bc]                                    ; $70b8: $0a
    ld [$06aa], sp                                ; $70b9: $08 $aa $06
    nop                                           ; $70bc: $00
    rrca                                          ; $70bd: $0f
    nop                                           ; $70be: $00
    rst $38                                       ; $70bf: $ff
    ld d, l                                       ; $70c0: $55
    xor d                                         ; $70c1: $aa
    ld d, [hl]                                    ; $70c2: $56
    dec c                                         ; $70c3: $0d
    ld a, [bc]                                    ; $70c4: $0a
    ld [$0382], sp                                ; $70c5: $08 $82 $03
    ld [hl], b                                    ; $70c8: $70
    ld c, b                                       ; $70c9: $48
    adc c                                         ; $70ca: $89

Jump_09c_70cb:
    inc c                                         ; $70cb: $0c
    ld h, b                                       ; $70cc: $60
    ld bc, $0200                                  ; $70cd: $01 $00 $02
    ld e, $50                                     ; $70d0: $1e $50
    ld d, l                                       ; $70d2: $55
    nop                                           ; $70d3: $00
    ld e, a                                       ; $70d4: $5f
    jr jr_09c_705f                                ; $70d5: $18 $88

    and e                                         ; $70d7: $a3
    jr z, @+$42                                   ; $70d8: $28 $40

    nop                                           ; $70da: $00
    add b                                         ; $70db: $80
    inc h                                         ; $70dc: $24
    db $10                                        ; $70dd: $10
    ld bc, $00fc                                  ; $70de: $01 $fc $00
    ld bc, $0206                                  ; $70e1: $01 $06 $02
    db $fd                                        ; $70e4: $fd
    db $fd                                        ; $70e5: $fd
    ld [bc], a                                    ; $70e6: $02
    cp $01                                        ; $70e7: $fe $01
    ld e, d                                       ; $70e9: $5a
    nop                                           ; $70ea: $00
    adc h                                         ; $70eb: $8c
    ret nz                                        ; $70ec: $c0

    jr nc, jr_09c_7119                            ; $70ed: $30 $2a

    add b                                         ; $70ef: $80
    ld d, l                                       ; $70f0: $55
    jp z, $d00a                                   ; $70f1: $ca $0a $d0

    jr nc, jr_09c_70a0                            ; $70f4: $30 $aa

    ld bc, $5460                                  ; $70f6: $01 $60 $54
    ld a, [bc]                                    ; $70f9: $0a
    ld [bc], a                                    ; $70fa: $02
    inc [hl]                                      ; $70fb: $34
    ld [$3f40], sp                                ; $70fc: $08 $40 $3f
    add b                                         ; $70ff: $80
    ld h, b                                       ; $7100: $60
    ld b, b                                       ; $7101: $40
    nop                                           ; $7102: $00
    cp a                                          ; $7103: $bf
    cp a                                          ; $7104: $bf
    ld b, b                                       ; $7105: $40
    ld a, a                                       ; $7106: $7f
    add b                                         ; $7107: $80
    xor d                                         ; $7108: $aa
    ld d, l                                       ; $7109: $55
    push de                                       ; $710a: $d5
    cp d                                          ; $710b: $ba

jr_09c_710c:
    sbc b                                         ; $710c: $98
    nop                                           ; $710d: $00
    push de                                       ; $710e: $d5
    db $fd                                        ; $710f: $fd
    rlca                                          ; $7110: $07
    inc b                                         ; $7111: $04
    ld [$0ff4], sp                                ; $7112: $08 $f4 $0f
    ld d, l                                       ; $7115: $55
    xor b                                         ; $7116: $a8
    nop                                           ; $7117: $00
    ld d, l                                       ; $7118: $55

jr_09c_7119:
    ldh [$08], a                                  ; $7119: $e0 $08

jr_09c_711b:
    db $10                                        ; $711b: $10
    jp Jump_000_1021                              ; $711c: $c3 $21 $10


    ld c, c                                       ; $711f: $49
    ld a, h                                       ; $7120: $7c
    nop                                           ; $7121: $00
    ld b, h                                       ; $7122: $44
    jr nz, jr_09c_7184                            ; $7123: $20 $5f

    nop                                           ; $7125: $00
    nop                                           ; $7126: $00
    ld d, c                                       ; $7127: $51
    ld [$0057], sp                                ; $7128: $08 $57 $00
    ld [hl], h                                    ; $712b: $74
    inc bc                                        ; $712c: $03
    inc d                                         ; $712d: $14
    nop                                           ; $712e: $00
    ld bc, $001c                                  ; $712f: $01 $1c $00
    inc b                                         ; $7132: $04
    nop                                           ; $7133: $00
    rlca                                          ; $7134: $07
    add hl, de                                    ; $7135: $19
    dec b                                         ; $7136: $05
    nop                                           ; $7137: $00
    jr jr_09c_713f                                ; $7138: $18 $05

    add hl, de                                    ; $713a: $19
    push bc                                       ; $713b: $c5
    jr jr_09c_7183                                ; $713c: $18 $45

    sbc c                                         ; $713e: $99

jr_09c_713f:
    ld b, l                                       ; $713f: $45
    ld bc, $4598                                  ; $7140: $01 $98 $45
    add hl, de                                    ; $7143: $19
    ld b, l                                       ; $7144: $45
    jr jr_09c_710c                                ; $7145: $18 $c5

    xor e                                         ; $7147: $ab
    ld d, b                                       ; $7148: $50
    inc b                                         ; $7149: $04
    dec de                                        ; $714a: $1b
    ld d, l                                       ; $714b: $55
    xor e                                         ; $714c: $ab
    ld bc, $0456                                  ; $714d: $01 $56 $04
    ld a, [bc]                                    ; $7150: $0a
    ld [$50ab], sp                                ; $7151: $08 $ab $50
    nop                                           ; $7154: $00
    inc b                                         ; $7155: $04
    ld [$5080], sp                                ; $7156: $08 $80 $50
    jr c, jr_09c_711b                             ; $7159: $38 $c0

    inc c                                         ; $715b: $0c
    db $ec                                        ; $715c: $ec
    rlca                                          ; $715d: $07
    ld b, d                                       ; $715e: $42
    rst $38                                       ; $715f: $ff
    ld bc, $8360                                  ; $7160: $01 $60 $83
    rst $38                                       ; $7163: $ff
    pop bc                                        ; $7164: $c1
    cp a                                          ; $7165: $bf
    inc b                                         ; $7166: $04
    ld c, b                                       ; $7167: $48
    rst $38                                       ; $7168: $ff
    dec h                                         ; $7169: $25
    ld bc, $0383                                  ; $716a: $01 $83 $03
    nop                                           ; $716d: $00
    nop                                           ; $716e: $00
    add e                                         ; $716f: $83
    inc b                                         ; $7170: $04
    ld [$0b00], sp                                ; $7171: $08 $00 $0b
    nop                                           ; $7174: $00
    ld bc, $0fff                                  ; $7175: $01 $ff $0f
    sbc a                                         ; $7178: $9f
    rst $38                                       ; $7179: $ff
    adc a                                         ; $717a: $8f
    rrca                                          ; $717b: $0f
    add a                                         ; $717c: $87
    ld [bc], a                                    ; $717d: $02
    jr nz, jr_09c_7180                            ; $717e: $20 $00

jr_09c_7180:
    rst $38                                       ; $7180: $ff
    rrca                                          ; $7181: $0f
    rst $38                                       ; $7182: $ff

jr_09c_7183:
    pop hl                                        ; $7183: $e1

jr_09c_7184:
    di                                            ; $7184: $f3
    rst $38                                       ; $7185: $ff
    db $e3                                        ; $7186: $e3
    pop hl                                        ; $7187: $e1
    db $10                                        ; $7188: $10
    jp nz, $c3e1                                  ; $7189: $c2 $e1 $c3

    inc b                                         ; $718c: $04
    nop                                           ; $718d: $00
    jp nz, $ffe1                                  ; $718e: $c2 $e1 $ff

    pop hl                                        ; $7191: $e1
    sub d                                         ; $7192: $92
    ld l, $58                                     ; $7193: $2e $58
    add e                                         ; $7195: $83
    rst $38                                       ; $7196: $ff
    ld l, $58                                     ; $7197: $2e $58
    sbc a                                         ; $7199: $9f
    rst $38                                       ; $719a: $ff
    ld l, $58                                     ; $719b: $2e $58
    di                                            ; $719d: $f3
    xor b                                         ; $719e: $a8
    ld l, $60                                     ; $719f: $2e $60
    rst $38                                       ; $71a1: $ff
    ld l, $60                                     ; $71a2: $2e $60
    rst $38                                       ; $71a4: $ff
    ld l, $60                                     ; $71a5: $2e $60
    rst $38                                       ; $71a7: $ff
    rst $38                                       ; $71a8: $ff
    nop                                           ; $71a9: $00
    db $10                                        ; $71aa: $10
    rst $38                                       ; $71ab: $ff
    ld d, l                                       ; $71ac: $55
    xor d                                         ; $71ad: $aa
    inc b                                         ; $71ae: $04
    ld [$55aa], sp                                ; $71af: $08 $aa $55
    nop                                           ; $71b2: $00
    nop                                           ; $71b3: $00
    db $10                                        ; $71b4: $10
    rst $38                                       ; $71b5: $ff
    rst $38                                       ; $71b6: $ff
    ld [$0081], sp                                ; $71b7: $08 $81 $00
    ld d, l                                       ; $71ba: $55
    xor a                                         ; $71bb: $af
    ld [bc], a                                    ; $71bc: $02
    rst $38                                       ; $71bd: $ff
    jr nz, jr_09c_7214                            ; $71be: $20 $54

    xor e                                         ; $71c0: $ab
    db $10                                        ; $71c1: $10
    jr jr_09c_71c4                                ; $71c2: $18 $00

jr_09c_71c4:
    rst $38                                       ; $71c4: $ff
    ldh [rIE], a                                  ; $71c5: $e0 $ff
    ld d, l                                       ; $71c7: $55
    dec [hl]                                      ; $71c8: $35
    ld [$2080], a                                 ; $71c9: $ea $80 $20
    ld b, b                                       ; $71cc: $40
    jr nc, jr_09c_7227                            ; $71cd: $30 $58

    nop                                           ; $71cf: $00
    jr nc, jr_09c_7232                            ; $71d0: $30 $60

    ld [$6030], sp                                ; $71d2: $08 $30 $60
    nop                                           ; $71d5: $00
    nop                                           ; $71d6: $00
    rst $38                                       ; $71d7: $ff
    cp $ff                                        ; $71d8: $fe $ff
    ld d, a                                       ; $71da: $57

jr_09c_71db:
    cp $aa                                        ; $71db: $fe $aa
    rst $38                                       ; $71dd: $ff
    jr nz, @+$03                                  ; $71de: $20 $01

    cp $50                                        ; $71e0: $fe $50
    jr z, jr_09c_71db                             ; $71e2: $28 $f7

    ld [$5da2], sp                                ; $71e4: $08 $a2 $5d
    ld [$6882], sp                                ; $71e7: $08 $82 $68
    nop                                           ; $71ea: $00
    and d                                         ; $71eb: $a2
    ld [$ff08], sp                                ; $71ec: $08 $08 $ff
    xor d                                         ; $71ef: $aa
    dec l                                         ; $71f0: $2d
    add hl, bc                                    ; $71f1: $09
    nop                                           ; $71f2: $00
    ret c                                         ; $71f3: $d8

    ld a, d                                       ; $71f4: $7a
    nop                                           ; $71f5: $00
    add [hl]                                      ; $71f6: $86
    nop                                           ; $71f7: $00
    xor d                                         ; $71f8: $aa
    ld a, a                                       ; $71f9: $7f
    nop                                           ; $71fa: $00
    db $10                                        ; $71fb: $10
    ld [$fe83], sp                                ; $71fc: $08 $83 $fe
    pop hl                                        ; $71ff: $e1
    nop                                           ; $7200: $00
    ld e, a                                       ; $7201: $5f
    ldh [$3f], a                                  ; $7202: $e0 $3f
    ld a, c                                       ; $7204: $79
    sub a                                         ; $7205: $97
    inc a                                         ; $7206: $3c
    jp z, Jump_000_00d3                           ; $7207: $ca $d3 $00

    ld h, h                                       ; $720a: $64
    pop bc                                        ; $720b: $c1
    ld [hl-], a                                   ; $720c: $32
    rst $30                                       ; $720d: $f7
    add hl, de                                    ; $720e: $19
    halt                                          ; $720f: $76
    ld [hl+], a                                   ; $7210: $22
    db $fc                                        ; $7211: $fc
    nop                                           ; $7212: $00
    ld b, h                                       ; $7213: $44

jr_09c_7214:
    ld l, h                                       ; $7214: $6c
    adc b                                         ; $7215: $88
    pop de                                        ; $7216: $d1
    db $10                                        ; $7217: $10
    or a                                          ; $7218: $b7
    jr nz, @-$33                                  ; $7219: $20 $cb

    nop                                           ; $721b: $00
    ld b, c                                       ; $721c: $41
    dec b                                         ; $721d: $05
    add d                                         ; $721e: $82
    dec bc                                        ; $721f: $0b
    inc b                                         ; $7220: $04
    ld d, b                                       ; $7221: $50
    add hl, bc                                    ; $7222: $09
    ld h, c                                       ; $7223: $61

jr_09c_7224:
    nop                                           ; $7224: $00
    inc de                                        ; $7225: $13
    ld h, b                                       ; $7226: $60

jr_09c_7227:
    daa                                           ; $7227: $27
    add c                                         ; $7228: $81
    ld c, [hl]                                    ; $7229: $4e
    jp nz, $839b                                  ; $722a: $c2 $9b $83

    nop                                           ; $722d: $00
    ld sp, $612e                                  ; $722e: $31 $2e $61
    dec d                                         ; $7231: $15

jr_09c_7232:
    jp $8856                                      ; $7232: $c3 $56 $88


    ld a, e                                       ; $7235: $7b
    nop                                           ; $7236: $00
    add h                                         ; $7237: $84
    sub c                                         ; $7238: $91
    jp nz, $e10f                                  ; $7239: $c2 $0f $e1

    dec bc                                        ; $723c: $0b
    ldh a, [$15]                                  ; $723d: $f0 $15
    nop                                           ; $723f: $00
    ld hl, sp+$42                                 ; $7240: $f8 $42
    cp h                                          ; $7242: $bc
    ld d, l                                       ; $7243: $55
    xor $d9                                       ; $7244: $ee $d9
    inc c                                         ; $7246: $0c
    add hl, hl                                    ; $7247: $29
    nop                                           ; $7248: $00
    add [hl]                                      ; $7249: $86
    cp b                                          ; $724a: $b8
    jp $e159                                      ; $724b: $c3 $59 $e1


    ld c, $f1                                     ; $724e: $0e $f1
    dec d                                         ; $7250: $15
    nop                                           ; $7251: $00
    ei                                            ; $7252: $fb
    adc e                                         ; $7253: $8b
    cp $5d                                        ; $7254: $fe $5d
    ld h, [hl]                                    ; $7256: $66
    ld d, b                                       ; $7257: $50
    adc c                                         ; $7258: $89
    db $fc                                        ; $7259: $fc
    nop                                           ; $725a: $00
    ld d, e                                       ; $725b: $53
    xor c                                         ; $725c: $a9
    ld h, [hl]                                    ; $725d: $66
    ld d, a                                       ; $725e: $57
    call z, $9847                                 ; $725f: $cc $47 $98
    ld d, [hl]                                    ; $7262: $56
    nop                                           ; $7263: $00
    jr nc, jr_09c_7224                            ; $7264: $30 $be

    ld h, c                                       ; $7266: $61
    dec a                                         ; $7267: $3d
    jp $8461                                      ; $7268: $c3 $61 $84


    ld a, [c]                                     ; $726b: $f2
    nop                                           ; $726c: $00
    add hl, bc                                    ; $726d: $09
    ld [hl+], a                                   ; $726e: $22
    add hl, de                                    ; $726f: $19
    ld b, d                                       ; $7270: $42
    add hl, sp                                    ; $7271: $39
    sub d                                         ; $7272: $92
    ld l, c                                       ; $7273: $69
    ld b, e                                       ; $7274: $43
    nop                                           ; $7275: $00
    ld sp, hl                                     ; $7276: $f9
    and e                                         ; $7277: $a3
    reti                                          ; $7278: $d9


    inc hl                                        ; $7279: $23
    pop bc                                        ; $727a: $c1
    ld [hl-], a                                   ; $727b: $32
    ld l, a                                       ; $727c: $6f
    sbc b                                         ; $727d: $98
    nop                                           ; $727e: $00
    sub [hl]                                      ; $727f: $96
    add c                                         ; $7280: $81
    add c                                         ; $7281: $81
    adc a                                         ; $7282: $8f
    adc [hl]                                      ; $7283: $8e
    rst $38                                       ; $7284: $ff
    ldh a, [rIE]                                  ; $7285: $f0 $ff
    nop                                           ; $7287: $00
    add b                                         ; $7288: $80
    ld [$ff15], a                                 ; $7289: $ea $15 $ff
    rst $38                                       ; $728c: $ff
    adc d                                         ; $728d: $8a
    scf                                           ; $728e: $37
    inc [hl]                                      ; $728f: $34
    nop                                           ; $7290: $00
    dec de                                        ; $7291: $1b
    ld c, b                                       ; $7292: $48
    rrca                                          ; $7293: $0f
    ldh [rTAC], a                                 ; $7294: $e0 $07
    jp nz, $a083                                  ; $7296: $c2 $83 $a0

    nop                                           ; $7299: $00
    ld b, c                                       ; $729a: $41
    dec [hl]                                      ; $729b: $35
    ldh [rNR31], a                                ; $729c: $e0 $1b
    pop af                                        ; $729e: $f1
    jp hl                                         ; $729f: $e9


    add [hl]                                      ; $72a0: $86
    ld d, b                                       ; $72a1: $50
    nop                                           ; $72a2: $00
    adc h                                         ; $72a3: $8c
    dec hl                                        ; $72a4: $2b
    db $db                                        ; $72a5: $db
    rla                                           ; $72a6: $17
    rst $30                                       ; $72a7: $f7
    cpl                                           ; $72a8: $2f
    rst $28                                       ; $72a9: $ef
    ld e, a                                       ; $72aa: $5f
    nop                                           ; $72ab: $00
    rst $18                                       ; $72ac: $df
    cp a                                          ; $72ad: $bf
    cp a                                          ; $72ae: $bf
    ld a, a                                       ; $72af: $7f
    ld a, a                                       ; $72b0: $7f
    ld e, $1d                                     ; $72b1: $1e $1d
    cp $00                                        ; $72b3: $fe $00
    db $fd                                        ; $72b5: $fd
    cp $fd                                        ; $72b6: $fe $fd
    rst $38                                       ; $72b8: $ff
    push af                                       ; $72b9: $f5
    rst $10                                       ; $72ba: $d7
    db $ed                                        ; $72bb: $ed
    xor e                                         ; $72bc: $ab
    inc b                                         ; $72bd: $04
    ld d, a                                       ; $72be: $57
    ld d, a                                       ; $72bf: $57
    xor e                                         ; $72c0: $ab
    xor a                                         ; $72c1: $af
    ld d, [hl]                                    ; $72c2: $56
    ldh a, [rNR42]                                ; $72c3: $f0 $21
    ld a, a                                       ; $72c5: $7f
    ld a, a                                       ; $72c6: $7f
    nop                                           ; $72c7: $00
    sbc a                                         ; $72c8: $9f
    rst $38                                       ; $72c9: $ff
    add e                                         ; $72ca: $83
    cp a                                          ; $72cb: $bf
    ret nz                                        ; $72cc: $c0

    rst $38                                       ; $72cd: $ff
    ret nz                                        ; $72ce: $c0

jr_09c_72cf:
    reti                                          ; $72cf: $d9


    nop                                           ; $72d0: $00
    inc c                                         ; $72d1: $0c
    add hl, bc                                    ; $72d2: $09
    ld b, $e8                                     ; $72d3: $06 $e8
    db $e3                                        ; $72d5: $e3
    pop af                                        ; $72d6: $f1
    ld de, $00f6                                  ; $72d7: $11 $f6 $00
    ld de, $13f5                                  ; $72da: $11 $f5 $13
    dec de                                        ; $72dd: $1b
    ld [$faf9], a                                 ; $72de: $ea $f9 $fa
    ld h, d                                       ; $72e1: $62
    nop                                           ; $72e2: $00
    add a                                         ; $72e3: $87
    push af                                       ; $72e4: $f5
    ld c, $21                                     ; $72e5: $0e $21
    ld e, $41                                     ; $72e7: $1e $41
    ccf                                           ; $72e9: $3f
    sub b                                         ; $72ea: $90
    nop                                           ; $72eb: $00
    ld l, a                                       ; $72ec: $6f
    ld b, h                                       ; $72ed: $44
    rst $38                                       ; $72ee: $ff
    and [hl]                                      ; $72ef: $a6
    db $db                                        ; $72f0: $db
    inc sp                                        ; $72f1: $33
    pop de                                        ; $72f2: $d1
    ld [hl-], a                                   ; $72f3: $32
    nop                                           ; $72f4: $00
    rst $28                                       ; $72f5: $ef
    jr jr_09c_72cf                                ; $72f6: $18 $d7

    adc c                                         ; $72f8: $89
    adc [hl]                                      ; $72f9: $8e
    and h                                         ; $72fa: $a4
    rlca                                          ; $72fb: $07
    ld b, [hl]                                    ; $72fc: $46

jr_09c_72fd:
    nop                                           ; $72fd: $00
    add e                                         ; $72fe: $83
    inc sp                                        ; $72ff: $33
    pop bc                                        ; $7300: $c1
    ret nc                                        ; $7301: $d0

    jr nz, @+$3c                                  ; $7302: $20 $3a

    ret nc                                        ; $7304: $d0

    ld a, [$fb00]                                 ; $7305: $fa $00 $fb
    nop                                           ; $7308: $00
    inc bc                                        ; $7309: $03
    ret z                                         ; $730a: $c8

    rst $08                                       ; $730b: $cf
    ldh [$e7], a                                  ; $730c: $e0 $e7
    ld a, [c]                                     ; $730e: $f2
    nop                                           ; $730f: $00
    di                                            ; $7310: $f3
    ld hl, sp-$07                                 ; $7311: $f8 $f9
    db $fd                                        ; $7313: $fd
    ld a, h                                       ; $7314: $7c
    sbc [hl]                                      ; $7315: $9e
    ld a, [hl]                                    ; $7316: $7e
    jp hl                                         ; $7317: $e9


    nop                                           ; $7318: $00
    add [hl]                                      ; $7319: $86
    ld d, e                                       ; $731a: $53
    adc h                                         ; $731b: $8c
    jr z, jr_09c_72fd                             ; $731c: $28 $df

    dec de                                        ; $731e: $1b
    push af                                       ; $731f: $f5
    inc hl                                        ; $7320: $23
    nop                                           ; $7321: $00
    cp $47                                        ; $7322: $fe $47
    db $fc                                        ; $7324: $fc
    sbc h                                         ; $7325: $9c
    add sp, -$71                                  ; $7326: $e8 $8f
    ld [hl], b                                    ; $7328: $70
    inc a                                         ; $7329: $3c
    nop                                           ; $732a: $00
    pop hl                                        ; $732b: $e1
    ld [hl], h                                    ; $732c: $74
    jp $875a                                      ; $732d: $c3 $5a $87


    ldh a, [rIF]                                  ; $7330: $f0 $0f
    ld h, h                                       ; $7332: $64
    nop                                           ; $7333: $00
    dec de                                        ; $7334: $1b
    pop de                                        ; $7335: $d1
    ccf                                           ; $7336: $3f
    add [hl]                                      ; $7337: $86
    ld a, d                                       ; $7338: $7a
    ld b, d                                       ; $7339: $42
    db $fc                                        ; $733a: $fc
    adc h                                         ; $733b: $8c
    nop                                           ; $733c: $00
    ld hl, sp+$4a                                 ; $733d: $f8 $4a
    db $f4                                        ; $733f: $f4
    inc hl                                        ; $7340: $23
    cp $71                                        ; $7341: $fe $71
    rst $18                                       ; $7343: $df
    ld hl, sp+$00                                 ; $7344: $f8 $00
    adc a                                         ; $7346: $8f
    dec a                                         ; $7347: $3d
    add [hl]                                      ; $7348: $86
    sbc [hl]                                      ; $7349: $9e
    jp Jump_09c_619a                              ; $734a: $c3 $9a $61


    rst $38                                       ; $734d: $ff
    daa                                           ; $734e: $27
    rst $38                                       ; $734f: $ff
    add b                                         ; $7350: $80
    ld [bc], a                                    ; $7351: $02
    nop                                           ; $7352: $00
    ret nz                                        ; $7353: $c0

    cp a                                          ; $7354: $bf
    inc b                                         ; $7355: $04
    jr jr_09c_73b8                                ; $7356: $18 $60

    ld [bc], a                                    ; $7358: $02
    ld c, h                                       ; $7359: $4c
    add hl, bc                                    ; $735a: $09
    ret nz                                        ; $735b: $c0

    ld d, d                                       ; $735c: $52
    ld de, $2150                                  ; $735d: $11 $50 $21
    rst $38                                       ; $7360: $ff
    ld b, c                                       ; $7361: $41
    cp a                                          ; $7362: $bf
    add e                                         ; $7363: $83
    ld a, a                                       ; $7364: $7f
    ld bc, $ff28                                  ; $7365: $01 $28 $ff
    inc bc                                        ; $7368: $03
    ld l, e                                       ; $7369: $6b
    ld [bc], a                                    ; $736a: $02
    xor e                                         ; $736b: $ab
    sbc l                                         ; $736c: $9d
    ld [bc], a                                    ; $736d: $02
    ld [hl], d                                    ; $736e: $72
    xor a                                         ; $736f: $af
    ld h, [hl]                                    ; $7370: $66
    nop                                           ; $7371: $00
    rrca                                          ; $7372: $0f
    or d                                          ; $7373: $b2
    rrca                                          ; $7374: $0f
    ld h, $0f                                     ; $7375: $26 $0f
    ld [hl-], a                                   ; $7377: $32
    rrca                                          ; $7378: $0f
    ld b, [hl]                                    ; $7379: $46
    nop                                           ; $737a: $00
    cpl                                           ; $737b: $2f
    ld a, [c]                                     ; $737c: $f2
    rrca                                          ; $737d: $0f
    add [hl]                                      ; $737e: $86
    cpl                                           ; $737f: $2f
    or l                                          ; $7380: $b5
    rrca                                          ; $7381: $0f
    and [hl]                                      ; $7382: $a6
    ld b, b                                       ; $7383: $40
    rra                                           ; $7384: $1f
    inc b                                         ; $7385: $04
    ld c, b                                       ; $7386: $48
    adc a                                         ; $7387: $8f
    ld a, [$5ee5]                                 ; $7388: $fa $e5 $5e
    sub $2b                                       ; $738b: $d6 $2b
    nop                                           ; $738d: $00
    pop af                                        ; $738e: $f1
    rra                                           ; $738f: $1f
    xor c                                         ; $7390: $a9
    ld c, $7f                                     ; $7391: $0e $7f
    add h                                         ; $7393: $84
    ld a, $c3                                     ; $7394: $3e $c3
    nop                                           ; $7396: $00
    ld c, a                                       ; $7397: $4f
    ld h, c                                       ; $7398: $61
    ld [hl], l                                    ; $7399: $75
    ld a, d                                       ; $739a: $7a
    ld a, [$f7f5]                                 ; $739b: $fa $f5 $f7
    ei                                            ; $739e: $fb
    db $10                                        ; $739f: $10
    rst $30                                       ; $73a0: $f7
    db $ec                                        ; $73a1: $ec
    cp $e8                                        ; $73a2: $fe $e8

jr_09c_73a4:
    jr nz, jr_09c_73a4                            ; $73a4: $20 $fe

    ld sp, hl                                     ; $73a6: $f9
    rst $38                                       ; $73a7: $ff
    pop bc                                        ; $73a8: $c1
    nop                                           ; $73a9: $00
    db $fd                                        ; $73aa: $fd
    inc bc                                        ; $73ab: $03
    rst $38                                       ; $73ac: $ff
    inc bc                                        ; $73ad: $03
    ld a, e                                       ; $73ae: $7b
    add a                                         ; $73af: $87
    sbc [hl]                                      ; $73b0: $9e
    rst $20                                       ; $73b1: $e7
    ld b, c                                       ; $73b2: $41
    and $0a                                       ; $73b3: $e6 $0a
    ld bc, $e1de                                  ; $73b5: $01 $de $e1

jr_09c_73b8:
    ld sp, hl                                     ; $73b8: $f9
    rst $20                                       ; $73b9: $e7
    rst $20                                       ; $73ba: $e7
    and $01                                       ; $73bb: $e6 $01
    db $10                                        ; $73bd: $10
    ret c                                         ; $73be: $d8

    rst $38                                       ; $73bf: $ff
    add c                                         ; $73c0: $81
    db $ec                                        ; $73c1: $ec
    ld [bc], a                                    ; $73c2: $02
    adc a                                         ; $73c3: $8f
    rst $38                                       ; $73c4: $ff
    inc h                                         ; $73c5: $24
    ld sp, $9400                                  ; $73c6: $31 $00 $94
    dec de                                        ; $73c9: $1b
    jp z, $ac8f                                   ; $73ca: $ca $8f $ac

    ld b, a                                       ; $73cd: $47
    ld [hl], $e3                                  ; $73ce: $36 $e3
    nop                                           ; $73d0: $00
    add hl, hl                                    ; $73d1: $29
    pop de                                        ; $73d2: $d1
    inc e                                         ; $73d3: $1c
    add sp, $06                                   ; $73d4: $e8 $06
    db $fc                                        ; $73d6: $fc
    ld a, a                                       ; $73d7: $7f
    rst $38                                       ; $73d8: $ff
    nop                                           ; $73d9: $00
    ld a, a                                       ; $73da: $7f
    cp a                                          ; $73db: $bf
    ccf                                           ; $73dc: $3f
    rst $18                                       ; $73dd: $df
    rst $38                                       ; $73de: $ff
    ld c, a                                       ; $73df: $4f
    xor a                                         ; $73e0: $af
    add a                                         ; $73e1: $87
    inc bc                                        ; $73e2: $03
    adc a                                         ; $73e3: $8f
    inc bc                                        ; $73e4: $03
    rst $38                                       ; $73e5: $ff
    adc b                                         ; $73e6: $88
    ld [hl], b                                    ; $73e7: $70
    ld d, e                                       ; $73e8: $53
    ld a, $09                                     ; $73e9: $3e $09
    inc b                                         ; $73eb: $04
    jr z, @-$76                                   ; $73ec: $28 $88

    scf                                           ; $73ee: $37
    ld bc, $9f9f                                  ; $73ef: $01 $9f $9f
    rst $38                                       ; $73f2: $ff
    or e                                          ; $73f3: $b3
    nop                                           ; $73f4: $00
    rst $38                                       ; $73f5: $ff
    ld hl, sp-$01                                 ; $73f6: $f8 $ff
    db $10                                        ; $73f8: $10
    ret nz                                        ; $73f9: $c0

    rst $38                                       ; $73fa: $ff
    add a                                         ; $73fb: $87
    dec sp                                        ; $73fc: $3b
    inc bc                                        ; $73fd: $03
    ld sp, hl                                     ; $73fe: $f9
    ld hl, sp+$07                                 ; $73ff: $f8 $07
    ld a, [$e100]                                 ; $7401: $fa $00 $e1
    ld e, a                                       ; $7404: $5f
    ld [c], a                                     ; $7405: $e2
    dec a                                         ; $7406: $3d
    ld [hl], c                                    ; $7407: $71
    sbc a                                         ; $7408: $9f
    or c                                          ; $7409: $b1
    adc $00                                       ; $740a: $ce $00
    ld b, a                                       ; $740c: $47
    ld h, h                                       ; $740d: $64
    ld l, $33                                     ; $740e: $2e $33
    scf                                           ; $7410: $37
    add hl, de                                    ; $7411: $19

jr_09c_7412:
    ld a, d                                       ; $7412: $7a
    daa                                           ; $7413: $27

jr_09c_7414:
    nop                                           ; $7414: $00
    sub l                                         ; $7415: $95
    ld c, [hl]                                    ; $7416: $4e
    pop hl                                        ; $7417: $e1
    sbc [hl]                                      ; $7418: $9e
    pop de                                        ; $7419: $d1
    ld a, $84                                     ; $741a: $3e $84
    ld a, e                                       ; $741c: $7b
    nop                                           ; $741d: $00
    ld d, c                                       ; $741e: $51
    rst $28                                       ; $741f: $ef
    ld d, d                                       ; $7420: $52
    xor a                                         ; $7421: $af
    ld de, $dcee                                  ; $7422: $11 $ee $dc
    dec hl                                        ; $7425: $2b
    nop                                           ; $7426: $00
    dec d                                         ; $7427: $15
    ei                                            ; $7428: $fb
    or d                                          ; $7429: $b2
    ld l, a                                       ; $742a: $6f
    ld b, [hl]                                    ; $742b: $46
    db $fd                                        ; $742c: $fd
    adc h                                         ; $742d: $8c
    ei                                            ; $742e: $fb
    nop                                           ; $742f: $00
    dec bc                                        ; $7430: $0b
    pop af                                        ; $7431: $f1
    ld [hl-], a                                   ; $7432: $32
    pop hl                                        ; $7433: $e1

jr_09c_7434:
    ld l, l                                       ; $7434: $6d
    jp $88ae                                      ; $7435: $c3 $ae $88


    nop                                           ; $7438: $00
    add [hl]                                      ; $7439: $86
    inc b                                         ; $743a: $04
    pop de                                        ; $743b: $d1
    add d                                         ; $743c: $82
    ld h, c                                       ; $743d: $61
    pop bc                                        ; $743e: $c1
    or e                                          ; $743f: $b3
    ld h, b                                       ; $7440: $60
    nop                                           ; $7441: $00
    jr jr_09c_7434                                ; $7442: $18 $f0

    sbc h                                         ; $7444: $9c
    add sp, $06                                   ; $7445: $e8 $06
    ld a, h                                       ; $7447: $7c
    dec hl                                        ; $7448: $2b
    inc c                                         ; $7449: $0c
    nop                                           ; $744a: $00

jr_09c_744b:
    and h                                         ; $744b: $a4
    ld b, $c6                                     ; $744c: $06 $c6
    add e                                         ; $744e: $83
    jr z, jr_09c_7412                             ; $744f: $28 $c1

    ld sp, $00e0                                  ; $7451: $31 $e0 $00
    adc a                                         ; $7454: $8f
    ld [hl], c                                    ; $7455: $71
    rrca                                          ; $7456: $0f
    ld a, [$7f04]                                 ; $7457: $fa $04 $7f
    ret c                                         ; $745a: $d8

    xor a                                         ; $745b: $af
    nop                                           ; $745c: $00
    pop bc                                        ; $745d: $c1
    ld a, a                                       ; $745e: $7f
    and c                                         ; $745f: $a1
    ld a, [hl]                                    ; $7460: $7e
    ld b, d                                       ; $7461: $42
    db $fc                                        ; $7462: $fc
    adc $b8                                       ; $7463: $ce $b8
    nop                                           ; $7465: $00
    inc bc                                        ; $7466: $03
    ldh a, [rNR34]                                ; $7467: $f0 $1e
    pop hl                                        ; $7469: $e1
    ld d, l                                       ; $746a: $55
    jp $86da                                      ; $746b: $c3 $da $86


    nop                                           ; $746e: $00
    push af                                       ; $746f: $f5
    inc c                                         ; $7470: $0c
    xor c                                         ; $7471: $a9
    jr jr_09c_744b                                ; $7472: $18 $d7

    ld sp, $62a7                                  ; $7474: $31 $a7 $62
    nop                                           ; $7477: $00
    ld c, h                                       ; $7478: $4c
    rst $00                                       ; $7479: $c7
    sbc d                                         ; $747a: $9a
    adc a                                         ; $747b: $8f
    dec h                                         ; $747c: $25
    dec de                                        ; $747d: $1b
    db $e3                                        ; $747e: $e3
    ld a, $00                                     ; $747f: $3e $00
    pop af                                        ; $7481: $f1
    ld e, a                                       ; $7482: $5f
    jp c, $948d                                   ; $7483: $da $8d $94

    rlca                                          ; $7486: $07
    di                                            ; $7487: $f3
    add d                                         ; $7488: $82
    ld bc, $41e9                                  ; $7489: $01 $e9 $41
    or h                                          ; $748c: $b4
    ld h, b                                       ; $748d: $60
    ld e, b                                       ; $748e: $58
    or b                                          ; $748f: $b0
    ld a, [hl]                                    ; $7490: $7e
    jp hl                                         ; $7491: $e9


    jr nz, jr_09c_7414                            ; $7492: $20 $80

    ret z                                         ; $7494: $c8

    inc hl                                        ; $7495: $23
    cp $3a                                        ; $7496: $fe $3a
    pop hl                                        ; $7498: $e1
    db $fd                                        ; $7499: $fd
    ld b, e                                       ; $749a: $43
    xor d                                         ; $749b: $aa
    add a                                         ; $749c: $87
    nop                                           ; $749d: $00

jr_09c_749e:
    ld d, h                                       ; $749e: $54
    adc a                                         ; $749f: $8f
    add e                                         ; $74a0: $83
    call c, $fb55                                 ; $74a1: $dc $55 $fb
    ld d, e                                       ; $74a4: $53
    xor [hl]                                      ; $74a5: $ae
    nop                                           ; $74a6: $00
    dec [hl]                                      ; $74a7: $35
    call z, $daab                                 ; $74a8: $cc $ab $da
    jr jr_09c_749e                                ; $74ab: $18 $f1

    dec l                                         ; $74ad: $2d
    ldh [rP1], a                                  ; $74ae: $e0 $00
    ld b, [hl]                                    ; $74b0: $46
    pop bc                                        ; $74b1: $c1
    rla                                           ; $74b2: $17
    add d                                         ; $74b3: $82
    rlc h                                         ; $74b4: $cb $04
    cp h                                          ; $74b6: $bc
    add hl, bc                                    ; $74b7: $09
    nop                                           ; $74b8: $00
    inc a                                         ; $74b9: $3c
    inc de                                        ; $74ba: $13
    rrca                                          ; $74bb: $0f
    jr nc, @-$69                                  ; $74bc: $30 $95

    jr @-$33                                      ; $74be: $18 $cb

    adc h                                         ; $74c0: $8c
    nop                                           ; $74c1: $00
    pop af                                        ; $74c2: $f1
    ld b, [hl]                                    ; $74c3: $46
    ld [hl-], a                                   ; $74c4: $32
    ld h, e                                       ; $74c5: $63
    ld c, l                                       ; $74c6: $4d
    pop af                                        ; $74c7: $f1
    sbc [hl]                                      ; $74c8: $9e
    add sp, $00                                   ; $74c9: $e8 $00
    ld a, [de]                                    ; $74cb: $1a
    db $e4                                        ; $74cc: $e4
    cp $ff                                        ; $74cd: $fe $ff
    cp $fd                                        ; $74cf: $fe $fd
    ld a, [de]                                    ; $74d1: $1a
    ei                                            ; $74d2: $fb
    nop                                           ; $74d3: $00
    inc [hl]                                      ; $74d4: $34
    rst $30                                       ; $74d5: $f7
    and $e3                                       ; $74d6: $e6 $e3
    ret                                           ; $74d8: $c9


    pop de                                        ; $74d9: $d1
    ld e, h                                       ; $74da: $5c
    jr z, jr_09c_74dd                             ; $74db: $28 $00

jr_09c_74dd:
    ld b, $fc                                     ; $74dd: $06 $fc
    ld l, [hl]                                    ; $74df: $6e
    sbc b                                         ; $74e0: $98
    dec de                                        ; $74e1: $1b
    ldh a, [$35]                                  ; $74e2: $f0 $35
    ldh [rP1], a                                  ; $74e4: $e0 $00
    ld [c], a                                     ; $74e6: $e2
    ld b, c                                       ; $74e7: $41
    and a                                         ; $74e8: $a7
    add d                                         ; $74e9: $82
    adc a                                         ; $74ea: $8f
    inc b                                         ; $74eb: $04
    cp $89                                        ; $74ec: $fe $89
    nop                                           ; $74ee: $00
    ld [hl], b                                    ; $74ef: $70
    ld d, e                                       ; $74f0: $53
    ei                                            ; $74f1: $fb
    ld h, $a6                                     ; $74f2: $26 $a6
    ld c, h                                       ; $74f4: $4c
    rst $28                                       ; $74f5: $ef
    sbc d                                         ; $74f6: $9a
    nop                                           ; $74f7: $00
    reti                                          ; $74f8: $d9


    scf                                           ; $74f9: $37
    add d                                         ; $74fa: $82
    ld a, l                                       ; $74fb: $7d
    ld b, c                                       ; $74fc: $41
    rst $38                                       ; $74fd: $ff
    inc bc                                        ; $74fe: $03
    cp $00                                        ; $74ff: $fe $00
    ld c, h                                       ; $7501: $4c
    or a                                          ; $7502: $b7
    add c                                         ; $7503: $81
    cp $a1                                        ; $7504: $fe $a1
    ld e, a                                       ; $7506: $5f
    ldh a, [$2f]                                  ; $7507: $f0 $2f
    nop                                           ; $7509: $00
    jr c, jr_09c_7523                             ; $750a: $38 $17

    or b                                          ; $750c: $b0
    adc a                                         ; $750d: $8f
    ld l, $c5                                     ; $750e: $2e $c5
    adc [hl]                                      ; $7510: $8e
    ld h, e                                       ; $7511: $63
    ld a, [de]                                    ; $7512: $1a
    ld c, e                                       ; $7513: $4b
    pop de                                        ; $7514: $d1
    ccf                                           ; $7515: $3f
    jr nc, jr_09c_7519                            ; $7516: $30 $01

    ld [bc], a                                    ; $7518: $02

jr_09c_7519:
    ld [$0260], sp                                ; $7519: $08 $60 $02
    and b                                         ; $751c: $a0
    jp $ff10                                      ; $751d: $c3 $10 $ff


    rst $10                                       ; $7520: $d7
    rst $28                                       ; $7521: $ef
    inc b                                         ; $7522: $04

jr_09c_7523:
    ld c, b                                       ; $7523: $48
    jp nc, $d62f                                  ; $7524: $d2 $2f $d6

    cpl                                           ; $7527: $2f
    nop                                           ; $7528: $00
    add d                                         ; $7529: $82
    ccf                                           ; $752a: $3f
    sub $2f                                       ; $752b: $d6 $2f
    ld b, d                                       ; $752d: $42
    cp a                                          ; $752e: $bf
    or $2f                                        ; $752f: $f6 $2f
    nop                                           ; $7531: $00
    add d                                         ; $7532: $82
    ld a, a                                       ; $7533: $7f
    halt                                          ; $7534: $76
    xor a                                         ; $7535: $af
    ld [hl+], a                                   ; $7536: $22
    rst $38                                       ; $7537: $ff
    ld h, [hl]                                    ; $7538: $66
    rst $38                                       ; $7539: $ff
    inc b                                         ; $753a: $04
    and d                                         ; $753b: $a2
    rst $38                                       ; $753c: $ff
    halt                                          ; $753d: $76
    rst $38                                       ; $753e: $ff
    cp d                                          ; $753f: $ba
    ld a, d                                       ; $7540: $7a
    inc bc                                        ; $7541: $03
    cp $ff                                        ; $7542: $fe $ff
    ld [hl+], a                                   ; $7544: $22
    ld d, [hl]                                    ; $7545: $56
    rst $38                                       ; $7546: $ff
    ldh [$39], a                                  ; $7547: $e0 $39
    and a                                         ; $7549: $a7
    rra                                           ; $754a: $1f
    or a                                          ; $754b: $b7
    inc b                                         ; $754c: $04
    nop                                           ; $754d: $00
    xor d                                         ; $754e: $aa
    nop                                           ; $754f: $00
    rst $38                                       ; $7550: $ff
    ld c, $fb                                     ; $7551: $0e $fb
    xor c                                         ; $7553: $a9
    db $fd                                        ; $7554: $fd
    dec b                                         ; $7555: $05
    ld a, [$50a9]                                 ; $7556: $fa $a9 $50
    ld d, h                                       ; $7559: $54
    ldh a, [$0b]                                  ; $755a: $f0 $0b
    add b                                         ; $755c: $80
    jr nz, jr_09c_755f                            ; $755d: $20 $00

jr_09c_755f:
    and a                                         ; $755f: $a7
    dec e                                         ; $7560: $1d
    cp l                                          ; $7561: $bd
    dec bc                                        ; $7562: $0b
    ld bc, $051a                                  ; $7563: $01 $1a $05
    dec bc                                        ; $7566: $0b
    pop af                                        ; $7567: $f1
    nop                                           ; $7568: $00
    ld bc, $8fff                                  ; $7569: $01 $ff $8f
    inc b                                         ; $756c: $04
    ld [$807f], sp                                ; $756d: $08 $7f $80
    ld a, [hl+]                                   ; $7570: $2a
    push de                                       ; $7571: $d5
    ld d, d                                       ; $7572: $52
    ld a, [bc]                                    ; $7573: $0a
    ld a, [hl+]                                   ; $7574: $2a
    add b                                         ; $7575: $80
    add b                                         ; $7576: $80
    add d                                         ; $7577: $82
    and b                                         ; $7578: $a0
    inc de                                        ; $7579: $13
    db $fd                                        ; $757a: $fd
    inc bc                                        ; $757b: $03
    xor c                                         ; $757c: $a9
    ld d, a                                       ; $757d: $57
    ld bc, $04a7                                  ; $757e: $01 $a7 $04
    xor c                                         ; $7581: $a9
    ld b, b                                       ; $7582: $40
    inc bc                                        ; $7583: $03
    ld b, b                                       ; $7584: $40
    ld a, [de]                                    ; $7585: $1a
    inc bc                                        ; $7586: $03
    ld a, $15                                     ; $7587: $3e $15
    dec de                                        ; $7589: $1b
    inc h                                         ; $758a: $24
    dec bc                                        ; $758b: $0b
    nop                                           ; $758c: $00
    sub [hl]                                      ; $758d: $96
    dec b                                         ; $758e: $05
    sub $83                                       ; $758f: $d6 $83
    ld h, e                                       ; $7591: $63
    pop bc                                        ; $7592: $c1
    or c                                          ; $7593: $b1
    ld h, b                                       ; $7594: $60
    nop                                           ; $7595: $00
    dec de                                        ; $7596: $1b
    pop af                                        ; $7597: $f1
    ld a, b                                       ; $7598: $78
    add [hl]                                      ; $7599: $86
    ld h, h                                       ; $759a: $64
    adc h                                         ; $759b: $8c
    add hl, hl                                    ; $759c: $29
    ret c                                         ; $759d: $d8

    nop                                           ; $759e: $00
    jp Jump_000_2471                              ; $759f: $c3 $71 $24


    db $e3                                        ; $75a2: $e3
    ld c, [hl]                                    ; $75a3: $4e
    push bc                                       ; $75a4: $c5
    sub b                                         ; $75a5: $90
    adc a                                         ; $75a6: $8f
    nop                                           ; $75a7: $00
    jr c, jr_09c_75c1                             ; $75a8: $38 $17

    ld e, c                                       ; $75aa: $59
    ld h, $80                                     ; $75ab: $26 $80
    ld a, a                                       ; $75ad: $7f
    ld [hl+], a                                   ; $75ae: $22
    sbc $00                                       ; $75af: $de $00
    and $1c                                       ; $75b1: $e6 $1c
    adc $39                                       ; $75b3: $ce $39
    inc d                                         ; $75b5: $14
    di                                            ; $75b6: $f3
    dec sp                                        ; $75b7: $3b
    and $00                                       ; $75b8: $e6 $00
    push af                                       ; $75ba: $f5
    ld c, [hl]                                    ; $75bb: $4e
    rrca                                          ; $75bc: $0f
    ld hl, sp-$72                                 ; $75bd: $f8 $8e
    ld [hl], h                                    ; $75bf: $74
    dec hl                                        ; $75c0: $2b

jr_09c_75c1:
    halt                                          ; $75c1: $76
    nop                                           ; $75c2: $00
    ld e, l                                       ; $75c3: $5d
    db $d3                                        ; $75c4: $d3
    ret nz                                        ; $75c5: $c0

    adc a                                         ; $75c6: $8f
    add a                                         ; $75c7: $87
    inc b                                         ; $75c8: $04
    add $83                                       ; $75c9: $c6 $83
    nop                                           ; $75cb: $00
    add hl, hl                                    ; $75cc: $29
    ld b, c                                       ; $75cd: $41
    call z, Call_09c_5eba                         ; $75ce: $cc $ba $5e
    ld h, h                                       ; $75d1: $64
    or e                                          ; $75d2: $b3
    ld l, $00                                     ; $75d3: $2e $00
    inc de                                        ; $75d5: $13
    dec e                                         ; $75d6: $1d
    xor b                                         ; $75d7: $a8
    rrca                                          ; $75d8: $0f
    xor h                                         ; $75d9: $ac
    rlca                                          ; $75da: $07
    res 0, d                                      ; $75db: $cb $82
    nop                                           ; $75dd: $00
    pop hl                                        ; $75de: $e1
    ld b, c                                       ; $75df: $41
    ld h, c                                       ; $75e0: $61
    ld a, $c2                                     ; $75e1: $3e $c2
    ld a, l                                       ; $75e3: $7d
    ld h, e                                       ; $75e4: $63
    sbc [hl]                                      ; $75e5: $9e
    nop                                           ; $75e6: $00
    and e                                         ; $75e7: $a3
    ld e, h                                       ; $75e8: $5c
    adc [hl]                                      ; $75e9: $8e
    ld sp, hl                                     ; $75ea: $f9
    ld d, l                                       ; $75eb: $55
    di                                            ; $75ec: $f3
    cp e                                          ; $75ed: $bb
    ld h, [hl]                                    ; $75ee: $66
    nop                                           ; $75ef: $00
    inc sp                                        ; $75f0: $33
    call z, $9bce                                 ; $75f1: $cc $ce $9b
    sbc a                                         ; $75f4: $9f
    ld sp, $611a                                  ; $75f5: $31 $1a $61
    nop                                           ; $75f8: $00
    ld d, h                                       ; $75f9: $54
    jp $8648                                      ; $75fa: $c3 $48 $86


    rst $30                                       ; $75fd: $f7
    inc c                                         ; $75fe: $0c
    ld [bc], a                                    ; $75ff: $02
    add hl, de                                    ; $7600: $19
    nop                                           ; $7601: $00
    ld e, h                                       ; $7602: $5c
    inc sp                                        ; $7603: $33
    ld sp, $5a20                                  ; $7604: $31 $20 $5a
    sub b                                         ; $7607: $90
    cp h                                          ; $7608: $bc
    ret z                                         ; $7609: $c8

    nop                                           ; $760a: $00
    sbc [hl]                                      ; $760b: $9e
    ld h, h                                       ; $760c: $64
    inc hl                                        ; $760d: $23
    ld [hl], d                                    ; $760e: $72
    ld d, l                                       ; $760f: $55
    ld sp, hl                                     ; $7610: $f9
    cp e                                          ; $7611: $bb
    call z, $d400                                 ; $7612: $cc $00 $d4
    ld l, $75                                     ; $7615: $2e $75
    jr nz, @+$7d                                  ; $7617: $20 $7b

    sub c                                         ; $7619: $91
    or a                                          ; $761a: $b7

jr_09c_761b:
    jp z, Jump_000_1d00                           ; $761b: $ca $00 $1d

    and $2e                                       ; $761e: $e6 $2e
    di                                            ; $7620: $f3
    or a                                          ; $7621: $b7
    ld e, c                                       ; $7622: $59
    add hl, bc                                    ; $7623: $09
    db $fc                                        ; $7624: $fc
    nop                                           ; $7625: $00
    ld b, c                                       ; $7626: $41
    cp [hl]                                       ; $7627: $be
    rst $08                                       ; $7628: $cf
    sbc b                                         ; $7629: $98
    jr jr_09c_765c                                ; $762a: $18 $30

    ld [hl], $61                                  ; $762c: $36 $61
    nop                                           ; $762e: $00
    ld a, h                                       ; $762f: $7c
    jp $8659                                      ; $7630: $c3 $59 $86


    ld [hl], l                                    ; $7633: $75
    adc h                                         ; $7634: $8c
    ld c, $d9                                     ; $7635: $0e $d9
    nop                                           ; $7637: $00
    sbc l                                         ; $7638: $9d
    ld [hl], e                                    ; $7639: $73
    sbc d                                         ; $763a: $9a
    ld h, [hl]                                    ; $763b: $66
    ld [hl], l                                    ; $763c: $75
    adc $08                                       ; $763d: $ce $08
    sbc e                                         ; $763f: $9b
    nop                                           ; $7640: $00
    pop de                                        ; $7641: $d1
    ld sp, $6085                                  ; $7642: $31 $85 $60
    ld b, e                                       ; $7645: $43
    pop bc                                        ; $7646: $c1
    add a                                         ; $7647: $87
    add d                                         ; $7648: $82
    ld [$041e], sp                                ; $7649: $08 $1e $04
    adc d                                         ; $764c: $8a
    rst $30                                       ; $764d: $f7
    nop                                           ; $764e: $00
    ld [bc], a                                    ; $764f: $02
    ld a, $60                                     ; $7650: $3e $60
    sbc a                                         ; $7652: $9f
    nop                                           ; $7653: $00
    add b                                         ; $7654: $80
    rst $08                                       ; $7655: $cf
    ld e, h                                       ; $7656: $5c
    ld h, a                                       ; $7657: $67
    ld h, $73                                     ; $7658: $26 $73
    ld h, a                                       ; $765a: $67
    reti                                          ; $765b: $d9


jr_09c_765c:
    ld [$c3ad], sp                                ; $765c: $08 $ad $c3
    xor c                                         ; $765f: $a9
    rst $00                                       ; $7660: $c7
    inc b                                         ; $7661: $04
    ld l, b                                       ; $7662: $68
    ld l, a                                       ; $7663: $6f
    ld b, d                                       ; $7664: $42
    ld b, [hl]                                    ; $7665: $46

jr_09c_7666:
    add hl, de                                    ; $7666: $19
    add c                                         ; $7667: $81
    ld b, d                                       ; $7668: $42
    inc a                                         ; $7669: $3c
    nop                                           ; $766a: $00
    dec e                                         ; $766b: $1d
    or b                                          ; $766c: $b0
    ld e, h                                       ; $766d: $5c
    ld [$88ff], sp                                ; $766e: $08 $ff $88
    add hl, hl                                    ; $7671: $29
    ld [bc], a                                    ; $7672: $02
    ld e, a                                       ; $7673: $5f
    cp a                                          ; $7674: $bf
    ccf                                           ; $7675: $3f
    ret nz                                        ; $7676: $c0

    ld a, a                                       ; $7677: $7f
    add b                                         ; $7678: $80
    inc hl                                        ; $7679: $23
    dec b                                         ; $767a: $05
    rst $38                                       ; $767b: $ff
    nop                                           ; $767c: $00
    rst $18                                       ; $767d: $df
    jp $c3df                                      ; $767e: $c3 $df $c3


    rst $38                                       ; $7681: $ff
    add $df                                       ; $7682: $c6 $df
    jp z, $ff13                                   ; $7684: $ca $13 $ff

    jp nz, Jump_000_06df                          ; $7687: $c2 $df $06

    nop                                           ; $768a: $00
    rst $18                                       ; $768b: $df
    jp nz, Jump_000_1802                          ; $768c: $c2 $02 $18

    ld l, $1a                                     ; $768f: $2e $1a
    rrca                                          ; $7691: $0f
    rst $38                                       ; $7692: $ff
    cp $07                                        ; $7693: $fe $07
    rst $38                                       ; $7695: $ff
    ld [bc], a                                    ; $7696: $02

jr_09c_7697:
    jr jr_09c_761b                                ; $7697: $18 $82

    dec de                                        ; $7699: $1b
    jr nc, jr_09c_76a4                            ; $769a: $30 $08

    ld [de], a                                    ; $769c: $12
    ld e, $f0                                     ; $769d: $1e $f0
    db $10                                        ; $769f: $10
    jr z, jr_09c_76ba                             ; $76a0: $28 $18

    ld b, b                                       ; $76a2: $40
    rst $30                                       ; $76a3: $f7

jr_09c_76a4:
    inc b                                         ; $76a4: $04
    jr nz, jr_09c_76b7                            ; $76a5: $20 $10

    ld hl, sp-$31                                 ; $76a7: $f8 $cf
    ret z                                         ; $76a9: $c8

    call z, $0280                                 ; $76aa: $cc $80 $02
    nop                                           ; $76ad: $00
    rst $08                                       ; $76ae: $cf
    ret z                                         ; $76af: $c8

    rst $08                                       ; $76b0: $cf
    call $c8cf                                    ; $76b1: $cd $cf $c8
    rst $38                                       ; $76b4: $ff
    nop                                           ; $76b5: $00
    rst $38                                       ; $76b6: $ff

jr_09c_76b7:
    rra                                           ; $76b7: $1f
    inc bc                                        ; $76b8: $03
    rra                                           ; $76b9: $1f

jr_09c_76ba:
    inc bc                                        ; $76ba: $03
    cp a                                          ; $76bb: $bf
    ld b, $5f                                     ; $76bc: $06 $5f
    nop                                           ; $76be: $00
    ld a, [bc]                                    ; $76bf: $0a
    cp a                                          ; $76c0: $bf
    ld [bc], a                                    ; $76c1: $02
    rra                                           ; $76c2: $1f
    ld b, $1f                                     ; $76c3: $06 $1f
    ld a, [bc]                                    ; $76c5: $0a
    rst $38                                       ; $76c6: $ff
    nop                                           ; $76c7: $00
    rst $38                                       ; $76c8: $ff
    rst $00                                       ; $76c9: $c7
    rst $38                                       ; $76ca: $ff
    ret nz                                        ; $76cb: $c0

    ld hl, sp-$40                                 ; $76cc: $f8 $c0
    jr c, jr_09c_76d4                             ; $76ce: $38 $04

    ld bc, $c43b                                  ; $76d0: $01 $3b $c4
    dec sp                                        ; $76d3: $3b

jr_09c_76d4:
    nop                                           ; $76d4: $00
    jr c, jr_09c_7697                             ; $76d5: $38 $c0

    jr c, jr_09c_76ff                             ; $76d7: $38 $26

    nop                                           ; $76d9: $00
    and $02                                       ; $76da: $e6 $02
    db $10                                        ; $76dc: $10
    add hl, sp                                    ; $76dd: $39
    db $10                                        ; $76de: $10
    ld bc, $1f00                                  ; $76df: $01 $00 $1f
    ld [bc], a                                    ; $76e2: $02
    ld [bc], a                                    ; $76e3: $02
    jr jr_09c_7666                                ; $76e4: $18 $80

    jr z, @-$3e                                   ; $76e6: $28 $c0

    ld [c], a                                     ; $76e8: $e2
    inc h                                         ; $76e9: $24
    nop                                           ; $76ea: $00
    inc b                                         ; $76eb: $04
    ld [$12bd], sp                                ; $76ec: $08 $bd $12
    rra                                           ; $76ef: $1f
    cp $1f                                        ; $76f0: $fe $1f
    ld h, c                                       ; $76f2: $61
    db $10                                        ; $76f3: $10
    ld a, b                                       ; $76f4: $78
    nop                                           ; $76f5: $00
    ld hl, sp+$78                                 ; $76f6: $f8 $78
    adc b                                         ; $76f8: $88
    nop                                           ; $76f9: $00
    adc a                                         ; $76fa: $8f
    nop                                           ; $76fb: $00
    rst $38                                       ; $76fc: $ff
    ld [hl], b                                    ; $76fd: $70
    ld b, h                                       ; $76fe: $44

jr_09c_76ff:
    adc b                                         ; $76ff: $88
    db $e4                                        ; $7700: $e4
    dec b                                         ; $7701: $05
    adc a                                         ; $7702: $8f
    ld a, a                                       ; $7703: $7f
    adc a                                         ; $7704: $8f
    ld h, e                                       ; $7705: $63
    ld [bc], a                                    ; $7706: $02
    cp b                                          ; $7707: $b8
    ld [hl], a                                    ; $7708: $77
    ld [bc], a                                    ; $7709: $02
    adc b                                         ; $770a: $88
    ld [hl], a                                    ; $770b: $77
    adc l                                         ; $770c: $8d
    ld [hl], a                                    ; $770d: $77

jr_09c_770e:
    adc d                                         ; $770e: $8a
    ld [hl], a                                    ; $770f: $77
    ld a, l                                       ; $7710: $7d
    dec bc                                        ; $7711: $0b
    adc a                                         ; $7712: $8f
    nop                                           ; $7713: $00
    adc b                                         ; $7714: $88
    adc h                                         ; $7715: $8c
    adc b                                         ; $7716: $88
    adc h                                         ; $7717: $8c
    ld [$088f], sp                                ; $7718: $08 $8f $08
    adc a                                         ; $771b: $8f
    db $10                                        ; $771c: $10
    dec c                                         ; $771d: $0d
    adc a                                         ; $771e: $8f
    ld [$0070], sp                                ; $771f: $08 $70 $00

jr_09c_7722:
    ld h, e                                       ; $7722: $63
    rst $00                                       ; $7723: $c7
    ld h, e                                       ; $7724: $63
    call z, Call_09c_6200                         ; $7725: $cc $00 $62
    call nc, $cc61                                ; $7728: $d4 $61 $cc
    ld h, d                                       ; $772b: $62
    call nz, $c463                                ; $772c: $c4 $63 $c4
    ld a, [de]                                    ; $772f: $1a
    ld h, e                                       ; $7730: $63
    adc b                                         ; $7731: $88
    nop                                           ; $7732: $00
    ld [bc], a                                    ; $7733: $02
    jr jr_09c_770e                                ; $7734: $18 $d8

    ld c, $3f                                     ; $7736: $0e $3f
    ld [bc], a                                    ; $7738: $02
    nop                                           ; $7739: $00
    adc b                                         ; $773a: $88
    rst $38                                       ; $773b: $ff
    jr c, jr_09c_773e                             ; $773c: $38 $00

jr_09c_773e:
    inc b                                         ; $773e: $04
    ld [$10b9], sp                                ; $773f: $08 $b9 $10
    cp b                                          ; $7742: $b8
    inc bc                                        ; $7743: $03
    ld [hl], $00                                  ; $7744: $36 $00
    ld [bc], a                                    ; $7746: $02
    db $10                                        ; $7747: $10
    ld hl, sp+$0e                                 ; $7748: $f8 $0e
    ld h, a                                       ; $774a: $67
    nop                                           ; $774b: $00
    ld [hl], b                                    ; $774c: $70
    ld hl, sp+$34                                 ; $774d: $f8 $34
    ld [$0838], sp                                ; $774f: $08 $38 $08
    ld [$e40f], sp                                ; $7752: $08 $0f $e4
    ld hl, sp-$1c                                 ; $7755: $f8 $e4
    ld hl, sp-$80                                 ; $7757: $f8 $80
    ret nz                                        ; $7759: $c0

    ld [$fbc3], sp                                ; $775a: $08 $c3 $fb
    jp Jump_000_073b                              ; $775d: $c3 $3b $07


    dec sp                                        ; $7760: $3b
    rst $00                                       ; $7761: $c7
    dec c                                         ; $7762: $0d
    dec sp                                        ; $7763: $3b
    inc bc                                        ; $7764: $03
    dec sp                                        ; $7765: $3b
    jp $3002                                      ; $7766: $c3 $02 $30


    jr z, jr_09c_7782                             ; $7769: $28 $17

    rra                                           ; $776b: $1f
    ld [bc], a                                    ; $776c: $02
    nop                                           ; $776d: $00
    nop                                           ; $776e: $00
    sbc $ff                                       ; $776f: $de $ff
    sbc $f3                                       ; $7771: $de $f3
    ld a, [c]                                     ; $7773: $f2
    di                                            ; $7774: $f3
    jp nc, $70f3                                  ; $7775: $d2 $f3 $70

    cp $04                                        ; $7778: $fe $04
    nop                                           ; $777a: $00
    ld [bc], a                                    ; $777b: $02
    db $10                                        ; $777c: $10
    ld a, b                                       ; $777d: $78
    dec de                                        ; $777e: $1b
    pop af                                        ; $777f: $f1
    ldh a, [$f1]                                  ; $7780: $f0 $f1

jr_09c_7782:
    ldh a, [rP1]                                  ; $7782: $f0 $00
    pop de                                        ; $7784: $d1
    ret nz                                        ; $7785: $c0

    rst $18                                       ; $7786: $df
    ret nz                                        ; $7787: $c0

    rst $38                                       ; $7788: $ff
    ldh [$d1], a                                  ; $7789: $e0 $d1
    ret nz                                        ; $778b: $c0

    ret nz                                        ; $778c: $c0

    ld [bc], a                                    ; $778d: $02
    jr z, jr_09c_77d8                             ; $778e: $28 $48

    ld c, c                                       ; $7790: $49
    inc bc                                        ; $7791: $03
    rst $38                                       ; $7792: $ff
    dec b                                         ; $7793: $05
    cp $07                                        ; $7794: $fe $07
    db $fc                                        ; $7796: $fc
    nop                                           ; $7797: $00
    ld b, $fd                                     ; $7798: $06 $fd
    ld a, a                                       ; $779a: $7f
    rst $38                                       ; $779b: $ff
    push de                                       ; $779c: $d5
    ld a, a                                       ; $779d: $7f
    ld l, d                                       ; $779e: $6a
    rst $38                                       ; $779f: $ff
    jr nz, jr_09c_7722                            ; $77a0: $20 $80

    ld a, a                                       ; $77a2: $7f
    ret nz                                        ; $77a3: $c0

    ld l, $ff                                     ; $77a4: $2e $ff
    ld e, $ff                                     ; $77a6: $1e $ff
    ld e, $f3                                     ; $77a8: $1e $f3
    ld bc, $f3b2                                  ; $77aa: $01 $b2 $f3
    ld d, d                                       ; $77ad: $52
    di                                            ; $77ae: $f3
    ld a, $f3                                     ; $77af: $3e $f3
    ld [de], a                                    ; $77b1: $12
    ld [bc], a                                    ; $77b2: $02
    ld [$e300], sp                                ; $77b3: $08 $00 $e3
    dec e                                         ; $77b6: $1d
    db $e3                                        ; $77b7: $e3
    dec e                                         ; $77b8: $1d
    ld [c], a                                     ; $77b9: $e2
    cp l                                          ; $77ba: $bd
    cp $01                                        ; $77bb: $fe $01
    ld [$a1fe], sp                                ; $77bd: $08 $fe $a1
    ld [c], a                                     ; $77c0: $e2
    dec e                                         ; $77c1: $1d
    ld [bc], a                                    ; $77c2: $02
    ld [$f8fc], sp                                ; $77c3: $08 $fc $f8
    call nz, $c000                                ; $77c6: $c4 $00 $c0
    inc b                                         ; $77c9: $04
    jp $c33c                                      ; $77ca: $c3 $3c $c3


    inc a                                         ; $77cd: $3c
    ret nz                                        ; $77ce: $c0

    inc b                                         ; $77cf: $04
    sub b                                         ; $77d0: $90
    ld [bc], a                                    ; $77d1: $02
    db $10                                        ; $77d2: $10
    di                                            ; $77d3: $f3
    ld [de], a                                    ; $77d4: $12
    ld [hl], b                                    ; $77d5: $70
    jr c, jr_09c_77e9                             ; $77d6: $38 $11

jr_09c_77d8:
    nop                                           ; $77d8: $00
    rra                                           ; $77d9: $1f
    nop                                           ; $77da: $00
    jr nc, @-$1c                                  ; $77db: $30 $e2

    dec e                                         ; $77dd: $1d
    jp nz, $c60f                                  ; $77de: $c2 $0f $c6

    add hl, bc                                    ; $77e1: $09
    scf                                           ; $77e2: $37
    ld hl, sp+$04                                 ; $77e3: $f8 $04
    ld hl, sp+$14                                 ; $77e5: $f8 $14
    inc [hl]                                      ; $77e7: $34
    ret z                                         ; $77e8: $c8

jr_09c_77e9:
    inc b                                         ; $77e9: $04
    halt                                          ; $77ea: $76
    db $10                                        ; $77eb: $10
    adc b                                         ; $77ec: $88
    ld bc, $fd00                                  ; $77ed: $01 $00 $fd
    ld a, b                                       ; $77f0: $78
    nop                                           ; $77f1: $00
    adc d                                         ; $77f2: $8a
    ld [$78fd], sp                                ; $77f3: $08 $fd $78
    rst $38                                       ; $77f6: $ff
    ldh [rNR11], a                                ; $77f7: $e0 $11
    nop                                           ; $77f9: $00
    db $ed                                        ; $77fa: $ed

jr_09c_77fb:
    ld [bc], a                                    ; $77fb: $02
    jr z, jr_09c_7828                             ; $77fc: $28 $2a

    db $10                                        ; $77fe: $10
    ld h, $00                                     ; $77ff: $26 $00
    rlca                                          ; $7801: $07
    ld [bc], a                                    ; $7802: $02
    jr nz, @+$2c                                  ; $7803: $20 $2a

    db $10                                        ; $7805: $10
    ld [$3802], sp                                ; $7806: $08 $02 $38

jr_09c_7809:
    add b                                         ; $7809: $80
    rst $18                                       ; $780a: $df
    ld c, $7b                                     ; $780b: $0e $7b
    ld a, a                                       ; $780d: $7f
    ld a, b                                       ; $780e: $78
    ld a, a                                       ; $780f: $7f
    ld a, e                                       ; $7810: $7b
    db $fc                                        ; $7811: $fc
    ld a, b                                       ; $7812: $78
    db $10                                        ; $7813: $10
    rst $38                                       ; $7814: $ff
    ld a, b                                       ; $7815: $78
    rrca                                          ; $7816: $0f
    ld [bc], a                                    ; $7817: $02
    jr jr_09c_7899                                ; $7818: $18 $7f

    add a                                         ; $781a: $87
    ld c, b                                       ; $781b: $48

jr_09c_781c:
    add b                                         ; $781c: $80
    ld bc, $874f                                  ; $781d: $01 $4f $87
    ld a, b                                       ; $7820: $78
    add b                                         ; $7821: $80
    ld c, b                                       ; $7822: $48
    add b                                         ; $7823: $80
    ld a, b                                       ; $7824: $78
    ld [bc], a                                    ; $7825: $02
    db $10                                        ; $7826: $10
    inc [hl]                                      ; $7827: $34

jr_09c_7828:
    rst $20                                       ; $7828: $e7
    ldh [rNR52], a                                ; $7829: $e0 $26
    add hl, bc                                    ; $782b: $09
    ld a, [hl+]                                   ; $782c: $2a
    ld bc, $0218                                  ; $782d: $01 $18 $02
    jr jr_09c_78aa                                ; $7830: $18 $78

    rrca                                          ; $7832: $0f
    add b                                         ; $7833: $80
    cp d                                          ; $7834: $ba
    add hl, hl                                    ; $7835: $29
    cp $31                                        ; $7836: $fe $31
    ld hl, sp+$51                                 ; $7838: $f8 $51
    cp $11                                        ; $783a: $fe $11
    ld a, b                                       ; $783c: $78
    ld b, b                                       ; $783d: $40
    add b                                         ; $783e: $80
    ld a, d                                       ; $783f: $7a
    add hl, de                                    ; $7840: $19
    rlca                                          ; $7841: $07
    jp $c307                                      ; $7842: $c3 $07 $c3


    inc h                                         ; $7845: $24
    ret c                                         ; $7846: $d8

    ld [$db27], sp                                ; $7847: $08 $27 $db
    db $e4                                        ; $784a: $e4
    jr jr_09c_7882                                ; $784b: $18 $35

    rrca                                          ; $784d: $0f
    adc a                                         ; $784e: $8f

jr_09c_784f:
    ld a, h                                       ; $784f: $7c
    adc a                                         ; $7850: $8f
    nop                                           ; $7851: $00
    ld a, h                                       ; $7852: $7c
    rst $38                                       ; $7853: $ff
    inc c                                         ; $7854: $0c
    rst $38                                       ; $7855: $ff
    inc c                                         ; $7856: $0c
    adc a                                         ; $7857: $8f
    ld a, h                                       ; $7858: $7c
    ld hl, sp+$3b                                 ; $7859: $f8 $3b
    ld sp, $26fe                                  ; $785b: $31 $fe $26
    nop                                           ; $785e: $00
    ld [bc], a                                    ; $785f: $02
    jr jr_09c_781c                                ; $7860: $18 $ba

    db $10                                        ; $7862: $10
    jp Jump_000_18d8                              ; $7863: $c3 $d8 $18


    sbc $08                                       ; $7866: $de $08
    sbc h                                         ; $7868: $9c
    ld a, [hl+]                                   ; $7869: $2a
    jr z, jr_09c_77fb                             ; $786a: $28 $8f

    ld [hl], h                                    ; $786c: $74
    ld [bc], a                                    ; $786d: $02
    jr jr_09c_781c                                ; $786e: $18 $ac

    ld e, $e0                                     ; $7870: $1e $e0
    add hl, bc                                    ; $7872: $09
    rst $08                                       ; $7873: $cf
    ld h, e                                       ; $7874: $63
    ld a, b                                       ; $7875: $78
    rst $10                                       ; $7876: $d7
    inc b                                         ; $7877: $04
    nop                                           ; $7878: $00
    ld [$0409], a                                 ; $7879: $ea $09 $04
    jr z, jr_09c_7809                             ; $787c: $28 $8b

    rrca                                          ; $787e: $0f
    rst $20                                       ; $787f: $e7
    ei                                            ; $7880: $fb
    rst $20                                       ; $7881: $e7

jr_09c_7882:
    nop                                           ; $7882: $00
    ei                                            ; $7883: $fb
    rst $38                                       ; $7884: $ff
    rst $00                                       ; $7885: $c7
    ret z                                         ; $7886: $c8

    ret nz                                        ; $7887: $c0

    rst $08                                       ; $7888: $cf
    rst $00                                       ; $7889: $c7
    ld hl, sp+$33                                 ; $788a: $f8 $33
    ret nz                                        ; $788c: $c0

    ret z                                         ; $788d: $c8

    ld [hl], l                                    ; $788e: $75
    ld [bc], a                                    ; $788f: $02
    ld [bc], a                                    ; $7890: $02
    ld [$e3e7], sp                                ; $7891: $08 $e7 $e3
    ld d, $08                                     ; $7894: $16 $08
    ld a, [de]                                    ; $7896: $1a
    nop                                           ; $7897: $00
    ld e, b                                       ; $7898: $58

jr_09c_7899:
    dec de                                        ; $7899: $1b
    ld [bc], a                                    ; $789a: $02
    jr @-$06                                      ; $789b: $18 $f8

    add [hl]                                      ; $789d: $86
    ld de, $0296                                  ; $789e: $11 $96 $02
    jp $c3c7                                      ; $78a1: $c3 $c7 $c3


    inc bc                                        ; $78a4: $03
    db $e4                                        ; $78a5: $e4
    ret c                                         ; $78a6: $d8

    rst $20                                       ; $78a7: $e7
    db $db                                        ; $78a8: $db
    rst $20                                       ; $78a9: $e7

jr_09c_78aa:
    dec de                                        ; $78aa: $1b
    sub b                                         ; $78ab: $90
    db $10                                        ; $78ac: $10
    ld d, h                                       ; $78ad: $54
    ld [bc], a                                    ; $78ae: $02
    nop                                           ; $78af: $00
    rst $38                                       ; $78b0: $ff
    rrca                                          ; $78b1: $0f
    rst $38                                       ; $78b2: $ff

jr_09c_78b3:
    rrca                                          ; $78b3: $0f
    adc a                                         ; $78b4: $8f
    ld a, a                                       ; $78b5: $7f
    rst $00                                       ; $78b6: $c7
    jp $c433                                      ; $78b7: $c3 $33 $c4


    ret nz                                        ; $78ba: $c0

    ld [bc], a                                    ; $78bb: $02
    jr z, jr_09c_78d8                             ; $78bc: $28 $1a

    jr z, jr_09c_784f                             ; $78be: $28 $8f

    ld [hl], a                                    ; $78c0: $77
    ld [bc], a                                    ; $78c1: $02
    jr jr_09c_78b3                                ; $78c2: $18 $ef

    rrca                                          ; $78c4: $0f
    dec hl                                        ; $78c5: $2b
    db $e3                                        ; $78c6: $e3
    rra                                           ; $78c7: $1f
    ld [bc], a                                    ; $78c8: $02
    nop                                           ; $78c9: $00
    cp a                                          ; $78ca: $bf
    adc a                                         ; $78cb: $8f
    ld b, $a3                                     ; $78cc: $06 $a3
    ld a, [bc]                                    ; $78ce: $0a
    db $10                                        ; $78cf: $10
    ld c, $00                                     ; $78d0: $0e $00
    add c                                         ; $78d2: $81
    ld [hl], b                                    ; $78d3: $70
    ld sp, $07fb                                  ; $78d4: $31 $fb $07
    ei                                            ; $78d7: $fb

jr_09c_78d8:
    scf                                           ; $78d8: $37
    rlc a                                         ; $78d9: $cb $07
    ld b, $00                                     ; $78db: $06 $00
    ret nz                                        ; $78dd: $c0

    inc b                                         ; $78de: $04
    jr z, jr_09c_793d                             ; $78df: $28 $5c

    rrca                                          ; $78e1: $0f
    adc h                                         ; $78e2: $8c
    ld hl, sp+$48                                 ; $78e3: $f8 $48
    db $f4                                        ; $78e5: $f4
    inc hl                                        ; $78e6: $23
    ei                                            ; $78e7: $fb
    ld [bc], a                                    ; $78e8: $02
    ld [hl], a                                    ; $78e9: $77
    rst $10                                       ; $78ea: $d7
    rst $28                                       ; $78eb: $ef
    adc a                                         ; $78ec: $8f
    rra                                           ; $78ed: $1f
    sbc a                                         ; $78ee: $9f
    add b                                         ; $78ef: $80
    rrca                                          ; $78f0: $0f
    reti                                          ; $78f1: $d9


    nop                                           ; $78f2: $00
    inc c                                         ; $78f3: $0c
    ld a, [hl+]                                   ; $78f4: $2a
    add c                                         ; $78f5: $81
    cp d                                          ; $78f6: $ba
    pop bc                                        ; $78f7: $c1
    ld e, d                                       ; $78f8: $5a
    pop hl                                        ; $78f9: $e1
    ld a, [bc]                                    ; $78fa: $0a
    nop                                           ; $78fb: $00
    pop af                                        ; $78fc: $f1
    inc de                                        ; $78fd: $13
    ld sp, hl                                     ; $78fe: $f9
    adc e                                         ; $78ff: $8b
    ld sp, hl                                     ; $7900: $f9
    ld b, e                                       ; $7901: $43
    ld h, c                                       ; $7902: $61
    ld d, b                                       ; $7903: $50
    inc b                                         ; $7904: $04
    add hl, bc                                    ; $7905: $09
    cp h                                          ; $7906: $bc
    sub d                                         ; $7907: $92
    and c                                         ; $7908: $a1
    and c                                         ; $7909: $a1
    ret nz                                        ; $790a: $c0

    ccf                                           ; $790b: $3f
    ld h, d                                       ; $790c: $62
    add a                                         ; $790d: $87
    nop                                           ; $790e: $00
    dec d                                         ; $790f: $15
    ld c, $e1                                     ; $7910: $0e $e1
    xor $f1                                       ; $7912: $ee $f1
    rla                                           ; $7914: $17
    ldh a, [rNR22]                                ; $7915: $f0 $17
    nop                                           ; $7917: $00
    db $f4                                        ; $7918: $f4
    rla                                           ; $7919: $17
    ld a, [de]                                    ; $791a: $1a
    db $eb                                        ; $791b: $eb
    ei                                            ; $791c: $fb
    ld sp, hl                                     ; $791d: $f9
    ld hl, sp-$07                                 ; $791e: $f8 $f9
    nop                                           ; $7920: $00
    nop                                           ; $7921: $00
    inc bc                                        ; $7922: $03
    jp c, $e0c7                                   ; $7923: $da $c7 $e0

    rst $28                                       ; $7926: $ef
    db $f4                                        ; $7927: $f4
    di                                            ; $7928: $f3
    jr @-$05                                      ; $7929: $18 $f9

    ei                                            ; $792b: $fb
    db $fc                                        ; $792c: $fc
    ld h, b                                       ; $792d: $60
    rlca                                          ; $792e: $07
    rst $00                                       ; $792f: $c7
    ld [de], a                                    ; $7930: $12
    rra                                           ; $7931: $1f
    ccf                                           ; $7932: $3f
    rrca                                          ; $7933: $0f
    nop                                           ; $7934: $00
    cp a                                          ; $7935: $bf
    add a                                         ; $7936: $87
    cpl                                           ; $7937: $2f
    jp Jump_09c_628f                              ; $7938: $c3 $8f $62


    ld c, e                                       ; $793b: $4b
    pop de                                        ; $793c: $d1

jr_09c_793d:
    nop                                           ; $793d: $00
    rst $38                                       ; $793e: $ff
    cp $fe                                        ; $793f: $fe $fe
    db $fc                                        ; $7941: $fc
    dec de                                        ; $7942: $1b
    ld a, [$f731]                                 ; $7943: $fa $31 $f7
    nop                                           ; $7946: $00
    ld [c], a                                     ; $7947: $e2
    db $ed                                        ; $7948: $ed
    pop bc                                        ; $7949: $c1
    rst $18                                       ; $794a: $df
    ld b, e                                       ; $794b: $43
    ld a, $4c                                     ; $794c: $3e $4c
    or a                                          ; $794e: $b7
    ld a, [bc]                                    ; $794f: $0a
    rst $38                                       ; $7950: $ff
    add sp, -$01                                  ; $7951: $e8 $ff
    ld d, l                                       ; $7953: $55
    inc b                                         ; $7954: $04
    ld c, b                                       ; $7955: $48

jr_09c_7956:
    add c                                         ; $7956: $81
    ld e, h                                       ; $7957: $5c
    scf                                           ; $7958: $37
    ret nz                                        ; $7959: $c0

    ld [hl], l                                    ; $795a: $75
    cp a                                          ; $795b: $bf
    ld d, b                                       ; $795c: $50
    rrca                                          ; $795d: $0f
    inc h                                         ; $795e: $24
    dec c                                         ; $795f: $0d
    ld d, b                                       ; $7960: $50
    cpl                                           ; $7961: $2f

jr_09c_7962:
    inc bc                                        ; $7962: $03
    ld [hl], b                                    ; $7963: $70
    rrca                                          ; $7964: $0f
    nop                                           ; $7965: $00
    ld bc, $8318                                  ; $7966: $01 $18 $83
    call z, $ff23                                 ; $7969: $cc $23 $ff
    db $fd                                        ; $796c: $fd
    ld [bc], a                                    ; $796d: $02
    ld [bc], a                                    ; $796e: $02
    nop                                           ; $796f: $00
    ld [bc], a                                    ; $7970: $02
    ld [$0008], sp                                ; $7971: $08 $08 $00
    add a                                         ; $7974: $87
    ld [hl-], a                                   ; $7975: $32
    rla                                           ; $7976: $17
    di                                            ; $7977: $f3
    inc e                                         ; $7978: $1c
    ld e, e                                       ; $7979: $5b
    xor h                                         ; $797a: $ac
    add sp, $1b                                   ; $797b: $e8 $1b
    ld l, a                                       ; $797d: $6f
    dec b                                         ; $797e: $05
    ld [hl], d                                    ; $797f: $72
    dec b                                         ; $7980: $05
    ld [$e03f], sp                                ; $7981: $08 $3f $e0
    ld d, l                                       ; $7984: $55
    ld [$4810], a                                 ; $7985: $ea $10 $48
    db $fc                                        ; $7988: $fc
    inc bc                                        ; $7989: $03
    ld [bc], a                                    ; $798a: $02
    ld b, b                                       ; $798b: $40
    ld bc, $0802                                  ; $798c: $01 $02 $08
    jp nz, Jump_09c_4201                          ; $798f: $c2 $01 $42

    add c                                         ; $7992: $81
    ld b, d                                       ; $7993: $42
    add c                                         ; $7994: $81
    ld c, a                                       ; $7995: $4f
    jp nz, Jump_000_3004                          ; $7996: $c2 $04 $30

    inc a                                         ; $7999: $3c
    jp $380c                                      ; $799a: $c3 $0c $38


    ld [$2088], sp                                ; $799d: $08 $88 $20
    ld [$082e], sp                                ; $79a0: $08 $2e $08
    ret nz                                        ; $79a3: $c0

    push bc                                       ; $79a4: $c5
    dec c                                         ; $79a5: $0d
    sbc b                                         ; $79a6: $98
    inc c                                         ; $79a7: $0c
    db $fd                                        ; $79a8: $fd
    add b                                         ; $79a9: $80
    ld d, d                                       ; $79aa: $52
    add b                                         ; $79ab: $80
    or [hl]                                       ; $79ac: $b6
    ret                                           ; $79ad: $c9


jr_09c_79ae:
    ld h, b                                       ; $79ae: $60
    jp z, Jump_000_0ca2                           ; $79af: $ca $a2 $0c

    ld e, b                                       ; $79b2: $58
    inc d                                         ; $79b3: $14
    rst $30                                       ; $79b4: $f7
    nop                                           ; $79b5: $00
    adc c                                         ; $79b6: $89
    nop                                           ; $79b7: $00
    ld h, h                                       ; $79b8: $64
    jr nc, jr_09c_7956                            ; $79b9: $30 $9b

    xor $e5                                       ; $79bb: $ee $e5
    dec c                                         ; $79bd: $0d
    ld l, b                                       ; $79be: $68
    inc d                                         ; $79bf: $14
    ld e, e                                       ; $79c0: $5b
    nop                                           ; $79c1: $00
    xor [hl]                                      ; $79c2: $ae
    nop                                           ; $79c3: $00
    db $10                                        ; $79c4: $10
    db $ec                                        ; $79c5: $ec
    inc de                                        ; $79c6: $13
    or c                                          ; $79c7: $b1
    push af                                       ; $79c8: $f5
    dec c                                         ; $79c9: $0d
    ld bc, $01fe                                  ; $79ca: $01 $fe $01
    nop                                           ; $79cd: $00
    nop                                           ; $79ce: $00
    rst $38                                       ; $79cf: $ff
    rst $18                                       ; $79d0: $df
    ld bc, $0134                            ; $79d1: $01 $34 $01
    daa                                           ; $79d4: $27
    reti                                          ; $79d5: $d9


    ld d, a                                       ; $79d6: $57
    nop                                           ; $79d7: $00
    ld bc, $807d                                  ; $79d8: $01 $7d $80
    or a                                          ; $79db: $b7
    add b                                         ; $79dc: $80
    ld h, b                                       ; $79dd: $60
    sbc l                                         ; $79de: $9d
    or a                                          ; $79df: $b7
    jr nz, jr_09c_7962                            ; $79e0: $20 $80

    ld c, l                                       ; $79e2: $4d
    push af                                       ; $79e3: $f5
    dec b                                         ; $79e4: $05
    inc [hl]                                      ; $79e5: $34
    add b                                         ; $79e6: $80
    and l                                         ; $79e7: $a5
    jp c, Jump_000_00bb                           ; $79e8: $da $bb $00

    nop                                           ; $79eb: $00
    ld d, h                                       ; $79ec: $54
    nop                                           ; $79ed: $00
    add b                                         ; $79ee: $80
    cpl                                           ; $79ef: $2f
    or $00                                        ; $79f0: $f6 $00
    ccf                                           ; $79f2: $3f
    nop                                           ; $79f3: $00
    nop                                           ; $79f4: $00
    ld [$9500], a                                 ; $79f5: $ea $00 $95
    nop                                           ; $79f8: $00
    or b                                          ; $79f9: $b0
    ld c, a                                       ; $79fa: $4f
    rst $38                                       ; $79fb: $ff
    ld [bc], a                                    ; $79fc: $02
    nop                                           ; $79fd: $00
    ld e, h                                       ; $79fe: $5c
    nop                                           ; $79ff: $00
    and l                                         ; $7a00: $a5
    ld b, d                                       ; $7a01: $42
    cp b                                          ; $7a02: $b8
    rst $08                                       ; $7a03: $cf
    inc b                                         ; $7a04: $04

Call_09c_7a05:
    jp c, RST_00                                  ; $7a05: $da $00 $00

    dec [hl]                                      ; $7a08: $35
    nop                                           ; $7a09: $00
    or d                                          ; $7a0a: $b2
    ld c, l                                       ; $7a0b: $4d
    ld a, [$ef01]                                 ; $7a0c: $fa $01 $ef
    nop                                           ; $7a0f: $00
    ld bc, $51a2                                  ; $7a10: $01 $a2 $51
    cp a                                          ; $7a13: $bf
    ld bc, $01d4                                  ; $7a14: $01 $d4 $01
    xor e                                         ; $7a17: $ab
    adc b                                         ; $7a18: $88
    ld c, b                                       ; $7a19: $48
    nop                                           ; $7a1a: $00
    push de                                       ; $7a1b: $d5
    dec bc                                        ; $7a1c: $0b
    ld a, l                                       ; $7a1d: $7d
    dec l                                         ; $7a1e: $2d
    ld b, $0b                                     ; $7a1f: $06 $0b
    add b                                         ; $7a21: $80
    call z, $b300                                 ; $7a22: $cc $00 $b3
    ld a, a                                       ; $7a25: $7f
    add b                                         ; $7a26: $80
    jp c, $7580                                   ; $7a27: $da $80 $75

    add b                                         ; $7a2a: $80
    sbc d                                         ; $7a2b: $9a
    jr nz, jr_09c_79ae                            ; $7a2c: $20 $80

    and c                                         ; $7a2e: $a1
    ld sp, hl                                     ; $7a2f: $f9
    inc b                                         ; $7a30: $04
    ld [hl], l                                    ; $7a31: $75
    nop                                           ; $7a32: $00
    reti                                          ; $7a33: $d9


    ld h, $5b                                     ; $7a34: $26 $5b
    jr nz, jr_09c_7a38                            ; $7a36: $20 $00

jr_09c_7a38:
    and l                                         ; $7a38: $a5
    inc bc                                        ; $7a39: $03
    dec b                                         ; $7a3a: $05
    ld d, [hl]                                    ; $7a3b: $56
    nop                                           ; $7a3c: $00
    ld b, e                                       ; $7a3d: $43
    nop                                           ; $7a3e: $00
    db $ed                                        ; $7a3f: $ed
    add d                                         ; $7a40: $82
    ld a, [hl-]                                   ; $7a41: $3a
    nop                                           ; $7a42: $00
    db $dd                                        ; $7a43: $dd
    ld [hl+], a                                   ; $7a44: $22
    push af                                       ; $7a45: $f5
    nop                                           ; $7a46: $00
    ld c, d                                       ; $7a47: $4a
    inc de                                        ; $7a48: $13
    dec b                                         ; $7a49: $05
    add h                                         ; $7a4a: $84
    nop                                           ; $7a4b: $00
    nop                                           ; $7a4c: $00
    xor b                                         ; $7a4d: $a8
    ld bc, $017f                                  ; $7a4e: $01 $7f $01
    adc d                                         ; $7a51: $8a
    ld bc, $0851                                  ; $7a52: $01 $51 $08
    xor a                                         ; $7a55: $af
    ld [$d701], a                                 ; $7a56: $ea $01 $d7
    adc b                                         ; $7a59: $88
    nop                                           ; $7a5a: $00
    or a                                          ; $7a5b: $b7
    ld bc, $3077                                  ; $7a5c: $01 $77 $30
    adc b                                         ; $7a5f: $88
    push de                                       ; $7a60: $d5
    ret nz                                        ; $7a61: $c0

    nop                                           ; $7a62: $00
    push hl                                       ; $7a63: $e5
    ld a, [bc]                                    ; $7a64: $0a
    rst $20                                       ; $7a65: $e7
    rst $38                                       ; $7a66: $ff
    rst $28                                       ; $7a67: $ef
    rst $30                                       ; $7a68: $f7
    ld bc, $f7ef                                  ; $7a69: $01 $ef $f7
    ld d, a                                       ; $7a6c: $57
    xor b                                         ; $7a6d: $a8
    adc e                                         ; $7a6e: $8b
    nop                                           ; $7a6f: $00

jr_09c_7a70:
    cp $4c                                        ; $7a70: $fe $4c
    ld hl, $8a82                                  ; $7a72: $21 $82 $8a
    rrca                                          ; $7a75: $0f
    ld d, a                                       ; $7a76: $57
    xor b                                         ; $7a77: $a8
    ld d, l                                       ; $7a78: $55
    nop                                           ; $7a79: $00
    cp a                                          ; $7a7a: $bf
    db $10                                        ; $7a7b: $10
    ld b, b                                       ; $7a7c: $40
    jr jr_09c_7a85                                ; $7a7d: $18 $06

    pop hl                                        ; $7a7f: $e1
    ld a, a                                       ; $7a80: $7f
    ld bc, $01d6                                  ; $7a81: $01 $d6 $01
    xor e                                         ; $7a84: $ab

jr_09c_7a85:
    ld b, $30                                     ; $7a85: $06 $30
    jr nz, jr_09c_7a70                            ; $7a87: $20 $e7

    add e                                         ; $7a89: $83

jr_09c_7a8a:
    push bc                                       ; $7a8a: $c5
    ld b, $ab                                     ; $7a8b: $06 $ab
    add b                                         ; $7a8d: $80
    db $fd                                        ; $7a8e: $fd
    add b                                         ; $7a8f: $80
    rst $30                                       ; $7a90: $f7
    ld b, h                                       ; $7a91: $44
    db $10                                        ; $7a92: $10
    cp h                                          ; $7a93: $bc
    rrca                                          ; $7a94: $0f
    inc d                                         ; $7a95: $14
    ei                                            ; $7a96: $fb
    nop                                           ; $7a97: $00
    ld c, l                                       ; $7a98: $4d
    ld a, l                                       ; $7a99: $7d
    dec b                                         ; $7a9a: $05
    ld e, e                                       ; $7a9b: $5b
    ld b, h                                       ; $7a9c: $44
    jr nc, jr_09c_7a8a                            ; $7a9d: $30 $eb

    nop                                           ; $7a9f: $00
    ld b, $b6                                     ; $7aa0: $06 $b6
    nop                                           ; $7aa2: $00
    db $dd                                        ; $7aa3: $dd
    nop                                           ; $7aa4: $00
    adc [hl]                                      ; $7aa5: $8e
    and b                                         ; $7aa6: $a0
    ld hl, $0030                                  ; $7aa7: $21 $30 $00
    ld bc, $b504                                  ; $7aaa: $01 $04 $b5
    ld bc, $016f                                  ; $7aad: $01 $6f $01
    db $db                                        ; $7ab0: $db
    ld b, h                                       ; $7ab1: $44
    db $10                                        ; $7ab2: $10
    rst $38                                       ; $7ab3: $ff
    rst $38                                       ; $7ab4: $ff
    adc b                                         ; $7ab5: $88
    ldh [rVBK], a                                 ; $7ab6: $e0 $4f
    ld d, d                                       ; $7ab8: $52
    xor [hl]                                      ; $7ab9: $ae
    inc [hl]                                      ; $7aba: $34
    ldh [rBGP], a                                 ; $7abb: $e0 $47
    dec bc                                        ; $7abd: $0b
    inc b                                         ; $7abe: $04
    inc a                                         ; $7abf: $3c

jr_09c_7ac0:
    add b                                         ; $7ac0: $80
    ldh [rTAC], a                                 ; $7ac1: $e0 $07
    sbc a                                         ; $7ac3: $9f
    ldh [rNR10], a                                ; $7ac4: $e0 $10
    and b                                         ; $7ac6: $a0
    sub b                                         ; $7ac7: $90
    and b                                         ; $7ac8: $a0
    jr jr_09c_7b03                                ; $7ac9: $18 $38

    and b                                         ; $7acb: $a0
    sbc b                                         ; $7acc: $98
    inc b                                         ; $7acd: $04
    jr nz, jr_09c_7ac0                            ; $7ace: $20 $f0

    add hl, hl                                    ; $7ad0: $29
    rst $30                                       ; $7ad1: $f7
    ld de, $1030                                  ; $7ad2: $11 $30 $10
    ld l, b                                       ; $7ad5: $68
    adc b                                         ; $7ad6: $88
    jr jr_09c_7b01                                ; $7ad7: $18 $28

    sbc c                                         ; $7ad9: $99
    and b                                         ; $7ada: $a0
    add hl, de                                    ; $7adb: $19
    inc b                                         ; $7adc: $04
    stop                                          ; $7add: $10 $00
    jr nc, jr_09c_7ae1                            ; $7adf: $30 $00

jr_09c_7ae1:
    nop                                           ; $7ae1: $00
    db $fc                                        ; $7ae2: $fc
    ld b, b                                       ; $7ae3: $40
    or h                                          ; $7ae4: $b4
    ret nz                                        ; $7ae5: $c0

    add h                                         ; $7ae6: $84
    add d                                         ; $7ae7: $82
    db $fc                                        ; $7ae8: $fc
    ld a, [$fc04]                                 ; $7ae9: $fa $04 $fc
    cp $fc                                        ; $7aec: $fe $fc
    cp $00                                        ; $7aee: $fe $00
    jr c, jr_09c_7afa                             ; $7af0: $38 $08

    add b                                         ; $7af2: $80
    cp a                                          ; $7af3: $bf
    ld h, [hl]                                    ; $7af4: $66
    nop                                           ; $7af5: $00
    ld [c], a                                     ; $7af6: $e2
    ld [$0757], sp                                ; $7af7: $08 $57 $07

jr_09c_7afa:
    push de                                       ; $7afa: $d5
    xor d                                         ; $7afb: $aa
    dec l                                         ; $7afc: $2d
    ld a, [hl+]                                   ; $7afd: $2a
    xor b                                         ; $7afe: $a8

Call_09c_7aff:
    add hl, de                                    ; $7aff: $19
    ld d, l                                       ; $7b00: $55

jr_09c_7b01:
    ld h, $aa                                     ; $7b01: $26 $aa

jr_09c_7b03:
    xor d                                         ; $7b03: $aa
    add h                                         ; $7b04: $84
    rlca                                          ; $7b05: $07
    push de                                       ; $7b06: $d5
    xor d                                         ; $7b07: $aa
    ld [hl], d                                    ; $7b08: $72
    rrca                                          ; $7b09: $0f
    ld a, [bc]                                    ; $7b0a: $0a
    ld [$87aa], sp                                ; $7b0b: $08 $aa $87
    ld [hl], h                                    ; $7b0e: $74
    rlca                                          ; $7b0f: $07
    nop                                           ; $7b10: $00
    rst $38                                       ; $7b11: $ff
    ld d, l                                       ; $7b12: $55
    xor d                                         ; $7b13: $aa
    ld a, $0e                                     ; $7b14: $3e $0e
    ld a, [bc]                                    ; $7b16: $0a
    ld [$0782], sp                                ; $7b17: $08 $82 $07
    ret c                                         ; $7b1a: $d8

    ld [hl], b                                    ; $7b1b: $70
    ld c, b                                       ; $7b1c: $48
    inc c                                         ; $7b1d: $0c
    ld h, b                                       ; $7b1e: $60
    ld bc, $026a                                  ; $7b1f: $01 $6a $02
    adc a                                         ; $7b22: $8f
    ld c, b                                       ; $7b23: $48
    ld d, l                                       ; $7b24: $55
    nop                                           ; $7b25: $00
    xor d                                         ; $7b26: $aa
    add b                                         ; $7b27: $80
    inc d                                         ; $7b28: $14
    db $10                                        ; $7b29: $10
    ld bc, $00fc                                  ; $7b2a: $01 $fc $00
    ld b, $02                                     ; $7b2d: $06 $02
    db $fd                                        ; $7b2f: $fd
    db $fd                                        ; $7b30: $fd
    jr jr_09c_7b35                                ; $7b31: $18 $02

    cp $01                                        ; $7b33: $fe $01

jr_09c_7b35:
    ld c, d                                       ; $7b35: $4a
    nop                                           ; $7b36: $00
    or b                                          ; $7b37: $b0
    jr nc, jr_09c_7b64                            ; $7b38: $30 $2a

    add b                                         ; $7b3a: $80
    ld d, l                                       ; $7b3b: $55
    xor [hl]                                      ; $7b3c: $ae
    ld a, [hl+]                                   ; $7b3d: $2a
    ld [bc], a                                    ; $7b3e: $02
    push de                                       ; $7b3f: $d5
    sub $07                                       ; $7b40: $d6 $07
    push de                                       ; $7b42: $d5
    ret c                                         ; $7b43: $d8

    rlca                                          ; $7b44: $07
    inc b                                         ; $7b45: $04
    ld [$0eb4], sp                                ; $7b46: $08 $b4 $0e
    ld d, l                                       ; $7b49: $55
    or b                                          ; $7b4a: $b0
    and $07                                       ; $7b4b: $e6 $07
    ld d, l                                       ; $7b4d: $55
    ld [$ab10], sp                                ; $7b4e: $08 $10 $ab
    ld e, $01                                     ; $7b51: $1e $01
    nop                                           ; $7b53: $00
    rst $38                                       ; $7b54: $ff
    ld a, a                                       ; $7b55: $7f
    ld l, l                                       ; $7b56: $6d
    ld [hl], d                                    ; $7b57: $72
    ld bc, $7f20                                  ; $7b58: $01 $20 $7f
    inc bc                                        ; $7b5b: $03
    call c, $b201                                 ; $7b5c: $dc $01 $b2
    inc b                                         ; $7b5f: $04
    rlca                                          ; $7b60: $07
    db $10                                        ; $7b61: $10
    cp [hl]                                       ; $7b62: $be
    ld d, a                                       ; $7b63: $57

jr_09c_7b64:
    jr nz, jr_09c_7bd8                            ; $7b64: $20 $72

    ld h, b                                       ; $7b66: $60
    ld de, $0081                                  ; $7b67: $11 $81 $00
    cp d                                          ; $7b6a: $ba
    ld a, e                                       ; $7b6b: $7b
    adc e                                         ; $7b6c: $8b
    ld c, [hl]                                    ; $7b6d: $4e
    inc hl                                        ; $7b6e: $23
    ld hl, $1461                                  ; $7b6f: $21 $61 $14
    sbc a                                         ; $7b72: $9f
    ld l, a                                       ; $7b73: $6f
    dec [hl]                                      ; $7b74: $35
    ld d, [hl]                                    ; $7b75: $56
    dec c                                         ; $7b76: $0d
    dec a                                         ; $7b77: $3d
    ld h, h                                       ; $7b78: $64
    inc h                                         ; $7b79: $24
    rra                                           ; $7b7a: $1f
    ld e, a                                       ; $7b7b: $5f
    or a                                          ; $7b7c: $b7
    dec a                                         ; $7b7d: $3d
    adc l                                         ; $7b7e: $8d
    inc l                                         ; $7b7f: $2c
    inc b                                         ; $7b80: $04
    inc d                                         ; $7b81: $14
    sbc a                                         ; $7b82: $9f
    ld e, a                                       ; $7b83: $5f
    ld [hl], a                                    ; $7b84: $77
    ld b, [hl]                                    ; $7b85: $46
    dec l                                         ; $7b86: $2d
    dec l                                         ; $7b87: $2d
    ld h, h                                       ; $7b88: $64
    inc d                                         ; $7b89: $14
    halt                                          ; $7b8a: $76
    ld a, [hl-]                                   ; $7b8b: $3a
    ld c, [hl]                                    ; $7b8c: $4e

jr_09c_7b8d:
    ld hl, $14c8                                  ; $7b8d: $21 $c8 $14
    ld hl, $4004                                  ; $7b90: $21 $04 $40
    jr @+$49                                      ; $7b93: $18 $47

    ld l, l                                       ; $7b95: $6d
    ld [$007e], a                                 ; $7b96: $ea $7e $00
    ld b, b                                       ; $7b99: $40
    ld b, b                                       ; $7b9a: $40
    jr jr_09c_7c04                                ; $7b9b: $18 $67

    ld l, l                                       ; $7b9d: $6d
    xor d                                         ; $7b9e: $aa
    ld a, [hl]                                    ; $7b9f: $7e
    nop                                           ; $7ba0: $00
    ld b, b                                       ; $7ba1: $40
    ld b, b                                       ; $7ba2: $40
    jr jr_09c_7be5                                ; $7ba3: $18 $40

    ld de, $02e2                                  ; $7ba5: $11 $e2 $02
    and b                                         ; $7ba8: $a0
    jr nz, @+$42                                  ; $7ba9: $20 $40

    jr jr_09c_7b8d                                ; $7bab: $18 $e0

    nop                                           ; $7bad: $00
    ld b, b                                       ; $7bae: $40
    ld [bc], a                                    ; $7baf: $02
    ret nz                                        ; $7bb0: $c0

    inc h                                         ; $7bb1: $24
    ld b, b                                       ; $7bb2: $40
    jr @+$06                                      ; $7bb3: $18 $04

    ld bc, $03f1                                  ; $7bb5: $01 $f1 $03
    add sp, $01                                   ; $7bb8: $e8 $01
    rra                                           ; $7bba: $1f
    ld a, h                                       ; $7bbb: $7c
    rra                                           ; $7bbc: $1f
    ld a, h                                       ; $7bbd: $7c
    rra                                           ; $7bbe: $1f
    ld a, h                                       ; $7bbf: $7c
    rra                                           ; $7bc0: $1f
    ld a, h                                       ; $7bc1: $7c
    ld b, b                                       ; $7bc2: $40
    jr jr_09c_7c38                                ; $7bc3: $18 $73

    inc [hl]                                      ; $7bc5: $34
    sbc l                                         ; $7bc6: $9d
    inc [hl]                                      ; $7bc7: $34
    ld [$4024], sp                                ; $7bc8: $08 $24 $40
    jr jr_09c_7c3e                                ; $7bcb: $18 $71

    inc a                                         ; $7bcd: $3c
    sbc h                                         ; $7bce: $9c
    inc a                                         ; $7bcf: $3c
    ld a, [bc]                                    ; $7bd0: $0a
    inc h                                         ; $7bd1: $24
    ld bc, $ff00                                  ; $7bd2: $01 $00 $ff
    ld a, a                                       ; $7bd5: $7f
    bit 1, l                                      ; $7bd6: $cb $4d

jr_09c_7bd8:
    cp [hl]                                       ; $7bd8: $be
    ld [bc], a                                    ; $7bd9: $02
    ei                                            ; $7bda: $fb
    ld a, $f9                                     ; $7bdb: $3e $f9
    dec e                                         ; $7bdd: $1d
    ld [hl], b                                    ; $7bde: $70
    ld hl, $20e7                                  ; $7bdf: $21 $e7 $20
    or [hl]                                       ; $7be2: $b6
    ld c, d                                       ; $7be3: $4a
    sub h                                         ; $7be4: $94

jr_09c_7be5:
    dec e                                         ; $7be5: $1d
    xor a                                         ; $7be6: $af
    db $10                                        ; $7be7: $10
    inc h                                         ; $7be8: $24
    inc b                                         ; $7be9: $04
    sbc $03                                       ; $7bea: $de $03
    jr c, jr_09c_7c12                             ; $7bec: $38 $24

    ld c, e                                       ; $7bee: $4b
    jr @+$26                                      ; $7bef: $18 $24

    ld [$19b1], sp                                ; $7bf1: $08 $b1 $19
    ld c, $0d                                     ; $7bf4: $0e $0d
    add sp, $10                                   ; $7bf6: $e8 $10
    ld b, d                                       ; $7bf8: $42
    inc c                                         ; $7bf9: $0c
    or $6a                                        ; $7bfa: $f6 $6a
    xor l                                         ; $7bfc: $ad
    ld c, c                                       ; $7bfd: $49
    call nz, Call_09c_4138                        ; $7bfe: $c4 $38 $41
    inc e                                         ; $7c01: $1c
    jr c, @+$26                                   ; $7c02: $38 $24

jr_09c_7c04:
    nop                                           ; $7c04: $00
    ld d, h                                       ; $7c05: $54
    rst $38                                       ; $7c06: $ff
    ld e, [hl]                                    ; $7c07: $5e
    nop                                           ; $7c08: $00
    nop                                           ; $7c09: $00
    jr c, jr_09c_7c30                             ; $7c0a: $38 $24

    rst $38                                       ; $7c0c: $ff
    ld e, [hl]                                    ; $7c0d: $5e
    ret nz                                        ; $7c0e: $c0

    ld bc, $0421                                  ; $7c0f: $01 $21 $04

jr_09c_7c12:
    rst $38                                       ; $7c12: $ff
    ld a, a                                       ; $7c13: $7f
    ld bc, $1500                                  ; $7c14: $01 $00 $15
    ld d, h                                       ; $7c17: $54
    dec d                                         ; $7c18: $15
    ld d, h                                       ; $7c19: $54
    rst $30                                       ; $7c1a: $f7
    ld b, e                                       ; $7c1b: $43
    ld c, h                                       ; $7c1c: $4c
    ld [de], a                                    ; $7c1d: $12
    ld h, a                                       ; $7c1e: $67
    ld bc, $0065                                  ; $7c1f: $01 $65 $00
    reti                                          ; $7c22: $d9


    ld a, e                                       ; $7c23: $7b
    xor l                                         ; $7c24: $ad
    dec a                                         ; $7c25: $3d
    ld h, a                                       ; $7c26: $67
    ld bc, $0065                                  ; $7c27: $01 $65 $00
    reti                                          ; $7c2a: $d9


    ld a, e                                       ; $7c2b: $7b
    ld d, c                                       ; $7c2c: $51
    ld [hl], a                                    ; $7c2d: $77
    xor l                                         ; $7c2e: $ad
    ld a, [hl]                                    ; $7c2f: $7e

jr_09c_7c30:
    jr nz, jr_09c_7c42                            ; $7c30: $20 $10

    rst $38                                       ; $7c32: $ff
    ld a, a                                       ; $7c33: $7f
    rst $38                                       ; $7c34: $ff
    ccf                                           ; $7c35: $3f
    halt                                          ; $7c36: $76
    ld e, a                                       ; $7c37: $5f

jr_09c_7c38:
    xor l                                         ; $7c38: $ad
    ld a, [hl]                                    ; $7c39: $7e
    rst $28                                       ; $7c3a: $ef
    dec a                                         ; $7c3b: $3d
    rst $28                                       ; $7c3c: $ef
    dec a                                         ; $7c3d: $3d

jr_09c_7c3e:
    rst $28                                       ; $7c3e: $ef
    dec a                                         ; $7c3f: $3d
    rst $28                                       ; $7c40: $ef
    dec a                                         ; $7c41: $3d

jr_09c_7c42:
    rst $28                                       ; $7c42: $ef
    dec a                                         ; $7c43: $3d
    rst $28                                       ; $7c44: $ef
    dec a                                         ; $7c45: $3d
    rst $28                                       ; $7c46: $ef
    dec a                                         ; $7c47: $3d
    rst $28                                       ; $7c48: $ef
    dec a                                         ; $7c49: $3d
    rst $28                                       ; $7c4a: $ef
    dec a                                         ; $7c4b: $3d
    rst $28                                       ; $7c4c: $ef
    dec a                                         ; $7c4d: $3d
    rst $28                                       ; $7c4e: $ef
    dec a                                         ; $7c4f: $3d
    rst $28                                       ; $7c50: $ef
    dec a                                         ; $7c51: $3d

    db $2a, $00

    nop                                           ; $7c54: $00
    jr nc, jr_09c_7c57                            ; $7c55: $30 $00

jr_09c_7c57:
    ld bc, $004e                                  ; $7c57: $01 $4e $00
    ld b, $66                                     ; $7c5a: $06 $66
    nop                                           ; $7c5c: $00
    ld a, [bc]                                    ; $7c5d: $0a
    ld l, h                                       ; $7c5e: $6c
    nop                                           ; $7c5f: $00
    dec bc                                        ; $7c60: $0b
    ld a, b                                       ; $7c61: $78
    nop                                           ; $7c62: $00
    dec c                                         ; $7c63: $0d

    db $8a, $00, $10, $9c, $00, $13, $b4, $00, $17, $b4, $00, $17, $d2, $00, $1c, $f6
    db $00, $22, $08, $01, $25, $0e, $01, $26, $0c

    db $10                                        ; $7c7d: $10
    ld d, $00                                     ; $7c7e: $16 $00
    adc [hl]                                      ; $7c80: $8e
    nop                                           ; $7c81: $00

    db $0c

    ld [de], a                                    ; $7c83: $12
    ld e, h                                       ; $7c84: $5c
    nop                                           ; $7c85: $00
    and h                                         ; $7c86: $a4
    nop                                           ; $7c87: $00

    db $06

    nop                                           ; $7c89: $00
    ld h, h                                       ; $7c8a: $64
    nop                                           ; $7c8b: $00
    ld b, $02                                     ; $7c8c: $06 $02

    db $02

    nop                                           ; $7c8f: $00
    ld h, [hl]                                    ; $7c90: $66
    nop                                           ; $7c91: $00
    adc b                                         ; $7c92: $88
    nop                                           ; $7c93: $00

    db $02

    ld [$006f], sp                                ; $7c95: $08 $6f $00
    xor b                                         ; $7c98: $a8
    db $01                                        ; $7c99: $01

    db $0b

    ld c, $72                                     ; $7c9b: $0e $72
    nop                                           ; $7c9d: $00
    xor b                                         ; $7c9e: $a8
    nop                                           ; $7c9f: $00

    db $0b

Jump_09c_7ca1:
    ld c, $85                                     ; $7ca1: $0e $85
    nop                                           ; $7ca3: $00
    sbc c                                         ; $7ca4: $99
    nop                                           ; $7ca5: $00

    db $06

    ld bc, $00aa                                  ; $7ca7: $01 $aa $00
    db $da                                        ; $7caa: $da
    db $01                                        ; $7cab: $01

    db $06

    ld bc, $00b7                                  ; $7cad: $01 $b7 $00
    add c                                         ; $7cb0: $81
    nop                                           ; $7cb1: $00

    db $0c

    ld de, $00bf                                  ; $7cb3: $11 $bf $00
    xor h                                         ; $7cb6: $ac
    db $01                                        ; $7cb7: $01

    db $02

    ld bc, $00df                                  ; $7cb9: $01 $df $00
    cp c                                          ; $7cbc: $b9
    nop                                           ; $7cbd: $00

    db $02

    rlca                                          ; $7cbf: $07
    rlca                                          ; $7cc0: $07
    ld bc, $01e8                                  ; $7cc1: $01 $e8 $01

    db $06

    dec b                                         ; $7cc5: $05
    daa                                           ; $7cc6: $27
    ld bc, $00cc                                  ; $7cc7: $01 $cc $00

    db $02

    ld [bc], a                                    ; $7ccb: $02
    ld d, b                                       ; $7ccc: $50
    ld bc, $00e0                                  ; $7ccd: $01 $e0 $00

    db $06

    ld b, $51                                     ; $7cd1: $06 $51
    ld bc, $01d3                                  ; $7cd3: $01 $d3 $01

    db $02

    ld b, $77                                     ; $7cd7: $06 $77
    ld bc, $01c7                                  ; $7cd9: $01 $c7 $01

    db $0b, $0f, $9a, $01, $0d, $01, $0b, $0f, $ad, $01, $fc, $00, $07, $01, $af, $01
    db $d2, $00, $02, $03, $ce, $01, $fa, $00, $06, $03, $e5, $01, $0a, $02, $06, $03
    db $fb, $01, $0a, $01, $02, $05, $ff, $01, $af, $01, $0b, $00, $47, $02, $26, $01
    db $06, $00, $49, $02, $9a, $01, $02, $04, $4f, $02, $09, $01, $07, $00, $5a, $02
    db $33, $00, $0b, $14, $5d, $02, $26, $01, $06, $07, $82, $02, $4b, $00, $0c, $0a
    db $95, $02, $79, $01, $0c, $0a, $98, $02, $89, $01, $53, $00, $9f, $02, $74, $01
    db $0c, $0a, $a9, $02, $75, $01, $0c, $0a, $ab, $02, $86, $01, $06, $02, $e6, $02
    db $ca, $01, $0c, $0c, $fe, $02, $4b, $01, $02, $09, $ff, $02, $e8, $00, $0c, $0d
    db $35, $03, $4f, $01, $ff, $ff, $ff, $ff, $ff, $ff

    add hl, bc                                    ; $7d66: $09
    nop                                           ; $7d67: $00
    nop                                           ; $7d68: $00
    daa                                           ; $7d69: $27
    nop                                           ; $7d6a: $00
    dec b                                         ; $7d6b: $05
    add hl, sp                                    ; $7d6c: $39
    nop                                           ; $7d6d: $00
    ld [$0208], sp                                ; $7d6e: $08 $08 $02
    dec de                                        ; $7d71: $1b
    nop                                           ; $7d72: $00
    ccf                                           ; $7d73: $3f
    nop                                           ; $7d74: $00
    inc c                                         ; $7d75: $0c
    nop                                           ; $7d76: $00
    dec de                                        ; $7d77: $1b
    nop                                           ; $7d78: $00
    ld c, [hl]                                    ; $7d79: $4e
    nop                                           ; $7d7a: $00
    ld [bc], a                                    ; $7d7b: $02
    nop                                           ; $7d7c: $00
    rra                                           ; $7d7d: $1f
    nop                                           ; $7d7e: $00
    ld a, c                                       ; $7d7f: $79

Jump_09c_7d80:
    nop                                           ; $7d80: $00
    inc bc                                        ; $7d81: $03
    ld c, $35                                     ; $7d82: $0e $35
    nop                                           ; $7d84: $00
    ld c, l                                       ; $7d85: $4d
    nop                                           ; $7d86: $00
    rlca                                          ; $7d87: $07
    nop                                           ; $7d88: $00
    ld a, $00                                     ; $7d89: $3e $00
    ld h, h                                       ; $7d8b: $64
    nop                                           ; $7d8c: $00
    inc bc                                        ; $7d8d: $03
    dec c                                         ; $7d8e: $0d
    ld b, [hl]                                    ; $7d8f: $46
    nop                                           ; $7d90: $00
    ld [hl-], a                                   ; $7d91: $32
    nop                                           ; $7d92: $00
    inc bc                                        ; $7d93: $03
    rrca                                          ; $7d94: $0f
    ld a, e                                       ; $7d95: $7b
    nop                                           ; $7d96: $00
    ld h, [hl]                                    ; $7d97: $66
    nop                                           ; $7d98: $00
    inc bc                                        ; $7d99: $03
    db $10                                        ; $7d9a: $10
    ld a, e                                       ; $7d9b: $7b
    nop                                           ; $7d9c: $00
    inc [hl]                                      ; $7d9d: $34
    nop                                           ; $7d9e: $00
    rst $38                                       ; $7d9f: $ff
    rst $38                                       ; $7da0: $ff
    rst $38                                       ; $7da1: $ff
    rst $38                                       ; $7da2: $ff
    rst $38                                       ; $7da3: $ff
    rst $38                                       ; $7da4: $ff

    db $0f, $00, $00

    rrca                                          ; $7da8: $0f
    nop                                           ; $7da9: $00
    nop                                           ; $7daa: $00
    ld l, c                                       ; $7dab: $69
    nop                                           ; $7dac: $00
    rrca                                          ; $7dad: $0f
    ld l, a                                       ; $7dae: $6f
    nop                                           ; $7daf: $00
    db $10                                        ; $7db0: $10
    cp l                                          ; $7db1: $bd
    nop                                           ; $7db2: $00
    dec e                                         ; $7db3: $1d

    db $30, $03, $4d, $00, $1f, $02, $30, $03, $4d, $00, $df, $01, $30, $00, $4d, $00
    db $a7, $01, $30, $02, $4d, $00, $1f, $01, $30, $03, $4d, $00, $df, $00, $30, $01
    db $4d, $00, $9f, $00, $0c, $03, $57, $00, $12, $02, $0c, $02, $57, $00, $d3, $01
    db $0c, $01, $57, $00, $9b, $01, $0c, $04, $57, $00, $13, $01, $0c, $03, $57, $00
    db $d3, $00, $0c, $05, $57, $00, $93, $00, $0c, $06, $59, $00, $64, $01, $02, $01
    db $7e, $00, $39, $00, $02, $00, $7f, $00, $48, $02, $0c, $00, $8f, $00, $66, $00
    db $0c, $01, $c8, $00, $b2, $00, $0c, $05, $c8, $00, $f1, $00, $0c, $02, $c8, $00
    db $32, $01, $0c, $03, $c8, $00, $84, $01, $0c, $05, $c8, $00, $b3, $01, $0c, $04
    db $c8, $00, $f3, $01, $30, $04, $d2, $00, $bf, $01, $30, $06, $d2, $00, $ff, $01
    db $30, $04, $d2, $00, $bf, $00, $30, $05, $d2, $00, $ff, $00, $30, $07, $d2, $00
    db $3f, $01, $30, $07, $d2, $00, $8f, $01, $07, $00, $dc, $00, $73, $00, $ff, $ff
    db $ff, $ff, $ff, $ff, $18, $00, $00, $1e, $00, $01, $30, $00, $04

    ld c, [hl]                                    ; $7e71: $4e
    nop                                           ; $7e72: $00
    add hl, bc                                    ; $7e73: $09

    db $72, $00, $0f, $7e, $00, $11

    sub [hl]                                      ; $7e7a: $96
    nop                                           ; $7e7b: $00
    dec d                                         ; $7e7c: $15
    and d                                         ; $7e7d: $a2
    nop                                           ; $7e7e: $00
    rla                                           ; $7e7f: $17

    db $02, $01, $2f, $00, $0e, $00, $0c, $04, $52, $00, $db, $01, $02, $02, $67, $00
    db $b1, $02, $04, $00, $7b, $00, $c2, $01, $04, $00, $8b, $00, $2a, $00, $04, $00
    db $9b, $00, $9a, $02, $07, $01, $a5, $00, $d0, $01, $0c, $08, $ab, $00, $43, $00
    db $0c, $05, $b3, $00, $7a, $01, $0c, $03, $c2, $00, $4c, $02, $02, $00, $cf, $00
    db $14, $03, $04, $00, $d3, $00, $9a, $00, $04, $00, $e3, $00, $62, $01, $0b, $00
    db $ec, $00, $e6, $02, $04, $00, $f3, $00, $32, $02, $0c, $07, $02, $01, $b3, $00
    db $04, $00, $13, $01, $f2, $00, $0c, $02, $4b, $01, $bb, $02, $07, $00, $5c, $01
    db $ab, $00, $04, $00, $63, $01, $92, $01, $0c, $09, $7b, $01, $4a, $00, $0c

    ld b, $9b                                     ; $7eff: $06 $9b
    ld bc, $013b                                  ; $7f01: $01 $3b $01

    db $04

    nop                                           ; $7f05: $00
    and e                                         ; $7f06: $a3
    ld bc, $0032                                  ; $7f07: $01 $32 $00

    db $ff

    rst $38                                       ; $7f0b: $ff
    rst $38                                       ; $7f0c: $ff
    rst $38                                       ; $7f0d: $ff
    rst $38                                       ; $7f0e: $ff
    rst $38                                       ; $7f0f: $ff
    ld e, $00                                     ; $7f10: $1e $00
    nop                                           ; $7f12: $00
    ld e, $00                                     ; $7f13: $1e $00
    nop                                           ; $7f15: $00
    inc h                                         ; $7f16: $24
    nop                                           ; $7f17: $00
    ld bc, $0024                                  ; $7f18: $01 $24 $00
    ld bc, $0024                                  ; $7f1b: $01 $24 $00
    ld bc, $002a                                  ; $7f1e: $01 $2a $00
    ld [bc], a                                    ; $7f21: $02
    ld b, d                                       ; $7f22: $42
    nop                                           ; $7f23: $00
    ld b, $42                                     ; $7f24: $06 $42
    nop                                           ; $7f26: $00
    ld b, $48                                     ; $7f27: $06 $48
    nop                                           ; $7f29: $00
    rlca                                          ; $7f2a: $07
    ld c, [hl]                                    ; $7f2b: $4e
    nop                                           ; $7f2c: $00
    ld [$0007], sp                                ; $7f2d: $08 $07 $00
    ld d, b                                       ; $7f30: $50
    nop                                           ; $7f31: $00
    ld a, [de]                                    ; $7f32: $1a
    nop                                           ; $7f33: $00
    ld a, [bc]                                    ; $7f34: $0a
    ld [bc], a                                    ; $7f35: $02
    ld a, [de]                                    ; $7f36: $1a
    ld bc, $002e                                  ; $7f37: $01 $2e $00
    rlca                                          ; $7f3a: $07
    ld bc, $0160                                  ; $7f3b: $01 $60 $01
    cp $00                                        ; $7f3e: $fe $00
    dec bc                                        ; $7f40: $0b
    ld bc, $017e                                  ; $7f41: $01 $7e $01
    push bc                                       ; $7f44: $c5
    nop                                           ; $7f45: $00
    dec bc                                        ; $7f46: $0b
    ld bc, $017e                                  ; $7f47: $01 $7e $01
    or h                                          ; $7f4a: $b4
    nop                                           ; $7f4b: $00
    dec bc                                        ; $7f4c: $0b
    ld bc, $017e                                  ; $7f4d: $01 $7e $01
    and e                                         ; $7f50: $a3
    nop                                           ; $7f51: $00
    rlca                                          ; $7f52: $07
    ld [bc], a                                    ; $7f53: $02
    ldh a, [rSB]                                  ; $7f54: $f0 $01
    add hl, de                                    ; $7f56: $19
    nop                                           ; $7f57: $00
    ld [bc], a                                    ; $7f58: $02
    nop                                           ; $7f59: $00
    db $10                                        ; $7f5a: $10
    ld [bc], a                                    ; $7f5b: $02
    ld l, d                                       ; $7f5c: $6a
    nop                                           ; $7f5d: $00
    rst $38                                       ; $7f5e: $ff
    rst $38                                       ; $7f5f: $ff
    rst $38                                       ; $7f60: $ff
    rst $38                                       ; $7f61: $ff
    rst $38                                       ; $7f62: $ff
    rst $38                                       ; $7f63: $ff
    dec l                                         ; $7f64: $2d
    nop                                           ; $7f65: $00
    nop                                           ; $7f66: $00
    dec l                                         ; $7f67: $2d
    nop                                           ; $7f68: $00
    nop                                           ; $7f69: $00
    add hl, sp                                    ; $7f6a: $39
    nop                                           ; $7f6b: $00
    ld [bc], a                                    ; $7f6c: $02
    add hl, sp                                    ; $7f6d: $39
    nop                                           ; $7f6e: $00
    ld [bc], a                                    ; $7f6f: $02
    add hl, sp                                    ; $7f70: $39
    nop                                           ; $7f71: $00
    ld [bc], a                                    ; $7f72: $02
    add hl, sp                                    ; $7f73: $39
    nop                                           ; $7f74: $00
    ld [bc], a                                    ; $7f75: $02
    add hl, sp                                    ; $7f76: $39
    nop                                           ; $7f77: $00
    ld [bc], a                                    ; $7f78: $02
    add hl, sp                                    ; $7f79: $39
    nop                                           ; $7f7a: $00
    ld [bc], a                                    ; $7f7b: $02
    add hl, sp                                    ; $7f7c: $39
    nop                                           ; $7f7d: $00
    ld [bc], a                                    ; $7f7e: $02
    ccf                                           ; $7f7f: $3f
    nop                                           ; $7f80: $00
    inc bc                                        ; $7f81: $03
    ccf                                           ; $7f82: $3f
    nop                                           ; $7f83: $00
    inc bc                                        ; $7f84: $03
    ld c, e                                       ; $7f85: $4b
    nop                                           ; $7f86: $00
    dec b                                         ; $7f87: $05
    ld c, e                                       ; $7f88: $4b
    nop                                           ; $7f89: $00
    dec b                                         ; $7f8a: $05
    ld d, c                                       ; $7f8b: $51
    nop                                           ; $7f8c: $00
    ld b, $57                                     ; $7f8d: $06 $57
    nop                                           ; $7f8f: $00
    rlca                                          ; $7f90: $07
    ld a, [bc]                                    ; $7f91: $0a
    nop                                           ; $7f92: $00
    ld c, b                                       ; $7f93: $48
    nop                                           ; $7f94: $00
    pop de                                        ; $7f95: $d1
    ld bc, $0007                                  ; $7f96: $01 $07 $00
    ld [hl], b                                    ; $7f99: $70
    nop                                           ; $7f9a: $00
    daa                                           ; $7f9b: $27
    nop                                           ; $7f9c: $00
    dec bc                                        ; $7f9d: $0b
    nop                                           ; $7f9e: $00
    ld a, [bc]                                    ; $7f9f: $0a
    ld [bc], a                                    ; $7fa0: $02
    ret nc                                        ; $7fa1: $d0

    ld bc, $030a                                  ; $7fa2: $01 $0a $03
    adc b                                         ; $7fa5: $88
    ld [bc], a                                    ; $7fa6: $02
    ret nz                                        ; $7fa7: $c0

    nop                                           ; $7fa8: $00
    ld [bc], a                                    ; $7fa9: $02
    nop                                           ; $7faa: $00
    or b                                          ; $7fab: $b0
    ld [bc], a                                    ; $7fac: $02
    and b                                         ; $7fad: $a0
    ld bc, $0107                                  ; $7fae: $01 $07 $01
    inc d                                         ; $7fb1: $14
    inc bc                                        ; $7fb2: $03

Call_09c_7fb3:
    jp $0201                                      ; $7fb3: $c3 $01 $02


    ld bc, $035d                                  ; $7fb6: $01 $5d $03
    ld a, d                                       ; $7fb9: $7a
    nop                                           ; $7fba: $00
    rst $38                                       ; $7fbb: $ff
    rst $38                                       ; $7fbc: $ff
    rst $38                                       ; $7fbd: $ff
    rst $38                                       ; $7fbe: $ff
    rst $38                                       ; $7fbf: $ff
    rst $38                                       ; $7fc0: $ff
    rrca                                          ; $7fc1: $0f
    nop                                           ; $7fc2: $00
    nop                                           ; $7fc3: $00
    dec d                                         ; $7fc4: $15
    nop                                           ; $7fc5: $00
    ld bc, $002d                                  ; $7fc6: $01 $2d $00
    dec b                                         ; $7fc9: $05
    dec l                                         ; $7fca: $2d
    nop                                           ; $7fcb: $00
    dec b                                         ; $7fcc: $05
    inc sp                                        ; $7fcd: $33
    nop                                           ; $7fce: $00
    ld b, $07                                     ; $7fcf: $06 $07
    nop                                           ; $7fd1: $00
    daa                                           ; $7fd2: $27
    nop                                           ; $7fd3: $00
    ld h, $00                                     ; $7fd4: $26 $00
    rlca                                          ; $7fd6: $07
    ld [bc], a                                    ; $7fd7: $02
    ld c, l                                       ; $7fd8: $4d
    nop                                           ; $7fd9: $00
    db $e4                                        ; $7fda: $e4
    nop                                           ; $7fdb: $00
    ld [bc], a                                    ; $7fdc: $02
    nop                                           ; $7fdd: $00
    ld d, b                                       ; $7fde: $50
    nop                                           ; $7fdf: $00
    rra                                           ; $7fe0: $1f
    ld bc, $0307                                  ; $7fe1: $01 $07 $03
    ld [hl], d                                    ; $7fe4: $72
    nop                                           ; $7fe5: $00
    ld h, e                                       ; $7fe6: $63
    nop                                           ; $7fe7: $00
    ld a, [bc]                                    ; $7fe8: $0a
    db $10                                        ; $7fe9: $10
    ld a, l                                       ; $7fea: $7d
    nop                                           ; $7feb: $00
    xor c                                         ; $7fec: $a9
    nop                                           ; $7fed: $00
    ld [bc], a                                    ; $7fee: $02
    ld bc, $00f7                                  ; $7fef: $01 $f7 $00
    sub a                                         ; $7ff2: $97
    nop                                           ; $7ff3: $00
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
