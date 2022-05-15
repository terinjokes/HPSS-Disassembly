; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

    db $07

Call_007_4001:
Jump_007_4001:
    ld bc, $804b                                  ; $4001: $01 $4b $80
    nop                                           ; $4004: $00
    nop                                           ; $4005: $00
    nop                                           ; $4006: $00
    xor d                                         ; $4007: $aa
    inc h                                         ; $4008: $24
    ld bc, $0002                                  ; $4009: $01 $02 $00
    ld bc, $0801                                  ; $400c: $01 $01 $08
    nop                                           ; $400f: $00
    nop                                           ; $4010: $00
    nop                                           ; $4011: $00
    inc b                                         ; $4012: $04
    inc b                                         ; $4013: $04
    ld bc, $0101                                  ; $4014: $01 $01 $01
    nop                                           ; $4017: $00
    nop                                           ; $4018: $00
    ld hl, $4001                                  ; $4019: $21 $01 $40
    jp Jump_000_2837                              ; $401c: $c3 $37 $28


    ld a, $06                                     ; $401f: $3e $06
    ldh [$c1], a                                  ; $4021: $e0 $c1
    ld a, $05                                     ; $4023: $3e $05
    ldh [$bd], a                                  ; $4025: $e0 $bd
    ld a, $53                                     ; $4027: $3e $53
    ldh [$be], a                                  ; $4029: $e0 $be
    call Call_000_34b5                            ; $402b: $cd $b5 $34
    xor a                                         ; $402e: $af
    ld [$cb45], a                                 ; $402f: $ea $45 $cb
    ld [$cb46], a                                 ; $4032: $ea $46 $cb
    ld hl, $ff90                                  ; $4035: $21 $90 $ff
    ld [hl], $04                                  ; $4038: $36 $04
    inc hl                                        ; $403a: $23
    ld [hl], $00                                  ; $403b: $36 $00
    ld a, $0e                                     ; $403d: $3e $0e
    ldh [$c1], a                                  ; $403f: $e0 $c1
    ld a, $0f                                     ; $4041: $3e $0f
    ldh [$bd], a                                  ; $4043: $e0 $bd
    ld a, $25                                     ; $4045: $3e $25
    ldh [$be], a                                  ; $4047: $e0 $be
    call Call_000_34ba                            ; $4049: $cd $ba $34
    ld hl, $ffb8                                  ; $404c: $21 $b8 $ff
    ld [hl], $00                                  ; $404f: $36 $00
    inc hl                                        ; $4051: $23
    ld [hl], $00                                  ; $4052: $36 $00
    ld a, $a8                                     ; $4054: $3e $a8
    ldh [$c1], a                                  ; $4056: $e0 $c1
    ld a, $d6                                     ; $4058: $3e $d6
    ldh [$bd], a                                  ; $405a: $e0 $bd
    ld a, $11                                     ; $405c: $3e $11
    ldh [$be], a                                  ; $405e: $e0 $be
    call Call_000_34ba                            ; $4060: $cd $ba $34
    ld a, $08                                     ; $4063: $3e $08
    ld [$cb6c], a                                 ; $4065: $ea $6c $cb
    ld a, $08                                     ; $4068: $3e $08
    ld [$cb6d], a                                 ; $406a: $ea $6d $cb
    xor a                                         ; $406d: $af
    ld [$cb66], a                                 ; $406e: $ea $66 $cb
    ld [$cb67], a                                 ; $4071: $ea $67 $cb
    ldh [$a5], a                                  ; $4074: $e0 $a5
    ld a, $a8                                     ; $4076: $3e $a8
    call Call_000_03a0                            ; $4078: $cd $a0 $03
    ld b, $0c                                     ; $407b: $06 $0c

jr_007_407d:
    ld a, $0c                                     ; $407d: $3e $0c
    sub b                                         ; $407f: $90
    ldh [$9b], a                                  ; $4080: $e0 $9b
    ld a, $a9                                     ; $4082: $3e $a9
    call Call_000_03a0                            ; $4084: $cd $a0 $03
    dec b                                         ; $4087: $05
    jr nz, jr_007_407d                            ; $4088: $20 $f3

    ld a, $03                                     ; $408a: $3e $03
    ldh [$9b], a                                  ; $408c: $e0 $9b
    ld a, $86                                     ; $408e: $3e $86
    call Call_000_03a0                            ; $4090: $cd $a0 $03
    ld hl, $795f                                  ; $4093: $21 $5f $79
    ldh [$c1], a                                  ; $4096: $e0 $c1
    ld a, $6d                                     ; $4098: $3e $6d
    ldh [$bd], a                                  ; $409a: $e0 $bd
    ld a, $7c                                     ; $409c: $3e $7c
    ldh [$be], a                                  ; $409e: $e0 $be
    call Call_000_34a0                            ; $40a0: $cd $a0 $34
    ld a, $21                                     ; $40a3: $3e $21
    call Call_000_395e                            ; $40a5: $cd $5e $39
    ld hl, $ffb8                                  ; $40a8: $21 $b8 $ff
    ld [hl], $00                                  ; $40ab: $36 $00
    inc hl                                        ; $40ad: $23
    ld [hl], $02                                  ; $40ae: $36 $02
    ld b, $06                                     ; $40b0: $06 $06
    ld a, $65                                     ; $40b2: $3e $65
    call Call_000_275f                            ; $40b4: $cd $5f $27

jr_007_40b7:
    push bc                                       ; $40b7: $c5
    push af                                       ; $40b8: $f5
    ldh [$c1], a                                  ; $40b9: $e0 $c1
    ld a, $54                                     ; $40bb: $3e $54
    ldh [$bd], a                                  ; $40bd: $e0 $bd
    ld a, $71                                     ; $40bf: $3e $71
    ldh [$be], a                                  ; $40c1: $e0 $be
    call Call_000_34b5                            ; $40c3: $cd $b5 $34
    pop af                                        ; $40c6: $f1
    pop bc                                        ; $40c7: $c1
    add $1d                                       ; $40c8: $c6 $1d
    cp $65                                        ; $40ca: $fe $65
    jr c, jr_007_40d0                             ; $40cc: $38 $02

    sub $65                                       ; $40ce: $d6 $65

jr_007_40d0:
    dec b                                         ; $40d0: $05
    jr nz, jr_007_40b7                            ; $40d1: $20 $e4

    ret                                           ; $40d3: $c9


    ld a, [$cb46]                                 ; $40d4: $fa $46 $cb
    or a                                          ; $40d7: $b7
    jr nz, jr_007_40ff                            ; $40d8: $20 $25

    ldh a, [$a5]                                  ; $40da: $f0 $a5
    ld e, $ff                                     ; $40dc: $1e $ff
    bit 6, a                                      ; $40de: $cb $77
    jr nz, jr_007_4115                            ; $40e0: $20 $33

    bit 5, a                                      ; $40e2: $cb $6f
    jr nz, jr_007_412e                            ; $40e4: $20 $48

    ld e, $01                                     ; $40e6: $1e $01
    bit 7, a                                      ; $40e8: $cb $7f
    jr nz, jr_007_4115                            ; $40ea: $20 $29

    bit 4, a                                      ; $40ec: $cb $67
    jr nz, jr_007_412e                            ; $40ee: $20 $3e

    ldh a, [$cc]                                  ; $40f0: $f0 $cc
    cp $3e                                        ; $40f2: $fe $3e
    ret nz                                        ; $40f4: $c0

    ldh a, [$a5]                                  ; $40f5: $f0 $a5
    and $02                                       ; $40f7: $e6 $02
    ret z                                         ; $40f9: $c8

    ld a, $3e                                     ; $40fa: $3e $3e
    jp Jump_000_2448                              ; $40fc: $c3 $48 $24


jr_007_40ff:
    ldh a, [$a5]                                  ; $40ff: $f0 $a5
    and $03                                       ; $4101: $e6 $03
    ret z                                         ; $4103: $c8

    ldh a, [$cc]                                  ; $4104: $f0 $cc
    cp $3e                                        ; $4106: $fe $3e
    jp z, Jump_000_2448                           ; $4108: $ca $48 $24

    ld a, $02                                     ; $410b: $3e $02
    ld [$c0bb], a                                 ; $410d: $ea $bb $c0
    ld a, $0b                                     ; $4110: $3e $0b
    jp Jump_000_2448                              ; $4112: $c3 $48 $24


jr_007_4115:
    ld a, [$cb66]                                 ; $4115: $fa $66 $cb
    add e                                         ; $4118: $83
    bit 7, a                                      ; $4119: $cb $7f
    jr z, jr_007_411f                             ; $411b: $28 $02

    ld a, $02                                     ; $411d: $3e $02

jr_007_411f:
    cp $03                                        ; $411f: $fe $03
    jr c, jr_007_4124                             ; $4121: $38 $01

    xor a                                         ; $4123: $af

jr_007_4124:
    ld [$cb66], a                                 ; $4124: $ea $66 $cb
    ld a, $19                                     ; $4127: $3e $19
    call Call_000_393e                            ; $4129: $cd $3e $39
    jr jr_007_413c                                ; $412c: $18 $0e

jr_007_412e:
    ld a, [$cb67]                                 ; $412e: $fa $67 $cb
    add e                                         ; $4131: $83
    and $03                                       ; $4132: $e6 $03
    ld [$cb67], a                                 ; $4134: $ea $67 $cb
    ld a, $19                                     ; $4137: $3e $19
    call Call_000_393e                            ; $4139: $cd $3e $39

jr_007_413c:
    ld a, [$cb66]                                 ; $413c: $fa $66 $cb
    ld hl, $4151                                  ; $413f: $21 $51 $41
    rst $08                                       ; $4142: $cf
    ld [$cb6d], a                                 ; $4143: $ea $6d $cb
    ld a, [$cb67]                                 ; $4146: $fa $67 $cb
    ld hl, $4154                                  ; $4149: $21 $54 $41
    rst $08                                       ; $414c: $cf
    ld [$cb6c], a                                 ; $414d: $ea $6c $cb
    ret                                           ; $4150: $c9


    ld [$5830], sp                                ; $4151: $08 $30 $58
    ld [$5830], sp                                ; $4154: $08 $30 $58
    add b                                         ; $4157: $80
    ld bc, $0601                                  ; $4158: $01 $01 $06
    ld bc, $010b                                  ; $415b: $01 $0b $01
    db $10                                        ; $415e: $10
    ld bc, $0601                                  ; $415f: $01 $01 $06
    ld b, $06                                     ; $4162: $06 $06

Jump_007_4164:
    dec bc                                        ; $4164: $0b
    ld b, $10                                     ; $4165: $06 $10
    ld b, $01                                     ; $4167: $06 $01
    dec bc                                        ; $4169: $0b
    ld b, $0b                                     ; $416a: $06 $0b
    dec bc                                        ; $416c: $0b
    dec bc                                        ; $416d: $0b
    db $10                                        ; $416e: $10
    dec bc                                        ; $416f: $0b
    ld c, $0c                                     ; $4170: $0e $0c
    ld a, [bc]                                    ; $4172: $0a
    ld [$45fa], sp                                ; $4173: $08 $fa $45
    res 6, a                                      ; $4176: $cb $b7
    jr nz, jr_007_419f                            ; $4178: $20 $25

    inc a                                         ; $417a: $3c
    ld [$cb45], a                                 ; $417b: $ea $45 $cb
    xor a                                         ; $417e: $af
    ld [$cb32], a                                 ; $417f: $ea $32 $cb
    ld [$cb35], a                                 ; $4182: $ea $35 $cb
    ld [$cb36], a                                 ; $4185: $ea $36 $cb
    ld [$cb37], a                                 ; $4188: $ea $37 $cb
    ld [$cb38], a                                 ; $418b: $ea $38 $cb
    ld a, $ff                                     ; $418e: $3e $ff
    ld [$cb33], a                                 ; $4190: $ea $33 $cb
    ld [$cb34], a                                 ; $4193: $ea $34 $cb
    ld e, $0c                                     ; $4196: $1e $0c
    ld hl, $cb39                                  ; $4198: $21 $39 $cb

jr_007_419b:
    ld [hl+], a                                   ; $419b: $22
    dec e                                         ; $419c: $1d
    jr nz, jr_007_419b                            ; $419d: $20 $fc

jr_007_419f:
    ld hl, $0001                                  ; $419f: $21 $01 $00
    add hl, bc                                    ; $41a2: $09
    ld d, [hl]                                    ; $41a3: $56

jr_007_41a4:
    ld a, $0c                                     ; $41a4: $3e $0c
    call Call_000_2722                            ; $41a6: $cd $22 $27
    ld e, a                                       ; $41a9: $5f
    ld hl, $cb39                                  ; $41aa: $21 $39 $cb
    rst $08                                       ; $41ad: $cf
    cp $ff                                        ; $41ae: $fe $ff
    jr nz, jr_007_41a4                            ; $41b0: $20 $f2

    ld [hl], d                                    ; $41b2: $72
    ld hl, $0003                                  ; $41b3: $21 $03 $00
    add hl, bc                                    ; $41b6: $09
    ld [hl], e                                    ; $41b7: $73
    ret                                           ; $41b8: $c9


    ld hl, $0003                                  ; $41b9: $21 $03 $00
    add hl, bc                                    ; $41bc: $09
    ld a, [hl]                                    ; $41bd: $7e
    ld hl, $cb39                                  ; $41be: $21 $39 $cb
    rst $08                                       ; $41c1: $cf
    ld [hl], $ff                                  ; $41c2: $36 $ff
    ld hl, $cb38                                  ; $41c4: $21 $38 $cb
    inc [hl]                                      ; $41c7: $34
    ret                                           ; $41c8: $c9


    ld hl, $0003                                  ; $41c9: $21 $03 $00
    add hl, bc                                    ; $41cc: $09
    ld a, [hl]                                    ; $41cd: $7e
    ld hl, $4158                                  ; $41ce: $21 $58 $41
    call Call_000_318c                            ; $41d1: $cd $8c $31
    ld d, [hl]                                    ; $41d4: $56
    inc hl                                        ; $41d5: $23
    ld e, [hl]                                    ; $41d6: $5e
    ld hl, $0006                                  ; $41d7: $21 $06 $00
    add hl, bc                                    ; $41da: $09
    ld [hl], d                                    ; $41db: $72
    inc hl                                        ; $41dc: $23
    ld [hl], $00                                  ; $41dd: $36 $00
    ld hl, $0009                                  ; $41df: $21 $09 $00
    add hl, bc                                    ; $41e2: $09
    ld [hl], e                                    ; $41e3: $73
    inc hl                                        ; $41e4: $23
    ld [hl], $00                                  ; $41e5: $36 $00
    ret                                           ; $41e7: $c9


Call_007_41e8:
    ld a, [$cb36]                                 ; $41e8: $fa $36 $cb
    cp $0a                                        ; $41eb: $fe $0a
    jr c, jr_007_41f2                             ; $41ed: $38 $03

    scf                                           ; $41ef: $37
    jr jr_007_41f9                                ; $41f0: $18 $07

jr_007_41f2:
    ld hl, $4170                                  ; $41f2: $21 $70 $41
    ld a, [$cb37]                                 ; $41f5: $fa $37 $cb
    cp [hl]                                       ; $41f8: $be

jr_007_41f9:
    jp Jump_000_0039                              ; $41f9: $c3 $39 $00


    ld hl, $cb37                                  ; $41fc: $21 $37 $cb
    inc [hl]                                      ; $41ff: $34
    ret                                           ; $4200: $c9


    xor a                                         ; $4201: $af
    ld [$cb37], a                                 ; $4202: $ea $37 $cb
    ld hl, $cb38                                  ; $4205: $21 $38 $cb
    dec [hl]                                      ; $4208: $35
    ret                                           ; $4209: $c9


    ld a, [$cb66]                                 ; $420a: $fa $66 $cb
    add a                                         ; $420d: $87
    add a                                         ; $420e: $87
    ld hl, $cb67                                  ; $420f: $21 $67 $cb
    add [hl]                                      ; $4212: $86
    ld hl, $0003                                  ; $4213: $21 $03 $00
    add hl, bc                                    ; $4216: $09
    cp [hl]                                       ; $4217: $be
    jr nz, jr_007_423b                            ; $4218: $20 $21

    ld hl, $0001                                  ; $421a: $21 $01 $00
    add hl, bc                                    ; $421d: $09
    ld d, [hl]                                    ; $421e: $56
    ld hl, $cb32                                  ; $421f: $21 $32 $cb
    ld a, [hl]                                    ; $4222: $7e
    cp $02                                        ; $4223: $fe $02
    jr nc, jr_007_423b                            ; $4225: $30 $14

    inc [hl]                                      ; $4227: $34
    inc hl                                        ; $4228: $23
    or a                                          ; $4229: $b7
    jr z, jr_007_4234                             ; $422a: $28 $08

    inc hl                                        ; $422c: $23
    push hl                                       ; $422d: $e5
    ld hl, $c3ed                                  ; $422e: $21 $ed $c3
    set 0, [hl]                                   ; $4231: $cb $c6
    pop hl                                        ; $4233: $e1

jr_007_4234:
    ld [hl], d                                    ; $4234: $72
    ld a, $01                                     ; $4235: $3e $01
    or a                                          ; $4237: $b7
    jp Jump_000_0039                              ; $4238: $c3 $39 $00


jr_007_423b:
    xor a                                         ; $423b: $af
    jp Jump_000_0039                              ; $423c: $c3 $39 $00


    ldh [$c1], a                                  ; $423f: $e0 $c1
    ld a, $91                                     ; $4241: $3e $91
    ldh [$bd], a                                  ; $4243: $e0 $bd
    ld a, $7f                                     ; $4245: $3e $7f
    ldh [$be], a                                  ; $4247: $e0 $be
    jp Jump_000_3492                              ; $4249: $c3 $92 $34


    ld hl, $cb35                                  ; $424c: $21 $35 $cb
    inc [hl]                                      ; $424f: $34
    ret                                           ; $4250: $c9


    ld a, [$cb35]                                 ; $4251: $fa $35 $cb
    cp $02                                        ; $4254: $fe $02
    jp Jump_000_0039                              ; $4256: $c3 $39 $00


    ld a, [$cb33]                                 ; $4259: $fa $33 $cb
    srl a                                         ; $425c: $cb $3f
    ld l, a                                       ; $425e: $6f
    ld a, [$cb34]                                 ; $425f: $fa $34 $cb
    srl a                                         ; $4262: $cb $3f
    cp l                                          ; $4264: $bd
    jp Jump_000_0039                              ; $4265: $c3 $39 $00


    ld hl, $cb36                                  ; $4268: $21 $36 $cb
    inc [hl]                                      ; $426b: $34
    ld a, [hl]                                    ; $426c: $7e
    cp $0c                                        ; $426d: $fe $0c
    jp c, Jump_000_0039                           ; $426f: $da $39 $00

    ld a, $02                                     ; $4272: $3e $02
    ld [$cb46], a                                 ; $4274: $ea $46 $cb
    jp Jump_000_0039                              ; $4277: $c3 $39 $00


    push bc                                       ; $427a: $c5
    ld hl, $4016                                  ; $427b: $21 $16 $40
    ld de, $cb29                                  ; $427e: $11 $29 $cb
    call Call_000_124e                            ; $4281: $cd $4e $12
    call Call_000_2e8a                            ; $4284: $cd $8a $2e
    add a                                         ; $4287: $87
    add a                                         ; $4288: $87
    add $00                                       ; $4289: $c6 $00
    ld [de], a                                    ; $428b: $12
    inc de                                        ; $428c: $13
    ld a, $12                                     ; $428d: $3e $12
    ld [de], a                                    ; $428f: $12
    inc de                                        ; $4290: $13
    ld a, $04                                     ; $4291: $3e $04
    ld [de], a                                    ; $4293: $12
    inc de                                        ; $4294: $13
    ld [de], a                                    ; $4295: $12
    inc de                                        ; $4296: $13
    ld hl, $0003                                  ; $4297: $21 $03 $00
    add hl, bc                                    ; $429a: $09
    ld a, [hl]                                    ; $429b: $7e
    ld hl, $4158                                  ; $429c: $21 $58 $41
    call Call_000_319d                            ; $429f: $cd $9d $31
    push hl                                       ; $42a2: $e5
    ld a, l                                       ; $42a3: $7d
    ld [de], a                                    ; $42a4: $12
    inc de                                        ; $42a5: $13
    ld a, h                                       ; $42a6: $7c
    ld [de], a                                    ; $42a7: $12
    ld de, $cb29                                  ; $42a8: $11 $29 $cb
    call Call_000_134e                            ; $42ab: $cd $4e $13
    pop hl                                        ; $42ae: $e1
    pop bc                                        ; $42af: $c1
    ret                                           ; $42b0: $c9


    push bc                                       ; $42b1: $c5
    ld de, $cb29                                  ; $42b2: $11 $29 $cb
    ld hl, $400d                                  ; $42b5: $21 $0d $40
    call Call_000_1242                            ; $42b8: $cd $42 $12
    ld hl, $0003                                  ; $42bb: $21 $03 $00
    add hl, bc                                    ; $42be: $09
    ld a, [hl]                                    ; $42bf: $7e
    push af                                       ; $42c0: $f5
    and $03                                       ; $42c1: $e6 $03
    ld l, a                                       ; $42c3: $6f
    add a                                         ; $42c4: $87
    add a                                         ; $42c5: $87
    add l                                         ; $42c6: $85
    inc a                                         ; $42c7: $3c
    ld [de], a                                    ; $42c8: $12
    inc de                                        ; $42c9: $13
    pop af                                        ; $42ca: $f1
    ld l, a                                       ; $42cb: $6f
    srl l                                         ; $42cc: $cb $3d
    srl l                                         ; $42ce: $cb $3d
    ld a, l                                       ; $42d0: $7d
    add a                                         ; $42d1: $87
    add a                                         ; $42d2: $87
    add l                                         ; $42d3: $85
    inc a                                         ; $42d4: $3c
    ld [de], a                                    ; $42d5: $12
    call Call_000_2e82                            ; $42d6: $cd $82 $2e
    srl a                                         ; $42d9: $cb $3f
    swap a                                        ; $42db: $cb $37
    add $80                                       ; $42dd: $c6 $80
    ld de, $cb2b                                  ; $42df: $11 $2b $cb
    ld [de], a                                    ; $42e2: $12
    ld de, $cb29                                  ; $42e3: $11 $29 $cb
    ldh [$c1], a                                  ; $42e6: $e0 $c1
    ld a, $74                                     ; $42e8: $3e $74
    ldh [$bd], a                                  ; $42ea: $e0 $bd
    ld a, $71                                     ; $42ec: $3e $71
    ldh [$be], a                                  ; $42ee: $e0 $be
    call Call_000_34b5                            ; $42f0: $cd $b5 $34
    pop bc                                        ; $42f3: $c1
    push bc                                       ; $42f4: $c5
    ld hl, $0003                                  ; $42f5: $21 $03 $00
    add hl, bc                                    ; $42f8: $09
    ld a, [hl]                                    ; $42f9: $7e
    ld d, a                                       ; $42fa: $57
    ld hl, $0001                                  ; $42fb: $21 $01 $00
    add hl, bc                                    ; $42fe: $09
    ld a, [hl]                                    ; $42ff: $7e
    srl a                                         ; $4300: $cb $3f
    add $02                                       ; $4302: $c6 $02
    ld b, d                                       ; $4304: $42
    ld c, a                                       ; $4305: $4f
    call Call_007_4312                            ; $4306: $cd $12 $43
    pop bc                                        ; $4309: $c1
    ret                                           ; $430a: $c9


    ld a, [$cb46]                                 ; $430b: $fa $46 $cb
    or a                                          ; $430e: $b7
    jp Jump_000_0039                              ; $430f: $c3 $39 $00


Call_007_4312:
    ldh [$c1], a                                  ; $4312: $e0 $c1
    ld a, $7f                                     ; $4314: $3e $7f
    ldh [$bd], a                                  ; $4316: $e0 $bd
    ld a, $7f                                     ; $4318: $3e $7f
    ldh [$be], a                                  ; $431a: $e0 $be
    jp Jump_000_3492                              ; $431c: $c3 $92 $34


    ld [hl], d                                    ; $431f: $72
    ld bc, $7340                                  ; $4320: $01 $40 $73
    ld bc, $7440                                  ; $4323: $01 $40 $74
    ld bc, $7540                                  ; $4326: $01 $40 $75
    ld bc, $7640                                  ; $4329: $01 $40 $76
    ld bc, $7740                                  ; $432c: $01 $40 $77
    ld bc, $7840                                  ; $432f: $01 $40 $78
    ld bc, $7940                                  ; $4332: $01 $40 $79
    ld bc, $7a40                                  ; $4335: $01 $40 $7a
    ld bc, $7b40                                  ; $4338: $01 $40 $7b
    ld bc, $7c40                                  ; $433b: $01 $40 $7c
    ld bc, $7d40                                  ; $433e: $01 $40 $7d
    ld bc, $7e40                                  ; $4341: $01 $40 $7e
    ld bc, $7f40                                  ; $4344: $01 $40 $7f
    ld bc, $8040                                  ; $4347: $01 $40 $80
    ld bc, $8140                                  ; $434a: $01 $40 $81
    db $01                                        ; $434d: $01
    ld b, b                                       ; $434e: $40

    db $72, $10, $40, $72, $10, $41, $72, $10, $42, $72, $10, $43, $72, $10, $44, $72
    db $10, $45, $72, $10, $46, $72, $10, $47, $72, $10, $48, $72, $10, $49, $72, $10
    db $4a, $72, $10, $4b, $72, $10, $4c, $72, $10, $4d, $72, $10, $4e, $72, $10, $4f
    db $72, $10, $50, $72, $10, $51, $72, $10, $52, $72, $10, $53, $72, $10, $54, $72
    db $10, $55, $72, $10, $56, $72, $10, $57, $72, $10, $58, $72, $10, $59, $72, $10
    db $5a, $72, $10, $5b, $72, $10, $5c, $72, $10, $5d, $72, $10, $5e, $72, $10, $5f

    ld [hl], d                                    ; $43af: $72
    db $10                                        ; $43b0: $10
    ld h, b                                       ; $43b1: $60
    ld [hl], d                                    ; $43b2: $72
    ret nc                                        ; $43b3: $d0

    ld h, c                                       ; $43b4: $61
    ld [hl], d                                    ; $43b5: $72
    sub b                                         ; $43b6: $90
    ld h, e                                       ; $43b7: $63
    ld [hl], d                                    ; $43b8: $72
    ld d, b                                       ; $43b9: $50
    ld h, l                                       ; $43ba: $65
    ld [hl], d                                    ; $43bb: $72
    db $10                                        ; $43bc: $10
    ld h, a                                       ; $43bd: $67
    ld [hl], d                                    ; $43be: $72
    ret nc                                        ; $43bf: $d0

    ld l, b                                       ; $43c0: $68
    ld [hl], d                                    ; $43c1: $72
    sub b                                         ; $43c2: $90
    ld l, d                                       ; $43c3: $6a
    ld [hl], d                                    ; $43c4: $72
    ld d, b                                       ; $43c5: $50
    ld l, h                                       ; $43c6: $6c
    ld [hl], d                                    ; $43c7: $72
    db $10                                        ; $43c8: $10
    ld l, [hl]                                    ; $43c9: $6e
    ld [hl], d                                    ; $43ca: $72
    ret nc                                        ; $43cb: $d0

    ld l, a                                       ; $43cc: $6f
    ld [hl], d                                    ; $43cd: $72
    sub b                                         ; $43ce: $90
    ld [hl], c                                    ; $43cf: $71
    ld [hl], d                                    ; $43d0: $72
    ld d, b                                       ; $43d1: $50
    ld [hl], e                                    ; $43d2: $73
    ld [hl], d                                    ; $43d3: $72
    db $10                                        ; $43d4: $10
    ld [hl], l                                    ; $43d5: $75
    ld [hl], d                                    ; $43d6: $72
    ret nc                                        ; $43d7: $d0

    halt                                          ; $43d8: $76
    ld [hl], d                                    ; $43d9: $72
    sub b                                         ; $43da: $90
    ld a, b                                       ; $43db: $78
    ld [hl], d                                    ; $43dc: $72
    ld d, b                                       ; $43dd: $50
    ld a, d                                       ; $43de: $7a
    ld [hl], d                                    ; $43df: $72
    db $10                                        ; $43e0: $10
    ld a, h                                       ; $43e1: $7c
    ld [hl], d                                    ; $43e2: $72
    ret nc                                        ; $43e3: $d0

    ld a, l                                       ; $43e4: $7d
    ld [hl], e                                    ; $43e5: $73
    db $10                                        ; $43e6: $10
    ld b, b                                       ; $43e7: $40
    ld [hl], e                                    ; $43e8: $73
    ret nc                                        ; $43e9: $d0

    ld b, c                                       ; $43ea: $41
    ld [hl], e                                    ; $43eb: $73
    sub b                                         ; $43ec: $90
    ld b, e                                       ; $43ed: $43
    ld [hl], e                                    ; $43ee: $73
    ld d, b                                       ; $43ef: $50
    ld b, l                                       ; $43f0: $45
    ld [hl], e                                    ; $43f1: $73
    db $10                                        ; $43f2: $10
    ld b, a                                       ; $43f3: $47
    ld [hl], e                                    ; $43f4: $73
    ret nc                                        ; $43f5: $d0

    ld c, b                                       ; $43f6: $48
    ld [hl], e                                    ; $43f7: $73
    sub b                                         ; $43f8: $90
    ld c, d                                       ; $43f9: $4a
    ld [hl], e                                    ; $43fa: $73
    ld d, b                                       ; $43fb: $50
    ld c, h                                       ; $43fc: $4c
    ld [hl], e                                    ; $43fd: $73
    db $10                                        ; $43fe: $10
    ld c, [hl]                                    ; $43ff: $4e
    ld [hl], e                                    ; $4400: $73

Jump_007_4401:
    ret nc                                        ; $4401: $d0

    ld c, a                                       ; $4402: $4f
    ld [hl], e                                    ; $4403: $73
    sub b                                         ; $4404: $90
    ld d, c                                       ; $4405: $51
    ld [hl], e                                    ; $4406: $73
    ld d, b                                       ; $4407: $50
    ld d, e                                       ; $4408: $53
    ld [hl], e                                    ; $4409: $73
    db $10                                        ; $440a: $10
    ld d, l                                       ; $440b: $55
    ld [hl], e                                    ; $440c: $73
    ret nc                                        ; $440d: $d0

    ld d, [hl]                                    ; $440e: $56

    db $72, $90, $7f, $73, $90, $58, $73, $d0, $58, $73, $10, $59, $73, $50, $59, $73
    db $90, $59, $73, $d0, $59, $73, $10, $5a, $73, $50, $5a, $73, $90, $5a, $73, $d0
    db $5a, $73, $10, $5b, $73, $50, $5b, $73, $90, $5b, $73, $d0, $5b, $73, $10, $5c
    db $73, $50, $5c, $73, $90, $5c, $73, $d0, $5c, $73, $10, $5d, $73, $50, $5d, $73
    db $90, $5d, $73, $d0, $5d, $73, $10, $5e, $73, $50, $5e, $73, $90, $5e, $73, $d0
    db $5e, $73, $10, $5f, $73, $50, $5f, $73, $90, $5f, $73, $d0, $5f

    ld [hl], e                                    ; $446c: $73
    db $10                                        ; $446d: $10
    ld h, b                                       ; $446e: $60
    ld [hl], e                                    ; $446f: $73
    ld d, b                                       ; $4470: $50
    ld h, b                                       ; $4471: $60
    ld [hl], e                                    ; $4472: $73
    ld d, b                                       ; $4473: $50
    ld h, d                                       ; $4474: $62
    ld [hl], e                                    ; $4475: $73
    ld d, b                                       ; $4476: $50
    ld h, h                                       ; $4477: $64
    ld [hl], e                                    ; $4478: $73
    ld d, b                                       ; $4479: $50
    ld h, [hl]                                    ; $447a: $66
    ld [hl], e                                    ; $447b: $73
    ld d, b                                       ; $447c: $50
    ld l, b                                       ; $447d: $68
    ld [hl], e                                    ; $447e: $73
    ld d, b                                       ; $447f: $50
    ld l, d                                       ; $4480: $6a
    ld [hl], e                                    ; $4481: $73
    ld d, b                                       ; $4482: $50

Jump_007_4483:
    ld l, h                                       ; $4483: $6c
    ld [hl], e                                    ; $4484: $73
    ld d, b                                       ; $4485: $50
    ld l, [hl]                                    ; $4486: $6e
    ld [hl], e                                    ; $4487: $73
    ld d, b                                       ; $4488: $50
    ld [hl], b                                    ; $4489: $70
    ld [hl], e                                    ; $448a: $73
    ld d, b                                       ; $448b: $50
    ld [hl], d                                    ; $448c: $72
    ld [hl], e                                    ; $448d: $73
    ld d, b                                       ; $448e: $50
    ld [hl], h                                    ; $448f: $74
    ld [hl], e                                    ; $4490: $73
    ld d, b                                       ; $4491: $50
    halt                                          ; $4492: $76
    ld [hl], e                                    ; $4493: $73
    ld d, b                                       ; $4494: $50
    ld a, b                                       ; $4495: $78
    ld [hl], e                                    ; $4496: $73
    ld d, b                                       ; $4497: $50
    ld a, d                                       ; $4498: $7a
    ld [hl], e                                    ; $4499: $73
    ld d, b                                       ; $449a: $50
    ld a, h                                       ; $449b: $7c
    ld [hl], h                                    ; $449c: $74
    db $10                                        ; $449d: $10
    ld b, b                                       ; $449e: $40

    db $74, $10, $42, $74, $d0, $43, $74, $90, $45, $74, $50, $47, $74, $10, $49, $74
    db $d0, $4a, $74, $90, $4c, $74, $50, $4e, $74, $10, $50, $74, $d0, $51, $74, $90
    db $53, $74, $50, $55, $74, $10, $57, $74, $d0, $58, $74, $90, $5a, $74, $50, $5c
    db $74, $10, $5e, $74, $d0, $5f, $74, $90, $61, $74, $50, $63, $74, $10, $65, $74
    db $d0, $66, $74, $90, $68, $74, $50, $6a, $74, $10, $6c, $74, $d0, $6d, $74, $90
    db $6f, $74, $50, $71, $74, $10, $73, $74, $d0, $74, $74, $90, $76, $74, $50, $78
    db $74, $10, $7a, $74, $d0, $7b, $74, $90, $7d, $75, $10, $40, $75, $d0, $41, $75
    db $90, $43, $75, $50, $45, $75, $10, $47, $75, $d0, $48, $75, $90, $4a, $75, $50
    db $4c, $75, $10, $4e, $75, $d0, $4f, $75, $90, $51, $75, $50, $53, $75, $10, $55
    db $75, $d0, $56, $75, $90, $58, $75, $50, $5a, $75, $10, $5c, $75, $d0, $5d, $75
    db $90, $5f, $75, $50, $61, $75, $10, $63, $75, $d0, $64, $75, $90, $66, $75, $50
    db $68, $75, $10, $6a, $75, $d0, $6b, $75, $90, $6d, $75, $50, $6f, $75, $10, $71

    ld [hl], e                                    ; $455f: $73
    ld d, b                                       ; $4560: $50
    ld a, [hl]                                    ; $4561: $7e
    ld [hl], e                                    ; $4562: $73
    ret nc                                        ; $4563: $d0

    ld a, [hl]                                    ; $4564: $7e
    ld [hl], e                                    ; $4565: $73
    ld d, b                                       ; $4566: $50
    ld a, a                                       ; $4567: $7f
    ld [hl], h                                    ; $4568: $74
    ld d, b                                       ; $4569: $50
    ld a, a                                       ; $456a: $7f
    ld [hl], l                                    ; $456b: $75
    ret nc                                        ; $456c: $d0

    ld [hl], d                                    ; $456d: $72
    ld [hl], l                                    ; $456e: $75
    ret nc                                        ; $456f: $d0

    ld [hl], e                                    ; $4570: $73
    ld [hl], l                                    ; $4571: $75
    ret nc                                        ; $4572: $d0

    ld [hl], h                                    ; $4573: $74
    ld [hl], l                                    ; $4574: $75
    ret nc                                        ; $4575: $d0

    ld [hl], l                                    ; $4576: $75
    ld [hl], l                                    ; $4577: $75
    ret nc                                        ; $4578: $d0

    halt                                          ; $4579: $76
    ld [hl], l                                    ; $457a: $75
    ret nc                                        ; $457b: $d0

    ld [hl], a                                    ; $457c: $77
    ld [hl], l                                    ; $457d: $75
    ret nc                                        ; $457e: $d0

    ld a, b                                       ; $457f: $78
    ld [hl], l                                    ; $4580: $75

Call_007_4581:
    ret nc                                        ; $4581: $d0

    ld a, c                                       ; $4582: $79
    ld [hl], l                                    ; $4583: $75
    ret nc                                        ; $4584: $d0

    ld a, d                                       ; $4585: $7a
    ld [hl], l                                    ; $4586: $75
    ret nc                                        ; $4587: $d0

    ld a, e                                       ; $4588: $7b
    ld [hl], l                                    ; $4589: $75
    ret nc                                        ; $458a: $d0

    ld a, h                                       ; $458b: $7c
    ld [hl], l                                    ; $458c: $75
    ret nc                                        ; $458d: $d0

    ld a, l                                       ; $458e: $7d
    ld [hl], l                                    ; $458f: $75
    ret nc                                        ; $4590: $d0

    ld a, [hl]                                    ; $4591: $7e
    halt                                          ; $4592: $76
    db $10                                        ; $4593: $10
    ld b, b                                       ; $4594: $40
    halt                                          ; $4595: $76
    db $10                                        ; $4596: $10
    ld b, c                                       ; $4597: $41
    halt                                          ; $4598: $76
    db $10                                        ; $4599: $10
    ld b, d                                       ; $459a: $42
    halt                                          ; $459b: $76
    db $10                                        ; $459c: $10
    ld b, e                                       ; $459d: $43
    halt                                          ; $459e: $76
    db $10                                        ; $459f: $10
    ld b, h                                       ; $45a0: $44
    halt                                          ; $45a1: $76
    db $10                                        ; $45a2: $10
    ld b, l                                       ; $45a3: $45
    halt                                          ; $45a4: $76
    db $10                                        ; $45a5: $10
    ld b, [hl]                                    ; $45a6: $46
    halt                                          ; $45a7: $76
    db $10                                        ; $45a8: $10
    ld b, a                                       ; $45a9: $47
    halt                                          ; $45aa: $76
    db $10                                        ; $45ab: $10
    ld c, b                                       ; $45ac: $48
    halt                                          ; $45ad: $76
    db $10                                        ; $45ae: $10
    ld c, c                                       ; $45af: $49
    halt                                          ; $45b0: $76
    db $10                                        ; $45b1: $10
    ld c, d                                       ; $45b2: $4a
    halt                                          ; $45b3: $76
    db $10                                        ; $45b4: $10
    ld c, e                                       ; $45b5: $4b
    halt                                          ; $45b6: $76
    db $10                                        ; $45b7: $10
    ld c, l                                       ; $45b8: $4d
    halt                                          ; $45b9: $76
    db $10                                        ; $45ba: $10
    ld c, a                                       ; $45bb: $4f
    halt                                          ; $45bc: $76
    db $10                                        ; $45bd: $10
    ld d, c                                       ; $45be: $51
    halt                                          ; $45bf: $76
    db $10                                        ; $45c0: $10
    ld d, e                                       ; $45c1: $53
    halt                                          ; $45c2: $76
    db $10                                        ; $45c3: $10
    ld d, l                                       ; $45c4: $55
    halt                                          ; $45c5: $76
    db $10                                        ; $45c6: $10
    ld d, a                                       ; $45c7: $57
    halt                                          ; $45c8: $76
    db $10                                        ; $45c9: $10
    ld e, c                                       ; $45ca: $59
    halt                                          ; $45cb: $76
    db $10                                        ; $45cc: $10
    ld e, e                                       ; $45cd: $5b
    halt                                          ; $45ce: $76
    db $10                                        ; $45cf: $10
    ld e, l                                       ; $45d0: $5d
    halt                                          ; $45d1: $76
    db $10                                        ; $45d2: $10
    ld e, a                                       ; $45d3: $5f
    halt                                          ; $45d4: $76
    db $10                                        ; $45d5: $10
    ld h, c                                       ; $45d6: $61
    halt                                          ; $45d7: $76
    db $10                                        ; $45d8: $10
    ld h, e                                       ; $45d9: $63
    halt                                          ; $45da: $76
    db $10                                        ; $45db: $10
    ld h, l                                       ; $45dc: $65
    halt                                          ; $45dd: $76
    db $10                                        ; $45de: $10

Call_007_45df:
    ld h, a                                       ; $45df: $67
    halt                                          ; $45e0: $76
    db $10                                        ; $45e1: $10
    ld l, c                                       ; $45e2: $69
    halt                                          ; $45e3: $76
    db $10                                        ; $45e4: $10
    ld l, e                                       ; $45e5: $6b
    halt                                          ; $45e6: $76
    db $10                                        ; $45e7: $10
    ld l, l                                       ; $45e8: $6d
    halt                                          ; $45e9: $76
    db $10                                        ; $45ea: $10
    ld l, a                                       ; $45eb: $6f
    halt                                          ; $45ec: $76
    db $10                                        ; $45ed: $10
    ld [hl], c                                    ; $45ee: $71
    halt                                          ; $45ef: $76
    db $10                                        ; $45f0: $10
    ld [hl], e                                    ; $45f1: $73
    halt                                          ; $45f2: $76
    db $10                                        ; $45f3: $10
    ld [hl], l                                    ; $45f4: $75
    halt                                          ; $45f5: $76
    db $10                                        ; $45f6: $10
    ld [hl], a                                    ; $45f7: $77
    halt                                          ; $45f8: $76
    db $10                                        ; $45f9: $10
    ld a, c                                       ; $45fa: $79
    halt                                          ; $45fb: $76
    db $10                                        ; $45fc: $10
    ld a, e                                       ; $45fd: $7b
    halt                                          ; $45fe: $76
    db $10                                        ; $45ff: $10
    ld a, l                                       ; $4600: $7d

Jump_007_4601:
    ld [hl], a                                    ; $4601: $77
    db $10                                        ; $4602: $10
    ld b, b                                       ; $4603: $40
    ld [hl], a                                    ; $4604: $77
    db $10                                        ; $4605: $10
    ld b, d                                       ; $4606: $42
    ld [hl], a                                    ; $4607: $77
    db $10                                        ; $4608: $10
    ld b, h                                       ; $4609: $44
    ld [hl], a                                    ; $460a: $77
    db $10                                        ; $460b: $10
    ld b, [hl]                                    ; $460c: $46
    ld [hl], a                                    ; $460d: $77
    db $10                                        ; $460e: $10
    ld c, b                                       ; $460f: $48
    ld [hl], a                                    ; $4610: $77
    db $10                                        ; $4611: $10
    ld c, d                                       ; $4612: $4a

    db $78, $10, $40

    ld [hl], a                                    ; $4616: $77
    db $10                                        ; $4617: $10
    ld c, h                                       ; $4618: $4c
    ld [hl], a                                    ; $4619: $77
    or $4e                                        ; $461a: $f6 $4e
    ld [hl], a                                    ; $461c: $77
    db $dc                                        ; $461d: $dc
    ld d, c                                       ; $461e: $51

    db $77, $42, $56

    ld [hl], a                                    ; $4622: $77
    jr z, @+$5b                                   ; $4623: $28 $59

    ld [hl], a                                    ; $4625: $77
    ld c, $5c                                     ; $4626: $0e $5c
    ld [hl], a                                    ; $4628: $77
    db $f4                                        ; $4629: $f4
    ld e, [hl]                                    ; $462a: $5e

    db $77, $ba, $61, $79, $10, $40

    ld a, c                                       ; $4631: $79
    ld [hl], $64                                  ; $4632: $36 $64
    ld a, d                                       ; $4634: $7a
    db $10                                        ; $4635: $10
    ld b, b                                       ; $4636: $40
    ld a, e                                       ; $4637: $7b
    db $10                                        ; $4638: $10
    ld b, b                                       ; $4639: $40
    ld a, d                                       ; $463a: $7a
    ld d, [hl]                                    ; $463b: $56
    ld d, e                                       ; $463c: $53
    ld a, d                                       ; $463d: $7a
    call c, Call_007_775e                         ; $463e: $dc $5e $77
    nop                                           ; $4641: $00
    ld [hl], l                                    ; $4642: $75
    ld a, d                                       ; $4643: $7a
    and d                                         ; $4644: $a2
    ld l, d                                       ; $4645: $6a
    ld a, d                                       ; $4646: $7a
    jr z, jr_007_46bc                             ; $4647: $28 $73

    ld a, h                                       ; $4649: $7c
    db $10                                        ; $464a: $10
    ld b, b                                       ; $464b: $40
    ld [hl], a                                    ; $464c: $77
    add $7b                                       ; $464d: $c6 $7b
    ld a, c                                       ; $464f: $79
    ld a, h                                       ; $4650: $7c
    ld a, c                                       ; $4651: $79
    ld a, h                                       ; $4652: $7c
    sub [hl]                                      ; $4653: $96
    ld c, a                                       ; $4654: $4f
    ld a, h                                       ; $4655: $7c
    sbc h                                         ; $4656: $9c
    ld e, d                                       ; $4657: $5a
    ld a, e                                       ; $4658: $7b
    ld d, $77                                     ; $4659: $16 $77
    ld a, h                                       ; $465b: $7c
    ld [bc], a                                    ; $465c: $02
    ld h, a                                       ; $465d: $67
    ld a, l                                       ; $465e: $7d
    db $10                                        ; $465f: $10
    ld b, b                                       ; $4660: $40
    ld a, l                                       ; $4661: $7d
    sub $52                                       ; $4662: $d6 $52
    ld a, [hl]                                    ; $4664: $7e
    db $10                                        ; $4665: $10
    ld b, b                                       ; $4666: $40
    ld a, a                                       ; $4667: $7f
    db $10                                        ; $4668: $10
    ld b, b                                       ; $4669: $40
    add b                                         ; $466a: $80
    db $10                                        ; $466b: $10
    ld b, b                                       ; $466c: $40
    ld a, l                                       ; $466d: $7d
    sbc h                                         ; $466e: $9c
    ld h, h                                       ; $466f: $64
    ld a, h                                       ; $4670: $7c
    ret z                                         ; $4671: $c8

    ld [hl], e                                    ; $4672: $73
    ld a, h                                       ; $4673: $7c
    xor $78                                       ; $4674: $ee $78
    ld a, d                                       ; $4676: $7a
    ld l, $7b                                     ; $4677: $2e $7b
    ld a, l                                       ; $4679: $7d
    jp nz, $7d71                                  ; $467a: $c2 $71 $7d

    ld [$7e77], sp                                ; $467d: $08 $77 $7e
    or $61                                        ; $4680: $f6 $61
    ld a, [hl]                                    ; $4682: $7e
    call c, Call_007_7e67                         ; $4683: $dc $67 $7e
    jp nz, Jump_007_7e6d                          ; $4686: $c2 $6d $7e

    xor b                                         ; $4689: $a8
    ld [hl], l                                    ; $468a: $75
    ld a, a                                       ; $468b: $7f
    sub [hl]                                      ; $468c: $96
    ld e, [hl]                                    ; $468d: $5e
    ld a, a                                       ; $468e: $7f
    inc e                                         ; $468f: $1c
    ld l, c                                       ; $4690: $69
    add c                                         ; $4691: $81
    db $10                                        ; $4692: $10
    ld b, b                                       ; $4693: $40
    ld a, a                                       ; $4694: $7f
    jp nz, $8071                                  ; $4695: $c2 $71 $80

    halt                                          ; $4698: $76
    ld h, a                                       ; $4699: $67
    add d                                         ; $469a: $82
    ld bc, $8240                                  ; $469b: $01 $40 $82
    rlca                                          ; $469e: $07
    ld d, h                                       ; $469f: $54
    add d                                         ; $46a0: $82
    call $8361                                    ; $46a1: $cd $61 $83
    ld bc, $8340                                  ; $46a4: $01 $40 $83
    rlca                                          ; $46a7: $07
    ld e, [hl]                                    ; $46a8: $5e
    add e                                         ; $46a9: $83
    db $ed                                        ; $46aa: $ed
    ld l, [hl]                                    ; $46ab: $6e

    db $79, $62, $7c

    add d                                         ; $46af: $82
    ld d, e                                       ; $46b0: $53
    halt                                          ; $46b1: $76
    add h                                         ; $46b2: $84
    ld bc, $8440                                  ; $46b3: $01 $40 $84
    ld b, a                                       ; $46b6: $47
    ld c, d                                       ; $46b7: $4a
    add l                                         ; $46b8: $85
    ld bc, $8440                                  ; $46b9: $01 $40 $84

jr_007_46bc:
    ld c, l                                       ; $46bc: $4d
    halt                                          ; $46bd: $76
    ld a, a                                       ; $46be: $7f
    ld [$8079], sp                                ; $46bf: $08 $79 $80
    inc a                                         ; $46c2: $3c
    ld a, c                                       ; $46c3: $79
    add l                                         ; $46c4: $85
    add a                                         ; $46c5: $87
    ld l, b                                       ; $46c6: $68
    add c                                         ; $46c7: $81
    sub [hl]                                      ; $46c8: $96
    ld a, c                                       ; $46c9: $79
    add [hl]                                      ; $46ca: $86
    ld bc, $8540                                  ; $46cb: $01 $40 $85
    ld l, l                                       ; $46ce: $6d
    ld a, c                                       ; $46cf: $79
    add [hl]                                      ; $46d0: $86
    rlca                                          ; $46d1: $07
    ld c, b                                       ; $46d2: $48
    add [hl]                                      ; $46d3: $86
    dec c                                         ; $46d4: $0d
    ld d, c                                       ; $46d5: $51
    add [hl]                                      ; $46d6: $86
    ld [hl], e                                    ; $46d7: $73
    ld e, e                                       ; $46d8: $5b
    add a                                         ; $46d9: $87
    ld bc, $8640                                  ; $46da: $01 $40 $86
    add hl, de                                    ; $46dd: $19
    ld h, l                                       ; $46de: $65
    add [hl]                                      ; $46df: $86
    rst $38                                       ; $46e0: $ff
    ld [hl], b                                    ; $46e1: $70
    add a                                         ; $46e2: $87
    add a                                         ; $46e3: $87
    ld l, h                                       ; $46e4: $6c
    adc b                                         ; $46e5: $88
    ld bc, $8840                                  ; $46e6: $01 $40 $88
    daa                                           ; $46e9: $27
    ld c, a                                       ; $46ea: $4f
    ld a, b                                       ; $46eb: $78
    ld d, [hl]                                    ; $46ec: $56
    ld a, l                                       ; $46ed: $7d
    adc b                                         ; $46ee: $88
    db $ed                                        ; $46ef: $ed
    ld e, h                                       ; $46f0: $5c
    adc c                                         ; $46f1: $89
    ld bc, $8840                                  ; $46f2: $01 $40 $88
    db $d3                                        ; $46f5: $d3
    ld h, h                                       ; $46f6: $64
    adc b                                         ; $46f7: $88
    reti                                          ; $46f8: $d9


    ld l, [hl]                                    ; $46f9: $6e
    adc c                                         ; $46fa: $89
    ld b, a                                       ; $46fb: $47
    ld e, h                                       ; $46fc: $5c
    adc b                                         ; $46fd: $88
    rst $18                                       ; $46fe: $df
    halt                                          ; $46ff: $76
    ld a, e                                       ; $4700: $7b
    sbc h                                         ; $4701: $9c
    ld a, h                                       ; $4702: $7c
    adc c                                         ; $4703: $89
    db $ed                                        ; $4704: $ed
    ld l, e                                       ; $4705: $6b
    adc d                                         ; $4706: $8a
    ld bc, $8b40                                  ; $4707: $01 $40 $8b
    ld bc, $8c40                                  ; $470a: $01 $40 $8c
    ld bc, $8940                                  ; $470d: $01 $40 $89
    db $d3                                        ; $4710: $d3
    halt                                          ; $4711: $76
    adc e                                         ; $4712: $8b
    daa                                           ; $4713: $27
    ld [hl], l                                    ; $4714: $75
    adc l                                         ; $4715: $8d
    ld bc, $8640                                  ; $4716: $01 $40 $86
    add l                                         ; $4719: $85
    ld a, d                                       ; $471a: $7a
    ld a, [hl]                                    ; $471b: $7e
    ld c, [hl]                                    ; $471c: $4e
    ld a, e                                       ; $471d: $7b
    adc h                                         ; $471e: $8c
    rst $20                                       ; $471f: $e7
    ld [hl], h                                    ; $4720: $74
    adc l                                         ; $4721: $8d
    ld h, a                                       ; $4722: $67
    ld e, d                                       ; $4723: $5a
    adc l                                         ; $4724: $8d
    db $ed                                        ; $4725: $ed
    ld h, e                                       ; $4726: $63
    ld a, l                                       ; $4727: $7d
    xor $7b                                       ; $4728: $ee $7b
    adc l                                         ; $472a: $8d
    ld [hl], e                                    ; $472b: $73
    ld l, h                                       ; $472c: $6c
    adc l                                         ; $472d: $8d
    sbc c                                         ; $472e: $99
    ld [hl], c                                    ; $472f: $71
    adc l                                         ; $4730: $8d
    ccf                                           ; $4731: $3f
    ld a, b                                       ; $4732: $78
    adc [hl]                                      ; $4733: $8e
    ld bc, $8e40                                  ; $4734: $01 $40 $8e
    rlca                                          ; $4737: $07
    ld e, b                                       ; $4738: $58
    adc [hl]                                      ; $4739: $8e
    ld c, l                                       ; $473a: $4d
    ld e, a                                       ; $473b: $5f

    db $8e, $b3, $64

    halt                                          ; $473f: $76
    db $10                                        ; $4740: $10
    ld a, a                                       ; $4741: $7f
    halt                                          ; $4742: $76
    ld c, b                                       ; $4743: $48
    ld a, a                                       ; $4744: $7f
    halt                                          ; $4745: $76
    add c                                         ; $4746: $81
    ld a, a                                       ; $4747: $7f

    db $76, $b8, $7f

    ld [hl], a                                    ; $474b: $77
    db $ec                                        ; $474c: $ec
    ld a, [hl]                                    ; $474d: $7e
    ld [hl], a                                    ; $474e: $77
    inc h                                         ; $474f: $24
    ld a, a                                       ; $4750: $7f
    ld [hl], a                                    ; $4751: $77
    ld e, e                                       ; $4752: $5b
    ld a, a                                       ; $4753: $7f

    db $7f, $4e, $7e, $8a, $a7, $7b

    add d                                         ; $475a: $82
    ld sp, hl                                     ; $475b: $f9
    ld a, l                                       ; $475c: $7d
    add h                                         ; $475d: $84
    inc sp                                        ; $475e: $33
    ld a, [hl]                                    ; $475f: $7e
    adc [hl]                                      ; $4760: $8e
    cpl                                           ; $4761: $2f
    ld l, c                                       ; $4762: $69
    ld a, l                                       ; $4763: $7d
    db $f4                                        ; $4764: $f4
    ld a, [hl]                                    ; $4765: $7e
    add b                                         ; $4766: $80
    ld [c], a                                     ; $4767: $e2
    ld a, [hl]                                    ; $4768: $7e
    ld a, b                                       ; $4769: $78
    ld a, h                                       ; $476a: $7c
    ld a, a                                       ; $476b: $7f
    ld a, c                                       ; $476c: $79
    ld c, b                                       ; $476d: $48
    ld a, a                                       ; $476e: $7f
    add l                                         ; $476f: $85
    inc de                                        ; $4770: $13
    ld a, a                                       ; $4771: $7f
    add a                                         ; $4772: $87
    ld c, l                                       ; $4773: $4d
    ld a, [hl]                                    ; $4774: $7e
    ld [hl], a                                    ; $4775: $77
    sub c                                         ; $4776: $91
    ld a, a                                       ; $4777: $7f
    ld a, d                                       ; $4778: $7a
    sub h                                         ; $4779: $94
    ld a, a                                       ; $477a: $7f
    adc c                                         ; $477b: $89
    cp c                                          ; $477c: $b9
    ld a, [hl]                                    ; $477d: $7e
    adc d                                         ; $477e: $8a
    ld h, e                                       ; $477f: $63
    ld a, [hl]                                    ; $4780: $7e
    ld a, [hl]                                    ; $4781: $7e
    sub h                                         ; $4782: $94
    ld a, a                                       ; $4783: $7f
    adc e                                         ; $4784: $8b
    dec l                                         ; $4785: $2d
    ld a, h                                       ; $4786: $7c
    adc e                                         ; $4787: $8b
    ld hl, $8b7d                                  ; $4788: $21 $7d $8b
    sbc c                                         ; $478b: $99
    ld a, [hl]                                    ; $478c: $7e
    adc h                                         ; $478d: $8c
    ld l, l                                       ; $478e: $6d
    ld a, h                                       ; $478f: $7c
    adc [hl]                                      ; $4790: $8e
    ld b, c                                       ; $4791: $41
    ld l, l                                       ; $4792: $6d
    adc [hl]                                      ; $4793: $8e
    adc l                                         ; $4794: $8d
    ld l, a                                       ; $4795: $6f
    adc h                                         ; $4796: $8c
    db $f4                                        ; $4797: $f4
    ld a, [hl]                                    ; $4798: $7e
    add c                                         ; $4799: $81
    ld a, h                                       ; $479a: $7c
    ld a, a                                       ; $479b: $7f
    add a                                         ; $479c: $87
    ld l, b                                       ; $479d: $68
    ld a, a                                       ; $479e: $7f
    ld a, e                                       ; $479f: $7b
    and d                                         ; $47a0: $a2
    ld a, a                                       ; $47a1: $7f
    add d                                         ; $47a2: $82
    ld a, l                                       ; $47a3: $7d
    ld a, a                                       ; $47a4: $7f
    add e                                         ; $47a5: $83
    ld [hl], e                                    ; $47a6: $73
    ld a, a                                       ; $47a7: $7f
    adc b                                         ; $47a8: $88
    ld b, l                                       ; $47a9: $45
    ld a, a                                       ; $47aa: $7f
    adc c                                         ; $47ab: $89
    adc c                                         ; $47ac: $89
    ld a, a                                       ; $47ad: $7f
    adc d                                         ; $47ae: $8a
    ld c, [hl]                                    ; $47af: $4e
    ld a, a                                       ; $47b0: $7f
    add h                                         ; $47b1: $84
    xor c                                         ; $47b2: $a9
    ld a, a                                       ; $47b3: $7f
    adc l                                         ; $47b4: $8d
    dec b                                         ; $47b5: $05
    ld a, [hl]                                    ; $47b6: $7e
    adc l                                         ; $47b7: $8d
    call nc, $8e7e                                ; $47b8: $d4 $7e $8e
    sub [hl]                                      ; $47bb: $96
    ld [hl], d                                    ; $47bc: $72
    adc [hl]                                      ; $47bd: $8e
    add $76                                       ; $47be: $c6 $76
    adc [hl]                                      ; $47c0: $8e
    ld c, b                                       ; $47c1: $48
    ld [hl], a                                    ; $47c2: $77
    adc [hl]                                      ; $47c3: $8e
    sbc c                                         ; $47c4: $99
    ld a, b                                       ; $47c5: $78
    adc [hl]                                      ; $47c6: $8e
    dec d                                         ; $47c7: $15
    ld a, d                                       ; $47c8: $7a
    adc [hl]                                      ; $47c9: $8e
    ld c, e                                       ; $47ca: $4b
    ld a, e                                       ; $47cb: $7b
    adc [hl]                                      ; $47cc: $8e
    rst $10                                       ; $47cd: $d7
    ld a, h                                       ; $47ce: $7c
    adc a                                         ; $47cf: $8f
    ld bc, $8f40                                  ; $47d0: $01 $40 $8f
    ld e, h                                       ; $47d3: $5c
    ld b, c                                       ; $47d4: $41

    db $7f, $b7, $7f

    adc [hl]                                      ; $47d8: $8e
    dec de                                        ; $47d9: $1b
    ld a, a                                       ; $47da: $7f
    adc a                                         ; $47db: $8f
    sub e                                         ; $47dc: $93
    ld b, d                                       ; $47dd: $42
    adc a                                         ; $47de: $8f
    ld e, l                                       ; $47df: $5d
    ld b, e                                       ; $47e0: $43
    adc a                                         ; $47e1: $8f
    sbc b                                         ; $47e2: $98
    ld b, [hl]                                    ; $47e3: $46
    adc a                                         ; $47e4: $8f
    xor l                                         ; $47e5: $ad
    ld c, c                                       ; $47e6: $49
    adc l                                         ; $47e7: $8d
    adc l                                         ; $47e8: $8d
    ld a, a                                       ; $47e9: $7f
    adc a                                         ; $47ea: $8f
    ld b, b                                       ; $47eb: $40
    ld c, d                                       ; $47ec: $4a
    adc a                                         ; $47ed: $8f
    xor l                                         ; $47ee: $ad
    ld c, d                                       ; $47ef: $4a
    adc a                                         ; $47f0: $8f
    ld hl, sp+$4b                                 ; $47f1: $f8 $4b
    adc a                                         ; $47f3: $8f
    ld h, l                                       ; $47f4: $65
    ld c, h                                       ; $47f5: $4c
    adc a                                         ; $47f6: $8f
    ld [bc], a                                    ; $47f7: $02
    ld c, l                                       ; $47f8: $4d
    adc a                                         ; $47f9: $8f
    ld [hl], l                                    ; $47fa: $75
    ld c, l                                       ; $47fb: $4d
    adc a                                         ; $47fc: $8f
    add hl, hl                                    ; $47fd: $29
    ld c, [hl]                                    ; $47fe: $4e
    adc a                                         ; $47ff: $8f
    di                                            ; $4800: $f3

Jump_007_4801:
    ld c, [hl]                                    ; $4801: $4e
    adc a                                         ; $4802: $8f
    xor c                                         ; $4803: $a9
    ld c, a                                       ; $4804: $4f
    adc a                                         ; $4805: $8f
    ld c, e                                       ; $4806: $4b
    ld d, e                                       ; $4807: $53
    adc a                                         ; $4808: $8f
    inc [hl]                                      ; $4809: $34
    ld d, h                                       ; $480a: $54
    adc a                                         ; $480b: $8f
    xor $54                                       ; $480c: $ee $54
    adc a                                         ; $480e: $8f
    inc e                                         ; $480f: $1c
    ld d, [hl]                                    ; $4810: $56
    adc a                                         ; $4811: $8f
    ccf                                           ; $4812: $3f
    ld d, a                                       ; $4813: $57
    ld [hl], d                                    ; $4814: $72
    ret nc                                        ; $4815: $d0

    ld a, a                                       ; $4816: $7f
    adc a                                         ; $4817: $8f
    ld d, [hl]                                    ; $4818: $56
    ld e, b                                       ; $4819: $58
    adc a                                         ; $481a: $8f
    ld a, [c]                                     ; $481b: $f2
    ld e, b                                       ; $481c: $58
    adc a                                         ; $481d: $8f
    add hl, bc                                    ; $481e: $09
    ld e, e                                       ; $481f: $5b
    adc a                                         ; $4820: $8f
    reti                                          ; $4821: $d9


    ld e, e                                       ; $4822: $5b
    adc a                                         ; $4823: $8f
    ld a, l                                       ; $4824: $7d
    ld e, h                                       ; $4825: $5c
    adc a                                         ; $4826: $8f
    cp e                                          ; $4827: $bb
    ld e, l                                       ; $4828: $5d
    add l                                         ; $4829: $85
    or d                                          ; $482a: $b2
    ld a, a                                       ; $482b: $7f
    adc a                                         ; $482c: $8f
    ld h, b                                       ; $482d: $60
    ld e, [hl]                                    ; $482e: $5e
    adc a                                         ; $482f: $8f
    ld b, d                                       ; $4830: $42
    ld e, a                                       ; $4831: $5f
    adc a                                         ; $4832: $8f
    add b                                         ; $4833: $80
    ld h, e                                       ; $4834: $63
    adc a                                         ; $4835: $8f
    adc c                                         ; $4836: $89
    ld h, a                                       ; $4837: $67
    adc a                                         ; $4838: $8f
    ld [hl], d                                    ; $4839: $72
    ld l, e                                       ; $483a: $6b
    adc a                                         ; $483b: $8f
    ld [bc], a                                    ; $483c: $02
    ld l, h                                       ; $483d: $6c
    adc a                                         ; $483e: $8f
    adc a                                         ; $483f: $8f
    ld l, h                                       ; $4840: $6c
    adc a                                         ; $4841: $8f
    adc e                                         ; $4842: $8b
    ld l, [hl]                                    ; $4843: $6e
    adc a                                         ; $4844: $8f
    push af                                       ; $4845: $f5
    ld l, [hl]                                    ; $4846: $6e
    adc a                                         ; $4847: $8f
    ld b, a                                       ; $4848: $47
    ld l, a                                       ; $4849: $6f
    adc a                                         ; $484a: $8f
    jp c, $8f6f                                   ; $484b: $da $6f $8f

    adc [hl]                                      ; $484e: $8e
    ld [hl], b                                    ; $484f: $70
    adc b                                         ; $4850: $88
    or d                                          ; $4851: $b2
    ld a, a                                       ; $4852: $7f
    adc a                                         ; $4853: $8f
    dec l                                         ; $4854: $2d
    ld [hl], c                                    ; $4855: $71
    adc a                                         ; $4856: $8f
    sub l                                         ; $4857: $95
    ld [hl], c                                    ; $4858: $71
    adc a                                         ; $4859: $8f
    ld [de], a                                    ; $485a: $12
    ld [hl], d                                    ; $485b: $72
    adc a                                         ; $485c: $8f
    add h                                         ; $485d: $84
    ld [hl], d                                    ; $485e: $72
    adc a                                         ; $485f: $8f
    ld [hl], $74                                  ; $4860: $36 $74
    adc a                                         ; $4862: $8f
    rst $08                                       ; $4863: $cf
    ld [hl], h                                    ; $4864: $74

    db $90, $01, $40

    adc a                                         ; $4868: $8f
    ld b, b                                       ; $4869: $40
    ld [hl], l                                    ; $486a: $75
    sub b                                         ; $486b: $90
    ld de, $9056                                  ; $486c: $11 $56 $90
    add hl, bc                                    ; $486f: $09
    ld e, e                                       ; $4870: $5b

    db $90, $6f, $62

    sub b                                         ; $4874: $90
    push de                                       ; $4875: $d5

Call_007_4876:
    ld h, a                                       ; $4876: $67
    sub b                                         ; $4877: $90
    or $6e                                        ; $4878: $f6 $6e
    adc a                                         ; $487a: $8f
    xor h                                         ; $487b: $ac
    ld a, e                                       ; $487c: $7b

    db $91, $01, $40, $91, $cf, $50

    sub c                                         ; $4883: $91
    call c, $9262                                 ; $4884: $dc $62 $92
    ld bc, $9240                                  ; $4887: $01 $40 $92
    nop                                           ; $488a: $00
    ld d, l                                       ; $488b: $55
    sub e                                         ; $488c: $93
    ld bc, $9040                                  ; $488d: $01 $40 $90
    ld e, [hl]                                    ; $4890: $5e
    ld [hl], l                                    ; $4891: $75
    sub d                                         ; $4892: $92
    ld e, $6c                                     ; $4893: $1e $6c
    sub e                                         ; $4895: $93
    ret nc                                        ; $4896: $d0

    ld d, [hl]                                    ; $4897: $56
    sub e                                         ; $4898: $93
    or $67                                        ; $4899: $f6 $67
    sub h                                         ; $489b: $94
    ld bc, $9340                                  ; $489c: $01 $40 $93
    add a                                         ; $489f: $87
    ld [hl], l                                    ; $48a0: $75
    sub h                                         ; $48a1: $94
    ld a, h                                       ; $48a2: $7c
    ld d, h                                       ; $48a3: $54
    sub h                                         ; $48a4: $94
    adc h                                         ; $48a5: $8c
    ld e, [hl]                                    ; $48a6: $5e
    sub l                                         ; $48a7: $95
    ld bc, $9540                                  ; $48a8: $01 $40 $95
    ccf                                           ; $48ab: $3f
    ld d, a                                       ; $48ac: $57
    sub l                                         ; $48ad: $95
    inc c                                         ; $48ae: $0c
    ld h, [hl]                                    ; $48af: $66
    sub [hl]                                      ; $48b0: $96
    ld bc, $9640                                  ; $48b1: $01 $40 $96
    and [hl]                                      ; $48b4: $a6
    ld c, a                                       ; $48b5: $4f
    sub [hl]                                      ; $48b6: $96
    ld [$9760], a                                 ; $48b7: $ea $60 $97
    ld bc, $9740                                  ; $48ba: $01 $40 $97
    ld l, l                                       ; $48bd: $6d
    ld d, c                                       ; $48be: $51
    sub a                                         ; $48bf: $97
    ld d, c                                       ; $48c0: $51
    ld h, e                                       ; $48c1: $63
    sub d                                         ; $48c2: $92
    sbc d                                         ; $48c3: $9a
    halt                                          ; $48c4: $76
    sub h                                         ; $48c5: $94
    call nc, $9673                                ; $48c6: $d4 $73 $96
    rrca                                          ; $48c9: $0f
    ld [hl], h                                    ; $48ca: $74
    sub a                                         ; $48cb: $97
    add l                                         ; $48cc: $85
    ld [hl], l                                    ; $48cd: $75
    sbc b                                         ; $48ce: $98
    ld bc, $9840                                  ; $48cf: $01 $40 $98
    inc h                                         ; $48d2: $24
    ld c, c                                       ; $48d3: $49
    sbc b                                         ; $48d4: $98
    ld d, d                                       ; $48d5: $52
    ld d, l                                       ; $48d6: $55
    sbc b                                         ; $48d7: $98
    ld d, e                                       ; $48d8: $53
    ld h, e                                       ; $48d9: $63
    sbc b                                         ; $48da: $98
    jr c, jr_007_494a                             ; $48db: $38 $6d

    sbc c                                         ; $48dd: $99
    ld bc, $9940                                  ; $48de: $01 $40 $99
    and h                                         ; $48e1: $a4
    ld c, h                                       ; $48e2: $4c
    sbc c                                         ; $48e3: $99
    ld e, h                                       ; $48e4: $5c
    ld d, [hl]                                    ; $48e5: $56
    sbc d                                         ; $48e6: $9a
    ld bc, $9940                                  ; $48e7: $01 $40 $99
    ld a, [de]                                    ; $48ea: $1a
    ld l, h                                       ; $48eb: $6c
    sbc d                                         ; $48ec: $9a
    ld a, [c]                                     ; $48ed: $f2
    ld d, e                                       ; $48ee: $53
    sbc d                                         ; $48ef: $9a
    ld [hl], a                                    ; $48f0: $77
    ld h, [hl]                                    ; $48f1: $66
    sbc e                                         ; $48f2: $9b
    ld bc, $9b40                                  ; $48f3: $01 $40 $9b
    ld sp, $9b50                                  ; $48f6: $31 $50 $9b
    ld a, c                                       ; $48f9: $79
    ld h, c                                       ; $48fa: $61
    sbc h                                         ; $48fb: $9c
    db $01                                        ; $48fc: $01
    ld b, b                                       ; $48fd: $40

    db $9a, $be, $77

    sbc h                                         ; $4901: $9c
    rst $20                                       ; $4902: $e7
    ld d, d                                       ; $4903: $52
    sbc e                                         ; $4904: $9b
    db $e4                                        ; $4905: $e4
    ld [hl], d                                    ; $4906: $72
    sbc h                                         ; $4907: $9c
    jp z, $9c63                                   ; $4908: $ca $63 $9c

    ld e, d                                       ; $490b: $5a
    ld [hl], c                                    ; $490c: $71
    sbc l                                         ; $490d: $9d
    ld bc, $9d40                                  ; $490e: $01 $40 $9d
    cp a                                          ; $4911: $bf
    ld d, b                                       ; $4912: $50
    sbc l                                         ; $4913: $9d
    ld b, e                                       ; $4914: $43
    ld e, b                                       ; $4915: $58
    sbc l                                         ; $4916: $9d
    ld a, [hl]                                    ; $4917: $7e
    ld h, h                                       ; $4918: $64
    sbc [hl]                                      ; $4919: $9e
    ld bc, $9e40                                  ; $491a: $01 $40 $9e
    ld [c], a                                     ; $491d: $e2
    ld d, e                                       ; $491e: $53
    sbc [hl]                                      ; $491f: $9e
    ld l, $62                                     ; $4920: $2e $62
    sbc a                                         ; $4922: $9f
    ld bc, $9e40                                  ; $4923: $01 $40 $9e
    jp $9f6c                                      ; $4926: $c3 $6c $9f


    ld a, d                                       ; $4929: $7a
    ld d, e                                       ; $492a: $53
    sbc a                                         ; $492b: $9f
    ld [c], a                                     ; $492c: $e2
    ld l, b                                       ; $492d: $68
    and b                                         ; $492e: $a0
    ld bc, $a040                                  ; $492f: $01 $40 $a0
    sub [hl]                                      ; $4932: $96
    ld c, e                                       ; $4933: $4b
    and b                                         ; $4934: $a0
    cp l                                          ; $4935: $bd
    ld e, d                                       ; $4936: $5a
    and c                                         ; $4937: $a1
    ld bc, $a140                                  ; $4938: $01 $40 $a1
    ld [bc], a                                    ; $493b: $02
    ld d, e                                       ; $493c: $53
    sub b                                         ; $493d: $90
    xor e                                         ; $493e: $ab
    ld a, d                                       ; $493f: $7a
    and b                                         ; $4940: $a0
    jr z, jr_007_49b3                             ; $4941: $28 $70

    and c                                         ; $4943: $a1
    sub l                                         ; $4944: $95
    ld h, [hl]                                    ; $4945: $66
    and d                                         ; $4946: $a2
    ld bc, $a240                                  ; $4947: $01 $40 $a2

jr_007_494a:
    ld [hl+], a                                   ; $494a: $22
    ld d, d                                       ; $494b: $52
    and d                                         ; $494c: $a2
    add hl, de                                    ; $494d: $19
    ld h, e                                       ; $494e: $63
    and e                                         ; $494f: $a3
    ld bc, $a240                                  ; $4950: $01 $40 $a2
    ld h, e                                       ; $4953: $63
    ld [hl], l                                    ; $4954: $75
    and e                                         ; $4955: $a3
    ld bc, $a354                                  ; $4956: $01 $54 $a3
    add hl, bc                                    ; $4959: $09
    ld h, d                                       ; $495a: $62
    and h                                         ; $495b: $a4
    ld bc, $a440                                  ; $495c: $01 $40 $a4
    scf                                           ; $495f: $37
    ld d, d                                       ; $4960: $52
    and h                                         ; $4961: $a4
    halt                                          ; $4962: $76
    ld h, a                                       ; $4963: $67
    and e                                         ; $4964: $a3
    ld [hl], b                                    ; $4965: $70
    ld [hl], d                                    ; $4966: $72
    and l                                         ; $4967: $a5
    ld bc, $a540                                  ; $4968: $01 $40 $a5
    ld c, c                                       ; $496b: $49
    ld c, a                                       ; $496c: $4f
    and l                                         ; $496d: $a5
    inc bc                                        ; $496e: $03
    ld e, a                                       ; $496f: $5f
    and l                                         ; $4970: $a5
    ret c                                         ; $4971: $d8

    ld l, d                                       ; $4972: $6a
    and [hl]                                      ; $4973: $a6
    ld bc, $a640                                  ; $4974: $01 $40 $a6
    add $54                                       ; $4977: $c6 $54
    sub l                                         ; $4979: $95
    add b                                         ; $497a: $80
    ld a, c                                       ; $497b: $79
    sbc l                                         ; $497c: $9d
    ldh [rPCM12], a                               ; $497d: $e0 $76
    and [hl]                                      ; $497f: $a6
    ld d, [hl]                                    ; $4980: $56
    ld l, b                                       ; $4981: $68
    and l                                         ; $4982: $a5
    ld a, c                                       ; $4983: $79
    ld [hl], l                                    ; $4984: $75
    and a                                         ; $4985: $a7
    ld bc, $a740                                  ; $4986: $01 $40 $a7

Jump_007_4989:
    jr nc, @+$5b                                  ; $4989: $30 $59

    and a                                         ; $498b: $a7
    push af                                       ; $498c: $f5
    ld h, e                                       ; $498d: $63

    db $8e, $af, $7f

    adc a                                         ; $4991: $8f
    rst $30                                       ; $4992: $f7
    ld a, [hl]                                    ; $4993: $7e
    adc a                                         ; $4994: $8f
    scf                                           ; $4995: $37
    ld a, a                                       ; $4996: $7f
    adc a                                         ; $4997: $8f
    ld [hl], a                                    ; $4998: $77
    ld a, a                                       ; $4999: $7f

    db $8f, $b7, $7f

    sub b                                         ; $499d: $90
    ld e, l                                       ; $499e: $5d
    ld a, a                                       ; $499f: $7f
    sub b                                         ; $49a0: $90
    sbc l                                         ; $49a1: $9d
    ld a, a                                       ; $49a2: $7f
    sub c                                         ; $49a3: $91
    sub l                                         ; $49a4: $95
    ld a, a                                       ; $49a5: $7f

    db $93, $f9, $7e, $93, $39, $7f

    sub e                                         ; $49ac: $93
    ld a, c                                       ; $49ad: $79
    ld a, a                                       ; $49ae: $7f
    sub e                                         ; $49af: $93
    cp c                                          ; $49b0: $b9
    ld a, a                                       ; $49b1: $7f
    sub h                                         ; $49b2: $94

jr_007_49b3:
    xor $79                                       ; $49b3: $ee $79
    sub h                                         ; $49b5: $94
    ld l, $7a                                     ; $49b6: $2e $7a
    sub h                                         ; $49b8: $94
    ld l, [hl]                                    ; $49b9: $6e
    ld a, d                                       ; $49ba: $7a
    sub h                                         ; $49bb: $94
    xor [hl]                                      ; $49bc: $ae
    ld a, d                                       ; $49bd: $7a
    sub h                                         ; $49be: $94
    xor $7a                                       ; $49bf: $ee $7a

Call_007_49c1:
    sub h                                         ; $49c1: $94
    ld l, $7b                                     ; $49c2: $2e $7b
    sub h                                         ; $49c4: $94
    ld l, [hl]                                    ; $49c5: $6e
    ld a, e                                       ; $49c6: $7b
    sub h                                         ; $49c7: $94
    xor [hl]                                      ; $49c8: $ae
    ld a, e                                       ; $49c9: $7b
    sub h                                         ; $49ca: $94
    xor $7b                                       ; $49cb: $ee $7b
    sub h                                         ; $49cd: $94
    ld l, $7c                                     ; $49ce: $2e $7c
    sub h                                         ; $49d0: $94
    ld l, [hl]                                    ; $49d1: $6e
    ld a, h                                       ; $49d2: $7c
    sub h                                         ; $49d3: $94
    xor [hl]                                      ; $49d4: $ae
    ld a, h                                       ; $49d5: $7c
    sub h                                         ; $49d6: $94
    xor $7c                                       ; $49d7: $ee $7c
    sub h                                         ; $49d9: $94
    ld l, $7d                                     ; $49da: $2e $7d
    sub h                                         ; $49dc: $94
    ld l, [hl]                                    ; $49dd: $6e
    ld a, l                                       ; $49de: $7d
    sub h                                         ; $49df: $94
    xor [hl]                                      ; $49e0: $ae
    ld a, l                                       ; $49e1: $7d
    sub h                                         ; $49e2: $94
    xor $7d                                       ; $49e3: $ee $7d
    sub h                                         ; $49e5: $94
    ld l, $7e                                     ; $49e6: $2e $7e
    sub h                                         ; $49e8: $94
    ld l, [hl]                                    ; $49e9: $6e
    ld a, [hl]                                    ; $49ea: $7e
    sub h                                         ; $49eb: $94
    xor [hl]                                      ; $49ec: $ae
    ld a, [hl]                                    ; $49ed: $7e
    sub h                                         ; $49ee: $94
    xor $7e                                       ; $49ef: $ee $7e
    sub h                                         ; $49f1: $94
    ld l, $7f                                     ; $49f2: $2e $7f
    sub h                                         ; $49f4: $94
    ld l, [hl]                                    ; $49f5: $6e
    ld a, a                                       ; $49f6: $7f
    sub h                                         ; $49f7: $94
    xor [hl]                                      ; $49f8: $ae
    ld a, a                                       ; $49f9: $7f
    sub l                                         ; $49fa: $95
    sbc c                                         ; $49fb: $99
    ld a, a                                       ; $49fc: $7f
    sub [hl]                                      ; $49fd: $96
    rst $10                                       ; $49fe: $d7
    ld a, e                                       ; $49ff: $7b
    sub [hl]                                      ; $4a00: $96

Jump_007_4a01:
    rla                                           ; $4a01: $17
    ld a, h                                       ; $4a02: $7c
    sub [hl]                                      ; $4a03: $96
    ld d, a                                       ; $4a04: $57
    ld a, h                                       ; $4a05: $7c
    sub [hl]                                      ; $4a06: $96
    sub a                                         ; $4a07: $97
    ld a, h                                       ; $4a08: $7c
    sub [hl]                                      ; $4a09: $96
    rst $10                                       ; $4a0a: $d7
    ld a, h                                       ; $4a0b: $7c
    sub [hl]                                      ; $4a0c: $96
    rla                                           ; $4a0d: $17
    ld a, l                                       ; $4a0e: $7d
    sub [hl]                                      ; $4a0f: $96
    ld d, a                                       ; $4a10: $57
    ld a, l                                       ; $4a11: $7d
    sub [hl]                                      ; $4a12: $96
    sub a                                         ; $4a13: $97
    ld a, l                                       ; $4a14: $7d
    sub [hl]                                      ; $4a15: $96
    rst $10                                       ; $4a16: $d7
    ld a, l                                       ; $4a17: $7d
    sub [hl]                                      ; $4a18: $96
    rla                                           ; $4a19: $17
    ld a, [hl]                                    ; $4a1a: $7e
    sub [hl]                                      ; $4a1b: $96
    ld d, a                                       ; $4a1c: $57
    ld a, [hl]                                    ; $4a1d: $7e
    sub [hl]                                      ; $4a1e: $96
    sub a                                         ; $4a1f: $97
    ld a, [hl]                                    ; $4a20: $7e
    sub [hl]                                      ; $4a21: $96
    rst $10                                       ; $4a22: $d7
    ld a, [hl]                                    ; $4a23: $7e
    sub [hl]                                      ; $4a24: $96
    rla                                           ; $4a25: $17
    ld a, a                                       ; $4a26: $7f

    db $96, $57, $7f

    sub [hl]                                      ; $4a2a: $96
    sub a                                         ; $4a2b: $97
    ld a, a                                       ; $4a2c: $7f
    sub a                                         ; $4a2d: $97
    call z, $977e                                 ; $4a2e: $cc $7e $97
    inc c                                         ; $4a31: $0c
    ld a, a                                       ; $4a32: $7f
    sub a                                         ; $4a33: $97
    ld c, h                                       ; $4a34: $4c
    ld a, a                                       ; $4a35: $7f
    sub a                                         ; $4a36: $97
    adc h                                         ; $4a37: $8c
    ld a, a                                       ; $4a38: $7f
    sbc b                                         ; $4a39: $98
    sbc l                                         ; $4a3a: $9d
    ld a, [hl]                                    ; $4a3b: $7e
    sbc b                                         ; $4a3c: $98
    db $dd                                        ; $4a3d: $dd
    ld a, [hl]                                    ; $4a3e: $7e
    sbc b                                         ; $4a3f: $98
    dec e                                         ; $4a40: $1d
    ld a, a                                       ; $4a41: $7f
    sbc b                                         ; $4a42: $98
    ld e, l                                       ; $4a43: $5d
    ld a, a                                       ; $4a44: $7f
    sbc b                                         ; $4a45: $98
    sbc l                                         ; $4a46: $9d
    ld a, a                                       ; $4a47: $7f
    sbc c                                         ; $4a48: $99
    and e                                         ; $4a49: $a3
    ld a, c                                       ; $4a4a: $79
    sbc c                                         ; $4a4b: $99
    db $e3                                        ; $4a4c: $e3
    ld a, c                                       ; $4a4d: $79
    sbc c                                         ; $4a4e: $99
    inc hl                                        ; $4a4f: $23
    ld a, d                                       ; $4a50: $7a
    sbc c                                         ; $4a51: $99
    ld h, e                                       ; $4a52: $63
    ld a, d                                       ; $4a53: $7a
    sbc c                                         ; $4a54: $99
    and e                                         ; $4a55: $a3
    ld a, d                                       ; $4a56: $7a
    sbc c                                         ; $4a57: $99
    db $e3                                        ; $4a58: $e3
    ld a, d                                       ; $4a59: $7a
    sbc c                                         ; $4a5a: $99
    inc hl                                        ; $4a5b: $23
    ld a, e                                       ; $4a5c: $7b
    sbc c                                         ; $4a5d: $99
    ld h, e                                       ; $4a5e: $63
    ld a, e                                       ; $4a5f: $7b
    sbc c                                         ; $4a60: $99
    and e                                         ; $4a61: $a3
    ld a, e                                       ; $4a62: $7b
    sbc c                                         ; $4a63: $99
    db $e3                                        ; $4a64: $e3
    ld a, e                                       ; $4a65: $7b
    sbc c                                         ; $4a66: $99
    inc hl                                        ; $4a67: $23
    ld a, h                                       ; $4a68: $7c
    sbc c                                         ; $4a69: $99
    ld h, e                                       ; $4a6a: $63
    ld a, h                                       ; $4a6b: $7c
    sbc c                                         ; $4a6c: $99
    and e                                         ; $4a6d: $a3
    ld a, h                                       ; $4a6e: $7c
    sbc c                                         ; $4a6f: $99
    db $e3                                        ; $4a70: $e3
    ld a, h                                       ; $4a71: $7c
    sbc c                                         ; $4a72: $99
    inc hl                                        ; $4a73: $23
    ld a, l                                       ; $4a74: $7d
    sbc c                                         ; $4a75: $99
    ld h, e                                       ; $4a76: $63
    ld a, l                                       ; $4a77: $7d

Jump_007_4a78:
    sbc c                                         ; $4a78: $99
    and e                                         ; $4a79: $a3
    ld a, l                                       ; $4a7a: $7d
    sbc c                                         ; $4a7b: $99
    db $e3                                        ; $4a7c: $e3
    ld a, l                                       ; $4a7d: $7d
    sbc c                                         ; $4a7e: $99
    inc hl                                        ; $4a7f: $23
    ld a, [hl]                                    ; $4a80: $7e
    sbc c                                         ; $4a81: $99
    ld h, e                                       ; $4a82: $63
    ld a, [hl]                                    ; $4a83: $7e
    sbc c                                         ; $4a84: $99
    and e                                         ; $4a85: $a3
    ld a, [hl]                                    ; $4a86: $7e
    sbc c                                         ; $4a87: $99
    db $e3                                        ; $4a88: $e3
    ld a, [hl]                                    ; $4a89: $7e
    sbc c                                         ; $4a8a: $99
    inc hl                                        ; $4a8b: $23
    ld a, a                                       ; $4a8c: $7f
    sbc c                                         ; $4a8d: $99
    ld h, e                                       ; $4a8e: $63
    ld a, a                                       ; $4a8f: $7f
    sbc c                                         ; $4a90: $99
    and e                                         ; $4a91: $a3
    ld a, a                                       ; $4a92: $7f
    sbc d                                         ; $4a93: $9a
    ld h, d                                       ; $4a94: $62
    ld a, a                                       ; $4a95: $7f
    sbc d                                         ; $4a96: $9a
    and d                                         ; $4a97: $a2
    ld a, a                                       ; $4a98: $7f
    sbc e                                         ; $4a99: $9b
    ld c, e                                       ; $4a9a: $4b
    ld a, [hl]                                    ; $4a9b: $7e
    sbc e                                         ; $4a9c: $9b
    adc e                                         ; $4a9d: $8b
    ld a, [hl]                                    ; $4a9e: $7e
    sbc e                                         ; $4a9f: $9b
    bit 7, [hl]                                   ; $4aa0: $cb $7e
    sbc e                                         ; $4aa2: $9b
    dec bc                                        ; $4aa3: $0b
    ld a, a                                       ; $4aa4: $7f
    sbc e                                         ; $4aa5: $9b
    ld c, e                                       ; $4aa6: $4b
    ld a, a                                       ; $4aa7: $7f
    sbc e                                         ; $4aa8: $9b
    adc e                                         ; $4aa9: $8b
    ld a, a                                       ; $4aaa: $7f
    sbc h                                         ; $4aab: $9c
    ld d, d                                       ; $4aac: $52
    ld a, e                                       ; $4aad: $7b
    sbc h                                         ; $4aae: $9c
    sub d                                         ; $4aaf: $92
    ld a, e                                       ; $4ab0: $7b
    sbc h                                         ; $4ab1: $9c
    jp nc, $9c7b                                  ; $4ab2: $d2 $7b $9c

    ld [de], a                                    ; $4ab5: $12
    ld a, h                                       ; $4ab6: $7c

    db $9c, $52, $7c

    ld [hl], e                                    ; $4aba: $73
    ret nc                                        ; $4abb: $d0

    ld a, a                                       ; $4abc: $7f
    ld [hl], h                                    ; $4abd: $74
    ret nc                                        ; $4abe: $d0

    ld a, a                                       ; $4abf: $7f
    sbc h                                         ; $4ac0: $9c
    ld h, [hl]                                    ; $4ac1: $66
    ld a, l                                       ; $4ac2: $7d

    db $75, $d0, $7f

    ld [hl], a                                    ; $4ac6: $77
    call z, $7a7f                                 ; $4ac7: $cc $7f $7a
    call z, Call_007_7c7f                         ; $4aca: $cc $7f $7c
    db $d4                                        ; $4acd: $d4
    ld a, a                                       ; $4ace: $7f

    db $9c, $a5, $7d, $9c, $68, $7e

    sbc [hl]                                      ; $4ad5: $9e
    ld l, a                                       ; $4ad6: $6f
    ld a, e                                       ; $4ad7: $7b
    sbc h                                         ; $4ad8: $9c
    db $10                                        ; $4ad9: $10
    ld a, a                                       ; $4ada: $7f
    sbc h                                         ; $4adb: $9c
    ld h, h                                       ; $4adc: $64
    ld a, a                                       ; $4add: $7f
    sbc l                                         ; $4ade: $9d
    ld hl, sp+$7e                                 ; $4adf: $f8 $7e
    sbc l                                         ; $4ae1: $9d
    ld a, [hl-]                                   ; $4ae2: $3a
    ld a, a                                       ; $4ae3: $7f
    ld a, l                                       ; $4ae4: $7d
    jp nc, $807f                                  ; $4ae5: $d2 $7f $80

    push de                                       ; $4ae8: $d5
    ld a, a                                       ; $4ae9: $7f
    sbc h                                         ; $4aea: $9c
    pop bc                                        ; $4aeb: $c1
    ld a, a                                       ; $4aec: $7f
    sub d                                         ; $4aed: $92
    adc $7f                                       ; $4aee: $ce $7f
    add e                                         ; $4af0: $83
    pop de                                        ; $4af1: $d1
    ld a, a                                       ; $4af2: $7f
    sub b                                         ; $4af3: $90
    db $dd                                        ; $4af4: $dd
    ld a, a                                       ; $4af5: $7f
    sbc [hl]                                      ; $4af6: $9e
    add [hl]                                      ; $4af7: $86
    ld a, h                                       ; $4af8: $7c
    sbc [hl]                                      ; $4af9: $9e
    ret z                                         ; $4afa: $c8

    ld a, h                                       ; $4afb: $7c
    sbc [hl]                                      ; $4afc: $9e
    ld bc, $9e7d                                  ; $4afd: $01 $7d $9e
    ld a, [hl-]                                   ; $4b00: $3a
    ld a, l                                       ; $4b01: $7d
    sbc [hl]                                      ; $4b02: $9e
    add d                                         ; $4b03: $82
    ld a, l                                       ; $4b04: $7d
    sbc [hl]                                      ; $4b05: $9e
    rst $00                                       ; $4b06: $c7
    ld a, l                                       ; $4b07: $7d
    sbc [hl]                                      ; $4b08: $9e
    ld e, $7e                                     ; $4b09: $1e $7e
    sbc [hl]                                      ; $4b0b: $9e
    add c                                         ; $4b0c: $81
    ld a, [hl]                                    ; $4b0d: $7e
    sbc [hl]                                      ; $4b0e: $9e
    push de                                       ; $4b0f: $d5
    ld a, [hl]                                    ; $4b10: $7e
    add c                                         ; $4b11: $81
    ld [c], a                                     ; $4b12: $e2
    ld a, a                                       ; $4b13: $7f
    sub c                                         ; $4b14: $91
    push de                                       ; $4b15: $d5
    ld a, a                                       ; $4b16: $7f
    sub l                                         ; $4b17: $95
    reti                                          ; $4b18: $d9


    ld a, a                                       ; $4b19: $7f
    sub [hl]                                      ; $4b1a: $96
    rst $10                                       ; $4b1b: $d7
    ld a, a                                       ; $4b1c: $7f
    sub a                                         ; $4b1d: $97
    call z, $827f                                 ; $4b1e: $cc $7f $82
    jp hl                                         ; $4b21: $e9


    ld a, a                                       ; $4b22: $7f
    sbc b                                         ; $4b23: $98
    db $dd                                        ; $4b24: $dd
    ld a, a                                       ; $4b25: $7f
    sbc d                                         ; $4b26: $9a
    ld [c], a                                     ; $4b27: $e2
    ld a, a                                       ; $4b28: $7f
    sbc e                                         ; $4b29: $9b
    bit 7, a                                      ; $4b2a: $cb $7f
    sbc [hl]                                      ; $4b2c: $9e
    dec [hl]                                      ; $4b2d: $35
    ld a, a                                       ; $4b2e: $7f
    sbc [hl]                                      ; $4b2f: $9e
    ld l, [hl]                                    ; $4b30: $6e
    ld a, a                                       ; $4b31: $7f
    sbc a                                         ; $4b32: $9f
    rst $08                                       ; $4b33: $cf
    ld a, b                                       ; $4b34: $78
    sbc a                                         ; $4b35: $9f
    ld c, $79                                     ; $4b36: $0e $79
    sbc a                                         ; $4b38: $9f
    bit 7, c                                      ; $4b39: $cb $79
    sbc a                                         ; $4b3b: $9f
    dec c                                         ; $4b3c: $0d
    ld a, d                                       ; $4b3d: $7a
    sbc a                                         ; $4b3e: $9f
    cp [hl]                                       ; $4b3f: $be
    ld a, d                                       ; $4b40: $7a
    sbc a                                         ; $4b41: $9f
    add hl, sp                                    ; $4b42: $39
    ld a, e                                       ; $4b43: $7b
    sbc a                                         ; $4b44: $9f
    sbc $7b                                       ; $4b45: $de $7b
    sbc a                                         ; $4b47: $9f
    ld [hl], h                                    ; $4b48: $74
    ld a, h                                       ; $4b49: $7c
    sbc a                                         ; $4b4a: $9f
    inc e                                         ; $4b4b: $1c
    ld a, l                                       ; $4b4c: $7d
    sbc a                                         ; $4b4d: $9f
    adc b                                         ; $4b4e: $88
    ld a, l                                       ; $4b4f: $7d

    db $9f, $15, $7e

    sbc a                                         ; $4b53: $9f
    ld [hl], $7e                                  ; $4b54: $36 $7e
    sbc a                                         ; $4b56: $9f
    ld [hl], d                                    ; $4b57: $72
    ld a, [hl]                                    ; $4b58: $7e
    sbc a                                         ; $4b59: $9f
    cp d                                          ; $4b5a: $ba
    ld a, [hl]                                    ; $4b5b: $7e
    sbc a                                         ; $4b5c: $9f
    sub d                                         ; $4b5d: $92
    ld a, a                                       ; $4b5e: $7f
    and b                                         ; $4b5f: $a0
    ld l, $7e                                     ; $4b60: $2e $7e
    and b                                         ; $4b62: $a0
    ld e, [hl]                                    ; $4b63: $5e
    ld a, [hl]                                    ; $4b64: $7e
    and b                                         ; $4b65: $a0
    sbc l                                         ; $4b66: $9d

Call_007_4b67:
    ld a, [hl]                                    ; $4b67: $7e
    and b                                         ; $4b68: $a0
    pop bc                                        ; $4b69: $c1
    ld a, [hl]                                    ; $4b6a: $7e
    and b                                         ; $4b6b: $a0
    ld [hl], $7f                                  ; $4b6c: $36 $7f
    and b                                         ; $4b6e: $a0
    ld h, [hl]                                    ; $4b6f: $66
    ld a, a                                       ; $4b70: $7f
    and b                                         ; $4b71: $a0
    sbc h                                         ; $4b72: $9c
    ld a, a                                       ; $4b73: $7f
    and c                                         ; $4b74: $a1
    xor c                                         ; $4b75: $a9
    ld a, c                                       ; $4b76: $79
    and c                                         ; $4b77: $a1
    pop af                                        ; $4b78: $f1
    ld a, c                                       ; $4b79: $79
    and c                                         ; $4b7a: $a1
    ccf                                           ; $4b7b: $3f
    ld a, d                                       ; $4b7c: $7a
    and c                                         ; $4b7d: $a1
    adc l                                         ; $4b7e: $8d
    ld a, d                                       ; $4b7f: $7a
    and c                                         ; $4b80: $a1
    ld d, b                                       ; $4b81: $50
    ld a, e                                       ; $4b82: $7b
    and c                                         ; $4b83: $a1
    and a                                         ; $4b84: $a7
    ld a, e                                       ; $4b85: $7b
    and c                                         ; $4b86: $a1
    ldh [$7b], a                                  ; $4b87: $e0 $7b
    and c                                         ; $4b89: $a1
    call $a17c                                    ; $4b8a: $cd $7c $a1
    inc sp                                        ; $4b8d: $33
    ld a, l                                       ; $4b8e: $7d
    adc d                                         ; $4b8f: $8a
    push hl                                       ; $4b90: $e5
    ld a, a                                       ; $4b91: $7f
    and b                                         ; $4b92: $a0
    rst $08                                       ; $4b93: $cf
    ld a, a                                       ; $4b94: $7f
    and c                                         ; $4b95: $a1
    call z, $a17d                                 ; $4b96: $cc $7d $a1
    ld l, $7f                                     ; $4b99: $2e $7f
    and e                                         ; $4b9b: $a3
    inc bc                                        ; $4b9c: $03
    ld a, h                                       ; $4b9d: $7c
    and c                                         ; $4b9e: $a1
    ld h, a                                       ; $4b9f: $67
    ld a, a                                       ; $4ba0: $7f
    and d                                         ; $4ba1: $a2
    ret                                           ; $4ba2: $c9


    ld a, a                                       ; $4ba3: $7f
    sbc c                                         ; $4ba4: $99
    db $e3                                        ; $4ba5: $e3
    ld a, a                                       ; $4ba6: $7f
    and e                                         ; $4ba7: $a3
    sbc a                                         ; $4ba8: $9f
    ld a, h                                       ; $4ba9: $7c
    and e                                         ; $4baa: $a3
    ret c                                         ; $4bab: $d8

    ld a, h                                       ; $4bac: $7c
    and e                                         ; $4bad: $a3
    db $dd                                        ; $4bae: $dd
    ld a, l                                       ; $4baf: $7d
    and e                                         ; $4bb0: $a3
    add l                                         ; $4bb1: $85
    ld a, [hl]                                    ; $4bb2: $7e
    and e                                         ; $4bb3: $a3
    inc bc                                        ; $4bb4: $03
    ld a, a                                       ; $4bb5: $7f
    and e                                         ; $4bb6: $a3
    ld c, e                                       ; $4bb7: $4b
    ld a, a                                       ; $4bb8: $7f
    and e                                         ; $4bb9: $a3
    or a                                          ; $4bba: $b7
    ld a, a                                       ; $4bbb: $7f
    and h                                         ; $4bbc: $a4
    cp b                                          ; $4bbd: $b8
    ld a, d                                       ; $4bbe: $7a
    and c                                         ; $4bbf: $a1
    ld [c], a                                     ; $4bc0: $e2
    ld a, a                                       ; $4bc1: $7f
    and h                                         ; $4bc2: $a4
    push hl                                       ; $4bc3: $e5
    ld a, d                                       ; $4bc4: $7a
    and h                                         ; $4bc5: $a4
    ld b, $7b                                     ; $4bc6: $06 $7b
    and h                                         ; $4bc8: $a4
    inc sp                                        ; $4bc9: $33
    ld a, e                                       ; $4bca: $7b
    and h                                         ; $4bcb: $a4
    ld e, l                                       ; $4bcc: $5d
    ld a, e                                       ; $4bcd: $7b
    and h                                         ; $4bce: $a4
    ld a, b                                       ; $4bcf: $78
    ld a, e                                       ; $4bd0: $7b
    and h                                         ; $4bd1: $a4
    and l                                         ; $4bd2: $a5
    ld a, e                                       ; $4bd3: $7b
    and h                                         ; $4bd4: $a4
    rst $08                                       ; $4bd5: $cf
    ld a, e                                       ; $4bd6: $7b
    and h                                         ; $4bd7: $a4
    di                                            ; $4bd8: $f3
    ld a, e                                       ; $4bd9: $7b
    and h                                         ; $4bda: $a4
    inc de                                        ; $4bdb: $13
    ld a, l                                       ; $4bdc: $7d
    and h                                         ; $4bdd: $a4
    dec a                                         ; $4bde: $3d
    ld a, l                                       ; $4bdf: $7d

    db $73, $f7, $7f

    ld [hl], e                                    ; $4be3: $73
    rst $30                                       ; $4be4: $f7
    ld a, a                                       ; $4be5: $7f
    ld [hl], e                                    ; $4be6: $73
    rst $30                                       ; $4be7: $f7
    ld a, a                                       ; $4be8: $7f
    and h                                         ; $4be9: $a4
    ld d, l                                       ; $4bea: $55
    ld a, l                                       ; $4beb: $7d

    db $73, $f7, $7f

    ld [hl], e                                    ; $4bef: $73
    rst $30                                       ; $4bf0: $f7
    ld a, a                                       ; $4bf1: $7f
    ld [hl], e                                    ; $4bf2: $73
    rst $30                                       ; $4bf3: $f7
    ld a, a                                       ; $4bf4: $7f
    ld [hl], e                                    ; $4bf5: $73
    rst $30                                       ; $4bf6: $f7
    ld a, a                                       ; $4bf7: $7f

    db $73, $f7, $7f, $73, $f7, $7f

    ld [hl], e                                    ; $4bfe: $73
    rst $30                                       ; $4bff: $f7
    ld a, a                                       ; $4c00: $7f

Jump_007_4c01:
    ld [hl], e                                    ; $4c01: $73
    rst $30                                       ; $4c02: $f7
    ld a, a                                       ; $4c03: $7f
    ld [hl], e                                    ; $4c04: $73
    rst $30                                       ; $4c05: $f7
    ld a, a                                       ; $4c06: $7f
    ld [hl], e                                    ; $4c07: $73
    rst $30                                       ; $4c08: $f7
    ld a, a                                       ; $4c09: $7f
    ld [hl], e                                    ; $4c0a: $73
    rst $30                                       ; $4c0b: $f7
    ld a, a                                       ; $4c0c: $7f
    ld [hl], e                                    ; $4c0d: $73
    rst $30                                       ; $4c0e: $f7
    ld a, a                                       ; $4c0f: $7f
    ld [hl], e                                    ; $4c10: $73
    rst $30                                       ; $4c11: $f7
    ld a, a                                       ; $4c12: $7f
    ld [hl], e                                    ; $4c13: $73
    rst $30                                       ; $4c14: $f7
    ld a, a                                       ; $4c15: $7f
    ld [hl], e                                    ; $4c16: $73
    rst $30                                       ; $4c17: $f7
    ld a, a                                       ; $4c18: $7f
    ld [hl], e                                    ; $4c19: $73
    rst $30                                       ; $4c1a: $f7
    ld a, a                                       ; $4c1b: $7f
    ld [hl], e                                    ; $4c1c: $73
    rst $30                                       ; $4c1d: $f7
    ld a, a                                       ; $4c1e: $7f
    ld [hl], e                                    ; $4c1f: $73
    rst $30                                       ; $4c20: $f7
    ld a, a                                       ; $4c21: $7f
    ld [hl], e                                    ; $4c22: $73
    rst $30                                       ; $4c23: $f7
    ld a, a                                       ; $4c24: $7f
    ld [hl], e                                    ; $4c25: $73
    rst $30                                       ; $4c26: $f7
    ld a, a                                       ; $4c27: $7f
    ld [hl], e                                    ; $4c28: $73
    rst $30                                       ; $4c29: $f7
    ld a, a                                       ; $4c2a: $7f
    ld [hl], e                                    ; $4c2b: $73
    rst $30                                       ; $4c2c: $f7
    ld a, a                                       ; $4c2d: $7f
    ld [hl], e                                    ; $4c2e: $73
    rst $30                                       ; $4c2f: $f7
    ld a, a                                       ; $4c30: $7f
    ld [hl], e                                    ; $4c31: $73
    rst $30                                       ; $4c32: $f7
    ld a, a                                       ; $4c33: $7f
    ld [hl], e                                    ; $4c34: $73
    rst $30                                       ; $4c35: $f7
    ld a, a                                       ; $4c36: $7f
    ld [hl], e                                    ; $4c37: $73
    rst $30                                       ; $4c38: $f7
    ld a, a                                       ; $4c39: $7f
    ld [hl], e                                    ; $4c3a: $73
    rst $30                                       ; $4c3b: $f7
    ld a, a                                       ; $4c3c: $7f
    ld [hl], e                                    ; $4c3d: $73
    rst $30                                       ; $4c3e: $f7
    ld a, a                                       ; $4c3f: $7f
    ld [hl], e                                    ; $4c40: $73
    rst $30                                       ; $4c41: $f7
    ld a, a                                       ; $4c42: $7f
    ld [hl], e                                    ; $4c43: $73
    rst $30                                       ; $4c44: $f7
    ld a, a                                       ; $4c45: $7f
    ld [hl], e                                    ; $4c46: $73
    rst $30                                       ; $4c47: $f7
    ld a, a                                       ; $4c48: $7f
    ld [hl], e                                    ; $4c49: $73
    rst $30                                       ; $4c4a: $f7
    ld a, a                                       ; $4c4b: $7f
    ld [hl], e                                    ; $4c4c: $73
    rst $30                                       ; $4c4d: $f7
    ld a, a                                       ; $4c4e: $7f
    ld [hl], e                                    ; $4c4f: $73
    rst $30                                       ; $4c50: $f7
    ld a, a                                       ; $4c51: $7f
    ld [hl], e                                    ; $4c52: $73
    rst $30                                       ; $4c53: $f7
    ld a, a                                       ; $4c54: $7f
    and h                                         ; $4c55: $a4
    add [hl]                                      ; $4c56: $86
    ld a, l                                       ; $4c57: $7d
    ld [hl], e                                    ; $4c58: $73
    rst $30                                       ; $4c59: $f7
    ld a, a                                       ; $4c5a: $7f
    ld [hl], e                                    ; $4c5b: $73
    rst $30                                       ; $4c5c: $f7
    ld a, a                                       ; $4c5d: $7f
    ld [hl], e                                    ; $4c5e: $73
    rst $30                                       ; $4c5f: $f7
    ld a, a                                       ; $4c60: $7f
    and h                                         ; $4c61: $a4
    xor l                                         ; $4c62: $ad
    ld a, l                                       ; $4c63: $7d
    ld [hl], e                                    ; $4c64: $73
    rst $30                                       ; $4c65: $f7
    ld a, a                                       ; $4c66: $7f
    ld [hl], e                                    ; $4c67: $73
    rst $30                                       ; $4c68: $f7
    ld a, a                                       ; $4c69: $7f
    ld [hl], e                                    ; $4c6a: $73
    rst $30                                       ; $4c6b: $f7
    ld a, a                                       ; $4c6c: $7f
    ld [hl], e                                    ; $4c6d: $73
    rst $30                                       ; $4c6e: $f7
    ld a, a                                       ; $4c6f: $7f
    ld [hl], e                                    ; $4c70: $73
    rst $30                                       ; $4c71: $f7
    ld a, a                                       ; $4c72: $7f
    ld [hl], e                                    ; $4c73: $73
    rst $30                                       ; $4c74: $f7
    ld a, a                                       ; $4c75: $7f
    and h                                         ; $4c76: $a4
    ret z                                         ; $4c77: $c8

    ld a, l                                       ; $4c78: $7d

    db $73, $f7, $7f

    ld [hl], e                                    ; $4c7c: $73
    rst $30                                       ; $4c7d: $f7
    ld a, a                                       ; $4c7e: $7f
    ld [hl], e                                    ; $4c7f: $73
    rst $30                                       ; $4c80: $f7
    ld a, a                                       ; $4c81: $7f
    ld [hl], e                                    ; $4c82: $73
    rst $30                                       ; $4c83: $f7
    ld a, a                                       ; $4c84: $7f
    ld [hl], e                                    ; $4c85: $73
    rst $30                                       ; $4c86: $f7
    ld a, a                                       ; $4c87: $7f
    ld [hl], e                                    ; $4c88: $73
    rst $30                                       ; $4c89: $f7
    ld a, a                                       ; $4c8a: $7f
    ld [hl], e                                    ; $4c8b: $73
    rst $30                                       ; $4c8c: $f7
    ld a, a                                       ; $4c8d: $7f
    ld [hl], e                                    ; $4c8e: $73
    rst $30                                       ; $4c8f: $f7
    ld a, a                                       ; $4c90: $7f
    ld [hl], e                                    ; $4c91: $73
    rst $30                                       ; $4c92: $f7
    ld a, a                                       ; $4c93: $7f
    ld [hl], e                                    ; $4c94: $73
    rst $30                                       ; $4c95: $f7
    ld a, a                                       ; $4c96: $7f
    ld [hl], e                                    ; $4c97: $73
    rst $30                                       ; $4c98: $f7
    ld a, a                                       ; $4c99: $7f
    ld [hl], e                                    ; $4c9a: $73
    rst $30                                       ; $4c9b: $f7
    ld a, a                                       ; $4c9c: $7f
    ld [hl], e                                    ; $4c9d: $73
    rst $30                                       ; $4c9e: $f7
    ld a, a                                       ; $4c9f: $7f
    ld [hl], e                                    ; $4ca0: $73
    rst $30                                       ; $4ca1: $f7
    ld a, a                                       ; $4ca2: $7f
    ld [hl], e                                    ; $4ca3: $73
    rst $30                                       ; $4ca4: $f7
    ld a, a                                       ; $4ca5: $7f
    ld [hl], e                                    ; $4ca6: $73
    rst $30                                       ; $4ca7: $f7
    ld a, a                                       ; $4ca8: $7f
    ld [hl], e                                    ; $4ca9: $73
    rst $30                                       ; $4caa: $f7
    ld a, a                                       ; $4cab: $7f
    ld [hl], e                                    ; $4cac: $73
    rst $30                                       ; $4cad: $f7
    ld a, a                                       ; $4cae: $7f
    and h                                         ; $4caf: $a4
    db $fd                                        ; $4cb0: $fd
    ld a, l                                       ; $4cb1: $7d
    ld [hl], e                                    ; $4cb2: $73
    rst $30                                       ; $4cb3: $f7
    ld a, a                                       ; $4cb4: $7f
    ld [hl], e                                    ; $4cb5: $73
    rst $30                                       ; $4cb6: $f7
    ld a, a                                       ; $4cb7: $7f
    ld [hl], e                                    ; $4cb8: $73
    rst $30                                       ; $4cb9: $f7
    ld a, a                                       ; $4cba: $7f
    ld [hl], e                                    ; $4cbb: $73
    rst $30                                       ; $4cbc: $f7
    ld a, a                                       ; $4cbd: $7f
    ld [hl], e                                    ; $4cbe: $73
    rst $30                                       ; $4cbf: $f7
    ld a, a                                       ; $4cc0: $7f
    ld [hl], e                                    ; $4cc1: $73
    rst $30                                       ; $4cc2: $f7
    ld a, a                                       ; $4cc3: $7f
    ld [hl], e                                    ; $4cc4: $73
    rst $30                                       ; $4cc5: $f7
    ld a, a                                       ; $4cc6: $7f
    ld [hl], a                                    ; $4cc7: $77
    db $ed                                        ; $4cc8: $ed
    ld a, a                                       ; $4cc9: $7f
    ld [hl], e                                    ; $4cca: $73
    rst $30                                       ; $4ccb: $f7
    ld a, a                                       ; $4ccc: $7f
    ld [hl], e                                    ; $4ccd: $73
    rst $30                                       ; $4cce: $f7
    ld a, a                                       ; $4ccf: $7f
    ld [hl], e                                    ; $4cd0: $73
    rst $30                                       ; $4cd1: $f7
    ld a, a                                       ; $4cd2: $7f
    ld [hl], e                                    ; $4cd3: $73
    rst $30                                       ; $4cd4: $f7
    ld a, a                                       ; $4cd5: $7f
    ld [hl], e                                    ; $4cd6: $73
    rst $30                                       ; $4cd7: $f7
    ld a, a                                       ; $4cd8: $7f
    ld [hl], e                                    ; $4cd9: $73
    rst $30                                       ; $4cda: $f7
    ld a, a                                       ; $4cdb: $7f
    ld [hl], e                                    ; $4cdc: $73
    rst $30                                       ; $4cdd: $f7
    ld a, a                                       ; $4cde: $7f
    ld [hl], e                                    ; $4cdf: $73
    rst $30                                       ; $4ce0: $f7
    ld a, a                                       ; $4ce1: $7f
    ld [hl], e                                    ; $4ce2: $73
    rst $30                                       ; $4ce3: $f7
    ld a, a                                       ; $4ce4: $7f
    ld [hl], e                                    ; $4ce5: $73
    rst $30                                       ; $4ce6: $f7
    ld a, a                                       ; $4ce7: $7f
    ld [hl], e                                    ; $4ce8: $73
    rst $30                                       ; $4ce9: $f7
    ld a, a                                       ; $4cea: $7f
    ld [hl], e                                    ; $4ceb: $73
    rst $30                                       ; $4cec: $f7
    ld a, a                                       ; $4ced: $7f
    ld [hl], e                                    ; $4cee: $73
    rst $30                                       ; $4cef: $f7
    ld a, a                                       ; $4cf0: $7f
    ld [hl], e                                    ; $4cf1: $73
    rst $30                                       ; $4cf2: $f7
    ld a, a                                       ; $4cf3: $7f
    ld [hl], e                                    ; $4cf4: $73
    rst $30                                       ; $4cf5: $f7
    ld a, a                                       ; $4cf6: $7f
    ld [hl], e                                    ; $4cf7: $73
    rst $30                                       ; $4cf8: $f7
    ld a, a                                       ; $4cf9: $7f

Call_007_4cfa:
    ld [hl], e                                    ; $4cfa: $73
    rst $30                                       ; $4cfb: $f7
    ld a, a                                       ; $4cfc: $7f
    ld [hl], e                                    ; $4cfd: $73
    rst $30                                       ; $4cfe: $f7
    ld a, a                                       ; $4cff: $7f
    ld [hl], e                                    ; $4d00: $73
    rst $30                                       ; $4d01: $f7
    ld a, a                                       ; $4d02: $7f

    db $a4, $26, $7e

    ld a, c                                       ; $4d06: $79
    xor $7f                                       ; $4d07: $ee $7f
    and h                                         ; $4d09: $a4
    ld de, $9e7f                                  ; $4d0a: $11 $7f $9e
    jp hl                                         ; $4d0d: $e9


    ld a, a                                       ; $4d0e: $7f

    db $a4, $2a, $7f

    and h                                         ; $4d12: $a4
    ld d, c                                       ; $4d13: $51
    ld a, a                                       ; $4d14: $7f
    and h                                         ; $4d15: $a4
    ld l, e                                       ; $4d16: $6b
    ld a, a                                       ; $4d17: $7f
    and h                                         ; $4d18: $a4
    add a                                         ; $4d19: $87
    ld a, a                                       ; $4d1a: $7f

    db $a4, $9e, $7f, $a5, $fb, $7e

    and [hl]                                      ; $4d21: $a6
    ld a, [bc]                                    ; $4d22: $0a
    ld a, e                                       ; $4d23: $7b
    and [hl]                                      ; $4d24: $a6
    and c                                         ; $4d25: $a1
    ld a, e                                       ; $4d26: $7b
    and [hl]                                      ; $4d27: $a6
    sub h                                         ; $4d28: $94
    ld a, h                                       ; $4d29: $7c
    and [hl]                                      ; $4d2a: $a6
    bit 7, l                                      ; $4d2b: $cb $7d
    and l                                         ; $4d2d: $a5
    cp c                                          ; $4d2e: $b9
    ld a, a                                       ; $4d2f: $7f
    and [hl]                                      ; $4d30: $a6
    ld e, l                                       ; $4d31: $5d
    ld a, [hl]                                    ; $4d32: $7e
    and [hl]                                      ; $4d33: $a6
    jp c, $a67e                                   ; $4d34: $da $7e $a6

    ld e, a                                       ; $4d37: $5f
    ld a, a                                       ; $4d38: $7f
    and a                                         ; $4d39: $a7
    sub d                                         ; $4d3a: $92
    ld [hl], c                                    ; $4d3b: $71
    and a                                         ; $4d3c: $a7
    ld e, a                                       ; $4d3d: $5f
    ld [hl], d                                    ; $4d3e: $72
    and [hl]                                      ; $4d3f: $a6
    add $7f                                       ; $4d40: $c6 $7f
    and a                                         ; $4d42: $a7
    sbc l                                         ; $4d43: $9d
    ld [hl], d                                    ; $4d44: $72
    and a                                         ; $4d45: $a7
    ld d, b                                       ; $4d46: $50
    ld [hl], e                                    ; $4d47: $73
    and a                                         ; $4d48: $a7
    ld d, e                                       ; $4d49: $53
    ld [hl], h                                    ; $4d4a: $74
    and a                                         ; $4d4b: $a7
    xor l                                         ; $4d4c: $ad
    ld [hl], h                                    ; $4d4d: $74
    and a                                         ; $4d4e: $a7
    push hl                                       ; $4d4f: $e5
    ld [hl], h                                    ; $4d50: $74
    and a                                         ; $4d51: $a7
    ld d, a                                       ; $4d52: $57
    ld [hl], l                                    ; $4d53: $75
    and a                                         ; $4d54: $a7
    ld [c], a                                     ; $4d55: $e2
    ld [hl], l                                    ; $4d56: $75
    and a                                         ; $4d57: $a7
    ld a, c                                       ; $4d58: $79
    halt                                          ; $4d59: $76
    and a                                         ; $4d5a: $a7
    or $76                                        ; $4d5b: $f6 $76
    and a                                         ; $4d5d: $a7
    push hl                                       ; $4d5e: $e5
    ld [hl], a                                    ; $4d5f: $77
    and a                                         ; $4d60: $a7
    ld b, b                                       ; $4d61: $40
    ld a, b                                       ; $4d62: $78
    and a                                         ; $4d63: $a7
    ld l, e                                       ; $4d64: $6b
    ld a, b                                       ; $4d65: $78
    and a                                         ; $4d66: $a7
    and c                                         ; $4d67: $a1
    ld a, b                                       ; $4d68: $78
    and a                                         ; $4d69: $a7
    jp z, $a778                                   ; $4d6a: $ca $78 $a7

    nop                                           ; $4d6d: $00
    ld a, c                                       ; $4d6e: $79
    and a                                         ; $4d6f: $a7
    inc a                                         ; $4d70: $3c
    ld a, c                                       ; $4d71: $79
    and a                                         ; $4d72: $a7
    call $a779                                    ; $4d73: $cd $79 $a7
    add hl, hl                                    ; $4d76: $29
    ld a, d                                       ; $4d77: $7a
    and h                                         ; $4d78: $a4
    and $7f                                       ; $4d79: $e6 $7f
    and a                                         ; $4d7b: $a7
    or h                                          ; $4d7c: $b4
    ld a, d                                       ; $4d7d: $7a
    and a                                         ; $4d7e: $a7
    dec hl                                        ; $4d7f: $2b
    ld a, e                                       ; $4d80: $7b
    and a                                         ; $4d81: $a7
    ld [hl], e                                    ; $4d82: $73
    ld a, e                                       ; $4d83: $7b
    and a                                         ; $4d84: $a7
    ld b, a                                       ; $4d85: $47
    ld a, l                                       ; $4d86: $7d
    and a                                         ; $4d87: $a7
    adc d                                         ; $4d88: $8a
    ld a, l                                       ; $4d89: $7d
    and a                                         ; $4d8a: $a7
    ld l, e                                       ; $4d8b: $6b
    ld a, [hl]                                    ; $4d8c: $7e
    xor b                                         ; $4d8d: $a8
    ld bc, $a840                                  ; $4d8e: $01 $40 $a8
    ld a, [c]                                     ; $4d91: $f2
    ld b, b                                       ; $4d92: $40
    xor b                                         ; $4d93: $a8
    xor e                                         ; $4d94: $ab
    ld b, c                                       ; $4d95: $41
    xor b                                         ; $4d96: $a8
    db $e4                                        ; $4d97: $e4
    ld b, d                                       ; $4d98: $42
    and a                                         ; $4d99: $a7
    ld c, l                                       ; $4d9a: $4d
    ld a, a                                       ; $4d9b: $7f

    db $a7, $cd, $7f

    xor b                                         ; $4d9f: $a8
    cp a                                          ; $4da0: $bf
    ld b, e                                       ; $4da1: $43
    xor b                                         ; $4da2: $a8
    ccf                                           ; $4da3: $3f
    ld b, h                                       ; $4da4: $44
    xor b                                         ; $4da5: $a8
    sbc a                                         ; $4da6: $9f
    ld b, h                                       ; $4da7: $44
    xor b                                         ; $4da8: $a8
    ld l, $46                                     ; $4da9: $2e $46
    xor b                                         ; $4dab: $a8
    ccf                                           ; $4dac: $3f
    ld b, a                                       ; $4dad: $47
    xor b                                         ; $4dae: $a8
    reti                                          ; $4daf: $d9


    ld b, a                                       ; $4db0: $47
    xor b                                         ; $4db1: $a8
    ld l, l                                       ; $4db2: $6d
    ld c, b                                       ; $4db3: $48
    xor b                                         ; $4db4: $a8
    rlca                                          ; $4db5: $07
    ld c, c                                       ; $4db6: $49
    xor b                                         ; $4db7: $a8
    xor h                                         ; $4db8: $ac
    ld c, c                                       ; $4db9: $49
    xor b                                         ; $4dba: $a8
    ld b, a                                       ; $4dbb: $47
    ld c, d                                       ; $4dbc: $4a
    xor b                                         ; $4dbd: $a8
    call nc, $a84a                                ; $4dbe: $d4 $4a $a8
    ld b, [hl]                                    ; $4dc1: $46
    ld c, e                                       ; $4dc2: $4b
    xor b                                         ; $4dc3: $a8
    ret c                                         ; $4dc4: $d8

    ld c, e                                       ; $4dc5: $4b
    xor b                                         ; $4dc6: $a8

Jump_007_4dc7:
    add h                                         ; $4dc7: $84
    ld c, h                                       ; $4dc8: $4c
    xor b                                         ; $4dc9: $a8
    ld d, l                                       ; $4dca: $55
    ld c, l                                       ; $4dcb: $4d
    xor b                                         ; $4dcc: $a8
    db $fc                                        ; $4dcd: $fc
    ld c, l                                       ; $4dce: $4d
    xor b                                         ; $4dcf: $a8
    ld [hl-], a                                   ; $4dd0: $32
    ld c, [hl]                                    ; $4dd1: $4e
    xor b                                         ; $4dd2: $a8

Call_007_4dd3:
    ld h, e                                       ; $4dd3: $63
    ld c, [hl]                                    ; $4dd4: $4e
    xor b                                         ; $4dd5: $a8
    ld b, [hl]                                    ; $4dd6: $46
    ld c, a                                       ; $4dd7: $4f
    xor b                                         ; $4dd8: $a8
    xor a                                         ; $4dd9: $af
    ld c, a                                       ; $4dda: $4f
    xor b                                         ; $4ddb: $a8
    ld b, h                                       ; $4ddc: $44
    ld d, b                                       ; $4ddd: $50
    xor b                                         ; $4dde: $a8
    ld a, h                                       ; $4ddf: $7c
    ld d, b                                       ; $4de0: $50
    xor b                                         ; $4de1: $a8
    di                                            ; $4de2: $f3
    ld d, b                                       ; $4de3: $50
    xor b                                         ; $4de4: $a8
    ld b, b                                       ; $4de5: $40
    ld d, c                                       ; $4de6: $51
    xor b                                         ; $4de7: $a8
    db $fc                                        ; $4de8: $fc
    ld d, c                                       ; $4de9: $51
    xor b                                         ; $4dea: $a8
    adc l                                         ; $4deb: $8d
    ld d, d                                       ; $4dec: $52
    xor b                                         ; $4ded: $a8
    nop                                           ; $4dee: $00
    ld d, e                                       ; $4def: $53
    xor b                                         ; $4df0: $a8
    ld a, l                                       ; $4df1: $7d
    ld d, e                                       ; $4df2: $53
    xor b                                         ; $4df3: $a8
    or d                                          ; $4df4: $b2
    ld d, e                                       ; $4df5: $53
    xor b                                         ; $4df6: $a8
    ld [bc], a                                    ; $4df7: $02
    ld d, h                                       ; $4df8: $54
    xor b                                         ; $4df9: $a8
    and a                                         ; $4dfa: $a7
    ld d, [hl]                                    ; $4dfb: $56
    xor b                                         ; $4dfc: $a8
    ld a, [c]                                     ; $4dfd: $f2
    ld e, b                                       ; $4dfe: $58
    xor b                                         ; $4dff: $a8
    add h                                         ; $4e00: $84

Jump_007_4e01:
    ld e, d                                       ; $4e01: $5a
    xor b                                         ; $4e02: $a8
    and $5a                                       ; $4e03: $e6 $5a
    xor b                                         ; $4e05: $a8
    ld [hl+], a                                   ; $4e06: $22
    ld e, e                                       ; $4e07: $5b
    xor b                                         ; $4e08: $a8
    or $5b                                        ; $4e09: $f6 $5b
    xor b                                         ; $4e0b: $a8
    ld [hl], $5c                                  ; $4e0c: $36 $5c
    xor b                                         ; $4e0e: $a8
    sub c                                         ; $4e0f: $91
    ld e, h                                       ; $4e10: $5c
    xor b                                         ; $4e11: $a8
    ldh a, [$5c]                                  ; $4e12: $f0 $5c
    xor b                                         ; $4e14: $a8
    cp l                                          ; $4e15: $bd
    ld e, l                                       ; $4e16: $5d
    xor b                                         ; $4e17: $a8
    ld l, a                                       ; $4e18: $6f
    ld e, [hl]                                    ; $4e19: $5e
    xor b                                         ; $4e1a: $a8
    or h                                          ; $4e1b: $b4
    ld e, [hl]                                    ; $4e1c: $5e
    xor b                                         ; $4e1d: $a8
    ld sp, hl                                     ; $4e1e: $f9
    ld e, [hl]                                    ; $4e1f: $5e
    xor b                                         ; $4e20: $a8
    ld l, e                                       ; $4e21: $6b
    ld e, a                                       ; $4e22: $5f
    xor b                                         ; $4e23: $a8
    pop bc                                        ; $4e24: $c1
    ld e, a                                       ; $4e25: $5f
    xor b                                         ; $4e26: $a8
    rst $18                                       ; $4e27: $df
    ld e, a                                       ; $4e28: $5f
    and a                                         ; $4e29: $a7
    adc d                                         ; $4e2a: $8a
    ld a, l                                       ; $4e2b: $7d

    db $a8, $07, $60

    xor b                                         ; $4e2f: $a8
    add hl, sp                                    ; $4e30: $39
    ld h, d                                       ; $4e31: $62
    xor b                                         ; $4e32: $a8
    ld d, h                                       ; $4e33: $54
    ld h, d                                       ; $4e34: $62
    xor b                                         ; $4e35: $a8
    ld l, a                                       ; $4e36: $6f
    ld h, d                                       ; $4e37: $62

    db $a8, $8a, $62

    xor b                                         ; $4e3b: $a8
    and l                                         ; $4e3c: $a5
    ld h, d                                       ; $4e3d: $62
    xor b                                         ; $4e3e: $a8
    ret nz                                        ; $4e3f: $c0

    ld h, d                                       ; $4e40: $62
    xor b                                         ; $4e41: $a8
    db $db                                        ; $4e42: $db
    ld h, d                                       ; $4e43: $62

    db $a8, $f6, $62, $a8, $a3, $63

    xor b                                         ; $4e4a: $a8
    inc e                                         ; $4e4b: $1c
    ld h, l                                       ; $4e4c: $65
    xor b                                         ; $4e4d: $a8
    rst $10                                       ; $4e4e: $d7
    ld h, l                                       ; $4e4f: $65
    xor b                                         ; $4e50: $a8
    sub a                                         ; $4e51: $97
    ld h, [hl]                                    ; $4e52: $66
    xor b                                         ; $4e53: $a8
    sub a                                         ; $4e54: $97
    ld l, b                                       ; $4e55: $68
    xor b                                         ; $4e56: $a8
    add hl, hl                                    ; $4e57: $29
    ld l, c                                       ; $4e58: $69
    xor b                                         ; $4e59: $a8
    inc bc                                        ; $4e5a: $03
    ld l, d                                       ; $4e5b: $6a
    xor b                                         ; $4e5c: $a8
    dec a                                         ; $4e5d: $3d
    ld l, d                                       ; $4e5e: $6a
    xor b                                         ; $4e5f: $a8
    and e                                         ; $4e60: $a3
    ld l, d                                       ; $4e61: $6a
    xor b                                         ; $4e62: $a8
    rst $38                                       ; $4e63: $ff
    ld l, d                                       ; $4e64: $6a
    xor b                                         ; $4e65: $a8
    add l                                         ; $4e66: $85
    ld l, e                                       ; $4e67: $6b
    xor b                                         ; $4e68: $a8
    and b                                         ; $4e69: $a0
    ld l, e                                       ; $4e6a: $6b
    xor b                                         ; $4e6b: $a8
    cp e                                          ; $4e6c: $bb
    ld l, e                                       ; $4e6d: $6b
    xor b                                         ; $4e6e: $a8
    dec e                                         ; $4e6f: $1d
    ld l, h                                       ; $4e70: $6c
    xor b                                         ; $4e71: $a8
    adc l                                         ; $4e72: $8d
    ld l, h                                       ; $4e73: $6c
    xor b                                         ; $4e74: $a8
    cp h                                          ; $4e75: $bc
    ld l, h                                       ; $4e76: $6c
    xor b                                         ; $4e77: $a8
    ld [hl], $6d                                  ; $4e78: $36 $6d
    xor b                                         ; $4e7a: $a8
    inc d                                         ; $4e7b: $14
    ld l, [hl]                                    ; $4e7c: $6e
    xor b                                         ; $4e7d: $a8
    push hl                                       ; $4e7e: $e5
    ld l, [hl]                                    ; $4e7f: $6e
    xor b                                         ; $4e80: $a8
    sbc a                                         ; $4e81: $9f
    ld [hl], b                                    ; $4e82: $70
    xor b                                         ; $4e83: $a8
    dec e                                         ; $4e84: $1d
    ld [hl], d                                    ; $4e85: $72
    xor b                                         ; $4e86: $a8
    ld b, a                                       ; $4e87: $47
    ld [hl], h                                    ; $4e88: $74
    xor b                                         ; $4e89: $a8
    reti                                          ; $4e8a: $d9


    ld [hl], h                                    ; $4e8b: $74
    xor b                                         ; $4e8c: $a8
    inc de                                        ; $4e8d: $13
    ld [hl], l                                    ; $4e8e: $75
    xor b                                         ; $4e8f: $a8
    ld e, l                                       ; $4e90: $5d
    ld [hl], l                                    ; $4e91: $75
    xor b                                         ; $4e92: $a8
    add d                                         ; $4e93: $82
    ld [hl], l                                    ; $4e94: $75
    xor b                                         ; $4e95: $a8
    call nz, $a875                                ; $4e96: $c4 $75 $a8
    ldh a, [$75]                                  ; $4e99: $f0 $75
    xor b                                         ; $4e9b: $a8
    ld [hl+], a                                   ; $4e9c: $22
    halt                                          ; $4e9d: $76
    xor b                                         ; $4e9e: $a8
    ld d, l                                       ; $4e9f: $55
    halt                                          ; $4ea0: $76
    xor b                                         ; $4ea1: $a8
    sbc l                                         ; $4ea2: $9d
    halt                                          ; $4ea3: $76
    xor b                                         ; $4ea4: $a8
    call z, $a876                                 ; $4ea5: $cc $76 $a8
    ld d, b                                       ; $4ea8: $50
    ld [hl], a                                    ; $4ea9: $77
    xor b                                         ; $4eaa: $a8
    jp z, $a877                                   ; $4eab: $ca $77 $a8

    ret nz                                        ; $4eae: $c0

    ld a, c                                       ; $4eaf: $79
    xor b                                         ; $4eb0: $a8
    ld bc, $a87a                                  ; $4eb1: $01 $7a $a8
    and l                                         ; $4eb4: $a5
    ld a, d                                       ; $4eb5: $7a
    xor b                                         ; $4eb6: $a8
    ld e, e                                       ; $4eb7: $5b
    ld a, e                                       ; $4eb8: $7b
    xor b                                         ; $4eb9: $a8
    dec de                                        ; $4eba: $1b
    ld a, h                                       ; $4ebb: $7c
    xor b                                         ; $4ebc: $a8
    xor $7c                                       ; $4ebd: $ee $7c
    xor b                                         ; $4ebf: $a8
    ld a, a                                       ; $4ec0: $7f
    ld a, [hl]                                    ; $4ec1: $7e
    xor c                                         ; $4ec2: $a9
    db $01                                        ; $4ec3: $01
    ld b, b                                       ; $4ec4: $40

    db $a8, $65, $7f

    xor b                                         ; $4ec8: $a8
    add b                                         ; $4ec9: $80
    ld a, a                                       ; $4eca: $7f
    xor c                                         ; $4ecb: $a9
    ld b, [hl]                                    ; $4ecc: $46
    ld b, c                                       ; $4ecd: $41
    xor c                                         ; $4ece: $a9
    or b                                          ; $4ecf: $b0
    ld b, c                                       ; $4ed0: $41
    xor c                                         ; $4ed1: $a9
    ld b, a                                       ; $4ed2: $47
    ld b, e                                       ; $4ed3: $43
    xor c                                         ; $4ed4: $a9
    sbc $44                                       ; $4ed5: $de $44
    xor c                                         ; $4ed7: $a9
    ld h, $45                                     ; $4ed8: $26 $45
    xor b                                         ; $4eda: $a8
    jp z, $a97f                                   ; $4edb: $ca $7f $a9

    ld e, [hl]                                    ; $4ede: $5e
    ld b, l                                       ; $4edf: $45
    xor c                                         ; $4ee0: $a9
    inc d                                         ; $4ee1: $14
    ld b, [hl]                                    ; $4ee2: $46
    xor c                                         ; $4ee3: $a9
    ld b, [hl]                                    ; $4ee4: $46
    ld b, [hl]                                    ; $4ee5: $46
    xor c                                         ; $4ee6: $a9
    sbc b                                         ; $4ee7: $98
    ld b, [hl]                                    ; $4ee8: $46
    xor c                                         ; $4ee9: $a9
    reti                                          ; $4eea: $d9


    ld b, [hl]                                    ; $4eeb: $46
    xor c                                         ; $4eec: $a9
    ld c, c                                       ; $4eed: $49
    ld b, a                                       ; $4eee: $47
    xor c                                         ; $4eef: $a9
    call nz, $a947                                ; $4ef0: $c4 $47 $a9
    ld h, $48                                     ; $4ef3: $26 $48
    xor c                                         ; $4ef5: $a9
    ld c, [hl]                                    ; $4ef6: $4e
    ld c, d                                       ; $4ef7: $4a
    xor c                                         ; $4ef8: $a9
    ret z                                         ; $4ef9: $c8

    ld c, d                                       ; $4efa: $4a
    xor c                                         ; $4efb: $a9
    jr c, jr_007_4f49                             ; $4efc: $38 $4b

    xor c                                         ; $4efe: $a9
    jp z, $a94b                                   ; $4eff: $ca $4b $a9

    ld l, b                                       ; $4f02: $68
    ld c, h                                       ; $4f03: $4c
    xor c                                         ; $4f04: $a9
    inc a                                         ; $4f05: $3c
    ld c, l                                       ; $4f06: $4d
    xor c                                         ; $4f07: $a9
    ld d, a                                       ; $4f08: $57
    ld c, l                                       ; $4f09: $4d
    xor c                                         ; $4f0a: $a9
    cp h                                          ; $4f0b: $bc
    ld c, l                                       ; $4f0c: $4d
    xor c                                         ; $4f0d: $a9
    add $4e                                       ; $4f0e: $c6 $4e
    xor c                                         ; $4f10: $a9
    ld h, c                                       ; $4f11: $61
    ld c, a                                       ; $4f12: $4f
    xor c                                         ; $4f13: $a9
    cp e                                          ; $4f14: $bb
    ld c, a                                       ; $4f15: $4f
    xor c                                         ; $4f16: $a9
    rst $28                                       ; $4f17: $ef
    ld d, b                                       ; $4f18: $50
    xor c                                         ; $4f19: $a9
    ld b, d                                       ; $4f1a: $42
    ld d, c                                       ; $4f1b: $51
    xor c                                         ; $4f1c: $a9
    ld e, l                                       ; $4f1d: $5d
    ld d, c                                       ; $4f1e: $51
    xor c                                         ; $4f1f: $a9
    add hl, bc                                    ; $4f20: $09
    ld d, d                                       ; $4f21: $52
    xor c                                         ; $4f22: $a9
    rst $38                                       ; $4f23: $ff
    ld d, e                                       ; $4f24: $53
    xor c                                         ; $4f25: $a9
    pop hl                                        ; $4f26: $e1
    ld d, l                                       ; $4f27: $55
    xor c                                         ; $4f28: $a9
    jp $a957                                      ; $4f29: $c3 $57 $a9


    inc b                                         ; $4f2c: $04
    ld e, b                                       ; $4f2d: $58
    xor c                                         ; $4f2e: $a9
    ld d, e                                       ; $4f2f: $53
    ld e, b                                       ; $4f30: $58
    xor c                                         ; $4f31: $a9
    ld e, l                                       ; $4f32: $5d
    ld e, c                                       ; $4f33: $59
    xor c                                         ; $4f34: $a9
    sub l                                         ; $4f35: $95
    ld e, c                                       ; $4f36: $59
    xor c                                         ; $4f37: $a9
    cp e                                          ; $4f38: $bb
    ld e, c                                       ; $4f39: $59
    xor c                                         ; $4f3a: $a9
    dec b                                         ; $4f3b: $05
    ld e, d                                       ; $4f3c: $5a
    xor c                                         ; $4f3d: $a9
    ld e, b                                       ; $4f3e: $58
    ld e, d                                       ; $4f3f: $5a
    xor c                                         ; $4f40: $a9
    and d                                         ; $4f41: $a2
    ld e, d                                       ; $4f42: $5a
    xor c                                         ; $4f43: $a9
    cp l                                          ; $4f44: $bd
    ld e, d                                       ; $4f45: $5a
    xor c                                         ; $4f46: $a9
    inc de                                        ; $4f47: $13
    ld e, e                                       ; $4f48: $5b

jr_007_4f49:
    xor c                                         ; $4f49: $a9
    ld c, l                                       ; $4f4a: $4d
    ld e, e                                       ; $4f4b: $5b
    xor c                                         ; $4f4c: $a9
    add a                                         ; $4f4d: $87
    ld e, e                                       ; $4f4e: $5b
    xor c                                         ; $4f4f: $a9
    ld c, c                                       ; $4f50: $49
    ld e, h                                       ; $4f51: $5c
    xor b                                         ; $4f52: $a8
    db $01                                        ; $4f53: $01
    ld a, d                                       ; $4f54: $7a

    db $a9, $ab, $5c

    xor c                                         ; $4f58: $a9
    xor e                                         ; $4f59: $ab
    ld e, h                                       ; $4f5a: $5c
    xor c                                         ; $4f5b: $a9
    jp $a960                                      ; $4f5c: $c3 $60 $a9


    db $e3                                        ; $4f5f: $e3
    ld h, h                                       ; $4f60: $64
    xor c                                         ; $4f61: $a9
    db $e3                                        ; $4f62: $e3
    ld h, h                                       ; $4f63: $64
    xor c                                         ; $4f64: $a9
    xor e                                         ; $4f65: $ab
    ld e, h                                       ; $4f66: $5c
    xor c                                         ; $4f67: $a9
    xor e                                         ; $4f68: $ab
    ld e, h                                       ; $4f69: $5c
    xor c                                         ; $4f6a: $a9
    db $e3                                        ; $4f6b: $e3
    ld h, h                                       ; $4f6c: $64
    xor c                                         ; $4f6d: $a9
    db $e3                                        ; $4f6e: $e3
    ld h, h                                       ; $4f6f: $64
    xor c                                         ; $4f70: $a9
    db $e3                                        ; $4f71: $e3
    ld h, h                                       ; $4f72: $64
    xor c                                         ; $4f73: $a9
    db $e3                                        ; $4f74: $e3
    ld h, h                                       ; $4f75: $64
    xor c                                         ; $4f76: $a9
    db $e3                                        ; $4f77: $e3
    ld h, h                                       ; $4f78: $64
    xor c                                         ; $4f79: $a9
    xor e                                         ; $4f7a: $ab
    ld e, h                                       ; $4f7b: $5c
    xor c                                         ; $4f7c: $a9
    db $e3                                        ; $4f7d: $e3
    ld l, b                                       ; $4f7e: $68
    xor c                                         ; $4f7f: $a9
    ei                                            ; $4f80: $fb
    ld l, c                                       ; $4f81: $69
    xor c                                         ; $4f82: $a9
    db $ec                                        ; $4f83: $ec
    ld l, d                                       ; $4f84: $6a
    xor c                                         ; $4f85: $a9
    db $ed                                        ; $4f86: $ed
    ld l, e                                       ; $4f87: $6b
    xor c                                         ; $4f88: $a9
    db $f4                                        ; $4f89: $f4
    ld l, h                                       ; $4f8a: $6c
    xor c                                         ; $4f8b: $a9
    db $d3                                        ; $4f8c: $d3
    ld l, l                                       ; $4f8d: $6d
    xor c                                         ; $4f8e: $a9
    add sp, $6e                                   ; $4f8f: $e8 $6e
    xor c                                         ; $4f91: $a9
    di                                            ; $4f92: $f3
    ld l, a                                       ; $4f93: $6f
    xor c                                         ; $4f94: $a9
    db $fd                                        ; $4f95: $fd
    ld [hl], b                                    ; $4f96: $70
    xor c                                         ; $4f97: $a9
    cp $71                                        ; $4f98: $fe $71
    xor c                                         ; $4f9a: $a9
    db $fd                                        ; $4f9b: $fd
    ld [hl], d                                    ; $4f9c: $72
    xor c                                         ; $4f9d: $a9
    ret c                                         ; $4f9e: $d8

    ld [hl], e                                    ; $4f9f: $73
    xor c                                         ; $4fa0: $a9
    jp c, $a974                                   ; $4fa1: $da $74 $a9

    rst $20                                       ; $4fa4: $e7
    ld [hl], l                                    ; $4fa5: $75
    xor c                                         ; $4fa6: $a9
    or b                                          ; $4fa7: $b0
    halt                                          ; $4fa8: $76
    xor c                                         ; $4fa9: $a9
    add e                                         ; $4faa: $83
    ld [hl], a                                    ; $4fab: $77
    xor c                                         ; $4fac: $a9
    ld h, c                                       ; $4fad: $61
    ld a, b                                       ; $4fae: $78
    xor c                                         ; $4faf: $a9
    add l                                         ; $4fb0: $85
    ld a, b                                       ; $4fb1: $78
    xor c                                         ; $4fb2: $a9
    add l                                         ; $4fb3: $85
    ld a, d                                       ; $4fb4: $7a
    xor c                                         ; $4fb5: $a9
    add l                                         ; $4fb6: $85
    ld a, h                                       ; $4fb7: $7c
    xor d                                         ; $4fb8: $aa
    ld bc, $aa40                                  ; $4fb9: $01 $40 $aa
    ld bc, $aa42                                  ; $4fbc: $01 $42 $aa
    ld bc, $aa44                                  ; $4fbf: $01 $44 $aa
    ld bc, $aa46                                  ; $4fc2: $01 $46 $aa
    ld bc, $aa48                                  ; $4fc5: $01 $48 $aa
    ld bc, $aa4a                                  ; $4fc8: $01 $4a $aa
    ld bc, $aa4c                                  ; $4fcb: $01 $4c $aa
    ld bc, $aa4e                                  ; $4fce: $01 $4e $aa
    ld bc, $aa50                                  ; $4fd1: $01 $50 $aa
    ld bc, $aa52                                  ; $4fd4: $01 $52 $aa
    ld bc, $aa54                                  ; $4fd7: $01 $54 $aa
    ld bc, $aa56                                  ; $4fda: $01 $56 $aa
    ld bc, $aa58                                  ; $4fdd: $01 $58 $aa
    ld bc, $aa5a                                  ; $4fe0: $01 $5a $aa
    jp nc, $aa5c                                  ; $4fe3: $d2 $5c $aa

    cp d                                          ; $4fe6: $ba
    ld e, a                                       ; $4fe7: $5f
    xor d                                         ; $4fe8: $aa
    halt                                          ; $4fe9: $76
    ld h, d                                       ; $4fea: $62
    xor d                                         ; $4feb: $aa
    ld a, [hl+]                                   ; $4fec: $2a
    ld h, l                                       ; $4fed: $65
    xor d                                         ; $4fee: $aa
    ld h, l                                       ; $4fef: $65
    ld l, b                                       ; $4ff0: $68
    xor d                                         ; $4ff1: $aa
    ld e, c                                       ; $4ff2: $59
    ld l, e                                       ; $4ff3: $6b
    xor d                                         ; $4ff4: $aa
    ld c, e                                       ; $4ff5: $4b
    ld l, [hl]                                    ; $4ff6: $6e
    xor d                                         ; $4ff7: $aa
    ld h, e                                       ; $4ff8: $63
    ld [hl], c                                    ; $4ff9: $71
    xor d                                         ; $4ffa: $aa
    ld d, $74                                     ; $4ffb: $16 $74
    xor d                                         ; $4ffd: $aa
    inc d                                         ; $4ffe: $14
    ld [hl], a                                    ; $4fff: $77
    xor d                                         ; $5000: $aa

Call_007_5001:
Jump_007_5001:
    ld a, [de]                                    ; $5001: $1a
    ld a, d                                       ; $5002: $7a
    xor e                                         ; $5003: $ab
    ld bc, $aa40                                  ; $5004: $01 $40 $aa
    and $7c                                       ; $5007: $e6 $7c
    xor e                                         ; $5009: $ab
    ld [hl-], a                                   ; $500a: $32
    ld b, e                                       ; $500b: $43
    xor e                                         ; $500c: $ab
    inc hl                                        ; $500d: $23
    ld b, [hl]                                    ; $500e: $46
    xor e                                         ; $500f: $ab
    ld e, $49                                     ; $5010: $1e $49
    xor e                                         ; $5012: $ab
    ld d, d                                       ; $5013: $52
    ld c, h                                       ; $5014: $4c
    xor e                                         ; $5015: $ab
    or [hl]                                       ; $5016: $b6
    ld c, a                                       ; $5017: $4f
    xor e                                         ; $5018: $ab
    sbc d                                         ; $5019: $9a
    ld d, d                                       ; $501a: $52
    xor e                                         ; $501b: $ab
    adc [hl]                                      ; $501c: $8e
    ld d, l                                       ; $501d: $55
    xor e                                         ; $501e: $ab
    or c                                          ; $501f: $b1
    ld e, b                                       ; $5020: $58
    xor e                                         ; $5021: $ab
    xor a                                         ; $5022: $af
    ld e, e                                       ; $5023: $5b
    xor e                                         ; $5024: $ab
    sbc $5e                                       ; $5025: $de $5e
    xor e                                         ; $5027: $ab
    cp e                                          ; $5028: $bb
    ld h, c                                       ; $5029: $61
    xor e                                         ; $502a: $ab
    xor [hl]                                      ; $502b: $ae
    ld h, h                                       ; $502c: $64
    xor e                                         ; $502d: $ab
    cp a                                          ; $502e: $bf
    ld h, a                                       ; $502f: $67
    xor e                                         ; $5030: $ab
    pop bc                                        ; $5031: $c1
    ld l, d                                       ; $5032: $6a
    xor e                                         ; $5033: $ab
    db $ed                                        ; $5034: $ed
    ld l, l                                       ; $5035: $6d
    xor e                                         ; $5036: $ab
    ld [hl+], a                                   ; $5037: $22
    ld [hl], c                                    ; $5038: $71
    xor e                                         ; $5039: $ab
    db $10                                        ; $503a: $10
    ld [hl], h                                    ; $503b: $74

    db $ab, $ea, $76

    xor e                                         ; $503f: $ab
    db $dd                                        ; $5040: $dd
    ld a, c                                       ; $5041: $79
    xor e                                         ; $5042: $ab
    ret nc                                        ; $5043: $d0

    ld a, h                                       ; $5044: $7c
    xor h                                         ; $5045: $ac
    ld bc, $ac40                                  ; $5046: $01 $40 $ac
    call nc, $ac42                                ; $5049: $d4 $42 $ac
    cp l                                          ; $504c: $bd
    ld b, l                                       ; $504d: $45
    xor h                                         ; $504e: $ac
    xor l                                         ; $504f: $ad
    ld c, b                                       ; $5050: $48
    xor h                                         ; $5051: $ac
    and [hl]                                      ; $5052: $a6
    ld c, e                                       ; $5053: $4b
    xor h                                         ; $5054: $ac
    rst $18                                       ; $5055: $df
    ld c, [hl]                                    ; $5056: $4e
    xor h                                         ; $5057: $ac
    inc de                                        ; $5058: $13
    ld d, d                                       ; $5059: $52
    xor h                                         ; $505a: $ac
    dec a                                         ; $505b: $3d
    ld d, l                                       ; $505c: $55
    xor h                                         ; $505d: $ac
    inc de                                        ; $505e: $13
    ld e, b                                       ; $505f: $58
    xor h                                         ; $5060: $ac
    ld b, $5b                                     ; $5061: $06 $5b
    xor h                                         ; $5063: $ac
    sub $5d                                       ; $5064: $d6 $5d
    xor h                                         ; $5066: $ac
    jp c, $ac60                                   ; $5067: $da $60 $ac

    jp z, $ac63                                   ; $506a: $ca $63 $ac

    ret nz                                        ; $506d: $c0

    ld h, [hl]                                    ; $506e: $66
    xor h                                         ; $506f: $ac
    or a                                          ; $5070: $b7
    ld l, c                                       ; $5071: $69
    xor h                                         ; $5072: $ac
    cp e                                          ; $5073: $bb
    ld l, h                                       ; $5074: $6c
    xor h                                         ; $5075: $ac
    rst $10                                       ; $5076: $d7
    ld l, a                                       ; $5077: $6f
    xor h                                         ; $5078: $ac
    and d                                         ; $5079: $a2
    ld [hl], d                                    ; $507a: $72
    xor h                                         ; $507b: $ac
    adc b                                         ; $507c: $88
    ld [hl], l                                    ; $507d: $75
    xor h                                         ; $507e: $ac
    add d                                         ; $507f: $82
    ld a, b                                       ; $5080: $78
    xor h                                         ; $5081: $ac
    and c                                         ; $5082: $a1
    ld a, e                                       ; $5083: $7b
    xor l                                         ; $5084: $ad
    ld bc, $ad40                                  ; $5085: $01 $40 $ad
    jp nc, $ad42                                  ; $5088: $d2 $42 $ad

    dec c                                         ; $508b: $0d
    ld b, [hl]                                    ; $508c: $46
    xor l                                         ; $508d: $ad
    ld b, [hl]                                    ; $508e: $46
    ld c, c                                       ; $508f: $49
    xor l                                         ; $5090: $ad
    add hl, hl                                    ; $5091: $29
    ld c, h                                       ; $5092: $4c
    xor l                                         ; $5093: $ad
    ld [hl-], a                                   ; $5094: $32
    ld c, a                                       ; $5095: $4f

    db $ad, $39, $52

    xor l                                         ; $5099: $ad
    ld b, h                                       ; $509a: $44
    ld d, l                                       ; $509b: $55
    xor l                                         ; $509c: $ad
    dec a                                         ; $509d: $3d
    ld e, b                                       ; $509e: $58
    xor l                                         ; $509f: $ad
    ld c, $5b                                     ; $50a0: $0e $5b
    xor l                                         ; $50a2: $ad
    rst $18                                       ; $50a3: $df
    ld e, l                                       ; $50a4: $5d
    xor l                                         ; $50a5: $ad
    ldh a, [$60]                                  ; $50a6: $f0 $60
    xor l                                         ; $50a8: $ad
    xor a                                         ; $50a9: $af
    ld h, e                                       ; $50aa: $63

Call_007_50ab:
    xor l                                         ; $50ab: $ad
    reti                                          ; $50ac: $d9


    ld h, [hl]                                    ; $50ad: $66
    xor l                                         ; $50ae: $ad
    pop af                                        ; $50af: $f1
    ld l, c                                       ; $50b0: $69
    xor l                                         ; $50b1: $ad
    db $ec                                        ; $50b2: $ec
    ld l, h                                       ; $50b3: $6c
    xor l                                         ; $50b4: $ad
    call nc, $ad6f                                ; $50b5: $d4 $6f $ad
    sub l                                         ; $50b8: $95
    ld [hl], d                                    ; $50b9: $72
    xor l                                         ; $50ba: $ad
    ld e, h                                       ; $50bb: $5c
    ld [hl], l                                    ; $50bc: $75
    xor l                                         ; $50bd: $ad
    ld [hl], $78                                  ; $50be: $36 $78

Jump_007_50c0:
    xor l                                         ; $50c0: $ad
    inc e                                         ; $50c1: $1c
    ld a, e                                       ; $50c2: $7b
    xor [hl]                                      ; $50c3: $ae
    ld bc, $ae40                                  ; $50c4: $01 $40 $ae
    dec d                                         ; $50c7: $15
    ld b, e                                       ; $50c8: $43
    xor [hl]                                      ; $50c9: $ae
    ld b, l                                       ; $50ca: $45
    ld b, [hl]                                    ; $50cb: $46
    xor [hl]                                      ; $50cc: $ae
    ld bc, $ae49                                  ; $50cd: $01 $49 $ae
    db $e4                                        ; $50d0: $e4
    ld c, e                                       ; $50d1: $4b
    xor [hl]                                      ; $50d2: $ae
    cp [hl]                                       ; $50d3: $be
    ld c, [hl]                                    ; $50d4: $4e
    xor [hl]                                      ; $50d5: $ae
    xor [hl]                                      ; $50d6: $ae
    ld d, c                                       ; $50d7: $51
    xor [hl]                                      ; $50d8: $ae
    adc h                                         ; $50d9: $8c
    ld d, h                                       ; $50da: $54
    xor [hl]                                      ; $50db: $ae
    sbc e                                         ; $50dc: $9b
    ld d, a                                       ; $50dd: $57
    xor [hl]                                      ; $50de: $ae
    adc d                                         ; $50df: $8a
    ld e, d                                       ; $50e0: $5a
    xor [hl]                                      ; $50e1: $ae
    adc a                                         ; $50e2: $8f
    ld e, l                                       ; $50e3: $5d
    xor [hl]                                      ; $50e4: $ae
    adc c                                         ; $50e5: $89
    ld h, b                                       ; $50e6: $60
    xor [hl]                                      ; $50e7: $ae
    pop bc                                        ; $50e8: $c1
    ld h, e                                       ; $50e9: $63
    xor [hl]                                      ; $50ea: $ae
    ret z                                         ; $50eb: $c8

    ld h, [hl]                                    ; $50ec: $66
    xor [hl]                                      ; $50ed: $ae
    rst $18                                       ; $50ee: $df
    ld l, c                                       ; $50ef: $69
    xor [hl]                                      ; $50f0: $ae
    adc l                                         ; $50f1: $8d
    ld l, h                                       ; $50f2: $6c
    xor [hl]                                      ; $50f3: $ae
    cp l                                          ; $50f4: $bd
    ld l, a                                       ; $50f5: $6f
    xor [hl]                                      ; $50f6: $ae
    rst $38                                       ; $50f7: $ff
    ld [hl], d                                    ; $50f8: $72
    xor [hl]                                      ; $50f9: $ae
    db $db                                        ; $50fa: $db
    ld [hl], l                                    ; $50fb: $75
    xor [hl]                                      ; $50fc: $ae
    xor d                                         ; $50fd: $aa
    ld a, b                                       ; $50fe: $78
    xor [hl]                                      ; $50ff: $ae
    ld a, e                                       ; $5100: $7b
    ld a, e                                       ; $5101: $7b
    xor a                                         ; $5102: $af
    ld bc, $af40                                  ; $5103: $01 $40 $af
    ld hl, sp+$42                                 ; $5106: $f8 $42
    xor a                                         ; $5108: $af
    push bc                                       ; $5109: $c5

Call_007_510a:
    ld b, l                                       ; $510a: $45
    xor a                                         ; $510b: $af
    or [hl]                                       ; $510c: $b6
    ld c, b                                       ; $510d: $48

    db $af, $a5, $4b

    xor a                                         ; $5111: $af
    and l                                         ; $5112: $a5
    ld c, e                                       ; $5113: $4b
    xor a                                         ; $5114: $af
    and l                                         ; $5115: $a5
    ld c, e                                       ; $5116: $4b

    db $a9, $85, $7e

    xor a                                         ; $511a: $af
    call $af4d                                    ; $511b: $cd $4d $af
    db $ed                                        ; $511e: $ed
    ld d, e                                       ; $511f: $53
    xor a                                         ; $5120: $af
    dec c                                         ; $5121: $0d
    ld e, d                                       ; $5122: $5a
    xor a                                         ; $5123: $af
    dec l                                         ; $5124: $2d
    ld h, b                                       ; $5125: $60
    xor a                                         ; $5126: $af
    ld c, l                                       ; $5127: $4d
    ld h, [hl]                                    ; $5128: $66
    xor a                                         ; $5129: $af
    ld l, l                                       ; $512a: $6d
    ld l, h                                       ; $512b: $6c
    xor a                                         ; $512c: $af
    adc l                                         ; $512d: $8d
    ld [hl], d                                    ; $512e: $72
    xor a                                         ; $512f: $af
    xor l                                         ; $5130: $ad
    ld a, b                                       ; $5131: $78
    or b                                          ; $5132: $b0
    ld bc, $b040                                  ; $5133: $01 $40 $b0
    ld hl, $b046                                  ; $5136: $21 $46 $b0
    ld b, c                                       ; $5139: $41
    ld c, h                                       ; $513a: $4c
    or b                                          ; $513b: $b0
    ld h, c                                       ; $513c: $61
    ld d, d                                       ; $513d: $52
    or b                                          ; $513e: $b0
    add c                                         ; $513f: $81
    ld e, b                                       ; $5140: $58
    or b                                          ; $5141: $b0
    and c                                         ; $5142: $a1
    ld e, [hl]                                    ; $5143: $5e
    or b                                          ; $5144: $b0
    pop bc                                        ; $5145: $c1
    ld h, h                                       ; $5146: $64
    or b                                          ; $5147: $b0
    pop hl                                        ; $5148: $e1
    ld l, d                                       ; $5149: $6a
    or b                                          ; $514a: $b0
    ld bc, $b071                                  ; $514b: $01 $71 $b0
    ld hl, $b177                                  ; $514e: $21 $77 $b1
    ld bc, $b140                                  ; $5151: $01 $40 $b1
    ld hl, $b146                                  ; $5154: $21 $46 $b1
    ld b, c                                       ; $5157: $41
    ld c, h                                       ; $5158: $4c
    or c                                          ; $5159: $b1
    ld h, c                                       ; $515a: $61
    ld d, d                                       ; $515b: $52
    or c                                          ; $515c: $b1
    add c                                         ; $515d: $81
    ld e, b                                       ; $515e: $58
    or c                                          ; $515f: $b1
    and c                                         ; $5160: $a1
    ld e, [hl]                                    ; $5161: $5e
    or c                                          ; $5162: $b1
    pop bc                                        ; $5163: $c1
    ld h, h                                       ; $5164: $64
    or c                                          ; $5165: $b1
    pop hl                                        ; $5166: $e1
    ld l, d                                       ; $5167: $6a
    or c                                          ; $5168: $b1
    ld bc, $b171                                  ; $5169: $01 $71 $b1
    ld hl, $b277                                  ; $516c: $21 $77 $b2
    ld bc, $b240                                  ; $516f: $01 $40 $b2
    ld hl, $b246                                  ; $5172: $21 $46 $b2
    ld b, c                                       ; $5175: $41
    ld c, h                                       ; $5176: $4c

    db $b2, $61, $52

    or d                                          ; $517a: $b2
    add c                                         ; $517b: $81
    ld e, b                                       ; $517c: $58
    or d                                          ; $517d: $b2
    and c                                         ; $517e: $a1
    ld e, [hl]                                    ; $517f: $5e
    or d                                          ; $5180: $b2
    pop bc                                        ; $5181: $c1
    ld h, h                                       ; $5182: $64
    or d                                          ; $5183: $b2
    pop hl                                        ; $5184: $e1
    ld l, d                                       ; $5185: $6a
    or d                                          ; $5186: $b2
    ld bc, $b271                                  ; $5187: $01 $71 $b2
    ld hl, $b377                                  ; $518a: $21 $77 $b3
    ld bc, $b340                                  ; $518d: $01 $40 $b3
    ld hl, $b346                                  ; $5190: $21 $46 $b3
    ld b, c                                       ; $5193: $41
    ld c, h                                       ; $5194: $4c
    or e                                          ; $5195: $b3
    ld h, c                                       ; $5196: $61
    ld d, d                                       ; $5197: $52
    or e                                          ; $5198: $b3
    add c                                         ; $5199: $81
    ld e, b                                       ; $519a: $58
    or e                                          ; $519b: $b3
    and c                                         ; $519c: $a1
    ld e, [hl]                                    ; $519d: $5e
    or e                                          ; $519e: $b3
    pop bc                                        ; $519f: $c1
    ld h, h                                       ; $51a0: $64
    or e                                          ; $51a1: $b3
    pop hl                                        ; $51a2: $e1
    ld l, d                                       ; $51a3: $6a
    or e                                          ; $51a4: $b3
    ld bc, $b371                                  ; $51a5: $01 $71 $b3
    ld hl, $b477                                  ; $51a8: $21 $77 $b4
    ld bc, $b440                                  ; $51ab: $01 $40 $b4
    ld hl, $b446                                  ; $51ae: $21 $46 $b4
    ld b, c                                       ; $51b1: $41
    ld c, h                                       ; $51b2: $4c
    or h                                          ; $51b3: $b4
    ld h, c                                       ; $51b4: $61
    ld d, d                                       ; $51b5: $52
    or h                                          ; $51b6: $b4
    add c                                         ; $51b7: $81
    ld e, b                                       ; $51b8: $58
    or h                                          ; $51b9: $b4
    and c                                         ; $51ba: $a1
    ld e, [hl]                                    ; $51bb: $5e
    or h                                          ; $51bc: $b4
    pop bc                                        ; $51bd: $c1
    ld h, h                                       ; $51be: $64
    or h                                          ; $51bf: $b4
    pop hl                                        ; $51c0: $e1
    ld l, d                                       ; $51c1: $6a

Call_007_51c2:
    or h                                          ; $51c2: $b4
    ld bc, $b471                                  ; $51c3: $01 $71 $b4
    ld hl, $b577                                  ; $51c6: $21 $77 $b5
    ld bc, $b540                                  ; $51c9: $01 $40 $b5
    ld hl, $b546                                  ; $51cc: $21 $46 $b5
    ld b, c                                       ; $51cf: $41
    ld c, h                                       ; $51d0: $4c

    db $b5, $61, $52

    or l                                          ; $51d4: $b5
    add c                                         ; $51d5: $81
    ld e, b                                       ; $51d6: $58
    or l                                          ; $51d7: $b5
    and c                                         ; $51d8: $a1
    ld e, [hl]                                    ; $51d9: $5e
    or l                                          ; $51da: $b5
    pop bc                                        ; $51db: $c1
    ld h, h                                       ; $51dc: $64
    or l                                          ; $51dd: $b5
    pop hl                                        ; $51de: $e1
    ld l, d                                       ; $51df: $6a
    or l                                          ; $51e0: $b5
    ld bc, $b571                                  ; $51e1: $01 $71 $b5
    ld hl, $b677                                  ; $51e4: $21 $77 $b6
    ld bc, $b640                                  ; $51e7: $01 $40 $b6
    ld hl, $b646                                  ; $51ea: $21 $46 $b6
    ld b, c                                       ; $51ed: $41
    ld c, h                                       ; $51ee: $4c
    or [hl]                                       ; $51ef: $b6
    ld h, c                                       ; $51f0: $61
    ld d, d                                       ; $51f1: $52
    or [hl]                                       ; $51f2: $b6
    add c                                         ; $51f3: $81
    ld e, b                                       ; $51f4: $58
    or [hl]                                       ; $51f5: $b6
    and c                                         ; $51f6: $a1
    ld e, [hl]                                    ; $51f7: $5e
    or [hl]                                       ; $51f8: $b6
    pop bc                                        ; $51f9: $c1
    ld h, h                                       ; $51fa: $64
    or [hl]                                       ; $51fb: $b6
    pop hl                                        ; $51fc: $e1
    ld l, d                                       ; $51fd: $6a
    or [hl]                                       ; $51fe: $b6
    ld bc, $b671                                  ; $51ff: $01 $71 $b6
    ld hl, $b777                                  ; $5202: $21 $77 $b7
    ld bc, $b740                                  ; $5205: $01 $40 $b7
    ld hl, $b746                                  ; $5208: $21 $46 $b7
    ld b, c                                       ; $520b: $41
    ld c, h                                       ; $520c: $4c
    or a                                          ; $520d: $b7
    ld h, c                                       ; $520e: $61
    ld d, d                                       ; $520f: $52
    or a                                          ; $5210: $b7
    add c                                         ; $5211: $81
    ld e, b                                       ; $5212: $58
    or a                                          ; $5213: $b7
    and c                                         ; $5214: $a1
    ld e, [hl]                                    ; $5215: $5e
    or a                                          ; $5216: $b7
    pop bc                                        ; $5217: $c1
    ld h, h                                       ; $5218: $64
    or a                                          ; $5219: $b7
    pop hl                                        ; $521a: $e1
    ld l, d                                       ; $521b: $6a
    or a                                          ; $521c: $b7
    ld bc, $b771                                  ; $521d: $01 $71 $b7
    ld hl, $b877                                  ; $5220: $21 $77 $b8
    ld bc, $b840                                  ; $5223: $01 $40 $b8
    ld hl, $b846                                  ; $5226: $21 $46 $b8
    ld b, c                                       ; $5229: $41
    ld c, h                                       ; $522a: $4c
    cp b                                          ; $522b: $b8
    ld h, c                                       ; $522c: $61
    ld d, d                                       ; $522d: $52
    cp b                                          ; $522e: $b8
    add c                                         ; $522f: $81
    ld e, b                                       ; $5230: $58
    cp b                                          ; $5231: $b8
    and c                                         ; $5232: $a1
    ld e, [hl]                                    ; $5233: $5e
    cp b                                          ; $5234: $b8
    pop bc                                        ; $5235: $c1
    ld h, h                                       ; $5236: $64
    cp b                                          ; $5237: $b8
    pop hl                                        ; $5238: $e1
    ld l, d                                       ; $5239: $6a
    cp b                                          ; $523a: $b8
    ld bc, $b871                                  ; $523b: $01 $71 $b8
    ld hl, $b977                                  ; $523e: $21 $77 $b9
    ld bc, $b940                                  ; $5241: $01 $40 $b9
    ld hl, $b946                                  ; $5244: $21 $46 $b9
    ld b, c                                       ; $5247: $41
    ld c, h                                       ; $5248: $4c

    db $b9, $61, $52

    cp c                                          ; $524c: $b9
    ld h, c                                       ; $524d: $61
    ld d, d                                       ; $524e: $52
    cp c                                          ; $524f: $b9
    ld h, c                                       ; $5250: $61
    ld d, d                                       ; $5251: $52

    db $b9, $81, $58

    or b                                          ; $5255: $b0
    ld b, c                                       ; $5256: $41
    ld a, l                                       ; $5257: $7d
    cp c                                          ; $5258: $b9
    ld b, h                                       ; $5259: $44
    ld e, e                                       ; $525a: $5b
    cp c                                          ; $525b: $b9
    dec l                                         ; $525c: $2d
    ld e, [hl]                                    ; $525d: $5e

    db $a9, $85, $7e, $b9, $fa, $60

    cp c                                          ; $5264: $b9
    ld a, [de]                                    ; $5265: $1a
    ld h, a                                       ; $5266: $67
    cp c                                          ; $5267: $b9
    ld a, [hl-]                                   ; $5268: $3a
    ld l, l                                       ; $5269: $6d
    cp c                                          ; $526a: $b9
    ld e, d                                       ; $526b: $5a
    ld [hl], e                                    ; $526c: $73

    db $a9, $eb, $7e

    ld [hl], h                                    ; $5270: $74
    rst $30                                       ; $5271: $f7
    ld a, a                                       ; $5272: $7f

    db $ba, $01, $40

    cp c                                          ; $5276: $b9
    ld a, d                                       ; $5277: $7a
    ld a, c                                       ; $5278: $79

    db $ba, $22, $48, $ba, $e1, $52

    cp d                                          ; $527f: $ba
    pop hl                                        ; $5280: $e1
    ld d, d                                       ; $5281: $52

    db $ba, $eb, $5a, $75, $f1, $7f

    cp d                                          ; $5288: $ba
    ld a, a                                       ; $5289: $7f
    ld l, d                                       ; $528a: $6a
    cp d                                          ; $528b: $ba
    ld a, a                                       ; $528c: $7f
    ld l, d                                       ; $528d: $6a

    db $ba, $d0, $75

    cp d                                          ; $5291: $ba
    ret nc                                        ; $5292: $d0

    ld [hl], l                                    ; $5293: $75

    db $a9, $33, $7f

    xor h                                         ; $5297: $ac
    jp $ad7e                                      ; $5298: $c3 $7e $ad


    inc de                                        ; $529b: $13
    ld a, [hl]                                    ; $529c: $7e
    xor l                                         ; $529d: $ad
    pop bc                                        ; $529e: $c1
    ld a, [hl]                                    ; $529f: $7e
    xor [hl]                                      ; $52a0: $ae
    ld e, [hl]                                    ; $52a1: $5e
    ld a, [hl]                                    ; $52a2: $7e
    xor [hl]                                      ; $52a3: $ae
    inc de                                        ; $52a4: $13
    ld a, a                                       ; $52a5: $7f
    xor a                                         ; $52a6: $af
    call $b17e                                    ; $52a7: $cd $7e $b1
    ld b, c                                       ; $52aa: $41
    ld a, l                                       ; $52ab: $7d
    or c                                          ; $52ac: $b1
    ld a, [c]                                     ; $52ad: $f2
    ld a, l                                       ; $52ae: $7d
    or c                                          ; $52af: $b1
    and e                                         ; $52b0: $a3
    ld a, [hl]                                    ; $52b1: $7e
    or d                                          ; $52b2: $b2
    ld b, c                                       ; $52b3: $41
    ld a, l                                       ; $52b4: $7d
    or d                                          ; $52b5: $b2
    rst $28                                       ; $52b6: $ef
    ld a, l                                       ; $52b7: $7d
    or d                                          ; $52b8: $b2
    sbc l                                         ; $52b9: $9d
    ld a, [hl]                                    ; $52ba: $7e
    xor h                                         ; $52bb: $ac
    ld [hl], c                                    ; $52bc: $71
    ld a, a                                       ; $52bd: $7f

    db $76, $f1, $7f

    cp e                                          ; $52c1: $bb
    db $01                                        ; $52c2: $01
    ld b, b                                       ; $52c3: $40

    db $ba, $c3, $79, $b3, $41, $7d

    xor l                                         ; $52ca: $ad
    ld a, b                                       ; $52cb: $78
    ld a, a                                       ; $52cc: $7f

    db $b4, $41, $7d

    cp e                                          ; $52d0: $bb
    bit 1, a                                      ; $52d1: $cb $4f
    cp e                                          ; $52d3: $bb
    bit 1, a                                      ; $52d4: $cb $4f
    cp e                                          ; $52d6: $bb
    rlca                                          ; $52d7: $07
    ld e, l                                       ; $52d8: $5d
    cp e                                          ; $52d9: $bb
    add c                                         ; $52da: $81
    ld l, h                                       ; $52db: $6c
    or l                                          ; $52dc: $b5
    ld b, c                                       ; $52dd: $41
    ld a, l                                       ; $52de: $7d
    or [hl]                                       ; $52df: $b6
    ld b, c                                       ; $52e0: $41
    ld a, l                                       ; $52e1: $7d
    cp e                                          ; $52e2: $bb
    xor h                                         ; $52e3: $ac
    halt                                          ; $52e4: $76
    cp h                                          ; $52e5: $bc
    ld bc, $7540                                  ; $52e6: $01 $40 $75
    pop af                                        ; $52e9: $f1
    ld a, a                                       ; $52ea: $7f
    cp h                                          ; $52eb: $bc
    ld d, e                                       ; $52ec: $53
    ld d, [hl]                                    ; $52ed: $56
    cp h                                          ; $52ee: $bc
    ld d, e                                       ; $52ef: $53
    ld d, [hl]                                    ; $52f0: $56
    cp h                                          ; $52f1: $bc
    pop de                                        ; $52f2: $d1
    ld h, a                                       ; $52f3: $67

    db $ab, $d3, $7f

    xor h                                         ; $52f7: $ac
    cp a                                          ; $52f8: $bf
    ld a, a                                       ; $52f9: $7f
    cp h                                          ; $52fa: $bc
    ld a, [c]                                     ; $52fb: $f2
    ld l, a                                       ; $52fc: $6f
    cp l                                          ; $52fd: $bd
    ld bc, $bd40                                  ; $52fe: $01 $40 $bd
    ld a, [c]                                     ; $5301: $f2
    ld b, a                                       ; $5302: $47
    cp l                                          ; $5303: $bd
    ld a, [c]                                     ; $5304: $f2
    ld b, a                                       ; $5305: $47
    cp l                                          ; $5306: $bd
    ld a, [c]                                     ; $5307: $f2
    ld b, a                                       ; $5308: $47
    cp l                                          ; $5309: $bd
    ld a, [c]                                     ; $530a: $f2
    ld b, a                                       ; $530b: $47
    cp l                                          ; $530c: $bd
    ld a, [c]                                     ; $530d: $f2
    ld b, a                                       ; $530e: $47
    cp l                                          ; $530f: $bd
    ld a, [c]                                     ; $5310: $f2
    ld b, a                                       ; $5311: $47
    cp l                                          ; $5312: $bd
    ld a, [c]                                     ; $5313: $f2
    ld b, a                                       ; $5314: $47

Jump_007_5315:
    cp l                                          ; $5315: $bd
    ld a, [c]                                     ; $5316: $f2
    ld b, a                                       ; $5317: $47
    cp l                                          ; $5318: $bd
    ld a, [c]                                     ; $5319: $f2
    ld b, a                                       ; $531a: $47

    db $b7, $41, $7d, $b8, $41, $7d

    cp b                                          ; $5321: $b8
    sbc a                                         ; $5322: $9f
    ld a, [hl]                                    ; $5323: $7e
    cp c                                          ; $5324: $b9
    sub a                                         ; $5325: $97
    ld a, l                                       ; $5326: $7d
    cp d                                          ; $5327: $ba
    ld de, $bb7e                                  ; $5328: $11 $7e $bb
    jr nc, jr_007_53ab                            ; $532b: $30 $7e

    cp h                                          ; $532d: $bc
    or [hl]                                       ; $532e: $b6
    ld a, b                                       ; $532f: $78
    cp h                                          ; $5330: $bc
    ld a, l                                       ; $5331: $7d
    ld a, d                                       ; $5332: $7a
    or l                                          ; $5333: $b5
    call nc, $bc7e                                ; $5334: $d4 $7e $bc
    ret nc                                        ; $5337: $d0

    ld a, e                                       ; $5338: $7b
    cp h                                          ; $5339: $bc
    db $f4                                        ; $533a: $f4
    ld a, h                                       ; $533b: $7c
    cp h                                          ; $533c: $bc
    xor c                                         ; $533d: $a9
    ld a, [hl]                                    ; $533e: $7e
    cp l                                          ; $533f: $bd
    ld l, a                                       ; $5340: $6f
    ld e, h                                       ; $5341: $5c
    cp l                                          ; $5342: $bd
    dec [hl]                                      ; $5343: $35
    ld e, [hl]                                    ; $5344: $5e
    cp l                                          ; $5345: $bd
    and $5f                                       ; $5346: $e6 $5f
    cp l                                          ; $5348: $bd
    and $5f                                       ; $5349: $e6 $5f
    cp l                                          ; $534b: $bd
    add d                                         ; $534c: $82
    ld [hl], c                                    ; $534d: $71
    cp l                                          ; $534e: $bd
    dec bc                                        ; $534f: $0b
    ld a, b                                       ; $5350: $78
    cp [hl]                                       ; $5351: $be
    ld bc, $be40                                  ; $5352: $01 $40 $be
    sbc $4c                                       ; $5355: $de $4c
    cp [hl]                                       ; $5357: $be
    sub $55                                       ; $5358: $d6 $55
    cp a                                          ; $535a: $bf
    ld bc, $bf40                                  ; $535b: $01 $40 $bf
    cp d                                          ; $535e: $ba
    ld d, b                                       ; $535f: $50
    cp a                                          ; $5360: $bf
    cp d                                          ; $5361: $ba
    ld d, b                                       ; $5362: $50
    cp [hl]                                       ; $5363: $be
    dec de                                        ; $5364: $1b
    ld [hl], d                                    ; $5365: $72
    cp a                                          ; $5366: $bf
    inc de                                        ; $5367: $13
    ld [hl], c                                    ; $5368: $71
    ret nz                                        ; $5369: $c0

    db $01                                        ; $536a: $01
    ld b, b                                       ; $536b: $40

    db $c0, $e4, $4d, $7a, $ed, $7f

    ld a, d                                       ; $5372: $7a
    push af                                       ; $5373: $f5
    ld a, a                                       ; $5374: $7f

    db $bd, $55, $7b

    ret nz                                        ; $5378: $c0

    scf                                           ; $5379: $37
    ld d, l                                       ; $537a: $55

    db $af, $7b, $7f

    or c                                          ; $537e: $b1
    sbc c                                         ; $537f: $99
    ld a, a                                       ; $5380: $7f

    db $be, $71, $7a

    or h                                          ; $5384: $b4
    rst $28                                       ; $5385: $ef
    ld a, [hl]                                    ; $5386: $7e

    db $be, $c3, $7b, $be, $8d, $7d, $c0, $9e, $5d, $c0, $a2, $62, $b9, $1d, $7f

    cp [hl]                                       ; $5396: $be
    bit 7, [hl]                                   ; $5397: $cb $7e
    ret nz                                        ; $5399: $c0

    daa                                           ; $539a: $27
    ld h, l                                       ; $539b: $65

    db $c0, $eb, $68, $bd, $e3, $7e, $b2, $4b, $7f

    or d                                          ; $53a5: $b2
    adc a                                         ; $53a6: $8f
    ld a, a                                       ; $53a7: $7f
    or e                                          ; $53a8: $b3
    ld a, [hl]                                    ; $53a9: $7e
    ld a, a                                       ; $53aa: $7f

jr_007_53ab:
    or h                                          ; $53ab: $b4
    or e                                          ; $53ac: $b3
    ld a, a                                       ; $53ad: $7f
    or a                                          ; $53ae: $b7
    add h                                         ; $53af: $84
    ld a, a                                       ; $53b0: $7f
    cp a                                          ; $53b1: $bf
    ld c, $7f                                     ; $53b2: $0e $7f
    cp a                                          ; $53b4: $bf
    ld d, d                                       ; $53b5: $52
    ld a, a                                       ; $53b6: $7f
    cp a                                          ; $53b7: $bf
    sub [hl]                                      ; $53b8: $96
    ld a, a                                       ; $53b9: $7f
    ret nz                                        ; $53ba: $c0

    adc h                                         ; $53bb: $8c
    ld l, d                                       ; $53bc: $6a
    ret nz                                        ; $53bd: $c0

    ret nc                                        ; $53be: $d0

    ld l, d                                       ; $53bf: $6a
    ret nz                                        ; $53c0: $c0

    inc d                                         ; $53c1: $14
    ld l, e                                       ; $53c2: $6b
    ret nz                                        ; $53c3: $c0

    ld e, b                                       ; $53c4: $58
    ld l, e                                       ; $53c5: $6b
    ret nz                                        ; $53c6: $c0

    sbc h                                         ; $53c7: $9c
    ld l, e                                       ; $53c8: $6b
    ret nz                                        ; $53c9: $c0

    ldh [rOCPD], a                                ; $53ca: $e0 $6b

    db $ae, $c1, $7f

    ret nz                                        ; $53cf: $c0

    add hl, hl                                    ; $53d0: $29
    ld l, h                                       ; $53d1: $6c

    db $c0, $3f, $6d, $c0, $28, $6e

    ret nz                                        ; $53d8: $c0

    db $dc                                        ; $53d9: $dc
    ld l, [hl]                                    ; $53da: $6e

    db $c0, $4c, $6f

    ret nz                                        ; $53de: $c0

    dec h                                         ; $53df: $25
    ld [hl], b                                    ; $53e0: $70
    ret nz                                        ; $53e1: $c0

    ret nz                                        ; $53e2: $c0

    ld [hl], c                                    ; $53e3: $71
    ret nz                                        ; $53e4: $c0

    call nz, $c076                                ; $53e5: $c4 $76 $c0
    ld e, $7a                                     ; $53e8: $1e $7a
    ret nz                                        ; $53ea: $c0

    jp $c07b                                      ; $53eb: $c3 $7b $c0


    ld h, c                                       ; $53ee: $61
    ld a, h                                       ; $53ef: $7c
    ret nz                                        ; $53f0: $c0

    xor h                                         ; $53f1: $ac
    ld a, l                                       ; $53f2: $7d
    pop bc                                        ; $53f3: $c1
    ld bc, $b940                                  ; $53f4: $01 $40 $b9
    dec e                                         ; $53f7: $1d
    ld a, a                                       ; $53f8: $7f
    pop bc                                        ; $53f9: $c1
    rst $00                                       ; $53fa: $c7
    ld b, d                                       ; $53fb: $42
    pop bc                                        ; $53fc: $c1
    ld c, e                                       ; $53fd: $4b
    ld e, [hl]                                    ; $53fe: $5e
    pop bc                                        ; $53ff: $c1
    ld b, e                                       ; $5400: $43

Call_007_5401:
Jump_007_5401:
    ld h, c                                       ; $5401: $61

    db $c0, $f5, $7e

    ret nz                                        ; $5405: $c0

    ld h, l                                       ; $5406: $65
    ld a, a                                       ; $5407: $7f
    pop bc                                        ; $5408: $c1
    call nz, $c166                                ; $5409: $c4 $66 $c1
    adc l                                         ; $540c: $8d
    ld l, b                                       ; $540d: $68
    pop bc                                        ; $540e: $c1
    ld l, c                                       ; $540f: $69
    ld l, d                                       ; $5410: $6a
    pop bc                                        ; $5411: $c1
    add e                                         ; $5412: $83
    ld l, e                                       ; $5413: $6b
    pop bc                                        ; $5414: $c1
    sub l                                         ; $5415: $95
    ld l, h                                       ; $5416: $6c
    pop bc                                        ; $5417: $c1
    or h                                          ; $5418: $b4
    ld l, l                                       ; $5419: $6d
    pop bc                                        ; $541a: $c1
    pop de                                        ; $541b: $d1
    ld l, [hl]                                    ; $541c: $6e
    pop bc                                        ; $541d: $c1
    sbc $6f                                       ; $541e: $de $6f
    pop bc                                        ; $5420: $c1
    db $fd                                        ; $5421: $fd
    ld [hl], b                                    ; $5422: $70
    pop bc                                        ; $5423: $c1
    dec de                                        ; $5424: $1b
    ld [hl], d                                    ; $5425: $72
    pop bc                                        ; $5426: $c1
    db $31                                        ; $5427: $31
    ld [hl], e                                    ; $5428: $73

    db $c1, $d6, $73, $c1, $e3, $74

    pop bc                                        ; $542f: $c1
    scf                                           ; $5430: $37
    ld [hl], l                                    ; $5431: $75
    pop bc                                        ; $5432: $c1
    adc e                                         ; $5433: $8b
    ld [hl], l                                    ; $5434: $75
    pop bc                                        ; $5435: $c1
    rst $18                                       ; $5436: $df
    ld [hl], l                                    ; $5437: $75
    pop bc                                        ; $5438: $c1
    inc sp                                        ; $5439: $33
    halt                                          ; $543a: $76
    pop bc                                        ; $543b: $c1
    add a                                         ; $543c: $87
    halt                                          ; $543d: $76
    pop bc                                        ; $543e: $c1
    db $db                                        ; $543f: $db
    halt                                          ; $5440: $76
    pop bc                                        ; $5441: $c1
    cpl                                           ; $5442: $2f
    ld [hl], a                                    ; $5443: $77
    pop bc                                        ; $5444: $c1
    add e                                         ; $5445: $83
    ld [hl], a                                    ; $5446: $77
    pop bc                                        ; $5447: $c1
    rst $10                                       ; $5448: $d7
    ld [hl], a                                    ; $5449: $77
    pop bc                                        ; $544a: $c1
    dec hl                                        ; $544b: $2b
    ld a, b                                       ; $544c: $78
    pop bc                                        ; $544d: $c1
    ld a, a                                       ; $544e: $7f
    ld a, b                                       ; $544f: $78
    pop bc                                        ; $5450: $c1
    db $d3                                        ; $5451: $d3
    ld a, b                                       ; $5452: $78
    pop bc                                        ; $5453: $c1
    daa                                           ; $5454: $27
    ld a, c                                       ; $5455: $79
    pop bc                                        ; $5456: $c1
    ld a, b                                       ; $5457: $78
    ld a, e                                       ; $5458: $7b
    jp nz, Jump_007_4001                          ; $5459: $c2 $01 $40

    jp nz, Jump_007_4164                          ; $545c: $c2 $64 $41

    jp nz, $42eb                                  ; $545f: $c2 $eb $42

    jp nz, Jump_007_4483                          ; $5462: $c2 $83 $44

    jp nz, $467b                                  ; $5465: $c2 $7b $46

    jp nz, Jump_007_4a78                          ; $5468: $c2 $78 $4a

    jp nz, Jump_007_4dc7                          ; $546b: $c2 $c7 $4d

    jp nz, $4fc7                                  ; $546e: $c2 $c7 $4f

    jp nz, $592b                                  ; $5471: $c2 $2b $59

    jp nz, Jump_007_5aa8                          ; $5474: $c2 $a8 $5a

    jp nz, $5c8d                                  ; $5477: $c2 $8d $5c

    db $c1, $fc, $7e, $c2, $ae, $5e

    jp nz, $5ef7                                  ; $5480: $c2 $f7 $5e

    db $c2, $c3, $5f

    jp nz, Jump_007_60f5                          ; $5486: $c2 $f5 $60

    db $c2, $fd, $61

    jp nz, Jump_007_623d                          ; $548c: $c2 $3d $62

    db $c2, $7d, $62

    jp nz, Jump_007_62bd                          ; $5492: $c2 $bd $62

    db $c2, $fd, $62, $c2, $3d, $63

    jp nz, Jump_007_633d                          ; $549b: $c2 $3d $63

    db $c2, $7d, $63, $c2, $bd, $63

    jp nz, $63fd                                  ; $54a4: $c2 $fd $63

    jp nz, Jump_007_643d                          ; $54a7: $c2 $3d $64

    db $c2, $7d, $64

    jp nz, $64bd                                  ; $54ad: $c2 $bd $64

    jp nz, $64fd                                  ; $54b0: $c2 $fd $64

    jp nz, Jump_007_653d                          ; $54b3: $c2 $3d $65

    jp nz, Jump_007_657d                          ; $54b6: $c2 $7d $65

    jp nz, Jump_007_65bd                          ; $54b9: $c2 $bd $65

    jp nz, $65fd                                  ; $54bc: $c2 $fd $65

    jp nz, $663d                                  ; $54bf: $c2 $3d $66

    jp nz, Jump_007_667d                          ; $54c2: $c2 $7d $66

    jp nz, Jump_007_66bd                          ; $54c5: $c2 $bd $66

    jp nz, Jump_007_66fd                          ; $54c8: $c2 $fd $66

    jp nz, Jump_007_673d                          ; $54cb: $c2 $3d $67

    jp nz, $677d                                  ; $54ce: $c2 $7d $67

    jp nz, Jump_007_67bd                          ; $54d1: $c2 $bd $67

    jp nz, Jump_007_67fd                          ; $54d4: $c2 $fd $67

    jp nz, Jump_007_683d                          ; $54d7: $c2 $3d $68

    db $c2, $7d, $68

    jp nz, $68bd                                  ; $54dd: $c2 $bd $68

    db $c2, $fd, $68, $c2, $3d, $69

    jp nz, Jump_007_697d                          ; $54e6: $c2 $7d $69

    db $c2, $bd, $69

    jp nz, Jump_007_69fd                          ; $54ec: $c2 $fd $69

    jp nz, Jump_007_69fd                          ; $54ef: $c2 $fd $69

    jp nz, Jump_007_6a3d                          ; $54f2: $c2 $3d $6a

    jp nz, $6a7d                                  ; $54f5: $c2 $7d $6a

    jp nz, $6abd                                  ; $54f8: $c2 $bd $6a

    jp nz, Jump_007_6afd                          ; $54fb: $c2 $fd $6a

    jp nz, $6b3d                                  ; $54fe: $c2 $3d $6b

    jp nz, Jump_007_6b7d                          ; $5501: $c2 $7d $6b

    db $c2, $bd, $6b

    jp nz, Jump_007_6bfd                          ; $5507: $c2 $fd $6b

    jp nz, Jump_007_6c3d                          ; $550a: $c2 $3d $6c

    jp nz, $6c7d                                  ; $550d: $c2 $7d $6c

    db $c2, $bd, $6c

    jp nz, $6cfd                                  ; $5513: $c2 $fd $6c

    jp nz, $6d3d                                  ; $5516: $c2 $3d $6d

    jp nz, Jump_007_6d7d                          ; $5519: $c2 $7d $6d

    jp nz, $6dbd                                  ; $551c: $c2 $bd $6d

    jp nz, Jump_007_6dfd                          ; $551f: $c2 $fd $6d

    jp nz, Jump_007_6e3d                          ; $5522: $c2 $3d $6e

    jp nz, $6e7d                                  ; $5525: $c2 $7d $6e

    jp nz, $6ebd                                  ; $5528: $c2 $bd $6e

    jp nz, $6efd                                  ; $552b: $c2 $fd $6e

    jp nz, $6f3d                                  ; $552e: $c2 $3d $6f

    jp nz, Jump_007_6f7d                          ; $5531: $c2 $7d $6f

    jp nz, $6fbd                                  ; $5534: $c2 $bd $6f

    db $c2, $fd, $6f

    jp nz, Jump_007_703d                          ; $553a: $c2 $3d $70

    jp nz, $707d                                  ; $553d: $c2 $7d $70

    jp nz, Jump_007_70bd                          ; $5540: $c2 $bd $70

    jp nz, $70fd                                  ; $5543: $c2 $fd $70

    jp nz, Jump_007_713d                          ; $5546: $c2 $3d $71

    jp nz, Jump_007_717d                          ; $5549: $c2 $7d $71

    jp nz, $71bd                                  ; $554c: $c2 $bd $71

    jp nz, $71fd                                  ; $554f: $c2 $fd $71

    jp nz, $723d                                  ; $5552: $c2 $3d $72

    jp nz, $727d                                  ; $5555: $c2 $7d $72

    jp nz, Jump_007_72bd                          ; $5558: $c2 $bd $72

    jp nz, Jump_007_72fd                          ; $555b: $c2 $fd $72

    jp nz, $733d                                  ; $555e: $c2 $3d $73

    jp nz, Jump_007_737d                          ; $5561: $c2 $7d $73

    jp nz, $73bd                                  ; $5564: $c2 $bd $73

    jp nz, $73fd                                  ; $5567: $c2 $fd $73

    jp nz, Jump_007_743d                          ; $556a: $c2 $3d $74

    jp nz, Jump_007_747d                          ; $556d: $c2 $7d $74

    jp nz, Jump_007_74bd                          ; $5570: $c2 $bd $74

    jp nz, Jump_007_74fd                          ; $5573: $c2 $fd $74

    jp nz, $753d                                  ; $5576: $c2 $3d $75

    jp nz, Jump_007_757d                          ; $5579: $c2 $7d $75

    jp nz, Jump_007_757d                          ; $557c: $c2 $7d $75

    jp nz, $75bd                                  ; $557f: $c2 $bd $75

    jp nz, $75fd                                  ; $5582: $c2 $fd $75

    jp nz, Jump_007_763d                          ; $5585: $c2 $3d $76

    db $c2, $7d, $76, $c2, $bd, $76, $c2, $fd, $76, $c2, $3d, $77

    ld [hl], e                                    ; $5594: $73
    rst $38                                       ; $5595: $ff
    ld a, a                                       ; $5596: $7f
    jp nz, Jump_007_777d                          ; $5597: $c2 $7d $77

    db $c3, $01, $40

    jp Jump_007_4001                              ; $559d: $c3 $01 $40


    jp Jump_007_4001                              ; $55a0: $c3 $01 $40


    jp Jump_007_4001                              ; $55a3: $c3 $01 $40


    jp Jump_007_4001                              ; $55a6: $c3 $01 $40


    jp Jump_007_4001                              ; $55a9: $c3 $01 $40


    jp Jump_007_4001                              ; $55ac: $c3 $01 $40


    jp Jump_007_4001                              ; $55af: $c3 $01 $40


    jp Jump_007_4989                              ; $55b2: $c3 $89 $49


    db $c3, $89, $49

    jp Jump_007_50c0                              ; $55b8: $c3 $c0 $50


    jp Jump_007_55f1                              ; $55bb: $c3 $f1 $55


    jp Jump_007_63b2                              ; $55be: $c3 $b2 $63


    jp Jump_007_63b2                              ; $55c1: $c3 $b2 $63


    jp Jump_007_70bd                              ; $55c4: $c3 $bd $70


    call nz, Call_007_4001                        ; $55c7: $c4 $01 $40
    jp Jump_007_7469                              ; $55ca: $c3 $69 $74


    call nz, $4f01                                ; $55cd: $c4 $01 $4f
    call nz, $53a2                                ; $55d0: $c4 $a2 $53
    call nz, $5793                                ; $55d3: $c4 $93 $57
    jp Jump_007_4001                              ; $55d6: $c3 $01 $40


    call nz, Call_007_64e5                        ; $55d9: $c4 $e5 $64
    call nz, $6f2d                                ; $55dc: $c4 $2d $6f
    call nz, $7484                                ; $55df: $c4 $84 $74
    push bc                                       ; $55e2: $c5
    ld bc, $c540                                  ; $55e3: $01 $40 $c5
    cp $46                                        ; $55e6: $fe $46
    push bc                                       ; $55e8: $c5
    add e                                         ; $55e9: $83
    ld c, l                                       ; $55ea: $4d
    push bc                                       ; $55eb: $c5
    ld a, [$c553]                                 ; $55ec: $fa $53 $c5
    db $fd                                        ; $55ef: $fd
    ld e, c                                       ; $55f0: $59

Jump_007_55f1:
    push bc                                       ; $55f1: $c5
    nop                                           ; $55f2: $00
    ld h, b                                       ; $55f3: $60
    push bc                                       ; $55f4: $c5
    cp d                                          ; $55f5: $ba
    ld h, l                                       ; $55f6: $65
    jp Jump_007_4001                              ; $55f7: $c3 $01 $40


    push bc                                       ; $55fa: $c5
    ei                                            ; $55fb: $fb
    ld [hl], b                                    ; $55fc: $70
    jp Jump_007_4001                              ; $55fd: $c3 $01 $40


    jp Jump_007_4001                              ; $5600: $c3 $01 $40


    add $01                                       ; $5603: $c6 $01
    ld b, b                                       ; $5605: $40
    add $d6                                       ; $5606: $c6 $d6
    ld c, c                                       ; $5608: $49
    add $17                                       ; $5609: $c6 $17
    ld d, d                                       ; $560b: $52
    add $1d                                       ; $560c: $c6 $1d
    ld e, c                                       ; $560e: $59
    jp Jump_007_4001                              ; $560f: $c3 $01 $40


    add $01                                       ; $5612: $c6 $01
    ld h, h                                       ; $5614: $64
    add $1d                                       ; $5615: $c6 $1d
    ld l, [hl]                                    ; $5617: $6e
    jp nz, Jump_007_7cf9                          ; $5618: $c2 $f9 $7c

    jp Jump_007_4001                              ; $561b: $c3 $01 $40


    jp Jump_007_4001                              ; $561e: $c3 $01 $40


    jp Jump_007_4001                              ; $5621: $c3 $01 $40


    jp Jump_007_4001                              ; $5624: $c3 $01 $40


    jp Jump_007_4001                              ; $5627: $c3 $01 $40


    jp Jump_007_4001                              ; $562a: $c3 $01 $40


    jp Jump_007_4001                              ; $562d: $c3 $01 $40


    jp Jump_007_4001                              ; $5630: $c3 $01 $40


    jp Jump_007_4001                              ; $5633: $c3 $01 $40


    rst $00                                       ; $5636: $c7
    ld bc, $c340                                  ; $5637: $01 $40 $c3
    ld bc, $c640                                  ; $563a: $01 $40 $c6
    ld [hl], $77                                  ; $563d: $36 $77
    add $36                                       ; $563f: $c6 $36
    ld [hl], a                                    ; $5641: $77
    rst $00                                       ; $5642: $c7
    ld a, [hl+]                                   ; $5643: $2a
    ld c, c                                       ; $5644: $49
    push bc                                       ; $5645: $c5
    ld h, c                                       ; $5646: $61
    ld a, d                                       ; $5647: $7a
    rst $00                                       ; $5648: $c7
    ccf                                           ; $5649: $3f
    ld d, c                                       ; $564a: $51
    rst $00                                       ; $564b: $c7
    ld [hl], l                                    ; $564c: $75
    ld e, h                                       ; $564d: $5c
    rst $00                                       ; $564e: $c7
    ld c, a                                       ; $564f: $4f
    ld h, a                                       ; $5650: $67
    rst $00                                       ; $5651: $c7
    ldh [$6d], a                                  ; $5652: $e0 $6d
    rst $00                                       ; $5654: $c7
    daa                                           ; $5655: $27
    ld [hl], e                                    ; $5656: $73
    ret z                                         ; $5657: $c8

    ld bc, $c840                                  ; $5658: $01 $40 $c8
    sbc b                                         ; $565b: $98
    ld c, b                                       ; $565c: $48
    ret z                                         ; $565d: $c8

    sub $50                                       ; $565e: $d6 $50
    jp Jump_007_4989                              ; $5660: $c3 $89 $49


    jp Jump_007_4001                              ; $5663: $c3 $01 $40


    jp Jump_007_4001                              ; $5666: $c3 $01 $40


    jp Jump_007_4001                              ; $5669: $c3 $01 $40


    jp Jump_007_4001                              ; $566c: $c3 $01 $40


    jp Jump_007_4001                              ; $566f: $c3 $01 $40


    ret z                                         ; $5672: $c8

    nop                                           ; $5673: $00
    ld e, c                                       ; $5674: $59
    ret z                                         ; $5675: $c8

    ld e, a                                       ; $5676: $5f
    ld h, b                                       ; $5677: $60
    ret z                                         ; $5678: $c8

    rlca                                          ; $5679: $07
    ld h, l                                       ; $567a: $65
    ret z                                         ; $567b: $c8

    inc l                                         ; $567c: $2c
    ld [hl], d                                    ; $567d: $72
    ret z                                         ; $567e: $c8

    xor $76                                       ; $567f: $ee $76
    jp Jump_007_4001                              ; $5681: $c3 $01 $40


    ret                                           ; $5684: $c9


    ld bc, $c340                                  ; $5685: $01 $40 $c3
    ld bc, $c940                                  ; $5688: $01 $40 $c9
    or l                                          ; $568b: $b5
    ld b, a                                       ; $568c: $47
    rst $00                                       ; $568d: $c7
    reti                                          ; $568e: $d9


    ld a, e                                       ; $568f: $7b
    jp nz, Jump_007_7cf9                          ; $5690: $c2 $f9 $7c

    rst $00                                       ; $5693: $c7
    reti                                          ; $5694: $d9


    ld a, e                                       ; $5695: $7b
    jp Jump_007_4001                              ; $5696: $c3 $01 $40


    jp Jump_007_4001                              ; $5699: $c3 $01 $40


    ret z                                         ; $569c: $c8

    rlca                                          ; $569d: $07
    ld h, l                                       ; $569e: $65
    ret                                           ; $569f: $c9


    sbc $4d                                       ; $56a0: $de $4d
    ret                                           ; $56a2: $c9


    push hl                                       ; $56a3: $e5
    ld d, e                                       ; $56a4: $53
    ret z                                         ; $56a5: $c8

    xor a                                         ; $56a6: $af
    ld a, e                                       ; $56a7: $7b
    ret                                           ; $56a8: $c9


    push bc                                       ; $56a9: $c5
    ld e, h                                       ; $56aa: $5c
    ret                                           ; $56ab: $c9


    ld c, e                                       ; $56ac: $4b
    ld l, c                                       ; $56ad: $69
    ret                                           ; $56ae: $c9


    add b                                         ; $56af: $80
    ld [hl], e                                    ; $56b0: $73
    jp z, Jump_007_4001                           ; $56b1: $ca $01 $40

    jp z, $4976                                   ; $56b4: $ca $76 $49

    jp z, Jump_007_5315                           ; $56b7: $ca $15 $53

    db $c5, $0c, $7e

    push bc                                       ; $56bd: $c5
    inc c                                         ; $56be: $0c
    ld a, [hl]                                    ; $56bf: $7e
    push bc                                       ; $56c0: $c5
    inc c                                         ; $56c1: $0c
    ld a, [hl]                                    ; $56c2: $7e
    push bc                                       ; $56c3: $c5
    inc c                                         ; $56c4: $0c
    ld a, [hl]                                    ; $56c5: $7e
    push bc                                       ; $56c6: $c5
    inc c                                         ; $56c7: $0c
    ld a, [hl]                                    ; $56c8: $7e
    push bc                                       ; $56c9: $c5
    inc c                                         ; $56ca: $0c
    ld a, [hl]                                    ; $56cb: $7e

Call_007_56cc:
    push bc                                       ; $56cc: $c5
    inc c                                         ; $56cd: $0c
    ld a, [hl]                                    ; $56ce: $7e
    push bc                                       ; $56cf: $c5
    inc c                                         ; $56d0: $0c
    ld a, [hl]                                    ; $56d1: $7e
    jp Jump_007_7ed4                              ; $56d2: $c3 $d4 $7e


    db $c3, $d4, $7e

    call nz, Call_007_7ec7                        ; $56d8: $c4 $c7 $7e
    ret                                           ; $56db: $c9


    ld [$c97c], sp                                ; $56dc: $08 $7c $c9
    or c                                          ; $56df: $b1
    ld a, l                                       ; $56e0: $7d
    ret                                           ; $56e1: $c9


    or c                                          ; $56e2: $b1
    ld a, l                                       ; $56e3: $7d
    add $1d                                       ; $56e4: $c6 $1d
    ld a, a                                       ; $56e6: $7f
    jp z, $586e                                   ; $56e7: $ca $6e $58

    jp z, $59e8                                   ; $56ea: $ca $e8 $59

    ret z                                         ; $56ed: $c8

    ld hl, sp+$7e                                 ; $56ee: $f8 $7e
    jp z, $5b8a                                   ; $56f0: $ca $8a $5b

    jp z, Jump_007_5c95                           ; $56f3: $ca $95 $5c

    push bc                                       ; $56f6: $c5
    inc c                                         ; $56f7: $0c
    ld a, [hl]                                    ; $56f8: $7e
    jp z, $5e14                                   ; $56f9: $ca $14 $5e

    jp z, Jump_007_5fc8                           ; $56fc: $ca $c8 $5f

    jp z, Jump_007_6088                           ; $56ff: $ca $88 $60

    jp z, Jump_007_623f                           ; $5702: $ca $3f $62

    jp z, Jump_007_63c9                           ; $5705: $ca $c9 $63

    jp z, Jump_007_6565                           ; $5708: $ca $65 $65

    jp z, $66e5                                   ; $570b: $ca $e5 $66

    jp z, Jump_007_685b                           ; $570e: $ca $5b $68

    jp z, Jump_007_69cd                           ; $5711: $ca $cd $69

    jp z, $6b56                                   ; $5714: $ca $56 $6b

    push bc                                       ; $5717: $c5
    inc c                                         ; $5718: $0c
    ld a, [hl]                                    ; $5719: $7e
    jp z, Jump_007_6cad                           ; $571a: $ca $ad $6c

    push bc                                       ; $571d: $c5
    inc c                                         ; $571e: $0c
    ld a, [hl]                                    ; $571f: $7e
    push bc                                       ; $5720: $c5
    inc c                                         ; $5721: $0c
    ld a, [hl]                                    ; $5722: $7e
    jp z, Jump_007_6de4                           ; $5723: $ca $e4 $6d

    jp z, $6fbf                                   ; $5726: $ca $bf $6f

    jp z, $7119                                   ; $5729: $ca $19 $71

    jp z, $724a                                   ; $572c: $ca $4a $72

    push bc                                       ; $572f: $c5
    inc c                                         ; $5730: $0c
    ld a, [hl]                                    ; $5731: $7e
    jp z, Jump_007_73de                           ; $5732: $ca $de $73

    jp z, $756f                                   ; $5735: $ca $6f $75

    jp z, $7710                                   ; $5738: $ca $10 $77

    push bc                                       ; $573b: $c5
    inc c                                         ; $573c: $0c
    ld a, [hl]                                    ; $573d: $7e
    push bc                                       ; $573e: $c5
    inc c                                         ; $573f: $0c
    ld a, [hl]                                    ; $5740: $7e
    push bc                                       ; $5741: $c5
    inc c                                         ; $5742: $0c
    ld a, [hl]                                    ; $5743: $7e
    push bc                                       ; $5744: $c5
    inc c                                         ; $5745: $0c
    ld a, [hl]                                    ; $5746: $7e
    push bc                                       ; $5747: $c5
    inc c                                         ; $5748: $0c
    ld a, [hl]                                    ; $5749: $7e
    push bc                                       ; $574a: $c5
    inc c                                         ; $574b: $0c
    ld a, [hl]                                    ; $574c: $7e
    push bc                                       ; $574d: $c5
    inc c                                         ; $574e: $0c
    ld a, [hl]                                    ; $574f: $7e
    push bc                                       ; $5750: $c5
    inc c                                         ; $5751: $0c
    ld a, [hl]                                    ; $5752: $7e
    push bc                                       ; $5753: $c5
    inc c                                         ; $5754: $0c
    ld a, [hl]                                    ; $5755: $7e
    jp z, Jump_007_7809                           ; $5756: $ca $09 $78

    push bc                                       ; $5759: $c5
    inc c                                         ; $575a: $0c
    ld a, [hl]                                    ; $575b: $7e
    jp z, Jump_007_7941                           ; $575c: $ca $41 $79

    jp z, Jump_007_7941                           ; $575f: $ca $41 $79

    jp z, $7ad2                                   ; $5762: $ca $d2 $7a

    jp z, Jump_007_7bf7                           ; $5765: $ca $f7 $7b

    jp z, Jump_007_7d59                           ; $5768: $ca $59 $7d

    rlc c                                         ; $576b: $cb $01
    ld b, b                                       ; $576d: $40
    jp z, Jump_007_7f02                           ; $576e: $ca $02 $7f

    res 3, c                                      ; $5771: $cb $99

Call_007_5773:
    ld b, c                                       ; $5773: $41
    res 5, h                                      ; $5774: $cb $ac
    ld b, d                                       ; $5776: $42
    srl [hl]                                      ; $5777: $cb $3e
    ld b, h                                       ; $5779: $44
    swap c                                        ; $577a: $cb $31
    ld b, l                                       ; $577c: $45
    set 3, a                                      ; $577d: $cb $df
    ld b, [hl]                                    ; $577f: $46
    jp Jump_007_7ed4                              ; $5780: $c3 $d4 $7e


    push bc                                       ; $5783: $c5
    inc c                                         ; $5784: $0c
    ld a, [hl]                                    ; $5785: $7e
    push bc                                       ; $5786: $c5
    inc c                                         ; $5787: $0c
    ld a, [hl]                                    ; $5788: $7e
    push bc                                       ; $5789: $c5
    inc c                                         ; $578a: $0c
    ld a, [hl]                                    ; $578b: $7e
    push bc                                       ; $578c: $c5
    inc c                                         ; $578d: $0c
    ld a, [hl]                                    ; $578e: $7e
    push bc                                       ; $578f: $c5
    inc c                                         ; $5790: $0c
    ld a, [hl]                                    ; $5791: $7e
    set 2, d                                      ; $5792: $cb $d2
    ld b, a                                       ; $5794: $47
    bit 5, e                                      ; $5795: $cb $6b
    ld c, c                                       ; $5797: $49
    bit 3, b                                      ; $5798: $cb $58
    ld c, d                                       ; $579a: $4a
    set 6, d                                      ; $579b: $cb $f2
    ld c, e                                       ; $579d: $4b
    res 4, b                                      ; $579e: $cb $a0
    ld c, h                                       ; $57a0: $4c
    push bc                                       ; $57a1: $c5
    inc c                                         ; $57a2: $0c
    ld a, [hl]                                    ; $57a3: $7e
    bit 5, h                                      ; $57a4: $cb $6c
    ld c, l                                       ; $57a6: $4d
    push bc                                       ; $57a7: $c5
    inc c                                         ; $57a8: $0c
    ld a, [hl]                                    ; $57a9: $7e
    sra h                                         ; $57aa: $cb $2c
    ld c, a                                       ; $57ac: $4f
    swap [hl]                                     ; $57ad: $cb $36
    ld d, b                                       ; $57af: $50
    jp z, $7710                                   ; $57b0: $ca $10 $77

    swap [hl]                                     ; $57b3: $cb $36
    ld d, b                                       ; $57b5: $50
    push bc                                       ; $57b6: $c5
    inc c                                         ; $57b7: $0c
    ld a, [hl]                                    ; $57b8: $7e
    push bc                                       ; $57b9: $c5
    inc c                                         ; $57ba: $0c
    ld a, [hl]                                    ; $57bb: $7e
    bit 3, b                                      ; $57bc: $cb $58
    ld c, d                                       ; $57be: $4a
    bit 1, c                                      ; $57bf: $cb $49
    ld d, c                                       ; $57c1: $51
    rl [hl]                                       ; $57c2: $cb $16
    ld d, d                                       ; $57c4: $52
    res 7, a                                      ; $57c5: $cb $bf
    ld d, e                                       ; $57c7: $53
    res 6, d                                      ; $57c8: $cb $b2
    ld d, h                                       ; $57ca: $54
    swap d                                        ; $57cb: $cb $32
    ld d, [hl]                                    ; $57cd: $56
    set 2, d                                      ; $57ce: $cb $d2
    ld d, a                                       ; $57d0: $57
    bit 5, a                                      ; $57d1: $cb $6f
    ld e, c                                       ; $57d3: $59
    res 4, [hl]                                   ; $57d4: $cb $a6
    ld e, d                                       ; $57d6: $5a
    rr b                                          ; $57d7: $cb $18
    ld e, h                                       ; $57d9: $5c

    db $c2, $bf, $7f

    jp nz, Jump_007_7fbf                          ; $57dd: $c2 $bf $7f

    jp nz, Jump_007_7fbf                          ; $57e0: $c2 $bf $7f

    jp nz, Jump_007_7fbf                          ; $57e3: $c2 $bf $7f

    jp nz, Jump_007_7fbf                          ; $57e6: $c2 $bf $7f

    jp nz, Jump_007_7fbf                          ; $57e9: $c2 $bf $7f

    jp nz, Jump_007_7fbf                          ; $57ec: $c2 $bf $7f

    jp nz, Jump_007_7fbf                          ; $57ef: $c2 $bf $7f

    push bc                                       ; $57f2: $c5
    ld e, e                                       ; $57f3: $5b
    ld a, a                                       ; $57f4: $7f

    db $c5, $5b, $7f

    push bc                                       ; $57f8: $c5
    sbc e                                         ; $57f9: $9b
    ld a, a                                       ; $57fa: $7f
    rst $00                                       ; $57fb: $c7
    sub [hl]                                      ; $57fc: $96
    ld a, a                                       ; $57fd: $7f
    ret                                           ; $57fe: $c9


    ld l, e                                       ; $57ff: $6b
    ld a, a                                       ; $5800: $7f

Jump_007_5801:
    ret                                           ; $5801: $c9


    ld l, e                                       ; $5802: $6b
    ld a, a                                       ; $5803: $7f
    ret                                           ; $5804: $c9


    xor e                                         ; $5805: $ab
    ld a, a                                       ; $5806: $7f
    sla a                                         ; $5807: $cb $27
    ld e, l                                       ; $5809: $5d
    bit 4, a                                      ; $580a: $cb $67
    ld e, l                                       ; $580c: $5d

Call_007_580d:
    res 4, a                                      ; $580d: $cb $a7
    ld e, l                                       ; $580f: $5d
    set 4, a                                      ; $5810: $cb $e7
    ld e, l                                       ; $5812: $5d
    sla a                                         ; $5813: $cb $27
    ld e, [hl]                                    ; $5815: $5e
    jp nz, Jump_007_7fbf                          ; $5816: $c2 $bf $7f

    bit 4, a                                      ; $5819: $cb $67
    ld e, [hl]                                    ; $581b: $5e
    res 4, a                                      ; $581c: $cb $a7
    ld e, [hl]                                    ; $581e: $5e
    set 4, a                                      ; $581f: $cb $e7
    ld e, [hl]                                    ; $5821: $5e
    sla a                                         ; $5822: $cb $27
    ld e, a                                       ; $5824: $5f
    bit 4, a                                      ; $5825: $cb $67
    ld e, a                                       ; $5827: $5f
    res 4, a                                      ; $5828: $cb $a7
    ld e, a                                       ; $582a: $5f
    set 4, a                                      ; $582b: $cb $e7
    ld e, a                                       ; $582d: $5f
    sla a                                         ; $582e: $cb $27
    ld h, b                                       ; $5830: $60
    bit 4, a                                      ; $5831: $cb $67
    ld h, b                                       ; $5833: $60
    res 4, a                                      ; $5834: $cb $a7
    ld h, b                                       ; $5836: $60
    jp nz, Jump_007_7fbf                          ; $5837: $c2 $bf $7f

    set 4, a                                      ; $583a: $cb $e7
    ld h, b                                       ; $583c: $60
    jp nz, Jump_007_7fbf                          ; $583d: $c2 $bf $7f

    jp nz, Jump_007_7fbf                          ; $5840: $c2 $bf $7f

    sla a                                         ; $5843: $cb $27
    ld h, c                                       ; $5845: $61
    bit 4, a                                      ; $5846: $cb $67
    ld h, c                                       ; $5848: $61
    res 4, a                                      ; $5849: $cb $a7
    ld h, c                                       ; $584b: $61
    set 4, a                                      ; $584c: $cb $e7
    ld h, c                                       ; $584e: $61
    jp nz, Jump_007_7fbf                          ; $584f: $c2 $bf $7f

    sla a                                         ; $5852: $cb $27
    ld h, d                                       ; $5854: $62
    bit 4, a                                      ; $5855: $cb $67
    ld h, d                                       ; $5857: $62
    res 4, a                                      ; $5858: $cb $a7
    ld h, d                                       ; $585a: $62
    jp nz, Jump_007_7fbf                          ; $585b: $c2 $bf $7f

    jp nz, Jump_007_7fbf                          ; $585e: $c2 $bf $7f

    jp nz, Jump_007_7fbf                          ; $5861: $c2 $bf $7f

    jp nz, Jump_007_7fbf                          ; $5864: $c2 $bf $7f

    jp nz, Jump_007_7fbf                          ; $5867: $c2 $bf $7f

    jp nz, Jump_007_7fbf                          ; $586a: $c2 $bf $7f

    jp nz, Jump_007_7fbf                          ; $586d: $c2 $bf $7f

    jp nz, Jump_007_7fbf                          ; $5870: $c2 $bf $7f

    jp nz, Jump_007_7fbf                          ; $5873: $c2 $bf $7f

    set 4, a                                      ; $5876: $cb $e7
    ld h, d                                       ; $5878: $62
    jp nz, Jump_007_7fbf                          ; $5879: $c2 $bf $7f

    sla a                                         ; $587c: $cb $27
    ld h, e                                       ; $587e: $63
    sla a                                         ; $587f: $cb $27
    ld h, e                                       ; $5881: $63
    bit 4, a                                      ; $5882: $cb $67
    ld h, e                                       ; $5884: $63
    res 4, a                                      ; $5885: $cb $a7
    ld h, e                                       ; $5887: $63
    set 4, a                                      ; $5888: $cb $e7
    ld h, e                                       ; $588a: $63
    sla a                                         ; $588b: $cb $27
    ld h, h                                       ; $588d: $64
    bit 4, a                                      ; $588e: $cb $67
    ld h, h                                       ; $5890: $64
    res 4, a                                      ; $5891: $cb $a7
    ld h, h                                       ; $5893: $64
    set 4, a                                      ; $5894: $cb $e7
    ld h, h                                       ; $5896: $64
    sla a                                         ; $5897: $cb $27
    ld h, l                                       ; $5899: $65
    bit 4, a                                      ; $589a: $cb $67
    ld h, l                                       ; $589c: $65
    res 4, a                                      ; $589d: $cb $a7
    ld h, l                                       ; $589f: $65
    push bc                                       ; $58a0: $c5
    ld e, e                                       ; $58a1: $5b
    ld a, a                                       ; $58a2: $7f
    jp nz, Jump_007_7fbf                          ; $58a3: $c2 $bf $7f

    jp nz, Jump_007_7fbf                          ; $58a6: $c2 $bf $7f

    jp nz, Jump_007_7fbf                          ; $58a9: $c2 $bf $7f

    jp nz, Jump_007_7fbf                          ; $58ac: $c2 $bf $7f

    jp nz, Jump_007_7fbf                          ; $58af: $c2 $bf $7f

    set 4, a                                      ; $58b2: $cb $e7
    ld h, l                                       ; $58b4: $65
    sla a                                         ; $58b5: $cb $27
    ld h, [hl]                                    ; $58b7: $66
    bit 4, a                                      ; $58b8: $cb $67
    ld h, [hl]                                    ; $58ba: $66
    res 4, a                                      ; $58bb: $cb $a7
    ld h, [hl]                                    ; $58bd: $66
    set 4, a                                      ; $58be: $cb $e7
    ld h, [hl]                                    ; $58c0: $66
    jp nz, Jump_007_7fbf                          ; $58c1: $c2 $bf $7f

    sla a                                         ; $58c4: $cb $27
    ld h, a                                       ; $58c6: $67
    jp nz, Jump_007_7fbf                          ; $58c7: $c2 $bf $7f

    bit 4, a                                      ; $58ca: $cb $67
    ld h, a                                       ; $58cc: $67
    res 4, a                                      ; $58cd: $cb $a7
    ld h, a                                       ; $58cf: $67
    res 4, a                                      ; $58d0: $cb $a7
    ld h, d                                       ; $58d2: $62
    res 4, a                                      ; $58d3: $cb $a7
    ld h, a                                       ; $58d5: $67
    jp nz, Jump_007_7fbf                          ; $58d6: $c2 $bf $7f

    jp nz, Jump_007_7fbf                          ; $58d9: $c2 $bf $7f

    bit 4, a                                      ; $58dc: $cb $67
    ld h, [hl]                                    ; $58de: $66
    set 4, a                                      ; $58df: $cb $e7
    ld h, a                                       ; $58e1: $67
    sla a                                         ; $58e2: $cb $27
    ld l, b                                       ; $58e4: $68
    bit 4, a                                      ; $58e5: $cb $67
    ld l, b                                       ; $58e7: $68
    res 4, a                                      ; $58e8: $cb $a7
    ld l, b                                       ; $58ea: $68
    set 4, a                                      ; $58eb: $cb $e7
    ld l, b                                       ; $58ed: $68
    sla a                                         ; $58ee: $cb $27
    ld l, c                                       ; $58f0: $69
    bit 4, a                                      ; $58f1: $cb $67
    ld l, c                                       ; $58f3: $69
    res 4, a                                      ; $58f4: $cb $a7
    ld l, c                                       ; $58f6: $69
    set 4, a                                      ; $58f7: $cb $e7
    ld l, c                                       ; $58f9: $69
    sla a                                         ; $58fa: $cb $27
    ld l, d                                       ; $58fc: $6a
    set 0, [hl]                                   ; $58fd: $cb $c6
    ld l, l                                       ; $58ff: $6d
    res 2, b                                      ; $5900: $cb $90
    ld [hl], b                                    ; $5902: $70
    res 2, d                                      ; $5903: $cb $92
    ld [hl], h                                    ; $5905: $74
    rrc [hl]                                      ; $5906: $cb $0e
    ld [hl], a                                    ; $5908: $77
    res 2, c                                      ; $5909: $cb $91
    ld [hl], a                                    ; $590b: $77
    res 7, b                                      ; $590c: $cb $b8
    ld a, c                                       ; $590e: $79
    res 1, b                                      ; $590f: $cb $88
    ld a, e                                       ; $5911: $7b
    bit 1, l                                      ; $5912: $cb $4d
    ld a, h                                       ; $5914: $7c
    call z, Call_007_4001                         ; $5915: $cc $01 $40
    call z, $40c9                                 ; $5918: $cc $c9 $40
    call z, $4339                                 ; $591b: $cc $39 $43

    db $cc, $09, $44

    call z, Call_007_45df                         ; $5921: $cc $df $45
    call z, Call_007_49c1                         ; $5924: $cc $c1 $49
    call z, Call_007_4cfa                         ; $5927: $cc $fa $4c
    call z, Call_007_50ab                         ; $592a: $cc $ab $50
    call z, Call_007_51c2                         ; $592d: $cc $c2 $51
    call z, $551d                                 ; $5930: $cc $1d $55
    call z, Call_007_56cc                         ; $5933: $cc $cc $56
    call z, Call_007_580d                         ; $5936: $cc $0d $58
    call z, $5a2e                                 ; $5939: $cc $2e $5a
    call z, Call_007_5e57                         ; $593c: $cc $57 $5e
    call z, Call_007_612d                         ; $593f: $cc $2d $61
    call z, Call_007_64c9                         ; $5942: $cc $c9 $64
    call z, $672e                                 ; $5945: $cc $2e $67
    call z, Call_007_6a5f                         ; $5948: $cc $5f $6a
    call z, Call_007_6dda                         ; $594b: $cc $da $6d
    call z, Call_007_7067                         ; $594e: $cc $67 $70
    call z, Call_007_718f                         ; $5951: $cc $8f $71
    call z, Call_007_7536                         ; $5954: $cc $36 $75
    res 0, h                                      ; $5957: $cb $84
    ld a, a                                       ; $5959: $7f
    call z, Call_007_790d                         ; $595a: $cc $0d $79
    call z, Call_007_7c4c                         ; $595d: $cc $4c $7c
    call Call_007_4001                            ; $5960: $cd $01 $40
    call Call_007_41e8                            ; $5963: $cd $e8 $41
    set 0, [hl]                                   ; $5966: $cb $c6
    ld l, l                                       ; $5968: $6d
    call Call_007_4581                            ; $5969: $cd $81 $45
    call Call_007_4876                            ; $596c: $cd $76 $48
    call $49e7                                    ; $596f: $cd $e7 $49
    call Call_007_4b67                            ; $5972: $cd $67 $4b
    call Call_007_4dd3                            ; $5975: $cd $d3 $4d
    call Call_007_510a                            ; $5978: $cd $0a $51
    call $53d4                                    ; $597b: $cd $d4 $53
    call Call_007_5773                            ; $597e: $cd $73 $57
    call Call_007_5ab4                            ; $5981: $cd $b4 $5a
    call $5d58                                    ; $5984: $cd $58 $5d
    call z, Call_007_7ed2                         ; $5987: $cc $d2 $7e
    call $604d                                    ; $598a: $cd $4d $60
    call Call_007_62ad                            ; $598d: $cd $ad $62
    res 2, b                                      ; $5990: $cb $90
    ld [hl], b                                    ; $5992: $70
    call Call_007_6665                            ; $5993: $cd $65 $66
    call Call_007_67d6                            ; $5996: $cd $d6 $67
    call $6b14                                    ; $5999: $cd $14 $6b
    call Call_007_6d99                            ; $599c: $cd $99 $6d
    call $6f0c                                    ; $599f: $cd $0c $6f
    call Call_007_7131                            ; $59a2: $cd $31 $71
    call $7293                                    ; $59a5: $cd $93 $72
    call Call_007_7351                            ; $59a8: $cd $51 $73
    call $7442                                    ; $59ab: $cd $42 $74
    call $763a                                    ; $59ae: $cd $3a $76
    call Call_007_772b                            ; $59b1: $cd $2b $77
    call Call_007_78d3                            ; $59b4: $cd $d3 $78

    db $cd, $d5, $79

    call Call_007_7b0a                            ; $59ba: $cd $0a $7b
    adc $01                                       ; $59bd: $ce $01
    ld b, b                                       ; $59bf: $40
    adc $0c                                       ; $59c0: $ce $0c
    ld b, e                                       ; $59c2: $43
    call Call_007_7d94                            ; $59c3: $cd $94 $7d
    adc $94                                       ; $59c6: $ce $94
    ld b, l                                       ; $59c8: $45
    adc $3f                                       ; $59c9: $ce $3f
    ld c, b                                       ; $59cb: $48
    adc $07                                       ; $59cc: $ce $07
    ld c, e                                       ; $59ce: $4b
    adc $ae                                       ; $59cf: $ce $ae
    ld c, l                                       ; $59d1: $4d
    adc $63                                       ; $59d2: $ce $63
    ld c, a                                       ; $59d4: $4f
    adc $76                                       ; $59d5: $ce $76
    ld d, b                                       ; $59d7: $50
    adc $8f                                       ; $59d8: $ce $8f
    ld d, c                                       ; $59da: $51
    adc $31                                       ; $59db: $ce $31
    ld d, e                                       ; $59dd: $53
    adc $29                                       ; $59de: $ce $29
    ld d, h                                       ; $59e0: $54
    adc $0d                                       ; $59e1: $ce $0d
    ld d, l                                       ; $59e3: $55
    adc $f1                                       ; $59e4: $ce $f1
    ld d, [hl]                                    ; $59e6: $56
    adc $ff                                       ; $59e7: $ce $ff
    ld e, b                                       ; $59e9: $58
    adc $bd                                       ; $59ea: $ce $bd
    ld e, d                                       ; $59ec: $5a
    adc $a9                                       ; $59ed: $ce $a9
    ld e, e                                       ; $59ef: $5b
    adc $2d                                       ; $59f0: $ce $2d
    ld e, [hl]                                    ; $59f2: $5e
    adc $11                                       ; $59f3: $ce $11
    ld e, a                                       ; $59f5: $5f
    adc $13                                       ; $59f6: $ce $13
    ld h, c                                       ; $59f8: $61
    adc $0d                                       ; $59f9: $ce $0d
    ld h, d                                       ; $59fb: $62
    adc $af                                       ; $59fc: $ce $af
    ld h, h                                       ; $59fe: $64
    call Call_007_67d6                            ; $59ff: $cd $d6 $67
    adc $c9                                       ; $5a02: $ce $c9
    ld h, l                                       ; $5a04: $65
    adc $6d                                       ; $5a05: $ce $6d
    ld l, b                                       ; $5a07: $68
    adc $99                                       ; $5a08: $ce $99
    ld l, c                                       ; $5a0a: $69
    adc $d5                                       ; $5a0b: $ce $d5
    ld l, d                                       ; $5a0d: $6a
    adc $50                                       ; $5a0e: $ce $50
    ld l, h                                       ; $5a10: $6c
    adc $48                                       ; $5a11: $ce $48
    ld l, [hl]                                    ; $5a13: $6e
    adc $86                                       ; $5a14: $ce $86
    ld [hl], c                                    ; $5a16: $71
    adc $f5                                       ; $5a17: $ce $f5
    ld [hl], d                                    ; $5a19: $72
    call Call_007_7f31                            ; $5a1a: $cd $31 $7f
    adc $19                                       ; $5a1d: $ce $19
    ld [hl], l                                    ; $5a1f: $75
    adc $87                                       ; $5a20: $ce $87
    ld [hl], a                                    ; $5a22: $77
    adc $f1                                       ; $5a23: $ce $f1
    ld a, b                                       ; $5a25: $78
    rst $08                                       ; $5a26: $cf
    ld bc, $cd40                                  ; $5a27: $01 $40 $cd
    inc d                                         ; $5a2a: $14
    ld l, e                                       ; $5a2b: $6b
    call z, Call_007_7fa4                         ; $5a2c: $cc $a4 $7f
    call Call_007_7faa                            ; $5a2f: $cd $aa $7f
    adc $18                                       ; $5a32: $ce $18
    ld a, e                                       ; $5a34: $7b
    adc $58                                       ; $5a35: $ce $58
    ld a, e                                       ; $5a37: $7b
    adc $98                                       ; $5a38: $ce $98
    ld a, e                                       ; $5a3a: $7b
    adc $d8                                       ; $5a3b: $ce $d8
    ld a, e                                       ; $5a3d: $7b
    adc $18                                       ; $5a3e: $ce $18
    ld a, h                                       ; $5a40: $7c
    adc $58                                       ; $5a41: $ce $58
    ld a, h                                       ; $5a43: $7c
    adc $98                                       ; $5a44: $ce $98
    ld a, h                                       ; $5a46: $7c
    adc $d8                                       ; $5a47: $ce $d8
    ld a, h                                       ; $5a49: $7c
    adc $18                                       ; $5a4a: $ce $18
    ld a, l                                       ; $5a4c: $7d
    adc $58                                       ; $5a4d: $ce $58
    ld a, l                                       ; $5a4f: $7d

    db $ce, $98, $7d

    adc $d8                                       ; $5a53: $ce $d8
    ld a, l                                       ; $5a55: $7d
    adc $18                                       ; $5a56: $ce $18
    ld a, [hl]                                    ; $5a58: $7e
    adc $58                                       ; $5a59: $ce $58
    ld a, [hl]                                    ; $5a5b: $7e
    adc $98                                       ; $5a5c: $ce $98
    ld a, [hl]                                    ; $5a5e: $7e
    adc $d8                                       ; $5a5f: $ce $d8
    ld a, [hl]                                    ; $5a61: $7e
    adc $18                                       ; $5a62: $ce $18
    ld a, a                                       ; $5a64: $7f
    adc $58                                       ; $5a65: $ce $58
    ld a, a                                       ; $5a67: $7f
    adc $98                                       ; $5a68: $ce $98
    ld a, a                                       ; $5a6a: $7f
    rst $08                                       ; $5a6b: $cf
    ld [hl], d                                    ; $5a6c: $72
    ld b, l                                       ; $5a6d: $45
    rst $08                                       ; $5a6e: $cf
    or d                                          ; $5a6f: $b2
    ld b, l                                       ; $5a70: $45
    rst $08                                       ; $5a71: $cf
    ld a, [c]                                     ; $5a72: $f2
    ld b, l                                       ; $5a73: $45
    rst $08                                       ; $5a74: $cf
    ld [hl-], a                                   ; $5a75: $32
    ld b, [hl]                                    ; $5a76: $46
    rst $08                                       ; $5a77: $cf
    ld [hl], d                                    ; $5a78: $72
    ld b, [hl]                                    ; $5a79: $46
    rst $08                                       ; $5a7a: $cf
    or d                                          ; $5a7b: $b2
    ld b, [hl]                                    ; $5a7c: $46
    rst $08                                       ; $5a7d: $cf
    ld a, [c]                                     ; $5a7e: $f2
    ld b, [hl]                                    ; $5a7f: $46
    rst $08                                       ; $5a80: $cf
    ld [hl-], a                                   ; $5a81: $32
    ld b, a                                       ; $5a82: $47
    rst $08                                       ; $5a83: $cf
    ld [hl], d                                    ; $5a84: $72
    ld b, a                                       ; $5a85: $47
    rst $08                                       ; $5a86: $cf
    or d                                          ; $5a87: $b2
    ld b, a                                       ; $5a88: $47
    rst $08                                       ; $5a89: $cf
    ld a, [c]                                     ; $5a8a: $f2
    ld b, a                                       ; $5a8b: $47
    rst $08                                       ; $5a8c: $cf
    ld [hl-], a                                   ; $5a8d: $32
    ld c, b                                       ; $5a8e: $48
    rst $08                                       ; $5a8f: $cf
    ld [hl], d                                    ; $5a90: $72
    ld c, b                                       ; $5a91: $48
    rst $08                                       ; $5a92: $cf
    or d                                          ; $5a93: $b2
    ld c, b                                       ; $5a94: $48
    rst $08                                       ; $5a95: $cf
    ld a, [c]                                     ; $5a96: $f2
    ld c, b                                       ; $5a97: $48
    call Call_007_7faa                            ; $5a98: $cd $aa $7f
    rst $08                                       ; $5a9b: $cf
    ld [hl-], a                                   ; $5a9c: $32
    ld c, c                                       ; $5a9d: $49
    rst $08                                       ; $5a9e: $cf
    ld [hl], d                                    ; $5a9f: $72
    ld c, c                                       ; $5aa0: $49
    rst $08                                       ; $5aa1: $cf
    or d                                          ; $5aa2: $b2
    ld c, c                                       ; $5aa3: $49
    rst $08                                       ; $5aa4: $cf
    ld a, [c]                                     ; $5aa5: $f2
    ld c, c                                       ; $5aa6: $49
    rst $08                                       ; $5aa7: $cf

Jump_007_5aa8:
    ld [hl-], a                                   ; $5aa8: $32
    ld c, d                                       ; $5aa9: $4a
    rst $08                                       ; $5aaa: $cf
    ld [hl], d                                    ; $5aab: $72
    ld c, d                                       ; $5aac: $4a
    rst $08                                       ; $5aad: $cf
    or d                                          ; $5aae: $b2
    ld c, d                                       ; $5aaf: $4a
    rst $08                                       ; $5ab0: $cf
    ld a, [c]                                     ; $5ab1: $f2
    ld c, d                                       ; $5ab2: $4a
    rst $08                                       ; $5ab3: $cf

Call_007_5ab4:
    ld [hl-], a                                   ; $5ab4: $32
    ld c, e                                       ; $5ab5: $4b
    rst $08                                       ; $5ab6: $cf
    ld [hl], d                                    ; $5ab7: $72
    ld c, e                                       ; $5ab8: $4b
    rst $08                                       ; $5ab9: $cf
    or d                                          ; $5aba: $b2
    ld c, e                                       ; $5abb: $4b
    rst $08                                       ; $5abc: $cf
    ld a, [c]                                     ; $5abd: $f2
    ld c, e                                       ; $5abe: $4b
    rst $08                                       ; $5abf: $cf
    ld [hl-], a                                   ; $5ac0: $32
    ld c, h                                       ; $5ac1: $4c
    adc $18                                       ; $5ac2: $ce $18
    ld a, e                                       ; $5ac4: $7b
    rst $08                                       ; $5ac5: $cf
    ld [hl], d                                    ; $5ac6: $72
    ld c, h                                       ; $5ac7: $4c
    rst $08                                       ; $5ac8: $cf
    or d                                          ; $5ac9: $b2
    ld c, h                                       ; $5aca: $4c
    rst $08                                       ; $5acb: $cf
    ld a, [c]                                     ; $5acc: $f2
    ld c, h                                       ; $5acd: $4c
    rst $08                                       ; $5ace: $cf
    ld [hl-], a                                   ; $5acf: $32
    ld c, l                                       ; $5ad0: $4d
    rst $08                                       ; $5ad1: $cf
    ld [hl], d                                    ; $5ad2: $72
    ld c, l                                       ; $5ad3: $4d
    rst $08                                       ; $5ad4: $cf
    or d                                          ; $5ad5: $b2
    ld c, l                                       ; $5ad6: $4d
    rst $08                                       ; $5ad7: $cf
    ld a, [c]                                     ; $5ad8: $f2
    ld c, l                                       ; $5ad9: $4d
    rst $08                                       ; $5ada: $cf
    ld [hl-], a                                   ; $5adb: $32
    ld c, [hl]                                    ; $5adc: $4e
    rst $08                                       ; $5add: $cf
    ld [hl], d                                    ; $5ade: $72
    ld c, [hl]                                    ; $5adf: $4e
    rst $08                                       ; $5ae0: $cf
    or d                                          ; $5ae1: $b2
    ld c, [hl]                                    ; $5ae2: $4e
    rst $08                                       ; $5ae3: $cf
    ld a, [c]                                     ; $5ae4: $f2
    ld c, [hl]                                    ; $5ae5: $4e
    rst $08                                       ; $5ae6: $cf
    ld [hl-], a                                   ; $5ae7: $32
    ld c, a                                       ; $5ae8: $4f

    db $cf, $72, $4f

    rst $08                                       ; $5aec: $cf
    or d                                          ; $5aed: $b2
    ld c, a                                       ; $5aee: $4f
    rst $08                                       ; $5aef: $cf
    ld a, [c]                                     ; $5af0: $f2
    ld c, a                                       ; $5af1: $4f
    rst $08                                       ; $5af2: $cf
    ld [hl-], a                                   ; $5af3: $32
    ld d, b                                       ; $5af4: $50
    rst $08                                       ; $5af5: $cf
    ld [hl], d                                    ; $5af6: $72
    ld d, b                                       ; $5af7: $50
    rst $08                                       ; $5af8: $cf
    or d                                          ; $5af9: $b2
    ld d, b                                       ; $5afa: $50
    rst $08                                       ; $5afb: $cf
    ld a, [c]                                     ; $5afc: $f2
    ld d, b                                       ; $5afd: $50
    rst $08                                       ; $5afe: $cf
    ld [hl-], a                                   ; $5aff: $32
    ld d, c                                       ; $5b00: $51
    rst $08                                       ; $5b01: $cf
    ld [hl], d                                    ; $5b02: $72
    ld d, c                                       ; $5b03: $51
    rst $08                                       ; $5b04: $cf
    or d                                          ; $5b05: $b2
    ld d, c                                       ; $5b06: $51
    rst $08                                       ; $5b07: $cf
    ld a, [c]                                     ; $5b08: $f2
    ld d, c                                       ; $5b09: $51
    rst $08                                       ; $5b0a: $cf
    ld [hl-], a                                   ; $5b0b: $32
    ld d, d                                       ; $5b0c: $52
    rst $08                                       ; $5b0d: $cf
    ld [hl], d                                    ; $5b0e: $72
    ld d, d                                       ; $5b0f: $52
    rst $08                                       ; $5b10: $cf
    or d                                          ; $5b11: $b2
    ld d, d                                       ; $5b12: $52
    rst $08                                       ; $5b13: $cf
    ld a, [c]                                     ; $5b14: $f2
    ld d, d                                       ; $5b15: $52
    rst $08                                       ; $5b16: $cf
    ld [hl-], a                                   ; $5b17: $32
    ld d, e                                       ; $5b18: $53
    rst $08                                       ; $5b19: $cf
    ld [hl], d                                    ; $5b1a: $72
    ld d, e                                       ; $5b1b: $53
    rst $08                                       ; $5b1c: $cf
    or d                                          ; $5b1d: $b2
    ld d, e                                       ; $5b1e: $53
    rst $08                                       ; $5b1f: $cf
    ld a, [c]                                     ; $5b20: $f2
    ld d, e                                       ; $5b21: $53
    rst $08                                       ; $5b22: $cf
    ld [hl-], a                                   ; $5b23: $32
    ld d, h                                       ; $5b24: $54
    rst $08                                       ; $5b25: $cf
    ld [hl], d                                    ; $5b26: $72
    ld d, h                                       ; $5b27: $54
    rst $08                                       ; $5b28: $cf
    or d                                          ; $5b29: $b2
    ld d, h                                       ; $5b2a: $54
    rst $08                                       ; $5b2b: $cf
    ld a, [c]                                     ; $5b2c: $f2
    ld d, h                                       ; $5b2d: $54
    rst $08                                       ; $5b2e: $cf
    ld [hl-], a                                   ; $5b2f: $32
    ld d, l                                       ; $5b30: $55
    rst $08                                       ; $5b31: $cf
    ld [hl], d                                    ; $5b32: $72
    ld d, l                                       ; $5b33: $55
    rst $08                                       ; $5b34: $cf
    or d                                          ; $5b35: $b2
    ld d, l                                       ; $5b36: $55
    rst $08                                       ; $5b37: $cf
    ld a, [c]                                     ; $5b38: $f2
    ld d, l                                       ; $5b39: $55
    rst $08                                       ; $5b3a: $cf
    ld [hl-], a                                   ; $5b3b: $32
    ld d, [hl]                                    ; $5b3c: $56
    rst $08                                       ; $5b3d: $cf
    ld [hl], d                                    ; $5b3e: $72
    ld d, [hl]                                    ; $5b3f: $56
    rst $08                                       ; $5b40: $cf
    or d                                          ; $5b41: $b2
    ld d, [hl]                                    ; $5b42: $56
    rst $08                                       ; $5b43: $cf
    ld a, [c]                                     ; $5b44: $f2
    ld d, [hl]                                    ; $5b45: $56
    rst $08                                       ; $5b46: $cf
    ld [hl-], a                                   ; $5b47: $32
    ld d, a                                       ; $5b48: $57
    rst $08                                       ; $5b49: $cf
    ld [hl], d                                    ; $5b4a: $72
    ld d, a                                       ; $5b4b: $57
    rst $08                                       ; $5b4c: $cf
    or d                                          ; $5b4d: $b2
    ld d, a                                       ; $5b4e: $57
    rst $08                                       ; $5b4f: $cf
    ld a, [c]                                     ; $5b50: $f2
    ld d, a                                       ; $5b51: $57
    rst $08                                       ; $5b52: $cf
    ld [hl-], a                                   ; $5b53: $32
    ld e, b                                       ; $5b54: $58
    rst $08                                       ; $5b55: $cf
    ld [hl], d                                    ; $5b56: $72
    ld e, b                                       ; $5b57: $58
    rst $08                                       ; $5b58: $cf
    or d                                          ; $5b59: $b2
    ld e, b                                       ; $5b5a: $58
    rst $08                                       ; $5b5b: $cf
    ld a, [c]                                     ; $5b5c: $f2
    ld e, b                                       ; $5b5d: $58
    rst $08                                       ; $5b5e: $cf
    ld [hl-], a                                   ; $5b5f: $32
    ld c, l                                       ; $5b60: $4d
    rst $08                                       ; $5b61: $cf
    ld [hl], d                                    ; $5b62: $72
    ld d, l                                       ; $5b63: $55
    rst $08                                       ; $5b64: $cf
    or d                                          ; $5b65: $b2
    ld c, [hl]                                    ; $5b66: $4e
    rst $08                                       ; $5b67: $cf
    ld [hl], d                                    ; $5b68: $72
    ld d, c                                       ; $5b69: $51
    rst $08                                       ; $5b6a: $cf
    ld [hl], d                                    ; $5b6b: $72
    ld d, c                                       ; $5b6c: $51
    rst $08                                       ; $5b6d: $cf
    ld [hl-], a                                   ; $5b6e: $32
    ld d, d                                       ; $5b6f: $52
    rst $08                                       ; $5b70: $cf
    ld [hl], d                                    ; $5b71: $72
    ld d, e                                       ; $5b72: $53
    rst $08                                       ; $5b73: $cf
    ld [hl], d                                    ; $5b74: $72
    ld e, b                                       ; $5b75: $58
    rst $08                                       ; $5b76: $cf
    ld [hl], d                                    ; $5b77: $72
    ld e, b                                       ; $5b78: $58
    rst $08                                       ; $5b79: $cf
    ld [hl-], a                                   ; $5b7a: $32
    ld d, h                                       ; $5b7b: $54
    rst $08                                       ; $5b7c: $cf
    or d                                          ; $5b7d: $b2
    ld d, [hl]                                    ; $5b7e: $56
    rst $08                                       ; $5b7f: $cf
    ld a, [c]                                     ; $5b80: $f2
    ld d, e                                       ; $5b81: $53
    rst $08                                       ; $5b82: $cf
    ld [hl-], a                                   ; $5b83: $32
    ld e, c                                       ; $5b84: $59

    db $cf, $4c, $5a, $cf, $60, $5b

    rst $08                                       ; $5b8b: $cf
    ld [hl], c                                    ; $5b8c: $71
    ld e, h                                       ; $5b8d: $5c
    rst $08                                       ; $5b8e: $cf
    adc c                                         ; $5b8f: $89
    ld e, l                                       ; $5b90: $5d
    rst $08                                       ; $5b91: $cf
    xor c                                         ; $5b92: $a9
    ld e, [hl]                                    ; $5b93: $5e
    rst $08                                       ; $5b94: $cf
    or d                                          ; $5b95: $b2
    ld e, a                                       ; $5b96: $5f
    rst $08                                       ; $5b97: $cf
    call nz, $cf60                                ; $5b98: $c4 $60 $cf
    bit 4, c                                      ; $5b9b: $cb $61
    rst $08                                       ; $5b9d: $cf
    ld [c], a                                     ; $5b9e: $e2
    ld h, d                                       ; $5b9f: $62
    rst $08                                       ; $5ba0: $cf
    ld sp, hl                                     ; $5ba1: $f9
    ld h, e                                       ; $5ba2: $63
    rst $08                                       ; $5ba3: $cf
    ld de, $cf65                                  ; $5ba4: $11 $65 $cf
    rra                                           ; $5ba7: $1f
    ld h, [hl]                                    ; $5ba8: $66
    rst $08                                       ; $5ba9: $cf
    ld [hl-], a                                   ; $5baa: $32
    ld h, a                                       ; $5bab: $67

    db $cf, $4f, $68

    rst $08                                       ; $5baf: $cf
    ld e, [hl]                                    ; $5bb0: $5e
    ld l, c                                       ; $5bb1: $69
    rst $08                                       ; $5bb2: $cf
    ld a, e                                       ; $5bb3: $7b
    ld l, d                                       ; $5bb4: $6a
    rst $08                                       ; $5bb5: $cf
    sbc e                                         ; $5bb6: $9b
    ld l, e                                       ; $5bb7: $6b
    rst $08                                       ; $5bb8: $cf
    or d                                          ; $5bb9: $b2
    ld l, h                                       ; $5bba: $6c
    rst $08                                       ; $5bbb: $cf
    or [hl]                                       ; $5bbc: $b6
    ld l, l                                       ; $5bbd: $6d

    db $cf, $c8, $6e

    rst $08                                       ; $5bc1: $cf
    ld [$cf6f], a                                 ; $5bc2: $ea $6f $cf
    ld a, [$cf70]                                 ; $5bc5: $fa $70 $cf
    inc c                                         ; $5bc8: $0c
    ld [hl], d                                    ; $5bc9: $72
    rst $08                                       ; $5bca: $cf
    rra                                           ; $5bcb: $1f
    ld [hl], e                                    ; $5bcc: $73
    rst $08                                       ; $5bcd: $cf
    ld c, $74                                     ; $5bce: $0e $74
    rst $08                                       ; $5bd0: $cf
    jr z, jr_007_5c48                             ; $5bd1: $28 $75

    rst $08                                       ; $5bd3: $cf
    scf                                           ; $5bd4: $37
    halt                                          ; $5bd5: $76
    rst $08                                       ; $5bd6: $cf
    ld b, d                                       ; $5bd7: $42
    ld [hl], a                                    ; $5bd8: $77
    rst $08                                       ; $5bd9: $cf
    ld d, d                                       ; $5bda: $52
    ld a, b                                       ; $5bdb: $78
    rst $08                                       ; $5bdc: $cf
    ld l, l                                       ; $5bdd: $6d
    ld a, c                                       ; $5bde: $79
    rst $08                                       ; $5bdf: $cf
    adc l                                         ; $5be0: $8d
    ld a, d                                       ; $5be1: $7a
    rst $08                                       ; $5be2: $cf
    xor l                                         ; $5be3: $ad
    ld a, e                                       ; $5be4: $7b
    rst $08                                       ; $5be5: $cf
    ret                                           ; $5be6: $c9


    ld a, h                                       ; $5be7: $7c
    rst $08                                       ; $5be8: $cf
    db $e4                                        ; $5be9: $e4
    ld a, l                                       ; $5bea: $7d
    rst $08                                       ; $5beb: $cf
    ei                                            ; $5bec: $fb
    ld a, [hl]                                    ; $5bed: $7e
    ret nc                                        ; $5bee: $d0

    ld bc, $d040                                  ; $5bef: $01 $40 $d0
    ld d, $41                                     ; $5bf2: $16 $41

    db $d0, $2a, $42

    ret nc                                        ; $5bf7: $d0

    ccf                                           ; $5bf8: $3f
    ld b, e                                       ; $5bf9: $43
    ret nc                                        ; $5bfa: $d0

    ld d, h                                       ; $5bfb: $54
    ld b, h                                       ; $5bfc: $44
    ret nc                                        ; $5bfd: $d0

    ld l, a                                       ; $5bfe: $6f
    ld b, l                                       ; $5bff: $45
    ret nc                                        ; $5c00: $d0

Call_007_5c01:
Jump_007_5c01:
    adc a                                         ; $5c01: $8f
    ld b, [hl]                                    ; $5c02: $46
    ret nc                                        ; $5c03: $d0

    xor d                                         ; $5c04: $aa
    ld b, a                                       ; $5c05: $47
    ret nc                                        ; $5c06: $d0

    add $48                                       ; $5c07: $c6 $48
    ret nc                                        ; $5c09: $d0

    ld [c], a                                     ; $5c0a: $e2
    ld c, c                                       ; $5c0b: $49
    ret nc                                        ; $5c0c: $d0

    rst $30                                       ; $5c0d: $f7
    ld c, d                                       ; $5c0e: $4a
    ret nc                                        ; $5c0f: $d0

    db $10                                        ; $5c10: $10
    ld c, h                                       ; $5c11: $4c
    ret nc                                        ; $5c12: $d0

    ld [hl-], a                                   ; $5c13: $32
    ld c, l                                       ; $5c14: $4d
    ret nc                                        ; $5c15: $d0

    ld d, e                                       ; $5c16: $53
    ld c, [hl]                                    ; $5c17: $4e
    ret nc                                        ; $5c18: $d0

    ld [hl], b                                    ; $5c19: $70
    ld c, a                                       ; $5c1a: $4f
    ret nc                                        ; $5c1b: $d0

    adc b                                         ; $5c1c: $88
    ld d, b                                       ; $5c1d: $50
    ret nc                                        ; $5c1e: $d0

    sbc c                                         ; $5c1f: $99
    ld d, c                                       ; $5c20: $51
    ret nc                                        ; $5c21: $d0

    xor a                                         ; $5c22: $af
    ld d, d                                       ; $5c23: $52
    ret nc                                        ; $5c24: $d0

    ret                                           ; $5c25: $c9


    ld d, e                                       ; $5c26: $53
    ret nc                                        ; $5c27: $d0

    ld [c], a                                     ; $5c28: $e2
    ld d, h                                       ; $5c29: $54
    ret nc                                        ; $5c2a: $d0

    ld sp, hl                                     ; $5c2b: $f9
    ld d, l                                       ; $5c2c: $55
    ret nc                                        ; $5c2d: $d0

    ld a, [bc]                                    ; $5c2e: $0a
    ld d, a                                       ; $5c2f: $57
    ret nc                                        ; $5c30: $d0

    inc l                                         ; $5c31: $2c
    ld e, b                                       ; $5c32: $58
    ret nc                                        ; $5c33: $d0

    jr nc, @+$5b                                  ; $5c34: $30 $59

    ret nc                                        ; $5c36: $d0

    inc e                                         ; $5c37: $1c
    ld e, d                                       ; $5c38: $5a

    db $d0, $31, $5b

    ret nc                                        ; $5c3c: $d0

    ld d, $5c                                     ; $5c3d: $16 $5c
    ret nc                                        ; $5c3f: $d0

    inc sp                                        ; $5c40: $33
    ld e, l                                       ; $5c41: $5d
    ret nc                                        ; $5c42: $d0

    ld [hl], $5e                                  ; $5c43: $36 $5e
    ret nc                                        ; $5c45: $d0

    ld d, c                                       ; $5c46: $51
    ld e, a                                       ; $5c47: $5f

jr_007_5c48:
    ret nc                                        ; $5c48: $d0

    ld c, l                                       ; $5c49: $4d
    ld h, b                                       ; $5c4a: $60
    ret nc                                        ; $5c4b: $d0

    ld h, e                                       ; $5c4c: $63
    ld h, c                                       ; $5c4d: $61
    ret nc                                        ; $5c4e: $d0

    add h                                         ; $5c4f: $84
    ld h, d                                       ; $5c50: $62
    ret nc                                        ; $5c51: $d0

    adc c                                         ; $5c52: $89
    ld h, e                                       ; $5c53: $63
    ret nc                                        ; $5c54: $d0

    sub a                                         ; $5c55: $97
    ld h, h                                       ; $5c56: $64
    ret nc                                        ; $5c57: $d0

    and h                                         ; $5c58: $a4
    ld h, l                                       ; $5c59: $65
    ret nc                                        ; $5c5a: $d0

    cp b                                          ; $5c5b: $b8
    ld h, [hl]                                    ; $5c5c: $66
    ret nc                                        ; $5c5d: $d0

    push de                                       ; $5c5e: $d5
    ld h, a                                       ; $5c5f: $67
    ret nc                                        ; $5c60: $d0

    ld [$d068], a                                 ; $5c61: $ea $68 $d0
    ld [bc], a                                    ; $5c64: $02
    ld l, d                                       ; $5c65: $6a
    ret nc                                        ; $5c66: $d0

    dec e                                         ; $5c67: $1d
    ld l, e                                       ; $5c68: $6b
    ret nc                                        ; $5c69: $d0

    ld a, [hl-]                                   ; $5c6a: $3a
    ld l, h                                       ; $5c6b: $6c
    ret nc                                        ; $5c6c: $d0

    ld b, h                                       ; $5c6d: $44
    ld l, l                                       ; $5c6e: $6d
    ret nc                                        ; $5c6f: $d0

    ld h, c                                       ; $5c70: $61
    ld l, [hl]                                    ; $5c71: $6e
    ret nc                                        ; $5c72: $d0

    ld [hl], h                                    ; $5c73: $74
    ld l, a                                       ; $5c74: $6f
    ret nc                                        ; $5c75: $d0

    ld a, [hl]                                    ; $5c76: $7e
    ld [hl], b                                    ; $5c77: $70
    ret nc                                        ; $5c78: $d0

    sbc d                                         ; $5c79: $9a
    ld [hl], c                                    ; $5c7a: $71
    ret nc                                        ; $5c7b: $d0

    sbc d                                         ; $5c7c: $9a
    ld [hl], c                                    ; $5c7d: $71
    ret nc                                        ; $5c7e: $d0

    or a                                          ; $5c7f: $b7
    ld [hl], d                                    ; $5c80: $72
    ret nc                                        ; $5c81: $d0

    call nc, $d073                                ; $5c82: $d4 $73 $d0
    xor $74                                       ; $5c85: $ee $74
    ret nc                                        ; $5c87: $d0

    rrca                                          ; $5c88: $0f
    halt                                          ; $5c89: $76
    ret nc                                        ; $5c8a: $d0

    add hl, hl                                    ; $5c8b: $29
    ld [hl], a                                    ; $5c8c: $77

    db $d0, $45, $78

    ret nc                                        ; $5c90: $d0

    ld d, a                                       ; $5c91: $57
    ld a, c                                       ; $5c92: $79
    ret nc                                        ; $5c93: $d0

    ld l, [hl]                                    ; $5c94: $6e

Jump_007_5c95:
    ld a, d                                       ; $5c95: $7a
    ret nc                                        ; $5c96: $d0

    adc [hl]                                      ; $5c97: $8e
    ld a, e                                       ; $5c98: $7b
    ret nc                                        ; $5c99: $d0

    and a                                         ; $5c9a: $a7
    ld a, h                                       ; $5c9b: $7c

    db $d0, $c3, $7d

    ret nc                                        ; $5c9f: $d0

    ld a, h                                       ; $5ca0: $7c
    ld a, [hl]                                    ; $5ca1: $7e
    pop de                                        ; $5ca2: $d1
    ld bc, $d140                                  ; $5ca3: $01 $40 $d1
    dec c                                         ; $5ca6: $0d
    ld b, c                                       ; $5ca7: $41
    pop de                                        ; $5ca8: $d1
    ld a, [bc]                                    ; $5ca9: $0a
    ld b, d                                       ; $5caa: $42
    pop de                                        ; $5cab: $d1
    ld d, $43                                     ; $5cac: $16 $43
    pop de                                        ; $5cae: $d1
    inc l                                         ; $5caf: $2c
    ld b, h                                       ; $5cb0: $44
    pop de                                        ; $5cb1: $d1
    cpl                                           ; $5cb2: $2f
    ld b, l                                       ; $5cb3: $45
    pop de                                        ; $5cb4: $d1
    ld d, b                                       ; $5cb5: $50
    ld b, [hl]                                    ; $5cb6: $46
    pop de                                        ; $5cb7: $d1
    ld e, e                                       ; $5cb8: $5b
    ld b, a                                       ; $5cb9: $47
    pop de                                        ; $5cba: $d1
    ld [hl], h                                    ; $5cbb: $74
    ld c, b                                       ; $5cbc: $48
    pop de                                        ; $5cbd: $d1
    sub [hl]                                      ; $5cbe: $96
    ld c, c                                       ; $5cbf: $49
    pop de                                        ; $5cc0: $d1
    or a                                          ; $5cc1: $b7
    ld c, d                                       ; $5cc2: $4a
    pop de                                        ; $5cc3: $d1
    call nz, $d14b                                ; $5cc4: $c4 $4b $d1
    jp nz, $d14c                                  ; $5cc7: $c2 $4c $d1

    pop de                                        ; $5cca: $d1
    ld c, l                                       ; $5ccb: $4d
    pop de                                        ; $5ccc: $d1
    ret z                                         ; $5ccd: $c8

    ld c, [hl]                                    ; $5cce: $4e
    pop de                                        ; $5ccf: $d1
    push hl                                       ; $5cd0: $e5
    ld c, a                                       ; $5cd1: $4f
    pop de                                        ; $5cd2: $d1
    rst $20                                       ; $5cd3: $e7
    ld d, b                                       ; $5cd4: $50
    pop de                                        ; $5cd5: $d1
    db $fc                                        ; $5cd6: $fc
    ld d, c                                       ; $5cd7: $51
    pop de                                        ; $5cd8: $d1
    dec e                                         ; $5cd9: $1d
    ld d, e                                       ; $5cda: $53
    pop de                                        ; $5cdb: $d1
    jr c, jr_007_5d32                             ; $5cdc: $38 $54

    pop de                                        ; $5cde: $d1
    ld c, l                                       ; $5cdf: $4d
    ld d, l                                       ; $5ce0: $55
    pop de                                        ; $5ce1: $d1
    ld c, [hl]                                    ; $5ce2: $4e
    ld d, [hl]                                    ; $5ce3: $56
    pop de                                        ; $5ce4: $d1
    ld h, h                                       ; $5ce5: $64
    ld d, a                                       ; $5ce6: $57
    pop de                                        ; $5ce7: $d1
    add c                                         ; $5ce8: $81
    ld e, b                                       ; $5ce9: $58

    db $af, $c1, $7f, $d1, $a1, $59, $d1, $a1, $5b, $d1, $a1, $5d

    pop de                                        ; $5cf6: $d1
    and c                                         ; $5cf7: $a1
    ld e, a                                       ; $5cf8: $5f
    pop de                                        ; $5cf9: $d1
    and c                                         ; $5cfa: $a1
    ld h, c                                       ; $5cfb: $61
    pop de                                        ; $5cfc: $d1
    and c                                         ; $5cfd: $a1
    ld h, e                                       ; $5cfe: $63
    pop de                                        ; $5cff: $d1
    and c                                         ; $5d00: $a1
    ld h, l                                       ; $5d01: $65
    pop de                                        ; $5d02: $d1
    and c                                         ; $5d03: $a1
    ld h, a                                       ; $5d04: $67
    pop de                                        ; $5d05: $d1
    and c                                         ; $5d06: $a1
    ld l, c                                       ; $5d07: $69
    pop de                                        ; $5d08: $d1
    and c                                         ; $5d09: $a1
    ld l, e                                       ; $5d0a: $6b
    pop de                                        ; $5d0b: $d1
    and c                                         ; $5d0c: $a1
    ld l, l                                       ; $5d0d: $6d
    pop de                                        ; $5d0e: $d1
    and c                                         ; $5d0f: $a1
    ld l, a                                       ; $5d10: $6f
    pop de                                        ; $5d11: $d1
    and c                                         ; $5d12: $a1
    ld [hl], c                                    ; $5d13: $71
    pop de                                        ; $5d14: $d1
    and c                                         ; $5d15: $a1
    ld [hl], e                                    ; $5d16: $73

    db $d1, $a1, $75

    pop de                                        ; $5d1a: $d1
    and c                                         ; $5d1b: $a1
    ld [hl], a                                    ; $5d1c: $77
    pop de                                        ; $5d1d: $d1
    and c                                         ; $5d1e: $a1
    ld a, c                                       ; $5d1f: $79
    pop de                                        ; $5d20: $d1
    and c                                         ; $5d21: $a1
    ld a, e                                       ; $5d22: $7b
    pop de                                        ; $5d23: $d1
    and c                                         ; $5d24: $a1
    ld a, l                                       ; $5d25: $7d
    jp nc, Jump_007_4001                          ; $5d26: $d2 $01 $40

    db $d2, $01, $42

    jp nc, Jump_007_4401                          ; $5d2c: $d2 $01 $44

    jp nc, Jump_007_4601                          ; $5d2f: $d2 $01 $46

jr_007_5d32:
    jp nc, Jump_007_4801                          ; $5d32: $d2 $01 $48

    jp nc, Jump_007_4a01                          ; $5d35: $d2 $01 $4a

    jp nc, Jump_007_4c01                          ; $5d38: $d2 $01 $4c

    jp nc, Jump_007_4e01                          ; $5d3b: $d2 $01 $4e

    jp nc, Jump_007_5001                          ; $5d3e: $d2 $01 $50

    jp nc, $5201                                  ; $5d41: $d2 $01 $52

    jp nc, Jump_007_5401                          ; $5d44: $d2 $01 $54

    jp nc, $5601                                  ; $5d47: $d2 $01 $56

    jp nc, Jump_007_5801                          ; $5d4a: $d2 $01 $58

    jp nc, $5a01                                  ; $5d4d: $d2 $01 $5a

    jp nc, Jump_007_5c01                          ; $5d50: $d2 $01 $5c

    jp nc, Jump_007_5e01                          ; $5d53: $d2 $01 $5e

    jp nc, Jump_007_6001                          ; $5d56: $d2 $01 $60

    jp nc, Jump_007_6201                          ; $5d59: $d2 $01 $62

    jp nc, Jump_007_6401                          ; $5d5c: $d2 $01 $64

    db $d2, $01, $66

    jp nc, Jump_007_6801                          ; $5d62: $d2 $01 $68

    jp nc, $6a01                                  ; $5d65: $d2 $01 $6a

    jp nc, Jump_007_6c01                          ; $5d68: $d2 $01 $6c

    jp nc, $6e01                                  ; $5d6b: $d2 $01 $6e

    jp nc, Jump_007_7001                          ; $5d6e: $d2 $01 $70

    jp nc, $7201                                  ; $5d71: $d2 $01 $72

    jp nc, $7401                                  ; $5d74: $d2 $01 $74

    jp nc, $7601                                  ; $5d77: $d2 $01 $76

    jp nc, $7801                                  ; $5d7a: $d2 $01 $78

    jp nc, Jump_007_7a01                          ; $5d7d: $d2 $01 $7a

    jp nc, Jump_007_7c01                          ; $5d80: $d2 $01 $7c

    db $d3                                        ; $5d83: $d3
    ld bc, $d340                                  ; $5d84: $01 $40 $d3
    ld bc, $d342                                  ; $5d87: $01 $42 $d3
    ld bc, $d344                                  ; $5d8a: $01 $44 $d3
    ld bc, $d346                                  ; $5d8d: $01 $46 $d3
    ld bc, $d348                                  ; $5d90: $01 $48 $d3
    ld bc, $d34a                                  ; $5d93: $01 $4a $d3
    ld bc, $d34c                                  ; $5d96: $01 $4c $d3
    ld bc, $d34e                                  ; $5d99: $01 $4e $d3
    ld bc, $d350                                  ; $5d9c: $01 $50 $d3
    ld bc, $d352                                  ; $5d9f: $01 $52 $d3
    db $01                                        ; $5da2: $01
    ld d, h                                       ; $5da3: $54

    db $d3, $01, $56

    db $d3                                        ; $5da7: $d3
    ld bc, $d358                                  ; $5da8: $01 $58 $d3
    ld bc, $d35a                                  ; $5dab: $01 $5a $d3
    ld bc, $d35c                                  ; $5dae: $01 $5c $d3
    ld bc, $d35e                                  ; $5db1: $01 $5e $d3
    ld bc, $d360                                  ; $5db4: $01 $60 $d3
    ld bc, $d362                                  ; $5db7: $01 $62 $d3
    ld bc, $d364                                  ; $5dba: $01 $64 $d3
    ld bc, $d366                                  ; $5dbd: $01 $66 $d3
    ld bc, $d368                                  ; $5dc0: $01 $68 $d3
    ld bc, $d36a                                  ; $5dc3: $01 $6a $d3
    ld bc, $d36c                                  ; $5dc6: $01 $6c $d3
    ld bc, $d36e                                  ; $5dc9: $01 $6e $d3
    ld bc, $d370                                  ; $5dcc: $01 $70 $d3
    ld bc, $d372                                  ; $5dcf: $01 $72 $d3
    ld bc, $d374                                  ; $5dd2: $01 $74 $d3
    ld bc, $d376                                  ; $5dd5: $01 $76 $d3
    ld bc, $d378                                  ; $5dd8: $01 $78 $d3
    ld bc, $d37a                                  ; $5ddb: $01 $7a $d3
    ld bc, $d47c                                  ; $5dde: $01 $7c $d4
    ld bc, $d440                                  ; $5de1: $01 $40 $d4
    ld bc, $d442                                  ; $5de4: $01 $42 $d4
    ld bc, $d442                                  ; $5de7: $01 $42 $d4
    ld bc, $d444                                  ; $5dea: $01 $44 $d4
    ld bc, $d446                                  ; $5ded: $01 $46 $d4
    ld bc, $d448                                  ; $5df0: $01 $48 $d4
    ld bc, $d44a                                  ; $5df3: $01 $4a $d4
    db $01                                        ; $5df6: $01
    ld c, h                                       ; $5df7: $4c

    db $d4, $01, $4e

    call nc, Call_007_5001                        ; $5dfb: $d4 $01 $50
    call nc, $5201                                ; $5dfe: $d4 $01 $52

Call_007_5e01:
Jump_007_5e01:
    call nc, Call_007_5401                        ; $5e01: $d4 $01 $54
    call nc, $5601                                ; $5e04: $d4 $01 $56

    db $d4, $01, $58

    call nc, $5a01                                ; $5e0a: $d4 $01 $5a
    call nc, Call_007_5c01                        ; $5e0d: $d4 $01 $5c
    call nc, Call_007_5e01                        ; $5e10: $d4 $01 $5e
    call nc, Call_007_6001                        ; $5e13: $d4 $01 $60
    call nc, Call_007_6201                        ; $5e16: $d4 $01 $62
    call nc, Call_007_6401                        ; $5e19: $d4 $01 $64
    call nc, Call_007_6601                        ; $5e1c: $d4 $01 $66
    call nc, Call_007_6801                        ; $5e1f: $d4 $01 $68
    call nc, $6a01                                ; $5e22: $d4 $01 $6a
    call nc, Call_007_6c01                        ; $5e25: $d4 $01 $6c
    call nc, $6e01                                ; $5e28: $d4 $01 $6e
    call nc, Call_007_7001                        ; $5e2b: $d4 $01 $70
    call nc, $7201                                ; $5e2e: $d4 $01 $72
    call nc, $7401                                ; $5e31: $d4 $01 $74
    call nc, $7601                                ; $5e34: $d4 $01 $76
    call nc, $7801                                ; $5e37: $d4 $01 $78
    call nc, Call_007_7a01                        ; $5e3a: $d4 $01 $7a
    call nc, Call_007_7c01                        ; $5e3d: $d4 $01 $7c
    push de                                       ; $5e40: $d5
    ld bc, $d540                                  ; $5e41: $01 $40 $d5
    ld bc, $d542                                  ; $5e44: $01 $42 $d5
    ld bc, $d544                                  ; $5e47: $01 $44 $d5
    ld bc, $d546                                  ; $5e4a: $01 $46 $d5
    ld bc, $d548                                  ; $5e4d: $01 $48 $d5
    ld bc, $d54a                                  ; $5e50: $01 $4a $d5
    ld bc, $d04c                                  ; $5e53: $01 $4c $d0
    sub l                                         ; $5e56: $95

Call_007_5e57:
    ld a, a                                       ; $5e57: $7f

    db $c2, $7d, $68

    pop de                                        ; $5e5b: $d1
    and c                                         ; $5e5c: $a1
    ld a, a                                       ; $5e5d: $7f
    jp nc, Jump_007_7e01                          ; $5e5e: $d2 $01 $7e

    jp nc, Jump_007_7e41                          ; $5e61: $d2 $41 $7e

    jp nc, Jump_007_7e81                          ; $5e64: $d2 $81 $7e

    db $d2, $c1, $7e

    jp nc, Jump_007_7f01                          ; $5e6a: $d2 $01 $7f

    jp nc, $7f41                                  ; $5e6d: $d2 $41 $7f

    db $d2, $81, $7f

    db $d3                                        ; $5e73: $d3
    ld bc, $d37e                                  ; $5e74: $01 $7e $d3
    ld b, c                                       ; $5e77: $41
    ld a, [hl]                                    ; $5e78: $7e
    db $d3                                        ; $5e79: $d3
    add c                                         ; $5e7a: $81
    ld a, [hl]                                    ; $5e7b: $7e
    db $d3                                        ; $5e7c: $d3
    pop bc                                        ; $5e7d: $c1
    ld a, [hl]                                    ; $5e7e: $7e
    jp nz, $6b3d                                  ; $5e7f: $c2 $3d $6b

    jp nz, Jump_007_6b7d                          ; $5e82: $c2 $7d $6b

    db $d3, $01, $7f, $c2, $bd, $64

    db $d3                                        ; $5e8b: $d3
    ld b, c                                       ; $5e8c: $41
    ld a, a                                       ; $5e8d: $7f
    jp nz, $73bd                                  ; $5e8e: $c2 $bd $73

    db $d3, $81, $7f, $d4, $01, $7e, $d4, $41, $7e

    call nc, Call_007_7e81                        ; $5e9a: $d4 $81 $7e
    push de                                       ; $5e9d: $d5
    ld bc, $d54e                                  ; $5e9e: $01 $4e $d5
    add hl, bc                                    ; $5ea1: $09
    ld c, a                                       ; $5ea2: $4f
    push de                                       ; $5ea3: $d5
    ld de, $d550                                  ; $5ea4: $11 $50 $d5
    dec c                                         ; $5ea7: $0d
    ld d, c                                       ; $5ea8: $51
    push de                                       ; $5ea9: $d5
    ld h, $52                                     ; $5eaa: $26 $52
    push de                                       ; $5eac: $d5
    ld b, c                                       ; $5ead: $41
    ld d, e                                       ; $5eae: $53
    push de                                       ; $5eaf: $d5
    ld e, a                                       ; $5eb0: $5f
    ld d, h                                       ; $5eb1: $54
    push de                                       ; $5eb2: $d5
    ld [hl], a                                    ; $5eb3: $77
    ld d, l                                       ; $5eb4: $55
    push de                                       ; $5eb5: $d5
    ld a, a                                       ; $5eb6: $7f
    ld d, [hl]                                    ; $5eb7: $56
    push de                                       ; $5eb8: $d5
    sub e                                         ; $5eb9: $93
    ld d, a                                       ; $5eba: $57
    push de                                       ; $5ebb: $d5
    and a                                         ; $5ebc: $a7
    ld e, b                                       ; $5ebd: $58
    push de                                       ; $5ebe: $d5
    or e                                          ; $5ebf: $b3
    ld e, c                                       ; $5ec0: $59
    push de                                       ; $5ec1: $d5
    rst $10                                       ; $5ec2: $d7
    ld e, d                                       ; $5ec3: $5a
    push de                                       ; $5ec4: $d5
    db $eb                                        ; $5ec5: $eb
    ld e, e                                       ; $5ec6: $5b
    push de                                       ; $5ec7: $d5
    db $fd                                        ; $5ec8: $fd
    ld e, h                                       ; $5ec9: $5c
    push de                                       ; $5eca: $d5
    inc b                                         ; $5ecb: $04
    ld e, [hl]                                    ; $5ecc: $5e

    db $d5, $21, $5f

    push de                                       ; $5ed0: $d5
    dec a                                         ; $5ed1: $3d
    ld h, b                                       ; $5ed2: $60
    push de                                       ; $5ed3: $d5
    ld b, c                                       ; $5ed4: $41
    ld h, c                                       ; $5ed5: $61
    push de                                       ; $5ed6: $d5
    ld c, [hl]                                    ; $5ed7: $4e
    ld h, d                                       ; $5ed8: $62
    push de                                       ; $5ed9: $d5
    ld l, e                                       ; $5eda: $6b
    ld h, e                                       ; $5edb: $63
    push de                                       ; $5edc: $d5
    add a                                         ; $5edd: $87
    ld h, h                                       ; $5ede: $64
    push de                                       ; $5edf: $d5
    and d                                         ; $5ee0: $a2
    ld h, l                                       ; $5ee1: $65
    push de                                       ; $5ee2: $d5
    xor l                                         ; $5ee3: $ad
    ld h, [hl]                                    ; $5ee4: $66
    push de                                       ; $5ee5: $d5
    call $d567                                    ; $5ee6: $cd $67 $d5
    and $68                                       ; $5ee9: $e6 $68
    push de                                       ; $5eeb: $d5
    di                                            ; $5eec: $f3
    ld l, c                                       ; $5eed: $69
    push de                                       ; $5eee: $d5
    nop                                           ; $5eef: $00
    ld l, e                                       ; $5ef0: $6b

    db $d5, $1c, $6c

    push de                                       ; $5ef4: $d5
    ld [hl+], a                                   ; $5ef5: $22
    ld l, l                                       ; $5ef6: $6d

    db $d5, $29, $6e

    push de                                       ; $5efa: $d5
    dec a                                         ; $5efb: $3d
    ld l, a                                       ; $5efc: $6f
    push de                                       ; $5efd: $d5
    ld d, e                                       ; $5efe: $53
    ld [hl], b                                    ; $5eff: $70

    db $d5, $6c, $71

    push de                                       ; $5f03: $d5
    ld a, b                                       ; $5f04: $78
    ld [hl], d                                    ; $5f05: $72
    push de                                       ; $5f06: $d5
    add h                                         ; $5f07: $84
    ld [hl], e                                    ; $5f08: $73
    push de                                       ; $5f09: $d5
    adc e                                         ; $5f0a: $8b
    ld [hl], h                                    ; $5f0b: $74
    push de                                       ; $5f0c: $d5
    and h                                         ; $5f0d: $a4
    ld [hl], l                                    ; $5f0e: $75
    push de                                       ; $5f0f: $d5
    cp a                                          ; $5f10: $bf
    halt                                          ; $5f11: $76
    push de                                       ; $5f12: $d5
    sbc $77                                       ; $5f13: $de $77
    push de                                       ; $5f15: $d5
    db $f4                                        ; $5f16: $f4
    ld a, b                                       ; $5f17: $78
    push de                                       ; $5f18: $d5
    or $79                                        ; $5f19: $f6 $79
    push de                                       ; $5f1b: $d5
    rlca                                          ; $5f1c: $07
    ld a, e                                       ; $5f1d: $7b
    push de                                       ; $5f1e: $d5
    ld d, $7c                                     ; $5f1f: $16 $7c
    push de                                       ; $5f21: $d5
    inc [hl]                                      ; $5f22: $34
    ld a, l                                       ; $5f23: $7d
    push de                                       ; $5f24: $d5
    ld b, h                                       ; $5f25: $44
    ld a, [hl]                                    ; $5f26: $7e
    sub $01                                       ; $5f27: $d6 $01
    ld b, b                                       ; $5f29: $40
    sub $00                                       ; $5f2a: $d6 $00
    ld b, c                                       ; $5f2c: $41
    sub $09                                       ; $5f2d: $d6 $09
    ld b, d                                       ; $5f2f: $42
    sub $1f                                       ; $5f30: $d6 $1f
    ld b, e                                       ; $5f32: $43
    sub $2a                                       ; $5f33: $d6 $2a
    ld b, h                                       ; $5f35: $44
    sub $39                                       ; $5f36: $d6 $39
    ld b, l                                       ; $5f38: $45
    sub $42                                       ; $5f39: $d6 $42
    ld b, [hl]                                    ; $5f3b: $46
    sub $5f                                       ; $5f3c: $d6 $5f
    ld b, a                                       ; $5f3e: $47
    sub $7a                                       ; $5f3f: $d6 $7a
    ld c, b                                       ; $5f41: $48
    sub $7f                                       ; $5f42: $d6 $7f
    ld c, c                                       ; $5f44: $49
    sub $89                                       ; $5f45: $d6 $89
    ld c, d                                       ; $5f47: $4a
    sub $a4                                       ; $5f48: $d6 $a4
    ld c, e                                       ; $5f4a: $4b
    sub $ac                                       ; $5f4b: $d6 $ac
    ld c, h                                       ; $5f4d: $4c

    db $d6, $bf, $4d, $d6, $c9, $4e

    sub $e4                                       ; $5f54: $d6 $e4
    ld c, a                                       ; $5f56: $4f
    sub $f5                                       ; $5f57: $d6 $f5
    ld d, b                                       ; $5f59: $50
    sub $04                                       ; $5f5a: $d6 $04
    ld d, d                                       ; $5f5c: $52
    sub $09                                       ; $5f5d: $d6 $09
    ld d, e                                       ; $5f5f: $53
    sub $1b                                       ; $5f60: $d6 $1b
    ld d, h                                       ; $5f62: $54
    sub $23                                       ; $5f63: $d6 $23
    ld d, l                                       ; $5f65: $55
    sub $31                                       ; $5f66: $d6 $31
    ld d, [hl]                                    ; $5f68: $56
    sub $4e                                       ; $5f69: $d6 $4e
    ld d, a                                       ; $5f6b: $57
    sub $69                                       ; $5f6c: $d6 $69
    ld e, b                                       ; $5f6e: $58
    sub $6d                                       ; $5f6f: $d6 $6d
    ld e, c                                       ; $5f71: $59
    sub $74                                       ; $5f72: $d6 $74
    ld e, d                                       ; $5f74: $5a
    sub $7b                                       ; $5f75: $d6 $7b
    ld e, e                                       ; $5f77: $5b
    sub $86                                       ; $5f78: $d6 $86
    ld e, h                                       ; $5f7a: $5c
    sub $8e                                       ; $5f7b: $d6 $8e
    ld e, l                                       ; $5f7d: $5d
    sub $9f                                       ; $5f7e: $d6 $9f
    ld e, [hl]                                    ; $5f80: $5e
    sub $b3                                       ; $5f81: $d6 $b3
    ld e, a                                       ; $5f83: $5f
    sub $be                                       ; $5f84: $d6 $be
    ld h, b                                       ; $5f86: $60
    sub $c6                                       ; $5f87: $d6 $c6
    ld h, c                                       ; $5f89: $61
    sub $cc                                       ; $5f8a: $d6 $cc
    ld h, d                                       ; $5f8c: $62
    sub $cd                                       ; $5f8d: $d6 $cd
    ld h, e                                       ; $5f8f: $63
    sub $d8                                       ; $5f90: $d6 $d8
    ld h, h                                       ; $5f92: $64
    sub $e1                                       ; $5f93: $d6 $e1
    ld h, l                                       ; $5f95: $65
    sub $f4                                       ; $5f96: $d6 $f4
    ld h, [hl]                                    ; $5f98: $66
    sub $fb                                       ; $5f99: $d6 $fb
    ld h, a                                       ; $5f9b: $67
    sub $08                                       ; $5f9c: $d6 $08
    ld l, c                                       ; $5f9e: $69
    sub $13                                       ; $5f9f: $d6 $13
    ld l, d                                       ; $5fa1: $6a
    sub $24                                       ; $5fa2: $d6 $24
    ld l, e                                       ; $5fa4: $6b
    sub $32                                       ; $5fa5: $d6 $32
    ld l, h                                       ; $5fa7: $6c
    sub $3d                                       ; $5fa8: $d6 $3d
    ld l, l                                       ; $5faa: $6d
    sub $45                                       ; $5fab: $d6 $45
    ld l, [hl]                                    ; $5fad: $6e
    sub $5c                                       ; $5fae: $d6 $5c
    ld l, a                                       ; $5fb0: $6f
    sub $71                                       ; $5fb1: $d6 $71
    ld [hl], b                                    ; $5fb3: $70
    sub $7b                                       ; $5fb4: $d6 $7b
    ld [hl], c                                    ; $5fb6: $71
    sub $7d                                       ; $5fb7: $d6 $7d
    ld [hl], d                                    ; $5fb9: $72
    sub $90                                       ; $5fba: $d6 $90
    ld [hl], e                                    ; $5fbc: $73
    sub $99                                       ; $5fbd: $d6 $99
    ld [hl], h                                    ; $5fbf: $74
    sub $a9                                       ; $5fc0: $d6 $a9
    ld [hl], l                                    ; $5fc2: $75
    sub $ae                                       ; $5fc3: $d6 $ae
    halt                                          ; $5fc5: $76
    sub $b7                                       ; $5fc6: $d6 $b7

Jump_007_5fc8:
    ld [hl], a                                    ; $5fc8: $77

    db $d6, $c4, $78, $b2, $d3, $7f

    call nc, Call_007_7f82                        ; $5fcf: $d4 $82 $7f
    push de                                       ; $5fd2: $d5
    ld e, e                                       ; $5fd3: $5b
    ld a, a                                       ; $5fd4: $7f

    db $d5, $9b, $7f

    sub $95                                       ; $5fd8: $d6 $95
    ld a, c                                       ; $5fda: $79
    sub $d5                                       ; $5fdb: $d6 $d5
    ld a, c                                       ; $5fdd: $79

    db $d6, $15, $7a

    sub $55                                       ; $5fe1: $d6 $55
    ld a, d                                       ; $5fe3: $7a
    sub $95                                       ; $5fe4: $d6 $95
    ld a, d                                       ; $5fe6: $7a
    sub $d5                                       ; $5fe7: $d6 $d5
    ld a, d                                       ; $5fe9: $7a
    sub $15                                       ; $5fea: $d6 $15
    ld a, e                                       ; $5fec: $7b
    sub $55                                       ; $5fed: $d6 $55
    ld a, e                                       ; $5fef: $7b
    sub $95                                       ; $5ff0: $d6 $95
    ld a, e                                       ; $5ff2: $7b

    db $d6, $d5, $7b

    sub $15                                       ; $5ff6: $d6 $15
    ld a, h                                       ; $5ff8: $7c
    sub $55                                       ; $5ff9: $d6 $55
    ld a, h                                       ; $5ffb: $7c
    sub $55                                       ; $5ffc: $d6 $55
    ld a, h                                       ; $5ffe: $7c
    sub $95                                       ; $5fff: $d6 $95

Call_007_6001:
Jump_007_6001:
    ld a, h                                       ; $6001: $7c

    db $d6, $d5, $7c, $d6, $15, $7d

    sub $55                                       ; $6008: $d6 $55
    ld a, l                                       ; $600a: $7d
    sub $95                                       ; $600b: $d6 $95
    ld a, l                                       ; $600d: $7d
    sub $d5                                       ; $600e: $d6 $d5
    ld a, l                                       ; $6010: $7d

    db $d6, $15, $7e

    sub $55                                       ; $6014: $d6 $55
    ld a, [hl]                                    ; $6016: $7e
    sub $95                                       ; $6017: $d6 $95
    ld a, [hl]                                    ; $6019: $7e
    sub $d5                                       ; $601a: $d6 $d5
    ld a, [hl]                                    ; $601c: $7e

    db $d6, $15, $7f, $d6, $55, $7f

    sub $95                                       ; $6023: $d6 $95
    ld a, a                                       ; $6025: $7f
    rst $10                                       ; $6026: $d7
    ld bc, $d740                                  ; $6027: $01 $40 $d7
    ld bc, $d740                                  ; $602a: $01 $40 $d7
    ld bc, $d740                                  ; $602d: $01 $40 $d7
    ld b, c                                       ; $6030: $41
    ld b, b                                       ; $6031: $40
    rst $10                                       ; $6032: $d7
    add c                                         ; $6033: $81
    ld b, b                                       ; $6034: $40
    rst $10                                       ; $6035: $d7
    add c                                         ; $6036: $81
    ld b, b                                       ; $6037: $40
    rst $10                                       ; $6038: $d7
    add c                                         ; $6039: $81
    ld b, b                                       ; $603a: $40
    rst $10                                       ; $603b: $d7
    add c                                         ; $603c: $81
    ld b, b                                       ; $603d: $40
    rst $10                                       ; $603e: $d7
    add c                                         ; $603f: $81
    ld b, b                                       ; $6040: $40
    rst $10                                       ; $6041: $d7
    pop bc                                        ; $6042: $c1
    ld b, b                                       ; $6043: $40
    rst $10                                       ; $6044: $d7
    add c                                         ; $6045: $81
    ld b, b                                       ; $6046: $40
    rst $10                                       ; $6047: $d7
    add c                                         ; $6048: $81
    ld b, b                                       ; $6049: $40
    rst $10                                       ; $604a: $d7
    ld bc, $d741                                  ; $604b: $01 $41 $d7
    ld b, c                                       ; $604e: $41
    ld b, c                                       ; $604f: $41
    rst $10                                       ; $6050: $d7
    ld b, c                                       ; $6051: $41
    ld b, c                                       ; $6052: $41
    rst $10                                       ; $6053: $d7
    ld b, c                                       ; $6054: $41
    ld b, c                                       ; $6055: $41
    rst $10                                       ; $6056: $d7
    ld b, c                                       ; $6057: $41
    ld b, c                                       ; $6058: $41
    rst $10                                       ; $6059: $d7
    ld b, c                                       ; $605a: $41
    ld b, c                                       ; $605b: $41
    rst $10                                       ; $605c: $d7
    ld b, c                                       ; $605d: $41
    ld b, c                                       ; $605e: $41
    rst $10                                       ; $605f: $d7
    add c                                         ; $6060: $81
    ld b, b                                       ; $6061: $40
    rst $10                                       ; $6062: $d7
    add c                                         ; $6063: $81
    ld b, b                                       ; $6064: $40
    rst $10                                       ; $6065: $d7
    add c                                         ; $6066: $81
    ld b, c                                       ; $6067: $41
    rst $10                                       ; $6068: $d7
    add c                                         ; $6069: $81
    ld b, b                                       ; $606a: $40
    rst $10                                       ; $606b: $d7
    pop bc                                        ; $606c: $c1
    ld b, c                                       ; $606d: $41
    rst $10                                       ; $606e: $d7
    ld bc, $d742                                  ; $606f: $01 $42 $d7
    add c                                         ; $6072: $81
    ld b, b                                       ; $6073: $40
    rst $10                                       ; $6074: $d7
    add c                                         ; $6075: $81
    ld b, b                                       ; $6076: $40
    rst $10                                       ; $6077: $d7
    add c                                         ; $6078: $81
    ld b, b                                       ; $6079: $40
    rst $10                                       ; $607a: $d7
    add c                                         ; $607b: $81
    ld b, b                                       ; $607c: $40
    rst $10                                       ; $607d: $d7
    add c                                         ; $607e: $81
    ld b, b                                       ; $607f: $40
    rst $10                                       ; $6080: $d7
    ld b, c                                       ; $6081: $41
    ld b, d                                       ; $6082: $42
    rst $10                                       ; $6083: $d7
    add c                                         ; $6084: $81
    ld b, d                                       ; $6085: $42
    rst $10                                       ; $6086: $d7
    pop bc                                        ; $6087: $c1

Jump_007_6088:
    ld b, d                                       ; $6088: $42
    rst $10                                       ; $6089: $d7
    ld b, c                                       ; $608a: $41
    ld b, d                                       ; $608b: $42
    rst $10                                       ; $608c: $d7
    add c                                         ; $608d: $81
    ld b, b                                       ; $608e: $40
    rst $10                                       ; $608f: $d7
    add c                                         ; $6090: $81
    ld b, b                                       ; $6091: $40
    rst $10                                       ; $6092: $d7
    add c                                         ; $6093: $81
    ld b, b                                       ; $6094: $40
    rst $10                                       ; $6095: $d7
    add c                                         ; $6096: $81
    ld b, b                                       ; $6097: $40
    rst $10                                       ; $6098: $d7
    add c                                         ; $6099: $81
    ld b, b                                       ; $609a: $40
    rst $10                                       ; $609b: $d7
    add c                                         ; $609c: $81
    ld b, b                                       ; $609d: $40

    db $d7, $01, $43

    rst $10                                       ; $60a1: $d7
    add c                                         ; $60a2: $81
    ld b, b                                       ; $60a3: $40
    rst $10                                       ; $60a4: $d7
    ld b, c                                       ; $60a5: $41
    ld b, e                                       ; $60a6: $43
    rst $10                                       ; $60a7: $d7
    add c                                         ; $60a8: $81
    ld b, e                                       ; $60a9: $43
    rst $10                                       ; $60aa: $d7
    add c                                         ; $60ab: $81
    ld b, e                                       ; $60ac: $43
    rst $10                                       ; $60ad: $d7
    add c                                         ; $60ae: $81
    ld b, b                                       ; $60af: $40
    rst $10                                       ; $60b0: $d7
    add c                                         ; $60b1: $81
    ld b, b                                       ; $60b2: $40
    rst $10                                       ; $60b3: $d7
    add c                                         ; $60b4: $81
    ld b, b                                       ; $60b5: $40
    rst $10                                       ; $60b6: $d7
    pop bc                                        ; $60b7: $c1
    ld b, e                                       ; $60b8: $43
    rst $10                                       ; $60b9: $d7
    add c                                         ; $60ba: $81
    ld b, b                                       ; $60bb: $40
    rst $10                                       ; $60bc: $d7
    add c                                         ; $60bd: $81
    ld b, b                                       ; $60be: $40
    rst $10                                       ; $60bf: $d7
    add c                                         ; $60c0: $81
    ld b, b                                       ; $60c1: $40
    rst $10                                       ; $60c2: $d7
    add c                                         ; $60c3: $81
    ld b, b                                       ; $60c4: $40
    rst $10                                       ; $60c5: $d7
    add c                                         ; $60c6: $81
    ld b, b                                       ; $60c7: $40
    rst $10                                       ; $60c8: $d7
    add c                                         ; $60c9: $81
    ld b, b                                       ; $60ca: $40
    sub $55                                       ; $60cb: $d6 $55
    ld a, a                                       ; $60cd: $7f
    rst $10                                       ; $60ce: $d7
    ld bc, $d744                                  ; $60cf: $01 $44 $d7
    ld bc, $d740                                  ; $60d2: $01 $40 $d7
    ld bc, $d740                                  ; $60d5: $01 $40 $d7
    ld b, c                                       ; $60d8: $41
    ld b, h                                       ; $60d9: $44
    rst $10                                       ; $60da: $d7
    add c                                         ; $60db: $81
    ld b, b                                       ; $60dc: $40
    rst $10                                       ; $60dd: $d7
    add c                                         ; $60de: $81
    ld b, b                                       ; $60df: $40
    rst $10                                       ; $60e0: $d7
    add c                                         ; $60e1: $81
    ld b, b                                       ; $60e2: $40
    rst $10                                       ; $60e3: $d7
    ld bc, $d740                                  ; $60e4: $01 $40 $d7
    add c                                         ; $60e7: $81
    ld b, b                                       ; $60e8: $40
    rst $10                                       ; $60e9: $d7
    add c                                         ; $60ea: $81
    ld b, b                                       ; $60eb: $40
    rst $10                                       ; $60ec: $d7
    add c                                         ; $60ed: $81
    ld b, h                                       ; $60ee: $44
    rst $10                                       ; $60ef: $d7
    add c                                         ; $60f0: $81
    ld b, b                                       ; $60f1: $40
    sub $15                                       ; $60f2: $d6 $15
    ld a, a                                       ; $60f4: $7f

Jump_007_60f5:
    rst $10                                       ; $60f5: $d7
    add c                                         ; $60f6: $81
    ld b, b                                       ; $60f7: $40
    rst $10                                       ; $60f8: $d7
    add c                                         ; $60f9: $81
    ld b, d                                       ; $60fa: $42
    rst $10                                       ; $60fb: $d7
    pop bc                                        ; $60fc: $c1
    ld b, h                                       ; $60fd: $44
    rst $10                                       ; $60fe: $d7
    add c                                         ; $60ff: $81
    ld b, d                                       ; $6100: $42
    rst $10                                       ; $6101: $d7
    pop bc                                        ; $6102: $c1
    ld b, d                                       ; $6103: $42
    rst $10                                       ; $6104: $d7
    add c                                         ; $6105: $81
    ld b, b                                       ; $6106: $40
    rst $10                                       ; $6107: $d7
    add c                                         ; $6108: $81
    ld b, b                                       ; $6109: $40
    rst $10                                       ; $610a: $d7
    add c                                         ; $610b: $81
    ld b, b                                       ; $610c: $40
    rst $10                                       ; $610d: $d7
    add c                                         ; $610e: $81
    ld b, b                                       ; $610f: $40
    rst $10                                       ; $6110: $d7
    add c                                         ; $6111: $81
    ld b, b                                       ; $6112: $40
    rst $10                                       ; $6113: $d7
    add c                                         ; $6114: $81
    ld b, b                                       ; $6115: $40
    rst $10                                       ; $6116: $d7
    add c                                         ; $6117: $81
    ld b, b                                       ; $6118: $40
    sub $15                                       ; $6119: $d6 $15
    ld a, l                                       ; $611b: $7d
    rst $10                                       ; $611c: $d7
    add c                                         ; $611d: $81
    ld b, b                                       ; $611e: $40
    rst $10                                       ; $611f: $d7
    add c                                         ; $6120: $81
    ld b, b                                       ; $6121: $40
    rst $10                                       ; $6122: $d7
    add c                                         ; $6123: $81
    ld b, b                                       ; $6124: $40
    rst $10                                       ; $6125: $d7
    ld bc, $d745                                  ; $6126: $01 $45 $d7
    add c                                         ; $6129: $81
    ld b, b                                       ; $612a: $40
    sub $d5                                       ; $612b: $d6 $d5

Call_007_612d:
    ld a, h                                       ; $612d: $7c
    rst $10                                       ; $612e: $d7
    ld b, c                                       ; $612f: $41
    ld b, l                                       ; $6130: $45

    db $d6, $15, $7d, $d6, $15, $7d

    ld a, e                                       ; $6137: $7b
    di                                            ; $6138: $f3
    ld a, a                                       ; $6139: $7f
    ld a, l                                       ; $613a: $7d
    or $7f                                        ; $613b: $f6 $7f
    ld a, a                                       ; $613d: $7f
    rst $28                                       ; $613e: $ef
    ld a, a                                       ; $613f: $7f
    ld a, a                                       ; $6140: $7f
    rst $30                                       ; $6141: $f7
    ld a, a                                       ; $6142: $7f
    add e                                         ; $6143: $83
    ld hl, sp+$7f                                 ; $6144: $f8 $7f
    add l                                         ; $6146: $85
    db $eb                                        ; $6147: $eb
    ld a, a                                       ; $6148: $7f
    add l                                         ; $6149: $85
    di                                            ; $614a: $f3
    ld a, a                                       ; $614b: $7f
    add [hl]                                      ; $614c: $86
    db $eb                                        ; $614d: $eb
    ld a, a                                       ; $614e: $7f
    add [hl]                                      ; $614f: $86
    di                                            ; $6150: $f3
    ld a, a                                       ; $6151: $7f
    add a                                         ; $6152: $87
    or $7f                                        ; $6153: $f6 $7f
    adc b                                         ; $6155: $88
    db $eb                                        ; $6156: $eb
    ld a, a                                       ; $6157: $7f

    db $88, $f3, $7f

    adc c                                         ; $615b: $89
    rst $30                                       ; $615c: $f7
    ld a, a                                       ; $615d: $7f
    adc h                                         ; $615e: $8c
    db $ed                                        ; $615f: $ed
    ld a, a                                       ; $6160: $7f
    adc h                                         ; $6161: $8c
    push af                                       ; $6162: $f5
    ld a, a                                       ; $6163: $7f
    adc l                                         ; $6164: $8d
    or $7f                                        ; $6165: $f6 $7f
    adc [hl]                                      ; $6167: $8e
    rst $28                                       ; $6168: $ef
    ld a, a                                       ; $6169: $7f
    adc [hl]                                      ; $616a: $8e
    rst $30                                       ; $616b: $f7
    ld a, a                                       ; $616c: $7f
    adc a                                         ; $616d: $8f
    rst $30                                       ; $616e: $f7
    ld a, a                                       ; $616f: $7f
    sub c                                         ; $6170: $91
    di                                            ; $6171: $f3
    ld a, a                                       ; $6172: $7f
    sub h                                         ; $6173: $94
    xor $7f                                       ; $6174: $ee $7f
    sub h                                         ; $6176: $94
    or $7f                                        ; $6177: $f6 $7f
    sub a                                         ; $6179: $97
    or $7f                                        ; $617a: $f6 $7f
    sbc e                                         ; $617c: $9b
    ld a, [c]                                     ; $617d: $f2
    ld a, a                                       ; $617e: $7f
    and b                                         ; $617f: $a0
    or $7f                                        ; $6180: $f6 $7f
    and d                                         ; $6182: $a2
    or $7f                                        ; $6183: $f6 $7f
    and l                                         ; $6185: $a5
    db $eb                                        ; $6186: $eb
    ld a, a                                       ; $6187: $7f
    and l                                         ; $6188: $a5
    di                                            ; $6189: $f3
    ld a, a                                       ; $618a: $7f
    and [hl]                                      ; $618b: $a6
    ld a, [c]                                     ; $618c: $f2
    ld a, a                                       ; $618d: $7f
    and a                                         ; $618e: $a7
    pop af                                        ; $618f: $f1
    ld a, a                                       ; $6190: $7f
    xor c                                         ; $6191: $a9
    pop hl                                        ; $6192: $e1
    ld a, a                                       ; $6193: $7f
    xor c                                         ; $6194: $a9
    jp hl                                         ; $6195: $e9


    ld a, a                                       ; $6196: $7f
    xor c                                         ; $6197: $a9
    pop af                                        ; $6198: $f1
    ld a, a                                       ; $6199: $7f
    xor d                                         ; $619a: $aa
    pop af                                        ; $619b: $f1
    ld a, a                                       ; $619c: $7f
    xor h                                         ; $619d: $ac
    db $ec                                        ; $619e: $ec
    ld a, a                                       ; $619f: $7f
    xor h                                         ; $61a0: $ac
    db $f4                                        ; $61a1: $f4
    ld a, a                                       ; $61a2: $7f
    xor l                                         ; $61a3: $ad
    di                                            ; $61a4: $f3
    ld a, a                                       ; $61a5: $7f
    xor a                                         ; $61a6: $af
    push hl                                       ; $61a7: $e5
    ld a, a                                       ; $61a8: $7f
    xor a                                         ; $61a9: $af
    db $ed                                        ; $61aa: $ed
    ld a, a                                       ; $61ab: $7f
    xor a                                         ; $61ac: $af
    push af                                       ; $61ad: $f5
    ld a, a                                       ; $61ae: $7f
    or b                                          ; $61af: $b0
    ldh a, [$7f]                                  ; $61b0: $f0 $7f
    or b                                          ; $61b2: $b0
    ld hl, sp+$7f                                 ; $61b3: $f8 $7f
    or c                                          ; $61b5: $b1
    ld a, [c]                                     ; $61b6: $f2
    ld a, a                                       ; $61b7: $7f
    or d                                          ; $61b8: $b2
    rst $30                                       ; $61b9: $f7
    ld a, a                                       ; $61ba: $7f
    or e                                          ; $61bb: $b3
    jp nz, $b37f                                  ; $61bc: $c2 $7f $b3

    jp nz, $b37f                                  ; $61bf: $c2 $7f $b3

    jp nz, $b37f                                  ; $61c2: $c2 $7f $b3

    jp z, $b37f                                   ; $61c5: $ca $7f $b3

    jp nc, $b37f                                  ; $61c8: $d2 $7f $b3

    jp c, $b37f                                   ; $61cb: $da $7f $b3

    ld [c], a                                     ; $61ce: $e2
    ld a, a                                       ; $61cf: $7f
    or e                                          ; $61d0: $b3
    ld [$b37f], a                                 ; $61d1: $ea $7f $b3
    ld a, [c]                                     ; $61d4: $f2
    ld a, a                                       ; $61d5: $7f
    or h                                          ; $61d6: $b4
    rst $30                                       ; $61d7: $f7
    ld a, a                                       ; $61d8: $7f
    or l                                          ; $61d9: $b5
    ldh a, [$7f]                                  ; $61da: $f0 $7f
    or l                                          ; $61dc: $b5
    ld hl, sp+$7f                                 ; $61dd: $f8 $7f
    or a                                          ; $61df: $b7
    ret z                                         ; $61e0: $c8

    ld a, a                                       ; $61e1: $7f
    or a                                          ; $61e2: $b7
    ret nc                                        ; $61e3: $d0

    ld a, a                                       ; $61e4: $7f
    or a                                          ; $61e5: $b7
    ret nc                                        ; $61e6: $d0

    ld a, a                                       ; $61e7: $7f
    or a                                          ; $61e8: $b7
    ret c                                         ; $61e9: $d8

    ld a, a                                       ; $61ea: $7f
    or a                                          ; $61eb: $b7
    ret c                                         ; $61ec: $d8

    ld a, a                                       ; $61ed: $7f
    or a                                          ; $61ee: $b7
    ldh [$7f], a                                  ; $61ef: $e0 $7f
    rst $10                                       ; $61f1: $d7
    add c                                         ; $61f2: $81
    ld b, l                                       ; $61f3: $45
    rst $10                                       ; $61f4: $d7
    pop bc                                        ; $61f5: $c1
    ld b, l                                       ; $61f6: $45
    rst $10                                       ; $61f7: $d7
    db $01                                        ; $61f8: $01
    ld b, [hl]                                    ; $61f9: $46

    db $d7, $41, $46

    rst $10                                       ; $61fd: $d7
    add c                                         ; $61fe: $81
    ld b, [hl]                                    ; $61ff: $46
    rst $10                                       ; $6200: $d7

Call_007_6201:
Jump_007_6201:
    ld b, c                                       ; $6201: $41
    ld b, [hl]                                    ; $6202: $46
    rst $10                                       ; $6203: $d7
    pop bc                                        ; $6204: $c1
    ld b, [hl]                                    ; $6205: $46
    rst $10                                       ; $6206: $d7
    pop bc                                        ; $6207: $c1
    ld b, [hl]                                    ; $6208: $46
    rst $10                                       ; $6209: $d7
    pop bc                                        ; $620a: $c1
    ld b, [hl]                                    ; $620b: $46
    rst $10                                       ; $620c: $d7
    ld bc, $d747                                  ; $620d: $01 $47 $d7
    ld b, c                                       ; $6210: $41
    ld b, a                                       ; $6211: $47
    rst $10                                       ; $6212: $d7
    ld bc, $d747                                  ; $6213: $01 $47 $d7
    add c                                         ; $6216: $81
    ld b, a                                       ; $6217: $47
    rst $10                                       ; $6218: $d7
    pop bc                                        ; $6219: $c1
    ld b, a                                       ; $621a: $47
    rst $10                                       ; $621b: $d7
    ld bc, $d748                                  ; $621c: $01 $48 $d7
    ld b, c                                       ; $621f: $41
    ld c, b                                       ; $6220: $48
    rst $10                                       ; $6221: $d7
    add c                                         ; $6222: $81
    ld c, b                                       ; $6223: $48
    rst $10                                       ; $6224: $d7
    ld b, c                                       ; $6225: $41
    ld b, [hl]                                    ; $6226: $46
    rst $10                                       ; $6227: $d7
    ld bc, $d747                                  ; $6228: $01 $47 $d7
    add c                                         ; $622b: $81
    ld c, b                                       ; $622c: $48
    rst $10                                       ; $622d: $d7
    pop bc                                        ; $622e: $c1
    ld b, [hl]                                    ; $622f: $46
    rst $10                                       ; $6230: $d7
    ld bc, $d747                                  ; $6231: $01 $47 $d7
    pop bc                                        ; $6234: $c1
    ld b, [hl]                                    ; $6235: $46
    rst $10                                       ; $6236: $d7
    ld b, c                                       ; $6237: $41
    ld b, [hl]                                    ; $6238: $46
    or a                                          ; $6239: $b7
    add sp, $7f                                   ; $623a: $e8 $7f
    or a                                          ; $623c: $b7

Jump_007_623d:
    ldh a, [$7f]                                  ; $623d: $f0 $7f

Jump_007_623f:
    or a                                          ; $623f: $b7
    ldh [$7f], a                                  ; $6240: $e0 $7f
    or a                                          ; $6242: $b7
    ldh [$7f], a                                  ; $6243: $e0 $7f
    rst $10                                       ; $6245: $d7
    pop bc                                        ; $6246: $c1
    ld b, [hl]                                    ; $6247: $46
    or a                                          ; $6248: $b7
    ldh [$7f], a                                  ; $6249: $e0 $7f

    db $d7, $c1, $48, $d7, $01, $49, $d7, $41, $49, $b7, $f8, $7f

    cp c                                          ; $6257: $b9
    jp hl                                         ; $6258: $e9


    ld a, a                                       ; $6259: $7f
    cp c                                          ; $625a: $b9
    pop af                                        ; $625b: $f1
    ld a, a                                       ; $625c: $7f
    cp d                                          ; $625d: $ba
    db $d3                                        ; $625e: $d3
    ld a, a                                       ; $625f: $7f
    cp d                                          ; $6260: $ba
    db $db                                        ; $6261: $db
    ld a, a                                       ; $6262: $7f
    rst $10                                       ; $6263: $d7
    add c                                         ; $6264: $81
    ld c, c                                       ; $6265: $49
    cp d                                          ; $6266: $ba
    db $e3                                        ; $6267: $e3
    ld a, a                                       ; $6268: $7f
    cp d                                          ; $6269: $ba
    db $eb                                        ; $626a: $eb
    ld a, a                                       ; $626b: $7f
    cp d                                          ; $626c: $ba
    di                                            ; $626d: $f3
    ld a, a                                       ; $626e: $7f
    cp e                                          ; $626f: $bb
    ld a, [c]                                     ; $6270: $f2
    ld a, a                                       ; $6271: $7f
    cp h                                          ; $6272: $bc
    call z, $bc7f                                 ; $6273: $cc $7f $bc
    call nc, $bc7f                                ; $6276: $d4 $7f $bc
    call c, $ba7f                                 ; $6279: $dc $7f $ba
    db $e3                                        ; $627c: $e3
    ld a, a                                       ; $627d: $7f
    cp h                                          ; $627e: $bc
    db $e4                                        ; $627f: $e4
    ld a, a                                       ; $6280: $7f
    cp h                                          ; $6281: $bc
    db $ec                                        ; $6282: $ec
    ld a, a                                       ; $6283: $7f
    cp h                                          ; $6284: $bc
    db $f4                                        ; $6285: $f4
    ld a, a                                       ; $6286: $7f
    cp l                                          ; $6287: $bd
    rst $10                                       ; $6288: $d7
    ld a, a                                       ; $6289: $7f
    cp l                                          ; $628a: $bd
    rst $18                                       ; $628b: $df
    ld a, a                                       ; $628c: $7f
    cp l                                          ; $628d: $bd
    rst $20                                       ; $628e: $e7
    ld a, a                                       ; $628f: $7f
    cp d                                          ; $6290: $ba
    db $e3                                        ; $6291: $e3
    ld a, a                                       ; $6292: $7f
    cp l                                          ; $6293: $bd
    rst $28                                       ; $6294: $ef
    ld a, a                                       ; $6295: $7f
    cp l                                          ; $6296: $bd
    rst $30                                       ; $6297: $f7
    ld a, a                                       ; $6298: $7f
    cp [hl]                                       ; $6299: $be
    db $ec                                        ; $629a: $ec
    ld a, a                                       ; $629b: $7f
    cp [hl]                                       ; $629c: $be
    db $f4                                        ; $629d: $f4
    ld a, a                                       ; $629e: $7f
    cp a                                          ; $629f: $bf
    jp c, $bf7f                                   ; $62a0: $da $7f $bf

    ld [c], a                                     ; $62a3: $e2
    ld a, a                                       ; $62a4: $7f
    cp d                                          ; $62a5: $ba
    db $e3                                        ; $62a6: $e3
    ld a, a                                       ; $62a7: $7f
    cp a                                          ; $62a8: $bf
    ld [$bf7f], a                                 ; $62a9: $ea $7f $bf
    ld a, [c]                                     ; $62ac: $f2

Call_007_62ad:
    ld a, a                                       ; $62ad: $7f
    ret nz                                        ; $62ae: $c0

    db $e4                                        ; $62af: $e4
    ld a, a                                       ; $62b0: $7f
    ret nz                                        ; $62b1: $c0

    db $ec                                        ; $62b2: $ec
    ld a, a                                       ; $62b3: $7f
    ret nz                                        ; $62b4: $c0

    db $f4                                        ; $62b5: $f4
    ld a, a                                       ; $62b6: $7f
    pop bc                                        ; $62b7: $c1
    ld [c], a                                     ; $62b8: $e2
    ld a, a                                       ; $62b9: $7f
    cp d                                          ; $62ba: $ba
    db $e3                                        ; $62bb: $e3
    ld a, a                                       ; $62bc: $7f

Jump_007_62bd:
    pop bc                                        ; $62bd: $c1
    ld [$c17f], a                                 ; $62be: $ea $7f $c1
    ld [$c17f], a                                 ; $62c1: $ea $7f $c1
    ld [$c17f], a                                 ; $62c4: $ea $7f $c1
    ld [$c17f], a                                 ; $62c7: $ea $7f $c1
    ld [$c17f], a                                 ; $62ca: $ea $7f $c1
    ld [$c17f], a                                 ; $62cd: $ea $7f $c1
    ld a, [c]                                     ; $62d0: $f2
    ld a, a                                       ; $62d1: $7f
    pop bc                                        ; $62d2: $c1
    ld a, [c]                                     ; $62d3: $f2
    ld a, a                                       ; $62d4: $7f
    pop bc                                        ; $62d5: $c1
    ld a, [c]                                     ; $62d6: $f2
    ld a, a                                       ; $62d7: $7f
    jp Jump_007_7fe9                              ; $62d8: $c3 $e9 $7f


    jp $7ff1                                      ; $62db: $c3 $f1 $7f


    push bc                                       ; $62de: $c5
    db $db                                        ; $62df: $db
    ld a, a                                       ; $62e0: $7f
    push bc                                       ; $62e1: $c5
    db $e3                                        ; $62e2: $e3
    ld a, a                                       ; $62e3: $7f
    push bc                                       ; $62e4: $c5
    db $eb                                        ; $62e5: $eb
    ld a, a                                       ; $62e6: $7f
    push bc                                       ; $62e7: $c5
    di                                            ; $62e8: $f3
    ld a, a                                       ; $62e9: $7f
    add $e1                                       ; $62ea: $c6 $e1
    ld a, a                                       ; $62ec: $7f
    add $e9                                       ; $62ed: $c6 $e9
    ld a, a                                       ; $62ef: $7f
    add $f1                                       ; $62f0: $c6 $f1
    ld a, a                                       ; $62f2: $7f
    rst $00                                       ; $62f3: $c7
    sub $7f                                       ; $62f4: $d6 $7f
    rst $00                                       ; $62f6: $c7
    sbc $7f                                       ; $62f7: $de $7f
    rst $00                                       ; $62f9: $c7
    and $7f                                       ; $62fa: $e6 $7f
    rst $00                                       ; $62fc: $c7
    xor $7f                                       ; $62fd: $ee $7f
    rst $00                                       ; $62ff: $c7
    or $7f                                        ; $6300: $f6 $7f
    ret z                                         ; $6302: $c8

    jp c, $c87f                                   ; $6303: $da $7f $c8

    ld [c], a                                     ; $6306: $e2
    ld a, a                                       ; $6307: $7f
    ret z                                         ; $6308: $c8

    ld [$c87f], a                                 ; $6309: $ea $7f $c8
    ld a, [c]                                     ; $630c: $f2
    ld a, a                                       ; $630d: $7f
    ret                                           ; $630e: $c9


    db $eb                                        ; $630f: $eb
    ld a, a                                       ; $6310: $7f

    db $c9, $f3, $7f, $ca, $e7, $7f

    jp z, Jump_007_7fef                           ; $6317: $ca $ef $7f

    jp z, Jump_007_7ff7                           ; $631a: $ca $f7 $7f

    db $cb, $d9, $7f

    set 4, c                                      ; $6320: $cb $e1
    ld a, a                                       ; $6322: $7f
    set 5, c                                      ; $6323: $cb $e9
    ld a, a                                       ; $6325: $7f
    set 6, c                                      ; $6326: $cb $f1
    ld a, a                                       ; $6328: $7f
    call z, Call_007_7fe4                         ; $6329: $cc $e4 $7f
    call z, Call_007_7fec                         ; $632c: $cc $ec $7f
    call z, Call_007_7ff4                         ; $632f: $cc $f4 $7f
    call Call_007_7fea                            ; $6332: $cd $ea $7f
    call Call_007_7ff2                            ; $6335: $cd $f2 $7f
    adc $d8                                       ; $6338: $ce $d8
    ld a, a                                       ; $633a: $7f
    adc $e0                                       ; $633b: $ce $e0

Jump_007_633d:
    ld a, a                                       ; $633d: $7f
    adc $e8                                       ; $633e: $ce $e8
    ld a, a                                       ; $6340: $7f
    adc $f0                                       ; $6341: $ce $f0
    ld a, a                                       ; $6343: $7f
    adc $f8                                       ; $6344: $ce $f8
    ld a, a                                       ; $6346: $7f
    ret nc                                        ; $6347: $d0

    push de                                       ; $6348: $d5
    ld a, a                                       ; $6349: $7f
    ret nc                                        ; $634a: $d0

    db $dd                                        ; $634b: $dd
    ld a, a                                       ; $634c: $7f
    ret nc                                        ; $634d: $d0

    push hl                                       ; $634e: $e5
    ld a, a                                       ; $634f: $7f
    ret nc                                        ; $6350: $d0

    db $ed                                        ; $6351: $ed
    ld a, a                                       ; $6352: $7f
    ret nc                                        ; $6353: $d0

    push af                                       ; $6354: $f5
    ld a, a                                       ; $6355: $7f
    pop de                                        ; $6356: $d1
    pop hl                                        ; $6357: $e1
    ld a, a                                       ; $6358: $7f
    pop de                                        ; $6359: $d1
    jp hl                                         ; $635a: $e9


    ld a, a                                       ; $635b: $7f
    pop de                                        ; $635c: $d1
    pop af                                        ; $635d: $f1
    ld a, a                                       ; $635e: $7f

    db $d2, $c1, $7f

    jp nc, Jump_007_7fc9                          ; $6362: $d2 $c9 $7f

    db $d2, $d1, $7f

    jp nc, Jump_007_7fd9                          ; $6368: $d2 $d9 $7f

    jp nc, Jump_007_7fe1                          ; $636b: $d2 $e1 $7f

    jp nc, Jump_007_7fe9                          ; $636e: $d2 $e9 $7f

    jp nc, $7ff1                                  ; $6371: $d2 $f1 $7f

    db $d3                                        ; $6374: $d3
    pop bc                                        ; $6375: $c1
    ld a, a                                       ; $6376: $7f
    db $d3                                        ; $6377: $d3
    ret                                           ; $6378: $c9


    ld a, a                                       ; $6379: $7f
    db $d3                                        ; $637a: $d3
    pop de                                        ; $637b: $d1
    ld a, a                                       ; $637c: $7f
    db $d3                                        ; $637d: $d3
    reti                                          ; $637e: $d9


    ld a, a                                       ; $637f: $7f
    db $d3                                        ; $6380: $d3
    pop hl                                        ; $6381: $e1
    ld a, a                                       ; $6382: $7f
    db $d3                                        ; $6383: $d3
    jp hl                                         ; $6384: $e9


    ld a, a                                       ; $6385: $7f
    db $d3                                        ; $6386: $d3
    pop af                                        ; $6387: $f1
    ld a, a                                       ; $6388: $7f
    call nc, Call_007_7fc2                        ; $6389: $d4 $c2 $7f
    call nc, Call_007_7fca                        ; $638c: $d4 $ca $7f
    call nc, Call_007_7fd2                        ; $638f: $d4 $d2 $7f
    call nc, Call_007_7fda                        ; $6392: $d4 $da $7f
    call nc, Call_007_7fe2                        ; $6395: $d4 $e2 $7f
    call nc, Call_007_7fea                        ; $6398: $d4 $ea $7f
    call nc, Call_007_7ff2                        ; $639b: $d4 $f2 $7f
    push de                                       ; $639e: $d5
    db $db                                        ; $639f: $db
    ld a, a                                       ; $63a0: $7f
    push de                                       ; $63a1: $d5
    db $e3                                        ; $63a2: $e3
    ld a, a                                       ; $63a3: $7f
    push de                                       ; $63a4: $d5
    db $eb                                        ; $63a5: $eb
    ld a, a                                       ; $63a6: $7f
    push de                                       ; $63a7: $d5
    di                                            ; $63a8: $f3
    ld a, a                                       ; $63a9: $7f
    sub $d5                                       ; $63aa: $d6 $d5
    ld a, a                                       ; $63ac: $7f

    db $d6, $dd, $7f

    sub $e5                                       ; $63b0: $d6 $e5

Jump_007_63b2:
    ld a, a                                       ; $63b2: $7f

    db $d6, $ed, $7f, $d6, $f5, $7f

    rst $10                                       ; $63b9: $d7
    pop bc                                        ; $63ba: $c1
    ld c, c                                       ; $63bb: $49

    db $d7, $e2, $49, $d7, $6b, $4c

    rst $10                                       ; $63c2: $d7
    ld a, c                                       ; $63c3: $79
    ld c, l                                       ; $63c4: $4d
    rst $10                                       ; $63c5: $d7
    sbc l                                         ; $63c6: $9d
    ld c, [hl]                                    ; $63c7: $4e
    rst $10                                       ; $63c8: $d7

Jump_007_63c9:
    sbc b                                         ; $63c9: $98
    ld c, a                                       ; $63ca: $4f
    rst $10                                       ; $63cb: $d7
    sub e                                         ; $63cc: $93
    ld d, b                                       ; $63cd: $50
    rst $10                                       ; $63ce: $d7
    add d                                         ; $63cf: $82
    ld d, c                                       ; $63d0: $51
    rst $10                                       ; $63d1: $d7
    add l                                         ; $63d2: $85
    ld d, d                                       ; $63d3: $52
    rst $10                                       ; $63d4: $d7
    ld a, a                                       ; $63d5: $7f
    ld d, e                                       ; $63d6: $53
    rst $10                                       ; $63d7: $d7
    ld d, b                                       ; $63d8: $50
    ld d, h                                       ; $63d9: $54
    rst $10                                       ; $63da: $d7
    ld [hl+], a                                   ; $63db: $22
    ld d, l                                       ; $63dc: $55
    rst $10                                       ; $63dd: $d7
    ld a, [c]                                     ; $63de: $f2
    ld d, l                                       ; $63df: $55
    rst $10                                       ; $63e0: $d7
    cp [hl]                                       ; $63e1: $be
    ld d, [hl]                                    ; $63e2: $56
    rst $10                                       ; $63e3: $d7
    xor l                                         ; $63e4: $ad
    ld d, a                                       ; $63e5: $57
    rst $10                                       ; $63e6: $d7
    sbc h                                         ; $63e7: $9c
    ld e, b                                       ; $63e8: $58

    db $d7, $44, $5f, $d7, $90, $5f, $d7, $58, $60

    rst $10                                       ; $63f2: $d7
    or c                                          ; $63f3: $b1
    ld h, b                                       ; $63f4: $60
    rst $10                                       ; $63f5: $d7
    scf                                           ; $63f6: $37
    ld h, e                                       ; $63f7: $63
    rst $10                                       ; $63f8: $d7
    rst $10                                       ; $63f9: $d7
    ld h, l                                       ; $63fa: $65

    db $d7, $1e, $6b

    rst $10                                       ; $63fe: $d7
    ldh a, [rOCPD]                                ; $63ff: $f0 $6b

Call_007_6401:
Jump_007_6401:
    rst $10                                       ; $6401: $d7
    ld d, h                                       ; $6402: $54
    ld l, a                                       ; $6403: $6f
    rst $10                                       ; $6404: $d7
    ld d, h                                       ; $6405: $54
    ld [hl], b                                    ; $6406: $70
    rst $10                                       ; $6407: $d7
    adc a                                         ; $6408: $8f
    ld [hl], c                                    ; $6409: $71
    rst $10                                       ; $640a: $d7
    call nc, $d772                                ; $640b: $d4 $72 $d7
    db $ec                                        ; $640e: $ec
    ld [hl], e                                    ; $640f: $73

    db $d7, $53, $77

    ret c                                         ; $6413: $d8

    ld bc, $d740                                  ; $6414: $01 $40 $d7
    or e                                          ; $6417: $b3
    ld a, d                                       ; $6418: $7a
    rst $10                                       ; $6419: $d7
    call $d87c                                    ; $641a: $cd $7c $d8
    ld a, c                                       ; $641d: $79
    ld b, a                                       ; $641e: $47
    ret c                                         ; $641f: $d8

    ld d, l                                       ; $6420: $55
    ld c, d                                       ; $6421: $4a
    ret c                                         ; $6422: $d8

    ld d, a                                       ; $6423: $57
    ld c, l                                       ; $6424: $4d
    ret c                                         ; $6425: $d8

    ld a, c                                       ; $6426: $79
    ld d, b                                       ; $6427: $50
    ret c                                         ; $6428: $d8

    dec sp                                        ; $6429: $3b
    ld d, e                                       ; $642a: $53

    db $d8, $aa, $54

    rst $10                                       ; $642e: $d7
    ld e, c                                       ; $642f: $59
    ld a, a                                       ; $6430: $7f
    rst $10                                       ; $6431: $d7
    ld e, c                                       ; $6432: $59
    ld a, a                                       ; $6433: $7f
    ret c                                         ; $6434: $d8

    ld b, l                                       ; $6435: $45
    ld e, h                                       ; $6436: $5c
    rst $10                                       ; $6437: $d7
    ld e, $6b                                     ; $6438: $1e $6b
    ret c                                         ; $643a: $d8

    xor l                                         ; $643b: $ad
    ld e, h                                       ; $643c: $5c

Jump_007_643d:
    ret c                                         ; $643d: $d8

    ld h, a                                       ; $643e: $67
    ld e, a                                       ; $643f: $5f
    ret c                                         ; $6440: $d8

    sub b                                         ; $6441: $90
    ld h, c                                       ; $6442: $61
    ret c                                         ; $6443: $d8

    ld hl, sp+$61                                 ; $6444: $f8 $61
    ret c                                         ; $6446: $d8

    ld d, b                                       ; $6447: $50
    ld h, l                                       ; $6448: $65

    db $d8, $fd, $68, $d8, $21, $6a

    ret c                                         ; $644f: $d8

    ld d, $6b                                     ; $6450: $16 $6b

    db $d7, $df, $7f

    ret c                                         ; $6455: $d8

    ld l, a                                       ; $6456: $6f
    ld l, e                                       ; $6457: $6b
    ret c                                         ; $6458: $d8

    sbc e                                         ; $6459: $9b
    ld [hl], b                                    ; $645a: $70
    ret c                                         ; $645b: $d8

    and h                                         ; $645c: $a4
    ld [hl], h                                    ; $645d: $74
    ret c                                         ; $645e: $d8

    push de                                       ; $645f: $d5
    ld [hl], l                                    ; $6460: $75

    db $8c, $44, $18, $24, $30, $44, $18, $64

    inc a                                         ; $6469: $3c
    ld b, h                                       ; $646a: $44

    db $8c, $2a

    jr @+$10                                      ; $646d: $18 $0e

    db $30, $2a

    jr @+$50                                      ; $6471: $18 $4e

    ld [hl], h                                    ; $6473: $74
    ld a, $30                                     ; $6474: $3e $30
    db $1e                                        ; $6476: $1e

    db $48, $3e

    jr nc, @+$60                                  ; $6479: $30 $5e

    db $02, $10, $1a, $30, $02, $50, $00

    ld d, c                                       ; $6482: $51
    ld bc, $1716                                  ; $6483: $01 $16 $17
    jr @+$5b                                      ; $6486: $18 $59

    rst $38                                       ; $6488: $ff
    ld [bc], a                                    ; $6489: $02
    dec b                                         ; $648a: $05
    ld b, $33                                     ; $648b: $06 $33
    ld b, e                                       ; $648d: $43
    ld c, c                                       ; $648e: $49
    ld c, d                                       ; $648f: $4a
    ld c, e                                       ; $6490: $4b
    ld c, h                                       ; $6491: $4c
    ld c, l                                       ; $6492: $4d
    ld c, [hl]                                    ; $6493: $4e
    rst $38                                       ; $6494: $ff
    inc l                                         ; $6495: $2c
    dec hl                                        ; $6496: $2b
    add hl, bc                                    ; $6497: $09
    ld a, [bc]                                    ; $6498: $0a
    dec bc                                        ; $6499: $0b
    inc c                                         ; $649a: $0c
    dec d                                         ; $649b: $15
    inc e                                         ; $649c: $1c
    dec e                                         ; $649d: $1d
    ld e, $1f                                     ; $649e: $1e $1f
    ld l, $2f                                     ; $64a0: $2e $2f
    jr nc, jr_007_64d8                            ; $64a2: $30 $34

    ld a, [hl-]                                   ; $64a4: $3a
    inc a                                         ; $64a5: $3c
    dec a                                         ; $64a6: $3d
    ld a, $ff                                     ; $64a7: $3e $ff
    ld a, [$cbe7]                                 ; $64a9: $fa $e7 $cb
    or a                                          ; $64ac: $b7
    jr z, jr_007_64f3                             ; $64ad: $28 $44

    cp $03                                        ; $64af: $fe $03
    jr nz, jr_007_64c7                            ; $64b1: $20 $14

    ld hl, $0006                                  ; $64b3: $21 $06 $00
    add hl, bc                                    ; $64b6: $09
    ld a, $66                                     ; $64b7: $3e $66
    ld [hl+], a                                   ; $64b9: $22
    ld [hl], $00                                  ; $64ba: $36 $00
    ld hl, $0045                                  ; $64bc: $21 $45 $00
    add hl, bc                                    ; $64bf: $09
    ld a, $2d                                     ; $64c0: $3e $2d
    ld [hl], a                                    ; $64c2: $77
    ld [$cdbb], a                                 ; $64c3: $ea $bb $cd
    ret                                           ; $64c6: $c9


jr_007_64c7:
    cp $02                                        ; $64c7: $fe $02

Call_007_64c9:
    jr nz, jr_007_64df                            ; $64c9: $20 $14

    ld hl, $0006                                  ; $64cb: $21 $06 $00
    add hl, bc                                    ; $64ce: $09
    ld a, $5a                                     ; $64cf: $3e $5a
    ld [hl+], a                                   ; $64d1: $22
    ld [hl], $00                                  ; $64d2: $36 $00
    ld hl, $0045                                  ; $64d4: $21 $45 $00
    add hl, bc                                    ; $64d7: $09

jr_007_64d8:
    ld a, $23                                     ; $64d8: $3e $23
    ld [hl], a                                    ; $64da: $77
    ld [$cdbb], a                                 ; $64db: $ea $bb $cd
    ret                                           ; $64de: $c9


jr_007_64df:
    ld hl, $0006                                  ; $64df: $21 $06 $00
    add hl, bc                                    ; $64e2: $09
    ld a, $36                                     ; $64e3: $3e $36

Call_007_64e5:
    ld [hl+], a                                   ; $64e5: $22
    ld [hl], $00                                  ; $64e6: $36 $00
    ld hl, $0045                                  ; $64e8: $21 $45 $00
    add hl, bc                                    ; $64eb: $09
    ld a, $14                                     ; $64ec: $3e $14
    ld [hl], a                                    ; $64ee: $77
    ld [$cdbb], a                                 ; $64ef: $ea $bb $cd
    ret                                           ; $64f2: $c9


jr_007_64f3:
    ld hl, $0006                                  ; $64f3: $21 $06 $00
    add hl, bc                                    ; $64f6: $09
    ld a, $5a                                     ; $64f7: $3e $5a
    ld [hl+], a                                   ; $64f9: $22
    ld [hl], $00                                  ; $64fa: $36 $00
    ld hl, $0045                                  ; $64fc: $21 $45 $00
    add hl, bc                                    ; $64ff: $09
    ld a, $12                                     ; $6500: $3e $12
    ld [hl], a                                    ; $6502: $77
    ld [$cdbb], a                                 ; $6503: $ea $bb $cd
    ret                                           ; $6506: $c9


    call Call_000_2e82                            ; $6507: $cd $82 $2e
    cp $01                                        ; $650a: $fe $01
    jr z, jr_007_6522                             ; $650c: $28 $14

    cp $02                                        ; $650e: $fe $02
    jr z, jr_007_653a                             ; $6510: $28 $28

    cp $0c                                        ; $6512: $fe $0c
    jr z, jr_007_6522                             ; $6514: $28 $0c

    cp $07                                        ; $6516: $fe $07
    jr z, jr_007_6552                             ; $6518: $28 $38

    xor a                                         ; $651a: $af
    ld [$cbf6], a                                 ; $651b: $ea $f6 $cb
    ld [$cbf7], a                                 ; $651e: $ea $f7 $cb
    ret                                           ; $6521: $c9


jr_007_6522:
    call Call_000_2e8a                            ; $6522: $cd $8a $2e
    ld hl, $6988                                  ; $6525: $21 $88 $69
    call Call_000_318c                            ; $6528: $cd $8c $31
    ld de, $0003                                  ; $652b: $11 $03 $00
    call Call_000_35a1                            ; $652e: $cd $a1 $35
    ld a, l                                       ; $6531: $7d
    ld [$cbf6], a                                 ; $6532: $ea $f6 $cb
    ld a, h                                       ; $6535: $7c
    ld [$cbf7], a                                 ; $6536: $ea $f7 $cb
    ret                                           ; $6539: $c9


jr_007_653a:
    call Call_000_2e8a                            ; $653a: $cd $8a $2e

Jump_007_653d:
    ld hl, $6986                                  ; $653d: $21 $86 $69
    call Call_000_318c                            ; $6540: $cd $8c $31
    ld de, $0003                                  ; $6543: $11 $03 $00
    call Call_000_35a1                            ; $6546: $cd $a1 $35
    ld a, l                                       ; $6549: $7d
    ld [$cbf6], a                                 ; $654a: $ea $f6 $cb
    ld a, h                                       ; $654d: $7c
    ld [$cbf7], a                                 ; $654e: $ea $f7 $cb
    ret                                           ; $6551: $c9


jr_007_6552:
    call Call_000_2e8a                            ; $6552: $cd $8a $2e
    ld hl, $6998                                  ; $6555: $21 $98 $69
    call Call_000_318c                            ; $6558: $cd $8c $31
    ld de, $0003                                  ; $655b: $11 $03 $00
    call Call_000_35a1                            ; $655e: $cd $a1 $35
    ld a, l                                       ; $6561: $7d
    ld [$cbf6], a                                 ; $6562: $ea $f6 $cb

Jump_007_6565:
    ld a, h                                       ; $6565: $7c
    ld [$cbf7], a                                 ; $6566: $ea $f7 $cb
    ret                                           ; $6569: $c9


    push bc                                       ; $656a: $c5
    call Call_000_2e82                            ; $656b: $cd $82 $2e
    cp $01                                        ; $656e: $fe $01
    ld a, $21                                     ; $6570: $3e $21
    ld d, $06                                     ; $6572: $16 $06
    jr z, jr_007_657a                             ; $6574: $28 $04

    ld a, $22                                     ; $6576: $3e $22
    ld d, $03                                     ; $6578: $16 $03

jr_007_657a:
    ld hl, $004d                                  ; $657a: $21 $4d $00

Jump_007_657d:
    add hl, bc                                    ; $657d: $09
    ld [hl], d                                    ; $657e: $72
    ld e, $01                                     ; $657f: $1e $01
    ld hl, $61f1                                  ; $6581: $21 $f1 $61
    ldh [$c1], a                                  ; $6584: $e0 $c1
    ld a, $3d                                     ; $6586: $3e $3d
    ldh [$bd], a                                  ; $6588: $e0 $bd
    ld a, $25                                     ; $658a: $3e $25
    ldh [$be], a                                  ; $658c: $e0 $be
    call Call_000_34ba                            ; $658e: $cd $ba $34
    pop bc                                        ; $6591: $c1
    ret                                           ; $6592: $c9


    ld a, [$cb97]                                 ; $6593: $fa $97 $cb
    ld [$cb96], a                                 ; $6596: $ea $96 $cb
    ld a, [$cbe7]                                 ; $6599: $fa $e7 $cb
    or a                                          ; $659c: $b7
    jr z, jr_007_65b1                             ; $659d: $28 $12

    cp $03                                        ; $659f: $fe $03
    jr z, jr_007_65bb                             ; $65a1: $28 $18

    cp $02                                        ; $65a3: $fe $02
    jr z, jr_007_65b1                             ; $65a5: $28 $0a

    ld a, $01                                     ; $65a7: $3e $01
    ld [$cbad], a                                 ; $65a9: $ea $ad $cb
    ld hl, $cb9b                                  ; $65ac: $21 $9b $cb
    jr jr_007_65c3                                ; $65af: $18 $12

jr_007_65b1:
    ld a, $01                                     ; $65b1: $3e $01
    ld [$cbae], a                                 ; $65b3: $ea $ae $cb
    ld hl, $cba1                                  ; $65b6: $21 $a1 $cb
    jr jr_007_65c3                                ; $65b9: $18 $08

jr_007_65bb:
    ld a, $01                                     ; $65bb: $3e $01

Jump_007_65bd:
    ld [$cbaf], a                                 ; $65bd: $ea $af $cb
    ld hl, $cba7                                  ; $65c0: $21 $a7 $cb

jr_007_65c3:
    push bc                                       ; $65c3: $c5
    ld a, [$cb97]                                 ; $65c4: $fa $97 $cb
    ld e, a                                       ; $65c7: $5f
    push hl                                       ; $65c8: $e5
    ld a, $20                                     ; $65c9: $3e $20
    ld d, $07                                     ; $65cb: $16 $07
    call Call_000_13ff                            ; $65cd: $cd $ff $13
    pop hl                                        ; $65d0: $e1
    ldh [$c1], a                                  ; $65d1: $e0 $c1
    ld a, $62                                     ; $65d3: $3e $62
    ldh [$bd], a                                  ; $65d5: $e0 $bd
    ld a, $36                                     ; $65d7: $3e $36
    ldh [$be], a                                  ; $65d9: $e0 $be
    call Call_000_34ba                            ; $65db: $cd $ba $34
    pop bc                                        ; $65de: $c1
    ret                                           ; $65df: $c9


    xor a                                         ; $65e0: $af
    ld [$cb96], a                                 ; $65e1: $ea $96 $cb
    ret                                           ; $65e4: $c9


    push bc                                       ; $65e5: $c5
    ld a, [$cb96]                                 ; $65e6: $fa $96 $cb
    ld e, a                                       ; $65e9: $5f
    ld a, $20                                     ; $65ea: $3e $20
    ld d, $07                                     ; $65ec: $16 $07
    ld hl, $61f1                                  ; $65ee: $21 $f1 $61
    ldh [$c1], a                                  ; $65f1: $e0 $c1
    ld a, $29                                     ; $65f3: $3e $29
    ldh [$bd], a                                  ; $65f5: $e0 $bd
    ld a, $25                                     ; $65f7: $3e $25
    ldh [$be], a                                  ; $65f9: $e0 $be
    call Call_000_34ba                            ; $65fb: $cd $ba $34
    pop bc                                        ; $65fe: $c1
    ret                                           ; $65ff: $c9


    push bc                                       ; $6600: $c5

Call_007_6601:
    call Call_000_2e82                            ; $6601: $cd $82 $2e
    cp $19                                        ; $6604: $fe $19
    cp $1a                                        ; $6606: $fe $1a
    cp $1b                                        ; $6608: $fe $1b
    cp $1d                                        ; $660a: $fe $1d
    jr z, jr_007_6624                             ; $660c: $28 $16

    ld d, $04                                     ; $660e: $16 $04
    ld e, $02                                     ; $6610: $1e $02
    ld hl, $61f1                                  ; $6612: $21 $f1 $61
    ldh [$c1], a                                  ; $6615: $e0 $c1
    ld a, $3d                                     ; $6617: $3e $3d
    ldh [$bd], a                                  ; $6619: $e0 $bd
    ld a, $25                                     ; $661b: $3e $25
    ldh [$be], a                                  ; $661d: $e0 $be
    call Call_000_34ba                            ; $661f: $cd $ba $34
    pop bc                                        ; $6622: $c1
    ret                                           ; $6623: $c9


jr_007_6624:
    ld d, $04                                     ; $6624: $16 $04
    ld e, $01                                     ; $6626: $1e $01
    ld hl, $61f1                                  ; $6628: $21 $f1 $61
    ldh [$c1], a                                  ; $662b: $e0 $c1
    ld a, $3d                                     ; $662d: $3e $3d
    ldh [$bd], a                                  ; $662f: $e0 $bd
    ld a, $25                                     ; $6631: $3e $25
    ldh [$be], a                                  ; $6633: $e0 $be
    call Call_000_34ba                            ; $6635: $cd $ba $34
    pop bc                                        ; $6638: $c1
    ret                                           ; $6639: $c9


    ret                                           ; $663a: $c9


    ld a, [$cbe6]                                 ; $663b: $fa $e6 $cb
    ldh [$9b], a                                  ; $663e: $e0 $9b
    ret                                           ; $6640: $c9


    call Call_000_2e8a                            ; $6641: $cd $8a $2e
    inc a                                         ; $6644: $3c
    ld [$c301], a                                 ; $6645: $ea $01 $c3
    ret                                           ; $6648: $c9


    ld a, $ff                                     ; $6649: $3e $ff
    ld [$c301], a                                 ; $664b: $ea $01 $c3
    ret                                           ; $664e: $c9


    ld hl, $002b                                  ; $664f: $21 $2b $00
    add hl, bc                                    ; $6652: $09
    res 0, [hl]                                   ; $6653: $cb $86
    ld a, [$cbe9]                                 ; $6655: $fa $e9 $cb
    and $04                                       ; $6658: $e6 $04
    ret nz                                        ; $665a: $c0

    set 0, [hl]                                   ; $665b: $cb $c6
    ret                                           ; $665d: $c9


    call Call_000_2e8a                            ; $665e: $cd $8a $2e
    or a                                          ; $6661: $b7
    jp Jump_000_0039                              ; $6662: $c3 $39 $00


Call_007_6665:
    call Call_000_2e8a                            ; $6665: $cd $8a $2e
    cp $02                                        ; $6668: $fe $02
    jp Jump_000_0039                              ; $666a: $c3 $39 $00


    call Call_000_2e8a                            ; $666d: $cd $8a $2e
    inc a                                         ; $6670: $3c
    jp Jump_000_0039                              ; $6671: $c3 $39 $00


    call Call_000_2e82                            ; $6674: $cd $82 $2e
    cp $01                                        ; $6677: $fe $01
    jr z, jr_007_667d                             ; $6679: $28 $02

    cp $1b                                        ; $667b: $fe $1b

Jump_007_667d:
jr_007_667d:
    jp Jump_000_0039                              ; $667d: $c3 $39 $00


    ldh [$bc], a                                  ; $6680: $e0 $bc
    ldh a, [rSVBK]                                ; $6682: $f0 $70
    push af                                       ; $6684: $f5
    ld a, $06                                     ; $6685: $3e $06
    ldh [rSVBK], a                                ; $6687: $e0 $70
    ldh a, [$bc]                                  ; $6689: $f0 $bc
    ldh a, [$d8]                                  ; $668b: $f0 $d8
    cp $42                                        ; $668d: $fe $42
    jr nz, jr_007_6696                            ; $668f: $20 $05

    ld a, [$d620]                                 ; $6691: $fa $20 $d6
    jr jr_007_66b2                                ; $6694: $18 $1c

jr_007_6696:
    cp $5c                                        ; $6696: $fe $5c
    jr nz, jr_007_669f                            ; $6698: $20 $05

    ld a, [$d621]                                 ; $669a: $fa $21 $d6
    jr jr_007_66b2                                ; $669d: $18 $13

jr_007_669f:
    cp $0d                                        ; $669f: $fe $0d
    jr nz, jr_007_66a8                            ; $66a1: $20 $05

    ld a, [$d62c]                                 ; $66a3: $fa $2c $d6
    jr jr_007_66b2                                ; $66a6: $18 $0a

jr_007_66a8:
    cp $57                                        ; $66a8: $fe $57
    jr nz, jr_007_66b1                            ; $66aa: $20 $05

    ld a, [$d622]                                 ; $66ac: $fa $22 $d6
    jr jr_007_66b2                                ; $66af: $18 $01

jr_007_66b1:
    xor a                                         ; $66b1: $af

jr_007_66b2:
    ldh [$bc], a                                  ; $66b2: $e0 $bc
    pop af                                        ; $66b4: $f1
    ldh [rSVBK], a                                ; $66b5: $e0 $70
    ldh a, [$bc]                                  ; $66b7: $f0 $bc
    or a                                          ; $66b9: $b7
    jp Jump_000_0039                              ; $66ba: $c3 $39 $00


Jump_007_66bd:
    xor a                                         ; $66bd: $af
    ld [$cbe7], a                                 ; $66be: $ea $e7 $cb
    ret                                           ; $66c1: $c9


    ld a, $01                                     ; $66c2: $3e $01
    ld [$cbe7], a                                 ; $66c4: $ea $e7 $cb
    ret                                           ; $66c7: $c9


    ld a, $02                                     ; $66c8: $3e $02
    ld [$cbe7], a                                 ; $66ca: $ea $e7 $cb
    ret                                           ; $66cd: $c9


    ld a, $03                                     ; $66ce: $3e $03
    ld [$cbe7], a                                 ; $66d0: $ea $e7 $cb
    ret                                           ; $66d3: $c9


    ld a, $04                                     ; $66d4: $3e $04
    ld [$cbe7], a                                 ; $66d6: $ea $e7 $cb
    ret                                           ; $66d9: $c9


    ld a, [$cbe7]                                 ; $66da: $fa $e7 $cb
    cp $04                                        ; $66dd: $fe $04
    jp Jump_000_0039                              ; $66df: $c3 $39 $00


    push bc                                       ; $66e2: $c5
    ld a, [$cbe7]                                 ; $66e3: $fa $e7 $cb
    or a                                          ; $66e6: $b7
    jr nz, jr_007_66f3                            ; $66e7: $20 $0a

    ld hl, $cc06                                  ; $66e9: $21 $06 $cc
    bit 2, [hl]                                   ; $66ec: $cb $56
    jr z, jr_007_66f3                             ; $66ee: $28 $03

    pop bc                                        ; $66f0: $c1
    xor a                                         ; $66f1: $af
    ret                                           ; $66f2: $c9


jr_007_66f3:
    ld e, a                                       ; $66f3: $5f
    ld a, $7b                                     ; $66f4: $3e $7b
    call Call_000_0a6f                            ; $66f6: $cd $6f $0a
    ld b, h                                       ; $66f9: $44
    ld c, l                                       ; $66fa: $4d
    ldh a, [rSVBK]                                ; $66fb: $f0 $70

Jump_007_66fd:
    push af                                       ; $66fd: $f5
    ld a, $05                                     ; $66fe: $3e $05
    ldh [rSVBK], a                                ; $6700: $e0 $70
    call Call_007_7287                            ; $6702: $cd $87 $72
    ld b, h                                       ; $6705: $44
    ld c, l                                       ; $6706: $4d
    ld hl, $0015                                  ; $6707: $21 $15 $00
    add hl, bc                                    ; $670a: $09
    ld a, [hl]                                    ; $670b: $7e
    or a                                          ; $670c: $b7
    jr nz, jr_007_6716                            ; $670d: $20 $07

jr_007_670f:
    ld a, $14                                     ; $670f: $3e $14
    ld [hl+], a                                   ; $6711: $22
    ld [hl], $00                                  ; $6712: $36 $00
    jr jr_007_6720                                ; $6714: $18 $0a

jr_007_6716:
    add $0a                                       ; $6716: $c6 $0a
    or a                                          ; $6718: $b7
    jr z, jr_007_670f                             ; $6719: $28 $f4

    cp $64                                        ; $671b: $fe $64
    jr nc, jr_007_6720                            ; $671d: $30 $01

    ld [hl], a                                    ; $671f: $77

jr_007_6720:
    ld hl, $000a                                  ; $6720: $21 $0a $00
    add hl, bc                                    ; $6723: $09
    set 2, [hl]                                   ; $6724: $cb $d6
    pop af                                        ; $6726: $f1
    ldh [rSVBK], a                                ; $6727: $e0 $70
    pop bc                                        ; $6729: $c1
    ld a, $02                                     ; $672a: $3e $02
    dec a                                         ; $672c: $3d
    jp Jump_000_0039                              ; $672d: $c3 $39 $00


    push bc                                       ; $6730: $c5
    ld a, [$cbe7]                                 ; $6731: $fa $e7 $cb
    ld e, a                                       ; $6734: $5f
    ld a, $7b                                     ; $6735: $3e $7b
    call Call_000_0a6f                            ; $6737: $cd $6f $0a
    jr nz, jr_007_6758                            ; $673a: $20 $1c

    ld b, h                                       ; $673c: $44

Jump_007_673d:
    ld c, l                                       ; $673d: $4d
    ldh a, [rSVBK]                                ; $673e: $f0 $70
    push af                                       ; $6740: $f5
    ld a, $05                                     ; $6741: $3e $05
    ldh [rSVBK], a                                ; $6743: $e0 $70
    call Call_007_7287                            ; $6745: $cd $87 $72
    ld bc, $0005                                  ; $6748: $01 $05 $00
    add hl, bc                                    ; $674b: $09
    ld a, [hl+]                                   ; $674c: $2a
    ld h, [hl]                                    ; $674d: $66
    ld l, a                                       ; $674e: $6f
    pop af                                        ; $674f: $f1
    ldh [rSVBK], a                                ; $6750: $e0 $70
    ld a, h                                       ; $6752: $7c
    or l                                          ; $6753: $b5
    pop bc                                        ; $6754: $c1
    jp Jump_000_0039                              ; $6755: $c3 $39 $00


jr_007_6758:
    xor a                                         ; $6758: $af
    pop bc                                        ; $6759: $c1
    jp Jump_000_0039                              ; $675a: $c3 $39 $00


    ld hl, $0003                                  ; $675d: $21 $03 $00
    add hl, bc                                    ; $6760: $09
    ld a, [$cdbb]                                 ; $6761: $fa $bb $cd
    ld [hl+], a                                   ; $6764: $22
    ld [hl], a                                    ; $6765: $77
    ret                                           ; $6766: $c9


    ld hl, $0003                                  ; $6767: $21 $03 $00
    add hl, bc                                    ; $676a: $09
    dec [hl]                                      ; $676b: $35
    jp Jump_000_0039                              ; $676c: $c3 $39 $00


    ld hl, $0003                                  ; $676f: $21 $03 $00
    add hl, bc                                    ; $6772: $09
    dec [hl]                                      ; $6773: $35
    ld a, [hl+]                                   ; $6774: $2a
    ld d, [hl]                                    ; $6775: $56
    sra d                                         ; $6776: $cb $2a
    cp d                                          ; $6778: $ba
    jp Jump_000_0039                              ; $6779: $c3 $39 $00


    ld a, $02                                     ; $677c: $3e $02
    ld [$cb86], a                                 ; $677e: $ea $86 $cb
    ret                                           ; $6781: $c9


    xor a                                         ; $6782: $af
    ld [$cb86], a                                 ; $6783: $ea $86 $cb
    ret                                           ; $6786: $c9


Jump_007_6787:
    ld a, [$cb86]                                 ; $6787: $fa $86 $cb
    cp $02                                        ; $678a: $fe $02
    ret z                                         ; $678c: $c8

    ld a, [$cbe7]                                 ; $678d: $fa $e7 $cb
    cp $04                                        ; $6790: $fe $04
    jr z, jr_007_679a                             ; $6792: $28 $06

    ld a, $01                                     ; $6794: $3e $01
    ld [$cb86], a                                 ; $6796: $ea $86 $cb
    ret                                           ; $6799: $c9


jr_007_679a:
    ld a, [$cb99]                                 ; $679a: $fa $99 $cb
    dec a                                         ; $679d: $3d
    ld [$cb99], a                                 ; $679e: $ea $99 $cb
    ret nz                                        ; $67a1: $c0

    ld a, $01                                     ; $67a2: $3e $01
    ld [$cb86], a                                 ; $67a4: $ea $86 $cb
    ret                                           ; $67a7: $c9


    ld a, [$cb86]                                 ; $67a8: $fa $86 $cb
    cp $01                                        ; $67ab: $fe $01
    jp Jump_000_0039                              ; $67ad: $c3 $39 $00


    ld a, [$cbe7]                                 ; $67b0: $fa $e7 $cb
    ld l, $02                                     ; $67b3: $2e $02
    ldh [$c1], a                                  ; $67b5: $e0 $c1
    ld a, $60                                     ; $67b7: $3e $60
    ldh [$bd], a                                  ; $67b9: $e0 $bd
    ld a, $4c                                     ; $67bb: $3e $4c

Jump_007_67bd:
    ldh [$be], a                                  ; $67bd: $e0 $be
    jp Jump_000_34a0                              ; $67bf: $c3 $a0 $34


    push bc                                       ; $67c2: $c5
    push de                                       ; $67c3: $d5
    ld a, [$cbe7]                                 ; $67c4: $fa $e7 $cb
    ld d, a                                       ; $67c7: $57
    ld a, $01                                     ; $67c8: $3e $01
    ld e, a                                       ; $67ca: $5f
    ld hl, $625a                                  ; $67cb: $21 $5a $62
    ldh [$c1], a                                  ; $67ce: $e0 $c1
    ld a, $3d                                     ; $67d0: $3e $3d
    ldh [$bd], a                                  ; $67d2: $e0 $bd
    ld a, $25                                     ; $67d4: $3e $25

Call_007_67d6:
    ldh [$be], a                                  ; $67d6: $e0 $be
    call Call_000_34ba                            ; $67d8: $cd $ba $34
    pop bc                                        ; $67db: $c1
    push bc                                       ; $67dc: $c5
    ld a, [$cbe7]                                 ; $67dd: $fa $e7 $cb
    ld e, a                                       ; $67e0: $5f
    ld a, $7b                                     ; $67e1: $3e $7b
    call Call_000_0a6f                            ; $67e3: $cd $6f $0a
    jr nz, jr_007_67fd                            ; $67e6: $20 $15

    ld b, h                                       ; $67e8: $44
    ld c, l                                       ; $67e9: $4d
    ldh a, [rSVBK]                                ; $67ea: $f0 $70
    push af                                       ; $67ec: $f5
    ld a, $05                                     ; $67ed: $3e $05
    ldh [rSVBK], a                                ; $67ef: $e0 $70
    call Call_007_7287                            ; $67f1: $cd $87 $72
    ld de, $0014                                  ; $67f4: $11 $14 $00
    add hl, de                                    ; $67f7: $19
    res 1, [hl]                                   ; $67f8: $cb $8e
    pop af                                        ; $67fa: $f1
    ldh [rSVBK], a                                ; $67fb: $e0 $70

Jump_007_67fd:
jr_007_67fd:
    pop de                                        ; $67fd: $d1
    pop bc                                        ; $67fe: $c1
    ret                                           ; $67ff: $c9


    push bc                                       ; $6800: $c5

Call_007_6801:
Jump_007_6801:
    push de                                       ; $6801: $d5
    ld a, [$cbe7]                                 ; $6802: $fa $e7 $cb
    ld d, a                                       ; $6805: $57
    ld a, $03                                     ; $6806: $3e $03
    ld e, $01                                     ; $6808: $1e $01
    jr jr_007_6816                                ; $680a: $18 $0a

    push bc                                       ; $680c: $c5
    push de                                       ; $680d: $d5
    ld a, [$cbe7]                                 ; $680e: $fa $e7 $cb
    ld d, a                                       ; $6811: $57
    ld a, $00                                     ; $6812: $3e $00
    ld e, $01                                     ; $6814: $1e $01

jr_007_6816:
    ld hl, $625a                                  ; $6816: $21 $5a $62
    ldh [$c1], a                                  ; $6819: $e0 $c1
    ld a, $3d                                     ; $681b: $3e $3d
    ldh [$bd], a                                  ; $681d: $e0 $bd
    ld a, $25                                     ; $681f: $3e $25
    ldh [$be], a                                  ; $6821: $e0 $be
    call Call_000_34ba                            ; $6823: $cd $ba $34
    pop bc                                        ; $6826: $c1
    push bc                                       ; $6827: $c5
    ld a, [$cbe7]                                 ; $6828: $fa $e7 $cb
    ld e, a                                       ; $682b: $5f
    ld a, $7b                                     ; $682c: $3e $7b
    call Call_000_0a6f                            ; $682e: $cd $6f $0a
    ld b, h                                       ; $6831: $44
    ld c, l                                       ; $6832: $4d
    ldh a, [rSVBK]                                ; $6833: $f0 $70
    push af                                       ; $6835: $f5
    ld a, $05                                     ; $6836: $3e $05
    ldh [rSVBK], a                                ; $6838: $e0 $70
    call Call_007_7287                            ; $683a: $cd $87 $72

Jump_007_683d:
    ld de, $0014                                  ; $683d: $11 $14 $00
    add hl, de                                    ; $6840: $19
    set 1, [hl]                                   ; $6841: $cb $ce
    pop af                                        ; $6843: $f1
    ldh [rSVBK], a                                ; $6844: $e0 $70
    pop de                                        ; $6846: $d1
    pop bc                                        ; $6847: $c1
    ret                                           ; $6848: $c9


    push bc                                       ; $6849: $c5
    ld a, [$cbe7]                                 ; $684a: $fa $e7 $cb
    ld e, a                                       ; $684d: $5f
    ld a, $7b                                     ; $684e: $3e $7b
    call Call_000_0a6f                            ; $6850: $cd $6f $0a
    jr nz, jr_007_6872                            ; $6853: $20 $1d

    ld b, h                                       ; $6855: $44
    ld c, l                                       ; $6856: $4d

jr_007_6857:
    ld hl, $0025                                  ; $6857: $21 $25 $00
    add hl, bc                                    ; $685a: $09

Jump_007_685b:
    xor a                                         ; $685b: $af
    ld [hl], a                                    ; $685c: $77
    call Call_007_7326                            ; $685d: $cd $26 $73
    call Call_000_2e82                            ; $6860: $cd $82 $2e
    ld l, $0b                                     ; $6863: $2e $0b
    ldh [$c1], a                                  ; $6865: $e0 $c1
    ld a, $60                                     ; $6867: $3e $60
    ldh [$bd], a                                  ; $6869: $e0 $bd
    ld a, $4c                                     ; $686b: $3e $4c
    ldh [$be], a                                  ; $686d: $e0 $be
    call Call_000_34a0                            ; $686f: $cd $a0 $34

jr_007_6872:
    pop bc                                        ; $6872: $c1
    ret                                           ; $6873: $c9


    push bc                                       ; $6874: $c5
    ld a, [$cbe7]                                 ; $6875: $fa $e7 $cb
    ld e, a                                       ; $6878: $5f
    ld a, $1a                                     ; $6879: $3e $1a
    call Call_000_0a6f                            ; $687b: $cd $6f $0a
    ld b, h                                       ; $687e: $44
    ld c, l                                       ; $687f: $4d
    ld a, $20                                     ; $6880: $3e $20
    call Call_000_08ce                            ; $6882: $cd $ce $08
    jr jr_007_6857                                ; $6885: $18 $d0

    push bc                                       ; $6887: $c5
    ld a, [$cbe7]                                 ; $6888: $fa $e7 $cb
    ld e, a                                       ; $688b: $5f
    ld a, $7b                                     ; $688c: $3e $7b
    call Call_000_0a6f                            ; $688e: $cd $6f $0a
    ld b, h                                       ; $6891: $44
    ld c, l                                       ; $6892: $4d
    ldh a, [rSVBK]                                ; $6893: $f0 $70
    push af                                       ; $6895: $f5
    ld a, $05                                     ; $6896: $3e $05
    ldh [rSVBK], a                                ; $6898: $e0 $70
    call Call_007_7287                            ; $689a: $cd $87 $72
    ld de, $0014                                  ; $689d: $11 $14 $00
    add hl, de                                    ; $68a0: $19
    res 1, [hl]                                   ; $68a1: $cb $8e
    pop af                                        ; $68a3: $f1
    ldh [rSVBK], a                                ; $68a4: $e0 $70
    pop bc                                        ; $68a6: $c1
    ret                                           ; $68a7: $c9


    ldh [$c1], a                                  ; $68a8: $e0 $c1
    ld a, $95                                     ; $68aa: $3e $95
    ldh [$bd], a                                  ; $68ac: $e0 $bd
    ld a, $0a                                     ; $68ae: $3e $0a
    ldh [$be], a                                  ; $68b0: $e0 $be
    call Call_000_34ba                            ; $68b2: $cd $ba $34
    ld a, [bc]                                    ; $68b5: $0a
    or a                                          ; $68b6: $b7
    ret z                                         ; $68b7: $c8

    ld hl, $002e                                  ; $68b8: $21 $2e $00
    add hl, bc                                    ; $68bb: $09
    bit 1, [hl]                                   ; $68bc: $cb $4e
    ret nz                                        ; $68be: $c0

    inc bc                                        ; $68bf: $03
    ld a, [bc]                                    ; $68c0: $0a
    dec bc                                        ; $68c1: $0b
    cp $2a                                        ; $68c2: $fe $2a
    ret nz                                        ; $68c4: $c0

    push bc                                       ; $68c5: $c5
    call Call_007_68da                            ; $68c6: $cd $da $68
    pop bc                                        ; $68c9: $c1
    ret c                                         ; $68ca: $d8

    ld hl, $cb25                                  ; $68cb: $21 $25 $cb
    ld a, [hl+]                                   ; $68ce: $2a
    ld h, [hl]                                    ; $68cf: $66
    ld l, a                                       ; $68d0: $6f
    xor a                                         ; $68d1: $af
    ld [hl], a                                    ; $68d2: $77
    ld [bc], a                                    ; $68d3: $02
    ld a, $0e                                     ; $68d4: $3e $0e
    call Call_000_393e                            ; $68d6: $cd $3e $39
    ret                                           ; $68d9: $c9


Call_007_68da:
    ld hl, $c371                                  ; $68da: $21 $71 $c3
    ld a, l                                       ; $68dd: $7d
    ld [$cb25], a                                 ; $68de: $ea $25 $cb
    ld a, h                                       ; $68e1: $7c
    ld [$cb26], a                                 ; $68e2: $ea $26 $cb
    ld a, $14                                     ; $68e5: $3e $14
    ld [$cb27], a                                 ; $68e7: $ea $27 $cb

jr_007_68ea:
    ld hl, $003c                                  ; $68ea: $21 $3c $00
    add hl, bc                                    ; $68ed: $09
    push hl                                       ; $68ee: $e5
    ld hl, $cb25                                  ; $68ef: $21 $25 $cb
    ld a, [hl+]                                   ; $68f2: $2a
    ld h, [hl]                                    ; $68f3: $66
    ld l, a                                       ; $68f4: $6f
    ld a, [hl]                                    ; $68f5: $7e
    or a                                          ; $68f6: $b7
    jr z, jr_007_6938                             ; $68f7: $28 $3f

    cp $11                                        ; $68f9: $fe $11
    jr z, jr_007_6903                             ; $68fb: $28 $06

    cp $12                                        ; $68fd: $fe $12
    jr z, jr_007_6903                             ; $68ff: $28 $02

    jr jr_007_6938                                ; $6901: $18 $35

jr_007_6903:
    ld de, $003c                                  ; $6903: $11 $3c $00
    add hl, de                                    ; $6906: $19
    pop de                                        ; $6907: $d1
    ldh [$c1], a                                  ; $6908: $e0 $c1
    ld a, $af                                     ; $690a: $3e $af
    ldh [$bd], a                                  ; $690c: $e0 $bd
    ld a, $4e                                     ; $690e: $3e $4e
    ldh [$be], a                                  ; $6910: $e0 $be
    call Call_000_3492                            ; $6912: $cd $92 $34
    jr c, jr_007_6939                             ; $6915: $38 $22

    ld hl, $0040                                  ; $6917: $21 $40 $00
    add hl, bc                                    ; $691a: $09
    push hl                                       ; $691b: $e5
    ld hl, $cb25                                  ; $691c: $21 $25 $cb
    ld a, [hl+]                                   ; $691f: $2a
    ld h, [hl]                                    ; $6920: $66
    ld l, a                                       ; $6921: $6f
    ld de, $0040                                  ; $6922: $11 $40 $00
    add hl, de                                    ; $6925: $19
    pop de                                        ; $6926: $d1
    ldh [$c1], a                                  ; $6927: $e0 $c1
    ld a, $af                                     ; $6929: $3e $af
    ldh [$bd], a                                  ; $692b: $e0 $bd
    ld a, $4e                                     ; $692d: $3e $4e
    ldh [$be], a                                  ; $692f: $e0 $be
    call Call_000_3492                            ; $6931: $cd $92 $34
    jr nc, jr_007_6956                            ; $6934: $30 $20

    jr jr_007_6939                                ; $6936: $18 $01

jr_007_6938:
    pop hl                                        ; $6938: $e1

jr_007_6939:
    ld hl, $cb25                                  ; $6939: $21 $25 $cb
    ld a, [hl+]                                   ; $693c: $2a
    ld h, [hl]                                    ; $693d: $66
    ld l, a                                       ; $693e: $6f
    ld de, $0051                                  ; $693f: $11 $51 $00
    add hl, de                                    ; $6942: $19
    ld a, l                                       ; $6943: $7d
    ld [$cb25], a                                 ; $6944: $ea $25 $cb
    ld a, h                                       ; $6947: $7c
    ld [$cb26], a                                 ; $6948: $ea $26 $cb
    ld a, [$cb27]                                 ; $694b: $fa $27 $cb
    dec a                                         ; $694e: $3d
    ld [$cb27], a                                 ; $694f: $ea $27 $cb
    jr nz, jr_007_68ea                            ; $6952: $20 $96

    scf                                           ; $6954: $37
    ret                                           ; $6955: $c9


jr_007_6956:
    xor a                                         ; $6956: $af
    ret                                           ; $6957: $c9


    ld hl, $0002                                  ; $6958: $21 $02 $00
    add hl, bc                                    ; $695b: $09
    ld a, [hl]                                    ; $695c: $7e
    cp $2a                                        ; $695d: $fe $2a
    jp Jump_000_0039                              ; $695f: $c3 $39 $00


    ld a, [$cbe7]                                 ; $6962: $fa $e7 $cb
    cp $04                                        ; $6965: $fe $04
    jr z, jr_007_698e                             ; $6967: $28 $25

    push bc                                       ; $6969: $c5
    ld e, a                                       ; $696a: $5f
    ld a, $7b                                     ; $696b: $3e $7b
    call Call_000_0a6f                            ; $696d: $cd $6f $0a
    ld b, h                                       ; $6970: $44
    ld c, l                                       ; $6971: $4d
    ld hl, $0006                                  ; $6972: $21 $06 $00
    add hl, bc                                    ; $6975: $09
    ld a, [hl+]                                   ; $6976: $2a
    ld d, [hl]                                    ; $6977: $56
    ld e, a                                       ; $6978: $5f
    ld hl, $cb88                                  ; $6979: $21 $88 $cb
    ld [hl], e                                    ; $697c: $73

Jump_007_697d:
    inc hl                                        ; $697d: $23
    ld [hl], d                                    ; $697e: $72
    ld hl, $0009                                  ; $697f: $21 $09 $00
    add hl, bc                                    ; $6982: $09
    ld a, [hl+]                                   ; $6983: $2a
    ld d, [hl]                                    ; $6984: $56
    ld e, a                                       ; $6985: $5f
    ld hl, $cb8a                                  ; $6986: $21 $8a $cb
    ld [hl], e                                    ; $6989: $73
    inc hl                                        ; $698a: $23
    ld [hl], d                                    ; $698b: $72
    pop bc                                        ; $698c: $c1
    ret                                           ; $698d: $c9


jr_007_698e:
    push bc                                       ; $698e: $c5
    ld bc, $cb88                                  ; $698f: $01 $88 $cb
    ld e, $01                                     ; $6992: $1e $01
    call Call_007_69a3                            ; $6994: $cd $a3 $69
    ld e, $02                                     ; $6997: $1e $02
    call Call_007_69a3                            ; $6999: $cd $a3 $69
    ld e, $03                                     ; $699c: $1e $03
    call Call_007_69a3                            ; $699e: $cd $a3 $69
    pop bc                                        ; $69a1: $c1
    ret                                           ; $69a2: $c9


Call_007_69a3:
    ld a, $7b                                     ; $69a3: $3e $7b
    push bc                                       ; $69a5: $c5
    call Call_000_0a6f                            ; $69a6: $cd $6f $0a
    ld bc, $0006                                  ; $69a9: $01 $06 $00
    add hl, bc                                    ; $69ac: $09
    pop bc                                        ; $69ad: $c1
    ld a, [hl+]                                   ; $69ae: $2a
    ld [bc], a                                    ; $69af: $02
    inc bc                                        ; $69b0: $03
    ld a, [hl+]                                   ; $69b1: $2a
    ld [bc], a                                    ; $69b2: $02
    inc bc                                        ; $69b3: $03
    inc hl                                        ; $69b4: $23
    ld a, [hl+]                                   ; $69b5: $2a
    ld [bc], a                                    ; $69b6: $02
    inc bc                                        ; $69b7: $03
    ld a, [hl+]                                   ; $69b8: $2a
    ld [bc], a                                    ; $69b9: $02
    inc bc                                        ; $69ba: $03
    ret                                           ; $69bb: $c9


    push bc                                       ; $69bc: $c5
    ld a, [$cbe7]                                 ; $69bd: $fa $e7 $cb
    ld e, a                                       ; $69c0: $5f
    ld a, $7b                                     ; $69c1: $3e $7b
    call Call_000_0a6f                            ; $69c3: $cd $6f $0a
    ld bc, $002c                                  ; $69c6: $01 $2c $00
    add hl, bc                                    ; $69c9: $09
    set 5, [hl]                                   ; $69ca: $cb $ee
    pop bc                                        ; $69cc: $c1

Jump_007_69cd:
    ret                                           ; $69cd: $c9


    push bc                                       ; $69ce: $c5
    ld a, [$cbe7]                                 ; $69cf: $fa $e7 $cb
    ld e, a                                       ; $69d2: $5f
    ld a, $7b                                     ; $69d3: $3e $7b
    call Call_000_0a6f                            ; $69d5: $cd $6f $0a
    ld bc, $002c                                  ; $69d8: $01 $2c $00
    add hl, bc                                    ; $69db: $09
    res 5, [hl]                                   ; $69dc: $cb $ae
    pop bc                                        ; $69de: $c1
    ret                                           ; $69df: $c9


    push bc                                       ; $69e0: $c5
    ld a, [$cbe7]                                 ; $69e1: $fa $e7 $cb
    ld e, a                                       ; $69e4: $5f
    ld a, $7b                                     ; $69e5: $3e $7b
    call Call_000_0a6f                            ; $69e7: $cd $6f $0a
    ld c, l                                       ; $69ea: $4d
    ld b, h                                       ; $69eb: $44
    ld hl, $000f                                  ; $69ec: $21 $0f $00
    add hl, bc                                    ; $69ef: $09
    ld bc, $ff06                                  ; $69f0: $01 $06 $ff
    ld [hl], c                                    ; $69f3: $71
    inc hl                                        ; $69f4: $23
    ld [hl], b                                    ; $69f5: $70
    pop bc                                        ; $69f6: $c1
    ret                                           ; $69f7: $c9


jr_007_69f8:
    push bc                                       ; $69f8: $c5
    ld a, [$cbe7]                                 ; $69f9: $fa $e7 $cb
    ld e, a                                       ; $69fc: $5f

Jump_007_69fd:
    ld a, $7b                                     ; $69fd: $3e $7b
    call Call_000_0a6f                            ; $69ff: $cd $6f $0a
    ld c, l                                       ; $6a02: $4d
    ld b, h                                       ; $6a03: $44
    ld hl, $000f                                  ; $6a04: $21 $0f $00
    add hl, bc                                    ; $6a07: $09
    ld bc, $002d                                  ; $6a08: $01 $2d $00
    ld [hl], c                                    ; $6a0b: $71
    inc hl                                        ; $6a0c: $23
    ld [hl], b                                    ; $6a0d: $70
    pop bc                                        ; $6a0e: $c1
    ret                                           ; $6a0f: $c9


    push bc                                       ; $6a10: $c5
    ld a, [$cbe7]                                 ; $6a11: $fa $e7 $cb
    ld e, a                                       ; $6a14: $5f
    ld a, $7b                                     ; $6a15: $3e $7b
    call Call_000_0a6f                            ; $6a17: $cd $6f $0a
    ld c, l                                       ; $6a1a: $4d
    ld b, h                                       ; $6a1b: $44
    ld hl, $000f                                  ; $6a1c: $21 $0f $00
    add hl, bc                                    ; $6a1f: $09
    ld bc, $ffec                                  ; $6a20: $01 $ec $ff
    ld [hl], c                                    ; $6a23: $71
    inc hl                                        ; $6a24: $23
    ld [hl], b                                    ; $6a25: $70
    pop bc                                        ; $6a26: $c1
    ret                                           ; $6a27: $c9


    ld a, [$cbe7]                                 ; $6a28: $fa $e7 $cb
    or a                                          ; $6a2b: $b7
    jr z, jr_007_69f8                             ; $6a2c: $28 $ca

    ld a, $01                                     ; $6a2e: $3e $01
    call Call_007_6a3e                            ; $6a30: $cd $3e $6a
    ld a, $02                                     ; $6a33: $3e $02
    call Call_007_6a3e                            ; $6a35: $cd $3e $6a
    ld a, $03                                     ; $6a38: $3e $03
    call Call_007_6a3e                            ; $6a3a: $cd $3e $6a

Jump_007_6a3d:
    ret                                           ; $6a3d: $c9


Call_007_6a3e:
    push bc                                       ; $6a3e: $c5
    ld e, a                                       ; $6a3f: $5f
    ld a, $7b                                     ; $6a40: $3e $7b
    call Call_000_0a6f                            ; $6a42: $cd $6f $0a
    jr nz, jr_007_6a53                            ; $6a45: $20 $0c

    ld c, l                                       ; $6a47: $4d
    ld b, h                                       ; $6a48: $44
    ld hl, $000f                                  ; $6a49: $21 $0f $00
    add hl, bc                                    ; $6a4c: $09
    ld bc, $ffb0                                  ; $6a4d: $01 $b0 $ff
    ld [hl], c                                    ; $6a50: $71
    inc hl                                        ; $6a51: $23
    ld [hl], b                                    ; $6a52: $70

jr_007_6a53:
    pop bc                                        ; $6a53: $c1
    ret                                           ; $6a54: $c9


    push bc                                       ; $6a55: $c5
    ld a, [$cbe7]                                 ; $6a56: $fa $e7 $cb
    ld e, a                                       ; $6a59: $5f
    ld a, $7b                                     ; $6a5a: $3e $7b
    call Call_000_0a6f                            ; $6a5c: $cd $6f $0a

Call_007_6a5f:
    ld c, l                                       ; $6a5f: $4d
    ld b, h                                       ; $6a60: $44
    ld hl, $000f                                  ; $6a61: $21 $0f $00
    add hl, bc                                    ; $6a64: $09
    xor a                                         ; $6a65: $af
    ld [hl+], a                                   ; $6a66: $22
    ld [hl+], a                                   ; $6a67: $22
    ld [hl+], a                                   ; $6a68: $22
    ld [hl], a                                    ; $6a69: $77
    pop bc                                        ; $6a6a: $c1
    ret                                           ; $6a6b: $c9


    ld a, [$cbe7]                                 ; $6a6c: $fa $e7 $cb
    ld e, a                                       ; $6a6f: $5f
    cp $04                                        ; $6a70: $fe $04
    jr z, jr_007_6ab3                             ; $6a72: $28 $3f

    push bc                                       ; $6a74: $c5
    ld a, $7b                                     ; $6a75: $3e $7b
    call Call_000_0a6f                            ; $6a77: $cd $6f $0a
    ld c, l                                       ; $6a7a: $4d
    ld b, h                                       ; $6a7b: $44
    ld hl, $000f                                  ; $6a7c: $21 $0f $00
    add hl, bc                                    ; $6a7f: $09
    xor a                                         ; $6a80: $af
    ld [hl+], a                                   ; $6a81: $22
    ld [hl+], a                                   ; $6a82: $22
    ld [hl+], a                                   ; $6a83: $22
    ld [hl+], a                                   ; $6a84: $22
    ld hl, $0031                                  ; $6a85: $21 $31 $00
    add hl, bc                                    ; $6a88: $09
    push bc                                       ; $6a89: $c5
    ld bc, $000a                                  ; $6a8a: $01 $0a $00
    call Call_000_112e                            ; $6a8d: $cd $2e $11
    pop bc                                        ; $6a90: $c1
    ld a, [$cb88]                                 ; $6a91: $fa $88 $cb
    ld e, a                                       ; $6a94: $5f
    ld a, [$cb89]                                 ; $6a95: $fa $89 $cb
    ld d, a                                       ; $6a98: $57
    ld hl, $0006                                  ; $6a99: $21 $06 $00
    add hl, bc                                    ; $6a9c: $09
    ld a, e                                       ; $6a9d: $7b
    ld [hl+], a                                   ; $6a9e: $22
    ld a, d                                       ; $6a9f: $7a
    ld [hl], a                                    ; $6aa0: $77
    ld a, [$cb8a]                                 ; $6aa1: $fa $8a $cb
    ld e, a                                       ; $6aa4: $5f
    ld a, [$cb8b]                                 ; $6aa5: $fa $8b $cb
    ld d, a                                       ; $6aa8: $57
    ld hl, $0009                                  ; $6aa9: $21 $09 $00
    add hl, bc                                    ; $6aac: $09
    ld a, e                                       ; $6aad: $7b
    ld [hl+], a                                   ; $6aae: $22
    ld a, d                                       ; $6aaf: $7a
    ld [hl], a                                    ; $6ab0: $77
    pop bc                                        ; $6ab1: $c1
    ret                                           ; $6ab2: $c9


jr_007_6ab3:
    push bc                                       ; $6ab3: $c5
    ld e, $01                                     ; $6ab4: $1e $01
    call Call_007_6ac5                            ; $6ab6: $cd $c5 $6a
    ld e, $02                                     ; $6ab9: $1e $02
    call Call_007_6ac5                            ; $6abb: $cd $c5 $6a
    ld e, $03                                     ; $6abe: $1e $03
    call Call_007_6ac5                            ; $6ac0: $cd $c5 $6a
    pop bc                                        ; $6ac3: $c1
    ret                                           ; $6ac4: $c9


Call_007_6ac5:
    ld hl, $cb88                                  ; $6ac5: $21 $88 $cb
    ld a, e                                       ; $6ac8: $7b
    dec a                                         ; $6ac9: $3d
    call Call_000_317d                            ; $6aca: $cd $7d $31
    push hl                                       ; $6acd: $e5
    ld a, $7b                                     ; $6ace: $3e $7b
    call Call_000_0a6f                            ; $6ad0: $cd $6f $0a
    ld c, l                                       ; $6ad3: $4d
    ld b, h                                       ; $6ad4: $44
    ld hl, $000f                                  ; $6ad5: $21 $0f $00
    add hl, bc                                    ; $6ad8: $09
    xor a                                         ; $6ad9: $af
    ld [hl+], a                                   ; $6ada: $22
    ld [hl+], a                                   ; $6adb: $22
    ld [hl+], a                                   ; $6adc: $22
    ld [hl+], a                                   ; $6add: $22
    pop hl                                        ; $6ade: $e1
    ld a, [hl+]                                   ; $6adf: $2a
    ld d, [hl]                                    ; $6ae0: $56
    ld e, a                                       ; $6ae1: $5f
    inc hl                                        ; $6ae2: $23
    push hl                                       ; $6ae3: $e5
    ld hl, $0006                                  ; $6ae4: $21 $06 $00
    add hl, bc                                    ; $6ae7: $09
    ld a, e                                       ; $6ae8: $7b
    ld [hl+], a                                   ; $6ae9: $22
    ld a, d                                       ; $6aea: $7a
    ld [hl], a                                    ; $6aeb: $77
    pop hl                                        ; $6aec: $e1
    ld a, [hl+]                                   ; $6aed: $2a
    ld d, [hl]                                    ; $6aee: $56
    ld e, a                                       ; $6aef: $5f
    ld hl, $0009                                  ; $6af0: $21 $09 $00
    add hl, bc                                    ; $6af3: $09
    ld a, e                                       ; $6af4: $7b
    ld [hl+], a                                   ; $6af5: $22
    ld a, d                                       ; $6af6: $7a
    ld [hl], a                                    ; $6af7: $77
    ret                                           ; $6af8: $c9


    nop                                           ; $6af9: $00
    ld b, $00                                     ; $6afa: $06 $00
    nop                                           ; $6afc: $00

Jump_007_6afd:
    nop                                           ; $6afd: $00
    inc b                                         ; $6afe: $04
    nop                                           ; $6aff: $00
    ret nz                                        ; $6b00: $c0

    dec b                                         ; $6b01: $05
    dec b                                         ; $6b02: $05
    push bc                                       ; $6b03: $c5
    ld a, [$cbe7]                                 ; $6b04: $fa $e7 $cb
    ld e, a                                       ; $6b07: $5f
    ld a, $7b                                     ; $6b08: $3e $7b
    call Call_000_0a6f                            ; $6b0a: $cd $6f $0a
    ld c, l                                       ; $6b0d: $4d
    ld b, h                                       ; $6b0e: $44
    ld hl, $002e                                  ; $6b0f: $21 $2e $00
    add hl, bc                                    ; $6b12: $09
    set 4, [hl]                                   ; $6b13: $cb $e6
    ld de, $6af9                                  ; $6b15: $11 $f9 $6a
    ld hl, $0031                                  ; $6b18: $21 $31 $00
    add hl, bc                                    ; $6b1b: $09
    push de                                       ; $6b1c: $d5
    ld d, h                                       ; $6b1d: $54
    ld e, l                                       ; $6b1e: $5d
    pop hl                                        ; $6b1f: $e1
    call Call_000_1239                            ; $6b20: $cd $39 $12
    ld hl, $0011                                  ; $6b23: $21 $11 $00
    add hl, bc                                    ; $6b26: $09
    ld bc, $ff38                                  ; $6b27: $01 $38 $ff
    ld [hl], c                                    ; $6b2a: $71
    inc hl                                        ; $6b2b: $23
    ld [hl], b                                    ; $6b2c: $70
    ld a, $3c                                     ; $6b2d: $3e $3c
    ld [$cdbb], a                                 ; $6b2f: $ea $bb $cd
    pop bc                                        ; $6b32: $c1
    ret                                           ; $6b33: $c9


    push bc                                       ; $6b34: $c5
    ld a, [$cbe7]                                 ; $6b35: $fa $e7 $cb
    ld e, a                                       ; $6b38: $5f
    ld a, $7b                                     ; $6b39: $3e $7b
    call Call_000_0a6f                            ; $6b3b: $cd $6f $0a
    ld c, l                                       ; $6b3e: $4d
    ld b, h                                       ; $6b3f: $44
    call Call_007_7297                            ; $6b40: $cd $97 $72
    ld e, a                                       ; $6b43: $5f
    ld hl, $6495                                  ; $6b44: $21 $95 $64

jr_007_6b47:
    ld a, [hl+]                                   ; $6b47: $2a
    cp e                                          ; $6b48: $bb
    jr z, jr_007_6b50                             ; $6b49: $28 $05

    cp $ff                                        ; $6b4b: $fe $ff
    jr nz, jr_007_6b47                            ; $6b4d: $20 $f8

    scf                                           ; $6b4f: $37

jr_007_6b50:
    pop bc                                        ; $6b50: $c1
    jp Jump_000_0039                              ; $6b51: $c3 $39 $00


    call Call_000_2e92                            ; $6b54: $cd $92 $2e
    push bc                                       ; $6b57: $c5
    push hl                                       ; $6b58: $e5
    ld a, [$cbe7]                                 ; $6b59: $fa $e7 $cb
    ld e, a                                       ; $6b5c: $5f
    ld a, $7b                                     ; $6b5d: $3e $7b
    call Call_000_0a6f                            ; $6b5f: $cd $6f $0a
    ld c, l                                       ; $6b62: $4d
    ld b, h                                       ; $6b63: $44
    pop de                                        ; $6b64: $d1
    ld hl, $0011                                  ; $6b65: $21 $11 $00
    add hl, bc                                    ; $6b68: $09
    ld [hl], e                                    ; $6b69: $73
    inc hl                                        ; $6b6a: $23
    ld [hl], d                                    ; $6b6b: $72
    pop bc                                        ; $6b6c: $c1
    ret                                           ; $6b6d: $c9


    push bc                                       ; $6b6e: $c5
    ld a, [$cbe7]                                 ; $6b6f: $fa $e7 $cb
    ld e, a                                       ; $6b72: $5f
    ld a, $7b                                     ; $6b73: $3e $7b
    call Call_000_0a6f                            ; $6b75: $cd $6f $0a
    ld c, l                                       ; $6b78: $4d
    ld b, h                                       ; $6b79: $44
    ld hl, $0011                                  ; $6b7a: $21 $11 $00

Jump_007_6b7d:
    add hl, bc                                    ; $6b7d: $09
    ld bc, $ffdd                                  ; $6b7e: $01 $dd $ff
    ld [hl], c                                    ; $6b81: $71
    inc hl                                        ; $6b82: $23
    ld [hl], b                                    ; $6b83: $70
    pop bc                                        ; $6b84: $c1
    ret                                           ; $6b85: $c9


    push bc                                       ; $6b86: $c5
    ld a, [$cbe7]                                 ; $6b87: $fa $e7 $cb
    ld e, a                                       ; $6b8a: $5f
    ld a, $7b                                     ; $6b8b: $3e $7b
    call Call_000_0a6f                            ; $6b8d: $cd $6f $0a
    ld c, l                                       ; $6b90: $4d
    ld b, h                                       ; $6b91: $44
    ld hl, $002c                                  ; $6b92: $21 $2c $00
    add hl, bc                                    ; $6b95: $09
    res 5, [hl]                                   ; $6b96: $cb $ae
    call Call_000_2e92                            ; $6b98: $cd $92 $2e
    call Call_000_0098                            ; $6b9b: $cd $98 $00
    ld hl, $000f                                  ; $6b9e: $21 $0f $00
    add hl, bc                                    ; $6ba1: $09
    ld [hl], e                                    ; $6ba2: $73
    inc hl                                        ; $6ba3: $23
    ld [hl], d                                    ; $6ba4: $72
    pop bc                                        ; $6ba5: $c1
    ld a, $0c                                     ; $6ba6: $3e $0c
    ld [$cdbb], a                                 ; $6ba8: $ea $bb $cd
    ret                                           ; $6bab: $c9


    push bc                                       ; $6bac: $c5
    ld a, [$cbe7]                                 ; $6bad: $fa $e7 $cb
    ld e, a                                       ; $6bb0: $5f
    ld a, $7b                                     ; $6bb1: $3e $7b
    call Call_000_0a6f                            ; $6bb3: $cd $6f $0a
    ld c, l                                       ; $6bb6: $4d
    ld b, h                                       ; $6bb7: $44
    ld hl, $002c                                  ; $6bb8: $21 $2c $00
    add hl, bc                                    ; $6bbb: $09
    set 5, [hl]                                   ; $6bbc: $cb $ee
    call Call_000_2e92                            ; $6bbe: $cd $92 $2e
    ld hl, $000f                                  ; $6bc1: $21 $0f $00
    add hl, bc                                    ; $6bc4: $09
    ld [hl], e                                    ; $6bc5: $73
    inc hl                                        ; $6bc6: $23
    ld [hl], d                                    ; $6bc7: $72
    ld hl, $0041                                  ; $6bc8: $21 $41 $00
    add hl, de                                    ; $6bcb: $19
    ld e, l                                       ; $6bcc: $5d
    ld d, h                                       ; $6bcd: $54
    call Call_000_2ea4                            ; $6bce: $cd $a4 $2e
    pop bc                                        ; $6bd1: $c1
    ld a, $0c                                     ; $6bd2: $3e $0c
    ld [$cdbb], a                                 ; $6bd4: $ea $bb $cd
    ret                                           ; $6bd7: $c9


    push bc                                       ; $6bd8: $c5
    ld a, [$cbe7]                                 ; $6bd9: $fa $e7 $cb
    ld e, a                                       ; $6bdc: $5f
    ld a, $7b                                     ; $6bdd: $3e $7b
    call Call_000_0a6f                            ; $6bdf: $cd $6f $0a
    ld bc, $000f                                  ; $6be2: $01 $0f $00
    add hl, bc                                    ; $6be5: $09
    xor a                                         ; $6be6: $af
    ld [hl+], a                                   ; $6be7: $22
    ld [hl+], a                                   ; $6be8: $22
    ld [hl+], a                                   ; $6be9: $22
    ld [hl], a                                    ; $6bea: $77
    pop bc                                        ; $6beb: $c1
    ret                                           ; $6bec: $c9


    push bc                                       ; $6bed: $c5
    ldh a, [rSVBK]                                ; $6bee: $f0 $70
    push af                                       ; $6bf0: $f5
    ld a, $02                                     ; $6bf1: $3e $02
    ldh [rSVBK], a                                ; $6bf3: $e0 $70
    ld de, $d28f                                  ; $6bf5: $11 $8f $d2
    ld hl, $d080                                  ; $6bf8: $21 $80 $d0
    ld c, $80                                     ; $6bfb: $0e $80

Jump_007_6bfd:
    call Call_000_114a                            ; $6bfd: $cd $4a $11
    xor a                                         ; $6c00: $af

Call_007_6c01:
Jump_007_6c01:
    ldh [$c1], a                                  ; $6c01: $e0 $c1
    ld a, $74                                     ; $6c03: $3e $74
    ldh [$bd], a                                  ; $6c05: $e0 $bd
    ld a, $7f                                     ; $6c07: $3e $7f
    ldh [$be], a                                  ; $6c09: $e0 $be
    call Call_000_34ae                            ; $6c0b: $cd $ae $34
    pop af                                        ; $6c0e: $f1
    ldh [rSVBK], a                                ; $6c0f: $e0 $70
    ldh [$c1], a                                  ; $6c11: $e0 $c1
    ld a, $87                                     ; $6c13: $3e $87
    ldh [$bd], a                                  ; $6c15: $e0 $bd
    ld a, $77                                     ; $6c17: $3e $77
    ldh [$be], a                                  ; $6c19: $e0 $be
    call Call_000_34a0                            ; $6c1b: $cd $a0 $34
    ld a, $10                                     ; $6c1e: $3e $10
    ld [$cdbb], a                                 ; $6c20: $ea $bb $cd
    pop bc                                        ; $6c23: $c1
    ret                                           ; $6c24: $c9


    push bc                                       ; $6c25: $c5
    ldh a, [rSVBK]                                ; $6c26: $f0 $70
    push af                                       ; $6c28: $f5
    ld a, $02                                     ; $6c29: $3e $02
    ldh [rSVBK], a                                ; $6c2b: $e0 $70
    ld de, $d000                                  ; $6c2d: $11 $00 $d0
    ld hl, $d28f                                  ; $6c30: $21 $8f $d2
    ld c, $80                                     ; $6c33: $0e $80
    call Call_000_114a                            ; $6c35: $cd $4a $11
    pop af                                        ; $6c38: $f1
    ldh [rSVBK], a                                ; $6c39: $e0 $70
    ldh [$c1], a                                  ; $6c3b: $e0 $c1

Jump_007_6c3d:
    ld a, $87                                     ; $6c3d: $3e $87
    ldh [$bd], a                                  ; $6c3f: $e0 $bd
    ld a, $77                                     ; $6c41: $3e $77
    ldh [$be], a                                  ; $6c43: $e0 $be
    call Call_000_34a0                            ; $6c45: $cd $a0 $34
    ld a, $10                                     ; $6c48: $3e $10
    ld [$cdbb], a                                 ; $6c4a: $ea $bb $cd
    pop bc                                        ; $6c4d: $c1
    ret                                           ; $6c4e: $c9


    push bc                                       ; $6c4f: $c5
    ld a, $01                                     ; $6c50: $3e $01
    ldh [$c1], a                                  ; $6c52: $e0 $c1
    ld a, $ea                                     ; $6c54: $3e $ea
    ldh [$bd], a                                  ; $6c56: $e0 $bd
    ld a, $77                                     ; $6c58: $3e $77
    ldh [$be], a                                  ; $6c5a: $e0 $be
    call Call_000_34a0                            ; $6c5c: $cd $a0 $34
    pop bc                                        ; $6c5f: $c1
    ret                                           ; $6c60: $c9


    push bc                                       ; $6c61: $c5
    ld hl, $7b45                                  ; $6c62: $21 $45 $7b
    ldh [$c1], a                                  ; $6c65: $e0 $c1
    ld a, $6d                                     ; $6c67: $3e $6d
    ldh [$bd], a                                  ; $6c69: $e0 $bd
    ld a, $7c                                     ; $6c6b: $3e $7c
    ldh [$be], a                                  ; $6c6d: $e0 $be
    call Call_000_34a0                            ; $6c6f: $cd $a0 $34
    pop bc                                        ; $6c72: $c1
    ret                                           ; $6c73: $c9


    push bc                                       ; $6c74: $c5
    ld hl, $7ace                                  ; $6c75: $21 $ce $7a
    ldh [$c1], a                                  ; $6c78: $e0 $c1
    ld a, $6d                                     ; $6c7a: $3e $6d
    ldh [$bd], a                                  ; $6c7c: $e0 $bd
    ld a, $7c                                     ; $6c7e: $3e $7c
    ldh [$be], a                                  ; $6c80: $e0 $be
    call Call_000_34a0                            ; $6c82: $cd $a0 $34
    xor a                                         ; $6c85: $af
    ldh [$c8], a                                  ; $6c86: $e0 $c8
    pop bc                                        ; $6c88: $c1
    ret                                           ; $6c89: $c9


    push bc                                       ; $6c8a: $c5
    ldh a, [rSVBK]                                ; $6c8b: $f0 $70
    push af                                       ; $6c8d: $f5
    ld a, $02                                     ; $6c8e: $3e $02
    ldh [rSVBK], a                                ; $6c90: $e0 $70
    ld hl, $d080                                  ; $6c92: $21 $80 $d0
    ld a, $ff                                     ; $6c95: $3e $ff
    ld bc, $0040                                  ; $6c97: $01 $40 $00
    call Call_000_112f                            ; $6c9a: $cd $2f $11
    call Call_000_258a                            ; $6c9d: $cd $8a $25
    pop af                                        ; $6ca0: $f1
    ldh [rSVBK], a                                ; $6ca1: $e0 $70
    pop bc                                        ; $6ca3: $c1
    ret                                           ; $6ca4: $c9


    push bc                                       ; $6ca5: $c5
    ldh a, [rSVBK]                                ; $6ca6: $f0 $70
    push af                                       ; $6ca8: $f5
    ld a, $02                                     ; $6ca9: $3e $02
    ldh [rSVBK], a                                ; $6cab: $e0 $70

Jump_007_6cad:
    ld hl, $d080                                  ; $6cad: $21 $80 $d0
    ld bc, $0020                                  ; $6cb0: $01 $20 $00

jr_007_6cb3:
    ld a, $e0                                     ; $6cb3: $3e $e0
    ld [hl+], a                                   ; $6cb5: $22
    ld a, $03                                     ; $6cb6: $3e $03
    ld [hl+], a                                   ; $6cb8: $22
    dec bc                                        ; $6cb9: $0b
    ld a, c                                       ; $6cba: $79
    or b                                          ; $6cbb: $b0
    jr nz, jr_007_6cb3                            ; $6cbc: $20 $f5

    call Call_000_258a                            ; $6cbe: $cd $8a $25
    pop af                                        ; $6cc1: $f1
    ldh [rSVBK], a                                ; $6cc2: $e0 $70
    pop bc                                        ; $6cc4: $c1
    ret                                           ; $6cc5: $c9


    push bc                                       ; $6cc6: $c5
    ldh a, [rSVBK]                                ; $6cc7: $f0 $70
    push af                                       ; $6cc9: $f5
    ld a, $02                                     ; $6cca: $3e $02
    ldh [rSVBK], a                                ; $6ccc: $e0 $70
    ld hl, $d000                                  ; $6cce: $21 $00 $d0
    ld de, $d080                                  ; $6cd1: $11 $80 $d0
    call Call_000_11f4                            ; $6cd4: $cd $f4 $11
    call Call_000_258a                            ; $6cd7: $cd $8a $25
    pop af                                        ; $6cda: $f1
    ldh [rSVBK], a                                ; $6cdb: $e0 $70
    pop bc                                        ; $6cdd: $c1
    ret                                           ; $6cde: $c9


    push bc                                       ; $6cdf: $c5
    ld de, $0000                                  ; $6ce0: $11 $00 $00
    ld hl, $0045                                  ; $6ce3: $21 $45 $00
    add hl, bc                                    ; $6ce6: $09
    ld a, $32                                     ; $6ce7: $3e $32
    ld [hl], a                                    ; $6ce9: $77
    ld [$cdbb], a                                 ; $6cea: $ea $bb $cd
    jr jr_007_6cf8                                ; $6ced: $18 $09

    push bc                                       ; $6cef: $c5
    ld a, [$cbf6]                                 ; $6cf0: $fa $f6 $cb
    ld e, a                                       ; $6cf3: $5f
    ld a, [$cbf7]                                 ; $6cf4: $fa $f7 $cb
    ld d, a                                       ; $6cf7: $57

jr_007_6cf8:
    ld a, [$cbe7]                                 ; $6cf8: $fa $e7 $cb
    ld hl, $6461                                  ; $6cfb: $21 $61 $64
    call Call_000_318c                            ; $6cfe: $cd $8c $31
    push bc                                       ; $6d01: $c5
    ld c, e                                       ; $6d02: $4b
    ld a, [hl+]                                   ; $6d03: $2a
    add d                                         ; $6d04: $82
    ld e, a                                       ; $6d05: $5f
    ld d, $00                                     ; $6d06: $16 $00
    ld a, $f8                                     ; $6d08: $3e $f8
    add [hl]                                      ; $6d0a: $86
    add c                                         ; $6d0b: $81
    ld l, a                                       ; $6d0c: $6f
    ld h, d                                       ; $6d0d: $62
    pop bc                                        ; $6d0e: $c1
    ldh [$c1], a                                  ; $6d0f: $e0 $c1
    ld a, $bb                                     ; $6d11: $3e $bb
    ldh [$bd], a                                  ; $6d13: $e0 $bd
    ld a, $6f                                     ; $6d15: $3e $6f
    ldh [$be], a                                  ; $6d17: $e0 $be
    call Call_000_34a0                            ; $6d19: $cd $a0 $34
    pop bc                                        ; $6d1c: $c1
    ret                                           ; $6d1d: $c9


    push bc                                       ; $6d1e: $c5
    call Call_000_2e8a                            ; $6d1f: $cd $8a $2e
    inc a                                         ; $6d22: $3c
    jr jr_007_6d29                                ; $6d23: $18 $04

    push bc                                       ; $6d25: $c5
    ld a, [$cbe7]                                 ; $6d26: $fa $e7 $cb

jr_007_6d29:
    ld hl, $6461                                  ; $6d29: $21 $61 $64
    call Call_000_318c                            ; $6d2c: $cd $8c $31
    ld a, [hl+]                                   ; $6d2f: $2a
    ld e, a                                       ; $6d30: $5f
    ld d, $00                                     ; $6d31: $16 $00
    push hl                                       ; $6d33: $e5
    ld hl, $0006                                  ; $6d34: $21 $06 $00
    add hl, bc                                    ; $6d37: $09
    ld [hl], e                                    ; $6d38: $73
    inc hl                                        ; $6d39: $23
    ld [hl], d                                    ; $6d3a: $72
    pop hl                                        ; $6d3b: $e1
    ld a, $f8                                     ; $6d3c: $3e $f8
    add [hl]                                      ; $6d3e: $86
    ld e, a                                       ; $6d3f: $5f
    ld hl, $0009                                  ; $6d40: $21 $09 $00
    add hl, bc                                    ; $6d43: $09
    ld [hl], e                                    ; $6d44: $73
    inc hl                                        ; $6d45: $23
    ld [hl], d                                    ; $6d46: $72
    pop bc                                        ; $6d47: $c1
    ret                                           ; $6d48: $c9


    push bc                                       ; $6d49: $c5
    ld a, [$cbe7]                                 ; $6d4a: $fa $e7 $cb
    ld hl, $6461                                  ; $6d4d: $21 $61 $64
    call Call_000_318c                            ; $6d50: $cd $8c $31
    ld a, [hl+]                                   ; $6d53: $2a
    ld e, a                                       ; $6d54: $5f
    ld d, $00                                     ; $6d55: $16 $00
    push hl                                       ; $6d57: $e5
    ld a, [$cbf6]                                 ; $6d58: $fa $f6 $cb
    ld l, a                                       ; $6d5b: $6f
    ld h, $00                                     ; $6d5c: $26 $00
    add hl, de                                    ; $6d5e: $19
    ld e, l                                       ; $6d5f: $5d
    ld d, h                                       ; $6d60: $54
    ld hl, $0006                                  ; $6d61: $21 $06 $00
    add hl, bc                                    ; $6d64: $09
    ld [hl], e                                    ; $6d65: $73
    inc hl                                        ; $6d66: $23
    ld [hl], d                                    ; $6d67: $72
    pop hl                                        ; $6d68: $e1
    ld a, $f8                                     ; $6d69: $3e $f8
    add [hl]                                      ; $6d6b: $86
    ld e, a                                       ; $6d6c: $5f
    ld a, [$cbf7]                                 ; $6d6d: $fa $f7 $cb
    ld l, a                                       ; $6d70: $6f
    ld h, $00                                     ; $6d71: $26 $00
    add hl, de                                    ; $6d73: $19
    ld e, l                                       ; $6d74: $5d
    ld d, h                                       ; $6d75: $54
    ld hl, $0009                                  ; $6d76: $21 $09 $00
    add hl, bc                                    ; $6d79: $09
    ld [hl], e                                    ; $6d7a: $73
    inc hl                                        ; $6d7b: $23
    ld [hl], d                                    ; $6d7c: $72

Jump_007_6d7d:
    pop bc                                        ; $6d7d: $c1
    ret                                           ; $6d7e: $c9


    ld a, [$cbe7]                                 ; $6d7f: $fa $e7 $cb
    ld hl, $646b                                  ; $6d82: $21 $6b $64
    call Call_007_7409                            ; $6d85: $cd $09 $74
    call Call_000_2e82                            ; $6d88: $cd $82 $2e
    ld e, a                                       ; $6d8b: $5f
    and $0f                                       ; $6d8c: $e6 $0f
    call Call_000_08ec                            ; $6d8e: $cd $ec $08
    ld d, $08                                     ; $6d91: $16 $08
    ld hl, $cb83                                  ; $6d93: $21 $83 $cb
    ld a, [hl+]                                   ; $6d96: $2a
    ld h, [hl]                                    ; $6d97: $66
    ld l, a                                       ; $6d98: $6f

Call_007_6d99:
    ld a, h                                       ; $6d99: $7c
    or a                                          ; $6d9a: $b7
    jr nz, jr_007_6da7                            ; $6d9b: $20 $0a

    ld a, l                                       ; $6d9d: $7d
    cp $0a                                        ; $6d9e: $fe $0a
    ret c                                         ; $6da0: $d8

    cp $64                                        ; $6da1: $fe $64
    jr nc, jr_007_6da7                            ; $6da3: $30 $02

    ld d, $04                                     ; $6da5: $16 $04

jr_007_6da7:
    ld a, e                                       ; $6da7: $7b
    and $f0                                       ; $6da8: $e6 $f0
    rra                                           ; $6daa: $1f
    cpl                                           ; $6dab: $2f
    inc a                                         ; $6dac: $3c
    add d                                         ; $6dad: $82
    ld hl, $0006                                  ; $6dae: $21 $06 $00
    add hl, bc                                    ; $6db1: $09
    add [hl]                                      ; $6db2: $86
    ld [hl], a                                    ; $6db3: $77
    ret                                           ; $6db4: $c9


    ld a, [$cbe6]                                 ; $6db5: $fa $e6 $cb
    ld hl, $69f8                                  ; $6db8: $21 $f8 $69
    jp Jump_007_6fc9                              ; $6dbb: $c3 $c9 $6f


    call Call_000_2e82                            ; $6dbe: $cd $82 $2e
    ld d, a                                       ; $6dc1: $57
    ld e, $03                                     ; $6dc2: $1e $03
    push bc                                       ; $6dc4: $c5
    ld d, $04                                     ; $6dc5: $16 $04
    ld e, $02                                     ; $6dc7: $1e $02
    ld hl, $624e                                  ; $6dc9: $21 $4e $62
    xor a                                         ; $6dcc: $af
    ldh [$c1], a                                  ; $6dcd: $e0 $c1
    ld a, $3d                                     ; $6dcf: $3e $3d
    ldh [$bd], a                                  ; $6dd1: $e0 $bd
    ld a, $25                                     ; $6dd3: $3e $25
    ldh [$be], a                                  ; $6dd5: $e0 $be
    call Call_000_34ba                            ; $6dd7: $cd $ba $34

Call_007_6dda:
    pop bc                                        ; $6dda: $c1
    ld de, $0ebc                                  ; $6ddb: $11 $bc $0e
    ldh [$c1], a                                  ; $6dde: $e0 $c1
    ld a, $b5                                     ; $6de0: $3e $b5
    ldh [$bd], a                                  ; $6de2: $e0 $bd

Jump_007_6de4:
    ld a, $63                                     ; $6de4: $3e $63
    ldh [$be], a                                  ; $6de6: $e0 $be
    call Call_000_3499                            ; $6de8: $cd $99 $34
    ld de, $69da                                  ; $6deb: $11 $da $69
    call Call_000_0a50                            ; $6dee: $cd $50 $0a
    ld a, $14                                     ; $6df1: $3e $14
    ld [$cdbb], a                                 ; $6df3: $ea $bb $cd
    ret                                           ; $6df6: $c9


    call Call_000_2e82                            ; $6df7: $cd $82 $2e
    ld d, a                                       ; $6dfa: $57
    ld e, $03                                     ; $6dfb: $1e $03

Jump_007_6dfd:
    ld a, [$cbe6]                                 ; $6dfd: $fa $e6 $cb
    ld hl, $6a70                                  ; $6e00: $21 $70 $6a
    jp Jump_007_6fc9                              ; $6e03: $c3 $c9 $6f


    inc bc                                        ; $6e06: $03
    ld a, [bc]                                    ; $6e07: $0a
    ld [$cbe6], a                                 ; $6e08: $ea $e6 $cb
    dec bc                                        ; $6e0b: $0b
    ret                                           ; $6e0c: $c9


    call Call_000_2e82                            ; $6e0d: $cd $82 $2e
    ld d, a                                       ; $6e10: $57
    ld e, $03                                     ; $6e11: $1e $03
    ld hl, $69da                                  ; $6e13: $21 $da $69
    call Call_000_35b2                            ; $6e16: $cd $b2 $35
    call Call_000_393e                            ; $6e19: $cd $3e $39
    ret                                           ; $6e1c: $c9


    ld a, [$cbe6]                                 ; $6e1d: $fa $e6 $cb
    ld hl, $6ae8                                  ; $6e20: $21 $e8 $6a
    jp Jump_007_6fc9                              ; $6e23: $c3 $c9 $6f


    ld de, $6bf1                                  ; $6e26: $11 $f1 $6b
    call Call_000_0a50                            ; $6e29: $cd $50 $0a
    ld a, $37                                     ; $6e2c: $3e $37
    ld [$cdbb], a                                 ; $6e2e: $ea $bb $cd
    ret                                           ; $6e31: $c9


    ld de, $6c45                                  ; $6e32: $11 $45 $6c
    call Call_000_0a50                            ; $6e35: $cd $50 $0a
    ld a, $12                                     ; $6e38: $3e $12
    ld [$cdbb], a                                 ; $6e3a: $ea $bb $cd

Jump_007_6e3d:
    ret                                           ; $6e3d: $c9


    ld hl, $6976                                  ; $6e3e: $21 $76 $69
    jp Jump_007_6fc6                              ; $6e41: $c3 $c6 $6f


    ld hl, $697e                                  ; $6e44: $21 $7e $69
    jp Jump_007_6fc6                              ; $6e47: $c3 $c6 $6f


    ldh a, [rSVBK]                                ; $6e4a: $f0 $70
    push af                                       ; $6e4c: $f5
    ld a, $05                                     ; $6e4d: $3e $05
    ldh [rSVBK], a                                ; $6e4f: $e0 $70
    call Call_007_7287                            ; $6e51: $cd $87 $72
    ld a, [hl]                                    ; $6e54: $7e
    or a                                          ; $6e55: $b7
    jr z, jr_007_6e5f                             ; $6e56: $28 $07

    dec a                                         ; $6e58: $3d
    jr z, jr_007_6e5f                             ; $6e59: $28 $04

    ld a, $23                                     ; $6e5b: $3e $23
    jr jr_007_6e61                                ; $6e5d: $18 $02

jr_007_6e5f:
    ld a, $20                                     ; $6e5f: $3e $20

jr_007_6e61:
    call Call_000_393e                            ; $6e61: $cd $3e $39
    ld de, $000a                                  ; $6e64: $11 $0a $00
    add hl, de                                    ; $6e67: $19
    bit 3, [hl]                                   ; $6e68: $cb $5e
    jr z, jr_007_6e9b                             ; $6e6a: $28 $2f

    push hl                                       ; $6e6c: $e5
    ld de, $000a                                  ; $6e6d: $11 $0a $00
    add hl, de                                    ; $6e70: $19
    bit 1, [hl]                                   ; $6e71: $cb $4e
    pop hl                                        ; $6e73: $e1
    jr nz, jr_007_6e9b                            ; $6e74: $20 $25

    res 3, [hl]                                   ; $6e76: $cb $9e
    set 0, [hl]                                   ; $6e78: $cb $c6
    push bc                                       ; $6e7a: $c5
    ld de, $0009                                  ; $6e7b: $11 $09 $00
    add hl, de                                    ; $6e7e: $19
    ld a, [hl]                                    ; $6e7f: $7e
    ld hl, $0001                                  ; $6e80: $21 $01 $00
    add hl, bc                                    ; $6e83: $09
    ld d, [hl]                                    ; $6e84: $56
    ld e, $01                                     ; $6e85: $1e $01
    ld hl, $6131                                  ; $6e87: $21 $31 $61
    ldh [$c1], a                                  ; $6e8a: $e0 $c1
    ld a, $3d                                     ; $6e8c: $3e $3d
    ldh [$bd], a                                  ; $6e8e: $e0 $bd
    ld a, $25                                     ; $6e90: $3e $25
    ldh [$be], a                                  ; $6e92: $e0 $be
    call Call_000_34ba                            ; $6e94: $cd $ba $34
    pop bc                                        ; $6e97: $c1
    call Call_007_6f7f                            ; $6e98: $cd $7f $6f

jr_007_6e9b:
    ldh [$bc], a                                  ; $6e9b: $e0 $bc
    pop af                                        ; $6e9d: $f1
    ldh [rSVBK], a                                ; $6e9e: $e0 $70
    ldh a, [$bc]                                  ; $6ea0: $f0 $bc
    ld hl, $6776                                  ; $6ea2: $21 $76 $67
    jp Jump_007_6fc6                              ; $6ea5: $c3 $c6 $6f


    push bc                                       ; $6ea8: $c5
    ldh a, [rSVBK]                                ; $6ea9: $f0 $70
    push af                                       ; $6eab: $f5
    ld a, $05                                     ; $6eac: $3e $05
    ldh [rSVBK], a                                ; $6eae: $e0 $70
    call Call_007_7287                            ; $6eb0: $cd $87 $72
    ld de, $000a                                  ; $6eb3: $11 $0a $00
    add hl, de                                    ; $6eb6: $19
    bit 3, [hl]                                   ; $6eb7: $cb $5e
    jr z, jr_007_6f1c                             ; $6eb9: $28 $61

    ld de, $000a                                  ; $6ebb: $11 $0a $00
    add hl, de                                    ; $6ebe: $19
    bit 1, [hl]                                   ; $6ebf: $cb $4e
    jr z, jr_007_6f1c                             ; $6ec1: $28 $59

    pop af                                        ; $6ec3: $f1
    ldh [rSVBK], a                                ; $6ec4: $e0 $70
    pop bc                                        ; $6ec6: $c1
    ld hl, $0025                                  ; $6ec7: $21 $25 $00
    add hl, bc                                    ; $6eca: $09
    xor a                                         ; $6ecb: $af
    ld [hl], a                                    ; $6ecc: $77
    call Call_000_2e82                            ; $6ecd: $cd $82 $2e
    ld l, $0b                                     ; $6ed0: $2e $0b
    ldh [$c1], a                                  ; $6ed2: $e0 $c1
    ld a, $60                                     ; $6ed4: $3e $60
    ldh [$bd], a                                  ; $6ed6: $e0 $bd
    ld a, $4c                                     ; $6ed8: $3e $4c
    ldh [$be], a                                  ; $6eda: $e0 $be
    call Call_000_34a0                            ; $6edc: $cd $a0 $34
    call Call_007_7287                            ; $6edf: $cd $87 $72
    ld de, $0005                                  ; $6ee2: $11 $05 $00
    add hl, de                                    ; $6ee5: $19
    ldh a, [rSVBK]                                ; $6ee6: $f0 $70
    push af                                       ; $6ee8: $f5
    ld a, $05                                     ; $6ee9: $3e $05
    ldh [rSVBK], a                                ; $6eeb: $e0 $70
    ld a, [hl+]                                   ; $6eed: $2a
    ld h, [hl]                                    ; $6eee: $66
    ld l, a                                       ; $6eef: $6f
    pop af                                        ; $6ef0: $f1
    ldh [rSVBK], a                                ; $6ef1: $e0 $70
    ld a, l                                       ; $6ef3: $7d
    or h                                          ; $6ef4: $b4
    jp nz, Jump_007_6787                          ; $6ef5: $c2 $87 $67

    call Call_000_2e82                            ; $6ef8: $cd $82 $2e
    or a                                          ; $6efb: $b7
    jr z, jr_007_6f0d                             ; $6efc: $28 $0f

    ld l, $03                                     ; $6efe: $2e $03
    ldh [$c1], a                                  ; $6f00: $e0 $c1
    ld a, $60                                     ; $6f02: $3e $60
    ldh [$bd], a                                  ; $6f04: $e0 $bd
    ld a, $4c                                     ; $6f06: $3e $4c
    ldh [$be], a                                  ; $6f08: $e0 $be
    jp Jump_000_34a0                              ; $6f0a: $c3 $a0 $34


jr_007_6f0d:
    ld l, $05                                     ; $6f0d: $2e $05
    ldh [$c1], a                                  ; $6f0f: $e0 $c1
    ld a, $60                                     ; $6f11: $3e $60
    ldh [$bd], a                                  ; $6f13: $e0 $bd
    ld a, $4c                                     ; $6f15: $3e $4c
    ldh [$be], a                                  ; $6f17: $e0 $be
    jp Jump_000_34a0                              ; $6f19: $c3 $a0 $34


jr_007_6f1c:
    pop af                                        ; $6f1c: $f1
    ldh [rSVBK], a                                ; $6f1d: $e0 $70
    pop bc                                        ; $6f1f: $c1
    ret                                           ; $6f20: $c9


    ldh a, [rSVBK]                                ; $6f21: $f0 $70
    push af                                       ; $6f23: $f5
    ld a, $06                                     ; $6f24: $3e $06
    ldh [rSVBK], a                                ; $6f26: $e0 $70
    xor a                                         ; $6f28: $af
    ld [$d6d4], a                                 ; $6f29: $ea $d4 $d6
    ldh a, [$d8]                                  ; $6f2c: $f0 $d8
    ld [$d6d1], a                                 ; $6f2e: $ea $d1 $d6
    ld a, $62                                     ; $6f31: $3e $62
    ldh [$d8], a                                  ; $6f33: $e0 $d8
    xor a                                         ; $6f35: $af
    ldh [$d9], a                                  ; $6f36: $e0 $d9
    ldh [$c1], a                                  ; $6f38: $e0 $c1
    ld a, $66                                     ; $6f3a: $3e $66
    ldh [$bd], a                                  ; $6f3c: $e0 $bd
    ld a, $5a                                     ; $6f3e: $3e $5a
    ldh [$be], a                                  ; $6f40: $e0 $be
    call Call_000_3492                            ; $6f42: $cd $92 $34
    ldh [$da], a                                  ; $6f45: $e0 $da
    ld [$d6d2], a                                 ; $6f47: $ea $d2 $d6
    pop af                                        ; $6f4a: $f1
    ldh [rSVBK], a                                ; $6f4b: $e0 $70
    ld a, $01                                     ; $6f4d: $3e $01
    ld [$c0c1], a                                 ; $6f4f: $ea $c1 $c0
    ret                                           ; $6f52: $c9


    ld hl, $c3cd                                  ; $6f53: $21 $cd $c3
    ld de, $c3c8                                  ; $6f56: $11 $c8 $c3
    call Call_000_1251                            ; $6f59: $cd $51 $12
    ld de, $c3cb                                  ; $6f5c: $11 $cb $c3
    call Call_000_1251                            ; $6f5f: $cd $51 $12
    ret                                           ; $6f62: $c9


    xor a                                         ; $6f63: $af
    ld [$cd43], a                                 ; $6f64: $ea $43 $cd
    push bc                                       ; $6f67: $c5
    ld bc, $c320                                  ; $6f68: $01 $20 $c3
    call Call_000_0e9d                            ; $6f6b: $cd $9d $0e
    ld a, $05                                     ; $6f6e: $3e $05
    call Call_000_2448                            ; $6f70: $cd $48 $24
    pop bc                                        ; $6f73: $c1
    ret                                           ; $6f74: $c9


    ld hl, $6872                                  ; $6f75: $21 $72 $68
    jr jr_007_6fc6                                ; $6f78: $18 $4c

    ld hl, $687a                                  ; $6f7a: $21 $7a $68

Jump_007_6f7d:
    jr jr_007_6fc6                                ; $6f7d: $18 $47

Call_007_6f7f:
    call Call_007_7297                            ; $6f7f: $cd $97 $72
    or a                                          ; $6f82: $b7
    jr z, jr_007_6f9f                             ; $6f83: $28 $1a

    cp $01                                        ; $6f85: $fe $01
    jr z, jr_007_6f9f                             ; $6f87: $28 $16

    cp $1b                                        ; $6f89: $fe $1b
    jr z, jr_007_6f9f                             ; $6f8b: $28 $12

    cp $2b                                        ; $6f8d: $fe $2b
    jr z, jr_007_6f98                             ; $6f8f: $28 $07

    ld de, $68f5                                  ; $6f91: $11 $f5 $68
    call Call_000_0a50                            ; $6f94: $cd $50 $0a
    ret                                           ; $6f97: $c9


jr_007_6f98:
    ld de, $6ae5                                  ; $6f98: $11 $e5 $6a
    call Call_000_0a50                            ; $6f9b: $cd $50 $0a
    ret                                           ; $6f9e: $c9


jr_007_6f9f:
    ld de, $6a15                                  ; $6f9f: $11 $15 $6a
    call Call_000_0a50                            ; $6fa2: $cd $50 $0a
    ret                                           ; $6fa5: $c9


    ld hl, $667a                                  ; $6fa6: $21 $7a $66
    call Call_007_7297                            ; $6fa9: $cd $97 $72
    cp $3e                                        ; $6fac: $fe $3e
    jr nz, jr_007_6fc9                            ; $6fae: $20 $19

    push af                                       ; $6fb0: $f5
    push bc                                       ; $6fb1: $c5
    push hl                                       ; $6fb2: $e5
    ld a, $01                                     ; $6fb3: $3e $01
    ld [$c301], a                                 ; $6fb5: $ea $01 $c3
    ld a, $1c                                     ; $6fb8: $3e $1c
    ldh [$9b], a                                  ; $6fba: $e0 $9b
    ld a, $7e                                     ; $6fbc: $3e $7e
    call Call_000_03a0                            ; $6fbe: $cd $a0 $03
    pop hl                                        ; $6fc1: $e1
    pop bc                                        ; $6fc2: $c1
    pop af                                        ; $6fc3: $f1
    jr jr_007_6fc9                                ; $6fc4: $18 $03

Jump_007_6fc6:
jr_007_6fc6:
    call Call_007_7297                            ; $6fc6: $cd $97 $72

Jump_007_6fc9:
jr_007_6fc9:
    call Call_000_317d                            ; $6fc9: $cd $7d $31
    ldh [$c1], a                                  ; $6fcc: $e0 $c1
    ld a, $aa                                     ; $6fce: $3e $aa
    ldh [$bd], a                                  ; $6fd0: $e0 $bd
    ld a, $6b                                     ; $6fd2: $3e $6b
    ldh [$be], a                                  ; $6fd4: $e0 $be
    call Call_000_34a0                            ; $6fd6: $cd $a0 $34
    push hl                                       ; $6fd9: $e5
    call Call_000_0a50                            ; $6fda: $cd $50 $0a
    ldh [$c1], a                                  ; $6fdd: $e0 $c1
    ld a, $25                                     ; $6fdf: $3e $25
    ldh [$bd], a                                  ; $6fe1: $e0 $bd
    ld a, $2e                                     ; $6fe3: $3e $2e
    ldh [$be], a                                  ; $6fe5: $e0 $be
    call Call_000_34ba                            ; $6fe7: $cd $ba $34
    pop de                                        ; $6fea: $d1
    ld a, e                                       ; $6feb: $7b
    ld [$cdbb], a                                 ; $6fec: $ea $bb $cd
    ret                                           ; $6fef: $c9


    ldh [$c1], a                                  ; $6ff0: $e0 $c1
    ld a, $7f                                     ; $6ff2: $3e $7f
    ldh [$bd], a                                  ; $6ff4: $e0 $bd
    ld a, $47                                     ; $6ff6: $3e $47
    ldh [$be], a                                  ; $6ff8: $e0 $be
    call Call_000_34a0                            ; $6ffa: $cd $a0 $34
    ldh [$c1], a                                  ; $6ffd: $e0 $c1
    ld a, $3e                                     ; $6fff: $3e $3e

Call_007_7001:
Jump_007_7001:
    ldh [$bd], a                                  ; $7001: $e0 $bd
    ld a, $47                                     ; $7003: $3e $47
    ldh [$be], a                                  ; $7005: $e0 $be
    call Call_000_34a0                            ; $7007: $cd $a0 $34
    ld hl, $cc12                                  ; $700a: $21 $12 $cc
    ld a, [hl+]                                   ; $700d: $2a
    ld h, [hl]                                    ; $700e: $66
    ld l, a                                       ; $700f: $6f
    call Call_000_3911                            ; $7010: $cd $11 $39
    ld a, $22                                     ; $7013: $3e $22
    jp Jump_000_2448                              ; $7015: $c3 $48 $24


    xor a                                         ; $7018: $af
    ld [$cc05], a                                 ; $7019: $ea $05 $cc
    ldh [$c1], a                                  ; $701c: $e0 $c1
    ld a, $3e                                     ; $701e: $3e $3e
    ldh [$bd], a                                  ; $7020: $e0 $bd
    ld a, $47                                     ; $7022: $3e $47
    ldh [$be], a                                  ; $7024: $e0 $be
    call Call_000_34a0                            ; $7026: $cd $a0 $34
    ld a, $02                                     ; $7029: $3e $02
    ld [$c0bb], a                                 ; $702b: $ea $bb $c0
    ld hl, $cc12                                  ; $702e: $21 $12 $cc
    ld a, [hl+]                                   ; $7031: $2a
    ld h, [hl]                                    ; $7032: $66
    ld l, a                                       ; $7033: $6f
    call Call_000_3911                            ; $7034: $cd $11 $39
    ld a, $0b                                     ; $7037: $3e $0b
    jp Jump_000_2448                              ; $7039: $c3 $48 $24


    ret                                           ; $703c: $c9


Jump_007_703d:
    xor a                                         ; $703d: $af
    ld [$cc05], a                                 ; $703e: $ea $05 $cc
    ldh [$c1], a                                  ; $7041: $e0 $c1
    ld a, $3e                                     ; $7043: $3e $3e
    ldh [$bd], a                                  ; $7045: $e0 $bd
    ld a, $47                                     ; $7047: $3e $47
    ldh [$be], a                                  ; $7049: $e0 $be
    call Call_000_34a0                            ; $704b: $cd $a0 $34
    ld a, [$cc06]                                 ; $704e: $fa $06 $cc
    bit 6, a                                      ; $7051: $cb $77
    jr z, jr_007_7074                             ; $7053: $28 $1f

    ld a, [$cc07]                                 ; $7055: $fa $07 $cc
    ldh [$c1], a                                  ; $7058: $e0 $c1
    ld a, $4b                                     ; $705a: $3e $4b
    ldh [$bd], a                                  ; $705c: $e0 $bd
    ld a, $6a                                     ; $705e: $3e $6a
    ldh [$be], a                                  ; $7060: $e0 $be
    call Call_000_34a7                            ; $7062: $cd $a7 $34
    ld a, $5e                                     ; $7065: $3e $5e

Call_007_7067:
    ldh [$c1], a                                  ; $7067: $e0 $c1
    ld a, $7f                                     ; $7069: $3e $7f
    ldh [$bd], a                                  ; $706b: $e0 $bd
    ld a, $6a                                     ; $706d: $3e $6a
    ldh [$be], a                                  ; $706f: $e0 $be
    call Call_000_34a7                            ; $7071: $cd $a7 $34

jr_007_7074:
    ld [$cc06], a                                 ; $7074: $ea $06 $cc
    ldh a, [rSVBK]                                ; $7077: $f0 $70
    push af                                       ; $7079: $f5
    ld a, $06                                     ; $707a: $3e $06
    ldh [rSVBK], a                                ; $707c: $e0 $70
    ld a, [$d5d5]                                 ; $707e: $fa $d5 $d5
    ld d, a                                       ; $7081: $57
    cp $03                                        ; $7082: $fe $03
    jr z, jr_007_70e2                             ; $7084: $28 $5c

    cp $04                                        ; $7086: $fe $04
    jr z, jr_007_70f0                             ; $7088: $28 $66

    cp $43                                        ; $708a: $fe $43
    jp z, Jump_007_7114                           ; $708c: $ca $14 $71

    cp $48                                        ; $708f: $fe $48
    jp z, Jump_007_719a                           ; $7091: $ca $9a $71

    ld hl, $6481                                  ; $7094: $21 $81 $64

jr_007_7097:
    ld a, [hl+]                                   ; $7097: $2a
    cp d                                          ; $7098: $ba
    jp z, Jump_007_71a9                           ; $7099: $ca $a9 $71

    cp $ff                                        ; $709c: $fe $ff
    jr nz, jr_007_7097                            ; $709e: $20 $f7

    ld hl, $6489                                  ; $70a0: $21 $89 $64

jr_007_70a3:
    ld a, [hl+]                                   ; $70a3: $2a
    cp d                                          ; $70a4: $ba
    jr z, jr_007_70ad                             ; $70a5: $28 $06

    cp $ff                                        ; $70a7: $fe $ff
    jr nz, jr_007_70a3                            ; $70a9: $20 $f8

    jr jr_007_70b2                                ; $70ab: $18 $05

Jump_007_70ad:
jr_007_70ad:
    ld a, $02                                     ; $70ad: $3e $02
    jp Jump_007_71c0                              ; $70af: $c3 $c0 $71


Jump_007_70b2:
jr_007_70b2:
    ld a, $35                                     ; $70b2: $3e $35
    ldh [$da], a                                  ; $70b4: $e0 $da
    ld [$d6d2], a                                 ; $70b6: $ea $d2 $d6
    ld a, $2f                                     ; $70b9: $3e $2f
    ldh [$d8], a                                  ; $70bb: $e0 $d8

Jump_007_70bd:
    ld [$d6d1], a                                 ; $70bd: $ea $d1 $d6
    ld a, $07                                     ; $70c0: $3e $07
    ldh [$d9], a                                  ; $70c2: $e0 $d9
    ld hl, $cde1                                  ; $70c4: $21 $e1 $cd
    ld a, [hl+]                                   ; $70c7: $2a
    ld h, [hl]                                    ; $70c8: $66
    ld l, a                                       ; $70c9: $6f
    ld [$cde5], a                                 ; $70ca: $ea $e5 $cd
    ld a, h                                       ; $70cd: $7c
    ld [$cde6], a                                 ; $70ce: $ea $e6 $cd
    ld hl, $cde3                                  ; $70d1: $21 $e3 $cd
    ld a, [hl+]                                   ; $70d4: $2a
    ld h, [hl]                                    ; $70d5: $66
    ld l, a                                       ; $70d6: $6f
    ld [$cde7], a                                 ; $70d7: $ea $e7 $cd
    ld a, h                                       ; $70da: $7c
    ld [$cde8], a                                 ; $70db: $ea $e8 $cd
    xor a                                         ; $70de: $af
    jp Jump_007_71c0                              ; $70df: $c3 $c0 $71


jr_007_70e2:
    ld hl, $0001                                  ; $70e2: $21 $01 $00
    ld a, l                                       ; $70e5: $7d
    ld [$cde5], a                                 ; $70e6: $ea $e5 $cd
    ld a, h                                       ; $70e9: $7c
    ld [$cde6], a                                 ; $70ea: $ea $e6 $cd
    jp Jump_007_70ad                              ; $70ed: $c3 $ad $70


jr_007_70f0:
    ld a, $44                                     ; $70f0: $3e $44
    ldh [$da], a                                  ; $70f2: $e0 $da
    ld [$d6d2], a                                 ; $70f4: $ea $d2 $d6
    ld a, $0e                                     ; $70f7: $3e $0e
    ld [$d6d1], a                                 ; $70f9: $ea $d1 $d6
    ldh [$d8], a                                  ; $70fc: $e0 $d8
    ld a, $00                                     ; $70fe: $3e $00
    ldh [$d9], a                                  ; $7100: $e0 $d9
    ld [$cd43], a                                 ; $7102: $ea $43 $cd
    ld hl, $0001                                  ; $7105: $21 $01 $00
    ld a, l                                       ; $7108: $7d
    ld [$cde5], a                                 ; $7109: $ea $e5 $cd
    ld a, h                                       ; $710c: $7c
    ld [$cde6], a                                 ; $710d: $ea $e6 $cd
    xor a                                         ; $7110: $af
    jp Jump_007_71c0                              ; $7111: $c3 $c0 $71


Jump_007_7114:
    ldh a, [$d8]                                  ; $7114: $f0 $d8
    cp $18                                        ; $7116: $fe $18
    jr z, jr_007_7134                             ; $7118: $28 $1a

    cp $19                                        ; $711a: $fe $19
    jr z, jr_007_7134                             ; $711c: $28 $16

    cp $1a                                        ; $711e: $fe $1a
    jr z, jr_007_7134                             ; $7120: $28 $12

    cp $1b                                        ; $7122: $fe $1b
    jr z, jr_007_7134                             ; $7124: $28 $0e

    cp $1c                                        ; $7126: $fe $1c
    jr z, jr_007_7134                             ; $7128: $28 $0a

    cp $1d                                        ; $712a: $fe $1d
    jr z, jr_007_7134                             ; $712c: $28 $06

    ld hl, $6481                                  ; $712e: $21 $81 $64

Call_007_7131:
    jp Jump_007_70b2                              ; $7131: $c3 $b2 $70


jr_007_7134:
    ld a, [$d5da]                                 ; $7134: $fa $da $d5
    cp $0a                                        ; $7137: $fe $0a
    jr c, jr_007_716b                             ; $7139: $38 $30

    ld a, $1d                                     ; $713b: $3e $1d

Jump_007_713d:
    ldh [$da], a                                  ; $713d: $e0 $da
    ld [$d6d2], a                                 ; $713f: $ea $d2 $d6
    ld a, $1d                                     ; $7142: $3e $1d
    ldh [$d8], a                                  ; $7144: $e0 $d8
    ld [$d6d1], a                                 ; $7146: $ea $d1 $d6
    ld a, $03                                     ; $7149: $3e $03
    ldh [$d9], a                                  ; $714b: $e0 $d9
    ld hl, $cde1                                  ; $714d: $21 $e1 $cd
    ld a, [hl+]                                   ; $7150: $2a
    ld h, [hl]                                    ; $7151: $66
    ld l, a                                       ; $7152: $6f
    ld [$cde5], a                                 ; $7153: $ea $e5 $cd
    ld a, h                                       ; $7156: $7c
    ld [$cde6], a                                 ; $7157: $ea $e6 $cd
    ld hl, $cde3                                  ; $715a: $21 $e3 $cd
    ld a, [hl+]                                   ; $715d: $2a
    ld h, [hl]                                    ; $715e: $66
    ld l, a                                       ; $715f: $6f
    ld [$cde7], a                                 ; $7160: $ea $e7 $cd
    ld a, h                                       ; $7163: $7c
    ld [$cde8], a                                 ; $7164: $ea $e8 $cd
    xor a                                         ; $7167: $af
    jp Jump_007_71c0                              ; $7168: $c3 $c0 $71


jr_007_716b:
    ld a, $18                                     ; $716b: $3e $18
    ldh [$da], a                                  ; $716d: $e0 $da
    ld [$d6d2], a                                 ; $716f: $ea $d2 $d6
    ld a, $51                                     ; $7172: $3e $51
    ldh [$d8], a                                  ; $7174: $e0 $d8
    ld [$d6d1], a                                 ; $7176: $ea $d1 $d6
    ld a, $03                                     ; $7179: $3e $03
    ldh [$d9], a                                  ; $717b: $e0 $d9

Jump_007_717d:
    ld hl, $cde1                                  ; $717d: $21 $e1 $cd
    ld a, [hl+]                                   ; $7180: $2a
    ld h, [hl]                                    ; $7181: $66
    ld l, a                                       ; $7182: $6f
    ld [$cde5], a                                 ; $7183: $ea $e5 $cd
    ld a, h                                       ; $7186: $7c
    ld [$cde6], a                                 ; $7187: $ea $e6 $cd
    ld hl, $cde3                                  ; $718a: $21 $e3 $cd
    ld a, [hl+]                                   ; $718d: $2a
    ld h, [hl]                                    ; $718e: $66

Call_007_718f:
    ld l, a                                       ; $718f: $6f
    ld [$cde7], a                                 ; $7190: $ea $e7 $cd
    ld a, h                                       ; $7193: $7c
    ld [$cde8], a                                 ; $7194: $ea $e8 $cd
    xor a                                         ; $7197: $af
    jr jr_007_71c0                                ; $7198: $18 $26

Jump_007_719a:
    ldh [$c1], a                                  ; $719a: $e0 $c1
    ld a, $29                                     ; $719c: $3e $29
    ldh [$bd], a                                  ; $719e: $e0 $bd
    ld a, $79                                     ; $71a0: $3e $79
    ldh [$be], a                                  ; $71a2: $e0 $be
    call Call_000_34a0                            ; $71a4: $cd $a0 $34
    jr jr_007_71c0                                ; $71a7: $18 $17

Jump_007_71a9:
    ld a, $33                                     ; $71a9: $3e $33
    ldh [$da], a                                  ; $71ab: $e0 $da
    ld [$d6d2], a                                 ; $71ad: $ea $d2 $d6
    xor a                                         ; $71b0: $af
    ld [$d6d1], a                                 ; $71b1: $ea $d1 $d6
    ldh [$d8], a                                  ; $71b4: $e0 $d8
    ld a, $05                                     ; $71b6: $3e $05
    ldh [$d9], a                                  ; $71b8: $e0 $d9
    ld a, $01                                     ; $71ba: $3e $01
    ld [$cde5], a                                 ; $71bc: $ea $e5 $cd
    xor a                                         ; $71bf: $af

Jump_007_71c0:
jr_007_71c0:
    ldh [$bc], a                                  ; $71c0: $e0 $bc
    pop af                                        ; $71c2: $f1
    ldh [rSVBK], a                                ; $71c3: $e0 $70
    ldh a, [$bc]                                  ; $71c5: $f0 $bc
    ld [$c0bb], a                                 ; $71c7: $ea $bb $c0
    ld hl, $cc12                                  ; $71ca: $21 $12 $cc
    ld a, [hl+]                                   ; $71cd: $2a
    ld h, [hl]                                    ; $71ce: $66
    ld l, a                                       ; $71cf: $6f
    call Call_000_3911                            ; $71d0: $cd $11 $39
    ld a, $0b                                     ; $71d3: $3e $0b
    jp Jump_000_2448                              ; $71d5: $c3 $48 $24


    call Call_000_2e82                            ; $71d8: $cd $82 $2e
    ld l, $00                                     ; $71db: $2e $00
    ldh [$c1], a                                  ; $71dd: $e0 $c1
    ld a, $60                                     ; $71df: $3e $60
    ldh [$bd], a                                  ; $71e1: $e0 $bd
    ld a, $4c                                     ; $71e3: $3e $4c
    ldh [$be], a                                  ; $71e5: $e0 $be
    jp Jump_000_34a0                              ; $71e7: $c3 $a0 $34


    xor a                                         ; $71ea: $af
    ld [$cb86], a                                 ; $71eb: $ea $86 $cb
    ldh [$c1], a                                  ; $71ee: $e0 $c1
    ld a, $b4                                     ; $71f0: $3e $b4
    ldh [$bd], a                                  ; $71f2: $e0 $bd
    ld a, $4d                                     ; $71f4: $3e $4d
    ldh [$be], a                                  ; $71f6: $e0 $be
    jp Jump_000_34a0                              ; $71f8: $c3 $a0 $34


    ld a, [$cbe2]                                 ; $71fb: $fa $e2 $cb
    ldh [$c1], a                                  ; $71fe: $e0 $c1
    ld a, $47                                     ; $7200: $3e $47
    ldh [$bd], a                                  ; $7202: $e0 $bd
    ld a, $4c                                     ; $7204: $3e $4c
    ldh [$be], a                                  ; $7206: $e0 $be
    call Call_000_34a0                            ; $7208: $cd $a0 $34
    cp $09                                        ; $720b: $fe $09
    jr z, jr_007_7221                             ; $720d: $28 $12

    ld a, [$cbe2]                                 ; $720f: $fa $e2 $cb
    ld l, $07                                     ; $7212: $2e $07
    ldh [$c1], a                                  ; $7214: $e0 $c1
    ld a, $60                                     ; $7216: $3e $60
    ldh [$bd], a                                  ; $7218: $e0 $bd
    ld a, $4c                                     ; $721a: $3e $4c
    ldh [$be], a                                  ; $721c: $e0 $be
    jp Jump_000_34a0                              ; $721e: $c3 $a0 $34


jr_007_7221:
    ld a, [$cbe2]                                 ; $7221: $fa $e2 $cb
    ld l, $0a                                     ; $7224: $2e $0a
    ldh [$c1], a                                  ; $7226: $e0 $c1
    ld a, $60                                     ; $7228: $3e $60
    ldh [$bd], a                                  ; $722a: $e0 $bd
    ld a, $4c                                     ; $722c: $3e $4c
    ldh [$be], a                                  ; $722e: $e0 $be
    jp Jump_000_34a0                              ; $7230: $c3 $a0 $34


    push bc                                       ; $7233: $c5
    ld c, $00                                     ; $7234: $0e $00
    ldh [$c1], a                                  ; $7236: $e0 $c1
    ld a, $96                                     ; $7238: $3e $96
    ldh [$bd], a                                  ; $723a: $e0 $bd
    ld a, $48                                     ; $723c: $3e $48
    ldh [$be], a                                  ; $723e: $e0 $be
    call Call_000_34a0                            ; $7240: $cd $a0 $34
    pop bc                                        ; $7243: $c1
    ret                                           ; $7244: $c9


    push bc                                       ; $7245: $c5
    ld a, [$cbe6]                                 ; $7246: $fa $e6 $cb
    ldh [$c1], a                                  ; $7249: $e0 $c1
    ld a, $78                                     ; $724b: $3e $78
    ldh [$bd], a                                  ; $724d: $e0 $bd
    ld a, $46                                     ; $724f: $3e $46
    ldh [$be], a                                  ; $7251: $e0 $be
    call Call_000_34a0                            ; $7253: $cd $a0 $34
    ld c, a                                       ; $7256: $4f
    ldh [$c1], a                                  ; $7257: $e0 $c1
    ld a, $96                                     ; $7259: $3e $96
    ldh [$bd], a                                  ; $725b: $e0 $bd
    ld a, $48                                     ; $725d: $3e $48
    ldh [$be], a                                  ; $725f: $e0 $be
    call Call_000_34a0                            ; $7261: $cd $a0 $34
    pop bc                                        ; $7264: $c1
    ret                                           ; $7265: $c9


    push bc                                       ; $7266: $c5
    ld a, [$cbe6]                                 ; $7267: $fa $e6 $cb
    ldh [$c1], a                                  ; $726a: $e0 $c1
    ld a, $78                                     ; $726c: $3e $78
    ldh [$bd], a                                  ; $726e: $e0 $bd
    ld a, $46                                     ; $7270: $3e $46
    ldh [$be], a                                  ; $7272: $e0 $be
    call Call_000_34a0                            ; $7274: $cd $a0 $34
    ld c, a                                       ; $7277: $4f
    ldh [$c1], a                                  ; $7278: $e0 $c1
    ld a, $ab                                     ; $727a: $3e $ab
    ldh [$bd], a                                  ; $727c: $e0 $bd
    ld a, $48                                     ; $727e: $3e $48
    ldh [$be], a                                  ; $7280: $e0 $be
    call Call_000_34a0                            ; $7282: $cd $a0 $34
    pop bc                                        ; $7285: $c1
    ret                                           ; $7286: $c9


Call_007_7287:
    call Call_000_2e82                            ; $7287: $cd $82 $2e
    ldh [$c1], a                                  ; $728a: $e0 $c1
    ld a, $e8                                     ; $728c: $3e $e8
    ldh [$bd], a                                  ; $728e: $e0 $bd
    ld a, $4d                                     ; $7290: $3e $4d
    ldh [$be], a                                  ; $7292: $e0 $be
    jp Jump_000_34a0                              ; $7294: $c3 $a0 $34


Call_007_7297:
    ldh a, [rSVBK]                                ; $7297: $f0 $70
    push af                                       ; $7299: $f5
    ld a, $05                                     ; $729a: $3e $05
    ldh [rSVBK], a                                ; $729c: $e0 $70
    push hl                                       ; $729e: $e5
    call Call_007_7287                            ; $729f: $cd $87 $72
    ld a, [hl]                                    ; $72a2: $7e
    pop hl                                        ; $72a3: $e1
    ldh [$bc], a                                  ; $72a4: $e0 $bc
    pop af                                        ; $72a6: $f1
    ldh [rSVBK], a                                ; $72a7: $e0 $70
    ldh a, [$bc]                                  ; $72a9: $f0 $bc
    ret                                           ; $72ab: $c9


    call Call_007_7287                            ; $72ac: $cd $87 $72
    ld de, $0005                                  ; $72af: $11 $05 $00
    add hl, de                                    ; $72b2: $19
    ldh a, [rSVBK]                                ; $72b3: $f0 $70
    push af                                       ; $72b5: $f5
    ld a, $05                                     ; $72b6: $3e $05
    ldh [rSVBK], a                                ; $72b8: $e0 $70
    ld a, [hl+]                                   ; $72ba: $2a
    ld h, [hl]                                    ; $72bb: $66
    ld l, a                                       ; $72bc: $6f

Jump_007_72bd:
    pop af                                        ; $72bd: $f1
    ldh [rSVBK], a                                ; $72be: $e0 $70
    ld a, l                                       ; $72c0: $7d
    or h                                          ; $72c1: $b4
    jr nz, jr_007_72fa                            ; $72c2: $20 $36

    call Call_000_2e82                            ; $72c4: $cd $82 $2e
    or a                                          ; $72c7: $b7
    jr z, jr_007_72d9                             ; $72c8: $28 $0f

    ld l, $03                                     ; $72ca: $2e $03
    ldh [$c1], a                                  ; $72cc: $e0 $c1
    ld a, $60                                     ; $72ce: $3e $60
    ldh [$bd], a                                  ; $72d0: $e0 $bd
    ld a, $4c                                     ; $72d2: $3e $4c
    ldh [$be], a                                  ; $72d4: $e0 $be
    jp Jump_000_34a0                              ; $72d6: $c3 $a0 $34


jr_007_72d9:
    ld l, $05                                     ; $72d9: $2e $05
    ldh [$c1], a                                  ; $72db: $e0 $c1
    ld a, $60                                     ; $72dd: $3e $60
    ldh [$bd], a                                  ; $72df: $e0 $bd
    ld a, $4c                                     ; $72e1: $3e $4c
    ldh [$be], a                                  ; $72e3: $e0 $be
    jp Jump_000_34a0                              ; $72e5: $c3 $a0 $34


    ld a, [$cbe2]                                 ; $72e8: $fa $e2 $cb
    ld l, $0a                                     ; $72eb: $2e $0a
    ldh [$c1], a                                  ; $72ed: $e0 $c1
    ld a, $60                                     ; $72ef: $3e $60
    ldh [$bd], a                                  ; $72f1: $e0 $bd
    ld a, $4c                                     ; $72f3: $3e $4c
    ldh [$be], a                                  ; $72f5: $e0 $be
    jp Jump_000_34a0                              ; $72f7: $c3 $a0 $34


jr_007_72fa:
    call Call_000_2e82                            ; $72fa: $cd $82 $2e

Jump_007_72fd:
    ld l, $08                                     ; $72fd: $2e $08
    ldh [$c1], a                                  ; $72ff: $e0 $c1
    ld a, $60                                     ; $7301: $3e $60
    ldh [$bd], a                                  ; $7303: $e0 $bd
    ld a, $4c                                     ; $7305: $3e $4c
    ldh [$be], a                                  ; $7307: $e0 $be
    jp Jump_000_34a0                              ; $7309: $c3 $a0 $34


    ldh a, [rSVBK]                                ; $730c: $f0 $70
    push af                                       ; $730e: $f5
    ld a, $05                                     ; $730f: $3e $05
    ldh [rSVBK], a                                ; $7311: $e0 $70
    call Call_007_7287                            ; $7313: $cd $87 $72
    ld de, $000a                                  ; $7316: $11 $0a $00
    add hl, de                                    ; $7319: $19
    ld a, $02                                     ; $731a: $3e $02
    or [hl]                                       ; $731c: $b6
    ld [hl], a                                    ; $731d: $77
    ld hl, $cb98                                  ; $731e: $21 $98 $cb
    dec [hl]                                      ; $7321: $35
    pop af                                        ; $7322: $f1
    ldh [rSVBK], a                                ; $7323: $e0 $70
    ret                                           ; $7325: $c9


Call_007_7326:
    ldh a, [rSVBK]                                ; $7326: $f0 $70
    push af                                       ; $7328: $f5
    ld a, $05                                     ; $7329: $3e $05
    ldh [rSVBK], a                                ; $732b: $e0 $70
    call Call_007_7287                            ; $732d: $cd $87 $72
    push hl                                       ; $7330: $e5
    ld de, $0014                                  ; $7331: $11 $14 $00
    add hl, de                                    ; $7334: $19
    set 0, [hl]                                   ; $7335: $cb $c6
    pop hl                                        ; $7337: $e1
    ld de, $000a                                  ; $7338: $11 $0a $00
    add hl, de                                    ; $733b: $19
    ld a, $08                                     ; $733c: $3e $08
    or [hl]                                       ; $733e: $b6
    ld [hl], a                                    ; $733f: $77
    pop af                                        ; $7340: $f1
    ldh [rSVBK], a                                ; $7341: $e0 $70
    ret                                           ; $7343: $c9


    ldh a, [rSVBK]                                ; $7344: $f0 $70
    push af                                       ; $7346: $f5
    ld a, $05                                     ; $7347: $3e $05
    ldh [rSVBK], a                                ; $7349: $e0 $70
    call Call_007_7287                            ; $734b: $cd $87 $72
    ld de, $0012                                  ; $734e: $11 $12 $00

Call_007_7351:
    add hl, de                                    ; $7351: $19
    ld a, [hl]                                    ; $7352: $7e
    ldh [$bc], a                                  ; $7353: $e0 $bc
    pop af                                        ; $7355: $f1
    ldh [rSVBK], a                                ; $7356: $e0 $70
    ldh a, [$bc]                                  ; $7358: $f0 $bc
    ld hl, $0002                                  ; $735a: $21 $02 $00
    add hl, bc                                    ; $735d: $09
    cp [hl]                                       ; $735e: $be
    jp z, Jump_000_0039                           ; $735f: $ca $39 $00

    ld [hl], a                                    ; $7362: $77
    jp Jump_000_0039                              ; $7363: $c3 $39 $00


Call_007_7366:
    push bc                                       ; $7366: $c5
    ld b, $ff                                     ; $7367: $06 $ff
    ld hl, $d3e7                                  ; $7369: $21 $e7 $d3
    ld de, $0019                                  ; $736c: $11 $19 $00

jr_007_736f:
    inc b                                         ; $736f: $04
    add hl, de                                    ; $7370: $19
    ld a, [hl]                                    ; $7371: $7e
    inc a                                         ; $7372: $3c
    jr nz, jr_007_736f                            ; $7373: $20 $fa

    ld a, b                                       ; $7375: $78
    pop bc                                        ; $7376: $c1
    ret                                           ; $7377: $c9


    ldh a, [$d4]                                  ; $7378: $f0 $d4
    or a                                          ; $737a: $b7
    jr z, jr_007_73bc                             ; $737b: $28 $3f

Jump_007_737d:
    ldh a, [rSVBK]                                ; $737d: $f0 $70
    push af                                       ; $737f: $f5
    ld a, $05                                     ; $7380: $3e $05
    ldh [rSVBK], a                                ; $7382: $e0 $70
    inc bc                                        ; $7384: $03
    inc bc                                        ; $7385: $03
    ld a, [bc]                                    ; $7386: $0a
    ld d, a                                       ; $7387: $57
    dec bc                                        ; $7388: $0b
    ld a, [bc]                                    ; $7389: $0a
    push af                                       ; $738a: $f5
    ld a, d                                       ; $738b: $7a
    ld [bc], a                                    ; $738c: $02
    dec bc                                        ; $738d: $0b
    ld hl, $6461                                  ; $738e: $21 $61 $64
    call Call_007_7409                            ; $7391: $cd $09 $74
    call Call_000_2e82                            ; $7394: $cd $82 $2e
    ld d, a                                       ; $7397: $57
    ld e, $01                                     ; $7398: $1e $01
    ld a, $00                                     ; $739a: $3e $00
    call Call_000_2e9e                            ; $739c: $cd $9e $2e
    pop af                                        ; $739f: $f1
    push bc                                       ; $73a0: $c5
    ld hl, $6131                                  ; $73a1: $21 $31 $61
    ldh [$c1], a                                  ; $73a4: $e0 $c1
    ld a, $3d                                     ; $73a6: $3e $3d
    ldh [$bd], a                                  ; $73a8: $e0 $bd
    ld a, $25                                     ; $73aa: $3e $25
    ldh [$be], a                                  ; $73ac: $e0 $be
    call Call_000_34ba                            ; $73ae: $cd $ba $34
    pop bc                                        ; $73b1: $c1
    call Call_000_2e82                            ; $73b2: $cd $82 $2e
    call Call_000_0902                            ; $73b5: $cd $02 $09
    pop af                                        ; $73b8: $f1
    ldh [rSVBK], a                                ; $73b9: $e0 $70
    ret                                           ; $73bb: $c9


jr_007_73bc:
    ldh a, [rSVBK]                                ; $73bc: $f0 $70
    push af                                       ; $73be: $f5
    ld a, $05                                     ; $73bf: $3e $05
    ldh [rSVBK], a                                ; $73c1: $e0 $70
    call Call_007_7366                            ; $73c3: $cd $66 $73
    ld [$cbe2], a                                 ; $73c6: $ea $e2 $cb
    inc bc                                        ; $73c9: $03
    ld a, [bc]                                    ; $73ca: $0a
    ld [hl], a                                    ; $73cb: $77
    ld a, [$cbe2]                                 ; $73cc: $fa $e2 $cb
    ld [bc], a                                    ; $73cf: $02
    dec bc                                        ; $73d0: $0b
    push hl                                       ; $73d1: $e5
    ld hl, $6461                                  ; $73d2: $21 $61 $64
    call Call_007_7409                            ; $73d5: $cd $09 $74
    ld a, [$cbe2]                                 ; $73d8: $fa $e2 $cb
    ld d, a                                       ; $73db: $57
    ld e, $01                                     ; $73dc: $1e $01

Jump_007_73de:
    pop hl                                        ; $73de: $e1
    ld a, [hl]                                    ; $73df: $7e
    push bc                                       ; $73e0: $c5
    ld hl, $6131                                  ; $73e1: $21 $31 $61
    ldh [$c1], a                                  ; $73e4: $e0 $c1
    ld a, $3d                                     ; $73e6: $3e $3d
    ldh [$bd], a                                  ; $73e8: $e0 $bd
    ld a, $25                                     ; $73ea: $3e $25
    ldh [$be], a                                  ; $73ec: $e0 $be
    call Call_000_34ba                            ; $73ee: $cd $ba $34
    pop bc                                        ; $73f1: $c1
    ld a, [$cbe2]                                 ; $73f2: $fa $e2 $cb
    call Call_000_0902                            ; $73f5: $cd $02 $09
    ldh [$c1], a                                  ; $73f8: $e0 $c1
    ld a, $2b                                     ; $73fa: $3e $2b
    ldh [$bd], a                                  ; $73fc: $e0 $bd
    ld a, $48                                     ; $73fe: $3e $48
    ldh [$be], a                                  ; $7400: $e0 $be
    call Call_000_34a0                            ; $7402: $cd $a0 $34
    pop af                                        ; $7405: $f1
    ldh [rSVBK], a                                ; $7406: $e0 $70
    ret                                           ; $7408: $c9


Call_007_7409:
    call Call_000_3194                            ; $7409: $cd $94 $31
    jp Jump_000_090d                              ; $740c: $c3 $0d $09


    ld a, [$cbe9]                                 ; $740f: $fa $e9 $cb
    and $01                                       ; $7412: $e6 $01
    jr z, jr_007_7436                             ; $7414: $28 $20

    ld a, [$cbea]                                 ; $7416: $fa $ea $cb
    and $01                                       ; $7419: $e6 $01
    jr nz, jr_007_741d                            ; $741b: $20 $00

jr_007_741d:
    ld a, [$cbe9]                                 ; $741d: $fa $e9 $cb
    ld [$cbea], a                                 ; $7420: $ea $ea $cb
    ld hl, $002b                                  ; $7423: $21 $2b $00
    add hl, bc                                    ; $7426: $09
    res 0, [hl]                                   ; $7427: $cb $86
    ldh [$c1], a                                  ; $7429: $e0 $c1
    ld a, $f0                                     ; $742b: $3e $f0
    ldh [$bd], a                                  ; $742d: $e0 $bd
    ld a, $64                                     ; $742f: $3e $64
    ldh [$be], a                                  ; $7431: $e0 $be
    jp Jump_000_34b5                              ; $7433: $c3 $b5 $34


jr_007_7436:
    ld [$cbea], a                                 ; $7436: $ea $ea $cb
    ld hl, $002b                                  ; $7439: $21 $2b $00
    add hl, bc                                    ; $743c: $09

Jump_007_743d:
    set 0, [hl]                                   ; $743d: $cb $c6
    ret                                           ; $743f: $c9


    ld a, [$cbe9]                                 ; $7440: $fa $e9 $cb
    and $02                                       ; $7443: $e6 $02
    jr z, jr_007_7486                             ; $7445: $28 $3f

    ld hl, $002b                                  ; $7447: $21 $2b $00
    add hl, bc                                    ; $744a: $09
    res 0, [hl]                                   ; $744b: $cb $86
    set 5, [hl]                                   ; $744d: $cb $ee
    ld a, [$cbe7]                                 ; $744f: $fa $e7 $cb
    or a                                          ; $7452: $b7
    jr nz, jr_007_7457                            ; $7453: $20 $02

    res 5, [hl]                                   ; $7455: $cb $ae

jr_007_7457:
    ld hl, $6473                                  ; $7457: $21 $73 $64
    cp $04                                        ; $745a: $fe $04
    jp nz, Jump_007_748d                          ; $745c: $c2 $8d $74

jr_007_745f:
    ld hl, $0002                                  ; $745f: $21 $02 $00
    add hl, bc                                    ; $7462: $09
    ld a, [hl]                                    ; $7463: $7e
    inc a                                         ; $7464: $3c
    cp $04                                        ; $7465: $fe $04
    jr nz, jr_007_746b                            ; $7467: $20 $02

Jump_007_7469:
    ld a, $01                                     ; $7469: $3e $01

jr_007_746b:
    ld [hl], a                                    ; $746b: $77
    ldh [$c1], a                                  ; $746c: $e0 $c1
    ld a, $1e                                     ; $746e: $3e $1e
    ldh [$bd], a                                  ; $7470: $e0 $bd
    ld a, $4c                                     ; $7472: $3e $4c
    ldh [$be], a                                  ; $7474: $e0 $be
    call Call_000_34a0                            ; $7476: $cd $a0 $34
    and $02                                       ; $7479: $e6 $02
    jr nz, jr_007_745f                            ; $747b: $20 $e2

Jump_007_747d:
    call Call_000_2e8a                            ; $747d: $cd $8a $2e
    ld hl, $6473                                  ; $7480: $21 $73 $64
    jp Jump_007_748d                              ; $7483: $c3 $8d $74


jr_007_7486:
    ld hl, $002b                                  ; $7486: $21 $2b $00
    add hl, bc                                    ; $7489: $09
    set 0, [hl]                                   ; $748a: $cb $c6
    ret                                           ; $748c: $c9


Jump_007_748d:
    call Call_000_3194                            ; $748d: $cd $94 $31
    jp Jump_000_090d                              ; $7490: $c3 $0d $09


    call Call_000_2e82                            ; $7493: $cd $82 $2e
    ld h, a                                       ; $7496: $67
    ld l, $03                                     ; $7497: $2e $03
    call Call_000_00b9                            ; $7499: $cd $b9 $00
    ld a, h                                       ; $749c: $7c
    cp $04                                        ; $749d: $fe $04
    ret nc                                        ; $749f: $d0

    ldh [$c1], a                                  ; $74a0: $e0 $c1
    ld a, $c8                                     ; $74a2: $3e $c8
    ldh [$bd], a                                  ; $74a4: $e0 $bd
    ld a, $61                                     ; $74a6: $3e $61
    ldh [$be], a                                  ; $74a8: $e0 $be
    jp Jump_000_34b5                              ; $74aa: $c3 $b5 $34


    call Call_007_7287                            ; $74ad: $cd $87 $72
    ld de, $0001                                  ; $74b0: $11 $01 $00
    add hl, de                                    ; $74b3: $19
    ldh a, [rSVBK]                                ; $74b4: $f0 $70
    push af                                       ; $74b6: $f5
    ld a, $05                                     ; $74b7: $3e $05
    ldh [rSVBK], a                                ; $74b9: $e0 $70
    ld a, [hl+]                                   ; $74bb: $2a
    ld d, [hl]                                    ; $74bc: $56

Jump_007_74bd:
    ld e, a                                       ; $74bd: $5f
    pop af                                        ; $74be: $f1
    ldh [rSVBK], a                                ; $74bf: $e0 $70
    call Call_000_2ea4                            ; $74c1: $cd $a4 $2e
    call Call_000_2e82                            ; $74c4: $cd $82 $2e
    dec a                                         ; $74c7: $3d
    ld hl, $647b                                  ; $74c8: $21 $7b $64
    call Call_000_3194                            ; $74cb: $cd $94 $31
    jp Jump_000_090d                              ; $74ce: $c3 $0d $09


    call Call_007_7287                            ; $74d1: $cd $87 $72
    ld de, $0001                                  ; $74d4: $11 $01 $00
    add hl, de                                    ; $74d7: $19
    ldh a, [rSVBK]                                ; $74d8: $f0 $70
    push af                                       ; $74da: $f5
    ld a, $05                                     ; $74db: $3e $05
    ldh [rSVBK], a                                ; $74dd: $e0 $70
    ld a, [hl+]                                   ; $74df: $2a
    ld d, [hl]                                    ; $74e0: $56
    ld e, a                                       ; $74e1: $5f
    inc hl                                        ; $74e2: $23
    inc hl                                        ; $74e3: $23
    inc hl                                        ; $74e4: $23
    ld a, [hl+]                                   ; $74e5: $2a
    ld h, [hl]                                    ; $74e6: $66
    ld l, a                                       ; $74e7: $6f
    pop af                                        ; $74e8: $f1
    ldh [rSVBK], a                                ; $74e9: $e0 $70
    ld a, h                                       ; $74eb: $7c
    or l                                          ; $74ec: $b5
    jr z, jr_007_7532                             ; $74ed: $28 $43

    push de                                       ; $74ef: $d5
    push hl                                       ; $74f0: $e5
    ld hl, $0003                                  ; $74f1: $21 $03 $00
    add hl, bc                                    ; $74f4: $09
    ld a, [hl+]                                   ; $74f5: $2a
    ld d, [hl]                                    ; $74f6: $56
    ld e, a                                       ; $74f7: $5f
    pop hl                                        ; $74f8: $e1
    rst $10                                       ; $74f9: $d7
    pop de                                        ; $74fa: $d1
    ret z                                         ; $74fb: $c8

    push de                                       ; $74fc: $d5

Jump_007_74fd:
    ld e, l                                       ; $74fd: $5d
    ld d, h                                       ; $74fe: $54
    call Call_000_2ea4                            ; $74ff: $cd $a4 $2e
    pop de                                        ; $7502: $d1
    ld a, h                                       ; $7503: $7c
    ld h, l                                       ; $7504: $65
    ld l, $00                                     ; $7505: $2e $00
    call Call_000_31f4                            ; $7507: $cd $f4 $31
    ld a, h                                       ; $750a: $7c
    or a                                          ; $750b: $b7
    ld a, $00                                     ; $750c: $3e $00
    jr nz, jr_007_751b                            ; $750e: $20 $0b

    ld a, l                                       ; $7510: $7d
    swap a                                        ; $7511: $cb $37
    and $0f                                       ; $7513: $e6 $0f
    jr z, jr_007_752c                             ; $7515: $28 $15

    ld l, a                                       ; $7517: $6f
    ld a, $10                                     ; $7518: $3e $10
    sub l                                         ; $751a: $95

jr_007_751b:
    call Call_000_08ec                            ; $751b: $cd $ec $08
    ldh [$c1], a                                  ; $751e: $e0 $c1
    ld a, $40                                     ; $7520: $3e $40
    ldh [$bd], a                                  ; $7522: $e0 $bd
    ld a, $6c                                     ; $7524: $3e $6c
    ldh [$be], a                                  ; $7526: $e0 $be
    call Call_000_34b5                            ; $7528: $cd $b5 $34
    ret                                           ; $752b: $c9


jr_007_752c:
    ld a, $0f                                     ; $752c: $3e $0f
    call Call_000_08ec                            ; $752e: $cd $ec $08
    ret                                           ; $7531: $c9


jr_007_7532:
    jp Jump_000_0e9d                              ; $7532: $c3 $9d $0e


    ret                                           ; $7535: $c9


Call_007_7536:
    ld hl, $cbbe                                  ; $7536: $21 $be $cb
    ld e, [hl]                                    ; $7539: $5e
    inc hl                                        ; $753a: $23
    ld d, [hl]                                    ; $753b: $56
    ld hl, $0003                                  ; $753c: $21 $03 $00
    add hl, de                                    ; $753f: $19
    ld [hl], $3c                                  ; $7540: $36 $3c
    ld hl, $002d                                  ; $7542: $21 $2d $00
    add hl, bc                                    ; $7545: $09
    ld [hl], $00                                  ; $7546: $36 $00
    ld a, $23                                     ; $7548: $3e $23
    call Call_000_393e                            ; $754a: $cd $3e $39
    ldh a, [$cf]                                  ; $754d: $f0 $cf
    cp $2d                                        ; $754f: $fe $2d
    ret nz                                        ; $7551: $c0

    xor a                                         ; $7552: $af
    ldh [$9b], a                                  ; $7553: $e0 $9b
    ld a, $8f                                     ; $7555: $3e $8f
    call Call_000_03a0                            ; $7557: $cd $a0 $03
    push bc                                       ; $755a: $c5
    ld hl, $0006                                  ; $755b: $21 $06 $00
    add hl, bc                                    ; $755e: $09
    ld a, [hl]                                    ; $755f: $7e
    ld hl, $0009                                  ; $7560: $21 $09 $00
    add hl, bc                                    ; $7563: $09
    ld l, [hl]                                    ; $7564: $6e
    ld c, e                                       ; $7565: $4b
    ld b, d                                       ; $7566: $42
    ld e, a                                       ; $7567: $5f
    ld d, l                                       ; $7568: $55
    call Call_000_090d                            ; $7569: $cd $0d $09
    pop bc                                        ; $756c: $c1
    ret                                           ; $756d: $c9


    ld a, $01                                     ; $756e: $3e $01
    ld [$ccfa], a                                 ; $7570: $ea $fa $cc
    ret                                           ; $7573: $c9


    ld e, $00                                     ; $7574: $1e $00
    ldh a, [$d8]                                  ; $7576: $f0 $d8
    cp $2a                                        ; $7578: $fe $2a
    jr z, jr_007_7587                             ; $757a: $28 $0b

    inc e                                         ; $757c: $1c

Jump_007_757d:
    cp $51                                        ; $757d: $fe $51
    jr z, jr_007_7587                             ; $757f: $28 $06

    inc e                                         ; $7581: $1c
    cp $52                                        ; $7582: $fe $52
    jr z, jr_007_7587                             ; $7584: $28 $01

    inc e                                         ; $7586: $1c

jr_007_7587:
    sla e                                         ; $7587: $cb $23
    sla e                                         ; $7589: $cb $23
    call Call_000_2e82                            ; $758b: $cd $82 $2e
    add e                                         ; $758e: $83
    add $42                                       ; $758f: $c6 $42
    ld e, a                                       ; $7591: $5f
    ldh [$c1], a                                  ; $7592: $e0 $c1
    ld a, $4b                                     ; $7594: $3e $4b
    ldh [$bd], a                                  ; $7596: $e0 $bd
    ld a, $6a                                     ; $7598: $3e $6a
    ldh [$be], a                                  ; $759a: $e0 $be
    call Call_000_34a7                            ; $759c: $cd $a7 $34
    push bc                                       ; $759f: $c5
    ld d, $02                                     ; $75a0: $16 $02
    ld hl, $1030                                  ; $75a2: $21 $30 $10
    ld bc, $106c                                  ; $75a5: $01 $6c $10
    xor a                                         ; $75a8: $af
    ldh [$c1], a                                  ; $75a9: $e0 $c1
    ld a, $26                                     ; $75ab: $3e $26
    ldh [$bd], a                                  ; $75ad: $e0 $bd
    ld a, $44                                     ; $75af: $3e $44
    ldh [$be], a                                  ; $75b1: $e0 $be
    call Call_000_34a7                            ; $75b3: $cd $a7 $34
    pop bc                                        ; $75b6: $c1
    ret                                           ; $75b7: $c9


    dec [hl]                                      ; $75b8: $35
    inc sp                                        ; $75b9: $33
    add l                                         ; $75ba: $85
    call z, Call_000_1948                         ; $75bb: $cc $48 $19
    inc de                                        ; $75be: $13
    ld c, h                                       ; $75bf: $4c
    sub [hl]                                      ; $75c0: $96
    ld a, a                                       ; $75c1: $7f
    ld a, [$cb32]                                 ; $75c2: $fa $32 $cb
    ld hl, $75b8                                  ; $75c5: $21 $b8 $75
    call Call_000_3194                            ; $75c8: $cd $94 $31
    call Call_000_090d                            ; $75cb: $cd $0d $09
    ld a, [$cb33]                                 ; $75ce: $fa $33 $cb
    or a                                          ; $75d1: $b7
    jr z, jr_007_75d9                             ; $75d2: $28 $05

    ld de, $0080                                  ; $75d4: $11 $80 $00
    jr jr_007_75dc                                ; $75d7: $18 $03

jr_007_75d9:
    ld de, $00d5                                  ; $75d9: $11 $d5 $00

jr_007_75dc:
    ld hl, $0011                                  ; $75dc: $21 $11 $00
    add hl, bc                                    ; $75df: $09
    ld a, e                                       ; $75e0: $7b
    ld [hl+], a                                   ; $75e1: $22
    ld a, d                                       ; $75e2: $7a
    ld [hl], a                                    ; $75e3: $77
    ld a, [$cb32]                                 ; $75e4: $fa $32 $cb
    inc a                                         ; $75e7: $3c
    ld [$cb32], a                                 ; $75e8: $ea $32 $cb
    cp $02                                        ; $75eb: $fe $02
    ret nz                                        ; $75ed: $c0

    ld a, [$cb33]                                 ; $75ee: $fa $33 $cb
    inc a                                         ; $75f1: $3c
    ld [$cb33], a                                 ; $75f2: $ea $33 $cb
    ret                                           ; $75f5: $c9


    ld c, $0c                                     ; $75f6: $0e $0c
    ld [hl], a                                    ; $75f8: $77
    and l                                         ; $75f9: $a5
    add c                                         ; $75fa: $81
    inc de                                        ; $75fb: $13
    ld sp, $638b                                  ; $75fc: $31 $8b $63
    cp [hl]                                       ; $75ff: $be
    ld a, [$cb34]                                 ; $7600: $fa $34 $cb
    ld hl, $75f6                                  ; $7603: $21 $f6 $75
    call Call_000_3194                            ; $7606: $cd $94 $31
    call Call_000_090d                            ; $7609: $cd $0d $09
    ld a, [$cb33]                                 ; $760c: $fa $33 $cb
    or a                                          ; $760f: $b7
    jr z, jr_007_7617                             ; $7610: $28 $05

    ld de, $00ab                                  ; $7612: $11 $ab $00
    jr jr_007_761a                                ; $7615: $18 $03

jr_007_7617:
    ld de, $0100                                  ; $7617: $11 $00 $01

jr_007_761a:
    ld hl, $0011                                  ; $761a: $21 $11 $00
    add hl, bc                                    ; $761d: $09
    ld a, e                                       ; $761e: $7b
    ld [hl+], a                                   ; $761f: $22
    ld a, d                                       ; $7620: $7a
    ld [hl], a                                    ; $7621: $77
    ld a, [$cb34]                                 ; $7622: $fa $34 $cb
    inc a                                         ; $7625: $3c
    ld [$cb34], a                                 ; $7626: $ea $34 $cb
    cp $02                                        ; $7629: $fe $02
    ret nz                                        ; $762b: $c0

    ld a, [$cb35]                                 ; $762c: $fa $35 $cb
    inc a                                         ; $762f: $3c
    ld [$cb35], a                                 ; $7630: $ea $35 $cb
    ret                                           ; $7633: $c9


    nop                                           ; $7634: $00
    ld [$0000], sp                                ; $7635: $08 $00 $00
    nop                                           ; $7638: $00
    ld [$c000], sp                                ; $7639: $08 $00 $c0
    inc bc                                        ; $763c: $03

Jump_007_763d:
    inc bc                                        ; $763d: $03
    nop                                           ; $763e: $00
    ld [$c000], sp                                ; $763f: $08 $00 $c0
    nop                                           ; $7642: $00
    ld [$8000], sp                                ; $7643: $08 $00 $80
    inc bc                                        ; $7646: $03
    inc bc                                        ; $7647: $03
    nop                                           ; $7648: $00
    ld [$8000], sp                                ; $7649: $08 $00 $80
    nop                                           ; $764c: $00
    ld [$4000], sp                                ; $764d: $08 $00 $40
    inc bc                                        ; $7650: $03
    inc bc                                        ; $7651: $03
    nop                                           ; $7652: $00
    ld [$4000], sp                                ; $7653: $08 $00 $40
    nop                                           ; $7656: $00
    ld [$0000], sp                                ; $7657: $08 $00 $00
    inc bc                                        ; $765a: $03
    inc bc                                        ; $765b: $03
    nop                                           ; $765c: $00
    dec b                                         ; $765d: $05
    nop                                           ; $765e: $00
    nop                                           ; $765f: $00
    nop                                           ; $7660: $00
    dec b                                         ; $7661: $05
    nop                                           ; $7662: $00
    ret nz                                        ; $7663: $c0

    inc b                                         ; $7664: $04
    ld b, $00                                     ; $7665: $06 $00
    nop                                           ; $7667: $00
    nop                                           ; $7668: $00
    nop                                           ; $7669: $00
    nop                                           ; $766a: $00
    ld [$4000], sp                                ; $766b: $08 $00 $40
    nop                                           ; $766e: $00
    inc bc                                        ; $766f: $03

    xor a                                         ; $7670: $af
    ld [$ccfa], a                                 ; $7671: $ea $fa $cc
    ret                                           ; $7674: $c9


    ld a, [$ccfa]                                 ; $7675: $fa $fa $cc
    or a                                          ; $7678: $b7
    jp Jump_000_0039                              ; $7679: $c3 $39 $00


    db $12, $04, $e7, $05, $f2, $51, $e7, $05, $d8, $51, $bd, $04, $db, $ff, $97, $7d
    db $87

    dec bc                                        ; $768d: $0b
    ld [hl], a                                    ; $768e: $77
    ld [de], a                                    ; $768f: $12
    ld [hl], a                                    ; $7690: $77
    rst $30                                       ; $7691: $f7
    ld a, l                                       ; $7692: $7d
    ld [hl], d                                    ; $7693: $72
    ld [hl], a                                    ; $7694: $77
    ld c, l                                       ; $7695: $4d
    ld a, b                                       ; $7696: $78
    cp l                                          ; $7697: $bd
    ld a, b                                       ; $7698: $78
    pop hl                                        ; $7699: $e1
    ld a, b                                       ; $769a: $78
    ldh a, [$78]                                  ; $769b: $f0 $78
    rst $30                                       ; $769d: $f7
    ld a, l                                       ; $769e: $7d
    rst $30                                       ; $769f: $f7
    ld a, b                                       ; $76a0: $78
    ld h, c                                       ; $76a1: $61
    ld a, c                                       ; $76a2: $79
    rst $30                                       ; $76a3: $f7
    ld a, l                                       ; $76a4: $7d

    db $0c, $7e

    rst $30                                       ; $76a7: $f7
    ld a, l                                       ; $76a8: $7d
    adc h                                         ; $76a9: $8c
    ld a, c                                       ; $76aa: $79
    cp a                                          ; $76ab: $bf
    ld a, c                                       ; $76ac: $79
    jp nc, $f779                                  ; $76ad: $d2 $79 $f7

    ld a, l                                       ; $76b0: $7d
    ld [hl], l                                    ; $76b1: $75
    ld a, [hl]                                    ; $76b2: $7e
    ld e, [hl]                                    ; $76b3: $5e
    ld a, [hl]                                    ; $76b4: $7e
    ld a, [c]                                     ; $76b5: $f2
    ld a, c                                       ; $76b6: $79
    ld l, $7a                                     ; $76b7: $2e $7a
    and d                                         ; $76b9: $a2
    ld a, d                                       ; $76ba: $7a
    jp nz, Jump_000_237a                          ; $76bb: $c2 $7a $23

    ld a, e                                       ; $76be: $7b
    rst $30                                       ; $76bf: $f7
    ld a, l                                       ; $76c0: $7d
    ld [hl], $7b                                  ; $76c1: $36 $7b
    ld a, h                                       ; $76c3: $7c
    ld a, e                                       ; $76c4: $7b
    and b                                         ; $76c5: $a0
    ld a, e                                       ; $76c6: $7b
    rst $30                                       ; $76c7: $f7
    ld a, l                                       ; $76c8: $7d
    ld c, $7c                                     ; $76c9: $0e $7c
    ld h, l                                       ; $76cb: $65
    ld a, h                                       ; $76cc: $7c
    rst $30                                       ; $76cd: $f7
    ld a, l                                       ; $76ce: $7d
    sbc l                                         ; $76cf: $9d
    ld a, h                                       ; $76d0: $7c
    or b                                          ; $76d1: $b0
    ld a, h                                       ; $76d2: $7c
    rst $30                                       ; $76d3: $f7
    ld a, l                                       ; $76d4: $7d
    ret                                           ; $76d5: $c9


    ld a, h                                       ; $76d6: $7c
    jp nc, $fd7c                                  ; $76d7: $d2 $7c $fd

    ld a, h                                       ; $76da: $7c
    inc bc                                        ; $76db: $03
    ld a, l                                       ; $76dc: $7d
    adc h                                         ; $76dd: $8c
    ld a, [hl]                                    ; $76de: $7e
    dec de                                        ; $76df: $1b
    ld a, l                                       ; $76e0: $7d
    and l                                         ; $76e1: $a5
    ld a, [hl]                                    ; $76e2: $7e
    rst $30                                       ; $76e3: $f7
    ld a, l                                       ; $76e4: $7d
    rst $30                                       ; $76e5: $f7
    ld a, l                                       ; $76e6: $7d
    rst $30                                       ; $76e7: $f7
    ld a, l                                       ; $76e8: $7d
    rst $30                                       ; $76e9: $f7
    ld a, l                                       ; $76ea: $7d
    ld d, [hl]                                    ; $76eb: $56
    ld a, l                                       ; $76ec: $7d
    ld l, c                                       ; $76ed: $69
    ld a, l                                       ; $76ee: $7d
    rst $30                                       ; $76ef: $f7
    ld a, l                                       ; $76f0: $7d
    ld hl, $c37e                                  ; $76f1: $21 $7e $c3
    ld [hl], a                                    ; $76f4: $77
    ld b, l                                       ; $76f5: $45
    ld [hl], a                                    ; $76f6: $77
    ld l, $79                                     ; $76f7: $2e $79
    ld e, $7a                                     ; $76f9: $1e $7a
    ld e, $7a                                     ; $76fb: $1e $7a
    ld a, [de]                                    ; $76fd: $1a
    ld a, e                                       ; $76fe: $7b
    rst $38                                       ; $76ff: $ff
    ld a, e                                       ; $7700: $7b
    add [hl]                                      ; $7701: $86
    ld a, l                                       ; $7702: $7d
    ld a, d                                       ; $7703: $7a
    ld a, l                                       ; $7704: $7d
    sub l                                         ; $7705: $95
    ld a, h                                       ; $7706: $7c
    ld c, [hl]                                    ; $7707: $4e

jr_007_7708:
    ld a, l                                       ; $7708: $7d
    ld e, d                                       ; $7709: $5a
    ld a, h                                       ; $770a: $7c
    sbc a                                         ; $770b: $9f
    db $ec                                        ; $770c: $ec
    and d                                         ; $770d: $a2
    inc c                                         ; $770e: $0c
    jr jr_007_7708                                ; $770f: $18 $f7

    ld a, l                                       ; $7711: $7d
    ld [$05e7], a                                 ; $7712: $ea $e7 $05
    cp l                                          ; $7715: $bd
    ld d, b                                       ; $7716: $50
    ld c, b                                       ; $7717: $48
    nop                                           ; $7718: $00
    ld c, e                                       ; $7719: $4b
    nop                                           ; $771a: $00
    ld c, [hl]                                    ; $771b: $4e
    inc [hl]                                      ; $771c: $34
    or $00                                        ; $771d: $f6 $00
    add hl, sp                                    ; $771f: $39
    ld a, a                                       ; $7720: $7f
    ld c, [hl]                                    ; $7721: $4e
    inc [hl]                                      ; $7722: $34
    or $01                                        ; $7723: $f6 $01
    add hl, sp                                    ; $7725: $39
    ld a, a                                       ; $7726: $7f
    ld c, [hl]                                    ; $7727: $4e
    inc [hl]                                      ; $7728: $34
    or $02                                        ; $7729: $f6 $02

Call_007_772b:
    add hl, sp                                    ; $772b: $39
    ld a, a                                       ; $772c: $7f
    ld c, [hl]                                    ; $772d: $4e
    inc [hl]                                      ; $772e: $34
    or $03                                        ; $772f: $f6 $03
    add hl, sp                                    ; $7731: $39
    ld a, a                                       ; $7732: $7f
    rst $20                                       ; $7733: $e7
    dec b                                         ; $7734: $05
    add hl, bc                                    ; $7735: $09
    ld d, d                                       ; $7736: $52
    nop                                           ; $7737: $00
    ld a, [bc]                                    ; $7738: $0a
    rst $20                                       ; $7739: $e7
    ld bc, $7bc2                                  ; $773a: $01 $c2 $7b
    ld [$e757], a                                 ; $773d: $ea $57 $e7
    rlca                                          ; $7740: $07
    ld l, [hl]                                    ; $7741: $6e
    ld [hl], l                                    ; $7742: $75
    nop                                           ; $7743: $00
    nop                                           ; $7744: $00
    rst $20                                       ; $7745: $e7
    dec b                                         ; $7746: $05
    add hl, bc                                    ; $7747: $09
    ld d, d                                       ; $7748: $52
    jp nc, Jump_007_7752                          ; $7749: $d2 $52 $77

    ld e, d                                       ; $774c: $5a
    ld [hl], a                                    ; $774d: $77
    ld h, d                                       ; $774e: $62
    ld [hl], a                                    ; $774f: $77
    ld l, d                                       ; $7750: $6a

Call_007_7751:
    ld [hl], a                                    ; $7751: $77

Jump_007_7752:
    dec de                                        ; $7752: $1b
    inc [hl]                                      ; $7753: $34
    halt                                          ; $7754: $76
    nop                                           ; $7755: $00
    scf                                           ; $7756: $37
    ld d, a                                       ; $7757: $57
    nop                                           ; $7758: $00
    nop                                           ; $7759: $00
    dec de                                        ; $775a: $1b
    ld a, $76                                     ; $775b: $3e $76
    nop                                           ; $775d: $00

Call_007_775e:
    scf                                           ; $775e: $37
    ld d, a                                       ; $775f: $57
    nop                                           ; $7760: $00
    nop                                           ; $7761: $00
    dec de                                        ; $7762: $1b
    ld c, b                                       ; $7763: $48
    halt                                          ; $7764: $76
    nop                                           ; $7765: $00
    scf                                           ; $7766: $37
    ld d, a                                       ; $7767: $57
    nop                                           ; $7768: $00
    nop                                           ; $7769: $00
    dec de                                        ; $776a: $1b
    ld d, d                                       ; $776b: $52
    halt                                          ; $776c: $76
    nop                                           ; $776d: $00
    scf                                           ; $776e: $37
    ld d, a                                       ; $776f: $57
    nop                                           ; $7770: $00
    nop                                           ; $7771: $00
    ld h, b                                       ; $7772: $60
    rst $20                                       ; $7773: $e7
    dec b                                         ; $7774: $05
    ld [bc], a                                    ; $7775: $02
    ld d, e                                       ; $7776: $53
    di                                            ; $7777: $f3
    dec d                                         ; $7778: $15
    nop                                           ; $7779: $00
    ldh a, [rNR11]                                ; $777a: $f0 $11
    nop                                           ; $777c: $00

Jump_007_777d:
    ld c, [hl]                                    ; $777d: $4e
    inc sp                                        ; $777e: $33
    or $00                                        ; $777f: $f6 $00
    add hl, sp                                    ; $7781: $39
    ld a, a                                       ; $7782: $7f
    di                                            ; $7783: $f3
    dec h                                         ; $7784: $25
    nop                                           ; $7785: $00
    ldh a, [$28]                                  ; $7786: $f0 $28
    nop                                           ; $7788: $00
    ld c, [hl]                                    ; $7789: $4e
    inc sp                                        ; $778a: $33
    or $01                                        ; $778b: $f6 $01
    add hl, sp                                    ; $778d: $39
    ld a, a                                       ; $778e: $7f
    di                                            ; $778f: $f3
    dec a                                         ; $7790: $3d
    nop                                           ; $7791: $00
    ldh a, [rOBP0]                                ; $7792: $f0 $48
    nop                                           ; $7794: $00
    ld c, [hl]                                    ; $7795: $4e
    inc sp                                        ; $7796: $33
    or $02                                        ; $7797: $f6 $02
    add hl, sp                                    ; $7799: $39
    ld a, a                                       ; $779a: $7f
    di                                            ; $779b: $f3
    ld d, l                                       ; $779c: $55
    nop                                           ; $779d: $00
    ldh a, [rNR11]                                ; $779e: $f0 $11
    nop                                           ; $77a0: $00
    ld c, [hl]                                    ; $77a1: $4e
    inc sp                                        ; $77a2: $33
    or $03                                        ; $77a3: $f6 $03
    add hl, sp                                    ; $77a5: $39
    ld a, a                                       ; $77a6: $7f
    nop                                           ; $77a7: $00
    ld e, $63                                     ; $77a8: $1e $63
    rst $20                                       ; $77aa: $e7
    dec b                                         ; $77ab: $05
    add hl, bc                                    ; $77ac: $09
    ld d, d                                       ; $77ad: $52
    rst $20                                       ; $77ae: $e7
    ld bc, $7bc2                                  ; $77af: $01 $c2 $7b
    ld [$0060], a                                 ; $77b2: $ea $60 $00
    add hl, de                                    ; $77b5: $19
    rst $20                                       ; $77b6: $e7
    dec b                                         ; $77b7: $05
    cp l                                          ; $77b8: $bd
    ld d, b                                       ; $77b9: $50
    nop                                           ; $77ba: $00
    dec b                                         ; $77bb: $05
    ld d, a                                       ; $77bc: $57
    rst $20                                       ; $77bd: $e7
    rlca                                          ; $77be: $07
    ld l, [hl]                                    ; $77bf: $6e
    ld [hl], l                                    ; $77c0: $75
    nop                                           ; $77c1: $00
    nop                                           ; $77c2: $00
    cp l                                          ; $77c3: $bd

jr_007_77c4:
    dec b                                         ; $77c4: $05
    rst $20                                       ; $77c5: $e7
    dec b                                         ; $77c6: $05
    add hl, bc                                    ; $77c7: $09
    ld d, d                                       ; $77c8: $52
    jp nc, Jump_007_77d2                          ; $77c9: $d2 $d2 $77

    di                                            ; $77cc: $f3
    ld [hl], a                                    ; $77cd: $77
    rrca                                          ; $77ce: $0f
    ld a, b                                       ; $77cf: $78
    ld l, $78                                     ; $77d0: $2e $78

Jump_007_77d2:
    add h                                         ; $77d2: $84
    dec d                                         ; $77d3: $15
    nop                                           ; $77d4: $00
    add c                                         ; $77d5: $81
    ld de, $0000                                  ; $77d6: $11 $00 $00
    ld bc, $3881                                  ; $77d9: $01 $81 $38
    nop                                           ; $77dc: $00
    nop                                           ; $77dd: $00
    ld bc, $5881                                  ; $77de: $01 $81 $58
    nop                                           ; $77e1: $00
    nop                                           ; $77e2: $00
    ld bc, $9081                                  ; $77e3: $01 $81 $90
    nop                                           ; $77e6: $00
    nop                                           ; $77e7: $00
    ld bc, $05e7                                  ; $77e8: $01 $e7 $05
    dec c                                         ; $77eb: $0d
    ld d, e                                       ; $77ec: $53
    ld a, [hl+]                                   ; $77ed: $2a
    ld c, d                                       ; $77ee: $4a
    ld a, b                                       ; $77ef: $78
    jr jr_007_77c4                                ; $77f0: $18 $d2

    ld [hl], a                                    ; $77f2: $77
    add h                                         ; $77f3: $84
    dec h                                         ; $77f4: $25
    nop                                           ; $77f5: $00
    add c                                         ; $77f6: $81
    jr z, jr_007_77f9                             ; $77f7: $28 $00

jr_007_77f9:
    nop                                           ; $77f9: $00
    ld bc, $4881                                  ; $77fa: $01 $81 $48
    nop                                           ; $77fd: $00
    nop                                           ; $77fe: $00
    ld bc, $6981                                  ; $77ff: $01 $81 $69
    nop                                           ; $7802: $00
    nop                                           ; $7803: $00
    ld bc, $05e7                                  ; $7804: $01 $e7 $05
    dec c                                         ; $7807: $0d
    ld d, e                                       ; $7808: $53

Jump_007_7809:
    ld a, [hl+]                                   ; $7809: $2a
    ld c, d                                       ; $780a: $4a
    ld a, b                                       ; $780b: $78
    jr @-$0b                                      ; $780c: $18 $f3

    ld [hl], a                                    ; $780e: $77
    add h                                         ; $780f: $84
    dec a                                         ; $7810: $3d
    nop                                           ; $7811: $00
    add c                                         ; $7812: $81
    ld c, b                                       ; $7813: $48
    nop                                           ; $7814: $00
    nop                                           ; $7815: $00
    ld bc, $6981                                  ; $7816: $01 $81 $69
    nop                                           ; $7819: $00
    nop                                           ; $781a: $00
    ld bc, $4d84                                  ; $781b: $01 $84 $4d
    nop                                           ; $781e: $00
    add c                                         ; $781f: $81
    ld e, b                                       ; $7820: $58
    nop                                           ; $7821: $00
    nop                                           ; $7822: $00
    ld bc, $05e7                                  ; $7823: $01 $e7 $05
    dec c                                         ; $7826: $0d
    ld d, e                                       ; $7827: $53
    ld a, [hl+]                                   ; $7828: $2a
    ld c, d                                       ; $7829: $4a
    ld a, b                                       ; $782a: $78
    jr @+$11                                      ; $782b: $18 $0f

    ld a, b                                       ; $782d: $78
    add h                                         ; $782e: $84
    ld d, l                                       ; $782f: $55
    nop                                           ; $7830: $00
    add c                                         ; $7831: $81
    ld de, $0000                                  ; $7832: $11 $00 $00
    ld bc, $3881                                  ; $7835: $01 $81 $38
    nop                                           ; $7838: $00
    nop                                           ; $7839: $00
    ld bc, $9081                                  ; $783a: $01 $81 $90
    nop                                           ; $783d: $00
    nop                                           ; $783e: $00
    ld bc, $05e7                                  ; $783f: $01 $e7 $05
    dec c                                         ; $7842: $0d
    ld d, e                                       ; $7843: $53
    ld a, [hl+]                                   ; $7844: $2a
    ld c, d                                       ; $7845: $4a
    ld a, b                                       ; $7846: $78
    jr jr_007_7877                                ; $7847: $18 $2e

    ld a, b                                       ; $7849: $78
    ld d, a                                       ; $784a: $57
    nop                                           ; $784b: $00
    nop                                           ; $784c: $00
    inc h                                         ; $784d: $24
    jp nz, Jump_000_2466                          ; $784e: $c2 $66 $24

    jr nc, jr_007_78ba                            ; $7851: $30 $67

    daa                                           ; $7853: $27
    ld e, c                                       ; $7854: $59
    ld a, b                                       ; $7855: $78
    inc c                                         ; $7856: $0c
    adc l                                         ; $7857: $8d
    ld a, b                                       ; $7858: $78
    ld h, e                                       ; $7859: $63
    inc h                                         ; $785a: $24
    ret z                                         ; $785b: $c8

    ld h, [hl]                                    ; $785c: $66
    inc h                                         ; $785d: $24
    jr nc, jr_007_78c7                            ; $785e: $30 $67

    daa                                           ; $7860: $27
    ld h, [hl]                                    ; $7861: $66
    ld a, b                                       ; $7862: $78
    inc c                                         ; $7863: $0c
    adc l                                         ; $7864: $8d
    ld a, b                                       ; $7865: $78
    ld h, e                                       ; $7866: $63
    inc h                                         ; $7867: $24
    adc $66                                       ; $7868: $ce $66
    inc h                                         ; $786a: $24
    jr nc, jr_007_78d4                            ; $786b: $30 $67

    daa                                           ; $786d: $27
    ld [hl], e                                    ; $786e: $73
    ld a, b                                       ; $786f: $78
    inc c                                         ; $7870: $0c
    adc l                                         ; $7871: $8d
    ld a, b                                       ; $7872: $78
    ld h, b                                       ; $7873: $60
    rst $20                                       ; $7874: $e7
    dec b                                         ; $7875: $05
    cp l                                          ; $7876: $bd

jr_007_7877:
    ld d, b                                       ; $7877: $50
    rst $20                                       ; $7878: $e7
    rlca                                          ; $7879: $07
    add d                                         ; $787a: $82
    ld h, a                                       ; $787b: $67
    rst $20                                       ; $787c: $e7
    dec b                                         ; $787d: $05
    ld c, b                                       ; $787e: $48
    ld d, h                                       ; $787f: $54
    rst $20                                       ; $7880: $e7
    dec b                                         ; $7881: $05
    ld c, l                                       ; $7882: $4d
    ld d, d                                       ; $7883: $52
    nop                                           ; $7884: $00
    ld b, c                                       ; $7885: $41
    ld d, a                                       ; $7886: $57
    rst $20                                       ; $7887: $e7
    rlca                                          ; $7888: $07
    ld l, [hl]                                    ; $7889: $6e
    ld [hl], l                                    ; $788a: $75
    nop                                           ; $788b: $00
    nop                                           ; $788c: $00
    rst $20                                       ; $788d: $e7
    dec b                                         ; $788e: $05
    add hl, bc                                    ; $788f: $09
    ld d, d                                       ; $7890: $52
    inc h                                         ; $7891: $24
    xor c                                         ; $7892: $a9
    ld h, h                                       ; $7893: $64
    add h                                         ; $7894: $84
    ld bc, $2400                                  ; $7895: $01 $00 $24
    rst $18                                       ; $7898: $df
    ld l, h                                       ; $7899: $6c
    ld [$01e7], a                                 ; $789a: $ea $e7 $01
    jp nz, $037b                                  ; $789d: $c2 $7b $03

    nop                                           ; $78a0: $00
    nop                                           ; $78a1: $00
    ld b, $00                                     ; $78a2: $06 $00
    nop                                           ; $78a4: $00
    ld d, c                                       ; $78a5: $51
    ld a, a                                       ; $78a6: $7f
    ld h, h                                       ; $78a7: $64
    nop                                           ; $78a8: $00
    inc d                                         ; $78a9: $14
    ld d, c                                       ; $78aa: $51
    adc c                                         ; $78ab: $89
    ld h, h                                       ; $78ac: $64
    inc bc                                        ; $78ad: $03
    jr c, @+$01                                   ; $78ae: $38 $ff

    ld b, $38                                     ; $78b0: $06 $38
    rst $38                                       ; $78b2: $ff
    nop                                           ; $78b3: $00
    ld e, $03                                     ; $78b4: $1e $03
    nop                                           ; $78b6: $00
    nop                                           ; $78b7: $00
    ld b, $00                                     ; $78b8: $06 $00

jr_007_78ba:
    nop                                           ; $78ba: $00
    ld h, b                                       ; $78bb: $60
    rrca                                          ; $78bc: $0f
    nop                                           ; $78bd: $00
    ld a, [bc]                                    ; $78be: $0a
    rst $20                                       ; $78bf: $e7
    dec b                                         ; $78c0: $05
    jr nc, jr_007_7915                            ; $78c1: $30 $52

    rst $20                                       ; $78c3: $e7
    dec b                                         ; $78c4: $05
    ld [hl], e                                    ; $78c5: $73
    ld d, c                                       ; $78c6: $51

jr_007_78c7:
    rst $20                                       ; $78c7: $e7
    ld bc, $7bc2                                  ; $78c8: $01 $c2 $7b
    rst $20                                       ; $78cb: $e7
    dec b                                         ; $78cc: $05
    add hl, bc                                    ; $78cd: $09
    ld d, d                                       ; $78ce: $52
    ld [$05e7], a                                 ; $78cf: $ea $e7 $05
    cp l                                          ; $78d2: $bd

Call_007_78d3:
    ld d, b                                       ; $78d3: $50

jr_007_78d4:
    rst $20                                       ; $78d4: $e7
    dec b                                         ; $78d5: $05
    and h                                         ; $78d6: $a4
    ld d, d                                       ; $78d7: $52
    nop                                           ; $78d8: $00
    ld a, [bc]                                    ; $78d9: $0a
    ld d, a                                       ; $78da: $57
    rst $20                                       ; $78db: $e7
    rlca                                          ; $78dc: $07
    ld l, [hl]                                    ; $78dd: $6e
    ld [hl], l                                    ; $78de: $75
    nop                                           ; $78df: $00
    nop                                           ; $78e0: $00
    rst $20                                       ; $78e1: $e7
    dec b                                         ; $78e2: $05
    jr nc, jr_007_7937                            ; $78e3: $30 $52

    rst $20                                       ; $78e5: $e7

jr_007_78e6:
    dec b                                         ; $78e6: $05
    ld [hl], e                                    ; $78e7: $73
    ld d, c                                       ; $78e8: $51
    rst $20                                       ; $78e9: $e7
    dec b                                         ; $78ea: $05
    rst $18                                       ; $78eb: $df
    ld d, d                                       ; $78ec: $52

jr_007_78ed:
    jr jr_007_78e6                                ; $78ed: $18 $f7

    ld a, l                                       ; $78ef: $7d
    sbc a                                         ; $78f0: $9f
    db $ec                                        ; $78f1: $ec
    and d                                         ; $78f2: $a2
    inc c                                         ; $78f3: $0c
    jr jr_007_78ed                                ; $78f4: $18 $f7

    ld a, l                                       ; $78f6: $7d
    ld [$05e7], a                                 ; $78f7: $ea $e7 $05
    cp l                                          ; $78fa: $bd
    ld d, b                                       ; $78fb: $50
    add h                                         ; $78fc: $84
    ld b, h                                       ; $78fd: $44
    nop                                           ; $78fe: $00
    ld c, b                                       ; $78ff: $48
    nop                                           ; $7900: $00
    ld c, e                                       ; $7901: $4b
    nop                                           ; $7902: $00
    ld c, [hl]                                    ; $7903: $4e
    dec [hl]                                      ; $7904: $35
    or $00                                        ; $7905: $f6 $00
    add hl, sp                                    ; $7907: $39
    ld a, a                                       ; $7908: $7f
    ld c, [hl]                                    ; $7909: $4e
    dec [hl]                                      ; $790a: $35
    or $01                                        ; $790b: $f6 $01

Call_007_790d:
    add hl, sp                                    ; $790d: $39
    ld a, a                                       ; $790e: $7f
    ld c, [hl]                                    ; $790f: $4e
    dec [hl]                                      ; $7910: $35
    or $02                                        ; $7911: $f6 $02
    add hl, sp                                    ; $7913: $39
    ld a, a                                       ; $7914: $7f

jr_007_7915:
    ld c, [hl]                                    ; $7915: $4e
    dec [hl]                                      ; $7916: $35
    or $03                                        ; $7917: $f6 $03
    add hl, sp                                    ; $7919: $39
    ld a, a                                       ; $791a: $7f
    rst $20                                       ; $791b: $e7
    dec b                                         ; $791c: $05
    add hl, bc                                    ; $791d: $09
    ld d, d                                       ; $791e: $52
    ld b, $9c                                     ; $791f: $06 $9c
    rst $38                                       ; $7921: $ff
    rst $20                                       ; $7922: $e7
    ld bc, $7bc2                                  ; $7923: $01 $c2 $7b
    ld [$e757], a                                 ; $7926: $ea $57 $e7
    rlca                                          ; $7929: $07
    ld l, [hl]                                    ; $792a: $6e
    ld [hl], l                                    ; $792b: $75
    nop                                           ; $792c: $00
    nop                                           ; $792d: $00
    rst $20                                       ; $792e: $e7
    dec b                                         ; $792f: $05
    add hl, bc                                    ; $7930: $09
    ld d, d                                       ; $7931: $52
    add h                                         ; $7932: $84
    ld b, h                                       ; $7933: $44
    nop                                           ; $7934: $00
    ld b, $9c                                     ; $7935: $06 $9c

jr_007_7937:
    rst $38                                       ; $7937: $ff
    jp nc, Jump_007_7941                          ; $7938: $d2 $41 $79

    ld c, c                                       ; $793b: $49
    ld a, c                                       ; $793c: $79
    ld d, c                                       ; $793d: $51
    ld a, c                                       ; $793e: $79
    ld e, c                                       ; $793f: $59
    ld a, c                                       ; $7940: $79

Jump_007_7941:
    dec de                                        ; $7941: $1b
    inc [hl]                                      ; $7942: $34
    halt                                          ; $7943: $76
    nop                                           ; $7944: $00
    ld a, [hl+]                                   ; $7945: $2a
    ld d, a                                       ; $7946: $57
    nop                                           ; $7947: $00
    nop                                           ; $7948: $00
    dec de                                        ; $7949: $1b
    ld a, $76                                     ; $794a: $3e $76
    nop                                           ; $794c: $00
    ld a, [hl+]                                   ; $794d: $2a
    ld d, a                                       ; $794e: $57
    nop                                           ; $794f: $00
    nop                                           ; $7950: $00
    dec de                                        ; $7951: $1b
    ld c, b                                       ; $7952: $48
    halt                                          ; $7953: $76
    nop                                           ; $7954: $00
    ld a, [hl+]                                   ; $7955: $2a
    ld d, a                                       ; $7956: $57
    nop                                           ; $7957: $00
    nop                                           ; $7958: $00
    dec de                                        ; $7959: $1b
    ld d, d                                       ; $795a: $52
    halt                                          ; $795b: $76

jr_007_795c:
    nop                                           ; $795c: $00
    ld a, [hl+]                                   ; $795d: $2a
    ld d, a                                       ; $795e: $57
    nop                                           ; $795f: $00
    nop                                           ; $7960: $00
    ld [$01e7], a                                 ; $7961: $ea $e7 $01
    jp nz, $817b                                  ; $7964: $c2 $7b $81

    jr z, jr_007_7969                             ; $7967: $28 $00

jr_007_7969:
    rst $20                                       ; $7969: $e7
    dec b                                         ; $796a: $05
    add hl, bc                                    ; $796b: $09
    ld d, d                                       ; $796c: $52
    ld [$7881], a                                 ; $796d: $ea $81 $78
    nop                                           ; $7970: $00
    rst $20                                       ; $7971: $e7
    dec b                                         ; $7972: $05
    add hl, bc                                    ; $7973: $09
    ld d, d                                       ; $7974: $52
    ld [$5081], a                                 ; $7975: $ea $81 $50
    nop                                           ; $7978: $00
    add h                                         ; $7979: $84
    ld c, h                                       ; $797a: $4c
    nop                                           ; $797b: $00
    rst $20                                       ; $797c: $e7
    dec b                                         ; $797d: $05
    add hl, bc                                    ; $797e: $09
    ld d, d                                       ; $797f: $52
    ld [$05e7], a                                 ; $7980: $ea $e7 $05
    cp l                                          ; $7983: $bd
    ld d, b                                       ; $7984: $50
    ld d, a                                       ; $7985: $57
    rst $20                                       ; $7986: $e7
    rlca                                          ; $7987: $07
    ld l, [hl]                                    ; $7988: $6e
    ld [hl], l                                    ; $7989: $75
    nop                                           ; $798a: $00
    nop                                           ; $798b: $00
    db $e4                                        ; $798c: $e4
    ld bc, $79ae                                  ; $798d: $01 $ae $79
    ld [$05e7], a                                 ; $7990: $ea $e7 $05
    cp l                                          ; $7993: $bd
    ld d, b                                       ; $7994: $50
    rst $20                                       ; $7995: $e7
    ld bc, $7bc2                                  ; $7996: $01 $c2 $7b
    add c                                         ; $7999: $81
    ld a, b                                       ; $799a: $78
    nop                                           ; $799b: $00
    add h                                         ; $799c: $84
    ld h, $00                                     ; $799d: $26 $00
    add hl, bc                                    ; $799f: $09
    nop                                           ; $79a0: $00
    ld c, [hl]                                    ; $79a1: $4e
    ld c, $e7                                     ; $79a2: $0e $e7
    dec b                                         ; $79a4: $05
    ld hl, sp+$52                                 ; $79a5: $f8 $52
    add hl, sp                                    ; $79a7: $39
    ld a, a                                       ; $79a8: $7f
    nop                                           ; $79a9: $00
    ld e, $57                                     ; $79aa: $1e $57
    nop                                           ; $79ac: $00
    nop                                           ; $79ad: $00
    add c                                         ; $79ae: $81
    ld a, b                                       ; $79af: $78
    nop                                           ; $79b0: $00
    add h                                         ; $79b1: $84
    ld d, l                                       ; $79b2: $55
    nop                                           ; $79b3: $00
    add hl, bc                                    ; $79b4: $09
    nop                                           ; $79b5: $00
    rst $20                                       ; $79b6: $e7
    rlca                                          ; $79b7: $07
    ld l, [hl]                                    ; $79b8: $6e
    ld [hl], l                                    ; $79b9: $75
    nop                                           ; $79ba: $00
    ld e, $57                                     ; $79bb: $1e $57
    nop                                           ; $79bd: $00
    nop                                           ; $79be: $00
    db $e4                                        ; $79bf: $e4
    nop                                           ; $79c0: $00
    add $79                                       ; $79c1: $c6 $79
    jr jr_007_795c                                ; $79c3: $18 $97

    ld a, l                                       ; $79c5: $7d
    ld [$01e7], a                                 ; $79c6: $ea $e7 $01
    jp nz, $e77b                                  ; $79c9: $c2 $7b $e7

    dec b                                         ; $79cc: $05
    cp l                                          ; $79cd: $bd
    ld d, b                                       ; $79ce: $50
    jr @-$67                                      ; $79cf: $18 $97

    ld a, l                                       ; $79d1: $7d
    rst $20                                       ; $79d2: $e7
    ld bc, $7bc2                                  ; $79d3: $01 $c2 $7b
    ld [$05e7], a                                 ; $79d6: $ea $e7 $05
    jr nc, jr_007_7a2d                            ; $79d9: $30 $52

    rst $20                                       ; $79db: $e7
    dec b                                         ; $79dc: $05
    ld [hl], e                                    ; $79dd: $73
    ld d, c                                       ; $79de: $51
    rst $20                                       ; $79df: $e7
    dec b                                         ; $79e0: $05
    add hl, bc                                    ; $79e1: $09
    ld d, d                                       ; $79e2: $52
    ld [$4924], a                                 ; $79e3: $ea $24 $49
    ld l, b                                       ; $79e6: $68
    rst $20                                       ; $79e7: $e7
    dec b                                         ; $79e8: $05
    cp l                                          ; $79e9: $bd
    ld d, b                                       ; $79ea: $50
    ld d, a                                       ; $79eb: $57
    rst $20                                       ; $79ec: $e7
    rlca                                          ; $79ed: $07
    ld l, [hl]                                    ; $79ee: $6e
    ld [hl], l                                    ; $79ef: $75
    nop                                           ; $79f0: $00
    nop                                           ; $79f1: $00
    rst $20                                       ; $79f2: $e7
    ld bc, $7bc2                                  ; $79f3: $01 $c2 $7b
    ld [$05e7], a                                 ; $79f6: $ea $e7 $05
    cp l                                          ; $79f9: $bd
    ld d, b                                       ; $79fa: $50
    rst $20                                       ; $79fb: $e7
    dec b                                         ; $79fc: $05
    jr nc, jr_007_7a51                            ; $79fd: $30 $52

    rst $20                                       ; $79ff: $e7
    dec b                                         ; $7a00: $05

Call_007_7a01:
Jump_007_7a01:
    ld [hl], e                                    ; $7a01: $73
    ld d, c                                       ; $7a02: $51
    rst $20                                       ; $7a03: $e7
    dec b                                         ; $7a04: $05
    add hl, bc                                    ; $7a05: $09
    ld d, d                                       ; $7a06: $52
    ld [$364e], a                                 ; $7a07: $ea $4e $36
    add hl, sp                                    ; $7a0a: $39
    ld a, a                                       ; $7a0b: $7f
    ld [$374e], a                                 ; $7a0c: $ea $4e $37
    add hl, sp                                    ; $7a0f: $39
    ld a, a                                       ; $7a10: $7f
    rst $20                                       ; $7a11: $e7
    dec b                                         ; $7a12: $05
    and h                                         ; $7a13: $a4
    ld d, d                                       ; $7a14: $52
    nop                                           ; $7a15: $00
    ld a, [bc]                                    ; $7a16: $0a
    ld d, a                                       ; $7a17: $57
    rst $20                                       ; $7a18: $e7
    rlca                                          ; $7a19: $07
    ld l, [hl]                                    ; $7a1a: $6e
    ld [hl], l                                    ; $7a1b: $75
    nop                                           ; $7a1c: $00
    nop                                           ; $7a1d: $00
    rst $20                                       ; $7a1e: $e7
    dec b                                         ; $7a1f: $05
    ld [hl], e                                    ; $7a20: $73
    ld d, c                                       ; $7a21: $51
    rst $20                                       ; $7a22: $e7
    dec b                                         ; $7a23: $05
    add hl, bc                                    ; $7a24: $09
    ld d, d                                       ; $7a25: $52
    ld b, $9c                                     ; $7a26: $06 $9c
    rst $38                                       ; $7a28: $ff
    nop                                           ; $7a29: $00
    inc d                                         ; $7a2a: $14
    ld d, a                                       ; $7a2b: $57
    nop                                           ; $7a2c: $00

jr_007_7a2d:
    nop                                           ; $7a2d: $00
    db $e4                                        ; $7a2e: $e4
    nop                                           ; $7a2f: $00
    dec [hl]                                      ; $7a30: $35
    ld a, d                                       ; $7a31: $7a
    jr jr_007_7a72                                ; $7a32: $18 $3e

    ld a, d                                       ; $7a34: $7a
    rst $20                                       ; $7a35: $e7
    ld bc, $7bc2                                  ; $7a36: $01 $c2 $7b
    ld [$05e7], a                                 ; $7a39: $ea $e7 $05
    cp l                                          ; $7a3c: $bd
    ld d, b                                       ; $7a3d: $50
    jp nc, Jump_007_7a47                          ; $7a3e: $d2 $47 $7a

    ld d, b                                       ; $7a41: $50
    ld a, d                                       ; $7a42: $7a
    ld e, c                                       ; $7a43: $59
    ld a, d                                       ; $7a44: $7a
    ld a, d                                       ; $7a45: $7a
    ld a, d                                       ; $7a46: $7a

Jump_007_7a47:
    inc h                                         ; $7a47: $24
    jp nz, Jump_000_2466                          ; $7a48: $c2 $66 $24

    jr nc, jr_007_7ab4                            ; $7a4b: $30 $67

    ld a, [hl+]                                   ; $7a4d: $2a
    adc d                                         ; $7a4e: $8a
    ld a, d                                       ; $7a4f: $7a
    inc h                                         ; $7a50: $24

jr_007_7a51:
    ret z                                         ; $7a51: $c8

    ld h, [hl]                                    ; $7a52: $66
    inc h                                         ; $7a53: $24
    jr nc, jr_007_7abd                            ; $7a54: $30 $67

    ld a, [hl+]                                   ; $7a56: $2a
    adc d                                         ; $7a57: $8a
    ld a, d                                       ; $7a58: $7a
    inc h                                         ; $7a59: $24
    adc $66                                       ; $7a5a: $ce $66
    inc h                                         ; $7a5c: $24
    jr nc, jr_007_7ac6                            ; $7a5d: $30 $67

    daa                                           ; $7a5f: $27
    ld a, d                                       ; $7a60: $7a
    ld a, d                                       ; $7a61: $7a
    rst $20                                       ; $7a62: $e7
    dec b                                         ; $7a63: $05
    ld [hl], e                                    ; $7a64: $73
    ld d, c                                       ; $7a65: $51
    rst $20                                       ; $7a66: $e7
    dec b                                         ; $7a67: $05
    ldh a, [rHDMA2]                               ; $7a68: $f0 $52
    rst $20                                       ; $7a6a: $e7
    dec b                                         ; $7a6b: $05
    ld d, a                                       ; $7a6c: $57
    ld d, c                                       ; $7a6d: $51
    add hl, sp                                    ; $7a6e: $39
    ld a, a                                       ; $7a6f: $7f
    ld h, e                                       ; $7a70: $63
    rst $20                                       ; $7a71: $e7

jr_007_7a72:
    dec b                                         ; $7a72: $05
    add hl, bc                                    ; $7a73: $09
    ld d, d                                       ; $7a74: $52
    ld [$5760], a                                 ; $7a75: $ea $60 $57
    nop                                           ; $7a78: $00
    nop                                           ; $7a79: $00
    inc h                                         ; $7a7a: $24
    sbc $7f                                       ; $7a7b: $de $7f
    ld [$5760], a                                 ; $7a7d: $ea $60 $57
    rst $20                                       ; $7a80: $e7
    dec b                                         ; $7a81: $05
    jr nz, jr_007_7ad6                            ; $7a82: $20 $52

    rst $20                                       ; $7a84: $e7
    rlca                                          ; $7a85: $07
    ld l, [hl]                                    ; $7a86: $6e
    ld [hl], l                                    ; $7a87: $75
    nop                                           ; $7a88: $00
    nop                                           ; $7a89: $00
    rst $20                                       ; $7a8a: $e7
    dec b                                         ; $7a8b: $05
    ld [hl], e                                    ; $7a8c: $73
    ld d, c                                       ; $7a8d: $51
    rst $20                                       ; $7a8e: $e7
    dec b                                         ; $7a8f: $05
    ldh a, [rHDMA2]                               ; $7a90: $f0 $52
    rst $20                                       ; $7a92: $e7
    dec b                                         ; $7a93: $05
    ld d, a                                       ; $7a94: $57
    ld d, c                                       ; $7a95: $51
    add hl, sp                                    ; $7a96: $39
    ld a, a                                       ; $7a97: $7f
    ld h, e                                       ; $7a98: $63
    rst $20                                       ; $7a99: $e7
    dec b                                         ; $7a9a: $05
    add hl, bc                                    ; $7a9b: $09
    ld d, d                                       ; $7a9c: $52
    ld [$5760], a                                 ; $7a9d: $ea $60 $57
    nop                                           ; $7aa0: $00
    nop                                           ; $7aa1: $00
    rst $20                                       ; $7aa2: $e7
    ld bc, $7bc2                                  ; $7aa3: $01 $c2 $7b
    rst $20                                       ; $7aa6: $e7
    dec b                                         ; $7aa7: $05
    jr nc, jr_007_7afc                            ; $7aa8: $30 $52

    rst $20                                       ; $7aaa: $e7
    dec b                                         ; $7aab: $05
    ld [hl], e                                    ; $7aac: $73
    ld d, c                                       ; $7aad: $51
    inc h                                         ; $7aae: $24
    ld c, c                                       ; $7aaf: $49
    ld l, b                                       ; $7ab0: $68
    ld [$05e7], a                                 ; $7ab1: $ea $e7 $05

jr_007_7ab4:
    cp l                                          ; $7ab4: $bd
    ld d, b                                       ; $7ab5: $50
    rst $20                                       ; $7ab6: $e7
    dec b                                         ; $7ab7: $05
    add hl, bc                                    ; $7ab8: $09
    ld d, d                                       ; $7ab9: $52
    ld [$e757], a                                 ; $7aba: $ea $57 $e7

jr_007_7abd:
    rlca                                          ; $7abd: $07
    ld l, [hl]                                    ; $7abe: $6e
    ld [hl], l                                    ; $7abf: $75

jr_007_7ac0:
    nop                                           ; $7ac0: $00
    nop                                           ; $7ac1: $00
    rst $20                                       ; $7ac2: $e7
    ld bc, $7bc2                                  ; $7ac3: $01 $c2 $7b

jr_007_7ac6:
    jp nc, $7acf                                  ; $7ac6: $d2 $cf $7a

    ret c                                         ; $7ac9: $d8

    ld a, d                                       ; $7aca: $7a
    pop hl                                        ; $7acb: $e1

jr_007_7acc:
    ld a, d                                       ; $7acc: $7a
    ld [$247a], a                                 ; $7acd: $ea $7a $24
    jp nz, Jump_000_2466                          ; $7ad0: $c2 $66 $24

    jr nc, jr_007_7b3c                            ; $7ad3: $30 $67

    ld a, [hl+]                                   ; $7ad5: $2a

jr_007_7ad6:
    ld hl, sp+$7a                                 ; $7ad6: $f8 $7a
    inc h                                         ; $7ad8: $24
    ret z                                         ; $7ad9: $c8

    ld h, [hl]                                    ; $7ada: $66
    inc h                                         ; $7adb: $24
    jr nc, jr_007_7b45                            ; $7adc: $30 $67

    ld a, [hl+]                                   ; $7ade: $2a
    ld hl, sp+$7a                                 ; $7adf: $f8 $7a
    inc h                                         ; $7ae1: $24
    adc $66                                       ; $7ae2: $ce $66
    inc h                                         ; $7ae4: $24
    jr nc, jr_007_7b4e                            ; $7ae5: $30 $67

    ld a, [hl+]                                   ; $7ae7: $2a
    ld hl, sp+$7a                                 ; $7ae8: $f8 $7a
    ld h, b                                       ; $7aea: $60
    nop                                           ; $7aeb: $00
    ld l, h                                       ; $7aec: $6c
    rst $20                                       ; $7aed: $e7
    dec b                                         ; $7aee: $05
    cp l                                          ; $7aef: $bd
    ld d, b                                       ; $7af0: $50
    ld d, a                                       ; $7af1: $57
    rst $20                                       ; $7af2: $e7
    rlca                                          ; $7af3: $07
    ld l, [hl]                                    ; $7af4: $6e
    ld [hl], l                                    ; $7af5: $75
    nop                                           ; $7af6: $00
    nop                                           ; $7af7: $00
    rst $20                                       ; $7af8: $e7
    dec b                                         ; $7af9: $05
    ld [hl], e                                    ; $7afa: $73
    ld d, c                                       ; $7afb: $51

jr_007_7afc:
    rst $20                                       ; $7afc: $e7
    dec b                                         ; $7afd: $05
    ldh a, [rHDMA2]                               ; $7afe: $f0 $52
    rst $20                                       ; $7b00: $e7
    dec b                                         ; $7b01: $05
    ld d, a                                       ; $7b02: $57
    ld d, c                                       ; $7b03: $51
    add hl, sp                                    ; $7b04: $39
    ld a, a                                       ; $7b05: $7f
    ld h, e                                       ; $7b06: $63
    rst $20                                       ; $7b07: $e7
    dec b                                         ; $7b08: $05
    add hl, bc                                    ; $7b09: $09

Call_007_7b0a:
    ld d, d                                       ; $7b0a: $52
    ld [$0048], a                                 ; $7b0b: $ea $48 $00
    ld c, e                                       ; $7b0e: $4b
    nop                                           ; $7b0f: $00
    ld c, [hl]                                    ; $7b10: $4e
    jr c, jr_007_7b4c                             ; $7b11: $38 $39

    ld a, a                                       ; $7b13: $7f
    nop                                           ; $7b14: $00
    jr jr_007_7b77                                ; $7b15: $18 $60

    ld d, a                                       ; $7b17: $57
    nop                                           ; $7b18: $00
    nop                                           ; $7b19: $00
    rst $20                                       ; $7b1a: $e7
    dec b                                         ; $7b1b: $05
    add hl, bc                                    ; $7b1c: $09
    ld d, d                                       ; $7b1d: $52
    nop                                           ; $7b1e: $00
    jr jr_007_7b78                                ; $7b1f: $18 $57

    nop                                           ; $7b21: $00
    nop                                           ; $7b22: $00
    db $e4                                        ; $7b23: $e4
    nop                                           ; $7b24: $00
    ld a, [hl+]                                   ; $7b25: $2a
    ld a, e                                       ; $7b26: $7b
    jr jr_007_7ac0                                ; $7b27: $18 $97

    ld a, l                                       ; $7b29: $7d
    ld [$05e7], a                                 ; $7b2a: $ea $e7 $05
    cp l                                          ; $7b2d: $bd
    ld d, b                                       ; $7b2e: $50
    rst $20                                       ; $7b2f: $e7
    ld bc, $7bc2                                  ; $7b30: $01 $c2 $7b
    jr jr_007_7acc                                ; $7b33: $18 $97

    ld a, l                                       ; $7b35: $7d
    ld [$05e7], a                                 ; $7b36: $ea $e7 $05
    cp l                                          ; $7b39: $bd
    ld d, b                                       ; $7b3a: $50
    rst $20                                       ; $7b3b: $e7

jr_007_7b3c:
    dec b                                         ; $7b3c: $05
    jr nc, jr_007_7b91                            ; $7b3d: $30 $52

    rst $20                                       ; $7b3f: $e7
    dec b                                         ; $7b40: $05
    ld [hl], e                                    ; $7b41: $73
    ld d, c                                       ; $7b42: $51
    and d                                         ; $7b43: $a2
    inc bc                                        ; $7b44: $03

jr_007_7b45:
    rst $20                                       ; $7b45: $e7
    ld bc, $7bc2                                  ; $7b46: $01 $c2 $7b
    rst $20                                       ; $7b49: $e7
    dec b                                         ; $7b4a: $05
    add hl, bc                                    ; $7b4b: $09

jr_007_7b4c:
    ld d, d                                       ; $7b4c: $52
    rst $20                                       ; $7b4d: $e7

jr_007_7b4e:
    rlca                                          ; $7b4e: $07
    or b                                          ; $7b4f: $b0
    ld h, a                                       ; $7b50: $67
    inc bc                                        ; $7b51: $03
    nop                                           ; $7b52: $00
    cp $00                                        ; $7b53: $fe $00
    rrca                                          ; $7b55: $0f
    nop                                           ; $7b56: $00
    inc d                                         ; $7b57: $14
    ld h, b                                       ; $7b58: $60
    inc bc                                        ; $7b59: $03
    nop                                           ; $7b5a: $00
    nop                                           ; $7b5b: $00
    rst $20                                       ; $7b5c: $e7
    dec b                                         ; $7b5d: $05
    ld [hl], e                                    ; $7b5e: $73
    ld d, c                                       ; $7b5f: $51
    and d                                         ; $7b60: $a2
    inc bc                                        ; $7b61: $03
    ld h, e                                       ; $7b62: $63
    rst $20                                       ; $7b63: $e7
    dec b                                         ; $7b64: $05
    add hl, bc                                    ; $7b65: $09
    ld d, d                                       ; $7b66: $52
    inc bc                                        ; $7b67: $03
    nop                                           ; $7b68: $00
    cp $00                                        ; $7b69: $fe $00
    rrca                                          ; $7b6b: $0f
    rst $20                                       ; $7b6c: $e7
    dec b                                         ; $7b6d: $05
    and h                                         ; $7b6e: $a4
    ld d, d                                       ; $7b6f: $52
    rst $20                                       ; $7b70: $e7
    ld bc, $7bc2                                  ; $7b71: $01 $c2 $7b
    ld [$e757], a                                 ; $7b74: $ea $57 $e7

jr_007_7b77:
    rlca                                          ; $7b77: $07

jr_007_7b78:
    ld l, [hl]                                    ; $7b78: $6e
    ld [hl], l                                    ; $7b79: $75
    nop                                           ; $7b7a: $00
    nop                                           ; $7b7b: $00
    rst $20                                       ; $7b7c: $e7
    dec b                                         ; $7b7d: $05
    jr nc, jr_007_7bd2                            ; $7b7e: $30 $52

    rst $20                                       ; $7b80: $e7
    dec b                                         ; $7b81: $05
    ld [hl], e                                    ; $7b82: $73
    ld d, c                                       ; $7b83: $51
    ld [$05e7], a                                 ; $7b84: $ea $e7 $05
    cp l                                          ; $7b87: $bd
    ld d, b                                       ; $7b88: $50
    rst $20                                       ; $7b89: $e7
    dec b                                         ; $7b8a: $05
    add hl, bc                                    ; $7b8b: $09
    ld d, d                                       ; $7b8c: $52
    rst $20                                       ; $7b8d: $e7
    ld bc, $7bc2                                  ; $7b8e: $01 $c2 $7b

jr_007_7b91:
    ld [$05e7], a                                 ; $7b91: $ea $e7 $05
    add h                                         ; $7b94: $84
    ld d, e                                       ; $7b95: $53
    ld h, b                                       ; $7b96: $60
    nop                                           ; $7b97: $00
    dec b                                         ; $7b98: $05
    ld d, a                                       ; $7b99: $57
    rst $20                                       ; $7b9a: $e7
    rlca                                          ; $7b9b: $07
    ld l, [hl]                                    ; $7b9c: $6e
    ld [hl], l                                    ; $7b9d: $75
    nop                                           ; $7b9e: $00
    nop                                           ; $7b9f: $00
    rst $20                                       ; $7ba0: $e7
    ld bc, $7bc2                                  ; $7ba1: $01 $c2 $7b
    ld h, b                                       ; $7ba4: $60
    inc h                                         ; $7ba5: $24
    jp nz, $e766                                  ; $7ba6: $c2 $66 $e7

    dec b                                         ; $7ba9: $05
    inc d                                         ; $7baa: $14
    ld d, e                                       ; $7bab: $53
    inc h                                         ; $7bac: $24
    ret z                                         ; $7bad: $c8

    ld h, [hl]                                    ; $7bae: $66
    rst $20                                       ; $7baf: $e7
    dec b                                         ; $7bb0: $05
    inc d                                         ; $7bb1: $14
    ld d, e                                       ; $7bb2: $53
    inc h                                         ; $7bb3: $24
    adc $66                                       ; $7bb4: $ce $66
    rst $20                                       ; $7bb6: $e7
    dec b                                         ; $7bb7: $05
    inc d                                         ; $7bb8: $14
    ld d, e                                       ; $7bb9: $53
    nop                                           ; $7bba: $00
    add hl, de                                    ; $7bbb: $19
    ldh a, [$3d]                                  ; $7bbc: $f0 $3d
    nop                                           ; $7bbe: $00
    di                                            ; $7bbf: $f3
    dec b                                         ; $7bc0: $05
    nop                                           ; $7bc1: $00
    ld c, [hl]                                    ; $7bc2: $4e
    add hl, sp                                    ; $7bc3: $39
    add hl, sp                                    ; $7bc4: $39
    ld a, a                                       ; $7bc5: $7f
    nop                                           ; $7bc6: $00
    inc hl                                        ; $7bc7: $23
    ldh a, [$84]                                  ; $7bc8: $f0 $84
    nop                                           ; $7bca: $00
    di                                            ; $7bcb: $f3
    dec b                                         ; $7bcc: $05
    nop                                           ; $7bcd: $00
    ld c, [hl]                                    ; $7bce: $4e
    add hl, sp                                    ; $7bcf: $39
    add hl, sp                                    ; $7bd0: $39
    ld a, a                                       ; $7bd1: $7f

jr_007_7bd2:
    nop                                           ; $7bd2: $00
    inc hl                                        ; $7bd3: $23
    ld h, e                                       ; $7bd4: $63
    rst $20                                       ; $7bd5: $e7
    dec b                                         ; $7bd6: $05
    add hl, bc                                    ; $7bd7: $09
    ld d, d                                       ; $7bd8: $52
    dec d                                         ; $7bd9: $15
    ld c, $ea                                     ; $7bda: $0e $ea
    ld h, b                                       ; $7bdc: $60
    nop                                           ; $7bdd: $00
    ld a, [bc]                                    ; $7bde: $0a
    rst $20                                       ; $7bdf: $e7
    dec b                                         ; $7be0: $05
    cp l                                          ; $7be1: $bd
    ld d, b                                       ; $7be2: $50
    inc h                                         ; $7be3: $24
    jp nz, $e766                                  ; $7be4: $c2 $66 $e7

    dec b                                         ; $7be7: $05
    ld c, h                                       ; $7be8: $4c
    ld d, e                                       ; $7be9: $53
    inc h                                         ; $7bea: $24
    ret z                                         ; $7beb: $c8

    ld h, [hl]                                    ; $7bec: $66
    rst $20                                       ; $7bed: $e7
    dec b                                         ; $7bee: $05
    ld c, h                                       ; $7bef: $4c
    ld d, e                                       ; $7bf0: $53
    inc h                                         ; $7bf1: $24
    adc $66                                       ; $7bf2: $ce $66
    rst $20                                       ; $7bf4: $e7
    dec b                                         ; $7bf5: $05
    ld c, h                                       ; $7bf6: $4c

Jump_007_7bf7:
    ld d, e                                       ; $7bf7: $53
    ld d, a                                       ; $7bf8: $57
    rst $20                                       ; $7bf9: $e7
    rlca                                          ; $7bfa: $07
    ld l, [hl]                                    ; $7bfb: $6e
    ld [hl], l                                    ; $7bfc: $75
    nop                                           ; $7bfd: $00
    nop                                           ; $7bfe: $00
    inc bc                                        ; $7bff: $03
    nop                                           ; $7c00: $00

Call_007_7c01:
Jump_007_7c01:
    cp $06                                        ; $7c01: $fe $06
    nop                                           ; $7c03: $00
    ld bc, $05e7                                  ; $7c04: $01 $e7 $05
    add hl, bc                                    ; $7c07: $09
    ld d, d                                       ; $7c08: $52
    nop                                           ; $7c09: $00
    jr z, @+$59                                   ; $7c0a: $28 $57

    nop                                           ; $7c0c: $00
    nop                                           ; $7c0d: $00
    ld [$05e7], a                                 ; $7c0e: $ea $e7 $05
    cp l                                          ; $7c11: $bd
    ld d, b                                       ; $7c12: $50
    inc h                                         ; $7c13: $24
    jp nz, Jump_000_2466                          ; $7c14: $c2 $66 $24

    jr nc, jr_007_7c80                            ; $7c17: $30 $67

    daa                                           ; $7c19: $27
    rra                                           ; $7c1a: $1f
    ld a, h                                       ; $7c1b: $7c
    inc c                                         ; $7c1c: $0c
    ld b, h                                       ; $7c1d: $44
    ld a, h                                       ; $7c1e: $7c
    inc h                                         ; $7c1f: $24
    ret z                                         ; $7c20: $c8

    ld h, [hl]                                    ; $7c21: $66
    inc h                                         ; $7c22: $24
    jr nc, jr_007_7c8c                            ; $7c23: $30 $67

    daa                                           ; $7c25: $27
    dec hl                                        ; $7c26: $2b
    ld a, h                                       ; $7c27: $7c
    inc c                                         ; $7c28: $0c
    ld b, h                                       ; $7c29: $44
    ld a, h                                       ; $7c2a: $7c
    inc h                                         ; $7c2b: $24
    adc $66                                       ; $7c2c: $ce $66
    inc h                                         ; $7c2e: $24
    jr nc, jr_007_7c98                            ; $7c2f: $30 $67

    daa                                           ; $7c31: $27
    scf                                           ; $7c32: $37
    ld a, h                                       ; $7c33: $7c
    inc c                                         ; $7c34: $0c
    ld b, h                                       ; $7c35: $44
    ld a, h                                       ; $7c36: $7c
    rst $20                                       ; $7c37: $e7
    ld bc, $7bc2                                  ; $7c38: $01 $c2 $7b
    nop                                           ; $7c3b: $00
    inc a                                         ; $7c3c: $3c
    ld d, a                                       ; $7c3d: $57
    rst $20                                       ; $7c3e: $e7
    rlca                                          ; $7c3f: $07
    ld l, [hl]                                    ; $7c40: $6e
    ld [hl], l                                    ; $7c41: $75
    nop                                           ; $7c42: $00
    nop                                           ; $7c43: $00
    rst $20                                       ; $7c44: $e7
    dec b                                         ; $7c45: $05

jr_007_7c46:
    ld e, [hl]                                    ; $7c46: $5e
    ld d, c                                       ; $7c47: $51
    ld c, [hl]                                    ; $7c48: $4e
    ld a, $f9                                     ; $7c49: $3e $f9
    ret z                                         ; $7c4b: $c8

Call_007_7c4c:
    nop                                           ; $7c4c: $00
    add hl, sp                                    ; $7c4d: $39
    ld a, a                                       ; $7c4e: $7f
    ld sp, hl                                     ; $7c4f: $f9
    jr c, @+$01                                   ; $7c50: $38 $ff

    ld c, [hl]                                    ; $7c52: $4e
    ld a, $39                                     ; $7c53: $3e $39
    ld a, a                                       ; $7c55: $7f
    ld sp, hl                                     ; $7c56: $f9
    nop                                           ; $7c57: $00
    nop                                           ; $7c58: $00
    rrca                                          ; $7c59: $0f
    dec de                                        ; $7c5a: $1b
    ld h, [hl]                                    ; $7c5b: $66
    halt                                          ; $7c5c: $76
    rst $20                                       ; $7c5d: $e7
    dec b                                         ; $7c5e: $05
    add hl, bc                                    ; $7c5f: $09
    ld d, d                                       ; $7c60: $52
    ld [$0057], a                                 ; $7c61: $ea $57 $00
    nop                                           ; $7c64: $00
    ld [$05e7], a                                 ; $7c65: $ea $e7 $05
    cp l                                          ; $7c68: $bd
    ld d, b                                       ; $7c69: $50
    rst $20                                       ; $7c6a: $e7
    ld bc, $7bc2                                  ; $7c6b: $01 $c2 $7b
    ldh a, [$32]                                  ; $7c6e: $f0 $32
    nop                                           ; $7c70: $00
    di                                            ; $7c71: $f3
    inc [hl]                                      ; $7c72: $34
    nop                                           ; $7c73: $00
    ld c, [hl]                                    ; $7c74: $4e
    inc a                                         ; $7c75: $3c
    add hl, sp                                    ; $7c76: $39
    ld a, a                                       ; $7c77: $7f
    ldh a, [$50]                                  ; $7c78: $f0 $50
    nop                                           ; $7c7a: $00
    di                                            ; $7c7b: $f3
    ld d, a                                       ; $7c7c: $57
    nop                                           ; $7c7d: $00
    ld c, [hl]                                    ; $7c7e: $4e

Call_007_7c7f:
    inc a                                         ; $7c7f: $3c

jr_007_7c80:
    add hl, sp                                    ; $7c80: $39
    ld a, a                                       ; $7c81: $7f
    ldh a, [$78]                                  ; $7c82: $f0 $78
    nop                                           ; $7c84: $00
    di                                            ; $7c85: $f3
    inc d                                         ; $7c86: $14
    nop                                           ; $7c87: $00
    ld c, [hl]                                    ; $7c88: $4e
    inc a                                         ; $7c89: $3c
    add hl, sp                                    ; $7c8a: $39
    ld a, a                                       ; $7c8b: $7f

jr_007_7c8c:
    nop                                           ; $7c8c: $00
    jr z, @+$59                                   ; $7c8d: $28 $57

    rst $20                                       ; $7c8f: $e7
    rlca                                          ; $7c90: $07
    ld l, [hl]                                    ; $7c91: $6e
    ld [hl], l                                    ; $7c92: $75
    nop                                           ; $7c93: $00
    nop                                           ; $7c94: $00
    rst $20                                       ; $7c95: $e7
    dec b                                         ; $7c96: $05
    add hl, bc                                    ; $7c97: $09

jr_007_7c98:
    ld d, d                                       ; $7c98: $52
    ld [$0057], a                                 ; $7c99: $ea $57 $00
    nop                                           ; $7c9c: $00
    db $e4                                        ; $7c9d: $e4
    nop                                           ; $7c9e: $00
    and h                                         ; $7c9f: $a4
    ld a, h                                       ; $7ca0: $7c
    jr @-$67                                      ; $7ca1: $18 $97

    ld a, l                                       ; $7ca3: $7d
    ld [$05e7], a                                 ; $7ca4: $ea $e7 $05
    cp l                                          ; $7ca7: $bd
    ld d, b                                       ; $7ca8: $50
    rst $20                                       ; $7ca9: $e7
    ld bc, $7bc2                                  ; $7caa: $01 $c2 $7b
    jr jr_007_7c46                                ; $7cad: $18 $97

    ld a, l                                       ; $7caf: $7d
    ld [$05e7], a                                 ; $7cb0: $ea $e7 $05
    cp l                                          ; $7cb3: $bd
    ld d, b                                       ; $7cb4: $50
    and d                                         ; $7cb5: $a2
    db $10                                        ; $7cb6: $10
    rst $20                                       ; $7cb7: $e7
    dec b                                         ; $7cb8: $05
    add hl, bc                                    ; $7cb9: $09
    ld d, d                                       ; $7cba: $52
    rst $20                                       ; $7cbb: $e7
    ld bc, $7bc2                                  ; $7cbc: $01 $c2 $7b
    inc c                                         ; $7cbf: $0c
    cp [hl]                                       ; $7cc0: $be
    ld a, [hl]                                    ; $7cc1: $7e
    ld d, a                                       ; $7cc2: $57
    rst $20                                       ; $7cc3: $e7
    rlca                                          ; $7cc4: $07
    ld l, [hl]                                    ; $7cc5: $6e
    ld [hl], l                                    ; $7cc6: $75
    nop                                           ; $7cc7: $00

jr_007_7cc8:
    nop                                           ; $7cc8: $00
    add h                                         ; $7cc9: $84
    ld a, [hl+]                                   ; $7cca: $2a
    nop                                           ; $7ccb: $00
    dec de                                        ; $7ccc: $1b
    ld e, h                                       ; $7ccd: $5c
    halt                                          ; $7cce: $76
    jr jr_007_7cc8                                ; $7ccf: $18 $f7

    ld a, l                                       ; $7cd1: $7d
    ld [$05e7], a                                 ; $7cd2: $ea $e7 $05
    cp l                                          ; $7cd5: $bd
    ld d, b                                       ; $7cd6: $50
    rst $20                                       ; $7cd7: $e7
    dec b                                         ; $7cd8: $05
    jr nc, jr_007_7d2d                            ; $7cd9: $30 $52

    rst $20                                       ; $7cdb: $e7
    dec b                                         ; $7cdc: $05
    ld [hl], e                                    ; $7cdd: $73
    ld d, c                                       ; $7cde: $51
    rst $20                                       ; $7cdf: $e7
    dec b                                         ; $7ce0: $05
    add hl, bc                                    ; $7ce1: $09
    ld d, d                                       ; $7ce2: $52
    rst $20                                       ; $7ce3: $e7
    ld bc, $7bc2                                  ; $7ce4: $01 $c2 $7b
    nop                                           ; $7ce7: $00
    inc l                                         ; $7ce8: $2c
    rst $20                                       ; $7ce9: $e7
    dec b                                         ; $7cea: $05
    ld c, b                                       ; $7ceb: $48
    ld d, h                                       ; $7cec: $54
    rst $20                                       ; $7ced: $e7
    dec b                                         ; $7cee: $05
    ld l, c                                       ; $7cef: $69
    ld d, d                                       ; $7cf0: $52
    nop                                           ; $7cf1: $00
    inc c                                         ; $7cf2: $0c

jr_007_7cf3:
    ld h, b                                       ; $7cf3: $60
    nop                                           ; $7cf4: $00
    ld [hl-], a                                   ; $7cf5: $32
    ld d, a                                       ; $7cf6: $57
    rst $20                                       ; $7cf7: $e7
    rlca                                          ; $7cf8: $07

Jump_007_7cf9:
jr_007_7cf9:
    ld l, [hl]                                    ; $7cf9: $6e
    ld [hl], l                                    ; $7cfa: $75
    nop                                           ; $7cfb: $00
    nop                                           ; $7cfc: $00
    add h                                         ; $7cfd: $84
    inc hl                                        ; $7cfe: $23

jr_007_7cff:
    nop                                           ; $7cff: $00
    jr jr_007_7cf9                                ; $7d00: $18 $f7

    ld a, l                                       ; $7d02: $7d
    ld [$05e7], a                                 ; $7d03: $ea $e7 $05
    cp l                                          ; $7d06: $bd
    ld d, b                                       ; $7d07: $50
    rst $20                                       ; $7d08: $e7
    dec b                                         ; $7d09: $05
    add hl, bc                                    ; $7d0a: $09
    ld d, d                                       ; $7d0b: $52
    rst $20                                       ; $7d0c: $e7
    ld bc, $7bc2                                  ; $7d0d: $01 $c2 $7b
    inc c                                         ; $7d10: $0c
    cp [hl]                                       ; $7d11: $be
    ld a, [hl]                                    ; $7d12: $7e
    ld h, b                                       ; $7d13: $60
    ld d, a                                       ; $7d14: $57
    rst $20                                       ; $7d15: $e7
    rlca                                          ; $7d16: $07
    ld l, [hl]                                    ; $7d17: $6e
    ld [hl], l                                    ; $7d18: $75
    nop                                           ; $7d19: $00
    nop                                           ; $7d1a: $00
    ld [$05e7], a                                 ; $7d1b: $ea $e7 $05
    cp l                                          ; $7d1e: $bd
    ld d, b                                       ; $7d1f: $50
    rst $20                                       ; $7d20: $e7
    dec b                                         ; $7d21: $05
    add hl, bc                                    ; $7d22: $09
    ld d, d                                       ; $7d23: $52
    rst $20                                       ; $7d24: $e7
    ld bc, $7bc2                                  ; $7d25: $01 $c2 $7b
    ld [$3d4e], a                                 ; $7d28: $ea $4e $3d
    add hl, sp                                    ; $7d2b: $39
    ld a, a                                       ; $7d2c: $7f

jr_007_7d2d:
    nop                                           ; $7d2d: $00
    ld a, [bc]                                    ; $7d2e: $0a
    ld c, b                                       ; $7d2f: $48
    ld a, [bc]                                    ; $7d30: $0a
    ld c, e                                       ; $7d31: $4b
    ld a, [bc]                                    ; $7d32: $0a
    ld c, [hl]                                    ; $7d33: $4e
    dec a                                         ; $7d34: $3d
    add hl, sp                                    ; $7d35: $39
    ld a, a                                       ; $7d36: $7f
    nop                                           ; $7d37: $00
    ld a, [bc]                                    ; $7d38: $0a
    ld c, b                                       ; $7d39: $48
    or $4b                                        ; $7d3a: $f6 $4b
    ld a, [bc]                                    ; $7d3c: $0a
    ld c, [hl]                                    ; $7d3d: $4e
    dec a                                         ; $7d3e: $3d
    add hl, sp                                    ; $7d3f: $39
    ld a, a                                       ; $7d40: $7f
    nop                                           ; $7d41: $00
    inc d                                         ; $7d42: $14
    rst $20                                       ; $7d43: $e7
    dec b                                         ; $7d44: $05
    ld d, l                                       ; $7d45: $55
    ld e, e                                       ; $7d46: $5b
    ld d, a                                       ; $7d47: $57
    rst $20                                       ; $7d48: $e7
    rlca                                          ; $7d49: $07
    ld l, [hl]                                    ; $7d4a: $6e
    ld [hl], l                                    ; $7d4b: $75
    nop                                           ; $7d4c: $00
    nop                                           ; $7d4d: $00
    rst $20                                       ; $7d4e: $e7
    dec b                                         ; $7d4f: $05
    add hl, bc                                    ; $7d50: $09
    ld d, d                                       ; $7d51: $52
    ld [$0057], a                                 ; $7d52: $ea $57 $00
    nop                                           ; $7d55: $00
    db $e4                                        ; $7d56: $e4
    nop                                           ; $7d57: $00
    ld e, l                                       ; $7d58: $5d

Jump_007_7d59:
    ld a, l                                       ; $7d59: $7d
    jr jr_007_7cf3                                ; $7d5a: $18 $97

    ld a, l                                       ; $7d5c: $7d
    ld [$05e7], a                                 ; $7d5d: $ea $e7 $05
    cp l                                          ; $7d60: $bd
    ld d, b                                       ; $7d61: $50
    rst $20                                       ; $7d62: $e7
    ld bc, $7bc2                                  ; $7d63: $01 $c2 $7b
    jr jr_007_7cff                                ; $7d66: $18 $97

    ld a, l                                       ; $7d68: $7d
    ld h, b                                       ; $7d69: $60
    ld [$05e7], a                                 ; $7d6a: $ea $e7 $05
    cp l                                          ; $7d6d: $bd
    ld d, b                                       ; $7d6e: $50
    rst $20                                       ; $7d6f: $e7
    ld bc, $7bc2                                  ; $7d70: $01 $c2 $7b
    rst $20                                       ; $7d73: $e7
    dec b                                         ; $7d74: $05
    db $d3                                        ; $7d75: $d3
    ld d, e                                       ; $7d76: $53
    ld d, a                                       ; $7d77: $57
    nop                                           ; $7d78: $00
    nop                                           ; $7d79: $00
    ld h, e                                       ; $7d7a: $63
    rst $20                                       ; $7d7b: $e7
    dec b                                         ; $7d7c: $05
    add hl, bc                                    ; $7d7d: $09
    ld d, d                                       ; $7d7e: $52
    nop                                           ; $7d7f: $00
    ld a, [bc]                                    ; $7d80: $0a
    nop                                           ; $7d81: $00
    ld b, [hl]                                    ; $7d82: $46
    ld d, a                                       ; $7d83: $57
    nop                                           ; $7d84: $00
    nop                                           ; $7d85: $00
    ld h, b                                       ; $7d86: $60
    nop                                           ; $7d87: $00
    ld a, [bc]                                    ; $7d88: $0a
    ld h, e                                       ; $7d89: $63
    rst $20                                       ; $7d8a: $e7
    dec b                                         ; $7d8b: $05
    add hl, bc                                    ; $7d8c: $09
    ld d, d                                       ; $7d8d: $52
    nop                                           ; $7d8e: $00
    ld e, d                                       ; $7d8f: $5a
    ld d, a                                       ; $7d90: $57
    rst $20                                       ; $7d91: $e7
    rlca                                          ; $7d92: $07
    ld l, [hl]                                    ; $7d93: $6e

Call_007_7d94:
    ld [hl], l                                    ; $7d94: $75
    nop                                           ; $7d95: $00
    nop                                           ; $7d96: $00
    jp nc, Jump_007_7da0                          ; $7d97: $d2 $a0 $7d

    xor c                                         ; $7d9a: $a9
    ld a, l                                       ; $7d9b: $7d
    or d                                          ; $7d9c: $b2
    ld a, l                                       ; $7d9d: $7d
    db $d3                                        ; $7d9e: $d3
    ld a, l                                       ; $7d9f: $7d

Jump_007_7da0:
    inc h                                         ; $7da0: $24
    jp nz, Jump_000_2466                          ; $7da1: $c2 $66 $24

    jr nc, @+$69                                  ; $7da4: $30 $67

    ld a, [hl+]                                   ; $7da6: $2a
    rst $18                                       ; $7da7: $df
    ld a, l                                       ; $7da8: $7d
    inc h                                         ; $7da9: $24
    ret z                                         ; $7daa: $c8

    ld h, [hl]                                    ; $7dab: $66
    inc h                                         ; $7dac: $24
    jr nc, @+$69                                  ; $7dad: $30 $67

    ld a, [hl+]                                   ; $7daf: $2a
    rst $18                                       ; $7db0: $df
    ld a, l                                       ; $7db1: $7d
    inc h                                         ; $7db2: $24
    adc $66                                       ; $7db3: $ce $66
    inc h                                         ; $7db5: $24
    jr nc, @+$69                                  ; $7db6: $30 $67

    daa                                           ; $7db8: $27
    db $d3                                        ; $7db9: $d3
    ld a, l                                       ; $7dba: $7d
    rst $20                                       ; $7dbb: $e7
    dec b                                         ; $7dbc: $05
    ld [hl], e                                    ; $7dbd: $73
    ld d, c                                       ; $7dbe: $51
    rst $20                                       ; $7dbf: $e7
    dec b                                         ; $7dc0: $05
    ldh a, [rHDMA2]                               ; $7dc1: $f0 $52
    rst $20                                       ; $7dc3: $e7
    dec b                                         ; $7dc4: $05
    ld d, a                                       ; $7dc5: $57
    ld d, c                                       ; $7dc6: $51
    add hl, sp                                    ; $7dc7: $39
    ld a, a                                       ; $7dc8: $7f
    ld h, e                                       ; $7dc9: $63
    rst $20                                       ; $7dca: $e7
    dec b                                         ; $7dcb: $05
    add hl, bc                                    ; $7dcc: $09
    ld d, d                                       ; $7dcd: $52
    ld [$5760], a                                 ; $7dce: $ea $60 $57
    nop                                           ; $7dd1: $00
    nop                                           ; $7dd2: $00
    inc h                                         ; $7dd3: $24
    sbc $7f                                       ; $7dd4: $de $7f
    ld [$5760], a                                 ; $7dd6: $ea $60 $57
    rst $20                                       ; $7dd9: $e7
    rlca                                          ; $7dda: $07
    ld l, [hl]                                    ; $7ddb: $6e
    ld [hl], l                                    ; $7ddc: $75
    nop                                           ; $7ddd: $00
    nop                                           ; $7dde: $00
    rst $20                                       ; $7ddf: $e7
    dec b                                         ; $7de0: $05
    ld [hl], e                                    ; $7de1: $73
    ld d, c                                       ; $7de2: $51
    rst $20                                       ; $7de3: $e7
    dec b                                         ; $7de4: $05
    ldh a, [rHDMA2]                               ; $7de5: $f0 $52
    rst $20                                       ; $7de7: $e7
    dec b                                         ; $7de8: $05
    ld d, a                                       ; $7de9: $57
    ld d, c                                       ; $7dea: $51
    add hl, sp                                    ; $7deb: $39
    ld a, a                                       ; $7dec: $7f
    ld h, e                                       ; $7ded: $63
    rst $20                                       ; $7dee: $e7
    dec b                                         ; $7def: $05
    add hl, bc                                    ; $7df0: $09
    ld d, d                                       ; $7df1: $52
    ld [$5760], a                                 ; $7df2: $ea $60 $57
    nop                                           ; $7df5: $00
    nop                                           ; $7df6: $00
    ld [$05e7], a                                 ; $7df7: $ea $e7 $05
    cp l                                          ; $7dfa: $bd
    ld d, b                                       ; $7dfb: $50
    rst $20                                       ; $7dfc: $e7
    ld bc, $7bc2                                  ; $7dfd: $01 $c2 $7b
    rst $20                                       ; $7e00: $e7

Jump_007_7e01:
    dec b                                         ; $7e01: $05
    add hl, bc                                    ; $7e02: $09
    ld d, d                                       ; $7e03: $52
    ld [$e757], a                                 ; $7e04: $ea $57 $e7
    rlca                                          ; $7e07: $07
    ld l, [hl]                                    ; $7e08: $6e
    ld [hl], l                                    ; $7e09: $75
    nop                                           ; $7e0a: $00
    nop                                           ; $7e0b: $00

    db $e7, $01, $c2, $7b, $ea, $e7, $05, $bd, $50, $e7, $05, $09, $52, $ea, $57, $e7
    db $07, $6e, $75, $00, $00

    ld [$05e7], a                                 ; $7e21: $ea $e7 $05
    cp l                                          ; $7e24: $bd
    ld d, b                                       ; $7e25: $50
    ld h, [hl]                                    ; $7e26: $66
    rst $20                                       ; $7e27: $e7
    dec b                                         ; $7e28: $05
    add hl, bc                                    ; $7e29: $09
    ld d, d                                       ; $7e2a: $52
    inc c                                         ; $7e2b: $0c
    ld b, a                                       ; $7e2c: $47
    ld a, [hl]                                    ; $7e2d: $7e
    inc c                                         ; $7e2e: $0c
    ld b, a                                       ; $7e2f: $47
    ld a, [hl]                                    ; $7e30: $7e
    inc c                                         ; $7e31: $0c
    ld b, a                                       ; $7e32: $47
    ld a, [hl]                                    ; $7e33: $7e
    inc c                                         ; $7e34: $0c
    ld b, a                                       ; $7e35: $47
    ld a, [hl]                                    ; $7e36: $7e
    inc c                                         ; $7e37: $0c
    ld b, a                                       ; $7e38: $47
    ld a, [hl]                                    ; $7e39: $7e
    inc c                                         ; $7e3a: $0c
    ld b, a                                       ; $7e3b: $47
    ld a, [hl]                                    ; $7e3c: $7e
    inc c                                         ; $7e3d: $0c
    ld b, a                                       ; $7e3e: $47
    ld a, [hl]                                    ; $7e3f: $7e
    ld d, a                                       ; $7e40: $57

Jump_007_7e41:
    rst $20                                       ; $7e41: $e7
    rlca                                          ; $7e42: $07
    ld l, [hl]                                    ; $7e43: $6e
    ld [hl], l                                    ; $7e44: $75
    nop                                           ; $7e45: $00
    nop                                           ; $7e46: $00
    inc h                                         ; $7e47: $24
    xor c                                         ; $7e48: $a9
    ld h, h                                       ; $7e49: $64
    add h                                         ; $7e4a: $84
    ld bc, $6300                                  ; $7e4b: $01 $00 $63
    inc h                                         ; $7e4e: $24
    rst $28                                       ; $7e4f: $ef
    ld l, h                                       ; $7e50: $6c
    ld [$0e15], a                                 ; $7e51: $ea $15 $0e
    ld h, b                                       ; $7e54: $60
    inc h                                         ; $7e55: $24
    ld h, c                                       ; $7e56: $61
    ld l, h                                       ; $7e57: $6c
    nop                                           ; $7e58: $00
    inc b                                         ; $7e59: $04
    inc h                                         ; $7e5a: $24
    ld [hl], h                                    ; $7e5b: $74
    ld l, h                                       ; $7e5c: $6c
    rrca                                          ; $7e5d: $0f
    ld [$05e7], a                                 ; $7e5e: $ea $e7 $05
    cp l                                          ; $7e61: $bd
    ld d, b                                       ; $7e62: $50
    and d                                         ; $7e63: $a2
    db $10                                        ; $7e64: $10
    rst $20                                       ; $7e65: $e7
    dec b                                         ; $7e66: $05

Call_007_7e67:
    add hl, bc                                    ; $7e67: $09
    ld d, d                                       ; $7e68: $52
    rst $20                                       ; $7e69: $e7
    ld bc, $7bc2                                  ; $7e6a: $01 $c2 $7b

Jump_007_7e6d:
    ld [$e757], a                                 ; $7e6d: $ea $57 $e7
    rlca                                          ; $7e70: $07
    ld l, [hl]                                    ; $7e71: $6e
    ld [hl], l                                    ; $7e72: $75
    nop                                           ; $7e73: $00
    nop                                           ; $7e74: $00
    ld [$05e7], a                                 ; $7e75: $ea $e7 $05
    cp l                                          ; $7e78: $bd
    ld d, b                                       ; $7e79: $50
    and d                                         ; $7e7a: $a2
    inc c                                         ; $7e7b: $0c
    rst $20                                       ; $7e7c: $e7
    dec b                                         ; $7e7d: $05
    add hl, bc                                    ; $7e7e: $09
    ld d, d                                       ; $7e7f: $52
    rst $20                                       ; $7e80: $e7

Call_007_7e81:
Jump_007_7e81:
    ld bc, $7bc2                                  ; $7e81: $01 $c2 $7b
    ld [$e757], a                                 ; $7e84: $ea $57 $e7
    rlca                                          ; $7e87: $07
    ld l, [hl]                                    ; $7e88: $6e
    ld [hl], l                                    ; $7e89: $75
    nop                                           ; $7e8a: $00
    nop                                           ; $7e8b: $00
    ld [$01e7], a                                 ; $7e8c: $ea $e7 $01
    jp nz, $e77b                                  ; $7e8f: $c2 $7b $e7

    dec b                                         ; $7e92: $05
    cp l                                          ; $7e93: $bd
    ld d, b                                       ; $7e94: $50
    rst $20                                       ; $7e95: $e7
    dec b                                         ; $7e96: $05
    add hl, bc                                    ; $7e97: $09
    ld d, d                                       ; $7e98: $52
    ld [$05e7], a                                 ; $7e99: $ea $e7 $05
    ld e, l                                       ; $7e9c: $5d
    ld e, e                                       ; $7e9d: $5b
    ld d, a                                       ; $7e9e: $57
    rst $20                                       ; $7e9f: $e7
    rlca                                          ; $7ea0: $07
    ld l, [hl]                                    ; $7ea1: $6e
    ld [hl], l                                    ; $7ea2: $75
    nop                                           ; $7ea3: $00
    nop                                           ; $7ea4: $00
    ld [$01e7], a                                 ; $7ea5: $ea $e7 $01
    jp nz, $e77b                                  ; $7ea8: $c2 $7b $e7

    dec b                                         ; $7eab: $05
    cp l                                          ; $7eac: $bd
    ld d, b                                       ; $7ead: $50
    rst $20                                       ; $7eae: $e7
    dec b                                         ; $7eaf: $05
    add hl, bc                                    ; $7eb0: $09
    ld d, d                                       ; $7eb1: $52
    ld [$05e7], a                                 ; $7eb2: $ea $e7 $05
    ld e, c                                       ; $7eb5: $59
    ld e, e                                       ; $7eb6: $5b
    ld d, a                                       ; $7eb7: $57
    rst $20                                       ; $7eb8: $e7
    rlca                                          ; $7eb9: $07
    ld l, [hl]                                    ; $7eba: $6e
    ld [hl], l                                    ; $7ebb: $75
    nop                                           ; $7ebc: $00
    nop                                           ; $7ebd: $00
    inc h                                         ; $7ebe: $24
    ld e, l                                       ; $7ebf: $5d
    ld h, a                                       ; $7ec0: $67
    ld h, b                                       ; $7ec1: $60
    nop                                           ; $7ec2: $00
    ld bc, $2463                                  ; $7ec3: $01 $63 $24
    ld h, a                                       ; $7ec6: $67

Call_007_7ec7:
    ld h, a                                       ; $7ec7: $67
    daa                                           ; $7ec8: $27
    db $d3                                        ; $7ec9: $d3
    ld a, [hl]                                    ; $7eca: $7e
    nop                                           ; $7ecb: $00
    ld bc, $6724                                  ; $7ecc: $01 $24 $67
    ld h, a                                       ; $7ecf: $67
    ld a, [hl+]                                   ; $7ed0: $2a
    pop bc                                        ; $7ed1: $c1

Call_007_7ed2:
    ld a, [hl]                                    ; $7ed2: $7e
    rrca                                          ; $7ed3: $0f

Jump_007_7ed4:
    nop                                           ; $7ed4: $00
    ld bc, $07e7                                  ; $7ed5: $01 $e7 $07
    xor b                                         ; $7ed8: $a8
    ld h, a                                       ; $7ed9: $67
    ld a, [hl+]                                   ; $7eda: $2a
    call nc, $e77e                                ; $7edb: $d4 $7e $e7
    rlca                                          ; $7ede: $07
    add sp, $72                                   ; $7edf: $e8 $72
    rrca                                          ; $7ee1: $0f
    di                                            ; $7ee2: $f3
    ld h, e                                       ; $7ee3: $63
    ld b, [hl]                                    ; $7ee4: $46
    nop                                           ; $7ee5: $00
    rrca                                          ; $7ee6: $0f
    ld h, h                                       ; $7ee7: $64
    inc l                                         ; $7ee8: $2c
    nop                                           ; $7ee9: $00
    dec l                                         ; $7eea: $2d
    ld h, h                                       ; $7eeb: $64
    inc a                                         ; $7eec: $3c
    nop                                           ; $7eed: $00
    ld c, e                                       ; $7eee: $4b
    ld h, h                                       ; $7eef: $64
    inc l                                         ; $7ef0: $2c
    nop                                           ; $7ef1: $00
    ld [hl], e                                    ; $7ef2: $73
    ld h, h                                       ; $7ef3: $64
    rst $38                                       ; $7ef4: $ff
    rst $38                                       ; $7ef5: $ff
    sub e                                         ; $7ef6: $93
    ld h, h                                       ; $7ef7: $64
    ld a, h                                       ; $7ef8: $7c
    nop                                           ; $7ef9: $00
    rst $20                                       ; $7efa: $e7
    ld h, h                                       ; $7efb: $64
    ld [hl], h                                    ; $7efc: $74
    nop                                           ; $7efd: $00
    inc hl                                        ; $7efe: $23
    ld h, l                                       ; $7eff: $65
    inc [hl]                                      ; $7f00: $34

Jump_007_7f01:
    nop                                           ; $7f01: $00

Jump_007_7f02:
    dec a                                         ; $7f02: $3d
    ld h, l                                       ; $7f03: $65
    inc l                                         ; $7f04: $2c
    nop                                           ; $7f05: $00
    ld d, e                                       ; $7f06: $53
    ld h, l                                       ; $7f07: $65
    inc hl                                        ; $7f08: $23
    nop                                           ; $7f09: $00
    ld h, a                                       ; $7f0a: $67
    ld h, l                                       ; $7f0b: $65
    jr jr_007_7f0e                                ; $7f0c: $18 $00

jr_007_7f0e:
    ld [hl], a                                    ; $7f0e: $77
    ld h, l                                       ; $7f0f: $65
    ld [hl], b                                    ; $7f10: $70
    nop                                           ; $7f11: $00
    inc hl                                        ; $7f12: $23
    ld h, l                                       ; $7f13: $65
    inc [hl]                                      ; $7f14: $34
    nop                                           ; $7f15: $00
    add a                                         ; $7f16: $87
    ld h, l                                       ; $7f17: $65
    ld [hl], $00                                  ; $7f18: $36 $00
    xor e                                         ; $7f1a: $ab
    ld h, l                                       ; $7f1b: $65
    ld a, [bc]                                    ; $7f1c: $0a
    nop                                           ; $7f1d: $00
    add a                                         ; $7f1e: $87
    ld h, l                                       ; $7f1f: $65
    ld [hl], $00                                  ; $7f20: $36 $00
    xor l                                         ; $7f22: $ad
    ld h, l                                       ; $7f23: $65
    ld h, $00                                     ; $7f24: $26 $00
    inc hl                                        ; $7f26: $23
    ld h, l                                       ; $7f27: $65
    inc [hl]                                      ; $7f28: $34
    nop                                           ; $7f29: $00
    reti                                          ; $7f2a: $d9


    ld h, l                                       ; $7f2b: $65
    jr c, jr_007_7f2e                             ; $7f2c: $38 $00

jr_007_7f2e:
    ld b, l                                       ; $7f2e: $45
    ld h, [hl]                                    ; $7f2f: $66
    ld b, b                                       ; $7f30: $40

Call_007_7f31:
    nop                                           ; $7f31: $00
    ld h, l                                       ; $7f32: $65
    ld h, [hl]                                    ; $7f33: $66
    jr nz, jr_007_7f36                            ; $7f34: $20 $00

jr_007_7f36:
    reti                                          ; $7f36: $d9


    ld h, l                                       ; $7f37: $65
    jr c, jr_007_7f3a                             ; $7f38: $38 $00

jr_007_7f3a:
    adc c                                         ; $7f3a: $89
    ld h, [hl]                                    ; $7f3b: $66
    jr nz, jr_007_7f3e                            ; $7f3c: $20 $00

jr_007_7f3e:
    sbc c                                         ; $7f3e: $99
    ld h, [hl]                                    ; $7f3f: $66
    ld [hl], $00                                  ; $7f40: $36 $00
    cp l                                          ; $7f42: $bd
    ld h, l                                       ; $7f43: $65
    ld b, [hl]                                    ; $7f44: $46
    nop                                           ; $7f45: $00
    db $db                                        ; $7f46: $db
    ld h, [hl]                                    ; $7f47: $66
    jr nc, jr_007_7f4a                            ; $7f48: $30 $00

jr_007_7f4a:
    di                                            ; $7f4a: $f3
    ld h, [hl]                                    ; $7f4b: $66
    ld [hl-], a                                   ; $7f4c: $32
    nop                                           ; $7f4d: $00
    adc c                                         ; $7f4e: $89
    ld h, [hl]                                    ; $7f4f: $66
    jr nz, jr_007_7f52                            ; $7f50: $20 $00

jr_007_7f52:
    cp l                                          ; $7f52: $bd
    ld h, [hl]                                    ; $7f53: $66
    jr nz, jr_007_7f56                            ; $7f54: $20 $00

jr_007_7f56:
    ld hl, $4067                                  ; $7f56: $21 $67 $40
    nop                                           ; $7f59: $00
    dec [hl]                                      ; $7f5a: $35
    ld h, a                                       ; $7f5b: $67
    ld e, $00                                     ; $7f5c: $1e $00
    ccf                                           ; $7f5e: $3f
    ld h, a                                       ; $7f5f: $67
    jr z, jr_007_7f62                             ; $7f60: $28 $00

jr_007_7f62:
    reti                                          ; $7f62: $d9


    ld h, l                                       ; $7f63: $65
    jr c, jr_007_7f66                             ; $7f64: $38 $00

jr_007_7f66:
    ld d, e                                       ; $7f66: $53
    ld h, a                                       ; $7f67: $67
    ld [hl], h                                    ; $7f68: $74
    nop                                           ; $7f69: $00
    adc l                                         ; $7f6a: $8d
    ld h, a                                       ; $7f6b: $67
    inc a                                         ; $7f6c: $3c
    nop                                           ; $7f6d: $00
    sbc c                                         ; $7f6e: $99
    ld h, a                                       ; $7f6f: $67
    ld l, h                                       ; $7f70: $6c
    nop                                           ; $7f71: $00
    rst $08                                       ; $7f72: $cf
    ld h, a                                       ; $7f73: $67
    and b                                         ; $7f74: $a0
    nop                                           ; $7f75: $00
    dec l                                         ; $7f76: $2d
    ld h, h                                       ; $7f77: $64
    inc a                                         ; $7f78: $3c
    nop                                           ; $7f79: $00
    push hl                                       ; $7f7a: $e5
    ld h, a                                       ; $7f7b: $67
    sub b                                         ; $7f7c: $90
    nop                                           ; $7f7d: $00
    rlca                                          ; $7f7e: $07
    ld h, a                                       ; $7f7f: $67
    inc [hl]                                      ; $7f80: $34
    nop                                           ; $7f81: $00

Call_007_7f82:
    rst $38                                       ; $7f82: $ff
    ld h, a                                       ; $7f83: $67
    ld c, b                                       ; $7f84: $48
    nop                                           ; $7f85: $00
    inc hl                                        ; $7f86: $23
    ld l, b                                       ; $7f87: $68
    ld a, l                                       ; $7f88: $7d
    nop                                           ; $7f89: $00
    sub a                                         ; $7f8a: $97
    ld l, b                                       ; $7f8b: $68
    ld b, h                                       ; $7f8c: $44
    nop                                           ; $7f8d: $00
    cp c                                          ; $7f8e: $b9
    ld l, b                                       ; $7f8f: $68
    ld d, h                                       ; $7f90: $54
    nop                                           ; $7f91: $00
    ld e, l                                       ; $7f92: $5d
    ld l, b                                       ; $7f93: $68
    sub c                                         ; $7f94: $91
    nop                                           ; $7f95: $00
    inc sp                                        ; $7f96: $33
    ld h, [hl]                                    ; $7f97: $66
    inc h                                         ; $7f98: $24
    nop                                           ; $7f99: $00
    dec a                                         ; $7f9a: $3d
    ld h, l                                       ; $7f9b: $65
    inc l                                         ; $7f9c: $2c
    nop                                           ; $7f9d: $00
    adc c                                         ; $7f9e: $89
    ld h, [hl]                                    ; $7f9f: $66
    jr nz, jr_007_7fa2                            ; $7fa0: $20 $00

jr_007_7fa2:
    push af                                       ; $7fa2: $f5
    ld h, l                                       ; $7fa3: $65

Call_007_7fa4:
    jr c, jr_007_7fa6                             ; $7fa4: $38 $00

jr_007_7fa6:
    sub a                                         ; $7fa6: $97
    ld l, b                                       ; $7fa7: $68
    jr nz, jr_007_7faa                            ; $7fa8: $20 $00

Call_007_7faa:
jr_007_7faa:
    reti                                          ; $7faa: $d9


    ld h, e                                       ; $7fab: $63
    jr nz, jr_007_7fae                            ; $7fac: $20 $00

jr_007_7fae:
    ld l, l                                       ; $7fae: $6d
    ld h, h                                       ; $7faf: $64
    inc l                                         ; $7fb0: $2c
    nop                                           ; $7fb1: $00
    dec h                                         ; $7fb2: $25
    ld h, h                                       ; $7fb3: $64
    ld bc, $6100                                  ; $7fb4: $01 $00 $61
    ld h, l                                       ; $7fb7: $65
    inc hl                                        ; $7fb8: $23
    nop                                           ; $7fb9: $00
    add l                                         ; $7fba: $85
    ld h, [hl]                                    ; $7fbb: $66
    inc hl                                        ; $7fbc: $23
    nop                                           ; $7fbd: $00
    add a                                         ; $7fbe: $87

Jump_007_7fbf:
    ld h, [hl]                                    ; $7fbf: $66
    inc hl                                        ; $7fc0: $23
    nop                                           ; $7fc1: $00

Call_007_7fc2:
    or c                                          ; $7fc2: $b1
    ld h, [hl]                                    ; $7fc3: $66
    jr jr_007_7fc6                                ; $7fc4: $18 $00

jr_007_7fc6:
    call Call_000_1c66                            ; $7fc6: $cd $66 $1c

Jump_007_7fc9:
    nop                                           ; $7fc9: $00

Call_007_7fca:
    ld de, $4466                                  ; $7fca: $11 $66 $44
    nop                                           ; $7fcd: $00
    push af                                       ; $7fce: $f5
    ld h, l                                       ; $7fcf: $65
    jr c, jr_007_7fd2                             ; $7fd0: $38 $00

Call_007_7fd2:
jr_007_7fd2:
    ccf                                           ; $7fd2: $3f
    ld h, a                                       ; $7fd3: $67
    jr z, jr_007_7fd6                             ; $7fd4: $28 $00

jr_007_7fd6:
    ld d, l                                       ; $7fd6: $55
    ld l, b                                       ; $7fd7: $68
    inc d                                         ; $7fd8: $14

Jump_007_7fd9:
    nop                                           ; $7fd9: $00

Call_007_7fda:
    dec [hl]                                      ; $7fda: $35
    ld h, a                                       ; $7fdb: $67
    ld e, $00                                     ; $7fdc: $1e $00
    ld hl, $7ee2                                  ; $7fde: $21 $e2 $7e

Jump_007_7fe1:
    inc bc                                        ; $7fe1: $03

Call_007_7fe2:
    ld a, [bc]                                    ; $7fe2: $0a
    dec bc                                        ; $7fe3: $0b

Call_007_7fe4:
    call Call_000_317d                            ; $7fe4: $cd $7d $31
    ld e, [hl]                                    ; $7fe7: $5e
    inc hl                                        ; $7fe8: $23

Jump_007_7fe9:
    ld d, [hl]                                    ; $7fe9: $56

Call_007_7fea:
    inc hl                                        ; $7fea: $23
    ld a, [hl+]                                   ; $7feb: $2a

Call_007_7fec:
    ld h, [hl]                                    ; $7fec: $66
    ld l, a                                       ; $7fed: $6f
    ld a, l                                       ; $7fee: $7d

Jump_007_7fef:
    ld [$cdbb], a                                 ; $7fef: $ea $bb $cd

Call_007_7ff2:
    ret                                           ; $7ff2: $c9


    rst $38                                       ; $7ff3: $ff

Call_007_7ff4:
    rst $38                                       ; $7ff4: $ff
    rst $38                                       ; $7ff5: $ff
    rst $38                                       ; $7ff6: $ff

Jump_007_7ff7:
    rst $38                                       ; $7ff7: $ff
    rst $38                                       ; $7ff8: $ff
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
