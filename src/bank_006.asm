; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

    db $06

    ld bc, $804a                                  ; $4001: $01 $4a $80
    nop                                           ; $4004: $00
    nop                                           ; $4005: $00
    nop                                           ; $4006: $00
    xor d                                         ; $4007: $aa
    inc h                                         ; $4008: $24
    ld bc, $0002                                  ; $4009: $01 $02 $00
    ld bc, $0101                                  ; $400c: $01 $01 $01
    ld bc, $0103                                  ; $400f: $01 $03 $01
    dec b                                         ; $4012: $05
    ld bc, $0107                                  ; $4013: $01 $07 $01
    add hl, bc                                    ; $4016: $09
    ld bc, $0b0b                                  ; $4017: $01 $0b $0b
    ld bc, $030b                                  ; $401a: $01 $0b $03
    dec bc                                        ; $401d: $0b
    dec b                                         ; $401e: $05
    dec bc                                        ; $401f: $0b
    rlca                                          ; $4020: $07
    dec bc                                        ; $4021: $0b
    add hl, bc                                    ; $4022: $09
    dec bc                                        ; $4023: $0b
    dec bc                                        ; $4024: $0b
    ld b, $0f                                     ; $4025: $06 $0f
    ld hl, $4001                                  ; $4027: $21 $01 $40
    jp Jump_000_2837                              ; $402a: $c3 $37 $28


    ld a, $05                                     ; $402d: $3e $05
    call Call_006_5305                            ; $402f: $cd $05 $53
    ld a, $04                                     ; $4032: $3e $04
    ld [$cb6f], a                                 ; $4034: $ea $6f $cb
    ld a, $0d                                     ; $4037: $3e $0d
    ldh [$c1], a                                  ; $4039: $e0 $c1
    ld a, $0f                                     ; $403b: $3e $0f
    ldh [$bd], a                                  ; $403d: $e0 $bd
    ld a, $25                                     ; $403f: $3e $25
    ldh [$be], a                                  ; $4041: $e0 $be
    call Call_000_3487                            ; $4043: $cd $87 $34
    ld hl, $ffb8                                  ; $4046: $21 $b8 $ff
    ld [hl], $00                                  ; $4049: $36 $00
    inc hl                                        ; $404b: $23
    ld [hl], $00                                  ; $404c: $36 $00
    ld a, $a4                                     ; $404e: $3e $a4
    ldh [$c1], a                                  ; $4050: $e0 $c1
    ld a, $d6                                     ; $4052: $3e $d6
    ldh [$bd], a                                  ; $4054: $e0 $bd
    ld a, $11                                     ; $4056: $3e $11
    ldh [$be], a                                  ; $4058: $e0 $be
    call Call_000_3487                            ; $405a: $cd $87 $34
    ld a, $08                                     ; $405d: $3e $08
    ld [$cb6c], a                                 ; $405f: $ea $6c $cb
    ld a, $08                                     ; $4062: $3e $08
    ld [$cb6d], a                                 ; $4064: $ea $6d $cb
    xor a                                         ; $4067: $af
    ld [$cb66], a                                 ; $4068: $ea $66 $cb
    ld [$cb67], a                                 ; $406b: $ea $67 $cb
    ld [$cb6e], a                                 ; $406e: $ea $6e $cb
    ld a, $a4                                     ; $4071: $3e $a4
    call Call_000_03a0                            ; $4073: $cd $a0 $03
    ld a, $02                                     ; $4076: $3e $02
    ldh [$9b], a                                  ; $4078: $e0 $9b
    ld a, $86                                     ; $407a: $3e $86
    call Call_000_03a0                            ; $407c: $cd $a0 $03
    ld hl, $795f                                  ; $407f: $21 $5f $79
    ldh [$c1], a                                  ; $4082: $e0 $c1
    ld a, $6d                                     ; $4084: $3e $6d
    ldh [$bd], a                                  ; $4086: $e0 $bd
    ld a, $7c                                     ; $4088: $3e $7c
    ldh [$be], a                                  ; $408a: $e0 $be
    call Call_000_346d                            ; $408c: $cd $6d $34
    ld a, $21                                     ; $408f: $3e $21
    call Call_000_395e                            ; $4091: $cd $5e $39
    ld hl, $cb32                                  ; $4094: $21 $32 $cb
    ld bc, $0034                                  ; $4097: $01 $34 $00
    ld a, $ff                                     ; $409a: $3e $ff
    call Call_000_112f                            ; $409c: $cd $2f $11
    ld hl, $cb68                                  ; $409f: $21 $68 $cb
    ld b, $04                                     ; $40a2: $06 $04

jr_006_40a4:
    ld a, [$cb6f]                                 ; $40a4: $fa $6f $cb
    call Call_000_2722                            ; $40a7: $cd $22 $27
    ld [hl+], a                                   ; $40aa: $22
    dec b                                         ; $40ab: $05
    jr nz, jr_006_40a4                            ; $40ac: $20 $f6

    ret                                           ; $40ae: $c9


    ldh a, [$cc]                                  ; $40af: $f0 $cc
    cp $3e                                        ; $40b1: $fe $3e
    jr nz, jr_006_40c0                            ; $40b3: $20 $0b

    ldh a, [$a5]                                  ; $40b5: $f0 $a5
    and $02                                       ; $40b7: $e6 $02
    jr z, jr_006_40c0                             ; $40b9: $28 $05

    ld a, $3e                                     ; $40bb: $3e $3e
    jp Jump_000_2448                              ; $40bd: $c3 $48 $24


jr_006_40c0:
    ld a, [$cb6e]                                 ; $40c0: $fa $6e $cb
    or a                                          ; $40c3: $b7
    jp nz, Jump_006_4294                          ; $40c4: $c2 $94 $42

    ld a, [$cb66]                                 ; $40c7: $fa $66 $cb
    add a                                         ; $40ca: $87
    add a                                         ; $40cb: $87
    ld hl, $cb32                                  ; $40cc: $21 $32 $cb
    rst $08                                       ; $40cf: $cf
    ldh a, [$a5]                                  ; $40d0: $f0 $a5
    bit 0, a                                      ; $40d2: $cb $47
    jr nz, jr_006_411e                            ; $40d4: $20 $48

    ld e, $ff                                     ; $40d6: $1e $ff
    bit 6, a                                      ; $40d8: $cb $77
    jr nz, jr_006_40f2                            ; $40da: $20 $16

    ld e, $01                                     ; $40dc: $1e $01
    bit 7, a                                      ; $40de: $cb $7f
    jr nz, jr_006_40f2                            ; $40e0: $20 $10

    ld hl, $cb67                                  ; $40e2: $21 $67 $cb
    ld e, $ff                                     ; $40e5: $1e $ff
    bit 5, a                                      ; $40e7: $cb $6f
    jr nz, jr_006_4111                            ; $40e9: $20 $26

    ld e, $01                                     ; $40eb: $1e $01
    bit 4, a                                      ; $40ed: $cb $67
    jr nz, jr_006_4111                            ; $40ef: $20 $20

    ret                                           ; $40f1: $c9


jr_006_40f2:
    ld a, [$cb67]                                 ; $40f2: $fa $67 $cb
    rst $08                                       ; $40f5: $cf
    add e                                         ; $40f6: $83
    bit 7, a                                      ; $40f7: $cb $7f
    jr z, jr_006_40ff                             ; $40f9: $28 $04

    ld a, [$cb6f]                                 ; $40fb: $fa $6f $cb
    dec a                                         ; $40fe: $3d

jr_006_40ff:
    push hl                                       ; $40ff: $e5
    ld hl, $cb6f                                  ; $4100: $21 $6f $cb
    cp [hl]                                       ; $4103: $be
    pop hl                                        ; $4104: $e1
    jr c, jr_006_4108                             ; $4105: $38 $01

    xor a                                         ; $4107: $af

jr_006_4108:
    ld [hl], a                                    ; $4108: $77
    ld a, $19                                     ; $4109: $3e $19
    call Call_000_393e                            ; $410b: $cd $3e $39
    jp Jump_006_41ea                              ; $410e: $c3 $ea $41


jr_006_4111:
    ld a, [hl]                                    ; $4111: $7e
    add e                                         ; $4112: $83
    and $03                                       ; $4113: $e6 $03
    ld [hl], a                                    ; $4115: $77
    ld a, $19                                     ; $4116: $3e $19
    call Call_000_393e                            ; $4118: $cd $3e $39
    jp Jump_006_417e                              ; $411b: $c3 $7e $41


jr_006_411e:
    ld e, l                                       ; $411e: $5d
    ld d, h                                       ; $411f: $54
    ld c, $00                                     ; $4120: $0e $00

jr_006_4122:
    ld a, [hl+]                                   ; $4122: $2a
    cp $ff                                        ; $4123: $fe $ff
    jp z, Jump_006_4175                           ; $4125: $ca $75 $41

    inc c                                         ; $4128: $0c
    ld a, c                                       ; $4129: $79
    cp $04                                        ; $412a: $fe $04
    jr c, jr_006_4122                             ; $412c: $38 $f4

    ld bc, $0000                                  ; $412e: $01 $00 $00
    ld hl, $cb68                                  ; $4131: $21 $68 $cb

jr_006_4134:
    ld a, [de]                                    ; $4134: $1a
    cp [hl]                                       ; $4135: $be
    jr nz, jr_006_4139                            ; $4136: $20 $01

    inc b                                         ; $4138: $04

jr_006_4139:
    inc de                                        ; $4139: $13
    inc hl                                        ; $413a: $23
    inc c                                         ; $413b: $0c
    ld a, c                                       ; $413c: $79
    cp $04                                        ; $413d: $fe $04
    jr c, jr_006_4134                             ; $413f: $38 $f3

    push bc                                       ; $4141: $c5
    call Call_006_423a                            ; $4142: $cd $3a $42
    pop bc                                        ; $4145: $c1
    ld a, b                                       ; $4146: $78
    cp $04                                        ; $4147: $fe $04
    jr z, jr_006_4159                             ; $4149: $28 $0e

    ld hl, $cb66                                  ; $414b: $21 $66 $cb
    ld a, [hl]                                    ; $414e: $7e
    inc a                                         ; $414f: $3c
    cp $0c                                        ; $4150: $fe $0c
    jr nc, jr_006_4167                            ; $4152: $30 $13

    ld [hl+], a                                   ; $4154: $22
    xor a                                         ; $4155: $af
    ld [hl], a                                    ; $4156: $77
    jr jr_006_417e                                ; $4157: $18 $25

jr_006_4159:
    ld a, $02                                     ; $4159: $3e $02
    call Call_006_419c                            ; $415b: $cd $9c $41
    call Call_006_4285                            ; $415e: $cd $85 $42
    ld a, $27                                     ; $4161: $3e $27
    call Call_000_395e                            ; $4163: $cd $5e $39
    ret                                           ; $4166: $c9


jr_006_4167:
    ld a, $01                                     ; $4167: $3e $01
    call Call_006_419c                            ; $4169: $cd $9c $41
    call Call_006_4285                            ; $416c: $cd $85 $42
    ld a, $28                                     ; $416f: $3e $28
    call Call_000_395e                            ; $4171: $cd $5e $39
    ret                                           ; $4174: $c9


Jump_006_4175:
    ld a, c                                       ; $4175: $79
    ld [$cb67], a                                 ; $4176: $ea $67 $cb
    ld a, $4c                                     ; $4179: $3e $4c
    call Call_000_393e                            ; $417b: $cd $3e $39

Jump_006_417e:
jr_006_417e:
    ld e, $08                                     ; $417e: $1e $08
    ld a, [$cb66]                                 ; $4180: $fa $66 $cb
    cp $06                                        ; $4183: $fe $06
    jr c, jr_006_418b                             ; $4185: $38 $04

    sub $06                                       ; $4187: $d6 $06
    ld e, $58                                     ; $4189: $1e $58

jr_006_418b:
    swap a                                        ; $418b: $cb $37
    add $08                                       ; $418d: $c6 $08
    ld [$cb6d], a                                 ; $418f: $ea $6d $cb
    ld a, [$cb67]                                 ; $4192: $fa $67 $cb
    swap a                                        ; $4195: $cb $37
    add e                                         ; $4197: $83
    ld [$cb6c], a                                 ; $4198: $ea $6c $cb
    ret                                           ; $419b: $c9


Call_006_419c:
    ld [$cb6e], a                                 ; $419c: $ea $6e $cb
    ld a, $86                                     ; $419f: $3e $86
    ld e, $ff                                     ; $41a1: $1e $ff
    call Call_000_0a6f                            ; $41a3: $cd $6f $0a
    jr nz, jr_006_41ae                            ; $41a6: $20 $06

    ld de, $001c                                  ; $41a8: $11 $1c $00
    add hl, de                                    ; $41ab: $19
    ld [hl], $01                                  ; $41ac: $36 $01

jr_006_41ae:
    ld a, $a4                                     ; $41ae: $3e $a4
    call Call_000_0a6f                            ; $41b0: $cd $6f $0a
    jr nz, jr_006_41b7                            ; $41b3: $20 $02

    ld [hl], $00                                  ; $41b5: $36 $00

jr_006_41b7:
    ret                                           ; $41b7: $c9


    ld hl, $cb6c                                  ; $41b8: $21 $6c $cb
    ld e, [hl]                                    ; $41bb: $5e
    inc hl                                        ; $41bc: $23
    ld d, [hl]                                    ; $41bd: $56
    jp Jump_000_090d                              ; $41be: $c3 $0d $09


    ld hl, $0002                                  ; $41c1: $21 $02 $00
    add hl, bc                                    ; $41c4: $09
    ld a, [hl]                                    ; $41c5: $7e
    inc a                                         ; $41c6: $3c
    cp $06                                        ; $41c7: $fe $06
    jr c, jr_006_41cc                             ; $41c9: $38 $01

    xor a                                         ; $41cb: $af

jr_006_41cc:
    ld [hl], a                                    ; $41cc: $77
    ld hl, $41dc                                  ; $41cd: $21 $dc $41
    rst $08                                       ; $41d0: $cf
    ld e, [hl]                                    ; $41d1: $5e
    ld hl, $002c                                  ; $41d2: $21 $2c $00
    add hl, bc                                    ; $41d5: $09
    ld a, [hl]                                    ; $41d6: $7e
    and $f8                                       ; $41d7: $e6 $f8
    add e                                         ; $41d9: $83
    ld [hl], a                                    ; $41da: $77
    ret                                           ; $41db: $c9


    ld [bc], a                                    ; $41dc: $02
    inc bc                                        ; $41dd: $03
    inc b                                         ; $41de: $04
    dec b                                         ; $41df: $05
    inc b                                         ; $41e0: $04
    inc bc                                        ; $41e1: $03
    ld a, [$cb6e]                                 ; $41e2: $fa $6e $cb
    cp $01                                        ; $41e5: $fe $01
    jp Jump_000_0039                              ; $41e7: $c3 $39 $00


Jump_006_41ea:
    ld hl, $cb29                                  ; $41ea: $21 $29 $cb
    ld a, $01                                     ; $41ed: $3e $01
    ld [hl+], a                                   ; $41ef: $22
    dec a                                         ; $41f0: $3d
    ld [hl+], a                                   ; $41f1: $22
    ld [hl+], a                                   ; $41f2: $22
    inc hl                                        ; $41f3: $23
    inc hl                                        ; $41f4: $23
    ld a, $02                                     ; $41f5: $3e $02
    ld [hl+], a                                   ; $41f7: $22
    ld [hl+], a                                   ; $41f8: $22
    ld b, $00                                     ; $41f9: $06 $00

jr_006_41fb:
    ld c, $00                                     ; $41fb: $0e $00

jr_006_41fd:
    push bc                                       ; $41fd: $c5
    ld a, c                                       ; $41fe: $79
    add a                                         ; $41ff: $87
    add $12                                       ; $4200: $c6 $12
    ld [$cb2d], a                                 ; $4202: $ea $2d $cb
    ld a, b                                       ; $4205: $78
    add a                                         ; $4206: $87
    add a                                         ; $4207: $87
    add c                                         ; $4208: $81
    ld hl, $cb32                                  ; $4209: $21 $32 $cb
    rst $08                                       ; $420c: $cf
    cp $ff                                        ; $420d: $fe $ff
    jr z, jr_006_422c                             ; $420f: $28 $1b

    add a                                         ; $4211: $87
    ld [$cb2c], a                                 ; $4212: $ea $2c $cb
    ld a, b                                       ; $4215: $78
    ld hl, $400d                                  ; $4216: $21 $0d $40
    call Call_000_318c                            ; $4219: $cd $8c $31
    ld a, [hl+]                                   ; $421c: $2a
    add c                                         ; $421d: $81
    add c                                         ; $421e: $81
    ld [$cb30], a                                 ; $421f: $ea $30 $cb
    ld a, [hl+]                                   ; $4222: $2a
    ld [$cb31], a                                 ; $4223: $ea $31 $cb
    ld de, $cb29                                  ; $4226: $11 $29 $cb
    call Call_000_134e                            ; $4229: $cd $4e $13

jr_006_422c:
    pop bc                                        ; $422c: $c1
    inc c                                         ; $422d: $0c
    ld a, c                                       ; $422e: $79
    cp $04                                        ; $422f: $fe $04
    jr c, jr_006_41fd                             ; $4231: $38 $ca

    inc b                                         ; $4233: $04
    ld a, b                                       ; $4234: $78
    cp $0d                                        ; $4235: $fe $0d
    jr c, jr_006_41fb                             ; $4237: $38 $c2

    ret                                           ; $4239: $c9


Call_006_423a:
    ld a, b                                       ; $423a: $78
    or a                                          ; $423b: $b7
    ret z                                         ; $423c: $c8

    ld hl, $cb29                                  ; $423d: $21 $29 $cb
    ld a, $01                                     ; $4240: $3e $01
    ld [hl+], a                                   ; $4242: $22
    dec a                                         ; $4243: $3d
    ld [hl+], a                                   ; $4244: $22
    ld [hl+], a                                   ; $4245: $22
    inc hl                                        ; $4246: $23
    inc hl                                        ; $4247: $23
    inc a                                         ; $4248: $3c
    ld [hl+], a                                   ; $4249: $22
    inc a                                         ; $424a: $3c
    ld [hl+], a                                   ; $424b: $22
    ld e, $0e                                     ; $424c: $1e $0e
    ld a, [$cb66]                                 ; $424e: $fa $66 $cb
    cp $06                                        ; $4251: $fe $06
    jr c, jr_006_4256                             ; $4253: $38 $01

    inc e                                         ; $4255: $1c

jr_006_4256:
    ld a, e                                       ; $4256: $7b
    ld [$cb2c], a                                 ; $4257: $ea $2c $cb
    ld a, b                                       ; $425a: $78
    dec a                                         ; $425b: $3d
    add a                                         ; $425c: $87
    add $12                                       ; $425d: $c6 $12
    ld [$cb2d], a                                 ; $425f: $ea $2d $cb
    ld a, [$cb66]                                 ; $4262: $fa $66 $cb
    ld hl, $400d                                  ; $4265: $21 $0d $40
    call Call_000_3194                            ; $4268: $cd $94 $31
    ld l, $08                                     ; $426b: $2e $08
    ld a, [$cb66]                                 ; $426d: $fa $66 $cb
    cp $06                                        ; $4270: $fe $06
    jr c, jr_006_4276                             ; $4272: $38 $02

    ld l, $ff                                     ; $4274: $2e $ff

jr_006_4276:
    ld a, l                                       ; $4276: $7d
    add e                                         ; $4277: $83
    ld [$cb30], a                                 ; $4278: $ea $30 $cb
    ld a, d                                       ; $427b: $7a
    ld [$cb31], a                                 ; $427c: $ea $31 $cb
    ld de, $cb29                                  ; $427f: $11 $29 $cb
    jp Jump_000_134e                              ; $4282: $c3 $4e $13


Call_006_4285:
    ld hl, $cb68                                  ; $4285: $21 $68 $cb
    ld de, $cb62                                  ; $4288: $11 $62 $cb
    ld bc, $0004                                  ; $428b: $01 $04 $00
    call Call_000_1140                            ; $428e: $cd $40 $11
    jp Jump_006_41ea                              ; $4291: $c3 $ea $41


Jump_006_4294:
    ldh a, [$a5]                                  ; $4294: $f0 $a5
    bit 0, a                                      ; $4296: $cb $47
    ret z                                         ; $4298: $c8

    ldh a, [$cc]                                  ; $4299: $f0 $cc
    cp $3e                                        ; $429b: $fe $3e
    jr nz, jr_006_42a4                            ; $429d: $20 $05

    ld a, $3e                                     ; $429f: $3e $3e
    jp Jump_000_2448                              ; $42a1: $c3 $48 $24


jr_006_42a4:
    ldh a, [rSVBK]                                ; $42a4: $f0 $70
    push af                                       ; $42a6: $f5
    ld a, $06                                     ; $42a7: $3e $06
    ldh [rSVBK], a                                ; $42a9: $e0 $70
    ld a, [$cb6e]                                 ; $42ab: $fa $6e $cb
    ld [$d6d3], a                                 ; $42ae: $ea $d3 $d6
    pop af                                        ; $42b1: $f1
    ldh [rSVBK], a                                ; $42b2: $e0 $70
    ld a, $02                                     ; $42b4: $3e $02
    ld [$c0bb], a                                 ; $42b6: $ea $bb $c0
    ld a, $0b                                     ; $42b9: $3e $0b
    jp Jump_000_2448                              ; $42bb: $c3 $48 $24


    db $01, $20, $80, $00, $00, $00, $aa, $24, $00, $02, $01, $02, $01, $01, $d8, $42
    db $a4, $00, $41, $01, $01, $de, $42, $b5, $00, $c0, $65, $d8, $6b, $d8, $c3, $d8
    db $86, $d8, $8d, $d8, $01, $01, $e9, $42, $b9, $00, $41, $e5, $d8, $05, $d9, $45
    db $d9, $65, $d9, $a5, $d9, $c5, $d9, $01, $80, $00, $00, $12, $14, $0b, $00, $05
    db $23, $01, $05, $43, $19, $01, $40, $ca, $d8, $ea, $d8, $03, $d9, $23, $d9, $43
    db $d9, $63, $d9, $83, $d9, $a3, $d9, $23, $01, $1c, $43, $19, $01, $40, $ca, $d8
    db $ea, $d8, $0a, $d9, $2a, $d9, $4a, $d9, $6a, $d9, $8a

    reti                                          ; $4329: $d9


    xor d                                         ; $432a: $aa
    reti                                          ; $432b: $d9


    ld hl, $42be                                  ; $432c: $21 $be $42
    jp Jump_000_2837                              ; $432f: $c3 $37 $28


    ld a, [$cc05]                                 ; $4332: $fa $05 $cc
    or a                                          ; $4335: $b7
    jr z, jr_006_435d                             ; $4336: $28 $25

    ld hl, $d620                                  ; $4338: $21 $20 $d6
    dec a                                         ; $433b: $3d
    cp $0c                                        ; $433c: $fe $0c
    jr z, jr_006_4351                             ; $433e: $28 $11

    inc hl                                        ; $4340: $23
    cp $01                                        ; $4341: $fe $01
    jr z, jr_006_4351                             ; $4343: $28 $0c

    inc hl                                        ; $4345: $23
    cp $03                                        ; $4346: $fe $03
    jr z, jr_006_4351                             ; $4348: $28 $07

    ld hl, $d62c                                  ; $434a: $21 $2c $d6
    cp $0d                                        ; $434d: $fe $0d
    jr nz, jr_006_435d                            ; $434f: $20 $0c

jr_006_4351:
    ldh a, [rSVBK]                                ; $4351: $f0 $70
    push af                                       ; $4353: $f5
    ld a, $06                                     ; $4354: $3e $06
    ldh [rSVBK], a                                ; $4356: $e0 $70
    ld [hl], $01                                  ; $4358: $36 $01
    pop af                                        ; $435a: $f1
    ldh [rSVBK], a                                ; $435b: $e0 $70

jr_006_435d:
    xor a                                         ; $435d: $af
    ld [$cc05], a                                 ; $435e: $ea $05 $cc
    ld a, [$cc06]                                 ; $4361: $fa $06 $cc
    bit 6, a                                      ; $4364: $cb $77
    jr z, jr_006_4387                             ; $4366: $28 $1f

    ld a, [$cc07]                                 ; $4368: $fa $07 $cc
    ldh [$c1], a                                  ; $436b: $e0 $c1
    ld a, $4b                                     ; $436d: $3e $4b
    ldh [$bd], a                                  ; $436f: $e0 $bd
    ld a, $6a                                     ; $4371: $3e $6a
    ldh [$be], a                                  ; $4373: $e0 $be
    call Call_000_3474                            ; $4375: $cd $74 $34
    ld a, $5e                                     ; $4378: $3e $5e
    ldh [$c1], a                                  ; $437a: $e0 $c1
    ld a, $7f                                     ; $437c: $3e $7f
    ldh [$bd], a                                  ; $437e: $e0 $bd
    ld a, $6a                                     ; $4380: $3e $6a
    ldh [$be], a                                  ; $4382: $e0 $be
    call Call_000_3474                            ; $4384: $cd $74 $34

jr_006_4387:
    ld a, $24                                     ; $4387: $3e $24
    call Call_000_395e                            ; $4389: $cd $5e $39
    ld hl, $795f                                  ; $438c: $21 $5f $79
    ldh [$c1], a                                  ; $438f: $e0 $c1
    ld a, $6d                                     ; $4391: $3e $6d
    ldh [$bd], a                                  ; $4393: $e0 $bd
    ld a, $7c                                     ; $4395: $3e $7c
    ldh [$be], a                                  ; $4397: $e0 $be
    call Call_000_346d                            ; $4399: $cd $6d $34
    xor a                                         ; $439c: $af
    ld de, $0001                                  ; $439d: $11 $01 $00
    ld hl, $6131                                  ; $43a0: $21 $31 $61
    ldh [$c1], a                                  ; $43a3: $e0 $c1
    ld a, $3d                                     ; $43a5: $3e $3d
    ldh [$bd], a                                  ; $43a7: $e0 $bd
    ld a, $25                                     ; $43a9: $3e $25
    ldh [$be], a                                  ; $43ab: $e0 $be
    call Call_000_3487                            ; $43ad: $cd $87 $34
    ld a, $21                                     ; $43b0: $3e $21
    ld d, $06                                     ; $43b2: $16 $06
    ld e, $01                                     ; $43b4: $1e $01
    ld hl, $61f1                                  ; $43b6: $21 $f1 $61
    ldh [$c1], a                                  ; $43b9: $e0 $c1
    ld a, $3d                                     ; $43bb: $3e $3d
    ldh [$bd], a                                  ; $43bd: $e0 $bd
    ld a, $25                                     ; $43bf: $3e $25
    ldh [$be], a                                  ; $43c1: $e0 $be
    call Call_000_3487                            ; $43c3: $cd $87 $34
    ldh a, [rSVBK]                                ; $43c6: $f0 $70
    push af                                       ; $43c8: $f5
    ld a, $06                                     ; $43c9: $3e $06
    ldh [rSVBK], a                                ; $43cb: $e0 $70
    ld a, [$d6d4]                                 ; $43cd: $fa $d4 $d6
    ldh [$bc], a                                  ; $43d0: $e0 $bc
    pop af                                        ; $43d2: $f1
    ldh [rSVBK], a                                ; $43d3: $e0 $70
    ldh a, [$bc]                                  ; $43d5: $f0 $bc
    cp $01                                        ; $43d7: $fe $01
    jr z, jr_006_43dc                             ; $43d9: $28 $01

    xor a                                         ; $43db: $af

jr_006_43dc:
    ldh [$9b], a                                  ; $43dc: $e0 $9b
    ld a, $86                                     ; $43de: $3e $86
    call Call_000_03a0                            ; $43e0: $cd $a0 $03
    call Call_006_440a                            ; $43e3: $cd $0a $44
    call Call_006_444f                            ; $43e6: $cd $4f $44
    call Call_006_44a7                            ; $43e9: $cd $a7 $44
    ld a, $1c                                     ; $43ec: $3e $1c
    ldh [$c1], a                                  ; $43ee: $e0 $c1
    ld a, $c0                                     ; $43f0: $3e $c0
    ldh [$bd], a                                  ; $43f2: $e0 $bd
    ld a, $70                                     ; $43f4: $3e $70
    ldh [$be], a                                  ; $43f6: $e0 $be
    call Call_000_345f                            ; $43f8: $cd $5f $34
    ldh a, [rSVBK]                                ; $43fb: $f0 $70
    push af                                       ; $43fd: $f5
    ld a, $06                                     ; $43fe: $3e $06
    ldh [rSVBK], a                                ; $4400: $e0 $70
    ld hl, $d6cf                                  ; $4402: $21 $cf $d6
    dec [hl]                                      ; $4405: $35
    pop af                                        ; $4406: $f1
    ldh [rSVBK], a                                ; $4407: $e0 $70
    ret                                           ; $4409: $c9


Call_006_440a:
    ld hl, $42ca                                  ; $440a: $21 $ca $42
    call Call_000_301f                            ; $440d: $cd $1f $30
    ld a, $7c                                     ; $4410: $3e $7c
    ld [$c1eb], a                                 ; $4412: $ea $eb $c1
    ld a, $01                                     ; $4415: $3e $01
    ld [$c234], a                                 ; $4417: $ea $34 $c2
    ld hl, $1591                                  ; $441a: $21 $91 $15
    ldh [$c1], a                                  ; $441d: $e0 $c1
    ld a, $10                                     ; $441f: $3e $10
    ldh [$bd], a                                  ; $4421: $e0 $bd
    ld a, $6d                                     ; $4423: $3e $6d
    ldh [$be], a                                  ; $4425: $e0 $be
    call Call_000_345f                            ; $4427: $cd $5f $34
    ld hl, $1594                                  ; $442a: $21 $94 $15
    ldh [$c1], a                                  ; $442d: $e0 $c1
    ld a, $10                                     ; $442f: $3e $10
    ldh [$bd], a                                  ; $4431: $e0 $bd
    ld a, $6d                                     ; $4433: $3e $6d
    ldh [$be], a                                  ; $4435: $e0 $be
    call Call_000_345f                            ; $4437: $cd $5f $34
    ld a, [$cbfd]                                 ; $443a: $fa $fd $cb
    inc a                                         ; $443d: $3c
    ret z                                         ; $443e: $c8

    ld hl, $1597                                  ; $443f: $21 $97 $15
    ldh [$c1], a                                  ; $4442: $e0 $c1
    ld a, $10                                     ; $4444: $3e $10
    ldh [$bd], a                                  ; $4446: $e0 $bd
    ld a, $6d                                     ; $4448: $3e $6d
    ldh [$be], a                                  ; $444a: $e0 $be
    jp Jump_000_345f                              ; $444c: $c3 $5f $34


Call_006_444f:
    ld hl, $42d1                                  ; $444f: $21 $d1 $42
    call Call_000_301f                            ; $4452: $cd $1f $30
    ld a, $7c                                     ; $4455: $3e $7c
    ld [$c1eb], a                                 ; $4457: $ea $eb $c1
    ld a, $01                                     ; $445a: $3e $01
    ld [$c234], a                                 ; $445c: $ea $34 $c2
    ld hl, $cbf8                                  ; $445f: $21 $f8 $cb
    ld a, [hl+]                                   ; $4462: $2a
    ld h, [hl]                                    ; $4463: $66
    ld l, a                                       ; $4464: $6f
    ld a, [$cc06]                                 ; $4465: $fa $06 $cc
    bit 0, a                                      ; $4468: $cb $47
    jr z, jr_006_4475                             ; $446a: $28 $09

    add hl, hl                                    ; $446c: $29
    ld a, l                                       ; $446d: $7d
    ld [$cbf8], a                                 ; $446e: $ea $f8 $cb
    ld a, h                                       ; $4471: $7c
    ld [$cbf9], a                                 ; $4472: $ea $f9 $cb

jr_006_4475:
    ldh [$c1], a                                  ; $4475: $e0 $c1
    ld a, $e7                                     ; $4477: $3e $e7
    ldh [$bd], a                                  ; $4479: $e0 $bd
    ld a, $6e                                     ; $447b: $3e $6e
    ldh [$be], a                                  ; $447d: $e0 $be
    call Call_000_345f                            ; $447f: $cd $5f $34
    ld hl, $cbfa                                  ; $4482: $21 $fa $cb
    ld a, [hl+]                                   ; $4485: $2a
    ld h, [hl]                                    ; $4486: $66
    ld l, a                                       ; $4487: $6f
    ld a, [$cc06]                                 ; $4488: $fa $06 $cc
    bit 1, a                                      ; $448b: $cb $4f
    jr z, jr_006_4499                             ; $448d: $28 $0a

    add hl, hl                                    ; $448f: $29
    add hl, hl                                    ; $4490: $29
    ld a, l                                       ; $4491: $7d
    ld [$cbfa], a                                 ; $4492: $ea $fa $cb
    ld a, h                                       ; $4495: $7c
    ld [$cbfb], a                                 ; $4496: $ea $fb $cb

jr_006_4499:
    ldh [$c1], a                                  ; $4499: $e0 $c1
    ld a, $e7                                     ; $449b: $3e $e7
    ldh [$bd], a                                  ; $449d: $e0 $bd
    ld a, $6e                                     ; $449f: $3e $6e
    ldh [$be], a                                  ; $44a1: $e0 $be
    call Call_000_345f                            ; $44a3: $cd $5f $34
    ret                                           ; $44a6: $c9


Call_006_44a7:
    ld a, $02                                     ; $44a7: $3e $02
    ld [$cb86], a                                 ; $44a9: $ea $86 $cb
    ld a, $07                                     ; $44ac: $3e $07
    ld [$cb87], a                                 ; $44ae: $ea $87 $cb
    ld hl, $42e2                                  ; $44b1: $21 $e2 $42
    call Call_000_301f                            ; $44b4: $cd $1f $30
    ld a, $60                                     ; $44b7: $3e $60
    ld [$c1eb], a                                 ; $44b9: $ea $eb $c1
    ld a, $02                                     ; $44bc: $3e $02
    ld [$c234], a                                 ; $44be: $ea $34 $c2
    ld hl, $cbfc                                  ; $44c1: $21 $fc $cb
    ld a, [hl+]                                   ; $44c4: $2a
    or a                                          ; $44c5: $b7
    ret z                                         ; $44c6: $c8

    ld c, a                                       ; $44c7: $4f
    ld b, $00                                     ; $44c8: $06 $00

Jump_006_44ca:
    push bc                                       ; $44ca: $c5
    ld a, b                                       ; $44cb: $78
    add $05                                       ; $44cc: $c6 $05
    push hl                                       ; $44ce: $e5
    ldh [$c1], a                                  ; $44cf: $e0 $c1
    ld a, $8a                                     ; $44d1: $3e $8a
    ldh [$bd], a                                  ; $44d3: $e0 $bd
    ld a, $77                                     ; $44d5: $3e $77
    ldh [$be], a                                  ; $44d7: $e0 $be
    call Call_000_3474                            ; $44d9: $cd $74 $34
    pop hl                                        ; $44dc: $e1
    ld a, [hl]                                    ; $44dd: $7e
    cp $6f                                        ; $44de: $fe $6f
    jr nc, jr_006_453c                            ; $44e0: $30 $5a

    push hl                                       ; $44e2: $e5
    ld d, a                                       ; $44e3: $57
    ld a, b                                       ; $44e4: $78
    add $05                                       ; $44e5: $c6 $05
    ld e, a                                       ; $44e7: $5f
    push de                                       ; $44e8: $d5
    ldh [$c1], a                                  ; $44e9: $e0 $c1
    ld a, $38                                     ; $44eb: $3e $38
    ldh [$bd], a                                  ; $44ed: $e0 $bd
    ld a, $77                                     ; $44ef: $3e $77
    ldh [$be], a                                  ; $44f1: $e0 $be
    call Call_000_3474                            ; $44f3: $cd $74 $34
    pop de                                        ; $44f6: $d1
    ld a, e                                       ; $44f7: $7b
    sub $04                                       ; $44f8: $d6 $04
    ld d, a                                       ; $44fa: $57
    ldh [$c1], a                                  ; $44fb: $e0 $c1
    ld a, $57                                     ; $44fd: $3e $57
    ldh [$bd], a                                  ; $44ff: $e0 $bd
    ld a, $77                                     ; $4501: $3e $77
    ldh [$be], a                                  ; $4503: $e0 $be
    call Call_000_3474                            ; $4505: $cd $74 $34
    pop hl                                        ; $4508: $e1
    ld a, [hl]                                    ; $4509: $7e
    push hl                                       ; $450a: $e5
    ld e, d                                       ; $450b: $5a
    ld d, a                                       ; $450c: $57
    ldh [$c1], a                                  ; $450d: $e0 $c1
    ld a, $76                                     ; $450f: $3e $76
    ldh [$bd], a                                  ; $4511: $e0 $bd
    ld a, $73                                     ; $4513: $3e $73
    ldh [$be], a                                  ; $4515: $e0 $be
    call Call_000_3474                            ; $4517: $cd $74 $34
    pop hl                                        ; $451a: $e1
    push hl                                       ; $451b: $e5
    ld a, [hl+]                                   ; $451c: $2a
    ld hl, $106c                                  ; $451d: $21 $6c $10
    ldh [$c1], a                                  ; $4520: $e0 $c1
    ld a, $67                                     ; $4522: $3e $67
    ldh [$bd], a                                  ; $4524: $e0 $bd
    ld a, $6e                                     ; $4526: $3e $6e
    ldh [$be], a                                  ; $4528: $e0 $be
    call Call_000_345f                            ; $452a: $cd $5f $34
    ldh [$c1], a                                  ; $452d: $e0 $c1
    ld a, $b3                                     ; $452f: $3e $b3
    ldh [$bd], a                                  ; $4531: $e0 $bd
    ld a, $6c                                     ; $4533: $3e $6c
    ldh [$be], a                                  ; $4535: $e0 $be
    call Call_000_345f                            ; $4537: $cd $5f $34
    jr jr_006_4594                                ; $453a: $18 $58

jr_006_453c:
    push hl                                       ; $453c: $e5
    ld a, b                                       ; $453d: $78
    add $05                                       ; $453e: $c6 $05
    ld e, a                                       ; $4540: $5f
    ld d, $53                                     ; $4541: $16 $53
    push bc                                       ; $4543: $c5
    ldh [$c1], a                                  ; $4544: $e0 $c1
    ld a, $38                                     ; $4546: $3e $38
    ldh [$bd], a                                  ; $4548: $e0 $bd
    ld a, $77                                     ; $454a: $3e $77
    ldh [$be], a                                  ; $454c: $e0 $be
    call Call_000_3474                            ; $454e: $cd $74 $34
    pop bc                                        ; $4551: $c1
    ld a, b                                       ; $4552: $78
    inc a                                         ; $4553: $3c
    ld d, a                                       ; $4554: $57
    add $04                                       ; $4555: $c6 $04
    ld e, a                                       ; $4557: $5f
    push de                                       ; $4558: $d5
    ldh [$c1], a                                  ; $4559: $e0 $c1
    ld a, $57                                     ; $455b: $3e $57
    ldh [$bd], a                                  ; $455d: $e0 $bd
    ld a, $77                                     ; $455f: $3e $77
    ldh [$be], a                                  ; $4561: $e0 $be
    call Call_000_3474                            ; $4563: $cd $74 $34
    pop de                                        ; $4566: $d1
    ld e, d                                       ; $4567: $5a
    ld d, $53                                     ; $4568: $16 $53
    ldh [$c1], a                                  ; $456a: $e0 $c1
    ld a, $76                                     ; $456c: $3e $76
    ldh [$bd], a                                  ; $456e: $e0 $bd
    ld a, $73                                     ; $4570: $3e $73
    ldh [$be], a                                  ; $4572: $e0 $be
    call Call_000_3474                            ; $4574: $cd $74 $34
    ld hl, $11bf                                  ; $4577: $21 $bf $11
    ldh [$c1], a                                  ; $457a: $e0 $c1
    ld a, $1a                                     ; $457c: $3e $1a
    ldh [$bd], a                                  ; $457e: $e0 $bd
    ld a, $6e                                     ; $4580: $3e $6e
    ldh [$be], a                                  ; $4582: $e0 $be
    call Call_000_345f                            ; $4584: $cd $5f $34
    ldh [$c1], a                                  ; $4587: $e0 $c1
    ld a, $b3                                     ; $4589: $3e $b3
    ldh [$bd], a                                  ; $458b: $e0 $bd
    ld a, $6c                                     ; $458d: $3e $6c
    ldh [$be], a                                  ; $458f: $e0 $be
    call Call_000_345f                            ; $4591: $cd $5f $34

jr_006_4594:
    pop hl                                        ; $4594: $e1
    pop bc                                        ; $4595: $c1
    inc b                                         ; $4596: $04
    ld a, b                                       ; $4597: $78
    cp c                                          ; $4598: $b9
    jp nz, Jump_006_44ca                          ; $4599: $c2 $ca $44

    ret                                           ; $459c: $c9


    ldh a, [$a5]                                  ; $459d: $f0 $a5
    or a                                          ; $459f: $b7
    ret z                                         ; $45a0: $c8

    ldh a, [$d0]                                  ; $45a1: $f0 $d0
    rst $00                                       ; $45a3: $c7

    db $b7, $45

    xor l                                         ; $45a6: $ad
    ld b, l                                       ; $45a7: $45
    xor d                                         ; $45a8: $aa
    ld b, l                                       ; $45a9: $45
    jp Jump_006_4611                              ; $45aa: $c3 $11 $46


    call Call_006_61d8                            ; $45ad: $cd $d8 $61
    or a                                          ; $45b0: $b7
    jp nz, Jump_006_461f                          ; $45b1: $c2 $1f $46

    jp Jump_006_4611                              ; $45b4: $c3 $11 $46


    ld hl, $cbf8                                  ; $45b7: $21 $f8 $cb
    ld a, [hl+]                                   ; $45ba: $2a
    ld h, [hl]                                    ; $45bb: $66
    ld l, a                                       ; $45bc: $6f
    call Call_006_604d                            ; $45bd: $cd $4d $60
    ld hl, $cbfa                                  ; $45c0: $21 $fa $cb
    ld a, [hl+]                                   ; $45c3: $2a
    ld h, [hl]                                    ; $45c4: $66
    ld l, a                                       ; $45c5: $6f
    call Call_006_6066                            ; $45c6: $cd $66 $60
    ld b, $03                                     ; $45c9: $06 $03
    ld hl, $cbfd                                  ; $45cb: $21 $fd $cb

jr_006_45ce:
    ld a, [hl+]                                   ; $45ce: $2a
    cp $ff                                        ; $45cf: $fe $ff
    jr z, jr_006_45ff                             ; $45d1: $28 $2c

    push bc                                       ; $45d3: $c5
    push hl                                       ; $45d4: $e5
    cp $fc                                        ; $45d5: $fe $fc
    jr c, jr_006_45ed                             ; $45d7: $38 $14

    sub $fc                                       ; $45d9: $d6 $fc
    call Call_006_5db3                            ; $45db: $cd $b3 $5d
    ldh [$c1], a                                  ; $45de: $e0 $c1
    ld a, $84                                     ; $45e0: $3e $84
    ldh [$bd], a                                  ; $45e2: $e0 $bd
    ld a, $47                                     ; $45e4: $3e $47
    ldh [$be], a                                  ; $45e6: $e0 $be
    call Call_000_3474                            ; $45e8: $cd $74 $34
    jr jr_006_45fa                                ; $45eb: $18 $0d

jr_006_45ed:
    ldh [$c1], a                                  ; $45ed: $e0 $c1
    ld a, $4b                                     ; $45ef: $3e $4b
    ldh [$bd], a                                  ; $45f1: $e0 $bd
    ld a, $6a                                     ; $45f3: $3e $6a
    ldh [$be], a                                  ; $45f5: $e0 $be
    call Call_000_3474                            ; $45f7: $cd $74 $34

jr_006_45fa:
    pop hl                                        ; $45fa: $e1
    pop bc                                        ; $45fb: $c1
    dec b                                         ; $45fc: $05
    jr nz, jr_006_45ce                            ; $45fd: $20 $cf

jr_006_45ff:
    ld a, [$cdfb]                                 ; $45ff: $fa $fb $cd
    ld [$cc00], a                                 ; $4602: $ea $00 $cc
    call Call_006_6237                            ; $4605: $cd $37 $62
    or a                                          ; $4608: $b7
    jr nz, jr_006_4689                            ; $4609: $20 $7e

    call Call_006_61d8                            ; $460b: $cd $d8 $61
    or a                                          ; $460e: $b7
    jr nz, jr_006_461f                            ; $460f: $20 $0e

Jump_006_4611:
    xor a                                         ; $4611: $af
    ld [$cc06], a                                 ; $4612: $ea $06 $cc
    ld a, $02                                     ; $4615: $3e $02
    ld [$c0bb], a                                 ; $4617: $ea $bb $c0
    ld a, $0b                                     ; $461a: $3e $0b
    jp Jump_000_2448                              ; $461c: $c3 $48 $24


Jump_006_461f:
jr_006_461f:
    push af                                       ; $461f: $f5
    ld de, $42f5                                  ; $4620: $11 $f5 $42
    call Call_000_134e                            ; $4623: $cd $4e $13
    ld hl, $4315                                  ; $4626: $21 $15 $43
    call Call_000_301f                            ; $4629: $cd $1f $30
    ld a, $68                                     ; $462c: $3e $68
    ld [$c1eb], a                                 ; $462e: $ea $eb $c1
    ld a, $02                                     ; $4631: $3e $02
    ld [$c234], a                                 ; $4633: $ea $34 $c2
    ld hl, $1be8                                  ; $4636: $21 $e8 $1b
    ldh [$c1], a                                  ; $4639: $e0 $c1
    ld a, $1a                                     ; $463b: $3e $1a
    ldh [$bd], a                                  ; $463d: $e0 $bd
    ld a, $6e                                     ; $463f: $3e $6e
    ldh [$be], a                                  ; $4641: $e0 $be
    call Call_000_345f                            ; $4643: $cd $5f $34
    ldh [$c1], a                                  ; $4646: $e0 $c1
    ld a, $b3                                     ; $4648: $3e $b3
    ldh [$bd], a                                  ; $464a: $e0 $bd
    ld a, $6c                                     ; $464c: $3e $6c
    ldh [$be], a                                  ; $464e: $e0 $be
    call Call_000_345f                            ; $4650: $cd $5f $34
    ldh [$c1], a                                  ; $4653: $e0 $c1
    ld a, $b3                                     ; $4655: $3e $b3
    ldh [$bd], a                                  ; $4657: $e0 $bd
    ld a, $6c                                     ; $4659: $3e $6c
    ldh [$be], a                                  ; $465b: $e0 $be
    call Call_000_345f                            ; $465d: $cd $5f $34
    pop af                                        ; $4660: $f1
    ld c, a                                       ; $4661: $4f
    ld b, $00                                     ; $4662: $06 $00

jr_006_4664:
    srl c                                         ; $4664: $cb $39
    jr nc, jr_006_467e                            ; $4666: $30 $16

    ld a, b                                       ; $4668: $78
    push bc                                       ; $4669: $c5
    ld hl, $228a                                  ; $466a: $21 $8a $22
    call Call_000_3185                            ; $466d: $cd $85 $31
    ldh [$c1], a                                  ; $4670: $e0 $c1
    ld a, $1a                                     ; $4672: $3e $1a
    ldh [$bd], a                                  ; $4674: $e0 $bd
    ld a, $6e                                     ; $4676: $3e $6e
    ldh [$be], a                                  ; $4678: $e0 $be
    call Call_000_345f                            ; $467a: $cd $5f $34
    pop bc                                        ; $467d: $c1

jr_006_467e:
    inc b                                         ; $467e: $04
    ld a, b                                       ; $467f: $78
    cp $04                                        ; $4680: $fe $04
    jr nz, jr_006_4664                            ; $4682: $20 $e0

    ld a, $02                                     ; $4684: $3e $02
    ldh [$d0], a                                  ; $4686: $e0 $d0
    ret                                           ; $4688: $c9


jr_006_4689:
    rst $18                                       ; $4689: $df
    ld de, $42f5                                  ; $468a: $11 $f5 $42
    call Call_000_134e                            ; $468d: $cd $4e $13
    ld hl, $42fe                                  ; $4690: $21 $fe $42
    call Call_000_301f                            ; $4693: $cd $1f $30
    ld a, $68                                     ; $4696: $3e $68
    ld [$c1eb], a                                 ; $4698: $ea $eb $c1
    ld a, $02                                     ; $469b: $3e $02
    ld [$c234], a                                 ; $469d: $ea $34 $c2
    ld hl, $1be5                                  ; $46a0: $21 $e5 $1b
    ldh [$c1], a                                  ; $46a3: $e0 $c1
    ld a, $1a                                     ; $46a5: $3e $1a
    ldh [$bd], a                                  ; $46a7: $e0 $bd
    ld a, $6e                                     ; $46a9: $3e $6e
    ldh [$be], a                                  ; $46ab: $e0 $be
    call Call_000_345f                            ; $46ad: $cd $5f $34
    ldh [$c1], a                                  ; $46b0: $e0 $c1
    ld a, $b3                                     ; $46b2: $3e $b3
    ldh [$bd], a                                  ; $46b4: $e0 $bd
    ld a, $6c                                     ; $46b6: $3e $6c
    ldh [$be], a                                  ; $46b8: $e0 $be
    call Call_000_345f                            ; $46ba: $cd $5f $34
    ld a, $41                                     ; $46bd: $3e $41
    ldh [$c1], a                                  ; $46bf: $e0 $c1
    ld a, $ab                                     ; $46c1: $3e $ab
    ldh [$bd], a                                  ; $46c3: $e0 $bd
    ld a, $6c                                     ; $46c5: $3e $6c
    ldh [$be], a                                  ; $46c7: $e0 $be
    call Call_000_345f                            ; $46c9: $cd $5f $34
    xor a                                         ; $46cc: $af
    ld b, a                                       ; $46cd: $47
    ld hl, $1beb                                  ; $46ce: $21 $eb $1b

jr_006_46d1:
    push hl                                       ; $46d1: $e5
    call Call_006_626e                            ; $46d2: $cd $6e $62
    ldh [$c1], a                                  ; $46d5: $e0 $c1
    ld a, $30                                     ; $46d7: $3e $30
    ldh [$bd], a                                  ; $46d9: $e0 $bd
    ld a, $6d                                     ; $46db: $3e $6d
    ldh [$be], a                                  ; $46dd: $e0 $be
    call Call_000_345f                            ; $46df: $cd $5f $34
    pop hl                                        ; $46e2: $e1
    ld de, $0003                                  ; $46e3: $11 $03 $00
    add hl, de                                    ; $46e6: $19
    inc b                                         ; $46e7: $04
    ld a, b                                       ; $46e8: $78
    cp $06                                        ; $46e9: $fe $06
    jr nz, jr_006_46d1                            ; $46eb: $20 $e4

    rst $20                                       ; $46ed: $e7
    ld a, $01                                     ; $46ee: $3e $01
    ldh [$d0], a                                  ; $46f0: $e0 $d0
    ret                                           ; $46f2: $c9


    db $01, $05, $80, $00, $00, $00, $aa, $24, $00, $02, $01, $02, $00, $dc, $40, $dc

    add b                                         ; $4703: $80
    call c, $dcc0                                 ; $4704: $dc $c0 $dc
    nop                                           ; $4707: $00
    db $dd                                        ; $4708: $dd
    ld b, b                                       ; $4709: $40
    db $dd                                        ; $470a: $dd
    add b                                         ; $470b: $80
    db $dd                                        ; $470c: $dd
    ret nz                                        ; $470d: $c0

    db $dd                                        ; $470e: $dd
    nop                                           ; $470f: $00
    sbc $4a                                       ; $4710: $de $4a
    db $dd                                        ; $4712: $dd
    adc d                                         ; $4713: $8a
    db $dd                                        ; $4714: $dd
    jp z, $0add                                   ; $4715: $ca $dd $0a

    db $de                                        ; $4718: $de

    db $20

    ld h, $2c                                     ; $471a: $26 $2c
    inc sp                                        ; $471c: $33
    ld a, [hl-]                                   ; $471d: $3a
    ld b, b                                       ; $471e: $40
    ld b, a                                       ; $471f: $47
    ld c, l                                       ; $4720: $4d
    ld d, e                                       ; $4721: $53
    ld e, c                                       ; $4722: $59
    ld e, a                                       ; $4723: $5f
    ld h, l                                       ; $4724: $65
    ld l, e                                       ; $4725: $6b

    xor a                                         ; $4726: $af
    ldh [$d1], a                                  ; $4727: $e0 $d1
    ld hl, $46f3                                  ; $4729: $21 $f3 $46
    jp Jump_000_2837                              ; $472c: $c3 $37 $28


    ld hl, $795f                                  ; $472f: $21 $5f $79
    ldh [$c1], a                                  ; $4732: $e0 $c1
    ld a, $6d                                     ; $4734: $3e $6d
    ldh [$bd], a                                  ; $4736: $e0 $bd
    ld a, $7c                                     ; $4738: $3e $7c
    ldh [$be], a                                  ; $473a: $e0 $be
    call Call_000_346d                            ; $473c: $cd $6d $34
    call Call_000_3356                            ; $473f: $cd $56 $33
    ldh [$d5], a                                  ; $4742: $e0 $d5
    ldh [$d1], a                                  ; $4744: $e0 $d1
    ld hl, $4836                                  ; $4746: $21 $36 $48
    call Call_006_4f62                            ; $4749: $cd $62 $4f
    ld c, $01                                     ; $474c: $0e $01
    call Call_006_47f6                            ; $474e: $cd $f6 $47

jr_006_4751:
    ldh a, [$d1]                                  ; $4751: $f0 $d1
    ld a, $08                                     ; $4753: $3e $08
    ldh [$f2], a                                  ; $4755: $e0 $f2
    ld a, $05                                     ; $4757: $3e $05
    ldh [$f3], a                                  ; $4759: $e0 $f3
    ldh a, [$d1]                                  ; $475b: $f0 $d1
    and $03                                       ; $475d: $e6 $03
    add a                                         ; $475f: $87
    add a                                         ; $4760: $87
    add a                                         ; $4761: $87
    ldh [$f0], a                                  ; $4762: $e0 $f0
    ldh a, [$d1]                                  ; $4764: $f0 $d1
    and $fc                                       ; $4766: $e6 $fc
    ld c, a                                       ; $4768: $4f
    rra                                           ; $4769: $1f
    rra                                           ; $476a: $1f
    add c                                         ; $476b: $81
    ldh [$f1], a                                  ; $476c: $e0 $f1
    ld a, $06                                     ; $476e: $3e $06
    ld bc, $0000                                  ; $4770: $01 $00 $00
    ld de, $d86b                                  ; $4773: $11 $6b $d8
    ld hl, $537b                                  ; $4776: $21 $7b $53
    ldh [$c1], a                                  ; $4779: $e0 $c1
    ld a, $2a                                     ; $477b: $3e $2a
    ldh [$bd], a                                  ; $477d: $e0 $bd
    ld a, $33                                     ; $477f: $3e $33
    ldh [$be], a                                  ; $4781: $e0 $be
    jp Jump_000_3487                              ; $4783: $c3 $87 $34


    ldh a, [$a5]                                  ; $4786: $f0 $a5
    bit 0, a                                      ; $4788: $cb $47
    jr nz, jr_006_47ac                            ; $478a: $20 $20

    bit 1, a                                      ; $478c: $cb $4f
    jr nz, jr_006_47cf                            ; $478e: $20 $3f

    call Call_006_4f86                            ; $4790: $cd $86 $4f
    ld hl, $ffd1                                  ; $4793: $21 $d1 $ff
    cp [hl]                                       ; $4796: $be
    ret z                                         ; $4797: $c8

    push af                                       ; $4798: $f5
    ld c, $00                                     ; $4799: $0e $00
    call Call_006_47f6                            ; $479b: $cd $f6 $47
    pop af                                        ; $479e: $f1
    ld [hl], a                                    ; $479f: $77
    ld a, $19                                     ; $47a0: $3e $19
    call Call_000_393e                            ; $47a2: $cd $3e $39
    ld c, $01                                     ; $47a5: $0e $01
    call Call_006_47f6                            ; $47a7: $cd $f6 $47
    jr jr_006_4751                                ; $47aa: $18 $a5

jr_006_47ac:
    ldh a, [$d5]                                  ; $47ac: $f0 $d5
    call Call_006_47df                            ; $47ae: $cd $df $47
    ldh [$c1], a                                  ; $47b1: $e0 $c1
    ld a, $f5                                     ; $47b3: $3e $f5
    ldh [$bd], a                                  ; $47b5: $e0 $bd
    ld a, $55                                     ; $47b7: $3e $55
    ldh [$be], a                                  ; $47b9: $e0 $be
    call Call_000_3474                            ; $47bb: $cd $74 $34
    ld a, $17                                     ; $47be: $3e $17
    call Call_000_393e                            ; $47c0: $cd $3e $39
    ldh a, [$cc]                                  ; $47c3: $f0 $cc
    cp $03                                        ; $47c5: $fe $03
    jp z, Jump_000_2448                           ; $47c7: $ca $48 $24

    ld a, $00                                     ; $47ca: $3e $00
    jp Jump_000_2448                              ; $47cc: $c3 $48 $24


jr_006_47cf:
    ld a, $18                                     ; $47cf: $3e $18
    call Call_000_393e                            ; $47d1: $cd $3e $39
    ld a, [$cddd]                                 ; $47d4: $fa $dd $cd
    cp $ff                                        ; $47d7: $fe $ff
    ret z                                         ; $47d9: $c8

    ld a, $03                                     ; $47da: $3e $03
    jp Jump_000_2448                              ; $47dc: $c3 $48 $24


Call_006_47df:
    ld [$cddd], a                                 ; $47df: $ea $dd $cd
    ld hl, $4719                                  ; $47e2: $21 $19 $47
    rst $08                                       ; $47e5: $cf
    ld [$cddc], a                                 ; $47e6: $ea $dc $cd
    ldh [$c1], a                                  ; $47e9: $e0 $c1
    ld a, $4f                                     ; $47eb: $3e $4f
    ldh [$bd], a                                  ; $47ed: $e0 $bd
    ld a, $64                                     ; $47ef: $3e $64
    ldh [$be], a                                  ; $47f1: $e0 $be
    jp Jump_000_345f                              ; $47f3: $c3 $5f $34


Call_006_47f6:
    push bc                                       ; $47f6: $c5
    push hl                                       ; $47f7: $e5
    ldh a, [$d1]                                  ; $47f8: $f0 $d1
    ld hl, $46ff                                  ; $47fa: $21 $ff $46
    call Call_000_319d                            ; $47fd: $cd $9d $31
    ld d, $02                                     ; $4800: $16 $02
    ld e, $0a                                     ; $4802: $1e $0a
    ld b, $07                                     ; $4804: $06 $07
    call Call_000_1390                            ; $4806: $cd $90 $13
    pop hl                                        ; $4809: $e1
    pop bc                                        ; $480a: $c1
    ret                                           ; $480b: $c9


    db $00, $52, $38

    inc b                                         ; $480f: $04
    inc b                                         ; $4810: $04
    inc b                                         ; $4811: $04
    db $01                                        ; $4812: $01
    nop                                           ; $4813: $00

    db $00

    add b                                         ; $4815: $80
    cpl                                           ; $4816: $2f
    inc bc                                        ; $4817: $03
    ld [bc], a                                    ; $4818: $02
    nop                                           ; $4819: $00
    ld [bc], a                                    ; $481a: $02
    nop                                           ; $481b: $00

    db $01

    adc b                                         ; $481d: $88
    ld c, b                                       ; $481e: $48
    ld bc, $0103                                  ; $481f: $01 $03 $01
    inc bc                                        ; $4822: $03
    nop                                           ; $4823: $00

    db $02

    adc b                                         ; $4825: $88
    ld h, b                                       ; $4826: $60
    ld [bc], a                                    ; $4827: $02
    ld bc, $0402                                  ; $4828: $01 $02 $04
    nop                                           ; $482b: $00
    inc bc                                        ; $482c: $03
    ld d, h                                       ; $482d: $54
    ld a, h                                       ; $482e: $7c
    nop                                           ; $482f: $00
    nop                                           ; $4830: $00
    inc bc                                        ; $4831: $03
    nop                                           ; $4832: $00
    nop                                           ; $4833: $00
    inc b                                         ; $4834: $04

    db $00

    nop                                           ; $4836: $00
    nop                                           ; $4837: $00

    db $08, $01

    rst $38                                       ; $483a: $ff
    rst $38                                       ; $483b: $ff
    rst $38                                       ; $483c: $ff

    db $00

    nop                                           ; $483e: $00
    nop                                           ; $483f: $00

    db $00

    ld [bc], a                                    ; $4841: $02
    rst $38                                       ; $4842: $ff
    rst $38                                       ; $4843: $ff
    rst $38                                       ; $4844: $ff

    db $01

    nop                                           ; $4846: $00
    nop                                           ; $4847: $00
    ld bc, $ff03                                  ; $4848: $01 $03 $ff
    rst $38                                       ; $484b: $ff
    rst $38                                       ; $484c: $ff
    ld [bc], a                                    ; $484d: $02
    nop                                           ; $484e: $00
    nop                                           ; $484f: $00
    ld [bc], a                                    ; $4850: $02
    inc b                                         ; $4851: $04
    rst $38                                       ; $4852: $ff
    rst $38                                       ; $4853: $ff
    rst $38                                       ; $4854: $ff
    inc bc                                        ; $4855: $03
    nop                                           ; $4856: $00
    nop                                           ; $4857: $00
    inc bc                                        ; $4858: $03
    dec b                                         ; $4859: $05
    rst $38                                       ; $485a: $ff
    rst $38                                       ; $485b: $ff
    rst $38                                       ; $485c: $ff
    inc b                                         ; $485d: $04
    nop                                           ; $485e: $00
    nop                                           ; $485f: $00
    inc b                                         ; $4860: $04
    ld b, $09                                     ; $4861: $06 $09
    add hl, bc                                    ; $4863: $09
    rst $38                                       ; $4864: $ff
    dec b                                         ; $4865: $05
    nop                                           ; $4866: $00
    nop                                           ; $4867: $00
    dec b                                         ; $4868: $05
    rlca                                          ; $4869: $07
    ld a, [bc]                                    ; $486a: $0a
    ld a, [bc]                                    ; $486b: $0a
    rst $38                                       ; $486c: $ff
    ld b, $00                                     ; $486d: $06 $00
    nop                                           ; $486f: $00
    ld b, $08                                     ; $4870: $06 $08
    dec bc                                        ; $4872: $0b
    dec bc                                        ; $4873: $0b
    rst $38                                       ; $4874: $ff
    rlca                                          ; $4875: $07
    nop                                           ; $4876: $00
    nop                                           ; $4877: $00
    rlca                                          ; $4878: $07
    nop                                           ; $4879: $00
    inc c                                         ; $487a: $0c
    inc c                                         ; $487b: $0c
    rst $38                                       ; $487c: $ff
    ld [$0000], sp                                ; $487d: $08 $00 $00
    inc c                                         ; $4880: $0c
    ld a, [bc]                                    ; $4881: $0a
    dec b                                         ; $4882: $05
    dec b                                         ; $4883: $05
    rst $38                                       ; $4884: $ff
    add hl, bc                                    ; $4885: $09
    nop                                           ; $4886: $00
    nop                                           ; $4887: $00
    add hl, bc                                    ; $4888: $09
    dec bc                                        ; $4889: $0b
    ld b, $06                                     ; $488a: $06 $06
    rst $38                                       ; $488c: $ff
    ld a, [bc]                                    ; $488d: $0a
    nop                                           ; $488e: $00
    nop                                           ; $488f: $00
    ld a, [bc]                                    ; $4890: $0a
    inc c                                         ; $4891: $0c
    rlca                                          ; $4892: $07
    rlca                                          ; $4893: $07
    rst $38                                       ; $4894: $ff
    dec bc                                        ; $4895: $0b
    nop                                           ; $4896: $00
    nop                                           ; $4897: $00
    dec bc                                        ; $4898: $0b
    add hl, bc                                    ; $4899: $09
    ld [$ff08], sp                                ; $489a: $08 $08 $ff
    inc c                                         ; $489d: $0c
    nop                                           ; $489e: $00
    nop                                           ; $489f: $00
    nop                                           ; $48a0: $00
    inc bc                                        ; $48a1: $03
    ld bc, $0000                                  ; $48a2: $01 $00 $00
    rst $38                                       ; $48a5: $ff
    nop                                           ; $48a6: $00
    nop                                           ; $48a7: $00
    nop                                           ; $48a8: $00
    nop                                           ; $48a9: $00
    ld [bc], a                                    ; $48aa: $02
    ld bc, $ff01                                  ; $48ab: $01 $01 $ff
    ld bc, $0000                                  ; $48ae: $01 $00 $00
    ld bc, $0203                                  ; $48b1: $01 $03 $02
    ld [bc], a                                    ; $48b4: $02
    rst $38                                       ; $48b5: $ff
    ld [bc], a                                    ; $48b6: $02
    nop                                           ; $48b7: $00
    nop                                           ; $48b8: $00
    ld [bc], a                                    ; $48b9: $02
    nop                                           ; $48ba: $00
    inc bc                                        ; $48bb: $03
    inc bc                                        ; $48bc: $03
    rst $38                                       ; $48bd: $ff
    inc bc                                        ; $48be: $03
    nop                                           ; $48bf: $00
    nop                                           ; $48c0: $00
    nop                                           ; $48c1: $00

    db $00

    nop                                           ; $48c3: $00
    inc bc                                        ; $48c4: $03
    db $01                                        ; $48c5: $01
    rst $38                                       ; $48c6: $ff

    db $00

    nop                                           ; $48c8: $00
    nop                                           ; $48c9: $00
    ld bc, $0001                                  ; $48ca: $01 $01 $00
    ld [bc], a                                    ; $48cd: $02
    rst $38                                       ; $48ce: $ff
    ld bc, $0000                                  ; $48cf: $01 $00 $00
    ld [bc], a                                    ; $48d2: $02
    ld [bc], a                                    ; $48d3: $02
    ld bc, $ff03                                  ; $48d4: $01 $03 $ff
    ld [bc], a                                    ; $48d7: $02
    nop                                           ; $48d8: $00
    nop                                           ; $48d9: $00
    inc bc                                        ; $48da: $03
    inc bc                                        ; $48db: $03
    ld [bc], a                                    ; $48dc: $02
    nop                                           ; $48dd: $00
    rst $38                                       ; $48de: $ff
    inc bc                                        ; $48df: $03

    db $00, $0b, $4c

    nop                                           ; $48e3: $00
    ld bc, $0000                                  ; $48e4: $01 $00 $00
    nop                                           ; $48e7: $00

    db $00

    dec bc                                        ; $48e9: $0b
    ld d, h                                       ; $48ea: $54
    nop                                           ; $48eb: $00
    ld bc, $0101                                  ; $48ec: $01 $01 $01
    nop                                           ; $48ef: $00
    ld bc, $0b00                                  ; $48f0: $01 $00 $0b
    inc l                                         ; $48f3: $2c
    ld [bc], a                                    ; $48f4: $02
    ld bc, $0000                                  ; $48f5: $01 $00 $00
    nop                                           ; $48f8: $00
    nop                                           ; $48f9: $00
    dec bc                                        ; $48fa: $0b
    inc [hl]                                      ; $48fb: $34
    nop                                           ; $48fc: $00
    ld [bc], a                                    ; $48fd: $02
    ld bc, $0001                                  ; $48fe: $01 $01 $00

Call_006_4901:
    ld bc, $3c0b                                  ; $4901: $01 $0b $3c
    ld bc, $0200                                  ; $4904: $01 $00 $02
    ld [bc], a                                    ; $4907: $02
    nop                                           ; $4908: $00
    ld [bc], a                                    ; $4909: $02

    db $00, $03, $24, $05, $01

    nop                                           ; $490f: $00
    nop                                           ; $4910: $00
    nop                                           ; $4911: $00

    db $00, $03, $2c, $00, $02

    ld bc, $0001                                  ; $4917: $01 $01 $00

    db $01

    inc bc                                        ; $491b: $03
    inc [hl]                                      ; $491c: $34
    ld bc, $0203                                  ; $491d: $01 $03 $02
    ld [bc], a                                    ; $4920: $02
    nop                                           ; $4921: $00

    db $02, $03, $3c, $02, $04

    inc bc                                        ; $4927: $03
    inc bc                                        ; $4928: $03
    nop                                           ; $4929: $00

    db $03, $03, $44, $03

    dec b                                         ; $492e: $05
    inc b                                         ; $492f: $04
    inc b                                         ; $4930: $04
    nop                                           ; $4931: $00

    db $04

    inc bc                                        ; $4933: $03
    ld c, h                                       ; $4934: $4c
    inc b                                         ; $4935: $04
    nop                                           ; $4936: $00
    dec b                                         ; $4937: $05
    dec b                                         ; $4938: $05
    nop                                           ; $4939: $00
    dec b                                         ; $493a: $05
    nop                                           ; $493b: $00
    ld [$0408], sp                                ; $493c: $08 $08 $04
    inc b                                         ; $493f: $04
    inc bc                                        ; $4940: $03
    ld bc, $0000                                  ; $4941: $01 $00 $00
    jr nc, jr_006_494e                            ; $4944: $30 $08

    dec b                                         ; $4946: $05
    dec b                                         ; $4947: $05
    nop                                           ; $4948: $00
    ld [bc], a                                    ; $4949: $02
    nop                                           ; $494a: $00
    ld bc, $0858                                  ; $494b: $01 $58 $08

jr_006_494e:
    ld b, $06                                     ; $494e: $06 $06
    ld bc, $0003                                  ; $4950: $01 $03 $00
    ld [bc], a                                    ; $4953: $02
    add b                                         ; $4954: $80
    ld [$0606], sp                                ; $4955: $08 $06 $06
    ld [bc], a                                    ; $4958: $02
    nop                                           ; $4959: $00
    nop                                           ; $495a: $00
    inc bc                                        ; $495b: $03
    jr @+$42                                      ; $495c: $18 $40

    nop                                           ; $495e: $00
    nop                                           ; $495f: $00
    ld b, $05                                     ; $4960: $06 $05
    nop                                           ; $4962: $00
    inc b                                         ; $4963: $04
    ld b, b                                       ; $4964: $40
    ld b, b                                       ; $4965: $40
    ld bc, $0401                                  ; $4966: $01 $01 $04
    ld b, $00                                     ; $4969: $06 $00
    dec b                                         ; $496b: $05
    ld l, b                                       ; $496c: $68
    ld b, b                                       ; $496d: $40
    ld [bc], a                                    ; $496e: $02
    ld [bc], a                                    ; $496f: $02
    dec b                                         ; $4970: $05
    inc b                                         ; $4971: $04
    nop                                           ; $4972: $00
    db $06                                        ; $4973: $06

    db $00, $03, $74, $03

    ld bc, $0000                                  ; $4978: $01 $00 $00
    nop                                           ; $497b: $00

    db $00

    inc bc                                        ; $497d: $03
    ld a, h                                       ; $497e: $7c
    nop                                           ; $497f: $00
    ld [bc], a                                    ; $4980: $02
    ld bc, $0001                                  ; $4981: $01 $01 $00
    ld bc, $8403                                  ; $4984: $01 $03 $84
    ld bc, $0203                                  ; $4987: $01 $03 $02
    ld [bc], a                                    ; $498a: $02
    nop                                           ; $498b: $00
    ld [bc], a                                    ; $498c: $02
    inc bc                                        ; $498d: $03
    adc h                                         ; $498e: $8c
    ld [bc], a                                    ; $498f: $02
    nop                                           ; $4990: $00
    inc bc                                        ; $4991: $03
    inc bc                                        ; $4992: $03
    nop                                           ; $4993: $00
    inc bc                                        ; $4994: $03

    db $01

    inc bc                                        ; $4996: $03
    ld [hl], h                                    ; $4997: $74
    ld bc, $0001                                  ; $4998: $01 $01 $00
    nop                                           ; $499b: $00
    nop                                           ; $499c: $00
    nop                                           ; $499d: $00

    db $03, $74, $00

    ld [bc], a                                    ; $49a1: $02
    db $01                                        ; $49a2: $01

    db $01

    nop                                           ; $49a4: $00

    db $01, $03, $7c, $01

    inc bc                                        ; $49a9: $03
    ld [bc], a                                    ; $49aa: $02
    ld [bc], a                                    ; $49ab: $02
    nop                                           ; $49ac: $00

    db $02

    inc bc                                        ; $49ae: $03
    add h                                         ; $49af: $84
    ld [bc], a                                    ; $49b0: $02
    inc b                                         ; $49b1: $04
    inc bc                                        ; $49b2: $03
    inc bc                                        ; $49b3: $03
    nop                                           ; $49b4: $00
    inc bc                                        ; $49b5: $03
    inc bc                                        ; $49b6: $03
    adc h                                         ; $49b7: $8c
    inc bc                                        ; $49b8: $03
    dec b                                         ; $49b9: $05
    inc b                                         ; $49ba: $04
    inc b                                         ; $49bb: $04
    nop                                           ; $49bc: $00
    inc b                                         ; $49bd: $04
    inc bc                                        ; $49be: $03
    adc h                                         ; $49bf: $8c
    inc b                                         ; $49c0: $04
    dec b                                         ; $49c1: $05
    dec b                                         ; $49c2: $05
    dec b                                         ; $49c3: $05
    nop                                           ; $49c4: $00
    dec b                                         ; $49c5: $05

    db $00

    ld a, [de]                                    ; $49c7: $1a
    db $20                                        ; $49c8: $20

    db $02

    ld bc, $ffff                                  ; $49ca: $01 $ff $ff
    rst $38                                       ; $49cd: $ff

    db $00

    ld a, [de]                                    ; $49cf: $1a
    ld c, b                                       ; $49d0: $48
    nop                                           ; $49d1: $00
    ld [bc], a                                    ; $49d2: $02
    rst $38                                       ; $49d3: $ff
    rst $38                                       ; $49d4: $ff
    rst $38                                       ; $49d5: $ff
    ld bc, $701a                                  ; $49d6: $01 $1a $70
    ld bc, $ff00                                  ; $49d9: $01 $00 $ff
    rst $38                                       ; $49dc: $ff
    rst $38                                       ; $49dd: $ff
    ld [bc], a                                    ; $49de: $02
    nop                                           ; $49df: $00
    ld c, h                                       ; $49e0: $4c
    ld d, e                                       ; $49e1: $53
    ld bc, $ff01                                  ; $49e2: $01 $01 $ff
    rst $38                                       ; $49e5: $ff
    rst $38                                       ; $49e6: $ff
    nop                                           ; $49e7: $00
    ld c, h                                       ; $49e8: $4c
    ld e, e                                       ; $49e9: $5b
    nop                                           ; $49ea: $00
    nop                                           ; $49eb: $00
    rst $38                                       ; $49ec: $ff
    rst $38                                       ; $49ed: $ff
    rst $38                                       ; $49ee: $ff
    ld bc, $0b01                                  ; $49ef: $01 $01 $0b
    inc l                                         ; $49f2: $2c
    ld bc, $0001                                  ; $49f3: $01 $01 $00
    nop                                           ; $49f6: $00
    nop                                           ; $49f7: $00
    nop                                           ; $49f8: $00
    dec bc                                        ; $49f9: $0b
    inc l                                         ; $49fa: $2c
    nop                                           ; $49fb: $00
    ld [bc], a                                    ; $49fc: $02
    ld bc, $0001                                  ; $49fd: $01 $01 $00
    ld bc, $340b                                  ; $4a00: $01 $0b $34
    ld bc, $0203                                  ; $4a03: $01 $03 $02
    ld [bc], a                                    ; $4a06: $02
    nop                                           ; $4a07: $00
    ld [bc], a                                    ; $4a08: $02
    dec bc                                        ; $4a09: $0b
    inc a                                         ; $4a0a: $3c
    ld [bc], a                                    ; $4a0b: $02
    inc b                                         ; $4a0c: $04
    inc bc                                        ; $4a0d: $03
    inc bc                                        ; $4a0e: $03
    nop                                           ; $4a0f: $00
    inc bc                                        ; $4a10: $03
    dec bc                                        ; $4a11: $0b
    ld b, h                                       ; $4a12: $44
    inc bc                                        ; $4a13: $03
    dec b                                         ; $4a14: $05
    inc b                                         ; $4a15: $04
    inc b                                         ; $4a16: $04
    nop                                           ; $4a17: $00
    inc b                                         ; $4a18: $04
    dec bc                                        ; $4a19: $0b
    ld c, h                                       ; $4a1a: $4c
    inc b                                         ; $4a1b: $04
    ld b, $05                                     ; $4a1c: $06 $05
    dec b                                         ; $4a1e: $05
    nop                                           ; $4a1f: $00
    dec b                                         ; $4a20: $05
    dec bc                                        ; $4a21: $0b
    ld d, h                                       ; $4a22: $54
    dec b                                         ; $4a23: $05
    rlca                                          ; $4a24: $07
    ld b, $06                                     ; $4a25: $06 $06
    nop                                           ; $4a27: $00
    ld b, $0b                                     ; $4a28: $06 $0b
    ld e, h                                       ; $4a2a: $5c
    ld b, $08                                     ; $4a2b: $06 $08
    rlca                                          ; $4a2d: $07
    rlca                                          ; $4a2e: $07
    nop                                           ; $4a2f: $00
    rlca                                          ; $4a30: $07
    dec bc                                        ; $4a31: $0b
    ld h, h                                       ; $4a32: $64
    rlca                                          ; $4a33: $07
    add hl, bc                                    ; $4a34: $09
    ld [$0008], sp                                ; $4a35: $08 $08 $00
    ld [$6c0b], sp                                ; $4a38: $08 $0b $6c
    ld [$090a], sp                                ; $4a3b: $08 $0a $09
    add hl, bc                                    ; $4a3e: $09
    nop                                           ; $4a3f: $00
    add hl, bc                                    ; $4a40: $09
    dec bc                                        ; $4a41: $0b
    ld [hl], h                                    ; $4a42: $74
    add hl, bc                                    ; $4a43: $09
    dec bc                                        ; $4a44: $0b
    ld a, [bc]                                    ; $4a45: $0a
    ld a, [bc]                                    ; $4a46: $0a
    nop                                           ; $4a47: $00
    ld a, [bc]                                    ; $4a48: $0a
    dec bc                                        ; $4a49: $0b
    ld a, h                                       ; $4a4a: $7c
    ld a, [bc]                                    ; $4a4b: $0a
    inc c                                         ; $4a4c: $0c
    dec bc                                        ; $4a4d: $0b
    dec bc                                        ; $4a4e: $0b
    nop                                           ; $4a4f: $00
    dec bc                                        ; $4a50: $0b
    dec bc                                        ; $4a51: $0b
    add h                                         ; $4a52: $84
    dec bc                                        ; $4a53: $0b
    dec c                                         ; $4a54: $0d
    inc c                                         ; $4a55: $0c
    inc c                                         ; $4a56: $0c
    nop                                           ; $4a57: $00
    inc c                                         ; $4a58: $0c
    dec bc                                        ; $4a59: $0b
    adc h                                         ; $4a5a: $8c
    inc c                                         ; $4a5b: $0c
    ld c, $0d                                     ; $4a5c: $0e $0d
    dec c                                         ; $4a5e: $0d
    nop                                           ; $4a5f: $00
    dec c                                         ; $4a60: $0d
    dec bc                                        ; $4a61: $0b
    sub h                                         ; $4a62: $94
    dec c                                         ; $4a63: $0d
    rrca                                          ; $4a64: $0f
    ld c, $0e                                     ; $4a65: $0e $0e
    nop                                           ; $4a67: $00
    ld c, $0b                                     ; $4a68: $0e $0b
    sub h                                         ; $4a6a: $94
    ld c, $0e                                     ; $4a6b: $0e $0e
    rrca                                          ; $4a6d: $0f
    rrca                                          ; $4a6e: $0f
    nop                                           ; $4a6f: $00
    rrca                                          ; $4a70: $0f
    nop                                           ; $4a71: $00

    db $50, $08, $5d

    ld a, [bc]                                    ; $4a75: $0a
    add hl, bc                                    ; $4a76: $09

    db $01, $02, $00, $58, $08, $5e, $0b

    nop                                           ; $4a7e: $00
    ld [bc], a                                    ; $4a7f: $02

    db $02, $01

    ld h, b                                       ; $4a82: $60
    ld [$0c5f], sp                                ; $4a83: $08 $5f $0c
    ld bc, $0203                                  ; $4a86: $01 $03 $02
    ld [bc], a                                    ; $4a89: $02
    ld l, b                                       ; $4a8a: $68
    ld [$0d60], sp                                ; $4a8b: $08 $60 $0d
    ld [bc], a                                    ; $4a8e: $02
    inc b                                         ; $4a8f: $04
    ld [bc], a                                    ; $4a90: $02
    inc bc                                        ; $4a91: $03
    ld [hl], b                                    ; $4a92: $70
    ld [$0e61], sp                                ; $4a93: $08 $61 $0e
    inc bc                                        ; $4a96: $03
    dec b                                         ; $4a97: $05
    ld [bc], a                                    ; $4a98: $02
    inc b                                         ; $4a99: $04
    ld a, b                                       ; $4a9a: $78
    ld [$0f62], sp                                ; $4a9b: $08 $62 $0f
    inc b                                         ; $4a9e: $04
    ld b, $02                                     ; $4a9f: $06 $02
    dec b                                         ; $4aa1: $05
    add b                                         ; $4aa2: $80
    ld [$1063], sp                                ; $4aa3: $08 $63 $10
    dec b                                         ; $4aa6: $05
    rlca                                          ; $4aa7: $07
    ld [bc], a                                    ; $4aa8: $02
    ld b, $88                                     ; $4aa9: $06 $88
    ld [$1164], sp                                ; $4aab: $08 $64 $11
    ld b, $08                                     ; $4aae: $06 $08
    ld [bc], a                                    ; $4ab0: $02
    rlca                                          ; $4ab1: $07
    sub b                                         ; $4ab2: $90
    ld [$1264], sp                                ; $4ab3: $08 $64 $12
    rlca                                          ; $4ab6: $07
    add hl, bc                                    ; $4ab7: $09
    ld [bc], a                                    ; $4ab8: $02
    ld [$0898], sp                                ; $4ab9: $08 $98 $08
    ld h, h                                       ; $4abc: $64
    ld [de], a                                    ; $4abd: $12
    ld [$0200], sp                                ; $4abe: $08 $00 $02
    add hl, bc                                    ; $4ac1: $09
    ld d, b                                       ; $4ac2: $50
    stop                                          ; $4ac3: $10 $00
    inc de                                        ; $4ac5: $13
    ld [de], a                                    ; $4ac6: $12
    dec bc                                        ; $4ac7: $0b
    ld [bc], a                                    ; $4ac8: $02
    ld a, [bc]                                    ; $4ac9: $0a

    db $58, $10, $01, $14

    ld a, [bc]                                    ; $4ace: $0a
    inc c                                         ; $4acf: $0c

    db $02, $0b

    ld h, b                                       ; $4ad2: $60
    db $10                                        ; $4ad3: $10
    ld [bc], a                                    ; $4ad4: $02
    dec d                                         ; $4ad5: $15
    dec bc                                        ; $4ad6: $0b
    dec c                                         ; $4ad7: $0d
    ld [bc], a                                    ; $4ad8: $02
    inc c                                         ; $4ad9: $0c
    ld l, b                                       ; $4ada: $68
    db $10                                        ; $4adb: $10
    inc bc                                        ; $4adc: $03
    ld d, $0c                                     ; $4add: $16 $0c
    ld c, $02                                     ; $4adf: $0e $02
    dec c                                         ; $4ae1: $0d
    ld [hl], b                                    ; $4ae2: $70
    db $10                                        ; $4ae3: $10
    inc b                                         ; $4ae4: $04
    rla                                           ; $4ae5: $17
    dec c                                         ; $4ae6: $0d
    rrca                                          ; $4ae7: $0f
    ld [bc], a                                    ; $4ae8: $02
    ld c, $78                                     ; $4ae9: $0e $78
    db $10                                        ; $4aeb: $10
    dec b                                         ; $4aec: $05
    jr jr_006_4afd                                ; $4aed: $18 $0e

    db $10                                        ; $4aef: $10
    ld [bc], a                                    ; $4af0: $02
    rrca                                          ; $4af1: $0f
    add b                                         ; $4af2: $80
    db $10                                        ; $4af3: $10
    ld b, $19                                     ; $4af4: $06 $19
    rrca                                          ; $4af6: $0f
    ld de, $1002                                  ; $4af7: $11 $02 $10
    adc b                                         ; $4afa: $88
    db $10                                        ; $4afb: $10
    rlca                                          ; $4afc: $07

jr_006_4afd:
    ld a, [de]                                    ; $4afd: $1a
    db $10                                        ; $4afe: $10
    ld [de], a                                    ; $4aff: $12
    ld [bc], a                                    ; $4b00: $02
    ld de, $1090                                  ; $4b01: $11 $90 $10
    ld [$111b], sp                                ; $4b04: $08 $1b $11
    ld a, [bc]                                    ; $4b07: $0a
    ld [bc], a                                    ; $4b08: $02
    ld [de], a                                    ; $4b09: $12
    ld d, b                                       ; $4b0a: $50
    jr jr_006_4b17                                ; $4b0b: $18 $0a

    inc e                                         ; $4b0d: $1c
    dec de                                        ; $4b0e: $1b
    inc d                                         ; $4b0f: $14
    ld [bc], a                                    ; $4b10: $02
    inc de                                        ; $4b11: $13

    db $58, $18, $0b, $1d

    inc de                                        ; $4b16: $13

jr_006_4b17:
    dec d                                         ; $4b17: $15

    db $02, $14

    ld h, b                                       ; $4b1a: $60
    jr jr_006_4b29                                ; $4b1b: $18 $0c

    ld e, $14                                     ; $4b1d: $1e $14
    ld d, $02                                     ; $4b1f: $16 $02
    dec d                                         ; $4b21: $15
    ld l, b                                       ; $4b22: $68
    jr jr_006_4b32                                ; $4b23: $18 $0d

    rra                                           ; $4b25: $1f
    dec d                                         ; $4b26: $15
    rla                                           ; $4b27: $17
    ld [bc], a                                    ; $4b28: $02

jr_006_4b29:
    ld d, $70                                     ; $4b29: $16 $70
    jr jr_006_4b3b                                ; $4b2b: $18 $0e

    jr nz, jr_006_4b45                            ; $4b2d: $20 $16

    jr jr_006_4b33                                ; $4b2f: $18 $02

    rla                                           ; $4b31: $17

jr_006_4b32:
    ld a, b                                       ; $4b32: $78

jr_006_4b33:
    jr @+$11                                      ; $4b33: $18 $0f

    ld hl, $1917                                  ; $4b35: $21 $17 $19
    ld [bc], a                                    ; $4b38: $02
    jr @-$7e                                      ; $4b39: $18 $80

jr_006_4b3b:
    jr jr_006_4b4d                                ; $4b3b: $18 $10

    ld [hl+], a                                   ; $4b3d: $22
    jr @+$1c                                      ; $4b3e: $18 $1a

    ld [bc], a                                    ; $4b40: $02
    add hl, de                                    ; $4b41: $19
    adc b                                         ; $4b42: $88
    jr @+$13                                      ; $4b43: $18 $11

jr_006_4b45:
    inc hl                                        ; $4b45: $23
    add hl, de                                    ; $4b46: $19
    dec de                                        ; $4b47: $1b
    ld [bc], a                                    ; $4b48: $02
    ld a, [de]                                    ; $4b49: $1a
    sub b                                         ; $4b4a: $90
    jr jr_006_4b5f                                ; $4b4b: $18 $12

jr_006_4b4d:
    inc h                                         ; $4b4d: $24
    ld a, [de]                                    ; $4b4e: $1a
    inc de                                        ; $4b4f: $13
    ld [bc], a                                    ; $4b50: $02
    dec de                                        ; $4b51: $1b

    db $50, $20, $13

    ld h, $25                                     ; $4b55: $26 $25

    db $1d, $02, $1c, $58, $20, $14, $27, $1c

jr_006_4b5f:
    db $1e                                        ; $4b5f: $1e

    db $02, $1d, $60, $20, $15

    db $28                                        ; $4b65: $28

    db $1d

    rra                                           ; $4b67: $1f

    db $02, $1e, $68, $20, $16

    add hl, hl                                    ; $4b6d: $29

    db $1e, $20, $02, $1f, $70, $20, $17

    ld a, [hl+]                                   ; $4b75: $2a
    rra                                           ; $4b76: $1f

    db $21, $02, $20, $78, $20, $18

    dec hl                                        ; $4b7d: $2b
    db $20                                        ; $4b7e: $20

    db $22, $02, $21, $80, $20, $19

    inc l                                         ; $4b85: $2c
    db $21                                        ; $4b86: $21
    inc hl                                        ; $4b87: $23

    db $02, $22

    adc b                                         ; $4b8a: $88
    jr nz, jr_006_4ba7                            ; $4b8b: $20 $1a

    dec l                                         ; $4b8d: $2d
    ld [hl+], a                                   ; $4b8e: $22
    inc h                                         ; $4b8f: $24
    ld [bc], a                                    ; $4b90: $02
    inc hl                                        ; $4b91: $23
    sub b                                         ; $4b92: $90
    jr nz, @+$1d                                  ; $4b93: $20 $1b

    ld l, $23                                     ; $4b95: $2e $23
    dec h                                         ; $4b97: $25
    ld [bc], a                                    ; $4b98: $02
    inc h                                         ; $4b99: $24
    sbc b                                         ; $4b9a: $98
    jr nz, jr_006_4bb8                            ; $4b9b: $20 $1b

    cpl                                           ; $4b9d: $2f
    inc h                                         ; $4b9e: $24
    inc e                                         ; $4b9f: $1c
    ld [bc], a                                    ; $4ba0: $02
    dec h                                         ; $4ba1: $25

jr_006_4ba2:
    ld d, b                                       ; $4ba2: $50
    jr z, jr_006_4bc1                             ; $4ba3: $28 $1c

    jr nc, @+$31                                  ; $4ba5: $30 $2f

jr_006_4ba7:
    daa                                           ; $4ba7: $27
    ld [bc], a                                    ; $4ba8: $02
    db $26                                        ; $4ba9: $26

    db $58, $28, $1d, $31

    ld h, $28                                     ; $4bae: $26 $28

    db $02, $27

    ld h, b                                       ; $4bb2: $60
    jr z, jr_006_4bd3                             ; $4bb3: $28 $1e

    ld [hl-], a                                   ; $4bb5: $32
    daa                                           ; $4bb6: $27
    add hl, hl                                    ; $4bb7: $29

jr_006_4bb8:
    ld [bc], a                                    ; $4bb8: $02
    jr z, jr_006_4c23                             ; $4bb9: $28 $68

    jr z, @+$21                                   ; $4bbb: $28 $1f

    inc sp                                        ; $4bbd: $33
    jr z, @+$2c                                   ; $4bbe: $28 $2a

    ld [bc], a                                    ; $4bc0: $02

jr_006_4bc1:
    add hl, hl                                    ; $4bc1: $29
    ld [hl], b                                    ; $4bc2: $70
    jr z, jr_006_4be5                             ; $4bc3: $28 $20

    inc [hl]                                      ; $4bc5: $34
    add hl, hl                                    ; $4bc6: $29
    dec hl                                        ; $4bc7: $2b
    ld [bc], a                                    ; $4bc8: $02
    ld a, [hl+]                                   ; $4bc9: $2a
    ld a, b                                       ; $4bca: $78
    jr z, @+$23                                   ; $4bcb: $28 $21

    dec [hl]                                      ; $4bcd: $35
    ld a, [hl+]                                   ; $4bce: $2a
    inc l                                         ; $4bcf: $2c
    ld [bc], a                                    ; $4bd0: $02
    dec hl                                        ; $4bd1: $2b
    add b                                         ; $4bd2: $80

jr_006_4bd3:
    jr z, @+$24                                   ; $4bd3: $28 $22

    ld [hl], $2b                                  ; $4bd5: $36 $2b
    dec l                                         ; $4bd7: $2d
    ld [bc], a                                    ; $4bd8: $02
    inc l                                         ; $4bd9: $2c
    adc b                                         ; $4bda: $88
    jr z, @+$25                                   ; $4bdb: $28 $23

    scf                                           ; $4bdd: $37
    inc l                                         ; $4bde: $2c
    ld l, $02                                     ; $4bdf: $2e $02
    dec l                                         ; $4be1: $2d
    sub b                                         ; $4be2: $90
    jr z, jr_006_4c09                             ; $4be3: $28 $24

jr_006_4be5:
    jr c, @+$2f                                   ; $4be5: $38 $2d

    cpl                                           ; $4be7: $2f
    ld [bc], a                                    ; $4be8: $02
    ld l, $98                                     ; $4be9: $2e $98
    jr z, jr_006_4c12                             ; $4beb: $28 $25

    jr c, jr_006_4c1d                             ; $4bed: $38 $2e

    ld h, $02                                     ; $4bef: $26 $02
    cpl                                           ; $4bf1: $2f
    ld d, b                                       ; $4bf2: $50
    jr nc, jr_006_4c1b                            ; $4bf3: $30 $26

    add hl, sp                                    ; $4bf5: $39
    jr c, jr_006_4c29                             ; $4bf6: $38 $31

    ld [bc], a                                    ; $4bf8: $02
    db $30                                        ; $4bf9: $30

    db $58, $30, $27, $3a

    jr nc, jr_006_4c32                            ; $4bfe: $30 $32

    db $02, $31

    ld h, b                                       ; $4c02: $60
    jr nc, jr_006_4c2d                            ; $4c03: $30 $28

    dec sp                                        ; $4c05: $3b
    ld sp, $0233                                  ; $4c06: $31 $33 $02

jr_006_4c09:
    ld [hl-], a                                   ; $4c09: $32
    ld l, b                                       ; $4c0a: $68
    jr nc, jr_006_4c36                            ; $4c0b: $30 $29

    inc a                                         ; $4c0d: $3c
    ld [hl-], a                                   ; $4c0e: $32
    inc [hl]                                      ; $4c0f: $34
    ld [bc], a                                    ; $4c10: $02
    inc sp                                        ; $4c11: $33

jr_006_4c12:
    ld [hl], b                                    ; $4c12: $70
    jr nc, jr_006_4c3f                            ; $4c13: $30 $2a

    dec a                                         ; $4c15: $3d
    inc sp                                        ; $4c16: $33
    dec [hl]                                      ; $4c17: $35
    ld [bc], a                                    ; $4c18: $02
    inc [hl]                                      ; $4c19: $34
    ld a, b                                       ; $4c1a: $78

jr_006_4c1b:
    jr nc, @+$2d                                  ; $4c1b: $30 $2b

jr_006_4c1d:
    ld a, $34                                     ; $4c1d: $3e $34
    ld [hl], $02                                  ; $4c1f: $36 $02
    dec [hl]                                      ; $4c21: $35
    add b                                         ; $4c22: $80

jr_006_4c23:
    jr nc, @+$2e                                  ; $4c23: $30 $2c

    ccf                                           ; $4c25: $3f
    dec [hl]                                      ; $4c26: $35
    scf                                           ; $4c27: $37
    ld [bc], a                                    ; $4c28: $02

jr_006_4c29:
    ld [hl], $88                                  ; $4c29: $36 $88
    jr nc, @+$2f                                  ; $4c2b: $30 $2d

jr_006_4c2d:
    ccf                                           ; $4c2d: $3f
    ld [hl], $38                                  ; $4c2e: $36 $38
    ld [bc], a                                    ; $4c30: $02
    scf                                           ; $4c31: $37

jr_006_4c32:
    sub b                                         ; $4c32: $90
    jr nc, jr_006_4c63                            ; $4c33: $30 $2e

    ccf                                           ; $4c35: $3f

jr_006_4c36:
    scf                                           ; $4c36: $37
    jr nc, jr_006_4c3b                            ; $4c37: $30 $02

    jr c, jr_006_4c8b                             ; $4c39: $38 $50

jr_006_4c3b:
    jr c, jr_006_4c6d                             ; $4c3b: $38 $30

    ld b, b                                       ; $4c3d: $40
    ccf                                           ; $4c3e: $3f

jr_006_4c3f:
    ld a, [hl-]                                   ; $4c3f: $3a
    ld [bc], a                                    ; $4c40: $02
    add hl, sp                                    ; $4c41: $39

    db $58, $38, $31

    ld b, c                                       ; $4c45: $41
    add hl, sp                                    ; $4c46: $39

    db $3b, $02, $3a, $60, $38, $32

    ld b, d                                       ; $4c4d: $42
    ld a, [hl-]                                   ; $4c4e: $3a

    db $3c, $02, $3b, $68, $38, $33

    ld b, e                                       ; $4c55: $43
    dec sp                                        ; $4c56: $3b

    db $3d, $02, $3c, $70, $38, $34

    ld b, h                                       ; $4c5d: $44
    inc a                                         ; $4c5e: $3c
    db $3e                                        ; $4c5f: $3e

    db $02, $3d

    ld a, b                                       ; $4c62: $78

jr_006_4c63:
    jr c, jr_006_4c9a                             ; $4c63: $38 $35

    ld b, l                                       ; $4c65: $45
    dec a                                         ; $4c66: $3d
    ccf                                           ; $4c67: $3f
    ld [bc], a                                    ; $4c68: $02
    ld a, $80                                     ; $4c69: $3e $80
    jr c, jr_006_4ca3                             ; $4c6b: $38 $36

jr_006_4c6d:
    ld b, [hl]                                    ; $4c6d: $46
    ld a, $39                                     ; $4c6e: $3e $39
    ld [bc], a                                    ; $4c70: $02
    ccf                                           ; $4c71: $3f
    ld d, b                                       ; $4c72: $50
    ld b, b                                       ; $4c73: $40
    add hl, sp                                    ; $4c74: $39
    ld c, d                                       ; $4c75: $4a
    ld c, c                                       ; $4c76: $49
    ld b, c                                       ; $4c77: $41
    ld [bc], a                                    ; $4c78: $02
    ld b, b                                       ; $4c79: $40
    ld e, b                                       ; $4c7a: $58
    ld b, b                                       ; $4c7b: $40
    ld a, [hl-]                                   ; $4c7c: $3a
    ld c, e                                       ; $4c7d: $4b
    ld b, b                                       ; $4c7e: $40
    ld b, d                                       ; $4c7f: $42
    ld [bc], a                                    ; $4c80: $02
    ld b, c                                       ; $4c81: $41
    ld h, b                                       ; $4c82: $60
    ld b, b                                       ; $4c83: $40
    dec sp                                        ; $4c84: $3b
    ld c, h                                       ; $4c85: $4c
    ld b, c                                       ; $4c86: $41
    ld b, e                                       ; $4c87: $43
    ld [bc], a                                    ; $4c88: $02
    ld b, d                                       ; $4c89: $42
    ld l, b                                       ; $4c8a: $68

jr_006_4c8b:
    ld b, b                                       ; $4c8b: $40
    inc a                                         ; $4c8c: $3c
    ld c, l                                       ; $4c8d: $4d
    ld b, d                                       ; $4c8e: $42
    ld b, h                                       ; $4c8f: $44
    ld [bc], a                                    ; $4c90: $02
    ld b, e                                       ; $4c91: $43
    ld [hl], b                                    ; $4c92: $70
    ld b, b                                       ; $4c93: $40
    dec a                                         ; $4c94: $3d
    ld c, [hl]                                    ; $4c95: $4e
    ld b, e                                       ; $4c96: $43
    ld b, l                                       ; $4c97: $45
    ld [bc], a                                    ; $4c98: $02
    ld b, h                                       ; $4c99: $44

jr_006_4c9a:
    ld a, b                                       ; $4c9a: $78
    ld b, b                                       ; $4c9b: $40
    ld a, $4f                                     ; $4c9c: $3e $4f
    ld b, h                                       ; $4c9e: $44
    ld b, [hl]                                    ; $4c9f: $46
    ld [bc], a                                    ; $4ca0: $02
    ld b, l                                       ; $4ca1: $45
    add b                                         ; $4ca2: $80

jr_006_4ca3:
    ld b, b                                       ; $4ca3: $40
    ccf                                           ; $4ca4: $3f
    ld d, b                                       ; $4ca5: $50
    ld b, l                                       ; $4ca6: $45
    ld b, a                                       ; $4ca7: $47
    ld [bc], a                                    ; $4ca8: $02
    ld b, [hl]                                    ; $4ca9: $46
    adc b                                         ; $4caa: $88
    ld b, b                                       ; $4cab: $40
    ccf                                           ; $4cac: $3f
    ld d, c                                       ; $4cad: $51
    ld b, [hl]                                    ; $4cae: $46
    ld c, b                                       ; $4caf: $48
    ld [bc], a                                    ; $4cb0: $02
    ld b, a                                       ; $4cb1: $47
    sub b                                         ; $4cb2: $90
    ld b, b                                       ; $4cb3: $40
    ccf                                           ; $4cb4: $3f
    ld d, d                                       ; $4cb5: $52
    ld b, a                                       ; $4cb6: $47
    ld c, c                                       ; $4cb7: $49
    ld [bc], a                                    ; $4cb8: $02
    ld c, b                                       ; $4cb9: $48
    sbc b                                         ; $4cba: $98
    ld b, b                                       ; $4cbb: $40
    ccf                                           ; $4cbc: $3f
    ld d, e                                       ; $4cbd: $53
    ld c, b                                       ; $4cbe: $48
    ld b, b                                       ; $4cbf: $40
    ld [bc], a                                    ; $4cc0: $02
    ld c, c                                       ; $4cc1: $49
    ld d, b                                       ; $4cc2: $50
    ld c, b                                       ; $4cc3: $48
    ld b, b                                       ; $4cc4: $40
    ld d, h                                       ; $4cc5: $54
    ld d, e                                       ; $4cc6: $53
    ld c, e                                       ; $4cc7: $4b
    ld [bc], a                                    ; $4cc8: $02
    ld c, d                                       ; $4cc9: $4a
    ld e, b                                       ; $4cca: $58
    ld c, b                                       ; $4ccb: $48
    ld b, c                                       ; $4ccc: $41
    ld d, l                                       ; $4ccd: $55
    ld c, d                                       ; $4cce: $4a
    ld c, h                                       ; $4ccf: $4c
    ld [bc], a                                    ; $4cd0: $02
    ld c, e                                       ; $4cd1: $4b
    ld h, b                                       ; $4cd2: $60
    ld c, b                                       ; $4cd3: $48
    ld b, d                                       ; $4cd4: $42
    ld d, [hl]                                    ; $4cd5: $56
    ld c, e                                       ; $4cd6: $4b
    ld c, l                                       ; $4cd7: $4d
    ld [bc], a                                    ; $4cd8: $02
    ld c, h                                       ; $4cd9: $4c
    ld l, b                                       ; $4cda: $68
    ld c, b                                       ; $4cdb: $48
    ld b, e                                       ; $4cdc: $43
    ld d, a                                       ; $4cdd: $57
    ld c, h                                       ; $4cde: $4c
    ld c, [hl]                                    ; $4cdf: $4e
    ld [bc], a                                    ; $4ce0: $02
    ld c, l                                       ; $4ce1: $4d
    ld [hl], b                                    ; $4ce2: $70
    ld c, b                                       ; $4ce3: $48
    ld b, h                                       ; $4ce4: $44
    ld e, b                                       ; $4ce5: $58
    ld c, l                                       ; $4ce6: $4d
    ld c, a                                       ; $4ce7: $4f
    ld [bc], a                                    ; $4ce8: $02
    ld c, [hl]                                    ; $4ce9: $4e
    ld a, b                                       ; $4cea: $78
    ld c, b                                       ; $4ceb: $48
    ld b, l                                       ; $4cec: $45
    ld e, c                                       ; $4ced: $59
    ld c, [hl]                                    ; $4cee: $4e
    ld d, b                                       ; $4cef: $50
    ld [bc], a                                    ; $4cf0: $02
    ld c, a                                       ; $4cf1: $4f
    add b                                         ; $4cf2: $80
    ld c, b                                       ; $4cf3: $48
    ld b, [hl]                                    ; $4cf4: $46
    ld e, d                                       ; $4cf5: $5a
    ld c, a                                       ; $4cf6: $4f
    ld d, c                                       ; $4cf7: $51
    ld [bc], a                                    ; $4cf8: $02
    ld d, b                                       ; $4cf9: $50
    adc b                                         ; $4cfa: $88
    ld c, b                                       ; $4cfb: $48
    ld b, a                                       ; $4cfc: $47
    ld e, e                                       ; $4cfd: $5b
    ld d, b                                       ; $4cfe: $50
    ld d, d                                       ; $4cff: $52
    ld [bc], a                                    ; $4d00: $02
    ld d, c                                       ; $4d01: $51
    sub b                                         ; $4d02: $90
    ld c, b                                       ; $4d03: $48
    ld c, b                                       ; $4d04: $48
    ld e, h                                       ; $4d05: $5c
    ld d, c                                       ; $4d06: $51
    ld d, e                                       ; $4d07: $53
    ld [bc], a                                    ; $4d08: $02
    ld d, d                                       ; $4d09: $52
    sbc b                                         ; $4d0a: $98
    ld c, b                                       ; $4d0b: $48
    ld c, c                                       ; $4d0c: $49
    ld e, h                                       ; $4d0d: $5c
    ld d, d                                       ; $4d0e: $52
    ld c, d                                       ; $4d0f: $4a
    ld [bc], a                                    ; $4d10: $02
    ld d, e                                       ; $4d11: $53
    ld d, b                                       ; $4d12: $50
    ld d, b                                       ; $4d13: $50
    ld c, d                                       ; $4d14: $4a
    ld e, l                                       ; $4d15: $5d
    ld e, h                                       ; $4d16: $5c
    ld d, l                                       ; $4d17: $55
    ld [bc], a                                    ; $4d18: $02
    ld d, h                                       ; $4d19: $54
    ld e, b                                       ; $4d1a: $58
    ld d, b                                       ; $4d1b: $50
    ld c, e                                       ; $4d1c: $4b
    ld e, [hl]                                    ; $4d1d: $5e
    ld d, h                                       ; $4d1e: $54
    ld d, [hl]                                    ; $4d1f: $56
    ld [bc], a                                    ; $4d20: $02
    ld d, l                                       ; $4d21: $55
    ld h, b                                       ; $4d22: $60
    ld d, b                                       ; $4d23: $50
    ld c, h                                       ; $4d24: $4c
    ld e, a                                       ; $4d25: $5f
    ld d, l                                       ; $4d26: $55
    ld d, a                                       ; $4d27: $57
    ld [bc], a                                    ; $4d28: $02
    ld d, [hl]                                    ; $4d29: $56
    ld l, b                                       ; $4d2a: $68
    ld d, b                                       ; $4d2b: $50
    ld c, l                                       ; $4d2c: $4d
    ld h, b                                       ; $4d2d: $60
    ld d, [hl]                                    ; $4d2e: $56
    ld e, b                                       ; $4d2f: $58
    ld [bc], a                                    ; $4d30: $02
    ld d, a                                       ; $4d31: $57
    ld [hl], b                                    ; $4d32: $70
    ld d, b                                       ; $4d33: $50
    ld c, [hl]                                    ; $4d34: $4e
    ld h, c                                       ; $4d35: $61
    ld d, a                                       ; $4d36: $57
    ld e, c                                       ; $4d37: $59
    ld [bc], a                                    ; $4d38: $02
    ld e, b                                       ; $4d39: $58
    ld a, b                                       ; $4d3a: $78
    ld d, b                                       ; $4d3b: $50
    ld c, a                                       ; $4d3c: $4f
    ld h, d                                       ; $4d3d: $62
    ld e, b                                       ; $4d3e: $58
    ld e, d                                       ; $4d3f: $5a
    ld [bc], a                                    ; $4d40: $02
    ld e, c                                       ; $4d41: $59
    add b                                         ; $4d42: $80
    ld d, b                                       ; $4d43: $50
    ld d, b                                       ; $4d44: $50
    ld h, e                                       ; $4d45: $63
    ld e, c                                       ; $4d46: $59
    ld e, e                                       ; $4d47: $5b
    ld [bc], a                                    ; $4d48: $02
    ld e, d                                       ; $4d49: $5a
    adc b                                         ; $4d4a: $88
    ld d, b                                       ; $4d4b: $50
    ld d, c                                       ; $4d4c: $51
    ld h, h                                       ; $4d4d: $64
    ld e, d                                       ; $4d4e: $5a
    ld e, h                                       ; $4d4f: $5c
    ld [bc], a                                    ; $4d50: $02
    ld e, e                                       ; $4d51: $5b
    sub b                                         ; $4d52: $90
    ld d, b                                       ; $4d53: $50
    ld d, d                                       ; $4d54: $52
    ld h, h                                       ; $4d55: $64
    ld e, e                                       ; $4d56: $5b
    ld d, h                                       ; $4d57: $54
    ld [bc], a                                    ; $4d58: $02
    ld e, h                                       ; $4d59: $5c
    ld d, b                                       ; $4d5a: $50
    ld e, b                                       ; $4d5b: $58
    ld d, h                                       ; $4d5c: $54
    nop                                           ; $4d5d: $00
    ld h, h                                       ; $4d5e: $64
    ld e, [hl]                                    ; $4d5f: $5e
    ld [bc], a                                    ; $4d60: $02
    ld e, l                                       ; $4d61: $5d
    ld e, b                                       ; $4d62: $58
    ld e, b                                       ; $4d63: $58
    ld d, l                                       ; $4d64: $55
    ld bc, $5f5d                                  ; $4d65: $01 $5d $5f
    ld [bc], a                                    ; $4d68: $02
    ld e, [hl]                                    ; $4d69: $5e
    ld h, b                                       ; $4d6a: $60
    ld e, b                                       ; $4d6b: $58
    ld d, [hl]                                    ; $4d6c: $56
    ld [bc], a                                    ; $4d6d: $02
    ld e, [hl]                                    ; $4d6e: $5e
    ld h, b                                       ; $4d6f: $60
    ld [bc], a                                    ; $4d70: $02
    ld e, a                                       ; $4d71: $5f
    ld l, b                                       ; $4d72: $68
    ld e, b                                       ; $4d73: $58
    ld d, a                                       ; $4d74: $57
    inc bc                                        ; $4d75: $03
    ld e, a                                       ; $4d76: $5f
    ld h, c                                       ; $4d77: $61
    ld [bc], a                                    ; $4d78: $02
    ld h, b                                       ; $4d79: $60
    ld [hl], b                                    ; $4d7a: $70
    ld e, b                                       ; $4d7b: $58
    ld e, b                                       ; $4d7c: $58
    inc b                                         ; $4d7d: $04
    ld h, b                                       ; $4d7e: $60
    ld h, d                                       ; $4d7f: $62
    ld [bc], a                                    ; $4d80: $02
    ld h, c                                       ; $4d81: $61
    ld a, b                                       ; $4d82: $78
    ld e, b                                       ; $4d83: $58
    ld e, c                                       ; $4d84: $59
    dec b                                         ; $4d85: $05
    ld h, c                                       ; $4d86: $61
    ld h, e                                       ; $4d87: $63
    ld [bc], a                                    ; $4d88: $02
    ld h, d                                       ; $4d89: $62
    add b                                         ; $4d8a: $80
    ld e, b                                       ; $4d8b: $58
    ld e, d                                       ; $4d8c: $5a
    ld b, $62                                     ; $4d8d: $06 $62
    ld h, h                                       ; $4d8f: $64
    ld [bc], a                                    ; $4d90: $02
    ld h, e                                       ; $4d91: $63
    adc b                                         ; $4d92: $88
    ld e, b                                       ; $4d93: $58
    ld e, e                                       ; $4d94: $5b
    rlca                                          ; $4d95: $07
    ld h, e                                       ; $4d96: $63
    ld e, l                                       ; $4d97: $5d
    ld [bc], a                                    ; $4d98: $02
    ld h, h                                       ; $4d99: $64
    ld bc, $5000                                  ; $4d9a: $01 $00 $50
    ld bc, $0001                                  ; $4d9d: $01 $01 $00
    nop                                           ; $4da0: $00
    nop                                           ; $4da1: $00
    nop                                           ; $4da2: $00
    nop                                           ; $4da3: $00
    ld d, b                                       ; $4da4: $50
    nop                                           ; $4da5: $00
    ld b, $05                                     ; $4da6: $06 $05
    ld [bc], a                                    ; $4da8: $02
    nop                                           ; $4da9: $00
    db $01                                        ; $4daa: $01

    db $20, $50, $00

    rlca                                          ; $4dae: $07
    db $01                                        ; $4daf: $01

    db $03, $00, $02, $40, $50, $00

    db $08                                        ; $4db6: $08
    ld [bc], a                                    ; $4db7: $02

    db $04, $00, $03, $60, $50, $00

    add hl, bc                                    ; $4dbe: $09
    inc bc                                        ; $4dbf: $03
    dec b                                         ; $4dc0: $05

    db $00, $04, $80, $50, $00

    ld a, [bc]                                    ; $4dc6: $0a
    inc b                                         ; $4dc7: $04
    db $01                                        ; $4dc8: $01

    db $00, $05

    nop                                           ; $4dcb: $00
    ld [hl], b                                    ; $4dcc: $70
    ld bc, $0a0b                                  ; $4dcd: $01 $0b $0a
    rlca                                          ; $4dd0: $07
    nop                                           ; $4dd1: $00
    db $06                                        ; $4dd2: $06

    db $20, $70, $02

    dec bc                                        ; $4dd6: $0b
    ld b, $08                                     ; $4dd7: $06 $08

    db $00, $07

    ld b, b                                       ; $4ddb: $40
    ld [hl], b                                    ; $4ddc: $70
    inc bc                                        ; $4ddd: $03
    dec bc                                        ; $4dde: $0b
    rlca                                          ; $4ddf: $07
    add hl, bc                                    ; $4de0: $09
    nop                                           ; $4de1: $00
    ld [$7060], sp                                ; $4de2: $08 $60 $70
    inc b                                         ; $4de5: $04
    dec bc                                        ; $4de6: $0b
    ld [$000a], sp                                ; $4de7: $08 $0a $00
    add hl, bc                                    ; $4dea: $09
    add b                                         ; $4deb: $80
    ld [hl], b                                    ; $4dec: $70
    dec b                                         ; $4ded: $05
    dec bc                                        ; $4dee: $0b
    add hl, bc                                    ; $4def: $09
    ld b, $00                                     ; $4df0: $06 $00
    ld a, [bc]                                    ; $4df2: $0a
    add b                                         ; $4df3: $80
    ld [hl], b                                    ; $4df4: $70
    ld a, [bc]                                    ; $4df5: $0a
    ld a, [bc]                                    ; $4df6: $0a
    dec bc                                        ; $4df7: $0b
    dec bc                                        ; $4df8: $0b
    nop                                           ; $4df9: $00
    dec bc                                        ; $4dfa: $0b

    db $01

    adc b                                         ; $4dfc: $88
    jr @+$03                                      ; $4dfd: $18 $01

    ld bc, $0000                                  ; $4dff: $01 $00 $00
    ld a, [bc]                                    ; $4e02: $0a
    nop                                           ; $4e03: $00

    db $88, $18, $00, $02

    db $01                                        ; $4e08: $01
    db $01                                        ; $4e09: $01

    db $0a, $01, $88, $40, $01

    inc bc                                        ; $4e0f: $03
    ld [bc], a                                    ; $4e10: $02
    ld [bc], a                                    ; $4e11: $02

    db $0a, $02

    adc b                                         ; $4e14: $88
    ld l, b                                       ; $4e15: $68
    ld [bc], a                                    ; $4e16: $02
    inc b                                         ; $4e17: $04
    inc bc                                        ; $4e18: $03
    inc bc                                        ; $4e19: $03
    ld a, [bc]                                    ; $4e1a: $0a
    inc bc                                        ; $4e1b: $03
    adc b                                         ; $4e1c: $88
    ld l, b                                       ; $4e1d: $68
    inc bc                                        ; $4e1e: $03
    inc bc                                        ; $4e1f: $03
    inc b                                         ; $4e20: $04
    inc b                                         ; $4e21: $04
    ld a, [bc]                                    ; $4e22: $0a
    inc b                                         ; $4e23: $04
    ld bc, $942c                                  ; $4e24: $01 $2c $94
    ld bc, $0001                                  ; $4e27: $01 $01 $00
    nop                                           ; $4e2a: $00
    nop                                           ; $4e2b: $00
    nop                                           ; $4e2c: $00
    inc l                                         ; $4e2d: $2c
    adc h                                         ; $4e2e: $8c
    nop                                           ; $4e2f: $00
    nop                                           ; $4e30: $00
    ld bc, $0001                                  ; $4e31: $01 $01 $00
    ld bc, $a300                                  ; $4e34: $01 $00 $a3
    sbc h                                         ; $4e37: $9c
    nop                                           ; $4e38: $00
    nop                                           ; $4e39: $00
    nop                                           ; $4e3a: $00
    nop                                           ; $4e3b: $00
    nop                                           ; $4e3c: $00
    nop                                           ; $4e3d: $00
    nop                                           ; $4e3e: $00
    ld [$0868], sp                                ; $4e3f: $08 $68 $08
    ld [$0110], sp                                ; $4e42: $08 $10 $01
    ld a, [bc]                                    ; $4e45: $0a
    nop                                           ; $4e46: $00
    jr jr_006_4eb1                                ; $4e47: $18 $68

    add hl, bc                                    ; $4e49: $09
    add hl, bc                                    ; $4e4a: $09
    nop                                           ; $4e4b: $00
    ld [bc], a                                    ; $4e4c: $02
    ld a, [bc]                                    ; $4e4d: $0a
    ld bc, $6828                                  ; $4e4e: $01 $28 $68
    ld a, [bc]                                    ; $4e51: $0a
    ld a, [bc]                                    ; $4e52: $0a
    ld bc, $0a03                                  ; $4e53: $01 $03 $0a
    ld [bc], a                                    ; $4e56: $02
    jr c, jr_006_4ec1                             ; $4e57: $38 $68

    dec bc                                        ; $4e59: $0b
    dec bc                                        ; $4e5a: $0b
    ld [bc], a                                    ; $4e5b: $02
    inc b                                         ; $4e5c: $04
    ld a, [bc]                                    ; $4e5d: $0a
    inc bc                                        ; $4e5e: $03
    ld c, b                                       ; $4e5f: $48
    ld l, b                                       ; $4e60: $68
    inc c                                         ; $4e61: $0c
    inc c                                         ; $4e62: $0c
    inc bc                                        ; $4e63: $03
    dec b                                         ; $4e64: $05
    ld a, [bc]                                    ; $4e65: $0a
    inc b                                         ; $4e66: $04
    ld e, b                                       ; $4e67: $58
    ld l, b                                       ; $4e68: $68
    dec c                                         ; $4e69: $0d
    dec c                                         ; $4e6a: $0d
    inc b                                         ; $4e6b: $04
    ld b, $0a                                     ; $4e6c: $06 $0a
    dec b                                         ; $4e6e: $05
    ld l, b                                       ; $4e6f: $68
    ld l, b                                       ; $4e70: $68
    ld c, $0e                                     ; $4e71: $0e $0e
    dec b                                         ; $4e73: $05
    rlca                                          ; $4e74: $07
    ld a, [bc]                                    ; $4e75: $0a
    ld b, $78                                     ; $4e76: $06 $78
    ld l, b                                       ; $4e78: $68
    rrca                                          ; $4e79: $0f
    rrca                                          ; $4e7a: $0f
    ld b, $10                                     ; $4e7b: $06 $10
    ld a, [bc]                                    ; $4e7d: $0a
    rlca                                          ; $4e7e: $07
    ld [$0078], sp                                ; $4e7f: $08 $78 $00
    nop                                           ; $4e82: $00
    rlca                                          ; $4e83: $07
    add hl, bc                                    ; $4e84: $09
    ld a, [bc]                                    ; $4e85: $0a
    ld [$7818], sp                                ; $4e86: $08 $18 $78
    ld bc, $0801                                  ; $4e89: $01 $01 $08
    ld a, [bc]                                    ; $4e8c: $0a
    ld a, [bc]                                    ; $4e8d: $0a
    add hl, bc                                    ; $4e8e: $09
    jr z, jr_006_4f09                             ; $4e8f: $28 $78

    ld [bc], a                                    ; $4e91: $02
    ld [bc], a                                    ; $4e92: $02
    add hl, bc                                    ; $4e93: $09
    dec bc                                        ; $4e94: $0b
    ld a, [bc]                                    ; $4e95: $0a
    ld a, [bc]                                    ; $4e96: $0a
    jr c, @+$7a                                   ; $4e97: $38 $78

    inc bc                                        ; $4e99: $03
    inc bc                                        ; $4e9a: $03
    ld a, [bc]                                    ; $4e9b: $0a
    inc c                                         ; $4e9c: $0c
    ld a, [bc]                                    ; $4e9d: $0a
    dec bc                                        ; $4e9e: $0b
    ld c, b                                       ; $4e9f: $48
    ld a, b                                       ; $4ea0: $78
    inc b                                         ; $4ea1: $04
    inc b                                         ; $4ea2: $04
    dec bc                                        ; $4ea3: $0b
    dec c                                         ; $4ea4: $0d
    ld a, [bc]                                    ; $4ea5: $0a
    inc c                                         ; $4ea6: $0c
    ld e, b                                       ; $4ea7: $58
    ld a, b                                       ; $4ea8: $78
    dec b                                         ; $4ea9: $05
    dec b                                         ; $4eaa: $05
    inc c                                         ; $4eab: $0c
    ld c, $0a                                     ; $4eac: $0e $0a
    dec c                                         ; $4eae: $0d
    ld l, b                                       ; $4eaf: $68
    ld a, b                                       ; $4eb0: $78

jr_006_4eb1:
    ld b, $06                                     ; $4eb1: $06 $06
    dec c                                         ; $4eb3: $0d
    rrca                                          ; $4eb4: $0f
    ld a, [bc]                                    ; $4eb5: $0a
    ld c, $78                                     ; $4eb6: $0e $78
    ld a, b                                       ; $4eb8: $78
    rlca                                          ; $4eb9: $07
    rlca                                          ; $4eba: $07
    ld c, $10                                     ; $4ebb: $0e $10
    ld a, [bc]                                    ; $4ebd: $0a
    rrca                                          ; $4ebe: $0f
    adc b                                         ; $4ebf: $88
    ld [hl], b                                    ; $4ec0: $70

jr_006_4ec1:
    rlca                                          ; $4ec1: $07
    rrca                                          ; $4ec2: $0f
    rrca                                          ; $4ec3: $0f
    nop                                           ; $4ec4: $00
    ld a, [bc]                                    ; $4ec5: $0a
    stop                                          ; $4ec6: $10 $00
    db $10                                        ; $4ec8: $10
    ld e, b                                       ; $4ec9: $58
    ld [$0f08], sp                                ; $4eca: $08 $08 $0f
    ld bc, $000a                                  ; $4ecd: $01 $0a $00
    jr nz, jr_006_4f2a                            ; $4ed0: $20 $58

    add hl, bc                                    ; $4ed2: $09
    add hl, bc                                    ; $4ed3: $09
    nop                                           ; $4ed4: $00
    ld [bc], a                                    ; $4ed5: $02
    ld a, [bc]                                    ; $4ed6: $0a
    ld bc, $5830                                  ; $4ed7: $01 $30 $58
    ld a, [bc]                                    ; $4eda: $0a
    ld a, [bc]                                    ; $4edb: $0a
    ld bc, $0a03                                  ; $4edc: $01 $03 $0a
    ld [bc], a                                    ; $4edf: $02
    ld b, b                                       ; $4ee0: $40
    ld e, b                                       ; $4ee1: $58
    dec bc                                        ; $4ee2: $0b
    dec bc                                        ; $4ee3: $0b
    ld [bc], a                                    ; $4ee4: $02
    inc b                                         ; $4ee5: $04
    ld a, [bc]                                    ; $4ee6: $0a
    inc bc                                        ; $4ee7: $03
    ld d, b                                       ; $4ee8: $50
    ld e, b                                       ; $4ee9: $58
    inc c                                         ; $4eea: $0c
    inc c                                         ; $4eeb: $0c
    inc bc                                        ; $4eec: $03
    dec b                                         ; $4eed: $05
    ld a, [bc]                                    ; $4eee: $0a
    inc b                                         ; $4eef: $04
    ld h, b                                       ; $4ef0: $60
    ld e, b                                       ; $4ef1: $58
    dec c                                         ; $4ef2: $0d
    dec c                                         ; $4ef3: $0d
    inc b                                         ; $4ef4: $04
    ld b, $0a                                     ; $4ef5: $06 $0a
    dec b                                         ; $4ef7: $05
    ld [hl], b                                    ; $4ef8: $70
    ld e, b                                       ; $4ef9: $58
    ld c, $0e                                     ; $4efa: $0e $0e
    dec b                                         ; $4efc: $05
    rlca                                          ; $4efd: $07
    ld a, [bc]                                    ; $4efe: $0a
    ld b, $80                                     ; $4eff: $06 $80
    ld e, b                                       ; $4f01: $58
    rrca                                          ; $4f02: $0f
    rrca                                          ; $4f03: $0f
    ld b, $08                                     ; $4f04: $06 $08
    ld a, [bc]                                    ; $4f06: $0a
    rlca                                          ; $4f07: $07
    db $10                                        ; $4f08: $10

jr_006_4f09:
    ld l, b                                       ; $4f09: $68
    nop                                           ; $4f0a: $00
    nop                                           ; $4f0b: $00
    rlca                                          ; $4f0c: $07
    add hl, bc                                    ; $4f0d: $09
    ld a, [bc]                                    ; $4f0e: $0a
    ld [$6820], sp                                ; $4f0f: $08 $20 $68
    ld bc, $0801                                  ; $4f12: $01 $01 $08
    ld a, [bc]                                    ; $4f15: $0a
    ld a, [bc]                                    ; $4f16: $0a
    add hl, bc                                    ; $4f17: $09
    jr nc, jr_006_4f82                            ; $4f18: $30 $68

    ld [bc], a                                    ; $4f1a: $02
    ld [bc], a                                    ; $4f1b: $02
    add hl, bc                                    ; $4f1c: $09
    dec bc                                        ; $4f1d: $0b
    ld a, [bc]                                    ; $4f1e: $0a
    ld a, [bc]                                    ; $4f1f: $0a
    ld b, b                                       ; $4f20: $40
    ld l, b                                       ; $4f21: $68
    inc bc                                        ; $4f22: $03
    inc bc                                        ; $4f23: $03
    ld a, [bc]                                    ; $4f24: $0a
    inc c                                         ; $4f25: $0c
    ld a, [bc]                                    ; $4f26: $0a
    dec bc                                        ; $4f27: $0b
    ld d, b                                       ; $4f28: $50
    ld l, b                                       ; $4f29: $68

jr_006_4f2a:
    inc b                                         ; $4f2a: $04
    inc b                                         ; $4f2b: $04
    dec bc                                        ; $4f2c: $0b
    dec c                                         ; $4f2d: $0d
    ld a, [bc]                                    ; $4f2e: $0a
    inc c                                         ; $4f2f: $0c
    ld h, b                                       ; $4f30: $60
    ld l, b                                       ; $4f31: $68
    dec b                                         ; $4f32: $05
    dec b                                         ; $4f33: $05
    inc c                                         ; $4f34: $0c
    ld c, $0a                                     ; $4f35: $0e $0a
    dec c                                         ; $4f37: $0d
    ld [hl], b                                    ; $4f38: $70
    ld l, b                                       ; $4f39: $68
    ld b, $06                                     ; $4f3a: $06 $06
    dec c                                         ; $4f3c: $0d
    rrca                                          ; $4f3d: $0f
    ld a, [bc]                                    ; $4f3e: $0a
    ld c, $80                                     ; $4f3f: $0e $80
    ld l, b                                       ; $4f41: $68
    rlca                                          ; $4f42: $07
    rlca                                          ; $4f43: $07
    ld c, $00                                     ; $4f44: $0e $00
    ld a, [bc]                                    ; $4f46: $0a
    rrca                                          ; $4f47: $0f
    nop                                           ; $4f48: $00
    ld a, [bc]                                    ; $4f49: $0a
    inc l                                         ; $4f4a: $2c
    ld [bc], a                                    ; $4f4b: $02
    ld bc, $0000                                  ; $4f4c: $01 $00 $00
    nop                                           ; $4f4f: $00
    nop                                           ; $4f50: $00
    ld a, [bc]                                    ; $4f51: $0a
    inc [hl]                                      ; $4f52: $34
    nop                                           ; $4f53: $00
    ld [bc], a                                    ; $4f54: $02
    ld bc, $0001                                  ; $4f55: $01 $01 $00
    ld bc, $3c0a                                  ; $4f58: $01 $0a $3c
    ld bc, $0200                                  ; $4f5b: $01 $00 $02
    ld [bc], a                                    ; $4f5e: $02
    nop                                           ; $4f5f: $00
    ld [bc], a                                    ; $4f60: $02

Call_006_4f61:
    ld a, [hl+]                                   ; $4f61: $2a

Call_006_4f62:
    ldh [$d5], a                                  ; $4f62: $e0 $d5
    ld a, l                                       ; $4f64: $7d
    ldh [$d6], a                                  ; $4f65: $e0 $d6
    ld a, h                                       ; $4f67: $7c
    ldh [$d7], a                                  ; $4f68: $e0 $d7
    ld a, $07                                     ; $4f6a: $3e $07
    jp Jump_006_4fbe                              ; $4f6c: $c3 $be $4f


Jump_006_4f6f:
    push bc                                       ; $4f6f: $c5
    ld c, a                                       ; $4f70: $4f
    call Call_006_4f61                            ; $4f71: $cd $61 $4f
    ld b, $00                                     ; $4f74: $06 $00

jr_006_4f76:
    ld a, b                                       ; $4f76: $78
    ldh [$d5], a                                  ; $4f77: $e0 $d5
    ld a, $07                                     ; $4f79: $3e $07
    call Call_006_4fbe                            ; $4f7b: $cd $be $4f
    cp c                                          ; $4f7e: $b9
    jr z, jr_006_4f84                             ; $4f7f: $28 $03

    inc b                                         ; $4f81: $04

jr_006_4f82:
    jr jr_006_4f76                                ; $4f82: $18 $f2

jr_006_4f84:
    pop bc                                        ; $4f84: $c1
    ret                                           ; $4f85: $c9


Call_006_4f86:
Jump_006_4f86:
    ld a, $02                                     ; $4f86: $3e $02
    call Call_006_4fbe                            ; $4f88: $cd $be $4f
    ldh a, [$a5]                                  ; $4f8b: $f0 $a5
    bit 3, a                                      ; $4f8d: $cb $5f
    jr nz, jr_006_4fa6                            ; $4f8f: $20 $15

    bit 6, a                                      ; $4f91: $cb $77
    jr nz, jr_006_4fa9                            ; $4f93: $20 $14

    bit 7, a                                      ; $4f95: $cb $7f
    inc hl                                        ; $4f97: $23
    jr nz, jr_006_4fa9                            ; $4f98: $20 $0f

    bit 5, a                                      ; $4f9a: $cb $6f
    inc hl                                        ; $4f9c: $23
    jr nz, jr_006_4fa9                            ; $4f9d: $20 $0a

    bit 4, a                                      ; $4f9f: $cb $67
    inc hl                                        ; $4fa1: $23
    jr nz, jr_006_4fa9                            ; $4fa2: $20 $05

    jr jr_006_4fb0                                ; $4fa4: $18 $0a

jr_006_4fa6:
    call Call_006_4fb5                            ; $4fa6: $cd $b5 $4f

jr_006_4fa9:
    ld a, [hl]                                    ; $4fa9: $7e
    cp $ff                                        ; $4faa: $fe $ff
    jr z, jr_006_4fb0                             ; $4fac: $28 $02

    ldh [$d5], a                                  ; $4fae: $e0 $d5

jr_006_4fb0:
    ld a, $07                                     ; $4fb0: $3e $07
    jp Jump_006_4fbe                              ; $4fb2: $c3 $be $4f


Call_006_4fb5:
    ld hl, $ffd6                                  ; $4fb5: $21 $d6 $ff
    ld a, [hl+]                                   ; $4fb8: $2a
    ld h, [hl]                                    ; $4fb9: $66
    ld l, a                                       ; $4fba: $6f
    dec hl                                        ; $4fbb: $2b
    ld a, [hl]                                    ; $4fbc: $7e
    ret                                           ; $4fbd: $c9


Call_006_4fbe:
Jump_006_4fbe:
    push af                                       ; $4fbe: $f5
    ldh a, [$d5]                                  ; $4fbf: $f0 $d5
    ld e, a                                       ; $4fc1: $5f
    ld d, $00                                     ; $4fc2: $16 $00
    sla e                                         ; $4fc4: $cb $23
    rl d                                          ; $4fc6: $cb $12
    sla e                                         ; $4fc8: $cb $23
    rl d                                          ; $4fca: $cb $12
    sla e                                         ; $4fcc: $cb $23
    rl d                                          ; $4fce: $cb $12
    ld hl, $ffd6                                  ; $4fd0: $21 $d6 $ff
    ld a, [hl+]                                   ; $4fd3: $2a
    ld h, [hl]                                    ; $4fd4: $66
    ld l, a                                       ; $4fd5: $6f
    add hl, de                                    ; $4fd6: $19
    pop af                                        ; $4fd7: $f1
    jp RST_08                                     ; $4fd8: $c3 $08 $00


Call_006_4fdb:
    xor a                                         ; $4fdb: $af
    call Call_006_4fbe                            ; $4fdc: $cd $be $4f
    ld e, a                                       ; $4fdf: $5f
    inc hl                                        ; $4fe0: $23
    ld d, [hl]                                    ; $4fe1: $56
    ret                                           ; $4fe2: $c9


Call_006_4fe3:
    ld a, $06                                     ; $4fe3: $3e $06
    jp Jump_006_4fbe                              ; $4fe5: $c3 $be $4f


    ld bc, $8003                                  ; $4fe8: $01 $03 $80
    nop                                           ; $4feb: $00
    nop                                           ; $4fec: $00
    nop                                           ; $4fed: $00
    xor d                                         ; $4fee: $aa
    inc h                                         ; $4fef: $24
    ld bc, $0402                                  ; $4ff0: $01 $02 $04
    ld bc, $e821                                  ; $4ff3: $01 $21 $e8
    ld c, a                                       ; $4ff6: $4f
    jp Jump_000_2837                              ; $4ff7: $c3 $37 $28


    jp Jump_006_5115                              ; $4ffa: $c3 $15 $51


    ld a, [$cbd7]                                 ; $4ffd: $fa $d7 $cb
    or a                                          ; $5000: $b7
    jr z, jr_006_5017                             ; $5001: $28 $14

    dec a                                         ; $5003: $3d
    ld [$cbd7], a                                 ; $5004: $ea $d7 $cb
    ret nz                                        ; $5007: $c0

    ld d, $01                                     ; $5008: $16 $01
    ldh [$c1], a                                  ; $500a: $e0 $c1
    ld a, $9a                                     ; $500c: $3e $9a
    ldh [$bd], a                                  ; $500e: $e0 $bd
    ld a, $7c                                     ; $5010: $3e $7c
    ldh [$be], a                                  ; $5012: $e0 $be
    call Call_000_347b                            ; $5014: $cd $7b $34

jr_006_5017:
    call Call_006_5125                            ; $5017: $cd $25 $51
    ret nz                                        ; $501a: $c0

    ld a, $03                                     ; $501b: $3e $03
    jp Jump_000_2448                              ; $501d: $c3 $48 $24


    db $01, $02, $80, $00, $00, $00, $aa, $24, $01, $02, $01, $02

    ld hl, $5020                                  ; $502c: $21 $20 $50
    ld d, $01                                     ; $502f: $16 $01
    ld e, $02                                     ; $5031: $1e $02
    ld b, $01                                     ; $5033: $06 $01
    ld c, $02                                     ; $5035: $0e $02
    jp Jump_000_2837                              ; $5037: $c3 $37 $28


    jp Jump_006_5115                              ; $503a: $c3 $15 $51


    call Call_006_5121                            ; $503d: $cd $21 $51
    ret nz                                        ; $5040: $c0

    ld a, $03                                     ; $5041: $3e $03
    jp Jump_000_2448                              ; $5043: $c3 $48 $24


    db $01, $55, $80, $00, $00, $00, $aa, $24, $01, $02, $01, $02, $02, $01, $59, $50
    db $16, $01, $40, $aa, $d9, $ca, $d9, $ea, $d9, $0a, $da, $2a, $da, $21, $46, $50
    db $16, $01, $1e, $02, $06, $01, $0e, $02, $c3, $37, $28, $21, $52, $50, $cd, $1f
    db $30

    ld a, $94                                     ; $5077: $3e $94
    ld [$c1eb], a                                 ; $5079: $ea $eb $c1
    ld a, $05                                     ; $507c: $3e $05
    ld [$c234], a                                 ; $507e: $ea $34 $c2
    ld hl, $2140                                  ; $5081: $21 $40 $21
    ldh [$c1], a                                  ; $5084: $e0 $c1
    ld a, $1a                                     ; $5086: $3e $1a
    ldh [$bd], a                                  ; $5088: $e0 $bd
    ld a, $6e                                     ; $508a: $3e $6e
    ldh [$be], a                                  ; $508c: $e0 $be
    call Call_000_345f                            ; $508e: $cd $5f $34
    jp Jump_006_5115                              ; $5091: $c3 $15 $51


    call Call_006_5121                            ; $5094: $cd $21 $51
    ret nz                                        ; $5097: $c0

    ld a, $01                                     ; $5098: $3e $01
    jp Jump_000_2448                              ; $509a: $c3 $48 $24


    db $01, $00, $80, $00, $00, $00, $aa, $24, $01, $02, $01, $02

    db $10                                        ; $50a9: $10
    ld bc, $50b0                                  ; $50aa: $01 $b0 $50
    nop                                           ; $50ad: $00
    ld [bc], a                                    ; $50ae: $02
    nop                                           ; $50af: $00
    ld [$0ad9], a                                 ; $50b0: $ea $d9 $0a
    jp c, $da2a                                   ; $50b3: $da $2a $da

    db $10, $01, $bd, $50, $86, $00, $00, $2a, $d8, $4a, $d8, $6a, $d8, $8a, $d8, $aa
    db $d8, $ca, $d8, $ea, $d8, $0a, $d9, $2a, $d9, $4a, $d9, $6a, $d9, $8a, $d9, $aa
    db $d9, $ca, $d9, $ea, $d9, $0a, $da, $2a, $da, $21, $9d, $50, $c3, $37, $28, $21
    db $b6, $50, $cd, $1f, $30

    ld a, $94                                     ; $50eb: $3e $94
    ld [$c1eb], a                                 ; $50ed: $ea $eb $c1
    ld a, $12                                     ; $50f0: $3e $12
    ld [$c234], a                                 ; $50f2: $ea $34 $c2
    ld hl, $1b1c                                  ; $50f5: $21 $1c $1b
    ldh [$c1], a                                  ; $50f8: $e0 $c1
    ld a, $1a                                     ; $50fa: $3e $1a
    ldh [$bd], a                                  ; $50fc: $e0 $bd
    ld a, $6e                                     ; $50fe: $3e $6e
    ldh [$be], a                                  ; $5100: $e0 $be
    call Call_000_345f                            ; $5102: $cd $5f $34
    jr jr_006_5115                                ; $5105: $18 $0e

    call Call_006_5130                            ; $5107: $cd $30 $51
    jr jr_006_5115                                ; $510a: $18 $09

    call Call_006_5121                            ; $510c: $cd $21 $51
    ret nz                                        ; $510f: $c0

    ld a, $3f                                     ; $5110: $3e $3f
    jp Jump_000_2448                              ; $5112: $c3 $48 $24


Jump_006_5115:
jr_006_5115:
    ld de, $0078                                  ; $5115: $11 $78 $00
    call Call_000_30e1                            ; $5118: $cd $e1 $30
    ld de, $00b4                                  ; $511b: $11 $b4 $00
    jp Jump_000_30ea                              ; $511e: $c3 $ea $30


Call_006_5121:
    call Call_000_30f3                            ; $5121: $cd $f3 $30
    ret nz                                        ; $5124: $c0

Call_006_5125:
    call Call_000_30fc                            ; $5125: $cd $fc $30
    ret z                                         ; $5128: $c8

    ldh a, [$a5]                                  ; $5129: $f0 $a5
    and $09                                       ; $512b: $e6 $09
    jp Jump_000_312a                              ; $512d: $c3 $2a $31


Call_006_5130:
    ld hl, $50a9                                  ; $5130: $21 $a9 $50
    call Call_000_301f                            ; $5133: $cd $1f $30
    ld a, $9c                                     ; $5136: $3e $9c
    ld [$c1eb], a                                 ; $5138: $ea $eb $c1
    ld a, $01                                     ; $513b: $3e $01
    ld [$c234], a                                 ; $513d: $ea $34 $c2
    ld hl, $0004                                  ; $5140: $21 $04 $00
    ldh [$c1], a                                  ; $5143: $e0 $c1
    ld a, $1a                                     ; $5145: $3e $1a
    ldh [$bd], a                                  ; $5147: $e0 $bd
    ld a, $6e                                     ; $5149: $3e $6e
    ldh [$be], a                                  ; $514b: $e0 $be
    call Call_000_345f                            ; $514d: $cd $5f $34
    ld hl, $0001                                  ; $5150: $21 $01 $00
    ldh [$c1], a                                  ; $5153: $e0 $c1
    ld a, $1a                                     ; $5155: $3e $1a
    ldh [$bd], a                                  ; $5157: $e0 $bd
    ld a, $6e                                     ; $5159: $3e $6e
    ldh [$be], a                                  ; $515b: $e0 $be
    call Call_000_345f                            ; $515d: $cd $5f $34
    ld hl, $0007                                  ; $5160: $21 $07 $00
    ldh [$c1], a                                  ; $5163: $e0 $c1
    ld a, $1a                                     ; $5165: $3e $1a
    ldh [$bd], a                                  ; $5167: $e0 $bd
    ld a, $6e                                     ; $5169: $3e $6e
    ldh [$be], a                                  ; $516b: $e0 $be
    call Call_000_345f                            ; $516d: $cd $5f $34
    ret                                           ; $5170: $c9


    ldh a, [rSVBK]                                ; $5171: $f0 $70
    push af                                       ; $5173: $f5
    ld a, $02                                     ; $5174: $3e $02
    ldh [rSVBK], a                                ; $5176: $e0 $70
    ld hl, $d000                                  ; $5178: $21 $00 $d0
    ld bc, $0040                                  ; $517b: $01 $40 $00

jr_006_517e:
    ld a, $e0                                     ; $517e: $3e $e0
    ld [hl+], a                                   ; $5180: $22
    ld a, $03                                     ; $5181: $3e $03
    ld [hl+], a                                   ; $5183: $22
    dec bc                                        ; $5184: $0b
    ld a, c                                       ; $5185: $79
    or b                                          ; $5186: $b0
    jr nz, jr_006_517e                            ; $5187: $20 $f5

    pop af                                        ; $5189: $f1
    ldh [rSVBK], a                                ; $518a: $e0 $70
    call Call_000_258a                            ; $518c: $cd $8a $25
    ld a, $03                                     ; $518f: $3e $03
    ldh [$c1], a                                  ; $5191: $e0 $c1
    ld a, $d8                                     ; $5193: $3e $d8
    ldh [$bd], a                                  ; $5195: $e0 $bd
    ld a, $7b                                     ; $5197: $3e $7b
    ldh [$be], a                                  ; $5199: $e0 $be
    call Call_000_347b                            ; $519b: $cd $7b $34
    ret                                           ; $519e: $c9


    ld a, $08                                     ; $519f: $3e $08
    ld [$cb17], a                                 ; $51a1: $ea $17 $cb
    push de                                       ; $51a4: $d5
    ldh a, [rSVBK]                                ; $51a5: $f0 $70
    push af                                       ; $51a7: $f5
    ld a, $02                                     ; $51a8: $3e $02
    ldh [rSVBK], a                                ; $51aa: $e0 $70
    ld de, $d28f                                  ; $51ac: $11 $8f $d2
    ld hl, $d080                                  ; $51af: $21 $80 $d0
    call Call_000_11ee                            ; $51b2: $cd $ee $11
    pop af                                        ; $51b5: $f1
    ldh [rSVBK], a                                ; $51b6: $e0 $70
    pop de                                        ; $51b8: $d1
    ld a, d                                       ; $51b9: $7a
    ldh [$c1], a                                  ; $51ba: $e0 $c1
    ld a, $0e                                     ; $51bc: $3e $0e
    ldh [$bd], a                                  ; $51be: $e0 $bd
    ld a, $7c                                     ; $51c0: $3e $7c
    ldh [$be], a                                  ; $51c2: $e0 $be
    jp Jump_000_347b                              ; $51c4: $c3 $7b $34


    ld bc, $804d                                  ; $51c7: $01 $4d $80
    nop                                           ; $51ca: $00
    nop                                           ; $51cb: $00
    nop                                           ; $51cc: $00
    xor d                                         ; $51cd: $aa
    inc h                                         ; $51ce: $24
    nop                                           ; $51cf: $00
    ld [bc], a                                    ; $51d0: $02
    ld bc, $0301                                  ; $51d1: $01 $01 $03
    ld bc, $51da                                  ; $51d4: $01 $da $51
    ld d, b                                       ; $51d7: $50
    ld bc, $ea00                                  ; $51d8: $01 $00 $ea
    reti                                          ; $51db: $d9


    ld a, [bc]                                    ; $51dc: $0a
    jp c, Jump_006_51fc                           ; $51dd: $da $fc $51

    dec b                                         ; $51e0: $05
    ld d, d                                       ; $51e1: $52
    ld c, $52                                     ; $51e2: $0e $52
    rla                                           ; $51e4: $17
    ld d, d                                       ; $51e5: $52
    jr nz, jr_006_523a                            ; $51e6: $20 $52

    add hl, hl                                    ; $51e8: $29
    ld d, d                                       ; $51e9: $52
    ld [hl-], a                                   ; $51ea: $32
    ld d, d                                       ; $51eb: $52
    dec l                                         ; $51ec: $2d
    ld l, $0b                                     ; $51ed: $2e $0b
    inc l                                         ; $51ef: $2c
    add hl, sp                                    ; $51f0: $39
    scf                                           ; $51f1: $37
    jr c, jr_006_51f5                             ; $51f2: $38 $01

    nop                                           ; $51f4: $00

jr_006_51f5:
    nop                                           ; $51f5: $00
    nop                                           ; $51f6: $00
    ld e, $14                                     ; $51f7: $1e $14
    ld [bc], a                                    ; $51f9: $02
    nop                                           ; $51fa: $00
    rrca                                          ; $51fb: $0f

Jump_006_51fc:
    ld bc, $0000                                  ; $51fc: $01 $00 $00
    nop                                           ; $51ff: $00
    ld [de], a                                    ; $5200: $12
    inc b                                         ; $5201: $04
    ld b, $01                                     ; $5202: $06 $01
    ld bc, $0001                                  ; $5204: $01 $01 $00
    nop                                           ; $5207: $00
    inc b                                         ; $5208: $04
    ld [de], a                                    ; $5209: $12
    inc b                                         ; $520a: $04
    ld b, $06                                     ; $520b: $06 $06
    ld bc, $0001                                  ; $520d: $01 $01 $00
    nop                                           ; $5210: $00
    ld [$0412], sp                                ; $5211: $08 $12 $04
    ld b, $0b                                     ; $5214: $06 $0b
    ld bc, $0001                                  ; $5216: $01 $01 $00
    nop                                           ; $5219: $00
    inc c                                         ; $521a: $0c
    ld [de], a                                    ; $521b: $12
    inc b                                         ; $521c: $04
    ld b, $10                                     ; $521d: $06 $10
    ld bc, $0001                                  ; $521f: $01 $01 $00
    nop                                           ; $5222: $00
    nop                                           ; $5223: $00
    jr @+$06                                      ; $5224: $18 $04

    ld b, $03                                     ; $5226: $06 $03
    ld [$0001], sp                                ; $5228: $08 $01 $00
    nop                                           ; $522b: $00
    inc b                                         ; $522c: $04
    jr @+$06                                      ; $522d: $18 $04

    ld b, $08                                     ; $522f: $06 $08
    ld [$0001], sp                                ; $5231: $08 $01 $00
    nop                                           ; $5234: $00
    ld [$0418], sp                                ; $5235: $08 $18 $04
    ld b, $0d                                     ; $5238: $06 $0d

jr_006_523a:
    ld [$c721], sp                                ; $523a: $08 $21 $c7
    ld d, c                                       ; $523d: $51
    jp Jump_000_2837                              ; $523e: $c3 $37 $28


    ld a, $04                                     ; $5241: $3e $04
    ldh [$90], a                                  ; $5243: $e0 $90
    xor a                                         ; $5245: $af
    ldh [$d1], a                                  ; $5246: $e0 $d1
    call Call_006_5318                            ; $5248: $cd $18 $53
    ld hl, $493b                                  ; $524b: $21 $3b $49
    call Call_006_4f61                            ; $524e: $cd $61 $4f
    ld a, $04                                     ; $5251: $3e $04
    ldh [$c1], a                                  ; $5253: $e0 $c1
    ld a, $0f                                     ; $5255: $3e $0f
    ldh [$bd], a                                  ; $5257: $e0 $bd
    ld a, $25                                     ; $5259: $3e $25
    ldh [$be], a                                  ; $525b: $e0 $be
    call Call_000_3487                            ; $525d: $cd $87 $34
    ld hl, $ffb8                                  ; $5260: $21 $b8 $ff
    ld [hl], $00                                  ; $5263: $36 $00
    inc hl                                        ; $5265: $23
    ld [hl], $00                                  ; $5266: $36 $00
    ld a, $ae                                     ; $5268: $3e $ae
    ldh [$c1], a                                  ; $526a: $e0 $c1
    ld a, $d6                                     ; $526c: $3e $d6
    ldh [$bd], a                                  ; $526e: $e0 $bd
    ld a, $11                                     ; $5270: $3e $11
    ldh [$be], a                                  ; $5272: $e0 $be
    call Call_000_3487                            ; $5274: $cd $87 $34
    ld a, $ae                                     ; $5277: $3e $ae
    call Call_000_03a0                            ; $5279: $cd $a0 $03
    ld hl, $795f                                  ; $527c: $21 $5f $79
    ldh [$c1], a                                  ; $527f: $e0 $c1
    ld a, $6d                                     ; $5281: $3e $6d
    ldh [$bd], a                                  ; $5283: $e0 $bd
    ld a, $7c                                     ; $5285: $3e $7c
    ldh [$be], a                                  ; $5287: $e0 $be
    call Call_000_346d                            ; $5289: $cd $6d $34
    ld a, $1f                                     ; $528c: $3e $1f
    call Call_000_395e                            ; $528e: $cd $5e $39
    call Call_006_5354                            ; $5291: $cd $54 $53
    ret                                           ; $5294: $c9


    ldh a, [$a5]                                  ; $5295: $f0 $a5
    bit 0, a                                      ; $5297: $cb $47
    jr nz, jr_006_52b1                            ; $5299: $20 $16

    bit 1, a                                      ; $529b: $cb $4f
    jr nz, jr_006_52cf                            ; $529d: $20 $30

    call Call_006_4f86                            ; $529f: $cd $86 $4f
    ld hl, $ffd1                                  ; $52a2: $21 $d1 $ff
    cp [hl]                                       ; $52a5: $be
    ret z                                         ; $52a6: $c8

    ld [hl], a                                    ; $52a7: $77
    call Call_006_5318                            ; $52a8: $cd $18 $53
    ld a, $19                                     ; $52ab: $3e $19
    call Call_000_393e                            ; $52ad: $cd $3e $39
    ret                                           ; $52b0: $c9


jr_006_52b1:
    ldh a, [$d1]                                  ; $52b1: $f0 $d1
    ld hl, $cddf                                  ; $52b3: $21 $df $cd
    call Call_000_3256                            ; $52b6: $cd $56 $32
    ret z                                         ; $52b9: $c8

    ld a, $17                                     ; $52ba: $3e $17
    call Call_000_393e                            ; $52bc: $cd $3e $39
    ld de, $0100                                  ; $52bf: $11 $00 $01
    ldh a, [$d1]                                  ; $52c2: $f0 $d1
    ld hl, $51ec                                  ; $52c4: $21 $ec $51
    rst $08                                       ; $52c7: $cf
    cp $0b                                        ; $52c8: $fe $0b
    jr z, jr_006_52d9                             ; $52ca: $28 $0d

    jp Jump_000_244b                              ; $52cc: $c3 $4b $24


jr_006_52cf:
    ld a, $18                                     ; $52cf: $3e $18
    call Call_000_393e                            ; $52d1: $cd $3e $39
    ld a, $03                                     ; $52d4: $3e $03
    jp Jump_000_2448                              ; $52d6: $c3 $48 $24


jr_006_52d9:
    call Call_000_244b                            ; $52d9: $cd $4b $24
    ldh a, [rSVBK]                                ; $52dc: $f0 $70
    push af                                       ; $52de: $f5
    ld a, $06                                     ; $52df: $3e $06
    ldh [rSVBK], a                                ; $52e1: $e0 $70
    ld a, $60                                     ; $52e3: $3e $60
    ldh [$da], a                                  ; $52e5: $e0 $da
    ld [$d6d2], a                                 ; $52e7: $ea $d2 $d6
    ld a, $1f                                     ; $52ea: $3e $1f
    ldh [$d8], a                                  ; $52ec: $e0 $d8
    ld [$d6d1], a                                 ; $52ee: $ea $d1 $d6
    ld a, $02                                     ; $52f1: $3e $02
    ldh [$d9], a                                  ; $52f3: $e0 $d9
    ld [$d6d4], a                                 ; $52f5: $ea $d4 $d6
    xor a                                         ; $52f8: $af
    ld [$c0bb], a                                 ; $52f9: $ea $bb $c0
    ld a, $01                                     ; $52fc: $3e $01
    ld [$c0c1], a                                 ; $52fe: $ea $c1 $c0
    pop af                                        ; $5301: $f1
    ldh [rSVBK], a                                ; $5302: $e0 $70
    ret                                           ; $5304: $c9


Call_006_5305:
    ld hl, $cddf                                  ; $5305: $21 $df $cd
    call Call_000_3245                            ; $5308: $cd $45 $32
    ldh [$c1], a                                  ; $530b: $e0 $c1
    ld a, $f5                                     ; $530d: $3e $f5
    ldh [$bd], a                                  ; $530f: $e0 $bd
    ld a, $55                                     ; $5311: $3e $55
    ldh [$be], a                                  ; $5313: $e0 $be
    jp Jump_000_3474                              ; $5315: $c3 $74 $34


Call_006_5318:
    rst $18                                       ; $5318: $df
    ld de, $51f3                                  ; $5319: $11 $f3 $51
    call Call_000_134e                            ; $531c: $cd $4e $13
    rst $20                                       ; $531f: $e7
    call Call_000_3308                            ; $5320: $cd $08 $33
    rst $18                                       ; $5323: $df
    ld hl, $51d3                                  ; $5324: $21 $d3 $51
    call Call_000_301f                            ; $5327: $cd $1f $30
    ld a, $94                                     ; $532a: $3e $94
    ld [$c1eb], a                                 ; $532c: $ea $eb $c1
    ld a, $02                                     ; $532f: $3e $02
    ld [$c234], a                                 ; $5331: $ea $34 $c2
    ldh a, [$d1]                                  ; $5334: $f0 $d1
    ld hl, $cddf                                  ; $5336: $21 $df $cd
    call Call_000_3256                            ; $5339: $cd $56 $32
    jr nz, jr_006_5340                            ; $533c: $20 $02

    ld a, $ff                                     ; $533e: $3e $ff

jr_006_5340:
    inc a                                         ; $5340: $3c
    ld hl, $1bcd                                  ; $5341: $21 $cd $1b
    ldh [$c1], a                                  ; $5344: $e0 $c1
    ld a, $67                                     ; $5346: $3e $67
    ldh [$bd], a                                  ; $5348: $e0 $bd
    ld a, $6e                                     ; $534a: $3e $6e
    ldh [$be], a                                  ; $534c: $e0 $be
    call Call_000_345f                            ; $534e: $cd $5f $34
    jp RST_20                                     ; $5351: $c3 $20 $00


Call_006_5354:
    xor a                                         ; $5354: $af
    ld b, a                                       ; $5355: $47

jr_006_5356:
    ld hl, $cddf                                  ; $5356: $21 $df $cd
    call Call_000_3256                            ; $5359: $cd $56 $32
    jr z, jr_006_5367                             ; $535c: $28 $09

    ld hl, $51de                                  ; $535e: $21 $de $51
    call Call_000_3194                            ; $5361: $cd $94 $31
    call Call_000_134e                            ; $5364: $cd $4e $13

jr_006_5367:
    inc b                                         ; $5367: $04
    ld a, b                                       ; $5368: $78
    cp $07                                        ; $5369: $fe $07
    jr nz, jr_006_5356                            ; $536b: $20 $e9

    ret                                           ; $536d: $c9


    ld a, h                                       ; $536e: $7c
    ld d, e                                       ; $536f: $53
    add [hl]                                      ; $5370: $86
    ld d, e                                       ; $5371: $53
    sub b                                         ; $5372: $90
    ld d, e                                       ; $5373: $53
    sbc d                                         ; $5374: $9a
    ld d, e                                       ; $5375: $53
    and h                                         ; $5376: $a4
    ld d, e                                       ; $5377: $53
    xor [hl]                                      ; $5378: $ae
    ld d, e                                       ; $5379: $53
    cp b                                          ; $537a: $b8
    ld d, e                                       ; $537b: $53
    ld a, a                                       ; $537c: $7f
    dec de                                        ; $537d: $1b
    adc b                                         ; $537e: $88
    dec de                                        ; $537f: $1b
    ld l, l                                       ; $5380: $6d
    dec de                                        ; $5381: $1b
    ld c, h                                       ; $5382: $4c
    dec de                                        ; $5383: $1b
    adc e                                         ; $5384: $8b
    dec de                                        ; $5385: $1b
    add d                                         ; $5386: $82
    dec de                                        ; $5387: $1b
    add l                                         ; $5388: $85
    dec de                                        ; $5389: $1b
    nop                                           ; $538a: $00
    nop                                           ; $538b: $00
    ld c, h                                       ; $538c: $4c
    dec de                                        ; $538d: $1b
    adc [hl]                                      ; $538e: $8e
    dec de                                        ; $538f: $1b
    ld [hl], e                                    ; $5390: $73
    dec de                                        ; $5391: $1b
    add d                                         ; $5392: $82
    dec de                                        ; $5393: $1b
    add l                                         ; $5394: $85
    dec de                                        ; $5395: $1b
    ld d, l                                       ; $5396: $55
    dec de                                        ; $5397: $1b
    sub c                                         ; $5398: $91
    dec de                                        ; $5399: $1b
    ld h, c                                       ; $539a: $61
    dec de                                        ; $539b: $1b
    ld [hl], b                                    ; $539c: $70
    dec de                                        ; $539d: $1b
    ld a, h                                       ; $539e: $7c
    dec de                                        ; $539f: $1b
    ld c, a                                       ; $53a0: $4f
    dec de                                        ; $53a1: $1b
    sub a                                         ; $53a2: $97
    dec de                                        ; $53a3: $1b
    ld a, c                                       ; $53a4: $79
    dec de                                        ; $53a5: $1b
    ld l, d                                       ; $53a6: $6a
    dec de                                        ; $53a7: $1b
    nop                                           ; $53a8: $00
    nop                                           ; $53a9: $00
    ld c, a                                       ; $53aa: $4f
    dec de                                        ; $53ab: $1b
    sbc d                                         ; $53ac: $9a
    dec de                                        ; $53ad: $1b
    ld [hl], e                                    ; $53ae: $73

jr_006_53af:
    dec de                                        ; $53af: $1b
    ld a, c                                       ; $53b0: $79
    dec de                                        ; $53b1: $1b
    ld l, d                                       ; $53b2: $6a
    dec de                                        ; $53b3: $1b
    ld d, d                                       ; $53b4: $52
    dec de                                        ; $53b5: $1b
    sbc l                                         ; $53b6: $9d
    dec de                                        ; $53b7: $1b
    ld h, a                                       ; $53b8: $67
    dec de                                        ; $53b9: $1b
    ld e, e                                       ; $53ba: $5b
    dec de                                        ; $53bb: $1b
    ld e, [hl]                                    ; $53bc: $5e
    dec de                                        ; $53bd: $1b
    ld c, a                                       ; $53be: $4f
    dec de                                        ; $53bf: $1b
    sub h                                         ; $53c0: $94
    dec de                                        ; $53c1: $1b
    ld bc, $dc39                                  ; $53c2: $01 $39 $dc
    nop                                           ; $53c5: $00
    nop                                           ; $53c6: $00
    nop                                           ; $53c7: $00
    xor d                                         ; $53c8: $aa
    inc h                                         ; $53c9: $24
    ld bc, $0102                                  ; $53ca: $01 $02 $01
    ld [bc], a                                    ; $53cd: $02
    inc bc                                        ; $53ce: $03
    ld bc, $53d5                                  ; $53cf: $01 $d5 $53
    add b                                         ; $53d2: $80
    nop                                           ; $53d3: $00
    ld b, b                                       ; $53d4: $40
    jr nc, jr_006_53af                            ; $53d5: $30 $d8

    inc bc                                        ; $53d7: $03
    ld bc, $53de                                  ; $53d8: $01 $de $53
    add e                                         ; $53db: $83
    nop                                           ; $53dc: $00
    ld b, b                                       ; $53dd: $40
    jp z, $ead8                                   ; $53de: $ca $d8 $ea

    ret c                                         ; $53e1: $d8

    ld a, [bc]                                    ; $53e2: $0a
    reti                                          ; $53e3: $d9


    ld a, [hl+]                                   ; $53e4: $2a
    reti                                          ; $53e5: $d9


    inc bc                                        ; $53e6: $03
    ld bc, $53ed                                  ; $53e7: $01 $ed $53
    add e                                         ; $53ea: $83
    nop                                           ; $53eb: $00
    ld b, c                                       ; $53ec: $41
    ld [bc], a                                    ; $53ed: $02
    reti                                          ; $53ee: $d9


    ld [hl+], a                                   ; $53ef: $22
    reti                                          ; $53f0: $d9


    ld b, d                                       ; $53f1: $42
    reti                                          ; $53f2: $d9


    ld h, d                                       ; $53f3: $62
    reti                                          ; $53f4: $d9


    add d                                         ; $53f5: $82
    reti                                          ; $53f6: $d9


    and d                                         ; $53f7: $a2
    reti                                          ; $53f8: $d9


    jp nz, $e2d9                                  ; $53f9: $c2 $d9 $e2

    reti                                          ; $53fc: $d9


    ld hl, $53c2                                  ; $53fd: $21 $c2 $53
    jp Jump_000_2837                              ; $5400: $c3 $37 $28


    ld hl, $795f                                  ; $5403: $21 $5f $79
    ldh [$c1], a                                  ; $5406: $e0 $c1
    ld a, $6d                                     ; $5408: $3e $6d
    ldh [$bd], a                                  ; $540a: $e0 $bd
    ld a, $7c                                     ; $540c: $3e $7c
    ldh [$be], a                                  ; $540e: $e0 $be
    call Call_000_346d                            ; $5410: $cd $6d $34
    xor a                                         ; $5413: $af
    ldh [$d1], a                                  ; $5414: $e0 $d1
    call Call_006_541a                            ; $5416: $cd $1a $54
    ret                                           ; $5419: $c9


Call_006_541a:
Jump_006_541a:
    call Call_000_3674                            ; $541a: $cd $74 $36
    nop                                           ; $541d: $00
    nop                                           ; $541e: $00
    inc d                                         ; $541f: $14
    ld [de], a                                    ; $5420: $12
    ldh a, [$d1]                                  ; $5421: $f0 $d1
    call Call_006_553d                            ; $5423: $cd $3d $55
    ld bc, $0000                                  ; $5426: $01 $00 $00
    ld de, $d800                                  ; $5429: $11 $00 $d8
    ld hl, $537b                                  ; $542c: $21 $7b $53
    ldh [$c1], a                                  ; $542f: $e0 $c1
    ld a, $32                                     ; $5431: $3e $32
    ldh [$bd], a                                  ; $5433: $e0 $bd
    ld a, $33                                     ; $5435: $3e $33
    ldh [$be], a                                  ; $5437: $e0 $be
    call Call_000_3487                            ; $5439: $cd $87 $34
    ldh a, [$d1]                                  ; $543c: $f0 $d1
    add $31                                       ; $543e: $c6 $31
    ld d, $00                                     ; $5440: $16 $00
    ld e, $08                                     ; $5442: $1e $08
    ld hl, $5489                                  ; $5444: $21 $89 $54
    ldh [$c1], a                                  ; $5447: $e0 $c1
    ld a, $50                                     ; $5449: $3e $50
    ldh [$bd], a                                  ; $544b: $e0 $bd
    ld a, $25                                     ; $544d: $3e $25
    ldh [$be], a                                  ; $544f: $e0 $be
    call Call_000_3487                            ; $5451: $cd $87 $34
    ld hl, $53ce                                  ; $5454: $21 $ce $53
    call Call_000_301f                            ; $5457: $cd $1f $30
    ld a, $54                                     ; $545a: $3e $54
    ld [$c1eb], a                                 ; $545c: $ea $eb $c1
    ld a, $01                                     ; $545f: $3e $01
    ld [$c234], a                                 ; $5461: $ea $34 $c2
    ldh a, [$d1]                                  ; $5464: $f0 $d1
    inc a                                         ; $5466: $3c
    ldh [$c1], a                                  ; $5467: $e0 $c1
    ld a, $be                                     ; $5469: $3e $be
    ldh [$bd], a                                  ; $546b: $e0 $bd
    ld a, $6e                                     ; $546d: $3e $6e
    ldh [$be], a                                  ; $546f: $e0 $be
    call Call_000_345f                            ; $5471: $cd $5f $34
    ldh a, [$d1]                                  ; $5474: $f0 $d1
    call Call_006_552c                            ; $5476: $cd $2c $55
    jr nz, jr_006_549b                            ; $5479: $20 $20

    ld hl, $53d7                                  ; $547b: $21 $d7 $53
    call Call_000_301f                            ; $547e: $cd $1f $30
    ld a, $7c                                     ; $5481: $3e $7c
    ld [$c1eb], a                                 ; $5483: $ea $eb $c1
    ld a, $03                                     ; $5486: $3e $03
    ld [$c234], a                                 ; $5488: $ea $34 $c2
    ld hl, $1b49                                  ; $548b: $21 $49 $1b
    ldh [$c1], a                                  ; $548e: $e0 $c1
    ld a, $1a                                     ; $5490: $3e $1a
    ldh [$bd], a                                  ; $5492: $e0 $bd
    ld a, $6e                                     ; $5494: $3e $6e
    ldh [$be], a                                  ; $5496: $e0 $be
    jp Jump_000_345f                              ; $5498: $c3 $5f $34


jr_006_549b:
    ld hl, $53e6                                  ; $549b: $21 $e6 $53
    call Call_000_301f                            ; $549e: $cd $1f $30
    ld a, $90                                     ; $54a1: $3e $90
    ld [$c1eb], a                                 ; $54a3: $ea $eb $c1
    ld a, $02                                     ; $54a6: $3e $02
    ld [$c234], a                                 ; $54a8: $ea $34 $c2
    ld hl, $1b37                                  ; $54ab: $21 $37 $1b
    ldh [$c1], a                                  ; $54ae: $e0 $c1
    ld a, $1a                                     ; $54b0: $3e $1a
    ldh [$bd], a                                  ; $54b2: $e0 $bd
    ld a, $6e                                     ; $54b4: $3e $6e
    ldh [$be], a                                  ; $54b6: $e0 $be
    call Call_000_345f                            ; $54b8: $cd $5f $34
    ldh a, [$d1]                                  ; $54bb: $f0 $d1
    ld hl, $536e                                  ; $54bd: $21 $6e $53
    call Call_000_3194                            ; $54c0: $cd $94 $31
    ld bc, $0000                                  ; $54c3: $01 $00 $00

jr_006_54c6:
    ld a, [de]                                    ; $54c6: $1a
    ld l, a                                       ; $54c7: $6f
    inc de                                        ; $54c8: $13
    ld a, [de]                                    ; $54c9: $1a
    ld h, a                                       ; $54ca: $67
    inc de                                        ; $54cb: $13
    or l                                          ; $54cc: $b5
    jr z, jr_006_54ee                             ; $54cd: $28 $1f

    ldh [$c1], a                                  ; $54cf: $e0 $c1
    ld a, $3d                                     ; $54d1: $3e $3d
    ldh [$bd], a                                  ; $54d3: $e0 $bd
    ld a, $6f                                     ; $54d5: $3e $6f
    ldh [$be], a                                  ; $54d7: $e0 $be
    call Call_000_345f                            ; $54d9: $cd $5f $34
    ld a, c                                       ; $54dc: $79
    ld hl, $1b3a                                  ; $54dd: $21 $3a $1b
    ldh [$c1], a                                  ; $54e0: $e0 $c1
    ld a, $d0                                     ; $54e2: $3e $d0
    ldh [$bd], a                                  ; $54e4: $e0 $bd
    ld a, $6d                                     ; $54e6: $3e $6d
    ldh [$be], a                                  ; $54e8: $e0 $be
    call Call_000_345f                            ; $54ea: $cd $5f $34
    inc c                                         ; $54ed: $0c

jr_006_54ee:
    inc b                                         ; $54ee: $04
    ld a, b                                       ; $54ef: $78
    cp $04                                        ; $54f0: $fe $04
    jr nz, jr_006_54c6                            ; $54f2: $20 $d2

    cp c                                          ; $54f4: $b9
    jr z, jr_006_5504                             ; $54f5: $28 $0d

    ldh [$c1], a                                  ; $54f7: $e0 $c1
    ld a, $b3                                     ; $54f9: $3e $b3
    ldh [$bd], a                                  ; $54fb: $e0 $bd
    ld a, $6c                                     ; $54fd: $3e $6c
    ldh [$be], a                                  ; $54ff: $e0 $be
    call Call_000_345f                            ; $5501: $cd $5f $34

jr_006_5504:
    ld a, $5f                                     ; $5504: $3e $5f
    ld [$c1eb], a                                 ; $5506: $ea $eb $c1
    ld hl, $1b46                                  ; $5509: $21 $46 $1b
    ldh [$c1], a                                  ; $550c: $e0 $c1
    ld a, $1a                                     ; $550e: $3e $1a
    ldh [$bd], a                                  ; $5510: $e0 $bd
    ld a, $6e                                     ; $5512: $3e $6e
    ldh [$be], a                                  ; $5514: $e0 $be
    call Call_000_345f                            ; $5516: $cd $5f $34
    ld a, [de]                                    ; $5519: $1a
    ld l, a                                       ; $551a: $6f
    inc de                                        ; $551b: $13
    ld a, [de]                                    ; $551c: $1a
    ld h, a                                       ; $551d: $67
    ldh [$c1], a                                  ; $551e: $e0 $c1
    ld a, $1a                                     ; $5520: $3e $1a
    ldh [$bd], a                                  ; $5522: $e0 $bd
    ld a, $6e                                     ; $5524: $3e $6e
    ldh [$be], a                                  ; $5526: $e0 $be
    call Call_000_345f                            ; $5528: $cd $5f $34
    ret                                           ; $552b: $c9


Call_006_552c:
    call Call_000_3273                            ; $552c: $cd $73 $32
    ld hl, $ce01                                  ; $552f: $21 $01 $ce
    and [hl]                                      ; $5532: $a6
    ret                                           ; $5533: $c9


    call Call_000_3273                            ; $5534: $cd $73 $32
    ld hl, $ce01                                  ; $5537: $21 $01 $ce
    or [hl]                                       ; $553a: $b6
    ld [hl], a                                    ; $553b: $77
    ret                                           ; $553c: $c9


Call_006_553d:
    ldh a, [$d1]                                  ; $553d: $f0 $d1
    call Call_006_552c                            ; $553f: $cd $2c $55
    jr z, jr_006_554b                             ; $5542: $28 $07

    ld a, $31                                     ; $5544: $3e $31
    ld l, a                                       ; $5546: $6f
    ldh a, [$d1]                                  ; $5547: $f0 $d1
    add l                                         ; $5549: $85
    ret                                           ; $554a: $c9


jr_006_554b:
    ld a, $39                                     ; $554b: $3e $39
    ret                                           ; $554d: $c9


    ldh a, [$a5]                                  ; $554e: $f0 $a5
    or a                                          ; $5550: $b7
    ret z                                         ; $5551: $c8

    bit 0, a                                      ; $5552: $cb $47
    jr nz, jr_006_5583                            ; $5554: $20 $2d

    bit 1, a                                      ; $5556: $cb $4f
    jr nz, jr_006_5583                            ; $5558: $20 $29

    ld hl, $ffd1                                  ; $555a: $21 $d1 $ff
    bit 5, a                                      ; $555d: $cb $6f
    jr nz, jr_006_5572                            ; $555f: $20 $11

    bit 4, a                                      ; $5561: $cb $67
    ret z                                         ; $5563: $c8

    ld a, $19                                     ; $5564: $3e $19
    call Call_000_393e                            ; $5566: $cd $3e $39
    ld a, [hl]                                    ; $5569: $7e
    inc a                                         ; $556a: $3c
    cp $07                                        ; $556b: $fe $07
    jr nz, jr_006_557f                            ; $556d: $20 $10

    xor a                                         ; $556f: $af
    jr jr_006_557f                                ; $5570: $18 $0d

jr_006_5572:
    ld a, $19                                     ; $5572: $3e $19
    call Call_000_393e                            ; $5574: $cd $3e $39
    ld a, [hl]                                    ; $5577: $7e
    dec a                                         ; $5578: $3d
    cp $ff                                        ; $5579: $fe $ff
    jr nz, jr_006_557f                            ; $557b: $20 $02

    ld a, $06                                     ; $557d: $3e $06

jr_006_557f:
    ld [hl], a                                    ; $557f: $77
    jp Jump_006_541a                              ; $5580: $c3 $1a $54


jr_006_5583:
    ld a, $17                                     ; $5583: $3e $17
    call Call_000_393e                            ; $5585: $cd $3e $39
    ld a, $17                                     ; $5588: $3e $17
    jp Jump_000_2448                              ; $558a: $c3 $48 $24


    ld bc, $802f                                  ; $558d: $01 $2f $80
    nop                                           ; $5590: $00
    nop                                           ; $5591: $00
    nop                                           ; $5592: $00
    xor d                                         ; $5593: $aa
    inc h                                         ; $5594: $24
    ld bc, $0002                                  ; $5595: $01 $02 $00
    ld bc, $3001                                  ; $5598: $01 $01 $30
    add b                                         ; $559b: $80
    nop                                           ; $559c: $00
    nop                                           ; $559d: $00
    nop                                           ; $559e: $00
    xor d                                         ; $559f: $aa
    inc h                                         ; $55a0: $24
    ld bc, $0002                                  ; $55a1: $01 $02 $00
    ld bc, $8d21                                  ; $55a4: $01 $21 $8d
    ld d, l                                       ; $55a7: $55
    jp Jump_000_2837                              ; $55a8: $c3 $37 $28


    ld hl, $5599                                  ; $55ab: $21 $99 $55
    jp Jump_000_2837                              ; $55ae: $c3 $37 $28


    ld a, $0c                                     ; $55b1: $3e $0c
    ldh [$c1], a                                  ; $55b3: $e0 $c1
    ld a, $0f                                     ; $55b5: $3e $0f
    ldh [$bd], a                                  ; $55b7: $e0 $bd
    ld a, $25                                     ; $55b9: $3e $25
    ldh [$be], a                                  ; $55bb: $e0 $be
    call Call_000_3487                            ; $55bd: $cd $87 $34
    ld a, $a0                                     ; $55c0: $3e $a0
    call Call_000_03a0                            ; $55c2: $cd $a0 $03
    ld hl, $55e6                                  ; $55c5: $21 $e6 $55
    call Call_006_563b                            ; $55c8: $cd $3b $56
    ld hl, $795f                                  ; $55cb: $21 $5f $79
    ldh [$c1], a                                  ; $55ce: $e0 $c1
    ld a, $6d                                     ; $55d0: $3e $6d
    ldh [$bd], a                                  ; $55d2: $e0 $bd
    ld a, $7c                                     ; $55d4: $3e $7c
    ldh [$be], a                                  ; $55d6: $e0 $be
    call Call_000_346d                            ; $55d8: $cd $6d $34
    ld a, $19                                     ; $55db: $3e $19
    call Call_000_395e                            ; $55dd: $cd $5e $39
    ld de, $0078                                  ; $55e0: $11 $78 $00
    jp Jump_000_30ea                              ; $55e3: $c3 $ea $30


    inc sp                                        ; $55e6: $33
    nop                                           ; $55e7: $00
    ld b, d                                       ; $55e8: $42
    nop                                           ; $55e9: $00
    ld h, e                                       ; $55ea: $63
    nop                                           ; $55eb: $00
    ld a, [hl+]                                   ; $55ec: $2a
    nop                                           ; $55ed: $00
    ld hl, $5b17                                  ; $55ee: $21 $17 $5b
    ldh [$c1], a                                  ; $55f1: $e0 $c1
    ld a, $8f                                     ; $55f3: $3e $8f
    ldh [$bd], a                                  ; $55f5: $e0 $bd
    ld a, $5b                                     ; $55f7: $3e $5b
    ldh [$be], a                                  ; $55f9: $e0 $be
    call Call_000_345f                            ; $55fb: $cd $5f $34
    ld a, $0c                                     ; $55fe: $3e $0c
    ldh [$c1], a                                  ; $5600: $e0 $c1
    ld a, $0f                                     ; $5602: $3e $0f
    ldh [$bd], a                                  ; $5604: $e0 $bd
    ld a, $25                                     ; $5606: $3e $25
    ldh [$be], a                                  ; $5608: $e0 $be
    call Call_000_3487                            ; $560a: $cd $87 $34
    ld a, $9f                                     ; $560d: $3e $9f
    call Call_000_03a0                            ; $560f: $cd $a0 $03
    ld hl, $5633                                  ; $5612: $21 $33 $56
    call Call_006_563b                            ; $5615: $cd $3b $56
    ld hl, $795f                                  ; $5618: $21 $5f $79
    ldh [$c1], a                                  ; $561b: $e0 $c1
    ld a, $6d                                     ; $561d: $3e $6d
    ldh [$bd], a                                  ; $561f: $e0 $bd
    ld a, $7c                                     ; $5621: $3e $7c
    ldh [$be], a                                  ; $5623: $e0 $be
    call Call_000_346d                            ; $5625: $cd $6d $34
    ld a, $14                                     ; $5628: $3e $14
    call Call_000_395e                            ; $562a: $cd $5e $39
    ld de, $0046                                  ; $562d: $11 $46 $00
    jp Jump_000_30ea                              ; $5630: $c3 $ea $30


    inc [hl]                                      ; $5633: $34
    nop                                           ; $5634: $00
    inc [hl]                                      ; $5635: $34
    nop                                           ; $5636: $00
    ld h, h                                       ; $5637: $64
    nop                                           ; $5638: $00
    ld c, h                                       ; $5639: $4c
    nop                                           ; $563a: $00

Call_006_563b:
    ld de, $ff9c                                  ; $563b: $11 $9c $ff
    call Call_000_124b                            ; $563e: $cd $4b $12
    push hl                                       ; $5641: $e5
    ld a, $04                                     ; $5642: $3e $04
    call Call_000_03a0                            ; $5644: $cd $a0 $03
    pop hl                                        ; $5647: $e1
    ld de, $ff9c                                  ; $5648: $11 $9c $ff
    call Call_000_124b                            ; $564b: $cd $4b $12
    ld a, $04                                     ; $564e: $3e $04
    jp Jump_000_03a0                              ; $5650: $c3 $a0 $03


    ldh a, [$a5]                                  ; $5653: $f0 $a5
    and $03                                       ; $5655: $e6 $03
    jr nz, jr_006_565d                            ; $5657: $20 $04

    call Call_000_30fc                            ; $5659: $cd $fc $30
    ret nz                                        ; $565c: $c0

jr_006_565d:
    ld a, $01                                     ; $565d: $3e $01
    ld [$c0c1], a                                 ; $565f: $ea $c1 $c0
    ld hl, $79d7                                  ; $5662: $21 $d7 $79
    ldh [$c1], a                                  ; $5665: $e0 $c1
    ld a, $6d                                     ; $5667: $3e $6d
    ldh [$bd], a                                  ; $5669: $e0 $bd
    ld a, $7c                                     ; $566b: $3e $7c
    ldh [$be], a                                  ; $566d: $e0 $be
    call Call_000_346d                            ; $566f: $cd $6d $34
    xor a                                         ; $5672: $af
    ld [$c0bb], a                                 ; $5673: $ea $bb $c0
    ld a, $0b                                     ; $5676: $3e $0b
    jp Jump_000_2448                              ; $5678: $c3 $48 $24


    ld d, c                                       ; $567b: $51
    ld d, a                                       ; $567c: $57
    or l                                          ; $567d: $b5
    ld d, a                                       ; $567e: $57
    add hl, de                                    ; $567f: $19
    ld e, b                                       ; $5680: $58
    ld a, l                                       ; $5681: $7d
    ld e, b                                       ; $5682: $58
    ld [hl], c                                    ; $5683: $71
    ld e, d                                       ; $5684: $5a
    pop hl                                        ; $5685: $e1
    ld e, b                                       ; $5686: $58
    nop                                           ; $5687: $00
    nop                                           ; $5688: $00

    db $0d, $00

    daa                                           ; $568b: $27
    nop                                           ; $568c: $00
    ld c, [hl]                                    ; $568d: $4e
    nop                                           ; $568e: $00
    add d                                         ; $568f: $82
    nop                                           ; $5690: $00
    jp Jump_000_1100                              ; $5691: $c3 $00 $11


    ld bc, $016c                                  ; $5694: $01 $6c $01
    call nc, Call_006_4901                        ; $5697: $d4 $01 $49
    ld [bc], a                                    ; $569a: $02
    rlc d                                         ; $569b: $cb $02
    ld e, d                                       ; $569d: $5a
    inc bc                                        ; $569e: $03
    or $03                                        ; $569f: $f6 $03
    sbc a                                         ; $56a1: $9f
    inc b                                         ; $56a2: $04
    ld d, l                                       ; $56a3: $55
    dec b                                         ; $56a4: $05
    jr @+$08                                      ; $56a5: $18 $06

    add sp, $06                                   ; $56a7: $e8 $06
    push bc                                       ; $56a9: $c5
    rlca                                          ; $56aa: $07
    xor a                                         ; $56ab: $af
    ld [$09a6], sp                                ; $56ac: $08 $a6 $09
    xor d                                         ; $56af: $aa
    ld a, [bc]                                    ; $56b0: $0a
    cp e                                          ; $56b1: $bb
    dec bc                                        ; $56b2: $0b
    reti                                          ; $56b3: $d9


    inc c                                         ; $56b4: $0c
    inc b                                         ; $56b5: $04
    ld c, $3c                                     ; $56b6: $0e $3c
    rrca                                          ; $56b8: $0f
    add c                                         ; $56b9: $81
    db $10                                        ; $56ba: $10
    db $d3                                        ; $56bb: $d3
    ld de, $1332                                  ; $56bc: $11 $32 $13
    sbc [hl]                                      ; $56bf: $9e
    inc d                                         ; $56c0: $14
    rla                                           ; $56c1: $17
    ld d, $9d                                     ; $56c2: $16 $9d
    rla                                           ; $56c4: $17
    jr nc, jr_006_56e0                            ; $56c5: $30 $19

    ret nc                                        ; $56c7: $d0

    ld a, [de]                                    ; $56c8: $1a
    ld a, l                                       ; $56c9: $7d
    inc e                                         ; $56ca: $1c
    scf                                           ; $56cb: $37
    ld e, $fe                                     ; $56cc: $1e $fe
    rra                                           ; $56ce: $1f
    jp nc, $b321                                  ; $56cf: $d2 $21 $b3

    inc hl                                        ; $56d2: $23
    and c                                         ; $56d3: $a1
    dec h                                         ; $56d4: $25
    sbc h                                         ; $56d5: $9c
    daa                                           ; $56d6: $27
    and h                                         ; $56d7: $a4
    add hl, hl                                    ; $56d8: $29
    cp c                                          ; $56d9: $b9
    dec hl                                        ; $56da: $2b
    db $db                                        ; $56db: $db
    dec l                                         ; $56dc: $2d
    ld a, [bc]                                    ; $56dd: $0a
    jr nc, jr_006_5726                            ; $56de: $30 $46

jr_006_56e0:
    ld [hl-], a                                   ; $56e0: $32
    adc a                                         ; $56e1: $8f
    inc [hl]                                      ; $56e2: $34
    push hl                                       ; $56e3: $e5
    ld [hl], $48                                  ; $56e4: $36 $48
    add hl, sp                                    ; $56e6: $39
    cp b                                          ; $56e7: $b8
    dec sp                                        ; $56e8: $3b
    dec [hl]                                      ; $56e9: $35
    ld a, $bf                                     ; $56ea: $3e $bf
    ld b, b                                       ; $56ec: $40
    ld d, [hl]                                    ; $56ed: $56
    ld b, e                                       ; $56ee: $43
    ld a, [$ab45]                                 ; $56ef: $fa $45 $ab
    ld c, b                                       ; $56f2: $48
    ld l, c                                       ; $56f3: $69
    ld c, e                                       ; $56f4: $4b
    inc [hl]                                      ; $56f5: $34
    ld c, [hl]                                    ; $56f6: $4e
    inc c                                         ; $56f7: $0c
    ld d, c                                       ; $56f8: $51
    pop af                                        ; $56f9: $f1
    ld d, e                                       ; $56fa: $53
    db $e3                                        ; $56fb: $e3
    ld d, [hl]                                    ; $56fc: $56
    ld [c], a                                     ; $56fd: $e2
    ld e, c                                       ; $56fe: $59
    xor $5c                                       ; $56ff: $ee $5c
    rlca                                          ; $5701: $07
    ld h, b                                       ; $5702: $60
    dec l                                         ; $5703: $2d
    ld h, e                                       ; $5704: $63
    ld h, b                                       ; $5705: $60
    ld h, [hl]                                    ; $5706: $66
    and b                                         ; $5707: $a0
    ld l, c                                       ; $5708: $69
    db $ed                                        ; $5709: $ed
    ld l, h                                       ; $570a: $6c
    ld b, a                                       ; $570b: $47
    ld [hl], b                                    ; $570c: $70
    xor [hl]                                      ; $570d: $ae
    ld [hl], e                                    ; $570e: $73
    ld [hl+], a                                   ; $570f: $22
    ld [hl], a                                    ; $5710: $77
    and e                                         ; $5711: $a3
    ld a, d                                       ; $5712: $7a
    ld sp, $cc7e                                  ; $5713: $31 $7e $cc
    add c                                         ; $5716: $81
    ld [hl], h                                    ; $5717: $74
    add l                                         ; $5718: $85
    add hl, hl                                    ; $5719: $29
    adc c                                         ; $571a: $89
    db $eb                                        ; $571b: $eb
    adc h                                         ; $571c: $8c
    cp d                                          ; $571d: $ba
    sub b                                         ; $571e: $90
    sub [hl]                                      ; $571f: $96
    sub h                                         ; $5720: $94
    ld a, a                                       ; $5721: $7f
    sbc b                                         ; $5722: $98
    ld [hl], l                                    ; $5723: $75
    sbc h                                         ; $5724: $9c
    ld a, b                                       ; $5725: $78

jr_006_5726:
    and b                                         ; $5726: $a0
    adc b                                         ; $5727: $88
    and h                                         ; $5728: $a4
    and l                                         ; $5729: $a5
    xor b                                         ; $572a: $a8
    rst $08                                       ; $572b: $cf
    xor h                                         ; $572c: $ac
    ld b, $b1                                     ; $572d: $06 $b1
    ld c, d                                       ; $572f: $4a
    or l                                          ; $5730: $b5
    sbc e                                         ; $5731: $9b
    cp c                                          ; $5732: $b9
    ld sp, hl                                     ; $5733: $f9
    cp l                                          ; $5734: $bd
    ld h, h                                       ; $5735: $64
    jp nz, $c6dc                                  ; $5736: $c2 $dc $c6

    ld h, c                                       ; $5739: $61
    set 6, e                                      ; $573a: $cb $f3
    rst $08                                       ; $573c: $cf
    sub d                                         ; $573d: $92
    call nc, $d93e                                ; $573e: $d4 $3e $d9
    rst $30                                       ; $5741: $f7
    db $dd                                        ; $5742: $dd
    cp l                                          ; $5743: $bd
    ld [c], a                                     ; $5744: $e2
    sub b                                         ; $5745: $90
    rst $20                                       ; $5746: $e7
    ld [hl], b                                    ; $5747: $70
    db $ec                                        ; $5748: $ec
    ld e, l                                       ; $5749: $5d
    pop af                                        ; $574a: $f1
    ld d, a                                       ; $574b: $57
    or $5e                                        ; $574c: $f6 $5e
    ei                                            ; $574e: $fb
    rst $38                                       ; $574f: $ff
    rst $38                                       ; $5750: $ff

    db $06

    rlca                                          ; $5752: $07
    rlca                                          ; $5753: $07
    ld [$0908], sp                                ; $5754: $08 $08 $09
    add hl, bc                                    ; $5757: $09
    ld a, [bc]                                    ; $5758: $0a
    ld a, [bc]                                    ; $5759: $0a
    dec bc                                        ; $575a: $0b
    dec bc                                        ; $575b: $0b
    inc c                                         ; $575c: $0c
    inc c                                         ; $575d: $0c
    dec c                                         ; $575e: $0d
    ld c, $0f                                     ; $575f: $0e $0f
    db $10                                        ; $5761: $10
    ld de, $1312                                  ; $5762: $11 $12 $13
    inc d                                         ; $5765: $14
    dec d                                         ; $5766: $15
    ld d, $17                                     ; $5767: $16 $17
    jr jr_006_5784                                ; $5769: $18 $19

    ld a, [de]                                    ; $576b: $1a
    dec de                                        ; $576c: $1b
    inc e                                         ; $576d: $1c
    dec e                                         ; $576e: $1d
    ld e, $1f                                     ; $576f: $1e $1f
    jr nz, jr_006_5794                            ; $5771: $20 $21

    ld [hl+], a                                   ; $5773: $22
    inc hl                                        ; $5774: $23
    inc h                                         ; $5775: $24
    dec h                                         ; $5776: $25
    ld h, $27                                     ; $5777: $26 $27
    jr z, jr_006_57a3                             ; $5779: $28 $28

    add hl, hl                                    ; $577b: $29
    add hl, hl                                    ; $577c: $29
    ld a, [hl+]                                   ; $577d: $2a
    ld a, [hl+]                                   ; $577e: $2a
    ld a, [hl+]                                   ; $577f: $2a
    dec hl                                        ; $5780: $2b
    dec hl                                        ; $5781: $2b
    dec hl                                        ; $5782: $2b
    dec l                                         ; $5783: $2d

jr_006_5784:
    dec l                                         ; $5784: $2d
    dec l                                         ; $5785: $2d
    ld l, $2e                                     ; $5786: $2e $2e
    cpl                                           ; $5788: $2f
    cpl                                           ; $5789: $2f
    jr nc, jr_006_57bc                            ; $578a: $30 $30

    ld [hl-], a                                   ; $578c: $32
    inc sp                                        ; $578d: $33
    inc [hl]                                      ; $578e: $34
    dec [hl]                                      ; $578f: $35
    ld [hl], $37                                  ; $5790: $36 $37
    jr c, jr_006_57cd                             ; $5792: $38 $39

jr_006_5794:
    ld a, [hl-]                                   ; $5794: $3a
    dec sp                                        ; $5795: $3b
    inc a                                         ; $5796: $3c
    dec a                                         ; $5797: $3d
    ld a, $3f                                     ; $5798: $3e $3f
    ld b, b                                       ; $579a: $40
    ld b, b                                       ; $579b: $40
    ld b, b                                       ; $579c: $40
    ld b, b                                       ; $579d: $40
    ld b, b                                       ; $579e: $40
    ld b, b                                       ; $579f: $40
    ld b, b                                       ; $57a0: $40
    ld b, c                                       ; $57a1: $41
    ld b, c                                       ; $57a2: $41

jr_006_57a3:
    ld b, d                                       ; $57a3: $42
    ld b, d                                       ; $57a4: $42
    ld b, e                                       ; $57a5: $43
    ld b, h                                       ; $57a6: $44
    ld b, l                                       ; $57a7: $45
    ld b, [hl]                                    ; $57a8: $46
    ld c, b                                       ; $57a9: $48
    ld c, d                                       ; $57aa: $4a
    ld c, h                                       ; $57ab: $4c
    ld c, [hl]                                    ; $57ac: $4e
    ld d, b                                       ; $57ad: $50
    ld d, d                                       ; $57ae: $52
    ld d, h                                       ; $57af: $54
    ld d, [hl]                                    ; $57b0: $56
    ld e, b                                       ; $57b1: $58
    ld e, d                                       ; $57b2: $5a
    ld e, [hl]                                    ; $57b3: $5e
    ld h, d                                       ; $57b4: $62

    db $04

    ld b, $07                                     ; $57b6: $06 $07
    ld [$0b0a], sp                                ; $57b8: $08 $0a $0b
    inc c                                         ; $57bb: $0c

jr_006_57bc:
    dec c                                         ; $57bc: $0d
    ld c, $0f                                     ; $57bd: $0e $0f
    db $10                                        ; $57bf: $10
    ld de, $1312                                  ; $57c0: $11 $12 $13
    inc d                                         ; $57c3: $14
    dec d                                         ; $57c4: $15
    ld d, $17                                     ; $57c5: $16 $17
    jr jr_006_57e2                                ; $57c7: $18 $19

    ld a, [de]                                    ; $57c9: $1a
    dec de                                        ; $57ca: $1b
    inc e                                         ; $57cb: $1c
    dec e                                         ; $57cc: $1d

jr_006_57cd:
    ld e, $1f                                     ; $57cd: $1e $1f
    jr nz, @+$23                                  ; $57cf: $20 $21

    ld [hl+], a                                   ; $57d1: $22
    inc hl                                        ; $57d2: $23
    inc h                                         ; $57d3: $24
    inc h                                         ; $57d4: $24
    dec h                                         ; $57d5: $25
    dec h                                         ; $57d6: $25
    ld h, $26                                     ; $57d7: $26 $26
    daa                                           ; $57d9: $27
    daa                                           ; $57da: $27
    jr z, @+$2a                                   ; $57db: $28 $28

    add hl, hl                                    ; $57dd: $29
    add hl, hl                                    ; $57de: $29
    ld a, [hl+]                                   ; $57df: $2a
    ld a, [hl+]                                   ; $57e0: $2a
    dec hl                                        ; $57e1: $2b

jr_006_57e2:
    dec hl                                        ; $57e2: $2b
    inc l                                         ; $57e3: $2c
    inc l                                         ; $57e4: $2c
    dec l                                         ; $57e5: $2d
    dec l                                         ; $57e6: $2d
    ld l, $2e                                     ; $57e7: $2e $2e
    ld l, $2e                                     ; $57e9: $2e $2e
    ld l, $2f                                     ; $57eb: $2e $2f
    cpl                                           ; $57ed: $2f
    cpl                                           ; $57ee: $2f
    cpl                                           ; $57ef: $2f
    cpl                                           ; $57f0: $2f
    jr nc, jr_006_5823                            ; $57f1: $30 $30

    jr nc, jr_006_5825                            ; $57f3: $30 $30

    jr nc, @+$32                                  ; $57f5: $30 $30

    jr nc, jr_006_5829                            ; $57f7: $30 $30

    jr nc, jr_006_582b                            ; $57f9: $30 $30

    ld sp, $3131                                  ; $57fb: $31 $31 $31
    ld sp, $3131                                  ; $57fe: $31 $31 $31
    ld sp, $3131                                  ; $5801: $31 $31 $31
    ld sp, $3232                                  ; $5804: $31 $32 $32
    ld [hl-], a                                   ; $5807: $32
    ld [hl-], a                                   ; $5808: $32
    ld [hl-], a                                   ; $5809: $32
    ld [hl-], a                                   ; $580a: $32
    ld [hl-], a                                   ; $580b: $32
    ld [hl-], a                                   ; $580c: $32
    ld [hl-], a                                   ; $580d: $32
    ld [hl-], a                                   ; $580e: $32
    ld [hl-], a                                   ; $580f: $32
    ld [hl-], a                                   ; $5810: $32
    ld [hl-], a                                   ; $5811: $32
    ld [hl-], a                                   ; $5812: $32
    ld [hl-], a                                   ; $5813: $32
    ld [hl-], a                                   ; $5814: $32
    ld [hl-], a                                   ; $5815: $32
    ld [hl-], a                                   ; $5816: $32
    ld [hl-], a                                   ; $5817: $32
    ld [hl-], a                                   ; $5818: $32

    db $0a

    dec bc                                        ; $581a: $0b
    dec bc                                        ; $581b: $0b
    inc c                                         ; $581c: $0c
    inc c                                         ; $581d: $0c
    dec c                                         ; $581e: $0d
    dec c                                         ; $581f: $0d
    ld c, $0e                                     ; $5820: $0e $0e
    rrca                                          ; $5822: $0f

jr_006_5823:
    rrca                                          ; $5823: $0f
    db $10                                        ; $5824: $10

jr_006_5825:
    db $10                                        ; $5825: $10
    ld de, $1211                                  ; $5826: $11 $11 $12

jr_006_5829:
    ld [de], a                                    ; $5829: $12
    inc de                                        ; $582a: $13

jr_006_582b:
    inc de                                        ; $582b: $13
    inc d                                         ; $582c: $14
    dec d                                         ; $582d: $15
    ld d, $17                                     ; $582e: $16 $17
    jr jr_006_584b                                ; $5830: $18 $19

    ld a, [de]                                    ; $5832: $1a
    dec de                                        ; $5833: $1b
    inc e                                         ; $5834: $1c
    dec e                                         ; $5835: $1d
    ld e, $1f                                     ; $5836: $1e $1f
    jr nz, jr_006_585b                            ; $5838: $20 $21

    ld [hl+], a                                   ; $583a: $22
    inc hl                                        ; $583b: $23
    inc h                                         ; $583c: $24
    dec h                                         ; $583d: $25
    ld h, $27                                     ; $583e: $26 $27
    jr z, jr_006_586b                             ; $5840: $28 $29

    dec hl                                        ; $5842: $2b
    inc l                                         ; $5843: $2c
    ld l, $2f                                     ; $5844: $2e $2f
    ld sp, $3432                                  ; $5846: $31 $32 $34
    dec [hl]                                      ; $5849: $35
    scf                                           ; $584a: $37

jr_006_584b:
    jr c, jr_006_5887                             ; $584b: $38 $3a

    dec sp                                        ; $584d: $3b
    dec a                                         ; $584e: $3d
    ld a, $40                                     ; $584f: $3e $40
    ld b, c                                       ; $5851: $41
    ld b, e                                       ; $5852: $43
    ld b, h                                       ; $5853: $44
    ld b, [hl]                                    ; $5854: $46
    ld c, b                                       ; $5855: $48
    ld c, d                                       ; $5856: $4a
    ld c, h                                       ; $5857: $4c
    ld c, [hl]                                    ; $5858: $4e
    ld d, b                                       ; $5859: $50
    ld d, d                                       ; $585a: $52

jr_006_585b:
    ld d, h                                       ; $585b: $54
    ld d, [hl]                                    ; $585c: $56
    ld e, b                                       ; $585d: $58
    ld e, d                                       ; $585e: $5a
    ld e, h                                       ; $585f: $5c
    ld e, [hl]                                    ; $5860: $5e
    ld h, b                                       ; $5861: $60
    ld h, d                                       ; $5862: $62
    ld h, h                                       ; $5863: $64
    ld h, [hl]                                    ; $5864: $66
    ld l, b                                       ; $5865: $68
    ld l, d                                       ; $5866: $6a
    ld l, h                                       ; $5867: $6c
    ld l, [hl]                                    ; $5868: $6e
    ld [hl], b                                    ; $5869: $70
    ld [hl], d                                    ; $586a: $72

jr_006_586b:
    ld [hl], h                                    ; $586b: $74
    halt                                          ; $586c: $76
    ld a, b                                       ; $586d: $78
    ld a, d                                       ; $586e: $7a
    ld a, h                                       ; $586f: $7c
    ld a, [hl]                                    ; $5870: $7e
    add b                                         ; $5871: $80
    add d                                         ; $5872: $82
    add h                                         ; $5873: $84
    add [hl]                                      ; $5874: $86
    adc b                                         ; $5875: $88
    adc d                                         ; $5876: $8a
    adc h                                         ; $5877: $8c
    adc [hl]                                      ; $5878: $8e
    sub b                                         ; $5879: $90
    sub d                                         ; $587a: $92
    sub h                                         ; $587b: $94
    sub [hl]                                      ; $587c: $96

    db $05

    ld b, $06                                     ; $587e: $06 $06
    rlca                                          ; $5880: $07
    rlca                                          ; $5881: $07
    ld [$0908], sp                                ; $5882: $08 $08 $09
    add hl, bc                                    ; $5885: $09
    ld a, [bc]                                    ; $5886: $0a

jr_006_5887:
    ld a, [bc]                                    ; $5887: $0a
    dec bc                                        ; $5888: $0b
    dec bc                                        ; $5889: $0b
    inc c                                         ; $588a: $0c
    inc c                                         ; $588b: $0c
    dec c                                         ; $588c: $0d
    dec c                                         ; $588d: $0d
    ld c, $0e                                     ; $588e: $0e $0e
    rrca                                          ; $5890: $0f
    db $10                                        ; $5891: $10
    ld de, $1312                                  ; $5892: $11 $12 $13
    inc d                                         ; $5895: $14
    dec d                                         ; $5896: $15
    ld d, $17                                     ; $5897: $16 $17
    jr jr_006_58b4                                ; $5899: $18 $19

    ld a, [de]                                    ; $589b: $1a
    dec de                                        ; $589c: $1b
    inc e                                         ; $589d: $1c
    dec e                                         ; $589e: $1d
    ld e, $1f                                     ; $589f: $1e $1f
    jr nz, jr_006_58c4                            ; $58a1: $20 $21

    ld [hl+], a                                   ; $58a3: $22
    inc hl                                        ; $58a4: $23
    inc h                                         ; $58a5: $24
    ld h, $27                                     ; $58a6: $26 $27
    add hl, hl                                    ; $58a8: $29
    ld a, [hl+]                                   ; $58a9: $2a
    inc l                                         ; $58aa: $2c
    dec l                                         ; $58ab: $2d
    cpl                                           ; $58ac: $2f
    jr nc, @+$34                                  ; $58ad: $30 $32

    inc [hl]                                      ; $58af: $34
    ld [hl], $38                                  ; $58b0: $36 $38
    ld a, [hl-]                                   ; $58b2: $3a
    inc a                                         ; $58b3: $3c

jr_006_58b4:
    ld a, $40                                     ; $58b4: $3e $40
    ld b, d                                       ; $58b6: $42
    ld b, h                                       ; $58b7: $44
    ld b, [hl]                                    ; $58b8: $46
    ld c, b                                       ; $58b9: $48
    ld c, e                                       ; $58ba: $4b
    ld c, l                                       ; $58bb: $4d
    ld d, b                                       ; $58bc: $50
    ld d, d                                       ; $58bd: $52
    ld d, l                                       ; $58be: $55
    ld d, a                                       ; $58bf: $57
    ld e, d                                       ; $58c0: $5a
    ld e, h                                       ; $58c1: $5c
    ld e, a                                       ; $58c2: $5f
    ld h, c                                       ; $58c3: $61

jr_006_58c4:
    ld h, h                                       ; $58c4: $64
    ld h, [hl]                                    ; $58c5: $66
    ld l, c                                       ; $58c6: $69
    ld l, e                                       ; $58c7: $6b
    ld l, [hl]                                    ; $58c8: $6e
    ld [hl], b                                    ; $58c9: $70
    ld [hl], e                                    ; $58ca: $73
    ld [hl], l                                    ; $58cb: $75
    ld a, b                                       ; $58cc: $78
    ld a, e                                       ; $58cd: $7b
    ld a, [hl]                                    ; $58ce: $7e
    add c                                         ; $58cf: $81
    add h                                         ; $58d0: $84
    add a                                         ; $58d1: $87
    adc d                                         ; $58d2: $8a
    adc l                                         ; $58d3: $8d
    sub b                                         ; $58d4: $90
    sub e                                         ; $58d5: $93
    sub [hl]                                      ; $58d6: $96
    sbc c                                         ; $58d7: $99
    sbc h                                         ; $58d8: $9c
    sbc a                                         ; $58d9: $9f
    and d                                         ; $58da: $a2
    and l                                         ; $58db: $a5
    xor b                                         ; $58dc: $a8
    xor e                                         ; $58dd: $ab
    xor [hl]                                      ; $58de: $ae
    or c                                          ; $58df: $b1
    or h                                          ; $58e0: $b4

    db $28, $00

    inc sp                                        ; $58e3: $33
    nop                                           ; $58e4: $00
    ld a, $00                                     ; $58e5: $3e $00
    ld c, c                                       ; $58e7: $49
    nop                                           ; $58e8: $00
    ld d, h                                       ; $58e9: $54
    nop                                           ; $58ea: $00
    ld e, a                                       ; $58eb: $5f
    nop                                           ; $58ec: $00
    ld l, d                                       ; $58ed: $6a
    nop                                           ; $58ee: $00
    ld [hl], l                                    ; $58ef: $75
    nop                                           ; $58f0: $00
    add b                                         ; $58f1: $80
    nop                                           ; $58f2: $00
    adc h                                         ; $58f3: $8c
    nop                                           ; $58f4: $00
    sbc b                                         ; $58f5: $98
    nop                                           ; $58f6: $00
    and h                                         ; $58f7: $a4
    nop                                           ; $58f8: $00
    xor a                                         ; $58f9: $af
    nop                                           ; $58fa: $00
    cp d                                          ; $58fb: $ba
    nop                                           ; $58fc: $00
    call nz, $ce00                                ; $58fd: $c4 $00 $ce
    nop                                           ; $5900: $00
    rst $10                                       ; $5901: $d7
    nop                                           ; $5902: $00
    rst $18                                       ; $5903: $df
    nop                                           ; $5904: $00
    rst $20                                       ; $5905: $e7
    nop                                           ; $5906: $00
    ldh a, [rP1]                                  ; $5907: $f0 $00
    ld hl, sp+$00                                 ; $5909: $f8 $00
    nop                                           ; $590b: $00
    ld bc, $0108                                  ; $590c: $01 $08 $01
    db $10                                        ; $590f: $10
    ld bc, $0118                                  ; $5910: $01 $18 $01
    jr nz, @+$03                                  ; $5913: $20 $01

    jr z, @+$03                                   ; $5915: $28 $01

    jr nc, @+$03                                  ; $5917: $30 $01

    jr c, jr_006_591c                             ; $5919: $38 $01

    ld b, b                                       ; $591b: $40

jr_006_591c:
    ld bc, HeaderROMSize                          ; $591c: $01 $48 $01
    ld d, b                                       ; $591f: $50
    ld bc, $0158                                  ; $5920: $01 $58 $01
    ld h, b                                       ; $5923: $60
    ld bc, $0168                                  ; $5924: $01 $68 $01
    ld [hl], b                                    ; $5927: $70
    ld bc, $0178                                  ; $5928: $01 $78 $01
    add b                                         ; $592b: $80
    ld bc, $0188                                  ; $592c: $01 $88 $01
    sub b                                         ; $592f: $90
    ld bc, $0197                                  ; $5930: $01 $97 $01
    sbc [hl]                                      ; $5933: $9e
    ld bc, $01a5                                  ; $5934: $01 $a5 $01
    xor h                                         ; $5937: $ac
    ld bc, $01b3                                  ; $5938: $01 $b3 $01
    cp d                                          ; $593b: $ba
    ld bc, $01c1                                  ; $593c: $01 $c1 $01
    ret z                                         ; $593f: $c8

    ld bc, $01cf                                  ; $5940: $01 $cf $01
    sub $01                                       ; $5943: $d6 $01
    db $dd                                        ; $5945: $dd
    ld bc, $01e4                                  ; $5946: $01 $e4 $01
    db $eb                                        ; $5949: $eb
    ld bc, $01f2                                  ; $594a: $01 $f2 $01
    ld sp, hl                                     ; $594d: $f9
    ld bc, $0200                                  ; $594e: $01 $00 $02
    rlca                                          ; $5951: $07
    ld [bc], a                                    ; $5952: $02
    ld c, $02                                     ; $5953: $0e $02
    dec d                                         ; $5955: $15
    ld [bc], a                                    ; $5956: $02
    inc e                                         ; $5957: $1c
    ld [bc], a                                    ; $5958: $02
    inc hl                                        ; $5959: $23
    ld [bc], a                                    ; $595a: $02
    ld a, [hl+]                                   ; $595b: $2a
    ld [bc], a                                    ; $595c: $02
    ld sp, $3802                                  ; $595d: $31 $02 $38
    ld [bc], a                                    ; $5960: $02
    ccf                                           ; $5961: $3f
    ld [bc], a                                    ; $5962: $02
    ld b, [hl]                                    ; $5963: $46
    ld [bc], a                                    ; $5964: $02
    ld c, l                                       ; $5965: $4d
    ld [bc], a                                    ; $5966: $02
    ld d, h                                       ; $5967: $54
    ld [bc], a                                    ; $5968: $02
    ld e, e                                       ; $5969: $5b
    ld [bc], a                                    ; $596a: $02
    ld h, d                                       ; $596b: $62
    ld [bc], a                                    ; $596c: $02
    ld l, c                                       ; $596d: $69
    ld [bc], a                                    ; $596e: $02
    ld [hl], b                                    ; $596f: $70
    ld [bc], a                                    ; $5970: $02
    ld [hl], a                                    ; $5971: $77
    ld [bc], a                                    ; $5972: $02
    ld a, [hl]                                    ; $5973: $7e
    ld [bc], a                                    ; $5974: $02
    add l                                         ; $5975: $85
    ld [bc], a                                    ; $5976: $02
    adc h                                         ; $5977: $8c
    ld [bc], a                                    ; $5978: $02
    sub e                                         ; $5979: $93
    ld [bc], a                                    ; $597a: $02
    sbc c                                         ; $597b: $99
    ld [bc], a                                    ; $597c: $02
    and b                                         ; $597d: $a0
    ld [bc], a                                    ; $597e: $02
    and a                                         ; $597f: $a7
    ld [bc], a                                    ; $5980: $02
    xor [hl]                                      ; $5981: $ae
    ld [bc], a                                    ; $5982: $02
    or h                                          ; $5983: $b4
    ld [bc], a                                    ; $5984: $02
    cp d                                          ; $5985: $ba
    ld [bc], a                                    ; $5986: $02
    ret nz                                        ; $5987: $c0

    ld [bc], a                                    ; $5988: $02
    add $02                                       ; $5989: $c6 $02
    call z, $d202                                 ; $598b: $cc $02 $d2
    ld [bc], a                                    ; $598e: $02
    ret c                                         ; $598f: $d8

    ld [bc], a                                    ; $5990: $02
    sbc $02                                       ; $5991: $de $02
    db $e4                                        ; $5993: $e4
    ld [bc], a                                    ; $5994: $02
    ld [$f002], a                                 ; $5995: $ea $02 $f0
    ld [bc], a                                    ; $5998: $02
    or $02                                        ; $5999: $f6 $02
    db $fc                                        ; $599b: $fc
    ld [bc], a                                    ; $599c: $02
    ld [bc], a                                    ; $599d: $02
    inc bc                                        ; $599e: $03
    ld [$0e03], sp                                ; $599f: $08 $03 $0e
    inc bc                                        ; $59a2: $03
    inc d                                         ; $59a3: $14
    inc bc                                        ; $59a4: $03
    ld a, [de]                                    ; $59a5: $1a
    inc bc                                        ; $59a6: $03
    jr nz, @+$05                                  ; $59a7: $20 $03

    db $14, $00

    ld d, $00                                     ; $59ab: $16 $00
    add hl, de                                    ; $59ad: $19
    nop                                           ; $59ae: $00
    inc e                                         ; $59af: $1c
    nop                                           ; $59b0: $00
    rra                                           ; $59b1: $1f
    nop                                           ; $59b2: $00
    ld [hl+], a                                   ; $59b3: $22
    nop                                           ; $59b4: $00
    dec h                                         ; $59b5: $25
    nop                                           ; $59b6: $00
    jr z, jr_006_59b9                             ; $59b7: $28 $00

jr_006_59b9:
    dec hl                                        ; $59b9: $2b
    nop                                           ; $59ba: $00
    ld l, $00                                     ; $59bb: $2e $00
    ld sp, $3400                                  ; $59bd: $31 $00 $34
    nop                                           ; $59c0: $00
    scf                                           ; $59c1: $37
    nop                                           ; $59c2: $00
    ld a, [hl-]                                   ; $59c3: $3a
    nop                                           ; $59c4: $00
    dec a                                         ; $59c5: $3d
    nop                                           ; $59c6: $00
    ld b, b                                       ; $59c7: $40
    nop                                           ; $59c8: $00
    ld b, h                                       ; $59c9: $44
    nop                                           ; $59ca: $00
    ld c, b                                       ; $59cb: $48
    nop                                           ; $59cc: $00
    ld c, h                                       ; $59cd: $4c
    nop                                           ; $59ce: $00
    ld d, b                                       ; $59cf: $50
    nop                                           ; $59d0: $00
    ld d, l                                       ; $59d1: $55
    nop                                           ; $59d2: $00
    ld e, d                                       ; $59d3: $5a
    nop                                           ; $59d4: $00
    ld e, a                                       ; $59d5: $5f
    nop                                           ; $59d6: $00
    ld h, h                                       ; $59d7: $64
    nop                                           ; $59d8: $00
    ld l, c                                       ; $59d9: $69
    nop                                           ; $59da: $00
    ld l, [hl]                                    ; $59db: $6e
    nop                                           ; $59dc: $00
    ld [hl], e                                    ; $59dd: $73
    nop                                           ; $59de: $00
    ld a, b                                       ; $59df: $78
    nop                                           ; $59e0: $00
    ld a, l                                       ; $59e1: $7d
    nop                                           ; $59e2: $00
    add d                                         ; $59e3: $82
    nop                                           ; $59e4: $00
    adc b                                         ; $59e5: $88
    nop                                           ; $59e6: $00
    adc [hl]                                      ; $59e7: $8e
    nop                                           ; $59e8: $00
    sub h                                         ; $59e9: $94
    nop                                           ; $59ea: $00
    sbc d                                         ; $59eb: $9a
    nop                                           ; $59ec: $00
    and b                                         ; $59ed: $a0
    nop                                           ; $59ee: $00
    and [hl]                                      ; $59ef: $a6
    nop                                           ; $59f0: $00
    xor h                                         ; $59f1: $ac
    nop                                           ; $59f2: $00
    or d                                          ; $59f3: $b2
    nop                                           ; $59f4: $00
    cp b                                          ; $59f5: $b8
    nop                                           ; $59f6: $00
    cp [hl]                                       ; $59f7: $be
    nop                                           ; $59f8: $00
    add $00                                       ; $59f9: $c6 $00
    adc $00                                       ; $59fb: $ce $00
    sub $00                                       ; $59fd: $d6 $00
    sbc $00                                       ; $59ff: $de $00
    and $00                                       ; $5a01: $e6 $00
    xor $00                                       ; $5a03: $ee $00
    or $00                                        ; $5a05: $f6 $00
    cp $00                                        ; $5a07: $fe $00
    ld b, $01                                     ; $5a09: $06 $01
    ld c, $01                                     ; $5a0b: $0e $01
    jr jr_006_5a10                                ; $5a0d: $18 $01

    ld [hl+], a                                   ; $5a0f: $22

jr_006_5a10:
    ld bc, $012c                                  ; $5a10: $01 $2c $01
    ld [hl], $01                                  ; $5a13: $36 $01
    ld b, b                                       ; $5a15: $40
    ld bc, HeaderDestinationCode                  ; $5a16: $01 $4a $01
    ld d, h                                       ; $5a19: $54
    ld bc, $015e                                  ; $5a1a: $01 $5e $01
    ld l, b                                       ; $5a1d: $68
    ld bc, $0172                                  ; $5a1e: $01 $72 $01
    ld a, [hl]                                    ; $5a21: $7e
    ld bc, $018a                                  ; $5a22: $01 $8a $01
    sub [hl]                                      ; $5a25: $96
    ld bc, $01a2                                  ; $5a26: $01 $a2 $01
    xor [hl]                                      ; $5a29: $ae
    ld bc, $01ba                                  ; $5a2a: $01 $ba $01
    add $01                                       ; $5a2d: $c6 $01
    jp nc, $de01                                  ; $5a2f: $d2 $01 $de

    ld bc, $01ea                                  ; $5a32: $01 $ea $01
    ld hl, sp+$01                                 ; $5a35: $f8 $01
    ld b, $02                                     ; $5a37: $06 $02
    inc d                                         ; $5a39: $14
    ld [bc], a                                    ; $5a3a: $02
    ld [hl+], a                                   ; $5a3b: $22
    ld [bc], a                                    ; $5a3c: $02
    jr nc, jr_006_5a41                            ; $5a3d: $30 $02

    ld a, $02                                     ; $5a3f: $3e $02

jr_006_5a41:
    ld c, h                                       ; $5a41: $4c
    ld [bc], a                                    ; $5a42: $02
    ld e, d                                       ; $5a43: $5a
    ld [bc], a                                    ; $5a44: $02
    ld l, b                                       ; $5a45: $68
    ld [bc], a                                    ; $5a46: $02
    halt                                          ; $5a47: $76
    ld [bc], a                                    ; $5a48: $02
    add [hl]                                      ; $5a49: $86
    ld [bc], a                                    ; $5a4a: $02
    sub [hl]                                      ; $5a4b: $96
    ld [bc], a                                    ; $5a4c: $02
    and [hl]                                      ; $5a4d: $a6
    ld [bc], a                                    ; $5a4e: $02
    or [hl]                                       ; $5a4f: $b6
    ld [bc], a                                    ; $5a50: $02
    add $02                                       ; $5a51: $c6 $02
    sub $02                                       ; $5a53: $d6 $02
    and $02                                       ; $5a55: $e6 $02
    or $02                                        ; $5a57: $f6 $02
    ld b, $03                                     ; $5a59: $06 $03
    ld d, $03                                     ; $5a5b: $16 $03
    ld h, $03                                     ; $5a5d: $26 $03
    ld [hl], $03                                  ; $5a5f: $36 $03
    ld b, [hl]                                    ; $5a61: $46
    inc bc                                        ; $5a62: $03
    ld d, [hl]                                    ; $5a63: $56
    inc bc                                        ; $5a64: $03
    ld h, [hl]                                    ; $5a65: $66
    inc bc                                        ; $5a66: $03
    halt                                          ; $5a67: $76
    inc bc                                        ; $5a68: $03
    add [hl]                                      ; $5a69: $86
    inc bc                                        ; $5a6a: $03
    sub [hl]                                      ; $5a6b: $96
    inc bc                                        ; $5a6c: $03
    and [hl]                                      ; $5a6d: $a6
    inc bc                                        ; $5a6e: $03
    or [hl]                                       ; $5a6f: $b6
    inc bc                                        ; $5a70: $03

    db $96

    sub l                                         ; $5a72: $95
    sub h                                         ; $5a73: $94
    sub e                                         ; $5a74: $93
    sub d                                         ; $5a75: $92
    sub b                                         ; $5a76: $90
    adc a                                         ; $5a77: $8f
    adc [hl]                                      ; $5a78: $8e
    adc l                                         ; $5a79: $8d
    adc h                                         ; $5a7a: $8c
    adc e                                         ; $5a7b: $8b
    adc d                                         ; $5a7c: $8a
    adc c                                         ; $5a7d: $89
    adc b                                         ; $5a7e: $88
    add a                                         ; $5a7f: $87
    add [hl]                                      ; $5a80: $86
    add l                                         ; $5a81: $85
    add h                                         ; $5a82: $84
    add e                                         ; $5a83: $83
    add d                                         ; $5a84: $82
    add c                                         ; $5a85: $81
    add b                                         ; $5a86: $80
    ld a, a                                       ; $5a87: $7f
    ld a, [hl]                                    ; $5a88: $7e
    ld a, l                                       ; $5a89: $7d
    ld a, h                                       ; $5a8a: $7c
    ld a, e                                       ; $5a8b: $7b
    ld a, d                                       ; $5a8c: $7a
    ld a, c                                       ; $5a8d: $79
    ld a, b                                       ; $5a8e: $78
    ld [hl], a                                    ; $5a8f: $77
    halt                                          ; $5a90: $76
    ld [hl], l                                    ; $5a91: $75
    ld [hl], h                                    ; $5a92: $74
    ld [hl], e                                    ; $5a93: $73
    ld [hl], d                                    ; $5a94: $72
    ld [hl], c                                    ; $5a95: $71
    ld [hl], b                                    ; $5a96: $70
    ld l, a                                       ; $5a97: $6f
    ld l, [hl]                                    ; $5a98: $6e
    ld l, l                                       ; $5a99: $6d
    ld l, h                                       ; $5a9a: $6c
    ld l, e                                       ; $5a9b: $6b
    ld l, d                                       ; $5a9c: $6a
    ld l, c                                       ; $5a9d: $69
    ld l, b                                       ; $5a9e: $68
    ld h, a                                       ; $5a9f: $67
    ld h, [hl]                                    ; $5aa0: $66
    ld h, l                                       ; $5aa1: $65
    ld h, h                                       ; $5aa2: $64
    ld h, e                                       ; $5aa3: $63
    ld h, d                                       ; $5aa4: $62
    ld h, c                                       ; $5aa5: $61
    ld h, b                                       ; $5aa6: $60
    ld e, a                                       ; $5aa7: $5f
    ld e, [hl]                                    ; $5aa8: $5e
    ld e, l                                       ; $5aa9: $5d
    ld e, h                                       ; $5aaa: $5c
    ld e, e                                       ; $5aab: $5b
    ld e, d                                       ; $5aac: $5a
    ld e, c                                       ; $5aad: $59
    ld e, b                                       ; $5aae: $58
    ld d, a                                       ; $5aaf: $57
    ld d, [hl]                                    ; $5ab0: $56
    ld d, l                                       ; $5ab1: $55
    ld d, h                                       ; $5ab2: $54
    ld d, e                                       ; $5ab3: $53
    ld d, d                                       ; $5ab4: $52
    ld d, c                                       ; $5ab5: $51
    ld d, b                                       ; $5ab6: $50
    ld c, a                                       ; $5ab7: $4f
    ld c, [hl]                                    ; $5ab8: $4e
    ld c, l                                       ; $5ab9: $4d
    ld c, h                                       ; $5aba: $4c
    ld c, e                                       ; $5abb: $4b
    ld c, d                                       ; $5abc: $4a
    ld c, c                                       ; $5abd: $49
    ld c, b                                       ; $5abe: $48
    ld b, a                                       ; $5abf: $47
    ld b, [hl]                                    ; $5ac0: $46
    ld b, l                                       ; $5ac1: $45
    ld b, h                                       ; $5ac2: $44
    ld b, e                                       ; $5ac3: $43
    ld b, d                                       ; $5ac4: $42
    ld b, c                                       ; $5ac5: $41
    ld b, b                                       ; $5ac6: $40
    ccf                                           ; $5ac7: $3f
    ld a, $3d                                     ; $5ac8: $3e $3d
    inc a                                         ; $5aca: $3c
    dec sp                                        ; $5acb: $3b
    ld a, [hl-]                                   ; $5acc: $3a
    add hl, sp                                    ; $5acd: $39
    jr c, jr_006_5b07                             ; $5ace: $38 $37

    ld [hl], $35                                  ; $5ad0: $36 $35
    inc [hl]                                      ; $5ad2: $34
    inc sp                                        ; $5ad3: $33
    ld [hl-], a                                   ; $5ad4: $32
    db $db                                        ; $5ad5: $db
    ld e, d                                       ; $5ad6: $5a
    xor $5a                                       ; $5ad7: $ee $5a
    ld hl, sp+$5a                                 ; $5ad9: $f8 $5a
    ld de, $0200                                  ; $5adb: $11 $00 $02
    inc bc                                        ; $5ade: $03
    dec b                                         ; $5adf: $05
    ld [$0c09], sp                                ; $5ae0: $08 $09 $0c
    ld c, $0f                                     ; $5ae3: $0e $0f
    db $10                                        ; $5ae5: $10
    ld [de], a                                    ; $5ae6: $12
    inc de                                        ; $5ae7: $13
    inc d                                         ; $5ae8: $14
    jr @+$1c                                      ; $5ae9: $18 $1a

    inc e                                         ; $5aeb: $1c
    ld e, $1f                                     ; $5aec: $1e $1f
    add hl, bc                                    ; $5aee: $09
    inc b                                         ; $5aef: $04
    ld b, $07                                     ; $5af0: $06 $07
    dec bc                                        ; $5af2: $0b
    dec c                                         ; $5af3: $0d
    ld de, $1715                                  ; $5af4: $11 $15 $17
    dec e                                         ; $5af7: $1d

    db $06, $01, $0a, $16, $19, $1b, $20

    nop                                           ; $5aff: $00
    ld e, $4a                                     ; $5b00: $1e $4a
    daa                                           ; $5b02: $27

    db $01, $1f, $01, $26

jr_006_5b07:
    ld [bc], a                                    ; $5b07: $02
    dec e                                         ; $5b08: $1d
    ld c, [hl]                                    ; $5b09: $4e
    add hl, hl                                    ; $5b0a: $29
    inc bc                                        ; $5b0b: $03
    inc e                                         ; $5b0c: $1c
    ld c, a                                       ; $5b0d: $4f
    dec hl                                        ; $5b0e: $2b
    inc b                                         ; $5b0f: $04
    jr nz, jr_006_5b5e                            ; $5b10: $20 $4c

    jr z, jr_006_5b19                             ; $5b12: $28 $05

    ld hl, $2c50                                  ; $5b14: $21 $50 $2c
    ld b, $25                                     ; $5b17: $06 $25

jr_006_5b19:
    ld c, l                                       ; $5b19: $4d
    ld a, [hl+]                                   ; $5b1a: $2a
    rlca                                          ; $5b1b: $07
    ld a, [bc]                                    ; $5b1c: $0a
    ld d, c                                       ; $5b1d: $51
    cpl                                           ; $5b1e: $2f
    ld [$5222], sp                                ; $5b1f: $08 $22 $52
    ld [$2309], sp                                ; $5b22: $08 $09 $23
    ld d, e                                       ; $5b25: $53
    ld [hl-], a                                   ; $5b26: $32

    db $54, $0e, $14, $2d

    ld d, l                                       ; $5b2b: $55
    rrca                                          ; $5b2c: $0f
    inc de                                        ; $5b2d: $13
    ld sp, $2456                                  ; $5b2e: $31 $56 $24
    ld h, d                                       ; $5b31: $62
    ld h, d                                       ; $5b32: $62
    ld d, a                                       ; $5b33: $57
    db $10                                        ; $5b34: $10
    ld a, [de]                                    ; $5b35: $1a
    inc [hl]                                      ; $5b36: $34
    ld e, b                                       ; $5b37: $58
    dec bc                                        ; $5b38: $0b
    ld d, $36                                     ; $5b39: $16 $36
    ld e, c                                       ; $5b3b: $59
    ld b, d                                       ; $5b3c: $42
    rla                                           ; $5b3d: $17
    ld b, d                                       ; $5b3e: $42
    dec c                                         ; $5b3f: $0d
    dec c                                         ; $5b40: $0d
    jr jr_006_5b7a                                ; $5b41: $18 $37

    ld e, e                                       ; $5b43: $5b
    inc a                                         ; $5b44: $3c
    ld h, b                                       ; $5b45: $60
    inc a                                         ; $5b46: $3c
    ld h, h                                       ; $5b47: $64
    ld [de], a                                    ; $5b48: $12
    add hl, de                                    ; $5b49: $19
    ld h, h                                       ; $5b4a: $64
    ld c, c                                       ; $5b4b: $49
    ld c, c                                       ; $5b4c: $49
    ld c, c                                       ; $5b4d: $49
    ld c, c                                       ; $5b4e: $49
    ld b, b                                       ; $5b4f: $40
    ld b, b                                       ; $5b50: $40
    ld b, a                                       ; $5b51: $47
    ld b, a                                       ; $5b52: $47
    ld b, e                                       ; $5b53: $43
    ld b, c                                       ; $5b54: $41
    ld b, l                                       ; $5b55: $45
    ld b, [hl]                                    ; $5b56: $46

    db $44, $30, $44, $30

    ld e, l                                       ; $5b5b: $5d
    ld e, l                                       ; $5b5c: $5d
    ld a, [hl-]                                   ; $5b5d: $3a

jr_006_5b5e:
    dec [hl]                                      ; $5b5e: $35
    ld e, d                                       ; $5b5f: $5a
    inc c                                         ; $5b60: $0c
    ld c, b                                       ; $5b61: $48
    ld c, b                                       ; $5b62: $48

    db $61, $61, $61, $61

    ld e, h                                       ; $5b67: $5c
    ld e, a                                       ; $5b68: $5f
    dec d                                         ; $5b69: $15
    ld e, a                                       ; $5b6a: $5f

    db $3b, $11, $4b, $3b

    ld e, [hl]                                    ; $5b6f: $5e
    add hl, sp                                    ; $5b70: $39
    ld e, [hl]                                    ; $5b71: $5e
    add hl, sp                                    ; $5b72: $39
    ld a, $63                                     ; $5b73: $3e $63
    ld a, $3e                                     ; $5b75: $3e $3e
    dec a                                         ; $5b77: $3d
    dec a                                         ; $5b78: $3d
    dec de                                        ; $5b79: $1b

jr_006_5b7a:
    inc sp                                        ; $5b7a: $33
    ccf                                           ; $5b7b: $3f
    ccf                                           ; $5b7c: $3f
    ccf                                           ; $5b7d: $3f
    db $2e                                        ; $5b7e: $2e

    db $38, $38, $38, $38, $1e, $02, $ff, $ff, $00, $ff, $ff, $ff, $03, $ff, $ff, $ff
    db $04, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0a, $ff, $ff, $ff, $09, $ff, $ff, $ff, $0c, $0d, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $01, $2b, $ff, $02, $03, $ff, $ff, $04, $ff, $2f, $ff, $ff, $ff, $ff, $ff
    db $06, $ff, $54, $ff, $07, $ff, $51, $ff, $0a, $ff, $2a, $56, $00, $05, $2a, $ff
    db $09, $ff, $2b, $ff, $10, $ff, $ff, $ff, $03, $ff, $ff, $ff, $09, $ff, $ff, $ff
    db $0b, $ff, $ff, $ff, $0d, $13, $30, $ff, $0f, $10, $2b, $ff, $16, $00, $4c, $43
    db $12, $13, $46, $48, $02, $08, $2b, $ff, $04, $14, $2f, $4e, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $2c, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $15, $ff, $2f, $ff, $17, $ff, $ff, $ff, $18, $ff, $f9, $ff
    db $ff, $ff, $ff, $ff, $1a, $0b, $2a, $44, $1b, $ff, $ff, $ff, $1c, $0e, $2a, $2a
    db $1d, $1f, $ff, $ff, $1e, $1f, $f9, $57, $05, $08, $56, $ff, $07, $0c, $f9, $2b
    db $09, $02, $f9, $f9, $03, $0e, $ff, $54, $0f, $11, $f9, $2f, $1a, $1f, $53, $f9
    db $ff, $ff, $ff, $ff, $1c, $07, $ff, $ff, $15, $1e, $2b, $ff, $1e, $06, $52, $2f
    db $10, $13, $f9, $57, $12, $ff, $46, $4a, $17, $ff, $54, $f9, $01, $ff, $2c, $ff
    db $14, $0b, $ff, $ff, $0a, $ff, $30, $50, $08, $ff, $ff, $ff, $04, $ff, $2a, $49
    db $09, $ff, $4b, $ff, $05, $ff, $ff, $ff, $0c, $ff, $55, $ff, $11, $1a, $ff, $ff
    db $0a, $ff, $54, $ff, $15, $ff, $2b, $ff, $06, $0e, $ff, $ff, $0f, $1c, $56, $ff
    db $10, $0d, $52, $ff, $16, $ff, $ff, $ff, $0d, $18, $56, $ff, $ff, $ff, $ff, $ff
    db $12, $18, $47, $4a, $1b, $1a, $2f, $55, $14, $1a, $ff, $ff, $1d, $ff, $2f, $2b
    db $ff, $ff, $ff, $ff, $1c, $00, $ff, $ff, $1e, $02, $2a, $ff, $0c, $03, $2a, $ff
    db $05, $1f, $57, $2a, $08, $ff, $ff, $ff, $0c, $12, $ff, $ff, $11, $14, $ff, $ff
    db $1d, $ff, $4f, $ff, $0e, $ff, $ff, $ff, $0f, $ff, $ff, $ff, $10, $ff, $f9, $ff
    db $13, $ff, $54, $ff, $19, $ff, $ff, $ff, $18, $ff, $ff, $ff, $11, $ff, $4c, $ff
    db $17, $ff, $55, $ff, $1c, $16, $00, $01, $0f, $18, $01, $04, $14, $1b, $02, $07
    db $19, $1c, $04, $0f, $2a, $2a, $2a, $2a, $16, $1d, $03, $05, $1a, $1e, $07, $09
    db $1b, $1f, $09, $08, $1d, $20, $08, $0c, $2b, $2b, $2b, $2b, $01, $0a, $16, $27
    db $13, $21, $06, $0d, $1f, $22, $0a, $10, $30, $30, $30, $30, $0b, $04, $21, $03
    db $20, $19, $0f, $02, $21, $15, $1e, $15, $2d, $2d, $2d, $2d, $25, $1a, $13, $06
    db $15, $01, $25, $12, $31, $31, $31, $31, $22, $27, $11, $1d, $24, $26, $27, $11
    db $2f, $2f, $2f, $2f, $18, $09, $12, $13, $26, $25, $0e, $1b, $09, $0d, $18, $22
    db $27, $24, $0d, $1a, $17, $23, $0b, $16, $11, $00, $22, $18, $32

    ld h, h                                       ; $5d7c: $64
    rst $38                                       ; $5d7d: $ff

    db $32

    ld h, h                                       ; $5d7f: $64
    rst $38                                       ; $5d80: $ff
    ld [hl-], a                                   ; $5d81: $32
    ld h, h                                       ; $5d82: $64
    rst $38                                       ; $5d83: $ff
    ld [hl-], a                                   ; $5d84: $32
    ld h, h                                       ; $5d85: $64
    rst $38                                       ; $5d86: $ff

    push bc                                       ; $5d87: $c5
    push de                                       ; $5d88: $d5
    push hl                                       ; $5d89: $e5
    ld c, a                                       ; $5d8a: $4f
    ld hl, $5af8                                  ; $5d8b: $21 $f8 $5a
    ld a, [hl+]                                   ; $5d8e: $2a
    ld b, a                                       ; $5d8f: $47

jr_006_5d90:
    ld a, [hl+]                                   ; $5d90: $2a
    push hl                                       ; $5d91: $e5
    ld hl, $5aff                                  ; $5d92: $21 $ff $5a
    call Call_000_317d                            ; $5d95: $cd $7d $31
    ld d, $04                                     ; $5d98: $16 $04

jr_006_5d9a:
    ld a, [hl+]                                   ; $5d9a: $2a
    cp c                                          ; $5d9b: $b9
    jr z, jr_006_5da9                             ; $5d9c: $28 $0b

    dec d                                         ; $5d9e: $15
    jr nz, jr_006_5d9a                            ; $5d9f: $20 $f9

    pop hl                                        ; $5da1: $e1
    dec b                                         ; $5da2: $05
    jr nz, jr_006_5d90                            ; $5da3: $20 $eb

    ld l, $00                                     ; $5da5: $2e $00
    jr jr_006_5dab                                ; $5da7: $18 $02

jr_006_5da9:
    pop hl                                        ; $5da9: $e1
    ld l, a                                       ; $5daa: $6f

jr_006_5dab:
    or a                                          ; $5dab: $b7
    rl l                                          ; $5dac: $cb $15
    ld a, c                                       ; $5dae: $79
    pop hl                                        ; $5daf: $e1
    pop de                                        ; $5db0: $d1
    pop bc                                        ; $5db1: $c1
    ret                                           ; $5db2: $c9


Call_006_5db3:
    ld hl, $5ad5                                  ; $5db3: $21 $d5 $5a
    call Call_000_319d                            ; $5db6: $cd $9d $31
    ld a, [hl+]                                   ; $5db9: $2a
    call Call_000_2722                            ; $5dba: $cd $22 $27
    rst $08                                       ; $5dbd: $cf

Call_006_5dbe:
    cp $ff                                        ; $5dbe: $fe $ff
    ret z                                         ; $5dc0: $c8

    push hl                                       ; $5dc1: $e5
    ld hl, $5aff                                  ; $5dc2: $21 $ff $5a
    call Call_000_317d                            ; $5dc5: $cd $7d $31
    ld a, [$ce03]                                 ; $5dc8: $fa $03 $ce
    rst $08                                       ; $5dcb: $cf
    pop hl                                        ; $5dcc: $e1
    ret                                           ; $5dcd: $c9


Call_006_5dce:
    ldh a, [rSVBK]                                ; $5dce: $f0 $70
    push af                                       ; $5dd0: $f5
    ld a, $06                                     ; $5dd1: $3e $06
    ldh [rSVBK], a                                ; $5dd3: $e0 $70
    ldh a, [$d8]                                  ; $5dd5: $f0 $d8
    ld hl, $d6d5                                  ; $5dd7: $21 $d5 $d6
    call Call_000_317d                            ; $5dda: $cd $7d $31
    ld a, c                                       ; $5ddd: $79
    rst $08                                       ; $5dde: $cf
    ld b, a                                       ; $5ddf: $47
    pop af                                        ; $5de0: $f1
    ldh [rSVBK], a                                ; $5de1: $e0 $70
    ld a, b                                       ; $5de3: $78
    ret                                           ; $5de4: $c9


Call_006_5de5:
    push bc                                       ; $5de5: $c5
    ld b, $ff                                     ; $5de6: $06 $ff
    ld c, a                                       ; $5de8: $4f
    and $02                                       ; $5de9: $e6 $02
    jr z, jr_006_5df0                             ; $5deb: $28 $03

    call Call_006_5dce                            ; $5ded: $cd $ce $5d

jr_006_5df0:
    ld a, b                                       ; $5df0: $78
    pop bc                                        ; $5df1: $c1
    ret                                           ; $5df2: $c9


Call_006_5df3:
    push bc                                       ; $5df3: $c5
    ld b, $ff                                     ; $5df4: $06 $ff
    ld c, a                                       ; $5df6: $4f
    and $02                                       ; $5df7: $e6 $02
    jr nz, jr_006_5e02                            ; $5df9: $20 $07

    call Call_006_5dce                            ; $5dfb: $cd $ce $5d
    call Call_006_5dbe                            ; $5dfe: $cd $be $5d
    ld b, a                                       ; $5e01: $47

jr_006_5e02:
    ld a, b                                       ; $5e02: $78
    pop bc                                        ; $5e03: $c1
    ret                                           ; $5e04: $c9


Call_006_5e05:
    push bc                                       ; $5e05: $c5
    and $02                                       ; $5e06: $e6 $02
    jr nz, jr_006_5e1c                            ; $5e08: $20 $12

    ld a, c                                       ; $5e0a: $79
    ldh [$c1], a                                  ; $5e0b: $e0 $c1
    ld a, $84                                     ; $5e0d: $3e $84
    ldh [$bd], a                                  ; $5e0f: $e0 $bd
    ld a, $47                                     ; $5e11: $3e $47
    ldh [$be], a                                  ; $5e13: $e0 $be
    call Call_000_3474                            ; $5e15: $cd $74 $34
    ld d, $03                                     ; $5e18: $16 $03
    jr jr_006_5e45                                ; $5e1a: $18 $29

jr_006_5e1c:
    ld d, c                                       ; $5e1c: $51
    ld a, c                                       ; $5e1d: $79
    cp $6f                                        ; $5e1e: $fe $6f
    jr c, jr_006_5e35                             ; $5e20: $38 $13

    jr z, jr_006_5e35                             ; $5e22: $28 $11

    ld a, $64                                     ; $5e24: $3e $64
    call Call_000_2722                            ; $5e26: $cd $22 $27
    add $64                                       ; $5e29: $c6 $64
    ld l, a                                       ; $5e2b: $6f
    ld h, $00                                     ; $5e2c: $26 $00
    call Call_006_6066                            ; $5e2e: $cd $66 $60
    ld d, $01                                     ; $5e31: $16 $01
    jr jr_006_5e45                                ; $5e33: $18 $10

jr_006_5e35:
    ld a, d                                       ; $5e35: $7a
    ldh [$c1], a                                  ; $5e36: $e0 $c1
    ld a, $4b                                     ; $5e38: $3e $4b
    ldh [$bd], a                                  ; $5e3a: $e0 $bd
    ld a, $6a                                     ; $5e3c: $3e $6a
    ldh [$be], a                                  ; $5e3e: $e0 $be
    call Call_000_3474                            ; $5e40: $cd $74 $34
    ld d, $02                                     ; $5e43: $16 $02

jr_006_5e45:
    pop bc                                        ; $5e45: $c1
    ret                                           ; $5e46: $c9


Call_006_5e47:
    ldh a, [rSVBK]                                ; $5e47: $f0 $70
    push af                                       ; $5e49: $f5
    ld a, $06                                     ; $5e4a: $3e $06
    ldh [rSVBK], a                                ; $5e4c: $e0 $70
    ld bc, $0180                                  ; $5e4e: $01 $80 $01
    ld de, $d6d5                                  ; $5e51: $11 $d5 $d6
    ld hl, $5b83                                  ; $5e54: $21 $83 $5b
    call Call_000_1140                            ; $5e57: $cd $40 $11
    pop af                                        ; $5e5a: $f1
    ldh [rSVBK], a                                ; $5e5b: $e0 $70
    ret                                           ; $5e5d: $c9


Jump_006_5e5e:
    push af                                       ; $5e5e: $f5
    ldh a, [$d8]                                  ; $5e5f: $f0 $d8
    ld hl, $d6d5                                  ; $5e61: $21 $d5 $d6
    call Call_000_317d                            ; $5e64: $cd $7d $31
    pop af                                        ; $5e67: $f1
    rst $08                                       ; $5e68: $cf
    ldh a, [rSVBK]                                ; $5e69: $f0 $70
    push af                                       ; $5e6b: $f5
    ld a, $06                                     ; $5e6c: $3e $06
    ldh [rSVBK], a                                ; $5e6e: $e0 $70
    ld [hl], $ff                                  ; $5e70: $36 $ff
    pop af                                        ; $5e72: $f1
    ldh [rSVBK], a                                ; $5e73: $e0 $70
    ret                                           ; $5e75: $c9


Call_006_5e76:
    ldh a, [rSVBK]                                ; $5e76: $f0 $70
    push af                                       ; $5e78: $f5
    ld a, $06                                     ; $5e79: $3e $06
    ldh [rSVBK], a                                ; $5e7b: $e0 $70
    ld bc, $0078                                  ; $5e7d: $01 $78 $00
    ld de, $d855                                  ; $5e80: $11 $55 $d8
    ld hl, $5d03                                  ; $5e83: $21 $03 $5d
    call Call_000_1140                            ; $5e86: $cd $40 $11
    pop af                                        ; $5e89: $f1
    ldh [rSVBK], a                                ; $5e8a: $e0 $70
    ret                                           ; $5e8c: $c9


    call Call_006_5f3c                            ; $5e8d: $cd $3c $5f

Call_006_5e90:
    ldh [$c1], a                                  ; $5e90: $e0 $c1
    ld a, $13                                     ; $5e92: $3e $13
    ldh [$bd], a                                  ; $5e94: $e0 $bd
    ld a, $68                                     ; $5e96: $3e $68
    ldh [$be], a                                  ; $5e98: $e0 $be
    call Call_000_3474                            ; $5e9a: $cd $74 $34
    ldh [$c1], a                                  ; $5e9d: $e0 $c1
    ld a, $29                                     ; $5e9f: $3e $29
    ldh [$bd], a                                  ; $5ea1: $e0 $bd
    ld a, $68                                     ; $5ea3: $3e $68
    ldh [$be], a                                  ; $5ea5: $e0 $be
    call Call_000_3474                            ; $5ea7: $cd $74 $34
    call Call_006_5f8f                            ; $5eaa: $cd $8f $5f
    call Call_006_602e                            ; $5ead: $cd $2e $60
    ldh a, [rSVBK]                                ; $5eb0: $f0 $70
    push af                                       ; $5eb2: $f5
    ld a, $06                                     ; $5eb3: $3e $06
    ldh [rSVBK], a                                ; $5eb5: $e0 $70
    ld hl, $d5d5                                  ; $5eb7: $21 $d5 $d5
    ld bc, $0100                                  ; $5eba: $01 $00 $01
    call Call_000_112e                            ; $5ebd: $cd $2e $11
    ld a, $01                                     ; $5ec0: $3e $01
    ld [$d6d4], a                                 ; $5ec2: $ea $d4 $d6
    ld a, $59                                     ; $5ec5: $3e $59
    ld [$d5d5], a                                 ; $5ec7: $ea $d5 $d5
    ld hl, $cdfe                                  ; $5eca: $21 $fe $cd
    xor a                                         ; $5ecd: $af
    ld [hl+], a                                   ; $5ece: $22
    ld [hl+], a                                   ; $5ecf: $22
    ld [hl+], a                                   ; $5ed0: $22
    dec a                                         ; $5ed1: $3d
    ld hl, $ce05                                  ; $5ed2: $21 $05 $ce
    ld [hl+], a                                   ; $5ed5: $22
    ld [hl+], a                                   ; $5ed6: $22
    ld [hl+], a                                   ; $5ed7: $22
    ld [hl], a                                    ; $5ed8: $77
    pop af                                        ; $5ed9: $f1
    ldh [rSVBK], a                                ; $5eda: $e0 $70
    ldh a, [rSVBK]                                ; $5edc: $f0 $70
    push af                                       ; $5ede: $f5
    ld a, $06                                     ; $5edf: $3e $06
    ldh [rSVBK], a                                ; $5ee1: $e0 $70
    ld hl, $0000                                  ; $5ee3: $21 $00 $00
    ld a, l                                       ; $5ee6: $7d
    ld [$d5d0], a                                 ; $5ee7: $ea $d0 $d5
    ld a, h                                       ; $5eea: $7c
    ld [$d5d1], a                                 ; $5eeb: $ea $d1 $d5
    ld hl, $0032                                  ; $5eee: $21 $32 $00
    ld a, l                                       ; $5ef1: $7d
    ld [$d5c8], a                                 ; $5ef2: $ea $c8 $d5
    ld a, h                                       ; $5ef5: $7c
    ld [$d5c9], a                                 ; $5ef6: $ea $c9 $d5
    ld a, l                                       ; $5ef9: $7d
    ld [$d5cc], a                                 ; $5efa: $ea $cc $d5
    ld a, h                                       ; $5efd: $7c
    ld [$d5cd], a                                 ; $5efe: $ea $cd $d5
    ld a, l                                       ; $5f01: $7d
    ld [$d5ca], a                                 ; $5f02: $ea $ca $d5
    ld a, h                                       ; $5f05: $7c
    ld [$d5cb], a                                 ; $5f06: $ea $cb $d5
    ld a, l                                       ; $5f09: $7d
    ld [$d5ce], a                                 ; $5f0a: $ea $ce $d5
    ld a, h                                       ; $5f0d: $7c
    ld [$d5cf], a                                 ; $5f0e: $ea $cf $d5
    pop af                                        ; $5f11: $f1
    ldh [rSVBK], a                                ; $5f12: $e0 $70
    call Call_006_5e47                            ; $5f14: $cd $47 $5e
    call Call_006_5e76                            ; $5f17: $cd $76 $5e
    ld a, $32                                     ; $5f1a: $3e $32
    ld [$caf8], a                                 ; $5f1c: $ea $f8 $ca
    ld [$caf9], a                                 ; $5f1f: $ea $f9 $ca
    ld a, $64                                     ; $5f22: $3e $64
    ld [$cafb], a                                 ; $5f24: $ea $fb $ca
    ld [$cafc], a                                 ; $5f27: $ea $fc $ca
    ld a, $12                                     ; $5f2a: $3e $12
    ld [$cafa], a                                 ; $5f2c: $ea $fa $ca
    xor a                                         ; $5f2f: $af
    ld [$c0bb], a                                 ; $5f30: $ea $bb $c0
    ldh [$d8], a                                  ; $5f33: $e0 $d8
    ldh [$da], a                                  ; $5f35: $e0 $da
    ld a, $0a                                     ; $5f37: $3e $0a
    ldh [$d9], a                                  ; $5f39: $e0 $d9
    ret                                           ; $5f3b: $c9


Call_006_5f3c:
    xor a                                         ; $5f3c: $af
    ld hl, $cdfe                                  ; $5f3d: $21 $fe $cd
    ld [hl+], a                                   ; $5f40: $22
    ld [hl+], a                                   ; $5f41: $22
    ld [hl+], a                                   ; $5f42: $22
    ld a, $05                                     ; $5f43: $3e $05
    ld [$ce0b], a                                 ; $5f45: $ea $0b $ce
    ld a, $01                                     ; $5f48: $3e $01
    ld [$cdfb], a                                 ; $5f4a: $ea $fb $cd
    xor a                                         ; $5f4d: $af
    ld [$cdf9], a                                 ; $5f4e: $ea $f9 $cd
    ld [$cdfa], a                                 ; $5f51: $ea $fa $cd
    ld [$cde0], a                                 ; $5f54: $ea $e0 $cd
    ld [$ce09], a                                 ; $5f57: $ea $09 $ce
    ld [$ce0a], a                                 ; $5f5a: $ea $0a $ce
    dec a                                         ; $5f5d: $3d
    ld hl, $ce05                                  ; $5f5e: $21 $05 $ce
    ld [hl+], a                                   ; $5f61: $22
    ld [hl+], a                                   ; $5f62: $22
    ld [hl+], a                                   ; $5f63: $22
    ld [hl+], a                                   ; $5f64: $22
    push bc                                       ; $5f65: $c5
    ld bc, $000a                                  ; $5f66: $01 $0a $00
    ld hl, $ce0c                                  ; $5f69: $21 $0c $ce
    ld a, $ff                                     ; $5f6c: $3e $ff
    call Call_000_112f                            ; $5f6e: $cd $2f $11
    pop bc                                        ; $5f71: $c1
    ld a, $04                                     ; $5f72: $3e $04
    call Call_000_2722                            ; $5f74: $cd $22 $27
    ld [$ce03], a                                 ; $5f77: $ea $03 $ce
    ldh [$bc], a                                  ; $5f7a: $e0 $bc
    ldh a, [rSVBK]                                ; $5f7c: $f0 $70
    push af                                       ; $5f7e: $f5
    ld a, $06                                     ; $5f7f: $3e $06
    ldh [rSVBK], a                                ; $5f81: $e0 $70
    ldh a, [$bc]                                  ; $5f83: $f0 $bc
    ld [$d6c8], a                                 ; $5f85: $ea $c8 $d6
    pop af                                        ; $5f88: $f1
    ldh [rSVBK], a                                ; $5f89: $e0 $70
    call Call_000_30d5                            ; $5f8b: $cd $d5 $30
    ret                                           ; $5f8e: $c9


Call_006_5f8f:
    push bc                                       ; $5f8f: $c5
    ld a, [$cdfb]                                 ; $5f90: $fa $fb $cd
    dec a                                         ; $5f93: $3d
    ld c, a                                       ; $5f94: $4f
    ldh a, [rSVBK]                                ; $5f95: $f0 $70
    push af                                       ; $5f97: $f5
    ld a, $06                                     ; $5f98: $3e $06
    ldh [rSVBK], a                                ; $5f9a: $e0 $70
    ld a, [$d6ca]                                 ; $5f9c: $fa $ca $d6
    ld b, a                                       ; $5f9f: $47
    pop af                                        ; $5fa0: $f1
    ldh [rSVBK], a                                ; $5fa1: $e0 $70
    ld hl, $58e1                                  ; $5fa3: $21 $e1 $58
    ld de, $cde1                                  ; $5fa6: $11 $e1 $cd
    call Call_006_6015                            ; $5fa9: $cd $15 $60
    ldh a, [rSVBK]                                ; $5fac: $f0 $70
    push af                                       ; $5fae: $f5
    ld a, $06                                     ; $5faf: $3e $06
    ldh [rSVBK], a                                ; $5fb1: $e0 $70
    ld a, [$d6cb]                                 ; $5fb3: $fa $cb $d6
    ld b, a                                       ; $5fb6: $47
    pop af                                        ; $5fb7: $f1
    ldh [rSVBK], a                                ; $5fb8: $e0 $70
    ld hl, $59a9                                  ; $5fba: $21 $a9 $59
    ld de, $cde3                                  ; $5fbd: $11 $e3 $cd
    call Call_006_6015                            ; $5fc0: $cd $15 $60
    ld hl, $5a71                                  ; $5fc3: $21 $71 $5a
    ld de, $cde9                                  ; $5fc6: $11 $e9 $cd
    call Call_006_6011                            ; $5fc9: $cd $11 $60
    ld hl, $5751                                  ; $5fcc: $21 $51 $57
    ld de, $cdeb                                  ; $5fcf: $11 $eb $cd
    call Call_006_6011                            ; $5fd2: $cd $11 $60
    ld hl, $57b5                                  ; $5fd5: $21 $b5 $57
    ld de, $cded                                  ; $5fd8: $11 $ed $cd
    call Call_006_6011                            ; $5fdb: $cd $11 $60
    ld hl, $5819                                  ; $5fde: $21 $19 $58
    ld de, $cdec                                  ; $5fe1: $11 $ec $cd
    call Call_006_6011                            ; $5fe4: $cd $11 $60
    ld hl, $587d                                  ; $5fe7: $21 $7d $58
    ld de, $cdee                                  ; $5fea: $11 $ee $cd
    call Call_006_6011                            ; $5fed: $cd $11 $60
    ld hl, $587d                                  ; $5ff0: $21 $7d $58
    ld de, $cdef                                  ; $5ff3: $11 $ef $cd
    call Call_006_6011                            ; $5ff6: $cd $11 $60
    ld hl, $587d                                  ; $5ff9: $21 $7d $58
    ld de, $cdf0                                  ; $5ffc: $11 $f0 $cd
    call Call_006_6011                            ; $5fff: $cd $11 $60
    ldh [$c1], a                                  ; $6002: $e0 $c1
    ld a, $b5                                     ; $6004: $3e $b5
    ldh [$bd], a                                  ; $6006: $e0 $bd
    ld a, $68                                     ; $6008: $3e $68
    ldh [$be], a                                  ; $600a: $e0 $be
    call Call_000_3474                            ; $600c: $cd $74 $34
    pop bc                                        ; $600f: $c1
    ret                                           ; $6010: $c9


Call_006_6011:
    ld a, c                                       ; $6011: $79
    rst $08                                       ; $6012: $cf
    ld [de], a                                    ; $6013: $12
    ret                                           ; $6014: $c9


Call_006_6015:
    push de                                       ; $6015: $d5
    ld a, c                                       ; $6016: $79
    call Call_000_318c                            ; $6017: $cd $8c $31
    ld e, [hl]                                    ; $601a: $5e
    inc hl                                        ; $601b: $23
    ld d, [hl]                                    ; $601c: $56
    ld l, b                                       ; $601d: $68
    ld h, $00                                     ; $601e: $26 $00
    add hl, de                                    ; $6020: $19
    ld de, $03e7                                  ; $6021: $11 $e7 $03
    call Call_000_323b                            ; $6024: $cd $3b $32
    ld d, h                                       ; $6027: $54
    ld e, l                                       ; $6028: $5d
    pop hl                                        ; $6029: $e1
    ld [hl], e                                    ; $602a: $73
    inc hl                                        ; $602b: $23
    ld [hl], d                                    ; $602c: $72
    ret                                           ; $602d: $c9


Call_006_602e:
    ld hl, $cde1                                  ; $602e: $21 $e1 $cd
    ld a, [hl+]                                   ; $6031: $2a
    ld h, [hl]                                    ; $6032: $66
    ld l, a                                       ; $6033: $6f
    ld [$cde5], a                                 ; $6034: $ea $e5 $cd
    ld a, h                                       ; $6037: $7c
    ld [$cde6], a                                 ; $6038: $ea $e6 $cd
    ld hl, $cde3                                  ; $603b: $21 $e3 $cd
    ld a, [hl+]                                   ; $603e: $2a
    ld h, [hl]                                    ; $603f: $66
    ld l, a                                       ; $6040: $6f
    ld [$cde7], a                                 ; $6041: $ea $e7 $cd
    ld a, h                                       ; $6044: $7c
    ld [$cde8], a                                 ; $6045: $ea $e8 $cd
    xor a                                         ; $6048: $af
    ld [$cdea], a                                 ; $6049: $ea $ea $cd
    ret                                           ; $604c: $c9


Call_006_604d:
    push de                                       ; $604d: $d5
    ld a, [$cdf9]                                 ; $604e: $fa $f9 $cd
    ld e, a                                       ; $6051: $5f
    ld a, [$cdfa]                                 ; $6052: $fa $fa $cd
    ld d, a                                       ; $6055: $57
    add hl, de                                    ; $6056: $19
    jr nc, jr_006_605c                            ; $6057: $30 $03

    ld hl, $fffe                                  ; $6059: $21 $fe $ff

jr_006_605c:
    ld a, l                                       ; $605c: $7d
    ld [$cdf9], a                                 ; $605d: $ea $f9 $cd
    ld a, h                                       ; $6060: $7c
    ld [$cdfa], a                                 ; $6061: $ea $fa $cd
    pop de                                        ; $6064: $d1
    ret                                           ; $6065: $c9


Call_006_6066:
    push de                                       ; $6066: $d5
    push hl                                       ; $6067: $e5
    ld a, [$cdfc]                                 ; $6068: $fa $fc $cd
    ld e, a                                       ; $606b: $5f
    ld a, [$cdfd]                                 ; $606c: $fa $fd $cd
    ld d, a                                       ; $606f: $57
    add hl, de                                    ; $6070: $19
    jr nc, jr_006_6076                            ; $6071: $30 $03

    ld hl, $ffff                                  ; $6073: $21 $ff $ff

jr_006_6076:
    ld a, l                                       ; $6076: $7d
    ld [$cdfc], a                                 ; $6077: $ea $fc $cd
    ld a, h                                       ; $607a: $7c
    ld [$cdfd], a                                 ; $607b: $ea $fd $cd
    pop hl                                        ; $607e: $e1
    pop de                                        ; $607f: $d1
    ret                                           ; $6080: $c9


    ldh a, [rSVBK]                                ; $6081: $f0 $70
    push af                                       ; $6083: $f5
    ld a, $05                                     ; $6084: $3e $05
    ldh [rSVBK], a                                ; $6086: $e0 $70
    push hl                                       ; $6088: $e5
    ldh a, [$cf]                                  ; $6089: $f0 $cf
    cp $1d                                        ; $608b: $fe $1d
    jr z, jr_006_6094                             ; $608d: $28 $05

    ld hl, $cde0                                  ; $608f: $21 $e0 $cd
    jr jr_006_6097                                ; $6092: $18 $03

jr_006_6094:
    ld hl, $d400                                  ; $6094: $21 $00 $d4

jr_006_6097:
    ld a, l                                       ; $6097: $7d
    ld [$cb2c], a                                 ; $6098: $ea $2c $cb
    ld a, h                                       ; $609b: $7c
    ld [$cb2d], a                                 ; $609c: $ea $2d $cb
    ld de, $0005                                  ; $609f: $11 $05 $00
    add hl, de                                    ; $60a2: $19
    ld a, [hl+]                                   ; $60a3: $2a
    ld d, [hl]                                    ; $60a4: $56
    ld e, a                                       ; $60a5: $5f
    push de                                       ; $60a6: $d5
    ld hl, $cb2c                                  ; $60a7: $21 $2c $cb
    ld a, [hl+]                                   ; $60aa: $2a
    ld h, [hl]                                    ; $60ab: $66
    ld l, a                                       ; $60ac: $6f
    ld de, $0001                                  ; $60ad: $11 $01 $00
    add hl, de                                    ; $60b0: $19
    ld a, [hl+]                                   ; $60b1: $2a
    ld h, [hl]                                    ; $60b2: $66
    ld l, a                                       ; $60b3: $6f
    pop de                                        ; $60b4: $d1
    call Call_000_0098                            ; $60b5: $cd $98 $00
    add hl, de                                    ; $60b8: $19
    pop de                                        ; $60b9: $d1
    call RST_10                                   ; $60ba: $cd $10 $00
    jr nc, jr_006_60c1                            ; $60bd: $30 $02

    ld h, d                                       ; $60bf: $62
    ld l, e                                       ; $60c0: $6b

jr_006_60c1:
    push hl                                       ; $60c1: $e5
    ld hl, $cb2c                                  ; $60c2: $21 $2c $cb
    ld a, [hl+]                                   ; $60c5: $2a
    ld h, [hl]                                    ; $60c6: $66
    ld l, a                                       ; $60c7: $6f
    ld de, $0005                                  ; $60c8: $11 $05 $00
    add hl, de                                    ; $60cb: $19
    ld a, [hl+]                                   ; $60cc: $2a
    ld d, [hl]                                    ; $60cd: $56
    ld e, a                                       ; $60ce: $5f
    pop hl                                        ; $60cf: $e1
    push hl                                       ; $60d0: $e5
    add hl, de                                    ; $60d1: $19
    ld a, [$cb2c]                                 ; $60d2: $fa $2c $cb
    ld e, a                                       ; $60d5: $5f
    ld a, [$cb2d]                                 ; $60d6: $fa $2d $cb
    ld d, a                                       ; $60d9: $57
    push de                                       ; $60da: $d5
    push hl                                       ; $60db: $e5
    ld hl, $0005                                  ; $60dc: $21 $05 $00
    add hl, de                                    ; $60df: $19
    push hl                                       ; $60e0: $e5
    pop de                                        ; $60e1: $d1
    pop hl                                        ; $60e2: $e1
    ld a, l                                       ; $60e3: $7d
    ld [de], a                                    ; $60e4: $12
    inc de                                        ; $60e5: $13
    ld a, h                                       ; $60e6: $7c
    ld [de], a                                    ; $60e7: $12
    pop de                                        ; $60e8: $d1
    ld a, $1a                                     ; $60e9: $3e $1a
    call Call_000_395e                            ; $60eb: $cd $5e $39
    pop hl                                        ; $60ee: $e1
    pop af                                        ; $60ef: $f1
    ldh [rSVBK], a                                ; $60f0: $e0 $70
    ret                                           ; $60f2: $c9


    ldh a, [rSVBK]                                ; $60f3: $f0 $70
    push af                                       ; $60f5: $f5
    ld a, $05                                     ; $60f6: $3e $05
    ldh [rSVBK], a                                ; $60f8: $e0 $70
    push hl                                       ; $60fa: $e5
    ldh a, [$cf]                                  ; $60fb: $f0 $cf
    cp $1d                                        ; $60fd: $fe $1d
    jr z, jr_006_6106                             ; $60ff: $28 $05

    ld hl, $cde0                                  ; $6101: $21 $e0 $cd
    jr jr_006_6109                                ; $6104: $18 $03

jr_006_6106:
    ld hl, $d400                                  ; $6106: $21 $00 $d4

jr_006_6109:
    ld a, l                                       ; $6109: $7d
    ld [$cb2c], a                                 ; $610a: $ea $2c $cb
    ld a, h                                       ; $610d: $7c
    ld [$cb2d], a                                 ; $610e: $ea $2d $cb
    ld de, $0005                                  ; $6111: $11 $05 $00
    add hl, de                                    ; $6114: $19
    ld a, [hl+]                                   ; $6115: $2a
    ld d, [hl]                                    ; $6116: $56
    ld e, a                                       ; $6117: $5f
    pop hl                                        ; $6118: $e1
    call RST_10                                   ; $6119: $cd $10 $00
    jr nc, jr_006_6121                            ; $611c: $30 $03

    ld h, d                                       ; $611e: $62
    ld l, e                                       ; $611f: $6b
    dec hl                                        ; $6120: $2b

jr_006_6121:
    push hl                                       ; $6121: $e5
    ld hl, $cb2c                                  ; $6122: $21 $2c $cb
    ld a, [hl+]                                   ; $6125: $2a
    ld h, [hl]                                    ; $6126: $66
    ld l, a                                       ; $6127: $6f
    ld de, $0005                                  ; $6128: $11 $05 $00
    add hl, de                                    ; $612b: $19
    ld a, [hl+]                                   ; $612c: $2a
    ld d, [hl]                                    ; $612d: $56
    ld e, a                                       ; $612e: $5f
    pop hl                                        ; $612f: $e1
    push hl                                       ; $6130: $e5
    call Call_000_007b                            ; $6131: $cd $7b $00
    add hl, de                                    ; $6134: $19
    ld a, [$cb2c]                                 ; $6135: $fa $2c $cb
    ld e, a                                       ; $6138: $5f
    ld a, [$cb2d]                                 ; $6139: $fa $2d $cb
    ld d, a                                       ; $613c: $57
    push de                                       ; $613d: $d5
    push hl                                       ; $613e: $e5
    ld hl, $0005                                  ; $613f: $21 $05 $00
    add hl, de                                    ; $6142: $19
    push hl                                       ; $6143: $e5
    pop de                                        ; $6144: $d1
    pop hl                                        ; $6145: $e1
    ld a, l                                       ; $6146: $7d
    ld [de], a                                    ; $6147: $12
    inc de                                        ; $6148: $13
    ld a, h                                       ; $6149: $7c
    ld [de], a                                    ; $614a: $12
    pop de                                        ; $614b: $d1
    ld a, $1a                                     ; $614c: $3e $1a
    call Call_000_395e                            ; $614e: $cd $5e $39
    pop hl                                        ; $6151: $e1
    pop af                                        ; $6152: $f1
    ldh [rSVBK], a                                ; $6153: $e0 $70
    ret                                           ; $6155: $c9


    ldh a, [rSVBK]                                ; $6156: $f0 $70
    push af                                       ; $6158: $f5
    ld a, $05                                     ; $6159: $3e $05
    ldh [rSVBK], a                                ; $615b: $e0 $70
    push hl                                       ; $615d: $e5
    ldh a, [$cf]                                  ; $615e: $f0 $cf
    cp $1d                                        ; $6160: $fe $1d
    jr z, jr_006_6169                             ; $6162: $28 $05

    ld hl, $cde0                                  ; $6164: $21 $e0 $cd
    jr jr_006_616c                                ; $6167: $18 $03

jr_006_6169:
    ld hl, $d400                                  ; $6169: $21 $00 $d4

jr_006_616c:
    ld a, l                                       ; $616c: $7d
    ld [$cb2c], a                                 ; $616d: $ea $2c $cb
    ld a, h                                       ; $6170: $7c
    ld [$cb2d], a                                 ; $6171: $ea $2d $cb
    ld de, $0007                                  ; $6174: $11 $07 $00
    add hl, de                                    ; $6177: $19
    ld a, [hl+]                                   ; $6178: $2a
    ld d, [hl]                                    ; $6179: $56
    ld e, a                                       ; $617a: $5f
    push de                                       ; $617b: $d5
    ld hl, $cb2c                                  ; $617c: $21 $2c $cb
    ld a, [hl+]                                   ; $617f: $2a
    ld h, [hl]                                    ; $6180: $66
    ld l, a                                       ; $6181: $6f
    ld de, $0003                                  ; $6182: $11 $03 $00
    add hl, de                                    ; $6185: $19
    ld a, [hl+]                                   ; $6186: $2a
    ld h, [hl]                                    ; $6187: $66
    ld l, a                                       ; $6188: $6f
    pop de                                        ; $6189: $d1
    call Call_000_0098                            ; $618a: $cd $98 $00
    add hl, de                                    ; $618d: $19
    pop de                                        ; $618e: $d1
    call RST_10                                   ; $618f: $cd $10 $00
    jr nc, jr_006_6196                            ; $6192: $30 $02

    ld h, d                                       ; $6194: $62
    ld l, e                                       ; $6195: $6b

jr_006_6196:
    push hl                                       ; $6196: $e5
    ld hl, $cb2c                                  ; $6197: $21 $2c $cb
    ld a, [hl+]                                   ; $619a: $2a
    ld h, [hl]                                    ; $619b: $66
    ld l, a                                       ; $619c: $6f
    ld de, $0007                                  ; $619d: $11 $07 $00
    add hl, de                                    ; $61a0: $19
    ld a, [hl+]                                   ; $61a1: $2a
    ld d, [hl]                                    ; $61a2: $56
    ld e, a                                       ; $61a3: $5f
    pop hl                                        ; $61a4: $e1
    push hl                                       ; $61a5: $e5
    add hl, de                                    ; $61a6: $19
    ld a, [$cb2c]                                 ; $61a7: $fa $2c $cb
    ld e, a                                       ; $61aa: $5f
    ld a, [$cb2d]                                 ; $61ab: $fa $2d $cb
    ld d, a                                       ; $61ae: $57
    push de                                       ; $61af: $d5
    push hl                                       ; $61b0: $e5
    ld hl, $0007                                  ; $61b1: $21 $07 $00
    add hl, de                                    ; $61b4: $19
    push hl                                       ; $61b5: $e5
    pop de                                        ; $61b6: $d1
    pop hl                                        ; $61b7: $e1
    ld a, l                                       ; $61b8: $7d
    ld [de], a                                    ; $61b9: $12
    inc de                                        ; $61ba: $13
    ld a, h                                       ; $61bb: $7c
    ld [de], a                                    ; $61bc: $12
    pop de                                        ; $61bd: $d1
    ld a, $1a                                     ; $61be: $3e $1a
    call Call_000_395e                            ; $61c0: $cd $5e $39
    pop hl                                        ; $61c3: $e1
    pop af                                        ; $61c4: $f1
    ldh [rSVBK], a                                ; $61c5: $e0 $70
    ret                                           ; $61c7: $c9


    ld hl, $ce05                                  ; $61c8: $21 $05 $ce
    rst $08                                       ; $61cb: $cf
    or a                                          ; $61cc: $b7
    ret z                                         ; $61cd: $c8

    inc a                                         ; $61ce: $3c
    ret z                                         ; $61cf: $c8

    dec [hl]                                      ; $61d0: $35
    ret                                           ; $61d1: $c9


Call_006_61d2:
    ld hl, $ce05                                  ; $61d2: $21 $05 $ce
    rst $08                                       ; $61d5: $cf
    or a                                          ; $61d6: $b7
    ret                                           ; $61d7: $c9


Call_006_61d8:
    push bc                                       ; $61d8: $c5
    ld bc, $0000                                  ; $61d9: $01 $00 $00
    ld hl, $ce05                                  ; $61dc: $21 $05 $ce

jr_006_61df:
    ld a, b                                       ; $61df: $78
    call Call_006_61d2                            ; $61e0: $cd $d2 $61
    jr nz, jr_006_61f2                            ; $61e3: $20 $0d

    ld a, b                                       ; $61e5: $78
    call Call_006_61fb                            ; $61e6: $cd $fb $61
    or a                                          ; $61e9: $b7
    jr z, jr_006_61f2                             ; $61ea: $28 $06

    ld a, b                                       ; $61ec: $78
    call Call_000_3273                            ; $61ed: $cd $73 $32
    or c                                          ; $61f0: $b1
    ld c, a                                       ; $61f1: $4f

jr_006_61f2:
    inc b                                         ; $61f2: $04
    ld a, b                                       ; $61f3: $78
    cp $04                                        ; $61f4: $fe $04
    jr nz, jr_006_61df                            ; $61f6: $20 $e7

    ld a, c                                       ; $61f8: $79
    pop bc                                        ; $61f9: $c1
    ret                                           ; $61fa: $c9


Call_006_61fb:
    push bc                                       ; $61fb: $c5
    push de                                       ; $61fc: $d5
    push af                                       ; $61fd: $f5
    ld b, a                                       ; $61fe: $47
    add a                                         ; $61ff: $87
    add b                                         ; $6200: $80
    ld hl, $cdfe                                  ; $6201: $21 $fe $cd
    ld b, $03                                     ; $6204: $06 $03

jr_006_6206:
    call Call_000_3256                            ; $6206: $cd $56 $32
    jr z, jr_006_6219                             ; $6209: $28 $0e

    inc a                                         ; $620b: $3c
    dec b                                         ; $620c: $05
    jr nz, jr_006_6206                            ; $620d: $20 $f7

    pop af                                        ; $620f: $f1
    ld hl, $ce05                                  ; $6210: $21 $05 $ce
    rst $08                                       ; $6213: $cf
    ld [hl], $ff                                  ; $6214: $36 $ff
    xor a                                         ; $6216: $af
    jr jr_006_6231                                ; $6217: $18 $18

jr_006_6219:
    cp $0c                                        ; $6219: $fe $0c
    jr nc, jr_006_6234                            ; $621b: $30 $17

    ld b, a                                       ; $621d: $47
    call Call_000_3245                            ; $621e: $cd $45 $32
    ld a, b                                       ; $6221: $78
    ld hl, $5d7b                                  ; $6222: $21 $7b $5d
    rst $08                                       ; $6225: $cf
    pop af                                        ; $6226: $f1
    push hl                                       ; $6227: $e5
    ld hl, $ce05                                  ; $6228: $21 $05 $ce
    rst $08                                       ; $622b: $cf
    pop de                                        ; $622c: $d1
    ld a, [de]                                    ; $622d: $1a
    ld [hl], a                                    ; $622e: $77
    ld a, $01                                     ; $622f: $3e $01

jr_006_6231:
    pop de                                        ; $6231: $d1
    pop bc                                        ; $6232: $c1
    ret                                           ; $6233: $c9


jr_006_6234:
    pop af                                        ; $6234: $f1
    jr jr_006_6231                                ; $6235: $18 $fa

Call_006_6237:
    push bc                                       ; $6237: $c5
    push de                                       ; $6238: $d5
    push hl                                       ; $6239: $e5
    ld a, [$cdfb]                                 ; $623a: $fa $fb $cd
    ld c, a                                       ; $623d: $4f

jr_006_623e:
    call Call_006_6257                            ; $623e: $cd $57 $62
    jr c, jr_006_624f                             ; $6241: $38 $0c

    ld hl, $cdfb                                  ; $6243: $21 $fb $cd
    inc [hl]                                      ; $6246: $34
    call Call_006_5f8f                            ; $6247: $cd $8f $5f
    call Call_006_602e                            ; $624a: $cd $2e $60
    jr jr_006_623e                                ; $624d: $18 $ef

jr_006_624f:
    ld a, [$cdfb]                                 ; $624f: $fa $fb $cd
    sub c                                         ; $6252: $91
    pop hl                                        ; $6253: $e1
    pop de                                        ; $6254: $d1
    pop bc                                        ; $6255: $c1
    ret                                           ; $6256: $c9


Call_006_6257:
    ld a, [$cdfb]                                 ; $6257: $fa $fb $cd
    cp $63                                        ; $625a: $fe $63
    jr z, jr_006_626c                             ; $625c: $28 $0e

    call Call_006_62af                            ; $625e: $cd $af $62
    ld a, [$cdf9]                                 ; $6261: $fa $f9 $cd
    ld e, a                                       ; $6264: $5f
    ld a, [$cdfa]                                 ; $6265: $fa $fa $cd
    ld d, a                                       ; $6268: $57
    jp RST_10                                     ; $6269: $c3 $10 $00


jr_006_626c:
    scf                                           ; $626c: $37
    ret                                           ; $626d: $c9


Call_006_626e:
    cp $04                                        ; $626e: $fe $04
    jr c, jr_006_6298                             ; $6270: $38 $26

    jr nz, jr_006_627a                            ; $6272: $20 $06

    call Call_006_6298                            ; $6274: $cd $98 $62
    cpl                                           ; $6277: $2f
    inc a                                         ; $6278: $3c
    ret                                           ; $6279: $c9


jr_006_627a:
    push hl                                       ; $627a: $e5
    ld hl, $567b                                  ; $627b: $21 $7b $56
    call Call_000_319d                            ; $627e: $cd $9d $31
    push hl                                       ; $6281: $e5
    ld a, [$cc00]                                 ; $6282: $fa $00 $cc
    dec a                                         ; $6285: $3d
    call Call_000_3194                            ; $6286: $cd $94 $31
    call Call_000_0098                            ; $6289: $cd $98 $00
    pop hl                                        ; $628c: $e1
    ld a, [$cdfb]                                 ; $628d: $fa $fb $cd
    dec a                                         ; $6290: $3d
    call Call_000_319d                            ; $6291: $cd $9d $31
    add hl, de                                    ; $6294: $19
    ld a, l                                       ; $6295: $7d
    pop hl                                        ; $6296: $e1
    ret                                           ; $6297: $c9


Call_006_6298:
jr_006_6298:
    push hl                                       ; $6298: $e5
    ld hl, $567b                                  ; $6299: $21 $7b $56
    call Call_000_319d                            ; $629c: $cd $9d $31
    push hl                                       ; $629f: $e5
    ld a, [$cc00]                                 ; $62a0: $fa $00 $cc
    dec a                                         ; $62a3: $3d
    rst $08                                       ; $62a4: $cf
    ld e, [hl]                                    ; $62a5: $5e
    pop hl                                        ; $62a6: $e1
    ld a, [$cdfb]                                 ; $62a7: $fa $fb $cd
    dec a                                         ; $62aa: $3d
    rst $08                                       ; $62ab: $cf
    sub e                                         ; $62ac: $93
    pop hl                                        ; $62ad: $e1
    ret                                           ; $62ae: $c9


Call_006_62af:
    cp $63                                        ; $62af: $fe $63
    jr z, jr_006_62b9                             ; $62b1: $28 $06

    ld hl, $5687                                  ; $62b3: $21 $87 $56
    jp Jump_000_319d                              ; $62b6: $c3 $9d $31


jr_006_62b9:
    ld hl, $fffe                                  ; $62b9: $21 $fe $ff
    ret                                           ; $62bc: $c9


    push bc                                       ; $62bd: $c5
    push de                                       ; $62be: $d5
    push hl                                       ; $62bf: $e5
    ld e, a                                       ; $62c0: $5f
    ld bc, $0000                                  ; $62c1: $01 $00 $00
    ld hl, $5aff                                  ; $62c4: $21 $ff $5a

jr_006_62c7:
    ld a, [hl+]                                   ; $62c7: $2a
    cp e                                          ; $62c8: $bb
    jr nz, jr_006_62d3                            ; $62c9: $20 $08

    ld a, b                                       ; $62cb: $78
    and $03                                       ; $62cc: $e6 $03
    call Call_000_3273                            ; $62ce: $cd $73 $32
    or c                                          ; $62d1: $b1
    ld c, a                                       ; $62d2: $4f

jr_006_62d3:
    inc b                                         ; $62d3: $04
    ld a, b                                       ; $62d4: $78
    cp $84                                        ; $62d5: $fe $84
    jr nz, jr_006_62c7                            ; $62d7: $20 $ee

    ld a, c                                       ; $62d9: $79
    pop hl                                        ; $62da: $e1
    pop de                                        ; $62db: $d1
    pop bc                                        ; $62dc: $c1
    ret                                           ; $62dd: $c9


    ldh a, [rSVBK]                                ; $62de: $f0 $70
    push af                                       ; $62e0: $f5
    ld a, $06                                     ; $62e1: $3e $06
    ldh [rSVBK], a                                ; $62e3: $e0 $70
    ld a, [$d6d4]                                 ; $62e5: $fa $d4 $d6
    ldh [$bc], a                                  ; $62e8: $e0 $bc
    pop af                                        ; $62ea: $f1
    ldh [rSVBK], a                                ; $62eb: $e0 $70
    ldh a, [$bc]                                  ; $62ed: $f0 $bc
    cp $01                                        ; $62ef: $fe $01
    ld a, $59                                     ; $62f1: $3e $59
    ret z                                         ; $62f3: $c8

    xor a                                         ; $62f4: $af
    ret                                           ; $62f5: $c9


Jump_006_62f6:
    push af                                       ; $62f6: $f5
    ld hl, $d855                                  ; $62f7: $21 $55 $d8
    call Call_000_317d                            ; $62fa: $cd $7d $31
    ldh a, [rSVBK]                                ; $62fd: $f0 $70
    push af                                       ; $62ff: $f5
    ld a, $06                                     ; $6300: $3e $06
    ldh [rSVBK], a                                ; $6302: $e0 $70
    ld a, [$ce03]                                 ; $6304: $fa $03 $ce
    rst $08                                       ; $6307: $cf
    cp $ff                                        ; $6308: $fe $ff
    jr z, jr_006_6333                             ; $630a: $28 $27

    ld [hl], $ff                                  ; $630c: $36 $ff
    ld hl, $d570                                  ; $630e: $21 $70 $d5
    call Call_000_3245                            ; $6311: $cd $45 $32
    push bc                                       ; $6314: $c5
    ld bc, $106c                                  ; $6315: $01 $6c $10
    ld e, $6f                                     ; $6318: $1e $6f
    ld d, $02                                     ; $631a: $16 $02
    ld hl, $1030                                  ; $631c: $21 $30 $10
    ld a, $0d                                     ; $631f: $3e $0d
    call Call_000_395e                            ; $6321: $cd $5e $39
    xor a                                         ; $6324: $af
    ldh [$c1], a                                  ; $6325: $e0 $c1
    ld a, $26                                     ; $6327: $3e $26
    ldh [$bd], a                                  ; $6329: $e0 $bd
    ld a, $44                                     ; $632b: $3e $44
    ldh [$be], a                                  ; $632d: $e0 $be
    call Call_000_3474                            ; $632f: $cd $74 $34
    pop bc                                        ; $6332: $c1

jr_006_6333:
    pop af                                        ; $6333: $f1
    ldh [rSVBK], a                                ; $6334: $e0 $70
    pop af                                        ; $6336: $f1
    ret                                           ; $6337: $c9


    nop                                           ; $6338: $00
    nop                                           ; $6339: $00
    ld b, b                                       ; $633a: $40
    rst $38                                       ; $633b: $ff

    db $00, $00, $80, $fe

    nop                                           ; $6340: $00
    nop                                           ; $6341: $00
    nop                                           ; $6342: $00
    db $fd                                        ; $6343: $fd
    sub b                                         ; $6344: $90
    nop                                           ; $6345: $00
    ld [hl], b                                    ; $6346: $70
    rst $38                                       ; $6347: $ff
    jr nz, @+$03                                  ; $6348: $20 $01

    ldh [$fe], a                                  ; $634a: $e0 $fe
    ld b, b                                       ; $634c: $40
    ld [bc], a                                    ; $634d: $02
    ret nz                                        ; $634e: $c0

    db $fd                                        ; $634f: $fd
    ret nz                                        ; $6350: $c0

    nop                                           ; $6351: $00
    nop                                           ; $6352: $00
    nop                                           ; $6353: $00

    db $80, $01, $00, $00

    nop                                           ; $6358: $00
    inc bc                                        ; $6359: $03
    nop                                           ; $635a: $00
    nop                                           ; $635b: $00
    sub b                                         ; $635c: $90
    nop                                           ; $635d: $00
    sub b                                         ; $635e: $90
    nop                                           ; $635f: $00
    jr nz, @+$03                                  ; $6360: $20 $01

    jr nz, jr_006_6365                            ; $6362: $20 $01

    ld b, b                                       ; $6364: $40

jr_006_6365:
    ld [bc], a                                    ; $6365: $02
    ld b, b                                       ; $6366: $40
    ld [bc], a                                    ; $6367: $02
    nop                                           ; $6368: $00
    nop                                           ; $6369: $00
    ret nz                                        ; $636a: $c0

    nop                                           ; $636b: $00

    db $00, $00, $80, $01

    nop                                           ; $6370: $00
    nop                                           ; $6371: $00
    nop                                           ; $6372: $00
    inc bc                                        ; $6373: $03
    ld [hl], b                                    ; $6374: $70
    rst $38                                       ; $6375: $ff
    sub b                                         ; $6376: $90
    nop                                           ; $6377: $00
    ldh [$fe], a                                  ; $6378: $e0 $fe
    jr nz, jr_006_637d                            ; $637a: $20 $01

    ret nz                                        ; $637c: $c0

jr_006_637d:
    db $fd                                        ; $637d: $fd
    ld b, b                                       ; $637e: $40
    ld [bc], a                                    ; $637f: $02
    ld b, b                                       ; $6380: $40
    rst $38                                       ; $6381: $ff
    nop                                           ; $6382: $00
    nop                                           ; $6383: $00

    db $80, $fe, $00, $00

    nop                                           ; $6388: $00
    db $fd                                        ; $6389: $fd
    nop                                           ; $638a: $00
    nop                                           ; $638b: $00
    ld [hl], b                                    ; $638c: $70
    rst $38                                       ; $638d: $ff
    ld [hl], b                                    ; $638e: $70
    rst $38                                       ; $638f: $ff
    ldh [$fe], a                                  ; $6390: $e0 $fe
    ldh [$fe], a                                  ; $6392: $e0 $fe
    ret nz                                        ; $6394: $c0

    db $fd                                        ; $6395: $fd
    ret nz                                        ; $6396: $c0

    db $fd                                        ; $6397: $fd
    and l                                         ; $6398: $a5
    ld b, c                                       ; $6399: $41
    cp c                                          ; $639a: $b9
    ld b, c                                       ; $639b: $41

    db $b9, $41

    cp c                                          ; $639e: $b9
    ld b, c                                       ; $639f: $41
    xor a                                         ; $63a0: $af
    ld b, c                                       ; $63a1: $41
    cp c                                          ; $63a2: $b9
    ld b, c                                       ; $63a3: $41

    db $b9, $41

    cp c                                          ; $63a6: $b9
    ld b, c                                       ; $63a7: $41

    db $27, $7a

    ld c, e                                       ; $63aa: $4b
    ld a, d                                       ; $63ab: $7a

    db $4b, $7a

    ld c, e                                       ; $63ae: $4b
    ld a, d                                       ; $63af: $7a

    db $39, $7a

    ld c, e                                       ; $63b2: $4b
    ld a, d                                       ; $63b3: $7a
    ld c, e                                       ; $63b4: $4b
    ld a, d                                       ; $63b5: $7a

    db $4b, $7a

    ld a, a                                       ; $63b8: $7f
    ld b, e                                       ; $63b9: $43
    sbc e                                         ; $63ba: $9b
    ld b, e                                       ; $63bb: $43
    sbc e                                         ; $63bc: $9b
    ld b, e                                       ; $63bd: $43
    sbc e                                         ; $63be: $9b
    ld b, e                                       ; $63bf: $43
    adc l                                         ; $63c0: $8d
    ld b, e                                       ; $63c1: $43
    sbc e                                         ; $63c2: $9b
    ld b, e                                       ; $63c3: $43
    sbc e                                         ; $63c4: $9b
    ld b, e                                       ; $63c5: $43
    sbc e                                         ; $63c6: $9b
    ld b, e                                       ; $63c7: $43

    db $55, $43

    ld [hl], c                                    ; $63ca: $71
    ld b, e                                       ; $63cb: $43

    db $71, $43, $71, $43

    ld h, e                                       ; $63d0: $63
    ld b, e                                       ; $63d1: $43
    ld [hl], c                                    ; $63d2: $71
    ld b, e                                       ; $63d3: $43
    ld [hl], c                                    ; $63d4: $71
    ld b, e                                       ; $63d5: $43
    ld [hl], c                                    ; $63d6: $71
    ld b, e                                       ; $63d7: $43
    nop                                           ; $63d8: $00
    nop                                           ; $63d9: $00

    db $00

    nop                                           ; $63db: $00
    nop                                           ; $63dc: $00
    db $20                                        ; $63dd: $20

    db $20

    db $20                                        ; $63df: $20

    db $00

jr_006_63e1:
    nop                                           ; $63e1: $00
    nop                                           ; $63e2: $00
    nop                                           ; $63e3: $00
    nop                                           ; $63e4: $00
    nop                                           ; $63e5: $00
    nop                                           ; $63e6: $00
    nop                                           ; $63e7: $00
    nop                                           ; $63e8: $00
    nop                                           ; $63e9: $00
    nop                                           ; $63ea: $00
    nop                                           ; $63eb: $00
    nop                                           ; $63ec: $00
    nop                                           ; $63ed: $00
    ld [$0000], sp                                ; $63ee: $08 $00 $00
    nop                                           ; $63f1: $00
    nop                                           ; $63f2: $00
    nop                                           ; $63f3: $00
    nop                                           ; $63f4: $00
    nop                                           ; $63f5: $00
    nop                                           ; $63f6: $00
    nop                                           ; $63f7: $00
    nop                                           ; $63f8: $00
    nop                                           ; $63f9: $00
    nop                                           ; $63fa: $00
    nop                                           ; $63fb: $00
    nop                                           ; $63fc: $00
    nop                                           ; $63fd: $00
    nop                                           ; $63fe: $00

jr_006_63ff:
    nop                                           ; $63ff: $00
    nop                                           ; $6400: $00
    nop                                           ; $6401: $00
    nop                                           ; $6402: $00
    nop                                           ; $6403: $00
    nop                                           ; $6404: $00
    nop                                           ; $6405: $00
    nop                                           ; $6406: $00
    nop                                           ; $6407: $00
    nop                                           ; $6408: $00
    nop                                           ; $6409: $00
    nop                                           ; $640a: $00
    nop                                           ; $640b: $00
    nop                                           ; $640c: $00
    nop                                           ; $640d: $00
    nop                                           ; $640e: $00
    nop                                           ; $640f: $00
    nop                                           ; $6410: $00
    nop                                           ; $6411: $00
    nop                                           ; $6412: $00
    nop                                           ; $6413: $00
    nop                                           ; $6414: $00
    nop                                           ; $6415: $00
    nop                                           ; $6416: $00
    nop                                           ; $6417: $00
    nop                                           ; $6418: $00
    nop                                           ; $6419: $00
    nop                                           ; $641a: $00
    nop                                           ; $641b: $00
    nop                                           ; $641c: $00
    nop                                           ; $641d: $00
    nop                                           ; $641e: $00
    nop                                           ; $641f: $00
    nop                                           ; $6420: $00
    nop                                           ; $6421: $00
    nop                                           ; $6422: $00
    ld a, [de]                                    ; $6423: $1a
    nop                                           ; $6424: $00
    nop                                           ; $6425: $00
    nop                                           ; $6426: $00
    nop                                           ; $6427: $00
    nop                                           ; $6428: $00
    nop                                           ; $6429: $00
    nop                                           ; $642a: $00
    nop                                           ; $642b: $00

    db $23, $06

    ld [hl-], a                                   ; $642e: $32
    db $06                                        ; $642f: $06

    db $41, $06, $50, $06

    ld e, a                                       ; $6434: $5f
    ld b, $6e                                     ; $6435: $06 $6e
    ld b, $7d                                     ; $6437: $06 $7d
    ld b, $8c                                     ; $6439: $06 $8c
    ld b, $71                                     ; $643b: $06 $71
    rlca                                          ; $643d: $07
    ld [hl], c                                    ; $643e: $71
    rlca                                          ; $643f: $07
    ld [hl], c                                    ; $6440: $71
    rlca                                          ; $6441: $07
    ld [hl], c                                    ; $6442: $71
    rlca                                          ; $6443: $07
    ld [hl], c                                    ; $6444: $71
    rlca                                          ; $6445: $07
    ld [hl], c                                    ; $6446: $71
    rlca                                          ; $6447: $07
    ld [hl], c                                    ; $6448: $71
    rlca                                          ; $6449: $07
    ld [hl], c                                    ; $644a: $71
    rlca                                          ; $644b: $07
    ld [hl], c                                    ; $644c: $71
    rlca                                          ; $644d: $07
    ld [hl], c                                    ; $644e: $71
    rlca                                          ; $644f: $07
    ld [hl], c                                    ; $6450: $71
    rlca                                          ; $6451: $07
    ld [hl], c                                    ; $6452: $71
    rlca                                          ; $6453: $07
    ld [hl], c                                    ; $6454: $71
    rlca                                          ; $6455: $07
    ld [hl], c                                    ; $6456: $71
    rlca                                          ; $6457: $07
    ld [hl], c                                    ; $6458: $71
    rlca                                          ; $6459: $07
    ld [hl], c                                    ; $645a: $71
    rlca                                          ; $645b: $07
    ld [hl], c                                    ; $645c: $71
    rlca                                          ; $645d: $07
    ld [hl], c                                    ; $645e: $71
    rlca                                          ; $645f: $07
    and c                                         ; $6460: $a1
    rlca                                          ; $6461: $07
    and c                                         ; $6462: $a1
    rlca                                          ; $6463: $07
    sbc e                                         ; $6464: $9b
    ld b, $aa                                     ; $6465: $06 $aa
    ld b, $b9                                     ; $6467: $06 $b9
    ld b, $c8                                     ; $6469: $06 $c8
    db $06                                        ; $646b: $06

    db $00

    db $01                                        ; $646d: $01

    db $03, $02

    inc b                                         ; $6470: $04
    dec b                                         ; $6471: $05
    ld b, $06                                     ; $6472: $06 $06
    ld [bc], a                                    ; $6474: $02
    nop                                           ; $6475: $00
    dec b                                         ; $6476: $05
    rlca                                          ; $6477: $07
    dec b                                         ; $6478: $05
    dec b                                         ; $6479: $05
    dec b                                         ; $647a: $05
    ld bc, $0001                                  ; $647b: $01 $01 $00
    rlca                                          ; $647e: $07
    ld b, $00                                     ; $647f: $06 $00
    ld b, $02                                     ; $6481: $06 $02
    rlca                                          ; $6483: $07
    ld b, $01                                     ; $6484: $06 $01
    dec b                                         ; $6486: $05
    nop                                           ; $6487: $00
    nop                                           ; $6488: $00
    ld [bc], a                                    ; $6489: $02
    inc b                                         ; $648a: $04
    ld bc, $2521                                  ; $648b: $01 $21 $25
    nop                                           ; $648e: $00
    add hl, bc                                    ; $648f: $09
    ld [hl], $00                                  ; $6490: $36 $00
    call Call_000_2e82                            ; $6492: $cd $82 $2e
    ld d, a                                       ; $6495: $57
    call Call_000_08ec                            ; $6496: $cd $ec $08
    ret                                           ; $6499: $c9


    ldh a, [$d8]                                  ; $649a: $f0 $d8
    cp $0e                                        ; $649c: $fe $0e
    jp Jump_000_0039                              ; $649e: $c3 $39 $00


    ld a, [$cb28]                                 ; $64a1: $fa $28 $cb
    or a                                          ; $64a4: $b7
    jp Jump_000_0039                              ; $64a5: $c3 $39 $00


    push bc                                       ; $64a8: $c5
    xor a                                         ; $64a9: $af
    ldh [$c1], a                                  ; $64aa: $e0 $c1
    ld a, $89                                     ; $64ac: $3e $89
    ldh [$bd], a                                  ; $64ae: $e0 $bd
    ld a, $4b                                     ; $64b0: $3e $4b
    ldh [$be], a                                  ; $64b2: $e0 $be
    call Call_000_347b                            ; $64b4: $cd $7b $34
    pop bc                                        ; $64b7: $c1
    ret                                           ; $64b8: $c9


    xor a                                         ; $64b9: $af
    ld [$cb2a], a                                 ; $64ba: $ea $2a $cb
    ld a, $01                                     ; $64bd: $3e $01
    ld [$cb2b], a                                 ; $64bf: $ea $2b $cb
    ret                                           ; $64c2: $c9


    ld a, $01                                     ; $64c3: $3e $01
    ld [$cb2c], a                                 ; $64c5: $ea $2c $cb
    ret                                           ; $64c8: $c9


    ld a, [$cb2a]                                 ; $64c9: $fa $2a $cb
    call Call_000_0902                            ; $64cc: $cd $02 $09
    ld a, [$cb2a]                                 ; $64cf: $fa $2a $cb
    ld hl, $cb2b                                  ; $64d2: $21 $2b $cb
    add [hl]                                      ; $64d5: $86
    ld [$cb2a], a                                 ; $64d6: $ea $2a $cb
    cp $ff                                        ; $64d9: $fe $ff
    jr z, jr_006_64e8                             ; $64db: $28 $0b

    cp $04                                        ; $64dd: $fe $04
    ret nz                                        ; $64df: $c0

    ld a, $03                                     ; $64e0: $3e $03
    ld [$cb2a], a                                 ; $64e2: $ea $2a $cb
    ld [hl], $ff                                  ; $64e5: $36 $ff
    ret                                           ; $64e7: $c9


jr_006_64e8:
    ld a, $00                                     ; $64e8: $3e $00
    ld [$cb2a], a                                 ; $64ea: $ea $2a $cb
    ld [hl], $01                                  ; $64ed: $36 $01
    ret                                           ; $64ef: $c9


    call Call_006_4fdb                            ; $64f0: $cd $db $4f
    jp Jump_000_090d                              ; $64f3: $c3 $0d $09


    call Call_006_4fdb                            ; $64f6: $cd $db $4f
    ld a, d                                       ; $64f9: $7a
    add $10                                       ; $64fa: $c6 $10
    ld d, a                                       ; $64fc: $57
    ld a, e                                       ; $64fd: $7b
    add $10                                       ; $64fe: $c6 $10
    ld e, a                                       ; $6500: $5f
    call Call_000_090d                            ; $6501: $cd $0d $09
    ld a, [$cb2c]                                 ; $6504: $fa $2c $cb
    or a                                          ; $6507: $b7
    ret z                                         ; $6508: $c8

    xor a                                         ; $6509: $af
    ld [$cb2c], a                                 ; $650a: $ea $2c $cb
    ldh a, [$d5]                                  ; $650d: $f0 $d5
    add $42                                       ; $650f: $c6 $42
    ldh [$c1], a                                  ; $6511: $e0 $c1
    ld a, $9e                                     ; $6513: $3e $9e
    ldh [$bd], a                                  ; $6515: $e0 $bd
    ld a, $68                                     ; $6517: $3e $68
    ldh [$be], a                                  ; $6519: $e0 $be
    call Call_000_3474                            ; $651b: $cd $74 $34
    cp $09                                        ; $651e: $fe $09
    jr c, jr_006_6524                             ; $6520: $38 $02

    ld a, $09                                     ; $6522: $3e $09

jr_006_6524:
    jp Jump_000_08ec                              ; $6524: $c3 $ec $08


    ld hl, $0006                                  ; $6527: $21 $06 $00
    add hl, bc                                    ; $652a: $09
    ld a, [hl]                                    ; $652b: $7e
    cp $9c                                        ; $652c: $fe $9c
    ret c                                         ; $652e: $d8

    call Call_000_0e9d                            ; $652f: $cd $9d $0e
    ldh a, [$cc]                                  ; $6532: $f0 $cc
    cp $3e                                        ; $6534: $fe $3e
    jr nz, jr_006_653d                            ; $6536: $20 $05

    ld a, $3e                                     ; $6538: $3e $3e
    jp Jump_000_2448                              ; $653a: $c3 $48 $24


jr_006_653d:
    ldh a, [rSVBK]                                ; $653d: $f0 $70
    push af                                       ; $653f: $f5
    ld a, $06                                     ; $6540: $3e $06
    ldh [rSVBK], a                                ; $6542: $e0 $70
    ld a, $00                                     ; $6544: $3e $00
    ld [$d6d3], a                                 ; $6546: $ea $d3 $d6
    pop af                                        ; $6549: $f1
    ldh [rSVBK], a                                ; $654a: $e0 $70
    ld a, $02                                     ; $654c: $3e $02
    ld [$c0bb], a                                 ; $654e: $ea $bb $c0
    ld a, $0b                                     ; $6551: $3e $0b
    jp Jump_000_2448                              ; $6553: $c3 $48 $24


Call_006_6556:
    ld hl, $cbc2                                  ; $6556: $21 $c2 $cb
    ld e, [hl]                                    ; $6559: $5e
    inc hl                                        ; $655a: $23
    ld d, [hl]                                    ; $655b: $56
    ld hl, $0006                                  ; $655c: $21 $06 $00
    add hl, de                                    ; $655f: $19
    ld a, [hl]                                    ; $6560: $7e
    ld hl, $cbc0                                  ; $6561: $21 $c0 $cb
    ld e, [hl]                                    ; $6564: $5e
    inc hl                                        ; $6565: $23
    ld d, [hl]                                    ; $6566: $56
    ld hl, $0006                                  ; $6567: $21 $06 $00
    add hl, de                                    ; $656a: $19
    sub [hl]                                      ; $656b: $96
    ret nc                                        ; $656c: $d0

    xor a                                         ; $656d: $af
    ret                                           ; $656e: $c9


    call Call_006_6556                            ; $656f: $cd $56 $65
    cp $0e                                        ; $6572: $fe $0e
    jr nc, jr_006_6599                            ; $6574: $30 $23

    ld hl, $000f                                  ; $6576: $21 $0f $00
    add hl, de                                    ; $6579: $19
    ld a, [hl]                                    ; $657a: $7e
    sub $05                                       ; $657b: $d6 $05
    add a                                         ; $657d: $87
    add a                                         ; $657e: $87
    add a                                         ; $657f: $87
    cpl                                           ; $6580: $2f
    inc a                                         ; $6581: $3c
    ld hl, $000f                                  ; $6582: $21 $0f $00
    add hl, bc                                    ; $6585: $09
    ld [hl+], a                                   ; $6586: $22
    rla                                           ; $6587: $17
    sbc a                                         ; $6588: $9f
    ld [hl], a                                    ; $6589: $77
    ld hl, $002b                                  ; $658a: $21 $2b $00
    add hl, bc                                    ; $658d: $09
    res 0, [hl]                                   ; $658e: $cb $86
    ld hl, $002d                                  ; $6590: $21 $2d $00
    add hl, bc                                    ; $6593: $09
    set 4, [hl]                                   ; $6594: $cb $e6
    set 3, [hl]                                   ; $6596: $cb $de
    ret                                           ; $6598: $c9


jr_006_6599:
    ld hl, $002b                                  ; $6599: $21 $2b $00
    add hl, bc                                    ; $659c: $09
    set 0, [hl]                                   ; $659d: $cb $c6
    ld hl, $002d                                  ; $659f: $21 $2d $00
    add hl, bc                                    ; $65a2: $09
    res 4, [hl]                                   ; $65a3: $cb $a6
    res 3, [hl]                                   ; $65a5: $cb $9e
    ld hl, $0006                                  ; $65a7: $21 $06 $00
    add hl, bc                                    ; $65aa: $09
    ld [hl], $b4                                  ; $65ab: $36 $b4
    ld hl, $000f                                  ; $65ad: $21 $0f $00
    add hl, bc                                    ; $65b0: $09
    ld [hl], $00                                  ; $65b1: $36 $00
    ret                                           ; $65b3: $c9


    call Call_000_2e82                            ; $65b4: $cd $82 $2e
    call Call_000_08ec                            ; $65b7: $cd $ec $08
    ld a, $68                                     ; $65ba: $3e $68
    call Call_000_2722                            ; $65bc: $cd $22 $27
    add $08                                       ; $65bf: $c6 $08
    ld d, a                                       ; $65c1: $57
    ld e, $b4                                     ; $65c2: $1e $b4
    jp Jump_000_090d                              ; $65c4: $c3 $0d $09


    ld hl, $000f                                  ; $65c7: $21 $0f $00
    add hl, bc                                    ; $65ca: $09
    xor a                                         ; $65cb: $af
    ld [hl+], a                                   ; $65cc: $22
    ld [hl+], a                                   ; $65cd: $22
    ld [hl+], a                                   ; $65ce: $22
    ld [hl+], a                                   ; $65cf: $22
    ld hl, $cbbe                                  ; $65d0: $21 $be $cb
    ld e, [hl]                                    ; $65d3: $5e
    inc hl                                        ; $65d4: $23
    ld d, [hl]                                    ; $65d5: $56
    ld hl, $0006                                  ; $65d6: $21 $06 $00
    add hl, de                                    ; $65d9: $19
    ld e, [hl]                                    ; $65da: $5e
    inc hl                                        ; $65db: $23
    inc hl                                        ; $65dc: $23
    inc hl                                        ; $65dd: $23
    ld d, [hl]                                    ; $65de: $56
    jp Jump_000_090d                              ; $65df: $c3 $0d $09


    ld hl, $cbbe                                  ; $65e2: $21 $be $cb
    ld e, [hl]                                    ; $65e5: $5e
    inc hl                                        ; $65e6: $23
    ld d, [hl]                                    ; $65e7: $56
    ld hl, $0006                                  ; $65e8: $21 $06 $00
    add hl, de                                    ; $65eb: $19
    ld a, [hl]                                    ; $65ec: $7e
    and $f8                                       ; $65ed: $e6 $f8
    rra                                           ; $65ef: $1f
    rra                                           ; $65f0: $1f
    rra                                           ; $65f1: $1f
    ld hl, $000f                                  ; $65f2: $21 $0f $00
    add hl, bc                                    ; $65f5: $09
    ld [hl], a                                    ; $65f6: $77
    cp $05                                        ; $65f7: $fe $05
    ret c                                         ; $65f9: $d8

    call Call_006_6556                            ; $65fa: $cd $56 $65
    ret nz                                        ; $65fd: $c0

    ld hl, $000f                                  ; $65fe: $21 $0f $00
    add hl, bc                                    ; $6601: $09
    ld [hl], $05                                  ; $6602: $36 $05
    ret                                           ; $6604: $c9


    ld hl, $0003                                  ; $6605: $21 $03 $00
    add hl, bc                                    ; $6608: $09
    ld a, [hl]                                    ; $6609: $7e
    or a                                          ; $660a: $b7
    jr z, jr_006_6615                             ; $660b: $28 $08

    dec [hl]                                      ; $660d: $35
    ld a, $09                                     ; $660e: $3e $09
    call Call_000_08ec                            ; $6610: $cd $ec $08
    jr jr_006_6689                                ; $6613: $18 $74

jr_006_6615:
    ldh a, [$a4]                                  ; $6615: $f0 $a4
    bit 6, a                                      ; $6617: $cb $77
    call nz, Call_006_6646                        ; $6619: $c4 $46 $66
    ldh a, [$a4]                                  ; $661c: $f0 $a4
    bit 7, a                                      ; $661e: $cb $7f
    call nz, Call_006_6668                        ; $6620: $c4 $68 $66
    ldh a, [$a4]                                  ; $6623: $f0 $a4
    bit 5, a                                      ; $6625: $cb $6f
    call nz, Call_006_6689                        ; $6627: $c4 $89 $66
    ldh a, [$a4]                                  ; $662a: $f0 $a4
    bit 4, a                                      ; $662c: $cb $67
    call nz, Call_006_669a                        ; $662e: $c4 $9a $66
    ldh a, [$a4]                                  ; $6631: $f0 $a4
    and $c0                                       ; $6633: $e6 $c0
    ret nz                                        ; $6635: $c0

    ld hl, $0002                                  ; $6636: $21 $02 $00
    add hl, bc                                    ; $6639: $09
    ld a, [hl]                                    ; $663a: $7e
    or a                                          ; $663b: $b7
    ret z                                         ; $663c: $c8

    ld [hl], $00                                  ; $663d: $36 $00
    ld de, $5955                                  ; $663f: $11 $55 $59
    call Call_000_0a50                            ; $6642: $cd $50 $0a
    ret                                           ; $6645: $c9


Call_006_6646:
    ldh a, [$a5]                                  ; $6646: $f0 $a5
    bit 6, a                                      ; $6648: $cb $77
    jr z, jr_006_664c                             ; $664a: $28 $00

jr_006_664c:
    ld hl, $0002                                  ; $664c: $21 $02 $00
    add hl, bc                                    ; $664f: $09
    ld a, [hl]                                    ; $6650: $7e
    cp $01                                        ; $6651: $fe $01
    jr z, jr_006_665d                             ; $6653: $28 $08

    ld [hl], $01                                  ; $6655: $36 $01
    ld de, $5965                                  ; $6657: $11 $65 $59
    call Call_000_0a50                            ; $665a: $cd $50 $0a

jr_006_665d:
    ld hl, $0009                                  ; $665d: $21 $09 $00
    add hl, bc                                    ; $6660: $09
    ld a, [hl]                                    ; $6661: $7e
    cp $10                                        ; $6662: $fe $10
    ret c                                         ; $6664: $d8

    ret z                                         ; $6665: $c8

    dec [hl]                                      ; $6666: $35
    ret                                           ; $6667: $c9


Call_006_6668:
    ldh a, [$a5]                                  ; $6668: $f0 $a5
    bit 7, a                                      ; $666a: $cb $7f
    jr z, jr_006_666e                             ; $666c: $28 $00

jr_006_666e:
    ld hl, $0002                                  ; $666e: $21 $02 $00
    add hl, bc                                    ; $6671: $09
    ld a, [hl]                                    ; $6672: $7e
    cp $02                                        ; $6673: $fe $02
    jr z, jr_006_667f                             ; $6675: $28 $08

    ld [hl], $02                                  ; $6677: $36 $02
    ld de, $595d                                  ; $6679: $11 $5d $59
    call Call_000_0a50                            ; $667c: $cd $50 $0a

jr_006_667f:
    ld hl, $0009                                  ; $667f: $21 $09 $00
    add hl, bc                                    ; $6682: $09
    ld a, [hl]                                    ; $6683: $7e
    cp $70                                        ; $6684: $fe $70
    ret nc                                        ; $6686: $d0

    inc [hl]                                      ; $6687: $34
    ret                                           ; $6688: $c9


Call_006_6689:
jr_006_6689:
    ldh a, [$a5]                                  ; $6689: $f0 $a5
    bit 5, a                                      ; $668b: $cb $6f
    jr z, jr_006_668f                             ; $668d: $28 $00

jr_006_668f:
    ld hl, $0006                                  ; $668f: $21 $06 $00
    add hl, bc                                    ; $6692: $09
    ld a, [hl]                                    ; $6693: $7e
    cp $10                                        ; $6694: $fe $10
    ret c                                         ; $6696: $d8

    ret z                                         ; $6697: $c8

    dec [hl]                                      ; $6698: $35
    ret                                           ; $6699: $c9


Call_006_669a:
    ldh a, [$a5]                                  ; $669a: $f0 $a5
    bit 4, a                                      ; $669c: $cb $67
    jr z, jr_006_66a0                             ; $669e: $28 $00

jr_006_66a0:
    ld hl, $0006                                  ; $66a0: $21 $06 $00
    add hl, bc                                    ; $66a3: $09
    ld a, [hl]                                    ; $66a4: $7e
    cp $40                                        ; $66a5: $fe $40
    ret nc                                        ; $66a7: $d0

    inc [hl]                                      ; $66a8: $34
    ret                                           ; $66a9: $c9


    xor a                                         ; $66aa: $af
    jp Jump_000_2e9a                              ; $66ab: $c3 $9a $2e


    ldh [$c1], a                                  ; $66ae: $e0 $c1
    ld a, $c0                                     ; $66b0: $3e $c0
    ldh [$bd], a                                  ; $66b2: $e0 $bd
    ld a, $74                                     ; $66b4: $3e $74
    ldh [$be], a                                  ; $66b6: $e0 $be
    call Call_000_345f                            ; $66b8: $cd $5f $34
    ld a, [$cbcd]                                 ; $66bb: $fa $cd $cb
    ld e, a                                       ; $66be: $5f
    ld a, [$cbce]                                 ; $66bf: $fa $ce $cb
    cp e                                          ; $66c2: $bb
    ret nc                                        ; $66c3: $d0

    ld a, $01                                     ; $66c4: $3e $01
    jp Jump_000_2e9a                              ; $66c6: $c3 $9a $2e


    ldh [$c1], a                                  ; $66c9: $e0 $c1
    ld a, $52                                     ; $66cb: $3e $52
    ldh [$bd], a                                  ; $66cd: $e0 $bd
    ld a, $75                                     ; $66cf: $3e $75
    ldh [$be], a                                  ; $66d1: $e0 $be
    jp Jump_000_346d                              ; $66d3: $c3 $6d $34


    ld a, [$cb86]                                 ; $66d6: $fa $86 $cb
    inc a                                         ; $66d9: $3c
    add a                                         ; $66da: $87
    add a                                         ; $66db: $87
    add a                                         ; $66dc: $87
    dec a                                         ; $66dd: $3d
    ld hl, $0006                                  ; $66de: $21 $06 $00
    add hl, bc                                    ; $66e1: $09
    ld [hl+], a                                   ; $66e2: $22
    ld [hl], $00                                  ; $66e3: $36 $00
    call Call_000_2e82                            ; $66e5: $cd $82 $2e
    sub $05                                       ; $66e8: $d6 $05
    ld e, a                                       ; $66ea: $5f
    add e                                         ; $66eb: $83
    add e                                         ; $66ec: $83
    ld d, a                                       ; $66ed: $57
    ld a, [$cb87]                                 ; $66ee: $fa $87 $cb
    add d                                         ; $66f1: $82
    add a                                         ; $66f2: $87
    add a                                         ; $66f3: $87
    add a                                         ; $66f4: $87
    dec a                                         ; $66f5: $3d
    ld hl, $0009                                  ; $66f6: $21 $09 $00
    add hl, bc                                    ; $66f9: $09
    ld [hl+], a                                   ; $66fa: $22
    ld [hl], $00                                  ; $66fb: $36 $00
    ret                                           ; $66fd: $c9


    ldh a, [$d5]                                  ; $66fe: $f0 $d5
    dec a                                         ; $6700: $3d
    ld d, a                                       ; $6701: $57
    add a                                         ; $6702: $87
    add a                                         ; $6703: $87
    add d                                         ; $6704: $82
    add $04                                       ; $6705: $c6 $04
    add a                                         ; $6707: $87
    add a                                         ; $6708: $87
    add a                                         ; $6709: $87
    ld hl, $0009                                  ; $670a: $21 $09 $00
    add hl, bc                                    ; $670d: $09
    ld [hl+], a                                   ; $670e: $22
    ld [hl], $00                                  ; $670f: $36 $00
    ld hl, $0001                                  ; $6711: $21 $01 $00
    add hl, bc                                    ; $6714: $09
    ld a, [hl]                                    ; $6715: $7e
    ld d, a                                       ; $6716: $57
    add a                                         ; $6717: $87
    add a                                         ; $6718: $87
    add d                                         ; $6719: $82
    add $02                                       ; $671a: $c6 $02
    add a                                         ; $671c: $87
    add a                                         ; $671d: $87
    add a                                         ; $671e: $87
    ld hl, $0006                                  ; $671f: $21 $06 $00
    add hl, bc                                    ; $6722: $09
    ld [hl+], a                                   ; $6723: $22
    ld [hl], $00                                  ; $6724: $36 $00
    ret                                           ; $6726: $c9


    db $40, $00

    ld b, l                                       ; $6729: $45
    nop                                           ; $672a: $00

    db $4a, $00

    ldh [rP1], a                                  ; $672d: $e0 $00
    push hl                                       ; $672f: $e5
    nop                                           ; $6730: $00
    ld [$8000], a                                 ; $6731: $ea $00 $80
    ld bc, $0185                                  ; $6734: $01 $85 $01
    adc d                                         ; $6737: $8a
    db $01                                        ; $6738: $01

    push bc                                       ; $6739: $c5
    ldh a, [$d5]                                  ; $673a: $f0 $d5
    dec a                                         ; $673c: $3d
    ld d, a                                       ; $673d: $57
    add a                                         ; $673e: $87
    add d                                         ; $673f: $82
    ld hl, $0001                                  ; $6740: $21 $01 $00
    add hl, bc                                    ; $6743: $09
    add [hl]                                      ; $6744: $86
    ld hl, $6727                                  ; $6745: $21 $27 $67
    call Call_000_319d                            ; $6748: $cd $9d $31
    ldh a, [$d5]                                  ; $674b: $f0 $d5
    add a                                         ; $674d: $87
    dec a                                         ; $674e: $3d
    ld b, a                                       ; $674f: $47
    rst $18                                       ; $6750: $df
    ld c, $80                                     ; $6751: $0e $80
    ld e, $04                                     ; $6753: $1e $04
    ld d, $04                                     ; $6755: $16 $04
    call Call_000_13c4                            ; $6757: $cd $c4 $13
    rst $20                                       ; $675a: $e7
    pop bc                                        ; $675b: $c1
    ret                                           ; $675c: $c9


    ld a, [$cbb0]                                 ; $675d: $fa $b0 $cb
    dec a                                         ; $6760: $3d
    ld [$cbb0], a                                 ; $6761: $ea $b0 $cb
    ret                                           ; $6764: $c9


    call Call_000_2e82                            ; $6765: $cd $82 $2e
    ldh [$d9], a                                  ; $6768: $e0 $d9
    ldh [$c1], a                                  ; $676a: $e0 $c1
    ld a, $66                                     ; $676c: $3e $66
    ldh [$bd], a                                  ; $676e: $e0 $bd
    ld a, $5a                                     ; $6770: $3e $5a
    ldh [$be], a                                  ; $6772: $e0 $be
    call Call_000_345f                            ; $6774: $cd $5f $34
    ld l, a                                       ; $6777: $6f
    ldh a, [$d8]                                  ; $6778: $f0 $d8
    cp l                                          ; $677a: $bd
    ret z                                         ; $677b: $c8

    ldh [$bc], a                                  ; $677c: $e0 $bc
    ldh a, [rSVBK]                                ; $677e: $f0 $70
    push af                                       ; $6780: $f5
    ld a, $06                                     ; $6781: $3e $06
    ldh [rSVBK], a                                ; $6783: $e0 $70
    ldh a, [$bc]                                  ; $6785: $f0 $bc
    ld [$d6d1], a                                 ; $6787: $ea $d1 $d6
    ld a, l                                       ; $678a: $7d
    ldh [$da], a                                  ; $678b: $e0 $da
    ld [$d6d2], a                                 ; $678d: $ea $d2 $d6
    pop af                                        ; $6790: $f1
    ldh [rSVBK], a                                ; $6791: $e0 $70
    xor a                                         ; $6793: $af
    ld hl, $c32f                                  ; $6794: $21 $2f $c3
    ld [hl+], a                                   ; $6797: $22
    ld [hl+], a                                   ; $6798: $22
    ld [hl+], a                                   ; $6799: $22
    ld [hl+], a                                   ; $679a: $22
    ld [hl+], a                                   ; $679b: $22
    ld [hl], a                                    ; $679c: $77
    ld a, $01                                     ; $679d: $3e $01
    ldh [$de], a                                  ; $679f: $e0 $de
    ld a, $01                                     ; $67a1: $3e $01
    ld [$c0c1], a                                 ; $67a3: $ea $c1 $c0
    ret                                           ; $67a6: $c9


    call Call_000_2e82                            ; $67a7: $cd $82 $2e
    ld l, a                                       ; $67aa: $6f
    ldh a, [$d8]                                  ; $67ab: $f0 $d8
    cp l                                          ; $67ad: $bd
    ret z                                         ; $67ae: $c8

    ldh [$bc], a                                  ; $67af: $e0 $bc
    ldh a, [rSVBK]                                ; $67b1: $f0 $70
    push af                                       ; $67b3: $f5
    ld a, $06                                     ; $67b4: $3e $06
    ldh [rSVBK], a                                ; $67b6: $e0 $70
    ldh a, [$bc]                                  ; $67b8: $f0 $bc
    ld [$d6d1], a                                 ; $67ba: $ea $d1 $d6
    call Call_000_2e82                            ; $67bd: $cd $82 $2e
    ldh [$d8], a                                  ; $67c0: $e0 $d8
    ld [$d6d2], a                                 ; $67c2: $ea $d2 $d6
    ldh [$bc], a                                  ; $67c5: $e0 $bc
    pop af                                        ; $67c7: $f1
    ldh [rSVBK], a                                ; $67c8: $e0 $70
    ldh a, [$bc]                                  ; $67ca: $f0 $bc
    xor a                                         ; $67cc: $af
    ld hl, $c32f                                  ; $67cd: $21 $2f $c3
    ld [hl+], a                                   ; $67d0: $22
    ld [hl+], a                                   ; $67d1: $22
    ld [hl+], a                                   ; $67d2: $22
    ld [hl+], a                                   ; $67d3: $22
    ld [hl+], a                                   ; $67d4: $22
    ld [hl+], a                                   ; $67d5: $22
    ld a, $01                                     ; $67d6: $3e $01
    ldh [$de], a                                  ; $67d8: $e0 $de
    ld a, $01                                     ; $67da: $3e $01
    ld [$c0c1], a                                 ; $67dc: $ea $c1 $c0
    ret                                           ; $67df: $c9


    call Call_000_2e82                            ; $67e0: $cd $82 $2e
    jp Jump_006_62f6                              ; $67e3: $c3 $f6 $62


    call Call_000_2e82                            ; $67e6: $cd $82 $2e
    call Call_006_5de5                            ; $67e9: $cd $e5 $5d
    cp $ff                                        ; $67ec: $fe $ff
    jr nz, jr_006_6825                            ; $67ee: $20 $35

    call Call_000_2e82                            ; $67f0: $cd $82 $2e
    call Call_006_5df3                            ; $67f3: $cd $f3 $5d
    cp $ff                                        ; $67f6: $fe $ff
    ret z                                         ; $67f8: $c8

    push bc                                       ; $67f9: $c5
    ld hl, $0001                                  ; $67fa: $21 $01 $00
    add hl, bc                                    ; $67fd: $09
    ld b, [hl]                                    ; $67fe: $46
    ld c, a                                       ; $67ff: $4f
    ld a, b                                       ; $6800: $78
    call Call_006_5e05                            ; $6801: $cd $05 $5e
    ld e, c                                       ; $6804: $59
    ld bc, $1300                                  ; $6805: $01 $00 $13
    ld hl, $1bbe                                  ; $6808: $21 $be $1b
    ld a, $12                                     ; $680b: $3e $12
    call Call_000_395e                            ; $680d: $cd $5e $39
    xor a                                         ; $6810: $af
    ldh [$c1], a                                  ; $6811: $e0 $c1
    ld a, $26                                     ; $6813: $3e $26
    ldh [$bd], a                                  ; $6815: $e0 $bd
    ld a, $44                                     ; $6817: $3e $44
    ldh [$be], a                                  ; $6819: $e0 $be
    call Call_000_3474                            ; $681b: $cd $74 $34
    pop bc                                        ; $681e: $c1
    call Call_000_2e82                            ; $681f: $cd $82 $2e
    jp Jump_006_5e5e                              ; $6822: $c3 $5e $5e


jr_006_6825:
    push bc                                       ; $6825: $c5
    ld hl, $0001                                  ; $6826: $21 $01 $00
    add hl, bc                                    ; $6829: $09
    ld b, [hl]                                    ; $682a: $46
    ld c, a                                       ; $682b: $4f
    ld a, b                                       ; $682c: $78
    call Call_006_5e05                            ; $682d: $cd $05 $5e
    ld a, d                                       ; $6830: $7a
    cp $01                                        ; $6831: $fe $01
    jr nz, jr_006_6854                            ; $6833: $20 $1f

    ld a, $1c                                     ; $6835: $3e $1c
    call Call_000_393e                            ; $6837: $cd $3e $39
    ld c, l                                       ; $683a: $4d
    ld b, h                                       ; $683b: $44
    ld hl, $102d                                  ; $683c: $21 $2d $10
    xor a                                         ; $683f: $af
    ldh [$c1], a                                  ; $6840: $e0 $c1
    ld a, $26                                     ; $6842: $3e $26
    ldh [$bd], a                                  ; $6844: $e0 $bd
    ld a, $44                                     ; $6846: $3e $44
    ldh [$be], a                                  ; $6848: $e0 $be
    call Call_000_3474                            ; $684a: $cd $74 $34
    pop bc                                        ; $684d: $c1
    call Call_000_2e82                            ; $684e: $cd $82 $2e
    jp Jump_006_5e5e                              ; $6851: $c3 $5e $5e


jr_006_6854:
    ld a, $21                                     ; $6854: $3e $21
    call Call_000_393e                            ; $6856: $cd $3e $39
    ld e, c                                       ; $6859: $59
    ld bc, $106c                                  ; $685a: $01 $6c $10
    ld hl, $1030                                  ; $685d: $21 $30 $10
    xor a                                         ; $6860: $af
    ldh [$c1], a                                  ; $6861: $e0 $c1
    ld a, $26                                     ; $6863: $3e $26
    ldh [$bd], a                                  ; $6865: $e0 $bd
    ld a, $44                                     ; $6867: $3e $44
    ldh [$be], a                                  ; $6869: $e0 $be
    call Call_000_3474                            ; $686b: $cd $74 $34
    pop bc                                        ; $686e: $c1
    call Call_000_2e82                            ; $686f: $cd $82 $2e
    jp Jump_006_5e5e                              ; $6872: $c3 $5e $5e


    call Call_000_2e82                            ; $6875: $cd $82 $2e
    ld hl, $646c                                  ; $6878: $21 $6c $64
    rst $08                                       ; $687b: $cf
    jp Jump_000_0902                              ; $687c: $c3 $02 $09


jr_006_687f:
    call Call_000_275f                            ; $687f: $cd $5f $27
    ld a, $08                                     ; $6882: $3e $08
    push bc                                       ; $6884: $c5
    call Call_000_275f                            ; $6885: $cd $5f $27
    pop bc                                        ; $6888: $c1
    cp $03                                        ; $6889: $fe $03
    jr z, jr_006_687f                             ; $688b: $28 $f2

    cp $04                                        ; $688d: $fe $04
    jr z, jr_006_687f                             ; $688f: $28 $ee

    jp Jump_000_0902                              ; $6891: $c3 $02 $09


    ld a, [$cbe9]                                 ; $6894: $fa $e9 $cb
    cp $08                                        ; $6897: $fe $08
    ret nz                                        ; $6899: $c0

    call Call_006_4fdb                            ; $689a: $cd $db $4f
    jp Jump_000_090d                              ; $689d: $c3 $0d $09


    call Call_006_4fdb                            ; $68a0: $cd $db $4f
    jp Jump_000_090d                              ; $68a3: $c3 $0d $09


    ld hl, $002b                                  ; $68a6: $21 $2b $00
    add hl, bc                                    ; $68a9: $09
    res 0, [hl]                                   ; $68aa: $cb $86
    ld a, [$cbe9]                                 ; $68ac: $fa $e9 $cb
    and $08                                       ; $68af: $e6 $08
    ret nz                                        ; $68b1: $c0

    set 0, [hl]                                   ; $68b2: $cb $c6
    ret                                           ; $68b4: $c9


    ld hl, $c34b                                  ; $68b5: $21 $4b $c3
    set 0, [hl]                                   ; $68b8: $cb $c6
    ld a, c                                       ; $68ba: $79
    ld [$cbf3], a                                 ; $68bb: $ea $f3 $cb
    ld a, b                                       ; $68be: $78
    ld [$cbf4], a                                 ; $68bf: $ea $f4 $cb
    ret                                           ; $68c2: $c9


    xor a                                         ; $68c3: $af
    jp Jump_000_2e9a                              ; $68c4: $c3 $9a $2e


    call Call_006_4fe3                            ; $68c7: $cd $e3 $4f
    jp Jump_000_08ec                              ; $68ca: $c3 $ec $08


    call Call_006_4fdb                            ; $68cd: $cd $db $4f
    jp Jump_000_090d                              ; $68d0: $c3 $0d $09


    call Call_000_2e8a                            ; $68d3: $cd $8a $2e
    and $1f                                       ; $68d6: $e6 $1f
    rra                                           ; $68d8: $1f
    srl a                                         ; $68d9: $cb $3f
    jp Jump_000_0902                              ; $68db: $c3 $02 $09


    ldh a, [$d8]                                  ; $68de: $f0 $d8
    call Call_000_2e9e                            ; $68e0: $cd $9e $2e
    ld hl, $63e0                                  ; $68e3: $21 $e0 $63
    rst $08                                       ; $68e6: $cf
    ld e, [hl]                                    ; $68e7: $5e
    call Call_000_2e82                            ; $68e8: $cd $82 $2e
    add e                                         ; $68eb: $83
    push af                                       ; $68ec: $f5
    ld hl, $642c                                  ; $68ed: $21 $2c $64
    call Call_000_3194                            ; $68f0: $cd $94 $31
    ldh [$c1], a                                  ; $68f3: $e0 $c1
    ld a, $b5                                     ; $68f5: $3e $b5
    ldh [$bd], a                                  ; $68f7: $e0 $bd
    ld a, $63                                     ; $68f9: $3e $63
    ldh [$be], a                                  ; $68fb: $e0 $be
    call Call_000_3466                            ; $68fd: $cd $66 $34
    pop af                                        ; $6900: $f1
    ld hl, $646c                                  ; $6901: $21 $6c $64
    rst $08                                       ; $6904: $cf
    jp Jump_000_0902                              ; $6905: $c3 $02 $09


    ld de, $0eaa                                  ; $6908: $11 $aa $0e
    ldh [$c1], a                                  ; $690b: $e0 $c1
    ld a, $b5                                     ; $690d: $3e $b5
    ldh [$bd], a                                  ; $690f: $e0 $bd
    ld a, $63                                     ; $6911: $3e $63
    ldh [$be], a                                  ; $6913: $e0 $be
    jp Jump_000_3466                              ; $6915: $c3 $66 $34


    ld hl, $000f                                  ; $6918: $21 $0f $00
    add hl, bc                                    ; $691b: $09
    ld a, $ff                                     ; $691c: $3e $ff
    call Call_000_2722                            ; $691e: $cd $22 $27
    push af                                       ; $6921: $f5
    ldh [$c1], a                                  ; $6922: $e0 $c1
    ld a, $0f                                     ; $6924: $3e $0f
    ldh [$bd], a                                  ; $6926: $e0 $bd
    ld a, $6b                                     ; $6928: $3e $6b
    ldh [$be], a                                  ; $692a: $e0 $be
    call Call_000_345f                            ; $692c: $cd $5f $34
    ld e, a                                       ; $692f: $5f
    rla                                           ; $6930: $17
    ld a, $00                                     ; $6931: $3e $00
    sbc a                                         ; $6933: $9f
    sla e                                         ; $6934: $cb $23
    rla                                           ; $6936: $17
    sla e                                         ; $6937: $cb $23
    rla                                           ; $6939: $17
    ld [hl], e                                    ; $693a: $73
    inc hl                                        ; $693b: $23
    ld [hl+], a                                   ; $693c: $22
    pop af                                        ; $693d: $f1
    ldh [$c1], a                                  ; $693e: $e0 $c1
    ld a, $11                                     ; $6940: $3e $11
    ldh [$bd], a                                  ; $6942: $e0 $bd
    ld a, $6b                                     ; $6944: $3e $6b
    ldh [$be], a                                  ; $6946: $e0 $be
    call Call_000_345f                            ; $6948: $cd $5f $34
    ld e, a                                       ; $694b: $5f
    rla                                           ; $694c: $17
    ld a, $00                                     ; $694d: $3e $00
    sbc a                                         ; $694f: $9f
    sla e                                         ; $6950: $cb $23
    rla                                           ; $6952: $17
    sla e                                         ; $6953: $cb $23
    rla                                           ; $6955: $17
    ld [hl], e                                    ; $6956: $73
    inc hl                                        ; $6957: $23
    ld [hl+], a                                   ; $6958: $22
    ret                                           ; $6959: $c9


    xor a                                         ; $695a: $af
    ld [$ce17], a                                 ; $695b: $ea $17 $ce
    push bc                                       ; $695e: $c5
    ldh a, [$d0]                                  ; $695f: $f0 $d0
    or a                                          ; $6961: $b7
    jr z, jr_006_696b                             ; $6962: $28 $07

    ld a, $43                                     ; $6964: $3e $43
    call Call_000_2448                            ; $6966: $cd $48 $24
    jr jr_006_697f                                ; $6969: $18 $14

jr_006_696b:
    call Call_000_2e82                            ; $696b: $cd $82 $2e
    ld d, a                                       ; $696e: $57
    ld [$cdd5], a                                 ; $696f: $ea $d5 $cd
    ldh [$c1], a                                  ; $6972: $e0 $c1
    ld a, $b9                                     ; $6974: $3e $b9
    ldh [$bd], a                                  ; $6976: $e0 $bd
    ld a, $57                                     ; $6978: $3e $57
    ldh [$be], a                                  ; $697a: $e0 $be
    call Call_000_3474                            ; $697c: $cd $74 $34

jr_006_697f:
    pop bc                                        ; $697f: $c1
    ret                                           ; $6980: $c9


    ld a, $05                                     ; $6981: $3e $05
    call Call_000_2722                            ; $6983: $cd $22 $27
    add $03                                       ; $6986: $c6 $03
    jp Jump_000_0902                              ; $6988: $c3 $02 $09


    ld a, $a2                                     ; $698b: $3e $a2
    jp Jump_000_03a0                              ; $698d: $c3 $a0 $03


    push bc                                       ; $6990: $c5
    ld a, $01                                     ; $6991: $3e $01
    ld e, $02                                     ; $6993: $1e $02
    ldh [$c1], a                                  ; $6995: $e0 $c1
    ld a, $0a                                     ; $6997: $3e $0a
    ldh [$bd], a                                  ; $6999: $e0 $bd
    ld a, $7c                                     ; $699b: $3e $7c
    ldh [$be], a                                  ; $699d: $e0 $be
    call Call_000_347b                            ; $699f: $cd $7b $34
    pop bc                                        ; $69a2: $c1
    ldh [$c1], a                                  ; $69a3: $e0 $c1
    ld a, $55                                     ; $69a5: $3e $55
    ldh [$bd], a                                  ; $69a7: $e0 $bd
    ld a, $75                                     ; $69a9: $3e $75
    ldh [$be], a                                  ; $69ab: $e0 $be
    jp Jump_000_345f                              ; $69ad: $c3 $5f $34


    ld a, $ff                                     ; $69b0: $3e $ff
    call Call_000_2e9e                            ; $69b2: $cd $9e $2e
    inc a                                         ; $69b5: $3c
    ld hl, $0000                                  ; $69b6: $21 $00 $00
    add hl, bc                                    ; $69b9: $09
    ld [hl], a                                    ; $69ba: $77
    inc a                                         ; $69bb: $3c
    ld [$cb17], a                                 ; $69bc: $ea $17 $cb
    ret                                           ; $69bf: $c9


Call_006_69c0:
    call Call_000_2e8a                            ; $69c0: $cd $8a $2e
    add a                                         ; $69c3: $87
    add a                                         ; $69c4: $87
    ld hl, $6338                                  ; $69c5: $21 $38 $63
    call Call_000_3185                            ; $69c8: $cd $85 $31
    ld e, l                                       ; $69cb: $5d
    ld d, h                                       ; $69cc: $54
    ret                                           ; $69cd: $c9


Call_006_69ce:
    call Call_000_2e82                            ; $69ce: $cd $82 $2e
    ld l, a                                       ; $69d1: $6f
    ld h, $00                                     ; $69d2: $26 $00
    add hl, hl                                    ; $69d4: $29
    add hl, hl                                    ; $69d5: $29
    add hl, de                                    ; $69d6: $19
    ld e, l                                       ; $69d7: $5d
    ld d, h                                       ; $69d8: $54
    ret                                           ; $69d9: $c9


    call Call_000_2e8a                            ; $69da: $cd $8a $2e
    ld hl, $0019                                  ; $69dd: $21 $19 $00
    add hl, bc                                    ; $69e0: $09
    ld [hl], a                                    ; $69e1: $77
    and $04                                       ; $69e2: $e6 $04
    ld a, $20                                     ; $69e4: $3e $20
    jr nz, jr_006_69e9                            ; $69e6: $20 $01

    xor a                                         ; $69e8: $af

jr_006_69e9:
    call Call_000_08ce                            ; $69e9: $cd $ce $08
    jp Jump_006_69f7                              ; $69ec: $c3 $f7 $69


    call Call_006_69c0                            ; $69ef: $cd $c0 $69
    call Call_006_69ce                            ; $69f2: $cd $ce $69
    jr jr_006_6a00                                ; $69f5: $18 $09

Jump_006_69f7:
    call Call_006_69c0                            ; $69f7: $cd $c0 $69
    ld hl, $0004                                  ; $69fa: $21 $04 $00
    add hl, de                                    ; $69fd: $19
    ld e, l                                       ; $69fe: $5d
    ld d, h                                       ; $69ff: $54

jr_006_6a00:
    ld hl, $000f                                  ; $6a00: $21 $0f $00
    add hl, bc                                    ; $6a03: $09
    push de                                       ; $6a04: $d5
    ld d, h                                       ; $6a05: $54
    ld e, l                                       ; $6a06: $5d
    pop hl                                        ; $6a07: $e1
    jp Jump_000_124b                              ; $6a08: $c3 $4b $12


    call Call_000_2e8a                            ; $6a0b: $cd $8a $2e
    push af                                       ; $6a0e: $f5
    ld hl, $6398                                  ; $6a0f: $21 $98 $63
    call Call_000_3194                            ; $6a12: $cd $94 $31
    call Call_000_0a50                            ; $6a15: $cd $50 $0a
    pop af                                        ; $6a18: $f1
    ld hl, $63d8                                  ; $6a19: $21 $d8 $63
    rst $08                                       ; $6a1c: $cf
    call Call_000_08ce                            ; $6a1d: $cd $ce $08
    call Call_000_2e8a                            ; $6a20: $cd $8a $2e
    ld hl, $6398                                  ; $6a23: $21 $98 $63
    push af                                       ; $6a26: $f5
    jr jr_006_6a78                                ; $6a27: $18 $4f

    call Call_000_2e8a                            ; $6a29: $cd $8a $2e
    cp $04                                        ; $6a2c: $fe $04
    jr c, jr_006_6a37                             ; $6a2e: $38 $07

    ld a, $20                                     ; $6a30: $3e $20
    call Call_000_08ce                            ; $6a32: $cd $ce $08
    jr jr_006_6a3b                                ; $6a35: $18 $04

jr_006_6a37:
    xor a                                         ; $6a37: $af
    call Call_000_08ce                            ; $6a38: $cd $ce $08

jr_006_6a3b:
    call Call_000_2e8a                            ; $6a3b: $cd $8a $2e
    ld hl, $63a8                                  ; $6a3e: $21 $a8 $63
    call Call_000_3194                            ; $6a41: $cd $94 $31
    jp Jump_000_0a50                              ; $6a44: $c3 $50 $0a


    call Call_000_2e8a                            ; $6a47: $cd $8a $2e
    ld hl, $63a8                                  ; $6a4a: $21 $a8 $63
    push af                                       ; $6a4d: $f5
    jr jr_006_6a78                                ; $6a4e: $18 $28

    call Call_000_2e8a                            ; $6a50: $cd $8a $2e
    ld hl, $63b8                                  ; $6a53: $21 $b8 $63
    call Call_000_3194                            ; $6a56: $cd $94 $31
    jp Jump_000_0a50                              ; $6a59: $c3 $50 $0a


    call Call_000_2e8a                            ; $6a5c: $cd $8a $2e
    ld hl, $63b8                                  ; $6a5f: $21 $b8 $63
    push af                                       ; $6a62: $f5
    jr jr_006_6a78                                ; $6a63: $18 $13

    call Call_000_2e8a                            ; $6a65: $cd $8a $2e
    ld hl, $63c8                                  ; $6a68: $21 $c8 $63
    call Call_000_3194                            ; $6a6b: $cd $94 $31
    jp Jump_000_0a50                              ; $6a6e: $c3 $50 $0a


    call Call_000_2e8a                            ; $6a71: $cd $8a $2e
    ld hl, $63c8                                  ; $6a74: $21 $c8 $63
    push af                                       ; $6a77: $f5

jr_006_6a78:
    call Call_000_3194                            ; $6a78: $cd $94 $31
    ld hl, $0023                                  ; $6a7b: $21 $23 $00
    add hl, bc                                    ; $6a7e: $09
    ld a, e                                       ; $6a7f: $7b
    ld [hl+], a                                   ; $6a80: $22
    ld a, d                                       ; $6a81: $7a
    ld [hl], a                                    ; $6a82: $77
    inc hl                                        ; $6a83: $23
    ld a, [hl]                                    ; $6a84: $7e
    or a                                          ; $6a85: $b7
    jr nz, jr_006_6a8b                            ; $6a86: $20 $03

    ld a, $01                                     ; $6a88: $3e $01
    ld [hl], a                                    ; $6a8a: $77

jr_006_6a8b:
    pop af                                        ; $6a8b: $f1
    ld hl, $63d8                                  ; $6a8c: $21 $d8 $63
    rst $08                                       ; $6a8f: $cf
    jp Jump_000_08ce                              ; $6a90: $c3 $ce $08


    ld a, $03                                     ; $6a93: $3e $03
    ld e, $03                                     ; $6a95: $1e $03
    call Call_000_0a6f                            ; $6a97: $cd $6f $0a
    jr nz, jr_006_6aa2                            ; $6a9a: $20 $06

    call Call_000_3118                            ; $6a9c: $cd $18 $31
    jp nz, Jump_000_0039                          ; $6a9f: $c2 $39 $00

jr_006_6aa2:
    ld a, $03                                     ; $6aa2: $3e $03
    ld e, $0a                                     ; $6aa4: $1e $0a
    call Call_000_0a6f                            ; $6aa6: $cd $6f $0a
    jr nz, jr_006_6ab1                            ; $6aa9: $20 $06

    call Call_000_3118                            ; $6aab: $cd $18 $31
    jp nz, Jump_000_0039                          ; $6aae: $c2 $39 $00

jr_006_6ab1:
    ld a, $03                                     ; $6ab1: $3e $03
    ld e, $0b                                     ; $6ab3: $1e $0b
    call Call_000_0a6f                            ; $6ab5: $cd $6f $0a
    jr nz, jr_006_6ac0                            ; $6ab8: $20 $06

    call Call_000_3118                            ; $6aba: $cd $18 $31
    jp nz, Jump_000_0039                          ; $6abd: $c2 $39 $00

jr_006_6ac0:
    ld a, $03                                     ; $6ac0: $3e $03
    ld e, $0c                                     ; $6ac2: $1e $0c
    call Call_000_0a6f                            ; $6ac4: $cd $6f $0a
    jr z, jr_006_6acd                             ; $6ac7: $28 $04

    xor a                                         ; $6ac9: $af
    jp Jump_000_0039                              ; $6aca: $c3 $39 $00


jr_006_6acd:
    call Call_000_3118                            ; $6acd: $cd $18 $31
    jp Jump_000_0039                              ; $6ad0: $c3 $39 $00


    ldh a, [$a8]                                  ; $6ad3: $f0 $a8
    cp $06                                        ; $6ad5: $fe $06
    jr nz, jr_006_6afd                            ; $6ad7: $20 $24

    ldh a, [rLY]                                  ; $6ad9: $f0 $44
    cp $90                                        ; $6adb: $fe $90
    ret c                                         ; $6add: $d8

    ret nz                                        ; $6ade: $c0

    ldh a, [rSVBK]                                ; $6adf: $f0 $70
    push af                                       ; $6ae1: $f5
    ld a, $01                                     ; $6ae2: $3e $01
    ldh [rSVBK], a                                ; $6ae4: $e0 $70
    ld c, $2f                                     ; $6ae6: $0e $2f
    ld de, $9800                                  ; $6ae8: $11 $00 $98
    ld hl, $d800                                  ; $6aeb: $21 $00 $d8
    rst $28                                       ; $6aee: $ef
    ld a, $01                                     ; $6aef: $3e $01
    ldh [rVBK], a                                 ; $6af1: $e0 $4f
    ld hl, $dc00                                  ; $6af3: $21 $00 $dc
    rst $28                                       ; $6af6: $ef
    xor a                                         ; $6af7: $af
    ldh [$a8], a                                  ; $6af8: $e0 $a8
    jp Jump_006_6ba2                              ; $6afa: $c3 $a2 $6b


jr_006_6afd:
    ldh a, [$a8]                                  ; $6afd: $f0 $a8
    cp $05                                        ; $6aff: $fe $05
    jr nz, jr_006_6b08                            ; $6b01: $20 $05

    ld hl, $d800                                  ; $6b03: $21 $00 $d8
    jr jr_006_6b15                                ; $6b06: $18 $0d

jr_006_6b08:
    ldh a, [$a8]                                  ; $6b08: $f0 $a8
    cp $04                                        ; $6b0a: $fe $04
    jr nz, jr_006_6b3a                            ; $6b0c: $20 $2c

    ld a, $01                                     ; $6b0e: $3e $01
    ldh [rVBK], a                                 ; $6b10: $e0 $4f
    ld hl, $dc00                                  ; $6b12: $21 $00 $dc

jr_006_6b15:
    ldh a, [rLY]                                  ; $6b15: $f0 $44
    cp $90                                        ; $6b17: $fe $90
    ret c                                         ; $6b19: $d8

    cp $94                                        ; $6b1a: $fe $94
    ret nc                                        ; $6b1c: $d0

    ld de, $9800                                  ; $6b1d: $11 $00 $98
    ld a, [$c0c4]                                 ; $6b20: $fa $c4 $c0
    bit 2, a                                      ; $6b23: $cb $57
    jr z, jr_006_6b2a                             ; $6b25: $28 $03

    ld de, $9c00                                  ; $6b27: $11 $00 $9c

jr_006_6b2a:
    ldh a, [rSVBK]                                ; $6b2a: $f0 $70
    push af                                       ; $6b2c: $f5
    ld a, $01                                     ; $6b2d: $3e $01
    ldh [rSVBK], a                                ; $6b2f: $e0 $70
    ld c, $3f                                     ; $6b31: $0e $3f
    rst $28                                       ; $6b33: $ef
    ld hl, $ffa8                                  ; $6b34: $21 $a8 $ff
    dec [hl]                                      ; $6b37: $35
    jr jr_006_6ba2                                ; $6b38: $18 $68

jr_006_6b3a:
    ldh a, [$a8]                                  ; $6b3a: $f0 $a8
    cp $03                                        ; $6b3c: $fe $03
    jr nz, jr_006_6b6f                            ; $6b3e: $20 $2f

    ldh a, [rLY]                                  ; $6b40: $f0 $44
    cp $90                                        ; $6b42: $fe $90
    ret c                                         ; $6b44: $d8

    cp $94                                        ; $6b45: $fe $94
    ret nc                                        ; $6b47: $d0

    xor a                                         ; $6b48: $af
    ldh [$a8], a                                  ; $6b49: $e0 $a8
    ldh a, [rSVBK]                                ; $6b4b: $f0 $70
    push af                                       ; $6b4d: $f5
    ld a, $01                                     ; $6b4e: $3e $01
    ldh [rSVBK], a                                ; $6b50: $e0 $70
    ld de, $9800                                  ; $6b52: $11 $00 $98
    ld a, [$c0c4]                                 ; $6b55: $fa $c4 $c0
    bit 2, a                                      ; $6b58: $cb $57
    jr z, jr_006_6b5f                             ; $6b5a: $28 $03

    ld de, $9c00                                  ; $6b5c: $11 $00 $9c

jr_006_6b5f:
    ld hl, $d800                                  ; $6b5f: $21 $00 $d8
    ld c, $23                                     ; $6b62: $0e $23
    rst $28                                       ; $6b64: $ef
    ld a, $01                                     ; $6b65: $3e $01
    ldh [rVBK], a                                 ; $6b67: $e0 $4f
    ld hl, $dc00                                  ; $6b69: $21 $00 $dc
    rst $28                                       ; $6b6c: $ef
    jr jr_006_6ba2                                ; $6b6d: $18 $33

jr_006_6b6f:
    cp $02                                        ; $6b6f: $fe $02
    ret nz                                        ; $6b71: $c0

    ldh a, [rLY]                                  ; $6b72: $f0 $44
    cp $90                                        ; $6b74: $fe $90
    ret c                                         ; $6b76: $d8

    ldh a, [rLY]                                  ; $6b77: $f0 $44
    cp $96                                        ; $6b79: $fe $96
    ret nc                                        ; $6b7b: $d0

    ld hl, $ffa8                                  ; $6b7c: $21 $a8 $ff
    dec [hl]                                      ; $6b7f: $35
    ldh a, [rSVBK]                                ; $6b80: $f0 $70
    push af                                       ; $6b82: $f5
    ld a, $01                                     ; $6b83: $3e $01
    ldh [rSVBK], a                                ; $6b85: $e0 $70
    ld de, $9800                                  ; $6b87: $11 $00 $98
    ld a, [$c0c4]                                 ; $6b8a: $fa $c4 $c0
    bit 2, a                                      ; $6b8d: $cb $57
    jr z, jr_006_6b94                             ; $6b8f: $28 $03

    ld de, $9c00                                  ; $6b91: $11 $00 $9c

jr_006_6b94:
    ld hl, $d800                                  ; $6b94: $21 $00 $d8
    ld c, $0f                                     ; $6b97: $0e $0f
    rst $28                                       ; $6b99: $ef
    ld a, $01                                     ; $6b9a: $3e $01
    ldh [rVBK], a                                 ; $6b9c: $e0 $4f
    ld hl, $dc00                                  ; $6b9e: $21 $00 $dc
    rst $28                                       ; $6ba1: $ef

Jump_006_6ba2:
jr_006_6ba2:
    xor a                                         ; $6ba2: $af
    ldh [rVBK], a                                 ; $6ba3: $e0 $4f
    pop af                                        ; $6ba5: $f1
    ldh [rSVBK], a                                ; $6ba6: $e0 $70
    ret                                           ; $6ba8: $c9


    ldh a, [rSVBK]                                ; $6ba9: $f0 $70
    push af                                       ; $6bab: $f5
    ld a, $06                                     ; $6bac: $3e $06
    ldh [rSVBK], a                                ; $6bae: $e0 $70
    ld a, [$d6cd]                                 ; $6bb0: $fa $cd $d6
    ldh [$bc], a                                  ; $6bb3: $e0 $bc
    pop af                                        ; $6bb5: $f1
    ldh [rSVBK], a                                ; $6bb6: $e0 $70
    ldh a, [$bc]                                  ; $6bb8: $f0 $bc
    or a                                          ; $6bba: $b7
    jp Jump_000_0039                              ; $6bbb: $c3 $39 $00


    ld a, $03                                     ; $6bbe: $3e $03
    ld e, $08                                     ; $6bc0: $1e $08
    call Call_000_0a6f                            ; $6bc2: $cd $6f $0a
    inc hl                                        ; $6bc5: $23
    ld [hl], $00                                  ; $6bc6: $36 $00
    ret                                           ; $6bc8: $c9


    push bc                                       ; $6bc9: $c5
    ld a, $03                                     ; $6bca: $3e $03
    ld e, $09                                     ; $6bcc: $1e $09
    call Call_000_0a6f                            ; $6bce: $cd $6f $0a
    ld de, $001c                                  ; $6bd1: $11 $1c $00
    add hl, de                                    ; $6bd4: $19
    ld [hl], $01                                  ; $6bd5: $36 $01
    ld a, $72                                     ; $6bd7: $3e $72
    ld e, $ff                                     ; $6bd9: $1e $ff
    call Call_000_0a6f                            ; $6bdb: $cd $6f $0a
    ld c, l                                       ; $6bde: $4d
    ld b, h                                       ; $6bdf: $44
    call Call_000_0e9d                            ; $6be0: $cd $9d $0e
    pop bc                                        ; $6be3: $c1
    ret                                           ; $6be4: $c9


    ldh a, [rSVBK]                                ; $6be5: $f0 $70
    push af                                       ; $6be7: $f5
    ld a, $06                                     ; $6be8: $3e $06
    ldh [rSVBK], a                                ; $6bea: $e0 $70
    ld a, [$d5d5]                                 ; $6bec: $fa $d5 $d5
    ldh [$bc], a                                  ; $6bef: $e0 $bc
    pop af                                        ; $6bf1: $f1
    ldh [rSVBK], a                                ; $6bf2: $e0 $70
    ldh a, [$bc]                                  ; $6bf4: $f0 $bc
    cp $3f                                        ; $6bf6: $fe $3f
    jp Jump_000_0039                              ; $6bf8: $c3 $39 $00


    add hl, bc                                    ; $6bfb: $09
    dec bc                                        ; $6bfc: $0b
    db $10                                        ; $6bfd: $10
    ld de, $3926                                  ; $6bfe: $11 $26 $39
    ld c, b                                       ; $6c01: $48
    ld d, h                                       ; $6c02: $54
    ld e, l                                       ; $6c03: $5d
    rst $38                                       ; $6c04: $ff
    ldh a, [rSVBK]                                ; $6c05: $f0 $70
    push af                                       ; $6c07: $f5
    ld a, $06                                     ; $6c08: $3e $06
    ldh [rSVBK], a                                ; $6c0a: $e0 $70
    ld a, [$d5d5]                                 ; $6c0c: $fa $d5 $d5
    ld d, a                                       ; $6c0f: $57
    pop af                                        ; $6c10: $f1
    ldh [rSVBK], a                                ; $6c11: $e0 $70
    ld hl, $6bfb                                  ; $6c13: $21 $fb $6b

jr_006_6c16:
    ld a, [hl+]                                   ; $6c16: $2a
    cp d                                          ; $6c17: $ba
    jp z, Jump_000_0039                           ; $6c18: $ca $39 $00

    inc a                                         ; $6c1b: $3c
    jr nz, jr_006_6c16                            ; $6c1c: $20 $f8

    inc a                                         ; $6c1e: $3c
    jp Jump_000_0039                              ; $6c1f: $c3 $39 $00


    ldh a, [$a5]                                  ; $6c22: $f0 $a5
    and $03                                       ; $6c24: $e6 $03
    jp Jump_000_0039                              ; $6c26: $c3 $39 $00


    ld a, $01                                     ; $6c29: $3e $01
    ld [$ce0a], a                                 ; $6c2b: $ea $0a $ce
    ld hl, $ce05                                  ; $6c2e: $21 $05 $ce
    ld a, $ff                                     ; $6c31: $3e $ff
    ld [hl+], a                                   ; $6c33: $22
    ld [hl+], a                                   ; $6c34: $22
    ld [hl+], a                                   ; $6c35: $22
    ld [hl], a                                    ; $6c36: $77
    ld hl, $cdfe                                  ; $6c37: $21 $fe $cd
    ld [hl+], a                                   ; $6c3a: $22
    ld [hl+], a                                   ; $6c3b: $22
    ld a, $01                                     ; $6c3c: $3e $01
    ld [hl+], a                                   ; $6c3e: $22
    ret                                           ; $6c3f: $c9


    push bc                                       ; $6c40: $c5
    push de                                       ; $6c41: $d5
    push bc                                       ; $6c42: $c5
    xor a                                         ; $6c43: $af
    ld d, $04                                     ; $6c44: $16 $04
    ld e, $02                                     ; $6c46: $1e $02
    ld hl, $624b                                  ; $6c48: $21 $4b $62
    ldh [$c1], a                                  ; $6c4b: $e0 $c1
    ld a, $3d                                     ; $6c4d: $3e $3d
    ldh [$bd], a                                  ; $6c4f: $e0 $bd
    ld a, $25                                     ; $6c51: $3e $25
    ldh [$be], a                                  ; $6c53: $e0 $be
    call Call_000_3487                            ; $6c55: $cd $87 $34
    pop bc                                        ; $6c58: $c1
    ld hl, $0028                                  ; $6c59: $21 $28 $00
    add hl, bc                                    ; $6c5c: $09
    ld a, [hl]                                    ; $6c5d: $7e
    cp $05                                        ; $6c5e: $fe $05
    jr c, jr_006_6c6a                             ; $6c60: $38 $08

    cp $0b                                        ; $6c62: $fe $0b
    jr c, jr_006_6c6a                             ; $6c64: $38 $04

    ld e, $05                                     ; $6c66: $1e $05
    jr jr_006_6c6c                                ; $6c68: $18 $02

jr_006_6c6a:
    ld e, $04                                     ; $6c6a: $1e $04

jr_006_6c6c:
    ld hl, $002c                                  ; $6c6c: $21 $2c $00
    add hl, bc                                    ; $6c6f: $09
    ld a, [hl]                                    ; $6c70: $7e
    and $f8                                       ; $6c71: $e6 $f8
    or e                                          ; $6c73: $b3
    ld [hl], a                                    ; $6c74: $77
    pop de                                        ; $6c75: $d1
    pop bc                                        ; $6c76: $c1
    ret                                           ; $6c77: $c9


    ld bc, $8025                                  ; $6c78: $01 $25 $80
    nop                                           ; $6c7b: $00
    nop                                           ; $6c7c: $00
    nop                                           ; $6c7d: $00
    xor d                                         ; $6c7e: $aa
    inc h                                         ; $6c7f: $24
    ld bc, $0102                                  ; $6c80: $01 $02 $01
    ld [bc], a                                    ; $6c83: $02
    adc b                                         ; $6c84: $88
    ld l, h                                       ; $6c85: $6c
    sub c                                         ; $6c86: $91
    ld l, h                                       ; $6c87: $6c
    ld bc, $e008                                  ; $6c88: $01 $08 $e0
    nop                                           ; $6c8b: $00
    nop                                           ; $6c8c: $00
    inc b                                         ; $6c8d: $04
    inc b                                         ; $6c8e: $04
    rrca                                          ; $6c8f: $0f
    ld bc, $0801                                  ; $6c90: $01 $01 $08
    ldh a, [rP1]                                  ; $6c93: $f0 $00
    nop                                           ; $6c95: $00
    inc b                                         ; $6c96: $04
    inc b                                         ; $6c97: $04
    rrca                                          ; $6c98: $0f
    ld a, [bc]                                    ; $6c99: $0a
    ld bc, $0002                                  ; $6c9a: $01 $02 $00
    rrca                                          ; $6c9d: $0f
    ld a, [bc]                                    ; $6c9e: $0a
    inc b                                         ; $6c9f: $04
    inc b                                         ; $6ca0: $04
    rrca                                          ; $6ca1: $0f
    ld a, [bc]                                    ; $6ca2: $0a
    or c                                          ; $6ca3: $b1
    ld l, h                                       ; $6ca4: $6c
    cp d                                          ; $6ca5: $ba
    ld l, h                                       ; $6ca6: $6c
    jp $cc6c                                      ; $6ca7: $c3 $6c $cc


    ld l, h                                       ; $6caa: $6c
    push de                                       ; $6cab: $d5
    ld l, h                                       ; $6cac: $6c
    sbc $6c                                       ; $6cad: $de $6c
    rst $20                                       ; $6caf: $e7
    ld l, h                                       ; $6cb0: $6c
    ld bc, $0000                                  ; $6cb1: $01 $00 $00
    nop                                           ; $6cb4: $00
    ld [de], a                                    ; $6cb5: $12
    ld [bc], a                                    ; $6cb6: $02
    inc bc                                        ; $6cb7: $03
    db $10                                        ; $6cb8: $10
    dec b                                         ; $6cb9: $05
    ld bc, $0000                                  ; $6cba: $01 $00 $00
    ld [bc], a                                    ; $6cbd: $02
    ld [de], a                                    ; $6cbe: $12
    ld [bc], a                                    ; $6cbf: $02
    inc bc                                        ; $6cc0: $03
    db $10                                        ; $6cc1: $10
    dec b                                         ; $6cc2: $05
    ld bc, $0000                                  ; $6cc3: $01 $00 $00
    inc b                                         ; $6cc6: $04
    ld [de], a                                    ; $6cc7: $12
    ld [bc], a                                    ; $6cc8: $02
    inc bc                                        ; $6cc9: $03
    db $10                                        ; $6cca: $10
    ld c, $01                                     ; $6ccb: $0e $01
    nop                                           ; $6ccd: $00
    nop                                           ; $6cce: $00
    ld b, $12                                     ; $6ccf: $06 $12
    ld [bc], a                                    ; $6cd1: $02
    inc bc                                        ; $6cd2: $03
    db $10                                        ; $6cd3: $10
    ld c, $01                                     ; $6cd4: $0e $01
    nop                                           ; $6cd6: $00
    nop                                           ; $6cd7: $00
    ld b, $08                                     ; $6cd8: $06 $08
    ld b, $02                                     ; $6cda: $06 $02
    rlca                                          ; $6cdc: $07
    ld [$0001], sp                                ; $6cdd: $08 $01 $00
    nop                                           ; $6ce0: $00
    ld [$0612], sp                                ; $6ce1: $08 $12 $06
    ld [bc], a                                    ; $6ce4: $02
    rlca                                          ; $6ce5: $07
    ld [$0001], sp                                ; $6ce6: $08 $01 $00
    nop                                           ; $6ce9: $00
    ld c, $12                                     ; $6cea: $0e $12
    ld b, $02                                     ; $6cec: $06 $02
    rlca                                          ; $6cee: $07
    ld [$0021], sp                                ; $6cef: $08 $21 $00
    ld b, c                                       ; $6cf2: $41
    ld bc, $6cf8                                  ; $6cf3: $01 $f8 $6c
    dec b                                         ; $6cf6: $05
    ld l, l                                       ; $6cf7: $6d
    ld sp, $ff01                                  ; $6cf8: $31 $01 $ff
    ld l, h                                       ; $6cfb: $6c
    or b                                          ; $6cfc: $b0
    nop                                           ; $6cfd: $00
    ld b, c                                       ; $6cfe: $41
    ld hl, $41d8                                  ; $6cff: $21 $d8 $41
    ret c                                         ; $6d02: $d8

    ld h, c                                       ; $6d03: $61
    ret c                                         ; $6d04: $d8

    ld sp, $0c01                                  ; $6d05: $31 $01 $0c
    ld l, l                                       ; $6d08: $6d
    ret nc                                        ; $6d09: $d0

    nop                                           ; $6d0a: $00
    ld b, c                                       ; $6d0b: $41
    ld b, c                                       ; $6d0c: $41
    reti                                          ; $6d0d: $d9


    ld h, c                                       ; $6d0e: $61
    reti                                          ; $6d0f: $d9


    add c                                         ; $6d10: $81
    reti                                          ; $6d11: $d9


    ld sp, $1901                                  ; $6d12: $31 $01 $19
    ld l, l                                       ; $6d15: $6d
    ldh a, [rP1]                                  ; $6d16: $f0 $00
    ld b, c                                       ; $6d18: $41
    and d                                         ; $6d19: $a2
    ret c                                         ; $6d1a: $d8

    jp nz, $e2d8                                  ; $6d1b: $c2 $d8 $e2

    ret c                                         ; $6d1e: $d8

    ld sp, $2d01                                  ; $6d1f: $31 $01 $2d
    ld l, l                                       ; $6d22: $6d
    db $10                                        ; $6d23: $10
    ld bc, $3141                                  ; $6d24: $01 $41 $31
    ld bc, $6d2d                                  ; $6d27: $01 $2d $6d
    jr nc, jr_006_6d2d                            ; $6d2a: $30 $01

    ld b, c                                       ; $6d2c: $41

jr_006_6d2d:
    and d                                         ; $6d2d: $a2
    reti                                          ; $6d2e: $d9


    jp nz, $e2d9                                  ; $6d2f: $c2 $d9 $e2

    reti                                          ; $6d32: $d9


    ld [bc], a                                    ; $6d33: $02
    jp c, $5567                                   ; $6d34: $da $67 $55

    ld hl, $6c78                                  ; $6d37: $21 $78 $6c
    jp Jump_000_2837                              ; $6d3a: $c3 $37 $28


Call_006_6d3d:
    xor a                                         ; $6d3d: $af
    ld [$cb4a], a                                 ; $6d3e: $ea $4a $cb
    ld [$cb4b], a                                 ; $6d41: $ea $4b $cb
    ld a, $65                                     ; $6d44: $3e $65
    ld [$cb4c], a                                 ; $6d46: $ea $4c $cb
    ld [$cb4d], a                                 ; $6d49: $ea $4d $cb
    jp Jump_006_7e48                              ; $6d4c: $c3 $48 $7e


    ldh a, [$d1]                                  ; $6d4f: $f0 $d1
    or a                                          ; $6d51: $b7
    jr nz, jr_006_6d5c                            ; $6d52: $20 $08

    call Call_006_6d3d                            ; $6d54: $cd $3d $6d
    call Call_006_7939                            ; $6d57: $cd $39 $79
    jr jr_006_6d71                                ; $6d5a: $18 $15

jr_006_6d5c:
    call Call_006_7e13                            ; $6d5c: $cd $13 $7e
    ldh a, [$d0]                                  ; $6d5f: $f0 $d0
    cp $65                                        ; $6d61: $fe $65
    jr c, jr_006_6d67                             ; $6d63: $38 $02

    ld a, $65                                     ; $6d65: $3e $65

jr_006_6d67:
    ld [$cb4c], a                                 ; $6d67: $ea $4c $cb
    call Call_006_6e7b                            ; $6d6a: $cd $7b $6e
    xor a                                         ; $6d6d: $af
    ld [$cb4b], a                                 ; $6d6e: $ea $4b $cb

jr_006_6d71:
    ld hl, $795f                                  ; $6d71: $21 $5f $79
    ldh [$c1], a                                  ; $6d74: $e0 $c1
    ld a, $6d                                     ; $6d76: $3e $6d
    ldh [$bd], a                                  ; $6d78: $e0 $bd
    ld a, $7c                                     ; $6d7a: $3e $7c
    ldh [$be], a                                  ; $6d7c: $e0 $be
    call Call_000_346d                            ; $6d7e: $cd $6d $34
    call Call_000_398b                            ; $6d81: $cd $8b $39
    ld hl, $6251                                  ; $6d84: $21 $51 $62
    xor a                                         ; $6d87: $af
    ld d, $00                                     ; $6d88: $16 $00
    ld e, $01                                     ; $6d8a: $1e $01
    ldh [$c1], a                                  ; $6d8c: $e0 $c1
    ld a, $3d                                     ; $6d8e: $3e $3d
    ldh [$bd], a                                  ; $6d90: $e0 $bd
    ld a, $25                                     ; $6d92: $3e $25
    ldh [$be], a                                  ; $6d94: $e0 $be
    call Call_000_3487                            ; $6d96: $cd $87 $34
    ld hl, $ffb8                                  ; $6d99: $21 $b8 $ff
    ld [hl], $00                                  ; $6d9c: $36 $00
    inc hl                                        ; $6d9e: $23
    ld [hl], $00                                  ; $6d9f: $36 $00
    ld a, $7c                                     ; $6da1: $3e $7c
    ldh [$c1], a                                  ; $6da3: $e0 $c1
    ld a, $d6                                     ; $6da5: $3e $d6
    ldh [$bd], a                                  ; $6da7: $e0 $bd
    ld a, $11                                     ; $6da9: $3e $11
    ldh [$be], a                                  ; $6dab: $e0 $be
    call Call_000_3487                            ; $6dad: $cd $87 $34
    ld a, $02                                     ; $6db0: $3e $02
    ldh [$9b], a                                  ; $6db2: $e0 $9b
    ld a, $7c                                     ; $6db4: $3e $7c
    call Call_000_03a0                            ; $6db6: $cd $a0 $03
    call Call_006_7074                            ; $6db9: $cd $74 $70
    xor a                                         ; $6dbc: $af
    ld hl, $4f48                                  ; $6dbd: $21 $48 $4f
    jp Jump_006_4f6f                              ; $6dc0: $c3 $6f $4f


    call Call_006_6de8                            ; $6dc3: $cd $e8 $6d
    jp nz, Jump_006_6df1                          ; $6dc6: $c2 $f1 $6d

    ldh a, [$a5]                                  ; $6dc9: $f0 $a5
    bit 0, a                                      ; $6dcb: $cb $47
    jp nz, Jump_006_6eaf                          ; $6dcd: $c2 $af $6e

    bit 1, a                                      ; $6dd0: $cb $4f
    jp nz, Jump_006_6f1a                          ; $6dd2: $c2 $1a $6f

    call Call_000_3308                            ; $6dd5: $cd $08 $33
    ld a, [$c0b2]                                 ; $6dd8: $fa $b2 $c0
    or a                                          ; $6ddb: $b7
    call z, Call_006_6f41                         ; $6ddc: $cc $41 $6f
    call Call_006_7e13                            ; $6ddf: $cd $13 $7e
    call Call_006_71e0                            ; $6de2: $cd $e0 $71
    jp Jump_006_4f86                              ; $6de5: $c3 $86 $4f


Call_006_6de8:
    ld a, [$cb4a]                                 ; $6de8: $fa $4a $cb
    ld b, a                                       ; $6deb: $47
    ld a, [$cb4b]                                 ; $6dec: $fa $4b $cb
    and b                                         ; $6def: $a0
    ret                                           ; $6df0: $c9


Jump_006_6df1:
    ld a, [$cb4c]                                 ; $6df1: $fa $4c $cb
    cp $65                                        ; $6df4: $fe $65
    jr nc, jr_006_6e05                            ; $6df6: $30 $0d

    ldh [$c1], a                                  ; $6df8: $e0 $c1
    ld a, $b7                                     ; $6dfa: $3e $b7
    ldh [$bd], a                                  ; $6dfc: $e0 $bd
    ld a, $47                                     ; $6dfe: $3e $47
    ldh [$be], a                                  ; $6e00: $e0 $be
    call Call_000_3474                            ; $6e02: $cd $74 $34

jr_006_6e05:
    ld a, [$cb4d]                                 ; $6e05: $fa $4d $cb
    cp $65                                        ; $6e08: $fe $65
    jr nc, jr_006_6e19                            ; $6e0a: $30 $0d

    ldh [$c1], a                                  ; $6e0c: $e0 $c1
    ld a, $84                                     ; $6e0e: $3e $84
    ldh [$bd], a                                  ; $6e10: $e0 $bd
    ld a, $47                                     ; $6e12: $3e $47
    ldh [$be], a                                  ; $6e14: $e0 $be
    call Call_000_3474                            ; $6e16: $cd $74 $34

jr_006_6e19:
    xor a                                         ; $6e19: $af
    ld [$cb4a], a                                 ; $6e1a: $ea $4a $cb
    ld [$cb4b], a                                 ; $6e1d: $ea $4b $cb
    ld a, $65                                     ; $6e20: $3e $65
    ld [$cb4c], a                                 ; $6e22: $ea $4c $cb
    ld a, $f4                                     ; $6e25: $3e $f4
    call Call_006_7f30                            ; $6e27: $cd $30 $7f
    ld a, $4b                                     ; $6e2a: $3e $4b
    call Call_000_393e                            ; $6e2c: $cd $3e $39
    ld a, [$cdd5]                                 ; $6e2f: $fa $d5 $cd
    ld d, a                                       ; $6e32: $57
    ldh [$c1], a                                  ; $6e33: $e0 $c1
    ld a, $00                                     ; $6e35: $3e $00
    ldh [$bd], a                                  ; $6e37: $e0 $bd
    ld a, $57                                     ; $6e39: $3e $57
    ldh [$be], a                                  ; $6e3b: $e0 $be
    call Call_000_3474                            ; $6e3d: $cd $74 $34
    call Call_006_7074                            ; $6e40: $cd $74 $70
    ld a, $65                                     ; $6e43: $3e $65
    ld [$cb4d], a                                 ; $6e45: $ea $4d $cb
    ld de, $1bb8                                  ; $6e48: $11 $b8 $1b
    ld hl, $6d26                                  ; $6e4b: $21 $26 $6d

Jump_006_6e4e:
    push de                                       ; $6e4e: $d5
    call Call_000_301f                            ; $6e4f: $cd $1f $30
    ld a, $68                                     ; $6e52: $3e $68
    ld [$c1eb], a                                 ; $6e54: $ea $eb $c1
    ld a, $04                                     ; $6e57: $3e $04
    ld [$c234], a                                 ; $6e59: $ea $34 $c2
    call Call_006_6e6d                            ; $6e5c: $cd $6d $6e
    pop hl                                        ; $6e5f: $e1
    ldh [$c1], a                                  ; $6e60: $e0 $c1
    ld a, $1a                                     ; $6e62: $3e $1a
    ldh [$bd], a                                  ; $6e64: $e0 $bd
    ld a, $6e                                     ; $6e66: $3e $6e
    ldh [$be], a                                  ; $6e68: $e0 $be
    jp Jump_000_345f                              ; $6e6a: $c3 $5f $34


Call_006_6e6d:
Jump_006_6e6d:
    ld hl, $01a1                                  ; $6e6d: $21 $a1 $01
    ld c, $80                                     ; $6e70: $0e $80
    ld b, $ff                                     ; $6e72: $06 $ff
    ld e, $0e                                     ; $6e74: $1e $0e
    ld d, $04                                     ; $6e76: $16 $04
    jp Jump_000_13c4                              ; $6e78: $c3 $c4 $13


Call_006_6e7b:
    cp $65                                        ; $6e7b: $fe $65
    jr c, jr_006_6e83                             ; $6e7d: $38 $04

    cp $65                                        ; $6e7f: $fe $65
    jr z, jr_006_6e83                             ; $6e81: $28 $00

jr_006_6e83:
    jp Jump_006_7f97                              ; $6e83: $c3 $97 $7f


    ret                                           ; $6e86: $c9


Jump_006_6e87:
    ld [$cb4d], a                                 ; $6e87: $ea $4d $cb
    xor a                                         ; $6e8a: $af
    ld [$cb4a], a                                 ; $6e8b: $ea $4a $cb
    jp Jump_006_7074                              ; $6e8e: $c3 $74 $70


    ld a, $01                                     ; $6e91: $3e $01
    ld [$cb4b], a                                 ; $6e93: $ea $4b $cb
    ld c, a                                       ; $6e96: $4f
    ld b, $01                                     ; $6e97: $06 $01
    jp Jump_006_70ac                              ; $6e99: $c3 $ac $70


    xor a                                         ; $6e9c: $af
    ld [$cb4b], a                                 ; $6e9d: $ea $4b $cb
    ld c, a                                       ; $6ea0: $4f
    ld b, $01                                     ; $6ea1: $06 $01
    call Call_006_70ac                            ; $6ea3: $cd $ac $70
    ld de, $1bb5                                  ; $6ea6: $11 $b5 $1b
    ld hl, $6d26                                  ; $6ea9: $21 $26 $6d
    jp Jump_006_6e4e                              ; $6eac: $c3 $4e $6e


Jump_006_6eaf:
    ldh a, [$d5]                                  ; $6eaf: $f0 $d5
    rst $00                                       ; $6eb1: $c7
    cp b                                          ; $6eb2: $b8
    ld l, [hl]                                    ; $6eb3: $6e
    cp l                                          ; $6eb4: $bd
    ld l, [hl]                                    ; $6eb5: $6e
    dec c                                         ; $6eb6: $0d
    ld l, a                                       ; $6eb7: $6f
    ld a, $29                                     ; $6eb8: $3e $29
    jp Jump_000_2448                              ; $6eba: $c3 $48 $24


    ld a, $01                                     ; $6ebd: $3e $01
    ld [$cb4a], a                                 ; $6ebf: $ea $4a $cb
    ld a, $f2                                     ; $6ec2: $3e $f2
    call Call_006_7f30                            ; $6ec4: $cd $30 $7f
    rst $18                                       ; $6ec7: $df
    ld a, $01                                     ; $6ec8: $3e $01
    call Call_006_7185                            ; $6eca: $cd $85 $71
    ld a, [$cb4d]                                 ; $6ecd: $fa $4d $cb
    ld b, $01                                     ; $6ed0: $06 $01
    ld c, a                                       ; $6ed2: $4f
    call Call_006_70e0                            ; $6ed3: $cd $e0 $70
    ld b, $00                                     ; $6ed6: $06 $00
    ld c, $01                                     ; $6ed8: $0e $01
    call Call_006_70ac                            ; $6eda: $cd $ac $70
    call RST_20                                   ; $6edd: $cd $20 $00
    ld a, [$c0b2]                                 ; $6ee0: $fa $b2 $c0
    or a                                          ; $6ee3: $b7
    ret nz                                        ; $6ee4: $c0

    ldh [$c1], a                                  ; $6ee5: $e0 $c1
    ld a, $d1                                     ; $6ee7: $3e $d1
    ldh [$bd], a                                  ; $6ee9: $e0 $bd
    ld a, $01                                     ; $6eeb: $3e $01
    ldh [$be], a                                  ; $6eed: $e0 $be
    call Call_000_3487                            ; $6eef: $cd $87 $34
    ldh [$c1], a                                  ; $6ef2: $e0 $c1
    ld a, $11                                     ; $6ef4: $3e $11
    ldh [$bd], a                                  ; $6ef6: $e0 $bd
    ld a, $02                                     ; $6ef8: $3e $02
    ldh [$be], a                                  ; $6efa: $e0 $be
    call Call_000_3487                            ; $6efc: $cd $87 $34
    ld a, $02                                     ; $6eff: $3e $02
    call Call_006_7205                            ; $6f01: $cd $05 $72
    call Call_000_3308                            ; $6f04: $cd $08 $33
    call Call_006_791a                            ; $6f07: $cd $1a $79
    jp Jump_006_6f41                              ; $6f0a: $c3 $41 $6f


jr_006_6f0d:
    call Call_006_7e3b                            ; $6f0d: $cd $3b $7e
    ld a, $02                                     ; $6f10: $3e $02
    ld [$c0bb], a                                 ; $6f12: $ea $bb $c0
    ld a, $0b                                     ; $6f15: $3e $0b
    jp Jump_000_2448                              ; $6f17: $c3 $48 $24


Jump_006_6f1a:
jr_006_6f1a:
    call Call_006_7939                            ; $6f1a: $cd $39 $79
    ld a, [$cb4a]                                 ; $6f1d: $fa $4a $cb
    or a                                          ; $6f20: $b7
    jr z, jr_006_6f0d                             ; $6f21: $28 $ea

    xor a                                         ; $6f23: $af
    ld [$cb4a], a                                 ; $6f24: $ea $4a $cb
    ld a, $f3                                     ; $6f27: $3e $f3
    call Call_006_7f30                            ; $6f29: $cd $30 $7f
    rst $18                                       ; $6f2c: $df
    ld b, $00                                     ; $6f2d: $06 $00
    ld c, $00                                     ; $6f2f: $0e $00
    call Call_006_70ac                            ; $6f31: $cd $ac $70
    ld a, $00                                     ; $6f34: $3e $00
    call Call_006_7185                            ; $6f36: $cd $85 $71
    call RST_20                                   ; $6f39: $cd $20 $00
    ld a, $18                                     ; $6f3c: $3e $18
    jp Jump_000_393e                              ; $6f3e: $c3 $3e $39


Call_006_6f41:
Jump_006_6f41:
    ld a, [$cb4a]                                 ; $6f41: $fa $4a $cb
    or a                                          ; $6f44: $b7
    ret z                                         ; $6f45: $c8

    di                                            ; $6f46: $f3
    call Call_006_6f5d                            ; $6f47: $cd $5d $6f
    jr nz, jr_006_6f55                            ; $6f4a: $20 $09

    ldh a, [$a4]                                  ; $6f4c: $f0 $a4
    and $02                                       ; $6f4e: $e6 $02
    jr nz, jr_006_6f55                            ; $6f50: $20 $03

    call Call_006_6fe0                            ; $6f52: $cd $e0 $6f

jr_006_6f55:
    ei                                            ; $6f55: $fb
    ldh a, [$a4]                                  ; $6f56: $f0 $a4
    and $02                                       ; $6f58: $e6 $02
    jr nz, jr_006_6f1a                            ; $6f5a: $20 $be

    ret                                           ; $6f5c: $c9


Call_006_6f5d:
    push bc                                       ; $6f5d: $c5
    push de                                       ; $6f5e: $d5
    push hl                                       ; $6f5f: $e5
    jr jr_006_6f67                                ; $6f60: $18 $05

jr_006_6f62:
    ld a, $2d                                     ; $6f62: $3e $2d

jr_006_6f64:
    dec a                                         ; $6f64: $3d
    jr nz, jr_006_6f64                            ; $6f65: $20 $fd

jr_006_6f67:
    call Call_006_792e                            ; $6f67: $cd $2e $79
    ld a, $02                                     ; $6f6a: $3e $02
    call Call_006_7942                            ; $6f6c: $cd $42 $79
    ld a, [$c0a1]                                 ; $6f6f: $fa $a1 $c0
    cp $00                                        ; $6f72: $fe $00
    jr nz, jr_006_6fdb                            ; $6f74: $20 $65

    ld hl, $6d35                                  ; $6f76: $21 $35 $6d
    ld b, $02                                     ; $6f79: $06 $02
    call Call_006_7a05                            ; $6f7b: $cd $05 $7a
    jr nz, jr_006_6f62                            ; $6f7e: $20 $e2

    call Call_006_7a03                            ; $6f80: $cd $03 $7a
    jr nz, jr_006_6f62                            ; $6f83: $20 $dd

    call Call_006_792e                            ; $6f85: $cd $2e $79
    call Call_006_796f                            ; $6f88: $cd $6f $79
    cp $02                                        ; $6f8b: $fe $02
    jr z, jr_006_6f62                             ; $6f8d: $28 $d3

    cp $00                                        ; $6f8f: $fe $00
    jr nz, jr_006_6fdb                            ; $6f91: $20 $48

    ld hl, $cb29                                  ; $6f93: $21 $29 $cb
    call Call_006_7a58                            ; $6f96: $cd $58 $7a
    jr nz, jr_006_6f62                            ; $6f99: $20 $c7

    call Call_006_7a56                            ; $6f9b: $cd $56 $7a
    jr nz, jr_006_6f62                            ; $6f9e: $20 $c2

    call Call_006_705a                            ; $6fa0: $cd $5a $70
    jr nz, jr_006_6f62                            ; $6fa3: $20 $bd

    call Call_006_792e                            ; $6fa5: $cd $2e $79
    call Call_006_79b8                            ; $6fa8: $cd $b8 $79
    jr nz, jr_006_6fdb                            ; $6fab: $20 $2e

    ld hl, $cb4c                                  ; $6fad: $21 $4c $cb
    ld b, $01                                     ; $6fb0: $06 $01
    call Call_006_7a05                            ; $6fb2: $cd $05 $7a
    jr nz, jr_006_6f62                            ; $6fb5: $20 $ab

    call Call_006_7a03                            ; $6fb7: $cd $03 $7a
    jr nz, jr_006_6f62                            ; $6fba: $20 $a6

    call Call_006_792e                            ; $6fbc: $cd $2e $79
    call Call_006_796f                            ; $6fbf: $cd $6f $79
    cp $02                                        ; $6fc2: $fe $02
    jr z, jr_006_6f62                             ; $6fc4: $28 $9c

    cp $00                                        ; $6fc6: $fe $00
    jr nz, jr_006_6fdb                            ; $6fc8: $20 $11

    ld hl, $cb29                                  ; $6fca: $21 $29 $cb
    call Call_006_7a58                            ; $6fcd: $cd $58 $7a
    jr nz, jr_006_6f62                            ; $6fd0: $20 $90

    call Call_006_7a56                            ; $6fd2: $cd $56 $7a
    call Call_006_7066                            ; $6fd5: $cd $66 $70
    or a                                          ; $6fd8: $b7
    jr jr_006_6fdc                                ; $6fd9: $18 $01

jr_006_6fdb:
    xor a                                         ; $6fdb: $af

jr_006_6fdc:
    pop hl                                        ; $6fdc: $e1
    pop de                                        ; $6fdd: $d1
    pop bc                                        ; $6fde: $c1
    ret                                           ; $6fdf: $c9


Call_006_6fe0:
    push bc                                       ; $6fe0: $c5
    push de                                       ; $6fe1: $d5
    push hl                                       ; $6fe2: $e5

jr_006_6fe3:
    call Call_006_792e                            ; $6fe3: $cd $2e $79
    ld a, $01                                     ; $6fe6: $3e $01
    call Call_006_7942                            ; $6fe8: $cd $42 $79
    ld a, [$c0a1]                                 ; $6feb: $fa $a1 $c0
    cp $02                                        ; $6fee: $fe $02
    jr z, jr_006_6fe3                             ; $6ff0: $28 $f1

    cp $00                                        ; $6ff2: $fe $00
    jr nz, jr_006_7055                            ; $6ff4: $20 $5f

    ld hl, $cb29                                  ; $6ff6: $21 $29 $cb
    call Call_006_7a58                            ; $6ff9: $cd $58 $7a
    jr nz, jr_006_6fe3                            ; $6ffc: $20 $e5

    call Call_006_7a56                            ; $6ffe: $cd $56 $7a
    jr nz, jr_006_6fe3                            ; $7001: $20 $e0

    call Call_006_705a                            ; $7003: $cd $5a $70
    jr nz, jr_006_6fe3                            ; $7006: $20 $db

    call Call_006_792e                            ; $7008: $cd $2e $79
    call Call_006_79b8                            ; $700b: $cd $b8 $79
    jr nz, jr_006_7055                            ; $700e: $20 $45

    ld hl, $6d35                                  ; $7010: $21 $35 $6d
    ld b, $02                                     ; $7013: $06 $02
    call Call_006_7a05                            ; $7015: $cd $05 $7a
    jr nz, jr_006_6fe3                            ; $7018: $20 $c9

    call Call_006_7a03                            ; $701a: $cd $03 $7a
    jr nz, jr_006_6fe3                            ; $701d: $20 $c4

    call Call_006_792e                            ; $701f: $cd $2e $79
    call Call_006_796f                            ; $7022: $cd $6f $79
    cp $02                                        ; $7025: $fe $02
    jr z, jr_006_6fe3                             ; $7027: $28 $ba

    cp $00                                        ; $7029: $fe $00
    jr nz, jr_006_7055                            ; $702b: $20 $28

    ld hl, $cb29                                  ; $702d: $21 $29 $cb
    call Call_006_7a58                            ; $7030: $cd $58 $7a
    jr nz, jr_006_6fe3                            ; $7033: $20 $ae

    call Call_006_7a56                            ; $7035: $cd $56 $7a
    jr nz, jr_006_6fe3                            ; $7038: $20 $a9

    call Call_006_792e                            ; $703a: $cd $2e $79
    call Call_006_79b8                            ; $703d: $cd $b8 $79
    jr nz, jr_006_7055                            ; $7040: $20 $13

    ld hl, $cb4c                                  ; $7042: $21 $4c $cb
    ld b, $01                                     ; $7045: $06 $01
    call Call_006_7a05                            ; $7047: $cd $05 $7a
    jr nz, jr_006_6fe3                            ; $704a: $20 $97

    call Call_006_7a03                            ; $704c: $cd $03 $7a
    call Call_006_7066                            ; $704f: $cd $66 $70
    or a                                          ; $7052: $b7
    jr jr_006_7056                                ; $7053: $18 $01

jr_006_7055:
    xor a                                         ; $7055: $af

jr_006_7056:
    pop hl                                        ; $7056: $e1
    pop de                                        ; $7057: $d1
    pop bc                                        ; $7058: $c1
    ret                                           ; $7059: $c9


Call_006_705a:
    ld a, [$cb29]                                 ; $705a: $fa $29 $cb
    cp $67                                        ; $705d: $fe $67
    ret nz                                        ; $705f: $c0

    ld a, [$cb2a]                                 ; $7060: $fa $2a $cb
    cp $55                                        ; $7063: $fe $55
    ret                                           ; $7065: $c9


Call_006_7066:
    ld a, [$cb29]                                 ; $7066: $fa $29 $cb
    ld [$cb4d], a                                 ; $7069: $ea $4d $cb
    ld a, $01                                     ; $706c: $3e $01
    ld [$cb4b], a                                 ; $706e: $ea $4b $cb
    jp Jump_006_7939                              ; $7071: $c3 $39 $79


Call_006_7074:
Jump_006_7074:
    ldh a, [$cf]                                  ; $7074: $f0 $cf
    cp $2b                                        ; $7076: $fe $2b
    ret nz                                        ; $7078: $c0

    rst $18                                       ; $7079: $df
    ld a, [$cb4a]                                 ; $707a: $fa $4a $cb
    ld a, $00                                     ; $707d: $3e $00
    call Call_006_7185                            ; $707f: $cd $85 $71
    ld a, [$cb4a]                                 ; $7082: $fa $4a $cb
    ld b, $00                                     ; $7085: $06 $00
    ld c, a                                       ; $7087: $4f
    call Call_006_70ac                            ; $7088: $cd $ac $70
    ld a, [$cb4b]                                 ; $708b: $fa $4b $cb
    ld b, $01                                     ; $708e: $06 $01
    ld c, a                                       ; $7090: $4f
    call Call_006_70ac                            ; $7091: $cd $ac $70
    ld a, [$cb4c]                                 ; $7094: $fa $4c $cb
    ld b, $00                                     ; $7097: $06 $00
    ld c, a                                       ; $7099: $4f
    call Call_006_70e0                            ; $709a: $cd $e0 $70
    ld a, [$cb4d]                                 ; $709d: $fa $4d $cb
    ld b, $01                                     ; $70a0: $06 $01
    ld c, a                                       ; $70a2: $4f
    call Call_006_70e0                            ; $70a3: $cd $e0 $70
    call Call_006_71e0                            ; $70a6: $cd $e0 $71
    jp RST_20                                     ; $70a9: $c3 $20 $00


Call_006_70ac:
Jump_006_70ac:
    push bc                                       ; $70ac: $c5
    ld a, b                                       ; $70ad: $78
    add a                                         ; $70ae: $87
    add c                                         ; $70af: $81
    ld hl, $6ca3                                  ; $70b0: $21 $a3 $6c
    call Call_000_3194                            ; $70b3: $cd $94 $31
    call Call_000_134e                            ; $70b6: $cd $4e $13
    pop bc                                        ; $70b9: $c1
    ld a, b                                       ; $70ba: $78
    cp $01                                        ; $70bb: $fe $01
    jr z, jr_006_70d2                             ; $70bd: $28 $13

    ld a, c                                       ; $70bf: $79
    or a                                          ; $70c0: $b7
    jp z, Jump_006_6e6d                           ; $70c1: $ca $6d $6e

    ld a, [$cb4b]                                 ; $70c4: $fa $4b $cb
    or a                                          ; $70c7: $b7
    ret nz                                        ; $70c8: $c0

    ld de, $1bb2                                  ; $70c9: $11 $b2 $1b
    ld hl, $6d26                                  ; $70cc: $21 $26 $6d
    jp Jump_006_6e4e                              ; $70cf: $c3 $4e $6e


jr_006_70d2:
    ld a, c                                       ; $70d2: $79
    or a                                          ; $70d3: $b7
    jp z, Jump_006_6e6d                           ; $70d4: $ca $6d $6e

    ld de, $1baf                                  ; $70d7: $11 $af $1b
    ld hl, $6d1f                                  ; $70da: $21 $1f $6d
    jp Jump_006_6e4e                              ; $70dd: $c3 $4e $6e


Call_006_70e0:
    push bc                                       ; $70e0: $c5
    call Call_006_713a                            ; $70e1: $cd $3a $71
    pop bc                                        ; $70e4: $c1
    ld a, c                                       ; $70e5: $79
    cp $65                                        ; $70e6: $fe $65
    ret nc                                        ; $70e8: $d0

    push bc                                       ; $70e9: $c5
    ld hl, $6cf4                                  ; $70ea: $21 $f4 $6c
    ld a, b                                       ; $70ed: $78
    call Call_000_318c                            ; $70ee: $cd $8c $31
    ld a, [hl+]                                   ; $70f1: $2a
    ld h, [hl]                                    ; $70f2: $66
    ld l, a                                       ; $70f3: $6f
    call Call_000_301f                            ; $70f4: $cd $1f $30
    pop bc                                        ; $70f7: $c1
    push bc                                       ; $70f8: $c5
    ld a, $70                                     ; $70f9: $3e $70
    ld [$c1eb], a                                 ; $70fb: $ea $eb $c1
    ld a, $02                                     ; $70fe: $3e $02
    ld [$c234], a                                 ; $7100: $ea $34 $c2
    ld hl, $1300                                  ; $7103: $21 $00 $13
    ld a, c                                       ; $7106: $79
    call Call_000_3185                            ; $7107: $cd $85 $31
    ldh [$c1], a                                  ; $710a: $e0 $c1
    ld a, $1a                                     ; $710c: $3e $1a
    ldh [$bd], a                                  ; $710e: $e0 $bd
    ld a, $6e                                     ; $7110: $3e $6e
    ldh [$be], a                                  ; $7112: $e0 $be
    call Call_000_345f                            ; $7114: $cd $5f $34
    pop bc                                        ; $7117: $c1
    ld hl, $0260                                  ; $7118: $21 $60 $02
    ld a, b                                       ; $711b: $78
    swap a                                        ; $711c: $cb $37
    rst $08                                       ; $711e: $cf
    ld a, c                                       ; $711f: $79
    ld d, h                                       ; $7120: $54
    ld e, l                                       ; $7121: $5d
    push bc                                       ; $7122: $c5
    call Call_006_714e                            ; $7123: $cd $4e $71
    pop bc                                        ; $7126: $c1
    ld hl, $6c84                                  ; $7127: $21 $84 $6c
    ld a, b                                       ; $712a: $78
    call Call_000_3194                            ; $712b: $cd $94 $31
    call Call_006_7174                            ; $712e: $cd $74 $71
    ld a, b                                       ; $7131: $78
    or a                                          ; $7132: $b7
    ret z                                         ; $7133: $c8

    ld de, $6c9a                                  ; $7134: $11 $9a $6c
    jp Jump_000_134e                              ; $7137: $c3 $4e $13


Call_006_713a:
    ld a, b                                       ; $713a: $78
    ld hl, $6cf0                                  ; $713b: $21 $f0 $6c
    call Call_000_319d                            ; $713e: $cd $9d $31
    ld a, b                                       ; $7141: $78
    add a                                         ; $7142: $87
    inc a                                         ; $7143: $3c
    ld b, a                                       ; $7144: $47
    ld c, $80                                     ; $7145: $0e $80
    ld e, $12                                     ; $7147: $1e $12
    ld d, $04                                     ; $7149: $16 $04
    jp Jump_000_13c4                              ; $714b: $c3 $c4 $13


Call_006_714e:
    ld hl, $ffb8                                  ; $714e: $21 $b8 $ff
    ld [hl], e                                    ; $7151: $73
    inc hl                                        ; $7152: $23
    ld [hl], d                                    ; $7153: $72

    push bc                                       ; $7154: $c5
    ld hl, $5e9a                                  ; $7155: $21 $9a $5e
    ldh [$c1], a                                  ; $7158: $e0 $c1
    ld a, $4b                                     ; $715a: $3e $4b
    ldh [$bd], a                                  ; $715c: $e0 $bd
    ld a, $29                                     ; $715e: $3e $29
    ldh [$be], a                                  ; $7160: $e0 $be
    call Call_000_3487                            ; $7162: $cd $87 $34
    ldh [$c1], a                                  ; $7165: $e0 $c1
    ld a, $55                                     ; $7167: $3e $55
    ldh [$bd], a                                  ; $7169: $e0 $bd
    ld a, $41                                     ; $716b: $3e $41
    ldh [$be], a                                  ; $716d: $e0 $be
    call Call_000_345f                            ; $716f: $cd $5f $34
    pop bc                                        ; $7172: $c1
    ret                                           ; $7173: $c9


Call_006_7174:
    push bc                                       ; $7174: $c5
    xor a                                         ; $7175: $af
    ldh [$c1], a                                  ; $7176: $e0 $c1
    ld a, $e4                                     ; $7178: $3e $e4
    ldh [$bd], a                                  ; $717a: $e0 $bd
    ld a, $24                                     ; $717c: $3e $24
    ldh [$be], a                                  ; $717e: $e0 $be
    call Call_000_3487                            ; $7180: $cd $87 $34
    pop bc                                        ; $7183: $c1
    ret                                           ; $7184: $c9


Call_006_7185:
    or a                                          ; $7185: $b7
    jr nz, jr_006_71d0                            ; $7186: $20 $48

    ld hl, $cbe9                                  ; $7188: $21 $e9 $cb
    set 2, [hl]                                   ; $718b: $cb $d6
    xor a                                         ; $718d: $af
    ldh [$d5], a                                  ; $718e: $e0 $d5
    ld hl, $6d12                                  ; $7190: $21 $12 $6d
    call Call_000_301f                            ; $7193: $cd $1f $30
    ld a, $68                                     ; $7196: $3e $68
    ld [$c1eb], a                                 ; $7198: $ea $eb $c1
    ld a, $01                                     ; $719b: $3e $01
    ld [$c234], a                                 ; $719d: $ea $34 $c2
    ld hl, $1ba6                                  ; $71a0: $21 $a6 $1b
    ldh [$c1], a                                  ; $71a3: $e0 $c1
    ld a, $1a                                     ; $71a5: $3e $1a
    ldh [$bd], a                                  ; $71a7: $e0 $bd
    ld a, $6e                                     ; $71a9: $3e $6e
    ldh [$be], a                                  ; $71ab: $e0 $be
    call Call_000_345f                            ; $71ad: $cd $5f $34
    ld hl, $1ba9                                  ; $71b0: $21 $a9 $1b
    ldh [$c1], a                                  ; $71b3: $e0 $c1
    ld a, $1a                                     ; $71b5: $3e $1a
    ldh [$bd], a                                  ; $71b7: $e0 $bd
    ld a, $6e                                     ; $71b9: $3e $6e
    ldh [$be], a                                  ; $71bb: $e0 $be
    call Call_000_345f                            ; $71bd: $cd $5f $34
    ld hl, $1bac                                  ; $71c0: $21 $ac $1b
    ldh [$c1], a                                  ; $71c3: $e0 $c1
    ld a, $1a                                     ; $71c5: $3e $1a
    ldh [$bd], a                                  ; $71c7: $e0 $bd
    ld a, $6e                                     ; $71c9: $3e $6e
    ldh [$be], a                                  ; $71cb: $e0 $be
    jp Jump_000_345f                              ; $71cd: $c3 $5f $34


jr_006_71d0:
    xor a                                         ; $71d0: $af
    ld [$cbe9], a                                 ; $71d1: $ea $e9 $cb
    ld c, $80                                     ; $71d4: $0e $80
    ld e, $0d                                     ; $71d6: $1e $0d
    ld d, $03                                     ; $71d8: $16 $03
    ld hl, $00a2                                  ; $71da: $21 $a2 $00
    jp Jump_000_13c2                              ; $71dd: $c3 $c2 $13


Call_006_71e0:
    ld a, [$c0b2]                                 ; $71e0: $fa $b2 $c0
    or a                                          ; $71e3: $b7
    jr z, jr_006_71fa                             ; $71e4: $28 $14

    ld a, [$c0b3]                                 ; $71e6: $fa $b3 $c0
    or a                                          ; $71e9: $b7
    jr z, jr_006_71f0                             ; $71ea: $28 $04

    ld a, $01                                     ; $71ec: $3e $01
    jr jr_006_7205                                ; $71ee: $18 $15

jr_006_71f0:
    call Call_006_6d3d                            ; $71f0: $cd $3d $6d
    xor a                                         ; $71f3: $af
    call Call_006_7205                            ; $71f4: $cd $05 $72
    jp Jump_006_7074                              ; $71f7: $c3 $74 $70


jr_006_71fa:
    ld a, [$c0a1]                                 ; $71fa: $fa $a1 $c0
    cp $ff                                        ; $71fd: $fe $ff
    ld a, $00                                     ; $71ff: $3e $00
    jr z, jr_006_7205                             ; $7201: $28 $02

    ld a, $02                                     ; $7203: $3e $02

Call_006_7205:
jr_006_7205:
    ld hl, $6cab                                  ; $7205: $21 $ab $6c
    call Call_000_3194                            ; $7208: $cd $94 $31
    jp Jump_000_134e                              ; $720b: $c3 $4e $13


    db $01, $56, $00, $01, $00, $00, $aa, $24, $01, $02, $00, $02, $01, $01, $21, $72
    db $00, $02, $00, $4a, $d9, $6a, $d9, $8a, $d9, $aa, $d9, $ca, $d9, $ea, $d9, $0a
    db $da, $2a, $da, $21, $0e, $72, $c3, $37, $28, $3e, $13, $cd, $5e, $39, $cd, $fb
    db $38, $7d, $ea, $12, $cc, $7c, $ea, $13, $cc, $21, $26, $5b, $e0, $c1, $3e, $8f
    db $e0, $bd, $3e, $5b, $e0, $be, $cd, $5f, $34, $21, $03, $7c, $e0, $c1, $3e, $6d
    db $e0, $bd, $3e

    ld a, h                                       ; $7261: $7c

    ldh [$be], a                                  ; $7262: $e0 $be
    call Call_000_346d                            ; $7264: $cd $6d $34
    ld hl, $0168                                  ; $7267: $21 $68 $01
    call Call_000_3929                            ; $726a: $cd $29 $39
    ld a, $10                                     ; $726d: $3e $10
    ldh [$c1], a                                  ; $726f: $e0 $c1
    ld a, $0f                                     ; $7271: $3e $0f
    ldh [$bd], a                                  ; $7273: $e0 $bd
    ld a, $25                                     ; $7275: $3e $25
    ldh [$be], a                                  ; $7277: $e0 $be
    call Call_000_3487                            ; $7279: $cd $87 $34
    call Call_006_72d8                            ; $727c: $cd $d8 $72
    call Call_006_7352                            ; $727f: $cd $52 $73
    call Call_006_7286                            ; $7282: $cd $86 $72
    ret                                           ; $7285: $c9


Call_006_7286:
    ldh a, [$d1]                                  ; $7286: $f0 $d1
    cp $16                                        ; $7288: $fe $16
    ret z                                         ; $728a: $c8

    cp $05                                        ; $728b: $fe $05
    ret c                                         ; $728d: $d8

    ld hl, $ffb8                                  ; $728e: $21 $b8 $ff
    ld [hl], $00                                  ; $7291: $36 $00
    inc hl                                        ; $7293: $23
    ld [hl], $00                                  ; $7294: $36 $00
    ld a, $b3                                     ; $7296: $3e $b3
    ldh [$c1], a                                  ; $7298: $e0 $c1
    ld a, $d2                                     ; $729a: $3e $d2
    ldh [$bd], a                                  ; $729c: $e0 $bd
    ld a, $11                                     ; $729e: $3e $11
    ldh [$be], a                                  ; $72a0: $e0 $be
    call Call_000_3487                            ; $72a2: $cd $87 $34
    xor a                                         ; $72a5: $af
    ldh [$9b], a                                  ; $72a6: $e0 $9b
    ld a, $b3                                     ; $72a8: $3e $b3
    call Call_000_03a0                            ; $72aa: $cd $a0 $03
    ld a, $01                                     ; $72ad: $3e $01
    ldh [$9b], a                                  ; $72af: $e0 $9b
    ld a, $b3                                     ; $72b1: $3e $b3
    call Call_000_03a0                            ; $72b3: $cd $a0 $03
    ld a, $02                                     ; $72b6: $3e $02
    ldh [$9b], a                                  ; $72b8: $e0 $9b
    ld a, $b3                                     ; $72ba: $3e $b3
    call Call_000_03a0                            ; $72bc: $cd $a0 $03
    ret                                           ; $72bf: $c9


    ldh a, [$a5]                                  ; $72c0: $f0 $a5
    and $0f                                       ; $72c2: $e6 $0f
    ret z                                         ; $72c4: $c8

    ld hl, $cc12                                  ; $72c5: $21 $12 $cc
    ld a, [hl+]                                   ; $72c8: $2a
    ld h, [hl]                                    ; $72c9: $66
    ld l, a                                       ; $72ca: $6f
    call Call_000_3911                            ; $72cb: $cd $11 $39
    ld a, $02                                     ; $72ce: $3e $02
    ld [$c0bb], a                                 ; $72d0: $ea $bb $c0
    ld a, $0b                                     ; $72d3: $3e $0b
    jp Jump_000_2448                              ; $72d5: $c3 $48 $24


Call_006_72d8:
    ld hl, $ffb8                                  ; $72d8: $21 $b8 $ff
    ld [hl], $80                                  ; $72db: $36 $80
    inc hl                                        ; $72dd: $23
    ld [hl], $00                                  ; $72de: $36 $00
    ldh a, [$d0]                                  ; $72e0: $f0 $d0
    ld hl, $5252                                  ; $72e2: $21 $52 $52
    ldh [$c1], a                                  ; $72e5: $e0 $c1
    ld a, $4b                                     ; $72e7: $3e $4b
    ldh [$bd], a                                  ; $72e9: $e0 $bd
    ld a, $29                                     ; $72eb: $3e $29
    ldh [$be], a                                  ; $72ed: $e0 $be
    call Call_000_3487                            ; $72ef: $cd $87 $34
    call Call_006_7331                            ; $72f2: $cd $31 $73
    call Call_000_3674                            ; $72f5: $cd $74 $36

    db $00, $00, $07, $07

    ld bc, $0000                                  ; $72fc: $01 $00 $00
    ld de, $d826                                  ; $72ff: $11 $26 $d8
    xor a                                         ; $7302: $af
    ld hl, $525e                                  ; $7303: $21 $5e $52
    ldh [$c1], a                                  ; $7306: $e0 $c1
    ld a, $2a                                     ; $7308: $3e $2a
    ldh [$bd], a                                  ; $730a: $e0 $bd
    ld a, $33                                     ; $730c: $3e $33
    ldh [$be], a                                  ; $730e: $e0 $be
    call Call_000_3487                            ; $7310: $cd $87 $34
    ld de, $558b                                  ; $7313: $11 $8b $55
    ldh [$c1], a                                  ; $7316: $e0 $c1
    ld a, $11                                     ; $7318: $3e $11
    ldh [$bd], a                                  ; $731a: $e0 $bd
    ld a, $42                                     ; $731c: $3e $42
    ldh [$be], a                                  ; $731e: $e0 $be
    call Call_000_347b                            ; $7320: $cd $7b $34
    ld a, $38                                     ; $7323: $3e $38
    ld [$c141], a                                 ; $7325: $ea $41 $c1
    ldh a, [$d0]                                  ; $7328: $f0 $d0
    ld hl, $5261                                  ; $732a: $21 $61 $52
    call Call_000_0fad                            ; $732d: $cd $ad $0f
    ret                                           ; $7330: $c9


Call_006_7331:
    ldh a, [rSVBK]                                ; $7331: $f0 $70
    push af                                       ; $7333: $f5
    ld a, $01                                     ; $7334: $3e $01
    ldh [rSVBK], a                                ; $7336: $e0 $70
    ld b, $07                                     ; $7338: $06 $07
    ld a, $86                                     ; $733a: $3e $86
    ld hl, $d820                                  ; $733c: $21 $20 $d8
    ld de, $000c                                  ; $733f: $11 $0c $00

jr_006_7342:
    ld c, $14                                     ; $7342: $0e $14

jr_006_7344:
    ld [hl+], a                                   ; $7344: $22
    dec c                                         ; $7345: $0d
    jr nz, jr_006_7344                            ; $7346: $20 $fc

    add $07                                       ; $7348: $c6 $07
    add hl, de                                    ; $734a: $19
    dec b                                         ; $734b: $05
    jr nz, jr_006_7342                            ; $734c: $20 $f4

    pop af                                        ; $734e: $f1
    ldh [rSVBK], a                                ; $734f: $e0 $70
    ret                                           ; $7351: $c9


Call_006_7352:
    ld c, $00                                     ; $7352: $0e $00
    ld e, $14                                     ; $7354: $1e $14
    ld d, $0a                                     ; $7356: $16 $0a
    ld hl, $0100                                  ; $7358: $21 $00 $01
    call Call_000_13c2                            ; $735b: $cd $c2 $13
    ld hl, $721a                                  ; $735e: $21 $1a $72
    call Call_000_301f                            ; $7361: $cd $1f $30
    ld a, $98                                     ; $7364: $3e $98
    ld [$c1eb], a                                 ; $7366: $ea $eb $c1
    ld a, $08                                     ; $7369: $3e $08
    ld [$c234], a                                 ; $736b: $ea $34 $c2
    ldh a, [$d1]                                  ; $736e: $f0 $d1
    ld hl, $2143                                  ; $7370: $21 $43 $21
    ldh [$c1], a                                  ; $7373: $e0 $c1
    ld a, $67                                     ; $7375: $3e $67
    ldh [$bd], a                                  ; $7377: $e0 $bd
    ld a, $6e                                     ; $7379: $3e $6e
    ldh [$be], a                                  ; $737b: $e0 $be
    call Call_000_345f                            ; $737d: $cd $5f $34
    ret                                           ; $7380: $c9


    ld bc, $a054                                  ; $7381: $01 $54 $a0
    nop                                           ; $7384: $00
    nop                                           ; $7385: $00
    nop                                           ; $7386: $00
    xor d                                         ; $7387: $aa
    inc h                                         ; $7388: $24
    ld bc, $0002                                  ; $7389: $01 $02 $00
    ld [bc], a                                    ; $738c: $02
    ld bc, $a052                                  ; $738d: $01 $52 $a0
    nop                                           ; $7390: $00
    nop                                           ; $7391: $00
    nop                                           ; $7392: $00
    xor d                                         ; $7393: $aa
    inc h                                         ; $7394: $24
    ld bc, $0002                                  ; $7395: $01 $02 $00
    ld [bc], a                                    ; $7398: $02
    ld bc, $a053                                  ; $7399: $01 $53 $a0
    nop                                           ; $739c: $00
    nop                                           ; $739d: $00
    nop                                           ; $739e: $00
    xor d                                         ; $739f: $aa
    inc h                                         ; $73a0: $24
    ld bc, $0002                                  ; $73a1: $01 $02 $00
    ld [bc], a                                    ; $73a4: $02
    ld bc, $804e                                  ; $73a5: $01 $4e $80
    nop                                           ; $73a8: $00
    nop                                           ; $73a9: $00
    nop                                           ; $73aa: $00
    xor d                                         ; $73ab: $aa
    inc h                                         ; $73ac: $24
    ld bc, $0002                                  ; $73ad: $01 $02 $00
    ld [bc], a                                    ; $73b0: $02
    ld bc, $8050                                  ; $73b1: $01 $50 $80
    nop                                           ; $73b4: $00
    nop                                           ; $73b5: $00
    nop                                           ; $73b6: $00
    xor d                                         ; $73b7: $aa
    inc h                                         ; $73b8: $24
    ld bc, $0002                                  ; $73b9: $01 $02 $00
    ld [bc], a                                    ; $73bc: $02
    nop                                           ; $73bd: $00
    ld bc, $73c4                                  ; $73be: $01 $c4 $73
    add b                                         ; $73c1: $80
    nop                                           ; $73c2: $00
    nop                                           ; $73c3: $00
    jp z, $ead9                                   ; $73c4: $ca $d9 $ea

    reti                                          ; $73c7: $d9


    ld a, [hl-]                                   ; $73c8: $3a
    dec sp                                        ; $73c9: $3b
    inc a                                         ; $73ca: $3c
    dec a                                         ; $73cb: $3d
    ret nc                                        ; $73cc: $d0

    ld [hl], e                                    ; $73cd: $73
    reti                                          ; $73ce: $d9


    ld [hl], e                                    ; $73cf: $73
    ld bc, $0000                                  ; $73d0: $01 $00 $00
    nop                                           ; $73d3: $00
    ld [de], a                                    ; $73d4: $12
    inc d                                         ; $73d5: $14
    inc b                                         ; $73d6: $04
    nop                                           ; $73d7: $00
    inc c                                         ; $73d8: $0c
    ld bc, $0000                                  ; $73d9: $01 $00 $00
    nop                                           ; $73dc: $00
    ld d, $14                                     ; $73dd: $16 $14
    inc b                                         ; $73df: $04
    nop                                           ; $73e0: $00
    inc c                                         ; $73e1: $0c
    ld [bc], a                                    ; $73e2: $02
    ld [hl], h                                    ; $73e3: $74
    dec bc                                        ; $73e4: $0b
    ld [hl], h                                    ; $73e5: $74
    inc d                                         ; $73e6: $14
    ld [hl], h                                    ; $73e7: $74
    dec e                                         ; $73e8: $1d
    ld [hl], h                                    ; $73e9: $74
    ld h, $74                                     ; $73ea: $26 $74
    cpl                                           ; $73ec: $2f
    ld [hl], h                                    ; $73ed: $74
    jr c, jr_006_7464                             ; $73ee: $38 $74

    ld b, c                                       ; $73f0: $41
    ld [hl], h                                    ; $73f1: $74
    ld c, d                                       ; $73f2: $4a
    ld [hl], h                                    ; $73f3: $74
    ld d, e                                       ; $73f4: $53
    ld [hl], h                                    ; $73f5: $74
    ld e, h                                       ; $73f6: $5c
    ld [hl], h                                    ; $73f7: $74
    ld h, l                                       ; $73f8: $65
    ld [hl], h                                    ; $73f9: $74
    ld l, [hl]                                    ; $73fa: $6e
    ld [hl], h                                    ; $73fb: $74
    ld [hl], a                                    ; $73fc: $77
    ld [hl], h                                    ; $73fd: $74
    add b                                         ; $73fe: $80
    ld [hl], h                                    ; $73ff: $74
    adc c                                         ; $7400: $89
    ld [hl], h                                    ; $7401: $74
    ld bc, $0000                                  ; $7402: $01 $00 $00
    inc d                                         ; $7405: $14
    nop                                           ; $7406: $00
    ld b, $09                                     ; $7407: $06 $09
    rlca                                          ; $7409: $07
    ld [bc], a                                    ; $740a: $02
    ld bc, $0000                                  ; $740b: $01 $00 $00
    ld a, [de]                                    ; $740e: $1a
    nop                                           ; $740f: $00
    ld b, $09                                     ; $7410: $06 $09
    rlca                                          ; $7412: $07
    ld [bc], a                                    ; $7413: $02
    ld bc, $0000                                  ; $7414: $01 $00 $00
    ld a, [de]                                    ; $7417: $1a
    add hl, bc                                    ; $7418: $09
    ld b, $09                                     ; $7419: $06 $09
    rlca                                          ; $741b: $07
    ld [bc], a                                    ; $741c: $02
    ld bc, $0000                                  ; $741d: $01 $00 $00
    inc d                                         ; $7420: $14
    add hl, bc                                    ; $7421: $09
    ld b, $09                                     ; $7422: $06 $09
    rlca                                          ; $7424: $07
    ld [bc], a                                    ; $7425: $02
    ld bc, $0000                                  ; $7426: $01 $00 $00
    inc d                                         ; $7429: $14
    ld [de], a                                    ; $742a: $12
    dec b                                         ; $742b: $05
    rlca                                          ; $742c: $07
    ld bc, $0103                                  ; $742d: $01 $03 $01
    nop                                           ; $7430: $00
    nop                                           ; $7431: $00
    add hl, de                                    ; $7432: $19
    ld [de], a                                    ; $7433: $12
    dec b                                         ; $7434: $05
    rlca                                          ; $7435: $07
    ld bc, $0103                                  ; $7436: $01 $03 $01
    nop                                           ; $7439: $00
    nop                                           ; $743a: $00
    add hl, de                                    ; $743b: $19
    add hl, de                                    ; $743c: $19
    dec b                                         ; $743d: $05
    rlca                                          ; $743e: $07
    ld bc, $0103                                  ; $743f: $01 $03 $01
    nop                                           ; $7442: $00
    nop                                           ; $7443: $00
    inc d                                         ; $7444: $14
    add hl, de                                    ; $7445: $19
    dec b                                         ; $7446: $05
    rlca                                          ; $7447: $07
    ld bc, $0103                                  ; $7448: $01 $03 $01
    nop                                           ; $744b: $00
    nop                                           ; $744c: $00
    nop                                           ; $744d: $00
    ld a, [de]                                    ; $744e: $1a
    inc bc                                        ; $744f: $03
    dec b                                         ; $7450: $05
    db $10                                        ; $7451: $10
    dec b                                         ; $7452: $05
    ld bc, $0000                                  ; $7453: $01 $00 $00
    inc bc                                        ; $7456: $03
    ld a, [de]                                    ; $7457: $1a
    inc bc                                        ; $7458: $03
    dec b                                         ; $7459: $05
    db $10                                        ; $745a: $10
    dec b                                         ; $745b: $05
    ld bc, $0000                                  ; $745c: $01 $00 $00
    ld b, $1a                                     ; $745f: $06 $1a
    inc bc                                        ; $7461: $03
    dec b                                         ; $7462: $05
    db $10                                        ; $7463: $10

jr_006_7464:
    dec b                                         ; $7464: $05
    ld bc, $0000                                  ; $7465: $01 $00 $00
    add hl, bc                                    ; $7468: $09
    ld a, [de]                                    ; $7469: $1a
    inc bc                                        ; $746a: $03
    dec b                                         ; $746b: $05
    db $10                                        ; $746c: $10
    dec b                                         ; $746d: $05
    ld bc, $0000                                  ; $746e: $01 $00 $00
    inc c                                         ; $7471: $0c
    ld a, [de]                                    ; $7472: $1a
    ld [bc], a                                    ; $7473: $02
    inc bc                                        ; $7474: $03
    ld c, $06                                     ; $7475: $0e $06
    ld bc, $0000                                  ; $7477: $01 $00 $00
    ld c, $1a                                     ; $747a: $0e $1a
    ld [bc], a                                    ; $747c: $02
    inc bc                                        ; $747d: $03
    ld c, $06                                     ; $747e: $0e $06
    ld bc, $0000                                  ; $7480: $01 $00 $00
    db $10                                        ; $7483: $10
    ld a, [de]                                    ; $7484: $1a
    ld [bc], a                                    ; $7485: $02
    inc bc                                        ; $7486: $03
    ld c, $06                                     ; $7487: $0e $06
    ld bc, $0000                                  ; $7489: $01 $00 $00
    ld [de], a                                    ; $748c: $12
    ld a, [de]                                    ; $748d: $1a
    ld [bc], a                                    ; $748e: $02
    inc bc                                        ; $748f: $03
    ld c, $06                                     ; $7490: $0e $06
    ld a, $07                                     ; $7492: $3e $07
    call Call_000_395e                            ; $7494: $cd $5e $39
    ld hl, $7381                                  ; $7497: $21 $81 $73
    jp Jump_000_2837                              ; $749a: $c3 $37 $28


    ld a, $07                                     ; $749d: $3e $07
    call Call_000_395e                            ; $749f: $cd $5e $39
    ld hl, $738d                                  ; $74a2: $21 $8d $73
    jp Jump_000_2837                              ; $74a5: $c3 $37 $28


    ld a, $07                                     ; $74a8: $3e $07
    call Call_000_395e                            ; $74aa: $cd $5e $39
    ld hl, $7399                                  ; $74ad: $21 $99 $73
    jp Jump_000_2837                              ; $74b0: $c3 $37 $28


    ld a, $04                                     ; $74b3: $3e $04
    call Call_000_395e                            ; $74b5: $cd $5e $39
    ld hl, $73a5                                  ; $74b8: $21 $a5 $73
    jp Jump_000_2837                              ; $74bb: $c3 $37 $28


    ld hl, $73b1                                  ; $74be: $21 $b1 $73
    jp Jump_000_2837                              ; $74c1: $c3 $37 $28


    xor a                                         ; $74c4: $af
    push af                                       ; $74c5: $f5
    jr jr_006_74d0                                ; $74c6: $18 $08

    ld a, $01                                     ; $74c8: $3e $01
    push af                                       ; $74ca: $f5
    jr jr_006_74d0                                ; $74cb: $18 $03

    ld a, $02                                     ; $74cd: $3e $02
    push af                                       ; $74cf: $f5

jr_006_74d0:
    ld hl, $73bd                                  ; $74d0: $21 $bd $73
    call Call_000_301f                            ; $74d3: $cd $1f $30
    ld a, $78                                     ; $74d6: $3e $78
    ld [$c1eb], a                                 ; $74d8: $ea $eb $c1
    ld a, $02                                     ; $74db: $3e $02
    ld [$c234], a                                 ; $74dd: $ea $34 $c2
    pop af                                        ; $74e0: $f1
    ld hl, $21fa                                  ; $74e1: $21 $fa $21
    ldh [$c1], a                                  ; $74e4: $e0 $c1
    ld a, $67                                     ; $74e6: $3e $67
    ldh [$bd], a                                  ; $74e8: $e0 $bd
    ld a, $6e                                     ; $74ea: $3e $6e
    ldh [$be], a                                  ; $74ec: $e0 $be
    call Call_000_345f                            ; $74ee: $cd $5f $34
    ld hl, $795f                                  ; $74f1: $21 $5f $79
    ldh [$c1], a                                  ; $74f4: $e0 $c1
    ld a, $6d                                     ; $74f6: $3e $6d
    ldh [$bd], a                                  ; $74f8: $e0 $bd
    ld a, $7c                                     ; $74fa: $3e $7c
    ldh [$be], a                                  ; $74fc: $e0 $be
    jp Jump_000_346d                              ; $74fe: $c3 $6d $34


    xor a                                         ; $7501: $af
    ld [$cb3e], a                                 ; $7502: $ea $3e $cb
    ld hl, $795f                                  ; $7505: $21 $5f $79
    ldh [$c1], a                                  ; $7508: $e0 $c1
    ld a, $6d                                     ; $750a: $3e $6d
    ldh [$bd], a                                  ; $750c: $e0 $bd
    ld a, $7c                                     ; $750e: $3e $7c
    ldh [$be], a                                  ; $7510: $e0 $be
    call Call_000_346d                            ; $7512: $cd $6d $34
    call Call_006_764b                            ; $7515: $cd $4b $76
    call Call_006_7602                            ; $7518: $cd $02 $76
    call Call_006_7633                            ; $751b: $cd $33 $76
    call Call_006_5e90                            ; $751e: $cd $90 $5e
    ld hl, $ce09                                  ; $7521: $21 $09 $ce
    inc [hl]                                      ; $7524: $34
    ld a, [$cdd5]                                 ; $7525: $fa $d5 $cd
    ld d, a                                       ; $7528: $57
    ldh [$c1], a                                  ; $7529: $e0 $c1
    ld a, $00                                     ; $752b: $3e $00
    ldh [$bd], a                                  ; $752d: $e0 $bd
    ld a, $57                                     ; $752f: $3e $57
    ldh [$be], a                                  ; $7531: $e0 $be
    call Call_000_3474                            ; $7533: $cd $74 $34
    ret                                           ; $7536: $c9


    ld hl, $795f                                  ; $7537: $21 $5f $79
    ldh [$c1], a                                  ; $753a: $e0 $c1
    ld a, $6d                                     ; $753c: $3e $6d
    ldh [$bd], a                                  ; $753e: $e0 $bd
    ld a, $7c                                     ; $7540: $3e $7c
    ldh [$be], a                                  ; $7542: $e0 $be
    call Call_000_346d                            ; $7544: $cd $6d $34
    xor a                                         ; $7547: $af
    ld [$cb32], a                                 ; $7548: $ea $32 $cb
    ld a, $18                                     ; $754b: $3e $18
    ld [$cb33], a                                 ; $754d: $ea $33 $cb
    ld a, $03                                     ; $7550: $3e $03
    ld [$cb34], a                                 ; $7552: $ea $34 $cb
    call $76e9                                    ; $7555: $cd $e9 $76
    ret                                           ; $7558: $c9


    ldh a, [$a5]                                  ; $7559: $f0 $a5
    and $0f                                       ; $755b: $e6 $0f
    ret z                                         ; $755d: $c8

    ldh [$c1], a                                  ; $755e: $e0 $c1
    ld a, $21                                     ; $7560: $3e $21
    ldh [$bd], a                                  ; $7562: $e0 $bd
    ld a, $6f                                     ; $7564: $3e $6f
    ldh [$be], a                                  ; $7566: $e0 $be
    call Call_000_3482                            ; $7568: $cd $82 $34
    ld a, $0b                                     ; $756b: $3e $0b
    jp Jump_000_2448                              ; $756d: $c3 $48 $24


    call Call_000_30fc                            ; $7570: $cd $fc $30
    call z, Call_006_7633                         ; $7573: $cc $33 $76
    ldh a, [$a5]                                  ; $7576: $f0 $a5
    and $0f                                       ; $7578: $e6 $0f
    ret z                                         ; $757a: $c8

    ld a, [$cb34]                                 ; $757b: $fa $34 $cb
    ld hl, $73c8                                  ; $757e: $21 $c8 $73
    rst $08                                       ; $7581: $cf
    jp Jump_000_2448                              ; $7582: $c3 $48 $24


    ld a, [$cb34]                                 ; $7585: $fa $34 $cb
    dec a                                         ; $7588: $3d
    ld [$cb34], a                                 ; $7589: $ea $34 $cb
    jr nz, jr_006_75eb                            ; $758c: $20 $5d

    ld a, $03                                     ; $758e: $3e $03
    ld [$cb34], a                                 ; $7590: $ea $34 $cb
    ld hl, $ff90                                  ; $7593: $21 $90 $ff
    inc [hl]                                      ; $7596: $34
    ld a, [$cb32]                                 ; $7597: $fa $32 $cb
    inc a                                         ; $759a: $3c
    ld [$cb32], a                                 ; $759b: $ea $32 $cb
    cp $30                                        ; $759e: $fe $30
    jr nz, jr_006_75eb                            ; $75a0: $20 $49

    xor a                                         ; $75a2: $af
    ld [$cb32], a                                 ; $75a3: $ea $32 $cb
    ld a, [$cb33]                                 ; $75a6: $fa $33 $cb
    add $06                                       ; $75a9: $c6 $06
    ld [$cb33], a                                 ; $75ab: $ea $33 $cb
    cp $42                                        ; $75ae: $fe $42
    jr z, jr_006_75f0                             ; $75b0: $28 $3e

    sub $02                                       ; $75b2: $d6 $02
    ldh [$f0], a                                  ; $75b4: $e0 $f0
    ld a, $03                                     ; $75b6: $3e $03

jr_006_75b8:
    push af                                       ; $75b8: $f5
    ldh a, [$f0]                                  ; $75b9: $f0 $f0
    add $02                                       ; $75bb: $c6 $02
    ldh [$f0], a                                  ; $75bd: $e0 $f0
    and $1f                                       ; $75bf: $e6 $1f
    ld hl, $d800                                  ; $75c1: $21 $00 $d8
    rst $08                                       ; $75c4: $cf
    ld e, l                                       ; $75c5: $5d
    ld d, h                                       ; $75c6: $54
    ld a, $02                                     ; $75c7: $3e $02
    ldh [$f2], a                                  ; $75c9: $e0 $f2
    ld a, $12                                     ; $75cb: $3e $12
    ldh [$f3], a                                  ; $75cd: $e0 $f3
    xor a                                         ; $75cf: $af
    ldh [$f1], a                                  ; $75d0: $e0 $f1
    ld a, $51                                     ; $75d2: $3e $51
    ld bc, $0000                                  ; $75d4: $01 $00 $00
    ld hl, $537b                                  ; $75d7: $21 $7b $53
    ldh [$c1], a                                  ; $75da: $e0 $c1
    ld a, $2a                                     ; $75dc: $3e $2a
    ldh [$bd], a                                  ; $75de: $e0 $bd
    ld a, $33                                     ; $75e0: $3e $33
    ldh [$be], a                                  ; $75e2: $e0 $be
    call Call_000_3487                            ; $75e4: $cd $87 $34
    pop af                                        ; $75e7: $f1
    dec a                                         ; $75e8: $3d
    jr nz, jr_006_75b8                            ; $75e9: $20 $cd

jr_006_75eb:
    ldh a, [$a5]                                  ; $75eb: $f0 $a5
    and $0f                                       ; $75ed: $e6 $0f
    ret z                                         ; $75ef: $c8

jr_006_75f0:
    ldh [$c1], a                                  ; $75f0: $e0 $c1
    ld a, $21                                     ; $75f2: $3e $21
    ldh [$bd], a                                  ; $75f4: $e0 $bd
    ld a, $6f                                     ; $75f6: $3e $6f
    ldh [$be], a                                  ; $75f8: $e0 $be
    call Call_000_3482                            ; $75fa: $cd $82 $34
    ld a, $0b                                     ; $75fd: $3e $0b
    jp Jump_000_2448                              ; $75ff: $c3 $48 $24


Call_006_7602:
    ld a, [$cb34]                                 ; $7602: $fa $34 $cb
    ld hl, $73e2                                  ; $7605: $21 $e2 $73
    call Call_000_3194                            ; $7608: $cd $94 $31
    call Call_000_134e                            ; $760b: $cd $4e $13
    ld a, [$cb37]                                 ; $760e: $fa $37 $cb
    ld hl, $73ea                                  ; $7611: $21 $ea $73
    call Call_000_3194                            ; $7614: $cd $94 $31
    call Call_000_134e                            ; $7617: $cd $4e $13
    ld a, [$cb3a]                                 ; $761a: $fa $3a $cb
    ld hl, $73f2                                  ; $761d: $21 $f2 $73
    call Call_000_3194                            ; $7620: $cd $94 $31
    call Call_000_134e                            ; $7623: $cd $4e $13
    ld a, [$cb3d]                                 ; $7626: $fa $3d $cb
    ld hl, $73fa                                  ; $7629: $21 $fa $73
    call Call_000_3194                            ; $762c: $cd $94 $31
    call Call_000_134e                            ; $762f: $cd $4e $13
    ret                                           ; $7632: $c9


Call_006_7633:
    ld a, [$cb3e]                                 ; $7633: $fa $3e $cb
    xor $01                                       ; $7636: $ee $01
    ld [$cb3e], a                                 ; $7638: $ea $3e $cb
    ld hl, $73cc                                  ; $763b: $21 $cc $73
    call Call_000_3194                            ; $763e: $cd $94 $31
    call Call_000_134e                            ; $7641: $cd $4e $13
    ld de, $000a                                  ; $7644: $11 $0a $00
    call Call_000_30ea                            ; $7647: $cd $ea $30
    ret                                           ; $764a: $c9


Call_006_764b:
    ldh a, [rSVBK]                                ; $764b: $f0 $70
    push af                                       ; $764d: $f5
    ld a, $06                                     ; $764e: $3e $06
    ldh [rSVBK], a                                ; $7650: $e0 $70
    xor a                                         ; $7652: $af
    ld [$cb34], a                                 ; $7653: $ea $34 $cb
    inc a                                         ; $7656: $3c
    ld [$cb37], a                                 ; $7657: $ea $37 $cb
    inc a                                         ; $765a: $3c
    ld [$cb3a], a                                 ; $765b: $ea $3a $cb
    inc a                                         ; $765e: $3c
    ld [$cb3d], a                                 ; $765f: $ea $3d $cb
    ld hl, $d5c8                                  ; $7662: $21 $c8 $d5
    ld a, [hl+]                                   ; $7665: $2a
    ld h, [hl]                                    ; $7666: $66
    ld l, a                                       ; $7667: $6f
    ld [$cb32], a                                 ; $7668: $ea $32 $cb
    ld a, h                                       ; $766b: $7c
    ld [$cb33], a                                 ; $766c: $ea $33 $cb
    ld hl, $d5cc                                  ; $766f: $21 $cc $d5
    ld a, [hl+]                                   ; $7672: $2a
    ld h, [hl]                                    ; $7673: $66
    ld l, a                                       ; $7674: $6f
    ld [$cb35], a                                 ; $7675: $ea $35 $cb
    ld a, h                                       ; $7678: $7c
    ld [$cb36], a                                 ; $7679: $ea $36 $cb
    ld hl, $d5ca                                  ; $767c: $21 $ca $d5
    ld a, [hl+]                                   ; $767f: $2a
    ld h, [hl]                                    ; $7680: $66
    ld l, a                                       ; $7681: $6f
    ld [$cb38], a                                 ; $7682: $ea $38 $cb
    ld a, h                                       ; $7685: $7c
    ld [$cb39], a                                 ; $7686: $ea $39 $cb
    ld hl, $d5ce                                  ; $7689: $21 $ce $d5
    ld a, [hl+]                                   ; $768c: $2a
    ld h, [hl]                                    ; $768d: $66
    ld l, a                                       ; $768e: $6f
    ld [$cb3b], a                                 ; $768f: $ea $3b $cb
    ld a, h                                       ; $7692: $7c
    ld [$cb3c], a                                 ; $7693: $ea $3c $cb
    ld b, $01                                     ; $7696: $06 $01

jr_006_7698:
    ld c, $03                                     ; $7698: $0e $03

jr_006_769a:
    ld a, c                                       ; $769a: $79
    dec a                                         ; $769b: $3d
    ld hl, $cb32                                  ; $769c: $21 $32 $cb
    call Call_000_3185                            ; $769f: $cd $85 $31
    ld a, [hl+]                                   ; $76a2: $2a
    ld d, [hl]                                    ; $76a3: $56
    ld e, a                                       ; $76a4: $5f
    ld a, c                                       ; $76a5: $79
    ld hl, $cb32                                  ; $76a6: $21 $32 $cb
    call Call_000_3185                            ; $76a9: $cd $85 $31
    ld a, [hl+]                                   ; $76ac: $2a
    ld h, [hl]                                    ; $76ad: $66
    ld l, a                                       ; $76ae: $6f
    rst $10                                       ; $76af: $d7
    jr nc, jr_006_76cc                            ; $76b0: $30 $1a

    ld a, c                                       ; $76b2: $79
    dec a                                         ; $76b3: $3d
    ld hl, $cb32                                  ; $76b4: $21 $32 $cb
    call Call_000_3185                            ; $76b7: $cd $85 $31
    ld e, l                                       ; $76ba: $5d
    ld d, h                                       ; $76bb: $54
    inc de                                        ; $76bc: $13
    inc de                                        ; $76bd: $13
    inc de                                        ; $76be: $13
    push bc                                       ; $76bf: $c5
    ld b, $03                                     ; $76c0: $06 $03

jr_006_76c2:
    ld c, [hl]                                    ; $76c2: $4e
    ld a, [de]                                    ; $76c3: $1a
    ld [hl+], a                                   ; $76c4: $22
    ld a, c                                       ; $76c5: $79
    ld [de], a                                    ; $76c6: $12
    inc de                                        ; $76c7: $13
    dec b                                         ; $76c8: $05
    jr nz, jr_006_76c2                            ; $76c9: $20 $f7

    pop bc                                        ; $76cb: $c1

jr_006_76cc:
    dec c                                         ; $76cc: $0d
    ld a, c                                       ; $76cd: $79
    cp b                                          ; $76ce: $b8
    jr nc, jr_006_769a                            ; $76cf: $30 $c9

    inc b                                         ; $76d1: $04
    ld a, b                                       ; $76d2: $78
    cp $04                                        ; $76d3: $fe $04
    jr nz, jr_006_7698                            ; $76d5: $20 $c1

    pop af                                        ; $76d7: $f1
    ldh [rSVBK], a                                ; $76d8: $e0 $70
    ret                                           ; $76da: $c9


    nop                                           ; $76db: $00
    db $10                                        ; $76dc: $10
    jr z, jr_006_770f                             ; $76dd: $28 $30

    ld d, h                                       ; $76df: $54
    ld b, b                                       ; $76e0: $40
    ld a, b                                       ; $76e1: $78
    ld [hl], b                                    ; $76e2: $70
    sub [hl]                                      ; $76e3: $96
    ld h, b                                       ; $76e4: $60
    cp [hl]                                       ; $76e5: $be
    add d                                         ; $76e6: $82
    call c, Call_000_3e50                         ; $76e7: $dc $50 $3e
    db $10                                        ; $76ea: $10
    ldh [$c1], a                                  ; $76eb: $e0 $c1
    ld a, $0f                                     ; $76ed: $3e $0f
    ldh [$bd], a                                  ; $76ef: $e0 $bd
    ld a, $25                                     ; $76f1: $3e $25
    ldh [$be], a                                  ; $76f3: $e0 $be
    call Call_000_3487                            ; $76f5: $cd $87 $34
    ld hl, $ffb8                                  ; $76f8: $21 $b8 $ff
    ld [hl], $00                                  ; $76fb: $36 $00
    inc hl                                        ; $76fd: $23
    ld [hl], $00                                  ; $76fe: $36 $00
    ld a, $b4                                     ; $7700: $3e $b4
    ldh [$c1], a                                  ; $7702: $e0 $c1
    ld a, $d6                                     ; $7704: $3e $d6
    ldh [$bd], a                                  ; $7706: $e0 $bd
    ld a, $11                                     ; $7708: $3e $11
    ldh [$be], a                                  ; $770a: $e0 $be
    call Call_000_3487                            ; $770c: $cd $87 $34

jr_006_770f:
    ld b, $07                                     ; $770f: $06 $07

jr_006_7711:
    ld a, $07                                     ; $7711: $3e $07
    sub b                                         ; $7713: $90
    ldh [$9b], a                                  ; $7714: $e0 $9b
    ld hl, $76db                                  ; $7716: $21 $db $76
    call Call_000_318c                            ; $7719: $cd $8c $31
    ld a, [hl+]                                   ; $771c: $2a
    ldh [$9c], a                                  ; $771d: $e0 $9c
    ld a, [hl+]                                   ; $771f: $2a
    ldh [$9e], a                                  ; $7720: $e0 $9e
    ld a, $b4                                     ; $7722: $3e $b4
    call Call_000_03a0                            ; $7724: $cd $a0 $03
    dec b                                         ; $7727: $05
    jr nz, jr_006_7711                            ; $7728: $20 $e7

    ret                                           ; $772a: $c9


    ld bc, $804f                                  ; $772b: $01 $4f $80
    nop                                           ; $772e: $00
    nop                                           ; $772f: $00
    nop                                           ; $7730: $00
    xor d                                         ; $7731: $aa
    inc h                                         ; $7732: $24
    ld bc, $0102                                  ; $7733: $01 $02 $01
    ld [bc], a                                    ; $7736: $02
    ld c, c                                       ; $7737: $49
    ld [hl], a                                    ; $7738: $77
    ld d, d                                       ; $7739: $52
    ld [hl], a                                    ; $773a: $77
    ld e, e                                       ; $773b: $5b
    ld [hl], a                                    ; $773c: $77
    ld h, h                                       ; $773d: $64
    ld [hl], a                                    ; $773e: $77
    ld l, l                                       ; $773f: $6d
    ld [hl], a                                    ; $7740: $77
    halt                                          ; $7741: $76
    ld [hl], a                                    ; $7742: $77
    ld a, a                                       ; $7743: $7f
    ld [hl], a                                    ; $7744: $77
    adc b                                         ; $7745: $88
    ld [hl], a                                    ; $7746: $77
    sub c                                         ; $7747: $91
    ld [hl], a                                    ; $7748: $77
    ld bc, $0000                                  ; $7749: $01 $00 $00
    inc d                                         ; $774c: $14
    nop                                           ; $774d: $00
    rlca                                          ; $774e: $07
    inc b                                         ; $774f: $04
    nop                                           ; $7750: $00
    inc de                                        ; $7751: $13
    ld bc, $0000                                  ; $7752: $01 $00 $00
    inc d                                         ; $7755: $14
    dec b                                         ; $7756: $05
    rlca                                          ; $7757: $07
    inc b                                         ; $7758: $04
    nop                                           ; $7759: $00
    inc de                                        ; $775a: $13
    ld bc, $0000                                  ; $775b: $01 $00 $00
    inc d                                         ; $775e: $14
    ld a, [bc]                                    ; $775f: $0a
    rlca                                          ; $7760: $07
    inc b                                         ; $7761: $04
    nop                                           ; $7762: $00
    inc de                                        ; $7763: $13
    ld bc, $0000                                  ; $7764: $01 $00 $00
    nop                                           ; $7767: $00
    jr jr_006_7770                                ; $7768: $18 $06

    inc b                                         ; $776a: $04
    rlca                                          ; $776b: $07
    inc de                                        ; $776c: $13
    ld bc, $0000                                  ; $776d: $01 $00 $00

jr_006_7770:
    ld b, $18                                     ; $7770: $06 $18
    ld b, $04                                     ; $7772: $06 $04
    rlca                                          ; $7774: $07
    inc de                                        ; $7775: $13
    ld bc, $0000                                  ; $7776: $01 $00 $00
    inc c                                         ; $7779: $0c
    jr jr_006_7782                                ; $777a: $18 $06

    inc b                                         ; $777c: $04
    rlca                                          ; $777d: $07
    inc de                                        ; $777e: $13
    ld bc, $0000                                  ; $777f: $01 $00 $00

jr_006_7782:
    dec d                                         ; $7782: $15
    rrca                                          ; $7783: $0f
    ld b, $04                                     ; $7784: $06 $04
    ld c, $13                                     ; $7786: $0e $13
    ld bc, $0000                                  ; $7788: $01 $00 $00
    dec d                                         ; $778b: $15
    inc d                                         ; $778c: $14
    ld b, $04                                     ; $778d: $06 $04
    ld c, $13                                     ; $778f: $0e $13
    ld bc, $0000                                  ; $7791: $01 $00 $00
    dec d                                         ; $7794: $15
    add hl, de                                    ; $7795: $19
    ld b, $04                                     ; $7796: $06 $04
    ld c, $13                                     ; $7798: $0e $13
    db $10                                        ; $779a: $10
    dec de                                        ; $779b: $1b
    ld de, $2b21                                  ; $779c: $11 $21 $2b
    ld [hl], a                                    ; $779f: $77
    jp Jump_000_2837                              ; $77a0: $c3 $37 $28


    ld hl, $795f                                  ; $77a3: $21 $5f $79
    ldh [$c1], a                                  ; $77a6: $e0 $c1
    ld a, $6d                                     ; $77a8: $3e $6d
    ldh [$bd], a                                  ; $77aa: $e0 $bd
    ld a, $7c                                     ; $77ac: $3e $7c
    ldh [$be], a                                  ; $77ae: $e0 $be
    call Call_000_346d                            ; $77b0: $cd $6d $34
    ld hl, $5b1c                                  ; $77b3: $21 $1c $5b
    ldh [$c1], a                                  ; $77b6: $e0 $c1
    ld a, $8f                                     ; $77b8: $3e $8f
    ldh [$bd], a                                  ; $77ba: $e0 $bd
    ld a, $5b                                     ; $77bc: $3e $5b
    ldh [$be], a                                  ; $77be: $e0 $be
    call Call_000_345f                            ; $77c0: $cd $5f $34
    ld a, $10                                     ; $77c3: $3e $10
    ldh [$c1], a                                  ; $77c5: $e0 $c1
    ld a, $0f                                     ; $77c7: $3e $0f
    ldh [$bd], a                                  ; $77c9: $e0 $bd
    ld a, $25                                     ; $77cb: $3e $25
    ldh [$be], a                                  ; $77cd: $e0 $be
    call Call_000_3487                            ; $77cf: $cd $87 $34
    ld hl, $ffb8                                  ; $77d2: $21 $b8 $ff
    ld [hl], $00                                  ; $77d5: $36 $00
    inc hl                                        ; $77d7: $23
    ld [hl], $00                                  ; $77d8: $36 $00
    ld a, $b6                                     ; $77da: $3e $b6
    ldh [$c1], a                                  ; $77dc: $e0 $c1
    ld a, $d6                                     ; $77de: $3e $d6
    ldh [$bd], a                                  ; $77e0: $e0 $bd
    ld a, $11                                     ; $77e2: $3e $11
    ldh [$be], a                                  ; $77e4: $e0 $be
    call Call_000_3487                            ; $77e6: $cd $87 $34
    ld a, $b5                                     ; $77e9: $3e $b5
    call Call_000_03a0                            ; $77eb: $cd $a0 $03
    xor a                                         ; $77ee: $af
    ld [$cb32], a                                 ; $77ef: $ea $32 $cb
    ld [$cb34], a                                 ; $77f2: $ea $34 $cb
    ld [$cb33], a                                 ; $77f5: $ea $33 $cb
    ld [$cb35], a                                 ; $77f8: $ea $35 $cb
    call Call_006_7894                            ; $77fb: $cd $94 $78
    ld a, $30                                     ; $77fe: $3e $30
    ldh [$92], a                                  ; $7800: $e0 $92
    ld b, $00                                     ; $7802: $06 $00
    call Call_006_7902                            ; $7804: $cd $02 $79
    inc b                                         ; $7807: $04
    call Call_006_7902                            ; $7808: $cd $02 $79
    inc b                                         ; $780b: $04
    call Call_006_7902                            ; $780c: $cd $02 $79
    ld hl, $cb2c                                  ; $780f: $21 $2c $cb
    ld a, $01                                     ; $7812: $3e $01
    ld [hl+], a                                   ; $7814: $22
    ld [hl+], a                                   ; $7815: $22
    ld [hl], a                                    ; $7816: $77
    xor a                                         ; $7817: $af
    ld [$cb30], a                                 ; $7818: $ea $30 $cb
    ld [$cb31], a                                 ; $781b: $ea $31 $cb
    ld [$cb2f], a                                 ; $781e: $ea $2f $cb
    ld a, $05                                     ; $7821: $3e $05
    ldh [$a8], a                                  ; $7823: $e0 $a8
    ret                                           ; $7825: $c9


    ld a, [$cb2f]                                 ; $7826: $fa $2f $cb
    rst $00                                       ; $7829: $c7
    jr nc, @+$7a                                  ; $782a: $30 $78

    ld b, [hl]                                    ; $782c: $46
    ld a, b                                       ; $782d: $78
    ld h, a                                       ; $782e: $67
    ld a, b                                       ; $782f: $78
    call Call_006_78bd                            ; $7830: $cd $bd $78
    ld a, [$cb30]                                 ; $7833: $fa $30 $cb
    cp $03                                        ; $7836: $fe $03
    jr nz, jr_006_7869                            ; $7838: $20 $2f

    ld a, $01                                     ; $783a: $3e $01
    ld [$cb2f], a                                 ; $783c: $ea $2f $cb
    ld a, $03                                     ; $783f: $3e $03
    ld [$cb31], a                                 ; $7841: $ea $31 $cb
    jr jr_006_7869                                ; $7844: $18 $23

    call Call_006_78bd                            ; $7846: $cd $bd $78
    ld a, [$cb31]                                 ; $7849: $fa $31 $cb
    dec a                                         ; $784c: $3d
    ld [$cb31], a                                 ; $784d: $ea $31 $cb
    or a                                          ; $7850: $b7
    jr nz, jr_006_7869                            ; $7851: $20 $16

    ld a, $03                                     ; $7853: $3e $03
    ld [$cb31], a                                 ; $7855: $ea $31 $cb
    ldh a, [$92]                                  ; $7858: $f0 $92
    dec a                                         ; $785a: $3d
    ldh [$92], a                                  ; $785b: $e0 $92
    or a                                          ; $785d: $b7
    jr nz, jr_006_7869                            ; $785e: $20 $09

    ld a, $02                                     ; $7860: $3e $02
    ld [$cb2f], a                                 ; $7862: $ea $2f $cb
    jr jr_006_7869                                ; $7865: $18 $02

    jr jr_006_7869                                ; $7867: $18 $00

jr_006_7869:
    ldh a, [$a5]                                  ; $7869: $f0 $a5
    and $0f                                       ; $786b: $e6 $0f
    ret z                                         ; $786d: $c8

    ldh [$c1], a                                  ; $786e: $e0 $c1
    ld a, $67                                     ; $7870: $3e $67
    ldh [$bd], a                                  ; $7872: $e0 $bd
    ld a, $47                                     ; $7874: $3e $47
    ldh [$be], a                                  ; $7876: $e0 $be
    call Call_000_3474                            ; $7878: $cd $74 $34
    cp $65                                        ; $787b: $fe $65
    ld a, $42                                     ; $787d: $3e $42
    jp z, Jump_000_2448                           ; $787f: $ca $48 $24

    ldh [$c1], a                                  ; $7882: $e0 $c1
    ld a, $21                                     ; $7884: $3e $21
    ldh [$bd], a                                  ; $7886: $e0 $bd
    ld a, $6f                                     ; $7888: $3e $6f
    ldh [$be], a                                  ; $788a: $e0 $be
    call Call_000_3482                            ; $788c: $cd $82 $34
    ld a, $0b                                     ; $788f: $3e $0b
    jp Jump_000_2448                              ; $7891: $c3 $48 $24


Call_006_7894:
    call Call_006_78b5                            ; $7894: $cd $b5 $78
    call Call_006_78b5                            ; $7897: $cd $b5 $78
    call Call_006_78b5                            ; $789a: $cd $b5 $78
    call Call_006_78b5                            ; $789d: $cd $b5 $78
    call Call_006_78b5                            ; $78a0: $cd $b5 $78
    call Call_006_78b1                            ; $78a3: $cd $b1 $78
    call Call_006_78b1                            ; $78a6: $cd $b1 $78
    call Call_006_78b1                            ; $78a9: $cd $b1 $78
    call Call_006_78b1                            ; $78ac: $cd $b1 $78
    jr jr_006_78b1                                ; $78af: $18 $00

Call_006_78b1:
jr_006_78b1:
    ld a, $01                                     ; $78b1: $3e $01
    jr jr_006_78b6                                ; $78b3: $18 $01

Call_006_78b5:
    xor a                                         ; $78b5: $af

jr_006_78b6:
    ldh [$9b], a                                  ; $78b6: $e0 $9b
    ld a, $b6                                     ; $78b8: $3e $b6
    jp Jump_000_03a0                              ; $78ba: $c3 $a0 $03


Call_006_78bd:
    ld b, $00                                     ; $78bd: $06 $00
    ld hl, $cb29                                  ; $78bf: $21 $29 $cb

jr_006_78c2:
    dec [hl]                                      ; $78c2: $35
    xor a                                         ; $78c3: $af
    cp [hl]                                       ; $78c4: $be
    jr nz, jr_006_78d1                            ; $78c5: $20 $0a

    push hl                                       ; $78c7: $e5
    call Call_006_7902                            ; $78c8: $cd $02 $79
    push bc                                       ; $78cb: $c5
    call Call_006_78d9                            ; $78cc: $cd $d9 $78
    pop bc                                        ; $78cf: $c1
    pop hl                                        ; $78d0: $e1

jr_006_78d1:
    inc hl                                        ; $78d1: $23
    inc b                                         ; $78d2: $04
    ld a, b                                       ; $78d3: $78
    cp $03                                        ; $78d4: $fe $03
    jr nz, jr_006_78c2                            ; $78d6: $20 $ea

    ret                                           ; $78d8: $c9


Call_006_78d9:
    rst $18                                       ; $78d9: $df
    ld hl, $cb2c                                  ; $78da: $21 $2c $cb
    ld a, b                                       ; $78dd: $78
    call RST_08                                   ; $78de: $cd $08 $00
    ld a, [hl]                                    ; $78e1: $7e
    ld c, a                                       ; $78e2: $4f
    inc a                                         ; $78e3: $3c
    cp $03                                        ; $78e4: $fe $03
    jr nz, jr_006_78e9                            ; $78e6: $20 $01

    xor a                                         ; $78e8: $af

jr_006_78e9:
    ld [hl], a                                    ; $78e9: $77
    ld a, b                                       ; $78ea: $78
    add a                                         ; $78eb: $87
    add b                                         ; $78ec: $80
    add c                                         ; $78ed: $81
    ld hl, $7737                                  ; $78ee: $21 $37 $77
    call Call_000_3194                            ; $78f1: $cd $94 $31
    call Call_000_134e                            ; $78f4: $cd $4e $13
    ld a, $06                                     ; $78f7: $3e $06
    ldh [$a8], a                                  ; $78f9: $e0 $a8
    xor a                                         ; $78fb: $af
    ldh [$a6], a                                  ; $78fc: $e0 $a6
    jp Jump_000_3308                              ; $78fe: $c3 $08 $33


    ret                                           ; $7901: $c9


Call_006_7902:
    ld a, b                                       ; $7902: $78
    ld hl, $779a                                  ; $7903: $21 $9a $77
    call RST_08                                   ; $7906: $cd $08 $00
    ld a, [hl]                                    ; $7909: $7e
    ld c, a                                       ; $790a: $4f
    ld a, b                                       ; $790b: $78
    ld hl, $cb29                                  ; $790c: $21 $29 $cb
    call RST_08                                   ; $790f: $cd $08 $00
    ld a, c                                       ; $7912: $79
    ld [hl], a                                    ; $7913: $77
    ret                                           ; $7914: $c9


    ld c, $12                                     ; $7915: $0e $12
    ld [$0c0c], sp                                ; $7917: $08 $0c $0c

Call_006_791a:
    call Call_006_792e                            ; $791a: $cd $2e $79
    xor a                                         ; $791d: $af
    ld b, a                                       ; $791e: $47

jr_006_791f:
    inc a                                         ; $791f: $3c
    jr nz, jr_006_791f                            ; $7920: $20 $fd

    inc b                                         ; $7922: $04
    jr nz, jr_006_791f                            ; $7923: $20 $fa

    ld hl, $7915                                  ; $7925: $21 $15 $79
    ld de, $c0a3                                  ; $7928: $11 $a3 $c0
    jp Jump_000_1248                              ; $792b: $c3 $48 $12


Call_006_792e:
    ld a, $c0                                     ; $792e: $3e $c0
    call Call_006_793a                            ; $7930: $cd $3a $79
    ld a, $01                                     ; $7933: $3e $01
    ld [$c0a0], a                                 ; $7935: $ea $a0 $c0
    ret                                           ; $7938: $c9


Call_006_7939:
Jump_006_7939:
    xor a                                         ; $7939: $af

Call_006_793a:
    ldh [rRP], a                                  ; $793a: $e0 $56
    ld a, $ff                                     ; $793c: $3e $ff
    ld [$c0a1], a                                 ; $793e: $ea $a1 $c0
    ret                                           ; $7941: $c9


Call_006_7942:
    dec a                                         ; $7942: $3d
    ld h, a                                       ; $7943: $67
    ld d, $00                                     ; $7944: $16 $00
    ld e, d                                       ; $7946: $5a
    ld a, $01                                     ; $7947: $3e $01
    ld [$c0a0], a                                 ; $7949: $ea $a0 $c0
    ld b, $02                                     ; $794c: $06 $02
    ld c, $56                                     ; $794e: $0e $56
    ld a, h                                       ; $7950: $7c
    or a                                          ; $7951: $b7
    jr nz, jr_006_79b8                            ; $7952: $20 $64

    ld hl, $0000                                  ; $7954: $21 $00 $00

jr_006_7957:
    ld a, l                                       ; $7957: $7d
    or a                                          ; $7958: $b7
    jr nz, jr_006_7965                            ; $7959: $20 $0a

    push bc                                       ; $795b: $c5
    call Call_000_117c                            ; $795c: $cd $7c $11
    pop bc                                        ; $795f: $c1
    and $02                                       ; $7960: $e6 $02
    jp nz, Jump_006_7bc6                          ; $7962: $c2 $c6 $7b

jr_006_7965:
    dec hl                                        ; $7965: $2b
    ld a, h                                       ; $7966: $7c
    or l                                          ; $7967: $b5
    jp z, Jump_006_7bc6                           ; $7968: $ca $c6 $7b

    ld a, [c]                                     ; $796b: $f2
    and b                                         ; $796c: $a0
    jr nz, jr_006_7957                            ; $796d: $20 $e8

Call_006_796f:
    ld b, $1a                                     ; $796f: $06 $1a
    ld c, $56                                     ; $7971: $0e $56
    ld d, $00                                     ; $7973: $16 $00
    ld e, d                                       ; $7975: $5a
    call Call_006_7be4                            ; $7976: $cd $e4 $7b
    ld a, d                                       ; $7979: $7a
    and a                                         ; $797a: $a7
    jp z, Jump_006_7bca                           ; $797b: $ca $ca $7b

    ld d, e                                       ; $797e: $53
    call Call_006_7bdc                            ; $797f: $cd $dc $7b
    ld a, d                                       ; $7982: $7a
    and a                                         ; $7983: $a7
    jp z, Jump_006_7bca                           ; $7984: $ca $ca $7b

    call Call_006_7be4                            ; $7987: $cd $e4 $7b
    ld a, d                                       ; $798a: $7a
    and a                                         ; $798b: $a7
    jp z, Jump_006_7bca                           ; $798c: $ca $ca $7b

    call Call_006_7bdc                            ; $798f: $cd $dc $7b
    ld a, d                                       ; $7992: $7a
    and a                                         ; $7993: $a7
    jp z, Jump_006_7bca                           ; $7994: $ca $ca $7b

    cp $08                                        ; $7997: $fe $08
    jp c, Jump_006_7bca                           ; $7999: $da $ca $7b

    cp $2a                                        ; $799c: $fe $2a
    jp nc, Jump_006_7bca                          ; $799e: $d2 $ca $7b

    ld d, b                                       ; $79a1: $50
    call Call_006_7bf3                            ; $79a2: $cd $f3 $7b
    ld d, b                                       ; $79a5: $50
    call Call_006_7bec                            ; $79a6: $cd $ec $7b
    ld d, b                                       ; $79a9: $50
    call Call_006_7bf3                            ; $79aa: $cd $f3 $7b
    ld d, b                                       ; $79ad: $50
    call Call_006_7bec                            ; $79ae: $cd $ec $7b
    ld d, b                                       ; $79b1: $50
    call Call_006_7bf3                            ; $79b2: $cd $f3 $7b
    jp Jump_006_7bce                              ; $79b5: $c3 $ce $7b


Call_006_79b8:
jr_006_79b8:
    ld a, $02                                     ; $79b8: $3e $02
    ld [$c0a0], a                                 ; $79ba: $ea $a0 $c0
    ld b, $1a                                     ; $79bd: $06 $1a
    ld c, $56                                     ; $79bf: $0e $56
    ld d, b                                       ; $79c1: $50
    ld e, $00                                     ; $79c2: $1e $00
    call Call_006_7bf3                            ; $79c4: $cd $f3 $7b
    ld d, b                                       ; $79c7: $50
    call Call_006_7bec                            ; $79c8: $cd $ec $7b
    ld d, b                                       ; $79cb: $50
    call Call_006_7bf3                            ; $79cc: $cd $f3 $7b
    ld d, b                                       ; $79cf: $50
    call Call_006_7bec                            ; $79d0: $cd $ec $7b
    ld d, b                                       ; $79d3: $50
    call Call_006_7bf3                            ; $79d4: $cd $f3 $7b
    ld d, e                                       ; $79d7: $53
    call Call_006_7be4                            ; $79d8: $cd $e4 $7b
    ld a, d                                       ; $79db: $7a
    and a                                         ; $79dc: $a7
    jp z, Jump_006_7bca                           ; $79dd: $ca $ca $7b

    ld d, e                                       ; $79e0: $53
    call Call_006_7bdc                            ; $79e1: $cd $dc $7b
    ld a, d                                       ; $79e4: $7a
    and a                                         ; $79e5: $a7
    jp z, Jump_006_7bca                           ; $79e6: $ca $ca $7b

    ld d, e                                       ; $79e9: $53
    call Call_006_7be4                            ; $79ea: $cd $e4 $7b
    ld a, d                                       ; $79ed: $7a
    and a                                         ; $79ee: $a7
    jp z, Jump_006_7bca                           ; $79ef: $ca $ca $7b

    ld d, e                                       ; $79f2: $53
    call Call_006_7bdc                            ; $79f3: $cd $dc $7b
    ld a, d                                       ; $79f6: $7a
    and a                                         ; $79f7: $a7
    jp z, Jump_006_7bca                           ; $79f8: $ca $ca $7b

    ld d, $1a                                     ; $79fb: $16 $1a
    call Call_006_7bf3                            ; $79fd: $cd $f3 $7b
    jp Jump_006_7bce                              ; $7a00: $c3 $ce $7b


Call_006_7a03:
    ld b, $00                                     ; $7a03: $06 $00

Call_006_7a05:
    xor a                                         ; $7a05: $af
    ld [$c0a8], a                                 ; $7a06: $ea $a8 $c0
    ld [$c0a9], a                                 ; $7a09: $ea $a9 $c0
    push hl                                       ; $7a0c: $e5
    push bc                                       ; $7a0d: $c5
    ld hl, $c0aa                                  ; $7a0e: $21 $aa $c0
    ld a, $5a                                     ; $7a11: $3e $5a
    ld [hl+], a                                   ; $7a13: $22
    ld [hl], b                                    ; $7a14: $70
    dec hl                                        ; $7a15: $2b
    ld b, $02                                     ; $7a16: $06 $02
    ld d, $1e                                     ; $7a18: $16 $1e
    call Call_006_7bf3                            ; $7a1a: $cd $f3 $7b
    call Call_006_7ab8                            ; $7a1d: $cd $b8 $7a
    pop bc                                        ; $7a20: $c1
    pop hl                                        ; $7a21: $e1
    call Call_006_7bd6                            ; $7a22: $cd $d6 $7b
    call Call_006_7ab8                            ; $7a25: $cd $b8 $7a
    ld a, [$c0a8]                                 ; $7a28: $fa $a8 $c0
    ld [$c0aa], a                                 ; $7a2b: $ea $aa $c0
    ld a, [$c0a9]                                 ; $7a2e: $fa $a9 $c0
    ld [$c0ab], a                                 ; $7a31: $ea $ab $c0
    ld hl, $c0aa                                  ; $7a34: $21 $aa $c0
    ld b, $02                                     ; $7a37: $06 $02
    call Call_006_7ab8                            ; $7a39: $cd $b8 $7a
    ld hl, $c0a1                                  ; $7a3c: $21 $a1 $c0
    ld b, $01                                     ; $7a3f: $06 $01
    call Call_006_7b30                            ; $7a41: $cd $30 $7b
    ld a, [$c0aa]                                 ; $7a44: $fa $aa $c0
    ld [$c0a8], a                                 ; $7a47: $ea $a8 $c0
    ld a, [$c0ab]                                 ; $7a4a: $fa $ab $c0
    ld [$c0a9], a                                 ; $7a4d: $ea $a9 $c0
    ld a, [$c0a1]                                 ; $7a50: $fa $a1 $c0
    cp $00                                        ; $7a53: $fe $00
    ret                                           ; $7a55: $c9


Call_006_7a56:
    ld b, $00                                     ; $7a56: $06 $00

Call_006_7a58:
    xor a                                         ; $7a58: $af
    ld [$c0a8], a                                 ; $7a59: $ea $a8 $c0
    ld [$c0a9], a                                 ; $7a5c: $ea $a9 $c0
    push hl                                       ; $7a5f: $e5
    ld hl, $c0aa                                  ; $7a60: $21 $aa $c0
    ld b, $02                                     ; $7a63: $06 $02
    call Call_006_7b30                            ; $7a65: $cd $30 $7b
    ld a, [$c0ab]                                 ; $7a68: $fa $ab $c0
    ld [$c0ac], a                                 ; $7a6b: $ea $ac $c0
    ld b, a                                       ; $7a6e: $47
    pop hl                                        ; $7a6f: $e1
    ld a, [$c0aa]                                 ; $7a70: $fa $aa $c0
    cp $5a                                        ; $7a73: $fe $5a
    jp nz, Jump_006_7bb8                          ; $7a75: $c2 $b8 $7b

    call Call_006_7b30                            ; $7a78: $cd $30 $7b
    ld a, [$c0a8]                                 ; $7a7b: $fa $a8 $c0
    ld d, a                                       ; $7a7e: $57
    ld a, [$c0a9]                                 ; $7a7f: $fa $a9 $c0
    ld e, a                                       ; $7a82: $5f
    push de                                       ; $7a83: $d5
    ld hl, $c0aa                                  ; $7a84: $21 $aa $c0
    ld b, $02                                     ; $7a87: $06 $02
    call Call_006_7b30                            ; $7a89: $cd $30 $7b
    pop de                                        ; $7a8c: $d1
    ld hl, $c0aa                                  ; $7a8d: $21 $aa $c0
    ld a, [hl+]                                   ; $7a90: $2a
    xor d                                         ; $7a91: $aa
    ld b, a                                       ; $7a92: $47
    ld a, [hl]                                    ; $7a93: $7e
    xor e                                         ; $7a94: $ab
    or b                                          ; $7a95: $b0
    jr z, jr_006_7aa0                             ; $7a96: $28 $08

    ld a, [$c0a1]                                 ; $7a98: $fa $a1 $c0
    or $01                                        ; $7a9b: $f6 $01
    ld [$c0a1], a                                 ; $7a9d: $ea $a1 $c0

jr_006_7aa0:
    push de                                       ; $7aa0: $d5
    ld hl, $c0a1                                  ; $7aa1: $21 $a1 $c0
    ld b, $01                                     ; $7aa4: $06 $01
    call Call_006_7ab8                            ; $7aa6: $cd $b8 $7a
    pop de                                        ; $7aa9: $d1
    ld a, d                                       ; $7aaa: $7a
    ld [$c0a8], a                                 ; $7aab: $ea $a8 $c0
    ld a, e                                       ; $7aae: $7b
    ld [$c0a9], a                                 ; $7aaf: $ea $a9 $c0
    ld a, [$c0a1]                                 ; $7ab2: $fa $a1 $c0
    cp $00                                        ; $7ab5: $fe $00
    ret                                           ; $7ab7: $c9


Call_006_7ab8:
    ld c, $56                                     ; $7ab8: $0e $56
    ld d, $16                                     ; $7aba: $16 $16
    call Call_006_7bec                            ; $7abc: $cd $ec $7b
    ld d, $16                                     ; $7abf: $16 $16
    call Call_006_7bf3                            ; $7ac1: $cd $f3 $7b
    ld a, b                                       ; $7ac4: $78
    cpl                                           ; $7ac5: $2f
    ld b, a                                       ; $7ac6: $47

jr_006_7ac7:
    inc b                                         ; $7ac7: $04
    jr z, jr_006_7b1c                             ; $7ac8: $28 $52

    ld a, $08                                     ; $7aca: $3e $08
    ld [$c0ad], a                                 ; $7acc: $ea $ad $c0
    ld a, [hl+]                                   ; $7acf: $2a
    ld e, a                                       ; $7ad0: $5f
    ld a, [$c0a8]                                 ; $7ad1: $fa $a8 $c0
    add e                                         ; $7ad4: $83
    ld [$c0a8], a                                 ; $7ad5: $ea $a8 $c0
    jr nc, jr_006_7ae3                            ; $7ad8: $30 $09

    ld a, [$c0a9]                                 ; $7ada: $fa $a9 $c0
    inc a                                         ; $7add: $3c
    ld [$c0a9], a                                 ; $7ade: $ea $a9 $c0
    jr jr_006_7ae6                                ; $7ae1: $18 $03

jr_006_7ae3:
    call Call_006_7bd6                            ; $7ae3: $cd $d6 $7b

jr_006_7ae6:
    ld a, e                                       ; $7ae6: $7b
    rlca                                          ; $7ae7: $07
    ld e, a                                       ; $7ae8: $5f
    jr nc, jr_006_7afb                            ; $7ae9: $30 $10

    ld a, [$c0a3]                                 ; $7aeb: $fa $a3 $c0
    ld d, a                                       ; $7aee: $57
    call Call_006_7bec                            ; $7aef: $cd $ec $7b
    ld a, [$c0a4]                                 ; $7af2: $fa $a4 $c0
    ld d, a                                       ; $7af5: $57
    call Call_006_7bf3                            ; $7af6: $cd $f3 $7b
    jr jr_006_7b09                                ; $7af9: $18 $0e

jr_006_7afb:
    ld a, [$c0a5]                                 ; $7afb: $fa $a5 $c0
    ld d, a                                       ; $7afe: $57
    call Call_006_7bec                            ; $7aff: $cd $ec $7b
    ld a, [$c0a6]                                 ; $7b02: $fa $a6 $c0
    ld d, a                                       ; $7b05: $57
    call Call_006_7bf3                            ; $7b06: $cd $f3 $7b

jr_006_7b09:
    ld a, [$c0ad]                                 ; $7b09: $fa $ad $c0
    dec a                                         ; $7b0c: $3d
    ld [$c0ad], a                                 ; $7b0d: $ea $ad $c0
    jr z, jr_006_7b1a                             ; $7b10: $28 $08

    call Call_006_7bd7                            ; $7b12: $cd $d7 $7b
    call Call_006_7bd7                            ; $7b15: $cd $d7 $7b
    jr jr_006_7ae6                                ; $7b18: $18 $cc

jr_006_7b1a:
    jr jr_006_7ac7                                ; $7b1a: $18 $ab

jr_006_7b1c:
    call Call_006_7bd6                            ; $7b1c: $cd $d6 $7b
    call Call_006_7bd6                            ; $7b1f: $cd $d6 $7b
    call Call_006_7bd7                            ; $7b22: $cd $d7 $7b
    ld d, $16                                     ; $7b25: $16 $16
    call Call_006_7bec                            ; $7b27: $cd $ec $7b
    ld d, $16                                     ; $7b2a: $16 $16
    call Call_006_7bf3                            ; $7b2c: $cd $f3 $7b
    ret                                           ; $7b2f: $c9


Call_006_7b30:
    ld c, $56                                     ; $7b30: $0e $56
    ld d, $00                                     ; $7b32: $16 $00
    call Call_006_7be4                            ; $7b34: $cd $e4 $7b
    ld a, d                                       ; $7b37: $7a
    or a                                          ; $7b38: $b7
    jp z, Jump_006_7bca                           ; $7b39: $ca $ca $7b

    ld d, $00                                     ; $7b3c: $16 $00
    call Call_006_7bdc                            ; $7b3e: $cd $dc $7b
    ld a, d                                       ; $7b41: $7a
    or a                                          ; $7b42: $b7
    jp z, Jump_006_7bca                           ; $7b43: $ca $ca $7b

    ld d, $00                                     ; $7b46: $16 $00
    call Call_006_7be4                            ; $7b48: $cd $e4 $7b
    ld a, d                                       ; $7b4b: $7a
    or a                                          ; $7b4c: $b7
    jp z, Jump_006_7bca                           ; $7b4d: $ca $ca $7b

    call Call_006_7bd7                            ; $7b50: $cd $d7 $7b
    call Call_006_7bd7                            ; $7b53: $cd $d7 $7b
    push af                                       ; $7b56: $f5
    pop af                                        ; $7b57: $f1
    ld a, b                                       ; $7b58: $78
    cpl                                           ; $7b59: $2f
    ld b, a                                       ; $7b5a: $47

jr_006_7b5b:
    inc b                                         ; $7b5b: $04
    jr z, jr_006_7ba8                             ; $7b5c: $28 $4a

    ld a, $08                                     ; $7b5e: $3e $08
    ld [$c0ad], a                                 ; $7b60: $ea $ad $c0

jr_006_7b63:
    ld d, $00                                     ; $7b63: $16 $00
    call Call_006_7bdc                            ; $7b65: $cd $dc $7b
    call Call_006_7be4                            ; $7b68: $cd $e4 $7b
    ld a, [$c0a7]                                 ; $7b6b: $fa $a7 $c0
    cp d                                          ; $7b6e: $ba
    jr nc, jr_006_7b77                            ; $7b6f: $30 $06

    ld a, e                                       ; $7b71: $7b
    set 0, a                                      ; $7b72: $cb $c7
    ld e, a                                       ; $7b74: $5f
    jr jr_006_7b7b                                ; $7b75: $18 $04

jr_006_7b77:
    ld a, e                                       ; $7b77: $7b
    res 0, a                                      ; $7b78: $cb $87
    ld e, a                                       ; $7b7a: $5f

jr_006_7b7b:
    ld a, [$c0ad]                                 ; $7b7b: $fa $ad $c0
    dec a                                         ; $7b7e: $3d
    ld [$c0ad], a                                 ; $7b7f: $ea $ad $c0
    jr z, jr_006_7b8f                             ; $7b82: $28 $0b

    ld a, e                                       ; $7b84: $7b
    rlca                                          ; $7b85: $07
    ld e, a                                       ; $7b86: $5f
    call Call_006_7bd7                            ; $7b87: $cd $d7 $7b
    call Call_006_7bd7                            ; $7b8a: $cd $d7 $7b
    jr jr_006_7b63                                ; $7b8d: $18 $d4

jr_006_7b8f:
    ld a, e                                       ; $7b8f: $7b
    ld [hl+], a                                   ; $7b90: $22
    ld a, [$c0a8]                                 ; $7b91: $fa $a8 $c0
    add e                                         ; $7b94: $83
    ld [$c0a8], a                                 ; $7b95: $ea $a8 $c0
    jr nc, jr_006_7ba3                            ; $7b98: $30 $09

    ld a, [$c0a9]                                 ; $7b9a: $fa $a9 $c0
    inc a                                         ; $7b9d: $3c
    ld [$c0a9], a                                 ; $7b9e: $ea $a9 $c0
    jr jr_006_7ba6                                ; $7ba1: $18 $03

jr_006_7ba3:
    call Call_006_7bd6                            ; $7ba3: $cd $d6 $7b

jr_006_7ba6:
    jr jr_006_7b5b                                ; $7ba6: $18 $b3

jr_006_7ba8:
    ld d, $00                                     ; $7ba8: $16 $00
    call Call_006_7bdc                            ; $7baa: $cd $dc $7b
    ld a, d                                       ; $7bad: $7a
    and a                                         ; $7bae: $a7
    jp z, Jump_006_7bca                           ; $7baf: $ca $ca $7b

    ld d, $11                                     ; $7bb2: $16 $11
    call Call_006_7bf3                            ; $7bb4: $cd $f3 $7b
    ret                                           ; $7bb7: $c9


Jump_006_7bb8:
    ld a, [$c0a1]                                 ; $7bb8: $fa $a1 $c0
    or $04                                        ; $7bbb: $f6 $04
    jr jr_006_7bd0                                ; $7bbd: $18 $11

    ld a, [$c0a1]                                 ; $7bbf: $fa $a1 $c0
    or $01                                        ; $7bc2: $f6 $01
    jr jr_006_7bd0                                ; $7bc4: $18 $0a

Jump_006_7bc6:
    ld a, $03                                     ; $7bc6: $3e $03
    jr jr_006_7bd0                                ; $7bc8: $18 $06

Jump_006_7bca:
    ld a, $02                                     ; $7bca: $3e $02
    jr jr_006_7bd0                                ; $7bcc: $18 $02

Jump_006_7bce:
    ld a, $00                                     ; $7bce: $3e $00

jr_006_7bd0:
    ld [$c0a1], a                                 ; $7bd0: $ea $a1 $c0
    cp $00                                        ; $7bd3: $fe $00
    ret                                           ; $7bd5: $c9


Call_006_7bd6:
    ret                                           ; $7bd6: $c9


Call_006_7bd7:
    jr z, jr_006_7bd9                             ; $7bd7: $28 $00

jr_006_7bd9:
    jr nz, jr_006_7bdb                            ; $7bd9: $20 $00

jr_006_7bdb:
    ret                                           ; $7bdb: $c9


Call_006_7bdc:
jr_006_7bdc:
    inc d                                         ; $7bdc: $14
    ret z                                         ; $7bdd: $c8

    ld a, [c]                                     ; $7bde: $f2
    bit 1, a                                      ; $7bdf: $cb $4f
    jr z, jr_006_7bdc                             ; $7be1: $28 $f9

    ret                                           ; $7be3: $c9


Call_006_7be4:
jr_006_7be4:
    inc d                                         ; $7be4: $14
    ret z                                         ; $7be5: $c8

    ld a, [c]                                     ; $7be6: $f2
    bit 1, a                                      ; $7be7: $cb $4f
    jr nz, jr_006_7be4                            ; $7be9: $20 $f9

    ret                                           ; $7beb: $c9


Call_006_7bec:
    ld a, $c1                                     ; $7bec: $3e $c1
    ld [c], a                                     ; $7bee: $e2

jr_006_7bef:
    dec d                                         ; $7bef: $15
    jr nz, jr_006_7bef                            ; $7bf0: $20 $fd

    ret                                           ; $7bf2: $c9


Call_006_7bf3:
    ld a, $c0                                     ; $7bf3: $3e $c0
    ld [c], a                                     ; $7bf5: $e2

jr_006_7bf6:
    dec d                                         ; $7bf6: $15
    jr nz, jr_006_7bf6                            ; $7bf7: $20 $fd

    ret                                           ; $7bf9: $c9


    db $01, $58, $80, $00, $00, $00, $aa, $24, $01, $02, $01, $02, $01, $01, $14, $7c
    db $00, $01, $41, $01, $01, $22, $7c, $00, $02, $41, $e2, $d8, $02, $d9, $22, $d9
    db $42, $d9, $62, $d9, $82, $d9, $a2, $d9, $c5, $d9, $e5, $d9, $05, $da, $25, $da
    db $21, $fa, $7b, $c3, $37, $28, $21, $06, $7c, $cd, $1f, $30, $3e, $7c, $ea, $eb
    db $c1, $3e, $06, $ea, $34, $c2, $21, $72, $22, $e0, $c1, $3e, $3d, $e0, $bd, $3e
    db $6e, $e0, $be, $cd, $5f, $34, $e0, $c1, $3e, $b3, $e0, $bd, $3e, $6c, $e0, $be
    db $cd, $5f, $34, $21, $75, $22, $e0, $c1

    ld a, $3d                                     ; $7c62: $3e $3d
    ldh [$bd], a                                  ; $7c64: $e0 $bd
    ld a, $6e                                     ; $7c66: $3e $6e
    ldh [$be], a                                  ; $7c68: $e0 $be
    call Call_000_345f                            ; $7c6a: $cd $5f $34
    ldh [$c1], a                                  ; $7c6d: $e0 $c1
    ld a, $b3                                     ; $7c6f: $3e $b3
    ldh [$bd], a                                  ; $7c71: $e0 $bd
    ld a, $6c                                     ; $7c73: $3e $6c
    ldh [$be], a                                  ; $7c75: $e0 $be
    call Call_000_345f                            ; $7c77: $cd $5f $34
    ld hl, $7c0d                                  ; $7c7a: $21 $0d $7c
    call Call_000_301f                            ; $7c7d: $cd $1f $30
    ld hl, $2278                                  ; $7c80: $21 $78 $22
    ldh [$c1], a                                  ; $7c83: $e0 $c1
    ld a, $3d                                     ; $7c85: $3e $3d
    ldh [$bd], a                                  ; $7c87: $e0 $bd
    ld a, $6e                                     ; $7c89: $3e $6e
    ldh [$be], a                                  ; $7c8b: $e0 $be
    call Call_000_345f                            ; $7c8d: $cd $5f $34
    ld hl, $227b                                  ; $7c90: $21 $7b $22
    ldh [$c1], a                                  ; $7c93: $e0 $c1
    ld a, $3d                                     ; $7c95: $3e $3d
    ldh [$bd], a                                  ; $7c97: $e0 $bd
    ld a, $6e                                     ; $7c99: $3e $6e
    ldh [$be], a                                  ; $7c9b: $e0 $be
    call Call_000_345f                            ; $7c9d: $cd $5f $34
    ld hl, $227e                                  ; $7ca0: $21 $7e $22
    ldh [$c1], a                                  ; $7ca3: $e0 $c1
    ld a, $3d                                     ; $7ca5: $3e $3d
    ldh [$bd], a                                  ; $7ca7: $e0 $bd
    ld a, $6e                                     ; $7ca9: $3e $6e
    ldh [$be], a                                  ; $7cab: $e0 $be
    call Call_000_345f                            ; $7cad: $cd $5f $34
    ret                                           ; $7cb0: $c9


    ldh a, [$a5]                                  ; $7cb1: $f0 $a5
    or a                                          ; $7cb3: $b7
    ret z                                         ; $7cb4: $c8

    ld a, $0b                                     ; $7cb5: $3e $0b
    jp Jump_000_2448                              ; $7cb7: $c3 $48 $24


    db $d5, $12, $04, $54, $18, $e7, $07, $74, $66, $2a, $cc, $7c, $12, $0c, $e7, $07
    db $6a, $65, $e7, $03, $8f, $6b, $e7, $07, $78, $73, $e7, $07, $7f, $6f, $00, $01
    db $e7, $07, $44, $73, $27, $d8, $7c, $d2, $fc, $7c, $03, $7d, $0f, $7d, $1f, $7d
    db $6b, $7d, $78, $7d

    inc sp                                        ; $7cee: $33
    ld a, l                                       ; $7cef: $7d

    db $47, $7d

    ld h, b                                       ; $7cf2: $60
    ld a, l                                       ; $7cf3: $7d

    db $87, $7d, $9d, $7d

    ld e, e                                       ; $7cf8: $5b
    ld a, l                                       ; $7cf9: $7d

    db $b1, $7d, $e7, $07, $7f, $6f, $18, $d8, $7c, $e7, $07, $a6, $6f, $ea, $e7, $07
    db $33, $72, $18, $d8, $7c, $e7, $07, $4a, $6e, $ea, $e7, $07, $ac, $72, $e7, $07
    db $a8, $6e, $18, $d8, $7c, $e7, $07, $0c, $73, $15, $22, $a8, $36, $00, $02, $00
    db $28, $60, $e7, $07, $87, $67, $57, $00, $00

    xor b                                         ; $7d33: $a8
    ld [hl], $00                                  ; $7d34: $36 $00
    cp $00                                        ; $7d36: $fe $00
    inc d                                         ; $7d38: $14
    inc bc                                        ; $7d39: $03
    nop                                           ; $7d3a: $00
    nop                                           ; $7d3b: $00
    nop                                           ; $7d3c: $00
    jr z, @-$17                                   ; $7d3d: $28 $e7

    rlca                                          ; $7d3f: $07
    jr @+$72                                      ; $7d40: $18 $70

jr_006_7d42:
    nop                                           ; $7d42: $00
    nop                                           ; $7d43: $00
    jr @-$26                                      ; $7d44: $18 $d8

    ld a, h                                       ; $7d46: $7c

    db $e7, $07, $d8, $71, $00, $01, $e7, $07, $a8, $67, $2a, $4b, $7d

    rst $20                                       ; $7d54: $e7
    rlca                                          ; $7d55: $07
    ld [$1871], a                                 ; $7d56: $ea $71 $18
    ret c                                         ; $7d59: $d8

    ld a, h                                       ; $7d5a: $7c
    nop                                           ; $7d5b: $00
    ld bc, $d818                                  ; $7d5c: $01 $18 $d8
    ld a, h                                       ; $7d5f: $7c
    rst $20                                       ; $7d60: $e7
    rlca                                          ; $7d61: $07
    ret c                                         ; $7d62: $d8

    ld [hl], c                                    ; $7d63: $71
    rst $20                                       ; $7d64: $e7
    rlca                                          ; $7d65: $07
    add a                                         ; $7d66: $87
    ld h, a                                       ; $7d67: $67
    jr jr_006_7d42                                ; $7d68: $18 $d8

    ld a, h                                       ; $7d6a: $7c

    db $cc, $27, $e7, $07, $44, $6e, $ea, $e7, $07, $f0, $6f, $00, $00, $cc, $28, $e7
    db $07, $3e, $6e, $ea, $00, $50, $e7, $07, $3d, $70, $00, $00, $e7, $07, $82, $67
    db $e7, $07, $3b, $66, $48, $00, $4b, $00, $39, $7e, $e7, $07, $7a, $6f, $ea, $18
    db $d8, $7c, $00, $01, $e7, $07, $a8, $67, $2a, $9d, $7d, $e7, $07, $ea, $71, $e7
    db $07, $d8, $71, $18, $d8, $7c, $15, $2c, $e7, $07, $75, $6f, $ea, $e7, $05, $09
    db $51, $e7, $05, $90, $50, $0c, $ca, $7d, $e7, $07, $d8, $71, $18, $d8, $7c, $e7
    db $05, $13, $51, $2a, $f3, $7d, $e7, $05, $51, $51, $e7, $07, $bd, $66, $e7, $05
    db $5e, $51, $39, $7f, $e7, $07, $70, $76, $00, $01, $e7, $07, $75, $76, $27, $e3
    db $7d, $00, $01, $e7, $05, $58, $54, $0f

    nop                                           ; $7df3: $00
    ld bc, $05e7                                  ; $7df4: $01 $e7 $05
    inc e                                         ; $7df7: $1c
    ld d, h                                       ; $7df8: $54
    rst $20                                       ; $7df9: $e7
    dec b                                         ; $7dfa: $05
    ld e, b                                       ; $7dfb: $58
    ld d, h                                       ; $7dfc: $54
    rrca                                          ; $7dfd: $0f

Call_006_7dfe:
Jump_006_7dfe:
    ld [$c0b1], a                                 ; $7dfe: $ea $b1 $c0
    xor a                                         ; $7e01: $af
    ld [$c0b2], a                                 ; $7e02: $ea $b2 $c0
    ret                                           ; $7e05: $c9


Jump_006_7e06:
    call Call_006_7dfe                            ; $7e06: $cd $fe $7d
    ld a, $01                                     ; $7e09: $3e $01
    ld [$c0b0], a                                 ; $7e0b: $ea $b0 $c0
    ld a, $80                                     ; $7e0e: $3e $80
    ldh [rSB], a                                  ; $7e10: $e0 $01
    ret                                           ; $7e12: $c9


Call_006_7e13:
    ld a, [$c0b2]                                 ; $7e13: $fa $b2 $c0
    or a                                          ; $7e16: $b7
    jr z, jr_006_7e3a                             ; $7e17: $28 $21

    ld hl, $c0b3                                  ; $7e19: $21 $b3 $c0
    ld a, [hl]                                    ; $7e1c: $7e
    or a                                          ; $7e1d: $b7
    jr z, jr_006_7e21                             ; $7e1e: $28 $01

    dec [hl]                                      ; $7e20: $35

jr_006_7e21:
    call Call_006_7e82                            ; $7e21: $cd $82 $7e
    jr z, jr_006_7e3a                             ; $7e24: $28 $14

    call Call_006_7ec4                            ; $7e26: $cd $c4 $7e
    cp $ff                                        ; $7e29: $fe $ff
    jr z, jr_006_7e21                             ; $7e2b: $28 $f4

    cp $81                                        ; $7e2d: $fe $81
    jr z, jr_006_7e21                             ; $7e2f: $28 $f0

    cp $80                                        ; $7e31: $fe $80
    jr z, jr_006_7e21                             ; $7e33: $28 $ec

    call Call_006_7f91                            ; $7e35: $cd $91 $7f
    jr jr_006_7e21                                ; $7e38: $18 $e7

jr_006_7e3a:
    ret                                           ; $7e3a: $c9


Call_006_7e3b:
    ld hl, $ffff                                  ; $7e3b: $21 $ff $ff
    res 3, [hl]                                   ; $7e3e: $cb $9e
    xor a                                         ; $7e40: $af
    ld [$c0b0], a                                 ; $7e41: $ea $b0 $c0
    ld [$c0b2], a                                 ; $7e44: $ea $b2 $c0
    ret                                           ; $7e47: $c9


Jump_006_7e48:
    ld hl, $ff0f                                  ; $7e48: $21 $0f $ff
    res 3, [hl]                                   ; $7e4b: $cb $9e
    ldh a, [rSVBK]                                ; $7e4d: $f0 $70
    push af                                       ; $7e4f: $f5
    ld a, $05                                     ; $7e50: $3e $05
    ldh [rSVBK], a                                ; $7e52: $e0 $70
    ld a, $01                                     ; $7e54: $3e $01
    ld [$c0b0], a                                 ; $7e56: $ea $b0 $c0
    xor a                                         ; $7e59: $af
    ld [$c0b2], a                                 ; $7e5a: $ea $b2 $c0
    ld [$c0b1], a                                 ; $7e5d: $ea $b1 $c0
    ld [$c0b4], a                                 ; $7e60: $ea $b4 $c0
    ld [$d46e], a                                 ; $7e63: $ea $6e $d4
    ld [$d46f], a                                 ; $7e66: $ea $6f $d4
    ld [$d4b0], a                                 ; $7e69: $ea $b0 $d4
    ld [$d4b1], a                                 ; $7e6c: $ea $b1 $d4
    pop af                                        ; $7e6f: $f1
    ldh [rSVBK], a                                ; $7e70: $e0 $70
    ld a, $80                                     ; $7e72: $3e $80
    ldh [rSB], a                                  ; $7e74: $e0 $01
    ldh [rSC], a                                  ; $7e76: $e0 $02
    ld hl, $ffff                                  ; $7e78: $21 $ff $ff
    set 3, [hl]                                   ; $7e7b: $cb $de
    ld a, $f0                                     ; $7e7d: $3e $f0
    jp Jump_006_7f30                              ; $7e7f: $c3 $30 $7f


Call_006_7e82:
    ldh a, [rSVBK]                                ; $7e82: $f0 $70
    push af                                       ; $7e84: $f5
    ld a, $05                                     ; $7e85: $3e $05
    ldh [rSVBK], a                                ; $7e87: $e0 $70
    ld hl, $d46e                                  ; $7e89: $21 $6e $d4
    ld a, [hl+]                                   ; $7e8c: $2a
    ld h, [hl]                                    ; $7e8d: $66
    ld l, a                                       ; $7e8e: $6f
    pop af                                        ; $7e8f: $f1
    ldh [rSVBK], a                                ; $7e90: $e0 $70
    ld a, l                                       ; $7e92: $7d
    cp h                                          ; $7e93: $bc
    ret                                           ; $7e94: $c9


Call_006_7e95:
    ld hl, $d4b0                                  ; $7e95: $21 $b0 $d4
    ld a, [hl+]                                   ; $7e98: $2a
    cp [hl]                                       ; $7e99: $be
    ret                                           ; $7e9a: $c9


Jump_006_7e9b:
    ld a, [$c0b0]                                 ; $7e9b: $fa $b0 $c0
    cp $01                                        ; $7e9e: $fe $01
    jr z, jr_006_7eaa                             ; $7ea0: $28 $08

    ldh a, [rSB]                                  ; $7ea2: $f0 $01
    cp $80                                        ; $7ea4: $fe $80
    jr nz, jr_006_7ebf                            ; $7ea6: $20 $17

    jr jr_006_7eb0                                ; $7ea8: $18 $06

jr_006_7eaa:
    ldh a, [rSB]                                  ; $7eaa: $f0 $01
    cp $81                                        ; $7eac: $fe $81
    jr nz, jr_006_7ebf                            ; $7eae: $20 $0f

jr_006_7eb0:
    ld a, $14                                     ; $7eb0: $3e $14
    ld [$c0b3], a                                 ; $7eb2: $ea $b3 $c0
    ld a, $ff                                     ; $7eb5: $3e $ff
    ldh [rSB], a                                  ; $7eb7: $e0 $01
    ld a, $01                                     ; $7eb9: $3e $01
    ld [$c0b2], a                                 ; $7ebb: $ea $b2 $c0
    ret                                           ; $7ebe: $c9


jr_006_7ebf:
    ld a, $01                                     ; $7ebf: $3e $01
    jp Jump_006_7e06                              ; $7ec1: $c3 $06 $7e


Call_006_7ec4:
    push bc                                       ; $7ec4: $c5
    push hl                                       ; $7ec5: $e5
    ldh a, [rSVBK]                                ; $7ec6: $f0 $70
    push af                                       ; $7ec8: $f5
    ld a, $05                                     ; $7ec9: $3e $05
    ldh [rSVBK], a                                ; $7ecb: $e0 $70
    ld hl, $d46f                                  ; $7ecd: $21 $6f $d4
    ld a, [hl]                                    ; $7ed0: $7e
    ld b, $00                                     ; $7ed1: $06 $00
    ld c, a                                       ; $7ed3: $4f
    inc a                                         ; $7ed4: $3c
    cp $40                                        ; $7ed5: $fe $40
    jr nz, jr_006_7eda                            ; $7ed7: $20 $01

    xor a                                         ; $7ed9: $af

jr_006_7eda:
    ld [hl+], a                                   ; $7eda: $22
    add hl, bc                                    ; $7edb: $09
    ld c, [hl]                                    ; $7edc: $4e
    pop af                                        ; $7edd: $f1
    ldh [rSVBK], a                                ; $7ede: $e0 $70
    ld a, c                                       ; $7ee0: $79
    pop hl                                        ; $7ee1: $e1
    pop bc                                        ; $7ee2: $c1
    ret                                           ; $7ee3: $c9


Call_006_7ee4:
    push bc                                       ; $7ee4: $c5
    push hl                                       ; $7ee5: $e5
    ldh a, [rSVBK]                                ; $7ee6: $f0 $70
    push af                                       ; $7ee8: $f5
    ld a, $05                                     ; $7ee9: $3e $05
    ldh [rSVBK], a                                ; $7eeb: $e0 $70
    call Call_006_7e95                            ; $7eed: $cd $95 $7e
    ld a, $fe                                     ; $7ef0: $3e $fe
    jr z, jr_006_7f04                             ; $7ef2: $28 $10

    ld hl, $d4b1                                  ; $7ef4: $21 $b1 $d4
    ld a, [hl]                                    ; $7ef7: $7e
    ld b, $00                                     ; $7ef8: $06 $00
    ld c, a                                       ; $7efa: $4f
    inc a                                         ; $7efb: $3c
    cp $40                                        ; $7efc: $fe $40
    jr nz, jr_006_7f01                            ; $7efe: $20 $01

    xor a                                         ; $7f00: $af

jr_006_7f01:
    ld [hl+], a                                   ; $7f01: $22
    add hl, bc                                    ; $7f02: $09
    ld a, [hl]                                    ; $7f03: $7e

jr_006_7f04:
    ld c, a                                       ; $7f04: $4f
    pop af                                        ; $7f05: $f1
    ldh [rSVBK], a                                ; $7f06: $e0 $70
    ld a, c                                       ; $7f08: $79
    pop hl                                        ; $7f09: $e1
    pop bc                                        ; $7f0a: $c1
    ret                                           ; $7f0b: $c9


Call_006_7f0c:
    push bc                                       ; $7f0c: $c5
    push hl                                       ; $7f0d: $e5
    ld c, a                                       ; $7f0e: $4f
    ldh a, [rSVBK]                                ; $7f0f: $f0 $70
    push af                                       ; $7f11: $f5
    ld a, $05                                     ; $7f12: $3e $05
    ldh [rSVBK], a                                ; $7f14: $e0 $70
    ld a, c                                       ; $7f16: $79
    push af                                       ; $7f17: $f5
    ld hl, $d46e                                  ; $7f18: $21 $6e $d4
    ld a, [hl]                                    ; $7f1b: $7e
    ld b, $00                                     ; $7f1c: $06 $00
    ld c, a                                       ; $7f1e: $4f
    inc a                                         ; $7f1f: $3c
    cp $40                                        ; $7f20: $fe $40
    jr nz, jr_006_7f25                            ; $7f22: $20 $01

    xor a                                         ; $7f24: $af

jr_006_7f25:
    ld [hl+], a                                   ; $7f25: $22
    inc hl                                        ; $7f26: $23
    add hl, bc                                    ; $7f27: $09
    pop af                                        ; $7f28: $f1
    ld [hl], a                                    ; $7f29: $77
    pop af                                        ; $7f2a: $f1
    ldh [rSVBK], a                                ; $7f2b: $e0 $70
    pop hl                                        ; $7f2d: $e1
    pop bc                                        ; $7f2e: $c1
    ret                                           ; $7f2f: $c9


Call_006_7f30:
Jump_006_7f30:
    push bc                                       ; $7f30: $c5
    push hl                                       ; $7f31: $e5
    ld c, a                                       ; $7f32: $4f
    ldh a, [rSVBK]                                ; $7f33: $f0 $70
    push af                                       ; $7f35: $f5
    ld a, $05                                     ; $7f36: $3e $05
    ldh [rSVBK], a                                ; $7f38: $e0 $70
    ld a, c                                       ; $7f3a: $79
    push af                                       ; $7f3b: $f5
    ld hl, $d4b0                                  ; $7f3c: $21 $b0 $d4
    ld a, [hl+]                                   ; $7f3f: $2a
    ld b, $00                                     ; $7f40: $06 $00
    ld c, a                                       ; $7f42: $4f
    inc hl                                        ; $7f43: $23
    add hl, bc                                    ; $7f44: $09
    pop af                                        ; $7f45: $f1
    ld [hl], a                                    ; $7f46: $77
    ld hl, $d4b0                                  ; $7f47: $21 $b0 $d4
    ld a, [hl]                                    ; $7f4a: $7e
    inc a                                         ; $7f4b: $3c
    cp $40                                        ; $7f4c: $fe $40
    jr nz, jr_006_7f51                            ; $7f4e: $20 $01

    xor a                                         ; $7f50: $af

jr_006_7f51:
    ld [hl], a                                    ; $7f51: $77
    ld a, [$c0b2]                                 ; $7f52: $fa $b2 $c0
    or a                                          ; $7f55: $b7
    jr nz, jr_006_7f63                            ; $7f56: $20 $0b

    ld a, $02                                     ; $7f58: $3e $02
    ld [$c0b0], a                                 ; $7f5a: $ea $b0 $c0
    ld a, $81                                     ; $7f5d: $3e $81
    ldh [rSB], a                                  ; $7f5f: $e0 $01
    ldh [rSC], a                                  ; $7f61: $e0 $02

jr_006_7f63:
    pop af                                        ; $7f63: $f1
    ldh [rSVBK], a                                ; $7f64: $e0 $70
    pop hl                                        ; $7f66: $e1
    pop bc                                        ; $7f67: $c1
    ret                                           ; $7f68: $c9


    ld a, $80                                     ; $7f69: $3e $80
    ldh [rSC], a                                  ; $7f6b: $e0 $02
    ld a, [$c0b2]                                 ; $7f6d: $fa $b2 $c0
    or a                                          ; $7f70: $b7
    jp z, Jump_006_7e9b                           ; $7f71: $ca $9b $7e

    ldh a, [rSB]                                  ; $7f74: $f0 $01
    or a                                          ; $7f76: $b7
    jr z, jr_006_7f8b                             ; $7f77: $28 $12

    cp $ff                                        ; $7f79: $fe $ff
    jr z, jr_006_7f8b                             ; $7f7b: $28 $0e

    cp $fe                                        ; $7f7d: $fe $fe
    jr z, jr_006_7f86                             ; $7f7f: $28 $05

    call Call_006_7f0c                            ; $7f81: $cd $0c $7f
    jr jr_006_7f8b                                ; $7f84: $18 $05

jr_006_7f86:
    ld a, $0a                                     ; $7f86: $3e $0a
    ld [$c0b3], a                                 ; $7f88: $ea $b3 $c0

jr_006_7f8b:
    call Call_006_7ee4                            ; $7f8b: $cd $e4 $7e
    ldh [rSB], a                                  ; $7f8e: $e0 $01
    ret                                           ; $7f90: $c9


Call_006_7f91:
    cp $f0                                        ; $7f91: $fe $f0
    jr c, jr_006_7fa6                             ; $7f93: $38 $11

    jr jr_006_7fbe                                ; $7f95: $18 $27

Jump_006_7f97:
    cp $66                                        ; $7f97: $fe $66
    ret nc                                        ; $7f99: $d0

    push af                                       ; $7f9a: $f5
    ld a, $f1                                     ; $7f9b: $3e $f1
    call Call_006_7f30                            ; $7f9d: $cd $30 $7f
    pop af                                        ; $7fa0: $f1
    add $82                                       ; $7fa1: $c6 $82
    jp Jump_006_7f30                              ; $7fa3: $c3 $30 $7f


jr_006_7fa6:
    sub $82                                       ; $7fa6: $d6 $82
    ret c                                         ; $7fa8: $d8

    cp $66                                        ; $7fa9: $fe $66
    jp nc, Jump_006_7dfe                          ; $7fab: $d2 $fe $7d

    ld b, a                                       ; $7fae: $47
    ld hl, $c0b4                                  ; $7faf: $21 $b4 $c0
    ld a, [hl]                                    ; $7fb2: $7e
    ld [hl], $f0                                  ; $7fb3: $36 $f0
    cp $f1                                        ; $7fb5: $fe $f1
    jp nz, Jump_006_7e06                          ; $7fb7: $c2 $06 $7e

    ld a, b                                       ; $7fba: $78
    jp Jump_006_6e87                              ; $7fbb: $c3 $87 $6e


jr_006_7fbe:
    cp $f5                                        ; $7fbe: $fe $f5
    jp nc, Jump_006_7dfe                          ; $7fc0: $d2 $fe $7d

    ld [$c0b4], a                                 ; $7fc3: $ea $b4 $c0
    sub $f0                                       ; $7fc6: $d6 $f0
    ld c, a                                       ; $7fc8: $4f
    rst $00                                       ; $7fc9: $c7
    call nc, $d47f                                ; $7fca: $d4 $7f $d4
    ld a, a                                       ; $7fcd: $7f
    sub c                                         ; $7fce: $91
    ld l, [hl]                                    ; $7fcf: $6e
    sbc h                                         ; $7fd0: $9c
    ld l, [hl]                                    ; $7fd1: $6e
    add [hl]                                      ; $7fd2: $86
    ld l, [hl]                                    ; $7fd3: $6e
    ret                                           ; $7fd4: $c9


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
