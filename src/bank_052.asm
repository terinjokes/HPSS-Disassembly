; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $052", ROMX[$4000], BANK[$52]

    ld d, d                                       ; $4000: $52
    ld h, b                                       ; $4001: $60
    adc [hl]                                      ; $4002: $8e
    sbc [hl]                                      ; $4003: $9e
    ld c, l                                       ; $4004: $4d
    and [hl]                                      ; $4005: $a6
    rst $18                                       ; $4006: $df
    rst $38                                       ; $4007: $ff
    ld d, a                                       ; $4008: $57
    and d                                         ; $4009: $a2
    rra                                           ; $400a: $1f
    ld h, d                                       ; $400b: $62
    ld l, e                                       ; $400c: $6b
    pop hl                                        ; $400d: $e1
    ld a, $ee                                     ; $400e: $3e $ee
    call nc, $f941                                ; $4010: $d4 $41 $f9
    ccf                                           ; $4013: $3f
    ld l, a                                       ; $4014: $6f
    ld d, [hl]                                    ; $4015: $56
    adc d                                         ; $4016: $8a
    ld b, h                                       ; $4017: $44
    rst $08                                       ; $4018: $cf
    ld h, $c3                                     ; $4019: $26 $c3
    ld sp, hl                                     ; $401b: $f9
    dec a                                         ; $401c: $3d
    pop bc                                        ; $401d: $c1
    ld [$0308], sp                                ; $401e: $08 $08 $03
    add $71                                       ; $4021: $c6 $71
    and a                                         ; $4023: $a7
    ld e, [hl]                                    ; $4024: $5e
    cp c                                          ; $4025: $b9
    rst $28                                       ; $4026: $ef
    add h                                         ; $4027: $84
    db $e3                                        ; $4028: $e3
    ld d, d                                       ; $4029: $52
    db $d3                                        ; $402a: $d3
    ld [de], a                                    ; $402b: $12
    dec a                                         ; $402c: $3d
    or c                                          ; $402d: $b1
    inc [hl]                                      ; $402e: $34
    add h                                         ; $402f: $84
    dec h                                         ; $4030: $25
    inc sp                                        ; $4031: $33
    add hl, hl                                    ; $4032: $29
    ld l, l                                       ; $4033: $6d
    ld a, [$99f1]                                 ; $4034: $fa $f1 $99
    pop de                                        ; $4037: $d1
    inc bc                                        ; $4038: $03
    halt                                          ; $4039: $76
    ld [$fca0], a                                 ; $403a: $ea $a0 $fc
    rra                                           ; $403d: $1f
    ld [hl], a                                    ; $403e: $77
    ld [$fb95], a                                 ; $403f: $ea $95 $fb
    ld [hl], d                                    ; $4042: $72
    ld c, h                                       ; $4043: $4c
    cp a                                          ; $4044: $bf
    sbc a                                         ; $4045: $9f
    call nc, Call_052_53b8                        ; $4046: $d4 $b8 $53
    rlca                                          ; $4049: $07
    push hl                                       ; $404a: $e5
    rst $38                                       ; $404b: $ff
    ld l, h                                       ; $404c: $6c
    ld [hl-], a                                   ; $404d: $32
    xor l                                         ; $404e: $ad
    ld a, [de]                                    ; $404f: $1a
    ld c, $74                                     ; $4050: $0e $74
    dec [hl]                                      ; $4052: $35
    adc c                                         ; $4053: $89
    xor [hl]                                      ; $4054: $ae
    reti                                          ; $4055: $d9


    ldh a, [$71]                                  ; $4056: $f0 $71
    and a                                         ; $4058: $a7
    ld c, $ca                                     ; $4059: $0e $ca
    rst $38                                       ; $405b: $ff
    reti                                          ; $405c: $d9


    ld h, h                                       ; $405d: $64
    ld a, [$7ffd]                                 ; $405e: $fa $fd $7f
    dec h                                         ; $4061: $25
    ld a, [$b621]                                 ; $4062: $fa $21 $b6
    ld h, [hl]                                    ; $4065: $66
    ld d, d                                       ; $4066: $52
    jp c, Jump_052_59bc                           ; $4067: $da $bc $59

    add hl, hl                                    ; $406a: $29
    ld [hl-], a                                   ; $406b: $32
    sbc h                                         ; $406c: $9c
    rra                                           ; $406d: $1f
    and b                                         ; $406e: $a0
    sub a                                         ; $406f: $97
    adc c                                         ; $4070: $89
    inc d                                         ; $4071: $14
    adc [hl]                                      ; $4072: $8e
    add a                                         ; $4073: $87
    ld b, b                                       ; $4074: $40
    inc b                                         ; $4075: $04
    add b                                         ; $4076: $80
    cp $af                                        ; $4077: $fe $af
    ld a, c                                       ; $4079: $79
    sbc e                                         ; $407a: $9b
    rst $38                                       ; $407b: $ff
    ld l, l                                       ; $407c: $6d
    or e                                          ; $407d: $b3
    ld d, d                                       ; $407e: $52
    inc h                                         ; $407f: $24
    ld a, d                                       ; $4080: $7a
    sbc c                                         ; $4081: $99
    inc d                                         ; $4082: $14
    ld e, [hl]                                    ; $4083: $5e
    ld a, c                                       ; $4084: $79
    ld [hl], a                                    ; $4085: $77
    db $e4                                        ; $4086: $e4
    cp d                                          ; $4087: $ba
    rst $38                                       ; $4088: $ff
    ld l, d                                       ; $4089: $6a
    jr c, @-$4e                                   ; $408a: $38 $b0

    ld [hl], h                                    ; $408c: $74
    ld [hl], $19                                  ; $408d: $36 $19
    xor l                                         ; $408f: $ad
    ld h, $d1                                     ; $4090: $26 $d1
    push de                                       ; $4092: $d5
    inc sp                                        ; $4093: $33
    add hl, hl                                    ; $4094: $29
    ld l, l                                       ; $4095: $6d
    dec h                                         ; $4096: $25
    ld a, [$3621]                                 ; $4097: $fa $21 $36
    ld a, d                                       ; $409a: $7a
    or $ca                                        ; $409b: $f6 $ca
    ret z                                         ; $409d: $c8

    ld [hl], l                                    ; $409e: $75
    adc a                                         ; $409f: $8f
    ccf                                           ; $40a0: $3f
    adc [hl]                                      ; $40a1: $8e
    rst $28                                       ; $40a2: $ef
    reti                                          ; $40a3: $d9


    ld h, h                                       ; $40a4: $64
    add hl, bc                                    ; $40a5: $09
    adc [hl]                                      ; $40a6: $8e
    cpl                                           ; $40a7: $2f
    ld h, h                                       ; $40a8: $64
    sbc c                                         ; $40a9: $99
    inc e                                         ; $40aa: $1c
    ld c, l                                       ; $40ab: $4d
    ld b, a                                       ; $40ac: $47
    jp $feae                                      ; $40ad: $c3 $ae $fe


    xor a                                         ; $40b0: $af
    ld e, l                                       ; $40b1: $5d
    ld d, c                                       ; $40b2: $51
    dec e                                         ; $40b3: $1d
    or $86                                        ; $40b4: $f6 $86
    db $e4                                        ; $40b6: $e4
    add sp, -$27                                  ; $40b7: $e8 $d9
    ld h, h                                       ; $40b9: $64
    ld e, d                                       ; $40ba: $5a
    dec [hl]                                      ; $40bb: $35
    inc e                                         ; $40bc: $1c
    add sp, $6a                                   ; $40bd: $e8 $6a
    ld [de], a                                    ; $40bf: $12
    ld e, l                                       ; $40c0: $5d
    db $d3                                        ; $40c1: $d3
    rst $28                                       ; $40c2: $ef
    daa                                           ; $40c3: $27
    or l                                          ; $40c4: $b5
    dec hl                                        ; $40c5: $2b
    xor d                                         ; $40c6: $aa
    jp $90de                                      ; $40c7: $c3 $de $90


    inc e                                         ; $40ca: $1c
    dec a                                         ; $40cb: $3d

jr_052_40cc:
    sbc e                                         ; $40cc: $9b
    ld c, h                                       ; $40cd: $4c
    cp a                                          ; $40ce: $bf
    rst $38                                       ; $40cf: $ff
    xor a                                         ; $40d0: $af
    ld b, h                                       ; $40d1: $44
    ccf                                           ; $40d2: $3f
    call nz, Call_052_4cd6                        ; $40d3: $c4 $d6 $4c
    ld c, d                                       ; $40d6: $4a
    sbc e                                         ; $40d7: $9b
    scf                                           ; $40d8: $37
    dec hl                                        ; $40d9: $2b
    ld b, l                                       ; $40da: $45
    add [hl]                                      ; $40db: $86
    di                                            ; $40dc: $f3
    ld a, e                                       ; $40dd: $7b
    add d                                         ; $40de: $82
    ld de, $0610                                  ; $40df: $11 $10 $06
    adc h                                         ; $40e2: $8c
    db $e3                                        ; $40e3: $e3
    ld c, [hl]                                    ; $40e4: $4e
    cp l                                          ; $40e5: $bd
    ld [hl], d                                    ; $40e6: $72
    ld e, a                                       ; $40e7: $5f
    ld a, [$d897]                                 ; $40e8: $fa $97 $d8
    sbc d                                         ; $40eb: $9a
    dec c                                         ; $40ec: $0d
    ld a, [bc]                                    ; $40ed: $0a
    ld de, $c9e7                                  ; $40ee: $11 $e7 $c9
    or h                                          ; $40f1: $b4
    ld [$bc71], a                                 ; $40f2: $ea $71 $bc
    ei                                            ; $40f5: $fb
    xor [hl]                                      ; $40f6: $ae
    xor b                                         ; $40f7: $a8
    ld c, $7b                                     ; $40f8: $0e $7b
    ld b, e                                       ; $40fa: $43
    ld [hl], d                                    ; $40fb: $72
    add d                                         ; $40fc: $82
    db $e3                                        ; $40fd: $e3
    ld sp, hl                                     ; $40fe: $f9
    sub a                                         ; $40ff: $97
    jp z, Jump_052_4369                           ; $4100: $ca $69 $43

    ld b, d                                       ; $4103: $42
    ldh [$c0], a                                  ; $4104: $e0 $c0
    inc h                                         ; $4106: $24
    inc hl                                        ; $4107: $23
    dec h                                         ; $4108: $25
    or e                                          ; $4109: $b3
    ret                                           ; $410a: $c9


    ld [hl], d                                    ; $410b: $72
    pop de                                        ; $410c: $d1
    ld e, a                                       ; $410d: $5f
    di                                            ; $410e: $f3
    ld [hl], $ff                                  ; $410f: $36 $ff
    db $db                                        ; $4111: $db
    ld h, [hl]                                    ; $4112: $66
    and l                                         ; $4113: $a5
    ld c, b                                       ; $4114: $48
    ld a, [hl]                                    ; $4115: $7e
    ld sp, hl                                     ; $4116: $f9
    adc d                                         ; $4117: $8a
    ld [$37b0], a                                 ; $4118: $ea $b0 $37
    inc h                                         ; $411b: $24
    ld b, a                                       ; $411c: $47
    rst $08                                       ; $411d: $cf
    and h                                         ; $411e: $a4
    or h                                          ; $411f: $b4
    db $fd                                        ; $4120: $fd
    ld d, d                                       ; $4121: $52
    ld e, l                                       ; $4122: $5d
    di                                            ; $4123: $f3
    ld [hl], $ff                                  ; $4124: $36 $ff
    db $db                                        ; $4126: $db
    ld h, [hl]                                    ; $4127: $66
    and l                                         ; $4128: $a5
    ld c, b                                       ; $4129: $48
    xor $48                                       ; $412a: $ee $48
    dec b                                         ; $412c: $05
    xor $70                                       ; $412d: $ee $70
    jr jr_052_40cc                                ; $412f: $18 $9b

    sub l                                         ; $4131: $95
    ld [hl+], a                                   ; $4132: $22
    jp $3df9                                      ; $4133: $c3 $f9 $3d


    pop bc                                        ; $4136: $c1
    ld [$0308], sp                                ; $4137: $08 $08 $03
    add $99                                       ; $413a: $c6 $99
    sub h                                         ; $413c: $94
    ld [hl], $fd                                  ; $413d: $36 $fd
    ld hl, sp-$34                                 ; $413f: $f8 $cc
    ld e, l                                       ; $4141: $5d
    ld d, c                                       ; $4142: $51
    dec e                                         ; $4143: $1d
    or $86                                        ; $4144: $f6 $86
    db $e4                                        ; $4146: $e4
    inc b                                         ; $4147: $04
    rst $00                                       ; $4148: $c7
    ld e, a                                       ; $4149: $5f
    adc $bf                                       ; $414a: $ce $bf
    ld d, h                                       ; $414c: $54
    ld c, [hl]                                    ; $414d: $4e
    dec de                                        ; $414e: $1b
    ld [de], a                                    ; $414f: $12
    or d                                          ; $4150: $b2
    dec sp                                        ; $4151: $3b
    dec l                                         ; $4152: $2d
    pop de                                        ; $4153: $d1
    inc de                                        ; $4154: $13
    ld c, e                                       ; $4155: $4b
    ld b, e                                       ; $4156: $43
    ld e, b                                       ; $4157: $58
    ld [hl], d                                    ; $4158: $72
    or [hl]                                       ; $4159: $b6
    call z, $e38f                                 ; $415a: $cc $8f $e3
    ld a, e                                       ; $415d: $7b
    ld [hl], $59                                  ; $415e: $36 $59
    add d                                         ; $4160: $82
    db $e3                                        ; $4161: $e3
    or e                                          ; $4162: $b3
    ld d, a                                       ; $4163: $57
    ld l, d                                       ; $4164: $6a
    ld d, a                                       ; $4165: $57
    ld d, h                                       ; $4166: $54
    add a                                         ; $4167: $87
    cp l                                          ; $4168: $bd
    ld hl, $7a39                                  ; $4169: $21 $39 $7a
    ld h, $a5                                     ; $416c: $26 $a5
    adc l                                         ; $416e: $8d
    sub h                                         ; $416f: $94
    db $ec                                        ; $4170: $ec
    rra                                           ; $4171: $1f
    cp c                                          ; $4172: $b9
    sub $91                                       ; $4173: $d6 $91
    ld a, [bc]                                    ; $4175: $0a
    call c, Call_000_2043                         ; $4176: $dc $43 $20
    ld [bc], a                                    ; $4179: $02
    ret nz                                        ; $417a: $c0

    ld c, [hl]                                    ; $417b: $4e
    cp l                                          ; $417c: $bd
    ld [hl], d                                    ; $417d: $72
    ld e, a                                       ; $417e: $5f
    adc [hl]                                      ; $417f: $8e
    reti                                          ; $4180: $d9


    dec hl                                        ; $4181: $2b
    inc bc                                        ; $4182: $03
    ld h, [hl]                                    ; $4183: $66
    cp $35                                        ; $4184: $fe $35
    inc bc                                        ; $4186: $03
    ld e, l                                       ; $4187: $5d
    ld [$a4ce], a                                 ; $4188: $ea $ce $a4
    or h                                          ; $418b: $b4
    ld bc, $ff33                                  ; $418c: $01 $33 $ff
    sbc d                                         ; $418f: $9a
    ld h, c                                       ; $4190: $61
    db $ec                                        ; $4191: $ec
    adc e                                         ; $4192: $8b
    rst $38                                       ; $4193: $ff
    sbc e                                         ; $4194: $9b
    ld c, d                                       ; $4195: $4a
    ld a, [c]                                     ; $4196: $f2
    reti                                          ; $4197: $d9


    cp h                                          ; $4198: $bc
    ld e, c                                       ; $4199: $59
    add hl, hl                                    ; $419a: $29
    ld [hl-], a                                   ; $419b: $32
    sbc h                                         ; $419c: $9c
    rst $18                                       ; $419d: $df
    inc de                                        ; $419e: $13
    adc h                                         ; $419f: $8c
    add b                                         ; $41a0: $80
    jr nc, jr_052_4203                            ; $41a1: $30 $60

    inc e                                         ; $41a3: $1c
    ld [hl], a                                    ; $41a4: $77
    ld [$fb95], a                                 ; $41a5: $ea $95 $fb
    ld c, [hl]                                    ; $41a8: $4e
    jr c, jr_052_41d9                             ; $41a9: $38 $2e

    dec [hl]                                      ; $41ab: $35
    ret nc                                        ; $41ac: $d0

    ld hl, $992c                                  ; $41ad: $21 $2c $99
    ld c, c                                       ; $41b0: $49
    ld l, c                                       ; $41b1: $69
    db $d3                                        ; $41b2: $d3
    adc a                                         ; $41b3: $8f
    rst $08                                       ; $41b4: $cf
    ld e, h                                       ; $41b5: $5c
    ld c, $5b                                     ; $41b6: $0e $5b
    ld [hl-], a                                   ; $41b8: $32
    ld h, b                                       ; $41b9: $60
    and $5f                                       ; $41ba: $e6 $5f
    inc sp                                        ; $41bc: $33
    ret nc                                        ; $41bd: $d0

    and l                                         ; $41be: $a5
    xor $e2                                       ; $41bf: $ee $e2
    rst $38                                       ; $41c1: $ff
    add sp, $01                                   ; $41c2: $e8 $01
    inc sp                                        ; $41c4: $33
    rst $38                                       ; $41c5: $ff
    sbc d                                         ; $41c6: $9a
    ld h, c                                       ; $41c7: $61
    db $ec                                        ; $41c8: $ec
    adc e                                         ; $41c9: $8b
    rst $38                                       ; $41ca: $ff
    sbc e                                         ; $41cb: $9b
    ld c, d                                       ; $41cc: $4a
    ld [hl-], a                                   ; $41cd: $32
    ld b, h                                       ; $41ce: $44
    rst $20                                       ; $41cf: $e7
    ret                                           ; $41d0: $c9


    adc b                                         ; $41d1: $88
    and c                                         ; $41d2: $a1
    inc [hl]                                      ; $41d3: $34
    ld a, d                                       ; $41d4: $7a
    ld e, c                                       ; $41d5: $59
    xor d                                         ; $41d6: $aa
    ld a, l                                       ; $41d7: $7d
    push hl                                       ; $41d8: $e5

jr_052_41d9:
    cp [hl]                                       ; $41d9: $be
    ld [hl], h                                    ; $41da: $74
    ld [hl], b                                    ; $41db: $70

jr_052_41dc:
    ld d, a                                       ; $41dc: $57
    and h                                         ; $41dd: $a4
    ld h, [hl]                                    ; $41de: $66
    xor a                                         ; $41df: $af
    jp c, $c85d                                   ; $41e0: $da $5d $c8

    ld [hl], d                                    ; $41e3: $72
    ld d, c                                       ; $41e4: $51
    ld e, d                                       ; $41e5: $5a
    ld h, d                                       ; $41e6: $62
    cp e                                          ; $41e7: $bb
    jp nc, $b969                                  ; $41e8: $d2 $69 $b9

    and d                                         ; $41eb: $a2
    ld h, [hl]                                    ; $41ec: $66
    ld d, d                                       ; $41ed: $52
    jp c, $eab4                                   ; $41ee: $da $b4 $ea

    ld [hl], c                                    ; $41f1: $71
    ccf                                           ; $41f2: $3f
    cp d                                          ; $41f3: $ba
    and [hl]                                      ; $41f4: $a6
    rst $10                                       ; $41f5: $d7
    and a                                         ; $41f6: $a7
    daa                                           ; $41f7: $27
    and $bf                                       ; $41f8: $e6 $bf
    ld c, d                                       ; $41fa: $4a
    dec bc                                        ; $41fb: $0b
    adc a                                         ; $41fc: $8f
    ld a, [hl]                                    ; $41fd: $7e
    ld a, a                                       ; $41fe: $7f
    jr jr_052_41dc                                ; $41ff: $18 $db

    db $fc                                        ; $4201: $fc
    rst $08                                       ; $4202: $cf

jr_052_4203:
    sbc c                                         ; $4203: $99
    and [hl]                                      ; $4204: $a6
    pop af                                        ; $4205: $f1
    and a                                         ; $4206: $a7
    and d                                         ; $4207: $a2
    ld h, a                                       ; $4208: $67
    xor a                                         ; $4209: $af
    ld a, [de]                                    ; $420a: $1a
    dec a                                         ; $420b: $3d
    ld sp, $55ff                                  ; $420c: $31 $ff $55
    ld e, d                                       ; $420f: $5a
    ld hl, sp-$36                                 ; $4210: $f8 $ca
    ld a, l                                       ; $4212: $7d
    dec h                                         ; $4213: $25
    ld a, [$b621]                                 ; $4214: $fa $21 $b6
    ld d, $32                                     ; $4217: $16 $32
    ld l, a                                       ; $4219: $6f
    di                                            ; $421a: $f3
    ccf                                           ; $421b: $3f
    ld h, a                                       ; $421c: $67
    sbc d                                         ; $421d: $9a
    add $07                                       ; $421e: $c6 $07
    jr nc, jr_052_4282                            ; $4220: $30 $60

    and a                                         ; $4222: $a7
    ld c, $ca                                     ; $4223: $0e $ca
    rst $38                                       ; $4225: $ff
    xor c                                         ; $4226: $a9
    add sp, -$27                                  ; $4227: $e8 $d9
    xor e                                         ; $4229: $ab
    ld b, [hl]                                    ; $422a: $46
    ld c, a                                       ; $422b: $4f
    call z, $957f                                 ; $422c: $cc $7f $95
    ld d, $be                                     ; $422f: $16 $be
    ld [hl], d                                    ; $4231: $72
    ld e, a                                       ; $4232: $5f
    adc c                                         ; $4233: $89
    ld a, [hl]                                    ; $4234: $7e
    adc b                                         ; $4235: $88
    xor l                                         ; $4236: $ad
    add l                                         ; $4237: $85
    ei                                            ; $4238: $fb
    cp b                                          ; $4239: $b8
    ld d, e                                       ; $423a: $53
    rlca                                          ; $423b: $07
    push hl                                       ; $423c: $e5
    ccf                                           ; $423d: $3f
    add b                                         ; $423e: $80
    add c                                         ; $423f: $81
    inc [hl]                                      ; $4240: $34
    db $ed                                        ; $4241: $ed
    ld d, e                                       ; $4242: $53
    pop de                                        ; $4243: $d1
    or e                                          ; $4244: $b3
    ld d, a                                       ; $4245: $57
    adc l                                         ; $4246: $8d
    sbc [hl]                                      ; $4247: $9e
    sbc b                                         ; $4248: $98
    rst $38                                       ; $4249: $ff
    ld a, [hl+]                                   ; $424a: $2a
    dec l                                         ; $424b: $2d
    ld a, h                                       ; $424c: $7c
    push hl                                       ; $424d: $e5
    ld a, $ae                                     ; $424e: $3e $ae
    adc e                                         ; $4250: $8b
    sub d                                         ; $4251: $92
    ld a, [$16bf]                                 ; $4252: $fa $bf $16
    ld [hl-], a                                   ; $4255: $32
    ld h, d                                       ; $4256: $62
    jp c, $e383                                   ; $4257: $da $83 $e3

    add d                                         ; $425a: $82
    ld hl, sp+$68                                 ; $425b: $f8 $68
    ret c                                         ; $425d: $d8

    ld de, $3ed3                                  ; $425e: $11 $d3 $3e
    ld a, [de]                                    ; $4261: $1a
    halt                                          ; $4262: $76
    jp hl                                         ; $4263: $e9


    add sp, $13                                   ; $4264: $e8 $13

jr_052_4266:
    or l                                          ; $4266: $b5
    dec [hl]                                      ; $4267: $35
    db $ed                                        ; $4268: $ed
    ld h, b                                       ; $4269: $60
    ld l, h                                       ; $426a: $6c
    ld a, d                                       ; $426b: $7a
    ld h, $a5                                     ; $426c: $26 $a5
    call $fcdb                                    ; $426e: $cd $db $fc
    ld c, a                                       ; $4271: $4f
    xor d                                         ; $4272: $aa
    ld a, a                                       ; $4273: $7f
    dec [hl]                                      ; $4274: $35
    add b                                         ; $4275: $80
    sbc c                                         ; $4276: $99
    sub h                                         ; $4277: $94
    ld [hl], $60                                  ; $4278: $36 $60
    sbc a                                         ; $427a: $9f
    dec [hl]                                      ; $427b: $35
    dec d                                         ; $427c: $15
    dec a                                         ; $427d: $3d
    ld a, e                                       ; $427e: $7b
    push de                                       ; $427f: $d5
    add sp, -$77                                  ; $4280: $e8 $89

jr_052_4282:
    ld sp, hl                                     ; $4282: $f9
    xor a                                         ; $4283: $af
    jp nc, $57c2                                  ; $4284: $d2 $c2 $57

    xor $e3                                       ; $4287: $ee $e3
    ld c, [hl]                                    ; $4289: $4e
    sbc l                                         ; $428a: $9d
    ld c, a                                       ; $428b: $4f
    and h                                         ; $428c: $a4
    add $7d                                       ; $428d: $c6 $7d
    sub $b8                                       ; $428f: $d6 $b8
    and $65                                       ; $4291: $e6 $65
    cp c                                          ; $4293: $b9
    jr z, @+$2f                                   ; $4294: $28 $2d

    or c                                          ; $4296: $b1
    ld e, l                                       ; $4297: $5d
    jp hl                                         ; $4298: $e9


    or h                                          ; $4299: $b4
    ld e, h                                       ; $429a: $5c
    ld d, c                                       ; $429b: $51
    ld hl, $1870                                  ; $429c: $21 $70 $18
    rst $28                                       ; $429f: $ef
    rst $38                                       ; $42a0: $ff
    db $d3                                        ; $42a1: $d3
    ld c, [hl]                                    ; $42a2: $4e
    ld a, [hl+]                                   ; $42a3: $2a
    ld a, d                                       ; $42a4: $7a
    jr c, jr_052_4266                             ; $42a5: $38 $bf

    ld c, h                                       ; $42a7: $4c
    adc [hl]                                      ; $42a8: $8e
    and [hl]                                      ; $42a9: $a6
    ld hl, $d1cb                                  ; $42aa: $21 $cb $d1
    or e                                          ; $42ad: $b3
    ret                                           ; $42ae: $c9


    db $ec                                        ; $42af: $ec
    sub l                                         ; $42b0: $95
    ld a, [de]                                    ; $42b1: $1a
    xor b                                         ; $42b2: $a8
    xor e                                         ; $42b3: $ab
    ld h, a                                       ; $42b4: $67
    jp nc, $f9c5                                  ; $42b5: $d2 $c5 $f9

    swap e                                        ; $42b8: $cb $33
    add hl, hl                                    ; $42ba: $29
    ld l, l                                       ; $42bb: $6d
    and b                                         ; $42bc: $a0
    ld c, e                                       ; $42bd: $4b
    ld e, l                                       ; $42be: $5d
    call c, $a21c                                 ; $42bf: $dc $1c $a2
    jr nz, jr_052_42c6                            ; $42c2: $20 $02

    ld c, a                                       ; $42c4: $4f
    adc a                                         ; $42c5: $8f

jr_052_42c6:
    ld c, a                                       ; $42c6: $4f
    inc c                                         ; $42c7: $0c
    and l                                         ; $42c8: $a5
    ld hl, $fbf3                                  ; $42c9: $21 $f3 $fb
    rst $38                                       ; $42cc: $ff
    cp b                                          ; $42cd: $b8
    ld d, e                                       ; $42ce: $53
    ld a, e                                       ; $42cf: $7b
    sbc e                                         ; $42d0: $9b
    rst $38                                       ; $42d1: $ff
    push hl                                       ; $42d2: $e5
    adc d                                         ; $42d3: $8a
    jp z, $883f                                   ; $42d4: $ca $3f $88

    ld e, a                                       ; $42d7: $5f
    inc hl                                        ; $42d8: $23
    ld hl, $c070                                  ; $42d9: $21 $70 $c0
    ld c, a                                       ; $42dc: $4f
    cp l                                          ; $42dd: $bd
    ldh [$3c], a                                  ; $42de: $e0 $3c
    ld a, d                                       ; $42e0: $7a
    db $f4                                        ; $42e1: $f4
    xor d                                         ; $42e2: $aa
    ld h, l                                       ; $42e3: $65
    ld a, [hl]                                    ; $42e4: $7e
    sbc c                                         ; $42e5: $99
    call nc, Call_000_3bf4                        ; $42e6: $d4 $f4 $3b
    adc [hl]                                      ; $42e9: $8e
    sbc a                                         ; $42ea: $9f
    ld sp, hl                                     ; $42eb: $f9
    sub a                                         ; $42ec: $97
    call nc, Call_052_53b8                        ; $42ed: $d4 $b8 $53
    rlca                                          ; $42f0: $07
    push hl                                       ; $42f1: $e5
    rst $38                                       ; $42f2: $ff
    jp z, $597d                                   ; $42f3: $ca $7d $59

    ccf                                           ; $42f6: $3f
    db $f4                                        ; $42f7: $f4
    add d                                         ; $42f8: $82
    inc bc                                        ; $42f9: $03
    ld c, e                                       ; $42fa: $4b
    ld h, a                                       ; $42fb: $67
    sub e                                         ; $42fc: $93
    ld [hl], c                                    ; $42fd: $71
    ld a, h                                       ; $42fe: $7c
    cpl                                           ; $42ff: $2f
    pop bc                                        ; $4300: $c1
    pop af                                        ; $4301: $f1
    add l                                         ; $4302: $85
    ei                                            ; $4303: $fb
    cp b                                          ; $4304: $b8
    ld d, e                                       ; $4305: $53
    rlca                                          ; $4306: $07
    push hl                                       ; $4307: $e5
    rst $38                                       ; $4308: $ff
    db $fc                                        ; $4309: $fc
    cp $bf                                        ; $430a: $fe $bf
    sub b                                         ; $430c: $90
    jp hl                                         ; $430d: $e9


    scf                                           ; $430e: $37
    rst $20                                       ; $430f: $e7
    ld l, c                                       ; $4310: $69

Jump_052_4311:
    daa                                           ; $4311: $27
    and [hl]                                      ; $4312: $a6
    dec e                                         ; $4313: $1d
    add hl, hl                                    ; $4314: $29
    sbc c                                         ; $4315: $99
    ld a, [hl]                                    ; $4316: $7e
    and a                                         ; $4317: $a7
    ld hl, sp-$17                                 ; $4318: $f8 $e9
    rst $10                                       ; $431a: $d7
    ld d, [hl]                                    ; $431b: $56
    rst $00                                       ; $431c: $c7
    db $fc                                        ; $431d: $fc
    cp $bf                                        ; $431e: $fe $bf
    ld [hl], b                                    ; $4320: $70
    sbc a                                         ; $4321: $9f
    or e                                          ; $4322: $b3
    ld b, h                                       ; $4323: $44
    ld [hl], l                                    ; $4324: $75
    adc h                                         ; $4325: $8c
    dec sp                                        ; $4326: $3b
    ld [hl], l                                    ; $4327: $75
    ld d, b                                       ; $4328: $50
    cp $c3                                        ; $4329: $fe $c3
    add c                                         ; $432b: $81
    and l                                         ; $432c: $a5
    or e                                          ; $432d: $b3
    ret                                           ; $432e: $c9


    call nc, $c7a9                                ; $432f: $d4 $a9 $c7
    sbc l                                         ; $4332: $9d
    ld a, d                                       ; $4333: $7a
    sub h                                         ; $4334: $94
    rla                                           ; $4335: $17
    ld d, l                                       ; $4336: $55
    and e                                         ; $4337: $a3
    scf                                           ; $4338: $37
    ld h, a                                       ; $4339: $67
    cpl                                           ; $433a: $2f
    dec [hl]                                      ; $433b: $35
    jp z, $8f67                                   ; $433c: $ca $67 $8f

    reti                                          ; $433f: $d9


    ld h, h                                       ; $4340: $64
    jp hl                                         ; $4341: $e9


    ld d, e                                       ; $4342: $53
    inc sp                                        ; $4343: $33
    ld l, e                                       ; $4344: $6b
    add [hl]                                      ; $4345: $86

Call_052_4346:
    ld b, d                                       ; $4346: $42
    inc b                                         ; $4347: $04
    ld c, a                                       ; $4348: $4f
    adc a                                         ; $4349: $8f
    rst $08                                       ; $434a: $cf
    ld e, h                                       ; $434b: $5c
    rra                                           ; $434c: $1f
    xor $23                                       ; $434d: $ee $23
    add [hl]                                      ; $434f: $86
    and [hl]                                      ; $4350: $a6
    xor a                                         ; $4351: $af
    sub h                                         ; $4352: $94
    ld e, a                                       ; $4353: $5f
    inc hl                                        ; $4354: $23
    dec hl                                        ; $4355: $2b
    ld a, l                                       ; $4356: $7d
    db $e4                                        ; $4357: $e4
    cp d                                          ; $4358: $ba
    rst $00                                       ; $4359: $c7
    sbc a                                         ; $435a: $9f
    ld c, c                                       ; $435b: $49
    ld l, c                                       ; $435c: $69
    cp e                                          ; $435d: $bb
    and d                                         ; $435e: $a2
    ld a, [hl-]                                   ; $435f: $3a
    db $ec                                        ; $4360: $ec
    dec c                                         ; $4361: $0d
    ret                                           ; $4362: $c9


    pop de                                        ; $4363: $d1
    db $e3                                        ; $4364: $e3
    ld c, [hl]                                    ; $4365: $4e

Jump_052_4366:
    cp l                                          ; $4366: $bd
    ld [hl], d                                    ; $4367: $72
    rst $18                                       ; $4368: $df

Jump_052_4369:
    ccf                                           ; $4369: $3f
    push hl                                       ; $436a: $e5
    sbc d                                         ; $436b: $9a
    or a                                          ; $436c: $b7
    ld sp, hl                                     ; $436d: $f9
    rst $18                                       ; $436e: $df
    ld [hl], $2b                                  ; $436f: $36 $2b
    ld b, l                                       ; $4371: $45
    ld [hl-], a                                   ; $4372: $32
    sbc $26                                       ; $4373: $de $26
    db $fd                                        ; $4375: $fd
    add e                                         ; $4376: $83
    add [hl]                                      ; $4377: $86
    jp Jump_052_6c61                              ; $4378: $c3 $61 $6c


    ld d, [hl]                                    ; $437b: $56
    adc d                                         ; $437c: $8a
    inc c                                         ; $437d: $0c
    inc de                                        ; $437e: $13
    adc [hl]                                      ; $437f: $8e
    cpl                                           ; $4380: $2f
    cp $8f                                        ; $4381: $fe $8f
    ld e, $98                                     ; $4383: $1e $98
    add sp, $71                                   ; $4385: $e8 $71
    and a                                         ; $4387: $a7
    ld e, [hl]                                    ; $4388: $5e
    cp c                                          ; $4389: $b9
    ld c, a                                       ; $438a: $4f

Call_052_438b:
    ccf                                           ; $438b: $3f
    ld a, $b3                                     ; $438c: $3e $b3
    ldh [$30], a                                  ; $438e: $e0 $30
    ld [hl], $2b                                  ; $4390: $36 $2b
    ld b, l                                       ; $4392: $45
    or $70                                        ; $4393: $f6 $70
    ld d, d                                       ; $4395: $52
    pop de                                        ; $4396: $d1
    db $e3                                        ; $4397: $e3
    ld c, [hl]                                    ; $4398: $4e
    cp l                                          ; $4399: $bd
    ld [hl], d                                    ; $439a: $72
    sbc a                                         ; $439b: $9f
    ld [c], a                                     ; $439c: $e2
    and a                                         ; $439d: $a7
    ld e, a                                       ; $439e: $5f
    ld e, e                                       ; $439f: $5b
    dec e                                         ; $43a0: $1d
    di                                            ; $43a1: $f3
    ei                                            ; $43a2: $fb
    rst $38                                       ; $43a3: $ff
    db $e4                                        ; $43a4: $e4
    ret z                                         ; $43a5: $c8

    ld e, [hl]                                    ; $43a6: $5e
    db $d3                                        ; $43a7: $d3
    db $eb                                        ; $43a8: $eb
    cpl                                           ; $43a9: $2f
    cp $8f                                        ; $43aa: $fe $8f
    sbc [hl]                                      ; $43ac: $9e
    scf                                           ; $43ad: $37
    dec hl                                        ; $43ae: $2b
    ld b, l                                       ; $43af: $45
    or $f4                                        ; $43b0: $f6 $f4
    sub b                                         ; $43b2: $90
    db $ec                                        ; $43b3: $ec

Call_052_43b4:
    pop de                                        ; $43b4: $d1
    db $e3                                        ; $43b5: $e3
    ld c, [hl]                                    ; $43b6: $4e
    cp l                                          ; $43b7: $bd
    ld [hl], d                                    ; $43b8: $72
    sbc a                                         ; $43b9: $9f
    ld [c], a                                     ; $43ba: $e2
    rst $20                                       ; $43bb: $e7
    rst $30                                       ; $43bc: $f7
    rst $38                                       ; $43bd: $ff
    ld [hl], h                                    ; $43be: $74
    sub c                                         ; $43bf: $91
    sbc d                                         ; $43c0: $9a
    ld c, c                                       ; $43c1: $49
    ld l, c                                       ; $43c2: $69
    dec sp                                        ; $43c3: $3b
    call nz, $cd76                                ; $43c4: $c4 $76 $cd
    ld e, [hl]                                    ; $43c7: $5e
    dec b                                         ; $43c8: $05
    rlca                                          ; $43c9: $07
    and $e8                                       ; $43ca: $e6 $e8
    reti                                          ; $43cc: $d9


    ld h, h                                       ; $43cd: $64
    ld b, a                                       ; $43ce: $47
    ld c, a                                       ; $43cf: $4f
    ld c, [hl]                                    ; $43d0: $4e
    ld c, h                                       ; $43d1: $4c
    dec sp                                        ; $43d2: $3b
    ld a, [de]                                    ; $43d3: $1a
    halt                                          ; $43d4: $76
    or $4a                                        ; $43d5: $f6 $4a
    ld c, l                                       ; $43d7: $4d
    xor a                                         ; $43d8: $af
    ccf                                           ; $43d9: $3f
    ld l, a                                       ; $43da: $6f
    ld d, [hl]                                    ; $43db: $56
    adc d                                         ; $43dc: $8a
    ld b, h                                       ; $43dd: $44
    rst $08                                       ; $43de: $cf
    ld h, $c3                                     ; $43df: $26 $c3
    ld sp, hl                                     ; $43e1: $f9
    ld bc, $997a                                  ; $43e2: $01 $7a $99
    ld c, b                                       ; $43e5: $48
    pop hl                                        ; $43e6: $e1
    ld a, b                                       ; $43e7: $78
    ret z                                         ; $43e8: $c8

    cp b                                          ; $43e9: $b8
    ld d, e                                       ; $43ea: $53
    xor a                                         ; $43eb: $af
    call c, $0e97                                 ; $43ec: $dc $97 $0e
    jp nc, $e707                                  ; $43ef: $d2 $07 $e7

    dec [hl]                                      ; $43f2: $35
    dec de                                        ; $43f3: $1b
    inc d                                         ; $43f4: $14
    ld l, [hl]                                    ; $43f5: $6e
    ld c, a                                       ; $43f6: $4f
    db $f4                                        ; $43f7: $f4
    ld l, d                                       ; $43f8: $6a
    xor a                                         ; $43f9: $af
    pop de                                        ; $43fa: $d1
    ld l, d                                       ; $43fb: $6a
    ld [de], a                                    ; $43fc: $12
    ld a, l                                       ; $43fd: $7d
    ld b, l                                       ; $43fe: $45
    ld d, l                                       ; $43ff: $55
    cpl                                           ; $4400: $2f
    db $dd                                        ; $4401: $dd
    ld h, c                                       ; $4402: $61
    push af                                       ; $4403: $f5
    ld l, e                                       ; $4404: $6b
    ld h, a                                       ; $4405: $67
    xor a                                         ; $4406: $af
    call nc, $faf4                                ; $4407: $d4 $f4 $fa
    db $d3                                        ; $440a: $d3
    ld l, a                                       ; $440b: $6f
    xor [hl]                                      ; $440c: $ae
    ld e, [hl]                                    ; $440d: $5e
    cp c                                          ; $440e: $b9
    rst $08                                       ; $440f: $cf
    ld h, $d3                                     ; $4410: $26 $d3
    xor d                                         ; $4412: $aa
    and a                                         ; $4413: $a7
    sbc b                                         ; $4414: $98
    and [hl]                                      ; $4415: $a6
    ld a, l                                       ; $4416: $7d
    ld a, l                                       ; $4417: $7d
    cp b                                          ; $4418: $b8
    rst $28                                       ; $4419: $ef
    push hl                                       ; $441a: $e5
    ld sp, $7193                                  ; $441b: $31 $93 $71
    ccf                                           ; $441e: $3f
    ld a, d                                       ; $441f: $7a
    ld [hl], $b2                                  ; $4420: $36 $b2
    sbc e                                         ; $4422: $9b
    and l                                         ; $4423: $a5
    rrca                                          ; $4424: $0f
    rst $30                                       ; $4425: $f7
    ld c, $f6                                     ; $4426: $0e $f6
    dec de                                        ; $4428: $1b
    ld e, b                                       ; $4429: $58
    ld a, [hl-]                                   ; $442a: $3a
    sbc e                                         ; $442b: $9b
    db $ec                                        ; $442c: $ec
    or e                                          ; $442d: $b3
    ld d, d                                       ; $442e: $52
    and h                                         ; $442f: $a4
    ld a, [c]                                     ; $4430: $f2
    jr c, jr_052_44b1                             ; $4431: $38 $7e

    ld a, l                                       ; $4433: $7d

Call_052_4434:
    cp b                                          ; $4434: $b8
    adc a                                         ; $4435: $8f
    ld e, h                                       ; $4436: $5c
    rst $30                                       ; $4437: $f7
    ld hl, sp+$33                                 ; $4438: $f8 $33
    add hl, hl                                    ; $443a: $29
    ld l, l                                       ; $443b: $6d
    ld a, l                                       ; $443c: $7d
    cp b                                          ; $443d: $b8
    rst $28                                       ; $443e: $ef
    adc d                                         ; $443f: $8a
    ld [$37b0], a                                 ; $4440: $ea $b0 $37
    inc h                                         ; $4443: $24
    ld b, a                                       ; $4444: $47
    ld c, a                                       ; $4445: $4f
    xor e                                         ; $4446: $ab
    sbc [hl]                                      ; $4447: $9e
    ld c, l                                       ; $4448: $4d
    or $4f                                        ; $4449: $f6 $4f
    reti                                          ; $444b: $d9


    add a                                         ; $444c: $87
    or a                                          ; $444d: $b7
    ld c, c                                       ; $444e: $49
    rst $38                                       ; $444f: $ff
    and b                                         ; $4450: $a0
    pop hl                                        ; $4451: $e1
    db $ec                                        ; $4452: $ec
    ld [hl], a                                    ; $4453: $77
    sbc [hl]                                      ; $4454: $9e
    ld c, h                                       ; $4455: $4c
    xor e                                         ; $4456: $ab
    sbc $6b                                       ; $4457: $de $6b
    xor a                                         ; $4459: $af
    ld c, a                                       ; $445a: $4f
    pop af                                        ; $445b: $f1
    and d                                         ; $445c: $a2
    and d                                         ; $445d: $a2
    add a                                         ; $445e: $87
    di                                            ; $445f: $f3
    or e                                          ; $4460: $b3
    ld d, a                                       ; $4461: $57
    xor l                                         ; $4462: $ad
    call c, $9dc7                                 ; $4463: $dc $c7 $9d
    ld a, [hl-]                                   ; $4466: $3a
    sbc a                                         ; $4467: $9f
    ld c, b                                       ; $4468: $48
    ld c, l                                       ; $4469: $4d
    cp e                                          ; $446a: $bb
    xor $b5                                       ; $446b: $ee $b5
    ld a, $dc                                     ; $446d: $3e $dc
    ld b, a                                       ; $446f: $47
    inc c                                         ; $4470: $0c
    ld c, l                                       ; $4471: $4d
    ld e, a                                       ; $4472: $5f
    add hl, hl                                    ; $4473: $29
    cp a                                          ; $4474: $bf
    ld b, [hl]                                    ; $4475: $46
    jr nz, jr_052_447a                            ; $4476: $20 $02

    ret nz                                        ; $4478: $c0

    ld c, [hl]                                    ; $4479: $4e

jr_052_447a:
    sbc l                                         ; $447a: $9d
    ld c, a                                       ; $447b: $4f
    ld h, h                                       ; $447c: $64
    push hl                                       ; $447d: $e5
    ld a, $ed                                     ; $447e: $3e $ed
    cp d                                          ; $4480: $ba
    rst $10                                       ; $4481: $d7

jr_052_4482:
    ld l, b                                       ; $4482: $68
    ld a, c                                       ; $4483: $79
    ld c, d                                       ; $4484: $4a
    dec hl                                        ; $4485: $2b
    or c                                          ; $4486: $b1
    ld sp, $da62                                  ; $4487: $31 $62 $da
    pop af                                        ; $448a: $f1
    ld l, d                                       ; $448b: $6a
    jr c, @+$62                                   ; $448c: $38 $60

    and a                                         ; $448e: $a7
    adc $3e                                       ; $448f: $ce $3e
    xor $b3                                       ; $4491: $ee $b3
    call c, Call_052_67ab                         ; $4493: $dc $ab $67
    sub e                                         ; $4496: $93
    pop de                                        ; $4497: $d1
    ld l, d                                       ; $4498: $6a
    ld [hl], d                                    ; $4499: $72
    ld [$9990], a                                 ; $449a: $ea $90 $99
    sub h                                         ; $449d: $94
    ld [hl], $6f                                  ; $449e: $36 $6f
    ld d, [hl]                                    ; $44a0: $56
    adc d                                         ; $44a1: $8a
    ld b, h                                       ; $44a2: $44
    rrca                                          ; $44a3: $0f
    rst $20                                       ; $44a4: $e7

jr_052_44a5:
    rlca                                          ; $44a5: $07
    add sp, $65                                   ; $44a6: $e8 $65
    ld [hl+], a                                   ; $44a8: $22
    add l                                         ; $44a9: $85
    db $e3                                        ; $44aa: $e3
    ld hl, $4ee3                                  ; $44ab: $21 $e3 $4e
    cp l                                          ; $44ae: $bd
    ld [hl], d                                    ; $44af: $72
    sbc a                                         ; $44b0: $9f

jr_052_44b1:
    ld a, [hl]                                    ; $44b1: $7e
    adc b                                         ; $44b2: $88
    xor l                                         ; $44b3: $ad
    pop hl                                        ; $44b4: $e1
    db $fc                                        ; $44b5: $fc
    jp nz, $c47d                                  ; $44b6: $c2 $7d $c4

    or h                                          ; $44b9: $b4
    jp $e9ed                                      ; $44ba: $c3 $ed $e9


    ld hl, $3876                                  ; $44bd: $21 $76 $38
    cp a                                          ; $44c0: $bf
    ld [hl], b                                    ; $44c1: $70
    ld e, a                                       ; $44c2: $5f
    adc c                                         ; $44c3: $89
    db $ed                                        ; $44c4: $ed
    ld a, [de]                                    ; $44c5: $1a
    ld sp, $c3ed                                  ; $44c6: $31 $ed $c3
    ld sp, hl                                     ; $44c9: $f9
    push hl                                       ; $44ca: $e5
    and d                                         ; $44cb: $a2
    or h                                          ; $44cc: $b4
    sub [hl]                                      ; $44cd: $96
    rrca                                          ; $44ce: $0f
    ld [hl], a                                    ; $44cf: $77
    jr c, jr_052_4482                             ; $44d0: $38 $b0

    ld [hl], h                                    ; $44d2: $74
    ld [hl], $19                                  ; $44d3: $36 $19
    rst $00                                       ; $44d5: $c7
    rst $30                                       ; $44d6: $f7
    jp nz, Jump_052_787d                          ; $44d7: $c2 $7d $78

    push af                                       ; $44da: $f5
    cp h                                          ; $44db: $bc
    ld a, [c]                                     ; $44dc: $f2
    ld l, h                                       ; $44dd: $6c
    call z, Call_052_7e75                         ; $44de: $cc $75 $7e
    call nz, $87b4                                ; $44e1: $c4 $b4 $87
    inc l                                         ; $44e4: $2c
    ld l, l                                       ; $44e5: $6d
    jp c, $c0e1                                   ; $44e6: $da $e1 $c0

    ld d, l                                       ; $44e9: $55
    rst $10                                       ; $44ea: $d7
    xor [hl]                                      ; $44eb: $ae
    ld h, [hl]                                    ; $44ec: $66
    ldh a, [$d5]                                  ; $44ed: $f0 $d5
    rst $38                                       ; $44ef: $ff
    dec [hl]                                      ; $44f0: $35
    ld h, d                                       ; $44f1: $62
    jp c, $9dc7                                   ; $44f2: $da $c7 $9d

    ld a, d                                       ; $44f5: $7a
    push hl                                       ; $44f6: $e5
    ld a, $fd                                     ; $44f7: $3e $fd

Call_052_44f9:
    adc d                                         ; $44f9: $8a
    inc d                                         ; $44fa: $14
    ld b, h                                       ; $44fb: $44
    ld h, b                                       ; $44fc: $60
    jp hl                                         ; $44fd: $e9


    ld l, h                                       ; $44fe: $6c
    ld [hl-], a                                   ; $44ff: $32
    push bc                                       ; $4500: $c5
    rst $30                                       ; $4501: $f7
    db $f4                                        ; $4502: $f4
    ei                                            ; $4503: $fb
    ld [hl], e                                    ; $4504: $73
    adc h                                         ; $4505: $8c
    sub h                                         ; $4506: $94
    call z, $f326                                 ; $4507: $cc $26 $f3
    ld h, [hl]                                    ; $450a: $66
    and l                                         ; $450b: $a5
    ld c, b                                       ; $450c: $48
    dec c                                         ; $450d: $0d
    rst $20                                       ; $450e: $e7
    rst $30                                       ; $450f: $f7
    inc b                                         ; $4510: $04
    jr z, jr_052_453b                             ; $4511: $28 $28

    and b                                         ; $4513: $a0
    ld b, b                                       ; $4514: $40
    jr nc, jr_052_44a5                            ; $4515: $30 $8e

    dec sp                                        ; $4517: $3b
    push af                                       ; $4518: $f5
    jp z, Jump_000_1c7d                           ; $4519: $ca $7d $1c

    cp a                                          ; $451c: $bf
    inc b                                         ; $451d: $04
    rst $00                                       ; $451e: $c7
    rla                                           ; $451f: $17
    xor $a3                                       ; $4520: $ee $a3
    ld h, c                                       ; $4522: $61

Jump_052_4523:
    ld l, l                                       ; $4523: $6d
    db $fc                                        ; $4524: $fc
    ld [de], a                                    ; $4525: $12
    dec de                                        ; $4526: $1b

Jump_052_4527:
    inc sp                                        ; $4527: $33
    ld [hl], h                                    ; $4528: $74
    ld a, d                                       ; $4529: $7a
    push af                                       ; $452a: $f5
    ld l, h                                       ; $452b: $6c
    or d                                          ; $452c: $b2
    and e                                         ; $452d: $a3
    ld hl, $1802                                  ; $452e: $21 $02 $18
    sbc e                                         ; $4531: $9b
    sub l                                         ; $4532: $95
    ld [hl+], a                                   ; $4533: $22
    jp $01f9                                      ; $4534: $c3 $f9 $01


    ld a, d                                       ; $4537: $7a
    sbc c                                         ; $4538: $99
    ld c, b                                       ; $4539: $48
    pop hl                                        ; $453a: $e1

jr_052_453b:
    ld a, b                                       ; $453b: $78
    ret z                                         ; $453c: $c8

    cp b                                          ; $453d: $b8
    ld d, e                                       ; $453e: $53
    xor a                                         ; $453f: $af
    call c, $c3f7                                 ; $4540: $dc $f7 $c3
    ld l, e                                       ; $4543: $6b
    pop bc                                        ; $4544: $c1
    ld a, c                                       ; $4545: $79
    db $f4                                        ; $4546: $f4
    xor h                                         ; $4547: $ac
    ld sp, hl                                     ; $4548: $f9
    or [hl]                                       ; $4549: $b6
    add $9d                                       ; $454a: $c6 $9d
    ld a, [hl-]                                   ; $454c: $3a
    jr z, @+$01                                   ; $454d: $28 $ff

    ld [hl], a                                    ; $454f: $77
    daa                                           ; $4550: $27
    ld b, a                                       ; $4551: $47
    ld l, e                                       ; $4552: $6b
    pop hl                                        ; $4553: $e1
    ld hl, $bae3                                  ; $4554: $21 $e3 $ba
    jr z, jr_052_45d0                             ; $4557: $28 $77

    ld [$abd9], a                                 ; $4559: $ea $d9 $ab
    ldh [rTMA], a                                 ; $455c: $e0 $06
    sub [hl]                                      ; $455e: $96
    adc $86                                       ; $455f: $ce $86
    adc a                                         ; $4561: $8f
    cp e                                          ; $4562: $bb
    ld [hl+], a                                   ; $4563: $22
    ld a, c                                       ; $4564: $79
    pop hl                                        ; $4565: $e1
    ld a, $ee                                     ; $4566: $3e $ee
    call nc, $f941                                ; $4568: $d4 $41 $f9
    ccf                                           ; $456b: $3f
    ld a, e                                       ; $456c: $7b
    db $f4                                        ; $456d: $f4
    inc l                                         ; $456e: $2c
    adc e                                         ; $456f: $8b
    ld b, h                                       ; $4570: $44
    rst $08                                       ; $4571: $cf

Call_052_4572:
    add [hl]                                      ; $4572: $86
    cpl                                           ; $4573: $2f
    pop bc                                        ; $4574: $c1
    pop af                                        ; $4575: $f1
    add l                                         ; $4576: $85
    ei                                            ; $4577: $fb
    ld l, b                                       ; $4578: $68
    ld e, b                                       ; $4579: $58
    dec de                                        ; $457a: $1b
    cp a                                          ; $457b: $bf
    call nz, $b2c6                                ; $457c: $c4 $c6 $b2
    and c                                         ; $457f: $a1
    di                                            ; $4580: $f3
    ld a, [$33d5]                                 ; $4581: $fa $d5 $33
    ld [hl], h                                    ; $4584: $74
    ld a, d                                       ; $4585: $7a
    reti                                          ; $4586: $d9


    reti                                          ; $4587: $d9


    ld h, h                                       ; $4588: $64
    ld e, d                                       ; $4589: $5a
    push af                                       ; $458a: $f5
    or h                                          ; $458b: $b4
    db $eb                                        ; $458c: $eb
    ld e, [hl]                                    ; $458d: $5e
    ld c, $11                                     ; $458e: $0e $11
    ret nz                                        ; $4590: $c0

    ld sp, hl                                     ; $4591: $f9
    ld sp, hl                                     ; $4592: $f9
    db $fd                                        ; $4593: $fd
    ld a, a                                       ; $4594: $7f
    ld a, b                                       ; $4595: $78
    dec de                                        ; $4596: $1b
    ld l, $72                                     ; $4597: $2e $72
    ld [hl], $bd                                  ; $4599: $36 $bd
    daa                                           ; $459b: $27
    ld d, d                                       ; $459c: $52
    ld a, b                                       ; $459d: $78
    call z, $b4a4                                 ; $459e: $cc $a4 $b4
    ld l, c                                       ; $45a1: $69
    rlca                                          ; $45a2: $07
    push af                                       ; $45a3: $f5
    sbc d                                         ; $45a4: $9a
    cp l                                          ; $45a5: $bd
    ld d, d                                       ; $45a6: $52
    di                                            ; $45a7: $f3
    ld [hl], $ff                                  ; $45a8: $36 $ff
    db $db                                        ; $45aa: $db
    ld h, [hl]                                    ; $45ab: $66
    and l                                         ; $45ac: $a5
    ld c, b                                       ; $45ad: $48
    xor $48                                       ; $45ae: $ee $48
    dec b                                         ; $45b0: $05
    xor $67                                       ; $45b1: $ee $67
    ld a, e                                       ; $45b3: $7b
    xor b                                         ; $45b4: $a8
    ld l, [hl]                                    ; $45b5: $6e
    ld d, $44                                     ; $45b6: $16 $44
    jr @-$4f                                      ; $45b8: $18 $af

    ld a, e                                       ; $45ba: $7b
    ld c, l                                       ; $45bb: $4d
    dec e                                         ; $45bc: $1d
    dec l                                         ; $45bd: $2d
    or l                                          ; $45be: $b5
    ld c, [hl]                                    ; $45bf: $4e
    call nz, $fe97                                ; $45c0: $c4 $97 $fe
    dec h                                         ; $45c3: $25
    halt                                          ; $45c4: $76
    ld l, c                                       ; $45c5: $69
    ld b, e                                       ; $45c6: $43
    inc [hl]                                      ; $45c7: $34
    sub $ff                                       ; $45c8: $d6 $ff
    and [hl]                                      ; $45ca: $a6
    and l                                         ; $45cb: $a5
    ldh [rTMA], a                                 ; $45cc: $e0 $06
    cp d                                          ; $45ce: $ba
    ld h, h                                       ; $45cf: $64

jr_052_45d0:
    ld a, d                                       ; $45d0: $7a
    ld hl, sp-$16                                 ; $45d1: $f8 $ea
    db $db                                        ; $45d3: $db
    cp [hl]                                       ; $45d4: $be
    ld l, d                                       ; $45d5: $6a
    ld a, d                                       ; $45d6: $7a
    reti                                          ; $45d7: $d9


    pop de                                        ; $45d8: $d1
    sub d                                         ; $45d9: $92
    ld l, c                                       ; $45da: $69
    rst $10                                       ; $45db: $d7
    cp l                                          ; $45dc: $bd
    ld a, d                                       ; $45dd: $7a
    call c, Call_052_77a9                         ; $45de: $dc $a9 $77
    push bc                                       ; $45e1: $c5
    dec sp                                        ; $45e2: $3b
    ld [hl], d                                    ; $45e3: $72
    ld l, $f1                                     ; $45e4: $2e $f1
    ld e, d                                       ; $45e6: $5a
    ld l, $12                                     ; $45e7: $2e $12
    dec c                                         ; $45e9: $0d
    ld de, $4420                                  ; $45ea: $11 $20 $44
    add l                                         ; $45ed: $85
    adc h                                         ; $45ee: $8c
    db $e3                                        ; $45ef: $e3
    ld a, e                                       ; $45f0: $7b
    adc d                                         ; $45f1: $8a
    rst $18                                       ; $45f2: $df
    sub l                                         ; $45f3: $95
    db $dd                                        ; $45f4: $dd
    reti                                          ; $45f5: $d9


    sub b                                         ; $45f6: $90
    sub l                                         ; $45f7: $95
    sbc [hl]                                      ; $45f8: $9e
    ret                                           ; $45f9: $c9


    db $fd                                        ; $45fa: $fd
    or [hl]                                       ; $45fb: $b6
    sub [hl]                                      ; $45fc: $96
    ld [hl], $a4                                  ; $45fd: $36 $a4
    ld [hl], h                                    ; $45ff: $74
    dec de                                        ; $4600: $1b
    ld e, a                                       ; $4601: $5f
    xor [hl]                                      ; $4602: $ae
    xor b                                         ; $4603: $a8
    sub b                                         ; $4604: $90
    dec h                                         ; $4605: $25
    ld e, [hl]                                    ; $4606: $5e
    ld [hl-], a                                   ; $4607: $32
    cp a                                          ; $4608: $bf
    rst $38                                       ; $4609: $ff
    ld h, a                                       ; $460a: $67
    rst $20                                       ; $460b: $e7
    push bc                                       ; $460c: $c5
    ld b, d                                       ; $460d: $42
    inc b                                         ; $460e: $04
    rst $20                                       ; $460f: $e7
    ret                                           ; $4610: $c9


    jp nc, $9ea7                                  ; $4611: $d2 $a7 $9e

    jr @+$37                                      ; $4614: $18 $35

    xor a                                         ; $4616: $af
    ld e, a                                       ; $4617: $5f
    inc sp                                        ; $4618: $33
    ld [hl], h                                    ; $4619: $74
    call c, $87a9                                 ; $461a: $dc $a9 $87
    or a                                          ; $461d: $b7
    pop hl                                        ; $461e: $e1
    ld [hl+], a                                   ; $461f: $22
    ld h, a                                       ; $4620: $67
    db $d3                                        ; $4621: $d3
    inc bc                                        ; $4622: $03
    sbc a                                         ; $4623: $9f
    call c, $f8ee                                 ; $4624: $dc $ee $f8
    ld a, a                                       ; $4627: $7f
    push hl                                       ; $4628: $e5
    ld a, $9b                                     ; $4629: $3e $9b
    ld c, h                                       ; $462b: $4c
    xor e                                         ; $462c: $ab
    sbc [hl]                                      ; $462d: $9e
    halt                                          ; $462e: $76
    db $dd                                        ; $462f: $dd
    res 2, a                                      ; $4630: $cb $97
    ld [hl], $1e                                  ; $4632: $36 $1e
    inc [hl]                                      ; $4634: $34
    db $ec                                        ; $4635: $ec
    rrca                                          ; $4636: $0f
    rra                                           ; $4637: $1f
    dec [hl]                                      ; $4638: $35
    ld a, $7b                                     ; $4639: $3e $7b
    ld h, l                                       ; $463b: $65
    sbc c                                         ; $463c: $99
    sbc c                                         ; $463d: $99
    db $10                                        ; $463e: $10
    ld l, e                                       ; $463f: $6b
    jr z, jr_052_4686                             ; $4640: $28 $44

    adc a                                         ; $4642: $8f
    ld c, e                                       ; $4643: $4b
    db $ed                                        ; $4644: $ed
    inc h                                         ; $4645: $24
    sbc c                                         ; $4646: $99
    ld d, h                                       ; $4647: $54
    xor a                                         ; $4648: $af
    call c, $c367                                 ; $4649: $dc $67 $c3
    and a                                         ; $464c: $a7
    ld d, a                                       ; $464d: $57
    adc a                                         ; $464e: $8f
    dec sp                                        ; $464f: $3b
    cp d                                          ; $4650: $ba
    ld h, e                                       ; $4651: $63
    add h                                         ; $4652: $84
    sub l                                         ; $4653: $95
    ld [hl+], a                                   ; $4654: $22
    rst $38                                       ; $4655: $ff
    adc d                                         ; $4656: $8a
    xor d                                         ; $4657: $aa
    ld e, [hl]                                    ; $4658: $5e
    ld [c], a                                     ; $4659: $e2
    or c                                          ; $465a: $b1
    dec sp                                        ; $465b: $3b
    cp h                                          ; $465c: $bc
    sbc d                                         ; $465d: $9a
    add h                                         ; $465e: $84
    ld b, b                                       ; $465f: $40
    inc b                                         ; $4660: $04
    add b                                         ; $4661: $80
    cp $af                                        ; $4662: $fe $af
    ld de, $8a56                                  ; $4664: $11 $56 $8a
    db $fc                                        ; $4667: $fc
    dec hl                                        ; $4668: $2b
    xor d                                         ; $4669: $aa
    ld a, d                                       ; $466a: $7a
    or $e8                                        ; $466b: $f6 $e8
    dec h                                         ; $466d: $25
    ld e, $53                                     ; $466e: $1e $53
    and a                                         ; $4670: $a7
    sbc [hl]                                      ; $4671: $9e
    dec c                                         ; $4672: $0d
    rra                                           ; $4673: $1f
    db $d3                                        ; $4674: $d3
    and h                                         ; $4675: $a4
    db $d3                                        ; $4676: $d3
    ld d, a                                       ; $4677: $57
    ld sp, hl                                     ; $4678: $f9
    jp z, Jump_052_5e7d                           ; $4679: $ca $7d $5e

    dec bc                                        ; $467c: $0b
    add hl, de                                    ; $467d: $19
    sbc $86                                       ; $467e: $de $86
    add [hl]                                      ; $4680: $86
    sub h                                         ; $4681: $94
    add l                                         ; $4682: $85
    ld [$afa0], sp                                ; $4683: $08 $a0 $af

jr_052_4686:
    call nc, Call_052_5584                        ; $4686: $d4 $84 $55
    and e                                         ; $4689: $a3
    ld h, $45                                     ; $468a: $26 $45
    ld a, [hl+]                                   ; $468c: $2a
    inc de                                        ; $468d: $13
    db $d3                                        ; $468e: $d3
    ld c, e                                       ; $468f: $4b
    rst $38                                       ; $4690: $ff

jr_052_4691:
    ret nc                                        ; $4691: $d0

    rst $00                                       ; $4692: $c7
    sbc l                                         ; $4693: $9d
    ld a, [hl-]                                   ; $4694: $3a
    ei                                            ; $4695: $fb
    xor c                                         ; $4696: $a9
    ld l, l                                       ; $4697: $6d
    ld c, l                                       ; $4698: $4d
    adc [hl]                                      ; $4699: $8e
    ld e, $b3                                     ; $469a: $1e $b3
    call nc, Call_000_0fc8                        ; $469c: $d4 $c8 $0f
    ld a, l                                       ; $469f: $7d
    ld [hl], a                                    ; $46a0: $77
    add a                                         ; $46a1: $87
    ld d, d                                       ; $46a2: $52
    or e                                          ; $46a3: $b3
    ld b, a                                       ; $46a4: $47
    cpl                                           ; $46a5: $2f
    pop af                                        ; $46a6: $f1
    add b                                         ; $46a7: $80
    ld [$4b8f], sp                                ; $46a8: $08 $8f $4b
    adc l                                         ; $46ab: $8d
    dec hl                                        ; $46ac: $2b
    rst $30                                       ; $46ad: $f7
    ld [$f15d], a                                 ; $46ae: $ea $5d $f1
    sbc b                                         ; $46b1: $98
    ld e, [hl]                                    ; $46b2: $5e
    call Call_052_7a9d                            ; $46b3: $cd $9d $7a
    ld a, [$15dd]                                 ; $46b6: $fa $dd $15
    adc a                                         ; $46b9: $8f
    ld [hl], c                                    ; $46ba: $71
    ld a, h                                       ; $46bb: $7c
    adc a                                         ; $46bc: $8f
    or b                                          ; $46bd: $b0
    ld d, d                                       ; $46be: $52
    db $e4                                        ; $46bf: $e4
    ld e, a                                       ; $46c0: $5f
    ld d, c                                       ; $46c1: $51
    di                                            ; $46c2: $f3
    ei                                            ; $46c3: $fb
    rst $38                                       ; $46c4: $ff
    add sp, -$4b                                  ; $46c5: $e8 $b5
    or [hl]                                       ; $46c7: $b6
    call nc, $e70c                                ; $46c8: $d4 $0c $e7
    push de                                       ; $46cb: $d5
    ld bc, $2011                                  ; $46cc: $01 $11 $20
    ld e, c                                       ; $46cf: $59
    add hl, hl                                    ; $46d0: $29
    ld a, [c]                                     ; $46d1: $f2
    xor a                                         ; $46d2: $af
    jr z, jr_052_4691                             ; $46d3: $28 $bc

    sbc b                                         ; $46d5: $98
    sla h                                         ; $46d6: $cb $24
    ld sp, hl                                     ; $46d8: $f9
    ccf                                           ; $46d9: $3f
    halt                                          ; $46da: $76
    push bc                                       ; $46db: $c5
    ld h, e                                       ; $46dc: $63
    ld sp, hl                                     ; $46dd: $f9
    cp d                                          ; $46de: $ba
    rst $10                                       ; $46df: $d7
    or h                                          ; $46e0: $b4
    ld hl, sp+$3e                                 ; $46e1: $f8 $3e
    ld l, $fe                                     ; $46e3: $2e $fe
    inc h                                         ; $46e5: $24
    add c                                         ; $46e6: $81
    ld [$d50f], sp                                ; $46e7: $08 $0f $d5
    or e                                          ; $46ea: $b3
    ret                                           ; $46eb: $c9


    or d                                          ; $46ec: $b2
    rst $18                                       ; $46ed: $df
    xor $f2                                       ; $46ee: $ee $f2
    add l                                         ; $46f0: $85
    adc h                                         ; $46f1: $8c
    or b                                          ; $46f2: $b0
    ld d, d                                       ; $46f3: $52
    db $e4                                        ; $46f4: $e4
    ld e, a                                       ; $46f5: $5f
    ld d, c                                       ; $46f6: $51
    cp e                                          ; $46f7: $bb
    dec sp                                        ; $46f8: $3b
    add hl, hl                                    ; $46f9: $29
    inc hl                                        ; $46fa: $23
    ld hl, $5e13                                  ; $46fb: $21 $13 $5e
    and [hl]                                      ; $46fe: $a6
    ld a, b                                       ; $46ff: $78
    ld d, c                                       ; $4700: $51
    adc a                                         ; $4701: $8f
    halt                                          ; $4702: $76
    ld e, $be                                     ; $4703: $1e $be
    and e                                         ; $4705: $a3
    rst $30                                       ; $4706: $f7
    adc a                                         ; $4707: $8f
    ld c, h                                       ; $4708: $4c
    xor [hl]                                      ; $4709: $ae
    ld [hl], d                                    ; $470a: $72
    adc b                                         ; $470b: $88
    nop                                           ; $470c: $00
    ld c, a                                       ; $470d: $4f
    xor e                                         ; $470e: $ab
    cp c                                          ; $470f: $b9
    ld d, e                                       ; $4710: $53
    rrca                                          ; $4711: $0f
    rst $28                                       ; $4712: $ef
    ld a, [c]                                     ; $4713: $f2
    ld [$ffd5], a                                 ; $4714: $ea $d5 $ff
    dec [hl]                                      ; $4717: $35
    ld b, e                                       ; $4718: $43
    ld b, a                                       ; $4719: $47
    ld e, b                                       ; $471a: $58
    add hl, hl                                    ; $471b: $29
    ld a, [c]                                     ; $471c: $f2
    xor a                                         ; $471d: $af
    xor b                                         ; $471e: $a8
    ld [$0847], a                                 ; $471f: $ea $47 $08
    adc a                                         ; $4722: $8f
    ld c, e                                       ; $4723: $4b
    dec l                                         ; $4724: $2d
    rla                                           ; $4725: $17
    sub c                                         ; $4726: $91
    ld [$2bd1], a                                 ; $4727: $ea $d1 $2b
    and e                                         ; $472a: $a3
    ld b, l                                       ; $472b: $45
    ld l, c                                       ; $472c: $69
    push hl                                       ; $472d: $e5
    ld de, $8a56                                  ; $472e: $11 $56 $8a
    db $fc                                        ; $4731: $fc
    dec hl                                        ; $4732: $2b
    ld a, [hl+]                                   ; $4733: $2a
    rst $10                                       ; $4734: $d7
    rst $38                                       ; $4735: $ff
    ld h, l                                       ; $4736: $65
    ld hl, $6002                                  ; $4737: $21 $02 $60
    adc [hl]                                      ; $473a: $8e
    db $ec                                        ; $473b: $ec
    dec [hl]                                      ; $473c: $35
    push bc                                       ; $473d: $c5
    adc e                                         ; $473e: $8b
    ld a, [de]                                    ; $473f: $1a
    or e                                          ; $4740: $b3
    call nc, $bfc8                                ; $4741: $d4 $c8 $bf
    jr c, jr_052_4764                             ; $4744: $38 $1e

    dec a                                         ; $4746: $3d
    ld a, d                                       ; $4747: $7a
    push de                                       ; $4748: $d5
    ld [hl-], a                                   ; $4749: $32
    xor c                                         ; $474a: $a9
    ld sp, $4d4b                                  ; $474b: $31 $4b $4d
    adc h                                         ; $474e: $8c
    ld e, d                                       ; $474f: $5a
    ld h, $c5                                     ; $4750: $26 $c5
    ld [hl], c                                    ; $4752: $71
    dec [hl]                                      ; $4753: $35
    ld c, a                                       ; $4754: $4f
    ld [hl], b                                    ; $4755: $70
    sbc h                                         ; $4756: $9c
    inc d                                         ; $4757: $14
    add l                                         ; $4758: $85
    ld [$31e7], sp                                ; $4759: $08 $e7 $31
    ld a, e                                       ; $475c: $7b
    db $f4                                        ; $475d: $f4
    ld l, b                                       ; $475e: $68
    db $fd                                        ; $475f: $fd
    ld a, a                                       ; $4760: $7f
    ld d, l                                       ; $4761: $55
    db $ed                                        ; $4762: $ed
    ret                                           ; $4763: $c9


jr_052_4764:
    ld h, a                                       ; $4764: $67
    cp c                                          ; $4765: $b9
    ld d, $7d                                     ; $4766: $16 $7d
    dec h                                         ; $4768: $25
    ld a, [hl]                                    ; $4769: $7e
    add sp, -$2f                                  ; $476a: $e8 $d1
    ld d, d                                       ; $476c: $52
    db $ec                                        ; $476d: $ec
    ld [hl], a                                    ; $476e: $77
    ld e, $53                                     ; $476f: $1e $53
    ld a, h                                       ; $4771: $7c
    rst $08                                       ; $4772: $cf
    and h                                         ; $4773: $a4
    or h                                          ; $4774: $b4
    sub c                                         ; $4775: $91
    and $69                                       ; $4776: $e6 $69
    push af                                       ; $4778: $f5
    ld a, [c]                                     ; $4779: $f2
    ld d, l                                       ; $477a: $55
    res 0, [hl]                                   ; $477b: $cb $86
    adc $13                                       ; $477d: $ce $13
    inc e                                         ; $477f: $1c
    xor a                                         ; $4780: $af
    add [hl]                                      ; $4781: $86
    ld [$eba0], sp                                ; $4782: $08 $a0 $eb
    ld [hl], e                                    ; $4785: $73
    add [hl]                                      ; $4786: $86
    dec [hl]                                      ; $4787: $35
    ld d, d                                       ; $4788: $52
    rst $38                                       ; $4789: $ff
    sub a                                         ; $478a: $97
    adc l                                         ; $478b: $8d
    pop de                                        ; $478c: $d1
    xor e                                         ; $478d: $ab
    add $9d                                       ; $478e: $c6 $9d
    ld a, d                                       ; $4790: $7a
    add h                                         ; $4791: $84
    sub l                                         ; $4792: $95
    ld [hl+], a                                   ; $4793: $22
    rst $38                                       ; $4794: $ff
    adc d                                         ; $4795: $8a
    sbc d                                         ; $4796: $9a
    inc e                                         ; $4797: $1c
    dec a                                         ; $4798: $3d
    ld h, [hl]                                    ; $4799: $66
    xor c                                         ; $479a: $a9
    ld e, l                                       ; $479b: $5d
    pop af                                        ; $479c: $f1
    sbc b                                         ; $479d: $98
    ld a, [hl]                                    ; $479e: $7e
    rst $38                                       ; $479f: $ff
    adc a                                         ; $47a0: $8f
    ld sp, hl                                     ; $47a1: $f9
    and c                                         ; $47a2: $a1
    rst $38                                       ; $47a3: $ff
    ld a, [de]                                    ; $47a4: $1a
    dec [hl]                                      ; $47a5: $35
    ld a, $cd                                     ; $47a6: $3e $cd
    adc b                                         ; $47a8: $88

Call_052_47a9:
    and c                                         ; $47a9: $a1
    jp Jump_000_11f9                              ; $47aa: $c3 $f9 $11


    cp l                                          ; $47ad: $bd
    or d                                          ; $47ae: $b2
    sub e                                         ; $47af: $93
    inc bc                                        ; $47b0: $03

jr_052_47b1:
    rst $00                                       ; $47b1: $c7
    pop hl                                        ; $47b2: $e1
    ld b, b                                       ; $47b3: $40
    add a                                         ; $47b4: $87
    call z, $ef86                                 ; $47b5: $cc $86 $ef
    rra                                           ; $47b8: $1f
    ld a, $ee                                     ; $47b9: $3e $ee
    call nc, $aae3                                ; $47bb: $d4 $e3 $aa
    rst $38                                       ; $47be: $ff
    ld d, l                                       ; $47bf: $55
    adc $1e                                       ; $47c0: $ce $1e
    ld bc, $afa0                                  ; $47c2: $01 $a0 $af
    adc h                                         ; $47c5: $8c
    sbc d                                         ; $47c6: $9a
    and [hl]                                      ; $47c7: $a6
    and [hl]                                      ; $47c8: $a6
    and a                                         ; $47c9: $a7
    ld c, [hl]                                    ; $47ca: $4e
    dec a                                         ; $47cb: $3d
    db $fd                                        ; $47cc: $fd
    add sp, $6f                                   ; $47cd: $e8 $6f
    ld b, e                                       ; $47cf: $43
    ld a, [c]                                     ; $47d0: $f2
    sub h                                         ; $47d1: $94
    or c                                          ; $47d2: $b1
    sub l                                         ; $47d3: $95
    dec a                                         ; $47d4: $3d
    ld b, [hl]                                    ; $47d5: $46
    ld e, b                                       ; $47d6: $58
    add hl, hl                                    ; $47d7: $29
    ld a, [c]                                     ; $47d8: $f2
    xor a                                         ; $47d9: $af
    jr z, jr_052_47b1                             ; $47da: $28 $d5

    inc l                                         ; $47dc: $2c
    cpl                                           ; $47dd: $2f
    adc b                                         ; $47de: $88
    nop                                           ; $47df: $00
    and b                                         ; $47e0: $a0
    ld c, e                                       ; $47e1: $4b
    sub [hl]                                      ; $47e2: $96
    and e                                         ; $47e3: $a3
    ld [hl], a                                    ; $47e4: $77
    push bc                                       ; $47e5: $c5
    ld h, e                                       ; $47e6: $63
    add [hl]                                      ; $47e7: $86
    di                                            ; $47e8: $f3
    ld a, [de]                                    ; $47e9: $1a
    ld h, c                                       ; $47ea: $61
    and l                                         ; $47eb: $a5
    ret z                                         ; $47ec: $c8

    cp a                                          ; $47ed: $bf
    and d                                         ; $47ee: $a2
    xor d                                         ; $47ef: $aa
    add a                                         ; $47f0: $87
    di                                            ; $47f1: $f3
    dec sp                                        ; $47f2: $3b
    jp hl                                         ; $47f3: $e9


    pop de                                        ; $47f4: $d1
    ld a, [hl-]                                   ; $47f5: $3a
    cpl                                           ; $47f6: $2f
    ld d, a                                       ; $47f7: $57
    ld d, h                                       ; $47f8: $54
    or l                                          ; $47f9: $b5
    inc d                                         ; $47fa: $14
    inc e                                         ; $47fb: $1c
    add $2e                                       ; $47fc: $c6 $2e
    inc e                                         ; $47fe: $1c
    scf                                           ; $47ff: $37
    dec l                                         ; $4800: $2d
    dec [hl]                                      ; $4801: $35
    xor $d4                                       ; $4802: $ee $d4
    ld a, [$bffd]                                 ; $4804: $fa $fd $bf
    ld a, d                                       ; $4807: $7a
    ld [hl], $28                                  ; $4808: $36 $28
    ld b, h                                       ; $480a: $44
    and b                                         ; $480b: $a0
    xor a                                         ; $480c: $af
    inc c                                         ; $480d: $0c
    cpl                                           ; $480e: $2f
    inc e                                         ; $480f: $1c
    xor a                                         ; $4810: $af
    ld sp, $3a4d                                  ; $4811: $31 $4d $3a
    ld e, l                                       ; $4814: $5d
    cp l                                          ; $4815: $bd
    ld a, [$66bf]                                 ; $4816: $fa $bf $66
    xor e                                         ; $4819: $ab
    ld [hl], a                                    ; $481a: $77
    and a                                         ; $481b: $a7
    ld b, a                                       ; $481c: $47
    adc d                                         ; $481d: $8a
    sub h                                         ; $481e: $94
    adc h                                         ; $481f: $8c
    dec sp                                        ; $4820: $3b
    push af                                       ; $4821: $f5
    jp z, $b67d                                   ; $4822: $ca $7d $b6

    ld l, e                                       ; $4825: $6b
    ld d, a                                       ; $4826: $57
    add [hl]                                      ; $4827: $86
    add a                                         ; $4828: $87
    xor b                                         ; $4829: $a8
    ld [$fdf9], a                                 ; $482a: $ea $f9 $fd
    ld a, a                                       ; $482d: $7f
    ld l, c                                       ; $482e: $69
    inc de                                        ; $482f: $13
    ld c, $11                                     ; $4830: $0e $11
    adc a                                         ; $4832: $8f
    ld c, e                                       ; $4833: $4b
    dec l                                         ; $4834: $2d
    rla                                           ; $4835: $17
    sub c                                         ; $4836: $91
    ld [$d1e9], a                                 ; $4837: $ea $e9 $d1
    db $e4                                        ; $483a: $e4
    ld e, a                                       ; $483b: $5f
    dec d                                         ; $483c: $15
    ld [hl-], a                                   ; $483d: $32
    ld h, l                                       ; $483e: $65
    ld a, $d7                                     ; $483f: $3e $d7
    adc c                                         ; $4841: $89
    ld e, b                                       ; $4842: $58
    db $d3                                        ; $4843: $d3
    ld d, d                                       ; $4844: $52
    and e                                         ; $4845: $a3
    ld h, c                                       ; $4846: $61
    ld b, a                                       ; $4847: $47
    xor a                                         ; $4848: $af
    inc c                                         ; $4849: $0c
    cpl                                           ; $484a: $2f
    inc e                                         ; $484b: $1c
    cpl                                           ; $484c: $2f
    cp b                                          ; $484d: $b8
    add a                                         ; $484e: $87
    sub d                                         ; $484f: $92
    push hl                                       ; $4850: $e5
    rst $08                                       ; $4851: $cf
    rst $30                                       ; $4852: $f7
    db $e4                                        ; $4853: $e4
    ret z                                         ; $4854: $c8

    ld e, [hl]                                    ; $4855: $5e
    or d                                          ; $4856: $b2
    ld a, [$afdf]                                 ; $4857: $fa $df $af
    ld e, l                                       ; $485a: $5d
    ret z                                         ; $485b: $c8

    jp nc, $edb7                                  ; $485c: $d2 $b7 $ed

    adc l                                         ; $485f: $8d
    pop hl                                        ; $4860: $e1
    db $fc                                        ; $4861: $fc

jr_052_4862:
    db $f4                                        ; $4862: $f4
    ld l, d                                       ; $4863: $6a
    ld h, [hl]                                    ; $4864: $66
    ld c, h                                       ; $4865: $4c
    db $e3                                        ; $4866: $e3
    ccf                                           ; $4867: $3f
    ld b, h                                       ; $4868: $44
    adc a                                         ; $4869: $8f
    ld c, e                                       ; $486a: $4b
    dec l                                         ; $486b: $2d
    ld de, $d5db                                  ; $486c: $11 $db $d5
    inc sp                                        ; $486f: $33
    ld [hl], h                                    ; $4870: $74
    or h                                          ; $4871: $b4
    di                                            ; $4872: $f3
    ret nz                                        ; $4873: $c0

    sbc b                                         ; $4874: $98
    xor $9b                                       ; $4875: $ee $9b
    sub a                                         ; $4877: $97
    ld c, c                                       ; $4878: $49
    ld a, [c]                                     ; $4879: $f2
    ld a, a                                       ; $487a: $7f
    ld c, h                                       ; $487b: $4c
    cp a                                          ; $487c: $bf
    ld [hl+], a                                   ; $487d: $22
    or l                                          ; $487e: $b5
    sub b                                         ; $487f: $90
    push af                                       ; $4880: $f5
    pop hl                                        ; $4881: $e1
    xor [hl]                                      ; $4882: $ae
    rst $18                                       ; $4883: $df
    inc a                                         ; $4884: $3c
    ld d, d                                       ; $4885: $52
    inc d                                         ; $4886: $14
    rra                                           ; $4887: $1f
    dec [hl]                                      ; $4888: $35
    cp [hl]                                       ; $4889: $be
    sub b                                         ; $488a: $90
    ld de, $8a56                                  ; $488b: $11 $56 $8a
    db $fc                                        ; $488e: $fc
    dec hl                                        ; $488f: $2b
    ld [$0211], a                                 ; $4890: $ea $11 $02
    rst $20                                       ; $4893: $e7
    ld d, a                                       ; $4894: $57
    ld b, [hl]                                    ; $4895: $46
    inc c                                         ; $4896: $0c
    push bc                                       ; $4897: $c5
    ld l, a                                       ; $4898: $6f
    sbc $43                                       ; $4899: $de $43
    inc [hl]                                      ; $489b: $34
    cp l                                          ; $489c: $bd
    ld b, [hl]                                    ; $489d: $46
    ld h, d                                       ; $489e: $62
    ld b, a                                       ; $489f: $47
    rst $28                                       ; $48a0: $ef
    ld e, a                                       ; $48a1: $5f
    adc a                                         ; $48a2: $8f
    ld l, c                                       ; $48a3: $69
    daa                                           ; $48a4: $27
    ret                                           ; $48a5: $c9


    ld d, a                                       ; $48a6: $57
    xor l                                         ; $48a7: $ad
    db $f4                                        ; $48a8: $f4
    push hl                                       ; $48a9: $e5
    xor e                                         ; $48aa: $ab
    jr nz, jr_052_48af                            ; $48ab: $20 $02

    rst $20                                       ; $48ad: $e7
    pop hl                                        ; $48ae: $e1

jr_052_48af:
    inc hl                                        ; $48af: $23
    add a                                         ; $48b0: $87
    ld c, b                                       ; $48b1: $48
    sbc [hl]                                      ; $48b2: $9e
    ld e, $4d                                     ; $48b3: $1e $4d
    cp $55                                        ; $48b5: $fe $55
    ld hl, $86cb                                  ; $48b7: $21 $cb $86
    xor [hl]                                      ; $48ba: $ae
    call c, Call_000_2cc7                         ; $48bb: $dc $c7 $2c
    dec [hl]                                      ; $48be: $35
    xor l                                         ; $48bf: $ad
    ld a, d                                       ; $48c0: $7a
    call nz, Call_052_7a50                        ; $48c1: $c4 $50 $7a
    ld a, l                                       ; $48c4: $7d
    ld c, c                                       ; $48c5: $49
    adc a                                         ; $48c6: $8f
    ld e, [hl]                                    ; $48c7: $5e
    rst $30                                       ; $48c8: $f7
    ld h, l                                       ; $48c9: $65
    ld d, d                                       ; $48ca: $52
    ld a, a                                       ; $48cb: $7f
    add hl, sp                                    ; $48cc: $39
    ld h, h                                       ; $48cd: $64
    call z, $2352                                 ; $48ce: $cc $52 $23
    add [hl]                                      ; $48d1: $86
    adc $ef                                       ; $48d2: $ce $ef
    rst $38                                       ; $48d4: $ff
    ld a, e                                       ; $48d5: $7b
    jr nc, jr_052_4862                            ; $48d6: $30 $8a

    ld d, c                                       ; $48d8: $51
    or l                                          ; $48d9: $b5
    ld h, a                                       ; $48da: $67
    adc b                                         ; $48db: $88
    nop                                           ; $48dc: $00
    rrca                                          ; $48dd: $0f
    push af                                       ; $48de: $f5
    ccf                                           ; $48df: $3f
    ld a, a                                       ; $48e0: $7f
    ld [hl], $3d                                  ; $48e1: $36 $3d
    add sp, -$72                                  ; $48e3: $e8 $8e
    sbc [hl]                                      ; $48e5: $9e
    dec c                                         ; $48e6: $0d
    ld e, a                                       ; $48e7: $5f
    ld [hl], $74                                  ; $48e8: $36 $74
    jp c, Jump_000_2291                           ; $48ea: $da $91 $22

    push de                                       ; $48ed: $d5
    jp $d1f9                                      ; $48ee: $c3 $f9 $d1


    dec hl                                        ; $48f1: $2b
    dec [hl]                                      ; $48f2: $35
    ld [hl], d                                    ; $48f3: $72
    db $dd                                        ; $48f4: $dd
    db $e3                                        ; $48f5: $e3
    sub e                                         ; $48f6: $93
    ld [hl+], a                                   ; $48f7: $22
    and [hl]                                      ; $48f8: $a6
    rra                                           ; $48f9: $1f
    ld hl, $e1e7                                  ; $48fa: $21 $e7 $e1
    inc hl                                        ; $48fd: $23
    add a                                         ; $48fe: $87
    ld c, b                                       ; $48ff: $48
    ld e, [hl]                                    ; $4900: $5e
    ld [hl], $74                                  ; $4901: $36 $74
    push hl                                       ; $4903: $e5
    ld a, $66                                     ; $4904: $3e $66
    xor c                                         ; $4906: $a9
    push de                                       ; $4907: $d5
    rst $38                                       ; $4908: $ff
    ld a, [hl]                                    ; $4909: $7e
    db $ed                                        ; $490a: $ed
    jr z, @-$5f                                   ; $490b: $28 $9f

    dec a                                         ; $490d: $3d
    and [hl]                                      ; $490e: $a6
    ld hl, sp+$65                                 ; $490f: $f8 $65
    ld b, e                                       ; $4911: $43
    add a                                         ; $4912: $87
    di                                            ; $4913: $f3
    dec sp                                        ; $4914: $3b
    sub h                                         ; $4915: $94
    jp z, $fea4                                   ; $4916: $ca $a4 $fe

    ld [de], a                                    ; $4919: $12
    or c                                          ; $491a: $b1
    pop de                                        ; $491b: $d1
    ld a, e                                       ; $491c: $7b
    ld [hl+], a                                   ; $491d: $22
    add l                                         ; $491e: $85
    ld b, a                                       ; $491f: $47
    sbc $0f                                       ; $4920: $de $0f
    ld [c], a                                     ; $4922: $e2
    rst $10                                       ; $4923: $d7
    ld c, b                                       ; $4924: $48
    inc [hl]                                      ; $4925: $34
    ld b, h                                       ; $4926: $44
    adc a                                         ; $4927: $8f
    ld c, e                                       ; $4928: $4b
    db $ed                                        ; $4929: $ed
    add sp, $65                                   ; $492a: $e8 $65
    ld a, [hl]                                    ; $492c: $7e
    sbc $27                                       ; $492d: $de $27
    rst $30                                       ; $492f: $f7
    sub l                                         ; $4930: $95
    ei                                            ; $4931: $fb
    sbc b                                         ; $4932: $98
    and l                                         ; $4933: $a5
    and [hl]                                      ; $4934: $a6
    push bc                                       ; $4935: $c5
    rst $08                                       ; $4936: $cf
    cp [hl]                                       ; $4937: $be
    ld [hl], h                                    ; $4938: $74
    ld [hl], l                                    ; $4939: $75
    dec l                                         ; $493a: $2d
    sub e                                         ; $493b: $93
    db $e4                                        ; $493c: $e4
    rst $38                                       ; $493d: $ff
    sbc b                                         ; $493e: $98
    ld a, [hl]                                    ; $493f: $7e
    ccf                                           ; $4940: $3f
    or e                                          ; $4941: $b3
    sub [hl]                                      ; $4942: $96
    sbc c                                         ; $4943: $99
    adc c                                         ; $4944: $89
    sub b                                         ; $4945: $90
    sbc d                                         ; $4946: $9a
    ld b, h                                       ; $4947: $44
    rrca                                          ; $4948: $0f
    rst $20                                       ; $4949: $e7
    rla                                           ; $494a: $17
    ld [hl-], a                                   ; $494b: $32
    jp z, $c84c                                   ; $494c: $ca $4c $c8

    ld l, h                                       ; $494f: $6c
    ld [hl+], a                                   ; $4950: $22
    inc h                                         ; $4951: $24
    or c                                          ; $4952: $b1
    ld [hl], $20                                  ; $4953: $36 $20
    ld [bc], a                                    ; $4955: $02
    jr nz, jr_052_49b1                            ; $4956: $20 $59

    add hl, hl                                    ; $4958: $29
    ld a, [c]                                     ; $4959: $f2
    xor a                                         ; $495a: $af
    xor b                                         ; $495b: $a8
    ld a, h                                       ; $495c: $7c
    dec a                                         ; $495d: $3d
    add hl, hl                                    ; $495e: $29
    cp a                                          ; $495f: $bf
    ld b, [hl]                                    ; $4960: $46
    ld b, d                                       ; $4961: $42
    ld h, [hl]                                    ; $4962: $66
    adc a                                         ; $4963: $8f
    ld e, [hl]                                    ; $4964: $5e
    ld [c], a                                     ; $4965: $e2
    ld sp, $7aad                                  ; $4966: $31 $ad $7a
    jp hl                                         ; $4969: $e9


    ld a, a                                       ; $496a: $7f
    push af                                       ; $496b: $f5
    db $eb                                        ; $496c: $eb
    xor e                                         ; $496d: $ab
    rst $38                                       ; $496e: $ff
    push af                                       ; $496f: $f5
    ld [$157f], a                                 ; $4970: $ea $7f $15
    ld b, h                                       ; $4973: $44
    and b                                         ; $4974: $a0
    jp nz, $90e6                                  ; $4975: $c2 $e6 $90

    or e                                          ; $4978: $b3
    ld sp, $8d4b                                  ; $4979: $31 $4b $8d
    inc e                                         ; $497c: $1c
    ld [hl+], a                                   ; $497d: $22
    pop de                                        ; $497e: $d1
    cp e                                          ; $497f: $bb
    ld [c], a                                     ; $4980: $e2
    ld sp, $d4ee                                  ; $4981: $31 $ee $d4
    dec hl                                        ; $4984: $2b
    rst $30                                       ; $4985: $f7
    pop hl                                        ; $4986: $e1
    ld e, l                                       ; $4987: $5d
    ld e, [hl]                                    ; $4988: $5e
    ld [hl], b                                    ; $4989: $70
    rst $20                                       ; $498a: $e7
    pop hl                                        ; $498b: $e1
    inc hl                                        ; $498c: $23
    add a                                         ; $498d: $87
    ld c, b                                       ; $498e: $48
    ld e, [hl]                                    ; $498f: $5e
    ld [hl], $74                                  ; $4990: $36 $74
    add [hl]                                      ; $4992: $86
    ld c, [hl]                                    ; $4993: $4e
    adc e                                         ; $4994: $8b
    ld e, a                                       ; $4995: $5f
    db $d3                                        ; $4996: $d3
    ld [de], a                                    ; $4997: $12
    dec a                                         ; $4998: $3d
    ld a, h                                       ; $4999: $7c

Jump_052_499a:
    ld b, a                                       ; $499a: $47
    adc a                                         ; $499b: $8f
    ld c, e                                       ; $499c: $4b
    cp $f7                                        ; $499d: $fe $f7
    sub l                                         ; $499f: $95
    ld a, $9b                                     ; $49a0: $3e $9b
    ld [$6044], sp                                ; $49a2: $08 $44 $60
    jp hl                                         ; $49a5: $e9


    ld l, h                                       ; $49a6: $6c
    ld [hl-], a                                   ; $49a7: $32
    xor [hl]                                      ; $49a8: $ae
    ld a, c                                       ; $49a9: $79
    ld d, l                                       ; $49aa: $55
    dec a                                         ; $49ab: $3d
    ld a, d                                       ; $49ac: $7a
    push de                                       ; $49ad: $d5
    reti                                          ; $49ae: $d9


    ld [hl-], a                                   ; $49af: $32
    ccf                                           ; $49b0: $3f

jr_052_49b1:
    ld l, a                                       ; $49b1: $6f
    db $d3                                        ; $49b2: $d3
    ld h, e                                       ; $49b3: $63
    sub [hl]                                      ; $49b4: $96
    ld e, d                                       ; $49b5: $5a
    cp c                                          ; $49b6: $b9
    rst $28                                       ; $49b7: $ef
    adc c                                         ; $49b8: $89
    inc d                                         ; $49b9: $14
    ld e, $4b                                     ; $49ba: $1e $4b
    ld d, a                                       ; $49bc: $57
    rst $10                                       ; $49bd: $d7
    cp b                                          ; $49be: $b8
    ld d, e                                       ; $49bf: $53
    rst $20                                       ; $49c0: $e7
    inc de                                        ; $49c1: $13
    adc c                                         ; $49c2: $89
    ld e, [hl]                                    ; $49c3: $5e
    adc [hl]                                      ; $49c4: $8e
    ld sp, hl                                     ; $49c5: $f9
    db $fd                                        ; $49c6: $fd
    ld a, a                                       ; $49c7: $7f
    ld sp, hl                                     ; $49c8: $f9
    cp d                                          ; $49c9: $ba
    cpl                                           ; $49ca: $2f
    ld d, h                                       ; $49cb: $54
    ld hl, sp-$2e                                 ; $49cc: $f8 $d2
    ld b, $22                                     ; $49ce: $06 $22
    adc a                                         ; $49d0: $8f
    ld c, e                                       ; $49d1: $4b
    call $210f                                    ; $49d2: $cd $0f $21
    pop de                                        ; $49d5: $d1
    ld d, e                                       ; $49d6: $53
    db $fc                                        ; $49d7: $fc
    inc h                                         ; $49d8: $24
    ld a, d                                       ; $49d9: $7a
    ld [hl], a                                    ; $49da: $77
    sbc $87                                       ; $49db: $de $87
    ld d, l                                       ; $49dd: $55
    ld a, h                                       ; $49de: $7c
    db $db                                        ; $49df: $db
    sub b                                         ; $49e0: $90
    sbc c                                         ; $49e1: $99
    sub h                                         ; $49e2: $94
    ld [hl], $bc                                  ; $49e3: $36 $bc
    adc l                                         ; $49e5: $8d
    ld e, [hl]                                    ; $49e6: $5e
    and e                                         ; $49e7: $a3
    ld d, a                                       ; $49e8: $57
    ld l, d                                       ; $49e9: $6a
    jp nz, $91aa                                  ; $49ea: $c2 $aa $91

    sbc a                                         ; $49ed: $9f
    and h                                         ; $49ee: $a4
    db $d3                                        ; $49ef: $d3
    and [hl]                                      ; $49f0: $a6
    ld hl, $8f02                                  ; $49f1: $21 $02 $8f
    ld c, e                                       ; $49f4: $4b
    ld c, l                                       ; $49f5: $4d
    xor e                                         ; $49f6: $ab
    sbc $15                                       ; $49f7: $de $15
    adc a                                         ; $49f9: $8f
    db $fd                                        ; $49fa: $fd
    inc hl                                        ; $49fb: $23
    ei                                            ; $49fc: $fb
    ld [hl], b                                    ; $49fd: $70
    ld a, [hl]                                    ; $49fe: $7e
    ld a, [hl]                                    ; $49ff: $7e
    rst $38                                       ; $4a00: $ff
    rst $28                                       ; $4a01: $ef
    inc hl                                        ; $4a02: $23
    ld b, l                                       ; $4a03: $45
    cp $55                                        ; $4a04: $fe $55
    cp [hl]                                       ; $4a06: $be
    dec hl                                        ; $4a07: $2b
    call c, $87a9                                 ; $4a08: $dc $a9 $87
    or a                                          ; $4a0b: $b7
    pop de                                        ; $4a0c: $d1
    jp $c0e1                                      ; $4a0d: $c3 $e1 $c0


    inc h                                         ; $4a10: $24
    db $e3                                        ; $4a11: $e3
    ld a, $4b                                     ; $4a12: $3e $4b
    ld b, l                                       ; $4a14: $45
    ld c, a                                       ; $4a15: $4f
    adc h                                         ; $4a16: $8c
    ld a, [de]                                    ; $4a17: $1a
    cp l                                          ; $4a18: $bd
    ld d, d                                       ; $4a19: $52
    ld c, e                                       ; $4a1a: $4b
    ld [hl], a                                    ; $4a1b: $77
    dec l                                         ; $4a1c: $2d
    dec e                                         ; $4a1d: $1d
    adc $52                                       ; $4a1e: $ce $52
    bit 2, a                                      ; $4a20: $cb $57
    ld b, [hl]                                    ; $4a22: $46
    ld c, h                                       ; $4a23: $4c
    add [hl]                                      ; $4a24: $86
    ld [$4b8f], sp                                ; $4a25: $08 $8f $4b
    ld c, l                                       ; $4a28: $4d
    dec sp                                        ; $4a29: $3b
    or l                                          ; $4a2a: $b5
    adc l                                         ; $4a2b: $8d
    sub l                                         ; $4a2c: $95
    ei                                            ; $4a2d: $fb
    ret nz                                        ; $4a2e: $c0

    daa                                           ; $4a2f: $27
    or a                                          ; $4a30: $b7
    dec sp                                        ; $4a31: $3b
    cp $5f                                        ; $4a32: $fe $5f
    rst $18                                       ; $4a34: $df
    ld c, h                                       ; $4a35: $4c
    and d                                         ; $4a36: $a2
    xor e                                         ; $4a37: $ab
    ld d, a                                       ; $4a38: $57
    xor $4b                                       ; $4a39: $ee $4b
    rst $38                                       ; $4a3b: $ff
    dec sp                                        ; $4a3c: $3b
    xor c                                         ; $4a3d: $a9
    inc d                                         ; $4a3e: $14
    add hl, hl                                    ; $4a3f: $29
    dec sp                                        ; $4a40: $3b
    ld b, e                                       ; $4a41: $43
    and a                                         ; $4a42: $a7
    sub l                                         ; $4a43: $95
    db $e4                                        ; $4a44: $e4
    db $fd                                        ; $4a45: $fd
    jr nz, jr_052_4ac6                            ; $4a46: $20 $7e

    adc l                                         ; $4a48: $8d
    ld b, h                                       ; $4a49: $44
    rst $28                                       ; $4a4a: $ef
    adc d                                         ; $4a4b: $8a
    rst $00                                       ; $4a4c: $c7
    jp nc, $f6ff                                  ; $4a4d: $d2 $ff $f6

    jp nc, Jump_052_7b87                          ; $4a50: $d2 $87 $7b

    rlca                                          ; $4a53: $07
    ld b, h                                       ; $4a54: $44
    ldh [$da], a                                  ; $4a55: $e0 $da
    ld [hl], b                                    ; $4a57: $70
    sub c                                         ; $4a58: $91
    or e                                          ; $4a59: $b3
    jp hl                                         ; $4a5a: $e9


    add c                                         ; $4a5b: $81
    ld c, [hl]                                    ; $4a5c: $4e
    ld bc, $5237                                  ; $4a5d: $01 $37 $52
    xor d                                         ; $4a60: $aa
    cp $df                                        ; $4a61: $fe $df
    pop de                                        ; $4a63: $d1
    res 0, [hl]                                   ; $4a64: $cb $86
    ld l, $64                                     ; $4a66: $2e $64
    add h                                         ; $4a68: $84
    sub l                                         ; $4a69: $95
    ld [hl+], a                                   ; $4a6a: $22
    rst $38                                       ; $4a6b: $ff
    adc d                                         ; $4a6c: $8a
    and d                                         ; $4a6d: $a2
    ld b, l                                       ; $4a6e: $45
    ld l, c                                       ; $4a6f: $69
    adc l                                         ; $4a70: $8d
    dec sp                                        ; $4a71: $3b
    push af                                       ; $4a72: $f5
    ld [$1aff], a                                 ; $4a73: $ea $ff $1a
    ldh a, [$66]                                  ; $4a76: $f0 $66
    ld [hl], c                                    ; $4a78: $71
    call c, $6b15                                 ; $4a79: $dc $15 $6b
    ld a, [hl-]                                   ; $4a7c: $3a
    ld a, [hl]                                    ; $4a7d: $7e
    add sp, -$2f                                  ; $4a7e: $e8 $d1
    db $10                                        ; $4a80: $10
    ld bc, $5920                                  ; $4a81: $01 $20 $59
    add hl, hl                                    ; $4a84: $29
    ld a, [c]                                     ; $4a85: $f2
    xor a                                         ; $4a86: $af
    xor b                                         ; $4a87: $a8
    ld l, h                                       ; $4a88: $6c
    ld [hl], b                                    ; $4a89: $70
    cp h                                          ; $4a8a: $bc
    ld h, h                                       ; $4a8b: $64
    reti                                          ; $4a8c: $d9


    ret nc                                        ; $4a8d: $d0

    jp hl                                         ; $4a8e: $e9


    ld [hl], a                                    ; $4a8f: $77
    call c, $914d                                 ; $4a90: $dc $4d $91
    ld sp, hl                                     ; $4a93: $f9
    db $fd                                        ; $4a94: $fd
    ld a, a                                       ; $4a95: $7f
    ccf                                           ; $4a96: $3f
    sub c                                         ; $4a97: $91
    sub h                                         ; $4a98: $94
    ld [hl], $bd                                  ; $4a99: $36 $bd
    ld a, d                                       ; $4a9b: $7a
    call z, Call_000_3dc3                         ; $4a9c: $cc $c3 $3d
    sub h                                         ; $4a9f: $94
    or c                                          ; $4aa0: $b1
    db $ec                                        ; $4aa1: $ec
    ld de, $4b8f                                  ; $4aa2: $11 $8f $4b

jr_052_4aa5:
    dec l                                         ; $4aa5: $2d
    ld a, l                                       ; $4aa6: $7d
    ld l, d                                       ; $4aa7: $6a
    ld h, [hl]                                    ; $4aa8: $66
    push af                                       ; $4aa9: $f5
    db $f4                                        ; $4aaa: $f4
    ld l, b                                       ; $4aab: $68
    ld a, [c]                                     ; $4aac: $f2
    xor a                                         ; $4aad: $af
    ld a, [bc]                                    ; $4aae: $0a
    sbc c                                         ; $4aaf: $99
    or e                                          ; $4ab0: $b3
    ld d, d                                       ; $4ab1: $52
    and h                                         ; $4ab2: $a4
    ld h, [hl]                                    ; $4ab3: $66
    add sp, -$36                                  ; $4ab4: $e8 $ca
    ld a, l                                       ; $4ab6: $7d
    sbc c                                         ; $4ab7: $99
    db $f4                                        ; $4ab8: $f4
    push de                                       ; $4ab9: $d5
    ld l, e                                       ; $4aba: $6b
    inc [hl]                                      ; $4abb: $34
    db $ec                                        ; $4abc: $ec
    jr c, jr_052_4aa5                             ; $4abd: $38 $e6

    ld h, c                                       ; $4abf: $61
    and e                                         ; $4ac0: $a3
    pop af                                        ; $4ac1: $f1
    db $10                                        ; $4ac2: $10
    add hl, hl                                    ; $4ac3: $29
    adc b                                         ; $4ac4: $88
    nop                                           ; $4ac5: $00

jr_052_4ac6:
    add b                                         ; $4ac6: $80
    cp e                                          ; $4ac7: $bb
    adc $f6                                       ; $4ac8: $ce $f6
    ld d, b                                       ; $4aca: $50
    db $dd                                        ; $4acb: $dd
    inc l                                         ; $4acc: $2c
    or $08                                        ; $4acd: $f6 $08
    adc a                                         ; $4acf: $8f
    ld c, e                                       ; $4ad0: $4b
    adc l                                         ; $4ad1: $8d
    sub h                                         ; $4ad2: $94
    adc h                                         ; $4ad3: $8c
    ld c, b                                       ; $4ad4: $48
    pop hl                                        ; $4ad5: $e1
    cp b                                          ; $4ad6: $b8
    ld c, a                                       ; $4ad7: $4f
    ccf                                           ; $4ad8: $3f
    call nz, Call_052_7e6b                        ; $4ad9: $c4 $6b $7e
    rst $38                                       ; $4adc: $ff
    rst $08                                       ; $4add: $cf
    set 0, h                                      ; $4ade: $cb $c4
    db $fc                                        ; $4ae0: $fc
    sub d                                         ; $4ae1: $92
    and l                                         ; $4ae2: $a5
    ld c, a                                       ; $4ae3: $4f
    call Call_052_66ac                            ; $4ae4: $cd $ac $66
    cp a                                          ; $4ae7: $bf
    add a                                         ; $4ae8: $87
    ld hl, sp+$35                                 ; $4ae9: $f8 $35
    xor [hl]                                      ; $4aeb: $ae
    add sp, -$03                                  ; $4aec: $e8 $fd
    call z, $6190                                 ; $4aee: $cc $90 $61
    adc [hl]                                      ; $4af1: $8e
    jp z, Jump_052_583f                           ; $4af2: $ca $3f $58

    db $d3                                        ; $4af5: $d3
    xor d                                         ; $4af6: $aa
    and a                                         ; $4af7: $a7
    ld a, b                                       ; $4af8: $78
    rst $30                                       ; $4af9: $f7
    pop hl                                        ; $4afa: $e1
    db $fc                                        ; $4afb: $fc
    ld e, $8c                                     ; $4afc: $1e $8c
    ld h, d                                       ; $4afe: $62
    ld d, h                                       ; $4aff: $54
    db $ed                                        ; $4b00: $ed
    add hl, de                                    ; $4b01: $19
    ld [hl+], a                                   ; $4b02: $22
    jr jr_052_4b12                                ; $4b03: $18 $0d

    adc [hl]                                      ; $4b05: $8e
    add a                                         ; $4b06: $87
    or b                                          ; $4b07: $b0
    rst $18                                       ; $4b08: $df
    db $e3                                        ; $4b09: $e3
    ld d, d                                       ; $4b0a: $52
    db $d3                                        ; $4b0b: $d3
    inc c                                         ; $4b0c: $0c
    adc [hl]                                      ; $4b0d: $8e
    ld d, a                                       ; $4b0e: $57

jr_052_4b0f:
    ld e, [hl]                                    ; $4b0f: $5e
    cp c                                          ; $4b10: $b9
    adc a                                         ; $4b11: $8f

jr_052_4b12:
    ld e, c                                       ; $4b12: $59
    ld l, d                                       ; $4b13: $6a
    ld h, $45                                     ; $4b14: $26 $45
    ld [hl-], a                                   ; $4b16: $32
    ccf                                           ; $4b17: $3f
    xor l                                         ; $4b18: $ad
    xor b                                         ; $4b19: $a8
    ld d, h                                       ; $4b1a: $54
    rst $28                                       ; $4b1b: $ef
    ld c, $78                                     ; $4b1c: $0e $78
    or e                                          ; $4b1e: $b3
    jr c, jr_052_4b0f                             ; $4b1f: $38 $ee

    adc d                                         ; $4b21: $8a
    dec [hl]                                      ; $4b22: $35
    call $011e                                    ; $4b23: $cd $1e $01
    ld c, a                                       ; $4b26: $4f
    ld l, a                                       ; $4b27: $6f
    adc $35                                       ; $4b28: $ce $35
    push de                                       ; $4b2a: $d5
    rla                                           ; $4b2b: $17
    xor a                                         ; $4b2c: $af
    sbc [hl]                                      ; $4b2d: $9e
    ld d, [hl]                                    ; $4b2e: $56
    cp l                                          ; $4b2f: $bd
    inc [hl]                                      ; $4b30: $34
    ld l, a                                       ; $4b31: $6f
    ld h, e                                       ; $4b32: $63
    db $e4                                        ; $4b33: $e4
    ldh [$bc], a                                  ; $4b34: $e0 $bc
    ld a, d                                       ; $4b36: $7a
    ld h, $a5                                     ; $4b37: $26 $a5
    ld c, l                                       ; $4b39: $4d
    adc [hl]                                      ; $4b3a: $8e
    ld [hl], h                                    ; $4b3b: $74
    cp d                                          ; $4b3c: $ba
    ld a, [de]                                    ; $4b3d: $1a
    ld [hl+], a                                   ; $4b3e: $22
    jr nz, jr_052_4b9a                            ; $4b3f: $20 $59

    add hl, hl                                    ; $4b41: $29
    ld a, [c]                                     ; $4b42: $f2
    xor a                                         ; $4b43: $af
    xor b                                         ; $4b44: $a8
    ld [$9291], a                                 ; $4b45: $ea $91 $92
    ld c, h                                       ; $4b48: $4c
    ld h, d                                       ; $4b49: $62
    ld d, a                                       ; $4b4a: $57
    inc a                                         ; $4b4b: $3c
    and [hl]                                      ; $4b4c: $a6
    ld d, l                                       ; $4b4d: $55
    rst $28                                       ; $4b4e: $ef
    rra                                           ; $4b4f: $1f
    jr c, jr_052_4bb0                             ; $4b50: $38 $5e

Call_052_4b52:
    ld a, l                                       ; $4b52: $7d
    ld [hl], $1a                                  ; $4b53: $36 $1a
    ld [hl-], a                                   ; $4b55: $32
    db $fd                                        ; $4b56: $fd
    and $5c                                       ; $4b57: $e6 $5c
    ld d, e                                       ; $4b59: $53
    ld a, l                                       ; $4b5a: $7d
    pop af                                        ; $4b5b: $f1
    ld [$d569], a                                 ; $4b5c: $ea $69 $d5
    di                                            ; $4b5f: $f3
    ld b, e                                       ; $4b60: $43
    ld l, h                                       ; $4b61: $6c
    inc [hl]                                      ; $4b62: $34
    ld b, h                                       ; $4b63: $44
    adc a                                         ; $4b64: $8f
    ld c, e                                       ; $4b65: $4b
    db $ed                                        ; $4b66: $ed
    add sp, $65                                   ; $4b67: $e8 $65
    ld a, [hl]                                    ; $4b69: $7e

jr_052_4b6a:
    ld [$5d97], a                                 ; $4b6a: $ea $97 $5d
    cp c                                          ; $4b6d: $b9
    adc a                                         ; $4b6e: $8f
    ld e, c                                       ; $4b6f: $59
    ld l, d                                       ; $4b70: $6a
    ld b, a                                       ; $4b71: $47
    ld c, a                                       ; $4b72: $4f
    dec sp                                        ; $4b73: $3b
    sbc d                                         ; $4b74: $9a
    db $fd                                        ; $4b75: $fd
    ld e, $97                                     ; $4b76: $1e $97
    ld a, [de]                                    ; $4b78: $1a
    ld sp, $4694                                  ; $4b79: $31 $94 $46
    xor a                                         ; $4b7c: $af
    call c, $8ff7                                 ; $4b7d: $dc $f7 $8f
    xor [hl]                                      ; $4b80: $ae
    pop de                                        ; $4b81: $d1
    xor e                                         ; $4b82: $ab
    sub [hl]                                      ; $4b83: $96
    ld sp, hl                                     ; $4b84: $f9
    ld d, c                                       ; $4b85: $51
    ld d, [hl]                                    ; $4b86: $56
    adc d                                         ; $4b87: $8a
    add h                                         ; $4b88: $84
    rst $08                                       ; $4b89: $cf
    and h                                         ; $4b8a: $a4
    or h                                          ; $4b8b: $b4
    jp hl                                         ; $4b8c: $e9


    push de                                       ; $4b8d: $d5
    or l                                          ; $4b8e: $b5
    call z, $26cf                                 ; $4b8f: $cc $cf $26
    call nz, $62af                                ; $4b92: $c4 $af $62
    adc a                                         ; $4b95: $8f
    nop                                           ; $4b96: $00
    ld c, a                                       ; $4b97: $4f
    xor e                                         ; $4b98: $ab
    cp c                                          ; $4b99: $b9

jr_052_4b9a:
    ld d, e                                       ; $4b9a: $53
    adc a                                         ; $4b9b: $8f
    ld a, [c]                                     ; $4b9c: $f2
    reti                                          ; $4b9d: $d9


    ld h, e                                       ; $4b9e: $63
    call nc, Call_000_32b4                        ; $4b9f: $d4 $b4 $32
    ld [de], a                                    ; $4ba2: $12
    or d                                          ; $4ba3: $b2
    db $f4                                        ; $4ba4: $f4
    xor c                                         ; $4ba5: $a9
    sbc c                                         ; $4ba6: $99
    or l                                          ; $4ba7: $b5
    call z, $afcf                                 ; $4ba8: $cc $cf $af
    cp l                                          ; $4bab: $bd
    jp z, Jump_000_211f                           ; $4bac: $ca $1f $21

    adc a                                         ; $4baf: $8f

jr_052_4bb0:
    ld c, e                                       ; $4bb0: $4b
    adc l                                         ; $4bb1: $8d
    jr @+$4c                                      ; $4bb2: $18 $4a

    and e                                         ; $4bb4: $a3
    ld d, a                                       ; $4bb5: $57
    xor $fb                                       ; $4bb6: $ee $fb
    add a                                         ; $4bb8: $87
    jr z, jr_052_4b6a                             ; $4bb9: $28 $af

    ld sp, hl                                     ; $4bbb: $f9
    db $fd                                        ; $4bbc: $fd
    ld a, a                                       ; $4bbd: $7f
    db $f4                                        ; $4bbe: $f4
    jp z, Jump_052_53b8                           ; $4bbf: $ca $b8 $53

    ld h, a                                       ; $4bc2: $67
    xor a                                         ; $4bc3: $af
    db $fd                                        ; $4bc4: $fd
    jr nz, jr_052_4c45                            ; $4bc5: $20 $7e

    adc l                                         ; $4bc7: $8d
    inc l                                         ; $4bc8: $2c
    di                                            ; $4bc9: $f3
    db $e3                                        ; $4bca: $e3
    ld c, h                                       ; $4bcb: $4c
    ei                                            ; $4bcc: $fb
    sbc b                                         ; $4bcd: $98
    and l                                         ; $4bce: $a5
    and [hl]                                      ; $4bcf: $a6
    rla                                           ; $4bd0: $17
    sub c                                         ; $4bd1: $91
    ld l, d                                       ; $4bd2: $6a
    adc b                                         ; $4bd3: $88
    nop                                           ; $4bd4: $00
    rst $20                                       ; $4bd5: $e7
    ret                                           ; $4bd6: $c9


    ld c, b                                       ; $4bd7: $48
    ret                                           ; $4bd8: $c9


    xor [hl]                                      ; $4bd9: $ae
    xor b                                         ; $4bda: $a8
    ld a, [de]                                    ; $4bdb: $1a
    ld sp, $c4ed                                  ; $4bdc: $31 $ed $c4
    ret nc                                        ; $4bdf: $d0

    db $f4                                        ; $4be0: $f4
    sub l                                         ; $4be1: $95
    ld a, [c]                                     ; $4be2: $f2
    ld l, e                                       ; $4be3: $6b
    inc h                                         ; $4be4: $24
    sbc d                                         ; $4be5: $9a
    dec a                                         ; $4be6: $3d
    ld [bc], a                                    ; $4be7: $02
    ld c, a                                       ; $4be8: $4f
    adc a                                         ; $4be9: $8f
    ld c, a                                       ; $4bea: $4f
    inc c                                         ; $4beb: $0c
    and l                                         ; $4bec: $a5
    ld hl, $fbf3                                  ; $4bed: $21 $f3 $fb
    ld a, a                                       ; $4bf0: $7f
    cp d                                          ; $4bf1: $ba
    ld c, b                                       ; $4bf2: $48
    sbc l                                         ; $4bf3: $9d
    db $ed                                        ; $4bf4: $ed
    and c                                         ; $4bf5: $a1
    cp d                                          ; $4bf6: $ba
    ld e, c                                       ; $4bf7: $59
    ld [hl], b                                    ; $4bf8: $70
    inc bc                                        ; $4bf9: $03
    jp z, Jump_052_7479                           ; $4bfa: $ca $79 $74

    ld [hl], $74                                  ; $4bfd: $36 $74
    ld [hl], $19                                  ; $4bff: $36 $19
    ld sp, hl                                     ; $4c01: $f9
    push de                                       ; $4c02: $d5
    ld h, l                                       ; $4c03: $65
    ld h, e                                       ; $4c04: $63
    or $aa                                        ; $4c05: $f6 $aa
    ld h, l                                       ; $4c07: $65
    ld a, [hl]                                    ; $4c08: $7e
    jp hl                                         ; $4c09: $e9


    xor [hl]                                      ; $4c0a: $ae
    pop hl                                        ; $4c0b: $e1
    db $fc                                        ; $4c0c: $fc
    adc b                                         ; $4c0d: $88
    ld e, [hl]                                    ; $4c0e: $5e
    reti                                          ; $4c0f: $d9


    ld b, e                                       ; $4c10: $43
    add $9d                                       ; $4c11: $c6 $9d
    ld a, [hl-]                                   ; $4c13: $3a
    pop af                                        ; $4c14: $f1
    or e                                          ; $4c15: $b3
    ld h, l                                       ; $4c16: $65
    ld d, d                                       ; $4c17: $52
    ld h, e                                       ; $4c18: $63
    sub [hl]                                      ; $4c19: $96
    ld e, d                                       ; $4c1a: $5a
    ld a, [hl-]                                   ; $4c1b: $3a
    cp $49                                        ; $4c1c: $fe $49
    ld l, d                                       ; $4c1e: $6a
    or $aa                                        ; $4c1f: $f6 $aa
    pop de                                        ; $4c21: $d1
    or b                                          ; $4c22: $b0
    dec hl                                        ; $4c23: $2b
    rst $30                                       ; $4c24: $f7
    ld a, l                                       ; $4c25: $7d
    sbc $6b                                       ; $4c26: $de $6b
    or $aa                                        ; $4c28: $f6 $aa
    sbc l                                         ; $4c2a: $9d
    db $f4                                        ; $4c2b: $f4
    ld a, [de]                                    ; $4c2c: $1a
    dec c                                         ; $4c2d: $0d
    cp e                                          ; $4c2e: $bb
    ld [hl], d                                    ; $4c2f: $72
    rra                                           ; $4c30: $1f
    or e                                          ; $4c31: $b3
    ld d, h                                       ; $4c32: $54
    dec l                                         ; $4c33: $2d
    ld h, h                                       ; $4c34: $64
    adc c                                         ; $4c35: $89
    ld d, d                                       ; $4c36: $52
    cp a                                          ; $4c37: $bf
    jr nz, jr_052_4c3c                            ; $4c38: $20 $02

    add b                                         ; $4c3a: $80
    cp e                                          ; $4c3b: $bb

jr_052_4c3c:
    adc $f6                                       ; $4c3c: $ce $f6
    ld d, b                                       ; $4c3e: $50
    db $dd                                        ; $4c3f: $dd
    inc l                                         ; $4c40: $2c
    cp b                                          ; $4c41: $b8
    add c                                         ; $4c42: $81
    inc [hl]                                      ; $4c43: $34
    ld [hl], h                                    ; $4c44: $74

jr_052_4c45:
    ld a, [hl]                                    ; $4c45: $7e
    rst $38                                       ; $4c46: $ff
    ld c, a                                       ; $4c47: $4f
    rla                                           ; $4c48: $17
    xor c                                         ; $4c49: $a9
    sbc c                                         ; $4c4a: $99
    sub h                                         ; $4c4b: $94
    ld [hl], $ee                                  ; $4c4c: $36 $ee
    or e                                          ; $4c4e: $b3
    call nc, $0aae                                ; $4c4f: $d4 $ae $0a
    sbc c                                         ; $4c52: $99
    inc e                                         ; $4c53: $1c
    dec a                                         ; $4c54: $3d
    sbc e                                         ; $4c55: $9b
    ld c, h                                       ; $4c56: $4c
    cp a                                          ; $4c57: $bf
    rst $38                                       ; $4c58: $ff
    ld b, e                                       ; $4c59: $43
    inc b                                         ; $4c5a: $04
    ld h, b                                       ; $4c5b: $60
    ld a, b                                       ; $4c5c: $78
    ld h, l                                       ; $4c5d: $65
    ld h, h                                       ; $4c5e: $64
    cp c                                          ; $4c5f: $b9
    add $fb                                       ; $4c60: $c6 $fb
    add sp, $55                                   ; $4c62: $e8 $55
    dec hl                                        ; $4c64: $2b
    rst $30                                       ; $4c65: $f7
    db $fd                                        ; $4c66: $fd
    ldh a, [$5a]                                  ; $4c67: $f0 $5a
    add a                                         ; $4c69: $87
    xor l                                         ; $4c6a: $ad
    pop hl                                        ; $4c6b: $e1
    db $fc                                        ; $4c6c: $fc
    add b                                         ; $4c6d: $80
    scf                                           ; $4c6e: $37
    adc e                                         ; $4c6f: $8b
    db $e3                                        ; $4c70: $e3
    xor [hl]                                      ; $4c71: $ae
    ld e, b                                       ; $4c72: $58
    db $d3                                        ; $4c73: $d3
    ld a, c                                       ; $4c74: $79
    ld e, d                                       ; $4c75: $5a
    sub d                                         ; $4c76: $92
    inc sp                                        ; $4c77: $33
    ld a, [hl]                                    ; $4c78: $7e
    ld [hl+], a                                   ; $4c79: $22
    ld bc, $b8f7                                  ; $4c7a: $01 $f7 $b8
    call nc, $eab4                                ; $4c7d: $d4 $b4 $ea
    ld e, l                                       ; $4c80: $5d
    pop af                                        ; $4c81: $f1
    ld e, b                                       ; $4c82: $58
    ld c, $f7                                     ; $4c83: $0e $f7
    ld l, c                                       ; $4c85: $69
    ld b, [hl]                                    ; $4c86: $46
    inc c                                         ; $4c87: $0c
    sbc l                                         ; $4c88: $9d
    halt                                          ; $4c89: $76
    db $f4                                        ; $4c8a: $f4
    ld [de], a                                    ; $4c8b: $12
    inc e                                         ; $4c8c: $1c
    rrca                                          ; $4c8d: $0f
    adc b                                         ; $4c8e: $88
    nop                                           ; $4c8f: $00
    add b                                         ; $4c90: $80
    cp $af                                        ; $4c91: $fe $af
    ld l, c                                       ; $4c93: $69
    ld c, c                                       ; $4c94: $49
    adc $f8                                       ; $4c95: $ce $f8
    adc c                                         ; $4c97: $89
    add h                                         ; $4c98: $84
    adc h                                         ; $4c99: $8c
    sub h                                         ; $4c9a: $94
    db $ec                                        ; $4c9b: $ec
    sbc a                                         ; $4c9c: $9f
    ld [hl], d                                    ; $4c9d: $72
    adc b                                         ; $4c9e: $88
    ld l, c                                       ; $4c9f: $69
    dec de                                        ; $4ca0: $1b
    ld a, $bf                                     ; $4ca1: $3e $bf
    rst $38                                       ; $4ca3: $ff
    cpl                                           ; $4ca4: $2f
    ld e, a                                       ; $4ca5: $5f
    rst $30                                       ; $4ca6: $f7
    push bc                                       ; $4ca7: $c5
    rrca                                          ; $4ca8: $0f
    ld e, l                                       ; $4ca9: $5d
    dec bc                                        ; $4caa: $0b
    ld a, d                                       ; $4cab: $7a
    ld [hl], $1a                                  ; $4cac: $36 $1a
    ld [hl-], a                                   ; $4cae: $32
    ld h, [hl]                                    ; $4caf: $66
    xor c                                         ; $4cb0: $a9
    ld sp, hl                                     ; $4cb1: $f9
    xor c                                         ; $4cb2: $a9
    di                                            ; $4cb3: $f3
    xor [hl]                                      ; $4cb4: $ae
    ld a, b                                       ; $4cb5: $78
    adc h                                         ; $4cb6: $8c
    ld l, e                                       ; $4cb7: $6b
    ld e, [hl]                                    ; $4cb8: $5e
    push de                                       ; $4cb9: $d5
    ld l, h                                       ; $4cba: $6c
    ld d, b                                       ; $4cbb: $50
    adc b                                         ; $4cbc: $88
    nop                                           ; $4cbd: $00
    rrca                                          ; $4cbe: $0f
    ld c, c                                       ; $4cbf: $49
    adc $f8                                       ; $4cc0: $ce $f8
    adc c                                         ; $4cc2: $89
    add h                                         ; $4cc3: $84
    adc h                                         ; $4cc4: $8c
    sub h                                         ; $4cc5: $94
    db $ec                                        ; $4cc6: $ec
    sbc a                                         ; $4cc7: $9f
    ld [hl], d                                    ; $4cc8: $72
    adc b                                         ; $4cc9: $88
    ld l, c                                       ; $4cca: $69
    dec bc                                        ; $4ccb: $0b
    rlca                                          ; $4ccc: $07
    ld a, [hl+]                                   ; $4ccd: $2a
    cp h                                          ; $4cce: $bc
    sub $61                                       ; $4ccf: $d6 $61
    ld l, e                                       ; $4cd1: $6b
    jr c, jr_052_4d13                             ; $4cd2: $38 $3f

    pop hl                                        ; $4cd4: $e1
    sub l                                         ; $4cd5: $95

Call_052_4cd6:
    sub c                                         ; $4cd6: $91
    ld h, l                                       ; $4cd7: $65
    ld b, e                                       ; $4cd8: $43
    ld [hl], a                                    ; $4cd9: $77
    db $f4                                        ; $4cda: $f4
    db $ec                                        ; $4cdb: $ec
    ret                                           ; $4cdc: $c9


Jump_052_4cdd:
    adc $a4                                       ; $4cdd: $ce $a4
    or h                                          ; $4cdf: $b4
    ld [hl], c                                    ; $4ce0: $71
    call Call_000_1aab                            ; $4ce1: $cd $ab $1a
    adc $43                                       ; $4ce4: $ce $43
    inc b                                         ; $4ce6: $04
    ld c, a                                       ; $4ce7: $4f
    ldh a, [rNR13]                                ; $4ce8: $f0 $13
    add hl, bc                                    ; $4cea: $09
    sbc c                                         ; $4ceb: $99
    ld e, [hl]                                    ; $4cec: $5e
    ld h, d                                       ; $4ced: $62
    cp e                                          ; $4cee: $bb
    ld a, d                                       ; $4cef: $7a
    sbc l                                         ; $4cf0: $9d
    adc b                                         ; $4cf1: $88
    rrca                                          ; $4cf2: $0f
    rst $20                                       ; $4cf3: $e7
    daa                                           ; $4cf4: $27
    push hl                                       ; $4cf5: $e5
    ld e, $32                                     ; $4cf6: $1e $32
    sub e                                         ; $4cf8: $93
    jp nc, Jump_000_0e46                          ; $4cf9: $d2 $46 $0e

    sub c                                         ; $4cfc: $91
    add sp, -$07                                  ; $4cfd: $e8 $f9
    db $fd                                        ; $4cff: $fd
    ld a, a                                       ; $4d00: $7f
    sub h                                         ; $4d01: $94
    sub l                                         ; $4d02: $95
    dec a                                         ; $4d03: $3d
    ld a, [$c346]                                 ; $4d04: $fa $46 $c3
    sbc l                                         ; $4d07: $9d
    rst $00                                       ; $4d08: $c7
    ld c, b                                       ; $4d09: $48
    ret                                           ; $4d0a: $c9


    cp $29                                        ; $4d0b: $fe $29
    add a                                         ; $4d0d: $87
    sbc b                                         ; $4d0e: $98
    or [hl]                                       ; $4d0f: $b6
    inc sp                                        ; $4d10: $33
    add hl, hl                                    ; $4d11: $29
    sub d                                         ; $4d12: $92

jr_052_4d13:
    ld a, c                                       ; $4d13: $79
    adc b                                         ; $4d14: $88
    nop                                           ; $4d15: $00
    ret nz                                        ; $4d16: $c0

    ld sp, hl                                     ; $4d17: $f9
    ld sp, hl                                     ; $4d18: $f9
    db $fd                                        ; $4d19: $fd
    ld a, a                                       ; $4d1a: $7f
    sbc c                                         ; $4d1b: $99
    ld a, c                                       ; $4d1c: $79
    cp b                                          ; $4d1d: $b8
    rst $00                                       ; $4d1e: $c7
    ld [hl], h                                    ; $4d1f: $74
    ld e, [hl]                                    ; $4d20: $5e
    xor [hl]                                      ; $4d21: $ae
    xor b                                         ; $4d22: $a8
    sub b                                         ; $4d23: $90
    sbc c                                         ; $4d24: $99
    sub h                                         ; $4d25: $94
    ld [hl], $ae                                  ; $4d26: $36 $ae
    ld a, c                                       ; $4d28: $79
    ld d, l                                       ; $4d29: $55
    or e                                          ; $4d2a: $b3
    pop hl                                        ; $4d2b: $e1
    db $e3                                        ; $4d2c: $e3
    ld c, [hl]                                    ; $4d2d: $4e
    sbc l                                         ; $4d2e: $9d
    cp l                                          ; $4d2f: $bd
    sub [hl]                                      ; $4d30: $96
    pop af                                        ; $4d31: $f1
    inc de                                        ; $4d32: $13
    add hl, bc                                    ; $4d33: $09
    sbc a                                         ; $4d34: $9f
    ld c, l                                       ; $4d35: $4d
    sub [hl]                                      ; $4d36: $96
    and e                                         ; $4d37: $a3
    ld hl, $6002                                  ; $4d38: $21 $02 $60
    adc [hl]                                      ; $4d3b: $8e
    db $ec                                        ; $4d3c: $ec
    dec h                                         ; $4d3d: $25
    db $d3                                        ; $4d3e: $d3
    ld [de], a                                    ; $4d3f: $12
    dec a                                         ; $4d40: $3d
    or c                                          ; $4d41: $b1
    rst $38                                       ; $4d42: $ff
    sub h                                         ; $4d43: $94
    ld h, e                                       ; $4d44: $63
    ld h, b                                       ; $4d45: $60
    ld l, [hl]                                    ; $4d46: $6e
    adc d                                         ; $4d47: $8a
    ld c, h                                       ; $4d48: $4c
    xor e                                         ; $4d49: $ab
    sbc [hl]                                      ; $4d4a: $9e
    ld e, [hl]                                    ; $4d4b: $5e
    ld a, l                                       ; $4d4c: $7d
    ld a, l                                       ; $4d4d: $7d
    rst $38                                       ; $4d4e: $ff
    db $10                                        ; $4d4f: $10
    push de                                       ; $4d50: $d5
    ld sp, $df9c                                  ; $4d51: $31 $9c $df
    add e                                         ; $4d54: $83
    ld d, c                                       ; $4d55: $51
    adc h                                         ; $4d56: $8c
    xor d                                         ; $4d57: $aa
    dec a                                         ; $4d58: $3d
    rst $28                                       ; $4d59: $ef
    sub b                                         ; $4d5a: $90
    add hl, bc                                    ; $4d5b: $09
    xor a                                         ; $4d5c: $af
    adc h                                         ; $4d5d: $8c
    xor h                                         ; $4d5e: $ac
    ld b, h                                       ; $4d5f: $44
    ld c, d                                       ; $4d60: $4a
    ldh [rNR34], a                                ; $4d61: $e0 $1e
    ld c, d                                       ; $4d63: $4a
    and [hl]                                      ; $4d64: $a6
    add a                                         ; $4d65: $87
    ld c, a                                       ; $4d66: $4f
    adc h                                         ; $4d67: $8c
    add d                                         ; $4d68: $82
    ld [$9ac0], sp                                ; $4d69: $08 $c0 $9a
    ld d, a                                       ; $4d6c: $57
    dec [hl]                                      ; $4d6d: $35
    ldh [$cd], a                                  ; $4d6e: $e0 $cd
    ld [c], a                                     ; $4d70: $e2

jr_052_4d71:
    cp b                                          ; $4d71: $b8
    dec hl                                        ; $4d72: $2b
    sub $74                                       ; $4d73: $d6 $74
    sbc [hl]                                      ; $4d75: $9e
    sub [hl]                                      ; $4d76: $96
    db $e4                                        ; $4d77: $e4
    adc h                                         ; $4d78: $8c
    sbc a                                         ; $4d79: $9f
    ld c, b                                       ; $4d7a: $48
    sbc h                                         ; $4d7b: $9c
    call $a63b                                    ; $4d7c: $cd $3b $a6
    di                                            ; $4d7f: $f3
    ld [hl], d                                    ; $4d80: $72
    ld b, l                                       ; $4d81: $45
    ld d, l                                       ; $4d82: $55
    cpl                                           ; $4d83: $2f
    pop bc                                        ; $4d84: $c1
    ld [hl], c                                    ; $4d85: $71
    adc b                                         ; $4d86: $88
    nop                                           ; $4d87: $00
    ldh [$fa], a                                  ; $4d88: $e0 $fa
    and h                                         ; $4d8a: $a4
    rst $10                                       ; $4d8b: $d7
    jp z, Jump_052_5c7d                           ; $4d8c: $ca $7d $5c

    di                                            ; $4d8f: $f3
    xor d                                         ; $4d90: $aa

Jump_052_4d91:
    ld h, $47                                     ; $4d91: $26 $47
    db $d3                                        ; $4d93: $d3
    ld [$f018], a                                 ; $4d94: $ea $18 $f0
    ld h, [hl]                                    ; $4d97: $66
    ld [hl], c                                    ; $4d98: $71
    call c, $6b15                                 ; $4d99: $dc $15 $6b
    ld a, [$a46c]                                 ; $4d9c: $fa $6c $a4
    inc h                                         ; $4d9f: $24
    sub e                                         ; $4da0: $93
    jr jr_052_4d71                                ; $4da1: $18 $ce

    cpl                                           ; $4da3: $2f
    inc sp                                        ; $4da4: $33
    rrca                                          ; $4da5: $0f
    rst $30                                       ; $4da6: $f7
    sbc b                                         ; $4da7: $98
    adc $cb                                       ; $4da8: $ce $cb
    dec d                                         ; $4daa: $15
    dec d                                         ; $4dab: $15
    ld [hl], d                                    ; $4dac: $72
    or [hl]                                       ; $4dad: $b6
    ld hl, sp+$3f                                 ; $4dae: $f8 $3f
    ld a, d                                       ; $4db0: $7a
    sbc c                                         ; $4db1: $99
    add a                                         ; $4db2: $87
    ld [$c9e7], sp                                ; $4db3: $08 $e7 $c9
    ld [hl-], a                                   ; $4db6: $32
    xor c                                         ; $4db7: $a9
    adc c                                         ; $4db8: $89
    ld d, c                                       ; $4db9: $51
    db $e3                                        ; $4dba: $e3
    sbc d                                         ; $4dbb: $9a
    ld d, a                                       ; $4dbc: $57
    dec [hl]                                      ; $4dbd: $35
    jr nc, jr_052_4e07                            ; $4dbe: $30 $47

    or $92                                        ; $4dc0: $f6 $92
    ld l, c                                       ; $4dc2: $69
    adc c                                         ; $4dc3: $89
    sbc [hl]                                      ; $4dc4: $9e
    ret c                                         ; $4dc5: $d8

    ld a, a                                       ; $4dc6: $7f
    jp z, Jump_000_3031                           ; $4dc7: $ca $31 $30

    scf                                           ; $4dca: $37
    ld b, l                                       ; $4dcb: $45
    adc $a6                                       ; $4dcc: $ce $a6
    sbc l                                         ; $4dce: $9d
    ld d, h                                       ; $4dcf: $54
    rst $00                                       ; $4dd0: $c7
    ld [de], a                                    ; $4dd1: $12
    inc e                                         ; $4dd2: $1c
    add a                                         ; $4dd3: $87
    ld [$9ac0], sp                                ; $4dd4: $08 $c0 $9a
    ld d, a                                       ; $4dd7: $57
    dec b                                         ; $4dd8: $05
    ld hl, $c9b4                                  ; $4dd9: $21 $b4 $c9
    db $f4                                        ; $4ddc: $f4
    ldh a, [$b3]                                  ; $4ddd: $f0 $b3
    reti                                          ; $4ddf: $d9


    ldh a, [$d9]                                  ; $4de0: $f0 $d9
    and e                                         ; $4de2: $a3
    sub a                                         ; $4de3: $97
    pop af                                        ; $4de4: $f1
    inc de                                        ; $4de5: $13
    add hl, bc                                    ; $4de6: $09
    add a                                         ; $4de7: $87
    db $10                                        ; $4de8: $10
    add d                                         ; $4de9: $82
    add hl, sp                                    ; $4dea: $39
    or d                                          ; $4deb: $b2
    sub a                                         ; $4dec: $97
    ld c, h                                       ; $4ded: $4c
    ld c, e                                       ; $4dee: $4b
    db $f4                                        ; $4def: $f4
    call nz, Call_052_53fe                        ; $4df0: $c4 $fe $53
    adc [hl]                                      ; $4df3: $8e
    add c                                         ; $4df4: $81
    add hl, bc                                    ; $4df5: $09
    ei                                            ; $4df6: $fb
    ld l, b                                       ; $4df7: $68
    ld b, b                                       ; $4df8: $40
    rst $38                                       ; $4df9: $ff
    adc a                                         ; $4dfa: $8f
    sbc [hl]                                      ; $4dfb: $9e
    ldh a, [$be]                                  ; $4dfc: $f0 $be
    call z, Call_052_438b                         ; $4dfe: $cc $8b $43
    inc b                                         ; $4e01: $04
    ld c, a                                       ; $4e02: $4f
    xor e                                         ; $4e03: $ab
    cp c                                          ; $4e04: $b9
    ld d, e                                       ; $4e05: $53
    rst $28                                       ; $4e06: $ef

jr_052_4e07:
    add a                                         ; $4e07: $87
    ld d, a                                       ; $4e08: $57
    rst $08                                       ; $4e09: $cf
    ld h, $d3                                     ; $4e0a: $26 $d3
    adc [hl]                                      ; $4e0c: $8e
    sbc [hl]                                      ; $4e0d: $9e
    ld b, h                                       ; $4e0e: $44
    rst $00                                       ; $4e0f: $c7
    and e                                         ; $4e10: $a3
    ld bc, $5e6b                                  ; $4e11: $01 $6b $5e
    push de                                       ; $4e14: $d5
    ret nz                                        ; $4e15: $c0

    call c, $1914                                 ; $4e16: $dc $14 $19
    adc $2f                                       ; $4e19: $ce $2f
    inc sp                                        ; $4e1b: $33
    rrca                                          ; $4e1c: $0f
    rst $30                                       ; $4e1d: $f7
    sbc b                                         ; $4e1e: $98
    adc $cb                                       ; $4e1f: $ce $cb
    dec d                                         ; $4e21: $15
    dec d                                         ; $4e22: $15
    ld [bc], a                                    ; $4e23: $02
    ld de, $490f                                  ; $4e24: $11 $0f $49
    adc $f8                                       ; $4e27: $ce $f8
    adc c                                         ; $4e29: $89
    add h                                         ; $4e2a: $84
    adc h                                         ; $4e2b: $8c
    sub h                                         ; $4e2c: $94
    inc l                                         ; $4e2d: $2c
    ld a, [hl]                                    ; $4e2e: $7e
    add sp, $5a                                   ; $4e2f: $e8 $5a
    ld d, b                                       ; $4e31: $50
    ld a, [de]                                    ; $4e32: $1a
    sub d                                         ; $4e33: $92
    rst $30                                       ; $4e34: $f7
    ld c, a                                       ; $4e35: $4f
    add hl, sp                                    ; $4e36: $39
    call nz, $85b4                                ; $4e37: $c4 $b4 $85
    dec sp                                        ; $4e3a: $3b
    ld c, a                                       ; $4e3b: $4f
    and [hl]                                      ; $4e3c: $a6
    ld d, l                                       ; $4e3d: $55
    rst $08                                       ; $4e3e: $cf
    sub e                                         ; $4e3f: $93
    ld a, $1b                                     ; $4e40: $3e $1b
    ld [hl], a                                    ; $4e42: $77
    ld [$fb45], a                                 ; $4e43: $ea $45 $fb
    or h                                          ; $4e46: $b4
    inc h                                         ; $4e47: $24
    ld h, a                                       ; $4e48: $67
    db $fc                                        ; $4e49: $fc
    ld b, h                                       ; $4e4a: $44
    ld h, d                                       ; $4e4b: $62
    and h                                         ; $4e4c: $a4
    ld h, h                                       ; $4e4d: $64
    ld a, b                                       ; $4e4e: $78
    sub a                                         ; $4e4f: $97
    rla                                           ; $4e50: $17
    inc e                                         ; $4e51: $1c
    xor b                                         ; $4e52: $a8
    ldh a, [$5a]                                  ; $4e53: $f0 $5a
    ld [hl], b                                    ; $4e55: $70
    ld e, $3d                                     ; $4e56: $1e $3d
    call $a188                                    ; $4e58: $cd $88 $a1
    jp $65f9                                      ; $4e5b: $c3 $f9 $65


    and $e1                                       ; $4e5e: $e6 $e1
    ld e, $d3                                     ; $4e60: $1e $d3
    ld a, c                                       ; $4e62: $79
    cp c                                          ; $4e63: $b9
    and d                                         ; $4e64: $a2
    ld b, d                                       ; $4e65: $42
    jr nz, jr_052_4e6a                            ; $4e66: $20 $02

    rst $20                                       ; $4e68: $e7
    pop hl                                        ; $4e69: $e1

jr_052_4e6a:
    dec sp                                        ; $4e6a: $3b
    ld a, d                                       ; $4e6b: $7a
    ld c, a                                       ; $4e6c: $4f
    ld l, [hl]                                    ; $4e6d: $6e
    rrca                                          ; $4e6e: $0f
    call z, Call_052_694d                         ; $4e6f: $cc $4d $69
    and $57                                       ; $4e72: $e6 $57
    sbc [hl]                                      ; $4e74: $9e
    adc l                                         ; $4e75: $8d
    add c                                         ; $4e76: $81
    cp [hl]                                       ; $4e77: $be
    inc [hl]                                      ; $4e78: $34
    or e                                          ; $4e79: $b3
    ld e, [hl]                                    ; $4e7a: $5e
    ld b, $67                                     ; $4e7b: $06 $67
    ld a, [de]                                    ; $4e7d: $1a
    cp a                                          ; $4e7e: $bf
    and d                                         ; $4e7f: $a2
    call c, Call_052_6cc8                         ; $4e80: $dc $c8 $6c
    or d                                          ; $4e83: $b2
    rra                                           ; $4e84: $1f
    ld e, [hl]                                    ; $4e85: $5e
    cp l                                          ; $4e86: $bd
    ldh [$3c], a                                  ; $4e87: $e0 $3c
    ld a, [de]                                    ; $4e89: $1a
    ld c, $e3                                     ; $4e8a: $0e $e3
    ld [hl], l                                    ; $4e8c: $75

jr_052_4e8d:
    xor a                                         ; $4e8d: $af
    pop hl                                        ; $4e8e: $e1
    db $fc                                        ; $4e8f: $fc
    ld [hl-], a                                   ; $4e90: $32
    di                                            ; $4e91: $f3
    ld [hl], b                                    ; $4e92: $70
    adc a                                         ; $4e93: $8f
    jp hl                                         ; $4e94: $e9


    cp h                                          ; $4e95: $bc
    ld e, h                                       ; $4e96: $5c
    ld d, c                                       ; $4e97: $51
    ld hl, $0110                                  ; $4e98: $21 $10 $01
    and b                                         ; $4e9b: $a0
    jp nz, $c16b                                  ; $4e9c: $c2 $6b $c1

    ld a, c                                       ; $4e9f: $79
    db $f4                                        ; $4ea0: $f4
    ld [hl-], a                                   ; $4ea1: $32
    ld a, [hl]                                    ; $4ea2: $7e
    ld [hl+], a                                   ; $4ea3: $22
    pop hl                                        ; $4ea4: $e1
    and e                                         ; $4ea5: $a3
    ld h, c                                       ; $4ea6: $61
    ld h, a                                       ; $4ea7: $67
    jp $ff97                                      ; $4ea8: $c3 $97 $ff


    ld hl, $c4aa                                  ; $4eab: $21 $aa $c4
    add $b4                                       ; $4eae: $c6 $b4
    ld b, h                                       ; $4eb0: $44
    ld c, a                                       ; $4eb1: $4f
    ld l, h                                       ; $4eb2: $6c
    ld hl, sp+$70                                 ; $4eb3: $f8 $70
    ld a, [hl]                                    ; $4eb5: $7e
    sbc c                                         ; $4eb6: $99
    ld a, c                                       ; $4eb7: $79
    cp b                                          ; $4eb8: $b8
    rst $00                                       ; $4eb9: $c7
    ld [hl], h                                    ; $4eba: $74
    ld e, [hl]                                    ; $4ebb: $5e
    xor [hl]                                      ; $4ebc: $ae
    xor b                                         ; $4ebd: $a8
    db $10                                        ; $4ebe: $10
    cp b                                          ; $4ebf: $b8
    add a                                         ; $4ec0: $87
    sub d                                         ; $4ec1: $92
    jp hl                                         ; $4ec2: $e9


    pop hl                                        ; $4ec3: $e1
    inc de                                        ; $4ec4: $13
    and e                                         ; $4ec5: $a3
    jr nz, jr_052_4eca                            ; $4ec6: $20 $02

    jr @+$2d                                      ; $4ec8: $18 $2b

jr_052_4eca:
    ld b, l                                       ; $4eca: $45
    add $9d                                       ; $4ecb: $c6 $9d
    ld a, d                                       ; $4ecd: $7a
    push hl                                       ; $4ece: $e5
    ld a, $9b                                     ; $4ecf: $3e $9b
    ld c, h                                       ; $4ed1: $4c
    cp a                                          ; $4ed2: $bf
    cp c                                          ; $4ed3: $b9
    ld l, h                                       ; $4ed4: $6c
    adc h                                         ; $4ed5: $8c
    db $fc                                        ; $4ed6: $fc
    jp z, Jump_052_6439                           ; $4ed7: $ca $39 $64

    ld e, d                                       ; $4eda: $5a
    jp nc, $e1b3                                  ; $4edb: $d2 $b3 $e1

    ld d, e                                       ; $4ede: $53
    ld a, h                                       ; $4edf: $7c

jr_052_4ee0:
    rst $08                                       ; $4ee0: $cf
    rst $28                                       ; $4ee1: $ef
    rst $38                                       ; $4ee2: $ff
    ld h, a                                       ; $4ee3: $67
    ld a, e                                       ; $4ee4: $7b
    xor b                                         ; $4ee5: $a8
    ld l, [hl]                                    ; $4ee6: $6e
    ld d, $dc                                     ; $4ee7: $16 $dc
    ld e, $8e                                     ; $4ee9: $1e $8e
    sbc [hl]                                      ; $4eeb: $9e
    ld d, [hl]                                    ; $4eec: $56
    dec a                                         ; $4eed: $3d
    sbc e                                         ; $4eee: $9b
    inc l                                         ; $4eef: $2c
    ld h, h                                       ; $4ef0: $64
    sbc $e6                                       ; $4ef1: $de $e6
    ld a, a                                       ; $4ef3: $7f
    adc $34                                       ; $4ef4: $ce $34
    adc l                                         ; $4ef6: $8d
    cp a                                          ; $4ef7: $bf
    ld l, h                                       ; $4ef8: $6c
    add sp, -$2e                                  ; $4ef9: $e8 $d2
    pop af                                        ; $4efb: $f1
    ld c, a                                       ; $4efc: $4f
    ld [hl], d                                    ; $4efd: $72
    ld b, l                                       ; $4efe: $45
    ld b, c                                       ; $4eff: $41
    inc b                                         ; $4f00: $04
    ret nz                                        ; $4f01: $c0

    ld sp, $0080                                  ; $4f02: $31 $80 $00
    add a                                         ; $4f05: $87
    ld de, $182c                                  ; $4f06: $11 $2c $18
    db $10                                        ; $4f09: $10
    jr jr_052_4e8d                                ; $4f0a: $18 $81

    ld c, $38                                     ; $4f0c: $0e $38
    jr nz, jr_052_4ee0                            ; $4f0e: $20 $d0

    ld b, b                                       ; $4f10: $40
    sbc a                                         ; $4f11: $9f
    jr nz, jr_052_4f57                            ; $4f12: $20 $43

    ld b, b                                       ; $4f14: $40
    add hl, de                                    ; $4f15: $19
    rlca                                          ; $4f16: $07
    ld c, c                                       ; $4f17: $49
    db $fc                                        ; $4f18: $fc
    ld [$dbc3], a                                 ; $4f19: $ea $c3 $db
    ret c                                         ; $4f1c: $d8

    inc h                                         ; $4f1d: $24
    dec d                                         ; $4f1e: $15
    ld [c], a                                     ; $4f1f: $e2
    ld [$3c4f], sp                                ; $4f20: $08 $4f $3c
    db $f4                                        ; $4f23: $f4
    jr jr_052_4f76                                ; $4f24: $18 $50

    rst $30                                       ; $4f26: $f7
    dec hl                                        ; $4f27: $2b
    ld a, [hl+]                                   ; $4f28: $2a
    ld a, [de]                                    ; $4f29: $1a
    ld bc, $8043                                  ; $4f2a: $01 $43 $80
    inc h                                         ; $4f2d: $24
    db $eb                                        ; $4f2e: $eb
    push de                                       ; $4f2f: $d5
    ld d, a                                       ; $4f30: $57
    dec l                                         ; $4f31: $2d
    ld [hl], c                                    ; $4f32: $71
    dec a                                         ; $4f33: $3d
    ld d, d                                       ; $4f34: $52
    db $e4                                        ; $4f35: $e4
    ld d, a                                       ; $4f36: $57
    rlca                                          ; $4f37: $07
    ld [bc], a                                    ; $4f38: $02
    and b                                         ; $4f39: $a0
    ld l, a                                       ; $4f3a: $6f
    ld c, d                                       ; $4f3b: $4a
    xor e                                         ; $4f3c: $ab
    ld hl, sp+$3b                                 ; $4f3d: $f8 $3b
    scf                                           ; $4f3f: $37
    xor l                                         ; $4f40: $ad
    ld c, d                                       ; $4f41: $4a
    db $10                                        ; $4f42: $10
    ld b, e                                       ; $4f43: $43
    rrca                                          ; $4f44: $0f
    adc c                                         ; $4f45: $89
    sbc [hl]                                      ; $4f46: $9e
    ld e, b                                       ; $4f47: $58
    push de                                       ; $4f48: $d5
    push bc                                       ; $4f49: $c5
    ld e, l                                       ; $4f4a: $5d
    ld [de], a                                    ; $4f4b: $12
    adc l                                         ; $4f4c: $8d
    nop                                           ; $4f4d: $00
    and b                                         ; $4f4e: $a0
    cpl                                           ; $4f4f: $2f
    adc c                                         ; $4f50: $89
    add c                                         ; $4f51: $81
    ei                                            ; $4f52: $fb
    push hl                                       ; $4f53: $e5
    ld e, $1e                                     ; $4f54: $1e $1e
    adc l                                         ; $4f56: $8d

jr_052_4f57:
    nop                                           ; $4f57: $00
    ld b, e                                       ; $4f58: $43
    sbc b                                         ; $4f59: $98
    ld e, h                                       ; $4f5a: $5c
    adc a                                         ; $4f5b: $8f
    inc d                                         ; $4f5c: $14
    ld sp, hl                                     ; $4f5d: $f9
    push de                                       ; $4f5e: $d5
    add c                                         ; $4f5f: $81
    nop                                           ; $4f60: $00
    adc a                                         ; $4f61: $8f
    ld c, l                                       ; $4f62: $4d

Jump_052_4f63:
    sub $92                                       ; $4f63: $d6 $92
    ld a, [de]                                    ; $4f65: $1a
    add sp, $08                                   ; $4f66: $e8 $08
    sbc e                                         ; $4f68: $9b
    ld de, $3c4f                                  ; $4f69: $11 $4f $3c
    db $f4                                        ; $4f6c: $f4
    ret c                                         ; $4f6d: $d8

    db $d3                                        ; $4f6e: $d3
    ld a, [$99ff]                                 ; $4f6f: $fa $ff $99
    ld b, b                                       ; $4f72: $40
    rst $20                                       ; $4f73: $e7
    ld h, $51                                     ; $4f74: $26 $51

jr_052_4f76:
    ld a, e                                       ; $4f76: $7b
    sub d                                         ; $4f77: $92
    jp nc, $ffee                                  ; $4f78: $d2 $ee $ff

    ld d, a                                       ; $4f7b: $57
    inc d                                         ; $4f7c: $14
    ld [bc], a                                    ; $4f7d: $02
    ld c, a                                       ; $4f7e: $4f
    inc a                                         ; $4f7f: $3c
    db $f4                                        ; $4f80: $f4
    jr jr_052_4fd3                                ; $4f81: $18 $50

    rst $30                                       ; $4f83: $f7
    dec hl                                        ; $4f84: $2b
    ld a, [hl+]                                   ; $4f85: $2a
    ld a, [de]                                    ; $4f86: $1a
    ld bc, $c043                                  ; $4f87: $01 $43 $c0
    cp e                                          ; $4f8a: $bb
    cp b                                          ; $4f8b: $b8
    ld c, e                                       ; $4f8c: $4b
    ld h, [hl]                                    ; $4f8d: $66
    ld d, d                                       ; $4f8e: $52
    jp c, $2e4a                                   ; $4f8f: $da $4a $2e

    adc l                                         ; $4f92: $8d
    cp [hl]                                       ; $4f93: $be
    and d                                         ; $4f94: $a2
    db $10                                        ; $4f95: $10
    ld b, b                                       ; $4f96: $40
    ei                                            ; $4f97: $fb
    and [hl]                                      ; $4f98: $a6
    or $10                                        ; $4f99: $f6 $10
    rst $10                                       ; $4f9b: $d7
    ld l, c                                       ; $4f9c: $69
    add hl, bc                                    ; $4f9d: $09
    ld [bc], a                                    ; $4f9e: $02
    jr jr_052_4fed                                ; $4f9f: $18 $4c

    ld a, [hl-]                                   ; $4fa1: $3a
    cp l                                          ; $4fa2: $bd
    and a                                         ; $4fa3: $a7
    sub c                                         ; $4fa4: $91
    dec e                                         ; $4fa5: $1d
    ld bc, $a38f                                  ; $4fa6: $01 $8f $a3
    sbc e                                         ; $4fa9: $9b

jr_052_4faa:
    or l                                          ; $4faa: $b5
    and a                                         ; $4fab: $a7
    and [hl]                                      ; $4fac: $a6
    or l                                          ; $4fad: $b5
    dec de                                        ; $4fae: $1b
    add hl, de                                    ; $4faf: $19
    ld bc, $a043                                  ; $4fb0: $01 $43 $a0
    ld c, e                                       ; $4fb3: $4b
    sub d                                         ; $4fb4: $92
    cp h                                          ; $4fb5: $bc
    ld d, a                                       ; $4fb6: $57
    halt                                          ; $4fb7: $76
    ld e, $f9                                     ; $4fb8: $1e $f9
    ld a, [hl+]                                   ; $4fba: $2a
    add hl, hl                                    ; $4fbb: $29
    ret                                           ; $4fbc: $c9


    ld a, d                                       ; $4fbd: $7a
    push af                                       ; $4fbe: $f5
    ld d, l                                       ; $4fbf: $55
    ld [$6fa0], sp                                ; $4fc0: $08 $a0 $6f
    ld c, d                                       ; $4fc3: $4a
    xor e                                         ; $4fc4: $ab
    ld hl, sp+$7b                                 ; $4fc5: $f8 $7b
    ld c, b                                       ; $4fc7: $48
    ld l, b                                       ; $4fc8: $68
    ld h, h                                       ; $4fc9: $64
    inc b                                         ; $4fca: $04
    ld b, e                                       ; $4fcb: $43
    and b                                         ; $4fcc: $a0
    jp Jump_052_6de2                              ; $4fcd: $c3 $e2 $6d


    ld l, h                                       ; $4fd0: $6c
    sub d                                         ; $4fd1: $92
    ld a, [bc]                                    ; $4fd2: $0a

jr_052_4fd3:
    ld [hl], c                                    ; $4fd3: $71
    inc b                                         ; $4fd4: $04
    ld b, b                                       ; $4fd5: $40
    xor d                                         ; $4fd6: $aa
    ld l, e                                       ; $4fd7: $6b
    rst $20                                       ; $4fd8: $e7
    scf                                           ; $4fd9: $37
    inc [hl]                                      ; $4fda: $34
    adc d                                         ; $4fdb: $8a
    nop                                           ; $4fdc: $00
    ld b, e                                       ; $4fdd: $43
    and b                                         ; $4fde: $a0
    sub e                                         ; $4fdf: $93
    ld a, h                                       ; $4fe0: $7c
    ret                                           ; $4fe1: $c9


    ld c, h                                       ; $4fe2: $4c
    ld c, d                                       ; $4fe3: $4a
    db $db                                        ; $4fe4: $db
    ld h, a                                       ; $4fe5: $67
    ld h, $36                                     ; $4fe6: $26 $36
    jr c, jr_052_5018                             ; $4fe8: $38 $2e

    adc b                                         ; $4fea: $88
    ld b, a                                       ; $4feb: $47
    inc hl                                        ; $4fec: $23

jr_052_4fed:
    and b                                         ; $4fed: $a0
    xor e                                         ; $4fee: $ab
    ret                                           ; $4fef: $c9


    or b                                          ; $4ff0: $b0
    ld b, [hl]                                    ; $4ff1: $46
    adc b                                         ; $4ff2: $88
    ld b, l                                       ; $4ff3: $45
    rst $20                                       ; $4ff4: $e7
    dec e                                         ; $4ff5: $1d
    adc h                                         ; $4ff6: $8c
    ld b, $a4                                     ; $4ff7: $06 $a4
    inc l                                         ; $4ff9: $2c
    dec bc                                        ; $4ffa: $0b
    ld bc, $4a20                                  ; $4ffb: $01 $20 $4a
    add [hl]                                      ; $4ffe: $86
    pop bc                                        ; $4fff: $c1
    ret c                                         ; $5000: $d8

    ld e, e                                       ; $5001: $5b
    ld [$1843], sp                                ; $5002: $08 $43 $18
    inc hl                                        ; $5005: $23
    ld a, e                                       ; $5006: $7b
    ld [hl], l                                    ; $5007: $75
    jr nz, jr_052_4faa                            ; $5008: $20 $a0

    ld l, $1b                                     ; $500a: $2e $1b
    ld [hl], $03                                  ; $500c: $36 $03
    sub d                                         ; $500e: $92
    ld d, b                                       ; $500f: $50
    ld a, d                                       ; $5010: $7a
    dec h                                         ; $5011: $25
    inc hl                                        ; $5012: $23
    add b                                         ; $5013: $80
    ei                                            ; $5014: $fb
    sub [hl]                                      ; $5015: $96
    inc c                                         ; $5016: $0c
    db $e4                                        ; $5017: $e4

jr_052_5018:
    ld l, l                                       ; $5018: $6d
    ld [hl+], a                                   ; $5019: $22
    sub c                                         ; $501a: $91
    inc sp                                        ; $501b: $33
    ld [bc], a                                    ; $501c: $02
    ld b, b                                       ; $501d: $40
    or h                                          ; $501e: $b4
    ld l, b                                       ; $501f: $68
    sub $1f                                       ; $5020: $d6 $1f
    cp b                                          ; $5022: $b8
    sub b                                         ; $5023: $90
    sbc e                                         ; $5024: $9b
    ld [hl+], a                                   ; $5025: $22
    ld [$e480], sp                                ; $5026: $08 $80 $e4
    cp $3d                                        ; $5029: $fe $3d
    ld [hl], $59                                  ; $502b: $36 $59
    cp e                                          ; $502d: $bb
    ld [$4343], sp                                ; $502e: $08 $43 $43
    add b                                         ; $5031: $80
    ld b, b                                       ; $5032: $40
    inc bc                                        ; $5033: $03
    jp nz, Jump_052_7406                          ; $5034: $c2 $06 $74

    ld b, b                                       ; $5037: $40
    pop bc                                        ; $5038: $c1
    ld h, b                                       ; $5039: $60
    inc b                                         ; $503a: $04
    adc d                                         ; $503b: $8a
    ld bc, $2023                                  ; $503c: $01 $23 $20
    db $10                                        ; $503f: $10
    ld h, b                                       ; $5040: $60
    ld b, b                                       ; $5041: $40
    inc bc                                        ; $5042: $03
    dec b                                         ; $5043: $05
    add e                                         ; $5044: $83
    ld de, $4301                                  ; $5045: $11 $01 $43
    ld b, b                                       ; $5048: $40
    add hl, de                                    ; $5049: $19
    rlca                                          ; $504a: $07
    ld c, c                                       ; $504b: $49
    db $fc                                        ; $504c: $fc
    ld [$bc35], a                                 ; $504d: $ea $35 $bc
    adc l                                         ; $5050: $8d
    ld c, l                                       ; $5051: $4d
    ld d, d                                       ; $5052: $52
    ld hl, $8d1e                                  ; $5053: $21 $1e $8d
    nop                                           ; $5056: $00
    rst $20                                       ; $5057: $e7
    dec h                                         ; $5058: $25
    inc bc                                        ; $5059: $03
    ld a, [$d243]                                 ; $505a: $fa $43 $d2
    ld d, l                                       ; $505d: $55
    add hl, de                                    ; $505e: $19
    ld bc, $a5e7                                  ; $505f: $01 $e7 $a5
    ld e, a                                       ; $5062: $5f
    dec sp                                        ; $5063: $3b
    ret nc                                        ; $5064: $d0

    dec h                                         ; $5065: $25

jr_052_5066:
    add d                                         ; $5066: $82
    nop                                           ; $5067: $00
    ld b, e                                       ; $5068: $43
    jr jr_052_508e                                ; $5069: $18 $23

    ld a, e                                       ; $506b: $7b
    ld c, d                                       ; $506c: $4a
    dec bc                                        ; $506d: $0b
    ld c, $01                                     ; $506e: $0e $01
    adc a                                         ; $5070: $8f
    dec hl                                        ; $5071: $2b
    ld b, l                                       ; $5072: $45
    ld b, $b8                                     ; $5073: $06 $b8
    inc de                                        ; $5075: $13
    ld c, d                                       ; $5076: $4a
    jp Jump_052_4311                              ; $5077: $c3 $11 $43


    jr nz, jr_052_50b7                            ; $507a: $20 $3b

    jp z, $eeaf                                   ; $507c: $ca $af $ee

    dec hl                                        ; $507f: $2b
    ret                                           ; $5080: $c9


    ld a, d                                       ; $5081: $7a
    push af                                       ; $5082: $f5
    ld d, l                                       ; $5083: $55
    ld [$b4e0], sp                                ; $5084: $08 $e0 $b4
    ei                                            ; $5087: $fb
    add a                                         ; $5088: $87

jr_052_5089:
    or c                                          ; $5089: $b1
    inc de                                        ; $508a: $13
    sbc d                                         ; $508b: $9a
    ld [hl], $08                                  ; $508c: $36 $08

jr_052_508e:
    ld b, e                                       ; $508e: $43
    ld c, a                                       ; $508f: $4f
    sbc [hl]                                      ; $5090: $9e
    jp Jump_000_04f0                              ; $5091: $c3 $f0 $04


    inc h                                         ; $5094: $24
    ld [$1850], sp                                ; $5095: $08 $50 $18
    add a                                         ; $5098: $87
    ld de, $1010                                  ; $5099: $11 $10 $10
    sub b                                         ; $509c: $90
    jp Jump_000_0208                              ; $509d: $c3 $08 $02


    inc d                                         ; $50a0: $14
    jr z, jr_052_50a7                             ; $50a1: $28 $04

    ld c, a                                       ; $50a3: $4f
    inc a                                         ; $50a4: $3c
    ld [hl], b                                    ; $50a5: $70
    xor l                                         ; $50a6: $ad

jr_052_50a7:
    db $e4                                        ; $50a7: $e4
    add $1e                                       ; $50a8: $c6 $1e
    and d                                         ; $50aa: $a2
    cp l                                          ; $50ab: $bd
    ld d, h                                       ; $50ac: $54
    inc [hl]                                      ; $50ad: $34
    ld [bc], a                                    ; $50ae: $02
    ld c, a                                       ; $50af: $4f
    sub d                                         ; $50b0: $92
    ld e, h                                       ; $50b1: $5c
    or d                                          ; $50b2: $b2
    di                                            ; $50b3: $f3
    nop                                           ; $50b4: $00
    dec e                                         ; $50b5: $1d
    ld a, l                                       ; $50b6: $7d

jr_052_50b7:
    dec e                                         ; $50b7: $1d
    ld bc, $2fa0                                  ; $50b8: $01 $a0 $2f
    adc c                                         ; $50bb: $89
    sbc l                                         ; $50bc: $9d
    ld b, a                                       ; $50bd: $47
    add hl, bc                                    ; $50be: $09
    ld [bc], a                                    ; $50bf: $02
    add b                                         ; $50c0: $80
    xor d                                         ; $50c1: $aa
    adc l                                         ; $50c2: $8d
    inc c                                         ; $50c3: $0c
    jp Jump_000_054d                              ; $50c4: $c3 $4d $05


    ld [bc], a                                    ; $50c7: $02
    jr nz, jr_052_510d                            ; $50c8: $20 $43

    cp a                                          ; $50ca: $bf
    ld [hl-], a                                   ; $50cb: $32
    ret nz                                        ; $50cc: $c0

    ld c, c                                       ; $50cd: $49
    db $db                                        ; $50ce: $db
    sbc e                                         ; $50cf: $9b
    ld [hl+], a                                   ; $50d0: $22
    ld [$fb20], sp                                ; $50d1: $08 $20 $fb
    and $3d                                       ; $50d4: $e6 $3d
    ld c, c                                       ; $50d6: $49
    jr z, jr_052_5066                             ; $50d7: $28 $8d

    adc $08                                       ; $50d9: $ce $08
    ld b, e                                       ; $50db: $43
    ld b, e                                       ; $50dc: $43
    ld b, e                                       ; $50dd: $43
    ld b, b                                       ; $50de: $40
    ld b, c                                       ; $50df: $41
    ld bc, $8205                                  ; $50e0: $01 $05 $82
    ld de, $5803                                  ; $50e3: $11 $03 $58
    jr nc, jr_052_5108                            ; $50e6: $30 $20

    add b                                         ; $50e8: $80
    inc c                                         ; $50e9: $0c
    db $10                                        ; $50ea: $10
    ld b, $8c                                     ; $50eb: $06 $8c
    ld c, a                                       ; $50ed: $4f
    db $10                                        ; $50ee: $10
    ld b, e                                       ; $50ef: $43
    ldh [$da], a                                  ; $50f0: $e0 $da
    ret c                                         ; $50f2: $d8

    add h                                         ; $50f3: $84
    ld hl, sp+$35                                 ; $50f4: $f8 $35
    sub d                                         ; $50f6: $92
    ld d, l                                       ; $50f7: $55
    daa                                           ; $50f8: $27
    jr c, jr_052_5089                             ; $50f9: $38 $8e

    nop                                           ; $50fb: $00
    ld b, b                                       ; $50fc: $40
    or h                                          ; $50fd: $b4
    cp [hl]                                       ; $50fe: $be
    ld a, c                                       ; $50ff: $79
    ret nz                                        ; $5100: $c0

    cp e                                          ; $5101: $bb
    ld e, b                                       ; $5102: $58
    ld [$cc40], sp                                ; $5103: $08 $40 $cc
    cp a                                          ; $5106: $bf
    ld [hl-], a                                   ; $5107: $32

jr_052_5108:
    inc c                                         ; $5108: $0c
    ld h, $7d                                     ; $5109: $26 $7d
    dec h                                         ; $510b: $25
    dec de                                        ; $510c: $1b

jr_052_510d:
    ld b, c                                       ; $510d: $41
    adc a                                         ; $510e: $8f
    add e                                         ; $510f: $83
    db $e3                                        ; $5110: $e3
    ld b, $bc                                     ; $5111: $06 $bc
    xor b                                         ; $5113: $a8
    ld de, $6004                                  ; $5114: $11 $04 $60
    add hl, de                                    ; $5117: $19
    add l                                         ; $5118: $85
    inc c                                         ; $5119: $0c
    db $ec                                        ; $511a: $ec
    di                                            ; $511b: $f3
    add b                                         ; $511c: $80
    ei                                            ; $511d: $fb
    add [hl]                                      ; $511e: $86
    jr nz, @+$1a                                  ; $511f: $20 $18

    ld c, h                                       ; $5121: $4c
    ld a, d                                       ; $5122: $7a
    ld h, b                                       ; $5123: $60
    sbc a                                         ; $5124: $9f
    rlca                                          ; $5125: $07
    ld d, [hl]                                    ; $5126: $56
    db $dd                                        ; $5127: $dd
    pop af                                        ; $5128: $f1
    ccf                                           ; $5129: $3f
    ld [bc], a                                    ; $512a: $02
    ld c, a                                       ; $512b: $4f
    ld l, $35                                     ; $512c: $2e $35
    or d                                          ; $512e: $b2
    add a                                         ; $512f: $87
    ld [$19be], a                                 ; $5130: $ea $be $19
    ld bc, $8b98                                  ; $5133: $01 $98 $8b
    dec h                                         ; $5136: $25
    ld sp, $6d60                                  ; $5137: $31 $60 $6d
    or d                                          ; $513a: $b2
    inc hl                                        ; $513b: $23
    ld b, e                                       ; $513c: $43
    ret c                                         ; $513d: $d8

    push af                                       ; $513e: $f5
    cp [hl]                                       ; $513f: $be
    ld l, d                                       ; $5140: $6a
    ld a, b                                       ; $5141: $78
    dec de                                        ; $5142: $1b
    push de                                       ; $5143: $d5
    ld b, l                                       ; $5144: $45
    ld l, c                                       ; $5145: $69
    db $f4                                        ; $5146: $f4
    dec d                                         ; $5147: $15
    add l                                         ; $5148: $85
    nop                                           ; $5149: $00
    add b                                         ; $514a: $80
    ld b, e                                       ; $514b: $43
    halt                                          ; $514c: $76
    ld e, $25                                     ; $514d: $1e $25
    add c                                         ; $514f: $81
    nop                                           ; $5150: $00
    ld b, e                                       ; $5151: $43
    ld c, a                                       ; $5152: $4f
    ldh a, [$f8]                                  ; $5153: $f0 $f8
    jp hl                                         ; $5155: $e9


    ld a, [$3925]                                 ; $5156: $fa $25 $39
    ld a, [$428a]                                 ; $5159: $fa $8a $42
    rst $20                                       ; $515c: $e7
    dec h                                         ; $515d: $25
    jp Jump_052_7f70                              ; $515e: $c3 $70 $7f


    or b                                          ; $5161: $b0
    db $10                                        ; $5162: $10
    ld b, e                                       ; $5163: $43
    and b                                         ; $5164: $a0
    sbc b                                         ; $5165: $98
    adc c                                         ; $5166: $89
    ld d, l                                       ; $5167: $55
    sbc l                                         ; $5168: $9d
    ldh [$38], a                                  ; $5169: $e0 $38
    ld [bc], a                                    ; $516b: $02
    add b                                         ; $516c: $80
    ld l, h                                       ; $516d: $6c
    db $fc                                        ; $516e: $fc
    jr @-$36                                      ; $516f: $18 $c8

    ld hl, sp+$3f                                 ; $5171: $f8 $3f
    call c, $8011                                 ; $5173: $dc $11 $80
    rst $28                                       ; $5176: $ef
    rst $38                                       ; $5177: $ff
    inc bc                                        ; $5178: $03
    sub l                                         ; $5179: $95
    ld h, h                                       ; $517a: $64
    ld h, a                                       ; $517b: $67
    ld hl, $a38f                                  ; $517c: $21 $8f $a3
    add e                                         ; $517f: $83
    or d                                          ; $5180: $b2
    or $c4                                        ; $5181: $f6 $c4
    inc h                                         ; $5183: $24
    ccf                                           ; $5184: $3f
    db $10                                        ; $5185: $10
    ld h, b                                       ; $5186: $60
    ld l, [hl]                                    ; $5187: $6e
    adc d                                         ; $5188: $8a
    inc c                                         ; $5189: $0c
    ld d, h                                       ; $518a: $54
    jp hl                                         ; $518b: $e9


    scf                                           ; $518c: $37
    ld a, [hl-]                                   ; $518d: $3a
    inc hl                                        ; $518e: $23
    ld b, e                                       ; $518f: $43
    ldh [rSB], a                                  ; $5190: $e0 $01
    cp l                                          ; $5192: $bd
    ld e, h                                       ; $5193: $5c
    cp d                                          ; $5194: $ba
    adc l                                         ; $5195: $8d
    cpl                                           ; $5196: $2f
    ld d, a                                       ; $5197: $57
    inc d                                         ; $5198: $14
    ld [bc], a                                    ; $5199: $02
    add b                                         ; $519a: $80
    call nz, Call_000_06b2                        ; $519b: $c4 $b2 $06
    ld a, [$1ffe]                                 ; $519e: $fa $fe $1f
    adc l                                         ; $51a1: $8d
    nop                                           ; $51a2: $00
    rst $20                                       ; $51a3: $e7
    push de                                       ; $51a4: $d5
    dec e                                         ; $51a5: $1d
    ld [hl-], a                                   ; $51a6: $32
    adc h                                         ; $51a7: $8c
    ld c, c                                       ; $51a8: $49
    adc d                                         ; $51a9: $8a
    inc b                                         ; $51aa: $04
    dec bc                                        ; $51ab: $0b
    ld bc, $4d8f                                  ; $51ac: $01 $8f $4d
    inc c                                         ; $51af: $0c
    ld c, h                                       ; $51b0: $4c
    ld [hl+], a                                   ; $51b1: $22
    add d                                         ; $51b2: $82
    nop                                           ; $51b3: $00
    and b                                         ; $51b4: $a0
    ld [hl+], a                                   ; $51b5: $22
    ld b, $ba                                     ; $51b6: $06 $ba
    call nz, Call_052_7e86                        ; $51b8: $c4 $86 $7e
    rst $38                                       ; $51bb: $ff
    rrca                                          ; $51bc: $0f
    inc b                                         ; $51bd: $04
    and b                                         ; $51be: $a0
    bit 7, l                                      ; $51bf: $cb $7d
    add b                                         ; $51c1: $80
    ld b, e                                       ; $51c2: $43
    inc h                                         ; $51c3: $24
    call c, $e011                                 ; $51c4: $dc $11 $e0
    jp nz, Jump_052_4f63                          ; $51c7: $c2 $63 $4f

    adc d                                         ; $51ca: $8a
    ld h, $f1                                     ; $51cb: $26 $f1
    inc sp                                        ; $51cd: $33
    ld [bc], a                                    ; $51ce: $02
    ldh [$6e], a                                  ; $51cf: $e0 $6e
    ld [hl], h                                    ; $51d1: $74
    ld e, $a8                                     ; $51d2: $1e $a8
    ld [de], a                                    ; $51d4: $12
    push de                                       ; $51d5: $d5
    rst $10                                       ; $51d6: $d7
    xor d                                         ; $51d7: $aa
    ld b, b                                       ; $51d8: $40
    jr jr_052_5249                                ; $51d9: $18 $6e

    ld c, d                                       ; $51db: $4a
    xor e                                         ; $51dc: $ab
    or [hl]                                       ; $51dd: $b6
    jp $bf7c                                      ; $51de: $c3 $7c $bf


    adc l                                         ; $51e1: $8d
    adc $f8                                       ; $51e2: $ce $f8
    dec d                                         ; $51e4: $15
    inc b                                         ; $51e5: $04
    jr jr_052_5234                                ; $51e6: $18 $4c

    adc $3b                                       ; $51e8: $ce $3b
    scf                                           ; $51ea: $37
    adc c                                         ; $51eb: $89
    ld a, [$1195]                                 ; $51ec: $fa $95 $11
    ld c, a                                       ; $51ef: $4f
    inc a                                         ; $51f0: $3c
    add hl, de                                    ; $51f1: $19
    and $fb                                       ; $51f2: $e6 $fb
    rst $38                                       ; $51f4: $ff
    dec l                                         ; $51f5: $2d
    sbc d                                         ; $51f6: $9a
    ld de, $e043                                  ; $51f7: $11 $43 $e0
    ld bc, $ecbd                                  ; $51fa: $01 $bd $ec
    ld b, c                                       ; $51fd: $41
    db $e4                                        ; $51fe: $e4
    sub d                                         ; $51ff: $92
    ld l, b                                       ; $5200: $68
    inc b                                         ; $5201: $04
    adc a                                         ; $5202: $8f
    ld c, l                                       ; $5203: $4d
    inc c                                         ; $5204: $0c
    ld a, b                                       ; $5205: $78
    sub a                                         ; $5206: $97
    jr c, jr_052_520b                             ; $5207: $38 $02

    and b                                         ; $5209: $a0
    xor e                                         ; $520a: $ab

jr_052_520b:
    ld d, e                                       ; $520b: $53
    ld c, c                                       ; $520c: $49
    ld e, $b8                                     ; $520d: $1e $b8
    and h                                         ; $520f: $a4
    push af                                       ; $5210: $f5
    sbc e                                         ; $5211: $9b
    ld de, $8b98                                  ; $5212: $11 $98 $8b
    dec h                                         ; $5215: $25
    ld sp, $86c0                                  ; $5216: $31 $c0 $86
    sub l                                         ; $5219: $95
    ld a, [bc]                                    ; $521a: $0a
    inc b                                         ; $521b: $04
    rst $20                                       ; $521c: $e7
    ld b, [hl]                                    ; $521d: $46
    and h                                         ; $521e: $a4
    or $70                                        ; $521f: $f6 $70
    ld d, e                                       ; $5221: $53
    inc h                                         ; $5222: $24
    inc hl                                        ; $5223: $23
    ld b, e                                       ; $5224: $43
    ld b, b                                       ; $5225: $40
    ld a, a                                       ; $5226: $7f

Jump_052_5227:
    and h                                         ; $5227: $a4
    cp h                                          ; $5228: $bc
    adc l                                         ; $5229: $8d
    call c, Call_000_00d4                         ; $522a: $dc $d4 $00
    or l                                          ; $522d: $b5
    rst $20                                       ; $522e: $e7
    cp l                                          ; $522f: $bd
    cp h                                          ; $5230: $bc
    daa                                           ; $5231: $27
    ld b, a                                       ; $5232: $47
    ld h, a                                       ; $5233: $67

jr_052_5234:
    ld [hl], d                                    ; $5234: $72
    cp a                                          ; $5235: $bf
    rst $08                                       ; $5236: $cf
    dec hl                                        ; $5237: $2b
    ld b, l                                       ; $5238: $45
    and $f7                                       ; $5239: $e6 $f7

Jump_052_523b:
    ld a, a                                       ; $523b: $7f
    inc b                                         ; $523c: $04
    add b                                         ; $523d: $80
    dec sp                                        ; $523e: $3b
    ld c, c                                       ; $523f: $49
    push bc                                       ; $5240: $c5
    ld b, b                                       ; $5241: $40
    and a                                         ; $5242: $a7
    ld b, b                                       ; $5243: $40
    rst $18                                       ; $5244: $df
    rst $38                                       ; $5245: $ff
    ld c, e                                       ; $5246: $4b
    db $10                                        ; $5247: $10
    ld b, b                                       ; $5248: $40

jr_052_5249:
    or h                                          ; $5249: $b4
    inc h                                         ; $524a: $24
    ld b, l                                       ; $524b: $45
    ld b, $e4                                     ; $524c: $06 $e4
    sub a                                         ; $524e: $97
    cp b                                          ; $524f: $b8
    ld de, $e704                                  ; $5250: $11 $04 $e7
    dec h                                         ; $5253: $25
    jp nz, $e01a                                  ; $5254: $c2 $1a $e0

    ei                                            ; $5257: $fb
    or e                                          ; $5258: $b3
    ld de, $e704                                  ; $5259: $11 $04 $e7
    and l                                         ; $525c: $a5
    ld e, a                                       ; $525d: $5f
    dec sp                                        ; $525e: $3b
    ret nz                                        ; $525f: $c0

    xor h                                         ; $5260: $ac
    sub [hl]                                      ; $5261: $96
    ld b, b                                       ; $5262: $40
    ret nz                                        ; $5263: $c0

    inc de                                        ; $5264: $13
    sub $40                                       ; $5265: $d6 $40

Jump_052_5267:
    rst $18                                       ; $5267: $df
    rst $38                                       ; $5268: $ff
    and e                                         ; $5269: $a3
    ld de, $4a20                                  ; $526a: $11 $20 $4a
    or $44                                        ; $526d: $f6 $44
    dec hl                                        ; $526f: $2b
    ld b, [hl]                                    ; $5270: $46
    ld [$8d8f], sp                                ; $5271: $08 $8f $8d
    ld h, $03                                     ; $5274: $26 $03
    ld d, l                                       ; $5276: $55
    adc h                                         ; $5277: $8c
    ld a, [hl-]                                   ; $5278: $3a
    inc h                                         ; $5279: $24
    dec d                                         ; $527a: $15
    ld [$6ea0], sp                                ; $527b: $08 $a0 $6e
    xor [hl]                                      ; $527e: $ae
    dec a                                         ; $527f: $3d
    ld [hl], c                                    ; $5280: $71
    ld b, e                                       ; $5281: $43
    ld [hl+], a                                   ; $5282: $22
    inc hl                                        ; $5283: $23
    and b                                         ; $5284: $a0
    ld l, [hl]                                    ; $5285: $6e
    xor [hl]                                      ; $5286: $ae
    ld h, c                                       ; $5287: $61
    ld l, $77                                     ; $5288: $2e $77
    inc b                                         ; $528a: $04
    ldh [$2a], a                                  ; $528b: $e0 $2a
    ld sp, hl                                     ; $528d: $f9
    dec sp                                        ; $528e: $3b
    rrca                                          ; $528f: $0f
    ret nc                                        ; $5290: $d0

    ld h, c                                       ; $5291: $61
    db $10                                        ; $5292: $10
    ldh [$2a], a                                  ; $5293: $e0 $2a
    ld sp, hl                                     ; $5295: $f9
    inc bc                                        ; $5296: $03
    ld e, l                                       ; $5297: $5d
    sbc l                                         ; $5298: $9d
    ld l, l                                       ; $5299: $6d
    ld [$4f02], sp                                ; $529a: $08 $02 $4f
    ld l, $35                                     ; $529d: $2e $35
    ld [hl-], a                                   ; $529f: $32
    ld [hl], b                                    ; $52a0: $70
    jp c, $f1c5                                   ; $52a1: $da $c5 $f1

    adc h                                         ; $52a4: $8c
    nop                                           ; $52a5: $00
    ld b, e                                       ; $52a6: $43
    ld b, e                                       ; $52a7: $43
    ld b, e                                       ; $52a8: $43
    ld b, e                                       ; $52a9: $43
    ld b, e                                       ; $52aa: $43
    ld b, e                                       ; $52ab: $43
    ld b, e                                       ; $52ac: $43
    ld b, e                                       ; $52ad: $43
    ld b, e                                       ; $52ae: $43
    ld b, e                                       ; $52af: $43
    ld b, e                                       ; $52b0: $43
    ld b, e                                       ; $52b1: $43
    ld b, e                                       ; $52b2: $43
    ld b, e                                       ; $52b3: $43
    ld b, e                                       ; $52b4: $43
    ld b, e                                       ; $52b5: $43
    ld b, e                                       ; $52b6: $43
    ld b, e                                       ; $52b7: $43
    ld b, e                                       ; $52b8: $43
    ld b, e                                       ; $52b9: $43
    ld b, e                                       ; $52ba: $43
    ld b, e                                       ; $52bb: $43
    ld b, e                                       ; $52bc: $43
    ld b, e                                       ; $52bd: $43
    ld b, e                                       ; $52be: $43
    ld b, e                                       ; $52bf: $43
    ld b, e                                       ; $52c0: $43
    ld b, e                                       ; $52c1: $43
    ld b, e                                       ; $52c2: $43
    ld b, e                                       ; $52c3: $43
    ld b, e                                       ; $52c4: $43
    ld b, e                                       ; $52c5: $43
    ld b, e                                       ; $52c6: $43
    ld b, e                                       ; $52c7: $43
    rrca                                          ; $52c8: $0f

jr_052_52c9:
    and a                                         ; $52c9: $a7
    xor $e4                                       ; $52ca: $ee $e4
    ld l, h                                       ; $52cc: $6c
    ld b, a                                       ; $52cd: $47
    rst $28                                       ; $52ce: $ef
    adc d                                         ; $52cf: $8a
    rst $00                                       ; $52d0: $c7
    ld l, h                                       ; $52d1: $6c
    ld [bc], a                                    ; $52d2: $02
    ld hl, $a87c                                  ; $52d3: $21 $7c $a8
    ld l, [hl]                                    ; $52d6: $6e
    sub $c0                                       ; $52d7: $d6 $c0
    add hl, de                                    ; $52d9: $19

jr_052_52da:
    rst $30                                       ; $52da: $f7
    add sp, $47                                   ; $52db: $e8 $47
    ld [$9918], sp                                ; $52dd: $08 $18 $99
    dec b                                         ; $52e0: $05
    ld hl, $e744                                  ; $52e1: $21 $44 $e7
    pop hl                                        ; $52e4: $e1
    dec sp                                        ; $52e5: $3b
    ld a, d                                       ; $52e6: $7a
    ld [hl], $39                                  ; $52e7: $36 $39
    ld e, e                                       ; $52e9: $5b
    db $fc                                        ; $52ea: $fc
    rra                                           ; $52eb: $1f
    dec a                                         ; $52ec: $3d
    dec l                                         ; $52ed: $2d
    jp hl                                         ; $52ee: $e9


    ld b, a                                       ; $52ef: $47
    inc bc                                        ; $52f0: $03
    sbc e                                         ; $52f1: $9b
    jp nc, $e866                                  ; $52f2: $d2 $66 $e8

    ld l, h                                       ; $52f5: $6c
    or d                                          ; $52f6: $b2
    and e                                         ; $52f7: $a3
    and a                                         ; $52f8: $a7
    dec e                                         ; $52f9: $1d
    cp l                                          ; $52fa: $bd
    ld [hl], h                                    ; $52fb: $74
    jr c, jr_052_52c9                             ; $52fc: $38 $cb

    ld b, [hl]                                    ; $52fe: $46
    rst $08                                       ; $52ff: $cf
    add [hl]                                      ; $5300: $86
    xor a                                         ; $5301: $af

jr_052_5302:
    call c, $9367                                 ; $5302: $dc $67 $93
    dec e                                         ; $5305: $1d
    ld [c], a                                     ; $5306: $e2
    rst $38                                       ; $5307: $ff
    xor d                                         ; $5308: $aa
    sub b                                         ; $5309: $90
    ld h, l                                       ; $530a: $65
    ld d, d                                       ; $530b: $52
    ld c, e                                       ; $530c: $4b
    sbc a                                         ; $530d: $9f
    sbc d                                         ; $530e: $9a
    ld e, c                                       ; $530f: $59
    jp $3df9                                      ; $5310: $c3 $f9 $3d


    jr jr_052_52da                                ; $5313: $18 $c5

    xor b                                         ; $5315: $a8
    jp c, Jump_052_7b33                           ; $5316: $da $33 $7b

    inc b                                         ; $5319: $04
    ld c, a                                       ; $531a: $4f
    jp $ff57                                      ; $531b: $c3 $57 $ff


    rst $10                                       ; $531e: $d7
    ld [$9f7f], a                                 ; $531f: $ea $7f $9f
    and c                                         ; $5322: $a1
    and e                                         ; $5323: $a3
    ld d, a                                       ; $5324: $57
    dec a                                         ; $5325: $3d
    ld b, d                                       ; $5326: $42
    rst $20                                       ; $5327: $e7
    pop hl                                        ; $5328: $e1
    db $d3                                        ; $5329: $d3
    adc [hl]                                      ; $532a: $8e
    ld e, $31                                     ; $532b: $1e $31
    sub h                                         ; $532d: $94
    ld b, [hl]                                    ; $532e: $46
    xor a                                         ; $532f: $af
    call c, $fe97                                 ; $5330: $dc $97 $fe
    ld [hl], a                                    ; $5333: $77
    ld l, [hl]                                    ; $5334: $6e
    ld [hl], b                                    ; $5335: $70
    inc a                                         ; $5336: $3c
    add h                                         ; $5337: $84
    db $fd                                        ; $5338: $fd
    ld e, $aa                                     ; $5339: $1e $aa
    sbc e                                         ; $533b: $9b
    dec [hl]                                      ; $533c: $35
    ld [hl], b                                    ; $533d: $70
    add $3d                                       ; $533e: $c6 $3d
    ld a, d                                       ; $5340: $7a
    jr c, jr_052_5302                             ; $5341: $38 $bf

    rlca                                          ; $5343: $07
    and e                                         ; $5344: $a3
    jr jr_052_539c                                ; $5345: $18 $55

    ld a, e                                       ; $5347: $7b
    ld h, [hl]                                    ; $5348: $66
    ccf                                           ; $5349: $3f
    sub b                                         ; $534a: $90
    dec h                                         ; $534b: $25
    ld h, e                                       ; $534c: $63
    sub [hl]                                      ; $534d: $96
    sbc d                                         ; $534e: $9a
    add $3c                                       ; $534f: $c6 $3c
    ld a, $5e                                     ; $5351: $3e $5e
    or e                                          ; $5353: $b3
    ld d, a                                       ; $5354: $57
    adc l                                         ; $5355: $8d
    add [hl]                                      ; $5356: $86
    sbc l                                         ; $5357: $9d
    ldh a, [$fe]                                  ; $5358: $f0 $fe
    ld l, b                                       ; $535a: $68
    add b                                         ; $535b: $80
    ld b, e                                       ; $535c: $43
    dec sp                                        ; $535d: $3b
    jp hl                                         ; $535e: $e9


    pop de                                        ; $535f: $d1

jr_052_5360:
    or e                                          ; $5360: $b3
    ret                                           ; $5361: $c9


    add h                                         ; $5362: $84
    ld d, a                                       ; $5363: $57
    ld e, l                                       ; $5364: $5d
    inc hl                                        ; $5365: $23
    and [hl]                                      ; $5366: $a6
    ld a, l                                       ; $5367: $7d
    inc [hl]                                      ; $5368: $34
    db $ec                                        ; $5369: $ec
    jp nc, Jump_000_27d1                          ; $536a: $d2 $d1 $27

    ld l, d                                       ; $536d: $6a
    ld l, e                                       ; $536e: $6b
    jp c, $d8c1                                   ; $536f: $da $c1 $d8

    db $f4                                        ; $5372: $f4
    ld c, h                                       ; $5373: $4c
    ld c, d                                       ; $5374: $4a
    sbc e                                         ; $5375: $9b
    or a                                          ; $5376: $b7
    ld sp, hl                                     ; $5377: $f9
    sbc a                                         ; $5378: $9f
    ld d, h                                       ; $5379: $54
    rst $38                                       ; $537a: $ff
    ld [$0847], a                                 ; $537b: $ea $47 $08
    adc a                                         ; $537e: $8f
    ld c, e                                       ; $537f: $4b
    ld c, l                                       ; $5380: $4d
    rrca                                          ; $5381: $0f
    rst $18                                       ; $5382: $df
    dec d                                         ; $5383: $15
    rrca                                          ; $5384: $0f
    ld [$5ea1], sp                                ; $5385: $08 $a1 $5e
    halt                                          ; $5388: $76
    ld b, a                                       ; $5389: $47
    rst $08                                       ; $538a: $cf
    add [hl]                                      ; $538b: $86
    ccf                                           ; $538c: $3f
    ld b, d                                       ; $538d: $42
    rst $08                                       ; $538e: $cf
    ld l, d                                       ; $538f: $6a
    ld h, a                                       ; $5390: $67
    or e                                          ; $5391: $b3
    or c                                          ; $5392: $b1
    and e                                         ; $5393: $a3
    rst $20                                       ; $5394: $e7
    ld b, $c7                                     ; $5395: $06 $c7
    ld b, e                                       ; $5397: $43
    ret c                                         ; $5398: $d8

    rst $28                                       ; $5399: $ef
    inc a                                         ; $539a: $3c
    ld a, h                                       ; $539b: $7c

jr_052_539c:
    ld b, a                                       ; $539c: $47
    adc a                                         ; $539d: $8f
    sbc b                                         ; $539e: $98
    or $65                                        ; $539f: $f6 $65
    ld b, e                                       ; $53a1: $43
    ld h, a                                       ; $53a2: $67
    sub e                                         ; $53a3: $93
    push hl                                       ; $53a4: $e5
    and d                                         ; $53a5: $a2
    cp a                                          ; $53a6: $bf
    ld a, d                                       ; $53a7: $7a
    ld h, $a5                                     ; $53a8: $26 $a5
    dec l                                         ; $53aa: $2d
    call Call_052_68f2                            ; $53ab: $cd $f2 $68
    jr c, jr_052_5360                             ; $53ae: $38 $b0

    add hl, hl                                    ; $53b0: $29
    ld l, l                                       ; $53b1: $6d
    or h                                          ; $53b2: $b4
    ld h, h                                       ; $53b3: $64
    and h                                         ; $53b4: $a4
    ld h, h                                       ; $53b5: $64
    ld sp, hl                                     ; $53b6: $f9
    ld [hl], b                                    ; $53b7: $70

Call_052_53b8:
Jump_052_53b8:
    xor a                                         ; $53b8: $af
    ld e, l                                       ; $53b9: $5d
    call $a3e0                                    ; $53ba: $cd $e0 $a3
    and l                                         ; $53bd: $a5
    ld l, [hl]                                    ; $53be: $6e
    ld h, $35                                     ; $53bf: $26 $35
    ld h, d                                       ; $53c1: $62
    ld l, b                                       ; $53c2: $68
    ld a, [$f94a]                                 ; $53c3: $fa $4a $f9
    dec [hl]                                      ; $53c6: $35
    ld [de], a                                    ; $53c7: $12
    call $011e                                    ; $53c8: $cd $1e $01
    rst $20                                       ; $53cb: $e7
    pop hl                                        ; $53cc: $e1
    ei                                            ; $53cd: $fb
    cp h                                          ; $53ce: $bc
    ld b, a                                       ; $53cf: $47
    cpl                                           ; $53d0: $2f
    ld a, l                                       ; $53d1: $7d
    cp b                                          ; $53d2: $b8
    ld [hl], a                                    ; $53d3: $77
    db $ec                                        ; $53d4: $ec
    sub b                                         ; $53d5: $90
    sub l                                         ; $53d6: $95
    ei                                            ; $53d7: $fb
    cp $a1                                        ; $53d8: $fe $a1
    ld d, h                                       ; $53da: $54
    dec c                                         ; $53db: $0d
    cpl                                           ; $53dc: $2f
    cp a                                          ; $53dd: $bf
    ld hl, $ee19                                  ; $53de: $21 $19 $ee
    ld [hl], c                                    ; $53e1: $71
    xor c                                         ; $53e2: $a9
    and l                                         ; $53e3: $a5
    dec sp                                        ; $53e4: $3b
    ld hl, $6365                                  ; $53e5: $21 $65 $63
    ld [$35d4], a                                 ; $53e8: $ea $d4 $35
    dec de                                        ; $53eb: $1b
    cp [hl]                                       ; $53ec: $be
    ld a, $dc                                     ; $53ed: $3e $dc
    ld h, a                                       ; $53ef: $67
    jr c, jr_052_5421                             ; $53f0: $38 $2f

    adc b                                         ; $53f2: $88
    nop                                           ; $53f3: $00
    adc a                                         ; $53f4: $8f
    ld c, e                                       ; $53f5: $4b
    ld c, l                                       ; $53f6: $4d
    xor e                                         ; $53f7: $ab
    ld e, $ad                                     ; $53f8: $1e $ad
    sbc h                                         ; $53fa: $9c
    ld c, l                                       ; $53fb: $4d
    xor a                                         ; $53fc: $af
    db $f4                                        ; $53fd: $f4

Call_052_53fe:
    reti                                          ; $53fe: $d9


    inc h                                         ; $53ff: $24
    sbc l                                         ; $5400: $9d
    cp $e1                                        ; $5401: $fe $e1
    ld e, $0d                                     ; $5403: $1e $0d
    ld [hl], a                                    ; $5405: $77
    ld e, $be                                     ; $5406: $1e $be
    ld c, h                                       ; $5408: $4c
    sub d                                         ; $5409: $92
    rst $38                                       ; $540a: $ff
    ld h, e                                       ; $540b: $63
    ld a, d                                       ; $540c: $7a
    ld [hl], l                                    ; $540d: $75
    dec l                                         ; $540e: $2d
    ld h, h                                       ; $540f: $64
    ld b, a                                       ; $5410: $47
    rst $10                                       ; $5411: $d7
    cp b                                          ; $5412: $b8
    ld d, e                                       ; $5413: $53
    adc a                                         ; $5414: $8f
    ld e, [hl]                                    ; $5415: $5e
    or l                                          ; $5416: $b5
    ld [hl], d                                    ; $5417: $72
    rra                                           ; $5418: $1f
    rst $00                                       ; $5419: $c7
    ld c, a                                       ; $541a: $4f
    push bc                                       ; $541b: $c5
    db $ec                                        ; $541c: $ec
    ld d, l                                       ; $541d: $55
    inc de                                        ; $541e: $13
    ld e, [hl]                                    ; $541f: $5e
    ld [hl], l                                    ; $5420: $75

jr_052_5421:
    pop bc                                        ; $5421: $c1
    sbc l                                         ; $5422: $9d
    add a                                         ; $5423: $87
    adc a                                         ; $5424: $8f
    cp e                                          ; $5425: $bb
    ld [hl+], a                                   ; $5426: $22
    ld a, c                                       ; $5427: $79
    inc e                                         ; $5428: $1c
    xor e                                         ; $5429: $ab
    ld l, e                                       ; $542a: $6b
    and $5f                                       ; $542b: $e6 $5f
    ld d, d                                       ; $542d: $52
    ei                                            ; $542e: $fb
    ld b, c                                       ; $542f: $41
    xor d                                         ; $5430: $aa
    ld b, a                                       ; $5431: $47
    ld c, e                                       ; $5432: $4b
    ld b, [hl]                                    ; $5433: $46
    ld c, d                                       ; $5434: $4a
    sub [hl]                                      ; $5435: $96
    adc e                                         ; $5436: $8b
    cp $1a                                        ; $5437: $fe $1a
    adc $c3                                       ; $5439: $ce $c3
    dec a                                         ; $543b: $3d
    xor l                                         ; $543c: $ad
    adc $bc                                       ; $543d: $ce $bc
    ld [hl-], a                                   ; $543f: $32
    or $6c                                        ; $5440: $f6 $6c
    ld a, [$99f1]                                 ; $5442: $fa $f1 $99
    or e                                          ; $5445: $b3
    ld hl, $c9b3                                  ; $5446: $21 $b3 $c9
    db $f4                                        ; $5449: $f4
    ei                                            ; $544a: $fb
    rst $38                                       ; $544b: $ff
    jp nc, $66a7                                  ; $544c: $d2 $a7 $66

    sub $68                                       ; $544f: $d6 $68
    ld e, b                                       ; $5451: $58
    adc b                                         ; $5452: $88
    nop                                           ; $5453: $00
    rst $20                                       ; $5454: $e7
    ld hl, $8ed3                                  ; $5455: $21 $d3 $8e
    sbc $0f                                       ; $5458: $de $0f
    ld [de], a                                    ; $545a: $12
    or d                                          ; $545b: $b2
    inc e                                         ; $545c: $1c
    cp l                                          ; $545d: $bd
    dec hl                                        ; $545e: $2b
    sbc $91                                       ; $545f: $de $91
    ld [hl], e                                    ; $5461: $73
    adc c                                         ; $5462: $89
    cpl                                           ; $5463: $2f
    ld [hl], c                                    ; $5464: $71
    adc b                                         ; $5465: $88
    nop                                           ; $5466: $00
    rst $20                                       ; $5467: $e7
    or c                                          ; $5468: $b1
    and e                                         ; $5469: $a3
    rst $20                                       ; $546a: $e7
    ld a, [hl-]                                   ; $546b: $3a
    cp a                                          ; $546c: $bf
    ld e, h                                       ; $546d: $5c
    inc h                                         ; $546e: $24
    ld a, d                                       ; $546f: $7a
    ld a, [hl]                                    ; $5470: $7e
    rst $38                                       ; $5471: $ff
    sbc a                                         ; $5472: $9f
    ld c, l                                       ; $5473: $4d
    sub [hl]                                      ; $5474: $96
    ld c, $ed                                     ; $5475: $0e $ed
    and h                                         ; $5477: $a4
    ld b, a                                       ; $5478: $47
    jp $879d                                      ; $5479: $c3 $9d $87


    inc l                                         ; $547c: $2c
    and h                                         ; $547d: $a4
    halt                                          ; $547e: $76
    db $f4                                        ; $547f: $f4
    add b                                         ; $5480: $80
    sbc c                                         ; $5481: $99
    ld a, a                                       ; $5482: $7f
    call $9740                                    ; $5483: $cd $40 $97
    cp d                                          ; $5486: $ba
    ld h, a                                       ; $5487: $67
    or e                                          ; $5488: $b3
    ld b, a                                       ; $5489: $47
    rst $08                                       ; $548a: $cf
    ld h, $cb                                     ; $548b: $26 $cb
    ld a, b                                       ; $548d: $78
    ld [hl], l                                    ; $548e: $75
    push af                                       ; $548f: $f5
    db $ec                                        ; $5490: $ec
    sub l                                         ; $5491: $95
    ld de, $9ed3                                  ; $5492: $11 $d3 $9e
    adc e                                         ; $5495: $8b
    cp $2b                                        ; $5496: $fe $2b
    ld a, [bc]                                    ; $5498: $0a
    ld [hl+], a                                   ; $5499: $22
    rst $20                                       ; $549a: $e7
    ld hl, $b12b                                  ; $549b: $21 $2b $b1
    ld e, l                                       ; $549e: $5d
    bit 0, l                                      ; $549f: $cb $45
    ld b, d                                       ; $54a1: $42
    ld h, [hl]                                    ; $54a2: $66
    sub e                                         ; $54a3: $93
    and l                                         ; $54a4: $a5
    ld b, e                                       ; $54a5: $43
    dec sp                                        ; $54a6: $3b
    jp hl                                         ; $54a7: $e9


    pop de                                        ; $54a8: $d1
    dec sp                                        ; $54a9: $3b
    ld a, d                                       ; $54aa: $7a
    ret nz                                        ; $54ab: $c0

jr_052_54ac:
    call z, Call_052_66bf                         ; $54ac: $cc $bf $66
    jr jr_052_54ac                                ; $54af: $18 $fb

    ld [c], a                                     ; $54b1: $e2
    rst $38                                       ; $54b2: $ff
    and [hl]                                      ; $54b3: $a6
    sub d                                         ; $54b4: $92
    inc c                                         ; $54b5: $0c
    ld [hl], a                                    ; $54b6: $77
    sbc [hl]                                      ; $54b7: $9e
    db $ec                                        ; $54b8: $ec
    sub a                                         ; $54b9: $97
    ld [$d9ea], a                                 ; $54ba: $ea $ea $d9
    dec hl                                        ; $54bd: $2b
    dec [hl]                                      ; $54be: $35
    ld h, d                                       ; $54bf: $62
    jp c, $a189                                   ; $54c0: $da $89 $a1

    jp hl                                         ; $54c3: $e9


    dec hl                                        ; $54c4: $2b
    push hl                                       ; $54c5: $e5
    rst $10                                       ; $54c6: $d7
    ld c, b                                       ; $54c7: $48
    db $f4                                        ; $54c8: $f4
    xor $6c                                       ; $54c9: $ee $6c
    ld [$e3dc], sp                                ; $54cb: $08 $dc $e3
    ld d, d                                       ; $54ce: $52
    ld d, e                                       ; $54cf: $53
    pop de                                        ; $54d0: $d1
    or e                                          ; $54d1: $b3
    ld d, a                                       ; $54d2: $57
    ld c, l                                       ; $54d3: $4d
    ld a, b                                       ; $54d4: $78
    push de                                       ; $54d5: $d5
    dec [hl]                                      ; $54d6: $35
    ld h, d                                       ; $54d7: $62
    ld l, b                                       ; $54d8: $68
    ld a, [$f94a]                                 ; $54d9: $fa $4a $f9
    dec [hl]                                      ; $54dc: $35
    ld [de], a                                    ; $54dd: $12
    dec a                                         ; $54de: $3d
    push de                                       ; $54df: $d5
    push hl                                       ; $54e0: $e5
    scf                                           ; $54e1: $37
    or e                                          ; $54e2: $b3
    ld b, a                                       ; $54e3: $47
    jr jr_052_5511                                ; $54e4: $18 $2b

    ld b, l                                       ; $54e6: $45
    adc $66                                       ; $54e7: $ce $66
    jp Jump_052_57a7                              ; $54e9: $c3 $a7 $57


    adc a                                         ; $54ec: $8f
    or d                                          ; $54ed: $b2
    ld d, d                                       ; $54ee: $52
    inc h                                         ; $54ef: $24
    ld a, h                                       ; $54f0: $7c
    ld e, c                                       ; $54f1: $59
    adc [hl]                                      ; $54f2: $8e
    rst $38                                       ; $54f3: $ff
    dec e                                         ; $54f4: $1d
    ld [hl+], a                                   ; $54f5: $22
    rst $20                                       ; $54f6: $e7
    pop hl                                        ; $54f7: $e1
    db $d3                                        ; $54f8: $d3
    xor e                                         ; $54f9: $ab
    sub a                                         ; $54fa: $97
    ld sp, hl                                     ; $54fb: $f9
    db $fd                                        ; $54fc: $fd
    db $eb                                        ; $54fd: $eb
    ld bc, $f8f7                                  ; $54fe: $01 $f7 $f8
    sub h                                         ; $5501: $94
    ld [hl], e                                    ; $5502: $73
    db $e4                                        ; $5503: $e4
    or e                                          ; $5504: $b3
    jp hl                                         ; $5505: $e9


    add a                                         ; $5506: $87
    ld a, b                                       ; $5507: $78
    call $ffef                                    ; $5508: $cd $ef $ff
    ld a, c                                       ; $550b: $79
    call z, Call_052_4b52                         ; $550c: $cc $52 $4b
    ld b, a                                       ; $550f: $47
    rra                                           ; $5510: $1f

jr_052_5511:
    xor $d5                                       ; $5511: $ee $d5
    db $e3                                        ; $5513: $e3
    ld c, [hl]                                    ; $5514: $4e
    dec a                                         ; $5515: $3d
    push de                                       ; $5516: $d5
    sub l                                         ; $5517: $95
    ld c, [hl]                                    ; $5518: $4e
    ld d, a                                       ; $5519: $57
    ld c, e                                       ; $551a: $4b
    xor l                                         ; $551b: $ad
    call c, Call_000_2cc7                         ; $551c: $dc $c7 $2c
    dec [hl]                                      ; $551f: $35
    xor l                                         ; $5520: $ad
    ld a, d                                       ; $5521: $7a
    ld a, [de]                                    ; $5522: $1a
    di                                            ; $5523: $f3
    ld hl, sp-$48                                 ; $5524: $f8 $b8
    rst $28                                       ; $5526: $ef
    and c                                         ; $5527: $a1
    cp d                                          ; $5528: $ba
    ld e, c                                       ; $5529: $59
    inc bc                                        ; $552a: $03
    ld h, a                                       ; $552b: $67
    call c, $d9a3                                 ; $552c: $dc $a3 $d9
    inc hl                                        ; $552f: $23
    rrca                                          ; $5530: $0f
    ld b, $c7                                     ; $5531: $06 $c7
    dec hl                                        ; $5533: $2b
    xor a                                         ; $5534: $af
    call c, $9367                                 ; $5535: $dc $67 $93
    xor c                                         ; $5538: $a9
    ei                                            ; $5539: $fb
    ld a, a                                       ; $553a: $7f
    push af                                       ; $553b: $f5
    adc b                                         ; $553c: $88
    ld l, c                                       ; $553d: $69
    rrca                                          ; $553e: $0f
    ld h, c                                       ; $553f: $61
    cp a                                          ; $5540: $bf
    and a                                         ; $5541: $a7
    ld [hl], a                                    ; $5542: $77
    add hl, sp                                    ; $5543: $39
    ld a, [c]                                     ; $5544: $f2
    ld [hl], b                                    ; $5545: $70
    ld a, [hl]                                    ; $5546: $7e
    rrca                                          ; $5547: $0f
    ld b, [hl]                                    ; $5548: $46
    ld sp, $f6aa                                  ; $5549: $31 $aa $f6
    call z, $011e                                 ; $554c: $cc $1e $01
    add b                                         ; $554f: $80
    adc a                                         ; $5550: $8f
    db $ec                                        ; $5551: $ec
    dec hl                                        ; $5552: $2b
    rst $30                                       ; $5553: $f7
    ld sp, $ed4b                                  ; $5554: $31 $4b $ed
    adc d                                         ; $5557: $8a
    rst $00                                       ; $5558: $c7
    inc d                                         ; $5559: $14
    rst $18                                       ; $555a: $df
    ld c, e                                       ; $555b: $4b
    ld [hl], b                                    ; $555c: $70
    ld a, h                                       ; $555d: $7c
    or $3a                                        ; $555e: $f6 $3a
    call c, Call_000_3443                         ; $5560: $dc $43 $34
    cp l                                          ; $5563: $bd
    ld b, [hl]                                    ; $5564: $46
    ld h, d                                       ; $5565: $62
    call nz, $1a50                                ; $5566: $c4 $50 $1a
    dec a                                         ; $5569: $3d
    ld sp, $e56a                                  ; $556a: $31 $6a $e5
    cp [hl]                                       ; $556d: $be
    ld c, h                                       ; $556e: $4c
    ld a, [$1a92]                                 ; $556f: $fa $92 $1a
    rst $28                                       ; $5572: $ef
    and e                                         ; $5573: $a3
    ld d, a                                       ; $5574: $57
    ld b, c                                       ; $5575: $41
    inc b                                         ; $5576: $04
    rst $08                                       ; $5577: $cf
    inc bc                                        ; $5578: $03
    dec sp                                        ; $5579: $3b
    ld [hl], l                                    ; $557a: $75
    ld a, $3e                                     ; $557b: $3e $3e
    ld d, e                                       ; $557d: $53
    xor [hl]                                      ; $557e: $ae
    xor b                                         ; $557f: $a8
    sub b                                         ; $5580: $90
    sub l                                         ; $5581: $95
    ld a, $ee                                     ; $5582: $3e $ee

Call_052_5584:
    call nc, $f941                                ; $5584: $d4 $41 $f9
    ccf                                           ; $5587: $3f
    cp a                                          ; $5588: $bf
    rst $38                                       ; $5589: $ff
    xor a                                         ; $558a: $af
    cpl                                           ; $558b: $2f
    db $fd                                        ; $558c: $fd
    ld d, a                                       ; $558d: $57
    push de                                       ; $558e: $d5
    ldh a, [$be]                                  ; $558f: $f0 $be
    add hl, sp                                    ; $5591: $39
    ld a, d                                       ; $5592: $7a
    ld e, d                                       ; $5593: $5a
    push af                                       ; $5594: $f5
    inc h                                         ; $5595: $24
    reti                                          ; $5596: $d9


    add hl, bc                                    ; $5597: $09
    rst $00                                       ; $5598: $c7
    and l                                         ; $5599: $a5
    ld a, h                                       ; $559a: $7c
    ld [hl], a                                    ; $559b: $77
    call nz, $e7b4                                ; $559c: $c4 $b4 $e7
    and d                                         ; $559f: $a2
    cp a                                          ; $55a0: $bf
    sbc d                                         ; $55a1: $9a
    db $fc                                        ; $55a2: $fc
    inc h                                         ; $55a3: $24
    sbc l                                         ; $55a4: $9d
    ld c, $81                                     ; $55a5: $0e $81
    inc bc                                        ; $55a7: $03
    ld a, c                                       ; $55a8: $79
    jp nz, $c347                                  ; $55a9: $c2 $47 $c3

    sub [hl]                                      ; $55ac: $96
    call z, $8f86                                 ; $55ad: $cc $86 $8f
    cp e                                          ; $55b0: $bb
    ld [hl+], a                                   ; $55b1: $22
    ld a, c                                       ; $55b2: $79
    ld b, h                                       ; $55b3: $44
    xor a                                         ; $55b4: $af
    add [hl]                                      ; $55b5: $86
    jp Jump_000_3624                              ; $55b6: $c3 $24 $36


    jp c, Jump_052_4523                           ; $55b9: $da $23 $45

    and h                                         ; $55bc: $a4
    db $fc                                        ; $55bd: $fc
    ld l, h                                       ; $55be: $6c
    ret nz                                        ; $55bf: $c0

    ld a, [hl-]                                   ; $55c0: $3a
    db $ec                                        ; $55c1: $ec
    ld c, h                                       ; $55c2: $4c
    ld c, d                                       ; $55c3: $4a
    dec de                                        ; $55c4: $1b
    ldh a, [$30]                                  ; $55c5: $f0 $30
    xor l                                         ; $55c7: $ad
    ld [c], a                                     ; $55c8: $e2
    ld a, c                                       ; $55c9: $79
    inc b                                         ; $55ca: $04
    ld c, a                                       ; $55cb: $4f
    adc a                                         ; $55cc: $8f
    rst $08                                       ; $55cd: $cf
    ld e, h                                       ; $55ce: $5c
    ret z                                         ; $55cf: $c8

    ld a, [hl]                                    ; $55d0: $7e
    db $10                                        ; $55d1: $10
    adc b                                         ; $55d2: $88
    nop                                           ; $55d3: $00
    rst $08                                       ; $55d4: $cf
    ccf                                           ; $55d5: $3f
    ld c, [hl]                                    ; $55d6: $4e
    or d                                          ; $55d7: $b2
    daa                                           ; $55d8: $27
    ld a, c                                       ; $55d9: $79
    ldh [$ee], a                                  ; $55da: $e0 $ee
    rst $38                                       ; $55dc: $ff
    sub a                                         ; $55dd: $97
    pop de                                        ; $55de: $d1
    ld c, l                                       ; $55df: $4d
    sub c                                         ; $55e0: $91
    rra                                           ; $55e1: $1f
    rst $08                                       ; $55e2: $cf
    cp a                                          ; $55e3: $bf
    db $fc                                        ; $55e4: $fc
    add e                                         ; $55e5: $83
    jr nz, @-$2f                                  ; $55e6: $20 $cf

    inc bc                                        ; $55e8: $03
    ld c, a                                       ; $55e9: $4f
    cp $bf                                        ; $55ea: $fe $bf
    ld a, d                                       ; $55ec: $7a
    db $f4                                        ; $55ed: $f4
    ret nz                                        ; $55ee: $c0

    add hl, de                                    ; $55ef: $19
    ld [de], a                                    ; $55f0: $12
    ld l, c                                       ; $55f1: $69
    sub $f3                                       ; $55f2: $d6 $f3
    cpl                                           ; $55f4: $2f
    rst $38                                       ; $55f5: $ff
    jr nz, jr_052_5600                            ; $55f6: $20 $08

    rst $08                                       ; $55f8: $cf
    ccf                                           ; $55f9: $3f
    ld sp, hl                                     ; $55fa: $f9
    scf                                           ; $55fb: $37
    sub e                                         ; $55fc: $93
    xor e                                         ; $55fd: $ab
    ld h, d                                       ; $55fe: $62
    ret nz                                        ; $55ff: $c0

jr_052_5600:
    dec sp                                        ; $5600: $3b
    sub h                                         ; $5601: $94
    ld l, c                                       ; $5602: $69
    sub $f3                                       ; $5603: $d6 $f3
    cpl                                           ; $5605: $2f
    rst $38                                       ; $5606: $ff
    jr nz, jr_052_5611                            ; $5607: $20 $08

    rst $08                                       ; $5609: $cf
    add e                                         ; $560a: $83
    adc [hl]                                      ; $560b: $8e
    ld h, [hl]                                    ; $560c: $66
    call nz, $d992                                ; $560d: $c4 $92 $d9
    sub b                                         ; $5610: $90

jr_052_5611:
    add c                                         ; $5611: $81
    ld h, [hl]                                    ; $5612: $66
    ld h, l                                       ; $5613: $65
    cp a                                          ; $5614: $bf
    sbc c                                         ; $5615: $99
    call nz, Call_000_2ff3                        ; $5616: $c4 $f3 $2f
    rst $38                                       ; $5619: $ff
    jr nz, jr_052_5624                            ; $561a: $20 $08

    ld h, b                                       ; $561c: $60
    sbc e                                         ; $561d: $9b
    ld a, [$3621]                                 ; $561e: $fa $21 $36
    ld a, [$966c]                                 ; $5621: $fa $6c $96

jr_052_5624:
    ld a, a                                       ; $5624: $7f
    or h                                          ; $5625: $b4
    and a                                         ; $5626: $a7
    pop hl                                        ; $5627: $e1
    or e                                          ; $5628: $b3
    ret                                           ; $5629: $c9


    add h                                         ; $562a: $84
    ld d, a                                       ; $562b: $57
    add $67                                       ; $562c: $c6 $67
    add sp, $6c                                   ; $562e: $e8 $6c
    ret nc                                        ; $5630: $d0

    ld b, a                                       ; $5631: $47
    ld [$9860], sp                                ; $5632: $08 $60 $98
    ld [hl], l                                    ; $5635: $75
    ld [hl], $bc                                  ; $5636: $36 $bc
    dec c                                         ; $5638: $0d
    rla                                           ; $5639: $17
    add hl, sp                                    ; $563a: $39
    sbc e                                         ; $563b: $9b
    sbc $13                                       ; $563c: $de $13
    cp h                                          ; $563e: $bc
    ld c, l                                       ; $563f: $4d
    ld [c], a                                     ; $5640: $e2
    db $d3                                        ; $5641: $d3
    jp z, $f0c6                                   ; $5642: $ca $c6 $f0

    ld [hl], $e9                                  ; $5645: $36 $e9
    rra                                           ; $5647: $1f
    ld [hl], h                                    ; $5648: $74
    inc [hl]                                      ; $5649: $34
    ld h, $bc                                     ; $564a: $26 $bc
    ld [$699a], a                                 ; $564c: $ea $9a $69
    ld e, d                                       ; $564f: $5a
    cp l                                          ; $5650: $bd
    call nz, $fa63                                ; $5651: $c4 $63 $fa
    or l                                          ; $5654: $b5
    db $d3                                        ; $5655: $d3
    rrca                                          ; $5656: $0f
    add $ae                                       ; $5657: $c6 $ae
    dec h                                         ; $5659: $25
    add hl, sp                                    ; $565a: $39
    inc b                                         ; $565b: $04
    ld c, $0c                                     ; $565c: $0e $0c
    xor a                                         ; $565e: $af
    cp d                                          ; $565f: $ba
    ld d, [hl]                                    ; $5660: $56
    ld a, [$746c]                                 ; $5661: $fa $6c $74
    push hl                                       ; $5664: $e5
    ld sp, hl                                     ; $5665: $f9
    ld hl, $7a36                                  ; $5666: $21 $36 $7a
    and h                                         ; $5669: $a4
    inc h                                         ; $566a: $24
    sub e                                         ; $566b: $93
    jr jr_052_56e5                                ; $566c: $18 $77

    ld b, l                                       ; $566e: $45
    ld a, [c]                                     ; $566f: $f2
    adc b                                         ; $5670: $88
    ld e, [hl]                                    ; $5671: $5e
    dec c                                         ; $5672: $0d
    ld de, $2b18                                  ; $5673: $11 $18 $2b
    ld b, l                                       ; $5676: $45
    adc $f6                                       ; $5677: $ce $f6
    ld d, b                                       ; $5679: $50
    xor d                                         ; $567a: $aa
    xor a                                         ; $567b: $af
    add l                                         ; $567c: $85
    ld [$31e7], sp                                ; $567d: $08 $e7 $31
    cp l                                          ; $5680: $bd
    sub [hl]                                      ; $5681: $96
    ld sp, hl                                     ; $5682: $f9
    db $fd                                        ; $5683: $fd
    db $eb                                        ; $5684: $eb
    ld bc, $b8f7                                  ; $5685: $01 $f7 $b8
    sub [hl]                                      ; $5688: $96
    ld c, c                                       ; $5689: $49
    ld a, [c]                                     ; $568a: $f2
    ld a, a                                       ; $568b: $7f
    ld c, h                                       ; $568c: $4c
    dec e                                         ; $568d: $1d
    dec l                                         ; $568e: $2d
    dec [hl]                                      ; $568f: $35
    adc l                                         ; $5690: $8d
    ld a, c                                       ; $5691: $79
    ld a, h                                       ; $5692: $7c
    cp h                                          ; $5693: $bc
    ld h, [hl]                                    ; $5694: $66
    add e                                         ; $5695: $83
    add hl, sp                                    ; $5696: $39
    ld a, [hl]                                    ; $5697: $7e
    ccf                                           ; $5698: $3f
    cp h                                          ; $5699: $bc
    adc $46                                       ; $569a: $ce $46
    ld b, e                                       ; $569c: $43
    add $ac                                       ; $569d: $c6 $ac
    ld l, c                                       ; $569f: $69
    push de                                       ; $56a0: $d5
    jp Jump_052_523b                              ; $56a1: $c3 $3b $52


    scf                                           ; $56a4: $37
    cpl                                           ; $56a5: $2f
    dec e                                         ; $56a6: $1d
    add hl, de                                    ; $56a7: $19
    rst $28                                       ; $56a8: $ef
    call nz, $27cb                                ; $56a9: $c4 $cb $27
    cp h                                          ; $56ac: $bc
    ld [$265a], a                                 ; $56ad: $ea $5a $26
    push af                                       ; $56b0: $f5
    db $d3                                        ; $56b1: $d3
    and l                                         ; $56b2: $a5
    ld d, h                                       ; $56b3: $54
    push af                                       ; $56b4: $f5
    ld [hl], b                                    ; $56b5: $70
    ld a, [hl]                                    ; $56b6: $7e
    jp hl                                         ; $56b7: $e9


    ld [hl+], a                                   ; $56b8: $22
    ld sp, hl                                     ; $56b9: $f9
    jp c, $6592                                   ; $56ba: $da $92 $65

    ld a, [hl]                                    ; $56bd: $7e
    sub d                                         ; $56be: $92
    inc l                                         ; $56bf: $2c
    dec e                                         ; $56c0: $1d
    jp c, $8f49                                   ; $56c1: $da $49 $8f

    ld e, $b3                                     ; $56c4: $1e $b3
    ld d, $32                                     ; $56c6: $16 $32
    ld c, a                                       ; $56c8: $4f
    ld [hl], b                                    ; $56c9: $70
    db $fc                                        ; $56ca: $fc
    daa                                           ; $56cb: $27
    dec c                                         ; $56cc: $0d
    ld de, $c10f                                  ; $56cd: $11 $0f $c1
    inc a                                         ; $56d0: $3c
    dec de                                        ; $56d1: $1b
    sbc $86                                       ; $56d2: $de $86
    adc e                                         ; $56d4: $8b
    sbc h                                         ; $56d5: $9c
    ld c, l                                       ; $56d6: $4d
    rst $28                                       ; $56d7: $ef
    add hl, bc                                    ; $56d8: $09
    sbc $26                                       ; $56d9: $de $26
    ld [hl], c                                    ; $56db: $71
    adc b                                         ; $56dc: $88
    nop                                           ; $56dd: $00
    rrca                                          ; $56de: $0f
    pop bc                                        ; $56df: $c1
    inc a                                         ; $56e0: $3c
    db $db                                        ; $56e1: $db
    ld b, e                                       ; $56e2: $43
    ld [hl], l                                    ; $56e3: $75
    or e                                          ; $56e4: $b3

jr_052_56e5:
    adc $a6                                       ; $56e5: $ce $a6
    sub a                                         ; $56e7: $97
    sbc l                                         ; $56e8: $9d
    ld a, [hl-]                                   ; $56e9: $3a
    push af                                       ; $56ea: $f5
    ld l, h                                       ; $56eb: $6c
    ld [hl-], a                                   ; $56ec: $32
    db $ed                                        ; $56ed: $ed
    add sp, $25                                   ; $56ee: $e8 $25

jr_052_56f0:
    ld e, $8f                                     ; $56f0: $1e $8f
    db $10                                        ; $56f2: $10
    ldh [$da], a                                  ; $56f3: $e0 $da
    ld [hl], b                                    ; $56f5: $70
    sub c                                         ; $56f6: $91
    or e                                          ; $56f7: $b3
    jp hl                                         ; $56f8: $e9


    dec a                                         ; $56f9: $3d
    sub c                                         ; $56fa: $91
    jp nz, $9963                                  ; $56fb: $c2 $63 $99

    call c, $2914                                 ; $56fe: $dc $14 $29
    dec de                                        ; $5701: $1b
    ld c, e                                       ; $5702: $4b
    ld a, h                                       ; $5703: $7c
    db $f4                                        ; $5704: $f4
    xor d                                         ; $5705: $aa
    ld [hl], c                                    ; $5706: $71
    and a                                         ; $5707: $a7
    ld e, [hl]                                    ; $5708: $5e
    cp c                                          ; $5709: $b9
    rst $28                                       ; $570a: $ef
    add a                                         ; $570b: $87
    rst $10                                       ; $570c: $d7
    add d                                         ; $570d: $82
    di                                            ; $570e: $f3
    add sp, -$67                                  ; $570f: $e8 $99
    and [hl]                                      ; $5711: $a6
    ld a, [hl]                                    ; $5712: $7e
    adc b                                         ; $5713: $88
    adc l                                         ; $5714: $8d
    sbc [hl]                                      ; $5715: $9e
    ld c, c                                       ; $5716: $49
    ld l, c                                       ; $5717: $69
    ld a, e                                       ; $5718: $7b
    jr z, jr_052_56f0                             ; $5719: $28 $d5

    rst $10                                       ; $571b: $d7
    ld l, $d7                                     ; $571c: $2e $d7
    jp z, Jump_000_367d                           ; $571e: $ca $7d $36

    ld a, h                                       ; $5721: $7c
    and h                                         ; $5722: $a4
    inc h                                         ; $5723: $24
    sub e                                         ; $5724: $93
    jr jr_052_577e                                ; $5725: $18 $57

    ld [hl+], a                                   ; $5727: $22
    ld a, c                                       ; $5728: $79
    jp nz, $aeab                                  ; $5729: $c2 $ab $ae

    ld l, c                                       ; $572c: $69
    ld b, a                                       ; $572d: $47
    ld b, e                                       ; $572e: $43
    inc b                                         ; $572f: $04
    rst $20                                       ; $5730: $e7
    pop hl                                        ; $5731: $e1
    inc hl                                        ; $5732: $23
    dec h                                         ; $5733: $25
    or e                                          ; $5734: $b3
    pop hl                                        ; $5735: $e1
    ld d, e                                       ; $5736: $53
    and a                                         ; $5737: $a7
    ld l, $08                                     ; $5738: $2e $08
    and c                                         ; $573a: $a1
    ld c, c                                       ; $573b: $49
    ld l, c                                       ; $573c: $69
    inc sp                                        ; $573d: $33
    ld c, l                                       ; $573e: $4d
    xor e                                         ; $573f: $ab
    sub a                                         ; $5740: $97
    dec c                                         ; $5741: $0d
    sbc l                                         ; $5742: $9d
    adc l                                         ; $5743: $8d
    ld l, c                                       ; $5744: $69
    and a                                         ; $5745: $a7
    sbc [hl]                                      ; $5746: $9e
    rst $18                                       ; $5747: $df
    rst $38                                       ; $5748: $ff
    ld h, a                                       ; $5749: $67
    ld d, d                                       ; $574a: $52
    inc h                                         ; $574b: $24
    di                                            ; $574c: $f3
    db $10                                        ; $574d: $10
    ld bc, $f5cf                                  ; $574e: $01 $cf $f5
    ld l, h                                       ; $5751: $6c
    ld hl, sp+$0c                                 ; $5752: $f8 $0c
    add hl, bc                                    ; $5754: $09
    and $0c                                       ; $5755: $e6 $0c
    dec e                                         ; $5757: $1d
    or e                                          ; $5758: $b3
    call nc, Call_052_787e                        ; $5759: $d4 $7e $78
    push af                                       ; $575c: $f5
    cp $f5                                        ; $575d: $fe $f5
    ld a, b                                       ; $575f: $78
    add h                                         ; $5760: $84
    nop                                           ; $5761: $00
    ret nz                                        ; $5762: $c0

    ld c, a                                       ; $5763: $4f
    cp l                                          ; $5764: $bd
    ld l, h                                       ; $5765: $6c
    add sp, $6c                                   ; $5766: $e8 $6c
    ld [hl-], a                                   ; $5768: $32
    db $fd                                        ; $5769: $fd
    cp $7f                                        ; $576a: $fe $7f
    ld [hl], $1a                                  ; $576c: $36 $1a
    ld [hl-], a                                   ; $576e: $32
    cp l                                          ; $576f: $bd
    ld a, d                                       ; $5770: $7a
    call c, $f3a9                                 ; $5771: $dc $a9 $f3
    dec h                                         ; $5774: $25
    ld a, [hl]                                    ; $5775: $7e
    dec d                                         ; $5776: $15
    ld b, h                                       ; $5777: $44
    and b                                         ; $5778: $a0
    ld e, c                                       ; $5779: $59
    add hl, hl                                    ; $577a: $29
    ld [de], a                                    ; $577b: $12
    cp [hl]                                       ; $577c: $be
    ld [hl], h                                    ; $577d: $74

jr_052_577e:
    rst $10                                       ; $577e: $d7
    reti                                          ; $577f: $d9


    ld e, $aa                                     ; $5780: $1e $aa
    sbc e                                         ; $5782: $9b
    dec b                                         ; $5783: $05
    rst $30                                       ; $5784: $f7
    cp b                                          ; $5785: $b8
    call nc, $f454                                ; $5786: $d4 $54 $f4
    db $ec                                        ; $5789: $ec
    ld d, l                                       ; $578a: $55
    ld a, e                                       ; $578b: $7b
    ld l, l                                       ; $578c: $6d
    cp b                                          ; $578d: $b8
    add hl, sp                                    ; $578e: $39
    ld b, h                                       ; $578f: $44
    adc l                                         ; $5790: $8d
    dec sp                                        ; $5791: $3b
    push af                                       ; $5792: $f5
    adc h                                         ; $5793: $8c
    add $ea                                       ; $5794: $c6 $ea
    ld c, b                                       ; $5796: $48
    rlca                                          ; $5797: $07
    add hl, sp                                    ; $5798: $39
    jr z, jr_052_57c9                             ; $5799: $28 $2e

    ld d, a                                       ; $579b: $57
    inc d                                         ; $579c: $14
    ld b, h                                       ; $579d: $44
    add b                                         ; $579e: $80
    cp e                                          ; $579f: $bb
    adc $a6                                       ; $57a0: $ce $a6
    dec e                                         ; $57a2: $1d
    cp l                                          ; $57a3: $bd
    and e                                         ; $57a4: $a3
    ld h, a                                       ; $57a5: $67
    sbc d                                         ; $57a6: $9a

Jump_052_57a7:
    ld a, [$3621]                                 ; $57a7: $fa $21 $36
    ld e, d                                       ; $57aa: $5a
    ld l, d                                       ; $57ab: $6a
    call z, Call_052_4b52                         ; $57ac: $cc $52 $4b
    add a                                         ; $57af: $87
    halt                                          ; $57b0: $76
    jp nc, $21a3                                  ; $57b1: $d2 $a3 $21

    ld [bc], a                                    ; $57b4: $02
    ld c, a                                       ; $57b5: $4f
    ld hl, sp-$27                                 ; $57b6: $f8 $d9
    ldh a, [rBCPD]                                ; $57b8: $f0 $69
    ld b, a                                       ; $57ba: $47
    rst $28                                       ; $57bb: $ef
    add sp, -$27                                  ; $57bc: $e8 $d9
    db $eb                                        ; $57be: $eb
    ld e, [hl]                                    ; $57bf: $5e
    jp nz, Jump_000_0882                          ; $57c0: $c2 $82 $08

    add b                                         ; $57c3: $80
    cp e                                          ; $57c4: $bb
    adc $46                                       ; $57c5: $ce $46
    and e                                         ; $57c7: $a3
    ld h, a                                       ; $57c8: $67

jr_052_57c9:
    xor a                                         ; $57c9: $af
    ld a, e                                       ; $57ca: $7b
    add hl, bc                                    ; $57cb: $09
    dec bc                                        ; $57cc: $0b
    ld [hl+], a                                   ; $57cd: $22
    and b                                         ; $57ce: $a0
    ld c, e                                       ; $57cf: $4b
    ld b, [hl]                                    ; $57d0: $46
    ld c, d                                       ; $57d1: $4a
    ld d, [hl]                                    ; $57d2: $56
    rst $18                                       ; $57d3: $df
    or $55                                        ; $57d4: $f6 $55
    db $e3                                        ; $57d6: $e3

jr_052_57d7:
    ld hl, sp+$71                                 ; $57d7: $f8 $71
    and a                                         ; $57d9: $a7
    ld e, $65                                     ; $57da: $1e $65
    and l                                         ; $57dc: $a5
    ld c, b                                       ; $57dd: $48
    ld hl, sp-$14                                 ; $57de: $f8 $ec
    ld [hl], l                                    ; $57e0: $75
    cpl                                           ; $57e1: $2f
    ld h, c                                       ; $57e2: $61
    ld b, c                                       ; $57e3: $41
    inc b                                         ; $57e4: $04
    ld h, b                                       ; $57e5: $60
    sub d                                         ; $57e6: $92

jr_052_57e7:
    ld l, c                                       ; $57e7: $69
    push de                                       ; $57e8: $d5
    ld h, e                                       ; $57e9: $63
    sub [hl]                                      ; $57ea: $96
    ld a, [de]                                    ; $57eb: $1a
    ld h, l                                       ; $57ec: $65
    and l                                         ; $57ed: $a5
    ld c, b                                       ; $57ee: $48
    ld hl, sp-$14                                 ; $57ef: $f8 $ec
    ld [hl], l                                    ; $57f1: $75
    cpl                                           ; $57f2: $2f
    ld h, c                                       ; $57f3: $61
    ld b, c                                       ; $57f4: $41
    inc b                                         ; $57f5: $04
    rst $20                                       ; $57f6: $e7
    pop hl                                        ; $57f7: $e1
    dec sp                                        ; $57f8: $3b
    ld a, d                                       ; $57f9: $7a
    ld b, l                                       ; $57fa: $45
    adc h                                         ; $57fb: $8c
    ld e, h                                       ; $57fc: $5c
    add a                                         ; $57fd: $87
    ld [$bb80], sp                                ; $57fe: $08 $80 $bb
    adc $46                                       ; $5801: $ce $46
    and e                                         ; $5803: $a3
    ld d, a                                       ; $5804: $57
    call nz, Call_052_75c8                        ; $5805: $c4 $c8 $75
    adc b                                         ; $5808: $88
    nop                                           ; $5809: $00
    and b                                         ; $580a: $a0
    ld c, e                                       ; $580b: $4b
    ld b, [hl]                                    ; $580c: $46
    ld c, d                                       ; $580d: $4a
    ld d, [hl]                                    ; $580e: $56
    rst $18                                       ; $580f: $df
    or $55                                        ; $5810: $f6 $55
    db $e3                                        ; $5812: $e3
    ld hl, sp+$71                                 ; $5813: $f8 $71
    and a                                         ; $5815: $a7
    ld e, $65                                     ; $5816: $1e $65
    and l                                         ; $5818: $a5
    ld c, b                                       ; $5819: $48
    ld hl, sp-$76                                 ; $581a: $f8 $8a
    jr jr_052_57d7                                ; $581c: $18 $b9

    ld c, $11                                     ; $581e: $0e $11
    ld h, b                                       ; $5820: $60
    sub d                                         ; $5821: $92
    ld l, c                                       ; $5822: $69
    push de                                       ; $5823: $d5
    ld h, e                                       ; $5824: $63
    sub [hl]                                      ; $5825: $96
    ld a, [de]                                    ; $5826: $1a
    ld h, l                                       ; $5827: $65
    and l                                         ; $5828: $a5
    ld c, b                                       ; $5829: $48
    ld hl, sp-$76                                 ; $582a: $f8 $8a
    jr jr_052_57e7                                ; $582c: $18 $b9

    ld c, $11                                     ; $582e: $0e $11
    and b                                         ; $5830: $a0
    ld c, e                                       ; $5831: $4b
    ld b, [hl]                                    ; $5832: $46
    ld c, d                                       ; $5833: $4a
    ld d, [hl]                                    ; $5834: $56
    rst $18                                       ; $5835: $df
    or $55                                        ; $5836: $f6 $55
    db $e3                                        ; $5838: $e3
    ld hl, sp+$71                                 ; $5839: $f8 $71
    and a                                         ; $583b: $a7
    ld e, $65                                     ; $583c: $1e $65
    and l                                         ; $583e: $a5

Jump_052_583f:
    ld c, b                                       ; $583f: $48
    ld hl, sp-$4e                                 ; $5840: $f8 $b2
    sbc e                                         ; $5842: $9b
    and [hl]                                      ; $5843: $a6
    ld e, d                                       ; $5844: $5a
    cp c                                          ; $5845: $b9
    ld b, e                                       ; $5846: $43
    inc b                                         ; $5847: $04
    add b                                         ; $5848: $80
    cp e                                          ; $5849: $bb
    adc $46                                       ; $584a: $ce $46
    and e                                         ; $584c: $a3
    sub a                                         ; $584d: $97
    db $dd                                        ; $584e: $dd
    inc [hl]                                      ; $584f: $34
    push de                                       ; $5850: $d5
    jp z, Jump_000_221d                           ; $5851: $ca $1d $22

    ld h, b                                       ; $5854: $60
    sub d                                         ; $5855: $92
    ld l, c                                       ; $5856: $69
    push de                                       ; $5857: $d5
    ld h, e                                       ; $5858: $63
    sub [hl]                                      ; $5859: $96
    ld a, [de]                                    ; $585a: $1a
    ld h, l                                       ; $585b: $65
    and l                                         ; $585c: $a5
    ld c, b                                       ; $585d: $48
    ld hl, sp-$4e                                 ; $585e: $f8 $b2
    sbc e                                         ; $5860: $9b
    and [hl]                                      ; $5861: $a6
    ld e, d                                       ; $5862: $5a
    cp c                                          ; $5863: $b9
    ld b, e                                       ; $5864: $43
    inc b                                         ; $5865: $04
    ld h, b                                       ; $5866: $60
    adc [hl]                                      ; $5867: $8e
    sbc h                                         ; $5868: $9c
    cp a                                          ; $5869: $bf
    ld l, c                                       ; $586a: $69
    cp b                                          ; $586b: $b8
    di                                            ; $586c: $f3
    and h                                         ; $586d: $a4
    di                                            ; $586e: $f3
    rrca                                          ; $586f: $0f
    ld d, [hl]                                    ; $5870: $56
    sbc [hl]                                      ; $5871: $9e
    rst $30                                       ; $5872: $f7
    ld h, c                                       ; $5873: $61
    dec d                                         ; $5874: $15
    rst $18                                       ; $5875: $df
    halt                                          ; $5876: $76
    ld a, d                                       ; $5877: $7a
    push af                                       ; $5878: $f5
    cp b                                          ; $5879: $b8
    db $e4                                        ; $587a: $e4
    rst $38                                       ; $587b: $ff
    sub l                                         ; $587c: $95
    ld a, $1b                                     ; $587d: $3e $1b
    inc d                                         ; $587f: $14
    ld [hl+], a                                   ; $5880: $22
    add b                                         ; $5881: $80
    cp e                                          ; $5882: $bb
    adc $46                                       ; $5883: $ce $46
    and e                                         ; $5885: $a3
    daa                                           ; $5886: $27
    ld b, a                                       ; $5887: $47
    adc $df                                       ; $5888: $ce $df
    inc [hl]                                      ; $588a: $34
    ld b, h                                       ; $588b: $44
    ld b, b                                       ; $588c: $40
    push hl                                       ; $588d: $e5
    ld e, a                                       ; $588e: $5f
    push hl                                       ; $588f: $e5
    ld c, e                                       ; $5890: $4b
    dec de                                        ; $5891: $1b
    ld [de], a                                    ; $5892: $12
    or d                                          ; $5893: $b2
    and e                                         ; $5894: $a3
    ld h, a                                       ; $5895: $67
    jp $1da7                                      ; $5896: $c3 $a7 $1d


    dec a                                         ; $5899: $3d
    ld e, d                                       ; $589a: $5a
    ld h, d                                       ; $589b: $62
    cp e                                          ; $589c: $bb
    sub h                                         ; $589d: $94
    jp hl                                         ; $589e: $e9


    ld l, d                                       ; $589f: $6a
    db $e3                                        ; $58a0: $e3
    db $10                                        ; $58a1: $10
    ld bc, $bb80                                  ; $58a2: $01 $80 $bb
    adc $46                                       ; $58a5: $ce $46
    and e                                         ; $58a7: $a3
    ld b, a                                       ; $58a8: $47
    ld c, e                                       ; $58a9: $4b
    ld l, h                                       ; $58aa: $6c
    sub a                                         ; $58ab: $97
    ld [hl-], a                                   ; $58ac: $32
    ld e, l                                       ; $58ad: $5d
    ld l, l                                       ; $58ae: $6d
    inc e                                         ; $58af: $1c
    ld [hl+], a                                   ; $58b0: $22
    and b                                         ; $58b1: $a0
    ld c, e                                       ; $58b2: $4b
    ld b, [hl]                                    ; $58b3: $46
    ld c, d                                       ; $58b4: $4a
    ld d, [hl]                                    ; $58b5: $56
    rst $18                                       ; $58b6: $df
    or $55                                        ; $58b7: $f6 $55
    db $e3                                        ; $58b9: $e3
    ld hl, sp+$71                                 ; $58ba: $f8 $71
    and a                                         ; $58bc: $a7
    ld e, $65                                     ; $58bd: $1e $65
    and l                                         ; $58bf: $a5
    ld c, b                                       ; $58c0: $48
    ld hl, sp+$68                                 ; $58c1: $f8 $68
    adc c                                         ; $58c3: $89
    db $ed                                        ; $58c4: $ed
    ld d, d                                       ; $58c5: $52
    and [hl]                                      ; $58c6: $a6
    xor e                                         ; $58c7: $ab
    adc l                                         ; $58c8: $8d
    ld b, e                                       ; $58c9: $43
    inc b                                         ; $58ca: $04
    ld h, b                                       ; $58cb: $60
    sub d                                         ; $58cc: $92
    ld l, c                                       ; $58cd: $69
    push de                                       ; $58ce: $d5
    ld h, e                                       ; $58cf: $63
    sub [hl]                                      ; $58d0: $96
    ld a, [de]                                    ; $58d1: $1a
    ld h, l                                       ; $58d2: $65
    and l                                         ; $58d3: $a5
    ld c, b                                       ; $58d4: $48
    ld hl, sp+$68                                 ; $58d5: $f8 $68
    adc c                                         ; $58d7: $89
    db $ed                                        ; $58d8: $ed
    ld d, d                                       ; $58d9: $52
    and [hl]                                      ; $58da: $a6

Call_052_58db:
    xor e                                         ; $58db: $ab
    adc l                                         ; $58dc: $8d
    ld b, e                                       ; $58dd: $43
    inc b                                         ; $58de: $04
    and b                                         ; $58df: $a0
    inc de                                        ; $58e0: $13
    ld hl, $d13f                                  ; $58e1: $21 $3f $d1
    dec bc                                        ; $58e4: $0b
    xor $9c                                       ; $58e5: $ee $9c
    sbc a                                         ; $58e7: $9f
    ld e, [hl]                                    ; $58e8: $5e
    cp l                                          ; $58e9: $bd
    sub b                                         ; $58ea: $90
    ld sp, hl                                     ; $58eb: $f9
    db $fd                                        ; $58ec: $fd
    ld a, a                                       ; $58ed: $7f
    and l                                         ; $58ee: $a5
    sub e                                         ; $58ef: $93
    ld e, a                                       ; $58f0: $5f
    ld e, l                                       ; $58f1: $5d
    ld d, $22                                     ; $58f2: $16 $22
    and b                                         ; $58f4: $a0
    db $eb                                        ; $58f5: $eb
    sbc a                                         ; $58f6: $9f
    jp c, $9ee1                                   ; $58f7: $da $e1 $9e

    sbc $4f                                       ; $58fa: $de $4f
    jp nz, $8c47                                  ; $58fc: $c2 $47 $8c

    ld h, h                                       ; $58ff: $64
    cp a                                          ; $5900: $bf
    jp z, Jump_052_4527                           ; $5901: $ca $27 $45

    dec b                                         ; $5904: $05
    ld [hl+], a                                   ; $5905: $22
    add b                                         ; $5906: $80
    cp e                                          ; $5907: $bb
    adc $46                                       ; $5908: $ce $46
    and e                                         ; $590a: $a3
    ld b, a                                       ; $590b: $47
    db $eb                                        ; $590c: $eb
    sbc a                                         ; $590d: $9f
    jp c, Jump_000_0221                           ; $590e: $da $21 $02

    and b                                         ; $5911: $a0
    ld c, e                                       ; $5912: $4b
    ld b, [hl]                                    ; $5913: $46
    ld c, d                                       ; $5914: $4a
    ld d, [hl]                                    ; $5915: $56
    rst $18                                       ; $5916: $df
    or $55                                        ; $5917: $f6 $55
    db $e3                                        ; $5919: $e3
    ld hl, sp+$71                                 ; $591a: $f8 $71
    and a                                         ; $591c: $a7
    ld e, $65                                     ; $591d: $1e $65
    and l                                         ; $591f: $a5
    ld c, b                                       ; $5920: $48
    ld hl, sp+$68                                 ; $5921: $f8 $68
    db $fd                                        ; $5923: $fd
    ld d, e                                       ; $5924: $53
    dec sp                                        ; $5925: $3b
    call c, Call_052_7e13                         ; $5926: $dc $13 $7e
    rst $38                                       ; $5929: $ff
    db $10                                        ; $592a: $10
    dec d                                         ; $592b: $15
    or e                                          ; $592c: $b3
    pop hl                                        ; $592d: $e1
    cp e                                          ; $592e: $bb

Call_052_592f:
    ld [c], a                                     ; $592f: $e2
    ld sp, $8aee                                  ; $5930: $31 $ee $8a
    db $e4                                        ; $5933: $e4
    push af                                       ; $5934: $f5
    dec h                                         ; $5935: $25
    ld a, [hl]                                    ; $5936: $7e
    ld d, l                                       ; $5937: $55
    adc l                                         ; $5938: $8d
    sub $af                                       ; $5939: $d6 $af
    sbc $9d                                       ; $593b: $de $9d
    dec c                                         ; $593d: $0d
    add c                                         ; $593e: $81
    ld [$9260], sp                                ; $593f: $08 $60 $92
    ld l, c                                       ; $5942: $69
    push de                                       ; $5943: $d5
    ld h, e                                       ; $5944: $63
    sub [hl]                                      ; $5945: $96
    ld a, [de]                                    ; $5946: $1a
    ld h, l                                       ; $5947: $65
    and l                                         ; $5948: $a5
    ld c, b                                       ; $5949: $48
    ld hl, sp+$68                                 ; $594a: $f8 $68
    db $fd                                        ; $594c: $fd
    ld d, e                                       ; $594d: $53
    dec sp                                        ; $594e: $3b
    ld b, h                                       ; $594f: $44
    ld c, a                                       ; $5950: $4f
    ld hl, sp-$4d                                 ; $5951: $f8 $b3
    ld c, c                                       ; $5953: $49
    ld [hl-], a                                   ; $5954: $32
    xor l                                         ; $5955: $ad
    ld a, d                                       ; $5956: $7a
    call z, $d352                                 ; $5957: $cc $52 $d3
    xor [hl]                                      ; $595a: $ae
    ld a, e                                       ; $595b: $7b
    ld sp, hl                                     ; $595c: $f9
    ld a, [hl+]                                   ; $595d: $2a
    ld [hl], e                                    ; $595e: $73
    add $de                                       ; $595f: $c6 $de
    rst $38                                       ; $5961: $ff
    db $db                                        ; $5962: $db
    jr c, @+$46                                   ; $5963: $38 $44

    and b                                         ; $5965: $a0
    ld c, e                                       ; $5966: $4b
    ld b, [hl]                                    ; $5967: $46
    ld c, d                                       ; $5968: $4a
    ld d, [hl]                                    ; $5969: $56
    rst $18                                       ; $596a: $df
    or $55                                        ; $596b: $f6 $55
    db $e3                                        ; $596d: $e3
    ld hl, sp+$71                                 ; $596e: $f8 $71
    and a                                         ; $5970: $a7
    ld e, $65                                     ; $5971: $1e $65
    and l                                         ; $5973: $a5
    ld c, b                                       ; $5974: $48
    ld hl, sp+$2a                                 ; $5975: $f8 $2a
    ld [hl], e                                    ; $5977: $73
    add $de                                       ; $5978: $c6 $de
    rst $38                                       ; $597a: $ff
    db $db                                        ; $597b: $db
    jr c, jr_052_59c2                             ; $597c: $38 $44

    ld h, b                                       ; $597e: $60
    sub d                                         ; $597f: $92
    ld l, c                                       ; $5980: $69
    push de                                       ; $5981: $d5
    ld h, e                                       ; $5982: $63
    sub [hl]                                      ; $5983: $96
    ld a, [de]                                    ; $5984: $1a
    ld h, l                                       ; $5985: $65
    and l                                         ; $5986: $a5
    ld c, b                                       ; $5987: $48
    ld hl, sp+$2a                                 ; $5988: $f8 $2a
    ld [hl], e                                    ; $598a: $73
    add $de                                       ; $598b: $c6 $de
    rst $38                                       ; $598d: $ff
    db $db                                        ; $598e: $db
    jr c, jr_052_59d5                             ; $598f: $38 $44

    adc a                                         ; $5991: $8f
    ld c, e                                       ; $5992: $4b
    db $ed                                        ; $5993: $ed
    add sp, -$57                                  ; $5994: $e8 $a9
    ld e, a                                       ; $5996: $5f
    halt                                          ; $5997: $76
    push hl                                       ; $5998: $e5
    ld a, $66                                     ; $5999: $3e $66
    xor c                                         ; $599b: $a9
    ld l, c                                       ; $599c: $69
    push de                                       ; $599d: $d5
    db $e3                                        ; $599e: $e3
    ld a, b                                       ; $599f: $78
    rst $30                                       ; $59a0: $f7
    ld a, c                                       ; $59a1: $79
    xor c                                         ; $59a2: $a9
    pop hl                                        ; $59a3: $e1
    db $fc                                        ; $59a4: $fc
    ld c, h                                       ; $59a5: $4c
    ld d, e                                       ; $59a6: $53
    ccf                                           ; $59a7: $3f
    call nz, $9f46                                ; $59a8: $c4 $46 $9f
    adc l                                         ; $59ab: $8d
    add [hl]                                      ; $59ac: $86
    adc h                                         ; $59ad: $8c
    ld e, c                                       ; $59ae: $59
    ld l, d                                       ; $59af: $6a
    adc $4a                                       ; $59b0: $ce $4a
    sub c                                         ; $59b2: $91
    add sp, $65                                   ; $59b3: $e8 $65
    sub [hl]                                      ; $59b5: $96
    ret c                                         ; $59b6: $d8

    add hl, de                                    ; $59b7: $19
    ld a, [hl-]                                   ; $59b8: $3a
    db $d3                                        ; $59b9: $d3
    inc [hl]                                      ; $59ba: $34
    inc b                                         ; $59bb: $04

Jump_052_59bc:
    ld [hl+], a                                   ; $59bc: $22
    add b                                         ; $59bd: $80
    cp e                                          ; $59be: $bb
    adc $46                                       ; $59bf: $ce $46
    and e                                         ; $59c1: $a3

jr_052_59c2:
    ld h, a                                       ; $59c2: $67
    sbc d                                         ; $59c3: $9a
    ld a, [$3621]                                 ; $59c4: $fa $21 $36
    ld a, [de]                                    ; $59c7: $1a
    ld [hl+], a                                   ; $59c8: $22
    and b                                         ; $59c9: $a0
    ld c, e                                       ; $59ca: $4b
    ld b, [hl]                                    ; $59cb: $46
    ld c, d                                       ; $59cc: $4a
    ld d, [hl]                                    ; $59cd: $56
    rst $18                                       ; $59ce: $df
    or $55                                        ; $59cf: $f6 $55
    db $e3                                        ; $59d1: $e3
    ld hl, sp+$71                                 ; $59d2: $f8 $71
    and a                                         ; $59d4: $a7

jr_052_59d5:
    ld e, $e5                                     ; $59d5: $1e $e5
    ld b, l                                       ; $59d7: $45
    push de                                       ; $59d8: $d5
    ld c, h                                       ; $59d9: $4c
    ld d, e                                       ; $59da: $53
    ccf                                           ; $59db: $3f
    call nz, Call_052_4346                        ; $59dc: $c4 $46 $43
    ld [$bf33], sp                                ; $59df: $08 $33 $bf
    ld a, a                                       ; $59e2: $7f
    adc b                                         ; $59e3: $88
    adc d                                         ; $59e4: $8a
    sbc c                                         ; $59e5: $99
    and [hl]                                      ; $59e6: $a6
    ld hl, $e2bb                                  ; $59e7: $21 $bb $e2
    ld sp, $b4ce                                  ; $59ea: $31 $ce $b4
    ld [hl], e                                    ; $59ed: $73
    push de                                       ; $59ee: $d5
    dec h                                         ; $59ef: $25
    ld [hl], $56                                  ; $59f0: $36 $56
    and d                                         ; $59f2: $a2
    rra                                           ; $59f3: $1f
    ld h, d                                       ; $59f4: $62
    and e                                         ; $59f5: $a3
    ld h, a                                       ; $59f6: $67
    add e                                         ; $59f7: $83
    ld b, d                                       ; $59f8: $42
    inc b                                         ; $59f9: $04
    ld h, b                                       ; $59fa: $60
    sub d                                         ; $59fb: $92
    ld l, c                                       ; $59fc: $69
    push de                                       ; $59fd: $d5
    ld h, e                                       ; $59fe: $63
    sub [hl]                                      ; $59ff: $96
    ld a, [de]                                    ; $5a00: $1a
    push hl                                       ; $5a01: $e5
    ld b, l                                       ; $5a02: $45
    push de                                       ; $5a03: $d5
    ld c, h                                       ; $5a04: $4c
    ld d, e                                       ; $5a05: $53
    ccf                                           ; $5a06: $3f
    call nz, Call_052_4346                        ; $5a07: $c4 $46 $43
    inc b                                         ; $5a0a: $04
    rrca                                          ; $5a0b: $0f
    ld b, a                                       ; $5a0c: $47
    rst $28                                       ; $5a0d: $ef
    add sp, -$03                                  ; $5a0e: $e8 $fd
    db $eb                                        ; $5a10: $eb
    ld sp, $f522                                  ; $5a11: $31 $22 $f5
    ld a, a                                       ; $5a14: $7f
    cp $25                                        ; $5a15: $fe $25
    ld a, [hl+]                                   ; $5a17: $2a
    ld h, a                                       ; $5a18: $67
    ld [hl], d                                    ; $5a19: $72
    ld b, l                                       ; $5a1a: $45
    jr nz, jr_052_5a1f                            ; $5a1b: $20 $02

    ldh [$ae], a                                  ; $5a1d: $e0 $ae

jr_052_5a1f:
    ld d, d                                       ; $5a1f: $52
    ld e, c                                       ; $5a20: $59
    cp a                                          ; $5a21: $bf
    sub d                                         ; $5a22: $92
    cp l                                          ; $5a23: $bd
    sub h                                         ; $5a24: $94
    xor d                                         ; $5a25: $aa
    ld b, $b0                                     ; $5a26: $06 $b0
    db $f4                                        ; $5a28: $f4
    sub c                                         ; $5a29: $91
    ld a, l                                       ; $5a2a: $7d
    push hl                                       ; $5a2b: $e5
    ld a, $66                                     ; $5a2c: $3e $66
    xor c                                         ; $5a2e: $a9
    dec e                                         ; $5a2f: $1d
    dec a                                         ; $5a30: $3d
    xor $d4                                       ; $5a31: $ee $d4
    ld sp, hl                                     ; $5a33: $f9
    ld [de], a                                    ; $5a34: $12
    cp a                                          ; $5a35: $bf
    ld l, d                                       ; $5a36: $6a
    inc [hl]                                      ; $5a37: $34
    db $ec                                        ; $5a38: $ec
    ld l, h                                       ; $5a39: $6c
    ld c, h                                       ; $5a3a: $4c
    dec sp                                        ; $5a3b: $3b
    ld a, [de]                                    ; $5a3c: $1a
    ld [hl+], a                                   ; $5a3d: $22
    adc a                                         ; $5a3e: $8f
    ld c, e                                       ; $5a3f: $4b
    dec l                                         ; $5a40: $2d
    ld de, $d5db                                  ; $5a41: $11 $db $d5
    db $d3                                        ; $5a44: $d3
    sub d                                         ; $5a45: $92
    ld e, [hl]                                    ; $5a46: $5e
    ld a, [$291f]                                 ; $5a47: $fa $1f $29
    jp nz, Jump_052_4cdd                          ; $5a4a: $c2 $dd $4c

    ldh a, [$e4]                                  ; $5a4d: $f0 $e4
    db $eb                                        ; $5a4f: $eb
    dec e                                         ; $5a50: $1d
    ld a, $62                                     ; $5a51: $3e $62
    add sp, $12                                   ; $5a53: $e8 $12
    sbc a                                         ; $5a55: $9f
    halt                                          ; $5a56: $76
    db $fd                                        ; $5a57: $fd
    ld de, $4f02                                  ; $5a58: $11 $02 $4f
    ld c, b                                       ; $5a5b: $48
    db $fd                                        ; $5a5c: $fd
    ld [hl], h                                    ; $5a5d: $74
    add hl, hl                                    ; $5a5e: $29
    sub l                                         ; $5a5f: $95
    ld c, a                                       ; $5a60: $4f
    jp z, $8408                                   ; $5a61: $ca $08 $84

    ret nc                                        ; $5a64: $d0

    add [hl]                                      ; $5a65: $86
    ld c, a                                       ; $5a66: $4f
    dec sp                                        ; $5a67: $3b
    ld a, d                                       ; $5a68: $7a
    ld e, d                                       ; $5a69: $5a
    push af                                       ; $5a6a: $f5
    sbc b                                         ; $5a6b: $98
    and l                                         ; $5a6c: $a5
    sub [hl]                                      ; $5a6d: $96
    jp $dc7d                                      ; $5a6e: $c3 $7d $dc


    xor c                                         ; $5a71: $a9
    inc de                                        ; $5a72: $13
    add a                                         ; $5a73: $87
    ld [$bb80], sp                                ; $5a74: $08 $80 $bb
    adc $46                                       ; $5a77: $ce $46
    and e                                         ; $5a79: $a3
    sub a                                         ; $5a7a: $97
    ld c, c                                       ; $5a7b: $49
    db $fd                                        ; $5a7c: $fd

Jump_052_5a7d:
    ld [hl], h                                    ; $5a7d: $74
    add hl, hl                                    ; $5a7e: $29
    sub l                                         ; $5a7f: $95
    ld c, a                                       ; $5a80: $4f
    jp z, $4408                                   ; $5a81: $ca $08 $44

    and b                                         ; $5a84: $a0
    ld c, e                                       ; $5a85: $4b
    ld b, [hl]                                    ; $5a86: $46
    ld c, d                                       ; $5a87: $4a
    ld d, [hl]                                    ; $5a88: $56
    rst $18                                       ; $5a89: $df
    or $55                                        ; $5a8a: $f6 $55
    db $e3                                        ; $5a8c: $e3
    ld hl, sp+$71                                 ; $5a8d: $f8 $71
    and a                                         ; $5a8f: $a7
    ld e, $e5                                     ; $5a90: $1e $e5
    ld b, l                                       ; $5a92: $45
    push de                                       ; $5a93: $d5
    ld [hl-], a                                   ; $5a94: $32
    xor c                                         ; $5a95: $a9
    sbc a                                         ; $5a96: $9f
    ld l, $a5                                     ; $5a97: $2e $a5
    ld a, [c]                                     ; $5a99: $f2
    ld c, c                                       ; $5a9a: $49
    add hl, de                                    ; $5a9b: $19
    add c                                         ; $5a9c: $81
    ld [$9260], sp                                ; $5a9d: $08 $60 $92
    ld l, c                                       ; $5aa0: $69
    push de                                       ; $5aa1: $d5
    ld h, e                                       ; $5aa2: $63
    sub [hl]                                      ; $5aa3: $96
    ld a, [de]                                    ; $5aa4: $1a
    push hl                                       ; $5aa5: $e5
    ld b, l                                       ; $5aa6: $45
    push de                                       ; $5aa7: $d5
    ld [hl-], a                                   ; $5aa8: $32
    xor c                                         ; $5aa9: $a9
    sbc a                                         ; $5aaa: $9f
    ld l, $a5                                     ; $5aab: $2e $a5
    ld a, [c]                                     ; $5aad: $f2
    ld c, c                                       ; $5aae: $49
    add hl, de                                    ; $5aaf: $19
    add c                                         ; $5ab0: $81
    ld [$9260], sp                                ; $5ab1: $08 $60 $92
    ld l, c                                       ; $5ab4: $69
    push de                                       ; $5ab5: $d5
    ld h, e                                       ; $5ab6: $63
    sub [hl]                                      ; $5ab7: $96
    sbc d                                         ; $5ab8: $9a
    db $eb                                        ; $5ab9: $eb
    cp h                                          ; $5aba: $bc
    halt                                          ; $5abb: $76
    ld l, d                                       ; $5abc: $6a
    cp c                                          ; $5abd: $b9
    and d                                         ; $5abe: $a2
    or d                                          ; $5abf: $b2
    ld h, [hl]                                    ; $5ac0: $66
    ld e, d                                       ; $5ac1: $5a
    jr nz, jr_052_5ac6                            ; $5ac2: $20 $02

    add b                                         ; $5ac4: $80
    cp e                                          ; $5ac5: $bb

jr_052_5ac6:
    adc $46                                       ; $5ac6: $ce $46
    and e                                         ; $5ac8: $a3
    rst $20                                       ; $5ac9: $e7
    ld a, [hl-]                                   ; $5aca: $3a
    xor a                                         ; $5acb: $af
    sbc l                                         ; $5acc: $9d
    ld e, d                                       ; $5acd: $5a
    xor [hl]                                      ; $5ace: $ae
    xor b                                         ; $5acf: $a8
    xor h                                         ; $5ad0: $ac
    sbc c                                         ; $5ad1: $99
    ld d, $88                                     ; $5ad2: $16 $88
    nop                                           ; $5ad4: $00
    and b                                         ; $5ad5: $a0
    ld c, e                                       ; $5ad6: $4b
    ld b, [hl]                                    ; $5ad7: $46
    ld c, d                                       ; $5ad8: $4a
    ld d, [hl]                                    ; $5ad9: $56
    rst $18                                       ; $5ada: $df
    or $55                                        ; $5adb: $f6 $55
    db $e3                                        ; $5add: $e3
    ld hl, sp+$71                                 ; $5ade: $f8 $71
    and a                                         ; $5ae0: $a7
    ld e, $e5                                     ; $5ae1: $1e $e5
    ld b, l                                       ; $5ae3: $45
    push de                                       ; $5ae4: $d5
    ld e, h                                       ; $5ae5: $5c
    rst $20                                       ; $5ae6: $e7
    or l                                          ; $5ae7: $b5
    ld d, e                                       ; $5ae8: $53
    rl l                                          ; $5ae9: $cb $15
    sub l                                         ; $5aeb: $95
    dec [hl]                                      ; $5aec: $35
    db $d3                                        ; $5aed: $d3
    ld [bc], a                                    ; $5aee: $02
    ld de, $9260                                  ; $5aef: $11 $60 $92
    ld l, c                                       ; $5af2: $69
    push de                                       ; $5af3: $d5
    ld h, e                                       ; $5af4: $63
    sub [hl]                                      ; $5af5: $96
    ld a, [de]                                    ; $5af6: $1a
    push hl                                       ; $5af7: $e5
    ld b, l                                       ; $5af8: $45
    push de                                       ; $5af9: $d5
    ld e, h                                       ; $5afa: $5c
    rst $20                                       ; $5afb: $e7
    or l                                          ; $5afc: $b5
    ld d, e                                       ; $5afd: $53
    rl l                                          ; $5afe: $cb $15
    sub l                                         ; $5b00: $95
    dec [hl]                                      ; $5b01: $35
    db $d3                                        ; $5b02: $d3
    ld [bc], a                                    ; $5b03: $02
    ld de, $2380                                  ; $5b04: $11 $80 $23
    sbc e                                         ; $5b07: $9b
    ld [$21ec], a                                 ; $5b08: $ea $ec $21
    db $10                                        ; $5b0b: $10
    jp nz, Jump_052_5227                          ; $5b0c: $c2 $27 $52

    ld a, b                                       ; $5b0f: $78
    inc l                                         ; $5b10: $2c
    rst $10                                       ; $5b11: $d7
    jp z, Jump_000_367d                           ; $5b12: $ca $7d $36

    ld h, h                                       ; $5b15: $64
    dec h                                         ; $5b16: $25
    ld a, [$3621]                                 ; $5b17: $fa $21 $36
    rst $28                                       ; $5b1a: $ef
    adc [hl]                                      ; $5b1b: $8e
    ld a, [de]                                    ; $5b1c: $1a
    ld d, a                                       ; $5b1d: $57
    sub a                                         ; $5b1e: $97
    di                                            ; $5b1f: $f3
    ld l, b                                       ; $5b20: $68
    adc b                                         ; $5b21: $88
    nop                                           ; $5b22: $00
    add b                                         ; $5b23: $80
    cp e                                          ; $5b24: $bb
    adc $46                                       ; $5b25: $ce $46
    and e                                         ; $5b27: $a3
    sub a                                         ; $5b28: $97
    adc [hl]                                      ; $5b29: $8e
    ld l, h                                       ; $5b2a: $6c
    xor d                                         ; $5b2b: $aa
    or e                                          ; $5b2c: $b3
    add a                                         ; $5b2d: $87
    ld b, b                                       ; $5b2e: $40
    inc b                                         ; $5b2f: $04
    and b                                         ; $5b30: $a0
    ld c, e                                       ; $5b31: $4b
    ld b, [hl]                                    ; $5b32: $46
    ld c, d                                       ; $5b33: $4a
    ld d, [hl]                                    ; $5b34: $56
    rst $18                                       ; $5b35: $df
    or $55                                        ; $5b36: $f6 $55
    db $d3                                        ; $5b38: $d3
    ld l, d                                       ; $5b39: $6a
    call c, Call_052_47a9                         ; $5b3a: $dc $a9 $47
    ld a, c                                       ; $5b3d: $79
    ld d, c                                       ; $5b3e: $51
    or l                                          ; $5b3f: $b5
    ld [hl], h                                    ; $5b40: $74
    ld h, h                                       ; $5b41: $64
    ld d, e                                       ; $5b42: $53
    sbc l                                         ; $5b43: $9d
    dec a                                         ; $5b44: $3d
    and h                                         ; $5b45: $a4
    ld a, [de]                                    ; $5b46: $1a
    ld [hl+], a                                   ; $5b47: $22
    ld h, b                                       ; $5b48: $60
    sub d                                         ; $5b49: $92
    ld l, c                                       ; $5b4a: $69
    push de                                       ; $5b4b: $d5
    ld h, e                                       ; $5b4c: $63
    sub [hl]                                      ; $5b4d: $96
    ld a, [de]                                    ; $5b4e: $1a
    push hl                                       ; $5b4f: $e5
    ld b, l                                       ; $5b50: $45
    push de                                       ; $5b51: $d5
    jp nc, Jump_052_4d91                          ; $5b52: $d2 $91 $4d

    ld [hl], l                                    ; $5b55: $75
    or $90                                        ; $5b56: $f6 $90
    ld l, d                                       ; $5b58: $6a
    adc b                                         ; $5b59: $88
    nop                                           ; $5b5a: $00
    ld b, b                                       ; $5b5b: $40
    ld b, l                                       ; $5b5c: $45
    dec sp                                        ; $5b5d: $3b
    or l                                          ; $5b5e: $b5
    ld e, h                                       ; $5b5f: $5c
    ld d, c                                       ; $5b60: $51
    ld e, c                                       ; $5b61: $59
    inc sp                                        ; $5b62: $33
    dec l                                         ; $5b63: $2d
    cp e                                          ; $5b64: $bb
    set 6, a                                      ; $5b65: $cb $f7
    db $eb                                        ; $5b67: $eb
    pop de                                        ; $5b68: $d1
    db $ec                                        ; $5b69: $ec
    rst $30                                       ; $5b6a: $f7
    cp b                                          ; $5b6b: $b8
    call nc, $e7f2                                ; $5b6c: $d4 $f2 $e7
    ld a, e                                       ; $5b6f: $7b
    ld a, d                                       ; $5b70: $7a
    reti                                          ; $5b71: $d9


    add hl, de                                    ; $5b72: $19
    cp d                                          ; $5b73: $ba
    ld [hl], d                                    ; $5b74: $72
    sbc a                                         ; $5b75: $9f
    dec c                                         ; $5b76: $0d
    sbc a                                         ; $5b77: $9f
    halt                                          ; $5b78: $76
    db $f4                                        ; $5b79: $f4
    adc [hl]                                      ; $5b7a: $8e
    sbc [hl]                                      ; $5b7b: $9e
    ld a, [hl]                                    ; $5b7c: $7e
    or h                                          ; $5b7d: $b4
    dec c                                         ; $5b7e: $0d
    ld l, $f9                                     ; $5b7f: $2e $f9
    rst $18                                       ; $5b81: $df
    reti                                          ; $5b82: $d9


    inc hl                                        ; $5b83: $23
    add b                                         ; $5b84: $80
    cp e                                          ; $5b85: $bb
    adc $46                                       ; $5b86: $ce $46
    and e                                         ; $5b88: $a3
    rla                                           ; $5b89: $17
    and d                                         ; $5b8a: $a2
    sbc l                                         ; $5b8b: $9d
    ld e, d                                       ; $5b8c: $5a
    xor [hl]                                      ; $5b8d: $ae
    xor b                                         ; $5b8e: $a8
    xor h                                         ; $5b8f: $ac
    sbc c                                         ; $5b90: $99
    sub [hl]                                      ; $5b91: $96
    db $dd                                        ; $5b92: $dd
    push hl                                       ; $5b93: $e5
    ei                                            ; $5b94: $fb
    push af                                       ; $5b95: $f5
    ld l, b                                       ; $5b96: $68
    adc b                                         ; $5b97: $88
    nop                                           ; $5b98: $00
    and b                                         ; $5b99: $a0
    ld c, e                                       ; $5b9a: $4b
    ld b, [hl]                                    ; $5b9b: $46
    ld c, d                                       ; $5b9c: $4a
    ld d, [hl]                                    ; $5b9d: $56
    rst $18                                       ; $5b9e: $df
    or $55                                        ; $5b9f: $f6 $55
    db $e3                                        ; $5ba1: $e3
    ld hl, sp+$71                                 ; $5ba2: $f8 $71
    and a                                         ; $5ba4: $a7
    ld e, $e5                                     ; $5ba5: $1e $e5
    ld b, l                                       ; $5ba7: $45
    push de                                       ; $5ba8: $d5
    ld b, d                                       ; $5ba9: $42
    or h                                          ; $5baa: $b4
    ld d, e                                       ; $5bab: $53
    rl l                                          ; $5bac: $cb $15
    sub l                                         ; $5bae: $95
    dec [hl]                                      ; $5baf: $35
    db $d3                                        ; $5bb0: $d3
    or d                                          ; $5bb1: $b2
    cp e                                          ; $5bb2: $bb
    ld a, h                                       ; $5bb3: $7c
    cp a                                          ; $5bb4: $bf
    ld e, $0d                                     ; $5bb5: $1e $0d
    ld de, $9260                                  ; $5bb7: $11 $60 $92
    ld l, c                                       ; $5bba: $69
    push de                                       ; $5bbb: $d5
    ld h, e                                       ; $5bbc: $63
    sub [hl]                                      ; $5bbd: $96
    ld a, [de]                                    ; $5bbe: $1a
    push hl                                       ; $5bbf: $e5
    ld b, l                                       ; $5bc0: $45
    push de                                       ; $5bc1: $d5
    ld b, d                                       ; $5bc2: $42
    or h                                          ; $5bc3: $b4
    ld d, e                                       ; $5bc4: $53
    rl l                                          ; $5bc5: $cb $15
    sub l                                         ; $5bc7: $95
    dec [hl]                                      ; $5bc8: $35
    db $d3                                        ; $5bc9: $d3
    or d                                          ; $5bca: $b2
    cp e                                          ; $5bcb: $bb
    ld a, h                                       ; $5bcc: $7c
    cp a                                          ; $5bcd: $bf
    ld e, $0d                                     ; $5bce: $1e $0d
    ld de, $084f                                  ; $5bd0: $11 $4f $08
    ld c, e                                       ; $5bd3: $4b
    ld l, h                                       ; $5bd4: $6c
    call $b55e                                    ; $5bd5: $cd $5e $b5
    ld [hl], d                                    ; $5bd8: $72
    rst $18                                       ; $5bd9: $df
    rrca                                          ; $5bda: $0f
    xor a                                         ; $5bdb: $af
    ld [hl], l                                    ; $5bdc: $75
    ret c                                         ; $5bdd: $d8

    ld a, [de]                                    ; $5bde: $1a
    adc $cf                                       ; $5bdf: $ce $cf

jr_052_5be1:
    ld e, [hl]                                    ; $5be1: $5e
    rst $30                                       ; $5be2: $f7
    and l                                         ; $5be3: $a5
    ld c, l                                       ; $5be4: $4d
    db $db                                        ; $5be5: $db
    or e                                          ; $5be6: $b3
    dec a                                         ; $5be7: $3d
    ld d, h                                       ; $5be8: $54
    scf                                           ; $5be9: $37
    dec bc                                        ; $5bea: $0b
    ld [hl+], a                                   ; $5beb: $22
    rst $20                                       ; $5bec: $e7
    ret                                           ; $5bed: $c9


    adc [hl]                                      ; $5bee: $8e
    ld e, [hl]                                    ; $5bef: $5e
    ld a, [$ef70]                                 ; $5bf0: $fa $70 $ef
    ret c                                         ; $5bf3: $d8

    ld hl, $c9b3                                  ; $5bf4: $21 $b3 $c9
    ld [hl], d                                    ; $5bf7: $72
    db $f4                                        ; $5bf8: $f4
    ld [de], a                                    ; $5bf9: $12
    ccf                                           ; $5bfa: $3f
    dec de                                        ; $5bfb: $1b
    jr c, jr_052_5be1                             ; $5bfc: $38 $e3

    ld e, $0d                                     ; $5bfe: $1e $0d
    rlca                                          ; $5c00: $07
    db $ec                                        ; $5c01: $ec
    call nc, $f72b                                ; $5c02: $d4 $2b $f7
    jp hl                                         ; $5c05: $e9


    scf                                           ; $5c06: $37
    rst $10                                       ; $5c07: $d7
    jp z, Jump_000_367d                           ; $5c08: $ca $7d $36

    ld a, h                                       ; $5c0b: $7c
    ld d, a                                       ; $5c0c: $57
    inc a                                         ; $5c0d: $3c
    and [hl]                                      ; $5c0e: $a6
    ld d, a                                       ; $5c0f: $57
    rst $28                                       ; $5c10: $ef
    cp $5f                                        ; $5c11: $fe $5f
    and e                                         ; $5c13: $a3
    ld hl, $00e5                                  ; $5c14: $21 $e5 $00
    and [hl]                                      ; $5c17: $a6
    dec e                                         ; $5c18: $1d
    cp l                                          ; $5c19: $bd
    and e                                         ; $5c1a: $a3
    rla                                           ; $5c1b: $17
    ld [hl-], a                                   ; $5c1c: $32
    ld h, d                                       ; $5c1d: $62

jr_052_5c1e:
    ld l, b                                       ; $5c1e: $68
    ld a, [$f94a]                                 ; $5c1f: $fa $4a $f9
    dec [hl]                                      ; $5c22: $35
    ld [hl-], a                                   ; $5c23: $32
    cp a                                          ; $5c24: $bf
    rst $38                                       ; $5c25: $ff
    rst $08                                       ; $5c26: $cf
    ld e, [hl]                                    ; $5c27: $5e
    add hl, de                                    ; $5c28: $19
    jr nc, jr_052_5c1e                            ; $5c29: $30 $f3

    xor a                                         ; $5c2b: $af
    add hl, de                                    ; $5c2c: $19
    add $be                                       ; $5c2d: $c6 $be
    ld hl, sp-$41                                 ; $5c2f: $f8 $bf
    xor c                                         ; $5c31: $a9
    inc h                                         ; $5c32: $24
    jp Jump_000_1201                              ; $5c33: $c3 $01 $12


    db $fd                                        ; $5c36: $fd
    db $10                                        ; $5c37: $10
    dec sp                                        ; $5c38: $3b
    dec de                                        ; $5c39: $1b
    ld [hl-], a                                   ; $5c3a: $32
    ld b, e                                       ; $5c3b: $43
    ld h, a                                       ; $5c3c: $67
    sub e                                         ; $5c3d: $93
    dec e                                         ; $5c3e: $1d
    cp l                                          ; $5c3f: $bd
    dec sp                                        ; $5c40: $3b
    xor [hl]                                      ; $5c41: $ae
    cp d                                          ; $5c42: $ba
    jr nz, jr_052_5c47                            ; $5c43: $20 $02

    adc a                                         ; $5c45: $8f
    ld c, e                                       ; $5c46: $4b

jr_052_5c47:
    call Call_052_58db                            ; $5c47: $cd $db $58
    dec de                                        ; $5c4a: $1b
    or e                                          ; $5c4b: $b3
    ret                                           ; $5c4c: $c9


    ld [hl-], a                                   ; $5c4d: $32
    ld c, c                                       ; $5c4e: $49
    cp $8f                                        ; $5c4f: $fe $8f
    jp hl                                         ; $5c51: $e9


    push de                                       ; $5c52: $d5
    or l                                          ; $5c53: $b5
    db $f4                                        ; $5c54: $f4
    pop hl                                        ; $5c55: $e1
    sbc $31                                       ; $5c56: $de $31
    sbc h                                         ; $5c58: $9c
    rra                                           ; $5c59: $1f
    dec l                                         ; $5c5a: $2d

jr_052_5c5b:
    ld [hl], l                                    ; $5c5b: $75
    rst $08                                       ; $5c5c: $cf
    add [hl]                                      ; $5c5d: $86
    dec de                                        ; $5c5e: $1b
    rst $30                                       ; $5c5f: $f7
    ld l, b                                       ; $5c60: $68
    cp b                                          ; $5c61: $b8
    di                                            ; $5c62: $f3
    dec hl                                        ; $5c63: $2b
    bit 7, d                                      ; $5c64: $cb $7a
    add hl, hl                                    ; $5c66: $29
    dec l                                         ; $5c67: $2d
    ld a, h                                       ; $5c68: $7c
    jp hl                                         ; $5c69: $e9


    add sp, $53                                   ; $5c6a: $e8 $53
    adc a                                         ; $5c6c: $8f
    ld e, [hl]                                    ; $5c6d: $5e
    dec b                                         ; $5c6e: $05
    rst $30                                       ; $5c6f: $f7
    ld [hl], b                                    ; $5c70: $70
    db $f4                                        ; $5c71: $f4
    adc [hl]                                      ; $5c72: $8e
    ld e, [hl]                                    ; $5c73: $5e
    ret z                                         ; $5c74: $c8

    adc b                                         ; $5c75: $88
    and c                                         ; $5c76: $a1
    jp hl                                         ; $5c77: $e9


    dec hl                                        ; $5c78: $2b
    push hl                                       ; $5c79: $e5
    rst $10                                       ; $5c7a: $d7
    ret z                                         ; $5c7b: $c8

    db $fc                                        ; $5c7c: $fc

Jump_052_5c7d:
    cp $3f                                        ; $5c7d: $fe $3f
    ld a, e                                       ; $5c7f: $7b
    ld h, l                                       ; $5c80: $65
    ret nz                                        ; $5c81: $c0

jr_052_5c82:
    call z, Call_052_66bf                         ; $5c82: $cc $bf $66
    jr jr_052_5c82                                ; $5c85: $18 $fb

    ld [c], a                                     ; $5c87: $e2
    rst $38                                       ; $5c88: $ff
    and [hl]                                      ; $5c89: $a6
    sub d                                         ; $5c8a: $92
    inc c                                         ; $5c8b: $0c
    rlca                                          ; $5c8c: $07
    ld c, b                                       ; $5c8d: $48
    db $f4                                        ; $5c8e: $f4
    ld b, e                                       ; $5c8f: $43
    db $ec                                        ; $5c90: $ec
    ld l, h                                       ; $5c91: $6c
    ret z                                         ; $5c92: $c8

    inc c                                         ; $5c93: $0c
    sbc l                                         ; $5c94: $9d
    ld c, l                                       ; $5c95: $4d
    halt                                          ; $5c96: $76
    db $f4                                        ; $5c97: $f4
    xor $b8                                       ; $5c98: $ee $b8
    ld [$0882], a                                 ; $5c9a: $ea $82 $08
    rrca                                          ; $5c9d: $0f
    ld b, a                                       ; $5c9e: $47
    rst $28                                       ; $5c9f: $ef
    add sp, -$27                                  ; $5ca0: $e8 $d9
    dec hl                                        ; $5ca2: $2b
    inc de                                        ; $5ca3: $13
    ld d, [hl]                                    ; $5ca4: $56
    adc l                                         ; $5ca5: $8d
    sbc b                                         ; $5ca6: $98
    halt                                          ; $5ca7: $76
    ld h, d                                       ; $5ca8: $62
    ld l, b                                       ; $5ca9: $68
    ld a, [$f94a]                                 ; $5caa: $fa $4a $f9
    dec [hl]                                      ; $5cad: $35
    ld [hl], d                                    ; $5cae: $72
    or [hl]                                       ; $5caf: $b6
    add a                                         ; $5cb0: $87
    ld [$4166], a                                 ; $5cb1: $ea $66 $41
    inc b                                         ; $5cb4: $04
    rrca                                          ; $5cb5: $0f
    ld b, a                                       ; $5cb6: $47
    rst $28                                       ; $5cb7: $ef
    add sp, -$7b                                  ; $5cb8: $e8 $85
    ld c, h                                       ; $5cba: $4c
    ld e, b                                       ; $5cbb: $58
    inc hl                                        ; $5cbc: $23
    and [hl]                                      ; $5cbd: $a6
    sbc l                                         ; $5cbe: $9d
    jr jr_052_5c5b                                ; $5cbf: $18 $9a

    cp [hl]                                       ; $5cc1: $be
    ld d, d                                       ; $5cc2: $52
    ld a, [hl]                                    ; $5cc3: $7e
    adc l                                         ; $5cc4: $8d
    sbc h                                         ; $5cc5: $9c
    adc l                                         ; $5cc6: $8d
    sbc c                                         ; $5cc7: $99
    ld h, h                                       ; $5cc8: $64
    rst $18                                       ; $5cc9: $df
    rrca                                          ; $5cca: $0f
    dec a                                         ; $5ccb: $3d
    ld a, [hl-]                                   ; $5ccc: $3a
    cp d                                          ; $5ccd: $ba
    db $ec                                        ; $5cce: $ec
    ld l, b                                       ; $5ccf: $68
    ret c                                         ; $5cd0: $d8

    dec h                                         ; $5cd1: $25
    ld c, d                                       ; $5cd2: $4a
    db $fd                                        ; $5cd3: $fd
    add d                                         ; $5cd4: $82
    ld [$6540], sp                                ; $5cd5: $08 $40 $65
    ld e, d                                       ; $5cd8: $5a
    ld a, h                                       ; $5cd9: $7c
    sbc a                                         ; $5cda: $9f
    or b                                          ; $5cdb: $b0
    ld b, [hl]                                    ; $5cdc: $46
    ld c, h                                       ; $5cdd: $4c
    dec sp                                        ; $5cde: $3b
    ld sp, $7d34                                  ; $5cdf: $31 $34 $7d
    and l                                         ; $5ce2: $a5
    db $fc                                        ; $5ce3: $fc
    ld a, [de]                                    ; $5ce4: $1a
    add hl, sp                                    ; $5ce5: $39
    db $db                                        ; $5ce6: $db
    ld b, e                                       ; $5ce7: $43
    ld [hl], l                                    ; $5ce8: $75
    or e                                          ; $5ce9: $b3
    ldh [rNR34], a                                ; $5cea: $e0 $1e
    sub a                                         ; $5cec: $97
    sbc d                                         ; $5ced: $9a
    ld h, [hl]                                    ; $5cee: $66
    ld [hl], b                                    ; $5cef: $70
    cp h                                          ; $5cf0: $bc
    ld a, [c]                                     ; $5cf1: $f2
    jp z, Jump_000_367d                           ; $5cf2: $ca $7d $36

    ld h, h                                       ; $5cf5: $64
    ld b, a                                       ; $5cf6: $47
    cpl                                           ; $5cf7: $2f
    db $dd                                        ; $5cf8: $dd
    dec b                                         ; $5cf9: $05
    ld de, $c9e7                                  ; $5cfa: $11 $e7 $c9
    adc b                                         ; $5cfd: $88
    and c                                         ; $5cfe: $a1
    inc [hl]                                      ; $5cff: $34
    ld a, d                                       ; $5d00: $7a
    ld a, b                                       ; $5d01: $78
    ld b, a                                       ; $5d02: $47
    ld [$dde6], a                                 ; $5d03: $ea $e6 $dd
    ld sp, hl                                     ; $5d06: $f9
    or l                                          ; $5d07: $b5
    db $e3                                        ; $5d08: $e3
    ld c, [hl]                                    ; $5d09: $4e
    cp l                                          ; $5d0a: $bd
    sub b                                         ; $5d0b: $90
    add hl, bc                                    ; $5d0c: $09
    ld l, e                                       ; $5d0d: $6b
    call nz, $13b4                                ; $5d0e: $c4 $b4 $13
    ld b, e                                       ; $5d11: $43
    db $d3                                        ; $5d12: $d3
    ld d, a                                       ; $5d13: $57
    jp z, $91af                                   ; $5d14: $ca $af $91

    or e                                          ; $5d17: $b3
    dec a                                         ; $5d18: $3d
    ld d, h                                       ; $5d19: $54
    scf                                           ; $5d1a: $37
    dec bc                                        ; $5d1b: $0b
    ld l, [hl]                                    ; $5d1c: $6e
    rrca                                          ; $5d1d: $0f
    ld b, $c7                                     ; $5d1e: $06 $c7
    dec hl                                        ; $5d20: $2b
    xor a                                         ; $5d21: $af
    call c, $9367                                 ; $5d22: $dc $67 $93
    ld [hl], c                                    ; $5d25: $71
    ld a, h                                       ; $5d26: $7c
    xor a                                         ; $5d27: $af
    ld b, h                                       ; $5d28: $44
    ccf                                           ; $5d29: $3f
    call nz, Call_000_15ca                        ; $5d2a: $c4 $ca $15
    dec [hl]                                      ; $5d2d: $35
    xor $d4                                       ; $5d2e: $ee $d4
    or e                                          ; $5d30: $b3
    ld hl, $0110                                  ; $5d31: $21 $10 $01
    rrca                                          ; $5d34: $0f
    ld b, a                                       ; $5d35: $47
    rst $28                                       ; $5d36: $ef
    add sp, -$37                                  ; $5d37: $e8 $c9
    sub c                                         ; $5d39: $91
    cp l                                          ; $5d3a: $bd
    ld b, [hl]                                    ; $5d3b: $46
    ld c, h                                       ; $5d3c: $4c
    dec sp                                        ; $5d3d: $3b
    ld sp, $7d34                                  ; $5d3e: $31 $34 $7d
    and l                                         ; $5d41: $a5
    db $fc                                        ; $5d42: $fc
    ld a, [de]                                    ; $5d43: $1a
    add hl, sp                                    ; $5d44: $39
    db $db                                        ; $5d45: $db
    ld b, e                                       ; $5d46: $43
    ld [hl], l                                    ; $5d47: $75
    or e                                          ; $5d48: $b3
    ldh [rNR34], a                                ; $5d49: $e0 $1e
    inc c                                         ; $5d4b: $0c
    adc [hl]                                      ; $5d4c: $8e
    ld d, a                                       ; $5d4d: $57
    ld e, [hl]                                    ; $5d4e: $5e
    cp c                                          ; $5d4f: $b9
    rst $08                                       ; $5d50: $cf
    ld h, $bb                                     ; $5d51: $26 $bb
    ld [c], a                                     ; $5d53: $e2
    ld sp, $ef8e                                  ; $5d54: $31 $8e $ef
    add hl, bc                                    ; $5d57: $09
    xor a                                         ; $5d58: $af
    cp d                                          ; $5d59: $ba
    ld h, [hl]                                    ; $5d5a: $66
    ld sp, hl                                     ; $5d5b: $f9
    ld a, a                                       ; $5d5c: $7f
    ld d, l                                       ; $5d5d: $55
    ld b, c                                       ; $5d5e: $41
    inc b                                         ; $5d5f: $04
    adc a                                         ; $5d60: $8f
    ld c, e                                       ; $5d61: $4b
    ld c, l                                       ; $5d62: $4d
    cp a                                          ; $5d63: $bf
    add hl, sp                                    ; $5d64: $39
    ld a, e                                       ; $5d65: $7b
    xor h                                         ; $5d66: $ac
    call c, $9367                                 ; $5d67: $dc $67 $93
    ld h, l                                       ; $5d6a: $65
    sub d                                         ; $5d6b: $92
    db $fc                                        ; $5d6c: $fc
    rra                                           ; $5d6d: $1f
    inc hl                                        ; $5d6e: $23
    add [hl]                                      ; $5d6f: $86
    jp nc, Jump_052_499a                          ; $5d70: $d2 $9a $49

    ld l, c                                       ; $5d73: $69
    db $d3                                        ; $5d74: $d3
    ld c, $ea                                     ; $5d75: $0e $ea
    or l                                          ; $5d77: $b5
    sub b                                         ; $5d78: $90
    add hl, bc                                    ; $5d79: $09
    ld l, e                                       ; $5d7a: $6b
    call nz, $13b4                                ; $5d7b: $c4 $b4 $13
    ld b, e                                       ; $5d7e: $43
    db $d3                                        ; $5d7f: $d3
    ld d, a                                       ; $5d80: $57
    jp z, $91af                                   ; $5d81: $ca $af $91

    or e                                          ; $5d84: $b3
    dec a                                         ; $5d85: $3d
    ld d, h                                       ; $5d86: $54
    scf                                           ; $5d87: $37
    dec bc                                        ; $5d88: $0b
    ld [hl+], a                                   ; $5d89: $22
    rrca                                          ; $5d8a: $0f
    rlca                                          ; $5d8b: $07
    push af                                       ; $5d8c: $f5
    sbc d                                         ; $5d8d: $9a
    cp l                                          ; $5d8e: $bd
    ld [hl-], a                                   ; $5d8f: $32
    ld h, c                                       ; $5d90: $61
    push de                                       ; $5d91: $d5
    adc b                                         ; $5d92: $88
    ld l, c                                       ; $5d93: $69
    daa                                           ; $5d94: $27
    add [hl]                                      ; $5d95: $86
    and [hl]                                      ; $5d96: $a6
    xor a                                         ; $5d97: $af
    sub h                                         ; $5d98: $94
    ld e, a                                       ; $5d99: $5f
    inc hl                                        ; $5d9a: $23
    db $ec                                        ; $5d9b: $ec
    rst $30                                       ; $5d9c: $f7
    or h                                          ; $5d9d: $b4
    sbc d                                         ; $5d9e: $9a
    add hl, de                                    ; $5d9f: $19
    db $d3                                        ; $5da0: $d3
    ld c, d                                       ; $5da1: $4a
    db $ec                                        ; $5da2: $ec
    db $f4                                        ; $5da3: $f4
    dec hl                                        ; $5da4: $2b
    ld [de], a                                    ; $5da5: $12
    call $011e                                    ; $5da6: $cd $1e $01
    rrca                                          ; $5da9: $0f
    rlca                                          ; $5daa: $07
    push af                                       ; $5dab: $f5
    sbc d                                         ; $5dac: $9a
    cp l                                          ; $5dad: $bd
    ld [hl-], a                                   ; $5dae: $32
    ld h, c                                       ; $5daf: $61
    push de                                       ; $5db0: $d5
    adc b                                         ; $5db1: $88
    ld l, c                                       ; $5db2: $69
    daa                                           ; $5db3: $27
    add [hl]                                      ; $5db4: $86
    and [hl]                                      ; $5db5: $a6
    xor a                                         ; $5db6: $af
    sub h                                         ; $5db7: $94
    ld e, a                                       ; $5db8: $5f
    inc hl                                        ; $5db9: $23
    db $ec                                        ; $5dba: $ec
    rlca                                          ; $5dbb: $07
    ld hl, sp-$69                                 ; $5dbc: $f8 $97
    ret c                                         ; $5dbe: $d8

    jp c, $8f15                                   ; $5dbf: $da $15 $8f

    and l                                         ; $5dc2: $a5
    ld c, l                                       ; $5dc3: $4d
    ei                                            ; $5dc4: $fb
    db $ec                                        ; $5dc5: $ec
    ld d, l                                       ; $5dc6: $55
    db $ec                                        ; $5dc7: $ec
    ld de, $060f                                  ; $5dc8: $11 $0f $06
    rst $00                                       ; $5dcb: $c7
    dec hl                                        ; $5dcc: $2b
    xor a                                         ; $5dcd: $af

jr_052_5dce:
    call c, $af67                                 ; $5dce: $dc $67 $af
    db $ec                                        ; $5dd1: $ec
    rlca                                          ; $5dd2: $07
    add hl, de                                    ; $5dd3: $19
    ld e, [hl]                                    ; $5dd4: $5e
    add hl, sp                                    ; $5dd5: $39
    ld d, a                                       ; $5dd6: $57
    rst $08                                       ; $5dd7: $cf
    add [hl]                                      ; $5dd8: $86
    ld c, h                                       ; $5dd9: $4c
    dec sp                                        ; $5dda: $3b
    ld a, d                                       ; $5ddb: $7a
    jp nz, $11aa                                  ; $5ddc: $c2 $aa $11

    db $d3                                        ; $5ddf: $d3
    ld c, [hl]                                    ; $5de0: $4e
    inc c                                         ; $5de1: $0c
    ld c, l                                       ; $5de2: $4d
    ld e, a                                       ; $5de3: $5f
    add hl, hl                                    ; $5de4: $29
    cp a                                          ; $5de5: $bf
    ld b, [hl]                                    ; $5de6: $46
    ld b, d                                       ; $5de7: $42
    adc $f6                                       ; $5de8: $ce $f6
    ld d, b                                       ; $5dea: $50
    db $dd                                        ; $5deb: $dd
    inc l                                         ; $5dec: $2c
    adc b                                         ; $5ded: $88
    nop                                           ; $5dee: $00
    ld h, b                                       ; $5def: $60
    jp hl                                         ; $5df0: $e9


    sbc b                                         ; $5df1: $98
    and l                                         ; $5df2: $a5
    sub [hl]                                      ; $5df3: $96
    pop af                                        ; $5df4: $f1
    ld hl, sp+$65                                 ; $5df5: $f8 $65
    ld h, e                                       ; $5df7: $63
    sbc c                                         ; $5df8: $99
    ld e, a                                       ; $5df9: $5f
    ld h, $c9                                     ; $5dfa: $26 $c9
    rst $38                                       ; $5dfc: $ff
    ld sp, $a966                                  ; $5dfd: $31 $66 $a9
    push hl                                       ; $5e00: $e5
    ld a, [c]                                     ; $5e01: $f2
    ld e, h                                       ; $5e02: $5c
    jp $d9f9                                      ; $5e03: $c3 $f9 $d9


    sub b                                         ; $5e06: $90
    ld l, c                                       ; $5e07: $69
    ld b, a                                       ; $5e08: $47
    adc a                                         ; $5e09: $8f
    sbc b                                         ; $5e0a: $98
    halt                                          ; $5e0b: $76
    ld h, d                                       ; $5e0c: $62
    ld l, b                                       ; $5e0d: $68
    ld a, [$f94a]                                 ; $5e0e: $fa $4a $f9
    dec [hl]                                      ; $5e11: $35
    ld [de], a                                    ; $5e12: $12
    ld [hl], d                                    ; $5e13: $72
    or [hl]                                       ; $5e14: $b6
    add a                                         ; $5e15: $87
    ld [$4166], a                                 ; $5e16: $ea $66 $41
    inc b                                         ; $5e19: $04
    ld c, a                                       ; $5e1a: $4f
    rst $28                                       ; $5e1b: $ef
    or h                                          ; $5e1c: $b4
    ld d, e                                       ; $5e1d: $53
    xor a                                         ; $5e1e: $af
    db $f4                                        ; $5e1f: $f4
    sbc c                                         ; $5e20: $99
    sbc h                                         ; $5e21: $9c
    daa                                           ; $5e22: $27
    ld b, a                                       ; $5e23: $47
    ld c, a                                       ; $5e24: $4f
    cp a                                          ; $5e25: $bf
    db $e3                                        ; $5e26: $e3
    ld hl, sp-$22                                 ; $5e27: $f8 $de
    sub l                                         ; $5e29: $95
    add hl, bc                                    ; $5e2a: $09
    xor a                                         ; $5e2b: $af
    adc h                                         ; $5e2c: $8c
    ld c, h                                       ; $5e2d: $4c
    ld e, b                                       ; $5e2e: $58
    inc hl                                        ; $5e2f: $23
    and [hl]                                      ; $5e30: $a6
    sbc l                                         ; $5e31: $9d
    jr jr_052_5dce                                ; $5e32: $18 $9a

    cp [hl]                                       ; $5e34: $be
    ld d, d                                       ; $5e35: $52
    ld a, [hl]                                    ; $5e36: $7e
    adc l                                         ; $5e37: $8d
    ld b, b                                       ; $5e38: $40
    inc b                                         ; $5e39: $04
    rst $20                                       ; $5e3a: $e7
    pop hl                                        ; $5e3b: $e1
    db $d3                                        ; $5e3c: $d3
    xor e                                         ; $5e3d: $ab
    ld d, a                                       ; $5e3e: $57
    rst $38                                       ; $5e3f: $ff
    ei                                            ; $5e40: $fb
    sbc b                                         ; $5e41: $98
    and l                                         ; $5e42: $a5
    and [hl]                                      ; $5e43: $a6
    sub l                                         ; $5e44: $95
    adc l                                         ; $5e45: $8d
    ld [hl], c                                    ; $5e46: $71
    and a                                         ; $5e47: $a7
    sbc [hl]                                      ; $5e48: $9e
    rst $18                                       ; $5e49: $df
    rst $38                                       ; $5e4a: $ff
    cp c                                          ; $5e4b: $b9
    db $e3                                        ; $5e4c: $e3
    rst $38                                       ; $5e4d: $ff
    ldh a, [$b3]                                  ; $5e4e: $f0 $b3
    dec a                                         ; $5e50: $3d
    ld d, h                                       ; $5e51: $54
    scf                                           ; $5e52: $37
    dec bc                                        ; $5e53: $0b
    ld [hl+], a                                   ; $5e54: $22
    adc a                                         ; $5e55: $8f
    ld c, e                                       ; $5e56: $4b
    ld c, l                                       ; $5e57: $4d
    xor e                                         ; $5e58: $ab
    sbc $15                                       ; $5e59: $de $15
    ld d, l                                       ; $5e5b: $55
    db $e3                                        ; $5e5c: $e3
    ld a, [hl]                                    ; $5e5d: $7e
    db $f4                                        ; $5e5e: $f4
    adc b                                         ; $5e5f: $88
    and c                                         ; $5e60: $a1
    jp hl                                         ; $5e61: $e9


    dec hl                                        ; $5e62: $2b
    push hl                                       ; $5e63: $e5
    rst $10                                       ; $5e64: $d7
    ld c, b                                       ; $5e65: $48
    db $f4                                        ; $5e66: $f4
    sbc b                                         ; $5e67: $98
    ld c, c                                       ; $5e68: $49
    or $49                                        ; $5e69: $f6 $49
    ld [hl], d                                    ; $5e6b: $72
    or [hl]                                       ; $5e6c: $b6
    add a                                         ; $5e6d: $87
    ld [$4166], a                                 ; $5e6e: $ea $66 $41
    inc b                                         ; $5e71: $04
    jr nz, jr_052_5e81                            ; $5e72: $20 $0d

    sbc l                                         ; $5e74: $9d
    rst $18                                       ; $5e75: $df
    rst $38                                       ; $5e76: $ff
    db $d3                                        ; $5e77: $d3
    ld b, l                                       ; $5e78: $45
    ld l, d                                       ; $5e79: $6a
    add hl, sp                                    ; $5e7a: $39
    and h                                         ; $5e7b: $a4
    ld a, [hl-]                                   ; $5e7c: $3a

Jump_052_5e7d:
    adc $f6                                       ; $5e7d: $ce $f6
    ld d, b                                       ; $5e7f: $50
    db $dd                                        ; $5e80: $dd

jr_052_5e81:
    inc l                                         ; $5e81: $2c
    cp b                                          ; $5e82: $b8
    rst $00                                       ; $5e83: $c7
    and l                                         ; $5e84: $a5
    add $f1                                       ; $5e85: $c6 $f1
    cp l                                          ; $5e87: $bd
    dec hl                                        ; $5e88: $2b
    inc de                                        ; $5e89: $13
    ld d, [hl]                                    ; $5e8a: $56
    adc l                                         ; $5e8b: $8d
    jr @-$64                                      ; $5e8c: $18 $9a

    cp [hl]                                       ; $5e8e: $be
    ld d, d                                       ; $5e8f: $52
    ld a, [hl]                                    ; $5e90: $7e
    adc l                                         ; $5e91: $8d
    ld b, h                                       ; $5e92: $44
    ld c, a                                       ; $5e93: $4f
    adc e                                         ; $5e94: $8b
    ld e, a                                       ; $5e95: $5f
    di                                            ; $5e96: $f3
    ld l, e                                       ; $5e97: $6b
    ld b, e                                       ; $5e98: $43
    jr nz, jr_052_5e9d                            ; $5e99: $20 $02

    rrca                                          ; $5e9b: $0f
    add b                                         ; $5e9c: $80

jr_052_5e9d:
    jr nc, jr_052_5eff                            ; $5e9d: $30 $60

    ret nz                                        ; $5e9f: $c0

    ld a, [hl-]                                   ; $5ea0: $3a
    ld [hl], b                                    ; $5ea1: $70
    ld h, b                                       ; $5ea2: $60
    ld sp, $0462                                  ; $5ea3: $31 $62 $04
    adc d                                         ; $5ea6: $8a
    pop hl                                        ; $5ea7: $e1
    ld l, h                                       ; $5ea8: $6c
    add hl, hl                                    ; $5ea9: $29
    xor l                                         ; $5eaa: $ad
    cp d                                          ; $5eab: $ba
    ld d, d                                       ; $5eac: $52
    ld e, $9d                                     ; $5ead: $1e $9d
    rst $08                                       ; $5eaf: $cf
    ld h, $45                                     ; $5eb0: $26 $45
    inc hl                                        ; $5eb2: $23
    xor a                                         ; $5eb3: $af
    call nz, $e3ae                                ; $5eb4: $c4 $ae $e3
    sub a                                         ; $5eb7: $97
    add a                                         ; $5eb8: $87
    db $dd                                        ; $5eb9: $dd
    dec d                                         ; $5eba: $15
    ld a, e                                       ; $5ebb: $7b
    ld d, e                                       ; $5ebc: $53
    or a                                          ; $5ebd: $b7
    ld d, [hl]                                    ; $5ebe: $56
    dec e                                         ; $5ebf: $1d
    di                                            ; $5ec0: $f3
    ld l, $1b                                     ; $5ec1: $2e $1b
    or h                                          ; $5ec3: $b4
    sbc d                                         ; $5ec4: $9a
    db $e4                                        ; $5ec5: $e4
    add hl, de                                    ; $5ec6: $19
    ld l, [hl]                                    ; $5ec7: $6e
    dec h                                         ; $5ec8: $25
    halt                                          ; $5ec9: $76
    ld l, h                                       ; $5eca: $6c
    add a                                         ; $5ecb: $87
    cp c                                          ; $5ecc: $b9
    ld e, d                                       ; $5ecd: $5a
    and d                                         ; $5ece: $a2
    rlca                                          ; $5ecf: $07
    cp b                                          ; $5ed0: $b8
    ld c, l                                       ; $5ed1: $4d
    add [hl]                                      ; $5ed2: $86
    ld h, e                                       ; $5ed3: $63
    ldh a, [rSCY]                                 ; $5ed4: $f0 $42
    ld a, [hl]                                    ; $5ed6: $7e
    push af                                       ; $5ed7: $f5
    or l                                          ; $5ed8: $b5
    rla                                           ; $5ed9: $17
    ld de, $c9e7                                  ; $5eda: $11 $e7 $c9
    or h                                          ; $5edd: $b4
    ld [$bc71], a                                 ; $5ede: $ea $71 $bc
    ei                                            ; $5ee1: $fb
    db $ec                                        ; $5ee2: $ec
    sub l                                         ; $5ee3: $95
    ld a, c                                       ; $5ee4: $79
    sbc e                                         ; $5ee5: $9b
    rst $38                                       ; $5ee6: $ff
    or e                                          ; $5ee7: $b3
    sub a                                         ; $5ee8: $97
    ld a, [hl]                                    ; $5ee9: $7e
    ld [hl], $1b                                  ; $5eea: $36 $1b
    or d                                          ; $5eec: $b2
    ld c, d                                       ; $5eed: $4a
    ld h, a                                       ; $5eee: $67
    di                                            ; $5eef: $f3
    inc de                                        ; $5ef0: $13
    sbc a                                         ; $5ef1: $9f
    sbc h                                         ; $5ef2: $9c
    xor h                                         ; $5ef3: $ac
    ld a, [hl]                                    ; $5ef4: $7e
    adc b                                         ; $5ef5: $88
    cp l                                          ; $5ef6: $bd
    xor d                                         ; $5ef7: $aa
    or d                                          ; $5ef8: $b2
    rst $00                                       ; $5ef9: $c7
    ld [de], a                                    ; $5efa: $12
    rst $28                                       ; $5efb: $ef
    inc h                                         ; $5efc: $24
    cp e                                          ; $5efd: $bb
    ld e, h                                       ; $5efe: $5c

jr_052_5eff:
    ld d, c                                       ; $5eff: $51
    ld hl, $4ee3                                  ; $5f00: $21 $e3 $4e
    cp l                                          ; $5f03: $bd
    ld a, [$a6bf]                                 ; $5f04: $fa $bf $a6
    dec e                                         ; $5f07: $1d
    adc h                                         ; $5f08: $8c
    ld c, l                                       ; $5f09: $4d
    rst $08                                       ; $5f0a: $cf
    and h                                         ; $5f0b: $a4
    or h                                          ; $5f0c: $b4
    ld a, c                                       ; $5f0d: $79
    sbc e                                         ; $5f0e: $9b
    rst $38                                       ; $5f0f: $ff
    ld c, c                                       ; $5f10: $49
    push af                                       ; $5f11: $f5
    xor a                                         ; $5f12: $af
    ld h, [hl]                                    ; $5f13: $66
    ccf                                           ; $5f14: $3f
    jr nc, @-$35                                  ; $5f15: $30 $c9

    ld c, b                                       ; $5f17: $48
    ret                                           ; $5f18: $c9


    ld l, h                                       ; $5f19: $6c
    ld [hl-], a                                   ; $5f1a: $32
    ld d, d                                       ; $5f1b: $52
    reti                                          ; $5f1c: $d9


    ld l, e                                       ; $5f1d: $6b
    ld [hl], $64                                  ; $5f1e: $36 $64
    call c, $b3a9                                 ; $5f20: $dc $a9 $b3
    rst $10                                       ; $5f23: $d7
    ld c, d                                       ; $5f24: $4a
    ld e, a                                       ; $5f25: $5f
    db $fd                                        ; $5f26: $fd
    ld e, a                                       ; $5f27: $5f
    di                                            ; $5f28: $f3
    ld [hl], $ff                                  ; $5f29: $36 $ff
    ld [hl], e                                    ; $5f2b: $73
    and [hl]                                      ; $5f2c: $a6
    jp hl                                         ; $5f2d: $e9


    adc a                                         ; $5f2e: $8f
    ld e, [hl]                                    ; $5f2f: $5e
    ld [hl], $74                                  ; $5f30: $36 $74
    ld [hl], $19                                  ; $5f32: $36 $19
    ld sp, $4694                                  ; $5f34: $31 $94 $46
    xor a                                         ; $5f37: $af
    call c, $8ff7                                 ; $5f38: $dc $f7 $8f
    xor [hl]                                      ; $5f3b: $ae
    reti                                          ; $5f3c: $d9


    xor e                                         ; $5f3d: $ab
    jr nz, jr_052_5f42                            ; $5f3e: $20 $02

    rst $08                                       ; $5f40: $cf
    adc c                                         ; $5f41: $89

jr_052_5f42:
    rst $38                                       ; $5f42: $ff
    xor e                                         ; $5f43: $ab
    ld b, d                                       ; $5f44: $42
    sub [hl]                                      ; $5f45: $96
    sbc l                                         ; $5f46: $9d
    rst $28                                       ; $5f47: $ef
    reti                                          ; $5f48: $d9


    ld h, h                                       ; $5f49: $64
    ld [hl], a                                    ; $5f4a: $77
    or $ba                                        ; $5f4b: $f6 $ba
    adc a                                         ; $5f4d: $8f
    dec hl                                        ; $5f4e: $2b
    ld a, d                                       ; $5f4f: $7a
    ccf                                           ; $5f50: $3f
    inc sp                                        ; $5f51: $33
    db $f4                                        ; $5f52: $f4
    ld a, [$fb3a]                                 ; $5f53: $fa $3a $fb
    sbc l                                         ; $5f56: $9d
    add a                                         ; $5f57: $87
    rst $28                                       ; $5f58: $ef
    add sp, $65                                   ; $5f59: $e8 $65
    sbc l                                         ; $5f5b: $9d
    ld l, a                                       ; $5f5c: $6f
    ld e, a                                       ; $5f5d: $5f
    cp c                                          ; $5f5e: $b9
    adc a                                         ; $5f5f: $8f
    dec hl                                        ; $5f60: $2b
    rst $30                                       ; $5f61: $f7
    ld e, d                                       ; $5f62: $5a
    cp c                                          ; $5f63: $b9
    rst $08                                       ; $5f64: $cf
    ld h, $bb                                     ; $5f65: $26 $bb
    ld [c], a                                     ; $5f67: $e2
    ld sp, $8872                                  ; $5f68: $31 $72 $88
    adc l                                         ; $5f6b: $8d
    ld sp, hl                                     ; $5f6c: $f9
    db $fd                                        ; $5f6d: $fd
    ld a, a                                       ; $5f6e: $7f
    ld [hl], $7c                                  ; $5f6f: $36 $7c
    call c, Call_000_13a9                         ; $5f71: $dc $a9 $13
    ld h, a                                       ; $5f74: $67
    adc a                                         ; $5f75: $8f
    nop                                           ; $5f76: $00
    rst $20                                       ; $5f77: $e7
    ret                                           ; $5f78: $c9


    or h                                          ; $5f79: $b4
    ld [$1391], a                                 ; $5f7a: $ea $91 $13
    xor $ab                                       ; $5f7d: $ee $ab
    rst $38                                       ; $5f7f: $ff
    ld l, e                                       ; $5f80: $6b
    cp c                                          ; $5f81: $b9
    ld c, b                                       ; $5f82: $48
    db $f4                                        ; $5f83: $f4
    ld [hl], b                                    ; $5f84: $70
    ld a, [hl]                                    ; $5f85: $7e
    rst $38                                       ; $5f86: $ff
    ld h, [hl]                                    ; $5f87: $66
    cpl                                           ; $5f88: $2f
    add hl, de                                    ; $5f89: $19
    dec c                                         ; $5f8a: $0d
    cp e                                          ; $5f8b: $bb
    ld c, h                                       ; $5f8c: $4c
    call z, $bc4f                                 ; $5f8d: $cc $4f $bc
    sub e                                         ; $5f90: $93
    db $ec                                        ; $5f91: $ec
    ld [hl], d                                    ; $5f92: $72
    ld b, l                                       ; $5f93: $45
    or c                                          ; $5f94: $b1
    rra                                           ; $5f95: $1f
    sbc b                                         ; $5f96: $98
    ld h, h                                       ; $5f97: $64
    and h                                         ; $5f98: $a4
    ld h, h                                       ; $5f99: $64
    ld [hl], $19                                  ; $5f9a: $36 $19
    ld c, a                                       ; $5f9c: $4f
    ld l, d                                       ; $5f9d: $6a
    ld a, [hl]                                    ; $5f9e: $7e
    rst $38                                       ; $5f9f: $ff
    rst $18                                       ; $5fa0: $df
    add e                                         ; $5fa1: $83
    ld d, c                                       ; $5fa2: $51
    adc h                                         ; $5fa3: $8c
    xor d                                         ; $5fa4: $aa
    dec a                                         ; $5fa5: $3d
    or e                                          ; $5fa6: $b3
    ld b, a                                       ; $5fa7: $47
    rst $20                                       ; $5fa8: $e7
    ret                                           ; $5fa9: $c9


    or h                                          ; $5faa: $b4
    ld [$23a5], a                                 ; $5fab: $ea $a5 $23
    add a                                         ; $5fae: $87
    ld [$d9f2], a                                 ; $5faf: $ea $f2 $d9
    sub b                                         ; $5fb2: $90
    add hl, de                                    ; $5fb3: $19
    ccf                                           ; $5fb4: $3f
    ld d, d                                       ; $5fb5: $52
    and h                                         ; $5fb6: $a4
    sub [hl]                                      ; $5fb7: $96
    push bc                                       ; $5fb8: $c5
    and h                                         ; $5fb9: $a4
    db $d3                                        ; $5fba: $d3
    ld hl, $ef3b                                  ; $5fbb: $21 $3b $ef
    ld c, d                                       ; $5fbe: $4a
    sbc c                                         ; $5fbf: $99
    pop de                                        ; $5fc0: $d1
    or b                                          ; $5fc1: $b0
    di                                            ; $5fc2: $f3
    ld [hl], $ff                                  ; $5fc3: $36 $ff
    ld [hl], e                                    ; $5fc5: $73
    and [hl]                                      ; $5fc6: $a6
    jp hl                                         ; $5fc7: $e9


    adc a                                         ; $5fc8: $8f
    ld h, [hl]                                    ; $5fc9: $66
    cp a                                          ; $5fca: $bf
    di                                            ; $5fcb: $f3
    ldh a, [rNR33]                                ; $5fcc: $f0 $1d
    cp l                                          ; $5fce: $bd
    ld a, $dc                                     ; $5fcf: $3e $dc
    rst $00                                       ; $5fd1: $c7
    ei                                            ; $5fd2: $fb
    inc [hl]                                      ; $5fd3: $34
    inc hl                                        ; $5fd4: $23
    add [hl]                                      ; $5fd5: $86
    adc [hl]                                      ; $5fd6: $8e
    dec sp                                        ; $5fd7: $3b
    push af                                       ; $5fd8: $f5
    ld l, h                                       ; $5fd9: $6c
    ld hl, sp-$4c                                 ; $5fda: $f8 $b4
    sub d                                         ; $5fdc: $92
    push hl                                       ; $5fdd: $e5
    sbc d                                         ; $5fde: $9a
    and c                                         ; $5fdf: $a1
    or e                                          ; $5fe0: $b3
    ld d, a                                       ; $5fe1: $57
    ld l, d                                       ; $5fe2: $6a
    ld a, [$1221]                                 ; $5fe3: $fa $21 $12
    call $011e                                    ; $5fe6: $cd $1e $01
    rst $20                                       ; $5fe9: $e7
    ret                                           ; $5fea: $c9


    or h                                          ; $5feb: $b4
    ld [$567d], a                                 ; $5fec: $ea $7d $56
    adc d                                         ; $5fef: $8a
    sub h                                         ; $5ff0: $94
    rst $20                                       ; $5ff1: $e7
    ld a, c                                       ; $5ff2: $79
    call $b55e                                    ; $5ff3: $cd $5e $b5
    sub e                                         ; $5ff6: $93
    ld e, $bd                                     ; $5ff7: $1e $bd
    call z, $c93c                                 ; $5ff9: $cc $3c $c9
    ld c, h                                       ; $5ffc: $4c
    ld c, d                                       ; $5ffd: $4a
    sbc e                                         ; $5ffe: $9b
    halt                                          ; $5fff: $76
    db $dd                                        ; $6000: $dd
    res 4, a                                      ; $6001: $cb $a7
    ld b, d                                       ; $6003: $42
    inc c                                         ; $6004: $0c
    sbc l                                         ; $6005: $9d
    ld l, d                                       ; $6006: $6a
    db $e3                                        ; $6007: $e3
    ld l, [hl]                                    ; $6008: $6e
    ld e, d                                       ; $6009: $5a
    ld a, [bc]                                    ; $600a: $0a
    ld c, $6c                                     ; $600b: $0e $6c
    ld c, d                                       ; $600d: $4a
    sbc e                                         ; $600e: $9b
    inc h                                         ; $600f: $24
    dec sp                                        ; $6010: $3b
    ld a, d                                       ; $6011: $7a
    ld [hl], $d9                                  ; $6012: $36 $d9
    ld hl, $affe                                  ; $6014: $21 $fe $af
    ld a, [bc]                                    ; $6017: $0a
    sbc c                                         ; $6018: $99
    halt                                          ; $6019: $76
    inc [hl]                                      ; $601a: $34
    add h                                         ; $601b: $84
    db $10                                        ; $601c: $10
    rst $20                                       ; $601d: $e7
    rst $30                                       ; $601e: $f7
    ld h, b                                       ; $601f: $60
    inc d                                         ; $6020: $14
    and e                                         ; $6021: $a3
    ld l, d                                       ; $6022: $6a
    rst $08                                       ; $6023: $cf
    db $ec                                        ; $6024: $ec
    ld de, $e1e7                                  ; $6025: $11 $e7 $e1
    inc hl                                        ; $6028: $23
    add a                                         ; $6029: $87
    ld c, b                                       ; $602a: $48
    ld e, [hl]                                    ; $602b: $5e
    ld [hl], $74                                  ; $602c: $36 $74
    ld hl, $98e3                                  ; $602e: $21 $e3 $98
    add a                                         ; $6031: $87
    adc l                                         ; $6032: $8d
    sbc $9d                                       ; $6033: $de $9d
    ld d, [hl]                                    ; $6035: $56
    xor $21                                       ; $6036: $ee $21
    dec hl                                        ; $6038: $2b
    rst $30                                       ; $6039: $f7
    reti                                          ; $603a: $d9


    ld h, h                                       ; $603b: $64
    ld e, d                                       ; $603c: $5a
    push af                                       ; $603d: $f5
    ld a, $2b                                     ; $603e: $3e $2b
    ld b, l                                       ; $6040: $45
    jp z, $d2f3                                   ; $6041: $ca $f3 $d2

    rst $38                                       ; $6044: $ff
    ld l, $9b                                     ; $6045: $2e $9b
    or $e8                                        ; $6047: $f6 $e8
    or d                                          ; $6049: $b2
    cp e                                          ; $604a: $bb
    inc bc                                        ; $604b: $03
    sbc $2c                                       ; $604c: $de $2c
    adc [hl]                                      ; $604e: $8e
    cp e                                          ; $604f: $bb
    ld h, d                                       ; $6050: $62
    ld c, l                                       ; $6051: $4d
    jp Jump_000_279d                              ; $6052: $c3 $9d $27


    db $d3                                        ; $6055: $d3
    ld c, [hl]                                    ; $6056: $4e
    dec a                                         ; $6057: $3d
    xor a                                         ; $6058: $af
    ld e, a                                       ; $6059: $5f
    ld a, c                                       ; $605a: $79
    add [hl]                                      ; $605b: $86
    xor [hl]                                      ; $605c: $ae
    call c, $c367                                 ; $605d: $dc $67 $c3
    rst $00                                       ; $6060: $c7
    ld e, l                                       ; $6061: $5d
    sub c                                         ; $6062: $91
    cp h                                          ; $6063: $bc
    sub b                                         ; $6064: $90
    add hl, bc                                    ; $6065: $09
    ld l, e                                       ; $6066: $6b
    call nz, $13b4                                ; $6067: $c4 $b4 $13
    ld b, e                                       ; $606a: $43
    db $d3                                        ; $606b: $d3
    ld d, a                                       ; $606c: $57
    jp z, $91af                                   ; $606d: $ca $af $91

    db $dd                                        ; $6070: $dd
    push hl                                       ; $6071: $e5
    and d                                         ; $6072: $a2
    cp a                                          ; $6073: $bf
    sbc d                                         ; $6074: $9a
    db $fc                                        ; $6075: $fc
    inc h                                         ; $6076: $24
    sbc l                                         ; $6077: $9d
    ld c, $19                                     ; $6078: $0e $19
    ld [hl], a                                    ; $607a: $77
    ld [$9b79], a                                 ; $607b: $ea $79 $9b
    rst $38                                       ; $607e: $ff
    ld c, c                                       ; $607f: $49
    push af                                       ; $6080: $f5
    rst $08                                       ; $6081: $cf
    call nz, Call_052_43b4                        ; $6082: $c4 $b4 $43
    inc b                                         ; $6085: $04
    rst $20                                       ; $6086: $e7
    ret                                           ; $6087: $c9


    or h                                          ; $6088: $b4
    ld [$bc71], a                                 ; $6089: $ea $71 $bc
    ei                                            ; $608c: $fb
    cp h                                          ; $608d: $bc
    call nc, Call_052_7e70                        ; $608e: $d4 $70 $7e
    push af                                       ; $6091: $f5
    ld a, a                                       ; $6092: $7f
    db $ed                                        ; $6093: $ed
    adc d                                         ; $6094: $8a
    ld [$37b0], a                                 ; $6095: $ea $b0 $37
    inc h                                         ; $6098: $24
    ld b, a                                       ; $6099: $47
    cpl                                           ; $609a: $2f
    dec de                                        ; $609b: $1b
    cp d                                          ; $609c: $ba
    daa                                           ; $609d: $27
    ld d, d                                       ; $609e: $52
    ld a, b                                       ; $609f: $78
    inc l                                         ; $60a0: $2c
    ld e, l                                       ; $60a1: $5d
    halt                                          ; $60a2: $76
    add [hl]                                      ; $60a3: $86
    or d                                          ; $60a4: $b2
    rra                                           ; $60a5: $1f
    jr @+$60                                      ; $60a6: $18 $5e

    add hl, de                                    ; $60a8: $19
    sbc c                                         ; $60a9: $99
    rst $10                                       ; $60aa: $d7
    xor a                                         ; $60ab: $af
    sbc [hl]                                      ; $60ac: $9e
    and c                                         ; $60ad: $a1
    db $e3                                        ; $60ae: $e3
    ld c, [hl]                                    ; $60af: $4e
    dec a                                         ; $60b0: $3d
    ld a, e                                       ; $60b1: $7b
    push de                                       ; $60b2: $d5
    jp z, Jump_000_367d                           ; $60b3: $ca $7d $36

    ld a, h                                       ; $60b6: $7c
    call c, $c915                                 ; $60b7: $dc $15 $c9
    dec bc                                        ; $60ba: $0b
    sbc c                                         ; $60bb: $99
    or b                                          ; $60bc: $b0
    ld b, [hl]                                    ; $60bd: $46
    ld c, h                                       ; $60be: $4c
    dec sp                                        ; $60bf: $3b
    ld sp, $7d34                                  ; $60c0: $31 $34 $7d
    and l                                         ; $60c3: $a5
    db $fc                                        ; $60c4: $fc
    ld a, [de]                                    ; $60c5: $1a
    reti                                          ; $60c6: $d9


    ld e, l                                       ; $60c7: $5d
    ld l, $fa                                     ; $60c8: $2e $fa
    xor e                                         ; $60ca: $ab
    ret                                           ; $60cb: $c9


    ld c, a                                       ; $60cc: $4f
    jp nc, $90e9                                  ; $60cd: $d2 $e9 $90

    ld [hl], c                                    ; $60d0: $71
    and a                                         ; $60d1: $a7
    sbc [hl]                                      ; $60d2: $9e
    or a                                          ; $60d3: $b7
    ld sp, hl                                     ; $60d4: $f9
    sbc a                                         ; $60d5: $9f
    ld d, h                                       ; $60d6: $54
    rst $38                                       ; $60d7: $ff
    ld c, h                                       ; $60d8: $4c
    ld c, h                                       ; $60d9: $4c
    dec sp                                        ; $60da: $3b
    ld b, h                                       ; $60db: $44
    rst $20                                       ; $60dc: $e7
    ret                                           ; $60dd: $c9


    or h                                          ; $60de: $b4
    ld [$61f5], a                                 ; $60df: $ea $f5 $61
    ld l, l                                       ; $60e2: $6d
    ld sp, hl                                     ; $60e3: $f9
    ld e, $8c                                     ; $60e4: $1e $8c
    ld h, d                                       ; $60e6: $62
    ld d, h                                       ; $60e7: $54
    db $ed                                        ; $60e8: $ed
    ld a, c                                       ; $60e9: $79
    adc c                                         ; $60ea: $89
    ret c                                         ; $60eb: $d8

    sub d                                         ; $60ec: $92
    ld l, c                                       ; $60ed: $69
    add $c3                                       ; $60ee: $c6 $c3
    rst $00                                       ; $60f0: $c7
    dec [hl]                                      ; $60f1: $35
    cpl                                           ; $60f2: $2f
    or e                                          ; $60f3: $b3
    ld hl, $7ee3                                  ; $60f4: $21 $e3 $7e
    ld d, c                                       ; $60f7: $51
    ld e, d                                       ; $60f8: $5a
    ld h, d                                       ; $60f9: $62
    ld h, e                                       ; $60fa: $63
    rst $38                                       ; $60fb: $ff
    cp $1a                                        ; $60fc: $fe $1a
    add hl, hl                                    ; $60fe: $29
    cp c                                          ; $60ff: $b9
    ld [de], a                                    ; $6100: $12
    jp nz, $187e                                  ; $6101: $c2 $7e $18

    ld e, b                                       ; $6104: $58
    call nz, Call_052_67c3                        ; $6105: $c4 $c3 $67
    add sp, -$36                                  ; $6108: $e8 $ca

jr_052_610a:
    ld a, l                                       ; $610a: $7d
    ld [hl], $7c                                  ; $610b: $36 $7c
    call c, $c915                                 ; $610d: $dc $15 $c9
    dec bc                                        ; $6110: $0b
    sbc c                                         ; $6111: $99
    or b                                          ; $6112: $b0
    ld b, [hl]                                    ; $6113: $46
    ld c, h                                       ; $6114: $4c
    dec sp                                        ; $6115: $3b
    ld sp, $7d34                                  ; $6116: $31 $34 $7d
    and l                                         ; $6119: $a5
    db $fc                                        ; $611a: $fc
    ld a, [de]                                    ; $611b: $1a
    reti                                          ; $611c: $d9


    ld e, l                                       ; $611d: $5d
    ld l, $fa                                     ; $611e: $2e $fa
    xor e                                         ; $6120: $ab
    ret                                           ; $6121: $c9


    ld c, a                                       ; $6122: $4f
    jp nc, $90e9                                  ; $6123: $d2 $e9 $90

    ld [hl], c                                    ; $6126: $71
    and a                                         ; $6127: $a7
    sbc [hl]                                      ; $6128: $9e
    or a                                          ; $6129: $b7
    ld sp, hl                                     ; $612a: $f9
    sbc a                                         ; $612b: $9f
    ld d, h                                       ; $612c: $54
    rst $38                                       ; $612d: $ff
    ld c, h                                       ; $612e: $4c
    ld c, h                                       ; $612f: $4c
    ei                                            ; $6130: $fb
    or d                                          ; $6131: $b2
    ld e, $78                                     ; $6132: $1e $78
    db $f4                                        ; $6134: $f4
    ld d, h                                       ; $6135: $54
    adc b                                         ; $6136: $88
    and c                                         ; $6137: $a1
    set 0, h                                      ; $6138: $cb $c4
    db $fc                                        ; $613a: $fc
    sub d                                         ; $613b: $92
    ld h, l                                       ; $613c: $65
    ld b, e                                       ; $613d: $43
    rla                                           ; $613e: $17
    or d                                          ; $613f: $b2
    ld c, h                                       ; $6140: $4c
    adc h                                         ; $6141: $8c
    jp z, Jump_000_2ee9                           ; $6142: $ca $e9 $2e

    or c                                          ; $6145: $b1
    db $10                                        ; $6146: $10
    ld bc, $c9e7                                  ; $6147: $01 $e7 $c9
    jr c, jr_052_610a                             ; $614a: $38 $be

    sub a                                         ; $614c: $97
    ld a, $ba                                     ; $614d: $3e $ba
    or $4b                                        ; $614f: $f6 $4b
    ld b, l                                       ; $6151: $45
    sub e                                         ; $6152: $93
    ld l, $c9                                     ; $6153: $2e $c9
    ld hl, $ce0b                                  ; $6155: $21 $0b $ce
    and e                                         ; $6158: $a3
    ld d, a                                       ; $6159: $57
    xor $d3                                       ; $615a: $ee $d3
    ld l, d                                       ; $615c: $6a
    db $e4                                        ; $615d: $e4
    ld d, a                                       ; $615e: $57
    sub a                                         ; $615f: $97
    rrca                                          ; $6160: $0f
    ld l, a                                       ; $6161: $6f
    and e                                         ; $6162: $a3
    add a                                         ; $6163: $87
    rst $28                                       ; $6164: $ef
    xor $d4                                       ; $6165: $ee $d4
    cp $8f                                        ; $6167: $fe $8f
    xor [hl]                                      ; $6169: $ae
    sbc c                                         ; $616a: $99
    sub h                                         ; $616b: $94
    ld [hl], $8e                                  ; $616c: $36 $8e
    ld [hl], a                                    ; $616e: $77
    sbc a                                         ; $616f: $9f
    sub a                                         ; $6170: $97
    ld a, [de]                                    ; $6171: $1a
    adc $cf                                       ; $6172: $ce $cf
    db $db                                        ; $6174: $db
    db $fc                                        ; $6175: $fc
    ld l, a                                       ; $6176: $6f
    sbc e                                         ; $6177: $9b
    sub l                                         ; $6178: $95
    ld [hl+], a                                   ; $6179: $22
    cp c                                          ; $617a: $b9
    inc hl                                        ; $617b: $23
    dec d                                         ; $617c: $15
    cp b                                          ; $617d: $b8
    add a                                         ; $617e: $87
    or b                                          ; $617f: $b0
    rra                                           ; $6180: $1f
    ret c                                         ; $6181: $d8

    sub h                                         ; $6182: $94
    ld [hl], $49                                  ; $6183: $36 $49
    add $5d                                       ; $6185: $c6 $5d
    sub c                                         ; $6187: $91
    inc a                                         ; $6188: $3c
    dec de                                        ; $6189: $1b
    cp [hl]                                       ; $618a: $be
    sub b                                         ; $618b: $90
    add hl, bc                                    ; $618c: $09
    ld l, e                                       ; $618d: $6b
    call nz, $13b4                                ; $618e: $c4 $b4 $13
    ld b, e                                       ; $6191: $43
    db $d3                                        ; $6192: $d3
    ld d, a                                       ; $6193: $57
    jp z, $91af                                   ; $6194: $ca $af $91

    db $dd                                        ; $6197: $dd
    push hl                                       ; $6198: $e5
    and d                                         ; $6199: $a2
    cp a                                          ; $619a: $bf
    sbc d                                         ; $619b: $9a
    db $fc                                        ; $619c: $fc
    inc h                                         ; $619d: $24
    sbc l                                         ; $619e: $9d
    ld c, $19                                     ; $619f: $0e $19
    ld [hl], a                                    ; $61a1: $77
    ld [$9b79], a                                 ; $61a2: $ea $79 $9b
    rst $38                                       ; $61a5: $ff
    ld c, c                                       ; $61a6: $49
    push af                                       ; $61a7: $f5
    rst $08                                       ; $61a8: $cf
    call nz, Call_052_43b4                        ; $61a9: $c4 $b4 $43
    inc b                                         ; $61ac: $04
    rst $20                                       ; $61ad: $e7
    ret                                           ; $61ae: $c9


    ld [hl], d                                    ; $61af: $72
    cp c                                          ; $61b0: $b9
    rst $00                                       ; $61b1: $c7
    or d                                          ; $61b2: $b2
    dec de                                        ; $61b3: $1b
    inc e                                         ; $61b4: $1c
    rra                                           ; $61b5: $1f
    ld [hl], a                                    ; $61b6: $77
    ld [$8b81], a                                 ; $61b7: $ea $81 $8b
    ret nc                                        ; $61ba: $d0

    inc hl                                        ; $61bb: $23
    rst $08                                       ; $61bc: $cf
    and h                                         ; $61bd: $a4
    or h                                          ; $61be: $b4
    ld l, c                                       ; $61bf: $69
    rst $10                                       ; $61c0: $d7
    cp l                                          ; $61c1: $bd
    ld l, h                                       ; $61c2: $6c
    inc l                                         ; $61c3: $2c
    ld l, l                                       ; $61c4: $6d
    ld c, b                                       ; $61c5: $48
    ret z                                         ; $61c6: $c8

    or d                                          ; $61c7: $b2
    and c                                         ; $61c8: $a1
    ld c, e                                       ; $61c9: $4b
    rst $38                                       ; $61ca: $ff
    xor e                                         ; $61cb: $ab
    ld e, a                                       ; $61cc: $5f
    ld e, a                                       ; $61cd: $5f
    or $e4                                        ; $61ce: $f6 $e4
    add a                                         ; $61d0: $87
    adc h                                         ; $61d1: $8c
    ld l, e                                       ; $61d2: $6b
    ld e, [hl]                                    ; $61d3: $5e
    sub [hl]                                      ; $61d4: $96
    cp [hl]                                       ; $61d5: $be
    jp hl                                         ; $61d6: $e9


    ld a, a                                       ; $61d7: $7f
    adc l                                         ; $61d8: $8d
    rlca                                          ; $61d9: $07
    add hl, bc                                    ; $61da: $09
    ld h, a                                       ; $61db: $67
    ccf                                           ; $61dc: $3f
    jr nc, jr_052_620b                            ; $61dd: $30 $2c

    dec l                                         ; $61df: $2d
    inc a                                         ; $61e0: $3c
    ld h, h                                       ; $61e1: $64
    add [hl]                                      ; $61e2: $86
    ld l, $64                                     ; $61e3: $2e $64
    jp nz, Jump_000_311a                          ; $61e5: $c2 $1a $31

    db $ed                                        ; $61e8: $ed
    call nz, $f4d0                                ; $61e9: $c4 $d0 $f4
    sub l                                         ; $61ec: $95
    ld a, [c]                                     ; $61ed: $f2
    ld l, e                                       ; $61ee: $6b
    ld h, h                                       ; $61ef: $64
    ld [hl], a                                    ; $61f0: $77
    cp c                                          ; $61f1: $b9
    add sp, -$51                                  ; $61f2: $e8 $af
    ld h, $3f                                     ; $61f4: $26 $3f
    ld c, c                                       ; $61f6: $49
    and a                                         ; $61f7: $a7
    ld b, e                                       ; $61f8: $43
    add $9d                                       ; $61f9: $c6 $9d
    ld a, d                                       ; $61fb: $7a
    sbc $e6                                       ; $61fc: $de $e6
    ld a, a                                       ; $61fe: $7f
    ld d, d                                       ; $61ff: $52
    db $fd                                        ; $6200: $fd
    inc sp                                        ; $6201: $33
    ld sp, $3bed                                  ; $6202: $31 $ed $3b
    ld a, d                                       ; $6205: $7a
    ld a, d                                       ; $6206: $7a
    inc [hl]                                      ; $6207: $34
    ld sp, hl                                     ; $6208: $f9
    ld d, a                                       ; $6209: $57
    add l                                         ; $620a: $85

jr_052_620b:
    db $ec                                        ; $620b: $ec
    adc d                                         ; $620c: $8a
    ld [hl], a                                    ; $620d: $77
    db $e4                                        ; $620e: $e4
    ld e, h                                       ; $620f: $5c
    ld [c], a                                     ; $6210: $e2
    ei                                            ; $6211: $fb
    ld b, a                                       ; $6212: $47
    sub [hl]                                      ; $6213: $96
    dec hl                                        ; $6214: $2b
    ld a, [bc]                                    ; $6215: $0a
    ld [hl+], a                                   ; $6216: $22
    rst $20                                       ; $6217: $e7
    ret                                           ; $6218: $c9


    db $f4                                        ; $6219: $f4
    ld [hl+], a                                   ; $621a: $22
    ld d, d                                       ; $621b: $52
    cp l                                          ; $621c: $bd
    inc b                                         ; $621d: $04
    rst $00                                       ; $621e: $c7
    ld h, a                                       ; $621f: $67
    ld d, d                                       ; $6220: $52
    jp c, $f472                                   ; $6221: $da $72 $f4

    add h                                         ; $6224: $84
    ld d, l                                       ; $6225: $55
    and e                                         ; $6226: $a3
    daa                                           ; $6227: $27
    and $bf                                       ; $6228: $e6 $bf
    ld c, d                                       ; $622a: $4a
    dec bc                                        ; $622b: $0b
    adc a                                         ; $622c: $8f
    ld e, [hl]                                    ; $622d: $5e
    ld [hl], b                                    ; $622e: $70
    ld e, $bd                                     ; $622f: $1e $bd
    ld [hl], d                                    ; $6231: $72
    sbc a                                         ; $6232: $9f
    ld d, [hl]                                    ; $6233: $56
    inc hl                                        ; $6234: $23
    cp a                                          ; $6235: $bf
    cp d                                          ; $6236: $ba
    ld a, h                                       ; $6237: $7c
    and l                                         ; $6238: $a5
    cpl                                           ; $6239: $2f
    pop bc                                        ; $623a: $c1
    ld [hl], c                                    ; $623b: $71
    db $db                                        ; $623c: $db
    and l                                         ; $623d: $a5
    jp nz, $0d97                                  ; $623e: $c2 $97 $0d

    dec e                                         ; $6241: $1d
    sbc $86                                       ; $6242: $de $86
    adc e                                         ; $6244: $8b
    sbc h                                         ; $6245: $9c
    ld c, l                                       ; $6246: $4d
    rrca                                          ; $6247: $0f
    ldh a, [$15]                                  ; $6248: $f0 $15
    ret                                           ; $624a: $c9


    ld d, e                                       ; $624b: $53
    and l                                         ; $624c: $a5
    rst $08                                       ; $624d: $cf
    ld e, [hl]                                    ; $624e: $5e
    push bc                                       ; $624f: $c5
    ld a, [hl]                                    ; $6250: $7e
    ld c, a                                       ; $6251: $4f
    inc c                                         ; $6252: $0c
    ld e, l                                       ; $6253: $5d
    cp b                                          ; $6254: $b8
    cpl                                           ; $6255: $2f

jr_052_6256:
    jr c, @-$6f                                   ; $6256: $38 $8f

    adc $78                                       ; $6258: $ce $78
    db $fc                                        ; $625a: $fc
    ld sp, hl                                     ; $625b: $f9
    db $fd                                        ; $625c: $fd
    ld a, a                                       ; $625d: $7f
    or $ca                                        ; $625e: $f6 $ca
    cp b                                          ; $6260: $b8
    ld l, $aa                                     ; $6261: $2e $aa
    ld a, b                                       ; $6263: $78
    ld d, c                                       ; $6264: $51
    db $e3                                        ; $6265: $e3
    xor [hl]                                      ; $6266: $ae
    ld c, b                                       ; $6267: $48
    sbc [hl]                                      ; $6268: $9e
    dec c                                         ; $6269: $0d
    ld e, a                                       ; $626a: $5f
    ret z                                         ; $626b: $c8

    add h                                         ; $626c: $84
    dec [hl]                                      ; $626d: $35
    ld h, d                                       ; $626e: $62
    jp c, $a189                                   ; $626f: $da $89 $a1

    jp hl                                         ; $6272: $e9


    dec hl                                        ; $6273: $2b
    push hl                                       ; $6274: $e5
    rst $10                                       ; $6275: $d7
    ret z                                         ; $6276: $c8

    xor $72                                       ; $6277: $ee $72
    pop de                                        ; $6279: $d1
    ld e, a                                       ; $627a: $5f
    ld c, l                                       ; $627b: $4d
    ld a, [hl]                                    ; $627c: $7e
    sub d                                         ; $627d: $92
    ld c, [hl]                                    ; $627e: $4e
    add a                                         ; $627f: $87
    adc h                                         ; $6280: $8c
    dec sp                                        ; $6281: $3b
    push af                                       ; $6282: $f5
    cp h                                          ; $6283: $bc
    call $a4ff                                    ; $6284: $cd $ff $a4
    ld a, [$6267]                                 ; $6287: $fa $67 $62
    jp c, Jump_000_0221                           ; $628a: $da $21 $02

    rst $20                                       ; $628d: $e7
    ret                                           ; $628e: $c9


    or h                                          ; $628f: $b4
    ld [$bc71], a                                 ; $6290: $ea $71 $bc
    ei                                            ; $6293: $fb
    db $fc                                        ; $6294: $fc
    cp $9f                                        ; $6295: $fe $9f
    ld l, $52                                     ; $6297: $2e $52
    inc bc                                        ; $6299: $03
    inc de                                        ; $629a: $13
    ld a, [$3ffd]                                 ; $629b: $fa $fd $3f
    ld a, [c]                                     ; $629e: $f2
    ld b, b                                       ; $629f: $40
    ld e, a                                       ; $62a0: $5f
    sub c                                         ; $62a1: $91
    ld e, h                                       ; $62a2: $5c
    rst $38                                       ; $62a3: $ff
    dec sp                                        ; $62a4: $3b
    ei                                            ; $62a5: $fb
    add c                                         ; $62a6: $81
    ld h, c                                       ; $62a7: $61
    ld l, c                                       ; $62a8: $69
    pop hl                                        ; $62a9: $e1
    ld hl, $7433                                  ; $62aa: $21 $33 $74
    push hl                                       ; $62ad: $e5
    ld a, $1b                                     ; $62ae: $3e $1b
    ld a, $ee                                     ; $62b0: $3e $ee
    adc d                                         ; $62b2: $8a
    db $e4                                        ; $62b3: $e4
    add l                                         ; $62b4: $85
    ld c, h                                       ; $62b5: $4c
    ld e, b                                       ; $62b6: $58
    inc hl                                        ; $62b7: $23
    and [hl]                                      ; $62b8: $a6
    sbc l                                         ; $62b9: $9d
    jr jr_052_6256                                ; $62ba: $18 $9a

    cp [hl]                                       ; $62bc: $be
    ld d, d                                       ; $62bd: $52
    ld a, [hl]                                    ; $62be: $7e
    adc l                                         ; $62bf: $8d
    db $ec                                        ; $62c0: $ec
    ld l, $17                                     ; $62c1: $2e $17
    db $fd                                        ; $62c3: $fd
    push de                                       ; $62c4: $d5
    db $e4                                        ; $62c5: $e4
    daa                                           ; $62c6: $27
    jp hl                                         ; $62c7: $e9


    ld [hl], h                                    ; $62c8: $74
    ret z                                         ; $62c9: $c8

    cp b                                          ; $62ca: $b8
    ld d, e                                       ; $62cb: $53
    rst $08                                       ; $62cc: $cf
    db $db                                        ; $62cd: $db
    db $fc                                        ; $62ce: $fc
    ld c, a                                       ; $62cf: $4f
    xor d                                         ; $62d0: $aa
    ld a, a                                       ; $62d1: $7f
    ld h, $a6                                     ; $62d2: $26 $a6
    ld a, l                                       ; $62d4: $7d
    call c, $a967                                 ; $62d5: $dc $67 $a9
    add sp, $71                                   ; $62d8: $e8 $71
    ld e, l                                       ; $62da: $5d
    ld [hl], h                                    ; $62db: $74
    jp hl                                         ; $62dc: $e9


    ld e, a                                       ; $62dd: $5f
    ld h, d                                       ; $62de: $62
    rla                                           ; $62df: $17
    ccf                                           ; $62e0: $3f
    db $f4                                        ; $62e1: $f4
    ld l, b                                       ; $62e2: $68
    add hl, hl                                    ; $62e3: $29
    adc b                                         ; $62e4: $88
    nop                                           ; $62e5: $00
    ret nz                                        ; $62e6: $c0

    cp d                                          ; $62e7: $ba
    xor b                                         ; $62e8: $a8
    ld [c], a                                     ; $62e9: $e2
    ld b, l                                       ; $62ea: $45
    ld d, l                                       ; $62eb: $55
    ld c, e                                       ; $62ec: $4b
    dec l                                         ; $62ed: $2d
    ld de, $3d1b                                  ; $62ee: $11 $1b $3d
    xor $d4                                       ; $62f1: $ee $d4
    sbc $e6                                       ; $62f3: $de $e6
    ld a, a                                       ; $62f5: $7f
    cp c                                          ; $62f6: $b9
    and d                                         ; $62f7: $a2
    ld a, [c]                                     ; $62f8: $f2
    rrca                                          ; $62f9: $0f
    ld [c], a                                     ; $62fa: $e2
    rst $10                                       ; $62fb: $d7
    ld c, b                                       ; $62fc: $48
    ret z                                         ; $62fd: $c8

    cp $a1                                        ; $62fe: $fe $a1
    ld d, h                                       ; $6300: $54
    sbc [hl]                                      ; $6301: $9e
    rst $18                                       ; $6302: $df
    rst $38                                       ; $6303: $ff
    ld h, a                                       ; $6304: $67
    xor a                                         ; $6305: $af
    adc h                                         ; $6306: $8c
    ld b, [hl]                                    ; $6307: $46
    ld e, a                                       ; $6308: $5f
    rst $38                                       ; $6309: $ff
    scf                                           ; $630a: $37
    ld a, e                                       ; $630b: $7b
    db $ed                                        ; $630c: $ed
    and h                                         ; $630d: $a4
    ld b, a                                       ; $630e: $47
    xor a                                         ; $630f: $af
    ld c, b                                       ; $6310: $48
    reti                                          ; $6311: $d9


    and b                                         ; $6312: $a0
    scf                                           ; $6313: $37
    sub e                                         ; $6314: $93
    ld e, d                                       ; $6315: $5a
    halt                                          ; $6316: $76
    db $d3                                        ; $6317: $d3
    ld a, d                                       ; $6318: $7a
    inc [hl]                                      ; $6319: $34
    add c                                         ; $631a: $81
    inc bc                                        ; $631b: $03
    or c                                          ; $631c: $b1
    ld c, h                                       ; $631d: $4c
    call z, Call_052_592f                         ; $631e: $cc $2f $59
    ld c, [hl]                                    ; $6321: $4e
    cp d                                          ; $6322: $ba
    xor e                                         ; $6323: $ab
    rst $10                                       ; $6324: $d7
    inc l                                         ; $6325: $2c
    ld [c], a                                     ; $6326: $e2
    pop hl                                        ; $6327: $e1
    inc sp                                        ; $6328: $33
    ld [hl], h                                    ; $6329: $74
    push hl                                       ; $632a: $e5
    ld a, $1b                                     ; $632b: $3e $1b
    ld a, $ee                                     ; $632d: $3e $ee
    adc d                                         ; $632f: $8a
    db $e4                                        ; $6330: $e4
    add l                                         ; $6331: $85
    ld c, h                                       ; $6332: $4c
    ld e, b                                       ; $6333: $58
    inc hl                                        ; $6334: $23
    and [hl]                                      ; $6335: $a6
    sbc l                                         ; $6336: $9d
    jr @-$64                                      ; $6337: $18 $9a

    cp [hl]                                       ; $6339: $be
    ld d, d                                       ; $633a: $52
    ld a, [hl]                                    ; $633b: $7e
    adc l                                         ; $633c: $8d
    db $ec                                        ; $633d: $ec
    ld l, $17                                     ; $633e: $2e $17
    db $fd                                        ; $6340: $fd
    push de                                       ; $6341: $d5
    db $e4                                        ; $6342: $e4
    daa                                           ; $6343: $27
    jp hl                                         ; $6344: $e9


    ld [hl], h                                    ; $6345: $74
    ret z                                         ; $6346: $c8

    cp b                                          ; $6347: $b8
    ld d, e                                       ; $6348: $53
    rst $08                                       ; $6349: $cf
    db $db                                        ; $634a: $db
    db $fc                                        ; $634b: $fc
    ld c, a                                       ; $634c: $4f
    xor d                                         ; $634d: $aa
    ld a, a                                       ; $634e: $7f
    ld h, $a6                                     ; $634f: $26 $a6
    dec e                                         ; $6351: $1d
    ld [hl+], a                                   ; $6352: $22
    ret nz                                        ; $6353: $c0

    cp e                                          ; $6354: $bb
    inc a                                         ; $6355: $3c
    ld sp, hl                                     ; $6356: $f9
    pop de                                        ; $6357: $d1
    push de                                       ; $6358: $d5
    ld h, a                                       ; $6359: $67
    or e                                          ; $635a: $b3
    ret                                           ; $635b: $c9


    or h                                          ; $635c: $b4
    ld [$89e9], a                                 ; $635d: $ea $e9 $89
    ret z                                         ; $6360: $c8

    push af                                       ; $6361: $f5
    dec h                                         ; $6362: $25
    ld c, d                                       ; $6363: $4a
    db $fd                                        ; $6364: $fd
    ld h, b                                       ; $6365: $60
    ld d, $f1                                     ; $6366: $16 $f1
    db $10                                        ; $6368: $10
    or $03                                        ; $6369: $f6 $03
    jp $c2d2                                      ; $636b: $c3 $d2 $c2


    ld b, e                                       ; $636e: $43
    ld h, [hl]                                    ; $636f: $66
    add sp, -$36                                  ; $6370: $e8 $ca
    ld a, l                                       ; $6372: $7d
    ld [hl], $7c                                  ; $6373: $36 $7c
    call c, $c915                                 ; $6375: $dc $15 $c9
    dec bc                                        ; $6378: $0b
    sbc c                                         ; $6379: $99
    or b                                          ; $637a: $b0
    ld b, [hl]                                    ; $637b: $46
    ld c, h                                       ; $637c: $4c
    dec sp                                        ; $637d: $3b
    ld sp, $7d34                                  ; $637e: $31 $34 $7d
    and l                                         ; $6381: $a5
    db $fc                                        ; $6382: $fc
    ld a, [de]                                    ; $6383: $1a
    reti                                          ; $6384: $d9


    db $dd                                        ; $6385: $dd
    ld [hl], d                                    ; $6386: $72
    pop de                                        ; $6387: $d1
    ld e, a                                       ; $6388: $5f
    ld c, l                                       ; $6389: $4d
    ld a, [hl]                                    ; $638a: $7e
    sub d                                         ; $638b: $92
    ld c, [hl]                                    ; $638c: $4e
    add a                                         ; $638d: $87
    adc h                                         ; $638e: $8c
    dec sp                                        ; $638f: $3b
    push af                                       ; $6390: $f5
    cp h                                          ; $6391: $bc
    call $a4ff                                    ; $6392: $cd $ff $a4
    ld a, [$6267]                                 ; $6395: $fa $67 $62
    jp c, $f1c7                                   ; $6398: $da $c7 $f1

    dec a                                         ; $639b: $3d
    ld a, e                                       ; $639c: $7b
    push de                                       ; $639d: $d5
    db $f4                                        ; $639e: $f4
    ld l, b                                       ; $639f: $68
    ld a, [c]                                     ; $63a0: $f2
    xor a                                         ; $63a1: $af
    ld a, [bc]                                    ; $63a2: $0a
    ld e, c                                       ; $63a3: $59
    cp c                                          ; $63a4: $b9
    ld c, a                                       ; $63a5: $4f
    rst $28                                       ; $63a6: $ef
    ld l, e                                       ; $63a7: $6b
    ld l, e                                       ; $63a8: $6b
    jr c, @+$41                                   ; $63a9: $38 $3f

    dec l                                         ; $63ab: $2d
    pop de                                        ; $63ac: $d1
    inc de                                        ; $63ad: $13
    dec de                                        ; $63ae: $1b
    ld c, $11                                     ; $63af: $0e $11
    rst $20                                       ; $63b1: $e7
    ret                                           ; $63b2: $c9


    ld a, [hl-]                                   ; $63b3: $3a
    cp b                                          ; $63b4: $b8
    rra                                           ; $63b5: $1f
    call nz, $aba3                                ; $63b6: $c4 $a3 $ab
    ld [hl], a                                    ; $63b9: $77
    jp nc, Jump_052_67a3                          ; $63ba: $d2 $a3 $67

Jump_052_63bd:
    ld h, e                                       ; $63bd: $63
    add hl, sp                                    ; $63be: $39
    and h                                         ; $63bf: $a4
    or d                                          ; $63c0: $b2
    rst $00                                       ; $63c1: $c7
    or h                                          ; $63c2: $b4
    ld b, e                                       ; $63c3: $43
    ld l, h                                       ; $63c4: $6c
    db $fc                                        ; $63c5: $fc
    inc e                                         ; $63c6: $1c
    dec l                                         ; $63c7: $2d
    or l                                          ; $63c8: $b5
    ldh [$3c], a                                  ; $63c9: $e0 $3c
    ld a, d                                       ; $63cb: $7a
    push hl                                       ; $63cc: $e5
    ld a, $ad                                     ; $63cd: $3e $ad
    ld b, [hl]                                    ; $63cf: $46
    inc c                                         ; $63d0: $0c
    and l                                         ; $63d1: $a5
    rst $10                                       ; $63d2: $d7
    rst $20                                       ; $63d3: $e7
    rst $30                                       ; $63d4: $f7
    rst $38                                       ; $63d5: $ff
    ld [hl], h                                    ; $63d6: $74
    sub c                                         ; $63d7: $91
    sbc d                                         ; $63d8: $9a
    rst $18                                       ; $63d9: $df
    rst $38                                       ; $63da: $ff
    rlca                                          ; $63db: $07
    cp h                                          ; $63dc: $bc
    ld e, c                                       ; $63dd: $59
    inc e                                         ; $63de: $1c
    ld [hl], a                                    ; $63df: $77
    push bc                                       ; $63e0: $c5
    sbc d                                         ; $63e1: $9a
    ld e, $d7                                     ; $63e2: $1e $d7
    cp h                                          ; $63e4: $bc
    xor h                                         ; $63e5: $ac
    inc de                                        ; $63e6: $13
    ld c, d                                       ; $63e7: $4a
    jp $c347                                      ; $63e8: $c3 $47 $c3


    ld c, $68                                     ; $63eb: $0e $68
    rst $18                                       ; $63ed: $df
    inc e                                         ; $63ee: $1c
    or $e5                                        ; $63ef: $f6 $e5
    adc h                                         ; $63f1: $8c
    add a                                         ; $63f2: $87
    adc d                                         ; $63f3: $8a
    cpl                                           ; $63f4: $2f
    ld [hl], b                                    ; $63f5: $70
    ret nz                                        ; $63f6: $c0

    xor [hl]                                      ; $63f7: $ae

jr_052_63f8:
    ld c, b                                       ; $63f8: $48
    sbc [hl]                                      ; $63f9: $9e
    dec c                                         ; $63fa: $0d
    ld e, a                                       ; $63fb: $5f
    ret z                                         ; $63fc: $c8

    add h                                         ; $63fd: $84
    dec [hl]                                      ; $63fe: $35
    ld h, d                                       ; $63ff: $62
    jp c, $a189                                   ; $6400: $da $89 $a1

    jp hl                                         ; $6403: $e9


    dec hl                                        ; $6404: $2b
    push hl                                       ; $6405: $e5
    rst $10                                       ; $6406: $d7
    ret z                                         ; $6407: $c8

    xor $72                                       ; $6408: $ee $72
    pop de                                        ; $640a: $d1
    ld e, a                                       ; $640b: $5f
    ld c, l                                       ; $640c: $4d
    ld a, [hl]                                    ; $640d: $7e
    sub d                                         ; $640e: $92
    ld c, [hl]                                    ; $640f: $4e
    add a                                         ; $6410: $87
    adc h                                         ; $6411: $8c
    dec sp                                        ; $6412: $3b
    push af                                       ; $6413: $f5
    cp h                                          ; $6414: $bc
    call $a4ff                                    ; $6415: $cd $ff $a4
    ld a, [$6267]                                 ; $6418: $fa $67 $62
    jp c, Jump_000_16cf                           ; $641b: $da $cf $16

    rst $38                                       ; $641e: $ff
    ld b, a                                       ; $641f: $47
    ld c, a                                       ; $6420: $4f
    xor e                                         ; $6421: $ab
    sbc [hl]                                      ; $6422: $9e
    ld c, l                                       ; $6423: $4d
    ld h, [hl]                                    ; $6424: $66
    ei                                            ; $6425: $fb
    ld b, h                                       ; $6426: $44
    ld a, l                                       ; $6427: $7d
    ld [hl], $fc                                  ; $6428: $36 $fc

jr_052_642a:
    ld de, $e702                                  ; $642a: $11 $02 $e7
    ret                                           ; $642d: $c9


    or h                                          ; $642e: $b4
    ld [$4311], a                                 ; $642f: $ea $11 $43
    jp hl                                         ; $6432: $e9


    push af                                       ; $6433: $f5
    ld sp, hl                                     ; $6434: $f9
    db $fd                                        ; $6435: $fd
    ccf                                           ; $6436: $3f
    ld e, l                                       ; $6437: $5d
    and h                                         ; $6438: $a4

Jump_052_6439:
    and $f7                                       ; $6439: $e6 $f7
    rst $38                                       ; $643b: $ff
    ld bc, $166f                                  ; $643c: $01 $6f $16
    rst $00                                       ; $643f: $c7
    ld e, l                                       ; $6440: $5d
    or c                                          ; $6441: $b1
    and [hl]                                      ; $6442: $a6
    rla                                           ; $6443: $17
    sbc h                                         ; $6444: $9c
    ld b, a                                       ; $6445: $47
    rst $08                                       ; $6446: $cf
    ld e, [hl]                                    ; $6447: $5e
    reti                                          ; $6448: $d9


    and c                                         ; $6449: $a1
    add a                                         ; $644a: $87
    jr c, jr_052_63f8                             ; $644b: $38 $ab

    rst $38                                       ; $644d: $ff
    ld d, l                                       ; $644e: $55
    dec [hl]                                      ; $644f: $35
    ld a, d                                       ; $6450: $7a
    xor l                                         ; $6451: $ad
    sub h                                         ; $6452: $94
    ld a, e                                       ; $6453: $7b
    or [hl]                                       ; $6454: $b6
    ld c, c                                       ; $6455: $49
    db $fc                                        ; $6456: $fc
    rrca                                          ; $6457: $0f
    scf                                           ; $6458: $37
    sub b                                         ; $6459: $90
    and [hl]                                      ; $645a: $a6
    ei                                            ; $645b: $fb
    ld e, d                                       ; $645c: $5a
    db $d3                                        ; $645d: $d3
    pop de                                        ; $645e: $d1
    ld d, d                                       ; $645f: $52
    jp $3df9                                      ; $6460: $c3 $f9 $3d


    jr jr_052_642a                                ; $6463: $18 $c5

    xor b                                         ; $6465: $a8
    jp c, $8ef3                                   ; $6466: $da $f3 $8e

    sbc $15                                       ; $6469: $de $15
    adc a                                         ; $646b: $8f
    db $fd                                        ; $646c: $fd
    ld b, e                                       ; $646d: $43
    ld d, h                                       ; $646e: $54
    rst $00                                       ; $646f: $c7
    ld [hl-], a                                   ; $6470: $32
    cp a                                          ; $6471: $bf
    ld a, a                                       ; $6472: $7f
    ld h, h                                       ; $6473: $64
    ld [hl], d                                    ; $6474: $72
    ld d, l                                       ; $6475: $55
    dec c                                         ; $6476: $0d
    rst $20                                       ; $6477: $e7
    daa                                           ; $6478: $27
    push hl                                       ; $6479: $e5
    ld e, $02                                     ; $647a: $1e $02
    ld de, $c9e7                                  ; $647c: $11 $e7 $c9
    or h                                          ; $647f: $b4
    ld [$23a5], a                                 ; $6480: $ea $a5 $23
    add a                                         ; $6483: $87
    ld [$79f2], a                                 ; $6484: $ea $f2 $79
    sbc e                                         ; $6487: $9b
    rst $38                                       ; $6488: $ff
    jp Jump_052_5267                              ; $6489: $c3 $67 $52


    jp c, $b0fa                                   ; $648c: $da $fa $b0

    or [hl]                                       ; $648f: $b6
    ld a, h                                       ; $6490: $7c
    rrca                                          ; $6491: $0f
    pop de                                        ; $6492: $d1
    db $f4                                        ; $6493: $f4
    ld a, [de]                                    ; $6494: $1a
    add hl, bc                                    ; $6495: $09
    or $3b                                        ; $6496: $f6 $3b
    rrca                                          ; $6498: $0f
    rra                                           ; $6499: $1f
    add hl, sp                                    ; $649a: $39
    ld b, h                                       ; $649b: $44
    ld a, [c]                                     ; $649c: $f2
    or d                                          ; $649d: $b2
    and c                                         ; $649e: $a1
    dec hl                                        ; $649f: $2b
    rst $30                                       ; $64a0: $f7
    add hl, bc                                    ; $64a1: $09
    ld c, e                                       ; $64a2: $4b
    dec bc                                        ; $64a3: $0b
    rrca                                          ; $64a4: $0f
    sbc c                                         ; $64a5: $99
    and c                                         ; $64a6: $a1
    dec bc                                        ; $64a7: $0b
    sbc c                                         ; $64a8: $99
    or b                                          ; $64a9: $b0
    ld b, [hl]                                    ; $64aa: $46
    ld c, h                                       ; $64ab: $4c
    dec sp                                        ; $64ac: $3b
    ld sp, $7d34                                  ; $64ad: $31 $34 $7d
    and l                                         ; $64b0: $a5
    db $fc                                        ; $64b1: $fc
    ld a, [de]                                    ; $64b2: $1a
    reti                                          ; $64b3: $d9


    ld e, l                                       ; $64b4: $5d
    ld l, $fa                                     ; $64b5: $2e $fa
    xor e                                         ; $64b7: $ab
    ret                                           ; $64b8: $c9


    ld c, a                                       ; $64b9: $4f
    jp nc, $90e9                                  ; $64ba: $d2 $e9 $90

    ld [hl], c                                    ; $64bd: $71
    and a                                         ; $64be: $a7
    sbc [hl]                                      ; $64bf: $9e
    or a                                          ; $64c0: $b7
    ld sp, hl                                     ; $64c1: $f9
    sbc a                                         ; $64c2: $9f
    ld d, h                                       ; $64c3: $54
    rst $38                                       ; $64c4: $ff
    ld c, h                                       ; $64c5: $4c
    ld c, h                                       ; $64c6: $4c

jr_052_64c7:
    ei                                            ; $64c7: $fb
    adc [hl]                                      ; $64c8: $8e
    ld e, [hl]                                    ; $64c9: $5e
    ret z                                         ; $64ca: $c8

    jp nc, $4b5d                                  ; $64cb: $d2 $5d $4b

    rst $00                                       ; $64ce: $c7
    ccf                                           ; $64cf: $3f
    ret                                           ; $64d0: $c9


    dec d                                         ; $64d1: $15
    dec [hl]                                      ; $64d2: $35
    xor $d4                                       ; $64d3: $ee $d4
    or e                                          ; $64d5: $b3
    rst $10                                       ; $64d6: $d7
    ld a, l                                       ; $64d7: $7d
    ld a, [de]                                    ; $64d8: $1a
    di                                            ; $64d9: $f3
    ld hl, sp+$1e                                 ; $64da: $f8 $1e
    call nc, $8858                                ; $64dc: $d4 $58 $88
    nop                                           ; $64df: $00
    rst $20                                       ; $64e0: $e7
    ret                                           ; $64e1: $c9


    or h                                          ; $64e2: $b4
    ld [$bc71], a                                 ; $64e3: $ea $71 $bc
    ei                                            ; $64e6: $fb
    db $fc                                        ; $64e7: $fc
    cp $9f                                        ; $64e8: $fe $9f
    ld l, $52                                     ; $64ea: $2e $52
    or e                                          ; $64ec: $b3
    ld d, a                                       ; $64ed: $57
    ld l, d                                       ; $64ee: $6a
    call z, $93e4                                 ; $64ef: $cc $e4 $93
    ld e, a                                       ; $64f2: $5f
    jr c, jr_052_6553                             ; $64f3: $38 $5e

    call Call_000_207e                            ; $64f5: $cd $7e $20
    sub [hl]                                      ; $64f8: $96
    ld c, e                                       ; $64f9: $4b
    ld h, h                                       ; $64fa: $64
    call z, $97e4                                 ; $64fb: $cc $e4 $97
    ret c                                         ; $64fe: $d8

    sbc d                                         ; $64ff: $9a
    ld d, [hl]                                    ; $6500: $56
    cp l                                          ; $6501: $bd
    ld e, h                                       ; $6502: $5c
    db $f4                                        ; $6503: $f4

jr_052_6504:
    ld d, a                                       ; $6504: $57
    sub e                                         ; $6505: $93
    sbc a                                         ; $6506: $9f
    and h                                         ; $6507: $a4
    db $d3                                        ; $6508: $d3
    ld hl, $4ee3                                  ; $6509: $21 $e3 $4e
    dec a                                         ; $650c: $3d
    ld l, a                                       ; $650d: $6f
    di                                            ; $650e: $f3
    ccf                                           ; $650f: $3f
    xor c                                         ; $6510: $a9
    cp $99                                        ; $6511: $fe $99
    sbc b                                         ; $6513: $98
    or $f9                                        ; $6514: $f6 $f9
    db $fd                                        ; $6516: $fd
    sbc a                                         ; $6517: $9f
    inc e                                         ; $6518: $1c
    ld [hl+], a                                   ; $6519: $22
    and l                                         ; $651a: $a5
    xor [hl]                                      ; $651b: $ae
    ld a, [hl]                                    ; $651c: $7e
    ld a, l                                       ; $651d: $7d
    push hl                                       ; $651e: $e5
    ld a, $1b                                     ; $651f: $3e $1b
    ld a, $ee                                     ; $6521: $3e $ee
    adc d                                         ; $6523: $8a
    db $e4                                        ; $6524: $e4
    add l                                         ; $6525: $85
    ld c, h                                       ; $6526: $4c
    ld e, b                                       ; $6527: $58
    inc hl                                        ; $6528: $23
    and [hl]                                      ; $6529: $a6
    sbc l                                         ; $652a: $9d
    jr jr_052_64c7                                ; $652b: $18 $9a

    cp [hl]                                       ; $652d: $be
    ld d, d                                       ; $652e: $52
    ld a, [hl]                                    ; $652f: $7e
    adc l                                         ; $6530: $8d
    xor h                                         ; $6531: $ac
    call c, $1da7                                 ; $6532: $dc $a7 $1d
    call nc, $220b                                ; $6535: $d4 $0b $22
    rst $20                                       ; $6538: $e7
    ret                                           ; $6539: $c9


    or h                                          ; $653a: $b4
    ld [$bc71], a                                 ; $653b: $ea $71 $bc
    xor b                                         ; $653e: $a8
    ld a, [c]                                     ; $653f: $f2
    ld de, $8a56                                  ; $6540: $11 $56 $8a
    db $fc                                        ; $6543: $fc
    dec hl                                        ; $6544: $2b
    xor d                                         ; $6545: $aa
    ld e, d                                       ; $6546: $5a
    ld l, d                                       ; $6547: $6a
    ld a, [hl]                                    ; $6548: $7e
    rst $38                                       ; $6549: $ff
    rst $18                                       ; $654a: $df
    ld b, e                                       ; $654b: $43
    xor c                                         ; $654c: $a9
    cp [hl]                                       ; $654d: $be
    ld [hl], $4f                                  ; $654e: $36 $4f
    ld e, b                                       ; $6550: $58
    dec [hl]                                      ; $6551: $35
    adc [hl]                                      ; $6552: $8e

jr_052_6553:
    ld a, c                                       ; $6553: $79
    db $fc                                        ; $6554: $fc
    ld a, a                                       ; $6555: $7f
    ld d, l                                       ; $6556: $55
    adc l                                         ; $6557: $8d
    jr @-$74                                      ; $6558: $18 $8a

    rst $18                                       ; $655a: $df
    inc a                                         ; $655b: $3c
    jr nc, jr_052_6504                            ; $655c: $30 $a6

    db $d3                                        ; $655e: $d3
    pop de                                        ; $655f: $d1
    adc $7e                                       ; $6560: $ce $7e
    rrca                                          ; $6562: $0f
    pop af                                        ; $6563: $f1
    ld a, l                                       ; $6564: $7d
    and l                                         ; $6565: $a5
    cpl                                           ; $6566: $2f
    ld h, h                                       ; $6567: $64
    ld sp, hl                                     ; $6568: $f9
    daa                                           ; $6569: $27
    inc d                                         ; $656a: $14
    rra                                           ; $656b: $1f
    ld [hl], a                                    ; $656c: $77
    ld b, l                                       ; $656d: $45
    ld a, [c]                                     ; $656e: $f2
    ld l, h                                       ; $656f: $6c
    ld hl, sp+$42                                 ; $6570: $f8 $42
    ld h, $ac                                     ; $6572: $26 $ac
    ld de, $4ed3                                  ; $6574: $11 $d3 $4e
    inc c                                         ; $6577: $0c
    ld c, l                                       ; $6578: $4d
    ld e, a                                       ; $6579: $5f
    add hl, hl                                    ; $657a: $29
    cp a                                          ; $657b: $bf
    ld b, [hl]                                    ; $657c: $46
    halt                                          ; $657d: $76
    sub a                                         ; $657e: $97
    adc e                                         ; $657f: $8b
    cp $6a                                        ; $6580: $fe $6a
    ld a, [c]                                     ; $6582: $f2
    sub e                                         ; $6583: $93
    ld [hl], h                                    ; $6584: $74
    ld a, [hl-]                                   ; $6585: $3a
    ld h, h                                       ; $6586: $64
    call c, $e7a9                                 ; $6587: $dc $a9 $e7
    ld l, l                                       ; $658a: $6d
    cp $27                                        ; $658b: $fe $27
    push de                                       ; $658d: $d5
    ccf                                           ; $658e: $3f
    inc de                                        ; $658f: $13
    db $d3                                        ; $6590: $d3
    ld c, $11                                     ; $6591: $0e $11
    rst $20                                       ; $6593: $e7
    ret                                           ; $6594: $c9


    or h                                          ; $6595: $b4
    ld [$bc71], a                                 ; $6596: $ea $71 $bc
    xor b                                         ; $6599: $a8
    ld a, [c]                                     ; $659a: $f2
    add c                                         ; $659b: $81
    ld sp, $8e9d                                  ; $659c: $31 $9d $8e
    or $99                                        ; $659f: $f6 $99
    sub h                                         ; $65a1: $94
    or [hl]                                       ; $65a2: $b6
    ld a, $ac                                     ; $65a3: $3e $ac
    dec l                                         ; $65a5: $2d
    rst $18                                       ; $65a6: $df
    ld b, e                                       ; $65a7: $43
    xor c                                         ; $65a8: $a9
    cp [hl]                                       ; $65a9: $be
    halt                                          ; $65aa: $76
    adc c                                         ; $65ab: $89
    ret c                                         ; $65ac: $d8

    sub d                                         ; $65ad: $92
    pop hl                                        ; $65ae: $e1
    ld l, l                                       ; $65af: $6d
    jp nc, $283f                                  ; $65b0: $d2 $3f $28

    call c, $f879                                 ; $65b3: $dc $79 $f8
    cp b                                          ; $65b6: $b8
    dec hl                                        ; $65b7: $2b
    sub d                                         ; $65b8: $92
    ld [hl], a                                    ; $65b9: $77
    ld b, l                                       ; $65ba: $45
    add l                                         ; $65bb: $85
    adc h                                         ; $65bc: $8c
    jr jr_052_65db                                ; $65bd: $18 $1c

    rst $38                                       ; $65bf: $ff
    ld d, a                                       ; $65c0: $57
    call nc, $fc68                                ; $65c1: $d4 $68 $fc
    ld e, a                                       ; $65c4: $5f
    ld [hl-], a                                   ; $65c5: $32
    dec de                                        ; $65c6: $1b
    xor $35                                       ; $65c7: $ee $35
    sub e                                         ; $65c9: $93
    jp nc, Jump_052_4366                          ; $65ca: $d2 $66 $43

    ld h, $ac                                     ; $65cd: $26 $ac
    ld a, [de]                                    ; $65cf: $1a
    ld sp, $c4ed                                  ; $65d0: $31 $ed $c4
    ret nc                                        ; $65d3: $d0

    db $f4                                        ; $65d4: $f4
    sub l                                         ; $65d5: $95
    ld a, [c]                                     ; $65d6: $f2
    ld l, e                                       ; $65d7: $6b
    ld h, h                                       ; $65d8: $64
    reti                                          ; $65d9: $d9


    ret nc                                        ; $65da: $d0

jr_052_65db:
    ld [hl], c                                    ; $65db: $71
    ld d, a                                       ; $65dc: $57
    inc h                                         ; $65dd: $24
    rst $28                                       ; $65de: $ef
    ld l, $17                                     ; $65df: $2e $17
    db $fd                                        ; $65e1: $fd
    push de                                       ; $65e2: $d5
    db $e4                                        ; $65e3: $e4
    daa                                           ; $65e4: $27
    jp hl                                         ; $65e5: $e9


    ld [hl], h                                    ; $65e6: $74
    ret z                                         ; $65e7: $c8

    cp b                                          ; $65e8: $b8
    ld d, e                                       ; $65e9: $53
    rst $08                                       ; $65ea: $cf
    db $db                                        ; $65eb: $db
    db $fc                                        ; $65ec: $fc
    ld c, a                                       ; $65ed: $4f
    xor d                                         ; $65ee: $aa
    ld a, a                                       ; $65ef: $7f
    ld h, $a6                                     ; $65f0: $26 $a6
    dec e                                         ; $65f2: $1d
    ld [hl+], a                                   ; $65f3: $22
    rst $20                                       ; $65f4: $e7
    ret                                           ; $65f5: $c9


    or h                                          ; $65f6: $b4
    ld [$ef09], a                                 ; $65f7: $ea $09 $ef
    ld a, $37                                     ; $65fa: $3e $37
    dec l                                         ; $65fc: $2d
    pop hl                                        ; $65fd: $e1
    and e                                         ; $65fe: $a3
    ld h, c                                       ; $65ff: $61
    rlca                                          ; $6600: $07
    add $74                                       ; $6601: $c6 $74
    ld a, [hl-]                                   ; $6603: $3a
    jp c, Jump_052_5267                           ; $6604: $da $67 $52

    jp c, $924e                                   ; $6607: $da $4e $92

    ld c, c                                       ; $660a: $49
    push af                                       ; $660b: $f5
    inc [hl]                                      ; $660c: $34
    inc hl                                        ; $660d: $23
    add [hl]                                      ; $660e: $86
    ld l, $64                                     ; $660f: $2e $64
    sbc $a1                                       ; $6611: $de $a1
    rst $38                                       ; $6613: $ff
    xor e                                         ; $6614: $ab
    sub $91                                       ; $6615: $d6 $91
    adc e                                         ; $6617: $8b
    db $fd                                        ; $6618: $fd
    ld b, b                                       ; $6619: $40
    dec e                                         ; $661a: $1d
    xor $65                                       ; $661b: $ee $65
    ld b, a                                       ; $661d: $47
    inc c                                         ; $661e: $0c
    and l                                         ; $661f: $a5
    pop de                                        ; $6620: $d1
    or e                                          ; $6621: $b3
    ret                                           ; $6622: $c9


    ld [hl], b                                    ; $6623: $70
    ld a, [hl]                                    ; $6624: $7e
    push hl                                       ; $6625: $e5
    ld a, $1b                                     ; $6626: $3e $1b
    ld [hl-], a                                   ; $6628: $32
    ld h, c                                       ; $6629: $61
    push de                                       ; $662a: $d5
    adc b                                         ; $662b: $88
    ld l, c                                       ; $662c: $69
    daa                                           ; $662d: $27
    add [hl]                                      ; $662e: $86
    and [hl]                                      ; $662f: $a6
    xor a                                         ; $6630: $af
    sub h                                         ; $6631: $94
    ld e, a                                       ; $6632: $5f
    inc hl                                        ; $6633: $23
    ld hl, $aee3                                  ; $6634: $21 $e3 $ae
    ld c, b                                       ; $6637: $48
    sbc [hl]                                      ; $6638: $9e
    ld h, [hl]                                    ; $6639: $66
    ld a, [c]                                     ; $663a: $f2
    ld [hl], d                                    ; $663b: $72
    pop de                                        ; $663c: $d1
    ld e, a                                       ; $663d: $5f
    ld c, l                                       ; $663e: $4d
    ld a, [hl]                                    ; $663f: $7e
    sub d                                         ; $6640: $92
    ld c, [hl]                                    ; $6641: $4e
    add a                                         ; $6642: $87
    adc h                                         ; $6643: $8c
    dec sp                                        ; $6644: $3b
    push af                                       ; $6645: $f5
    cp h                                          ; $6646: $bc
    call $a4ff                                    ; $6647: $cd $ff $a4
    ld a, [$6267]                                 ; $664a: $fa $67 $62
    jp c, $4777                                   ; $664d: $da $77 $47

    ld c, l                                       ; $6650: $4d
    dec hl                                        ; $6651: $2b
    inc hl                                        ; $6652: $23
    db $10                                        ; $6653: $10
    ld bc, $c9e7                                  ; $6654: $01 $e7 $c9
    or h                                          ; $6657: $b4
    ld [$f49d], a                                 ; $6658: $ea $9d $f4
    add sp, $1f                                   ; $665b: $e8 $1f
    cp d                                          ; $665d: $ba
    rst $28                                       ; $665e: $ef
    adc $86                                       ; $665f: $ce $86
    adc h                                         ; $6661: $8c
    dec sp                                        ; $6662: $3b
    ld [hl], l                                    ; $6663: $75
    sbc d                                         ; $6664: $9a
    sbc c                                         ; $6665: $99
    ld e, b                                       ; $6666: $58
    xor c                                         ; $6667: $a9
    ld h, l                                       ; $6668: $65
    ld h, d                                       ; $6669: $62
    ld d, h                                       ; $666a: $54
    ret z                                         ; $666b: $c8

    ld c, h                                       ; $666c: $4c
    ld c, d                                       ; $666d: $4a
    sbc e                                         ; $666e: $9b
    halt                                          ; $666f: $76
    db $dd                                        ; $6670: $dd
    bit 4, a                                      ; $6671: $cb $67
    ld b, e                                       ; $6673: $43
    sub [hl]                                      ; $6674: $96
    ld c, c                                       ; $6675: $49
    reti                                          ; $6676: $d9


    or d                                          ; $6677: $b2
    or c                                          ; $6678: $b1
    db $10                                        ; $6679: $10
    db $ed                                        ; $667a: $ed
    call nc, Call_052_4572                        ; $667b: $d4 $72 $45
    add l                                         ; $667e: $85
    or b                                          ; $667f: $b0
    rst $18                                       ; $6680: $df
    sub e                                         ; $6681: $93
    and d                                         ; $6682: $a2
    cp a                                          ; $6683: $bf
    sbc d                                         ; $6684: $9a
    db $fc                                        ; $6685: $fc
    inc h                                         ; $6686: $24
    sbc l                                         ; $6687: $9d
    ld c, $19                                     ; $6688: $0e $19
    ld [hl], a                                    ; $668a: $77
    ld [$9b79], a                                 ; $668b: $ea $79 $9b
    rst $38                                       ; $668e: $ff
    ld c, c                                       ; $668f: $49
    push af                                       ; $6690: $f5
    rst $08                                       ; $6691: $cf
    call nz, $cfb4                                ; $6692: $c4 $b4 $cf
    rst $28                                       ; $6695: $ef
    rst $38                                       ; $6696: $ff
    db $e4                                        ; $6697: $e4
    db $10                                        ; $6698: $10
    add hl, hl                                    ; $6699: $29
    dec d                                         ; $669a: $15
    cp l                                          ; $669b: $bd
    ld [hl], d                                    ; $669c: $72
    sbc a                                         ; $669d: $9f
    dec c                                         ; $669e: $0d
    rra                                           ; $669f: $1f
    ld [hl], a                                    ; $66a0: $77
    ld b, l                                       ; $66a1: $45
    ld a, [c]                                     ; $66a2: $f2
    ld b, d                                       ; $66a3: $42
    ld h, $ac                                     ; $66a4: $26 $ac
    ld de, $4ed3                                  ; $66a6: $11 $d3 $4e
    inc c                                         ; $66a9: $0c
    ld c, l                                       ; $66aa: $4d
    ld e, a                                       ; $66ab: $5f

Call_052_66ac:
    add hl, hl                                    ; $66ac: $29
    cp a                                          ; $66ad: $bf
    ld b, [hl]                                    ; $66ae: $46
    jr nz, jr_052_66b3                            ; $66af: $20 $02

    ret nz                                        ; $66b1: $c0

    sbc e                                         ; $66b2: $9b

jr_052_66b3:
    push bc                                       ; $66b3: $c5
    ld [hl], c                                    ; $66b4: $71
    ld d, a                                       ; $66b5: $57
    xor h                                         ; $66b6: $ac
    jp hl                                         ; $66b7: $e9


    ld l, c                                       ; $66b8: $69
    push de                                       ; $66b9: $d5
    db $d3                                        ; $66ba: $d3
    inc de                                        ; $66bb: $13
    sub c                                         ; $66bc: $91
    db $eb                                        ; $66bd: $eb
    adc e                                         ; $66be: $8b

Call_052_66bf:
jr_052_66bf:
    rra                                           ; $66bf: $1f
    cp d                                          ; $66c0: $ba
    ld d, $34                                     ; $66c1: $16 $34
    db $e3                                        ; $66c3: $e3
    add [hl]                                      ; $66c4: $86
    call nc, $610f                                ; $66c5: $d4 $0f $61
    cp a                                          ; $66c8: $bf
    daa                                           ; $66c9: $27
    sbc a                                         ; $66ca: $9f
    push hl                                       ; $66cb: $e5
    ld e, d                                       ; $66cc: $5a
    db $f4                                        ; $66cd: $f4
    sub l                                         ; $66ce: $95
    cp h                                          ; $66cf: $bc
    inc e                                         ; $66d0: $1c
    ld a, [hl+]                                   ; $66d1: $2a
    ld a, [hl-]                                   ; $66d2: $3a
    db $eb                                        ; $66d3: $eb
    rst $10                                       ; $66d4: $d7
    ld [hl], a                                    ; $66d5: $77
    db $f4                                        ; $66d6: $f4
    jp nc, Jump_052_789d                          ; $66d7: $d2 $9d $78

    ld [$9dfb], sp                                ; $66da: $08 $fb $9d
    daa                                           ; $66dd: $27
    inc [hl]                                      ; $66de: $34
    db $fd                                        ; $66df: $fd
    jp $8e9a                                      ; $66e0: $c3 $9a $8e


    xor c                                         ; $66e3: $a9
    add sp, -$27                                  ; $66e4: $e8 $d9
    xor e                                         ; $66e6: $ab
    ld h, [hl]                                    ; $66e7: $66
    jp Jump_000_3e97                              ; $66e8: $c3 $97 $3e


    or d                                          ; $66eb: $b2
    rst $10                                       ; $66ec: $d7
    adc b                                         ; $66ed: $88
    ld l, c                                       ; $66ee: $69
    rrca                                          ; $66ef: $0f
    rra                                           ; $66f0: $1f
    dec c                                         ; $66f1: $0d
    cp e                                          ; $66f2: $bb
    ld [hl], h                                    ; $66f3: $74
    db $f4                                        ; $66f4: $f4
    adc c                                         ; $66f5: $89
    jp c, Jump_052_769a                           ; $66f6: $da $9a $76

    jr nc, jr_052_6731                            ; $66f9: $30 $36

    dec a                                         ; $66fb: $3d
    sub e                                         ; $66fc: $93
    jp nc, Jump_052_6de6                          ; $66fd: $d2 $e6 $6d

    cp $27                                        ; $6700: $fe $27
    push de                                       ; $6702: $d5
    cp a                                          ; $6703: $bf
    ld a, d                                       ; $6704: $7a
    and l                                         ; $6705: $a5
    xor a                                         ; $6706: $af
    cp $2f                                        ; $6707: $fe $2f

jr_052_6709:
    ld [$43e1], sp                                ; $6709: $08 $e1 $43
    ld [hl], l                                    ; $670c: $75
    or e                                          ; $670d: $b3
    ld b, $ce                                     ; $670e: $06 $ce
    cp b                                          ; $6710: $b8
    ld b, a                                       ; $6711: $47
    cp a                                          ; $6712: $bf
    ld c, h                                       ; $6713: $4c
    ld c, h                                       ; $6714: $4c
    ld a, e                                       ; $6715: $7b
    jr c, jr_052_6793                             ; $6716: $38 $7b

    inc b                                         ; $6718: $04
    rst $20                                       ; $6719: $e7
    ret                                           ; $671a: $c9


    or h                                          ; $671b: $b4
    ld [$d769], a                                 ; $671c: $ea $69 $d7
    cp l                                          ; $671f: $bd
    ld a, h                                       ; $6720: $7c
    ret nz                                        ; $6721: $c0

    sbc e                                         ; $6722: $9b
    push bc                                       ; $6723: $c5
    ld [hl], c                                    ; $6724: $71

Call_052_6725:
    ld d, a                                       ; $6725: $57
    xor h                                         ; $6726: $ac
    jp hl                                         ; $6727: $e9


    or e                                          ; $6728: $b3
    reti                                          ; $6729: $d9


    db $eb                                        ; $672a: $eb
    cp [hl]                                       ; $672b: $be
    ld hl, sp-$5f                                 ; $672c: $f8 $a1
    ld l, e                                       ; $672e: $6b
    ld b, c                                       ; $672f: $41
    add a                                         ; $6730: $87

jr_052_6731:
    di                                            ; $6731: $f3
    ld a, e                                       ; $6732: $7b
    jr nc, jr_052_66bf                            ; $6733: $30 $8a

    ld d, c                                       ; $6735: $51
    or l                                          ; $6736: $b5
    rst $20                                       ; $6737: $e7
    or e                                          ; $6738: $b3
    reti                                          ; $6739: $d9


    and e                                         ; $673a: $a3
    ld h, a                                       ; $673b: $67
    sub e                                         ; $673c: $93
    ld de, $6943                                  ; $673d: $11 $43 $69
    db $f4                                        ; $6740: $f4
    jp z, Jump_052_697d                           ; $6741: $ca $7d $69

    inc sp                                        ; $6744: $33
    sub e                                         ; $6745: $93
    jp nc, $8ff6                                  ; $6746: $d2 $f6 $8f

    ld e, h                                       ; $6749: $5c
    ei                                            ; $674a: $fb
    rlca                                          ; $674b: $07
    ld h, e                                       ; $674c: $63
    db $d3                                        ; $674d: $d3
    db $ec                                        ; $674e: $ec
    rlca                                          ; $674f: $07
    db $ec                                        ; $6750: $ec
    call nc, $f72b                                ; $6751: $d4 $2b $f7
    push de                                       ; $6754: $d5
    rst $38                                       ; $6755: $ff
    or l                                          ; $6756: $b5
    ld c, h                                       ; $6757: $4c
    ld l, d                                       ; $6758: $6a
    db $e4                                        ; $6759: $e4
    db $10                                        ; $675a: $10
    xor c                                         ; $675b: $a9
    push hl                                       ; $675c: $e5
    xor e                                         ; $675d: $ab
    and [hl]                                      ; $675e: $a6
    dec b                                         ; $675f: $05
    and l                                         ; $6760: $a5
    dec [hl]                                      ; $6761: $35
    xor $8a                                       ; $6762: $ee $8a
    db $e4                                        ; $6764: $e4
    reti                                          ; $6765: $d9


    ldh a, [$85]                                  ; $6766: $f0 $85
    ld c, h                                       ; $6768: $4c
    ld e, b                                       ; $6769: $58
    inc hl                                        ; $676a: $23
    and [hl]                                      ; $676b: $a6
    sbc l                                         ; $676c: $9d
    jr jr_052_6709                                ; $676d: $18 $9a

    cp [hl]                                       ; $676f: $be
    ld d, d                                       ; $6770: $52
    ld a, [hl]                                    ; $6771: $7e
    adc l                                         ; $6772: $8d
    xor h                                         ; $6773: $ac
    call c, $1da7                                 ; $6774: $dc $a7 $1d
    call nc, $9a6b                                ; $6777: $d4 $6b $9a
    ret                                           ; $677a: $c9


    bit 0, l                                      ; $677b: $cb $45
    ld a, a                                       ; $677d: $7f
    dec [hl]                                      ; $677e: $35
    ld sp, hl                                     ; $677f: $f9
    ld c, c                                       ; $6780: $49
    ld a, [hl-]                                   ; $6781: $3a
    dec e                                         ; $6782: $1d
    ld [hl-], a                                   ; $6783: $32
    xor $d4                                       ; $6784: $ee $d4
    di                                            ; $6786: $f3
    ld [hl], $ff                                  ; $6787: $36 $ff
    sub e                                         ; $6789: $93
    ld [$899f], a                                 ; $678a: $ea $9f $89
    ld l, c                                       ; $678d: $69
    add a                                         ; $678e: $87
    ld [$9260], sp                                ; $678f: $08 $60 $92
    ld [hl], c                                    ; $6792: $71

jr_052_6793:
    ld a, h                                       ; $6793: $7c
    rst $08                                       ; $6794: $cf
    ld h, $53                                     ; $6795: $26 $53
    ld sp, $cc1b                                  ; $6797: $31 $1b $cc
    sub l                                         ; $679a: $95
    ld a, $bf                                     ; $679b: $3e $bf
    rst $38                                       ; $679d: $ff
    rrca                                          ; $679e: $0f
    db $e4                                        ; $679f: $e4
    dec d                                         ; $67a0: $15
    push af                                       ; $67a1: $f5
    ld a, h                                       ; $67a2: $7c

Jump_052_67a3:
    ld e, $90                                     ; $67a3: $1e $90
    ld [hl], $39                                  ; $67a5: $36 $39
    cp a                                          ; $67a7: $bf
    sbc h                                         ; $67a8: $9c

Call_052_67a9:
    cp l                                          ; $67a9: $bd
    db $fc                                        ; $67aa: $fc

Call_052_67ab:
    ld a, [de]                                    ; $67ab: $1a
    add hl, bc                                    ; $67ac: $09
    add hl, sp                                    ; $67ad: $39
    db $db                                        ; $67ae: $db
    ld b, e                                       ; $67af: $43
    ld [hl], l                                    ; $67b0: $75
    or e                                          ; $67b1: $b3
    ldh [rLCDC], a                                ; $67b2: $e0 $40
    add l                                         ; $67b4: $85
    rst $10                                       ; $67b5: $d7
    ld a, [hl-]                                   ; $67b6: $3a
    ld l, h                                       ; $67b7: $6c
    dec c                                         ; $67b8: $0d
    rst $20                                       ; $67b9: $e7
    add a                                         ; $67ba: $87
    ld b, a                                       ; $67bb: $47
    or a                                          ; $67bc: $b7
    ld de, $f7b5                                  ; $67bd: $11 $b5 $f7
    or $c6                                        ; $67c0: $f6 $c6
    dec hl                                        ; $67c2: $2b

Call_052_67c3:
    ld l, a                                       ; $67c3: $6f
    adc [hl]                                      ; $67c4: $8e
    rst $18                                       ; $67c5: $df
    add e                                         ; $67c6: $83
    ld d, c                                       ; $67c7: $51
    adc h                                         ; $67c8: $8c
    xor d                                         ; $67c9: $aa
    dec a                                         ; $67ca: $3d

jr_052_67cb:
    rlca                                          ; $67cb: $07
    ld h, e                                       ; $67cc: $63
    cp h                                          ; $67cd: $bc

jr_052_67ce:
    inc hl                                        ; $67ce: $23
    rst $20                                       ; $67cf: $e7
    db $10                                        ; $67d0: $10
    adc b                                         ; $67d1: $88
    nop                                           ; $67d2: $00
    ld c, a                                       ; $67d3: $4f
    ld e, [hl]                                    ; $67d4: $5e
    ld a, [hl]                                    ; $67d5: $7e
    ld a, [c]                                     ; $67d6: $f2
    ld a, [c]                                     ; $67d7: $f2
    sub e                                         ; $67d8: $93
    sbc a                                         ; $67d9: $9f
    ld hl, sp-$48                                 ; $67da: $f8 $b8
    ld d, e                                       ; $67dc: $53
    rst $28                                       ; $67dd: $ef
    adc $96                                       ; $67de: $ce $96
    add d                                         ; $67e0: $82
    ld [$012f], sp                                ; $67e1: $08 $2f $01
    ld a, h                                       ; $67e4: $7c
    ld l, l                                       ; $67e5: $6d
    ld [$032f], sp                                ; $67e6: $08 $2f $03
    ld a, h                                       ; $67e9: $7c
    ld l, l                                       ; $67ea: $6d
    ld [$c9e7], sp                                ; $67eb: $08 $e7 $c9
    cp $41                                        ; $67ee: $fe $41
    and l                                         ; $67f0: $a5
    ld a, d                                       ; $67f1: $7a
    sub a                                         ; $67f2: $97
    ld l, e                                       ; $67f3: $6b
    ld e, [hl]                                    ; $67f4: $5e
    ld h, [hl]                                    ; $67f5: $66
    xor a                                         ; $67f6: $af
    ld a, d                                       ; $67f7: $7a
    rra                                           ; $67f8: $1f
    ld bc, $c9e7                                  ; $67f9: $01 $e7 $c9
    cp b                                          ; $67fc: $b8
    ld d, e                                       ; $67fd: $53
    ld a, a                                       ; $67fe: $7f
    db $d3                                        ; $67ff: $d3
    push de                                       ; $6800: $d5
    inc bc                                        ; $6801: $03
    ld hl, sp-$26                                 ; $6802: $f8 $da
    ld b, b                                       ; $6804: $40
    add c                                         ; $6805: $81
    ld h, e                                       ; $6806: $63
    adc a                                         ; $6807: $8f
    nop                                           ; $6808: $00
    rst $20                                       ; $6809: $e7
    ret                                           ; $680a: $c9


    jr c, jr_052_67cb                             ; $680b: $38 $be

    rst $20                                       ; $680d: $e7
    rst $30                                       ; $680e: $f7
    rst $38                                       ; $680f: $ff
    ld [hl], h                                    ; $6810: $74
    sub c                                         ; $6811: $91
    ld a, [de]                                    ; $6812: $1a
    ret nz                                        ; $6813: $c0

    rst $10                                       ; $6814: $d7
    ld b, $0a                                     ; $6815: $06 $0a
    inc e                                         ; $6817: $1c
    ld a, e                                       ; $6818: $7b
    inc b                                         ; $6819: $04
    ld h, b                                       ; $681a: $60
    jp hl                                         ; $681b: $e9


    ld l, h                                       ; $681c: $6c
    or d                                          ; $681d: $b2
    dec hl                                        ; $681e: $2b
    ld e, $cb                                     ; $681f: $1e $cb
    ld b, l                                       ; $6821: $45
    ld a, a                                       ; $6822: $7f
    push af                                       ; $6823: $f5
    ld [hl], b                                    ; $6824: $70
    ld a, [hl]                                    ; $6825: $7e
    call nz, $8fb4                                ; $6826: $c4 $b4 $8f
    add [hl]                                      ; $6829: $86
    ld e, l                                       ; $682a: $5d
    ld a, [hl-]                                   ; $682b: $3a
    ld a, [$6d44]                                 ; $682c: $fa $44 $6d
    ld c, l                                       ; $682f: $4d
    dec sp                                        ; $6830: $3b
    jr jr_052_67ce                                ; $6831: $18 $9b

    sbc [hl]                                      ; $6833: $9e
    ld c, c                                       ; $6834: $49
    ld l, c                                       ; $6835: $69
    di                                            ; $6836: $f3
    ld [hl], $ff                                  ; $6837: $36 $ff
    sub e                                         ; $6839: $93
    ld [$7d5f], a                                 ; $683a: $ea $5f $7d
    or [hl]                                       ; $683d: $b6
    call z, Call_052_6d2f                         ; $683e: $cc $2f $6d
    jp c, Jump_052_6cc6                           ; $6841: $da $c6 $6c

    or d                                          ; $6844: $b2
    db $f4                                        ; $6845: $f4
    xor c                                         ; $6846: $a9
    sbc c                                         ; $6847: $99
    dec [hl]                                      ; $6848: $35
    ld a, [de]                                    ; $6849: $1a
    halt                                          ; $684a: $76
    ld [hl], $1c                                  ; $684b: $36 $1c
    ld [hl+], a                                   ; $684d: $22
    ld h, b                                       ; $684e: $60
    adc [hl]                                      ; $684f: $8e
    sbc [hl]                                      ; $6850: $9e
    ld c, l                                       ; $6851: $4d
    and [hl]                                      ; $6852: $a6
    ld d, l                                       ; $6853: $55
    cpl                                           ; $6854: $2f
    rst $38                                       ; $6855: $ff
    call nz, $f387                                ; $6856: $c4 $87 $f3
    di                                            ; $6859: $f3
    ld [hl], $ff                                  ; $685a: $36 $ff
    ld [hl], e                                    ; $685c: $73
    and [hl]                                      ; $685d: $a6
    jp hl                                         ; $685e: $e9


    adc a                                         ; $685f: $8f
    ld e, $29                                     ; $6860: $1e $29
    add hl, de                                    ; $6862: $19
    ld sp, $a3ed                                  ; $6863: $31 $ed $a3
    ld h, c                                       ; $6866: $61
    sub a                                         ; $6867: $97
    adc [hl]                                      ; $6868: $8e
    ld a, $51                                     ; $6869: $3e $51
    ld e, e                                       ; $686b: $5b
    db $d3                                        ; $686c: $d3
    ld c, $c6                                     ; $686d: $0e $c6
    and [hl]                                      ; $686f: $a6
    ld h, a                                       ; $6870: $67
    ld d, d                                       ; $6871: $52
    jp c, $cdbc                                   ; $6872: $da $bc $cd

    rst $38                                       ; $6875: $ff
    and h                                         ; $6876: $a4
    ld a, [$4f57]                                 ; $6877: $fa $57 $4f
    xor a                                         ; $687a: $af
    xor [hl]                                      ; $687b: $ae
    ld sp, hl                                     ; $687c: $f9
    db $fd                                        ; $687d: $fd
    ld a, a                                       ; $687e: $7f
    reti                                          ; $687f: $d9


    ld c, l                                       ; $6880: $4d
    ld c, a                                       ; $6881: $4f
    ld h, e                                       ; $6882: $63
    ld e, $1f                                     ; $6883: $1e $1f
    add a                                         ; $6885: $87
    ld [$8a4f], sp                                ; $6886: $08 $4f $8a
    cp $1a                                        ; $6889: $fe $1a
    adc $cf                                       ; $688b: $ce $cf
    ld e, [hl]                                    ; $688d: $5e
    dec [hl]                                      ; $688e: $35
    jp z, $aa8b                                   ; $688f: $ca $8b $aa

    jp hl                                         ; $6892: $e9


    dec h                                         ; $6893: $25
    rst $38                                       ; $6894: $ff
    xor d                                         ; $6895: $aa
    ld a, [de]                                    ; $6896: $1a
    ld sp, $a3ed                                  ; $6897: $31 $ed $a3
    ld h, c                                       ; $689a: $61
    sub a                                         ; $689b: $97
    adc [hl]                                      ; $689c: $8e
    ld a, $51                                     ; $689d: $3e $51
    ld e, e                                       ; $689f: $5b
    db $d3                                        ; $68a0: $d3
    ld c, $c6                                     ; $68a1: $0e $c6
    and [hl]                                      ; $68a3: $a6
    ld h, a                                       ; $68a4: $67
    ld d, d                                       ; $68a5: $52
    jp c, $cdbc                                   ; $68a6: $da $bc $cd

    rst $38                                       ; $68a9: $ff
    and h                                         ; $68aa: $a4
    ld a, [$c357]                                 ; $68ab: $fa $57 $c3
    dec a                                         ; $68ae: $3d
    dec l                                         ; $68af: $2d
    ld sp, hl                                     ; $68b0: $f9
    ld d, a                                       ; $68b1: $57
    push de                                       ; $68b2: $d5
    adc b                                         ; $68b3: $88
    ld l, c                                       ; $68b4: $69
    ld e, a                                       ; $68b5: $5f
    cp d                                          ; $68b6: $ba
    xor a                                         ; $68b7: $af
    ld c, b                                       ; $68b8: $48
    db $f4                                        ; $68b9: $f4
    ld [de], a                                    ; $68ba: $12
    inc e                                         ; $68bb: $1c
    sbc a                                         ; $68bc: $9f
    and c                                         ; $68bd: $a1
    or e                                          ; $68be: $b3
    ret                                           ; $68bf: $c9


    ld c, d                                       ; $68c0: $4a
    db $f4                                        ; $68c1: $f4
    ld b, e                                       ; $68c2: $43
    ld l, h                                       ; $68c3: $6c
    db $f4                                        ; $68c4: $f4
    ld l, h                                       ; $68c5: $6c
    ret nc                                        ; $68c6: $d0

    db $dd                                        ; $68c7: $dd
    add l                                         ; $68c8: $85
    db $ec                                        ; $68c9: $ec
    or e                                          ; $68ca: $b3
    ld d, d                                       ; $68cb: $52
    and h                                         ; $68cc: $a4
    db $ec                                        ; $68cd: $ec
    adc b                                         ; $68ce: $88
    ld l, c                                       ; $68cf: $69
    daa                                           ; $68d0: $27
    add [hl]                                      ; $68d1: $86
    and [hl]                                      ; $68d2: $a6
    xor a                                         ; $68d3: $af
    sub h                                         ; $68d4: $94
    ld e, a                                       ; $68d5: $5f
    inc hl                                        ; $68d6: $23
    db $10                                        ; $68d7: $10
    ld bc, $4b8f                                  ; $68d8: $01 $8f $4b
    ld c, l                                       ; $68db: $4d
    xor e                                         ; $68dc: $ab
    sbc [hl]                                      ; $68dd: $9e
    halt                                          ; $68de: $76
    ld l, d                                       ; $68df: $6a
    ld e, a                                       ; $68e0: $5f
    cp c                                          ; $68e1: $b9
    rst $08                                       ; $68e2: $cf
    push af                                       ; $68e3: $f5
    ei                                            ; $68e4: $fb
    rst $38                                       ; $68e5: $ff
    dec d                                         ; $68e6: $15
    ld d, l                                       ; $68e7: $55
    dec l                                         ; $68e8: $2d
    dec [hl]                                      ; $68e9: $35
    call z, $f951                                 ; $68ea: $cc $51 $f9
    rlca                                          ; $68ed: $07
    ld l, e                                       ; $68ee: $6b
    ld sp, hl                                     ; $68ef: $f9
    ld hl, sp-$34                                 ; $68f0: $f8 $cc

Call_052_68f2:
    add sp, $11                                   ; $68f2: $e8 $11
    db $d3                                        ; $68f4: $d3
    ld a, $1a                                     ; $68f5: $3e $1a
    halt                                          ; $68f7: $76
    jp hl                                         ; $68f8: $e9


    add sp, $13                                   ; $68f9: $e8 $13
    or l                                          ; $68fb: $b5
    dec [hl]                                      ; $68fc: $35
    db $ed                                        ; $68fd: $ed
    ld h, b                                       ; $68fe: $60
    ld l, h                                       ; $68ff: $6c
    ld a, d                                       ; $6900: $7a
    ld h, $a5                                     ; $6901: $26 $a5
    call $fcdb                                    ; $6903: $cd $db $fc
    ld c, a                                       ; $6906: $4f
    xor d                                         ; $6907: $aa
    ld a, a                                       ; $6908: $7f
    push af                                       ; $6909: $f5

jr_052_690a:
    xor $f0                                       ; $690a: $ee $f0
    ld [hl+], a                                   ; $690c: $22
    pop hl                                        ; $690d: $e1
    and e                                         ; $690e: $a3
    ld h, c                                       ; $690f: $61
    rlca                                          ; $6910: $07
    ld b, h                                       ; $6911: $44
    inc sp                                        ; $6912: $33
    db $e4                                        ; $6913: $e4
    sub a                                         ; $6914: $97
    ld d, l                                       ; $6915: $55
    ld l, l                                       ; $6916: $6d
    xor h                                         ; $6917: $ac
    ld l, c                                       ; $6918: $69
    adc b                                         ; $6919: $88
    nop                                           ; $691a: $00
    rst $20                                       ; $691b: $e7
    ld sp, $d91a                                  ; $691c: $31 $1a $d9
    ld b, a                                       ; $691f: $47
    cp d                                          ; $6920: $ba
    jr c, jr_052_690a                             ; $6921: $38 $e7

    sub d                                         ; $6923: $92
    rst $38                                       ; $6924: $ff
    ld l, e                                       ; $6925: $6b
    call nz, $f4d0                                ; $6926: $c4 $d0 $f4
    sub l                                         ; $6929: $95
    ld a, [c]                                     ; $692a: $f2
    ld l, e                                       ; $692b: $6b
    inc h                                         ; $692c: $24
    ld e, d                                       ; $692d: $5a
    ld l, d                                       ; $692e: $6a
    and l                                         ; $692f: $a5
    adc a                                         ; $6930: $8f
    sbc b                                         ; $6931: $98
    or $d1                                        ; $6932: $f6 $d1
    or b                                          ; $6934: $b0
    ld c, e                                       ; $6935: $4b
    ld b, a                                       ; $6936: $47
    sbc a                                         ; $6937: $9f
    xor b                                         ; $6938: $a8
    xor l                                         ; $6939: $ad
    ld l, c                                       ; $693a: $69
    rlca                                          ; $693b: $07
    ld h, e                                       ; $693c: $63
    db $d3                                        ; $693d: $d3
    inc sp                                        ; $693e: $33
    add hl, hl                                    ; $693f: $29
    ld l, l                                       ; $6940: $6d

jr_052_6941:
    sbc $e6                                       ; $6941: $de $e6
    ld a, a                                       ; $6943: $7f
    ld d, d                                       ; $6944: $52
    db $fd                                        ; $6945: $fd
    xor e                                         ; $6946: $ab
    ld b, a                                       ; $6947: $47
    ld a, [$a3d0]                                 ; $6948: $fa $d0 $a3
    sub a                                         ; $694b: $97
    adc a                                         ; $694c: $8f

Call_052_694d:
    rst $38                                       ; $694d: $ff
    inc sp                                        ; $694e: $33
    ld c, e                                       ; $694f: $4b
    cp h                                          ; $6950: $bc
    ld d, $ff                                     ; $6951: $16 $ff
    ld b, a                                       ; $6953: $47
    rst $08                                       ; $6954: $cf
    add sp, $25                                   ; $6955: $e8 $25
    rst $38                                       ; $6957: $ff
    xor d                                         ; $6958: $aa
    ld a, [de]                                    ; $6959: $1a
    ld sp, $10ed                                  ; $695a: $31 $ed $10
    ld b, d                                       ; $695d: $42
    sub e                                         ; $695e: $93
    jp nc, $d376                                  ; $695f: $d2 $76 $d3

    cp a                                          ; $6962: $bf
    call nz, $cd2e                                ; $6963: $c4 $2e $cd
    db $db                                        ; $6966: $db
    sbc d                                         ; $6967: $9a
    db $eb                                        ; $6968: $eb
    inc a                                         ; $6969: $3c
    ld b, h                                       ; $696a: $44
    rst $20                                       ; $696b: $e7
    pop hl                                        ; $696c: $e1
    db $e3                                        ; $696d: $e3
    xor [hl]                                      ; $696e: $ae
    ld c, b                                       ; $696f: $48
    sbc $6b                                       ; $6970: $de $6b
    xor a                                         ; $6972: $af
    cp [hl]                                       ; $6973: $be
    ld [hl], $62                                  ; $6974: $36 $62
    jp c, $c347                                   ; $6976: $da $47 $c3

    ld l, $1d                                     ; $6979: $2e $1d
    ld a, l                                       ; $697b: $7d
    and d                                         ; $697c: $a2

Jump_052_697d:
    or [hl]                                       ; $697d: $b6
    and [hl]                                      ; $697e: $a6
    dec e                                         ; $697f: $1d
    adc h                                         ; $6980: $8c
    ld c, l                                       ; $6981: $4d
    rst $08                                       ; $6982: $cf
    and h                                         ; $6983: $a4
    or h                                          ; $6984: $b4
    ld a, c                                       ; $6985: $79
    sbc e                                         ; $6986: $9b
    rst $38                                       ; $6987: $ff
    ld c, c                                       ; $6988: $49
    push af                                       ; $6989: $f5
    xor a                                         ; $698a: $af
    ld a, $5b                                     ; $698b: $3e $5b
    add d                                         ; $698d: $82
    db $e3                                        ; $698e: $e3
    ld [hl], $7e                                  ; $698f: $36 $7e
    reti                                          ; $6991: $d9


    ret c                                         ; $6992: $d8

    db $dd                                        ; $6993: $dd
    ld l, e                                       ; $6994: $6b
    xor a                                         ; $6995: $af
    dec l                                         ; $6996: $2d
    ld b, a                                       ; $6997: $47
    rst $18                                       ; $6998: $df
    ld l, b                                       ; $6999: $68
    adc b                                         ; $699a: $88
    nop                                           ; $699b: $00
    rst $20                                       ; $699c: $e7
    pop hl                                        ; $699d: $e1
    db $e3                                        ; $699e: $e3
    xor [hl]                                      ; $699f: $ae
    ld c, b                                       ; $69a0: $48
    sbc $5b                                       ; $69a1: $de $5b
    xor a                                         ; $69a3: $af
    adc [hl]                                      ; $69a4: $8e
    jr jr_052_6941                                ; $69a5: $18 $9a

    cp [hl]                                       ; $69a7: $be
    ld d, d                                       ; $69a8: $52
    ld a, [hl]                                    ; $69a9: $7e
    adc l                                         ; $69aa: $8d

jr_052_69ab:
    ld b, h                                       ; $69ab: $44

jr_052_69ac:
    xor a                                         ; $69ac: $af
    db $f4                                        ; $69ad: $f4
    ld de, $3ed3                                  ; $69ae: $11 $d3 $3e
    ld a, [de]                                    ; $69b1: $1a
    halt                                          ; $69b2: $76
    jp hl                                         ; $69b3: $e9


    add sp, $13                                   ; $69b4: $e8 $13
    or l                                          ; $69b6: $b5
    dec [hl]                                      ; $69b7: $35
    db $ed                                        ; $69b8: $ed
    ld h, b                                       ; $69b9: $60
    ld l, h                                       ; $69ba: $6c
    ld a, d                                       ; $69bb: $7a
    ld h, $a5                                     ; $69bc: $26 $a5
    call $fcdb                                    ; $69be: $cd $db $fc
    ld c, a                                       ; $69c1: $4f
    xor d                                         ; $69c2: $aa
    ld a, a                                       ; $69c3: $7f
    dec [hl]                                      ; $69c4: $35
    call c, $8c79                                 ; $69c5: $dc $79 $8c
    ei                                            ; $69c8: $fb
    sub c                                         ; $69c9: $91
    cp l                                          ; $69ca: $bd
    ld b, [hl]                                    ; $69cb: $46
    ld c, d                                       ; $69cc: $4a
    and [hl]                                      ; $69cd: $a6
    ld sp, $8f8f                                  ; $69ce: $31 $8f $8f
    rst $10                                       ; $69d1: $d7
    db $ec                                        ; $69d2: $ec
    ld d, l                                       ; $69d3: $55
    ld h, a                                       ; $69d4: $67
    inc de                                        ; $69d5: $13
    ld e, [hl]                                    ; $69d6: $5e
    ld [hl], l                                    ; $69d7: $75
    db $ed                                        ; $69d8: $ed
    add sp, $71                                   ; $69d9: $e8 $71
    cp h                                          ; $69db: $bc
    ld e, h                                       ; $69dc: $5c
    ld d, l                                       ; $69dd: $55
    ld h, a                                       ; $69de: $67
    inc sp                                        ; $69df: $33
    add hl, hl                                    ; $69e0: $29
    ld l, l                                       ; $69e1: $6d
    jp nz, $aeab                                  ; $69e2: $c2 $ab $ae

    ld [hl], c                                    ; $69e5: $71
    db $fc                                        ; $69e6: $fc
    ld c, b                                       ; $69e7: $48

Jump_052_69e8:
    ret                                           ; $69e8: $c9


    db $fc                                        ; $69e9: $fc
    cp $3f                                        ; $69ea: $fe $3f
    sub e                                         ; $69ec: $93
    jp nc, $c346                                  ; $69ed: $d2 $46 $c3

    ld c, [hl]                                    ; $69f0: $4e
    xor a                                         ; $69f1: $af
    xor [hl]                                      ; $69f2: $ae
    ld h, l                                       ; $69f3: $65
    ld d, d                                       ; $69f4: $52
    or $5f                                        ; $69f5: $f6 $5f
    ld d, l                                       ; $69f7: $55
    db $10                                        ; $69f8: $10

Jump_052_69f9:
    ld bc, $e1e7                                  ; $69f9: $01 $e7 $e1
    db $e3                                        ; $69fc: $e3
    xor [hl]                                      ; $69fd: $ae
    ld c, b                                       ; $69fe: $48
    sbc [hl]                                      ; $69ff: $9e
    ldh a, [$aa]                                  ; $6a00: $f0 $aa
    ld l, e                                       ; $6a02: $6b
    call nz, $8fb4                                ; $6a03: $c4 $b4 $8f
    add [hl]                                      ; $6a06: $86
    ld e, l                                       ; $6a07: $5d
    ld a, [hl-]                                   ; $6a08: $3a
    ld a, [$6d44]                                 ; $6a09: $fa $44 $6d
    ld c, l                                       ; $6a0c: $4d
    dec sp                                        ; $6a0d: $3b
    jr jr_052_69ab                                ; $6a0e: $18 $9b

    sbc [hl]                                      ; $6a10: $9e
    ld c, c                                       ; $6a11: $49
    ld l, c                                       ; $6a12: $69
    di                                            ; $6a13: $f3
    ld [hl], $ff                                  ; $6a14: $36 $ff
    sub e                                         ; $6a16: $93
    ld [$3d5f], a                                 ; $6a17: $ea $5f $3d
    ld [hl], l                                    ; $6a1a: $75
    and d                                         ; $6a1b: $a2
    or [hl]                                       ; $6a1c: $b6
    add [hl]                                      ; $6a1d: $86
    di                                            ; $6a1e: $f3
    ld a, e                                       ; $6a1f: $7b
    jr nc, jr_052_69ac                            ; $6a20: $30 $8a

    ld d, c                                       ; $6a22: $51
    or l                                          ; $6a23: $b5
    ld h, a                                       ; $6a24: $67
    jr c, jr_052_6a77                             ; $6a25: $38 $50

    pop hl                                        ; $6a27: $e1
    dec [hl]                                      ; $6a28: $35
    ld sp, $96aa                                  ; $6a29: $31 $aa $96
    ld sp, hl                                     ; $6a2c: $f9
    sub c                                         ; $6a2d: $91
    sub d                                         ; $6a2e: $92
    ld c, h                                       ; $6a2f: $4c
    ld h, d                                       ; $6a30: $62
    ld [hl], $99                                  ; $6a31: $36 $99
    halt                                          ; $6a33: $76
    db $dd                                        ; $6a34: $dd
    xor e                                         ; $6a35: $ab
    daa                                           ; $6a36: $27
    cp h                                          ; $6a37: $bc
    ld [$0882], a                                 ; $6a38: $ea $82 $08
    ld h, b                                       ; $6a3b: $60
    jp hl                                         ; $6a3c: $e9


    ld l, h                                       ; $6a3d: $6c
    or d                                          ; $6a3e: $b2
    inc [hl]                                      ; $6a3f: $34
    res 4, e                                      ; $6a40: $cb $a3
    rst $20                                       ; $6a42: $e7
    rst $30                                       ; $6a43: $f7
    rst $38                                       ; $6a44: $ff
    reti                                          ; $6a45: $d9


    xor e                                         ; $6a46: $ab
    add $fd                                       ; $6a47: $c6 $fd
    add sp, $11                                   ; $6a49: $e8 $11
    db $d3                                        ; $6a4b: $d3
    ld a, $1a                                     ; $6a4c: $3e $1a
    halt                                          ; $6a4e: $76
    jp hl                                         ; $6a4f: $e9


    add sp, $13                                   ; $6a50: $e8 $13
    or l                                          ; $6a52: $b5
    dec [hl]                                      ; $6a53: $35
    db $ed                                        ; $6a54: $ed
    ld h, b                                       ; $6a55: $60
    ld l, h                                       ; $6a56: $6c
    ld a, d                                       ; $6a57: $7a
    ld h, $a5                                     ; $6a58: $26 $a5
    call $fcdb                                    ; $6a5a: $cd $db $fc
    ld c, a                                       ; $6a5d: $4f
    xor d                                         ; $6a5e: $aa
    ld a, a                                       ; $6a5f: $7f
    push af                                       ; $6a60: $f5
    ld c, b                                       ; $6a61: $48
    ret                                           ; $6a62: $c9


    ld l, h                                       ; $6a63: $6c
    or d                                          ; $6a64: $b2
    ld [de], a                                    ; $6a65: $12
    db $fd                                        ; $6a66: $fd
    db $10                                        ; $6a67: $10
    ld e, e                                       ; $6a68: $5b
    db $e3                                        ; $6a69: $e3
    ld a, [hl]                                    ; $6a6a: $7e
    db $f4                                        ; $6a6b: $f4
    adc b                                         ; $6a6c: $88
    and c                                         ; $6a6d: $a1
    jp hl                                         ; $6a6e: $e9


    dec hl                                        ; $6a6f: $2b
    push hl                                       ; $6a70: $e5
    rst $10                                       ; $6a71: $d7
    ld c, b                                       ; $6a72: $48
    inc [hl]                                      ; $6a73: $34
    ld b, h                                       ; $6a74: $44
    rst $20                                       ; $6a75: $e7
    pop hl                                        ; $6a76: $e1

jr_052_6a77:
    dec sp                                        ; $6a77: $3b
    ld a, d                                       ; $6a78: $7a
    ld d, a                                       ; $6a79: $57
    inc a                                         ; $6a7a: $3c
    sub [hl]                                      ; $6a7b: $96
    ld sp, hl                                     ; $6a7c: $f9
    db $dd                                        ; $6a7d: $dd
    rst $38                                       ; $6a7e: $ff
    ld l, e                                       ; $6a7f: $6b
    push hl                                       ; $6a80: $e5
    ld a, $bd                                     ; $6a81: $3e $bd
    cp d                                          ; $6a83: $ba
    ld d, $b2                                     ; $6a84: $16 $b2
    inc [hl]                                      ; $6a86: $34
    dec hl                                        ; $6a87: $2b
    dec sp                                        ; $6a88: $3b
    call c, $52e3                                 ; $6a89: $dc $e3 $52
    ld c, e                                       ; $6a8c: $4b
    sbc a                                         ; $6a8d: $9f
    sbc d                                         ; $6a8e: $9a
    ld e, c                                       ; $6a8f: $59
    ld [hl], $96                                  ; $6a90: $36 $96
    dec c                                         ; $6a92: $0d
    ld e, l                                       ; $6a93: $5d
    cp d                                          ; $6a94: $ba
    ld b, e                                       ; $6a95: $43
    rst $00                                       ; $6a96: $c7
    dec sp                                        ; $6a97: $3b
    ld [hl], d                                    ; $6a98: $72
    add [hl]                                      ; $6a99: $86
    ld [$4ce0], sp                                ; $6a9a: $08 $e0 $4c
    ld a, e                                       ; $6a9d: $7b
    rra                                           ; $6a9e: $1f
    xor $3b                                       ; $6a9f: $ee $3b
    ld a, d                                       ; $6aa1: $7a
    inc h                                         ; $6aa2: $24
    ret                                           ; $6aa3: $c9


    rst $38                                       ; $6aa4: $ff
    xor d                                         ; $6aa5: $aa
    add d                                         ; $6aa6: $82
    dec sp                                        ; $6aa7: $3b
    adc a                                         ; $6aa8: $8f
    xor [hl]                                      ; $6aa9: $ae
    cp h                                          ; $6aaa: $bc
    sub e                                         ; $6aab: $93
    ld [hl-], a                                   ; $6aac: $32
    ld [hl-], a                                   ; $6aad: $32
    xor $f4                                       ; $6aae: $ee $f4
    sbc c                                         ; $6ab0: $99
    pop de                                        ; $6ab1: $d1
    or e                                          ; $6ab2: $b3
    ld d, a                                       ; $6ab3: $57
    xor l                                         ; $6ab4: $ad
    inc de                                        ; $6ab5: $13
    pop af                                        ; $6ab6: $f1
    db $dd                                        ; $6ab7: $dd
    ld [hl], l                                    ; $6ab8: $75
    ld b, d                                       ; $6ab9: $42
    ld l, c                                       ; $6aba: $69
    jr c, @+$46                                   ; $6abb: $38 $44

    add b                                         ; $6abd: $80
    sbc e                                         ; $6abe: $9b
    dec [hl]                                      ; $6abf: $35
    ld a, e                                       ; $6ac0: $7b
    push de                                       ; $6ac1: $d5
    xor [hl]                                      ; $6ac2: $ae
    ld a, b                                       ; $6ac3: $78
    call z, $a9d0                                 ; $6ac4: $cc $d0 $a9
    ld l, $b9                                     ; $6ac7: $2e $b9
    sbc [hl]                                      ; $6ac9: $9e
    ld h, [hl]                                    ; $6aca: $66
    ld h, l                                       ; $6acb: $65
    adc a                                         ; $6acc: $8f
    sub [hl]                                      ; $6acd: $96
    add d                                         ; $6ace: $82
    dec sp                                        ; $6acf: $3b
    adc a                                         ; $6ad0: $8f
    dec e                                         ; $6ad1: $1d
    cp l                                          ; $6ad2: $bd
    ld a, $dc                                     ; $6ad3: $3e $dc
    rst $20                                       ; $6ad5: $e7
    ld c, h                                       ; $6ad6: $4c
    sub e                                         ; $6ad7: $93
    ld [hl+], a                                   ; $6ad8: $22
    sbc c                                         ; $6ad9: $99
    call nc, $57ff                                ; $6ada: $d4 $ff $57
    dec d                                         ; $6add: $15
    ld b, h                                       ; $6ade: $44
    adc a                                         ; $6adf: $8f
    ld c, e                                       ; $6ae0: $4b
    dec l                                         ; $6ae1: $2d
    ld a, l                                       ; $6ae2: $7d
    ld l, d                                       ; $6ae3: $6a
    ld h, [hl]                                    ; $6ae4: $66
    reti                                          ; $6ae5: $d9


    ld e, b                                       ; $6ae6: $58
    ld [hl], $74                                  ; $6ae7: $36 $74
    ld e, d                                       ; $6ae9: $5a
    ld a, h                                       ; $6aea: $7c
    jp nc, $c706                                  ; $6aeb: $d2 $06 $c7

    or e                                          ; $6aee: $b3
    sub a                                         ; $6aef: $97
    or e                                          ; $6af0: $b3
    adc $46                                       ; $6af1: $ce $46
    ld b, e                                       ; $6af3: $43
    sub [hl]                                      ; $6af4: $96
    ld b, e                                       ; $6af5: $43
    ld b, [hl]                                    ; $6af6: $46
    inc c                                         ; $6af7: $0c
    dec e                                         ; $6af8: $1d
    or e                                          ; $6af9: $b3
    call nc, $fefc                                ; $6afa: $d4 $fc $fe
    ccf                                           ; $6afd: $3f
    ld h, d                                       ; $6afe: $62
    jp c, $220b                                   ; $6aff: $da $0b $22

    rst $20                                       ; $6b02: $e7
    ld sp, $f47b                                  ; $6b03: $31 $7b $f4
    ld [hl], b                                    ; $6b06: $70
    db $d3                                        ; $6b07: $d3
    sbc $87                                       ; $6b08: $de $87
    ld a, e                                       ; $6b0a: $7b
    ret z                                         ; $6b0b: $c8

    adc [hl]                                      ; $6b0c: $8e
    sbc $bf                                       ; $6b0d: $de $bf
    ld e, $33                                     ; $6b0f: $1e $33
    sbc a                                         ; $6b11: $9f
    ld a, c                                       ; $6b12: $79
    ld d, l                                       ; $6b13: $55
    call Call_000_2959                            ; $6b14: $cd $59 $29
    ld [de], a                                    ; $6b17: $12
    dec a                                         ; $6b18: $3d
    ld h, [hl]                                    ; $6b19: $66
    add hl, hl                                    ; $6b1a: $29
    adc b                                         ; $6b1b: $88
    nop                                           ; $6b1c: $00
    adc a                                         ; $6b1d: $8f
    ld c, e                                       ; $6b1e: $4b
    ld c, l                                       ; $6b1f: $4d
    xor e                                         ; $6b20: $ab
    ld e, [hl]                                    ; $6b21: $5e
    db $fd                                        ; $6b22: $fd
    rst $28                                       ; $6b23: $ef
    rst $10                                       ; $6b24: $d7
    ld l, $11                                     ; $6b25: $2e $11
    db $db                                        ; $6b27: $db
    push hl                                       ; $6b28: $e5
    db $d3                                        ; $6b29: $d3
    sub d                                         ; $6b2a: $92
    sbc [hl]                                      ; $6b2b: $9e
    dec c                                         ; $6b2c: $0d
    rra                                           ; $6b2d: $1f
    add hl, sp                                    ; $6b2e: $39
    ld b, h                                       ; $6b2f: $44
    ld a, [c]                                     ; $6b30: $f2
    jp z, Jump_052_5a7d                           ; $6b31: $ca $7d $5a

    dec l                                         ; $6b34: $2d
    sub e                                         ; $6b35: $93
    db $e4                                        ; $6b36: $e4
    db $db                                        ; $6b37: $db
    ld [hl], $0d                                  ; $6b38: $36 $0d
    ld de, $dc80                                  ; $6b3a: $11 $80 $dc
    sub a                                         ; $6b3d: $97
    cp $77                                        ; $6b3e: $fe $77
    cp b                                          ; $6b40: $b8
    ld sp, hl                                     ; $6b41: $f9
    pop de                                        ; $6b42: $d1
    ld h, l                                       ; $6b43: $65
    ld [hl], a                                    ; $6b44: $77
    db $f4                                        ; $6b45: $f4
    ld l, h                                       ; $6b46: $6c
    ret z                                         ; $6b47: $c8

    ld b, d                                       ; $6b48: $42
    ld l, h                                       ; $6b49: $6c
    dec l                                         ; $6b4a: $2d
    ld de, $ad1b                                  ; $6b4b: $11 $1b $ad
    pop af                                        ; $6b4e: $f1
    rst $38                                       ; $6b4f: $ff
    rl l                                          ; $6b50: $cb $15
    dec [hl]                                      ; $6b52: $35
    ld h, [hl]                                    ; $6b53: $66
    xor c                                         ; $6b54: $a9
    ld [hl], c                                    ; $6b55: $71
    ld a, h                                       ; $6b56: $7c
    ld b, e                                       ; $6b57: $43
    inc b                                         ; $6b58: $04
    adc a                                         ; $6b59: $8f
    ld c, e                                       ; $6b5a: $4b
    db $ed                                        ; $6b5b: $ed
    inc h                                         ; $6b5c: $24
    sbc c                                         ; $6b5d: $99
    ld d, h                                       ; $6b5e: $54
    xor a                                         ; $6b5f: $af
    call c, Call_000_2cc7                         ; $6b60: $dc $c7 $2c
    dec [hl]                                      ; $6b63: $35
    xor l                                         ; $6b64: $ad
    ld l, h                                       ; $6b65: $6c
    inc l                                         ; $6b66: $2c
    ld h, h                                       ; $6b67: $64
    db $e4                                        ; $6b68: $e4
    sbc e                                         ; $6b69: $9b
    inc d                                         ; $6b6a: $14
    xor c                                         ; $6b6b: $a9
    db $dd                                        ; $6b6c: $dd
    pop hl                                        ; $6b6d: $e1
    dec h                                         ; $6b6e: $25
    ld d, d                                       ; $6b6f: $52
    or d                                          ; $6b70: $b2
    ld hl, sp+$3f                                 ; $6b71: $f8 $3f
    ld a, d                                       ; $6b73: $7a
    jp nz, $dc3b                                  ; $6b74: $c2 $3b $dc

    add hl, sp                                    ; $6b77: $39
    cp a                                          ; $6b78: $bf
    ld c, h                                       ; $6b79: $4c
    sub d                                         ; $6b7a: $92
    rst $38                                       ; $6b7b: $ff
    ld h, e                                       ; $6b7c: $63
    call z, $2352                                 ; $6b7d: $cc $52 $23
    add a                                         ; $6b80: $87
    ld c, b                                       ; $6b81: $48
    adc l                                         ; $6b82: $8d
    ld e, [hl]                                    ; $6b83: $5e
    dec [hl]                                      ; $6b84: $35
    ld a, [de]                                    ; $6b85: $1a
    cp l                                          ; $6b86: $bd
    ld [de], a                                    ; $6b87: $12
    db $fd                                        ; $6b88: $fd
    db $10                                        ; $6b89: $10
    sbc e                                         ; $6b8a: $9b

jr_052_6b8b:
    xor [hl]                                      ; $6b8b: $ae
    add [hl]                                      ; $6b8c: $86
    ld [$e1e7], sp                                ; $6b8d: $08 $e7 $e1
    dec sp                                        ; $6b90: $3b
    ld a, d                                       ; $6b91: $7a
    ld d, a                                       ; $6b92: $57
    inc a                                         ; $6b93: $3c
    sub [hl]                                      ; $6b94: $96
    ld sp, hl                                     ; $6b95: $f9
    pop hl                                        ; $6b96: $e1
    ld c, h                                       ; $6b97: $4c
    sbc [hl]                                      ; $6b98: $9e
    ld e, h                                       ; $6b99: $5c
    push hl                                       ; $6b9a: $e5
    dec hl                                        ; $6b9b: $2b
    rst $30                                       ; $6b9c: $f7
    jp hl                                         ; $6b9d: $e9


    push de                                       ; $6b9e: $d5
    dec [hl]                                      ; $6b9f: $35
    ld [hl], l                                    ; $6ba0: $75
    pop af                                        ; $6ba1: $f1
    ld e, h                                       ; $6ba2: $5c
    ld d, $22                                     ; $6ba3: $16 $22
    adc a                                         ; $6ba5: $8f
    ld c, e                                       ; $6ba6: $4b
    db $ed                                        ; $6ba7: $ed
    add sp, -$1b                                  ; $6ba8: $e8 $e5
    and d                                         ; $6baa: $a2
    jp c, Jump_052_7ff1                           ; $6bab: $da $f1 $7f

    ld a, b                                       ; $6bae: $78
    ld e, [hl]                                    ; $6baf: $5e
    or $93                                        ; $6bb0: $f6 $93
    ld a, e                                       ; $6bb2: $7b
    ldh [$f1], a                                  ; $6bb3: $e0 $f1
    xor e                                         ; $6bb5: $ab
    inc bc                                        ; $6bb6: $03
    ld [hl+], a                                   ; $6bb7: $22
    adc a                                         ; $6bb8: $8f
    ld c, e                                       ; $6bb9: $4b
    ld c, l                                       ; $6bba: $4d
    xor e                                         ; $6bbb: $ab
    ld e, $39                                     ; $6bbc: $1e $39
    call nz, $af47                                ; $6bbe: $c4 $47 $af
    jp c, $1ebf                                   ; $6bc1: $da $bf $1e

    ld c, e                                       ; $6bc4: $4b
    rst $38                                       ; $6bc5: $ff
    jr nz, jr_052_6b8b                            ; $6bc6: $20 $c3

    ld sp, hl                                     ; $6bc8: $f9
    push hl                                       ; $6bc9: $e5
    sbc e                                         ; $6bca: $9b
    db $dd                                        ; $6bcb: $dd
    ld c, b                                       ; $6bcc: $48
    ld b, b                                       ; $6bcd: $40
    inc b                                         ; $6bce: $04
    adc a                                         ; $6bcf: $8f
    ld c, e                                       ; $6bd0: $4b
    db $ed                                        ; $6bd1: $ed
    add sp, $51                                   ; $6bd2: $e8 $51
    cp $97                                        ; $6bd4: $fe $97
    db $dd                                        ; $6bd6: $dd
    ld c, c                                       ; $6bd7: $49
    adc a                                         ; $6bd8: $8f
    ld e, [hl]                                    ; $6bd9: $5e
    cp b                                          ; $6bda: $b8
    rst $28                                       ; $6bdb: $ef
    sub a                                         ; $6bdc: $97
    ret c                                         ; $6bdd: $d8

    ld c, h                                       ; $6bde: $4c
    ld a, [bc]                                    ; $6bdf: $0a
    sbc a                                         ; $6be0: $9f
    ld c, c                                       ; $6be1: $49
    ld l, c                                       ; $6be2: $69
    cp e                                          ; $6be3: $bb
    jp hl                                         ; $6be4: $e9


    ld e, a                                       ; $6be5: $5f
    ld h, d                                       ; $6be6: $62
    sub a                                         ; $6be7: $97
    db $fd                                        ; $6be8: $fd
    and [hl]                                      ; $6be9: $a6
    ld c, b                                       ; $6bea: $48
    sbc [hl]                                      ; $6beb: $9e
    dec c                                         ; $6bec: $0d
    rst $18                                       ; $6bed: $df
    ld e, l                                       ; $6bee: $5d
    or e                                          ; $6bef: $b3
    sub h                                         ; $6bf0: $94
    ld a, [bc]                                    ; $6bf1: $0a
    add c                                         ; $6bf2: $81
    ld [$4b8f], sp                                ; $6bf3: $08 $8f $4b
    dec l                                         ; $6bf6: $2d
    ld a, l                                       ; $6bf7: $7d
    ld l, d                                       ; $6bf8: $6a
    ld h, [hl]                                    ; $6bf9: $66
    reti                                          ; $6bfa: $d9


    ld e, b                                       ; $6bfb: $58
    ld [hl], $74                                  ; $6bfc: $36 $74
    ld hl, $e4cb                                  ; $6bfe: $21 $cb $e4
    and $7c                                       ; $6c01: $e6 $7c
    ld [hl], $1a                                  ; $6c03: $36 $1a
    or d                                          ; $6c05: $b2
    inc e                                         ; $6c06: $1c
    ld [hl-], a                                   ; $6c07: $32
    and [hl]                                      ; $6c08: $a6
    ld c, c                                       ; $6c09: $49
    and a                                         ; $6c0a: $a7
    set 0, [hl]                                   ; $6c0b: $cb $c6
    sbc b                                         ; $6c0d: $98
    and l                                         ; $6c0e: $a5
    add [hl]                                      ; $6c0f: $86
    di                                            ; $6c10: $f3
    dec hl                                        ; $6c11: $2b
    rst $30                                       ; $6c12: $f7
    ld [hl], c                                    ; $6c13: $71
    and a                                         ; $6c14: $a7
    halt                                          ; $6c15: $76
    sub [hl]                                      ; $6c16: $96
    db $fd                                        ; $6c17: $fd
    ld d, a                                       ; $6c18: $57
    push de                                       ; $6c19: $d5
    jp nc, $dbf7                                  ; $6c1a: $d2 $f7 $db

    sub b                                         ; $6c1d: $90
    sub l                                         ; $6c1e: $95
    ld a, $7a                                     ; $6c1f: $3e $7a
    push de                                       ; $6c21: $d5
    ld [hl-], a                                   ; $6c22: $32
    di                                            ; $6c23: $f3
    ld hl, sp+$3a                                 ; $6c24: $f8 $3a
    ld b, h                                       ; $6c26: $44
    rst $20                                       ; $6c27: $e7
    pop hl                                        ; $6c28: $e1
    dec sp                                        ; $6c29: $3b
    ld a, d                                       ; $6c2a: $7a
    ld d, a                                       ; $6c2b: $57
    inc a                                         ; $6c2c: $3c
    ld d, [hl]                                    ; $6c2d: $56
    rst $38                                       ; $6c2e: $ff
    rst $10                                       ; $6c2f: $d7
    ld [hl], b                                    ; $6c30: $70
    db $d3                                        ; $6c31: $d3
    sbc $87                                       ; $6c32: $de $87
    ei                                            ; $6c34: $fb
    cp b                                          ; $6c35: $b8
    ld d, e                                       ; $6c36: $53
    daa                                           ; $6c37: $27
    ld [hl+], a                                   ; $6c38: $22
    push hl                                       ; $6c39: $e5
    dec hl                                        ; $6c3a: $2b

jr_052_6c3b:
    rst $30                                       ; $6c3b: $f7
    and l                                         ; $6c3c: $a5
    rst $38                                       ; $6c3d: $ff
    sbc l                                         ; $6c3e: $9d
    adc l                                         ; $6c3f: $8d
    cp a                                          ; $6c40: $bf
    jp nc, Jump_000_3217                          ; $6c41: $d2 $17 $32

    inc a                                         ; $6c44: $3c
    sbc d                                         ; $6c45: $9a
    sub [hl]                                      ; $6c46: $96
    add h                                         ; $6c47: $84
    ld hl, sp+$12                                 ; $6c48: $f8 $12
    rst $08                                       ; $6c4a: $cf
    ld a, [hl]                                    ; $6c4b: $7e
    db $fc                                        ; $6c4c: $fc
    cpl                                           ; $6c4d: $2f
    ld d, a                                       ; $6c4e: $57
    inc d                                         ; $6c4f: $14
    ld b, h                                       ; $6c50: $44
    adc a                                         ; $6c51: $8f
    ld c, e                                       ; $6c52: $4b
    call $f4db                                    ; $6c53: $cd $db $f4
    jp z, $5d7d                                   ; $6c56: $ca $7d $5d

    inc [hl]                                      ; $6c59: $34
    ld h, h                                       ; $6c5a: $64
    ld b, a                                       ; $6c5b: $47
    adc a                                         ; $6c5c: $8f
    ld e, [hl]                                    ; $6c5d: $5e
    rst $30                                       ; $6c5e: $f7
    and l                                         ; $6c5f: $a5
    adc a                                         ; $6c60: $8f

Jump_052_6c61:
    db $ec                                        ; $6c61: $ec
    dec [hl]                                      ; $6c62: $35
    db $db                                        ; $6c63: $db
    and l                                         ; $6c64: $a5
    jr nz, jr_052_6c69                            ; $6c65: $20 $02

    jr nz, jr_052_6c3b                            ; $6c67: $20 $d2

jr_052_6c69:
    cp a                                          ; $6c69: $bf
    call nz, $172e                                ; $6c6a: $c4 $2e $17
    sub c                                         ; $6c6d: $91
    ld [$4b31], a                                 ; $6c6e: $ea $31 $4b
    adc l                                         ; $6c71: $8d
    ld e, [hl]                                    ; $6c72: $5e
    ld e, c                                       ; $6c73: $59
    ld [hl+], a                                   ; $6c74: $22
    jp z, $9a1a                                   ; $6c75: $ca $1a $9a

    and a                                         ; $6c78: $a7
    ld a, [hl]                                    ; $6c79: $7e
    reti                                          ; $6c7a: $d9


    sbc d                                         ; $6c7b: $9a
    dec l                                         ; $6c7c: $2d
    ld d, l                                       ; $6c7d: $55
    ld a, l                                       ; $6c7e: $7d
    ld [hl], $cb                                  ; $6c7f: $36 $cb
    adc a                                         ; $6c81: $8f
    ld e, c                                       ; $6c82: $59
    ld l, d                                       ; $6c83: $6a
    ld a, d                                       ; $6c84: $7a
    push af                                       ; $6c85: $f5
    ld b, d                                       ; $6c86: $42
    ld d, $42                                     ; $6c87: $16 $42
    ld [c], a                                     ; $6c89: $e2
    cpl                                           ; $6c8a: $2f
    db $fd                                        ; $6c8b: $fd
    ld e, c                                       ; $6c8c: $59
    pop de                                        ; $6c8d: $d1
    sbc [hl]                                      ; $6c8e: $9e
    inc sp                                        ; $6c8f: $33
    cp c                                          ; $6c90: $b9
    add hl, sp                                    ; $6c91: $39
    ld b, e                                       ; $6c92: $43
    inc b                                         ; $6c93: $04

jr_052_6c94:
    adc a                                         ; $6c94: $8f
    ld c, e                                       ; $6c95: $4b
    adc l                                         ; $6c96: $8d
    dec sp                                        ; $6c97: $3b
    ld [hl], l                                    ; $6c98: $75
    ld a, $91                                     ; $6c99: $3e $91
    add sp, $11                                   ; $6c9b: $e8 $11
    ld b, e                                       ; $6c9d: $43
    ld l, c                                       ; $6c9e: $69
    db $ed                                        ; $6c9f: $ed
    adc [hl]                                      ; $6ca0: $8e
    jr jr_052_6c94                                ; $6ca1: $18 $f1

    ld [hl+], a                                   ; $6ca3: $22
    ld a, $1a                                     ; $6ca4: $3e $1a
    halt                                          ; $6ca6: $76
    db $f4                                        ; $6ca7: $f4
    ld c, d                                       ; $6ca8: $4a
    db $ed                                        ; $6ca9: $ed
    ld c, d                                       ; $6caa: $4a
    rst $00                                       ; $6cab: $c7
    db $f4                                        ; $6cac: $f4
    ld [hl], d                                    ; $6cad: $72
    rrca                                          ; $6cae: $0f
    pop hl                                        ; $6caf: $e1
    adc [hl]                                      ; $6cb0: $8e
    ld d, [hl]                                    ; $6cb1: $56
    pop de                                        ; $6cb2: $d1
    db $10                                        ; $6cb3: $10
    ld bc, $4b8f                                  ; $6cb4: $01 $8f $4b
    adc l                                         ; $6cb7: $8d
    sub h                                         ; $6cb8: $94
    ld h, h                                       ; $6cb9: $64
    ld [de], a                                    ; $6cba: $12

jr_052_6cbb:
    ld c, e                                       ; $6cbb: $4b
    ld d, a                                       ; $6cbc: $57
    rst $10                                       ; $6cbd: $d7
    adc [hl]                                      ; $6cbe: $8e
    ld e, [hl]                                    ; $6cbf: $5e
    cp b                                          ; $6cc0: $b8
    rrca                                          ; $6cc1: $0f
    scf                                           ; $6cc2: $37
    db $ed                                        ; $6cc3: $ed
    ld a, l                                       ; $6cc4: $7d
    cp b                                          ; $6cc5: $b8

Jump_052_6cc6:
    sbc a                                         ; $6cc6: $9f
    adc l                                         ; $6cc7: $8d

Call_052_6cc8:
    add [hl]                                      ; $6cc8: $86
    db $ec                                        ; $6cc9: $ec
    add sp, $7f                                   ; $6cca: $e8 $7f
    sub l                                         ; $6ccc: $95
    rst $08                                       ; $6ccd: $cf
    db $eb                                        ; $6cce: $eb
    sub a                                         ; $6ccf: $97
    cpl                                           ; $6cd0: $2f
    ld b, a                                       ; $6cd1: $47
    adc a                                         ; $6cd2: $8f
    ld e, c                                       ; $6cd3: $59
    ld l, d                                       ; $6cd4: $6a
    jp hl                                         ; $6cd5: $e9


    jp Jump_052_63bd                              ; $6cd6: $c3 $bd $63


    adc c                                         ; $6cd9: $89
    rst $28                                       ; $6cda: $ef
    sub b                                         ; $6cdb: $90
    pop hl                                        ; $6cdc: $e1
    pop de                                        ; $6cdd: $d1
    reti                                          ; $6cde: $d9


    ld c, b                                       ; $6cdf: $48
    ret z                                         ; $6ce0: $c8

    or d                                          ; $6ce1: $b2
    and c                                         ; $6ce2: $a1
    bit 5, [hl]                                   ; $6ce3: $cb $6e
    db $ec                                        ; $6ce5: $ec
    xor b                                         ; $6ce6: $a8
    or c                                          ; $6ce7: $b1
    pop af                                        ; $6ce8: $f1
    rst $38                                       ; $6ce9: $ff
    cp b                                          ; $6cea: $b8
    ld d, e                                       ; $6ceb: $53
    adc a                                         ; $6cec: $8f
    ld e, [hl]                                    ; $6ced: $5e
    dec b                                         ; $6cee: $05
    ld de, $6540                                  ; $6cef: $11 $40 $65
    adc d                                         ; $6cf2: $8a
    rla                                           ; $6cf3: $17
    or l                                          ; $6cf4: $b5
    db $ec                                        ; $6cf5: $ec
    add $8e                                       ; $6cf6: $c6 $8e
    ld e, c                                       ; $6cf8: $59
    ld l, d                                       ; $6cf9: $6a
    jr c, jr_052_6cbb                             ; $6cfa: $38 $bf

    sub b                                         ; $6cfc: $90
    or l                                          ; $6cfd: $b5
    pop af                                        ; $6cfe: $f1
    add sp, $12                                   ; $6cff: $e8 $12
    dec de                                        ; $6d01: $1b
    jp $d86f                                      ; $6d02: $c3 $6f $d8


    ret z                                         ; $6d05: $c8

    ld e, [hl]                                    ; $6d06: $5e
    rst $38                                       ; $6d07: $ff
    ld l, h                                       ; $6d08: $6c
    ld h, $a5                                     ; $6d09: $26 $a5
    adc l                                         ; $6d0b: $8d
    ld e, c                                       ; $6d0c: $59
    ld l, d                                       ; $6d0d: $6a
    ld a, d                                       ; $6d0e: $7a
    push af                                       ; $6d0f: $f5
    or d                                          ; $6d10: $b2
    inc h                                         ; $6d11: $24
    db $dd                                        ; $6d12: $dd
    ld d, a                                       ; $6d13: $57
    db $ed                                        ; $6d14: $ed
    adc [hl]                                      ; $6d15: $8e
    ei                                            ; $6d16: $fb
    pop de                                        ; $6d17: $d1
    dec [hl]                                      ; $6d18: $35
    dec a                                         ; $6d19: $3d
    ld d, d                                       ; $6d1a: $52
    call nz, Call_052_4434                        ; $6d1b: $c4 $34 $44
    jr jr_052_6d5b                                ; $6d1e: $18 $3b

    db $f4                                        ; $6d20: $f4
    ld a, a                                       ; $6d21: $7f
    sub l                                         ; $6d22: $95
    xor a                                         ; $6d23: $af
    call c, $3cd7                                 ; $6d24: $dc $d7 $3c
    xor c                                         ; $6d27: $a9
    inc c                                         ; $6d28: $0c
    rst $30                                       ; $6d29: $f7
    db $f4                                        ; $6d2a: $f4
    adc [hl]                                      ; $6d2b: $8e
    db $e3                                        ; $6d2c: $e3
    ld a, e                                       ; $6d2d: $7b
    ld d, a                                       ; $6d2e: $57

Call_052_6d2f:
    inc a                                         ; $6d2f: $3c
    ld b, [hl]                                    ; $6d30: $46
    ld a, c                                       ; $6d31: $79
    ld d, c                                       ; $6d32: $51
    or l                                          ; $6d33: $b5
    ld [hl], h                                    ; $6d34: $74
    db $e4                                        ; $6d35: $e4
    inc de                                        ; $6d36: $13
    xor c                                         ; $6d37: $a9
    adc [hl]                                      ; $6d38: $8e
    ld h, l                                       ; $6d39: $65
    ld a, [hl]                                    ; $6d3a: $7e
    jp c, $fbd1                                   ; $6d3b: $da $d1 $fb

    cp h                                          ; $6d3e: $bc
    jr z, jr_052_6da0                             ; $6d3f: $28 $5f

    cp d                                          ; $6d41: $ba
    ld [$c044], sp                                ; $6d42: $08 $44 $c0
    ld hl, sp-$62                                 ; $6d45: $f8 $9e
    dec c                                         ; $6d47: $0d
    sbc c                                         ; $6d48: $99
    halt                                          ; $6d49: $76
    db $f4                                        ; $6d4a: $f4
    cp d                                          ; $6d4b: $ba
    ld l, b                                       ; $6d4c: $68
    ret z                                         ; $6d4d: $c8

    add sp, $55                                   ; $6d4e: $e8 $55
    dec hl                                        ; $6d50: $2b
    rst $30                                       ; $6d51: $f7
    push hl                                       ; $6d52: $e5
    jr jr_052_6d6c                                ; $6d53: $18 $17

    cp [hl]                                       ; $6d55: $be
    call nz, Call_000_211f                        ; $6d56: $c4 $1f $21
    jr @+$5b                                      ; $6d59: $18 $59

jr_052_6d5b:
    ld a, [$7dd1]                                 ; $6d5b: $fa $d1 $7d
    ld [hl], $9b                                  ; $6d5e: $36 $9b
    adc h                                         ; $6d60: $8c
    dec sp                                        ; $6d61: $3b
    push af                                       ; $6d62: $f5
    scf                                           ; $6d63: $37
    ld e, l                                       ; $6d64: $5d
    ld [hl], $e0                                  ; $6d65: $36 $e0
    add b                                         ; $6d67: $80
    sbc l                                         ; $6d68: $9d
    ld a, [hl-]                                   ; $6d69: $3a
    sbc a                                         ; $6d6a: $9f
    ret z                                         ; $6d6b: $c8

jr_052_6d6c:
    xor [hl]                                      ; $6d6c: $ae
    ld a, [bc]                                    ; $6d6d: $0a
    add c                                         ; $6d6e: $81
    ld [$bb80], sp                                ; $6d6f: $08 $80 $bb
    add $9d                                       ; $6d72: $c6 $9d
    ld a, [hl-]                                   ; $6d74: $3a
    sbc a                                         ; $6d75: $9f
    ld [$b81c], sp                                ; $6d76: $08 $1c $b8
    ld a, $e9                                     ; $6d79: $3e $e9
    or l                                          ; $6d7b: $b5
    sub b                                         ; $6d7c: $90
    add hl, hl                                    ; $6d7d: $29
    ld e, [hl]                                    ; $6d7e: $5e
    call nc, $fefc                                ; $6d7f: $d4 $fc $fe
    rrca                                          ; $6d82: $0f
    ld de, $e1e7                                  ; $6d83: $11 $e7 $e1
    ld d, e                                       ; $6d86: $53
    scf                                           ; $6d87: $37
    ld b, l                                       ; $6d88: $45
    halt                                          ; $6d89: $76
    push bc                                       ; $6d8a: $c5
    ld h, e                                       ; $6d8b: $63
    ld [hl], $64                                  ; $6d8c: $36 $64
    adc d                                         ; $6d8e: $8a
    rla                                           ; $6d8f: $17
    dec d                                         ; $6d90: $15
    ld [bc], a                                    ; $6d91: $02
    rlca                                          ; $6d92: $07
    ld a, [hl-]                                   ; $6d93: $3a
    ld h, h                                       ; $6d94: $64
    ld a, [hl+]                                   ; $6d95: $2a
    halt                                          ; $6d96: $76
    push bc                                       ; $6d97: $c5
    ld h, e                                       ; $6d98: $63
    add hl, bc                                    ; $6d99: $09
    adc [hl]                                      ; $6d9a: $8e
    ld b, e                                       ; $6d9b: $43
    inc b                                         ; $6d9c: $04
    ret nz                                        ; $6d9d: $c0

    ld c, [hl]                                    ; $6d9e: $4e
    cp l                                          ; $6d9f: $bd

jr_052_6da0:
    ld [hl], d                                    ; $6da0: $72
    rra                                           ; $6da1: $1f
    ld [hl], a                                    ; $6da2: $77
    cp e                                          ; $6da3: $bb
    ld h, [hl]                                    ; $6da4: $66
    xor a                                         ; $6da5: $af
    ei                                            ; $6da6: $fb
    ld b, d                                       ; $6da7: $42
    ld a, [hl+]                                   ; $6da8: $2a
    dec sp                                        ; $6da9: $3b
    rra                                           ; $6daa: $1f
    ld h, d                                       ; $6dab: $62
    ld h, e                                       ; $6dac: $63
    call c, $b3a9                                 ; $6dad: $dc $a9 $b3
    rst $10                                       ; $6db0: $d7
    ld hl, sp+$1e                                 ; $6db1: $f8 $1e
    adc $ef                                       ; $6db3: $ce $ef
    pop bc                                        ; $6db5: $c1
    jr z, jr_052_6dfe                             ; $6db6: $28 $46

    push de                                       ; $6db8: $d5
    sbc [hl]                                      ; $6db9: $9e
    rst $20                                       ; $6dba: $e7
    add a                                         ; $6dbb: $87
    sub b                                         ; $6dbc: $90
    add sp, $31                                   ; $6dbd: $e8 $31
    ld c, e                                       ; $6dbf: $4b
    call $ffef                                    ; $6dc0: $cd $ef $ff
    ld [hl], $7e                                  ; $6dc3: $36 $7e
    call $b55e                                    ; $6dc5: $cd $5e $b5
    ld [hl], b                                    ; $6dc8: $70
    ld e, a                                       ; $6dc9: $5f
    ld c, b                                       ; $6dca: $48
    ld h, l                                       ; $6dcb: $65
    rst $20                                       ; $6dcc: $e7
    ld b, e                                       ; $6dcd: $43
    ld l, h                                       ; $6dce: $6c
    inc c                                         ; $6dcf: $0c
    rst $28                                       ; $6dd0: $ef
    sbc e                                         ; $6dd1: $9b
    rst $18                                       ; $6dd2: $df
    ld e, a                                       ; $6dd3: $5f
    cp b                                          ; $6dd4: $b8
    adc a                                         ; $6dd5: $8f
    sbc b                                         ; $6dd6: $98
    or $d1                                        ; $6dd7: $f6 $d1
    or b                                          ; $6dd9: $b0
    ld c, e                                       ; $6dda: $4b
    ld b, a                                       ; $6ddb: $47
    sbc a                                         ; $6ddc: $9f
    xor b                                         ; $6ddd: $a8
    xor l                                         ; $6dde: $ad
    ld l, c                                       ; $6ddf: $69
    rlca                                          ; $6de0: $07
    ld h, e                                       ; $6de1: $63

Jump_052_6de2:
    db $d3                                        ; $6de2: $d3
    inc sp                                        ; $6de3: $33
    add hl, hl                                    ; $6de4: $29
    ld l, l                                       ; $6de5: $6d

Jump_052_6de6:
    sbc $e6                                       ; $6de6: $de $e6
    ld a, a                                       ; $6de8: $7f
    ld d, d                                       ; $6de9: $52
    db $fd                                        ; $6dea: $fd
    xor e                                         ; $6deb: $ab
    rst $08                                       ; $6dec: $cf
    add $9d                                       ; $6ded: $c6 $9d
    ld a, [hl-]                                   ; $6def: $3a
    or d                                          ; $6df0: $b2
    rra                                           ; $6df1: $1f
    rst $38                                       ; $6df2: $ff
    sub a                                         ; $6df3: $97
    ret c                                         ; $6df4: $d8

    ret c                                         ; $6df5: $d8

    ld b, e                                       ; $6df6: $43
    ld [hl], l                                    ; $6df7: $75
    or e                                          ; $6df8: $b3
    ld b, $ce                                     ; $6df9: $06 $ce
    cp b                                          ; $6dfb: $b8
    ld b, a                                       ; $6dfc: $47
    or e                                          ; $6dfd: $b3

jr_052_6dfe:
    rra                                           ; $6dfe: $1f
    ldh a, [$2e]                                  ; $6dff: $f0 $2e
    ld c, a                                       ; $6e01: $4f
    ld a, [hl]                                    ; $6e02: $7e
    ld [hl], h                                    ; $6e03: $74
    dec [hl]                                      ; $6e04: $35
    ld a, e                                       ; $6e05: $7b
    inc b                                         ; $6e06: $04
    add b                                         ; $6e07: $80
    dec c                                         ; $6e08: $0d
    add hl, bc                                    ; $6e09: $09
    sbc c                                         ; $6e0a: $99
    ld e, $4d                                     ; $6e0b: $1e $4d
    xor d                                         ; $6e0d: $aa
    ld [hl], a                                    ; $6e0e: $77
    push bc                                       ; $6e0f: $c5
    ld h, e                                       ; $6e10: $63
    ld a, d                                       ; $6e11: $7a
    ld [hl], l                                    ; $6e12: $75
    ld c, l                                       ; $6e13: $4d
    ld a, b                                       ; $6e14: $78
    ld h, l                                       ; $6e15: $65
    ld h, h                                       ; $6e16: $64
    rst $38                                       ; $6e17: $ff
    ld [hl], b                                    ; $6e18: $70
    rst $18                                       ; $6e19: $df
    ccf                                           ; $6e1a: $3f
    or d                                          ; $6e1b: $b2
    ld e, h                                       ; $6e1c: $5c
    ld d, c                                       ; $6e1d: $51
    ld [hl], b                                    ; $6e1e: $70
    ret nz                                        ; $6e1f: $c0

    ld c, [hl]                                    ; $6e20: $4e
    sbc l                                         ; $6e21: $9d
    ld c, a                                       ; $6e22: $4f
    ld h, h                                       ; $6e23: $64
    ld d, a                                       ; $6e24: $57
    add l                                         ; $6e25: $85
    sbc h                                         ; $6e26: $9c
    db $ed                                        ; $6e27: $ed
    and c                                         ; $6e28: $a1
    cp d                                          ; $6e29: $ba
    ld e, c                                       ; $6e2a: $59
    db $10                                        ; $6e2b: $10
    ld bc, $dc4f                                  ; $6e2c: $01 $4f $dc
    db $fc                                        ; $6e2f: $fc
    sub b                                         ; $6e30: $90
    push hl                                       ; $6e31: $e5
    db $eb                                        ; $6e32: $eb
    ld e, $3d                                     ; $6e33: $1e $3d
    adc $b4                                       ; $6e35: $ce $b4
    ld [hl], e                                    ; $6e37: $73
    push de                                       ; $6e38: $d5
    dec h                                         ; $6e39: $25
    ld [hl], $86                                  ; $6e3a: $36 $86
    di                                            ; $6e3c: $f3
    bit 2, a                                      ; $6e3d: $cb $57
    add [hl]                                      ; $6e3f: $86
    rst $38                                       ; $6e40: $ff
    ld a, [c]                                     ; $6e41: $f2
    inc c                                         ; $6e42: $0c
    rlca                                          ; $6e43: $07
    db $ec                                        ; $6e44: $ec
    call nc, Call_052_44f9                        ; $6e45: $d4 $f9 $44
    halt                                          ; $6e48: $76
    ld d, l                                       ; $6e49: $55
    ret z                                         ; $6e4a: $c8

    reti                                          ; $6e4b: $d9


    ld e, $aa                                     ; $6e4c: $1e $aa
    sbc e                                         ; $6e4e: $9b
    dec b                                         ; $6e4f: $05
    ld de, $3280                                  ; $6e50: $11 $80 $32
    ld h, a                                       ; $6e53: $67
    db $ec                                        ; $6e54: $ec
    db $fd                                        ; $6e55: $fd
    cp a                                          ; $6e56: $bf
    adc l                                         ; $6e57: $8d
    inc hl                                        ; $6e58: $23
    jr jr_052_6ea8                                ; $6e59: $18 $4d

    sub e                                         ; $6e5b: $93
    or d                                          ; $6e5c: $b2
    ld sp, $7239                                  ; $6e5d: $31 $39 $72
    cp $a6                                        ; $6e60: $fe $a6
    ld de, $d7e7                                  ; $6e62: $11 $e7 $d7
    cp l                                          ; $6e65: $bd

jr_052_6e66:
    add h                                         ; $6e66: $84
    add l                                         ; $6e67: $85
    nop                                           ; $6e68: $00
    and b                                         ; $6e69: $a0
    db $eb                                        ; $6e6a: $eb
    sbc a                                         ; $6e6b: $9f
    jp c, $a011                                   ; $6e6c: $da $11 $a0

    ld c, e                                       ; $6e6f: $4b
    ld l, h                                       ; $6e70: $6c
    sub a                                         ; $6e71: $97
    ld [hl-], a                                   ; $6e72: $32
    ld e, l                                       ; $6e73: $5d
    ld l, l                                       ; $6e74: $6d
    inc e                                         ; $6e75: $1c
    ld bc, $8880                                  ; $6e76: $01 $80 $88
    sub c                                         ; $6e79: $91
    db $eb                                        ; $6e7a: $eb
    ld [$c10f], sp                                ; $6e7b: $08 $0f $c1
    inc a                                         ; $6e7e: $3c
    db $db                                        ; $6e7f: $db
    ld b, e                                       ; $6e80: $43
    ld [hl], l                                    ; $6e81: $75
    or e                                          ; $6e82: $b3
    jr nz, jr_052_6e87                            ; $6e83: $20 $02

    rrca                                          ; $6e85: $0f
    ld c, c                                       ; $6e86: $49

jr_052_6e87:
    rst $28                                       ; $6e87: $ef
    add sp, -$27                                  ; $6e88: $e8 $d9
    ldh a, [$b3]                                  ; $6e8a: $f0 $b3
    dec a                                         ; $6e8c: $3d
    ld d, h                                       ; $6e8d: $54
    scf                                           ; $6e8e: $37
    db $eb                                        ; $6e8f: $eb
    ld de, $2002                                  ; $6e90: $11 $02 $20
    sub e                                         ; $6e93: $93
    cp a                                          ; $6e94: $bf
    ld [hl], d                                    ; $6e95: $72
    sbc a                                         ; $6e96: $9f
    rst $30                                       ; $6e97: $f7
    pop bc                                        ; $6e98: $c1
    ld [hl], c                                    ; $6e99: $71
    sub l                                         ; $6e9a: $95
    rst $08                                       ; $6e9b: $cf
    or $50                                        ; $6e9c: $f6 $50
    db $dd                                        ; $6e9e: $dd
    inc l                                         ; $6e9f: $2c
    adc b                                         ; $6ea0: $88
    nop                                           ; $6ea1: $00
    jr jr_052_6f0f                                ; $6ea2: $18 $6b

    ld hl, $df4b                                  ; $6ea4: $21 $4b $df
    ld l, a                                       ; $6ea7: $6f

jr_052_6ea8:
    rst $08                                       ; $6ea8: $cf
    ld h, [hl]                                    ; $6ea9: $66
    ld b, e                                       ; $6eaa: $43
    and [hl]                                      ; $6eab: $a6
    ld d, a                                       ; $6eac: $57
    ld d, a                                       ; $6ead: $57
    rst $28                                       ; $6eae: $ef
    rra                                           ; $6eaf: $1f
    and d                                         ; $6eb0: $a2
    ld a, [hl-]                                   ; $6eb1: $3a
    jr nz, jr_052_6eb6                            ; $6eb2: $20 $02

    rrca                                          ; $6eb4: $0f
    pop bc                                        ; $6eb5: $c1

jr_052_6eb6:
    call z, Call_052_6725                         ; $6eb6: $cc $25 $67
    ld a, e                                       ; $6eb9: $7b
    xor b                                         ; $6eba: $a8
    ld l, [hl]                                    ; $6ebb: $6e
    ld d, $44                                     ; $6ebc: $16 $44
    ld c, a                                       ; $6ebe: $4f
    xor e                                         ; $6ebf: $ab
    and a                                         ; $6ec0: $a7
    dec e                                         ; $6ec1: $1d
    ccf                                           ; $6ec2: $3f
    sub a                                         ; $6ec3: $97
    dec a                                         ; $6ec4: $3d
    db $db                                        ; $6ec5: $db
    ld b, e                                       ; $6ec6: $43
    ld [hl], l                                    ; $6ec7: $75
    or e                                          ; $6ec8: $b3
    jr nz, jr_052_6ecd                            ; $6ec9: $20 $02

    jr jr_052_6e66                                ; $6ecb: $18 $99

jr_052_6ecd:
    ld hl, $4d45                                  ; $6ecd: $21 $45 $4d
    rst $20                                       ; $6ed0: $e7
    or e                                          ; $6ed1: $b3
    dec a                                         ; $6ed2: $3d
    ld d, h                                       ; $6ed3: $54
    scf                                           ; $6ed4: $37
    dec bc                                        ; $6ed5: $0b
    ld [hl+], a                                   ; $6ed6: $22
    add b                                         ; $6ed7: $80
    cp $f7                                        ; $6ed8: $fe $f7
    ld l, e                                       ; $6eda: $6b
    ld b, a                                       ; $6edb: $47
    sub d                                         ; $6edc: $92
    cp a                                          ; $6edd: $bf
    ld [hl], d                                    ; $6ede: $72
    sbc a                                         ; $6edf: $9f
    rst $30                                       ; $6ee0: $f7
    pop bc                                        ; $6ee1: $c1
    ld [hl], c                                    ; $6ee2: $71
    dec [hl]                                      ; $6ee3: $35
    ld a, e                                       ; $6ee4: $7b
    push de                                       ; $6ee5: $d5
    reti                                          ; $6ee6: $d9


    ld e, $aa                                     ; $6ee7: $1e $aa
    sbc e                                         ; $6ee9: $9b
    dec b                                         ; $6eea: $05
    ld de, $6f4f                                  ; $6eeb: $11 $4f $6f
    adc $be                                       ; $6eee: $ce $be
    and e                                         ; $6ef0: $a3
    ld h, a                                       ; $6ef1: $67
    jp $9247                                      ; $6ef2: $c3 $47 $92


    cp a                                          ; $6ef5: $bf
    ld [hl], d                                    ; $6ef6: $72
    ld e, a                                       ; $6ef7: $5f
    cp d                                          ; $6ef8: $ba
    cp d                                          ; $6ef9: $ba
    and [hl]                                      ; $6efa: $a6
    sub a                                         ; $6efb: $97
    ret c                                         ; $6efc: $d8

    xor [hl]                                      ; $6efd: $ae
    add hl, de                                    ; $6efe: $19
    ld c, d                                       ; $6eff: $4a
    ld a, [$7a8a]                                 ; $6f00: $fa $8a $7a
    add h                                         ; $6f03: $84
    nop                                           ; $6f04: $00
    adc a                                         ; $6f05: $8f
    ld c, e                                       ; $6f06: $4b
    call $89f6                                    ; $6f07: $cd $f6 $89
    jp nc, Jump_052_69e8                          ; $6f0a: $d2 $e8 $69

    pop af                                        ; $6f0d: $f1
    ld l, e                                       ; $6f0e: $6b

jr_052_6f0f:
    ld a, [hl]                                    ; $6f0f: $7e
    ld l, l                                       ; $6f10: $6d
    ret z                                         ; $6f11: $c8

    inc c                                         ; $6f12: $0c
    dec e                                         ; $6f13: $1d
    ld h, c                                       ; $6f14: $61
    and l                                         ; $6f15: $a5
    ret z                                         ; $6f16: $c8

    cp a                                          ; $6f17: $bf
    and d                                         ; $6f18: $a2
    xor d                                         ; $6f19: $aa
    pop hl                                        ; $6f1a: $e1
    ld e, $97                                     ; $6f1b: $1e $97
    ld e, d                                       ; $6f1d: $5a
    ld [hl+], a                                   ; $6f1e: $22
    or [hl]                                       ; $6f1f: $b6
    xor e                                         ; $6f20: $ab
    and a                                         ; $6f21: $a7
    sub a                                         ; $6f22: $97
    sbc l                                         ; $6f23: $9d
    dec c                                         ; $6f24: $0d
    ld e, a                                       ; $6f25: $5f
    ld a, [hl-]                                   ; $6f26: $3a
    sbc h                                         ; $6f27: $9c
    ld h, l                                       ; $6f28: $65
    and e                                         ; $6f29: $a3
    rra                                           ; $6f2a: $1f
    ld hl, $ef4f                                  ; $6f2b: $21 $4f $ef
    daa                                           ; $6f2e: $27
    ld hl, $a1cb                                  ; $6f2f: $21 $cb $a1
    ld h, [hl]                                    ; $6f32: $66
    ld c, e                                       ; $6f33: $4b
    sbc l                                         ; $6f34: $9d
    dec l                                         ; $6f35: $2d
    cp $8f                                        ; $6f36: $fe $8f
    sbc [hl]                                      ; $6f38: $9e
    sub [hl]                                      ; $6f39: $96
    db $f4                                        ; $6f3a: $f4
    reti                                          ; $6f3b: $d9


    ld e, $aa                                     ; $6f3c: $1e $aa
    sbc e                                         ; $6f3e: $9b
    push af                                       ; $6f3f: $f5
    ld [$8f01], sp                                ; $6f40: $08 $01 $8f
    ld c, e                                       ; $6f43: $4b
    db $ed                                        ; $6f44: $ed
    inc h                                         ; $6f45: $24
    sbc c                                         ; $6f46: $99
    ld d, h                                       ; $6f47: $54
    xor a                                         ; $6f48: $af
    call c, Call_000_2cc7                         ; $6f49: $dc $c7 $2c
    dec [hl]                                      ; $6f4c: $35
    xor $a6                                       ; $6f4d: $ee $a6
    ret z                                         ; $6f4f: $c8

    inc d                                         ; $6f50: $14
    ccf                                           ; $6f51: $3f
    sub e                                         ; $6f52: $93
    jp nc, Jump_000_0ff6                          ; $6f53: $d2 $f6 $0f

    and l                                         ; $6f56: $a5
    ld l, d                                       ; $6f57: $6a
    db $f4                                        ; $6f58: $f4
    xor d                                         ; $6f59: $aa
    ld e, l                                       ; $6f5a: $5d
    dec d                                         ; $6f5b: $15
    ld [bc], a                                    ; $6f5c: $02
    ld de, $4b8f                                  ; $6f5d: $11 $8f $4b
    ld c, l                                       ; $6f60: $4d
    pop af                                        ; $6f61: $f1
    dec a                                         ; $6f62: $3d
    adc $b4                                       ; $6f63: $ce $b4
    ld [hl], e                                    ; $6f65: $73
    push de                                       ; $6f66: $d5
    dec h                                         ; $6f67: $25
    ld [hl], $a6                                  ; $6f68: $36 $a6
    rst $18                                       ; $6f6a: $df
    sbc a                                         ; $6f6b: $9f
    ld h, e                                       ; $6f6c: $63
    jp c, $10d1                                   ; $6f6d: $da $d1 $10

    ld bc, $4b8f                                  ; $6f70: $01 $8f $4b
    dec l                                         ; $6f73: $2d
    ld de, $d5db                                  ; $6f74: $11 $db $d5
    db $d3                                        ; $6f77: $d3
    xor e                                         ; $6f78: $ab
    rst $30                                       ; $6f79: $f7
    ld d, b                                       ; $6f7a: $50
    xor d                                         ; $6f7b: $aa
    xor a                                         ; $6f7c: $af
    sbc l                                         ; $6f7d: $9d
    ld d, [hl]                                    ; $6f7e: $56
    dec a                                         ; $6f7f: $3d
    cp l                                          ; $6f80: $bd
    ld a, [$443a]                                 ; $6f81: $fa $3a $44
    rrca                                          ; $6f84: $0f
    push de                                       ; $6f85: $d5
    or e                                          ; $6f86: $b3
    ret                                           ; $6f87: $c9


    ldh a, [$2e]                                  ; $6f88: $f0 $2e
    cpl                                           ; $6f8a: $2f
    rra                                           ; $6f8b: $1f
    dec c                                         ; $6f8c: $0d
    cp e                                          ; $6f8d: $bb
    add a                                         ; $6f8e: $87
    ld d, d                                       ; $6f8f: $52
    ld a, l                                       ; $6f90: $7d
    db $ed                                        ; $6f91: $ed
    and e                                         ; $6f92: $a3
    dec a                                         ; $6f93: $3d
    sub h                                         ; $6f94: $94
    ld c, h                                       ; $6f95: $4c
    xor e                                         ; $6f96: $ab
    sbc $15                                       ; $6f97: $de $15
    adc a                                         ; $6f99: $8f
    jp hl                                         ; $6f9a: $e9


    push de                                       ; $6f9b: $d5
    rst $10                                       ; $6f9c: $d7
    sub a                                         ; $6f9d: $97
    ld a, b                                       ; $6f9e: $78
    inc l                                         ; $6f9f: $2c
    jp hl                                         ; $6fa0: $e9


    push hl                                       ; $6fa1: $e5
    dec hl                                        ; $6fa2: $2b
    res 3, [hl]                                   ; $6fa3: $cb $9e
    xor b                                         ; $6fa5: $a8
    sbc d                                         ; $6fa6: $9a
    pop hl                                        ; $6fa7: $e1
    cp h                                          ; $6fa8: $bc
    add [hl]                                      ; $6fa9: $86
    di                                            ; $6faa: $f3
    swap a                                        ; $6fab: $cb $37
    cp e                                          ; $6fad: $bb
    sub c                                         ; $6fae: $91
    add b                                         ; $6faf: $80
    ld [$f5cf], sp                                ; $6fb0: $08 $cf $f5
    ld e, $4a                                     ; $6fb3: $1e $4a
    push af                                       ; $6fb5: $f5
    or l                                          ; $6fb6: $b5
    set 1, h                                      ; $6fb7: $cb $cc
    add h                                         ; $6fb9: $84
    inc a                                         ; $6fba: $3c
    jp c, $52e3                                   ; $6fbb: $da $e3 $52

    db $d3                                        ; $6fbe: $d3
    xor d                                         ; $6fbf: $aa
    ld [hl], a                                    ; $6fc0: $77
    push bc                                       ; $6fc1: $c5
    ld h, e                                       ; $6fc2: $63
    add hl, sp                                    ; $6fc3: $39
    call c, Call_000_19a7                         ; $6fc4: $dc $a7 $19
    ld sp, $3874                                  ; $6fc7: $31 $74 $38
    cp a                                          ; $6fca: $bf
    ld a, a                                       ; $6fcb: $7f
    adc b                                         ; $6fcc: $88
    ld a, [bc]                                    ; $6fcd: $0a
    adc b                                         ; $6fce: $88
    nop                                           ; $6fcf: $00
    ld b, b                                       ; $6fd0: $40
    ld h, l                                       ; $6fd1: $65
    cp c                                          ; $6fd2: $b9
    ret z                                         ; $6fd3: $c8

    adc [hl]                                      ; $6fd4: $8e
    ld e, [hl]                                    ; $6fd5: $5e
    ld a, $48                                     ; $6fd6: $3e $48
    db $f4                                        ; $6fd8: $f4
    rrc a                                         ; $6fd9: $cb $0f
    and l                                         ; $6fdb: $a5

jr_052_6fdc:
    ld a, [$69da]                                 ; $6fdc: $fa $da $69
    push de                                       ; $6fdf: $d5
    cp e                                          ; $6fe0: $bb
    ld [c], a                                     ; $6fe1: $e2
    ld sp, $2bf2                                  ; $6fe2: $31 $f2 $2b
    ret                                           ; $6fe5: $c9


    sbc $86                                       ; $6fe6: $de $86
    inc sp                                        ; $6fe8: $33
    jp hl                                         ; $6fe9: $e9


    dec bc                                        ; $6fea: $0b
    rst $30                                       ; $6feb: $f7
    ld d, b                                       ; $6fec: $50
    or d                                          ; $6fed: $b2
    ld a, h                                       ; $6fee: $7c
    db $dd                                        ; $6fef: $dd
    and e                                         ; $6ff0: $a3
    ld [hl], a                                    ; $6ff1: $77
    sub a                                         ; $6ff2: $97
    xor a                                         ; $6ff3: $af
    inc l                                         ; $6ff4: $2c
    ld a, e                                       ; $6ff5: $7b
    and d                                         ; $6ff6: $a2
    ld l, d                                       ; $6ff7: $6a
    call c, $c7a9                                 ; $6ff8: $dc $a9 $c7
    inc a                                         ; $6ffb: $3c
    xor b                                         ; $6ffc: $a8
    sub h                                         ; $6ffd: $94
    ld c, h                                       ; $6ffe: $4c
    ld [de], a                                    ; $6fff: $12
    adc b                                         ; $7000: $88
    nop                                           ; $7001: $00
    rrca                                          ; $7002: $0f
    push de                                       ; $7003: $d5
    ld a, e                                       ; $7004: $7b
    jr z, jr_052_6fdc                             ; $7005: $28 $d5

jr_052_7007:
    rst $10                                       ; $7007: $d7
    adc [hl]                                      ; $7008: $8e
    db $e3                                        ; $7009: $e3
    db $dd                                        ; $700a: $dd
    sub a                                         ; $700b: $97
    ld a, b                                       ; $700c: $78
    jr z, jr_052_706d                             ; $700d: $28 $5e

    ld d, h                                       ; $700f: $54
    and $4e                                       ; $7010: $e6 $4e
    sbc l                                         ; $7012: $9d
    ld c, [hl]                                    ; $7013: $4e
    db $ec                                        ; $7014: $ec
    inc hl                                        ; $7015: $23
    inc b                                         ; $7016: $04
    rst $28                                       ; $7017: $ef
    cp l                                          ; $7018: $bd
    scf                                           ; $7019: $37
    xor $57                                       ; $701a: $ee $57
    ld h, $a6                                     ; $701c: $26 $a6
    ld b, a                                       ; $701e: $47
    jp $f30e                                      ; $701f: $c3 $0e $f3


    ld d, l                                       ; $7022: $55
    ld a, [hl+]                                   ; $7023: $2a
    add h                                         ; $7024: $84
    ld d, c                                       ; $7025: $51
    ld a, h                                       ; $7026: $7c
    ld l, e                                       ; $7027: $6b
    sbc e                                         ; $7028: $9b
    sub l                                         ; $7029: $95
    ld [hl+], a                                   ; $702a: $22
    jp Jump_052_69f9                              ; $702b: $c3 $f9 $69


    xor h                                         ; $702e: $ac
    rst $38                                       ; $702f: $ff
    ld c, e                                       ; $7030: $4b
    adc $f6                                       ; $7031: $ce $f6
    sbc $7b                                       ; $7033: $de $7b
    db $e3                                        ; $7035: $e3
    ld a, [hl]                                    ; $7036: $7e
    ld h, l                                       ; $7037: $65
    ld h, d                                       ; $7038: $62
    ld a, d                                       ; $7039: $7a
    inc [hl]                                      ; $703a: $34
    db $ec                                        ; $703b: $ec
    jr nc, jr_052_709d                            ; $703c: $30 $5f

    and l                                         ; $703e: $a5
    ld b, d                                       ; $703f: $42
    jr jr_052_7007                                ; $7040: $18 $c5

    or a                                          ; $7042: $b7
    or [hl]                                       ; $7043: $b6
    ld e, c                                       ; $7044: $59
    add hl, hl                                    ; $7045: $29
    ld [bc], a                                    ; $7046: $02
    ld hl, $8f44                                  ; $7047: $21 $44 $8f
    ld c, e                                       ; $704a: $4b
    dec l                                         ; $704b: $2d
    rla                                           ; $704c: $17
    sub c                                         ; $704d: $91
    ld [$2bd1], a                                 ; $704e: $ea $d1 $2b
    and e                                         ; $7051: $a3
    ld b, l                                       ; $7052: $45
    ld l, c                                       ; $7053: $69
    ld b, c                                       ; $7054: $41
    inc b                                         ; $7055: $04
    add b                                         ; $7056: $80

jr_052_7057:
    adc b                                         ; $7057: $88
    daa                                           ; $7058: $27
    pop af                                        ; $7059: $f1
    cp a                                          ; $705a: $bf
    cpl                                           ; $705b: $2f
    pop bc                                        ; $705c: $c1
    ld [hl], c                                    ; $705d: $71
    db $db                                        ; $705e: $db
    and l                                         ; $705f: $a5
    sbc $47                                       ; $7060: $de $47
    rst $20                                       ; $7062: $e7
    ret                                           ; $7063: $c9


    or h                                          ; $7064: $b4
    ld [$4c85], a                                 ; $7065: $ea $85 $4c
    ld e, b                                       ; $7068: $58

jr_052_7069:
    di                                            ; $7069: $f3
    ld [hl], $ff                                  ; $706a: $36 $ff
    ld [hl], e                                    ; $706c: $73

jr_052_706d:
    and [hl]                                      ; $706d: $a6
    ld l, c                                       ; $706e: $69
    db $fc                                        ; $706f: $fc
    rst $30                                       ; $7070: $f7
    ld de, $f04f                                  ; $7071: $11 $4f $f0
    ld [$19ea], a                                 ; $7074: $ea $ea $19
    xor d                                         ; $7077: $aa
    ld a, b                                       ; $7078: $78
    ld d, c                                       ; $7079: $51
    db $10                                        ; $707a: $10
    ld b, d                                       ; $707b: $42
    inc b                                         ; $707c: $04
    ld h, b                                       ; $707d: $60
    xor c                                         ; $707e: $a9
    ld [c], a                                     ; $707f: $e2
    ld b, l                                       ; $7080: $45
    add l                                         ; $7081: $85
    inc l                                         ; $7082: $2c
    db $e3                                        ; $7083: $e3
    push de                                       ; $7084: $d5
    ld h, l                                       ; $7085: $65
    reti                                          ; $7086: $d9


    inc hl                                        ; $7087: $23
    rst $20                                       ; $7088: $e7
    ret                                           ; $7089: $c9


    or h                                          ; $708a: $b4
    ld [$f15d], a                                 ; $708b: $ea $5d $f1
    jr jr_052_7057                                ; $708e: $18 $c7

    cp e                                          ; $7090: $bb
    rst $08                                       ; $7091: $cf
    ld c, e                                       ; $7092: $4b
    dec c                                         ; $7093: $0d
    rst $20                                       ; $7094: $e7
    ld d, a                                       ; $7095: $57
    rst $38                                       ; $7096: $ff
    rst $10                                       ; $7097: $d7
    adc b                                         ; $7098: $88
    ld l, c                                       ; $7099: $69
    rra                                           ; $709a: $1f
    dec c                                         ; $709b: $0d
    cp e                                          ; $709c: $bb

jr_052_709d:
    ld [hl], h                                    ; $709d: $74
    db $f4                                        ; $709e: $f4
    adc c                                         ; $709f: $89
    jp c, Jump_052_769a                           ; $70a0: $da $9a $76

    jr nc, jr_052_70db                            ; $70a3: $30 $36

    dec a                                         ; $70a5: $3d
    sub e                                         ; $70a6: $93
    jp nc, Jump_052_6de6                          ; $70a7: $d2 $e6 $6d

    cp $27                                        ; $70aa: $fe $27
    push de                                       ; $70ac: $d5
    cp a                                          ; $70ad: $bf
    ld a, d                                       ; $70ae: $7a
    reti                                          ; $70af: $d9


    ret nc                                        ; $70b0: $d0

    and l                                         ; $70b1: $a5
    ld b, e                                       ; $70b2: $43
    dec sp                                        ; $70b3: $3b
    jp hl                                         ; $70b4: $e9


    ld a, c                                       ; $70b5: $79
    call c, Call_052_67a9                         ; $70b6: $dc $a9 $67
    ld b, e                                       ; $70b9: $43
    and [hl]                                      ; $70ba: $a6
    dec e                                         ; $70bb: $1d
    dec a                                         ; $70bc: $3d
    ld h, d                                       ; $70bd: $62
    ld l, b                                       ; $70be: $68
    ld a, [$f94a]                                 ; $70bf: $fa $4a $f9
    dec [hl]                                      ; $70c2: $35
    ld [de], a                                    ; $70c3: $12
    ld [bc], a                                    ; $70c4: $02
    ld de, $c9e7                                  ; $70c5: $11 $e7 $c9
    jr z, jr_052_7069                             ; $70c8: $28 $9f

    dec a                                         ; $70ca: $3d
    and [hl]                                      ; $70cb: $a6
    rra                                           ; $70cc: $1f

jr_052_70cd:
    sbc a                                         ; $70cd: $9f
    ld e, c                                       ; $70ce: $59
    ld a, e                                       ; $70cf: $7b
    ld e, $a4                                     ; $70d0: $1e $a4
    ld l, c                                       ; $70d2: $69
    ld a, a                                       ; $70d3: $7f
    ld a, [hl]                                    ; $70d4: $7e
    adc c                                         ; $70d5: $89
    ret c                                         ; $70d6: $d8

    add sp, -$7b                                  ; $70d7: $e8 $85
    adc h                                         ; $70d9: $8c
    sub [hl]                                      ; $70da: $96

jr_052_70db:
    cp d                                          ; $70db: $ba
    sbc c                                         ; $70dc: $99
    inc l                                         ; $70dd: $2c
    rla                                           ; $70de: $17
    and l                                         ; $70df: $a5
    dec h                                         ; $70e0: $25
    or [hl]                                       ; $70e1: $b6
    dec hl                                        ; $70e2: $2b
    sbc l                                         ; $70e3: $9d
    sub [hl]                                      ; $70e4: $96
    dec hl                                        ; $70e5: $2b
    ld l, d                                       ; $70e6: $6a
    add [hl]                                      ; $70e7: $86
    adc $26                                       ; $70e8: $ce $26
    db $d3                                        ; $70ea: $d3
    rst $28                                       ; $70eb: $ef
    rst $38                                       ; $70ec: $ff
    dec hl                                        ; $70ed: $2b
    pop de                                        ; $70ee: $d1
    rrca                                          ; $70ef: $0f
    or c                                          ; $70f0: $b1
    or l                                          ; $70f1: $b5
    sub b                                         ; $70f2: $90
    ld de, $4ed3                                  ; $70f3: $11 $d3 $4e
    inc c                                         ; $70f6: $0c
    ld c, l                                       ; $70f7: $4d
    ld e, a                                       ; $70f8: $5f
    add hl, hl                                    ; $70f9: $29
    cp a                                          ; $70fa: $bf
    ld b, [hl]                                    ; $70fb: $46
    jr nz, jr_052_7100                            ; $70fc: $20 $02

    rst $20                                       ; $70fe: $e7
    ret                                           ; $70ff: $c9


jr_052_7100:
    or h                                          ; $7100: $b4
    ld [$f15d], a                                 ; $7101: $ea $5d $f1
    jr jr_052_70cd                                ; $7104: $18 $c7

    cp e                                          ; $7106: $bb
    rst $08                                       ; $7107: $cf
    ld c, e                                       ; $7108: $4b
    dec c                                         ; $7109: $0d
    rst $20                                       ; $710a: $e7
    ld d, a                                       ; $710b: $57
    rst $38                                       ; $710c: $ff
    rst $10                                       ; $710d: $d7
    adc b                                         ; $710e: $88
    ld l, c                                       ; $710f: $69
    rra                                           ; $7110: $1f
    dec c                                         ; $7111: $0d
    cp e                                          ; $7112: $bb
    ld [hl], h                                    ; $7113: $74
    db $f4                                        ; $7114: $f4
    adc c                                         ; $7115: $89
    jp c, Jump_052_769a                           ; $7116: $da $9a $76

jr_052_7119:
    jr nc, jr_052_7151                            ; $7119: $30 $36

    dec a                                         ; $711b: $3d
    sub e                                         ; $711c: $93
    jp nc, Jump_052_6de6                          ; $711d: $d2 $e6 $6d

    cp $27                                        ; $7120: $fe $27
    push de                                       ; $7122: $d5
    cp a                                          ; $7123: $bf
    ld a, d                                       ; $7124: $7a
    reti                                          ; $7125: $d9


    ret nc                                        ; $7126: $d0

    and l                                         ; $7127: $a5
    ld b, e                                       ; $7128: $43
    dec sp                                        ; $7129: $3b
    jp hl                                         ; $712a: $e9


    ld a, c                                       ; $712b: $79
    call c, Call_052_67a9                         ; $712c: $dc $a9 $67
    ld b, e                                       ; $712f: $43
    and [hl]                                      ; $7130: $a6
    dec e                                         ; $7131: $1d
    dec a                                         ; $7132: $3d
    ld h, d                                       ; $7133: $62
    ld l, b                                       ; $7134: $68
    ld a, [$f94a]                                 ; $7135: $fa $4a $f9
    dec [hl]                                      ; $7138: $35
    ld [de], a                                    ; $7139: $12
    ld [bc], a                                    ; $713a: $02
    rlca                                          ; $713b: $07
    ld [hl], $a5                                  ; $713c: $36 $a5
    call $a326                                    ; $713e: $cd $26 $a3
    ld a, h                                       ; $7141: $7c
    or $98                                        ; $7142: $f6 $98
    ld a, [hl]                                    ; $7144: $7e
    ld a, h                                       ; $7145: $7c
    ld h, [hl]                                    ; $7146: $66
    db $ed                                        ; $7147: $ed
    ld a, c                                       ; $7148: $79
    sub b                                         ; $7149: $90
    and [hl]                                      ; $714a: $a6
    db $fd                                        ; $714b: $fd
    ld sp, hl                                     ; $714c: $f9
    dec h                                         ; $714d: $25
    ld h, d                                       ; $714e: $62
    and e                                         ; $714f: $a3
    rla                                           ; $7150: $17

jr_052_7151:
    ld [hl-], a                                   ; $7151: $32
    ld e, d                                       ; $7152: $5a
    ld [$b266], a                                 ; $7153: $ea $66 $b2
    ld e, h                                       ; $7156: $5c
    sub h                                         ; $7157: $94
    sub [hl]                                      ; $7158: $96
    ret c                                         ; $7159: $d8

    xor [hl]                                      ; $715a: $ae
    ld [hl], h                                    ; $715b: $74
    ld e, d                                       ; $715c: $5a
    xor [hl]                                      ; $715d: $ae
    xor b                                         ; $715e: $a8
    add hl, de                                    ; $715f: $19
    ld a, [hl-]                                   ; $7160: $3a
    sbc e                                         ; $7161: $9b
    ld c, h                                       ; $7162: $4c
    cp a                                          ; $7163: $bf
    rst $38                                       ; $7164: $ff
    xor a                                         ; $7165: $af
    ld b, h                                       ; $7166: $44
    ccf                                           ; $7167: $3f
    call nz, $42d6                                ; $7168: $c4 $d6 $42
    ld b, [hl]                                    ; $716b: $46
    ld c, h                                       ; $716c: $4c
    dec sp                                        ; $716d: $3b
    ld sp, $7d34                                  ; $716e: $31 $34 $7d
    and l                                         ; $7171: $a5
    db $fc                                        ; $7172: $fc
    ld a, [de]                                    ; $7173: $1a
    add c                                         ; $7174: $81
    ld [$084f], sp                                ; $7175: $08 $4f $08
    ld c, e                                       ; $7178: $4b
    ld l, h                                       ; $7179: $6c
    call $b55e                                    ; $717a: $cd $5e $b5
    cp e                                          ; $717d: $bb
    ld a, h                                       ; $717e: $7c
    adc b                                         ; $717f: $88
    sbc d                                         ; $7180: $9a
    inc h                                         ; $7181: $24
    ld h, a                                       ; $7182: $67
    ld a, e                                       ; $7183: $7b
    xor b                                         ; $7184: $a8
    ld l, [hl]                                    ; $7185: $6e
    ld d, $44                                     ; $7186: $16 $44
    jr nz, jr_052_7119                            ; $7188: $20 $8f

    adc [hl]                                      ; $718a: $8e
    add c                                         ; $718b: $81
    xor $81                                       ; $718c: $ee $81
    inc sp                                        ; $718e: $33
    xor $d1                                       ; $718f: $ee $d1
    ld h, a                                       ; $7191: $67
    ld [$ee60], sp                                ; $7192: $08 $60 $ee
    or h                                          ; $7195: $b4
    ld [$fdf9], a                                 ; $7196: $ea $f9 $fd
    rst $18                                       ; $7199: $df
    add $2f                                       ; $719a: $c6 $2f
    rst $08                                       ; $719c: $cf
    dec bc                                        ; $719d: $0b
    add hl, de                                    ; $719e: $19
    cp $cb                                        ; $719f: $fe $cb
    di                                            ; $71a1: $f3
    db $f4                                        ; $71a2: $f4
    ld l, e                                       ; $71a3: $6b
    rst $30                                       ; $71a4: $f7
    ld h, b                                       ; $71a5: $60
    inc d                                         ; $71a6: $14
    and e                                         ; $71a7: $a3
    ld l, d                                       ; $71a8: $6a
    rst $08                                       ; $71a9: $cf
    ld a, e                                       ; $71aa: $7b
    ld b, d                                       ; $71ab: $42
    call z, $01af                                 ; $71ac: $cc $af $01
    dec sp                                        ; $71af: $3b
    push af                                       ; $71b0: $f5
    ld e, $0e                                     ; $71b1: $1e $0e
    add $c4                                       ; $71b3: $c6 $c4
    ld c, b                                       ; $71b5: $48
    or $e8                                        ; $71b6: $f6 $e8
    sbc c                                         ; $71b8: $99
    sub h                                         ; $71b9: $94
    ld [hl], $8c                                  ; $71ba: $36 $8c
    ld l, l                                       ; $71bc: $6d
    cp $b7                                        ; $71bd: $fe $b7
    add [hl]                                      ; $71bf: $86
    ld [hl+], a                                   ; $71c0: $22
    ld b, b                                       ; $71c1: $40
    ld a, e                                       ; $71c2: $7b
    ld a, [hl]                                    ; $71c3: $7e
    rst $38                                       ; $71c4: $ff
    ld d, a                                       ; $71c5: $57
    ld d, a                                       ; $71c6: $57
    sub a                                         ; $71c7: $97
    jr c, jr_052_720d                             ; $71c8: $38 $43

    add b                                         ; $71ca: $80
    ld a, [hl]                                    ; $71cb: $7e
    ld a, [hl-]                                   ; $71cc: $3a
    ret                                           ; $71cd: $c9


    dec sp                                        ; $71ce: $3b
    ld c, a                                       ; $71cf: $4f
    ld l, b                                       ; $71d0: $68
    ld a, [$3587]                                 ; $71d1: $fa $87 $35
    dec e                                         ; $71d4: $1d
    ld [$8218], sp                                ; $71d5: $08 $18 $82
    cp b                                          ; $71d8: $b8
    ld l, c                                       ; $71d9: $69
    inc b                                         ; $71da: $04
    rst $20                                       ; $71db: $e7
    ret                                           ; $71dc: $c9


    ret z                                         ; $71dd: $c8

    ld hl, $bd12                                  ; $71de: $21 $12 $bd
    sub b                                         ; $71e1: $90
    add l                                         ; $71e2: $85
    ld b, h                                       ; $71e3: $44
    xor e                                         ; $71e4: $ab
    ld c, e                                       ; $71e5: $4b
    ld l, [hl]                                    ; $71e6: $6e
    adc d                                         ; $71e7: $8a
    ld b, b                                       ; $71e8: $40
    inc b                                         ; $71e9: $04
    add b                                         ; $71ea: $80
    rst $38                                       ; $71eb: $ff
    ld [hl], c                                    ; $71ec: $71
    inc e                                         ; $71ed: $1c
    rlca                                          ; $71ee: $07
    ei                                            ; $71ef: $fb
    sbc l                                         ; $71f0: $9d
    add a                                         ; $71f1: $87
    ld c, a                                       ; $71f2: $4f
    xor a                                         ; $71f3: $af
    sbc $91                                       ; $71f4: $de $91
    ld [hl+], a                                   ; $71f6: $22
    rst $38                                       ; $71f7: $ff
    ld a, [hl+]                                   ; $71f8: $2a
    add a                                         ; $71f9: $87
    ld [$db18], sp                                ; $71fa: $08 $18 $db
    db $fc                                        ; $71fd: $fc
    ld l, a                                       ; $71fe: $6f
    sbc e                                         ; $71ff: $9b
    sub l                                         ; $7200: $95
    ld [hl+], a                                   ; $7201: $22
    cp c                                          ; $7202: $b9
    inc hl                                        ; $7203: $23
    dec d                                         ; $7204: $15
    cp b                                          ; $7205: $b8
    inc hl                                        ; $7206: $23
    ret nz                                        ; $7207: $c0

    cp $c5                                        ; $7208: $fe $c5
    ld b, e                                       ; $720a: $43
    xor h                                         ; $720b: $ac
    ld b, c                                       ; $720c: $41

jr_052_720d:
    ld c, a                                       ; $720d: $4f
    and e                                         ; $720e: $a3
    jp hl                                         ; $720f: $e9


    db $fd                                        ; $7210: $fd
    rst $38                                       ; $7211: $ff
    sbc d                                         ; $7212: $9a
    inc h                                         ; $7213: $24
    inc hl                                        ; $7214: $23
    ld c, a                                       ; $7215: $4f
    and e                                         ; $7216: $a3
    db $ed                                        ; $7217: $ed
    and l                                         ; $7218: $a5
    rst $30                                       ; $7219: $f7
    rst $38                                       ; $721a: $ff
    ld l, e                                       ; $721b: $6b
    sub d                                         ; $721c: $92
    adc h                                         ; $721d: $8c
    nop                                           ; $721e: $00
    jr nz, jr_052_7245                            ; $721f: $20 $24

    dec d                                         ; $7221: $15
    ld h, d                                       ; $7222: $62
    xor a                                         ; $7223: $af
    ld b, c                                       ; $7224: $41
    ld b, e                                       ; $7225: $43
    ld b, e                                       ; $7226: $43
    ld b, e                                       ; $7227: $43
    ld b, e                                       ; $7228: $43
    ld b, e                                       ; $7229: $43
    ld b, e                                       ; $722a: $43
    ld b, e                                       ; $722b: $43
    ld b, e                                       ; $722c: $43
    ld b, e                                       ; $722d: $43
    ld b, e                                       ; $722e: $43
    ld b, e                                       ; $722f: $43
    ld b, e                                       ; $7230: $43
    ld b, e                                       ; $7231: $43
    ld b, e                                       ; $7232: $43
    ld b, e                                       ; $7233: $43
    ld b, e                                       ; $7234: $43
    ld b, e                                       ; $7235: $43
    ld b, e                                       ; $7236: $43
    ld b, e                                       ; $7237: $43
    ld b, e                                       ; $7238: $43
    ld b, e                                       ; $7239: $43
    ld b, e                                       ; $723a: $43
    ld b, e                                       ; $723b: $43
    ld b, e                                       ; $723c: $43
    ld b, e                                       ; $723d: $43
    ld b, e                                       ; $723e: $43
    ld b, e                                       ; $723f: $43
    ld b, e                                       ; $7240: $43
    ld b, e                                       ; $7241: $43
    ld b, e                                       ; $7242: $43
    ld b, e                                       ; $7243: $43
    ld b, e                                       ; $7244: $43

jr_052_7245:
    ld b, e                                       ; $7245: $43
    ld b, e                                       ; $7246: $43
    ld b, e                                       ; $7247: $43
    ld b, e                                       ; $7248: $43
    ld b, e                                       ; $7249: $43
    ld b, e                                       ; $724a: $43
    ld b, e                                       ; $724b: $43

jr_052_724c:
    ld b, e                                       ; $724c: $43
    ld b, e                                       ; $724d: $43
    ld b, e                                       ; $724e: $43
    and b                                         ; $724f: $a0
    adc l                                         ; $7250: $8d
    xor e                                         ; $7251: $ab

jr_052_7252:
    srl c                                         ; $7252: $cb $39
    ld [bc], a                                    ; $7254: $02
    sbc b                                         ; $7255: $98
    xor a                                         ; $7256: $af
    ld d, d                                       ; $7257: $52
    ld hl, $e28c                                  ; $7258: $21 $8c $e2
    ld e, e                                       ; $725b: $5b
    db $db                                        ; $725c: $db
    xor h                                         ; $725d: $ac
    inc d                                         ; $725e: $14
    ld b, c                                       ; $725f: $41
    ld c, a                                       ; $7260: $4f
    cp h                                          ; $7261: $bc
    sbc d                                         ; $7262: $9a
    inc c                                         ; $7263: $0c
    di                                            ; $7264: $f3
    ld d, l                                       ; $7265: $55
    ld a, [hl+]                                   ; $7266: $2a
    add h                                         ; $7267: $84
    ld d, c                                       ; $7268: $51
    ld a, h                                       ; $7269: $7c
    ld l, e                                       ; $726a: $6b
    sbc e                                         ; $726b: $9b
    sub l                                         ; $726c: $95
    ld [hl+], a                                   ; $726d: $22
    ld [$dbd8], sp                                ; $726e: $08 $d8 $db
    ld c, e                                       ; $7271: $4b
    pop af                                        ; $7272: $f1
    ld l, l                                       ; $7273: $6d
    or e                                          ; $7274: $b3
    ld l, l                                       ; $7275: $6d
    ld d, [hl]                                    ; $7276: $56
    adc d                                         ; $7277: $8a
    jr nz, jr_052_72c9                            ; $7278: $20 $4f

    xor a                                         ; $727a: $af
    rla                                           ; $727b: $17
    cp l                                          ; $727c: $bd
    adc h                                         ; $727d: $8c
    ld l, l                                       ; $727e: $6d
    or e                                          ; $727f: $b3
    ld d, d                                       ; $7280: $52
    inc b                                         ; $7281: $04
    ld bc, $7098                                  ; $7282: $01 $98 $70
    db $fc                                        ; $7285: $fc
    ld a, [hl+]                                   ; $7286: $2a
    dec h                                         ; $7287: $25
    ld d, a                                       ; $7288: $57
    ld d, h                                       ; $7289: $54
    or [hl]                                       ; $728a: $b6
    call Call_000_114a                            ; $728b: $cd $4a $11
    inc b                                         ; $728e: $04
    jr nz, jr_052_724c                            ; $728f: $20 $bb

    jr c, jr_052_7252                             ; $7291: $38 $bf

    ld l, d                                       ; $7293: $6a
    add hl, bc                                    ; $7294: $09
    adc [hl]                                      ; $7295: $8e
    ld e, a                                       ; $7296: $5f
    and l                                         ; $7297: $a5
    and b                                         ; $7298: $a0
    ld l, l                                       ; $7299: $6d
    ld d, [hl]                                    ; $729a: $56
    adc d                                         ; $729b: $8a
    jr nz, jr_052_72e1                            ; $729c: $20 $43

    ld b, e                                       ; $729e: $43
    ld b, e                                       ; $729f: $43
    ld b, e                                       ; $72a0: $43
    ld b, e                                       ; $72a1: $43
    ld b, e                                       ; $72a2: $43
    ld b, e                                       ; $72a3: $43
    ld b, e                                       ; $72a4: $43
    ld b, e                                       ; $72a5: $43
    ld b, e                                       ; $72a6: $43
    ld b, e                                       ; $72a7: $43
    ret nz                                        ; $72a8: $c0

    ld c, [hl]                                    ; $72a9: $4e
    xor l                                         ; $72aa: $ad
    dec e                                         ; $72ab: $1d
    adc h                                         ; $72ac: $8c
    push hl                                       ; $72ad: $e5
    adc d                                         ; $72ae: $8a
    jp z, Jump_052_4369                           ; $72af: $ca $69 $43

    db $10                                        ; $72b2: $10
    ld b, e                                       ; $72b3: $43
    ld b, e                                       ; $72b4: $43
    ld b, e                                       ; $72b5: $43
    ld b, e                                       ; $72b6: $43
    ld b, e                                       ; $72b7: $43
    ld b, e                                       ; $72b8: $43
    ld b, e                                       ; $72b9: $43
    ld b, e                                       ; $72ba: $43
    ld b, e                                       ; $72bb: $43
    ld b, e                                       ; $72bc: $43
    ld b, e                                       ; $72bd: $43
    ld b, e                                       ; $72be: $43
    ld b, e                                       ; $72bf: $43
    ld b, e                                       ; $72c0: $43
    ld b, e                                       ; $72c1: $43
    ld b, e                                       ; $72c2: $43
    ld b, e                                       ; $72c3: $43
    ld b, e                                       ; $72c4: $43
    ld b, e                                       ; $72c5: $43
    ld b, e                                       ; $72c6: $43
    ld b, e                                       ; $72c7: $43
    add b                                         ; $72c8: $80

jr_052_72c9:
    ld c, a                                       ; $72c9: $4f
    ld h, d                                       ; $72ca: $62
    ld a, d                                       ; $72cb: $7a
    jr nz, jr_052_72d4                            ; $72cc: $20 $06

    add sp, -$01                                  ; $72ce: $e8 $ff
    jp c, $5a13                                   ; $72d0: $da $13 $5a

    inc h                                         ; $72d3: $24

jr_052_72d4:
    ld a, [de]                                    ; $72d4: $1a
    ld bc, $8043                                  ; $72d5: $01 $43 $80
    adc a                                         ; $72d8: $8f
    db $ec                                        ; $72d9: $ec
    dec [hl]                                      ; $72da: $35
    adc h                                         ; $72db: $8c
    adc c                                         ; $72dc: $89
    ld d, d                                       ; $72dd: $52
    add hl, bc                                    ; $72de: $09
    and l                                         ; $72df: $a5
    rla                                           ; $72e0: $17

jr_052_72e1:
    ld bc, $12e0                                  ; $72e1: $01 $e0 $12
    adc d                                         ; $72e4: $8a
    rla                                           ; $72e5: $17
    ld e, [hl]                                    ; $72e6: $5e
    reti                                          ; $72e7: $d9


    add e                                         ; $72e8: $83
    add hl, de                                    ; $72e9: $19
    adc l                                         ; $72ea: $8d
    nop                                           ; $72eb: $00
    jr nz, @-$4f                                  ; $72ec: $20 $af

    ld a, e                                       ; $72ee: $7b
    ld a, h                                       ; $72ef: $7c
    ld d, d                                       ; $72f0: $52
    call nz, $0234                                ; $72f1: $c4 $34 $02
    and b                                         ; $72f4: $a0
    adc d                                         ; $72f5: $8a
    db $f4                                        ; $72f6: $f4
    push af                                       ; $72f7: $f5
    sbc h                                         ; $72f8: $9c
    cp l                                          ; $72f9: $bd
    db $f4                                        ; $72fa: $f4
    ld l, d                                       ; $72fb: $6a
    inc b                                         ; $72fc: $04
    ld b, e                                       ; $72fd: $43
    ld b, e                                       ; $72fe: $43
    ld b, e                                       ; $72ff: $43
    ld b, e                                       ; $7300: $43
    ld b, e                                       ; $7301: $43
    ld b, e                                       ; $7302: $43
    ld b, e                                       ; $7303: $43
    ld b, e                                       ; $7304: $43
    ld b, e                                       ; $7305: $43
    ld b, e                                       ; $7306: $43
    ld b, e                                       ; $7307: $43
    ld b, e                                       ; $7308: $43
    ld b, e                                       ; $7309: $43
    ld b, e                                       ; $730a: $43
    ld b, e                                       ; $730b: $43
    ld b, e                                       ; $730c: $43
    ld b, e                                       ; $730d: $43
    ld b, e                                       ; $730e: $43
    ret nz                                        ; $730f: $c0

    cp $89                                        ; $7310: $fe $89
    jp hl                                         ; $7312: $e9


    ld [$4343], sp                                ; $7313: $08 $43 $43
    ld b, e                                       ; $7316: $43
    ld b, e                                       ; $7317: $43
    ld b, e                                       ; $7318: $43
    rst $38                                       ; $7319: $ff
    rst $38                                       ; $731a: $ff
    rst $38                                       ; $731b: $ff
    rst $38                                       ; $731c: $ff
    rst $38                                       ; $731d: $ff
    rst $38                                       ; $731e: $ff
    rst $38                                       ; $731f: $ff
    rst $38                                       ; $7320: $ff
    rst $38                                       ; $7321: $ff
    rst $38                                       ; $7322: $ff
    rst $38                                       ; $7323: $ff
    rst $38                                       ; $7324: $ff
    rst $38                                       ; $7325: $ff
    rst $38                                       ; $7326: $ff
    rst $38                                       ; $7327: $ff
    rst $38                                       ; $7328: $ff
    rst $38                                       ; $7329: $ff
    rst $38                                       ; $732a: $ff
    rst $38                                       ; $732b: $ff
    rst $38                                       ; $732c: $ff
    rst $38                                       ; $732d: $ff
    rst $38                                       ; $732e: $ff
    rst $38                                       ; $732f: $ff
    rst $38                                       ; $7330: $ff
    rst $38                                       ; $7331: $ff
    rst $38                                       ; $7332: $ff
    rst $38                                       ; $7333: $ff
    rst $38                                       ; $7334: $ff
    rst $38                                       ; $7335: $ff
    rst $38                                       ; $7336: $ff
    rst $38                                       ; $7337: $ff
    rst $38                                       ; $7338: $ff
    rst $38                                       ; $7339: $ff
    rst $38                                       ; $733a: $ff
    rst $38                                       ; $733b: $ff
    rst $38                                       ; $733c: $ff
    rst $38                                       ; $733d: $ff
    rst $38                                       ; $733e: $ff
    rst $38                                       ; $733f: $ff
    rst $38                                       ; $7340: $ff
    rst $38                                       ; $7341: $ff
    rst $38                                       ; $7342: $ff
    rst $38                                       ; $7343: $ff
    rst $38                                       ; $7344: $ff
    rst $38                                       ; $7345: $ff
    rst $38                                       ; $7346: $ff
    rst $38                                       ; $7347: $ff
    rst $38                                       ; $7348: $ff
    rst $38                                       ; $7349: $ff
    rst $38                                       ; $734a: $ff
    rst $38                                       ; $734b: $ff
    rst $38                                       ; $734c: $ff
    rst $38                                       ; $734d: $ff
    rst $38                                       ; $734e: $ff
    rst $38                                       ; $734f: $ff
    rst $38                                       ; $7350: $ff
    rst $38                                       ; $7351: $ff
    rst $38                                       ; $7352: $ff
    rst $38                                       ; $7353: $ff
    rst $38                                       ; $7354: $ff
    rst $38                                       ; $7355: $ff
    rst $38                                       ; $7356: $ff
    rst $38                                       ; $7357: $ff
    rst $38                                       ; $7358: $ff
    rst $38                                       ; $7359: $ff
    rst $38                                       ; $735a: $ff
    rst $38                                       ; $735b: $ff
    rst $38                                       ; $735c: $ff
    rst $38                                       ; $735d: $ff
    rst $38                                       ; $735e: $ff
    rst $38                                       ; $735f: $ff
    rst $38                                       ; $7360: $ff
    rst $38                                       ; $7361: $ff
    rst $38                                       ; $7362: $ff
    rst $38                                       ; $7363: $ff
    rst $38                                       ; $7364: $ff
    rst $38                                       ; $7365: $ff
    rst $38                                       ; $7366: $ff
    rst $38                                       ; $7367: $ff
    rst $38                                       ; $7368: $ff
    rst $38                                       ; $7369: $ff
    rst $38                                       ; $736a: $ff
    rst $38                                       ; $736b: $ff
    rst $38                                       ; $736c: $ff
    rst $38                                       ; $736d: $ff
    rst $38                                       ; $736e: $ff
    rst $38                                       ; $736f: $ff
    rst $38                                       ; $7370: $ff
    rst $38                                       ; $7371: $ff
    rst $38                                       ; $7372: $ff
    rst $38                                       ; $7373: $ff
    rst $38                                       ; $7374: $ff
    rst $38                                       ; $7375: $ff
    rst $38                                       ; $7376: $ff
    rst $38                                       ; $7377: $ff
    rst $38                                       ; $7378: $ff
    rst $38                                       ; $7379: $ff
    rst $38                                       ; $737a: $ff
    rst $38                                       ; $737b: $ff
    rst $38                                       ; $737c: $ff
    rst $38                                       ; $737d: $ff
    rst $38                                       ; $737e: $ff
    rst $38                                       ; $737f: $ff
    rst $38                                       ; $7380: $ff
    rst $38                                       ; $7381: $ff
    rst $38                                       ; $7382: $ff
    rst $38                                       ; $7383: $ff
    rst $38                                       ; $7384: $ff
    rst $38                                       ; $7385: $ff
    rst $38                                       ; $7386: $ff
    rst $38                                       ; $7387: $ff
    rst $38                                       ; $7388: $ff
    rst $38                                       ; $7389: $ff
    rst $38                                       ; $738a: $ff
    rst $38                                       ; $738b: $ff
    rst $38                                       ; $738c: $ff
    rst $38                                       ; $738d: $ff
    rst $38                                       ; $738e: $ff
    rst $38                                       ; $738f: $ff
    rst $38                                       ; $7390: $ff
    rst $38                                       ; $7391: $ff
    rst $38                                       ; $7392: $ff
    rst $38                                       ; $7393: $ff
    rst $38                                       ; $7394: $ff
    rst $38                                       ; $7395: $ff
    rst $38                                       ; $7396: $ff
    rst $38                                       ; $7397: $ff
    rst $38                                       ; $7398: $ff
    rst $38                                       ; $7399: $ff
    rst $38                                       ; $739a: $ff
    rst $38                                       ; $739b: $ff
    rst $38                                       ; $739c: $ff
    rst $38                                       ; $739d: $ff
    rst $38                                       ; $739e: $ff
    rst $38                                       ; $739f: $ff
    rst $38                                       ; $73a0: $ff
    rst $38                                       ; $73a1: $ff
    rst $38                                       ; $73a2: $ff
    rst $38                                       ; $73a3: $ff
    rst $38                                       ; $73a4: $ff
    rst $38                                       ; $73a5: $ff
    rst $38                                       ; $73a6: $ff
    rst $38                                       ; $73a7: $ff
    rst $38                                       ; $73a8: $ff
    rst $38                                       ; $73a9: $ff
    rst $38                                       ; $73aa: $ff
    rst $38                                       ; $73ab: $ff
    rst $38                                       ; $73ac: $ff
    rst $38                                       ; $73ad: $ff
    rst $38                                       ; $73ae: $ff
    rst $38                                       ; $73af: $ff
    rst $38                                       ; $73b0: $ff
    rst $38                                       ; $73b1: $ff
    rst $38                                       ; $73b2: $ff
    rst $38                                       ; $73b3: $ff
    rst $38                                       ; $73b4: $ff
    rst $38                                       ; $73b5: $ff
    rst $38                                       ; $73b6: $ff
    rst $38                                       ; $73b7: $ff
    rst $38                                       ; $73b8: $ff
    rst $38                                       ; $73b9: $ff
    rst $38                                       ; $73ba: $ff
    rst $38                                       ; $73bb: $ff
    rst $38                                       ; $73bc: $ff
    rst $38                                       ; $73bd: $ff
    rst $38                                       ; $73be: $ff
    rst $38                                       ; $73bf: $ff
    rst $38                                       ; $73c0: $ff
    rst $38                                       ; $73c1: $ff
    rst $38                                       ; $73c2: $ff
    rst $38                                       ; $73c3: $ff
    rst $38                                       ; $73c4: $ff
    rst $38                                       ; $73c5: $ff
    rst $38                                       ; $73c6: $ff
    rst $38                                       ; $73c7: $ff
    rst $38                                       ; $73c8: $ff
    rst $38                                       ; $73c9: $ff
    rst $38                                       ; $73ca: $ff
    rst $38                                       ; $73cb: $ff
    rst $38                                       ; $73cc: $ff
    rst $38                                       ; $73cd: $ff
    rst $38                                       ; $73ce: $ff
    rst $38                                       ; $73cf: $ff
    rst $38                                       ; $73d0: $ff
    rst $38                                       ; $73d1: $ff
    rst $38                                       ; $73d2: $ff
    rst $38                                       ; $73d3: $ff
    rst $38                                       ; $73d4: $ff
    rst $38                                       ; $73d5: $ff
    rst $38                                       ; $73d6: $ff
    rst $38                                       ; $73d7: $ff
    rst $38                                       ; $73d8: $ff
    rst $38                                       ; $73d9: $ff
    rst $38                                       ; $73da: $ff
    rst $38                                       ; $73db: $ff
    rst $38                                       ; $73dc: $ff
    rst $38                                       ; $73dd: $ff
    rst $38                                       ; $73de: $ff
    rst $38                                       ; $73df: $ff
    rst $38                                       ; $73e0: $ff
    rst $38                                       ; $73e1: $ff
    rst $38                                       ; $73e2: $ff
    rst $38                                       ; $73e3: $ff
    rst $38                                       ; $73e4: $ff
    rst $38                                       ; $73e5: $ff
    rst $38                                       ; $73e6: $ff
    rst $38                                       ; $73e7: $ff
    rst $38                                       ; $73e8: $ff
    rst $38                                       ; $73e9: $ff
    rst $38                                       ; $73ea: $ff
    rst $38                                       ; $73eb: $ff
    rst $38                                       ; $73ec: $ff
    rst $38                                       ; $73ed: $ff
    rst $38                                       ; $73ee: $ff
    rst $38                                       ; $73ef: $ff
    rst $38                                       ; $73f0: $ff
    rst $38                                       ; $73f1: $ff
    rst $38                                       ; $73f2: $ff
    rst $38                                       ; $73f3: $ff
    rst $38                                       ; $73f4: $ff
    rst $38                                       ; $73f5: $ff
    rst $38                                       ; $73f6: $ff
    rst $38                                       ; $73f7: $ff
    rst $38                                       ; $73f8: $ff
    rst $38                                       ; $73f9: $ff
    rst $38                                       ; $73fa: $ff
    rst $38                                       ; $73fb: $ff
    rst $38                                       ; $73fc: $ff
    rst $38                                       ; $73fd: $ff
    rst $38                                       ; $73fe: $ff
    rst $38                                       ; $73ff: $ff
    rst $38                                       ; $7400: $ff
    rst $38                                       ; $7401: $ff
    rst $38                                       ; $7402: $ff
    rst $38                                       ; $7403: $ff
    rst $38                                       ; $7404: $ff
    rst $38                                       ; $7405: $ff

Jump_052_7406:
    rst $38                                       ; $7406: $ff
    rst $38                                       ; $7407: $ff
    rst $38                                       ; $7408: $ff
    rst $38                                       ; $7409: $ff
    rst $38                                       ; $740a: $ff
    rst $38                                       ; $740b: $ff
    rst $38                                       ; $740c: $ff
    rst $38                                       ; $740d: $ff
    rst $38                                       ; $740e: $ff
    rst $38                                       ; $740f: $ff
    rst $38                                       ; $7410: $ff
    rst $38                                       ; $7411: $ff
    rst $38                                       ; $7412: $ff
    rst $38                                       ; $7413: $ff
    rst $38                                       ; $7414: $ff
    rst $38                                       ; $7415: $ff
    rst $38                                       ; $7416: $ff
    rst $38                                       ; $7417: $ff
    rst $38                                       ; $7418: $ff
    rst $38                                       ; $7419: $ff
    rst $38                                       ; $741a: $ff
    rst $38                                       ; $741b: $ff
    rst $38                                       ; $741c: $ff
    rst $38                                       ; $741d: $ff
    rst $38                                       ; $741e: $ff
    rst $38                                       ; $741f: $ff
    rst $38                                       ; $7420: $ff
    rst $38                                       ; $7421: $ff
    rst $38                                       ; $7422: $ff
    rst $38                                       ; $7423: $ff
    rst $38                                       ; $7424: $ff
    rst $38                                       ; $7425: $ff
    rst $38                                       ; $7426: $ff
    rst $38                                       ; $7427: $ff
    rst $38                                       ; $7428: $ff
    rst $38                                       ; $7429: $ff
    rst $38                                       ; $742a: $ff
    rst $38                                       ; $742b: $ff
    rst $38                                       ; $742c: $ff
    rst $38                                       ; $742d: $ff
    rst $38                                       ; $742e: $ff
    rst $38                                       ; $742f: $ff
    rst $38                                       ; $7430: $ff
    rst $38                                       ; $7431: $ff
    rst $38                                       ; $7432: $ff
    rst $38                                       ; $7433: $ff
    rst $38                                       ; $7434: $ff
    rst $38                                       ; $7435: $ff
    rst $38                                       ; $7436: $ff
    rst $38                                       ; $7437: $ff
    rst $38                                       ; $7438: $ff
    rst $38                                       ; $7439: $ff
    rst $38                                       ; $743a: $ff
    rst $38                                       ; $743b: $ff
    rst $38                                       ; $743c: $ff
    rst $38                                       ; $743d: $ff
    rst $38                                       ; $743e: $ff
    rst $38                                       ; $743f: $ff
    rst $38                                       ; $7440: $ff
    rst $38                                       ; $7441: $ff
    rst $38                                       ; $7442: $ff
    rst $38                                       ; $7443: $ff
    rst $38                                       ; $7444: $ff
    rst $38                                       ; $7445: $ff
    rst $38                                       ; $7446: $ff
    rst $38                                       ; $7447: $ff
    rst $38                                       ; $7448: $ff
    rst $38                                       ; $7449: $ff
    rst $38                                       ; $744a: $ff
    rst $38                                       ; $744b: $ff
    rst $38                                       ; $744c: $ff
    rst $38                                       ; $744d: $ff
    rst $38                                       ; $744e: $ff
    rst $38                                       ; $744f: $ff
    rst $38                                       ; $7450: $ff
    rst $38                                       ; $7451: $ff
    rst $38                                       ; $7452: $ff
    rst $38                                       ; $7453: $ff
    rst $38                                       ; $7454: $ff
    rst $38                                       ; $7455: $ff
    rst $38                                       ; $7456: $ff
    rst $38                                       ; $7457: $ff
    rst $38                                       ; $7458: $ff
    rst $38                                       ; $7459: $ff
    rst $38                                       ; $745a: $ff
    rst $38                                       ; $745b: $ff
    rst $38                                       ; $745c: $ff
    rst $38                                       ; $745d: $ff
    rst $38                                       ; $745e: $ff
    rst $38                                       ; $745f: $ff
    rst $38                                       ; $7460: $ff
    rst $38                                       ; $7461: $ff
    rst $38                                       ; $7462: $ff
    rst $38                                       ; $7463: $ff
    rst $38                                       ; $7464: $ff
    rst $38                                       ; $7465: $ff
    rst $38                                       ; $7466: $ff
    rst $38                                       ; $7467: $ff
    rst $38                                       ; $7468: $ff
    rst $38                                       ; $7469: $ff
    rst $38                                       ; $746a: $ff
    rst $38                                       ; $746b: $ff
    rst $38                                       ; $746c: $ff
    rst $38                                       ; $746d: $ff
    rst $38                                       ; $746e: $ff
    rst $38                                       ; $746f: $ff
    rst $38                                       ; $7470: $ff
    rst $38                                       ; $7471: $ff
    rst $38                                       ; $7472: $ff
    rst $38                                       ; $7473: $ff
    rst $38                                       ; $7474: $ff
    rst $38                                       ; $7475: $ff
    rst $38                                       ; $7476: $ff
    rst $38                                       ; $7477: $ff
    rst $38                                       ; $7478: $ff

Jump_052_7479:
    rst $38                                       ; $7479: $ff
    rst $38                                       ; $747a: $ff
    rst $38                                       ; $747b: $ff
    rst $38                                       ; $747c: $ff
    rst $38                                       ; $747d: $ff
    rst $38                                       ; $747e: $ff
    rst $38                                       ; $747f: $ff
    rst $38                                       ; $7480: $ff
    rst $38                                       ; $7481: $ff
    rst $38                                       ; $7482: $ff
    rst $38                                       ; $7483: $ff
    rst $38                                       ; $7484: $ff
    rst $38                                       ; $7485: $ff
    rst $38                                       ; $7486: $ff
    rst $38                                       ; $7487: $ff
    rst $38                                       ; $7488: $ff
    rst $38                                       ; $7489: $ff
    rst $38                                       ; $748a: $ff
    rst $38                                       ; $748b: $ff
    rst $38                                       ; $748c: $ff
    rst $38                                       ; $748d: $ff
    rst $38                                       ; $748e: $ff
    rst $38                                       ; $748f: $ff
    rst $38                                       ; $7490: $ff
    rst $38                                       ; $7491: $ff
    rst $38                                       ; $7492: $ff
    rst $38                                       ; $7493: $ff
    rst $38                                       ; $7494: $ff
    rst $38                                       ; $7495: $ff
    rst $38                                       ; $7496: $ff
    rst $38                                       ; $7497: $ff
    rst $38                                       ; $7498: $ff
    rst $38                                       ; $7499: $ff
    rst $38                                       ; $749a: $ff
    rst $38                                       ; $749b: $ff
    rst $38                                       ; $749c: $ff
    rst $38                                       ; $749d: $ff
    rst $38                                       ; $749e: $ff
    rst $38                                       ; $749f: $ff
    rst $38                                       ; $74a0: $ff
    rst $38                                       ; $74a1: $ff
    rst $38                                       ; $74a2: $ff
    rst $38                                       ; $74a3: $ff
    rst $38                                       ; $74a4: $ff
    rst $38                                       ; $74a5: $ff
    rst $38                                       ; $74a6: $ff
    rst $38                                       ; $74a7: $ff
    rst $38                                       ; $74a8: $ff
    rst $38                                       ; $74a9: $ff
    rst $38                                       ; $74aa: $ff
    rst $38                                       ; $74ab: $ff
    rst $38                                       ; $74ac: $ff
    rst $38                                       ; $74ad: $ff
    rst $38                                       ; $74ae: $ff
    rst $38                                       ; $74af: $ff
    rst $38                                       ; $74b0: $ff
    rst $38                                       ; $74b1: $ff
    rst $38                                       ; $74b2: $ff
    rst $38                                       ; $74b3: $ff
    rst $38                                       ; $74b4: $ff
    rst $38                                       ; $74b5: $ff
    rst $38                                       ; $74b6: $ff
    rst $38                                       ; $74b7: $ff
    rst $38                                       ; $74b8: $ff
    rst $38                                       ; $74b9: $ff
    rst $38                                       ; $74ba: $ff
    rst $38                                       ; $74bb: $ff
    rst $38                                       ; $74bc: $ff
    rst $38                                       ; $74bd: $ff
    rst $38                                       ; $74be: $ff
    rst $38                                       ; $74bf: $ff
    rst $38                                       ; $74c0: $ff
    rst $38                                       ; $74c1: $ff
    rst $38                                       ; $74c2: $ff
    rst $38                                       ; $74c3: $ff
    rst $38                                       ; $74c4: $ff
    rst $38                                       ; $74c5: $ff
    rst $38                                       ; $74c6: $ff
    rst $38                                       ; $74c7: $ff
    rst $38                                       ; $74c8: $ff
    rst $38                                       ; $74c9: $ff
    rst $38                                       ; $74ca: $ff
    rst $38                                       ; $74cb: $ff
    rst $38                                       ; $74cc: $ff
    rst $38                                       ; $74cd: $ff
    rst $38                                       ; $74ce: $ff
    rst $38                                       ; $74cf: $ff
    rst $38                                       ; $74d0: $ff
    rst $38                                       ; $74d1: $ff
    rst $38                                       ; $74d2: $ff
    rst $38                                       ; $74d3: $ff
    rst $38                                       ; $74d4: $ff
    rst $38                                       ; $74d5: $ff
    rst $38                                       ; $74d6: $ff
    rst $38                                       ; $74d7: $ff
    rst $38                                       ; $74d8: $ff
    rst $38                                       ; $74d9: $ff
    rst $38                                       ; $74da: $ff
    rst $38                                       ; $74db: $ff
    rst $38                                       ; $74dc: $ff
    rst $38                                       ; $74dd: $ff
    rst $38                                       ; $74de: $ff
    rst $38                                       ; $74df: $ff
    rst $38                                       ; $74e0: $ff
    rst $38                                       ; $74e1: $ff
    rst $38                                       ; $74e2: $ff
    rst $38                                       ; $74e3: $ff
    rst $38                                       ; $74e4: $ff
    rst $38                                       ; $74e5: $ff
    rst $38                                       ; $74e6: $ff
    rst $38                                       ; $74e7: $ff
    rst $38                                       ; $74e8: $ff
    rst $38                                       ; $74e9: $ff
    rst $38                                       ; $74ea: $ff
    rst $38                                       ; $74eb: $ff
    rst $38                                       ; $74ec: $ff
    rst $38                                       ; $74ed: $ff
    rst $38                                       ; $74ee: $ff
    rst $38                                       ; $74ef: $ff
    rst $38                                       ; $74f0: $ff
    rst $38                                       ; $74f1: $ff
    rst $38                                       ; $74f2: $ff
    rst $38                                       ; $74f3: $ff
    rst $38                                       ; $74f4: $ff
    rst $38                                       ; $74f5: $ff
    rst $38                                       ; $74f6: $ff
    rst $38                                       ; $74f7: $ff
    rst $38                                       ; $74f8: $ff
    rst $38                                       ; $74f9: $ff
    rst $38                                       ; $74fa: $ff
    rst $38                                       ; $74fb: $ff
    rst $38                                       ; $74fc: $ff
    rst $38                                       ; $74fd: $ff
    rst $38                                       ; $74fe: $ff
    rst $38                                       ; $74ff: $ff
    rst $38                                       ; $7500: $ff
    rst $38                                       ; $7501: $ff
    rst $38                                       ; $7502: $ff
    rst $38                                       ; $7503: $ff
    rst $38                                       ; $7504: $ff
    rst $38                                       ; $7505: $ff
    rst $38                                       ; $7506: $ff
    rst $38                                       ; $7507: $ff
    rst $38                                       ; $7508: $ff
    rst $38                                       ; $7509: $ff
    rst $38                                       ; $750a: $ff
    rst $38                                       ; $750b: $ff
    rst $38                                       ; $750c: $ff
    rst $38                                       ; $750d: $ff
    rst $38                                       ; $750e: $ff
    rst $38                                       ; $750f: $ff
    rst $38                                       ; $7510: $ff
    rst $38                                       ; $7511: $ff
    rst $38                                       ; $7512: $ff
    rst $38                                       ; $7513: $ff
    rst $38                                       ; $7514: $ff
    rst $38                                       ; $7515: $ff
    rst $38                                       ; $7516: $ff
    rst $38                                       ; $7517: $ff
    rst $38                                       ; $7518: $ff
    rst $38                                       ; $7519: $ff
    rst $38                                       ; $751a: $ff
    rst $38                                       ; $751b: $ff
    rst $38                                       ; $751c: $ff
    rst $38                                       ; $751d: $ff
    rst $38                                       ; $751e: $ff
    rst $38                                       ; $751f: $ff
    rst $38                                       ; $7520: $ff
    rst $38                                       ; $7521: $ff
    rst $38                                       ; $7522: $ff
    rst $38                                       ; $7523: $ff
    rst $38                                       ; $7524: $ff
    rst $38                                       ; $7525: $ff
    rst $38                                       ; $7526: $ff
    rst $38                                       ; $7527: $ff
    rst $38                                       ; $7528: $ff
    rst $38                                       ; $7529: $ff
    rst $38                                       ; $752a: $ff
    rst $38                                       ; $752b: $ff
    rst $38                                       ; $752c: $ff
    rst $38                                       ; $752d: $ff
    rst $38                                       ; $752e: $ff
    rst $38                                       ; $752f: $ff
    rst $38                                       ; $7530: $ff
    rst $38                                       ; $7531: $ff
    rst $38                                       ; $7532: $ff
    rst $38                                       ; $7533: $ff
    rst $38                                       ; $7534: $ff
    rst $38                                       ; $7535: $ff
    rst $38                                       ; $7536: $ff
    rst $38                                       ; $7537: $ff
    rst $38                                       ; $7538: $ff
    rst $38                                       ; $7539: $ff
    rst $38                                       ; $753a: $ff
    rst $38                                       ; $753b: $ff
    rst $38                                       ; $753c: $ff
    rst $38                                       ; $753d: $ff
    rst $38                                       ; $753e: $ff
    rst $38                                       ; $753f: $ff
    rst $38                                       ; $7540: $ff
    rst $38                                       ; $7541: $ff
    rst $38                                       ; $7542: $ff
    rst $38                                       ; $7543: $ff
    rst $38                                       ; $7544: $ff
    rst $38                                       ; $7545: $ff
    rst $38                                       ; $7546: $ff
    rst $38                                       ; $7547: $ff
    rst $38                                       ; $7548: $ff
    rst $38                                       ; $7549: $ff
    rst $38                                       ; $754a: $ff
    rst $38                                       ; $754b: $ff
    rst $38                                       ; $754c: $ff
    rst $38                                       ; $754d: $ff
    rst $38                                       ; $754e: $ff
    rst $38                                       ; $754f: $ff
    rst $38                                       ; $7550: $ff
    rst $38                                       ; $7551: $ff
    rst $38                                       ; $7552: $ff
    rst $38                                       ; $7553: $ff
    rst $38                                       ; $7554: $ff
    rst $38                                       ; $7555: $ff
    rst $38                                       ; $7556: $ff
    rst $38                                       ; $7557: $ff
    rst $38                                       ; $7558: $ff
    rst $38                                       ; $7559: $ff
    rst $38                                       ; $755a: $ff
    rst $38                                       ; $755b: $ff
    rst $38                                       ; $755c: $ff
    rst $38                                       ; $755d: $ff
    rst $38                                       ; $755e: $ff
    rst $38                                       ; $755f: $ff
    rst $38                                       ; $7560: $ff
    rst $38                                       ; $7561: $ff
    rst $38                                       ; $7562: $ff
    rst $38                                       ; $7563: $ff
    rst $38                                       ; $7564: $ff
    rst $38                                       ; $7565: $ff
    rst $38                                       ; $7566: $ff
    rst $38                                       ; $7567: $ff
    rst $38                                       ; $7568: $ff
    rst $38                                       ; $7569: $ff
    rst $38                                       ; $756a: $ff
    rst $38                                       ; $756b: $ff
    rst $38                                       ; $756c: $ff
    rst $38                                       ; $756d: $ff
    rst $38                                       ; $756e: $ff
    rst $38                                       ; $756f: $ff
    rst $38                                       ; $7570: $ff
    rst $38                                       ; $7571: $ff
    rst $38                                       ; $7572: $ff
    rst $38                                       ; $7573: $ff
    rst $38                                       ; $7574: $ff
    rst $38                                       ; $7575: $ff
    rst $38                                       ; $7576: $ff
    rst $38                                       ; $7577: $ff
    rst $38                                       ; $7578: $ff
    rst $38                                       ; $7579: $ff
    rst $38                                       ; $757a: $ff
    rst $38                                       ; $757b: $ff
    rst $38                                       ; $757c: $ff
    rst $38                                       ; $757d: $ff
    rst $38                                       ; $757e: $ff
    rst $38                                       ; $757f: $ff
    rst $38                                       ; $7580: $ff
    rst $38                                       ; $7581: $ff
    rst $38                                       ; $7582: $ff
    rst $38                                       ; $7583: $ff
    rst $38                                       ; $7584: $ff
    rst $38                                       ; $7585: $ff
    rst $38                                       ; $7586: $ff
    rst $38                                       ; $7587: $ff
    rst $38                                       ; $7588: $ff
    rst $38                                       ; $7589: $ff
    rst $38                                       ; $758a: $ff
    rst $38                                       ; $758b: $ff
    rst $38                                       ; $758c: $ff
    rst $38                                       ; $758d: $ff
    rst $38                                       ; $758e: $ff
    rst $38                                       ; $758f: $ff
    rst $38                                       ; $7590: $ff
    rst $38                                       ; $7591: $ff
    rst $38                                       ; $7592: $ff
    rst $38                                       ; $7593: $ff
    rst $38                                       ; $7594: $ff
    rst $38                                       ; $7595: $ff
    rst $38                                       ; $7596: $ff
    rst $38                                       ; $7597: $ff
    rst $38                                       ; $7598: $ff
    rst $38                                       ; $7599: $ff
    rst $38                                       ; $759a: $ff
    rst $38                                       ; $759b: $ff
    rst $38                                       ; $759c: $ff
    rst $38                                       ; $759d: $ff
    rst $38                                       ; $759e: $ff
    rst $38                                       ; $759f: $ff
    rst $38                                       ; $75a0: $ff
    rst $38                                       ; $75a1: $ff
    rst $38                                       ; $75a2: $ff
    rst $38                                       ; $75a3: $ff
    rst $38                                       ; $75a4: $ff
    rst $38                                       ; $75a5: $ff
    rst $38                                       ; $75a6: $ff
    rst $38                                       ; $75a7: $ff
    rst $38                                       ; $75a8: $ff
    rst $38                                       ; $75a9: $ff
    rst $38                                       ; $75aa: $ff
    rst $38                                       ; $75ab: $ff
    rst $38                                       ; $75ac: $ff
    rst $38                                       ; $75ad: $ff
    rst $38                                       ; $75ae: $ff
    rst $38                                       ; $75af: $ff
    rst $38                                       ; $75b0: $ff
    rst $38                                       ; $75b1: $ff
    rst $38                                       ; $75b2: $ff
    rst $38                                       ; $75b3: $ff
    rst $38                                       ; $75b4: $ff
    rst $38                                       ; $75b5: $ff
    rst $38                                       ; $75b6: $ff
    rst $38                                       ; $75b7: $ff
    rst $38                                       ; $75b8: $ff
    rst $38                                       ; $75b9: $ff
    rst $38                                       ; $75ba: $ff
    rst $38                                       ; $75bb: $ff
    rst $38                                       ; $75bc: $ff
    rst $38                                       ; $75bd: $ff
    rst $38                                       ; $75be: $ff
    rst $38                                       ; $75bf: $ff
    rst $38                                       ; $75c0: $ff
    rst $38                                       ; $75c1: $ff
    rst $38                                       ; $75c2: $ff
    rst $38                                       ; $75c3: $ff
    rst $38                                       ; $75c4: $ff
    rst $38                                       ; $75c5: $ff
    rst $38                                       ; $75c6: $ff
    rst $38                                       ; $75c7: $ff

Call_052_75c8:
    rst $38                                       ; $75c8: $ff
    rst $38                                       ; $75c9: $ff
    rst $38                                       ; $75ca: $ff
    rst $38                                       ; $75cb: $ff
    rst $38                                       ; $75cc: $ff
    rst $38                                       ; $75cd: $ff
    rst $38                                       ; $75ce: $ff
    rst $38                                       ; $75cf: $ff
    rst $38                                       ; $75d0: $ff
    rst $38                                       ; $75d1: $ff
    rst $38                                       ; $75d2: $ff
    rst $38                                       ; $75d3: $ff
    rst $38                                       ; $75d4: $ff
    rst $38                                       ; $75d5: $ff
    rst $38                                       ; $75d6: $ff
    rst $38                                       ; $75d7: $ff
    rst $38                                       ; $75d8: $ff
    rst $38                                       ; $75d9: $ff
    rst $38                                       ; $75da: $ff
    rst $38                                       ; $75db: $ff
    rst $38                                       ; $75dc: $ff
    rst $38                                       ; $75dd: $ff
    rst $38                                       ; $75de: $ff
    rst $38                                       ; $75df: $ff
    rst $38                                       ; $75e0: $ff
    rst $38                                       ; $75e1: $ff
    rst $38                                       ; $75e2: $ff
    rst $38                                       ; $75e3: $ff
    rst $38                                       ; $75e4: $ff
    rst $38                                       ; $75e5: $ff
    rst $38                                       ; $75e6: $ff
    rst $38                                       ; $75e7: $ff
    rst $38                                       ; $75e8: $ff
    rst $38                                       ; $75e9: $ff
    rst $38                                       ; $75ea: $ff
    rst $38                                       ; $75eb: $ff
    rst $38                                       ; $75ec: $ff
    rst $38                                       ; $75ed: $ff
    rst $38                                       ; $75ee: $ff
    rst $38                                       ; $75ef: $ff
    rst $38                                       ; $75f0: $ff
    rst $38                                       ; $75f1: $ff
    rst $38                                       ; $75f2: $ff
    rst $38                                       ; $75f3: $ff
    rst $38                                       ; $75f4: $ff
    rst $38                                       ; $75f5: $ff
    rst $38                                       ; $75f6: $ff
    rst $38                                       ; $75f7: $ff
    rst $38                                       ; $75f8: $ff
    rst $38                                       ; $75f9: $ff
    rst $38                                       ; $75fa: $ff
    rst $38                                       ; $75fb: $ff
    rst $38                                       ; $75fc: $ff
    rst $38                                       ; $75fd: $ff
    rst $38                                       ; $75fe: $ff
    rst $38                                       ; $75ff: $ff
    rst $38                                       ; $7600: $ff
    rst $38                                       ; $7601: $ff
    rst $38                                       ; $7602: $ff
    rst $38                                       ; $7603: $ff
    rst $38                                       ; $7604: $ff
    rst $38                                       ; $7605: $ff
    rst $38                                       ; $7606: $ff
    rst $38                                       ; $7607: $ff
    rst $38                                       ; $7608: $ff
    rst $38                                       ; $7609: $ff
    rst $38                                       ; $760a: $ff
    rst $38                                       ; $760b: $ff
    rst $38                                       ; $760c: $ff
    rst $38                                       ; $760d: $ff
    rst $38                                       ; $760e: $ff
    rst $38                                       ; $760f: $ff
    rst $38                                       ; $7610: $ff
    rst $38                                       ; $7611: $ff
    rst $38                                       ; $7612: $ff
    rst $38                                       ; $7613: $ff
    rst $38                                       ; $7614: $ff
    rst $38                                       ; $7615: $ff
    rst $38                                       ; $7616: $ff
    rst $38                                       ; $7617: $ff
    rst $38                                       ; $7618: $ff
    rst $38                                       ; $7619: $ff
    rst $38                                       ; $761a: $ff
    rst $38                                       ; $761b: $ff
    rst $38                                       ; $761c: $ff
    rst $38                                       ; $761d: $ff
    rst $38                                       ; $761e: $ff
    rst $38                                       ; $761f: $ff
    rst $38                                       ; $7620: $ff
    rst $38                                       ; $7621: $ff
    rst $38                                       ; $7622: $ff
    rst $38                                       ; $7623: $ff
    rst $38                                       ; $7624: $ff
    rst $38                                       ; $7625: $ff
    rst $38                                       ; $7626: $ff
    rst $38                                       ; $7627: $ff
    rst $38                                       ; $7628: $ff
    rst $38                                       ; $7629: $ff
    rst $38                                       ; $762a: $ff
    rst $38                                       ; $762b: $ff
    rst $38                                       ; $762c: $ff
    rst $38                                       ; $762d: $ff
    rst $38                                       ; $762e: $ff
    rst $38                                       ; $762f: $ff
    rst $38                                       ; $7630: $ff
    rst $38                                       ; $7631: $ff
    rst $38                                       ; $7632: $ff
    rst $38                                       ; $7633: $ff
    rst $38                                       ; $7634: $ff
    rst $38                                       ; $7635: $ff
    rst $38                                       ; $7636: $ff
    rst $38                                       ; $7637: $ff
    rst $38                                       ; $7638: $ff
    rst $38                                       ; $7639: $ff
    rst $38                                       ; $763a: $ff
    rst $38                                       ; $763b: $ff
    rst $38                                       ; $763c: $ff
    rst $38                                       ; $763d: $ff
    rst $38                                       ; $763e: $ff
    rst $38                                       ; $763f: $ff
    rst $38                                       ; $7640: $ff
    rst $38                                       ; $7641: $ff
    rst $38                                       ; $7642: $ff
    rst $38                                       ; $7643: $ff
    rst $38                                       ; $7644: $ff
    rst $38                                       ; $7645: $ff
    rst $38                                       ; $7646: $ff
    rst $38                                       ; $7647: $ff
    rst $38                                       ; $7648: $ff
    rst $38                                       ; $7649: $ff
    rst $38                                       ; $764a: $ff
    rst $38                                       ; $764b: $ff
    rst $38                                       ; $764c: $ff
    rst $38                                       ; $764d: $ff
    rst $38                                       ; $764e: $ff
    rst $38                                       ; $764f: $ff
    rst $38                                       ; $7650: $ff
    rst $38                                       ; $7651: $ff
    rst $38                                       ; $7652: $ff
    rst $38                                       ; $7653: $ff
    rst $38                                       ; $7654: $ff
    rst $38                                       ; $7655: $ff
    rst $38                                       ; $7656: $ff
    rst $38                                       ; $7657: $ff
    rst $38                                       ; $7658: $ff
    rst $38                                       ; $7659: $ff
    rst $38                                       ; $765a: $ff
    rst $38                                       ; $765b: $ff
    rst $38                                       ; $765c: $ff
    rst $38                                       ; $765d: $ff
    rst $38                                       ; $765e: $ff
    rst $38                                       ; $765f: $ff
    rst $38                                       ; $7660: $ff
    rst $38                                       ; $7661: $ff
    rst $38                                       ; $7662: $ff
    rst $38                                       ; $7663: $ff
    rst $38                                       ; $7664: $ff
    rst $38                                       ; $7665: $ff
    rst $38                                       ; $7666: $ff
    rst $38                                       ; $7667: $ff
    rst $38                                       ; $7668: $ff
    rst $38                                       ; $7669: $ff
    rst $38                                       ; $766a: $ff
    rst $38                                       ; $766b: $ff
    rst $38                                       ; $766c: $ff
    rst $38                                       ; $766d: $ff
    rst $38                                       ; $766e: $ff
    rst $38                                       ; $766f: $ff
    rst $38                                       ; $7670: $ff
    rst $38                                       ; $7671: $ff
    rst $38                                       ; $7672: $ff
    rst $38                                       ; $7673: $ff
    rst $38                                       ; $7674: $ff
    rst $38                                       ; $7675: $ff
    rst $38                                       ; $7676: $ff
    rst $38                                       ; $7677: $ff
    rst $38                                       ; $7678: $ff
    rst $38                                       ; $7679: $ff
    rst $38                                       ; $767a: $ff
    rst $38                                       ; $767b: $ff
    rst $38                                       ; $767c: $ff
    rst $38                                       ; $767d: $ff
    rst $38                                       ; $767e: $ff
    rst $38                                       ; $767f: $ff
    rst $38                                       ; $7680: $ff
    rst $38                                       ; $7681: $ff
    rst $38                                       ; $7682: $ff
    rst $38                                       ; $7683: $ff
    rst $38                                       ; $7684: $ff
    rst $38                                       ; $7685: $ff
    rst $38                                       ; $7686: $ff
    rst $38                                       ; $7687: $ff
    rst $38                                       ; $7688: $ff
    rst $38                                       ; $7689: $ff
    rst $38                                       ; $768a: $ff
    rst $38                                       ; $768b: $ff
    rst $38                                       ; $768c: $ff
    rst $38                                       ; $768d: $ff
    rst $38                                       ; $768e: $ff
    rst $38                                       ; $768f: $ff
    rst $38                                       ; $7690: $ff
    rst $38                                       ; $7691: $ff
    rst $38                                       ; $7692: $ff
    rst $38                                       ; $7693: $ff
    rst $38                                       ; $7694: $ff
    rst $38                                       ; $7695: $ff
    rst $38                                       ; $7696: $ff
    rst $38                                       ; $7697: $ff
    rst $38                                       ; $7698: $ff
    rst $38                                       ; $7699: $ff

Jump_052_769a:
    rst $38                                       ; $769a: $ff
    rst $38                                       ; $769b: $ff
    rst $38                                       ; $769c: $ff
    rst $38                                       ; $769d: $ff
    rst $38                                       ; $769e: $ff
    rst $38                                       ; $769f: $ff
    rst $38                                       ; $76a0: $ff
    rst $38                                       ; $76a1: $ff
    rst $38                                       ; $76a2: $ff
    rst $38                                       ; $76a3: $ff
    rst $38                                       ; $76a4: $ff
    rst $38                                       ; $76a5: $ff
    rst $38                                       ; $76a6: $ff
    rst $38                                       ; $76a7: $ff
    rst $38                                       ; $76a8: $ff
    rst $38                                       ; $76a9: $ff
    rst $38                                       ; $76aa: $ff
    rst $38                                       ; $76ab: $ff
    rst $38                                       ; $76ac: $ff
    rst $38                                       ; $76ad: $ff
    rst $38                                       ; $76ae: $ff
    rst $38                                       ; $76af: $ff
    rst $38                                       ; $76b0: $ff
    rst $38                                       ; $76b1: $ff
    rst $38                                       ; $76b2: $ff
    rst $38                                       ; $76b3: $ff
    rst $38                                       ; $76b4: $ff
    rst $38                                       ; $76b5: $ff
    rst $38                                       ; $76b6: $ff
    rst $38                                       ; $76b7: $ff
    rst $38                                       ; $76b8: $ff
    rst $38                                       ; $76b9: $ff
    rst $38                                       ; $76ba: $ff
    rst $38                                       ; $76bb: $ff
    rst $38                                       ; $76bc: $ff
    rst $38                                       ; $76bd: $ff
    rst $38                                       ; $76be: $ff
    rst $38                                       ; $76bf: $ff
    rst $38                                       ; $76c0: $ff
    rst $38                                       ; $76c1: $ff
    rst $38                                       ; $76c2: $ff
    rst $38                                       ; $76c3: $ff
    rst $38                                       ; $76c4: $ff
    rst $38                                       ; $76c5: $ff
    rst $38                                       ; $76c6: $ff
    rst $38                                       ; $76c7: $ff
    rst $38                                       ; $76c8: $ff
    rst $38                                       ; $76c9: $ff
    rst $38                                       ; $76ca: $ff
    rst $38                                       ; $76cb: $ff
    rst $38                                       ; $76cc: $ff
    rst $38                                       ; $76cd: $ff
    rst $38                                       ; $76ce: $ff
    rst $38                                       ; $76cf: $ff
    rst $38                                       ; $76d0: $ff
    rst $38                                       ; $76d1: $ff
    rst $38                                       ; $76d2: $ff
    rst $38                                       ; $76d3: $ff
    rst $38                                       ; $76d4: $ff
    rst $38                                       ; $76d5: $ff
    rst $38                                       ; $76d6: $ff
    rst $38                                       ; $76d7: $ff
    rst $38                                       ; $76d8: $ff
    rst $38                                       ; $76d9: $ff
    rst $38                                       ; $76da: $ff
    rst $38                                       ; $76db: $ff
    rst $38                                       ; $76dc: $ff
    rst $38                                       ; $76dd: $ff
    rst $38                                       ; $76de: $ff
    rst $38                                       ; $76df: $ff
    rst $38                                       ; $76e0: $ff
    rst $38                                       ; $76e1: $ff
    rst $38                                       ; $76e2: $ff
    rst $38                                       ; $76e3: $ff
    rst $38                                       ; $76e4: $ff
    rst $38                                       ; $76e5: $ff
    rst $38                                       ; $76e6: $ff
    rst $38                                       ; $76e7: $ff
    rst $38                                       ; $76e8: $ff
    rst $38                                       ; $76e9: $ff
    rst $38                                       ; $76ea: $ff
    rst $38                                       ; $76eb: $ff
    rst $38                                       ; $76ec: $ff
    rst $38                                       ; $76ed: $ff
    rst $38                                       ; $76ee: $ff
    rst $38                                       ; $76ef: $ff
    rst $38                                       ; $76f0: $ff
    rst $38                                       ; $76f1: $ff
    rst $38                                       ; $76f2: $ff
    rst $38                                       ; $76f3: $ff
    rst $38                                       ; $76f4: $ff
    rst $38                                       ; $76f5: $ff
    rst $38                                       ; $76f6: $ff
    rst $38                                       ; $76f7: $ff
    rst $38                                       ; $76f8: $ff
    rst $38                                       ; $76f9: $ff
    rst $38                                       ; $76fa: $ff
    rst $38                                       ; $76fb: $ff
    rst $38                                       ; $76fc: $ff
    rst $38                                       ; $76fd: $ff
    rst $38                                       ; $76fe: $ff
    rst $38                                       ; $76ff: $ff
    rst $38                                       ; $7700: $ff
    rst $38                                       ; $7701: $ff
    rst $38                                       ; $7702: $ff
    rst $38                                       ; $7703: $ff
    rst $38                                       ; $7704: $ff
    rst $38                                       ; $7705: $ff
    rst $38                                       ; $7706: $ff
    rst $38                                       ; $7707: $ff
    rst $38                                       ; $7708: $ff
    rst $38                                       ; $7709: $ff
    rst $38                                       ; $770a: $ff
    rst $38                                       ; $770b: $ff
    rst $38                                       ; $770c: $ff
    rst $38                                       ; $770d: $ff
    rst $38                                       ; $770e: $ff
    rst $38                                       ; $770f: $ff
    rst $38                                       ; $7710: $ff
    rst $38                                       ; $7711: $ff
    rst $38                                       ; $7712: $ff
    rst $38                                       ; $7713: $ff
    rst $38                                       ; $7714: $ff
    rst $38                                       ; $7715: $ff
    rst $38                                       ; $7716: $ff
    rst $38                                       ; $7717: $ff
    rst $38                                       ; $7718: $ff
    rst $38                                       ; $7719: $ff
    rst $38                                       ; $771a: $ff
    rst $38                                       ; $771b: $ff
    rst $38                                       ; $771c: $ff
    rst $38                                       ; $771d: $ff
    rst $38                                       ; $771e: $ff
    rst $38                                       ; $771f: $ff
    rst $38                                       ; $7720: $ff
    rst $38                                       ; $7721: $ff
    rst $38                                       ; $7722: $ff
    rst $38                                       ; $7723: $ff
    rst $38                                       ; $7724: $ff
    rst $38                                       ; $7725: $ff
    rst $38                                       ; $7726: $ff
    rst $38                                       ; $7727: $ff
    rst $38                                       ; $7728: $ff
    rst $38                                       ; $7729: $ff
    rst $38                                       ; $772a: $ff
    rst $38                                       ; $772b: $ff
    rst $38                                       ; $772c: $ff
    rst $38                                       ; $772d: $ff
    rst $38                                       ; $772e: $ff
    rst $38                                       ; $772f: $ff
    rst $38                                       ; $7730: $ff
    rst $38                                       ; $7731: $ff
    rst $38                                       ; $7732: $ff
    rst $38                                       ; $7733: $ff
    rst $38                                       ; $7734: $ff
    rst $38                                       ; $7735: $ff
    rst $38                                       ; $7736: $ff
    rst $38                                       ; $7737: $ff
    rst $38                                       ; $7738: $ff
    rst $38                                       ; $7739: $ff
    rst $38                                       ; $773a: $ff
    rst $38                                       ; $773b: $ff
    rst $38                                       ; $773c: $ff
    rst $38                                       ; $773d: $ff
    rst $38                                       ; $773e: $ff
    rst $38                                       ; $773f: $ff
    rst $38                                       ; $7740: $ff
    rst $38                                       ; $7741: $ff
    rst $38                                       ; $7742: $ff
    rst $38                                       ; $7743: $ff
    rst $38                                       ; $7744: $ff
    rst $38                                       ; $7745: $ff
    rst $38                                       ; $7746: $ff
    rst $38                                       ; $7747: $ff
    rst $38                                       ; $7748: $ff
    rst $38                                       ; $7749: $ff
    rst $38                                       ; $774a: $ff
    rst $38                                       ; $774b: $ff
    rst $38                                       ; $774c: $ff
    rst $38                                       ; $774d: $ff
    rst $38                                       ; $774e: $ff
    rst $38                                       ; $774f: $ff
    rst $38                                       ; $7750: $ff
    rst $38                                       ; $7751: $ff
    rst $38                                       ; $7752: $ff
    rst $38                                       ; $7753: $ff
    rst $38                                       ; $7754: $ff
    rst $38                                       ; $7755: $ff
    rst $38                                       ; $7756: $ff
    rst $38                                       ; $7757: $ff
    rst $38                                       ; $7758: $ff
    rst $38                                       ; $7759: $ff
    rst $38                                       ; $775a: $ff
    rst $38                                       ; $775b: $ff
    rst $38                                       ; $775c: $ff
    rst $38                                       ; $775d: $ff
    rst $38                                       ; $775e: $ff
    rst $38                                       ; $775f: $ff
    rst $38                                       ; $7760: $ff
    rst $38                                       ; $7761: $ff
    rst $38                                       ; $7762: $ff
    rst $38                                       ; $7763: $ff
    rst $38                                       ; $7764: $ff
    rst $38                                       ; $7765: $ff
    rst $38                                       ; $7766: $ff
    rst $38                                       ; $7767: $ff
    rst $38                                       ; $7768: $ff
    rst $38                                       ; $7769: $ff
    rst $38                                       ; $776a: $ff
    rst $38                                       ; $776b: $ff
    rst $38                                       ; $776c: $ff
    rst $38                                       ; $776d: $ff
    rst $38                                       ; $776e: $ff
    rst $38                                       ; $776f: $ff
    rst $38                                       ; $7770: $ff
    rst $38                                       ; $7771: $ff
    rst $38                                       ; $7772: $ff
    rst $38                                       ; $7773: $ff
    rst $38                                       ; $7774: $ff
    rst $38                                       ; $7775: $ff
    rst $38                                       ; $7776: $ff
    rst $38                                       ; $7777: $ff
    rst $38                                       ; $7778: $ff
    rst $38                                       ; $7779: $ff
    rst $38                                       ; $777a: $ff
    rst $38                                       ; $777b: $ff
    rst $38                                       ; $777c: $ff
    rst $38                                       ; $777d: $ff
    rst $38                                       ; $777e: $ff
    rst $38                                       ; $777f: $ff
    rst $38                                       ; $7780: $ff
    rst $38                                       ; $7781: $ff
    rst $38                                       ; $7782: $ff
    rst $38                                       ; $7783: $ff
    rst $38                                       ; $7784: $ff
    rst $38                                       ; $7785: $ff
    rst $38                                       ; $7786: $ff
    rst $38                                       ; $7787: $ff
    rst $38                                       ; $7788: $ff
    rst $38                                       ; $7789: $ff
    rst $38                                       ; $778a: $ff
    rst $38                                       ; $778b: $ff
    rst $38                                       ; $778c: $ff
    rst $38                                       ; $778d: $ff
    rst $38                                       ; $778e: $ff
    rst $38                                       ; $778f: $ff
    rst $38                                       ; $7790: $ff
    rst $38                                       ; $7791: $ff
    rst $38                                       ; $7792: $ff
    rst $38                                       ; $7793: $ff
    rst $38                                       ; $7794: $ff
    rst $38                                       ; $7795: $ff
    rst $38                                       ; $7796: $ff
    rst $38                                       ; $7797: $ff
    rst $38                                       ; $7798: $ff
    rst $38                                       ; $7799: $ff
    rst $38                                       ; $779a: $ff
    rst $38                                       ; $779b: $ff
    rst $38                                       ; $779c: $ff
    rst $38                                       ; $779d: $ff
    rst $38                                       ; $779e: $ff
    rst $38                                       ; $779f: $ff
    rst $38                                       ; $77a0: $ff
    rst $38                                       ; $77a1: $ff
    rst $38                                       ; $77a2: $ff
    rst $38                                       ; $77a3: $ff
    rst $38                                       ; $77a4: $ff
    rst $38                                       ; $77a5: $ff
    rst $38                                       ; $77a6: $ff
    rst $38                                       ; $77a7: $ff
    rst $38                                       ; $77a8: $ff

Call_052_77a9:
    rst $38                                       ; $77a9: $ff
    rst $38                                       ; $77aa: $ff
    rst $38                                       ; $77ab: $ff
    rst $38                                       ; $77ac: $ff
    rst $38                                       ; $77ad: $ff
    rst $38                                       ; $77ae: $ff
    rst $38                                       ; $77af: $ff
    rst $38                                       ; $77b0: $ff
    rst $38                                       ; $77b1: $ff
    rst $38                                       ; $77b2: $ff
    rst $38                                       ; $77b3: $ff
    rst $38                                       ; $77b4: $ff
    rst $38                                       ; $77b5: $ff
    rst $38                                       ; $77b6: $ff
    rst $38                                       ; $77b7: $ff
    rst $38                                       ; $77b8: $ff
    rst $38                                       ; $77b9: $ff
    rst $38                                       ; $77ba: $ff
    rst $38                                       ; $77bb: $ff
    rst $38                                       ; $77bc: $ff
    rst $38                                       ; $77bd: $ff
    rst $38                                       ; $77be: $ff
    rst $38                                       ; $77bf: $ff
    rst $38                                       ; $77c0: $ff
    rst $38                                       ; $77c1: $ff
    rst $38                                       ; $77c2: $ff
    rst $38                                       ; $77c3: $ff
    rst $38                                       ; $77c4: $ff
    rst $38                                       ; $77c5: $ff
    rst $38                                       ; $77c6: $ff
    rst $38                                       ; $77c7: $ff
    rst $38                                       ; $77c8: $ff
    rst $38                                       ; $77c9: $ff
    rst $38                                       ; $77ca: $ff
    rst $38                                       ; $77cb: $ff
    rst $38                                       ; $77cc: $ff
    rst $38                                       ; $77cd: $ff
    rst $38                                       ; $77ce: $ff
    rst $38                                       ; $77cf: $ff
    rst $38                                       ; $77d0: $ff
    rst $38                                       ; $77d1: $ff
    rst $38                                       ; $77d2: $ff
    rst $38                                       ; $77d3: $ff
    rst $38                                       ; $77d4: $ff
    rst $38                                       ; $77d5: $ff
    rst $38                                       ; $77d6: $ff
    rst $38                                       ; $77d7: $ff
    rst $38                                       ; $77d8: $ff
    rst $38                                       ; $77d9: $ff
    rst $38                                       ; $77da: $ff
    rst $38                                       ; $77db: $ff
    rst $38                                       ; $77dc: $ff
    rst $38                                       ; $77dd: $ff
    rst $38                                       ; $77de: $ff
    rst $38                                       ; $77df: $ff
    rst $38                                       ; $77e0: $ff
    rst $38                                       ; $77e1: $ff
    rst $38                                       ; $77e2: $ff
    rst $38                                       ; $77e3: $ff
    rst $38                                       ; $77e4: $ff
    rst $38                                       ; $77e5: $ff
    rst $38                                       ; $77e6: $ff
    rst $38                                       ; $77e7: $ff
    rst $38                                       ; $77e8: $ff
    rst $38                                       ; $77e9: $ff
    rst $38                                       ; $77ea: $ff
    rst $38                                       ; $77eb: $ff
    rst $38                                       ; $77ec: $ff
    rst $38                                       ; $77ed: $ff
    rst $38                                       ; $77ee: $ff
    rst $38                                       ; $77ef: $ff
    rst $38                                       ; $77f0: $ff
    rst $38                                       ; $77f1: $ff
    rst $38                                       ; $77f2: $ff
    rst $38                                       ; $77f3: $ff
    rst $38                                       ; $77f4: $ff
    rst $38                                       ; $77f5: $ff
    rst $38                                       ; $77f6: $ff
    rst $38                                       ; $77f7: $ff
    rst $38                                       ; $77f8: $ff
    rst $38                                       ; $77f9: $ff
    rst $38                                       ; $77fa: $ff
    rst $38                                       ; $77fb: $ff
    rst $38                                       ; $77fc: $ff
    rst $38                                       ; $77fd: $ff
    rst $38                                       ; $77fe: $ff
    rst $38                                       ; $77ff: $ff
    rst $38                                       ; $7800: $ff
    rst $38                                       ; $7801: $ff
    rst $38                                       ; $7802: $ff
    rst $38                                       ; $7803: $ff
    rst $38                                       ; $7804: $ff
    rst $38                                       ; $7805: $ff
    rst $38                                       ; $7806: $ff
    rst $38                                       ; $7807: $ff
    rst $38                                       ; $7808: $ff
    rst $38                                       ; $7809: $ff
    rst $38                                       ; $780a: $ff
    rst $38                                       ; $780b: $ff
    rst $38                                       ; $780c: $ff
    rst $38                                       ; $780d: $ff
    rst $38                                       ; $780e: $ff
    rst $38                                       ; $780f: $ff
    rst $38                                       ; $7810: $ff
    rst $38                                       ; $7811: $ff
    rst $38                                       ; $7812: $ff
    rst $38                                       ; $7813: $ff
    rst $38                                       ; $7814: $ff
    rst $38                                       ; $7815: $ff
    rst $38                                       ; $7816: $ff
    rst $38                                       ; $7817: $ff
    rst $38                                       ; $7818: $ff
    rst $38                                       ; $7819: $ff
    rst $38                                       ; $781a: $ff
    rst $38                                       ; $781b: $ff
    rst $38                                       ; $781c: $ff
    rst $38                                       ; $781d: $ff
    rst $38                                       ; $781e: $ff
    rst $38                                       ; $781f: $ff
    rst $38                                       ; $7820: $ff
    rst $38                                       ; $7821: $ff
    rst $38                                       ; $7822: $ff
    rst $38                                       ; $7823: $ff
    rst $38                                       ; $7824: $ff
    rst $38                                       ; $7825: $ff
    rst $38                                       ; $7826: $ff
    rst $38                                       ; $7827: $ff
    rst $38                                       ; $7828: $ff
    rst $38                                       ; $7829: $ff
    rst $38                                       ; $782a: $ff
    rst $38                                       ; $782b: $ff
    rst $38                                       ; $782c: $ff
    rst $38                                       ; $782d: $ff
    rst $38                                       ; $782e: $ff
    rst $38                                       ; $782f: $ff
    rst $38                                       ; $7830: $ff
    rst $38                                       ; $7831: $ff
    rst $38                                       ; $7832: $ff
    rst $38                                       ; $7833: $ff
    rst $38                                       ; $7834: $ff
    rst $38                                       ; $7835: $ff
    rst $38                                       ; $7836: $ff
    rst $38                                       ; $7837: $ff
    rst $38                                       ; $7838: $ff
    rst $38                                       ; $7839: $ff
    rst $38                                       ; $783a: $ff
    rst $38                                       ; $783b: $ff
    rst $38                                       ; $783c: $ff
    rst $38                                       ; $783d: $ff
    rst $38                                       ; $783e: $ff
    rst $38                                       ; $783f: $ff
    rst $38                                       ; $7840: $ff
    rst $38                                       ; $7841: $ff
    rst $38                                       ; $7842: $ff
    rst $38                                       ; $7843: $ff
    rst $38                                       ; $7844: $ff
    rst $38                                       ; $7845: $ff
    rst $38                                       ; $7846: $ff
    rst $38                                       ; $7847: $ff
    rst $38                                       ; $7848: $ff
    rst $38                                       ; $7849: $ff
    rst $38                                       ; $784a: $ff
    rst $38                                       ; $784b: $ff
    rst $38                                       ; $784c: $ff
    rst $38                                       ; $784d: $ff
    rst $38                                       ; $784e: $ff
    rst $38                                       ; $784f: $ff
    rst $38                                       ; $7850: $ff
    rst $38                                       ; $7851: $ff
    rst $38                                       ; $7852: $ff
    rst $38                                       ; $7853: $ff
    rst $38                                       ; $7854: $ff
    rst $38                                       ; $7855: $ff
    rst $38                                       ; $7856: $ff
    rst $38                                       ; $7857: $ff
    rst $38                                       ; $7858: $ff
    rst $38                                       ; $7859: $ff
    rst $38                                       ; $785a: $ff
    rst $38                                       ; $785b: $ff
    rst $38                                       ; $785c: $ff
    rst $38                                       ; $785d: $ff
    rst $38                                       ; $785e: $ff
    rst $38                                       ; $785f: $ff
    rst $38                                       ; $7860: $ff
    rst $38                                       ; $7861: $ff
    rst $38                                       ; $7862: $ff
    rst $38                                       ; $7863: $ff
    rst $38                                       ; $7864: $ff
    rst $38                                       ; $7865: $ff
    rst $38                                       ; $7866: $ff
    rst $38                                       ; $7867: $ff
    rst $38                                       ; $7868: $ff
    rst $38                                       ; $7869: $ff
    rst $38                                       ; $786a: $ff
    rst $38                                       ; $786b: $ff
    rst $38                                       ; $786c: $ff
    rst $38                                       ; $786d: $ff
    rst $38                                       ; $786e: $ff
    rst $38                                       ; $786f: $ff
    rst $38                                       ; $7870: $ff
    rst $38                                       ; $7871: $ff
    rst $38                                       ; $7872: $ff
    rst $38                                       ; $7873: $ff
    rst $38                                       ; $7874: $ff
    rst $38                                       ; $7875: $ff
    rst $38                                       ; $7876: $ff
    rst $38                                       ; $7877: $ff
    rst $38                                       ; $7878: $ff
    rst $38                                       ; $7879: $ff
    rst $38                                       ; $787a: $ff
    rst $38                                       ; $787b: $ff
    rst $38                                       ; $787c: $ff

Jump_052_787d:
    rst $38                                       ; $787d: $ff

Call_052_787e:
    rst $38                                       ; $787e: $ff
    rst $38                                       ; $787f: $ff
    rst $38                                       ; $7880: $ff
    rst $38                                       ; $7881: $ff
    rst $38                                       ; $7882: $ff
    rst $38                                       ; $7883: $ff
    rst $38                                       ; $7884: $ff
    rst $38                                       ; $7885: $ff
    rst $38                                       ; $7886: $ff
    rst $38                                       ; $7887: $ff
    rst $38                                       ; $7888: $ff
    rst $38                                       ; $7889: $ff
    rst $38                                       ; $788a: $ff
    rst $38                                       ; $788b: $ff
    rst $38                                       ; $788c: $ff
    rst $38                                       ; $788d: $ff
    rst $38                                       ; $788e: $ff
    rst $38                                       ; $788f: $ff
    rst $38                                       ; $7890: $ff
    rst $38                                       ; $7891: $ff
    rst $38                                       ; $7892: $ff
    rst $38                                       ; $7893: $ff
    rst $38                                       ; $7894: $ff
    rst $38                                       ; $7895: $ff
    rst $38                                       ; $7896: $ff
    rst $38                                       ; $7897: $ff
    rst $38                                       ; $7898: $ff
    rst $38                                       ; $7899: $ff
    rst $38                                       ; $789a: $ff
    rst $38                                       ; $789b: $ff
    rst $38                                       ; $789c: $ff

Jump_052_789d:
    rst $38                                       ; $789d: $ff
    rst $38                                       ; $789e: $ff
    rst $38                                       ; $789f: $ff
    rst $38                                       ; $78a0: $ff
    rst $38                                       ; $78a1: $ff
    rst $38                                       ; $78a2: $ff
    rst $38                                       ; $78a3: $ff
    rst $38                                       ; $78a4: $ff
    rst $38                                       ; $78a5: $ff
    rst $38                                       ; $78a6: $ff
    rst $38                                       ; $78a7: $ff
    rst $38                                       ; $78a8: $ff
    rst $38                                       ; $78a9: $ff
    rst $38                                       ; $78aa: $ff
    rst $38                                       ; $78ab: $ff
    rst $38                                       ; $78ac: $ff
    rst $38                                       ; $78ad: $ff
    rst $38                                       ; $78ae: $ff
    rst $38                                       ; $78af: $ff
    rst $38                                       ; $78b0: $ff
    rst $38                                       ; $78b1: $ff
    rst $38                                       ; $78b2: $ff
    rst $38                                       ; $78b3: $ff
    rst $38                                       ; $78b4: $ff
    rst $38                                       ; $78b5: $ff
    rst $38                                       ; $78b6: $ff
    rst $38                                       ; $78b7: $ff
    rst $38                                       ; $78b8: $ff
    rst $38                                       ; $78b9: $ff
    rst $38                                       ; $78ba: $ff
    rst $38                                       ; $78bb: $ff
    rst $38                                       ; $78bc: $ff
    rst $38                                       ; $78bd: $ff
    rst $38                                       ; $78be: $ff
    rst $38                                       ; $78bf: $ff
    rst $38                                       ; $78c0: $ff
    rst $38                                       ; $78c1: $ff
    rst $38                                       ; $78c2: $ff
    rst $38                                       ; $78c3: $ff
    rst $38                                       ; $78c4: $ff
    rst $38                                       ; $78c5: $ff
    rst $38                                       ; $78c6: $ff
    rst $38                                       ; $78c7: $ff
    rst $38                                       ; $78c8: $ff
    rst $38                                       ; $78c9: $ff
    rst $38                                       ; $78ca: $ff
    rst $38                                       ; $78cb: $ff
    rst $38                                       ; $78cc: $ff
    rst $38                                       ; $78cd: $ff
    rst $38                                       ; $78ce: $ff
    rst $38                                       ; $78cf: $ff
    rst $38                                       ; $78d0: $ff
    rst $38                                       ; $78d1: $ff
    rst $38                                       ; $78d2: $ff
    rst $38                                       ; $78d3: $ff
    rst $38                                       ; $78d4: $ff
    rst $38                                       ; $78d5: $ff
    rst $38                                       ; $78d6: $ff
    rst $38                                       ; $78d7: $ff
    rst $38                                       ; $78d8: $ff
    rst $38                                       ; $78d9: $ff
    rst $38                                       ; $78da: $ff
    rst $38                                       ; $78db: $ff
    rst $38                                       ; $78dc: $ff
    rst $38                                       ; $78dd: $ff
    rst $38                                       ; $78de: $ff
    rst $38                                       ; $78df: $ff
    rst $38                                       ; $78e0: $ff
    rst $38                                       ; $78e1: $ff
    rst $38                                       ; $78e2: $ff
    rst $38                                       ; $78e3: $ff
    rst $38                                       ; $78e4: $ff
    rst $38                                       ; $78e5: $ff
    rst $38                                       ; $78e6: $ff
    rst $38                                       ; $78e7: $ff
    rst $38                                       ; $78e8: $ff
    rst $38                                       ; $78e9: $ff
    rst $38                                       ; $78ea: $ff
    rst $38                                       ; $78eb: $ff
    rst $38                                       ; $78ec: $ff
    rst $38                                       ; $78ed: $ff
    rst $38                                       ; $78ee: $ff
    rst $38                                       ; $78ef: $ff
    rst $38                                       ; $78f0: $ff
    rst $38                                       ; $78f1: $ff
    rst $38                                       ; $78f2: $ff
    rst $38                                       ; $78f3: $ff
    rst $38                                       ; $78f4: $ff
    rst $38                                       ; $78f5: $ff
    rst $38                                       ; $78f6: $ff
    rst $38                                       ; $78f7: $ff
    rst $38                                       ; $78f8: $ff
    rst $38                                       ; $78f9: $ff
    rst $38                                       ; $78fa: $ff
    rst $38                                       ; $78fb: $ff
    rst $38                                       ; $78fc: $ff
    rst $38                                       ; $78fd: $ff
    rst $38                                       ; $78fe: $ff
    rst $38                                       ; $78ff: $ff
    rst $38                                       ; $7900: $ff
    rst $38                                       ; $7901: $ff
    rst $38                                       ; $7902: $ff
    rst $38                                       ; $7903: $ff
    rst $38                                       ; $7904: $ff
    rst $38                                       ; $7905: $ff
    rst $38                                       ; $7906: $ff
    rst $38                                       ; $7907: $ff
    rst $38                                       ; $7908: $ff
    rst $38                                       ; $7909: $ff
    rst $38                                       ; $790a: $ff
    rst $38                                       ; $790b: $ff
    rst $38                                       ; $790c: $ff
    rst $38                                       ; $790d: $ff
    rst $38                                       ; $790e: $ff
    rst $38                                       ; $790f: $ff
    rst $38                                       ; $7910: $ff
    rst $38                                       ; $7911: $ff
    rst $38                                       ; $7912: $ff
    rst $38                                       ; $7913: $ff
    rst $38                                       ; $7914: $ff
    rst $38                                       ; $7915: $ff
    rst $38                                       ; $7916: $ff
    rst $38                                       ; $7917: $ff
    rst $38                                       ; $7918: $ff
    rst $38                                       ; $7919: $ff
    rst $38                                       ; $791a: $ff
    rst $38                                       ; $791b: $ff
    rst $38                                       ; $791c: $ff
    rst $38                                       ; $791d: $ff
    rst $38                                       ; $791e: $ff
    rst $38                                       ; $791f: $ff
    rst $38                                       ; $7920: $ff
    rst $38                                       ; $7921: $ff
    rst $38                                       ; $7922: $ff
    rst $38                                       ; $7923: $ff
    rst $38                                       ; $7924: $ff
    rst $38                                       ; $7925: $ff
    rst $38                                       ; $7926: $ff
    rst $38                                       ; $7927: $ff
    rst $38                                       ; $7928: $ff
    rst $38                                       ; $7929: $ff
    rst $38                                       ; $792a: $ff
    rst $38                                       ; $792b: $ff
    rst $38                                       ; $792c: $ff
    rst $38                                       ; $792d: $ff
    rst $38                                       ; $792e: $ff
    rst $38                                       ; $792f: $ff
    rst $38                                       ; $7930: $ff
    rst $38                                       ; $7931: $ff
    rst $38                                       ; $7932: $ff
    rst $38                                       ; $7933: $ff
    rst $38                                       ; $7934: $ff
    rst $38                                       ; $7935: $ff
    rst $38                                       ; $7936: $ff
    rst $38                                       ; $7937: $ff
    rst $38                                       ; $7938: $ff
    rst $38                                       ; $7939: $ff
    rst $38                                       ; $793a: $ff
    rst $38                                       ; $793b: $ff
    rst $38                                       ; $793c: $ff
    rst $38                                       ; $793d: $ff
    rst $38                                       ; $793e: $ff
    rst $38                                       ; $793f: $ff
    rst $38                                       ; $7940: $ff
    rst $38                                       ; $7941: $ff
    rst $38                                       ; $7942: $ff
    rst $38                                       ; $7943: $ff
    rst $38                                       ; $7944: $ff
    rst $38                                       ; $7945: $ff
    rst $38                                       ; $7946: $ff
    rst $38                                       ; $7947: $ff
    rst $38                                       ; $7948: $ff
    rst $38                                       ; $7949: $ff
    rst $38                                       ; $794a: $ff
    rst $38                                       ; $794b: $ff
    rst $38                                       ; $794c: $ff
    rst $38                                       ; $794d: $ff
    rst $38                                       ; $794e: $ff
    rst $38                                       ; $794f: $ff
    rst $38                                       ; $7950: $ff
    rst $38                                       ; $7951: $ff
    rst $38                                       ; $7952: $ff
    rst $38                                       ; $7953: $ff
    rst $38                                       ; $7954: $ff
    rst $38                                       ; $7955: $ff
    rst $38                                       ; $7956: $ff
    rst $38                                       ; $7957: $ff
    rst $38                                       ; $7958: $ff
    rst $38                                       ; $7959: $ff
    rst $38                                       ; $795a: $ff
    rst $38                                       ; $795b: $ff
    rst $38                                       ; $795c: $ff
    rst $38                                       ; $795d: $ff
    rst $38                                       ; $795e: $ff
    rst $38                                       ; $795f: $ff
    rst $38                                       ; $7960: $ff
    rst $38                                       ; $7961: $ff
    rst $38                                       ; $7962: $ff
    rst $38                                       ; $7963: $ff
    rst $38                                       ; $7964: $ff
    rst $38                                       ; $7965: $ff
    rst $38                                       ; $7966: $ff
    rst $38                                       ; $7967: $ff
    rst $38                                       ; $7968: $ff
    rst $38                                       ; $7969: $ff
    rst $38                                       ; $796a: $ff
    rst $38                                       ; $796b: $ff
    rst $38                                       ; $796c: $ff
    rst $38                                       ; $796d: $ff
    rst $38                                       ; $796e: $ff
    rst $38                                       ; $796f: $ff
    rst $38                                       ; $7970: $ff
    rst $38                                       ; $7971: $ff
    rst $38                                       ; $7972: $ff
    rst $38                                       ; $7973: $ff
    rst $38                                       ; $7974: $ff
    rst $38                                       ; $7975: $ff
    rst $38                                       ; $7976: $ff
    rst $38                                       ; $7977: $ff
    rst $38                                       ; $7978: $ff
    rst $38                                       ; $7979: $ff
    rst $38                                       ; $797a: $ff
    rst $38                                       ; $797b: $ff
    rst $38                                       ; $797c: $ff
    rst $38                                       ; $797d: $ff
    rst $38                                       ; $797e: $ff
    rst $38                                       ; $797f: $ff
    rst $38                                       ; $7980: $ff
    rst $38                                       ; $7981: $ff
    rst $38                                       ; $7982: $ff
    rst $38                                       ; $7983: $ff
    rst $38                                       ; $7984: $ff
    rst $38                                       ; $7985: $ff
    rst $38                                       ; $7986: $ff
    rst $38                                       ; $7987: $ff
    rst $38                                       ; $7988: $ff
    rst $38                                       ; $7989: $ff
    rst $38                                       ; $798a: $ff
    rst $38                                       ; $798b: $ff
    rst $38                                       ; $798c: $ff
    rst $38                                       ; $798d: $ff
    rst $38                                       ; $798e: $ff
    rst $38                                       ; $798f: $ff
    rst $38                                       ; $7990: $ff
    rst $38                                       ; $7991: $ff
    rst $38                                       ; $7992: $ff
    rst $38                                       ; $7993: $ff
    rst $38                                       ; $7994: $ff
    rst $38                                       ; $7995: $ff
    rst $38                                       ; $7996: $ff
    rst $38                                       ; $7997: $ff
    rst $38                                       ; $7998: $ff
    rst $38                                       ; $7999: $ff
    rst $38                                       ; $799a: $ff
    rst $38                                       ; $799b: $ff
    rst $38                                       ; $799c: $ff
    rst $38                                       ; $799d: $ff
    rst $38                                       ; $799e: $ff
    rst $38                                       ; $799f: $ff
    rst $38                                       ; $79a0: $ff
    rst $38                                       ; $79a1: $ff
    rst $38                                       ; $79a2: $ff
    rst $38                                       ; $79a3: $ff
    rst $38                                       ; $79a4: $ff
    rst $38                                       ; $79a5: $ff
    rst $38                                       ; $79a6: $ff
    rst $38                                       ; $79a7: $ff
    rst $38                                       ; $79a8: $ff
    rst $38                                       ; $79a9: $ff
    rst $38                                       ; $79aa: $ff
    rst $38                                       ; $79ab: $ff
    rst $38                                       ; $79ac: $ff
    rst $38                                       ; $79ad: $ff
    rst $38                                       ; $79ae: $ff
    rst $38                                       ; $79af: $ff
    rst $38                                       ; $79b0: $ff
    rst $38                                       ; $79b1: $ff
    rst $38                                       ; $79b2: $ff
    rst $38                                       ; $79b3: $ff
    rst $38                                       ; $79b4: $ff
    rst $38                                       ; $79b5: $ff
    rst $38                                       ; $79b6: $ff
    rst $38                                       ; $79b7: $ff
    rst $38                                       ; $79b8: $ff
    rst $38                                       ; $79b9: $ff
    rst $38                                       ; $79ba: $ff
    rst $38                                       ; $79bb: $ff
    rst $38                                       ; $79bc: $ff
    rst $38                                       ; $79bd: $ff
    rst $38                                       ; $79be: $ff
    rst $38                                       ; $79bf: $ff
    rst $38                                       ; $79c0: $ff
    rst $38                                       ; $79c1: $ff
    rst $38                                       ; $79c2: $ff
    rst $38                                       ; $79c3: $ff
    rst $38                                       ; $79c4: $ff
    rst $38                                       ; $79c5: $ff
    rst $38                                       ; $79c6: $ff
    rst $38                                       ; $79c7: $ff
    rst $38                                       ; $79c8: $ff
    rst $38                                       ; $79c9: $ff
    rst $38                                       ; $79ca: $ff
    rst $38                                       ; $79cb: $ff
    rst $38                                       ; $79cc: $ff
    rst $38                                       ; $79cd: $ff
    rst $38                                       ; $79ce: $ff
    rst $38                                       ; $79cf: $ff
    rst $38                                       ; $79d0: $ff
    rst $38                                       ; $79d1: $ff
    rst $38                                       ; $79d2: $ff
    rst $38                                       ; $79d3: $ff
    rst $38                                       ; $79d4: $ff
    rst $38                                       ; $79d5: $ff
    rst $38                                       ; $79d6: $ff
    rst $38                                       ; $79d7: $ff
    rst $38                                       ; $79d8: $ff
    rst $38                                       ; $79d9: $ff
    rst $38                                       ; $79da: $ff
    rst $38                                       ; $79db: $ff
    rst $38                                       ; $79dc: $ff
    rst $38                                       ; $79dd: $ff
    rst $38                                       ; $79de: $ff
    rst $38                                       ; $79df: $ff
    rst $38                                       ; $79e0: $ff
    rst $38                                       ; $79e1: $ff
    rst $38                                       ; $79e2: $ff
    rst $38                                       ; $79e3: $ff
    rst $38                                       ; $79e4: $ff
    rst $38                                       ; $79e5: $ff
    rst $38                                       ; $79e6: $ff
    rst $38                                       ; $79e7: $ff
    rst $38                                       ; $79e8: $ff
    rst $38                                       ; $79e9: $ff
    rst $38                                       ; $79ea: $ff
    rst $38                                       ; $79eb: $ff
    rst $38                                       ; $79ec: $ff
    rst $38                                       ; $79ed: $ff
    rst $38                                       ; $79ee: $ff
    rst $38                                       ; $79ef: $ff
    rst $38                                       ; $79f0: $ff
    rst $38                                       ; $79f1: $ff
    rst $38                                       ; $79f2: $ff
    rst $38                                       ; $79f3: $ff
    rst $38                                       ; $79f4: $ff
    rst $38                                       ; $79f5: $ff
    rst $38                                       ; $79f6: $ff
    rst $38                                       ; $79f7: $ff
    rst $38                                       ; $79f8: $ff
    rst $38                                       ; $79f9: $ff
    rst $38                                       ; $79fa: $ff
    rst $38                                       ; $79fb: $ff
    rst $38                                       ; $79fc: $ff
    rst $38                                       ; $79fd: $ff
    rst $38                                       ; $79fe: $ff
    rst $38                                       ; $79ff: $ff
    rst $38                                       ; $7a00: $ff
    rst $38                                       ; $7a01: $ff
    rst $38                                       ; $7a02: $ff
    rst $38                                       ; $7a03: $ff
    rst $38                                       ; $7a04: $ff
    rst $38                                       ; $7a05: $ff
    rst $38                                       ; $7a06: $ff
    rst $38                                       ; $7a07: $ff
    rst $38                                       ; $7a08: $ff
    rst $38                                       ; $7a09: $ff
    rst $38                                       ; $7a0a: $ff
    rst $38                                       ; $7a0b: $ff
    rst $38                                       ; $7a0c: $ff
    rst $38                                       ; $7a0d: $ff
    rst $38                                       ; $7a0e: $ff
    rst $38                                       ; $7a0f: $ff
    rst $38                                       ; $7a10: $ff
    rst $38                                       ; $7a11: $ff
    rst $38                                       ; $7a12: $ff
    rst $38                                       ; $7a13: $ff
    rst $38                                       ; $7a14: $ff
    rst $38                                       ; $7a15: $ff
    rst $38                                       ; $7a16: $ff
    rst $38                                       ; $7a17: $ff
    rst $38                                       ; $7a18: $ff
    rst $38                                       ; $7a19: $ff
    rst $38                                       ; $7a1a: $ff
    rst $38                                       ; $7a1b: $ff
    rst $38                                       ; $7a1c: $ff
    rst $38                                       ; $7a1d: $ff
    rst $38                                       ; $7a1e: $ff
    rst $38                                       ; $7a1f: $ff
    rst $38                                       ; $7a20: $ff
    rst $38                                       ; $7a21: $ff
    rst $38                                       ; $7a22: $ff
    rst $38                                       ; $7a23: $ff
    rst $38                                       ; $7a24: $ff
    rst $38                                       ; $7a25: $ff
    rst $38                                       ; $7a26: $ff
    rst $38                                       ; $7a27: $ff
    rst $38                                       ; $7a28: $ff
    rst $38                                       ; $7a29: $ff
    rst $38                                       ; $7a2a: $ff
    rst $38                                       ; $7a2b: $ff
    rst $38                                       ; $7a2c: $ff
    rst $38                                       ; $7a2d: $ff
    rst $38                                       ; $7a2e: $ff
    rst $38                                       ; $7a2f: $ff
    rst $38                                       ; $7a30: $ff
    rst $38                                       ; $7a31: $ff
    rst $38                                       ; $7a32: $ff
    rst $38                                       ; $7a33: $ff
    rst $38                                       ; $7a34: $ff
    rst $38                                       ; $7a35: $ff
    rst $38                                       ; $7a36: $ff
    rst $38                                       ; $7a37: $ff
    rst $38                                       ; $7a38: $ff
    rst $38                                       ; $7a39: $ff
    rst $38                                       ; $7a3a: $ff
    rst $38                                       ; $7a3b: $ff
    rst $38                                       ; $7a3c: $ff
    rst $38                                       ; $7a3d: $ff
    rst $38                                       ; $7a3e: $ff
    rst $38                                       ; $7a3f: $ff
    rst $38                                       ; $7a40: $ff
    rst $38                                       ; $7a41: $ff
    rst $38                                       ; $7a42: $ff
    rst $38                                       ; $7a43: $ff
    rst $38                                       ; $7a44: $ff
    rst $38                                       ; $7a45: $ff
    rst $38                                       ; $7a46: $ff
    rst $38                                       ; $7a47: $ff
    rst $38                                       ; $7a48: $ff
    rst $38                                       ; $7a49: $ff
    rst $38                                       ; $7a4a: $ff
    rst $38                                       ; $7a4b: $ff
    rst $38                                       ; $7a4c: $ff
    rst $38                                       ; $7a4d: $ff
    rst $38                                       ; $7a4e: $ff
    rst $38                                       ; $7a4f: $ff

Call_052_7a50:
    rst $38                                       ; $7a50: $ff
    rst $38                                       ; $7a51: $ff
    rst $38                                       ; $7a52: $ff
    rst $38                                       ; $7a53: $ff
    rst $38                                       ; $7a54: $ff
    rst $38                                       ; $7a55: $ff
    rst $38                                       ; $7a56: $ff
    rst $38                                       ; $7a57: $ff
    rst $38                                       ; $7a58: $ff
    rst $38                                       ; $7a59: $ff
    rst $38                                       ; $7a5a: $ff
    rst $38                                       ; $7a5b: $ff
    rst $38                                       ; $7a5c: $ff
    rst $38                                       ; $7a5d: $ff
    rst $38                                       ; $7a5e: $ff
    rst $38                                       ; $7a5f: $ff
    rst $38                                       ; $7a60: $ff
    rst $38                                       ; $7a61: $ff
    rst $38                                       ; $7a62: $ff
    rst $38                                       ; $7a63: $ff
    rst $38                                       ; $7a64: $ff
    rst $38                                       ; $7a65: $ff
    rst $38                                       ; $7a66: $ff
    rst $38                                       ; $7a67: $ff
    rst $38                                       ; $7a68: $ff
    rst $38                                       ; $7a69: $ff
    rst $38                                       ; $7a6a: $ff
    rst $38                                       ; $7a6b: $ff
    rst $38                                       ; $7a6c: $ff
    rst $38                                       ; $7a6d: $ff
    rst $38                                       ; $7a6e: $ff
    rst $38                                       ; $7a6f: $ff
    rst $38                                       ; $7a70: $ff
    rst $38                                       ; $7a71: $ff
    rst $38                                       ; $7a72: $ff
    rst $38                                       ; $7a73: $ff
    rst $38                                       ; $7a74: $ff
    rst $38                                       ; $7a75: $ff
    rst $38                                       ; $7a76: $ff
    rst $38                                       ; $7a77: $ff
    rst $38                                       ; $7a78: $ff
    rst $38                                       ; $7a79: $ff
    rst $38                                       ; $7a7a: $ff
    rst $38                                       ; $7a7b: $ff
    rst $38                                       ; $7a7c: $ff
    rst $38                                       ; $7a7d: $ff
    rst $38                                       ; $7a7e: $ff
    rst $38                                       ; $7a7f: $ff
    rst $38                                       ; $7a80: $ff
    rst $38                                       ; $7a81: $ff
    rst $38                                       ; $7a82: $ff
    rst $38                                       ; $7a83: $ff
    rst $38                                       ; $7a84: $ff
    rst $38                                       ; $7a85: $ff
    rst $38                                       ; $7a86: $ff
    rst $38                                       ; $7a87: $ff
    rst $38                                       ; $7a88: $ff
    rst $38                                       ; $7a89: $ff
    rst $38                                       ; $7a8a: $ff
    rst $38                                       ; $7a8b: $ff
    rst $38                                       ; $7a8c: $ff
    rst $38                                       ; $7a8d: $ff
    rst $38                                       ; $7a8e: $ff
    rst $38                                       ; $7a8f: $ff
    rst $38                                       ; $7a90: $ff
    rst $38                                       ; $7a91: $ff
    rst $38                                       ; $7a92: $ff
    rst $38                                       ; $7a93: $ff
    rst $38                                       ; $7a94: $ff
    rst $38                                       ; $7a95: $ff
    rst $38                                       ; $7a96: $ff
    rst $38                                       ; $7a97: $ff
    rst $38                                       ; $7a98: $ff
    rst $38                                       ; $7a99: $ff
    rst $38                                       ; $7a9a: $ff
    rst $38                                       ; $7a9b: $ff
    rst $38                                       ; $7a9c: $ff

Call_052_7a9d:
    rst $38                                       ; $7a9d: $ff
    rst $38                                       ; $7a9e: $ff
    rst $38                                       ; $7a9f: $ff
    rst $38                                       ; $7aa0: $ff
    rst $38                                       ; $7aa1: $ff
    rst $38                                       ; $7aa2: $ff
    rst $38                                       ; $7aa3: $ff
    rst $38                                       ; $7aa4: $ff
    rst $38                                       ; $7aa5: $ff
    rst $38                                       ; $7aa6: $ff
    rst $38                                       ; $7aa7: $ff
    rst $38                                       ; $7aa8: $ff
    rst $38                                       ; $7aa9: $ff
    rst $38                                       ; $7aaa: $ff
    rst $38                                       ; $7aab: $ff
    rst $38                                       ; $7aac: $ff
    rst $38                                       ; $7aad: $ff
    rst $38                                       ; $7aae: $ff
    rst $38                                       ; $7aaf: $ff
    rst $38                                       ; $7ab0: $ff
    rst $38                                       ; $7ab1: $ff
    rst $38                                       ; $7ab2: $ff
    rst $38                                       ; $7ab3: $ff
    rst $38                                       ; $7ab4: $ff
    rst $38                                       ; $7ab5: $ff
    rst $38                                       ; $7ab6: $ff
    rst $38                                       ; $7ab7: $ff
    rst $38                                       ; $7ab8: $ff
    rst $38                                       ; $7ab9: $ff
    rst $38                                       ; $7aba: $ff
    rst $38                                       ; $7abb: $ff
    rst $38                                       ; $7abc: $ff
    rst $38                                       ; $7abd: $ff
    rst $38                                       ; $7abe: $ff
    rst $38                                       ; $7abf: $ff
    rst $38                                       ; $7ac0: $ff
    rst $38                                       ; $7ac1: $ff
    rst $38                                       ; $7ac2: $ff
    rst $38                                       ; $7ac3: $ff
    rst $38                                       ; $7ac4: $ff
    rst $38                                       ; $7ac5: $ff
    rst $38                                       ; $7ac6: $ff
    rst $38                                       ; $7ac7: $ff
    rst $38                                       ; $7ac8: $ff
    rst $38                                       ; $7ac9: $ff
    rst $38                                       ; $7aca: $ff
    rst $38                                       ; $7acb: $ff
    rst $38                                       ; $7acc: $ff
    rst $38                                       ; $7acd: $ff
    rst $38                                       ; $7ace: $ff
    rst $38                                       ; $7acf: $ff
    rst $38                                       ; $7ad0: $ff
    rst $38                                       ; $7ad1: $ff
    rst $38                                       ; $7ad2: $ff
    rst $38                                       ; $7ad3: $ff
    rst $38                                       ; $7ad4: $ff
    rst $38                                       ; $7ad5: $ff
    rst $38                                       ; $7ad6: $ff
    rst $38                                       ; $7ad7: $ff
    rst $38                                       ; $7ad8: $ff
    rst $38                                       ; $7ad9: $ff
    rst $38                                       ; $7ada: $ff
    rst $38                                       ; $7adb: $ff
    rst $38                                       ; $7adc: $ff
    rst $38                                       ; $7add: $ff
    rst $38                                       ; $7ade: $ff
    rst $38                                       ; $7adf: $ff
    rst $38                                       ; $7ae0: $ff
    rst $38                                       ; $7ae1: $ff
    rst $38                                       ; $7ae2: $ff
    rst $38                                       ; $7ae3: $ff
    rst $38                                       ; $7ae4: $ff
    rst $38                                       ; $7ae5: $ff
    rst $38                                       ; $7ae6: $ff
    rst $38                                       ; $7ae7: $ff
    rst $38                                       ; $7ae8: $ff
    rst $38                                       ; $7ae9: $ff
    rst $38                                       ; $7aea: $ff
    rst $38                                       ; $7aeb: $ff
    rst $38                                       ; $7aec: $ff
    rst $38                                       ; $7aed: $ff
    rst $38                                       ; $7aee: $ff
    rst $38                                       ; $7aef: $ff
    rst $38                                       ; $7af0: $ff
    rst $38                                       ; $7af1: $ff
    rst $38                                       ; $7af2: $ff
    rst $38                                       ; $7af3: $ff
    rst $38                                       ; $7af4: $ff
    rst $38                                       ; $7af5: $ff
    rst $38                                       ; $7af6: $ff
    rst $38                                       ; $7af7: $ff
    rst $38                                       ; $7af8: $ff
    rst $38                                       ; $7af9: $ff
    rst $38                                       ; $7afa: $ff
    rst $38                                       ; $7afb: $ff
    rst $38                                       ; $7afc: $ff
    rst $38                                       ; $7afd: $ff
    rst $38                                       ; $7afe: $ff
    rst $38                                       ; $7aff: $ff
    rst $38                                       ; $7b00: $ff
    rst $38                                       ; $7b01: $ff
    rst $38                                       ; $7b02: $ff
    rst $38                                       ; $7b03: $ff
    rst $38                                       ; $7b04: $ff
    rst $38                                       ; $7b05: $ff
    rst $38                                       ; $7b06: $ff
    rst $38                                       ; $7b07: $ff
    rst $38                                       ; $7b08: $ff
    rst $38                                       ; $7b09: $ff
    rst $38                                       ; $7b0a: $ff
    rst $38                                       ; $7b0b: $ff
    rst $38                                       ; $7b0c: $ff
    rst $38                                       ; $7b0d: $ff
    rst $38                                       ; $7b0e: $ff
    rst $38                                       ; $7b0f: $ff
    rst $38                                       ; $7b10: $ff
    rst $38                                       ; $7b11: $ff
    rst $38                                       ; $7b12: $ff
    rst $38                                       ; $7b13: $ff
    rst $38                                       ; $7b14: $ff
    rst $38                                       ; $7b15: $ff
    rst $38                                       ; $7b16: $ff
    rst $38                                       ; $7b17: $ff
    rst $38                                       ; $7b18: $ff
    rst $38                                       ; $7b19: $ff
    rst $38                                       ; $7b1a: $ff
    rst $38                                       ; $7b1b: $ff
    rst $38                                       ; $7b1c: $ff
    rst $38                                       ; $7b1d: $ff
    rst $38                                       ; $7b1e: $ff
    rst $38                                       ; $7b1f: $ff
    rst $38                                       ; $7b20: $ff
    rst $38                                       ; $7b21: $ff
    rst $38                                       ; $7b22: $ff
    rst $38                                       ; $7b23: $ff
    rst $38                                       ; $7b24: $ff
    rst $38                                       ; $7b25: $ff
    rst $38                                       ; $7b26: $ff
    rst $38                                       ; $7b27: $ff
    rst $38                                       ; $7b28: $ff
    rst $38                                       ; $7b29: $ff
    rst $38                                       ; $7b2a: $ff
    rst $38                                       ; $7b2b: $ff
    rst $38                                       ; $7b2c: $ff
    rst $38                                       ; $7b2d: $ff
    rst $38                                       ; $7b2e: $ff
    rst $38                                       ; $7b2f: $ff
    rst $38                                       ; $7b30: $ff
    rst $38                                       ; $7b31: $ff
    rst $38                                       ; $7b32: $ff

Jump_052_7b33:
    rst $38                                       ; $7b33: $ff
    rst $38                                       ; $7b34: $ff
    rst $38                                       ; $7b35: $ff
    rst $38                                       ; $7b36: $ff
    rst $38                                       ; $7b37: $ff
    rst $38                                       ; $7b38: $ff
    rst $38                                       ; $7b39: $ff
    rst $38                                       ; $7b3a: $ff
    rst $38                                       ; $7b3b: $ff
    rst $38                                       ; $7b3c: $ff
    rst $38                                       ; $7b3d: $ff
    rst $38                                       ; $7b3e: $ff
    rst $38                                       ; $7b3f: $ff
    rst $38                                       ; $7b40: $ff
    rst $38                                       ; $7b41: $ff
    rst $38                                       ; $7b42: $ff
    rst $38                                       ; $7b43: $ff
    rst $38                                       ; $7b44: $ff
    rst $38                                       ; $7b45: $ff
    rst $38                                       ; $7b46: $ff
    rst $38                                       ; $7b47: $ff
    rst $38                                       ; $7b48: $ff
    rst $38                                       ; $7b49: $ff
    rst $38                                       ; $7b4a: $ff
    rst $38                                       ; $7b4b: $ff
    rst $38                                       ; $7b4c: $ff
    rst $38                                       ; $7b4d: $ff
    rst $38                                       ; $7b4e: $ff
    rst $38                                       ; $7b4f: $ff
    rst $38                                       ; $7b50: $ff
    rst $38                                       ; $7b51: $ff
    rst $38                                       ; $7b52: $ff
    rst $38                                       ; $7b53: $ff
    rst $38                                       ; $7b54: $ff
    rst $38                                       ; $7b55: $ff
    rst $38                                       ; $7b56: $ff
    rst $38                                       ; $7b57: $ff
    rst $38                                       ; $7b58: $ff
    rst $38                                       ; $7b59: $ff
    rst $38                                       ; $7b5a: $ff
    rst $38                                       ; $7b5b: $ff
    rst $38                                       ; $7b5c: $ff
    rst $38                                       ; $7b5d: $ff
    rst $38                                       ; $7b5e: $ff
    rst $38                                       ; $7b5f: $ff
    rst $38                                       ; $7b60: $ff
    rst $38                                       ; $7b61: $ff
    rst $38                                       ; $7b62: $ff
    rst $38                                       ; $7b63: $ff
    rst $38                                       ; $7b64: $ff
    rst $38                                       ; $7b65: $ff
    rst $38                                       ; $7b66: $ff
    rst $38                                       ; $7b67: $ff
    rst $38                                       ; $7b68: $ff
    rst $38                                       ; $7b69: $ff
    rst $38                                       ; $7b6a: $ff
    rst $38                                       ; $7b6b: $ff
    rst $38                                       ; $7b6c: $ff
    rst $38                                       ; $7b6d: $ff
    rst $38                                       ; $7b6e: $ff
    rst $38                                       ; $7b6f: $ff
    rst $38                                       ; $7b70: $ff
    rst $38                                       ; $7b71: $ff
    rst $38                                       ; $7b72: $ff
    rst $38                                       ; $7b73: $ff
    rst $38                                       ; $7b74: $ff
    rst $38                                       ; $7b75: $ff
    rst $38                                       ; $7b76: $ff
    rst $38                                       ; $7b77: $ff
    rst $38                                       ; $7b78: $ff
    rst $38                                       ; $7b79: $ff
    rst $38                                       ; $7b7a: $ff
    rst $38                                       ; $7b7b: $ff
    rst $38                                       ; $7b7c: $ff
    rst $38                                       ; $7b7d: $ff
    rst $38                                       ; $7b7e: $ff
    rst $38                                       ; $7b7f: $ff
    rst $38                                       ; $7b80: $ff
    rst $38                                       ; $7b81: $ff
    rst $38                                       ; $7b82: $ff
    rst $38                                       ; $7b83: $ff
    rst $38                                       ; $7b84: $ff
    rst $38                                       ; $7b85: $ff
    rst $38                                       ; $7b86: $ff

Jump_052_7b87:
    rst $38                                       ; $7b87: $ff
    rst $38                                       ; $7b88: $ff
    rst $38                                       ; $7b89: $ff
    rst $38                                       ; $7b8a: $ff
    rst $38                                       ; $7b8b: $ff
    rst $38                                       ; $7b8c: $ff
    rst $38                                       ; $7b8d: $ff
    rst $38                                       ; $7b8e: $ff
    rst $38                                       ; $7b8f: $ff
    rst $38                                       ; $7b90: $ff
    rst $38                                       ; $7b91: $ff
    rst $38                                       ; $7b92: $ff
    rst $38                                       ; $7b93: $ff
    rst $38                                       ; $7b94: $ff
    rst $38                                       ; $7b95: $ff
    rst $38                                       ; $7b96: $ff
    rst $38                                       ; $7b97: $ff
    rst $38                                       ; $7b98: $ff
    rst $38                                       ; $7b99: $ff
    rst $38                                       ; $7b9a: $ff
    rst $38                                       ; $7b9b: $ff
    rst $38                                       ; $7b9c: $ff
    rst $38                                       ; $7b9d: $ff
    rst $38                                       ; $7b9e: $ff
    rst $38                                       ; $7b9f: $ff
    rst $38                                       ; $7ba0: $ff
    rst $38                                       ; $7ba1: $ff
    rst $38                                       ; $7ba2: $ff
    rst $38                                       ; $7ba3: $ff
    rst $38                                       ; $7ba4: $ff
    rst $38                                       ; $7ba5: $ff
    rst $38                                       ; $7ba6: $ff
    rst $38                                       ; $7ba7: $ff
    rst $38                                       ; $7ba8: $ff
    rst $38                                       ; $7ba9: $ff
    rst $38                                       ; $7baa: $ff
    rst $38                                       ; $7bab: $ff
    rst $38                                       ; $7bac: $ff
    rst $38                                       ; $7bad: $ff
    rst $38                                       ; $7bae: $ff
    rst $38                                       ; $7baf: $ff
    rst $38                                       ; $7bb0: $ff
    rst $38                                       ; $7bb1: $ff
    rst $38                                       ; $7bb2: $ff
    rst $38                                       ; $7bb3: $ff
    rst $38                                       ; $7bb4: $ff
    rst $38                                       ; $7bb5: $ff
    rst $38                                       ; $7bb6: $ff
    rst $38                                       ; $7bb7: $ff
    rst $38                                       ; $7bb8: $ff
    rst $38                                       ; $7bb9: $ff
    rst $38                                       ; $7bba: $ff
    rst $38                                       ; $7bbb: $ff
    rst $38                                       ; $7bbc: $ff
    rst $38                                       ; $7bbd: $ff
    rst $38                                       ; $7bbe: $ff
    rst $38                                       ; $7bbf: $ff
    rst $38                                       ; $7bc0: $ff
    rst $38                                       ; $7bc1: $ff
    rst $38                                       ; $7bc2: $ff
    rst $38                                       ; $7bc3: $ff
    rst $38                                       ; $7bc4: $ff
    rst $38                                       ; $7bc5: $ff
    rst $38                                       ; $7bc6: $ff
    rst $38                                       ; $7bc7: $ff
    rst $38                                       ; $7bc8: $ff
    rst $38                                       ; $7bc9: $ff
    rst $38                                       ; $7bca: $ff
    rst $38                                       ; $7bcb: $ff
    rst $38                                       ; $7bcc: $ff
    rst $38                                       ; $7bcd: $ff
    rst $38                                       ; $7bce: $ff
    rst $38                                       ; $7bcf: $ff
    rst $38                                       ; $7bd0: $ff
    rst $38                                       ; $7bd1: $ff
    rst $38                                       ; $7bd2: $ff
    rst $38                                       ; $7bd3: $ff
    rst $38                                       ; $7bd4: $ff
    rst $38                                       ; $7bd5: $ff
    rst $38                                       ; $7bd6: $ff
    rst $38                                       ; $7bd7: $ff
    rst $38                                       ; $7bd8: $ff
    rst $38                                       ; $7bd9: $ff
    rst $38                                       ; $7bda: $ff
    rst $38                                       ; $7bdb: $ff
    rst $38                                       ; $7bdc: $ff
    rst $38                                       ; $7bdd: $ff
    rst $38                                       ; $7bde: $ff
    rst $38                                       ; $7bdf: $ff
    rst $38                                       ; $7be0: $ff
    rst $38                                       ; $7be1: $ff
    rst $38                                       ; $7be2: $ff
    rst $38                                       ; $7be3: $ff
    rst $38                                       ; $7be4: $ff
    rst $38                                       ; $7be5: $ff
    rst $38                                       ; $7be6: $ff
    rst $38                                       ; $7be7: $ff
    rst $38                                       ; $7be8: $ff
    rst $38                                       ; $7be9: $ff
    rst $38                                       ; $7bea: $ff
    rst $38                                       ; $7beb: $ff
    rst $38                                       ; $7bec: $ff
    rst $38                                       ; $7bed: $ff
    rst $38                                       ; $7bee: $ff
    rst $38                                       ; $7bef: $ff
    rst $38                                       ; $7bf0: $ff
    rst $38                                       ; $7bf1: $ff
    rst $38                                       ; $7bf2: $ff
    rst $38                                       ; $7bf3: $ff
    rst $38                                       ; $7bf4: $ff
    rst $38                                       ; $7bf5: $ff
    rst $38                                       ; $7bf6: $ff
    rst $38                                       ; $7bf7: $ff
    rst $38                                       ; $7bf8: $ff
    rst $38                                       ; $7bf9: $ff
    rst $38                                       ; $7bfa: $ff
    rst $38                                       ; $7bfb: $ff
    rst $38                                       ; $7bfc: $ff
    rst $38                                       ; $7bfd: $ff
    rst $38                                       ; $7bfe: $ff
    rst $38                                       ; $7bff: $ff
    rst $38                                       ; $7c00: $ff
    rst $38                                       ; $7c01: $ff
    rst $38                                       ; $7c02: $ff
    rst $38                                       ; $7c03: $ff
    rst $38                                       ; $7c04: $ff
    rst $38                                       ; $7c05: $ff
    rst $38                                       ; $7c06: $ff
    rst $38                                       ; $7c07: $ff
    rst $38                                       ; $7c08: $ff
    rst $38                                       ; $7c09: $ff
    rst $38                                       ; $7c0a: $ff
    rst $38                                       ; $7c0b: $ff
    rst $38                                       ; $7c0c: $ff
    rst $38                                       ; $7c0d: $ff
    rst $38                                       ; $7c0e: $ff
    rst $38                                       ; $7c0f: $ff
    rst $38                                       ; $7c10: $ff
    rst $38                                       ; $7c11: $ff
    rst $38                                       ; $7c12: $ff
    rst $38                                       ; $7c13: $ff
    rst $38                                       ; $7c14: $ff
    rst $38                                       ; $7c15: $ff
    rst $38                                       ; $7c16: $ff
    rst $38                                       ; $7c17: $ff
    rst $38                                       ; $7c18: $ff
    rst $38                                       ; $7c19: $ff
    rst $38                                       ; $7c1a: $ff
    rst $38                                       ; $7c1b: $ff
    rst $38                                       ; $7c1c: $ff
    rst $38                                       ; $7c1d: $ff
    rst $38                                       ; $7c1e: $ff
    rst $38                                       ; $7c1f: $ff
    rst $38                                       ; $7c20: $ff
    rst $38                                       ; $7c21: $ff
    rst $38                                       ; $7c22: $ff
    rst $38                                       ; $7c23: $ff
    rst $38                                       ; $7c24: $ff
    rst $38                                       ; $7c25: $ff
    rst $38                                       ; $7c26: $ff
    rst $38                                       ; $7c27: $ff
    rst $38                                       ; $7c28: $ff
    rst $38                                       ; $7c29: $ff
    rst $38                                       ; $7c2a: $ff
    rst $38                                       ; $7c2b: $ff
    rst $38                                       ; $7c2c: $ff
    rst $38                                       ; $7c2d: $ff
    rst $38                                       ; $7c2e: $ff
    rst $38                                       ; $7c2f: $ff
    rst $38                                       ; $7c30: $ff
    rst $38                                       ; $7c31: $ff
    rst $38                                       ; $7c32: $ff
    rst $38                                       ; $7c33: $ff
    rst $38                                       ; $7c34: $ff
    rst $38                                       ; $7c35: $ff
    rst $38                                       ; $7c36: $ff
    rst $38                                       ; $7c37: $ff
    rst $38                                       ; $7c38: $ff
    rst $38                                       ; $7c39: $ff
    rst $38                                       ; $7c3a: $ff
    rst $38                                       ; $7c3b: $ff
    rst $38                                       ; $7c3c: $ff
    rst $38                                       ; $7c3d: $ff
    rst $38                                       ; $7c3e: $ff
    rst $38                                       ; $7c3f: $ff
    rst $38                                       ; $7c40: $ff
    rst $38                                       ; $7c41: $ff
    rst $38                                       ; $7c42: $ff
    rst $38                                       ; $7c43: $ff
    rst $38                                       ; $7c44: $ff
    rst $38                                       ; $7c45: $ff
    rst $38                                       ; $7c46: $ff
    rst $38                                       ; $7c47: $ff
    rst $38                                       ; $7c48: $ff
    rst $38                                       ; $7c49: $ff
    rst $38                                       ; $7c4a: $ff
    rst $38                                       ; $7c4b: $ff
    rst $38                                       ; $7c4c: $ff
    rst $38                                       ; $7c4d: $ff
    rst $38                                       ; $7c4e: $ff
    rst $38                                       ; $7c4f: $ff
    rst $38                                       ; $7c50: $ff
    rst $38                                       ; $7c51: $ff
    rst $38                                       ; $7c52: $ff
    rst $38                                       ; $7c53: $ff
    rst $38                                       ; $7c54: $ff
    rst $38                                       ; $7c55: $ff
    rst $38                                       ; $7c56: $ff
    rst $38                                       ; $7c57: $ff
    rst $38                                       ; $7c58: $ff
    rst $38                                       ; $7c59: $ff
    rst $38                                       ; $7c5a: $ff
    rst $38                                       ; $7c5b: $ff
    rst $38                                       ; $7c5c: $ff
    rst $38                                       ; $7c5d: $ff
    rst $38                                       ; $7c5e: $ff
    rst $38                                       ; $7c5f: $ff
    rst $38                                       ; $7c60: $ff
    rst $38                                       ; $7c61: $ff
    rst $38                                       ; $7c62: $ff
    rst $38                                       ; $7c63: $ff
    rst $38                                       ; $7c64: $ff
    rst $38                                       ; $7c65: $ff
    rst $38                                       ; $7c66: $ff
    rst $38                                       ; $7c67: $ff
    rst $38                                       ; $7c68: $ff
    rst $38                                       ; $7c69: $ff
    rst $38                                       ; $7c6a: $ff
    rst $38                                       ; $7c6b: $ff
    rst $38                                       ; $7c6c: $ff
    rst $38                                       ; $7c6d: $ff
    rst $38                                       ; $7c6e: $ff
    rst $38                                       ; $7c6f: $ff
    rst $38                                       ; $7c70: $ff
    rst $38                                       ; $7c71: $ff
    rst $38                                       ; $7c72: $ff
    rst $38                                       ; $7c73: $ff
    rst $38                                       ; $7c74: $ff
    rst $38                                       ; $7c75: $ff
    rst $38                                       ; $7c76: $ff
    rst $38                                       ; $7c77: $ff
    rst $38                                       ; $7c78: $ff
    rst $38                                       ; $7c79: $ff
    rst $38                                       ; $7c7a: $ff
    rst $38                                       ; $7c7b: $ff
    rst $38                                       ; $7c7c: $ff
    rst $38                                       ; $7c7d: $ff
    rst $38                                       ; $7c7e: $ff
    rst $38                                       ; $7c7f: $ff
    rst $38                                       ; $7c80: $ff
    rst $38                                       ; $7c81: $ff
    rst $38                                       ; $7c82: $ff
    rst $38                                       ; $7c83: $ff
    rst $38                                       ; $7c84: $ff
    rst $38                                       ; $7c85: $ff
    rst $38                                       ; $7c86: $ff
    rst $38                                       ; $7c87: $ff
    rst $38                                       ; $7c88: $ff
    rst $38                                       ; $7c89: $ff
    rst $38                                       ; $7c8a: $ff
    rst $38                                       ; $7c8b: $ff
    rst $38                                       ; $7c8c: $ff
    rst $38                                       ; $7c8d: $ff
    rst $38                                       ; $7c8e: $ff
    rst $38                                       ; $7c8f: $ff
    rst $38                                       ; $7c90: $ff
    rst $38                                       ; $7c91: $ff
    rst $38                                       ; $7c92: $ff
    rst $38                                       ; $7c93: $ff
    rst $38                                       ; $7c94: $ff
    rst $38                                       ; $7c95: $ff
    rst $38                                       ; $7c96: $ff
    rst $38                                       ; $7c97: $ff
    rst $38                                       ; $7c98: $ff
    rst $38                                       ; $7c99: $ff
    rst $38                                       ; $7c9a: $ff
    rst $38                                       ; $7c9b: $ff
    rst $38                                       ; $7c9c: $ff
    rst $38                                       ; $7c9d: $ff
    rst $38                                       ; $7c9e: $ff
    rst $38                                       ; $7c9f: $ff
    rst $38                                       ; $7ca0: $ff
    rst $38                                       ; $7ca1: $ff
    rst $38                                       ; $7ca2: $ff
    rst $38                                       ; $7ca3: $ff
    rst $38                                       ; $7ca4: $ff
    rst $38                                       ; $7ca5: $ff
    rst $38                                       ; $7ca6: $ff
    rst $38                                       ; $7ca7: $ff
    rst $38                                       ; $7ca8: $ff
    rst $38                                       ; $7ca9: $ff
    rst $38                                       ; $7caa: $ff
    rst $38                                       ; $7cab: $ff
    rst $38                                       ; $7cac: $ff
    rst $38                                       ; $7cad: $ff
    rst $38                                       ; $7cae: $ff
    rst $38                                       ; $7caf: $ff
    rst $38                                       ; $7cb0: $ff
    rst $38                                       ; $7cb1: $ff
    rst $38                                       ; $7cb2: $ff
    rst $38                                       ; $7cb3: $ff
    rst $38                                       ; $7cb4: $ff
    rst $38                                       ; $7cb5: $ff
    rst $38                                       ; $7cb6: $ff
    rst $38                                       ; $7cb7: $ff
    rst $38                                       ; $7cb8: $ff
    rst $38                                       ; $7cb9: $ff
    rst $38                                       ; $7cba: $ff
    rst $38                                       ; $7cbb: $ff
    rst $38                                       ; $7cbc: $ff
    rst $38                                       ; $7cbd: $ff
    rst $38                                       ; $7cbe: $ff
    rst $38                                       ; $7cbf: $ff
    rst $38                                       ; $7cc0: $ff
    rst $38                                       ; $7cc1: $ff
    rst $38                                       ; $7cc2: $ff
    rst $38                                       ; $7cc3: $ff
    rst $38                                       ; $7cc4: $ff
    rst $38                                       ; $7cc5: $ff
    rst $38                                       ; $7cc6: $ff
    rst $38                                       ; $7cc7: $ff
    rst $38                                       ; $7cc8: $ff
    rst $38                                       ; $7cc9: $ff
    rst $38                                       ; $7cca: $ff
    rst $38                                       ; $7ccb: $ff
    rst $38                                       ; $7ccc: $ff
    rst $38                                       ; $7ccd: $ff
    rst $38                                       ; $7cce: $ff
    rst $38                                       ; $7ccf: $ff
    rst $38                                       ; $7cd0: $ff
    rst $38                                       ; $7cd1: $ff
    rst $38                                       ; $7cd2: $ff
    rst $38                                       ; $7cd3: $ff
    rst $38                                       ; $7cd4: $ff
    rst $38                                       ; $7cd5: $ff
    rst $38                                       ; $7cd6: $ff
    rst $38                                       ; $7cd7: $ff
    rst $38                                       ; $7cd8: $ff
    rst $38                                       ; $7cd9: $ff
    rst $38                                       ; $7cda: $ff
    rst $38                                       ; $7cdb: $ff
    rst $38                                       ; $7cdc: $ff
    rst $38                                       ; $7cdd: $ff
    rst $38                                       ; $7cde: $ff
    rst $38                                       ; $7cdf: $ff
    rst $38                                       ; $7ce0: $ff
    rst $38                                       ; $7ce1: $ff
    rst $38                                       ; $7ce2: $ff
    rst $38                                       ; $7ce3: $ff
    rst $38                                       ; $7ce4: $ff
    rst $38                                       ; $7ce5: $ff
    rst $38                                       ; $7ce6: $ff
    rst $38                                       ; $7ce7: $ff
    rst $38                                       ; $7ce8: $ff
    rst $38                                       ; $7ce9: $ff
    rst $38                                       ; $7cea: $ff
    rst $38                                       ; $7ceb: $ff
    rst $38                                       ; $7cec: $ff
    rst $38                                       ; $7ced: $ff
    rst $38                                       ; $7cee: $ff
    rst $38                                       ; $7cef: $ff
    rst $38                                       ; $7cf0: $ff
    rst $38                                       ; $7cf1: $ff
    rst $38                                       ; $7cf2: $ff
    rst $38                                       ; $7cf3: $ff
    rst $38                                       ; $7cf4: $ff
    rst $38                                       ; $7cf5: $ff
    rst $38                                       ; $7cf6: $ff
    rst $38                                       ; $7cf7: $ff
    rst $38                                       ; $7cf8: $ff
    rst $38                                       ; $7cf9: $ff
    rst $38                                       ; $7cfa: $ff
    rst $38                                       ; $7cfb: $ff
    rst $38                                       ; $7cfc: $ff
    rst $38                                       ; $7cfd: $ff
    rst $38                                       ; $7cfe: $ff
    rst $38                                       ; $7cff: $ff
    rst $38                                       ; $7d00: $ff
    rst $38                                       ; $7d01: $ff
    rst $38                                       ; $7d02: $ff
    rst $38                                       ; $7d03: $ff
    rst $38                                       ; $7d04: $ff
    rst $38                                       ; $7d05: $ff
    rst $38                                       ; $7d06: $ff
    rst $38                                       ; $7d07: $ff
    rst $38                                       ; $7d08: $ff
    rst $38                                       ; $7d09: $ff
    rst $38                                       ; $7d0a: $ff
    rst $38                                       ; $7d0b: $ff
    rst $38                                       ; $7d0c: $ff
    rst $38                                       ; $7d0d: $ff
    rst $38                                       ; $7d0e: $ff
    rst $38                                       ; $7d0f: $ff
    rst $38                                       ; $7d10: $ff
    rst $38                                       ; $7d11: $ff
    rst $38                                       ; $7d12: $ff
    rst $38                                       ; $7d13: $ff
    rst $38                                       ; $7d14: $ff
    rst $38                                       ; $7d15: $ff
    rst $38                                       ; $7d16: $ff
    rst $38                                       ; $7d17: $ff
    rst $38                                       ; $7d18: $ff
    rst $38                                       ; $7d19: $ff
    rst $38                                       ; $7d1a: $ff
    rst $38                                       ; $7d1b: $ff
    rst $38                                       ; $7d1c: $ff
    rst $38                                       ; $7d1d: $ff
    rst $38                                       ; $7d1e: $ff
    rst $38                                       ; $7d1f: $ff
    rst $38                                       ; $7d20: $ff
    rst $38                                       ; $7d21: $ff
    rst $38                                       ; $7d22: $ff
    rst $38                                       ; $7d23: $ff
    rst $38                                       ; $7d24: $ff
    rst $38                                       ; $7d25: $ff
    rst $38                                       ; $7d26: $ff
    rst $38                                       ; $7d27: $ff
    rst $38                                       ; $7d28: $ff
    rst $38                                       ; $7d29: $ff
    rst $38                                       ; $7d2a: $ff
    rst $38                                       ; $7d2b: $ff
    rst $38                                       ; $7d2c: $ff
    rst $38                                       ; $7d2d: $ff
    rst $38                                       ; $7d2e: $ff
    rst $38                                       ; $7d2f: $ff
    rst $38                                       ; $7d30: $ff
    rst $38                                       ; $7d31: $ff
    rst $38                                       ; $7d32: $ff
    rst $38                                       ; $7d33: $ff
    rst $38                                       ; $7d34: $ff
    rst $38                                       ; $7d35: $ff
    rst $38                                       ; $7d36: $ff
    rst $38                                       ; $7d37: $ff
    rst $38                                       ; $7d38: $ff
    rst $38                                       ; $7d39: $ff
    rst $38                                       ; $7d3a: $ff
    rst $38                                       ; $7d3b: $ff
    rst $38                                       ; $7d3c: $ff
    rst $38                                       ; $7d3d: $ff
    rst $38                                       ; $7d3e: $ff
    rst $38                                       ; $7d3f: $ff
    rst $38                                       ; $7d40: $ff
    rst $38                                       ; $7d41: $ff
    rst $38                                       ; $7d42: $ff
    rst $38                                       ; $7d43: $ff
    rst $38                                       ; $7d44: $ff
    rst $38                                       ; $7d45: $ff
    rst $38                                       ; $7d46: $ff
    rst $38                                       ; $7d47: $ff
    rst $38                                       ; $7d48: $ff
    rst $38                                       ; $7d49: $ff
    rst $38                                       ; $7d4a: $ff
    rst $38                                       ; $7d4b: $ff
    rst $38                                       ; $7d4c: $ff
    rst $38                                       ; $7d4d: $ff
    rst $38                                       ; $7d4e: $ff
    rst $38                                       ; $7d4f: $ff
    rst $38                                       ; $7d50: $ff
    rst $38                                       ; $7d51: $ff
    rst $38                                       ; $7d52: $ff
    rst $38                                       ; $7d53: $ff
    rst $38                                       ; $7d54: $ff
    rst $38                                       ; $7d55: $ff
    rst $38                                       ; $7d56: $ff
    rst $38                                       ; $7d57: $ff
    rst $38                                       ; $7d58: $ff
    rst $38                                       ; $7d59: $ff
    rst $38                                       ; $7d5a: $ff
    rst $38                                       ; $7d5b: $ff
    rst $38                                       ; $7d5c: $ff
    rst $38                                       ; $7d5d: $ff
    rst $38                                       ; $7d5e: $ff
    rst $38                                       ; $7d5f: $ff
    rst $38                                       ; $7d60: $ff
    rst $38                                       ; $7d61: $ff
    rst $38                                       ; $7d62: $ff
    rst $38                                       ; $7d63: $ff
    rst $38                                       ; $7d64: $ff
    rst $38                                       ; $7d65: $ff
    rst $38                                       ; $7d66: $ff
    rst $38                                       ; $7d67: $ff
    rst $38                                       ; $7d68: $ff
    rst $38                                       ; $7d69: $ff
    rst $38                                       ; $7d6a: $ff
    rst $38                                       ; $7d6b: $ff
    rst $38                                       ; $7d6c: $ff
    rst $38                                       ; $7d6d: $ff
    rst $38                                       ; $7d6e: $ff
    rst $38                                       ; $7d6f: $ff
    rst $38                                       ; $7d70: $ff
    rst $38                                       ; $7d71: $ff
    rst $38                                       ; $7d72: $ff
    rst $38                                       ; $7d73: $ff
    rst $38                                       ; $7d74: $ff
    rst $38                                       ; $7d75: $ff
    rst $38                                       ; $7d76: $ff
    rst $38                                       ; $7d77: $ff
    rst $38                                       ; $7d78: $ff
    rst $38                                       ; $7d79: $ff
    rst $38                                       ; $7d7a: $ff
    rst $38                                       ; $7d7b: $ff
    rst $38                                       ; $7d7c: $ff
    rst $38                                       ; $7d7d: $ff
    rst $38                                       ; $7d7e: $ff
    rst $38                                       ; $7d7f: $ff
    rst $38                                       ; $7d80: $ff
    rst $38                                       ; $7d81: $ff
    rst $38                                       ; $7d82: $ff
    rst $38                                       ; $7d83: $ff
    rst $38                                       ; $7d84: $ff
    rst $38                                       ; $7d85: $ff
    rst $38                                       ; $7d86: $ff
    rst $38                                       ; $7d87: $ff
    rst $38                                       ; $7d88: $ff
    rst $38                                       ; $7d89: $ff
    rst $38                                       ; $7d8a: $ff
    rst $38                                       ; $7d8b: $ff
    rst $38                                       ; $7d8c: $ff
    rst $38                                       ; $7d8d: $ff
    rst $38                                       ; $7d8e: $ff
    rst $38                                       ; $7d8f: $ff
    rst $38                                       ; $7d90: $ff
    rst $38                                       ; $7d91: $ff
    rst $38                                       ; $7d92: $ff
    rst $38                                       ; $7d93: $ff
    rst $38                                       ; $7d94: $ff
    rst $38                                       ; $7d95: $ff
    rst $38                                       ; $7d96: $ff
    rst $38                                       ; $7d97: $ff
    rst $38                                       ; $7d98: $ff
    rst $38                                       ; $7d99: $ff
    rst $38                                       ; $7d9a: $ff
    rst $38                                       ; $7d9b: $ff
    rst $38                                       ; $7d9c: $ff
    rst $38                                       ; $7d9d: $ff
    rst $38                                       ; $7d9e: $ff
    rst $38                                       ; $7d9f: $ff
    rst $38                                       ; $7da0: $ff
    rst $38                                       ; $7da1: $ff
    rst $38                                       ; $7da2: $ff
    rst $38                                       ; $7da3: $ff
    rst $38                                       ; $7da4: $ff
    rst $38                                       ; $7da5: $ff
    rst $38                                       ; $7da6: $ff
    rst $38                                       ; $7da7: $ff
    rst $38                                       ; $7da8: $ff
    rst $38                                       ; $7da9: $ff
    rst $38                                       ; $7daa: $ff
    rst $38                                       ; $7dab: $ff
    rst $38                                       ; $7dac: $ff
    rst $38                                       ; $7dad: $ff
    rst $38                                       ; $7dae: $ff
    rst $38                                       ; $7daf: $ff
    rst $38                                       ; $7db0: $ff
    rst $38                                       ; $7db1: $ff
    rst $38                                       ; $7db2: $ff
    rst $38                                       ; $7db3: $ff
    rst $38                                       ; $7db4: $ff
    rst $38                                       ; $7db5: $ff
    rst $38                                       ; $7db6: $ff
    rst $38                                       ; $7db7: $ff
    rst $38                                       ; $7db8: $ff
    rst $38                                       ; $7db9: $ff
    rst $38                                       ; $7dba: $ff
    rst $38                                       ; $7dbb: $ff
    rst $38                                       ; $7dbc: $ff
    rst $38                                       ; $7dbd: $ff
    rst $38                                       ; $7dbe: $ff
    rst $38                                       ; $7dbf: $ff
    rst $38                                       ; $7dc0: $ff
    rst $38                                       ; $7dc1: $ff
    rst $38                                       ; $7dc2: $ff
    rst $38                                       ; $7dc3: $ff
    rst $38                                       ; $7dc4: $ff
    rst $38                                       ; $7dc5: $ff
    rst $38                                       ; $7dc6: $ff
    rst $38                                       ; $7dc7: $ff
    rst $38                                       ; $7dc8: $ff
    rst $38                                       ; $7dc9: $ff
    rst $38                                       ; $7dca: $ff
    rst $38                                       ; $7dcb: $ff
    rst $38                                       ; $7dcc: $ff
    rst $38                                       ; $7dcd: $ff
    rst $38                                       ; $7dce: $ff
    rst $38                                       ; $7dcf: $ff
    rst $38                                       ; $7dd0: $ff
    rst $38                                       ; $7dd1: $ff
    rst $38                                       ; $7dd2: $ff
    rst $38                                       ; $7dd3: $ff
    rst $38                                       ; $7dd4: $ff
    rst $38                                       ; $7dd5: $ff
    rst $38                                       ; $7dd6: $ff
    rst $38                                       ; $7dd7: $ff
    rst $38                                       ; $7dd8: $ff
    rst $38                                       ; $7dd9: $ff
    rst $38                                       ; $7dda: $ff
    rst $38                                       ; $7ddb: $ff
    rst $38                                       ; $7ddc: $ff
    rst $38                                       ; $7ddd: $ff
    rst $38                                       ; $7dde: $ff
    rst $38                                       ; $7ddf: $ff
    rst $38                                       ; $7de0: $ff
    rst $38                                       ; $7de1: $ff
    rst $38                                       ; $7de2: $ff
    rst $38                                       ; $7de3: $ff
    rst $38                                       ; $7de4: $ff
    rst $38                                       ; $7de5: $ff
    rst $38                                       ; $7de6: $ff
    rst $38                                       ; $7de7: $ff
    rst $38                                       ; $7de8: $ff
    rst $38                                       ; $7de9: $ff
    rst $38                                       ; $7dea: $ff
    rst $38                                       ; $7deb: $ff
    rst $38                                       ; $7dec: $ff
    rst $38                                       ; $7ded: $ff
    rst $38                                       ; $7dee: $ff
    rst $38                                       ; $7def: $ff
    rst $38                                       ; $7df0: $ff
    rst $38                                       ; $7df1: $ff
    rst $38                                       ; $7df2: $ff
    rst $38                                       ; $7df3: $ff
    rst $38                                       ; $7df4: $ff
    rst $38                                       ; $7df5: $ff
    rst $38                                       ; $7df6: $ff
    rst $38                                       ; $7df7: $ff
    rst $38                                       ; $7df8: $ff
    rst $38                                       ; $7df9: $ff
    rst $38                                       ; $7dfa: $ff
    rst $38                                       ; $7dfb: $ff
    rst $38                                       ; $7dfc: $ff
    rst $38                                       ; $7dfd: $ff
    rst $38                                       ; $7dfe: $ff
    rst $38                                       ; $7dff: $ff
    rst $38                                       ; $7e00: $ff
    rst $38                                       ; $7e01: $ff
    rst $38                                       ; $7e02: $ff
    rst $38                                       ; $7e03: $ff
    rst $38                                       ; $7e04: $ff
    rst $38                                       ; $7e05: $ff
    rst $38                                       ; $7e06: $ff
    rst $38                                       ; $7e07: $ff
    rst $38                                       ; $7e08: $ff
    rst $38                                       ; $7e09: $ff
    rst $38                                       ; $7e0a: $ff
    rst $38                                       ; $7e0b: $ff
    rst $38                                       ; $7e0c: $ff
    rst $38                                       ; $7e0d: $ff
    rst $38                                       ; $7e0e: $ff
    rst $38                                       ; $7e0f: $ff
    rst $38                                       ; $7e10: $ff
    rst $38                                       ; $7e11: $ff
    rst $38                                       ; $7e12: $ff

Call_052_7e13:
    rst $38                                       ; $7e13: $ff
    rst $38                                       ; $7e14: $ff
    rst $38                                       ; $7e15: $ff
    rst $38                                       ; $7e16: $ff
    rst $38                                       ; $7e17: $ff
    rst $38                                       ; $7e18: $ff
    rst $38                                       ; $7e19: $ff
    rst $38                                       ; $7e1a: $ff
    rst $38                                       ; $7e1b: $ff
    rst $38                                       ; $7e1c: $ff
    rst $38                                       ; $7e1d: $ff
    rst $38                                       ; $7e1e: $ff
    rst $38                                       ; $7e1f: $ff
    rst $38                                       ; $7e20: $ff
    rst $38                                       ; $7e21: $ff
    rst $38                                       ; $7e22: $ff
    rst $38                                       ; $7e23: $ff
    rst $38                                       ; $7e24: $ff
    rst $38                                       ; $7e25: $ff
    rst $38                                       ; $7e26: $ff
    rst $38                                       ; $7e27: $ff
    rst $38                                       ; $7e28: $ff
    rst $38                                       ; $7e29: $ff
    rst $38                                       ; $7e2a: $ff
    rst $38                                       ; $7e2b: $ff
    rst $38                                       ; $7e2c: $ff
    rst $38                                       ; $7e2d: $ff
    rst $38                                       ; $7e2e: $ff
    rst $38                                       ; $7e2f: $ff
    rst $38                                       ; $7e30: $ff
    rst $38                                       ; $7e31: $ff
    rst $38                                       ; $7e32: $ff
    rst $38                                       ; $7e33: $ff
    rst $38                                       ; $7e34: $ff
    rst $38                                       ; $7e35: $ff
    rst $38                                       ; $7e36: $ff
    rst $38                                       ; $7e37: $ff
    rst $38                                       ; $7e38: $ff
    rst $38                                       ; $7e39: $ff
    rst $38                                       ; $7e3a: $ff
    rst $38                                       ; $7e3b: $ff
    rst $38                                       ; $7e3c: $ff
    rst $38                                       ; $7e3d: $ff
    rst $38                                       ; $7e3e: $ff
    rst $38                                       ; $7e3f: $ff
    rst $38                                       ; $7e40: $ff
    rst $38                                       ; $7e41: $ff
    rst $38                                       ; $7e42: $ff
    rst $38                                       ; $7e43: $ff
    rst $38                                       ; $7e44: $ff
    rst $38                                       ; $7e45: $ff
    rst $38                                       ; $7e46: $ff
    rst $38                                       ; $7e47: $ff
    rst $38                                       ; $7e48: $ff
    rst $38                                       ; $7e49: $ff
    rst $38                                       ; $7e4a: $ff
    rst $38                                       ; $7e4b: $ff
    rst $38                                       ; $7e4c: $ff
    rst $38                                       ; $7e4d: $ff
    rst $38                                       ; $7e4e: $ff
    rst $38                                       ; $7e4f: $ff
    rst $38                                       ; $7e50: $ff
    rst $38                                       ; $7e51: $ff
    rst $38                                       ; $7e52: $ff
    rst $38                                       ; $7e53: $ff
    rst $38                                       ; $7e54: $ff
    rst $38                                       ; $7e55: $ff
    rst $38                                       ; $7e56: $ff
    rst $38                                       ; $7e57: $ff
    rst $38                                       ; $7e58: $ff
    rst $38                                       ; $7e59: $ff
    rst $38                                       ; $7e5a: $ff
    rst $38                                       ; $7e5b: $ff
    rst $38                                       ; $7e5c: $ff
    rst $38                                       ; $7e5d: $ff
    rst $38                                       ; $7e5e: $ff
    rst $38                                       ; $7e5f: $ff
    rst $38                                       ; $7e60: $ff
    rst $38                                       ; $7e61: $ff
    rst $38                                       ; $7e62: $ff
    rst $38                                       ; $7e63: $ff
    rst $38                                       ; $7e64: $ff
    rst $38                                       ; $7e65: $ff
    rst $38                                       ; $7e66: $ff
    rst $38                                       ; $7e67: $ff
    rst $38                                       ; $7e68: $ff
    rst $38                                       ; $7e69: $ff
    rst $38                                       ; $7e6a: $ff

Call_052_7e6b:
    rst $38                                       ; $7e6b: $ff
    rst $38                                       ; $7e6c: $ff
    rst $38                                       ; $7e6d: $ff
    rst $38                                       ; $7e6e: $ff
    rst $38                                       ; $7e6f: $ff

Call_052_7e70:
    rst $38                                       ; $7e70: $ff
    rst $38                                       ; $7e71: $ff
    rst $38                                       ; $7e72: $ff
    rst $38                                       ; $7e73: $ff
    rst $38                                       ; $7e74: $ff

Call_052_7e75:
    rst $38                                       ; $7e75: $ff
    rst $38                                       ; $7e76: $ff
    rst $38                                       ; $7e77: $ff
    rst $38                                       ; $7e78: $ff
    rst $38                                       ; $7e79: $ff
    rst $38                                       ; $7e7a: $ff
    rst $38                                       ; $7e7b: $ff
    rst $38                                       ; $7e7c: $ff
    rst $38                                       ; $7e7d: $ff
    rst $38                                       ; $7e7e: $ff
    rst $38                                       ; $7e7f: $ff
    rst $38                                       ; $7e80: $ff
    rst $38                                       ; $7e81: $ff
    rst $38                                       ; $7e82: $ff
    rst $38                                       ; $7e83: $ff
    rst $38                                       ; $7e84: $ff
    rst $38                                       ; $7e85: $ff

Call_052_7e86:
    rst $38                                       ; $7e86: $ff
    rst $38                                       ; $7e87: $ff
    rst $38                                       ; $7e88: $ff
    rst $38                                       ; $7e89: $ff
    rst $38                                       ; $7e8a: $ff
    rst $38                                       ; $7e8b: $ff
    rst $38                                       ; $7e8c: $ff
    rst $38                                       ; $7e8d: $ff
    rst $38                                       ; $7e8e: $ff
    rst $38                                       ; $7e8f: $ff
    rst $38                                       ; $7e90: $ff
    rst $38                                       ; $7e91: $ff
    rst $38                                       ; $7e92: $ff
    rst $38                                       ; $7e93: $ff
    rst $38                                       ; $7e94: $ff
    rst $38                                       ; $7e95: $ff
    rst $38                                       ; $7e96: $ff
    rst $38                                       ; $7e97: $ff
    rst $38                                       ; $7e98: $ff
    rst $38                                       ; $7e99: $ff
    rst $38                                       ; $7e9a: $ff
    rst $38                                       ; $7e9b: $ff
    rst $38                                       ; $7e9c: $ff
    rst $38                                       ; $7e9d: $ff
    rst $38                                       ; $7e9e: $ff
    rst $38                                       ; $7e9f: $ff
    rst $38                                       ; $7ea0: $ff
    rst $38                                       ; $7ea1: $ff
    rst $38                                       ; $7ea2: $ff
    rst $38                                       ; $7ea3: $ff
    rst $38                                       ; $7ea4: $ff
    rst $38                                       ; $7ea5: $ff
    rst $38                                       ; $7ea6: $ff
    rst $38                                       ; $7ea7: $ff
    rst $38                                       ; $7ea8: $ff
    rst $38                                       ; $7ea9: $ff
    rst $38                                       ; $7eaa: $ff
    rst $38                                       ; $7eab: $ff
    rst $38                                       ; $7eac: $ff
    rst $38                                       ; $7ead: $ff
    rst $38                                       ; $7eae: $ff
    rst $38                                       ; $7eaf: $ff
    rst $38                                       ; $7eb0: $ff
    rst $38                                       ; $7eb1: $ff
    rst $38                                       ; $7eb2: $ff
    rst $38                                       ; $7eb3: $ff
    rst $38                                       ; $7eb4: $ff
    rst $38                                       ; $7eb5: $ff
    rst $38                                       ; $7eb6: $ff
    rst $38                                       ; $7eb7: $ff
    rst $38                                       ; $7eb8: $ff
    rst $38                                       ; $7eb9: $ff
    rst $38                                       ; $7eba: $ff
    rst $38                                       ; $7ebb: $ff
    rst $38                                       ; $7ebc: $ff
    rst $38                                       ; $7ebd: $ff
    rst $38                                       ; $7ebe: $ff
    rst $38                                       ; $7ebf: $ff
    rst $38                                       ; $7ec0: $ff
    rst $38                                       ; $7ec1: $ff
    rst $38                                       ; $7ec2: $ff
    rst $38                                       ; $7ec3: $ff
    rst $38                                       ; $7ec4: $ff
    rst $38                                       ; $7ec5: $ff
    rst $38                                       ; $7ec6: $ff
    rst $38                                       ; $7ec7: $ff
    rst $38                                       ; $7ec8: $ff
    rst $38                                       ; $7ec9: $ff
    rst $38                                       ; $7eca: $ff
    rst $38                                       ; $7ecb: $ff
    rst $38                                       ; $7ecc: $ff
    rst $38                                       ; $7ecd: $ff
    rst $38                                       ; $7ece: $ff
    rst $38                                       ; $7ecf: $ff
    rst $38                                       ; $7ed0: $ff
    rst $38                                       ; $7ed1: $ff
    rst $38                                       ; $7ed2: $ff
    rst $38                                       ; $7ed3: $ff
    rst $38                                       ; $7ed4: $ff
    rst $38                                       ; $7ed5: $ff
    rst $38                                       ; $7ed6: $ff
    rst $38                                       ; $7ed7: $ff
    rst $38                                       ; $7ed8: $ff
    rst $38                                       ; $7ed9: $ff
    rst $38                                       ; $7eda: $ff
    rst $38                                       ; $7edb: $ff
    rst $38                                       ; $7edc: $ff
    rst $38                                       ; $7edd: $ff
    rst $38                                       ; $7ede: $ff
    rst $38                                       ; $7edf: $ff
    rst $38                                       ; $7ee0: $ff
    rst $38                                       ; $7ee1: $ff
    rst $38                                       ; $7ee2: $ff
    rst $38                                       ; $7ee3: $ff
    rst $38                                       ; $7ee4: $ff
    rst $38                                       ; $7ee5: $ff
    rst $38                                       ; $7ee6: $ff
    rst $38                                       ; $7ee7: $ff
    rst $38                                       ; $7ee8: $ff
    rst $38                                       ; $7ee9: $ff
    rst $38                                       ; $7eea: $ff
    rst $38                                       ; $7eeb: $ff
    rst $38                                       ; $7eec: $ff
    rst $38                                       ; $7eed: $ff
    rst $38                                       ; $7eee: $ff
    rst $38                                       ; $7eef: $ff
    rst $38                                       ; $7ef0: $ff
    rst $38                                       ; $7ef1: $ff
    rst $38                                       ; $7ef2: $ff
    rst $38                                       ; $7ef3: $ff
    rst $38                                       ; $7ef4: $ff
    rst $38                                       ; $7ef5: $ff
    rst $38                                       ; $7ef6: $ff
    rst $38                                       ; $7ef7: $ff
    rst $38                                       ; $7ef8: $ff
    rst $38                                       ; $7ef9: $ff
    rst $38                                       ; $7efa: $ff
    rst $38                                       ; $7efb: $ff
    rst $38                                       ; $7efc: $ff
    rst $38                                       ; $7efd: $ff
    rst $38                                       ; $7efe: $ff
    rst $38                                       ; $7eff: $ff
    rst $38                                       ; $7f00: $ff
    rst $38                                       ; $7f01: $ff
    rst $38                                       ; $7f02: $ff
    rst $38                                       ; $7f03: $ff
    rst $38                                       ; $7f04: $ff
    rst $38                                       ; $7f05: $ff
    rst $38                                       ; $7f06: $ff
    rst $38                                       ; $7f07: $ff
    rst $38                                       ; $7f08: $ff
    rst $38                                       ; $7f09: $ff
    rst $38                                       ; $7f0a: $ff
    rst $38                                       ; $7f0b: $ff
    rst $38                                       ; $7f0c: $ff
    rst $38                                       ; $7f0d: $ff
    rst $38                                       ; $7f0e: $ff
    rst $38                                       ; $7f0f: $ff
    rst $38                                       ; $7f10: $ff
    rst $38                                       ; $7f11: $ff
    rst $38                                       ; $7f12: $ff
    rst $38                                       ; $7f13: $ff
    rst $38                                       ; $7f14: $ff
    rst $38                                       ; $7f15: $ff
    rst $38                                       ; $7f16: $ff
    rst $38                                       ; $7f17: $ff
    rst $38                                       ; $7f18: $ff
    rst $38                                       ; $7f19: $ff
    rst $38                                       ; $7f1a: $ff
    rst $38                                       ; $7f1b: $ff
    rst $38                                       ; $7f1c: $ff
    rst $38                                       ; $7f1d: $ff
    rst $38                                       ; $7f1e: $ff
    rst $38                                       ; $7f1f: $ff
    rst $38                                       ; $7f20: $ff
    rst $38                                       ; $7f21: $ff
    rst $38                                       ; $7f22: $ff
    rst $38                                       ; $7f23: $ff
    rst $38                                       ; $7f24: $ff
    rst $38                                       ; $7f25: $ff
    rst $38                                       ; $7f26: $ff
    rst $38                                       ; $7f27: $ff
    rst $38                                       ; $7f28: $ff
    rst $38                                       ; $7f29: $ff
    rst $38                                       ; $7f2a: $ff
    rst $38                                       ; $7f2b: $ff
    rst $38                                       ; $7f2c: $ff
    rst $38                                       ; $7f2d: $ff
    rst $38                                       ; $7f2e: $ff
    rst $38                                       ; $7f2f: $ff
    rst $38                                       ; $7f30: $ff
    rst $38                                       ; $7f31: $ff
    rst $38                                       ; $7f32: $ff
    rst $38                                       ; $7f33: $ff
    rst $38                                       ; $7f34: $ff
    rst $38                                       ; $7f35: $ff
    rst $38                                       ; $7f36: $ff
    rst $38                                       ; $7f37: $ff
    rst $38                                       ; $7f38: $ff
    rst $38                                       ; $7f39: $ff
    rst $38                                       ; $7f3a: $ff
    rst $38                                       ; $7f3b: $ff
    rst $38                                       ; $7f3c: $ff
    rst $38                                       ; $7f3d: $ff
    rst $38                                       ; $7f3e: $ff
    rst $38                                       ; $7f3f: $ff
    rst $38                                       ; $7f40: $ff
    rst $38                                       ; $7f41: $ff
    rst $38                                       ; $7f42: $ff
    rst $38                                       ; $7f43: $ff
    rst $38                                       ; $7f44: $ff
    rst $38                                       ; $7f45: $ff
    rst $38                                       ; $7f46: $ff
    rst $38                                       ; $7f47: $ff
    rst $38                                       ; $7f48: $ff
    rst $38                                       ; $7f49: $ff
    rst $38                                       ; $7f4a: $ff
    rst $38                                       ; $7f4b: $ff
    rst $38                                       ; $7f4c: $ff
    rst $38                                       ; $7f4d: $ff
    rst $38                                       ; $7f4e: $ff
    rst $38                                       ; $7f4f: $ff
    rst $38                                       ; $7f50: $ff
    rst $38                                       ; $7f51: $ff
    rst $38                                       ; $7f52: $ff
    rst $38                                       ; $7f53: $ff
    rst $38                                       ; $7f54: $ff
    rst $38                                       ; $7f55: $ff
    rst $38                                       ; $7f56: $ff
    rst $38                                       ; $7f57: $ff
    rst $38                                       ; $7f58: $ff
    rst $38                                       ; $7f59: $ff
    rst $38                                       ; $7f5a: $ff
    rst $38                                       ; $7f5b: $ff
    rst $38                                       ; $7f5c: $ff
    rst $38                                       ; $7f5d: $ff
    rst $38                                       ; $7f5e: $ff
    rst $38                                       ; $7f5f: $ff
    rst $38                                       ; $7f60: $ff
    rst $38                                       ; $7f61: $ff
    rst $38                                       ; $7f62: $ff
    rst $38                                       ; $7f63: $ff
    rst $38                                       ; $7f64: $ff
    rst $38                                       ; $7f65: $ff
    rst $38                                       ; $7f66: $ff
    rst $38                                       ; $7f67: $ff
    rst $38                                       ; $7f68: $ff
    rst $38                                       ; $7f69: $ff
    rst $38                                       ; $7f6a: $ff
    rst $38                                       ; $7f6b: $ff
    rst $38                                       ; $7f6c: $ff
    rst $38                                       ; $7f6d: $ff
    rst $38                                       ; $7f6e: $ff
    rst $38                                       ; $7f6f: $ff

Jump_052_7f70:
    rst $38                                       ; $7f70: $ff
    rst $38                                       ; $7f71: $ff
    rst $38                                       ; $7f72: $ff
    rst $38                                       ; $7f73: $ff
    rst $38                                       ; $7f74: $ff
    rst $38                                       ; $7f75: $ff
    rst $38                                       ; $7f76: $ff
    rst $38                                       ; $7f77: $ff
    rst $38                                       ; $7f78: $ff
    rst $38                                       ; $7f79: $ff
    rst $38                                       ; $7f7a: $ff
    rst $38                                       ; $7f7b: $ff
    rst $38                                       ; $7f7c: $ff
    rst $38                                       ; $7f7d: $ff
    rst $38                                       ; $7f7e: $ff
    rst $38                                       ; $7f7f: $ff
    rst $38                                       ; $7f80: $ff
    rst $38                                       ; $7f81: $ff
    rst $38                                       ; $7f82: $ff
    rst $38                                       ; $7f83: $ff
    rst $38                                       ; $7f84: $ff
    rst $38                                       ; $7f85: $ff
    rst $38                                       ; $7f86: $ff
    rst $38                                       ; $7f87: $ff
    rst $38                                       ; $7f88: $ff
    rst $38                                       ; $7f89: $ff
    rst $38                                       ; $7f8a: $ff
    rst $38                                       ; $7f8b: $ff
    rst $38                                       ; $7f8c: $ff
    rst $38                                       ; $7f8d: $ff
    rst $38                                       ; $7f8e: $ff
    rst $38                                       ; $7f8f: $ff
    rst $38                                       ; $7f90: $ff
    rst $38                                       ; $7f91: $ff
    rst $38                                       ; $7f92: $ff
    rst $38                                       ; $7f93: $ff
    rst $38                                       ; $7f94: $ff
    rst $38                                       ; $7f95: $ff
    rst $38                                       ; $7f96: $ff
    rst $38                                       ; $7f97: $ff
    rst $38                                       ; $7f98: $ff
    rst $38                                       ; $7f99: $ff
    rst $38                                       ; $7f9a: $ff
    rst $38                                       ; $7f9b: $ff
    rst $38                                       ; $7f9c: $ff
    rst $38                                       ; $7f9d: $ff
    rst $38                                       ; $7f9e: $ff
    rst $38                                       ; $7f9f: $ff
    rst $38                                       ; $7fa0: $ff
    rst $38                                       ; $7fa1: $ff
    rst $38                                       ; $7fa2: $ff
    rst $38                                       ; $7fa3: $ff
    rst $38                                       ; $7fa4: $ff
    rst $38                                       ; $7fa5: $ff
    rst $38                                       ; $7fa6: $ff
    rst $38                                       ; $7fa7: $ff
    rst $38                                       ; $7fa8: $ff
    rst $38                                       ; $7fa9: $ff
    rst $38                                       ; $7faa: $ff
    rst $38                                       ; $7fab: $ff
    rst $38                                       ; $7fac: $ff
    rst $38                                       ; $7fad: $ff
    rst $38                                       ; $7fae: $ff
    rst $38                                       ; $7faf: $ff
    rst $38                                       ; $7fb0: $ff
    rst $38                                       ; $7fb1: $ff
    rst $38                                       ; $7fb2: $ff
    rst $38                                       ; $7fb3: $ff
    rst $38                                       ; $7fb4: $ff
    rst $38                                       ; $7fb5: $ff
    rst $38                                       ; $7fb6: $ff
    rst $38                                       ; $7fb7: $ff
    rst $38                                       ; $7fb8: $ff
    rst $38                                       ; $7fb9: $ff
    rst $38                                       ; $7fba: $ff
    rst $38                                       ; $7fbb: $ff
    rst $38                                       ; $7fbc: $ff
    rst $38                                       ; $7fbd: $ff
    rst $38                                       ; $7fbe: $ff
    rst $38                                       ; $7fbf: $ff
    rst $38                                       ; $7fc0: $ff
    rst $38                                       ; $7fc1: $ff
    rst $38                                       ; $7fc2: $ff
    rst $38                                       ; $7fc3: $ff
    rst $38                                       ; $7fc4: $ff
    rst $38                                       ; $7fc5: $ff
    rst $38                                       ; $7fc6: $ff
    rst $38                                       ; $7fc7: $ff
    rst $38                                       ; $7fc8: $ff
    rst $38                                       ; $7fc9: $ff
    rst $38                                       ; $7fca: $ff
    rst $38                                       ; $7fcb: $ff
    rst $38                                       ; $7fcc: $ff
    rst $38                                       ; $7fcd: $ff
    rst $38                                       ; $7fce: $ff
    rst $38                                       ; $7fcf: $ff
    rst $38                                       ; $7fd0: $ff
    rst $38                                       ; $7fd1: $ff
    rst $38                                       ; $7fd2: $ff
    rst $38                                       ; $7fd3: $ff
    rst $38                                       ; $7fd4: $ff
    rst $38                                       ; $7fd5: $ff
    rst $38                                       ; $7fd6: $ff
    rst $38                                       ; $7fd7: $ff
    rst $38                                       ; $7fd8: $ff
    rst $38                                       ; $7fd9: $ff
    rst $38                                       ; $7fda: $ff
    rst $38                                       ; $7fdb: $ff
    rst $38                                       ; $7fdc: $ff
    rst $38                                       ; $7fdd: $ff
    rst $38                                       ; $7fde: $ff
    rst $38                                       ; $7fdf: $ff
    rst $38                                       ; $7fe0: $ff
    rst $38                                       ; $7fe1: $ff
    rst $38                                       ; $7fe2: $ff
    rst $38                                       ; $7fe3: $ff
    rst $38                                       ; $7fe4: $ff
    rst $38                                       ; $7fe5: $ff
    rst $38                                       ; $7fe6: $ff
    rst $38                                       ; $7fe7: $ff
    rst $38                                       ; $7fe8: $ff
    rst $38                                       ; $7fe9: $ff
    rst $38                                       ; $7fea: $ff
    rst $38                                       ; $7feb: $ff
    rst $38                                       ; $7fec: $ff
    rst $38                                       ; $7fed: $ff
    rst $38                                       ; $7fee: $ff
    rst $38                                       ; $7fef: $ff
    rst $38                                       ; $7ff0: $ff

Jump_052_7ff1:
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
