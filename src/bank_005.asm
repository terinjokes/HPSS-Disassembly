; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

    db $05, $01, $04, $b0, $00, $00, $00, $aa, $24, $00, $02, $00, $02

    ld b, $06                                     ; $400d: $06 $06
    add hl, bc                                    ; $400f: $09
    db $3e                                        ; $4010: $3e

    db $03, $01, $23, $40, $80, $00, $00, $03, $01, $1f, $40, $a0, $00, $00, $aa, $d9
    db $ca, $d9, $ea, $d9, $0a, $da, $03, $01, $1f, $40, $80, $00, $00, $a3, $dd, $c3
    db $dd, $e3, $dd, $03, $de, $c0, $01, $80, $01, $40, $01, $00, $01, $c0, $00, $80
    db $00, $40, $00, $00, $00, $01, $00, $00, $00, $12, $14, $04, $00, $0d, $21, $01
    db $40, $c3, $37, $28, $af, $e0, $c1, $3e, $e1, $e0, $bd, $3e, $56, $e0, $be, $cd
    db $41, $34

    jr nz, jr_005_408d                            ; $4063: $20 $28

    ld a, $01                                     ; $4065: $3e $01
    ldh [$c1], a                                  ; $4067: $e0 $c1
    ld a, $e1                                     ; $4069: $3e $e1
    ldh [$bd], a                                  ; $406b: $e0 $bd
    ld a, $56                                     ; $406d: $3e $56
    ldh [$be], a                                  ; $406f: $e0 $be
    call Call_000_3441                            ; $4071: $cd $41 $34
    jr nz, jr_005_408d                            ; $4074: $20 $17

    ld a, $02                                     ; $4076: $3e $02
    ldh [$c1], a                                  ; $4078: $e0 $c1
    ld a, $e1                                     ; $407a: $3e $e1
    ldh [$bd], a                                  ; $407c: $e0 $bd
    ld a, $56                                     ; $407e: $3e $56
    ldh [$be], a                                  ; $4080: $e0 $be
    call Call_000_3441                            ; $4082: $cd $41 $34
    jr nz, jr_005_408d                            ; $4085: $20 $06

    xor a                                         ; $4087: $af
    ld [$cb40], a                                 ; $4088: $ea $40 $cb
    jr jr_005_4092                                ; $408b: $18 $05

jr_005_408d:
    ld a, $01                                     ; $408d: $3e $01
    ld [$cb40], a                                 ; $408f: $ea $40 $cb

jr_005_4092:
    xor a                                         ; $4092: $af
    ld [$cbc5], a                                 ; $4093: $ea $c5 $cb
    ld [$cd55], a                                 ; $4096: $ea $55 $cd
    call Call_005_420b                            ; $4099: $cd $0b $42
    ld hl, $cbc6                                  ; $409c: $21 $c6 $cb
    ld [hl], $29                                  ; $409f: $36 $29
    inc hl                                        ; $40a1: $23
    ld [hl], $42                                  ; $40a2: $36 $42
    ld bc, $0011                                  ; $40a4: $01 $11 $00
    ld hl, $cb29                                  ; $40a7: $21 $29 $cb
    call Call_000_112e                            ; $40aa: $cd $2e $11
    ld hl, $7974                                  ; $40ad: $21 $74 $79
    ldh [$c1], a                                  ; $40b0: $e0 $c1
    ld a, $6d                                     ; $40b2: $3e $6d
    ldh [$bd], a                                  ; $40b4: $e0 $bd
    ld a, $7c                                     ; $40b6: $3e $7c
    ldh [$be], a                                  ; $40b8: $e0 $be
    call Call_000_343a                            ; $40ba: $cd $3a $34
    call Call_005_429a                            ; $40bd: $cd $9a $42
    call Call_005_4266                            ; $40c0: $cd $66 $42
    ld a, [$c0c3]                                 ; $40c3: $fa $c3 $c0
    ld de, $0078                                  ; $40c6: $11 $78 $00
    or a                                          ; $40c9: $b7
    jr z, jr_005_40cf                             ; $40ca: $28 $03

    ld de, $0000                                  ; $40cc: $11 $00 $00

jr_005_40cf:
    call Call_000_30e1                            ; $40cf: $cd $e1 $30
    ld a, $2d                                     ; $40d2: $3e $2d
    call Call_000_395e                            ; $40d4: $cd $5e $39
    ld a, $01                                     ; $40d7: $3e $01
    ld hl, $5fd2                                  ; $40d9: $21 $d2 $5f
    ldh [$c1], a                                  ; $40dc: $e0 $c1
    ld a, $0f                                     ; $40de: $3e $0f
    ldh [$bd], a                                  ; $40e0: $e0 $bd
    ld a, $25                                     ; $40e2: $3e $25
    ldh [$be], a                                  ; $40e4: $e0 $be
    call Call_000_3454                            ; $40e6: $cd $54 $34
    ld hl, $ffb8                                  ; $40e9: $21 $b8 $ff
    ld [hl], $00                                  ; $40ec: $36 $00
    inc hl                                        ; $40ee: $23
    ld [hl], $00                                  ; $40ef: $36 $00
    ld a, $80                                     ; $40f1: $3e $80
    ldh [$c1], a                                  ; $40f3: $e0 $c1
    ld a, $d6                                     ; $40f5: $3e $d6
    ldh [$bd], a                                  ; $40f7: $e0 $bd
    ld a, $11                                     ; $40f9: $3e $11
    ldh [$be], a                                  ; $40fb: $e0 $be
    call Call_000_3454                            ; $40fd: $cd $54 $34
    ld a, [$cddd]                                 ; $4100: $fa $dd $cd
    add $91                                       ; $4103: $c6 $91
    ldh [$c1], a                                  ; $4105: $e0 $c1
    ld a, $d6                                     ; $4107: $3e $d6
    ldh [$bd], a                                  ; $4109: $e0 $bd
    ld a, $11                                     ; $410b: $3e $11
    ldh [$be], a                                  ; $410d: $e0 $be
    call Call_000_3454                            ; $410f: $cd $54 $34
    ld a, [$cddd]                                 ; $4112: $fa $dd $cd
    add $91                                       ; $4115: $c6 $91
    call Call_000_03a0                            ; $4117: $cd $a0 $03
    xor a                                         ; $411a: $af
    ldh [$9b], a                                  ; $411b: $e0 $9b
    ld a, $80                                     ; $411d: $3e $80
    call Call_000_03a0                            ; $411f: $cd $a0 $03
    ld hl, $cd55                                  ; $4122: $21 $55 $cd
    dec [hl]                                      ; $4125: $35
    ldh [$c1], a                                  ; $4126: $e0 $c1
    ld a, $93                                     ; $4128: $3e $93
    ldh [$bd], a                                  ; $412a: $e0 $bd
    ld a, $4d                                     ; $412c: $3e $4d
    ldh [$be], a                                  ; $412e: $e0 $be
    jp Jump_000_3441                              ; $4130: $c3 $41 $34


    call Call_000_30f3                            ; $4133: $cd $f3 $30
    ret nz                                        ; $4136: $c0

    ld a, $01                                     ; $4137: $3e $01
    ld [$c0c3], a                                 ; $4139: $ea $c3 $c0
    rst $18                                       ; $413c: $df
    ld hl, $4018                                  ; $413d: $21 $18 $40
    call Call_000_301f                            ; $4140: $cd $1f $30
    ld a, $90                                     ; $4143: $3e $90
    ld [$c1eb], a                                 ; $4145: $ea $eb $c1
    ld a, $04                                     ; $4148: $3e $04
    ld [$c234], a                                 ; $414a: $ea $34 $c2
    ld b, $04                                     ; $414d: $06 $04
    ld hl, $1b22                                  ; $414f: $21 $22 $1b
    ldh [$c1], a                                  ; $4152: $e0 $c1
    ld a, $1a                                     ; $4154: $3e $1a
    ldh [$bd], a                                  ; $4156: $e0 $bd
    ld a, $6e                                     ; $4158: $3e $6e
    ldh [$be], a                                  ; $415a: $e0 $be
    call Call_000_342c                            ; $415c: $cd $2c $34
    rst $20                                       ; $415f: $e7
    ld hl, $cd02                                  ; $4160: $21 $02 $cd
    ld [hl], $69                                  ; $4163: $36 $69
    inc hl                                        ; $4165: $23
    ld [hl], $41                                  ; $4166: $36 $41
    ret                                           ; $4168: $c9


    ld a, [$cd55]                                 ; $4169: $fa $55 $cd
    inc a                                         ; $416c: $3c
    jr z, jr_005_417c                             ; $416d: $28 $0d

    ldh a, [$a5]                                  ; $416f: $f0 $a5
    and $c0                                       ; $4171: $e6 $c0
    jr nz, jr_005_4191                            ; $4173: $20 $1c

    ldh a, [$a5]                                  ; $4175: $f0 $a5
    and $09                                       ; $4177: $e6 $09
    jr nz, jr_005_41bf                            ; $4179: $20 $44

    ret                                           ; $417b: $c9


jr_005_417c:
    ldh a, [$a5]                                  ; $417c: $f0 $a5
    and $08                                       ; $417e: $e6 $08
    jr nz, jr_005_4183                            ; $4180: $20 $01

    ret                                           ; $4182: $c9


jr_005_4183:
    ld a, $17                                     ; $4183: $3e $17
    call Call_000_393e                            ; $4185: $cd $3e $39
    ld a, [$cb40]                                 ; $4188: $fa $40 $cb
    ld [$cd55], a                                 ; $418b: $ea $55 $cd
    jp Jump_005_42c0                              ; $418e: $c3 $c0 $42


jr_005_4191:
    cp $40                                        ; $4191: $fe $40
    ld a, $ff                                     ; $4193: $3e $ff
    jr z, jr_005_4199                             ; $4195: $28 $02

    ld a, $01                                     ; $4197: $3e $01

jr_005_4199:
    ld hl, $cd55                                  ; $4199: $21 $55 $cd
    add [hl]                                      ; $419c: $86
    and $03                                       ; $419d: $e6 $03
    cp $03                                        ; $419f: $fe $03
    jr nz, jr_005_41b6                            ; $41a1: $20 $13

    ld a, [$cb40]                                 ; $41a3: $fa $40 $cb
    or a                                          ; $41a6: $b7
    ld a, $03                                     ; $41a7: $3e $03
    jr nz, jr_005_41b6                            ; $41a9: $20 $0b

    ldh a, [$a5]                                  ; $41ab: $f0 $a5
    and $40                                       ; $41ad: $e6 $40
    jr z, jr_005_41b5                             ; $41af: $28 $04

    ld a, $02                                     ; $41b1: $3e $02
    jr jr_005_41b6                                ; $41b3: $18 $01

jr_005_41b5:
    xor a                                         ; $41b5: $af

jr_005_41b6:
    ld [hl], a                                    ; $41b6: $77
    ld a, $19                                     ; $41b7: $3e $19
    call Call_000_393e                            ; $41b9: $cd $3e $39
    jp Jump_005_4266                              ; $41bc: $c3 $66 $42


jr_005_41bf:
    ld a, [$cb40]                                 ; $41bf: $fa $40 $cb
    or a                                          ; $41c2: $b7
    jr nz, jr_005_41cf                            ; $41c3: $20 $0a

    ld a, [$cd55]                                 ; $41c5: $fa $55 $cd
    or a                                          ; $41c8: $b7
    jr z, jr_005_41cf                             ; $41c9: $28 $04

    inc a                                         ; $41cb: $3c
    ld [$cd55], a                                 ; $41cc: $ea $55 $cd

jr_005_41cf:
    ldh a, [$c2]                                  ; $41cf: $f0 $c2
    ld [$ce04], a                                 ; $41d1: $ea $04 $ce
    ldh [$c1], a                                  ; $41d4: $e0 $c1
    ld a, $8d                                     ; $41d6: $3e $8d
    ldh [$bd], a                                  ; $41d8: $e0 $bd
    ld a, $5e                                     ; $41da: $3e $5e
    ldh [$be], a                                  ; $41dc: $e0 $be
    call Call_000_3448                            ; $41de: $cd $48 $34
    ld a, $17                                     ; $41e1: $3e $17
    call Call_000_393e                            ; $41e3: $cd $3e $39
    ld a, [$cd55]                                 ; $41e6: $fa $55 $cd
    or a                                          ; $41e9: $b7
    jr z, jr_005_41fa                             ; $41ea: $28 $0e

    ld hl, $400d                                  ; $41ec: $21 $0d $40
    cp $03                                        ; $41ef: $fe $03
    jr z, jr_005_4202                             ; $41f1: $28 $0f

    rst $08                                       ; $41f3: $cf
    ld de, $0000                                  ; $41f4: $11 $00 $00
    jp Jump_000_244b                              ; $41f7: $c3 $4b $24


jr_005_41fa:
    ld a, $06                                     ; $41fa: $3e $06
    ld de, $0100                                  ; $41fc: $11 $00 $01
    jp Jump_000_244b                              ; $41ff: $c3 $4b $24


jr_005_4202:
    ld a, [$4010]                                 ; $4202: $fa $10 $40
    ld de, $0000                                  ; $4205: $11 $00 $00
    jp Jump_000_244b                              ; $4208: $c3 $4b $24


Call_005_420b:
    call Call_000_19b7                            ; $420b: $cd $b7 $19
    ld de, $5e85                                  ; $420e: $11 $85 $5e
    ld hl, $c124                                  ; $4211: $21 $24 $c1
    ld a, $04                                     ; $4214: $3e $04
    ld [hl+], a                                   ; $4216: $22
    xor a                                         ; $4217: $af
    ld [hl+], a                                   ; $4218: $22
    ld [hl+], a                                   ; $4219: $22
    ld a, e                                       ; $421a: $7b
    ld [hl+], a                                   ; $421b: $22
    ld [hl], d                                    ; $421c: $72
    ld hl, $c129                                  ; $421d: $21 $29 $c1
    ld a, $04                                     ; $4220: $3e $04
    ld [hl+], a                                   ; $4222: $22
    ld [hl+], a                                   ; $4223: $22
    ld [hl+], a                                   ; $4224: $22
    ld a, e                                       ; $4225: $7b
    ld [hl+], a                                   ; $4226: $22
    ld [hl], d                                    ; $4227: $72
    ret                                           ; $4228: $c9


    ld a, [$cbc5]                                 ; $4229: $fa $c5 $cb
    add a                                         ; $422c: $87
    ld c, a                                       ; $422d: $4f
    ld de, $cb2a                                  ; $422e: $11 $2a $cb
    add e                                         ; $4231: $83
    ld e, a                                       ; $4232: $5f
    ld a, $00                                     ; $4233: $3e $00
    adc d                                         ; $4235: $8a
    ld d, a                                       ; $4236: $57
    ld a, c                                       ; $4237: $79
    ld hl, $4036                                  ; $4238: $21 $36 $40
    add l                                         ; $423b: $85
    ld l, a                                       ; $423c: $6f
    ld a, $00                                     ; $423d: $3e $00
    adc h                                         ; $423f: $8c
    ld h, a                                       ; $4240: $67
    ld a, [de]                                    ; $4241: $1a
    add [hl]                                      ; $4242: $86
    ld [de], a                                    ; $4243: $12
    inc de                                        ; $4244: $13
    inc hl                                        ; $4245: $23
    ld a, [de]                                    ; $4246: $1a
    adc [hl]                                      ; $4247: $8e
    ld [de], a                                    ; $4248: $12
    ld b, a                                       ; $4249: $47

jr_005_424a:
    ldh a, [rSTAT]                                ; $424a: $f0 $41
    and $03                                       ; $424c: $e6 $03
    jr z, jr_005_424a                             ; $424e: $28 $fa

jr_005_4250:
    ldh a, [rSTAT]                                ; $4250: $f0 $41
    and $03                                       ; $4252: $e6 $03
    jr nz, jr_005_4250                            ; $4254: $20 $fa

    ld a, b                                       ; $4256: $78
    ldh [rSCX], a                                 ; $4257: $e0 $43
    ld a, c                                       ; $4259: $79
    srl a                                         ; $425a: $cb $3f
    inc a                                         ; $425c: $3c
    cp $08                                        ; $425d: $fe $08
    jr nz, jr_005_4262                            ; $425f: $20 $01

    xor a                                         ; $4261: $af

jr_005_4262:
    ld [$cbc5], a                                 ; $4262: $ea $c5 $cb
    ret                                           ; $4265: $c9


Call_005_4266:
Jump_005_4266:
    rst $18                                       ; $4266: $df
    ld bc, $0704                                  ; $4267: $01 $04 $07
    ld de, $010e                                  ; $426a: $11 $0e $01
    ld hl, $dda3                                  ; $426d: $21 $a3 $dd
    call Call_000_1390                            ; $4270: $cd $90 $13
    ld bc, $0706                                  ; $4273: $01 $06 $07
    ld de, $030e                                  ; $4276: $11 $0e $03
    ld hl, $ddc3                                  ; $4279: $21 $c3 $dd
    call Call_000_1390                            ; $427c: $cd $90 $13
    ld a, [$cd55]                                 ; $427f: $fa $55 $cd
    or a                                          ; $4282: $b7
    ld c, $07                                     ; $4283: $0e $07
    jr nz, jr_005_4289                            ; $4285: $20 $02

    ld c, $05                                     ; $4287: $0e $05

jr_005_4289:
    ld b, $07                                     ; $4289: $06 $07
    ld de, $010e                                  ; $428b: $11 $0e $01
    ld hl, $402e                                  ; $428e: $21 $2e $40
    call Call_000_319d                            ; $4291: $cd $9d $31
    call Call_000_1390                            ; $4294: $cd $90 $13
    jp RST_20                                     ; $4297: $c3 $20 $00


Call_005_429a:
    rst $18                                       ; $429a: $df
    ld hl, $4011                                  ; $429b: $21 $11 $40
    call Call_000_301f                            ; $429e: $cd $1f $30
    ld a, $90                                     ; $42a1: $3e $90
    ld [$c1eb], a                                 ; $42a3: $ea $eb $c1
    ld a, $04                                     ; $42a6: $3e $04
    ld [$c234], a                                 ; $42a8: $ea $34 $c2
    ld b, $04                                     ; $42ab: $06 $04
    ld hl, $1b1f                                  ; $42ad: $21 $1f $1b
    ldh [$c1], a                                  ; $42b0: $e0 $c1
    ld a, $1a                                     ; $42b2: $3e $1a
    ldh [$bd], a                                  ; $42b4: $e0 $bd
    ld a, $6e                                     ; $42b6: $3e $6e
    ldh [$be], a                                  ; $42b8: $e0 $be
    call Call_000_342c                            ; $42ba: $cd $2c $34
    jp RST_20                                     ; $42bd: $c3 $20 $00


Jump_005_42c0:
    rst $18                                       ; $42c0: $df
    ld de, $4046                                  ; $42c1: $11 $46 $40
    call Call_000_134e                            ; $42c4: $cd $4e $13
    rst $20                                       ; $42c7: $e7
    call Call_000_3308                            ; $42c8: $cd $08 $33
    rst $18                                       ; $42cb: $df
    ld hl, $4027                                  ; $42cc: $21 $27 $40
    call Call_000_301f                            ; $42cf: $cd $1f $30
    ld a, $70                                     ; $42d2: $3e $70
    ld [$c1eb], a                                 ; $42d4: $ea $eb $c1
    ld a, $01                                     ; $42d7: $3e $01
    ld [$c234], a                                 ; $42d9: $ea $34 $c2
    ld a, [$cb40]                                 ; $42dc: $fa $40 $cb
    add $03                                       ; $42df: $c6 $03
    ld b, a                                       ; $42e1: $47
    ld hl, $15eb                                  ; $42e2: $21 $eb $15
    ld de, $0006                                  ; $42e5: $11 $06 $00

jr_005_42e8:
    ldh [$c1], a                                  ; $42e8: $e0 $c1
    ld a, $1a                                     ; $42ea: $3e $1a
    ldh [$bd], a                                  ; $42ec: $e0 $bd
    ld a, $6e                                     ; $42ee: $3e $6e
    ldh [$be], a                                  ; $42f0: $e0 $be
    call Call_000_342c                            ; $42f2: $cd $2c $34
    ld a, [$cb40]                                 ; $42f5: $fa $40 $cb
    or a                                          ; $42f8: $b7
    jr z, jr_005_42fe                             ; $42f9: $28 $03

    ld de, $0003                                  ; $42fb: $11 $03 $00

jr_005_42fe:
    add hl, de                                    ; $42fe: $19
    ld de, $0003                                  ; $42ff: $11 $03 $00
    dec b                                         ; $4302: $05
    jr nz, jr_005_42e8                            ; $4303: $20 $e3

    call Call_005_4266                            ; $4305: $cd $66 $42
    jp RST_20                                     ; $4308: $c3 $20 $00


    ld bc, $8009                                  ; $430b: $01 $09 $80
    nop                                           ; $430e: $00
    nop                                           ; $430f: $00
    nop                                           ; $4310: $00
    xor d                                         ; $4311: $aa
    inc h                                         ; $4312: $24
    ld bc, $0002                                  ; $4313: $01 $02 $00
    ld bc, $0201                                  ; $4316: $01 $01 $02
    nop                                           ; $4319: $00
    ld [bc], a                                    ; $431a: $02
    ld b, $01                                     ; $431b: $06 $01
    ld [bc], a                                    ; $431d: $02
    rst $38                                       ; $431e: $ff
    ld [bc], a                                    ; $431f: $02
    ld b, $21                                     ; $4320: $06 $21
    dec bc                                        ; $4322: $0b
    ld b, e                                       ; $4323: $43
    jp Jump_000_2837                              ; $4324: $c3 $37 $28


    ld a, $2a                                     ; $4327: $3e $2a
    call Call_000_395e                            ; $4329: $cd $5e $39
    ld a, $00                                     ; $432c: $3e $00
    ldh [$c1], a                                  ; $432e: $e0 $c1
    ld a, $c0                                     ; $4330: $3e $c0
    ldh [$bd], a                                  ; $4332: $e0 $bd
    ld a, $70                                     ; $4334: $3e $70
    ldh [$be], a                                  ; $4336: $e0 $be
    call Call_000_342c                            ; $4338: $cd $2c $34
    ld hl, $ffb8                                  ; $433b: $21 $b8 $ff
    ld [hl], $00                                  ; $433e: $36 $00
    inc hl                                        ; $4340: $23
    ld [hl], $00                                  ; $4341: $36 $00
    ld a, $81                                     ; $4343: $3e $81
    ldh [$c1], a                                  ; $4345: $e0 $c1
    ld a, $d6                                     ; $4347: $3e $d6
    ldh [$bd], a                                  ; $4349: $e0 $bd
    ld a, $11                                     ; $434b: $3e $11
    ldh [$be], a                                  ; $434d: $e0 $be
    call Call_000_3454                            ; $434f: $cd $54 $34
    ld a, $02                                     ; $4352: $3e $02
    ld hl, $5fd2                                  ; $4354: $21 $d2 $5f
    ldh [$c1], a                                  ; $4357: $e0 $c1
    ld a, $0f                                     ; $4359: $3e $0f
    ldh [$bd], a                                  ; $435b: $e0 $bd
    ld a, $25                                     ; $435d: $3e $25
    ldh [$be], a                                  ; $435f: $e0 $be
    call Call_000_3454                            ; $4361: $cd $54 $34
    call Call_005_44ef                            ; $4364: $cd $ef $44
    xor a                                         ; $4367: $af
    ld [$cbc5], a                                 ; $4368: $ea $c5 $cb
    ld bc, $0005                                  ; $436b: $01 $05 $00
    ld hl, $cb2a                                  ; $436e: $21 $2a $cb
    call Call_000_112e                            ; $4371: $cd $2e $11
    ld hl, $cbc6                                  ; $4374: $21 $c6 $cb
    ld [hl], $2d                                  ; $4377: $36 $2d
    inc hl                                        ; $4379: $23
    ld [hl], $44                                  ; $437a: $36 $44
    ld a, $60                                     ; $437c: $3e $60
    ld [$cb2c], a                                 ; $437e: $ea $2c $cb
    ld a, $32                                     ; $4381: $3e $32
    ld [$cbc4], a                                 ; $4383: $ea $c4 $cb
    ld a, $50                                     ; $4386: $3e $50
    ld [$cb30], a                                 ; $4388: $ea $30 $cb
    ld [$cb32], a                                 ; $438b: $ea $32 $cb
    ld a, $02                                     ; $438e: $3e $02
    ld [$cb31], a                                 ; $4390: $ea $31 $cb
    ld hl, $7a2a                                  ; $4393: $21 $2a $7a
    ldh [$c1], a                                  ; $4396: $e0 $c1
    ld a, $6d                                     ; $4398: $3e $6d
    ldh [$bd], a                                  ; $439a: $e0 $bd
    ld a, $7c                                     ; $439c: $3e $7c
    ldh [$be], a                                  ; $439e: $e0 $be
    call Call_000_343a                            ; $43a0: $cd $3a $34
    ld b, $00                                     ; $43a3: $06 $00
    ld c, $01                                     ; $43a5: $0e $01
    ld de, $0001                                  ; $43a7: $11 $01 $00
    call Call_000_30e1                            ; $43aa: $cd $e1 $30
    ld de, $0001                                  ; $43ad: $11 $01 $00
    jp Jump_000_30ea                              ; $43b0: $c3 $ea $30


    ld a, [$cbc4]                                 ; $43b3: $fa $c4 $cb
    or a                                          ; $43b6: $b7
    jr z, jr_005_43bd                             ; $43b7: $28 $04

    dec a                                         ; $43b9: $3d
    ld [$cbc4], a                                 ; $43ba: $ea $c4 $cb

jr_005_43bd:
    call z, Call_005_447a                         ; $43bd: $cc $7a $44
    call Call_005_44af                            ; $43c0: $cd $af $44
    ldh a, [$a5]                                  ; $43c3: $f0 $a5
    and $01                                       ; $43c5: $e6 $01
    jr nz, jr_005_43ce                            ; $43c7: $20 $05

    ld a, [$cb30]                                 ; $43c9: $fa $30 $cb
    or a                                          ; $43cc: $b7
    ret nz                                        ; $43cd: $c0

jr_005_43ce:
    ldh [$bc], a                                  ; $43ce: $e0 $bc
    ldh a, [rSVBK]                                ; $43d0: $f0 $70
    push af                                       ; $43d2: $f5
    ld a, $06                                     ; $43d3: $3e $06
    ldh [rSVBK], a                                ; $43d5: $e0 $70
    ldh a, [$bc]                                  ; $43d7: $f0 $bc
    ldh a, [$d8]                                  ; $43d9: $f0 $d8
    ld [$d6d1], a                                 ; $43db: $ea $d1 $d6
    cp $43                                        ; $43de: $fe $43
    jr nz, jr_005_4405                            ; $43e0: $20 $23

    ld a, $0e                                     ; $43e2: $3e $0e
    ldh [$da], a                                  ; $43e4: $e0 $da
    ld [$d6d2], a                                 ; $43e6: $ea $d2 $d6
    ldh [$bc], a                                  ; $43e9: $e0 $bc
    pop af                                        ; $43eb: $f1
    ldh [rSVBK], a                                ; $43ec: $e0 $70
    ldh a, [$bc]                                  ; $43ee: $f0 $bc
    xor a                                         ; $43f0: $af
    ldh [$d9], a                                  ; $43f1: $e0 $d9
    ld [$c0bb], a                                 ; $43f3: $ea $bb $c0
    ld a, $01                                     ; $43f6: $3e $01
    ld [$c0c1], a                                 ; $43f8: $ea $c1 $c0
    ld a, $00                                     ; $43fb: $3e $00
    ld [$cb17], a                                 ; $43fd: $ea $17 $cb
    ld a, $0b                                     ; $4400: $3e $0b
    jp Jump_000_2448                              ; $4402: $c3 $48 $24


jr_005_4405:
    xor a                                         ; $4405: $af
    ldh [$d8], a                                  ; $4406: $e0 $d8
    ld [$d6d1], a                                 ; $4408: $ea $d1 $d6
    ldh [$da], a                                  ; $440b: $e0 $da
    ld [$d6d2], a                                 ; $440d: $ea $d2 $d6
    ldh [$bc], a                                  ; $4410: $e0 $bc
    pop af                                        ; $4412: $f1
    ldh [rSVBK], a                                ; $4413: $e0 $70
    ldh a, [$bc]                                  ; $4415: $f0 $bc
    ld [$c0bb], a                                 ; $4417: $ea $bb $c0
    ld a, $0a                                     ; $441a: $3e $0a
    ldh [$d9], a                                  ; $441c: $e0 $d9
    ld a, $01                                     ; $441e: $3e $01
    ld [$c0c1], a                                 ; $4420: $ea $c1 $c0
    ld a, $00                                     ; $4423: $3e $00
    ld [$cb17], a                                 ; $4425: $ea $17 $cb
    ld a, $0b                                     ; $4428: $3e $0b
    jp Jump_000_2448                              ; $442a: $c3 $48 $24


    ld a, [$cbc5]                                 ; $442d: $fa $c5 $cb
    ld c, a                                       ; $4430: $4f
    ld de, $cb2a                                  ; $4431: $11 $2a $cb
    cp $05                                        ; $4434: $fe $05
    jr nc, jr_005_4456                            ; $4436: $30 $1e

    add e                                         ; $4438: $83
    ld e, a                                       ; $4439: $5f
    ld a, $00                                     ; $443a: $3e $00
    adc d                                         ; $443c: $8a
    ld d, a                                       ; $443d: $57
    ld hl, $4317                                  ; $443e: $21 $17 $43
    ld a, [$cbc4]                                 ; $4441: $fa $c4 $cb
    or a                                          ; $4444: $b7
    jr nz, jr_005_444a                            ; $4445: $20 $03

    ld hl, $431c                                  ; $4447: $21 $1c $43

jr_005_444a:
    ld a, c                                       ; $444a: $79
    add l                                         ; $444b: $85
    ld l, a                                       ; $444c: $6f
    ld a, $00                                     ; $444d: $3e $00
    adc h                                         ; $444f: $8c
    ld h, a                                       ; $4450: $67
    ld a, [de]                                    ; $4451: $1a
    add [hl]                                      ; $4452: $86
    ld [de], a                                    ; $4453: $12
    jr jr_005_445f                                ; $4454: $18 $09

jr_005_4456:
    sub $05                                       ; $4456: $d6 $05
    add e                                         ; $4458: $83
    ld e, a                                       ; $4459: $5f
    ld a, $00                                     ; $445a: $3e $00
    adc d                                         ; $445c: $8a
    ld d, a                                       ; $445d: $57
    ld a, [de]                                    ; $445e: $1a

jr_005_445f:
    ld b, a                                       ; $445f: $47

jr_005_4460:
    ldh a, [rSTAT]                                ; $4460: $f0 $41
    and $03                                       ; $4462: $e6 $03
    jr z, jr_005_4460                             ; $4464: $28 $fa

jr_005_4466:
    ldh a, [rSTAT]                                ; $4466: $f0 $41
    and $03                                       ; $4468: $e6 $03
    jr nz, jr_005_4466                            ; $446a: $20 $fa

    ld a, b                                       ; $446c: $78
    ldh [rSCX], a                                 ; $446d: $e0 $43
    inc c                                         ; $446f: $0c
    ld a, c                                       ; $4470: $79
    sub $0a                                       ; $4471: $d6 $0a
    jr z, jr_005_4476                             ; $4473: $28 $01

    ld a, c                                       ; $4475: $79

jr_005_4476:
    ld [$cbc5], a                                 ; $4476: $ea $c5 $cb
    ret                                           ; $4479: $c9


Call_005_447a:
    ld a, [$cb30]                                 ; $447a: $fa $30 $cb
    ld hl, $cb32                                  ; $447d: $21 $32 $cb
    cp [hl]                                       ; $4480: $be
    ret z                                         ; $4481: $c8

    ld [hl], a                                    ; $4482: $77
    ldh [$f0], a                                  ; $4483: $e0 $f0
    add $18                                       ; $4485: $c6 $18
    and $1f                                       ; $4487: $e6 $1f
    ld hl, $d8c0                                  ; $4489: $21 $c0 $d8
    rst $08                                       ; $448c: $cf
    ld e, l                                       ; $448d: $5d
    ld d, h                                       ; $448e: $54
    ld a, $08                                     ; $448f: $3e $08
    ldh [$f2], a                                  ; $4491: $e0 $f2
    ld a, $06                                     ; $4493: $3e $06
    ldh [$f3], a                                  ; $4495: $e0 $f3
    xor a                                         ; $4497: $af
    ldh [$f1], a                                  ; $4498: $e0 $f1
    ld a, $0a                                     ; $449a: $3e $0a
    ld bc, $0000                                  ; $449c: $01 $00 $00
    ld hl, $537b                                  ; $449f: $21 $7b $53
    ldh [$c1], a                                  ; $44a2: $e0 $c1
    ld a, $2a                                     ; $44a4: $3e $2a
    ldh [$bd], a                                  ; $44a6: $e0 $bd
    ld a, $33                                     ; $44a8: $3e $33
    ldh [$be], a                                  ; $44aa: $e0 $be
    jp Jump_000_3454                              ; $44ac: $c3 $54 $34


Call_005_44af:
    ld a, [$cb30]                                 ; $44af: $fa $30 $cb
    cp $29                                        ; $44b2: $fe $29
    jr c, jr_005_44cd                             ; $44b4: $38 $17

    cp $48                                        ; $44b6: $fe $48
    jr nc, jr_005_44cd                            ; $44b8: $30 $13

    call Call_000_30f3                            ; $44ba: $cd $f3 $30
    jr nz, jr_005_44cd                            ; $44bd: $20 $0e

    xor a                                         ; $44bf: $af
    ldh [$9b], a                                  ; $44c0: $e0 $9b
    ld a, $81                                     ; $44c2: $3e $81
    call Call_000_03a0                            ; $44c4: $cd $a0 $03
    ld de, $0014                                  ; $44c7: $11 $14 $00
    call Call_000_30e1                            ; $44ca: $cd $e1 $30

jr_005_44cd:
    call Call_000_30fc                            ; $44cd: $cd $fc $30
    ret nz                                        ; $44d0: $c0

    ld a, $03                                     ; $44d1: $3e $03
    call Call_000_2722                            ; $44d3: $cd $22 $27
    inc a                                         ; $44d6: $3c
    ldh [$9b], a                                  ; $44d7: $e0 $9b
    ld a, $81                                     ; $44d9: $3e $81
    call Call_000_03a0                            ; $44db: $cd $a0 $03
    ld a, $1e                                     ; $44de: $3e $1e
    call Call_000_2722                            ; $44e0: $cd $22 $27
    ld de, $002d                                  ; $44e3: $11 $2d $00
    add e                                         ; $44e6: $83
    ld e, a                                       ; $44e7: $5f
    ld a, $00                                     ; $44e8: $3e $00
    adc d                                         ; $44ea: $8a
    ld d, a                                       ; $44eb: $57
    jp Jump_000_30ea                              ; $44ec: $c3 $ea $30


Call_005_44ef:
    call Call_000_19b7                            ; $44ef: $cd $b7 $19
    ld hl, $c124                                  ; $44f2: $21 $24 $c1
    ld a, $04                                     ; $44f5: $3e $04
    ld [hl+], a                                   ; $44f7: $22
    xor a                                         ; $44f8: $af
    ld [hl+], a                                   ; $44f9: $22
    ld [hl+], a                                   ; $44fa: $22
    ld a, $55                                     ; $44fb: $3e $55
    ld [hl+], a                                   ; $44fd: $22
    ld a, $5e                                     ; $44fe: $3e $5e
    ld [hl+], a                                   ; $4500: $22
    ret                                           ; $4501: $c9


    ld bc, $2027                                  ; $4502: $01 $27 $20
    ld bc, $0000                                  ; $4505: $01 $00 $00
    xor d                                         ; $4508: $aa
    inc h                                         ; $4509: $24
    ld bc, $0102                                  ; $450a: $01 $02 $01
    ld [bc], a                                    ; $450d: $02
    and c                                         ; $450e: $a1
    reti                                          ; $450f: $d9


    and e                                         ; $4510: $a3
    reti                                          ; $4511: $d9


    and l                                         ; $4512: $a5
    reti                                          ; $4513: $d9


    and a                                         ; $4514: $a7
    reti                                          ; $4515: $d9


    xor c                                         ; $4516: $a9
    reti                                          ; $4517: $d9


    xor e                                         ; $4518: $ab
    reti                                          ; $4519: $d9


    xor l                                         ; $451a: $ad
    reti                                          ; $451b: $d9


    xor a                                         ; $451c: $af
    reti                                          ; $451d: $d9


    pop hl                                        ; $451e: $e1
    reti                                          ; $451f: $d9


    db $e3                                        ; $4520: $e3
    reti                                          ; $4521: $d9


    push hl                                       ; $4522: $e5
    reti                                          ; $4523: $d9


    rst $20                                       ; $4524: $e7
    reti                                          ; $4525: $d9


    jp hl                                         ; $4526: $e9


    reti                                          ; $4527: $d9


    db $eb                                        ; $4528: $eb
    reti                                          ; $4529: $d9


    db $ed                                        ; $452a: $ed
    reti                                          ; $452b: $d9


    rst $28                                       ; $452c: $ef
    reti                                          ; $452d: $d9


    ld bc, $3501                                  ; $452e: $01 $01 $35
    ld b, l                                       ; $4531: $45
    or b                                          ; $4532: $b0
    nop                                           ; $4533: $00
    ld b, b                                       ; $4534: $40
    ld a, [bc]                                    ; $4535: $0a
    ret c                                         ; $4536: $d8

    ld bc, $3e05                                  ; $4537: $01 $05 $3e
    ld b, l                                       ; $453a: $45
    ret nz                                        ; $453b: $c0

    nop                                           ; $453c: $00
    ld b, b                                       ; $453d: $40
    ld [$0ad8], a                                 ; $453e: $ea $d8 $0a
    reti                                          ; $4541: $d9


    ld a, [hl+]                                   ; $4542: $2a
    reti                                          ; $4543: $d9


    ld c, d                                       ; $4544: $4a
    reti                                          ; $4545: $d9


    ld l, d                                       ; $4546: $6a
    reti                                          ; $4547: $d9


    ld a, $01                                     ; $4548: $3e $01
    ld [$cb2f], a                                 ; $454a: $ea $2f $cb
    ld hl, $4502                                  ; $454d: $21 $02 $45
    jp Jump_000_2837                              ; $4550: $c3 $37 $28


    call Call_000_19b7                            ; $4553: $cd $b7 $19
    ld hl, $c124                                  ; $4556: $21 $24 $c1
    ld a, $04                                     ; $4559: $3e $04
    ld [hl+], a                                   ; $455b: $22
    ld [hl+], a                                   ; $455c: $22
    ld [hl+], a                                   ; $455d: $22
    ld a, $7f                                     ; $455e: $3e $7f
    ld [hl+], a                                   ; $4560: $22
    ld a, $5e                                     ; $4561: $3e $5e
    ld [hl+], a                                   ; $4563: $22
    xor a                                         ; $4564: $af
    call Call_005_46a3                            ; $4565: $cd $a3 $46
    xor a                                         ; $4568: $af
    call Call_005_46af                            ; $4569: $cd $af $46
    ld hl, $79a5                                  ; $456c: $21 $a5 $79
    ldh [$c1], a                                  ; $456f: $e0 $c1
    ld a, $6d                                     ; $4571: $3e $6d
    ldh [$bd], a                                  ; $4573: $e0 $bd
    ld a, $7c                                     ; $4575: $3e $7c
    ldh [$be], a                                  ; $4577: $e0 $be
    call Call_000_343a                            ; $4579: $cd $3a $34
    xor a                                         ; $457c: $af
    ldh [$d5], a                                  ; $457d: $e0 $d5
    ld hl, $450e                                  ; $457f: $21 $0e $45
    ld a, l                                       ; $4582: $7d
    ld [$cb2d], a                                 ; $4583: $ea $2d $cb
    ld a, h                                       ; $4586: $7c
    ld [$cb2e], a                                 ; $4587: $ea $2e $cb
    rst $18                                       ; $458a: $df
    call Call_005_4710                            ; $458b: $cd $10 $47
    call Call_005_4640                            ; $458e: $cd $40 $46
    rst $20                                       ; $4591: $e7
    call Call_005_469a                            ; $4592: $cd $9a $46
    xor a                                         ; $4595: $af
    ld hl, $4e3e                                  ; $4596: $21 $3e $4e
    ldh [$c1], a                                  ; $4599: $e0 $c1
    ld a, $6f                                     ; $459b: $3e $6f
    ldh [$bd], a                                  ; $459d: $e0 $bd
    ld a, $4f                                     ; $459f: $3e $4f
    ldh [$be], a                                  ; $45a1: $e0 $be
    call Call_000_3448                            ; $45a3: $cd $48 $34
    call Call_005_46d8                            ; $45a6: $cd $d8 $46
    ret                                           ; $45a9: $c9


    ldh a, [$a5]                                  ; $45aa: $f0 $a5
    bit 0, a                                      ; $45ac: $cb $47
    jr nz, jr_005_45e9                            ; $45ae: $20 $39

    bit 1, a                                      ; $45b0: $cb $4f
    jr nz, jr_005_45fa                            ; $45b2: $20 $46

    and $f0                                       ; $45b4: $e6 $f0
    ret z                                         ; $45b6: $c8

    ld a, $19                                     ; $45b7: $3e $19
    call Call_000_393e                            ; $45b9: $cd $3e $39
    ld a, $01                                     ; $45bc: $3e $01
    ld [$cb2c], a                                 ; $45be: $ea $2c $cb
    ldh [$c1], a                                  ; $45c1: $e0 $c1
    ld a, $86                                     ; $45c3: $3e $86
    ldh [$bd], a                                  ; $45c5: $e0 $bd
    ld a, $4f                                     ; $45c7: $3e $4f
    ldh [$be], a                                  ; $45c9: $e0 $be
    call Call_000_3448                            ; $45cb: $cd $48 $34
    ldh a, [$d5]                                  ; $45ce: $f0 $d5
    cp $10                                        ; $45d0: $fe $10
    jp z, Jump_005_4761                           ; $45d2: $ca $61 $47

    ld a, $01                                     ; $45d5: $3e $01
    call Call_000_1871                            ; $45d7: $cd $71 $18
    rst $18                                       ; $45da: $df
    ld a, $01                                     ; $45db: $3e $01
    call Call_005_477b                            ; $45dd: $cd $7b $47
    call Call_005_4640                            ; $45e0: $cd $40 $46
    call Call_005_469a                            ; $45e3: $cd $9a $46
    jp RST_20                                     ; $45e6: $c3 $20 $00


jr_005_45e9:
    ld a, $17                                     ; $45e9: $3e $17
    call Call_000_393e                            ; $45eb: $cd $3e $39
    ldh a, [$d5]                                  ; $45ee: $f0 $d5
    cp $10                                        ; $45f0: $fe $10
    jp nz, Jump_005_45fa                          ; $45f2: $c2 $fa $45

    ld a, $36                                     ; $45f5: $3e $36
    jp Jump_000_2448                              ; $45f7: $c3 $48 $24


Jump_005_45fa:
jr_005_45fa:
    ld a, $18                                     ; $45fa: $3e $18
    call Call_000_393e                            ; $45fc: $cd $3e $39
    ld a, $0f                                     ; $45ff: $3e $0f
    jp Jump_000_2448                              ; $4601: $c3 $48 $24


Call_005_4604:
    ld h, $00                                     ; $4604: $26 $00
    ld l, a                                       ; $4606: $6f
    call Call_000_314a                            ; $4607: $cd $4a $31
    ld de, $d800                                  ; $460a: $11 $00 $d8
    add hl, de                                    ; $460d: $19
    xor a                                         ; $460e: $af

jr_005_460f:
    ld [hl], $20                                  ; $460f: $36 $20
    inc hl                                        ; $4611: $23
    inc a                                         ; $4612: $3c
    cp $14                                        ; $4613: $fe $14
    jr nz, jr_005_460f                            ; $4615: $20 $f8

    dec c                                         ; $4617: $0d
    ld a, c                                       ; $4618: $79
    or a                                          ; $4619: $b7
    ret z                                         ; $461a: $c8

    xor a                                         ; $461b: $af
    ld de, $000c                                  ; $461c: $11 $0c $00
    add hl, de                                    ; $461f: $19
    jr jr_005_460f                                ; $4620: $18 $ed

Call_005_4622:
    ld h, $00                                     ; $4622: $26 $00
    ld l, a                                       ; $4624: $6f
    call Call_000_314a                            ; $4625: $cd $4a $31
    ld de, $dc00                                  ; $4628: $11 $00 $dc
    add hl, de                                    ; $462b: $19
    xor a                                         ; $462c: $af

jr_005_462d:
    ld [hl], $20                                  ; $462d: $36 $20
    inc hl                                        ; $462f: $23
    inc a                                         ; $4630: $3c
    cp $14                                        ; $4631: $fe $14
    jr nz, jr_005_462d                            ; $4633: $20 $f8

    dec c                                         ; $4635: $0d
    ld a, c                                       ; $4636: $79
    or a                                          ; $4637: $b7
    ret z                                         ; $4638: $c8

    xor a                                         ; $4639: $af
    ld de, $000c                                  ; $463a: $11 $0c $00
    add hl, de                                    ; $463d: $19
    jr jr_005_462d                                ; $463e: $18 $ed

Call_005_4640:
    xor a                                         ; $4640: $af
    ld c, $01                                     ; $4641: $0e $01
    call Call_005_4604                            ; $4643: $cd $04 $46
    ld hl, $452e                                  ; $4646: $21 $2e $45
    call Call_000_301f                            ; $4649: $cd $1f $30
    ld a, $7c                                     ; $464c: $3e $7c
    ld [$c1eb], a                                 ; $464e: $ea $eb $c1
    ld a, $01                                     ; $4651: $3e $01
    ld [$c234], a                                 ; $4653: $ea $34 $c2
    ld hl, $106c                                  ; $4656: $21 $6c $10
    ldh a, [$d5]                                  ; $4659: $f0 $d5
    add $42                                       ; $465b: $c6 $42
    call Call_000_3185                            ; $465d: $cd $85 $31
    ldh [$c1], a                                  ; $4660: $e0 $c1
    ld a, $1a                                     ; $4662: $3e $1a
    ldh [$bd], a                                  ; $4664: $e0 $bd
    ld a, $6e                                     ; $4666: $3e $6e
    ldh [$be], a                                  ; $4668: $e0 $be
    call Call_000_342c                            ; $466a: $cd $2c $34
    ld a, $07                                     ; $466d: $3e $07
    ld c, $05                                     ; $466f: $0e $05
    call Call_005_4604                            ; $4671: $cd $04 $46
    ld hl, $4537                                  ; $4674: $21 $37 $45
    call Call_000_301f                            ; $4677: $cd $1f $30
    ld a, $94                                     ; $467a: $3e $94
    ld [$c1eb], a                                 ; $467c: $ea $eb $c1
    ld a, $05                                     ; $467f: $3e $05
    ld [$c234], a                                 ; $4681: $ea $34 $c2
    ld hl, $12d0                                  ; $4684: $21 $d0 $12
    ldh a, [$d5]                                  ; $4687: $f0 $d5
    call Call_000_3185                            ; $4689: $cd $85 $31
    ldh [$c1], a                                  ; $468c: $e0 $c1
    ld a, $1a                                     ; $468e: $3e $1a
    ldh [$bd], a                                  ; $4690: $e0 $bd
    ld a, $6e                                     ; $4692: $3e $6e
    ldh [$be], a                                  ; $4694: $e0 $be
    call Call_000_342c                            ; $4696: $cd $2c $34
    ret                                           ; $4699: $c9


Call_005_469a:
    ldh a, [$d5]                                  ; $469a: $f0 $d5
    call Call_005_46a3                            ; $469c: $cd $a3 $46
    ldh a, [$d5]                                  ; $469f: $f0 $d5
    jr jr_005_46af                                ; $46a1: $18 $0c

Call_005_46a3:
    ld hl, $4faf                                  ; $46a3: $21 $af $4f
    call Call_000_0fad                            ; $46a6: $cd $ad $0f
    ld a, $20                                     ; $46a9: $3e $20
    ld [$c141], a                                 ; $46ab: $ea $41 $c1
    ret                                           ; $46ae: $c9


Call_005_46af:
jr_005_46af:
    ld bc, $4f7c                                  ; $46af: $01 $7c $4f
    ld hl, $00a0                                  ; $46b2: $21 $a0 $00
    ldh [$c1], a                                  ; $46b5: $e0 $c1
    ld a, $6a                                     ; $46b7: $3e $6a
    ldh [$bd], a                                  ; $46b9: $e0 $bd
    ld a, $0f                                     ; $46bb: $3e $0f
    ldh [$be], a                                  ; $46bd: $e0 $be
    call Call_000_3454                            ; $46bf: $cd $54 $34
    ld bc, $4fac                                  ; $46c2: $01 $ac $4f
    ld de, $d848                                  ; $46c5: $11 $48 $d8
    ld hl, $0020                                  ; $46c8: $21 $20 $00
    ldh [$c1], a                                  ; $46cb: $e0 $c1
    ld a, $7a                                     ; $46cd: $3e $7a
    ldh [$bd], a                                  ; $46cf: $e0 $bd
    ld a, $0f                                     ; $46d1: $3e $0f
    ldh [$be], a                                  ; $46d3: $e0 $be
    jp Jump_000_3454                              ; $46d5: $c3 $54 $34


Call_005_46d8:
Jump_005_46d8:
    ld a, $00                                     ; $46d8: $3e $00
    ldh [$c1], a                                  ; $46da: $e0 $c1
    ld a, $0f                                     ; $46dc: $3e $0f
    ldh [$bd], a                                  ; $46de: $e0 $bd
    ld a, $25                                     ; $46e0: $3e $25
    ldh [$be], a                                  ; $46e2: $e0 $be
    call Call_000_3454                            ; $46e4: $cd $54 $34
    ld hl, $ffb8                                  ; $46e7: $21 $b8 $ff
    ld [hl], $00                                  ; $46ea: $36 $00
    inc hl                                        ; $46ec: $23
    ld [hl], $00                                  ; $46ed: $36 $00
    ld a, $90                                     ; $46ef: $3e $90
    ldh [$c1], a                                  ; $46f1: $e0 $c1
    ld a, $d2                                     ; $46f3: $3e $d2
    ldh [$bd], a                                  ; $46f5: $e0 $bd
    ld a, $11                                     ; $46f7: $3e $11
    ldh [$be], a                                  ; $46f9: $e0 $be
    call Call_000_3454                            ; $46fb: $cd $54 $34
    ld a, $01                                     ; $46fe: $3e $01
    ldh [$9b], a                                  ; $4700: $e0 $9b
    ld a, $90                                     ; $4702: $3e $90
    call Call_000_03a0                            ; $4704: $cd $a0 $03
    xor a                                         ; $4707: $af
    ldh [$9b], a                                  ; $4708: $e0 $9b
    ld a, $90                                     ; $470a: $3e $90
    call Call_000_03a0                            ; $470c: $cd $a0 $03
    ret                                           ; $470f: $c9


Call_005_4710:
Jump_005_4710:
    ld b, $00                                     ; $4710: $06 $00

jr_005_4712:
    push bc                                       ; $4712: $c5
    call Call_005_471e                            ; $4713: $cd $1e $47
    pop bc                                        ; $4716: $c1
    inc b                                         ; $4717: $04
    ld a, b                                       ; $4718: $78
    cp $10                                        ; $4719: $fe $10
    jr nz, jr_005_4712                            ; $471b: $20 $f5

    ret                                           ; $471d: $c9


Call_005_471e:
    ld a, $42                                     ; $471e: $3e $42
    add b                                         ; $4720: $80
    ldh [$c1], a                                  ; $4721: $e0 $c1
    ld a, $9e                                     ; $4723: $3e $9e
    ldh [$bd], a                                  ; $4725: $e0 $bd
    ld a, $68                                     ; $4727: $3e $68
    ldh [$be], a                                  ; $4729: $e0 $be
    call Call_000_3441                            ; $472b: $cd $41 $34
    or a                                          ; $472e: $b7
    ld a, $16                                     ; $472f: $3e $16
    jr z, jr_005_4735                             ; $4731: $28 $02

    ld a, $12                                     ; $4733: $3e $12

jr_005_4735:
    bit 3, b                                      ; $4735: $cb $58
    jr z, jr_005_473b                             ; $4737: $28 $02

    add $02                                       ; $4739: $c6 $02

jr_005_473b:
    ldh [$f1], a                                  ; $473b: $e0 $f1
    ld a, b                                       ; $473d: $78
    and $07                                       ; $473e: $e6 $07
    add a                                         ; $4740: $87
    ld c, a                                       ; $4741: $4f
    ld a, [$cb2f]                                 ; $4742: $fa $2f $cb
    add c                                         ; $4745: $81
    ldh [$f0], a                                  ; $4746: $e0 $f0
    ld a, $02                                     ; $4748: $3e $02
    ldh [$f2], a                                  ; $474a: $e0 $f2
    ldh [$f3], a                                  ; $474c: $e0 $f3
    ld hl, $cb2d                                  ; $474e: $21 $2d $cb
    ld a, [hl+]                                   ; $4751: $2a
    ld h, [hl]                                    ; $4752: $66
    ld l, a                                       ; $4753: $6f
    ld a, b                                       ; $4754: $78
    call Call_000_3194                            ; $4755: $cd $94 $31
    ld bc, $0000                                  ; $4758: $01 $00 $00
    ld hl, $d800                                  ; $475b: $21 $00 $d8
    jp Jump_000_12d8                              ; $475e: $c3 $d8 $12


Jump_005_4761:
    ld a, $01                                     ; $4761: $3e $01
    call Call_000_1868                            ; $4763: $cd $68 $18
    xor a                                         ; $4766: $af
    call Call_005_477b                            ; $4767: $cd $7b $47
    rst $18                                       ; $476a: $df
    xor a                                         ; $476b: $af
    ld c, $0c                                     ; $476c: $0e $0c
    call Call_005_4604                            ; $476e: $cd $04 $46
    ld a, $02                                     ; $4771: $3e $02
    ld c, $04                                     ; $4773: $0e $04
    call Call_005_4622                            ; $4775: $cd $22 $46
    jp RST_20                                     ; $4778: $c3 $20 $00


Call_005_477b:
    push af                                       ; $477b: $f5
    ld e, $01                                     ; $477c: $1e $01
    ld a, $90                                     ; $477e: $3e $90
    call Call_000_0a6f                            ; $4780: $cd $6f $0a
    ret nz                                        ; $4783: $c0

    ld c, l                                       ; $4784: $4d
    ld b, h                                       ; $4785: $44
    ld hl, $002b                                  ; $4786: $21 $2b $00
    add hl, bc                                    ; $4789: $09
    pop af                                        ; $478a: $f1
    or a                                          ; $478b: $b7
    jr z, jr_005_4791                             ; $478c: $28 $03

    res 0, [hl]                                   ; $478e: $cb $86
    ret                                           ; $4790: $c9


jr_005_4791:
    set 0, [hl]                                   ; $4791: $cb $c6
    ret                                           ; $4793: $c9


    ld bc, $b928                                  ; $4794: $01 $28 $b9
    nop                                           ; $4797: $00
    nop                                           ; $4798: $00
    nop                                           ; $4799: $00
    xor d                                         ; $479a: $aa
    inc h                                         ; $479b: $24
    ld bc, $0102                                  ; $479c: $01 $02 $01
    ld [bc], a                                    ; $479f: $02
    ld h, d                                       ; $47a0: $62
    reti                                          ; $47a1: $d9


    ld h, h                                       ; $47a2: $64
    reti                                          ; $47a3: $d9


    ld h, [hl]                                    ; $47a4: $66
    reti                                          ; $47a5: $d9


    ld l, b                                       ; $47a6: $68
    reti                                          ; $47a7: $d9


    ld l, d                                       ; $47a8: $6a
    reti                                          ; $47a9: $d9


jr_005_47aa:
    ld l, h                                       ; $47aa: $6c
    reti                                          ; $47ab: $d9


    ld l, [hl]                                    ; $47ac: $6e
    reti                                          ; $47ad: $d9


    ld [hl], b                                    ; $47ae: $70
    reti                                          ; $47af: $d9


    and d                                         ; $47b0: $a2
    reti                                          ; $47b1: $d9


    and h                                         ; $47b2: $a4
    reti                                          ; $47b3: $d9


    and [hl]                                      ; $47b4: $a6
    reti                                          ; $47b5: $d9


    xor b                                         ; $47b6: $a8
    reti                                          ; $47b7: $d9


    xor d                                         ; $47b8: $aa
    reti                                          ; $47b9: $d9


    xor h                                         ; $47ba: $ac
    reti                                          ; $47bb: $d9


    xor [hl]                                      ; $47bc: $ae
    reti                                          ; $47bd: $d9


    or b                                          ; $47be: $b0
    reti                                          ; $47bf: $d9


    dec b                                         ; $47c0: $05
    ld a, [de]                                    ; $47c1: $1a
    ld a, [bc]                                    ; $47c2: $0a
    ld a, [de]                                    ; $47c3: $1a
    rrca                                          ; $47c4: $0f
    ld a, [de]                                    ; $47c5: $1a
    ld bc, $08d8                                  ; $47c6: $01 $d8 $08
    ret c                                         ; $47c9: $d8

    rrca                                          ; $47ca: $0f
    ret c                                         ; $47cb: $d8

    ld [hl+], a                                   ; $47cc: $22
    ret c                                         ; $47cd: $d8

    add hl, hl                                    ; $47ce: $29
    ret c                                         ; $47cf: $d8

    jr nc, jr_005_47aa                            ; $47d0: $30 $d8

    inc d                                         ; $47d2: $14
    nop                                           ; $47d3: $00
    inc d                                         ; $47d4: $14
    dec b                                         ; $47d5: $05
    inc d                                         ; $47d6: $14
    ld a, [bc]                                    ; $47d7: $0a
    inc d                                         ; $47d8: $14
    rrca                                          ; $47d9: $0f
    inc d                                         ; $47da: $14
    inc d                                         ; $47db: $14
    inc d                                         ; $47dc: $14
    add hl, de                                    ; $47dd: $19
    jr nc, jr_005_47e1                            ; $47de: $30 $01

    push hl                                       ; $47e0: $e5

jr_005_47e1:
    ld b, a                                       ; $47e1: $47
    sub [hl]                                      ; $47e2: $96
    nop                                           ; $47e3: $00
    ld b, b                                       ; $47e4: $40
    ld a, [bc]                                    ; $47e5: $0a
    jp c, $da2a                                   ; $47e6: $da $2a $da

    rst $28                                       ; $47e9: $ef
    ld b, a                                       ; $47ea: $47
    ldh a, [rBGP]                                 ; $47eb: $f0 $47
    ld sp, hl                                     ; $47ed: $f9
    ld b, a                                       ; $47ee: $47
    nop                                           ; $47ef: $00
    ld [bc], a                                    ; $47f0: $02
    dec c                                         ; $47f1: $0d
    ld c, $00                                     ; $47f2: $0e $00
    dec hl                                        ; $47f4: $2b
    dec b                                         ; $47f5: $05
    ld a, [bc]                                    ; $47f6: $0a
    ld bc, $082f                                  ; $47f7: $01 $2f $08
    ld b, $0c                                     ; $47fa: $06 $0c
    rrca                                          ; $47fc: $0f
    nop                                           ; $47fd: $00
    ld a, [hl+]                                   ; $47fe: $2a
    ld [$0e0d], sp                                ; $47ff: $08 $0d $0e
    inc bc                                        ; $4802: $03
    inc l                                         ; $4803: $2c
    ld [bc], a                                    ; $4804: $02
    rlca                                          ; $4805: $07
    dec bc                                        ; $4806: $0b
    ld bc, $052d                                  ; $4807: $01 $2d $05
    ld [$020a], sp                                ; $480a: $08 $0a $02
    jr nc, jr_005_480f                            ; $480d: $30 $00

jr_005_480f:
    ld bc, HeaderLogo                             ; $480f: $01 $04 $01
    ld l, $06                                     ; $4812: $2e $06
    ld [$030d], sp                                ; $4814: $08 $0d $03
    dec de                                        ; $4817: $1b
    nop                                           ; $4818: $00
    ld bc, $0002                                  ; $4819: $01 $02 $00
    ld e, [hl]                                    ; $481c: $5e
    rlca                                          ; $481d: $07
    ld a, [bc]                                    ; $481e: $0a
    dec c                                         ; $481f: $0d
    inc bc                                        ; $4820: $03
    ld b, $3e                                     ; $4821: $06 $3e
    ld [bc], a                                    ; $4823: $02
    ld [$cb2f], a                                 ; $4824: $ea $2f $cb
    ld hl, $4794                                  ; $4827: $21 $94 $47
    jp Jump_000_2837                              ; $482a: $c3 $37 $28


    ld hl, $5b2b                                  ; $482d: $21 $2b $5b
    ldh [$c1], a                                  ; $4830: $e0 $c1
    ld a, $8f                                     ; $4832: $3e $8f
    ldh [$bd], a                                  ; $4834: $e0 $bd
    ld a, $5b                                     ; $4836: $3e $5b
    ldh [$be], a                                  ; $4838: $e0 $be
    call Call_000_342c                            ; $483a: $cd $2c $34
    ld hl, $795f                                  ; $483d: $21 $5f $79
    ldh [$c1], a                                  ; $4840: $e0 $c1
    ld a, $6d                                     ; $4842: $3e $6d
    ldh [$bd], a                                  ; $4844: $e0 $bd
    ld a, $7c                                     ; $4846: $3e $7c
    ldh [$be], a                                  ; $4848: $e0 $be
    call Call_000_343a                            ; $484a: $cd $3a $34
    xor a                                         ; $484d: $af
    ld [$cb33], a                                 ; $484e: $ea $33 $cb
    ld [$cb34], a                                 ; $4851: $ea $34 $cb
    ld [$cb35], a                                 ; $4854: $ea $35 $cb
    xor a                                         ; $4857: $af
    ldh [$d5], a                                  ; $4858: $e0 $d5
    ld [$cb36], a                                 ; $485a: $ea $36 $cb
    ld hl, $47a0                                  ; $485d: $21 $a0 $47
    ld a, l                                       ; $4860: $7d
    ld [$cb2d], a                                 ; $4861: $ea $2d $cb
    ld a, h                                       ; $4864: $7c
    ld [$cb2e], a                                 ; $4865: $ea $2e $cb
    rst $18                                       ; $4868: $df
    call Call_005_4980                            ; $4869: $cd $80 $49
    call Call_005_4710                            ; $486c: $cd $10 $47
    call Call_005_4ad6                            ; $486f: $cd $d6 $4a
    rst $20                                       ; $4872: $e7
    ld d, $01                                     ; $4873: $16 $01
    ld e, $01                                     ; $4875: $1e $01
    ld hl, $6266                                  ; $4877: $21 $66 $62
    ld a, [$cb29]                                 ; $487a: $fa $29 $cb
    add $32                                       ; $487d: $c6 $32
    ldh [$c1], a                                  ; $487f: $e0 $c1
    ld a, $50                                     ; $4881: $3e $50
    ldh [$bd], a                                  ; $4883: $e0 $bd
    ld a, $25                                     ; $4885: $3e $25
    ldh [$be], a                                  ; $4887: $e0 $be
    call Call_000_3454                            ; $4889: $cd $54 $34
    xor a                                         ; $488c: $af
    ld hl, $4ec7                                  ; $488d: $21 $c7 $4e
    ldh [$c1], a                                  ; $4890: $e0 $c1
    ld a, $6f                                     ; $4892: $3e $6f
    ldh [$bd], a                                  ; $4894: $e0 $bd
    ld a, $4f                                     ; $4896: $3e $4f
    ldh [$be], a                                  ; $4898: $e0 $be
    call Call_000_3448                            ; $489a: $cd $48 $34
    jp Jump_005_46d8                              ; $489d: $c3 $d8 $46


    ld a, [$cb36]                                 ; $48a0: $fa $36 $cb
    or a                                          ; $48a3: $b7
    ret nz                                        ; $48a4: $c0

    ld a, [$cb35]                                 ; $48a5: $fa $35 $cb
    or a                                          ; $48a8: $b7
    jp nz, Jump_005_496b                          ; $48a9: $c2 $6b $49

    ldh a, [$a5]                                  ; $48ac: $f0 $a5
    bit 0, a                                      ; $48ae: $cb $47
    jr nz, jr_005_48d0                            ; $48b0: $20 $1e

    bit 1, a                                      ; $48b2: $cb $4f
    jr nz, jr_005_4921                            ; $48b4: $20 $6b

    bit 3, a                                      ; $48b6: $cb $5f
    jp nz, Jump_005_4956                          ; $48b8: $c2 $56 $49

    and $f0                                       ; $48bb: $e6 $f0
    ret z                                         ; $48bd: $c8

    ld a, $01                                     ; $48be: $3e $01
    ld [$cb2c], a                                 ; $48c0: $ea $2c $cb
    ldh [$c1], a                                  ; $48c3: $e0 $c1
    ld a, $86                                     ; $48c5: $3e $86
    ldh [$bd], a                                  ; $48c7: $e0 $bd
    ld a, $4f                                     ; $48c9: $3e $4f
    ldh [$be], a                                  ; $48cb: $e0 $be
    jp Jump_000_3448                              ; $48cd: $c3 $48 $34


jr_005_48d0:
    ld a, [$cb33]                                 ; $48d0: $fa $33 $cb
    cp $03                                        ; $48d3: $fe $03
    ret z                                         ; $48d5: $c8

    ldh a, [$d5]                                  ; $48d6: $f0 $d5
    add $42                                       ; $48d8: $c6 $42
    ldh [$c1], a                                  ; $48da: $e0 $c1
    ld a, $9e                                     ; $48dc: $3e $9e
    ldh [$bd], a                                  ; $48de: $e0 $bd
    ld a, $68                                     ; $48e0: $3e $68
    ldh [$be], a                                  ; $48e2: $e0 $be
    call Call_000_3441                            ; $48e4: $cd $41 $34
    or a                                          ; $48e7: $b7
    ret z                                         ; $48e8: $c8

    ldh a, [$d5]                                  ; $48e9: $f0 $d5
    add $42                                       ; $48eb: $c6 $42
    ldh [$c1], a                                  ; $48ed: $e0 $c1
    ld a, $7f                                     ; $48ef: $3e $7f
    ldh [$bd], a                                  ; $48f1: $e0 $bd
    ld a, $6a                                     ; $48f3: $3e $6a
    ldh [$be], a                                  ; $48f5: $e0 $be
    call Call_000_3441                            ; $48f7: $cd $41 $34
    ld a, $17                                     ; $48fa: $3e $17
    call Call_000_393e                            ; $48fc: $cd $3e $39
    ld a, [$cb33]                                 ; $48ff: $fa $33 $cb
    ld hl, $cb30                                  ; $4902: $21 $30 $cb
    rst $08                                       ; $4905: $cf
    ldh a, [$d5]                                  ; $4906: $f0 $d5
    ld [hl], a                                    ; $4908: $77
    ld a, [$cb33]                                 ; $4909: $fa $33 $cb
    inc a                                         ; $490c: $3c
    ld [$cb33], a                                 ; $490d: $ea $33 $cb
    ld a, $01                                     ; $4910: $3e $01
    ld [$cb2c], a                                 ; $4912: $ea $2c $cb
    call Call_005_49a4                            ; $4915: $cd $a4 $49
    call Call_005_49e7                            ; $4918: $cd $e7 $49
    call Call_005_4a74                            ; $491b: $cd $74 $4a
    jp Jump_005_4710                              ; $491e: $c3 $10 $47


jr_005_4921:
    ld a, [$cb33]                                 ; $4921: $fa $33 $cb
    or a                                          ; $4924: $b7
    jr z, jr_005_4966                             ; $4925: $28 $3f

    push af                                       ; $4927: $f5
    ld a, $18                                     ; $4928: $3e $18
    call Call_000_393e                            ; $492a: $cd $3e $39
    pop af                                        ; $492d: $f1
    dec a                                         ; $492e: $3d
    ld [$cb33], a                                 ; $492f: $ea $33 $cb
    ld hl, $cb30                                  ; $4932: $21 $30 $cb
    rst $08                                       ; $4935: $cf
    add $42                                       ; $4936: $c6 $42
    ldh [$c1], a                                  ; $4938: $e0 $c1
    ld a, $4b                                     ; $493a: $3e $4b
    ldh [$bd], a                                  ; $493c: $e0 $bd
    ld a, $6a                                     ; $493e: $3e $6a
    ldh [$be], a                                  ; $4940: $e0 $be
    call Call_000_3441                            ; $4942: $cd $41 $34
    ld a, $01                                     ; $4945: $3e $01
    ld [$cb2c], a                                 ; $4947: $ea $2c $cb
    call Call_005_49a4                            ; $494a: $cd $a4 $49
    call Call_005_49e7                            ; $494d: $cd $e7 $49
    call Call_005_4a74                            ; $4950: $cd $74 $4a
    jp Jump_005_4710                              ; $4953: $c3 $10 $47


Jump_005_4956:
    ld a, [$cb33]                                 ; $4956: $fa $33 $cb
    or a                                          ; $4959: $b7
    ret z                                         ; $495a: $c8

    call Call_005_4b47                            ; $495b: $cd $47 $4b
    ld a, $0d                                     ; $495e: $3e $0d
    call Call_000_393e                            ; $4960: $cd $3e $39
    jp Jump_005_4b7b                              ; $4963: $c3 $7b $4b


jr_005_4966:
    ld a, $0f                                     ; $4966: $3e $0f
    jp Jump_000_2448                              ; $4968: $c3 $48 $24


Jump_005_496b:
    ldh a, [$a5]                                  ; $496b: $f0 $a5
    and $0b                                       ; $496d: $e6 $0b
    ret z                                         ; $496f: $c8

    call Call_005_4c7d                            ; $4970: $cd $7d $4c
    xor a                                         ; $4973: $af
    ld [$cb35], a                                 ; $4974: $ea $35 $cb
    call Call_005_4ad6                            ; $4977: $cd $d6 $4a
    call Call_005_49a4                            ; $497a: $cd $a4 $49
    jp Jump_005_4710                              ; $497d: $c3 $10 $47


Call_005_4980:
    ld a, [$cb29]                                 ; $4980: $fa $29 $cb
    ld hl, $47d2                                  ; $4983: $21 $d2 $47
    call Call_000_318c                            ; $4986: $cd $8c $31
    ld a, [hl+]                                   ; $4989: $2a
    ldh [$f0], a                                  ; $498a: $e0 $f0
    ld a, [hl+]                                   ; $498c: $2a
    ldh [$f1], a                                  ; $498d: $e0 $f1
    ld a, $06                                     ; $498f: $3e $06
    ldh [$f2], a                                  ; $4991: $e0 $f2
    ld a, $05                                     ; $4993: $3e $05
    ldh [$f3], a                                  ; $4995: $e0 $f3
    ld de, $d8a7                                  ; $4997: $11 $a7 $d8
    ld hl, $d800                                  ; $499a: $21 $00 $d8
    ld bc, $0000                                  ; $499d: $01 $00 $00
    call Call_000_12d8                            ; $49a0: $cd $d8 $12
    ret                                           ; $49a3: $c9


Call_005_49a4:
    ld a, [$cb33]                                 ; $49a4: $fa $33 $cb
    cp $03                                        ; $49a7: $fe $03
    jr z, jr_005_49cc                             ; $49a9: $28 $21

    ld a, [$cb35]                                 ; $49ab: $fa $35 $cb
    or a                                          ; $49ae: $b7
    jr nz, jr_005_49cc                            ; $49af: $20 $1b

    ld e, $00                                     ; $49b1: $1e $00
    ld a, $90                                     ; $49b3: $3e $90
    call Call_000_0a6f                            ; $49b5: $cd $6f $0a
    ld de, $002b                                  ; $49b8: $11 $2b $00
    add hl, de                                    ; $49bb: $19
    res 0, [hl]                                   ; $49bc: $cb $86
    ld e, $01                                     ; $49be: $1e $01
    ld a, $90                                     ; $49c0: $3e $90
    call Call_000_0a6f                            ; $49c2: $cd $6f $0a
    ld de, $002b                                  ; $49c5: $11 $2b $00
    add hl, de                                    ; $49c8: $19
    res 0, [hl]                                   ; $49c9: $cb $86
    ret                                           ; $49cb: $c9


jr_005_49cc:
    ld e, $00                                     ; $49cc: $1e $00
    ld a, $90                                     ; $49ce: $3e $90
    call Call_000_0a6f                            ; $49d0: $cd $6f $0a
    ld de, $002b                                  ; $49d3: $11 $2b $00
    add hl, de                                    ; $49d6: $19
    set 0, [hl]                                   ; $49d7: $cb $c6
    ld e, $01                                     ; $49d9: $1e $01
    ld a, $90                                     ; $49db: $3e $90
    call Call_000_0a6f                            ; $49dd: $cd $6f $0a
    ld de, $002b                                  ; $49e0: $11 $2b $00
    add hl, de                                    ; $49e3: $19
    set 0, [hl]                                   ; $49e4: $cb $c6
    ret                                           ; $49e6: $c9


Call_005_49e7:
    ld b, $00                                     ; $49e7: $06 $00

Jump_005_49e9:
    ld c, b                                       ; $49e9: $48
    inc c                                         ; $49ea: $0c
    ld a, [$cb33]                                 ; $49eb: $fa $33 $cb
    cp c                                          ; $49ee: $b9
    jr c, jr_005_4a44                             ; $49ef: $38 $53

    ld a, $00                                     ; $49f1: $3e $00
    ldh [$f0], a                                  ; $49f3: $e0 $f0
    ld a, $1a                                     ; $49f5: $3e $1a
    ldh [$f1], a                                  ; $49f7: $e0 $f1
    ld a, $04                                     ; $49f9: $3e $04
    ldh [$f2], a                                  ; $49fb: $e0 $f2
    ldh [$f3], a                                  ; $49fd: $e0 $f3
    ld hl, $47c6                                  ; $49ff: $21 $c6 $47
    ld a, b                                       ; $4a02: $78
    call Call_000_319d                            ; $4a03: $cd $9d $31
    ld d, h                                       ; $4a06: $54
    ld e, l                                       ; $4a07: $5d
    ld hl, $d800                                  ; $4a08: $21 $00 $d8
    push bc                                       ; $4a0b: $c5
    ld bc, $0000                                  ; $4a0c: $01 $00 $00
    call Call_000_12d8                            ; $4a0f: $cd $d8 $12
    pop bc                                        ; $4a12: $c1
    ld hl, $cb30                                  ; $4a13: $21 $30 $cb
    ld a, b                                       ; $4a16: $78
    rst $08                                       ; $4a17: $cf
    ld c, [hl]                                    ; $4a18: $4e
    ld a, $12                                     ; $4a19: $3e $12
    bit 3, c                                      ; $4a1b: $cb $59
    jr z, jr_005_4a21                             ; $4a1d: $28 $02

    add $02                                       ; $4a1f: $c6 $02

jr_005_4a21:
    ldh [$f1], a                                  ; $4a21: $e0 $f1
    ld a, c                                       ; $4a23: $79
    and $07                                       ; $4a24: $e6 $07
    inc a                                         ; $4a26: $3c
    add a                                         ; $4a27: $87
    ldh [$f0], a                                  ; $4a28: $e0 $f0
    ld a, $02                                     ; $4a2a: $3e $02
    ldh [$f2], a                                  ; $4a2c: $e0 $f2
    ldh [$f3], a                                  ; $4a2e: $e0 $f3
    ld hl, $47cc                                  ; $4a30: $21 $cc $47
    ld a, b                                       ; $4a33: $78
    call Call_000_3194                            ; $4a34: $cd $94 $31
    ld hl, $d800                                  ; $4a37: $21 $00 $d8
    push bc                                       ; $4a3a: $c5
    ld bc, $0000                                  ; $4a3b: $01 $00 $00
    call Call_000_12d8                            ; $4a3e: $cd $d8 $12
    pop bc                                        ; $4a41: $c1
    jr jr_005_4a6c                                ; $4a42: $18 $28

jr_005_4a44:
    ld hl, $47c0                                  ; $4a44: $21 $c0 $47
    ld a, b                                       ; $4a47: $78
    call Call_000_318c                            ; $4a48: $cd $8c $31
    ld a, [hl+]                                   ; $4a4b: $2a
    ldh [$f0], a                                  ; $4a4c: $e0 $f0
    ld a, [hl+]                                   ; $4a4e: $2a
    ldh [$f1], a                                  ; $4a4f: $e0 $f1
    ld a, $04                                     ; $4a51: $3e $04
    ldh [$f2], a                                  ; $4a53: $e0 $f2
    ldh [$f3], a                                  ; $4a55: $e0 $f3
    ld hl, $47c6                                  ; $4a57: $21 $c6 $47
    ld a, b                                       ; $4a5a: $78
    call Call_000_3194                            ; $4a5b: $cd $94 $31
    ld a, [hl+]                                   ; $4a5e: $2a
    ld h, [hl]                                    ; $4a5f: $66
    ld l, a                                       ; $4a60: $6f
    ld hl, $d800                                  ; $4a61: $21 $00 $d8
    push bc                                       ; $4a64: $c5
    ld bc, $0000                                  ; $4a65: $01 $00 $00
    call Call_000_12d8                            ; $4a68: $cd $d8 $12
    pop bc                                        ; $4a6b: $c1

jr_005_4a6c:
    inc b                                         ; $4a6c: $04
    ld a, b                                       ; $4a6d: $78
    cp $03                                        ; $4a6e: $fe $03
    jp nz, Jump_005_49e9                          ; $4a70: $c2 $e9 $49

    ret                                           ; $4a73: $c9


Call_005_4a74:
    ld a, [$cb34]                                 ; $4a74: $fa $34 $cb
    or a                                          ; $4a77: $b7
    jr z, jr_005_4acf                             ; $4a78: $28 $55

    cp $04                                        ; $4a7a: $fe $04
    jr nc, jr_005_4acf                            ; $4a7c: $30 $51

    dec a                                         ; $4a7e: $3d
    rst $00                                       ; $4a7f: $c7
    add [hl]                                      ; $4a80: $86
    ld c, d                                       ; $4a81: $4a
    sbc b                                         ; $4a82: $98
    ld c, d                                       ; $4a83: $4a
    cp h                                          ; $4a84: $bc
    ld c, d                                       ; $4a85: $4a
    ld a, [$cb33]                                 ; $4a86: $fa $33 $cb
    cp $02                                        ; $4a89: $fe $02
    jr nz, jr_005_4acf                            ; $4a8b: $20 $42

    ld a, $02                                     ; $4a8d: $3e $02
    ldh [$9b], a                                  ; $4a8f: $e0 $9b
    ld a, $90                                     ; $4a91: $3e $90
    call Call_000_03a0                            ; $4a93: $cd $a0 $03
    jr jr_005_4acf                                ; $4a96: $18 $37

    ld a, [$cb33]                                 ; $4a98: $fa $33 $cb
    cp $01                                        ; $4a9b: $fe $01
    jr nz, jr_005_4aad                            ; $4a9d: $20 $0e

    ld e, $02                                     ; $4a9f: $1e $02
    ld a, $90                                     ; $4aa1: $3e $90
    call Call_000_0a6f                            ; $4aa3: $cd $6f $0a
    ld b, h                                       ; $4aa6: $44
    ld c, l                                       ; $4aa7: $4d
    call Call_000_0e9d                            ; $4aa8: $cd $9d $0e
    jr jr_005_4acf                                ; $4aab: $18 $22

jr_005_4aad:
    cp $03                                        ; $4aad: $fe $03
    jr nz, jr_005_4acf                            ; $4aaf: $20 $1e

    ld a, $03                                     ; $4ab1: $3e $03
    ldh [$9b], a                                  ; $4ab3: $e0 $9b
    ld a, $90                                     ; $4ab5: $3e $90
    call Call_000_03a0                            ; $4ab7: $cd $a0 $03
    jr jr_005_4acf                                ; $4aba: $18 $13

    ld a, [$cb33]                                 ; $4abc: $fa $33 $cb
    cp $02                                        ; $4abf: $fe $02
    jr nz, jr_005_4acf                            ; $4ac1: $20 $0c

    ld e, $03                                     ; $4ac3: $1e $03
    ld a, $90                                     ; $4ac5: $3e $90
    call Call_000_0a6f                            ; $4ac7: $cd $6f $0a
    ld b, h                                       ; $4aca: $44
    ld c, l                                       ; $4acb: $4d
    call Call_000_0e9d                            ; $4acc: $cd $9d $0e

jr_005_4acf:
    ld a, [$cb33]                                 ; $4acf: $fa $33 $cb
    ld [$cb34], a                                 ; $4ad2: $ea $34 $cb
    ret                                           ; $4ad5: $c9


Call_005_4ad6:
    ld hl, $0201                                  ; $4ad6: $21 $01 $02
    ld d, $02                                     ; $4ad9: $16 $02
    ld e, $12                                     ; $4adb: $1e $12
    ld c, $b9                                     ; $4add: $0e $b9
    call Call_000_13c2                            ; $4adf: $cd $c2 $13
    ld hl, $47de                                  ; $4ae2: $21 $de $47
    call Call_000_301f                            ; $4ae5: $cd $1f $30
    ld a, $84                                     ; $4ae8: $3e $84
    ld [$c1eb], a                                 ; $4aea: $ea $eb $c1
    ld a, $02                                     ; $4aed: $3e $02
    ld [$c234], a                                 ; $4aef: $ea $34 $c2
    ld a, [$cb35]                                 ; $4af2: $fa $35 $cb
    or a                                          ; $4af5: $b7
    jr z, jr_005_4b37                             ; $4af6: $28 $3f

    cp $01                                        ; $4af8: $fe $01
    jr z, jr_005_4b27                             ; $4afa: $28 $2b

    ld a, $31                                     ; $4afc: $3e $31
    ld [$c1ec], a                                 ; $4afe: $ea $ec $c1
    ld hl, $15e8                                  ; $4b01: $21 $e8 $15
    ldh [$c1], a                                  ; $4b04: $e0 $c1
    ld a, $1a                                     ; $4b06: $3e $1a
    ldh [$bd], a                                  ; $4b08: $e0 $bd
    ld a, $6e                                     ; $4b0a: $3e $6e
    ldh [$be], a                                  ; $4b0c: $e0 $be
    call Call_000_342c                            ; $4b0e: $cd $2c $34
    ld a, [$cb35]                                 ; $4b11: $fa $35 $cb
    ld hl, $106c                                  ; $4b14: $21 $6c $10
    call Call_000_3185                            ; $4b17: $cd $85 $31
    ldh [$c1], a                                  ; $4b1a: $e0 $c1
    ld a, $1a                                     ; $4b1c: $3e $1a
    ldh [$bd], a                                  ; $4b1e: $e0 $bd
    ld a, $6e                                     ; $4b20: $3e $6e
    ldh [$be], a                                  ; $4b22: $e0 $be
    jp Jump_000_342c                              ; $4b24: $c3 $2c $34


jr_005_4b27:
    ld hl, $15e5                                  ; $4b27: $21 $e5 $15
    ldh [$c1], a                                  ; $4b2a: $e0 $c1
    ld a, $1a                                     ; $4b2c: $3e $1a
    ldh [$bd], a                                  ; $4b2e: $e0 $bd
    ld a, $6e                                     ; $4b30: $3e $6e
    ldh [$be], a                                  ; $4b32: $e0 $be
    jp Jump_000_342c                              ; $4b34: $c3 $2c $34


jr_005_4b37:
    ld hl, $15dc                                  ; $4b37: $21 $dc $15
    ldh [$c1], a                                  ; $4b3a: $e0 $c1
    ld a, $1a                                     ; $4b3c: $3e $1a
    ldh [$bd], a                                  ; $4b3e: $e0 $bd
    ld a, $6e                                     ; $4b40: $3e $6e
    ldh [$be], a                                  ; $4b42: $e0 $be
    jp Jump_000_342c                              ; $4b44: $c3 $2c $34


Call_005_4b47:
    ld a, [$cb33]                                 ; $4b47: $fa $33 $cb
    ld b, a                                       ; $4b4a: $47
    xor a                                         ; $4b4b: $af
    ld [$cb33], a                                 ; $4b4c: $ea $33 $cb
    push bc                                       ; $4b4f: $c5
    call Call_005_49e7                            ; $4b50: $cd $e7 $49
    pop bc                                        ; $4b53: $c1
    ld a, b                                       ; $4b54: $78
    ld [$cb33], a                                 ; $4b55: $ea $33 $cb
    cp $03                                        ; $4b58: $fe $03
    jr nz, jr_005_4b6a                            ; $4b5a: $20 $0e

    ld e, $03                                     ; $4b5c: $1e $03
    ld a, $90                                     ; $4b5e: $3e $90
    call Call_000_0a6f                            ; $4b60: $cd $6f $0a
    ld b, h                                       ; $4b63: $44
    ld c, l                                       ; $4b64: $4d
    call Call_000_0e9d                            ; $4b65: $cd $9d $0e
    jr jr_005_4b6e                                ; $4b68: $18 $04

jr_005_4b6a:
    cp $02                                        ; $4b6a: $fe $02
    jr nz, jr_005_4b7a                            ; $4b6c: $20 $0c

jr_005_4b6e:
    ld e, $02                                     ; $4b6e: $1e $02
    ld a, $90                                     ; $4b70: $3e $90
    call Call_000_0a6f                            ; $4b72: $cd $6f $0a
    ld b, h                                       ; $4b75: $44
    ld c, l                                       ; $4b76: $4d
    call Call_000_0e9d                            ; $4b77: $cd $9d $0e

jr_005_4b7a:
    ret                                           ; $4b7a: $c9


Jump_005_4b7b:
    ld a, $01                                     ; $4b7b: $3e $01
    call Call_005_4b89                            ; $4b7d: $cd $89 $4b
    add $04                                       ; $4b80: $c6 $04
    ldh [$9b], a                                  ; $4b82: $e0 $9b
    ld a, $90                                     ; $4b84: $3e $90
    jp Jump_000_03a0                              ; $4b86: $c3 $a0 $03


Call_005_4b89:
    ld [$cb36], a                                 ; $4b89: $ea $36 $cb
    push af                                       ; $4b8c: $f5
    call Call_005_4c23                            ; $4b8d: $cd $23 $4c
    ld hl, $47e9                                  ; $4b90: $21 $e9 $47
    ld a, [$cb33]                                 ; $4b93: $fa $33 $cb
    dec a                                         ; $4b96: $3d
    call Call_000_319d                            ; $4b97: $cd $9d $31
    ld c, [hl]                                    ; $4b9a: $4e
    inc hl                                        ; $4b9b: $23
    ld b, $00                                     ; $4b9c: $06 $00

jr_005_4b9e:
    ld a, b                                       ; $4b9e: $78
    cp c                                          ; $4b9f: $b9
    jr z, jr_005_4be9                             ; $4ba0: $28 $47

    ld a, [$cb30]                                 ; $4ba2: $fa $30 $cb
    cp [hl]                                       ; $4ba5: $be
    inc hl                                        ; $4ba6: $23
    jr z, jr_005_4bb3                             ; $4ba7: $28 $0a

    ld a, [$cb33]                                 ; $4ba9: $fa $33 $cb
    ld e, a                                       ; $4bac: $5f
    ld d, $00                                     ; $4bad: $16 $00
    add hl, de                                    ; $4baf: $19
    inc hl                                        ; $4bb0: $23
    jr jr_005_4be6                                ; $4bb1: $18 $33

jr_005_4bb3:
    ld a, [$cb33]                                 ; $4bb3: $fa $33 $cb
    cp $01                                        ; $4bb6: $fe $01
    jr z, jr_005_4bf6                             ; $4bb8: $28 $3c

    ld a, [$cb31]                                 ; $4bba: $fa $31 $cb
    cp [hl]                                       ; $4bbd: $be
    inc hl                                        ; $4bbe: $23
    jr z, jr_005_4bcc                             ; $4bbf: $28 $0b

    ld a, [$cb33]                                 ; $4bc1: $fa $33 $cb
    dec a                                         ; $4bc4: $3d
    ld e, a                                       ; $4bc5: $5f
    ld d, $00                                     ; $4bc6: $16 $00
    add hl, de                                    ; $4bc8: $19
    inc hl                                        ; $4bc9: $23
    jr jr_005_4be6                                ; $4bca: $18 $1a

jr_005_4bcc:
    ld a, [$cb33]                                 ; $4bcc: $fa $33 $cb
    cp $02                                        ; $4bcf: $fe $02
    jr z, jr_005_4bf6                             ; $4bd1: $28 $23

    ld a, [$cb32]                                 ; $4bd3: $fa $32 $cb
    cp [hl]                                       ; $4bd6: $be
    inc hl                                        ; $4bd7: $23
    jr z, jr_005_4bf6                             ; $4bd8: $28 $1c

    ld a, [$cb33]                                 ; $4bda: $fa $33 $cb
    dec a                                         ; $4bdd: $3d
    dec a                                         ; $4bde: $3d
    ld e, a                                       ; $4bdf: $5f
    ld d, $00                                     ; $4be0: $16 $00
    add hl, de                                    ; $4be2: $19
    inc hl                                        ; $4be3: $23
    jr jr_005_4be6                                ; $4be4: $18 $00

jr_005_4be6:
    inc b                                         ; $4be6: $04
    jr jr_005_4b9e                                ; $4be7: $18 $b5

jr_005_4be9:
    pop af                                        ; $4be9: $f1
    or a                                          ; $4bea: $b7
    jr z, jr_005_4bef                             ; $4beb: $28 $02

    xor a                                         ; $4bed: $af
    ret                                           ; $4bee: $c9


jr_005_4bef:
    ld a, $01                                     ; $4bef: $3e $01
    ld [$cb35], a                                 ; $4bf1: $ea $35 $cb
    jr jr_005_4c1b                                ; $4bf4: $18 $25

jr_005_4bf6:
    ld a, [hl+]                                   ; $4bf6: $2a
    ld b, a                                       ; $4bf7: $47
    ld a, [$cb29]                                 ; $4bf8: $fa $29 $cb
    cp b                                          ; $4bfb: $b8
    jr c, jr_005_4be9                             ; $4bfc: $38 $eb

    pop af                                        ; $4bfe: $f1
    or a                                          ; $4bff: $b7
    jr z, jr_005_4c05                             ; $4c00: $28 $03

    ld a, $01                                     ; $4c02: $3e $01
    ret                                           ; $4c04: $c9


jr_005_4c05:
    ld a, [hl]                                    ; $4c05: $7e
    push af                                       ; $4c06: $f5
    ld [$cb35], a                                 ; $4c07: $ea $35 $cb
    ldh [$c1], a                                  ; $4c0a: $e0 $c1
    ld a, $4b                                     ; $4c0c: $3e $4b
    ldh [$bd], a                                  ; $4c0e: $e0 $bd
    ld a, $6a                                     ; $4c10: $3e $6a
    ldh [$be], a                                  ; $4c12: $e0 $be
    call Call_000_3441                            ; $4c14: $cd $41 $34
    pop af                                        ; $4c17: $f1
    call Call_005_4c61                            ; $4c18: $cd $61 $4c

jr_005_4c1b:
    call Call_005_4ad6                            ; $4c1b: $cd $d6 $4a
    xor a                                         ; $4c1e: $af
    ld [$cb33], a                                 ; $4c1f: $ea $33 $cb
    ret                                           ; $4c22: $c9


Call_005_4c23:
    ld a, [$cb33]                                 ; $4c23: $fa $33 $cb
    cp $01                                        ; $4c26: $fe $01
    ret z                                         ; $4c28: $c8

    ld a, [$cb30]                                 ; $4c29: $fa $30 $cb
    ld b, a                                       ; $4c2c: $47
    ld a, [$cb31]                                 ; $4c2d: $fa $31 $cb
    cp b                                          ; $4c30: $b8
    jr nc, jr_005_4c3a                            ; $4c31: $30 $07

    ld [$cb30], a                                 ; $4c33: $ea $30 $cb
    ld a, b                                       ; $4c36: $78
    ld [$cb31], a                                 ; $4c37: $ea $31 $cb

jr_005_4c3a:
    ld a, [$cb33]                                 ; $4c3a: $fa $33 $cb
    cp $02                                        ; $4c3d: $fe $02
    ret z                                         ; $4c3f: $c8

    ld a, [$cb31]                                 ; $4c40: $fa $31 $cb
    ld b, a                                       ; $4c43: $47
    ld a, [$cb32]                                 ; $4c44: $fa $32 $cb
    cp b                                          ; $4c47: $b8
    ret nc                                        ; $4c48: $d0

    ld [$cb31], a                                 ; $4c49: $ea $31 $cb
    ld a, b                                       ; $4c4c: $78
    ld [$cb32], a                                 ; $4c4d: $ea $32 $cb
    ld a, [$cb30]                                 ; $4c50: $fa $30 $cb
    ld b, a                                       ; $4c53: $47
    ld a, [$cb31]                                 ; $4c54: $fa $31 $cb
    cp b                                          ; $4c57: $b8
    ret nc                                        ; $4c58: $d0

    ld [$cb30], a                                 ; $4c59: $ea $30 $cb
    ld a, b                                       ; $4c5c: $78
    ld [$cb31], a                                 ; $4c5d: $ea $31 $cb
    ret                                           ; $4c60: $c9


Call_005_4c61:
    push af                                       ; $4c61: $f5
    ld d, a                                       ; $4c62: $57
    ld e, $04                                     ; $4c63: $1e $04
    ldh [$c1], a                                  ; $4c65: $e0 $c1
    ld a, $76                                     ; $4c67: $3e $76
    ldh [$bd], a                                  ; $4c69: $e0 $bd
    ld a, $73                                     ; $4c6b: $3e $73
    ldh [$be], a                                  ; $4c6d: $e0 $be
    call Call_000_3441                            ; $4c6f: $cd $41 $34
    ld a, $b7                                     ; $4c72: $3e $b7
    call Call_000_03a0                            ; $4c74: $cd $a0 $03
    ld b, d                                       ; $4c77: $42
    ld c, e                                       ; $4c78: $4b
    pop af                                        ; $4c79: $f1
    jp Jump_000_08ec                              ; $4c7a: $c3 $ec $08


Call_005_4c7d:
    ld e, $ff                                     ; $4c7d: $1e $ff
    ld a, $b7                                     ; $4c7f: $3e $b7
    call Call_000_0a6f                            ; $4c81: $cd $6f $0a
    ret nz                                        ; $4c84: $c0

    ld b, h                                       ; $4c85: $44
    ld c, l                                       ; $4c86: $4d
    jp Jump_000_0e9d                              ; $4c87: $c3 $9d $0e


    dec b                                         ; $4c8a: $05
    inc d                                         ; $4c8b: $14
    ld a, [de]                                    ; $4c8c: $1a
    dec de                                        ; $4c8d: $1b
    daa                                           ; $4c8e: $27
    dec l                                         ; $4c8f: $2d
    ld l, $ff                                     ; $4c90: $2e $ff
    db $f4                                        ; $4c92: $f4
    inc de                                        ; $4c93: $13
    ld l, d                                       ; $4c94: $6a
    inc de                                        ; $4c95: $13
    jp c, Jump_000_0913                           ; $4c96: $da $13 $09

    inc d                                         ; $4c99: $14
    adc b                                         ; $4c9a: $88
    ld [de], a                                    ; $4c9b: $12
    sub [hl]                                      ; $4c9c: $96
    ld [de], a                                    ; $4c9d: $12
    ld [hl], h                                    ; $4c9e: $74
    inc d                                         ; $4c9f: $14
    adc $12                                       ; $4ca0: $ce $12
    ld [hl], $13                                  ; $4ca2: $36 $13
    db $db                                        ; $4ca4: $db
    ld [de], a                                    ; $4ca5: $12
    rla                                           ; $4ca6: $17
    inc d                                         ; $4ca7: $14
    ld [bc], a                                    ; $4ca8: $02
    inc d                                         ; $4ca9: $14

    db $21, $13

    and e                                         ; $4cac: $a3
    inc d                                         ; $4cad: $14
    or e                                          ; $4cae: $b3
    ld [de], a                                    ; $4caf: $12
    pop hl                                        ; $4cb0: $e1
    ld [de], a                                    ; $4cb1: $12
    ld c, a                                       ; $4cb2: $4f
    inc d                                         ; $4cb3: $14
    and b                                         ; $4cb4: $a0
    inc de                                        ; $4cb5: $13
    xor l                                         ; $4cb6: $ad
    inc de                                        ; $4cb7: $13
    sub a                                         ; $4cb8: $97
    inc de                                        ; $4cb9: $13
    rrca                                          ; $4cba: $0f
    inc de                                        ; $4cbb: $13
    di                                            ; $4cbc: $f3
    ld [de], a                                    ; $4cbd: $12
    cp e                                          ; $4cbe: $bb
    inc de                                        ; $4cbf: $13
    ccf                                           ; $4cc0: $3f
    inc de                                        ; $4cc1: $13
    ld e, d                                       ; $4cc2: $5a
    inc d                                         ; $4cc3: $14
    ld l, b                                       ; $4cc4: $68
    inc d                                         ; $4cc5: $14
    jp nz, $6414                                  ; $4cc6: $c2 $14 $64

    ld [de], a                                    ; $4cc9: $12
    inc c                                         ; $4cca: $0c
    dec d                                         ; $4ccb: $15
    dec sp                                        ; $4ccc: $3b
    inc d                                         ; $4ccd: $14
    jp z, $cc12                                   ; $4cce: $ca $12 $cc

    inc d                                         ; $4cd1: $14
    or h                                          ; $4cd2: $b4
    inc d                                         ; $4cd3: $14
    db $e4                                        ; $4cd4: $e4
    inc d                                         ; $4cd5: $14
    push de                                       ; $4cd6: $d5
    inc de                                        ; $4cd7: $13
    jp hl                                         ; $4cd8: $e9


    inc de                                        ; $4cd9: $13
    ld [hl], e                                    ; $4cda: $73
    inc de                                        ; $4cdb: $13
    sub $14                                       ; $4cdc: $d6 $14
    ld b, e                                       ; $4cde: $43
    inc d                                         ; $4cdf: $14
    cp l                                          ; $4ce0: $bd
    ld [de], a                                    ; $4ce1: $12
    jp Jump_005_4d13                              ; $4ce2: $c3 $13 $4d


    inc de                                        ; $4ce5: $13
    sub d                                         ; $4ce6: $92
    inc d                                         ; $4ce7: $14
    ld bc, $1e13                                  ; $4ce8: $01 $13 $1e
    inc d                                         ; $4ceb: $14
    adc [hl]                                      ; $4cec: $8e
    inc de                                        ; $4ced: $13
    ld bc, $2e15                                  ; $4cee: $01 $15 $2e
    inc de                                        ; $4cf1: $13
    ld l, h                                       ; $4cf2: $6c
    ld [de], a                                    ; $4cf3: $12
    ld a, l                                       ; $4cf4: $7d
    inc de                                        ; $4cf5: $13
    jr jr_005_4d0d                                ; $4cf6: $18 $15

    add hl, bc                                    ; $4cf8: $09
    inc d                                         ; $4cf9: $14
    ld l, d                                       ; $4cfa: $6a
    inc de                                        ; $4cfb: $13
    db $db                                        ; $4cfc: $db
    ld [de], a                                    ; $4cfd: $12
    rrca                                          ; $4cfe: $0f
    inc de                                        ; $4cff: $13
    rrca                                          ; $4d00: $0f
    inc de                                        ; $4d01: $13
    ccf                                           ; $4d02: $3f
    inc de                                        ; $4d03: $13
    inc c                                         ; $4d04: $0c
    dec d                                         ; $4d05: $15
    ld l, h                                       ; $4d06: $6c
    ld [de], a                                    ; $4d07: $12
    ld l, h                                       ; $4d08: $6c
    ld [de], a                                    ; $4d09: $12
    call z, Call_005_4d14                         ; $4d0a: $cc $14 $4d

jr_005_4d0d:
    inc de                                        ; $4d0d: $13
    jp z, $f312                                   ; $4d0e: $ca $12 $f3

    ld h, e                                       ; $4d11: $63
    ld b, [hl]                                    ; $4d12: $46

Jump_005_4d13:
    nop                                           ; $4d13: $00

Call_005_4d14:
    rrca                                          ; $4d14: $0f
    ld h, h                                       ; $4d15: $64
    scf                                           ; $4d16: $37
    nop                                           ; $4d17: $00
    dec l                                         ; $4d18: $2d
    ld h, h                                       ; $4d19: $64
    inc a                                         ; $4d1a: $3c
    nop                                           ; $4d1b: $00
    ld c, e                                       ; $4d1c: $4b
    ld h, h                                       ; $4d1d: $64
    ld b, b                                       ; $4d1e: $40
    nop                                           ; $4d1f: $00
    ld [hl], e                                    ; $4d20: $73
    ld h, h                                       ; $4d21: $64
    rst $38                                       ; $4d22: $ff
    rst $38                                       ; $4d23: $ff
    sub e                                         ; $4d24: $93
    ld h, h                                       ; $4d25: $64
    or b                                          ; $4d26: $b0
    nop                                           ; $4d27: $00
    rst $20                                       ; $4d28: $e7
    ld h, h                                       ; $4d29: $64
    ld [hl], h                                    ; $4d2a: $74
    nop                                           ; $4d2b: $00
    inc hl                                        ; $4d2c: $23
    ld h, l                                       ; $4d2d: $65
    inc [hl]                                      ; $4d2e: $34
    nop                                           ; $4d2f: $00
    dec a                                         ; $4d30: $3d
    ld h, l                                       ; $4d31: $65
    inc l                                         ; $4d32: $2c
    nop                                           ; $4d33: $00
    ld d, e                                       ; $4d34: $53
    ld h, l                                       ; $4d35: $65
    ld a, [hl+]                                   ; $4d36: $2a
    nop                                           ; $4d37: $00
    ld h, a                                       ; $4d38: $67
    ld h, l                                       ; $4d39: $65
    jr jr_005_4d3c                                ; $4d3a: $18 $00

jr_005_4d3c:
    ld [hl], a                                    ; $4d3c: $77
    ld h, l                                       ; $4d3d: $65
    ld [hl], b                                    ; $4d3e: $70
    nop                                           ; $4d3f: $00

    db $23, $65, $34, $00

    add a                                         ; $4d44: $87
    ld h, l                                       ; $4d45: $65
    ld [hl], $00                                  ; $4d46: $36 $00
    xor e                                         ; $4d48: $ab
    ld h, l                                       ; $4d49: $65
    ld a, [bc]                                    ; $4d4a: $0a
    nop                                           ; $4d4b: $00
    add a                                         ; $4d4c: $87
    ld h, l                                       ; $4d4d: $65
    ld [hl], $00                                  ; $4d4e: $36 $00
    xor l                                         ; $4d50: $ad
    ld h, l                                       ; $4d51: $65
    ld e, h                                       ; $4d52: $5c
    nop                                           ; $4d53: $00
    inc hl                                        ; $4d54: $23
    ld h, l                                       ; $4d55: $65
    inc [hl]                                      ; $4d56: $34
    nop                                           ; $4d57: $00
    reti                                          ; $4d58: $d9


    ld h, l                                       ; $4d59: $65
    jr c, jr_005_4d5c                             ; $4d5a: $38 $00

jr_005_4d5c:
    ld b, l                                       ; $4d5c: $45
    ld h, [hl]                                    ; $4d5d: $66
    ld b, b                                       ; $4d5e: $40
    nop                                           ; $4d5f: $00
    ld h, l                                       ; $4d60: $65
    ld h, [hl]                                    ; $4d61: $66
    jr nz, jr_005_4d64                            ; $4d62: $20 $00

jr_005_4d64:
    reti                                          ; $4d64: $d9


    ld h, l                                       ; $4d65: $65
    jr c, jr_005_4d68                             ; $4d66: $38 $00

jr_005_4d68:
    adc c                                         ; $4d68: $89
    ld h, [hl]                                    ; $4d69: $66
    jr nz, jr_005_4d6c                            ; $4d6a: $20 $00

jr_005_4d6c:
    sbc c                                         ; $4d6c: $99
    ld h, [hl]                                    ; $4d6d: $66
    ld c, [hl]                                    ; $4d6e: $4e
    nop                                           ; $4d6f: $00
    cp l                                          ; $4d70: $bd
    ld h, l                                       ; $4d71: $65
    ld b, [hl]                                    ; $4d72: $46
    nop                                           ; $4d73: $00
    db $db                                        ; $4d74: $db
    ld h, [hl]                                    ; $4d75: $66
    jr nc, jr_005_4d78                            ; $4d76: $30 $00

jr_005_4d78:
    di                                            ; $4d78: $f3
    ld h, [hl]                                    ; $4d79: $66
    ld [hl-], a                                   ; $4d7a: $32
    nop                                           ; $4d7b: $00
    adc c                                         ; $4d7c: $89
    ld h, [hl]                                    ; $4d7d: $66
    jr nz, jr_005_4d80                            ; $4d7e: $20 $00

jr_005_4d80:
    cp l                                          ; $4d80: $bd
    ld h, [hl]                                    ; $4d81: $66
    jr nz, jr_005_4d84                            ; $4d82: $20 $00

jr_005_4d84:
    ld hl, $4067                                  ; $4d84: $21 $67 $40
    nop                                           ; $4d87: $00
    dec [hl]                                      ; $4d88: $35
    ld h, a                                       ; $4d89: $67
    ld e, $00                                     ; $4d8a: $1e $00
    ccf                                           ; $4d8c: $3f
    ld h, a                                       ; $4d8d: $67
    jr z, jr_005_4d90                             ; $4d8e: $28 $00

jr_005_4d90:
    reti                                          ; $4d90: $d9


    ld h, l                                       ; $4d91: $65
    jr c, jr_005_4d94                             ; $4d92: $38 $00

jr_005_4d94:
    ld d, e                                       ; $4d94: $53
    ld h, a                                       ; $4d95: $67
    ld [hl], h                                    ; $4d96: $74
    nop                                           ; $4d97: $00
    adc l                                         ; $4d98: $8d
    ld h, a                                       ; $4d99: $67
    inc a                                         ; $4d9a: $3c
    nop                                           ; $4d9b: $00
    sbc c                                         ; $4d9c: $99
    ld h, a                                       ; $4d9d: $67
    ld l, h                                       ; $4d9e: $6c
    nop                                           ; $4d9f: $00
    rst $08                                       ; $4da0: $cf
    ld h, a                                       ; $4da1: $67
    and b                                         ; $4da2: $a0
    nop                                           ; $4da3: $00
    dec l                                         ; $4da4: $2d
    ld h, h                                       ; $4da5: $64
    inc a                                         ; $4da6: $3c
    nop                                           ; $4da7: $00
    push hl                                       ; $4da8: $e5
    ld h, a                                       ; $4da9: $67
    sub b                                         ; $4daa: $90
    nop                                           ; $4dab: $00
    rlca                                          ; $4dac: $07
    ld h, a                                       ; $4dad: $67
    inc [hl]                                      ; $4dae: $34
    nop                                           ; $4daf: $00
    rst $38                                       ; $4db0: $ff
    ld h, a                                       ; $4db1: $67
    ld c, b                                       ; $4db2: $48
    nop                                           ; $4db3: $00
    inc hl                                        ; $4db4: $23
    ld l, b                                       ; $4db5: $68
    ld a, l                                       ; $4db6: $7d
    nop                                           ; $4db7: $00
    sub a                                         ; $4db8: $97
    ld l, b                                       ; $4db9: $68
    ld b, h                                       ; $4dba: $44
    nop                                           ; $4dbb: $00
    cp c                                          ; $4dbc: $b9
    ld l, b                                       ; $4dbd: $68
    ld d, h                                       ; $4dbe: $54
    nop                                           ; $4dbf: $00
    ld e, l                                       ; $4dc0: $5d
    ld l, b                                       ; $4dc1: $68
    sub c                                         ; $4dc2: $91
    nop                                           ; $4dc3: $00
    inc sp                                        ; $4dc4: $33
    ld h, [hl]                                    ; $4dc5: $66
    inc h                                         ; $4dc6: $24
    nop                                           ; $4dc7: $00
    dec a                                         ; $4dc8: $3d
    ld h, l                                       ; $4dc9: $65
    inc l                                         ; $4dca: $2c
    nop                                           ; $4dcb: $00
    adc c                                         ; $4dcc: $89
    ld h, [hl]                                    ; $4dcd: $66
    jr nz, jr_005_4dd0                            ; $4dce: $20 $00

jr_005_4dd0:
    push af                                       ; $4dd0: $f5
    ld h, l                                       ; $4dd1: $65
    jr c, jr_005_4dd4                             ; $4dd2: $38 $00

jr_005_4dd4:
    sub a                                         ; $4dd4: $97
    ld l, b                                       ; $4dd5: $68
    jr nz, jr_005_4dd8                            ; $4dd6: $20 $00

jr_005_4dd8:
    reti                                          ; $4dd8: $d9


    ld h, e                                       ; $4dd9: $63
    add b                                         ; $4dda: $80
    nop                                           ; $4ddb: $00
    ld l, l                                       ; $4ddc: $6d
    ld h, h                                       ; $4ddd: $64
    inc l                                         ; $4dde: $2c
    nop                                           ; $4ddf: $00
    dec h                                         ; $4de0: $25
    ld h, h                                       ; $4de1: $64
    ld bc, $6100                                  ; $4de2: $01 $00 $61
    ld h, l                                       ; $4de5: $65
    inc hl                                        ; $4de6: $23
    nop                                           ; $4de7: $00
    add l                                         ; $4de8: $85
    ld h, [hl]                                    ; $4de9: $66
    inc hl                                        ; $4dea: $23
    nop                                           ; $4deb: $00
    add a                                         ; $4dec: $87
    ld h, [hl]                                    ; $4ded: $66
    inc hl                                        ; $4dee: $23
    nop                                           ; $4def: $00
    or c                                          ; $4df0: $b1
    ld h, [hl]                                    ; $4df1: $66
    jr jr_005_4df4                                ; $4df2: $18 $00

jr_005_4df4:
    call Call_000_1c66                            ; $4df4: $cd $66 $1c
    nop                                           ; $4df7: $00
    ld de, $4466                                  ; $4df8: $11 $66 $44
    nop                                           ; $4dfb: $00
    push af                                       ; $4dfc: $f5
    ld h, l                                       ; $4dfd: $65
    jr c, jr_005_4e00                             ; $4dfe: $38 $00

jr_005_4e00:
    ccf                                           ; $4e00: $3f
    ld h, a                                       ; $4e01: $67
    jr z, jr_005_4e04                             ; $4e02: $28 $00

jr_005_4e04:
    ld d, l                                       ; $4e04: $55
    ld l, b                                       ; $4e05: $68
    inc d                                         ; $4e06: $14
    nop                                           ; $4e07: $00
    dec [hl]                                      ; $4e08: $35
    ld h, a                                       ; $4e09: $67
    ld e, $00                                     ; $4e0a: $1e $00
    nop                                           ; $4e0c: $00
    nop                                           ; $4e0d: $00
    nop                                           ; $4e0e: $00
    nop                                           ; $4e0f: $00
    nop                                           ; $4e10: $00
    nop                                           ; $4e11: $00
    ld bc, $0001                                  ; $4e12: $01 $01 $00
    nop                                           ; $4e15: $00
    ld bc, $0001                                  ; $4e16: $01 $01 $00
    nop                                           ; $4e19: $00
    nop                                           ; $4e1a: $00
    nop                                           ; $4e1b: $00
    nop                                           ; $4e1c: $00
    nop                                           ; $4e1d: $00
    nop                                           ; $4e1e: $00
    nop                                           ; $4e1f: $00
    nop                                           ; $4e20: $00
    nop                                           ; $4e21: $00
    nop                                           ; $4e22: $00
    nop                                           ; $4e23: $00

    db $00, $00

    nop                                           ; $4e26: $00
    nop                                           ; $4e27: $00
    inc bc                                        ; $4e28: $03
    inc bc                                        ; $4e29: $03
    nop                                           ; $4e2a: $00
    nop                                           ; $4e2b: $00
    nop                                           ; $4e2c: $00
    nop                                           ; $4e2d: $00
    inc bc                                        ; $4e2e: $03
    inc bc                                        ; $4e2f: $03
    nop                                           ; $4e30: $00
    nop                                           ; $4e31: $00
    ld [bc], a                                    ; $4e32: $02
    inc bc                                        ; $4e33: $03
    ld [bc], a                                    ; $4e34: $02
    inc bc                                        ; $4e35: $03
    nop                                           ; $4e36: $00
    nop                                           ; $4e37: $00
    nop                                           ; $4e38: $00
    nop                                           ; $4e39: $00
    ld bc, $0001                                  ; $4e3a: $01 $01 $00
    nop                                           ; $4e3d: $00
    nop                                           ; $4e3e: $00
    nop                                           ; $4e3f: $00
    ld [bc], a                                    ; $4e40: $02
    inc bc                                        ; $4e41: $03
    nop                                           ; $4e42: $00
    nop                                           ; $4e43: $00
    ld bc, $0001                                  ; $4e44: $01 $01 $00
    nop                                           ; $4e47: $00
    nop                                           ; $4e48: $00
    nop                                           ; $4e49: $00
    nop                                           ; $4e4a: $00
    nop                                           ; $4e4b: $00
    nop                                           ; $4e4c: $00
    nop                                           ; $4e4d: $00
    nop                                           ; $4e4e: $00
    nop                                           ; $4e4f: $00
    ld [bc], a                                    ; $4e50: $02
    inc b                                         ; $4e51: $04
    nop                                           ; $4e52: $00
    nop                                           ; $4e53: $00
    nop                                           ; $4e54: $00
    nop                                           ; $4e55: $00
    nop                                           ; $4e56: $00
    nop                                           ; $4e57: $00
    nop                                           ; $4e58: $00
    nop                                           ; $4e59: $00
    nop                                           ; $4e5a: $00
    nop                                           ; $4e5b: $00
    nop                                           ; $4e5c: $00
    nop                                           ; $4e5d: $00
    nop                                           ; $4e5e: $00
    nop                                           ; $4e5f: $00
    nop                                           ; $4e60: $00
    nop                                           ; $4e61: $00
    nop                                           ; $4e62: $00
    nop                                           ; $4e63: $00
    inc bc                                        ; $4e64: $03
    inc bc                                        ; $4e65: $03
    nop                                           ; $4e66: $00
    nop                                           ; $4e67: $00
    nop                                           ; $4e68: $00
    nop                                           ; $4e69: $00
    nop                                           ; $4e6a: $00
    nop                                           ; $4e6b: $00
    nop                                           ; $4e6c: $00
    nop                                           ; $4e6d: $00
    ld [bc], a                                    ; $4e6e: $02
    inc bc                                        ; $4e6f: $03
    nop                                           ; $4e70: $00
    nop                                           ; $4e71: $00
    nop                                           ; $4e72: $00
    nop                                           ; $4e73: $00
    inc b                                         ; $4e74: $04
    nop                                           ; $4e75: $00
    nop                                           ; $4e76: $00
    nop                                           ; $4e77: $00
    inc b                                         ; $4e78: $04
    nop                                           ; $4e79: $00
    nop                                           ; $4e7a: $00
    nop                                           ; $4e7b: $00
    jr nz, jr_005_4e7e                            ; $4e7c: $20 $00

jr_005_4e7e:
    nop                                           ; $4e7e: $00
    nop                                           ; $4e7f: $00
    nop                                           ; $4e80: $00
    nop                                           ; $4e81: $00
    nop                                           ; $4e82: $00
    nop                                           ; $4e83: $00
    inc b                                         ; $4e84: $04
    db $fc                                        ; $4e85: $fc
    nop                                           ; $4e86: $00
    nop                                           ; $4e87: $00
    nop                                           ; $4e88: $00
    nop                                           ; $4e89: $00
    nop                                           ; $4e8a: $00
    ld c, e                                       ; $4e8b: $4b
    nop                                           ; $4e8c: $00
    nop                                           ; $4e8d: $00
    nop                                           ; $4e8e: $00
    nop                                           ; $4e8f: $00
    jr nz, jr_005_4e92                            ; $4e90: $20 $00

jr_005_4e92:
    nop                                           ; $4e92: $00
    nop                                           ; $4e93: $00
    jr nz, jr_005_4e96                            ; $4e94: $20 $00

jr_005_4e96:
    nop                                           ; $4e96: $00
    nop                                           ; $4e97: $00
    jr nz, jr_005_4e9a                            ; $4e98: $20 $00

jr_005_4e9a:
    nop                                           ; $4e9a: $00
    nop                                           ; $4e9b: $00
    inc b                                         ; $4e9c: $04
    nop                                           ; $4e9d: $00
    nop                                           ; $4e9e: $00
    nop                                           ; $4e9f: $00
    jr nz, @+$02                                  ; $4ea0: $20 $00

    db $00, $00, $20, $00

    nop                                           ; $4ea6: $00
    nop                                           ; $4ea7: $00
    nop                                           ; $4ea8: $00
    db $fc                                        ; $4ea9: $fc
    jr nz, jr_005_4eac                            ; $4eaa: $20 $00

jr_005_4eac:
    nop                                           ; $4eac: $00
    ld a, [$0000]                                 ; $4ead: $fa $00 $00
    inc b                                         ; $4eb0: $04
    nop                                           ; $4eb1: $00
    nop                                           ; $4eb2: $00
    nop                                           ; $4eb3: $00
    inc b                                         ; $4eb4: $04
    db $fc                                        ; $4eb5: $fc
    jr nz, jr_005_4eb8                            ; $4eb6: $20 $00

jr_005_4eb8:
    nop                                           ; $4eb8: $00
    ld a, [$0000]                                 ; $4eb9: $fa $00 $00
    inc b                                         ; $4ebc: $04
    nop                                           ; $4ebd: $00
    nop                                           ; $4ebe: $00
    ld [$0004], sp                                ; $4ebf: $08 $04 $00
    nop                                           ; $4ec2: $00
    nop                                           ; $4ec3: $00
    inc b                                         ; $4ec4: $04
    nop                                           ; $4ec5: $00
    ld d, b                                       ; $4ec6: $50
    sbc h                                         ; $4ec7: $9c
    nop                                           ; $4ec8: $00
    ld a, [$0000]                                 ; $4ec9: $fa $00 $00
    inc b                                         ; $4ecc: $04
    nop                                           ; $4ecd: $00
    nop                                           ; $4ece: $00
    nop                                           ; $4ecf: $00
    nop                                           ; $4ed0: $00
    nop                                           ; $4ed1: $00
    nop                                           ; $4ed2: $00
    nop                                           ; $4ed3: $00
    jr nz, jr_005_4ed6                            ; $4ed4: $20 $00

jr_005_4ed6:
    nop                                           ; $4ed6: $00
    nop                                           ; $4ed7: $00
    ld e, $00                                     ; $4ed8: $1e $00
    nop                                           ; $4eda: $00
    ld [$0004], sp                                ; $4edb: $08 $04 $00
    nop                                           ; $4ede: $00
    nop                                           ; $4edf: $00
    jr nz, jr_005_4ee2                            ; $4ee0: $20 $00

jr_005_4ee2:
    nop                                           ; $4ee2: $00
    nop                                           ; $4ee3: $00
    db $fc                                        ; $4ee4: $fc
    nop                                           ; $4ee5: $00
    nop                                           ; $4ee6: $00
    nop                                           ; $4ee7: $00
    jr nz, jr_005_4eea                            ; $4ee8: $20 $00

jr_005_4eea:
    nop                                           ; $4eea: $00
    nop                                           ; $4eeb: $00
    inc b                                         ; $4eec: $04
    nop                                           ; $4eed: $00
    nop                                           ; $4eee: $00
    nop                                           ; $4eef: $00
    jr nz, jr_005_4ef2                            ; $4ef0: $20 $00

jr_005_4ef2:
    nop                                           ; $4ef2: $00
    nop                                           ; $4ef3: $00
    jr nz, jr_005_4ef6                            ; $4ef4: $20 $00

jr_005_4ef6:
    nop                                           ; $4ef6: $00
    nop                                           ; $4ef7: $00
    jr nz, jr_005_4efa                            ; $4ef8: $20 $00

jr_005_4efa:
    nop                                           ; $4efa: $00
    nop                                           ; $4efb: $00
    inc b                                         ; $4efc: $04
    nop                                           ; $4efd: $00
    nop                                           ; $4efe: $00
    nop                                           ; $4eff: $00
    inc b                                         ; $4f00: $04
    nop                                           ; $4f01: $00
    nop                                           ; $4f02: $00
    nop                                           ; $4f03: $00
    inc b                                         ; $4f04: $04
    nop                                           ; $4f05: $00
    nop                                           ; $4f06: $00
    nop                                           ; $4f07: $00
    inc b                                         ; $4f08: $04
    nop                                           ; $4f09: $00
    nop                                           ; $4f0a: $00
    nop                                           ; $4f0b: $00
    ld b, b                                       ; $4f0c: $40
    nop                                           ; $4f0d: $00
    nop                                           ; $4f0e: $00
    nop                                           ; $4f0f: $00
    jr nz, jr_005_4f12                            ; $4f10: $20 $00

jr_005_4f12:
    nop                                           ; $4f12: $00
    nop                                           ; $4f13: $00
    inc b                                         ; $4f14: $04
    nop                                           ; $4f15: $00
    nop                                           ; $4f16: $00
    nop                                           ; $4f17: $00
    jr nz, jr_005_4f1a                            ; $4f18: $20 $00

jr_005_4f1a:
    nop                                           ; $4f1a: $00
    nop                                           ; $4f1b: $00
    inc b                                         ; $4f1c: $04
    nop                                           ; $4f1d: $00
    nop                                           ; $4f1e: $00
    nop                                           ; $4f1f: $00
    inc b                                         ; $4f20: $04
    nop                                           ; $4f21: $00
    jr nz, jr_005_4f24                            ; $4f22: $20 $00

jr_005_4f24:
    nop                                           ; $4f24: $00
    ld a, [$0000]                                 ; $4f25: $fa $00 $00
    inc b                                         ; $4f28: $04
    nop                                           ; $4f29: $00
    nop                                           ; $4f2a: $00
    nop                                           ; $4f2b: $00
    inc b                                         ; $4f2c: $04
    nop                                           ; $4f2d: $00
    nop                                           ; $4f2e: $00
    nop                                           ; $4f2f: $00
    jr nz, jr_005_4f32                            ; $4f30: $20 $00

jr_005_4f32:
    nop                                           ; $4f32: $00
    nop                                           ; $4f33: $00
    jr nz, jr_005_4f36                            ; $4f34: $20 $00

jr_005_4f36:
    nop                                           ; $4f36: $00
    nop                                           ; $4f37: $00
    db $fc                                        ; $4f38: $fc
    nop                                           ; $4f39: $00
    nop                                           ; $4f3a: $00
    nop                                           ; $4f3b: $00
    db $fc                                        ; $4f3c: $fc
    nop                                           ; $4f3d: $00
    ld bc, $0140                                  ; $4f3e: $01 $40 $01
    ld b, b                                       ; $4f41: $40
    inc bc                                        ; $4f42: $03
    ld h, h                                       ; $4f43: $64
    ld bc, $0140                                  ; $4f44: $01 $40 $01
    ld b, b                                       ; $4f47: $40
    ld bc, $0140                                  ; $4f48: $01 $40 $01
    ld b, b                                       ; $4f4b: $40
    inc bc                                        ; $4f4c: $03
    ld h, h                                       ; $4f4d: $64
    inc bc                                        ; $4f4e: $03
    ld h, h                                       ; $4f4f: $64
    inc bc                                        ; $4f50: $03
    ld h, h                                       ; $4f51: $64
    ld bc, $0340                                  ; $4f52: $01 $40 $03
    ld h, h                                       ; $4f55: $64

    db $05, $78

    ld bc, $0264                                  ; $4f58: $01 $64 $02
    ld a, b                                       ; $4f5b: $78
    ld bc, $0164                                  ; $4f5c: $01 $64 $01
    ld h, h                                       ; $4f5f: $64
    ld [bc], a                                    ; $4f60: $02
    ld a, b                                       ; $4f61: $78
    ld bc, $0264                                  ; $4f62: $01 $64 $02
    and b                                         ; $4f65: $a0
    ld [bc], a                                    ; $4f66: $02
    ld a, b                                       ; $4f67: $78
    ld bc, $0124                                  ; $4f68: $01 $24 $01
    ld a, b                                       ; $4f6b: $78
    ld bc, $0340                                  ; $4f6c: $01 $40 $03
    ld a, b                                       ; $4f6f: $78
    ld bc, $0240                                  ; $4f70: $01 $40 $02
    ld a, b                                       ; $4f73: $78
    ld bc, $0378                                  ; $4f74: $01 $78 $03
    ld b, b                                       ; $4f77: $40
    ld bc, $0140                                  ; $4f78: $01 $40 $01
    ld b, b                                       ; $4f7b: $40
    ld bc, $0140                                  ; $4f7c: $01 $40 $01
    ld b, b                                       ; $4f7f: $40
    ld bc, $0240                                  ; $4f80: $01 $40 $02
    ld a, b                                       ; $4f83: $78
    ld bc, $0140                                  ; $4f84: $01 $40 $01
    ld b, b                                       ; $4f87: $40
    ld bc, $0340                                  ; $4f88: $01 $40 $03
    ld h, h                                       ; $4f8b: $64
    inc bc                                        ; $4f8c: $03
    ld h, h                                       ; $4f8d: $64
    ld bc, $0240                                  ; $4f8e: $01 $40 $02
    ld b, b                                       ; $4f91: $40
    ld bc, $0140                                  ; $4f92: $01 $40 $01
    ld b, b                                       ; $4f95: $40
    ld [bc], a                                    ; $4f96: $02
    ld a, b                                       ; $4f97: $78
    ld bc, $0140                                  ; $4f98: $01 $40 $01
    ld b, b                                       ; $4f9b: $40
    inc bc                                        ; $4f9c: $03
    ld b, b                                       ; $4f9d: $40
    inc bc                                        ; $4f9e: $03
    ld b, b                                       ; $4f9f: $40
    ld [bc], a                                    ; $4fa0: $02
    ld a, b                                       ; $4fa1: $78
    ld bc, $0078                                  ; $4fa2: $01 $78 $00
    nop                                           ; $4fa5: $00
    nop                                           ; $4fa6: $00
    nop                                           ; $4fa7: $00
    nop                                           ; $4fa8: $00
    nop                                           ; $4fa9: $00
    nop                                           ; $4faa: $00
    nop                                           ; $4fab: $00
    nop                                           ; $4fac: $00
    nop                                           ; $4fad: $00
    nop                                           ; $4fae: $00
    nop                                           ; $4faf: $00
    inc b                                         ; $4fb0: $04
    ld [bc], a                                    ; $4fb1: $02
    nop                                           ; $4fb2: $00
    dec b                                         ; $4fb3: $05
    nop                                           ; $4fb4: $00
    nop                                           ; $4fb5: $00
    nop                                           ; $4fb6: $00
    nop                                           ; $4fb7: $00
    nop                                           ; $4fb8: $00
    nop                                           ; $4fb9: $00
    nop                                           ; $4fba: $00
    nop                                           ; $4fbb: $00
    nop                                           ; $4fbc: $00
    nop                                           ; $4fbd: $00
    nop                                           ; $4fbe: $00
    nop                                           ; $4fbf: $00
    nop                                           ; $4fc0: $00
    nop                                           ; $4fc1: $00
    nop                                           ; $4fc2: $00
    nop                                           ; $4fc3: $00
    nop                                           ; $4fc4: $00
    nop                                           ; $4fc5: $00
    nop                                           ; $4fc6: $00
    nop                                           ; $4fc7: $00
    nop                                           ; $4fc8: $00
    nop                                           ; $4fc9: $00
    nop                                           ; $4fca: $00
    nop                                           ; $4fcb: $00
    nop                                           ; $4fcc: $00
    nop                                           ; $4fcd: $00
    nop                                           ; $4fce: $00
    nop                                           ; $4fcf: $00
    nop                                           ; $4fd0: $00
    nop                                           ; $4fd1: $00
    nop                                           ; $4fd2: $00
    nop                                           ; $4fd3: $00

    db $01, $02, $02, $00

    nop                                           ; $4fd8: $00
    nop                                           ; $4fd9: $00
    nop                                           ; $4fda: $00
    nop                                           ; $4fdb: $00
    nop                                           ; $4fdc: $00
    nop                                           ; $4fdd: $00
    nop                                           ; $4fde: $00
    nop                                           ; $4fdf: $00
    nop                                           ; $4fe0: $00
    nop                                           ; $4fe1: $00
    nop                                           ; $4fe2: $00
    nop                                           ; $4fe3: $00
    nop                                           ; $4fe4: $00
    nop                                           ; $4fe5: $00
    nop                                           ; $4fe6: $00
    nop                                           ; $4fe7: $00
    nop                                           ; $4fe8: $00
    nop                                           ; $4fe9: $00
    nop                                           ; $4fea: $00
    nop                                           ; $4feb: $00
    nop                                           ; $4fec: $00
    nop                                           ; $4fed: $00
    nop                                           ; $4fee: $00
    nop                                           ; $4fef: $00
    nop                                           ; $4ff0: $00
    nop                                           ; $4ff1: $00
    nop                                           ; $4ff2: $00
    nop                                           ; $4ff3: $00
    nop                                           ; $4ff4: $00
    nop                                           ; $4ff5: $00
    nop                                           ; $4ff6: $00
    nop                                           ; $4ff7: $00
    ld [bc], a                                    ; $4ff8: $02
    inc e                                         ; $4ff9: $1c
    nop                                           ; $4ffa: $00
    ld [bc], a                                    ; $4ffb: $02
    dec b                                         ; $4ffc: $05
    nop                                           ; $4ffd: $00
    nop                                           ; $4ffe: $00
    nop                                           ; $4fff: $00
    nop                                           ; $5000: $00
    nop                                           ; $5001: $00
    nop                                           ; $5002: $00
    nop                                           ; $5003: $00
    ld [bc], a                                    ; $5004: $02
    inc e                                         ; $5005: $1c
    nop                                           ; $5006: $00
    ld bc, $0000                                  ; $5007: $01 $00 $00
    nop                                           ; $500a: $00
    nop                                           ; $500b: $00
    nop                                           ; $500c: $00
    nop                                           ; $500d: $00
    nop                                           ; $500e: $00
    nop                                           ; $500f: $00
    nop                                           ; $5010: $00
    nop                                           ; $5011: $00
    nop                                           ; $5012: $00
    nop                                           ; $5013: $00
    nop                                           ; $5014: $00
    nop                                           ; $5015: $00
    nop                                           ; $5016: $00
    nop                                           ; $5017: $00
    nop                                           ; $5018: $00
    nop                                           ; $5019: $00
    nop                                           ; $501a: $00
    nop                                           ; $501b: $00
    nop                                           ; $501c: $00
    nop                                           ; $501d: $00
    nop                                           ; $501e: $00
    nop                                           ; $501f: $00
    nop                                           ; $5020: $00
    nop                                           ; $5021: $00
    nop                                           ; $5022: $00
    nop                                           ; $5023: $00
    ld bc, $021c                                  ; $5024: $01 $1c $02
    nop                                           ; $5027: $00
    ld bc, $031c                                  ; $5028: $01 $1c $03
    nop                                           ; $502b: $00
    nop                                           ; $502c: $00
    nop                                           ; $502d: $00
    nop                                           ; $502e: $00
    nop                                           ; $502f: $00
    nop                                           ; $5030: $00
    nop                                           ; $5031: $00
    nop                                           ; $5032: $00
    nop                                           ; $5033: $00
    nop                                           ; $5034: $00
    nop                                           ; $5035: $00
    nop                                           ; $5036: $00
    nop                                           ; $5037: $00
    nop                                           ; $5038: $00
    nop                                           ; $5039: $00
    nop                                           ; $503a: $00
    nop                                           ; $503b: $00
    nop                                           ; $503c: $00
    nop                                           ; $503d: $00
    nop                                           ; $503e: $00
    nop                                           ; $503f: $00
    ld bc, $0102                                  ; $5040: $01 $02 $01
    nop                                           ; $5043: $00
    nop                                           ; $5044: $00
    nop                                           ; $5045: $00
    nop                                           ; $5046: $00
    nop                                           ; $5047: $00
    nop                                           ; $5048: $00
    nop                                           ; $5049: $00
    nop                                           ; $504a: $00
    nop                                           ; $504b: $00
    nop                                           ; $504c: $00
    nop                                           ; $504d: $00
    nop                                           ; $504e: $00
    nop                                           ; $504f: $00
    nop                                           ; $5050: $00
    nop                                           ; $5051: $00
    nop                                           ; $5052: $00
    nop                                           ; $5053: $00
    nop                                           ; $5054: $00
    nop                                           ; $5055: $00
    nop                                           ; $5056: $00
    nop                                           ; $5057: $00
    nop                                           ; $5058: $00
    nop                                           ; $5059: $00
    nop                                           ; $505a: $00
    nop                                           ; $505b: $00
    ld bc, $0602                                  ; $505c: $01 $02 $06
    nop                                           ; $505f: $00
    ld bc, $0202                                  ; $5060: $01 $02 $02
    nop                                           ; $5063: $00
    ld bc, $041c                                  ; $5064: $01 $1c $04
    nop                                           ; $5067: $00
    ld bc, $051c                                  ; $5068: $01 $1c $05
    nop                                           ; $506b: $00
    nop                                           ; $506c: $00
    nop                                           ; $506d: $00
    nop                                           ; $506e: $00
    nop                                           ; $506f: $00
    nop                                           ; $5070: $00
    nop                                           ; $5071: $00
    nop                                           ; $5072: $00
    nop                                           ; $5073: $00
    nop                                           ; $5074: $00
    nop                                           ; $5075: $00
    nop                                           ; $5076: $00
    nop                                           ; $5077: $00

    db $01, $01, $86, $50, $19, $01, $48, $01, $01, $88, $50, $19, $01, $44, $e7, $d9
    db $c0, $d9, $e0, $d9, $00, $da, $20, $da, $cd, $13, $51, $c0, $c5, $3e, $37, $cd
    db $3e, $39, $cd, $e5, $53, $cd, $fa, $55, $cd, $16, $56, $cd, $c9, $56, $cd, $49
    db $57, $c1, $3e, $ff, $e0, $d3, $21, $0c, $4e, $fa, $63, $cd, $cd, $8c, $31, $2a
    db $fe, $01, $c3, $39, $00, $c5, $fa, $63, $cd, $f5, $3e, $ff, $ea, $63, $cd, $fa

    ld h, e                                       ; $50c8: $63
    db $cd                                        ; $50c9: $cd

    cp $fe                                        ; $50ca: $fe $fe
    jr nz, @-$05                                  ; $50cc: $20 $f9

    pop af                                        ; $50ce: $f1
    ld [$cd63], a                                 ; $50cf: $ea $63 $cd
    call Call_000_3308                            ; $50d2: $cd $08 $33
    call RST_18                                   ; $50d5: $cd $18 $00
    ld hl, $7ace                                  ; $50d8: $21 $ce $7a
    ldh [$c1], a                                  ; $50db: $e0 $c1
    ld a, $6d                                     ; $50dd: $3e $6d
    ldh [$bd], a                                  ; $50df: $e0 $bd
    ld a, $7c                                     ; $50e1: $3e $7c
    ldh [$be], a                                  ; $50e3: $e0 $be
    call Call_000_343a                            ; $50e5: $cd $3a $34
    ld hl, $c0c4                                  ; $50e8: $21 $c4 $c0
    res 1, [hl]                                   ; $50eb: $cb $8e
    res 3, [hl]                                   ; $50ed: $cb $9e
    res 2, [hl]                                   ; $50ef: $cb $96
    ldh a, [rSVBK]                                ; $50f1: $f0 $70
    push af                                       ; $50f3: $f5
    ld a, $05                                     ; $50f4: $3e $05
    ldh [rSVBK], a                                ; $50f6: $e0 $70
    ld hl, $d464                                  ; $50f8: $21 $64 $d4
    xor a                                         ; $50fb: $af
    ld [hl+], a                                   ; $50fc: $22
    ld [hl+], a                                   ; $50fd: $22
    ld [hl], a                                    ; $50fe: $77
    pop af                                        ; $50ff: $f1
    ldh [rSVBK], a                                ; $5100: $e0 $70
    ld a, $01                                     ; $5102: $3e $01
    ld [$cc08], a                                 ; $5104: $ea $08 $cc
    pop bc                                        ; $5107: $c1
    ret                                           ; $5108: $c9


    ldh a, [$d3]                                  ; $5109: $f0 $d3
    ld [$cd63], a                                 ; $510b: $ea $63 $cd
    ld a, $ff                                     ; $510e: $3e $ff
    ldh [$d3], a                                  ; $5110: $e0 $d3
    ret                                           ; $5112: $c9


    ld a, [$cc05]                                 ; $5113: $fa $05 $cc
    or a                                          ; $5116: $b7
    jr z, jr_005_512a                             ; $5117: $28 $11

    ld a, [$cd63]                                 ; $5119: $fa $63 $cd
    ld d, a                                       ; $511c: $57
    ld hl, $4c8a                                  ; $511d: $21 $8a $4c

jr_005_5120:
    ld a, [hl+]                                   ; $5120: $2a
    cp $ff                                        ; $5121: $fe $ff
    jr z, jr_005_512a                             ; $5123: $28 $05

    cp d                                          ; $5125: $ba
    jr nz, jr_005_5120                            ; $5126: $20 $f8

    cp $ff                                        ; $5128: $fe $ff

jr_005_512a:
    jp Jump_000_0039                              ; $512a: $c3 $39 $00


    push de                                       ; $512d: $d5
    push hl                                       ; $512e: $e5
    ld a, [$cbe7]                                 ; $512f: $fa $e7 $cb
    ldh [$c1], a                                  ; $5132: $e0 $c1
    ld a, $e8                                     ; $5134: $3e $e8
    ldh [$bd], a                                  ; $5136: $e0 $bd
    ld a, $4d                                     ; $5138: $3e $4d
    ldh [$be], a                                  ; $513a: $e0 $be
    call Call_000_343a                            ; $513c: $cd $3a $34
    ld de, $0017                                  ; $513f: $11 $17 $00
    add hl, de                                    ; $5142: $19
    ld a, [hl+]                                   ; $5143: $2a
    cp $01                                        ; $5144: $fe $01
    jr nz, jr_005_514d                            ; $5146: $20 $05

    ld a, [hl]                                    ; $5148: $7e
    pop hl                                        ; $5149: $e1
    pop de                                        ; $514a: $d1
    or a                                          ; $514b: $b7
    ret                                           ; $514c: $c9


jr_005_514d:
    pop hl                                        ; $514d: $e1
    pop de                                        ; $514e: $d1
    xor a                                         ; $514f: $af
    ret                                           ; $5150: $c9


    ld a, [$cd63]                                 ; $5151: $fa $63 $cd
    ldh [$9b], a                                  ; $5154: $e0 $9b
    ret                                           ; $5156: $c9


    ld a, [$cbe7]                                 ; $5157: $fa $e7 $cb
    ld [$c301], a                                 ; $515a: $ea $01 $c3
    ret                                           ; $515d: $c9


    ld a, [$cbe7]                                 ; $515e: $fa $e7 $cb
    ld hl, $6461                                  ; $5161: $21 $61 $64
    ld d, a                                       ; $5164: $57
    ld e, $07                                     ; $5165: $1e $07
    call Call_000_35a1                            ; $5167: $cd $a1 $35
    ld a, l                                       ; $516a: $7d
    ldh [$9c], a                                  ; $516b: $e0 $9c
    ld a, h                                       ; $516d: $7c
    sub $10                                       ; $516e: $d6 $10
    ldh [$9e], a                                  ; $5170: $e0 $9e
    ret                                           ; $5172: $c9


    ld a, [$cbe7]                                 ; $5173: $fa $e7 $cb
    ld hl, $6461                                  ; $5176: $21 $61 $64
    ld d, a                                       ; $5179: $57
    ld e, $07                                     ; $517a: $1e $07
    call Call_000_35a1                            ; $517c: $cd $a1 $35
    ld d, h                                       ; $517f: $54
    ld e, l                                       ; $5180: $5d
    ld a, [$cd63]                                 ; $5181: $fa $63 $cd
    cp $05                                        ; $5184: $fe $05
    jr z, jr_005_51c3                             ; $5186: $28 $3b

    cp $0f                                        ; $5188: $fe $0f
    jr z, jr_005_51a4                             ; $518a: $28 $18

    cp $10                                        ; $518c: $fe $10
    jr z, jr_005_51af                             ; $518e: $28 $1f

    cp $17                                        ; $5190: $fe $17
    jr z, jr_005_51b3                             ; $5192: $28 $1f

    cp $18                                        ; $5194: $fe $18
    jr z, jr_005_519e                             ; $5196: $28 $06

    cp $1a                                        ; $5198: $fe $1a
    jr z, jr_005_51bd                             ; $519a: $28 $21

    jr jr_005_51cb                                ; $519c: $18 $2d

jr_005_519e:
    ld a, $10                                     ; $519e: $3e $10
    add d                                         ; $51a0: $82
    ld d, a                                       ; $51a1: $57
    jr jr_005_51cb                                ; $51a2: $18 $27

jr_005_51a4:
    ld a, $03                                     ; $51a4: $3e $03
    add d                                         ; $51a6: $82
    ld d, a                                       ; $51a7: $57
    ld a, e                                       ; $51a8: $7b
    ld e, $08                                     ; $51a9: $1e $08
    sub e                                         ; $51ab: $93
    ld e, a                                       ; $51ac: $5f
    jr jr_005_51cb                                ; $51ad: $18 $1c

jr_005_51af:
    add d                                         ; $51af: $82
    ld d, a                                       ; $51b0: $57
    jr jr_005_51cb                                ; $51b1: $18 $18

jr_005_51b3:
    ld a, $10                                     ; $51b3: $3e $10
    add d                                         ; $51b5: $82
    ld d, a                                       ; $51b6: $57
    ld a, $1e                                     ; $51b7: $3e $1e
    add e                                         ; $51b9: $83
    ld e, a                                       ; $51ba: $5f
    jr jr_005_51cb                                ; $51bb: $18 $0e

jr_005_51bd:
    ld a, $1a                                     ; $51bd: $3e $1a
    add e                                         ; $51bf: $83
    ld e, a                                       ; $51c0: $5f
    jr jr_005_51cb                                ; $51c1: $18 $08

jr_005_51c3:
    ld a, $f0                                     ; $51c3: $3e $f0
    add d                                         ; $51c5: $82
    ld d, a                                       ; $51c6: $57
    ld a, $18                                     ; $51c7: $3e $18
    add e                                         ; $51c9: $83
    ld e, a                                       ; $51ca: $5f

jr_005_51cb:
    ld hl, $0006                                  ; $51cb: $21 $06 $00
    add hl, bc                                    ; $51ce: $09
    ld a, e                                       ; $51cf: $7b
    ld [hl+], a                                   ; $51d0: $22
    inc hl                                        ; $51d1: $23
    inc hl                                        ; $51d2: $23
    ld a, d                                       ; $51d3: $7a
    sub $10                                       ; $51d4: $d6 $10
    ld [hl], a                                    ; $51d6: $77
    ret                                           ; $51d7: $c9


    push bc                                       ; $51d8: $c5
    call Call_000_2e82                            ; $51d9: $cd $82 $2e
    ld d, $04                                     ; $51dc: $16 $04
    ld e, $02                                     ; $51de: $1e $02
    ld hl, $5ac5                                  ; $51e0: $21 $c5 $5a
    ldh [$c1], a                                  ; $51e3: $e0 $c1
    ld a, $3d                                     ; $51e5: $3e $3d
    ldh [$bd], a                                  ; $51e7: $e0 $bd
    ld a, $25                                     ; $51e9: $3e $25
    ldh [$be], a                                  ; $51eb: $e0 $be
    call Call_000_3454                            ; $51ed: $cd $54 $34
    pop bc                                        ; $51f0: $c1
    ret                                           ; $51f1: $c9


    ld hl, $4c92                                  ; $51f2: $21 $92 $4c
    ld a, [$cd63]                                 ; $51f5: $fa $63 $cd
    call Call_000_3194                            ; $51f8: $cd $94 $31
    ldh [$c1], a                                  ; $51fb: $e0 $c1
    ld a, $b5                                     ; $51fd: $3e $b5
    ldh [$bd], a                                  ; $51ff: $e0 $bd
    ld a, $63                                     ; $5201: $3e $63
    ldh [$be], a                                  ; $5203: $e0 $be
    jp Jump_000_3433                              ; $5205: $c3 $33 $34


    ret                                           ; $5208: $c9


    ld hl, $4d10                                  ; $5209: $21 $10 $4d
    inc bc                                        ; $520c: $03
    ld a, [bc]                                    ; $520d: $0a
    dec bc                                        ; $520e: $0b
    call Call_000_317d                            ; $520f: $cd $7d $31
    ld e, [hl]                                    ; $5212: $5e
    inc hl                                        ; $5213: $23
    ld d, [hl]                                    ; $5214: $56
    inc hl                                        ; $5215: $23
    ld a, [hl+]                                   ; $5216: $2a
    ld h, [hl]                                    ; $5217: $66
    ld l, a                                       ; $5218: $6f
    ld a, l                                       ; $5219: $7d
    ld [$cdbb], a                                 ; $521a: $ea $bb $cd
    jp Jump_000_0a50                              ; $521d: $c3 $50 $0a


    push bc                                       ; $5220: $c5
    ldh [$c1], a                                  ; $5221: $e0 $c1
    ld a, $69                                     ; $5223: $3e $69
    ldh [$bd], a                                  ; $5225: $e0 $bd
    ld a, $4d                                     ; $5227: $3e $4d
    ldh [$be], a                                  ; $5229: $e0 $be
    call Call_000_343a                            ; $522b: $cd $3a $34
    pop bc                                        ; $522e: $c1
    ret                                           ; $522f: $c9


Call_005_5230:
jr_005_5230:
    ld a, $03                                     ; $5230: $3e $03
    call Call_000_275f                            ; $5232: $cd $5f $27
    inc a                                         ; $5235: $3c
    ld d, a                                       ; $5236: $57
    ldh [$c1], a                                  ; $5237: $e0 $c1
    ld a, $1e                                     ; $5239: $3e $1e
    ldh [$bd], a                                  ; $523b: $e0 $bd
    ld a, $4c                                     ; $523d: $3e $4c
    ldh [$be], a                                  ; $523f: $e0 $be
    call Call_000_343a                            ; $5241: $cd $3a $34
    bit 1, a                                      ; $5244: $cb $4f
    jr nz, jr_005_5230                            ; $5246: $20 $e8

    ld a, d                                       ; $5248: $7a
    ld [$cbe7], a                                 ; $5249: $ea $e7 $cb
    ret                                           ; $524c: $c9


    push bc                                       ; $524d: $c5
    ld a, $01                                     ; $524e: $3e $01
    ld [$cbe6], a                                 ; $5250: $ea $e6 $cb
    ld a, $04                                     ; $5253: $3e $04
    ld [$cbe7], a                                 ; $5255: $ea $e7 $cb
    ld c, $00                                     ; $5258: $0e $00
    ldh [$c1], a                                  ; $525a: $e0 $c1
    ld a, $96                                     ; $525c: $3e $96
    ldh [$bd], a                                  ; $525e: $e0 $bd
    ld a, $48                                     ; $5260: $3e $48
    ldh [$be], a                                  ; $5262: $e0 $be
    call Call_000_343a                            ; $5264: $cd $3a $34
    pop bc                                        ; $5267: $c1
    ret                                           ; $5268: $c9


    push bc                                       ; $5269: $c5
    ld a, $01                                     ; $526a: $3e $01
    ld [$cbe6], a                                 ; $526c: $ea $e6 $cb
    ld c, $00                                     ; $526f: $0e $00
    ldh [$c1], a                                  ; $5271: $e0 $c1
    ld a, $96                                     ; $5273: $3e $96
    ldh [$bd], a                                  ; $5275: $e0 $bd
    ld a, $48                                     ; $5277: $3e $48
    ldh [$be], a                                  ; $5279: $e0 $be
    call Call_000_343a                            ; $527b: $cd $3a $34
    pop bc                                        ; $527e: $c1
    ret                                           ; $527f: $c9


    ldh a, [rSVBK]                                ; $5280: $f0 $70
    push af                                       ; $5282: $f5
    ld a, $05                                     ; $5283: $3e $05
    ldh [rSVBK], a                                ; $5285: $e0 $70
    ld a, [$cbe7]                                 ; $5287: $fa $e7 $cb
    inc a                                         ; $528a: $3c
    call Call_000_3273                            ; $528b: $cd $73 $32
    ld [$d46b], a                                 ; $528e: $ea $6b $d4
    ld a, $02                                     ; $5291: $3e $02
    ld [$d46a], a                                 ; $5293: $ea $6a $d4
    ld a, $00                                     ; $5296: $3e $00
    ld [$d46d], a                                 ; $5298: $ea $6d $d4
    ld a, $02                                     ; $529b: $3e $02
    ld [$d46c], a                                 ; $529d: $ea $6c $d4
    pop af                                        ; $52a0: $f1
    ldh [rSVBK], a                                ; $52a1: $e0 $70
    ret                                           ; $52a3: $c9


    ld a, [$cbe7]                                 ; $52a4: $fa $e7 $cb
    push af                                       ; $52a7: $f5
    ld l, $03                                     ; $52a8: $2e $03
    ldh [$c1], a                                  ; $52aa: $e0 $c1
    ld a, $60                                     ; $52ac: $3e $60
    ldh [$bd], a                                  ; $52ae: $e0 $bd
    ld a, $4c                                     ; $52b0: $3e $4c
    ldh [$be], a                                  ; $52b2: $e0 $be
    call Call_000_343a                            ; $52b4: $cd $3a $34
    pop af                                        ; $52b7: $f1
    ldh [$bc], a                                  ; $52b8: $e0 $bc
    ldh a, [rSVBK]                                ; $52ba: $f0 $70
    push af                                       ; $52bc: $f5
    ld a, $05                                     ; $52bd: $3e $05
    ldh [rSVBK], a                                ; $52bf: $e0 $70
    ldh a, [$bc]                                  ; $52c1: $f0 $bc
    ldh [$c1], a                                  ; $52c3: $e0 $c1
    ld a, $e8                                     ; $52c5: $3e $e8
    ldh [$bd], a                                  ; $52c7: $e0 $bd
    ld a, $4d                                     ; $52c9: $3e $4d
    ldh [$be], a                                  ; $52cb: $e0 $be
    call Call_000_343a                            ; $52cd: $cd $3a $34
    ld de, $0005                                  ; $52d0: $11 $05 $00
    add hl, de                                    ; $52d3: $19
    xor a                                         ; $52d4: $af
    ld [hl+], a                                   ; $52d5: $22
    ld [hl], a                                    ; $52d6: $77
    ldh [$bc], a                                  ; $52d7: $e0 $bc
    pop af                                        ; $52d9: $f1
    ldh [rSVBK], a                                ; $52da: $e0 $70
    ldh a, [$bc]                                  ; $52dc: $f0 $bc
    ret                                           ; $52de: $c9


    ld a, [$cbe7]                                 ; $52df: $fa $e7 $cb
    ldh [$c1], a                                  ; $52e2: $e0 $c1
    ld a, $49                                     ; $52e4: $3e $49
    ldh [$bd], a                                  ; $52e6: $e0 $bd
    ld a, $68                                     ; $52e8: $3e $68
    ldh [$be], a                                  ; $52ea: $e0 $be
    call Call_000_344f                            ; $52ec: $cd $4f $34
    ret                                           ; $52ef: $c9


    ld hl, $0001                                  ; $52f0: $21 $01 $00
    add hl, bc                                    ; $52f3: $09
    ld a, [hl]                                    ; $52f4: $7e
    ldh [$9b], a                                  ; $52f5: $e0 $9b
    ret                                           ; $52f7: $c9


    ld hl, $0002                                  ; $52f8: $21 $02 $00
    add hl, bc                                    ; $52fb: $09
    ld a, [hl]                                    ; $52fc: $7e
    inc a                                         ; $52fd: $3c
    ld [$c301], a                                 ; $52fe: $ea $01 $c3
    ret                                           ; $5301: $c9


    xor a                                         ; $5302: $af
    ld [$cc08], a                                 ; $5303: $ea $08 $cc
    ret                                           ; $5306: $c9


    ld a, $01                                     ; $5307: $3e $01
    ld [$cc08], a                                 ; $5309: $ea $08 $cc
    ret                                           ; $530c: $c9


    ld a, [$cc08]                                 ; $530d: $fa $08 $cc
    or a                                          ; $5310: $b7
    jp Jump_000_0039                              ; $5311: $c3 $39 $00


    push bc                                       ; $5314: $c5
    ld a, [$cbe7]                                 ; $5315: $fa $e7 $cb
    ld e, a                                       ; $5318: $5f
    ld a, $7b                                     ; $5319: $3e $7b
    call Call_000_0a6f                            ; $531b: $cd $6f $0a
    jr nz, jr_005_534a                            ; $531e: $20 $2a

    ldh a, [rSVBK]                                ; $5320: $f0 $70
    push af                                       ; $5322: $f5
    ld a, $05                                     ; $5323: $3e $05
    ldh [rSVBK], a                                ; $5325: $e0 $70
    ld b, h                                       ; $5327: $44
    ld c, l                                       ; $5328: $4d
    ldh [$c1], a                                  ; $5329: $e0 $c1
    ld a, $87                                     ; $532b: $3e $87
    ldh [$bd], a                                  ; $532d: $e0 $bd
    ld a, $72                                     ; $532f: $3e $72
    ldh [$be], a                                  ; $5331: $e0 $be
    call Call_000_344f                            ; $5333: $cd $4f $34
    ld de, $0005                                  ; $5336: $11 $05 $00
    add hl, de                                    ; $5339: $19
    ld a, [hl+]                                   ; $533a: $2a
    ld h, [hl]                                    ; $533b: $66
    ld l, a                                       ; $533c: $6f
    pop af                                        ; $533d: $f1
    ldh [rSVBK], a                                ; $533e: $e0 $70
    ld a, h                                       ; $5340: $7c
    or l                                          ; $5341: $b5
    jr z, jr_005_534a                             ; $5342: $28 $06

    ld hl, $002b                                  ; $5344: $21 $2b $00
    add hl, bc                                    ; $5347: $09
    set 0, [hl]                                   ; $5348: $cb $c6

jr_005_534a:
    pop bc                                        ; $534a: $c1
    ret                                           ; $534b: $c9


    push bc                                       ; $534c: $c5
    ld a, [$cbe7]                                 ; $534d: $fa $e7 $cb
    ld e, a                                       ; $5350: $5f
    ld a, $7b                                     ; $5351: $3e $7b
    call Call_000_0a6f                            ; $5353: $cd $6f $0a
    jr nz, jr_005_5382                            ; $5356: $20 $2a

    ldh a, [rSVBK]                                ; $5358: $f0 $70
    push af                                       ; $535a: $f5
    ld a, $05                                     ; $535b: $3e $05
    ldh [rSVBK], a                                ; $535d: $e0 $70
    ld b, h                                       ; $535f: $44
    ld c, l                                       ; $5360: $4d
    ldh [$c1], a                                  ; $5361: $e0 $c1
    ld a, $87                                     ; $5363: $3e $87
    ldh [$bd], a                                  ; $5365: $e0 $bd
    ld a, $72                                     ; $5367: $3e $72
    ldh [$be], a                                  ; $5369: $e0 $be
    call Call_000_344f                            ; $536b: $cd $4f $34
    ld de, $0005                                  ; $536e: $11 $05 $00
    add hl, de                                    ; $5371: $19
    ld a, [hl+]                                   ; $5372: $2a
    ld h, [hl]                                    ; $5373: $66
    ld l, a                                       ; $5374: $6f
    pop af                                        ; $5375: $f1
    ldh [rSVBK], a                                ; $5376: $e0 $70
    ld a, h                                       ; $5378: $7c
    or l                                          ; $5379: $b5
    jr z, jr_005_5382                             ; $537a: $28 $06

    ld hl, $002b                                  ; $537c: $21 $2b $00
    add hl, bc                                    ; $537f: $09
    res 0, [hl]                                   ; $5380: $cb $86

jr_005_5382:
    pop bc                                        ; $5382: $c1
    ret                                           ; $5383: $c9


    push bc                                       ; $5384: $c5
    ldh a, [rSVBK]                                ; $5385: $f0 $70
    push af                                       ; $5387: $f5
    ld a, $05                                     ; $5388: $3e $05
    ldh [rSVBK], a                                ; $538a: $e0 $70
    ld a, [$cbe7]                                 ; $538c: $fa $e7 $cb
    ld e, a                                       ; $538f: $5f
    ld a, $7b                                     ; $5390: $3e $7b
    call Call_000_0a6f                            ; $5392: $cd $6f $0a
    ld b, h                                       ; $5395: $44
    ld c, l                                       ; $5396: $4d
    ldh [$c1], a                                  ; $5397: $e0 $c1
    ld a, $87                                     ; $5399: $3e $87
    ldh [$bd], a                                  ; $539b: $e0 $bd
    ld a, $72                                     ; $539d: $3e $72
    ldh [$be], a                                  ; $539f: $e0 $be
    call Call_000_344f                            ; $53a1: $cd $4f $34
    ld [hl], $ff                                  ; $53a4: $36 $ff
    ld de, $000a                                  ; $53a6: $11 $0a $00
    add hl, de                                    ; $53a9: $19
    set 1, [hl]                                   ; $53aa: $cb $ce
    ld a, $0a                                     ; $53ac: $3e $0a
    call Call_000_275f                            ; $53ae: $cd $5f $27
    or a                                          ; $53b1: $b7
    ld a, $2d                                     ; $53b2: $3e $2d
    jr nz, jr_005_53b8                            ; $53b4: $20 $02

    ld a, $2c                                     ; $53b6: $3e $2c

jr_005_53b8:
    call Call_000_2e9a                            ; $53b8: $cd $9a $2e
    ld de, $7cba                                  ; $53bb: $11 $ba $7c
    ldh [$c1], a                                  ; $53be: $e0 $c1
    ld a, $5b                                     ; $53c0: $3e $5b
    ldh [$bd], a                                  ; $53c2: $e0 $bd
    ld a, $0a                                     ; $53c4: $3e $0a
    ldh [$be], a                                  ; $53c6: $e0 $be
    call Call_000_3454                            ; $53c8: $cd $54 $34
    xor a                                         ; $53cb: $af
    ldh [$d4], a                                  ; $53cc: $e0 $d4
    pop af                                        ; $53ce: $f1
    ldh [rSVBK], a                                ; $53cf: $e0 $70
    pop bc                                        ; $53d1: $c1
    ret                                           ; $53d2: $c9


    ld a, $3a                                     ; $53d3: $3e $3a
    ldh [$9b], a                                  ; $53d5: $e0 $9b
    ld a, $7f                                     ; $53d7: $3e $7f
    call Call_000_03a0                            ; $53d9: $cd $a0 $03
    ld a, $3b                                     ; $53dc: $3e $3b
    ldh [$9b], a                                  ; $53de: $e0 $9b
    ld a, $7f                                     ; $53e0: $3e $7f
    jp Jump_000_03a0                              ; $53e2: $c3 $a0 $03


    xor a                                         ; $53e5: $af
    ld [$cbe9], a                                 ; $53e6: $ea $e9 $cb
    rst $18                                       ; $53e9: $df
    ldh [$c1], a                                  ; $53ea: $e0 $c1
    ld a, $e4                                     ; $53ec: $3e $e4
    ldh [$bd], a                                  ; $53ee: $e0 $bd
    ld a, $56                                     ; $53f0: $3e $56
    ldh [$be], a                                  ; $53f2: $e0 $be
    call Call_000_343a                            ; $53f4: $cd $3a $34
    ld hl, $5078                                  ; $53f7: $21 $78 $50
    call Call_000_301f                            ; $53fa: $cd $1f $30
    ld a, $7c                                     ; $53fd: $3e $7c
    ld [$c1eb], a                                 ; $53ff: $ea $eb $c1
    ld a, $03                                     ; $5402: $3e $03
    ld [$c234], a                                 ; $5404: $ea $34 $c2
    ld a, [$cd63]                                 ; $5407: $fa $63 $cd
    ld hl, $1c4e                                  ; $540a: $21 $4e $1c
    ldh [$c1], a                                  ; $540d: $e0 $c1
    ld a, $67                                     ; $540f: $3e $67
    ldh [$bd], a                                  ; $5411: $e0 $bd
    ld a, $6e                                     ; $5413: $3e $6e
    ldh [$be], a                                  ; $5415: $e0 $be
    call Call_000_342c                            ; $5417: $cd $2c $34
    rst $20                                       ; $541a: $e7
    ret                                           ; $541b: $c9


    ld a, $ff                                     ; $541c: $3e $ff
    ld [$cd63], a                                 ; $541e: $ea $63 $cd
    ret                                           ; $5421: $c9


Call_005_5422:
    ld a, [$cc05]                                 ; $5422: $fa $05 $cc
    or a                                          ; $5425: $b7
    jr z, jr_005_5438                             ; $5426: $28 $10

    cp $0b                                        ; $5428: $fe $0b
    jr z, jr_005_5434                             ; $542a: $28 $08

    cp $0c                                        ; $542c: $fe $0c
    jr z, jr_005_5434                             ; $542e: $28 $04

    ld a, $0c                                     ; $5430: $3e $0c
    jr jr_005_543a                                ; $5432: $18 $06

jr_005_5434:
    ld a, $08                                     ; $5434: $3e $08
    jr jr_005_543a                                ; $5436: $18 $02

jr_005_5438:
    ld a, $2b                                     ; $5438: $3e $2b

jr_005_543a:
    ld hl, $cc11                                  ; $543a: $21 $11 $cc
    cp [hl]                                       ; $543d: $be
    ret z                                         ; $543e: $c8

    call Call_000_395e                            ; $543f: $cd $5e $39
    ld hl, $012c                                  ; $5442: $21 $2c $01
    jp Jump_000_3929                              ; $5445: $c3 $29 $39


    rst $18                                       ; $5448: $df
    ldh [$c1], a                                  ; $5449: $e0 $c1
    ld a, $e4                                     ; $544b: $3e $e4
    ldh [$bd], a                                  ; $544d: $e0 $bd
    ld a, $56                                     ; $544f: $3e $56
    ldh [$be], a                                  ; $5451: $e0 $be
    call Call_000_343a                            ; $5453: $cd $3a $34
    rst $20                                       ; $5456: $e7
    ret                                           ; $5457: $c9


    push bc                                       ; $5458: $c5
    call Call_005_5422                            ; $5459: $cd $22 $54
    ld hl, $ffb8                                  ; $545c: $21 $b8 $ff
    ld [hl], $cf                                  ; $545f: $36 $cf
    inc hl                                        ; $5461: $23
    ld [hl], $00                                  ; $5462: $36 $00
    ld a, $b2                                     ; $5464: $3e $b2
    ldh [$c1], a                                  ; $5466: $e0 $c1
    ld a, $d2                                     ; $5468: $3e $d2
    ldh [$bd], a                                  ; $546a: $e0 $bd
    ld a, $11                                     ; $546c: $3e $11
    ldh [$be], a                                  ; $546e: $e0 $be
    call Call_000_3454                            ; $5470: $cd $54 $34
    ld a, $04                                     ; $5473: $3e $04
    ldh [$9b], a                                  ; $5475: $e0 $9b
    ld a, $2a                                     ; $5477: $3e $2a
    ld [$c301], a                                 ; $5479: $ea $01 $c3
    ld a, $b2                                     ; $547c: $3e $b2
    call Call_000_03a0                            ; $547e: $cd $a0 $03
    ld a, $b2                                     ; $5481: $3e $b2
    ld e, $04                                     ; $5483: $1e $04
    call Call_000_0a6f                            ; $5485: $cd $6f $0a
    ld b, h                                       ; $5488: $44
    ld c, l                                       ; $5489: $4d
    ldh [$c1], a                                  ; $548a: $e0 $c1
    ld a, $95                                     ; $548c: $3e $95
    ldh [$bd], a                                  ; $548e: $e0 $bd
    ld a, $0a                                     ; $5490: $3e $0a
    ldh [$be], a                                  ; $5492: $e0 $be
    call Call_000_3454                            ; $5494: $cd $54 $34
    ldh [$c1], a                                  ; $5497: $e0 $c1
    ld a, $11                                     ; $5499: $3e $11
    ldh [$bd], a                                  ; $549b: $e0 $bd
    ld a, $02                                     ; $549d: $3e $02
    ldh [$be], a                                  ; $549f: $e0 $be
    call Call_000_3454                            ; $54a1: $cd $54 $34
    ld de, $0000                                  ; $54a4: $11 $00 $00
    rst $18                                       ; $54a7: $df
    ldh [$c1], a                                  ; $54a8: $e0 $c1
    ld a, $e4                                     ; $54aa: $3e $e4
    ldh [$bd], a                                  ; $54ac: $e0 $bd
    ld a, $56                                     ; $54ae: $3e $56
    ldh [$be], a                                  ; $54b0: $e0 $be
    call Call_000_343a                            ; $54b2: $cd $3a $34
    ld a, [$cd63]                                 ; $54b5: $fa $63 $cd
    cp $ff                                        ; $54b8: $fe $ff
    jr nz, jr_005_54cd                            ; $54ba: $20 $11

    ld hl, $11c8                                  ; $54bc: $21 $c8 $11
    ld a, l                                       ; $54bf: $7d
    ld [$cd17], a                                 ; $54c0: $ea $17 $cd
    ld a, h                                       ; $54c3: $7c
    ld [$cd18], a                                 ; $54c4: $ea $18 $cd
    xor a                                         ; $54c7: $af
    ld [$cd16], a                                 ; $54c8: $ea $16 $cd
    jr jr_005_54db                                ; $54cb: $18 $0e

jr_005_54cd:
    ld [$cd16], a                                 ; $54cd: $ea $16 $cd
    ld hl, $1ce7                                  ; $54d0: $21 $e7 $1c
    ld a, l                                       ; $54d3: $7d
    ld [$cd17], a                                 ; $54d4: $ea $17 $cd
    ld a, h                                       ; $54d7: $7c
    ld [$cd18], a                                 ; $54d8: $ea $18 $cd

Jump_005_54db:
jr_005_54db:
    ld hl, $507f                                  ; $54db: $21 $7f $50
    call Call_000_301f                            ; $54de: $cd $1f $30
    ld a, $7c                                     ; $54e1: $3e $7c
    ld [$c1eb], a                                 ; $54e3: $ea $eb $c1
    ld a, $04                                     ; $54e6: $3e $04
    ld [$c234], a                                 ; $54e8: $ea $34 $c2
    ld hl, $cd17                                  ; $54eb: $21 $17 $cd
    ld a, [hl+]                                   ; $54ee: $2a
    ld h, [hl]                                    ; $54ef: $66
    ld l, a                                       ; $54f0: $6f
    ld a, [$cd16]                                 ; $54f1: $fa $16 $cd
    ldh [$c1], a                                  ; $54f4: $e0 $c1
    ld a, $fa                                     ; $54f6: $3e $fa
    ldh [$bd], a                                  ; $54f8: $e0 $bd
    ld a, $6d                                     ; $54fa: $3e $6d
    ldh [$be], a                                  ; $54fc: $e0 $be
    call Call_000_342c                            ; $54fe: $cd $2c $34
    rst $20                                       ; $5501: $e7
    ld a, [$c238]                                 ; $5502: $fa $38 $c2
    ld e, a                                       ; $5505: $5f
    ld a, [$c239]                                 ; $5506: $fa $39 $c2
    ld d, a                                       ; $5509: $57
    or e                                          ; $550a: $b3
    jr z, jr_005_5532                             ; $550b: $28 $25

    ldh [$c1], a                                  ; $550d: $e0 $c1
    ld a, $0f                                     ; $550f: $3e $0f
    ldh [$bd], a                                  ; $5511: $e0 $bd
    ld a, $41                                     ; $5513: $3e $41
    ldh [$be], a                                  ; $5515: $e0 $be
    call Call_000_3441                            ; $5517: $cd $41 $34
    ldh [$c1], a                                  ; $551a: $e0 $c1
    ld a, $11                                     ; $551c: $3e $11
    ldh [$bd], a                                  ; $551e: $e0 $bd
    ld a, $02                                     ; $5520: $3e $02
    ldh [$be], a                                  ; $5522: $e0 $be
    call Call_000_3454                            ; $5524: $cd $54 $34
    ld a, $b2                                     ; $5527: $3e $b2
    ld e, $04                                     ; $5529: $1e $04
    call Call_000_0a6f                            ; $552b: $cd $6f $0a
    ld b, h                                       ; $552e: $44
    ld c, l                                       ; $552f: $4d
    jr jr_005_5555                                ; $5530: $18 $23

jr_005_5532:
    ldh [$c1], a                                  ; $5532: $e0 $c1
    ld a, $1d                                     ; $5534: $3e $1d
    ldh [$bd], a                                  ; $5536: $e0 $bd
    ld a, $41                                     ; $5538: $3e $41
    ldh [$be], a                                  ; $553a: $e0 $be
    call Call_000_3441                            ; $553c: $cd $41 $34
    ldh [$c1], a                                  ; $553f: $e0 $c1
    ld a, $11                                     ; $5541: $3e $11
    ldh [$bd], a                                  ; $5543: $e0 $bd
    ld a, $02                                     ; $5545: $3e $02
    ldh [$be], a                                  ; $5547: $e0 $be
    call Call_000_3454                            ; $5549: $cd $54 $34
    ld a, $b2                                     ; $554c: $3e $b2
    ld e, $04                                     ; $554e: $1e $04
    call Call_000_0a6f                            ; $5550: $cd $6f $0a
    ld b, h                                       ; $5553: $44
    ld c, l                                       ; $5554: $4d

jr_005_5555:
    call Call_000_37e0                            ; $5555: $cd $e0 $37
    call Call_000_37e0                            ; $5558: $cd $e0 $37
    ldh [$c1], a                                  ; $555b: $e0 $c1
    ld a, $95                                     ; $555d: $3e $95
    ldh [$bd], a                                  ; $555f: $e0 $bd
    ld a, $0a                                     ; $5561: $3e $0a
    ldh [$be], a                                  ; $5563: $e0 $be
    call Call_000_3454                            ; $5565: $cd $54 $34
    push bc                                       ; $5568: $c5
    ldh [$c1], a                                  ; $5569: $e0 $c1
    ld a, $11                                     ; $556b: $3e $11
    ldh [$bd], a                                  ; $556d: $e0 $bd
    ld a, $02                                     ; $556f: $3e $02
    ldh [$be], a                                  ; $5571: $e0 $be
    call Call_000_3454                            ; $5573: $cd $54 $34
    call Call_000_117c                            ; $5576: $cd $7c $11
    pop bc                                        ; $5579: $c1
    or a                                          ; $557a: $b7
    jr z, jr_005_5555                             ; $557b: $28 $d8

jr_005_557d:
    call Call_000_37e0                            ; $557d: $cd $e0 $37
    call Call_000_37e0                            ; $5580: $cd $e0 $37
    ldh [$c1], a                                  ; $5583: $e0 $c1
    ld a, $95                                     ; $5585: $3e $95
    ldh [$bd], a                                  ; $5587: $e0 $bd
    ld a, $0a                                     ; $5589: $3e $0a
    ldh [$be], a                                  ; $558b: $e0 $be
    call Call_000_3454                            ; $558d: $cd $54 $34
    push bc                                       ; $5590: $c5
    ldh [$c1], a                                  ; $5591: $e0 $c1
    ld a, $11                                     ; $5593: $3e $11
    ldh [$bd], a                                  ; $5595: $e0 $bd
    ld a, $02                                     ; $5597: $3e $02
    ldh [$be], a                                  ; $5599: $e0 $be
    call Call_000_3454                            ; $559b: $cd $54 $34
    call Call_000_117c                            ; $559e: $cd $7c $11
    pop bc                                        ; $55a1: $c1
    or a                                          ; $55a2: $b7
    jr z, jr_005_557d                             ; $55a3: $28 $d8

    rst $18                                       ; $55a5: $df
    ldh [$c1], a                                  ; $55a6: $e0 $c1
    ld a, $e4                                     ; $55a8: $3e $e4
    ldh [$bd], a                                  ; $55aa: $e0 $bd
    ld a, $56                                     ; $55ac: $3e $56
    ldh [$be], a                                  ; $55ae: $e0 $be
    call Call_000_343a                            ; $55b0: $cd $3a $34
    ld a, [$c238]                                 ; $55b3: $fa $38 $c2
    ld e, a                                       ; $55b6: $5f
    ld a, [$c239]                                 ; $55b7: $fa $39 $c2
    ld d, a                                       ; $55ba: $57
    or e                                          ; $55bb: $b3
    jp z, Jump_005_55c3                           ; $55bc: $ca $c3 $55

    xor a                                         ; $55bf: $af
    jp Jump_005_54db                              ; $55c0: $c3 $db $54


Jump_005_55c3:
    ld a, $b2                                     ; $55c3: $3e $b2
    ld e, $04                                     ; $55c5: $1e $04
    call Call_000_0a6f                            ; $55c7: $cd $6f $0a
    ld b, h                                       ; $55ca: $44
    ld c, l                                       ; $55cb: $4d
    ldh [$c1], a                                  ; $55cc: $e0 $c1
    ld a, $9d                                     ; $55ce: $3e $9d
    ldh [$bd], a                                  ; $55d0: $e0 $bd
    ld a, $0e                                     ; $55d2: $3e $0e
    ldh [$be], a                                  ; $55d4: $e0 $be
    call Call_000_3454                            ; $55d6: $cd $54 $34
    ldh [$c1], a                                  ; $55d9: $e0 $c1
    ld a, $e0                                     ; $55db: $3e $e0
    ldh [$bd], a                                  ; $55dd: $e0 $bd
    ld a, $57                                     ; $55df: $3e $57
    ldh [$be], a                                  ; $55e1: $e0 $be
    call Call_000_343a                            ; $55e3: $cd $3a $34
    ld a, $ff                                     ; $55e6: $3e $ff
    ld [$cd63], a                                 ; $55e8: $ea $63 $cd
    ldh [$c1], a                                  ; $55eb: $e0 $c1
    ld a, $ea                                     ; $55ed: $3e $ea
    ldh [$bd], a                                  ; $55ef: $e0 $bd
    ld a, $71                                     ; $55f1: $3e $71
    ldh [$be], a                                  ; $55f3: $e0 $be
    call Call_000_344f                            ; $55f5: $cd $4f $34
    pop bc                                        ; $55f8: $c1
    ret                                           ; $55f9: $c9


    ld de, $02c0                                  ; $55fa: $11 $c0 $02
    ld hl, $ffb8                                  ; $55fd: $21 $b8 $ff
    ld [hl], e                                    ; $5600: $73
    inc hl                                        ; $5601: $23
    ld [hl], d                                    ; $5602: $72
    ld hl, $58fa                                  ; $5603: $21 $fa $58
    ld a, [$cd63]                                 ; $5606: $fa $63 $cd
    ldh [$c1], a                                  ; $5609: $e0 $c1
    ld a, $37                                     ; $560b: $3e $37
    ldh [$bd], a                                  ; $560d: $e0 $bd
    ld a, $29                                     ; $560f: $3e $29
    ldh [$be], a                                  ; $5611: $e0 $be
    jp Jump_000_3454                              ; $5613: $c3 $54 $34


    ldh a, [rSVBK]                                ; $5616: $f0 $70
    push af                                       ; $5618: $f5
    ld a, $01                                     ; $5619: $3e $01
    ldh [rSVBK], a                                ; $561b: $e0 $70
    ld a, $01                                     ; $561d: $3e $01
    ld [$c26a], a                                 ; $561f: $ea $6a $c2
    ld a, $03                                     ; $5622: $3e $03
    ld [$c26b], a                                 ; $5624: $ea $6b $c2
    ld hl, $d800                                  ; $5627: $21 $00 $d8
    ld de, $d700                                  ; $562a: $11 $00 $d7
    ld bc, $0400                                  ; $562d: $01 $00 $04
    ldh [$c1], a                                  ; $5630: $e0 $c1
    ld a, $bb                                     ; $5632: $3e $bb
    ldh [$bd], a                                  ; $5634: $e0 $bd
    ld a, $78                                     ; $5636: $3e $78
    ldh [$be], a                                  ; $5638: $e0 $be
    call Call_000_343a                            ; $563a: $cd $3a $34
    ld hl, $dc00                                  ; $563d: $21 $00 $dc
    ld de, $db00                                  ; $5640: $11 $00 $db
    ld bc, $0400                                  ; $5643: $01 $00 $04
    ldh [$c1], a                                  ; $5646: $e0 $c1
    ld a, $bb                                     ; $5648: $3e $bb
    ldh [$bd], a                                  ; $564a: $e0 $bd
    ld a, $78                                     ; $564c: $3e $78
    ldh [$be], a                                  ; $564e: $e0 $be
    call Call_000_343a                            ; $5650: $cd $3a $34
    call Call_000_3674                            ; $5653: $cd $74 $36

    db $00, $00, $20, $20

    ld hl, $c0c4                                  ; $565a: $21 $c4 $c0
    set 2, [hl]                                   ; $565d: $cb $d6
    call Call_000_3308                            ; $565f: $cd $08 $33
    rst $18                                       ; $5662: $df
    ld a, [$cd63]                                 ; $5663: $fa $63 $cd
    ld de, $d800                                  ; $5666: $11 $00 $d8
    ld bc, $0000                                  ; $5669: $01 $00 $00
    ld hl, $5993                                  ; $566c: $21 $93 $59
    ldh [$c1], a                                  ; $566f: $e0 $c1
    ld a, $3a                                     ; $5671: $3e $3a
    ldh [$bd], a                                  ; $5673: $e0 $bd
    ld a, $33                                     ; $5675: $3e $33
    ldh [$be], a                                  ; $5677: $e0 $be
    call Call_000_3454                            ; $5679: $cd $54 $34
    ld a, $05                                     ; $567c: $3e $05
    ldh [$a8], a                                  ; $567e: $e0 $a8
    xor a                                         ; $5680: $af
    ldh [$a6], a                                  ; $5681: $e0 $a6
    call Call_000_3308                            ; $5683: $cd $08 $33
    ld hl, $c0c4                                  ; $5686: $21 $c4 $c0
    res 2, [hl]                                   ; $5689: $cb $96
    xor a                                         ; $568b: $af
    ldh [$a8], a                                  ; $568c: $e0 $a8
    ld a, $03                                     ; $568e: $3e $03
    ld [$c26a], a                                 ; $5690: $ea $6a $c2
    ld a, $01                                     ; $5693: $3e $01
    ld [$c26b], a                                 ; $5695: $ea $6b $c2
    ld de, $d800                                  ; $5698: $11 $00 $d8
    ld hl, $d700                                  ; $569b: $21 $00 $d7
    ld bc, $0400                                  ; $569e: $01 $00 $04
    ldh [$c1], a                                  ; $56a1: $e0 $c1
    ld a, $bb                                     ; $56a3: $3e $bb
    ldh [$bd], a                                  ; $56a5: $e0 $bd
    ld a, $78                                     ; $56a7: $3e $78
    ldh [$be], a                                  ; $56a9: $e0 $be
    call Call_000_343a                            ; $56ab: $cd $3a $34
    ld de, $dc00                                  ; $56ae: $11 $00 $dc
    ld hl, $db00                                  ; $56b1: $21 $00 $db
    ld bc, $0400                                  ; $56b4: $01 $00 $04
    ldh [$c1], a                                  ; $56b7: $e0 $c1
    ld a, $bb                                     ; $56b9: $3e $bb
    ldh [$bd], a                                  ; $56bb: $e0 $bd
    ld a, $78                                     ; $56bd: $3e $78
    ldh [$be], a                                  ; $56bf: $e0 $be
    call Call_000_343a                            ; $56c1: $cd $3a $34
    rst $20                                       ; $56c4: $e7
    pop af                                        ; $56c5: $f1
    ldh [rSVBK], a                                ; $56c6: $e0 $70
    ret                                           ; $56c8: $c9


    ldh a, [rSVBK]                                ; $56c9: $f0 $70
    push af                                       ; $56cb: $f5
    ld a, $05                                     ; $56cc: $3e $05
    ldh [rSVBK], a                                ; $56ce: $e0 $70
    ld hl, $d464                                  ; $56d0: $21 $64 $d4
    xor a                                         ; $56d3: $af
    ld [hl+], a                                   ; $56d4: $22
    ld [hl+], a                                   ; $56d5: $22
    ld [hl], a                                    ; $56d6: $77
    pop af                                        ; $56d7: $f1
    ldh [rSVBK], a                                ; $56d8: $e0 $70
    ldh a, [rSVBK]                                ; $56da: $f0 $70
    push af                                       ; $56dc: $f5
    ld a, $02                                     ; $56dd: $3e $02
    ldh [rSVBK], a                                ; $56df: $e0 $70
    ld hl, $d080                                  ; $56e1: $21 $80 $d0
    ld de, $d000                                  ; $56e4: $11 $00 $d0
    call Call_000_11f4                            ; $56e7: $cd $f4 $11
    pop af                                        ; $56ea: $f1
    ldh [rSVBK], a                                ; $56eb: $e0 $70
    ld hl, $4e0c                                  ; $56ed: $21 $0c $4e
    ld a, [$cd63]                                 ; $56f0: $fa $63 $cd
    call Call_000_318c                            ; $56f3: $cd $8c $31
    ld a, [hl+]                                   ; $56f6: $2a
    or a                                          ; $56f7: $b7
    jr z, jr_005_5734                             ; $56f8: $28 $3a

    cp $01                                        ; $56fa: $fe $01
    jr nz, jr_005_5734                            ; $56fc: $20 $36

    ld e, [hl]                                    ; $56fe: $5e
    push de                                       ; $56ff: $d5
    ld a, $09                                     ; $5700: $3e $09
    call Call_005_7c0a                            ; $5702: $cd $0a $7c
    ld hl, $c0c4                                  ; $5705: $21 $c4 $c0
    set 3, [hl]                                   ; $5708: $cb $de
    ld a, [$cd63]                                 ; $570a: $fa $63 $cd
    ld hl, $5a2c                                  ; $570d: $21 $2c $5a
    ldh [$c1], a                                  ; $5710: $e0 $c1
    ld a, $fb                                     ; $5712: $3e $fb
    ldh [$bd], a                                  ; $5714: $e0 $bd
    ld a, $35                                     ; $5716: $3e $35
    ldh [$be], a                                  ; $5718: $e0 $be
    call Call_000_3454                            ; $571a: $cd $54 $34
    pop de                                        ; $571d: $d1
    ld a, $09                                     ; $571e: $3e $09
    call Call_005_7c40                            ; $5720: $cd $40 $7c
    ld hl, $7b20                                  ; $5723: $21 $20 $7b
    ldh [$c1], a                                  ; $5726: $e0 $c1
    ld a, $6d                                     ; $5728: $3e $6d
    ldh [$bd], a                                  ; $572a: $e0 $bd
    ld a, $7c                                     ; $572c: $3e $7c
    ldh [$be], a                                  ; $572e: $e0 $be
    call Call_000_343a                            ; $5730: $cd $3a $34
    ret                                           ; $5733: $c9


jr_005_5734:
    ld hl, $c0c4                                  ; $5734: $21 $c4 $c0
    set 1, [hl]                                   ; $5737: $cb $ce
    ld hl, $7af7                                  ; $5739: $21 $f7 $7a
    ldh [$c1], a                                  ; $573c: $e0 $c1
    ld a, $6d                                     ; $573e: $3e $6d
    ldh [$bd], a                                  ; $5740: $e0 $bd
    ld a, $7c                                     ; $5742: $3e $7c
    ldh [$be], a                                  ; $5744: $e0 $be
    jp Jump_000_343a                              ; $5746: $c3 $3a $34


    ldh a, [rSVBK]                                ; $5749: $f0 $70
    push af                                       ; $574b: $f5
    ld a, $05                                     ; $574c: $3e $05
    ldh [rSVBK], a                                ; $574e: $e0 $70
    ld a, [$cd63]                                 ; $5750: $fa $63 $cd
    ld hl, $4e72                                  ; $5753: $21 $72 $4e
    call Call_000_317d                            ; $5756: $cd $7d $31
    ld a, [hl+]                                   ; $5759: $2a
    ld [$d464], a                                 ; $575a: $ea $64 $d4
    ld a, [hl+]                                   ; $575d: $2a
    ld [$d465], a                                 ; $575e: $ea $65 $d4
    ld a, [hl+]                                   ; $5761: $2a
    ld [$d467], a                                 ; $5762: $ea $67 $d4
    ld a, [hl]                                    ; $5765: $7e
    ld [$d468], a                                 ; $5766: $ea $68 $d4
    ld a, [$cd63]                                 ; $5769: $fa $63 $cd
    ld hl, $4f3e                                  ; $576c: $21 $3e $4f
    call Call_000_318c                            ; $576f: $cd $8c $31
    ld a, [hl+]                                   ; $5772: $2a
    ld [$d469], a                                 ; $5773: $ea $69 $d4
    ld [$d466], a                                 ; $5776: $ea $66 $d4
    ld a, [hl]                                    ; $5779: $7e
    ld [$cdbb], a                                 ; $577a: $ea $bb $cd
    ld a, [$cd63]                                 ; $577d: $fa $63 $cd
    ld hl, $4fa4                                  ; $5780: $21 $a4 $4f
    call Call_000_317d                            ; $5783: $cd $7d $31
    ld a, [hl+]                                   ; $5786: $2a
    cp $05                                        ; $5787: $fe $05
    jr z, jr_005_57d7                             ; $5789: $28 $4c

    ld [$d46a], a                                 ; $578b: $ea $6a $d4
    ld a, [hl+]                                   ; $578e: $2a
    cp $ff                                        ; $578f: $fe $ff
    jr nz, jr_005_579c                            ; $5791: $20 $09

    push hl                                       ; $5793: $e5
    call Call_005_5230                            ; $5794: $cd $30 $52
    inc a                                         ; $5797: $3c
    call Call_000_3273                            ; $5798: $cd $73 $32
    pop hl                                        ; $579b: $e1

jr_005_579c:
    ld [$d46b], a                                 ; $579c: $ea $6b $d4
    ld a, [hl+]                                   ; $579f: $2a
    ld [$d46d], a                                 ; $57a0: $ea $6d $d4
    ld a, [hl]                                    ; $57a3: $7e
    ld [$d46c], a                                 ; $57a4: $ea $6c $d4
    ld a, [$d46a]                                 ; $57a7: $fa $6a $d4
    cp $01                                        ; $57aa: $fe $01
    jr nz, jr_005_57d7                            ; $57ac: $20 $29

    ld b, $04                                     ; $57ae: $06 $04

jr_005_57b0:
    ld a, b                                       ; $57b0: $78
    ld hl, $d46b                                  ; $57b1: $21 $6b $d4
    call Call_000_3256                            ; $57b4: $cd $56 $32
    jr z, jr_005_57d4                             ; $57b7: $28 $1b

    ld a, b                                       ; $57b9: $78
    dec a                                         ; $57ba: $3d
    ldh [$c1], a                                  ; $57bb: $e0 $c1
    ld a, $e8                                     ; $57bd: $3e $e8
    ldh [$bd], a                                  ; $57bf: $e0 $bd
    ld a, $4d                                     ; $57c1: $3e $4d
    ldh [$be], a                                  ; $57c3: $e0 $be
    call Call_000_343a                            ; $57c5: $cd $3a $34
    ld de, $0017                                  ; $57c8: $11 $17 $00
    add hl, de                                    ; $57cb: $19
    ld a, [$d46a]                                 ; $57cc: $fa $6a $d4
    ld [hl+], a                                   ; $57cf: $22
    ld a, [$d46d]                                 ; $57d0: $fa $6d $d4
    ld [hl+], a                                   ; $57d3: $22

jr_005_57d4:
    dec b                                         ; $57d4: $05
    jr nz, jr_005_57b0                            ; $57d5: $20 $d9

jr_005_57d7:
    ld a, [$cd63]                                 ; $57d7: $fa $63 $cd
    rst $00                                       ; $57da: $c7

    ld b, l                                       ; $57db: $45
    ld e, b                                       ; $57dc: $58
    ld e, e                                       ; $57dd: $5b
    ld e, b                                       ; $57de: $58
    add c                                         ; $57df: $81
    ld e, b                                       ; $57e0: $58
    or e                                          ; $57e1: $b3
    ld e, b                                       ; $57e2: $58
    call nz, $c858                                ; $57e3: $c4 $58 $c8
    ld e, b                                       ; $57e6: $58
    bit 3, b                                      ; $57e7: $cb $58
    adc $58                                       ; $57e9: $ce $58
    push hl                                       ; $57eb: $e5
    ld e, b                                       ; $57ec: $58
    db $ed                                        ; $57ed: $ed
    ld e, b                                       ; $57ee: $58
    push af                                       ; $57ef: $f5
    ld e, b                                       ; $57f0: $58
    db $fc                                        ; $57f1: $fc
    ld e, b                                       ; $57f2: $58

    db $41, $58

    dec bc                                        ; $57f5: $0b
    ld e, c                                       ; $57f6: $59
    ld d, $59                                     ; $57f7: $16 $59
    ld e, $59                                     ; $57f9: $1e $59
    ld b, d                                       ; $57fb: $42
    ld e, c                                       ; $57fc: $59
    ld e, b                                       ; $57fd: $58
    ld e, c                                       ; $57fe: $59
    xor e                                         ; $57ff: $ab
    ld e, c                                       ; $5800: $59
    rst $00                                       ; $5801: $c7
    ld e, c                                       ; $5802: $59
    reti                                          ; $5803: $d9


    ld e, c                                       ; $5804: $59
    ld b, c                                       ; $5805: $41
    ld e, b                                       ; $5806: $58
    call c, $df59                                 ; $5807: $dc $59 $df
    ld e, c                                       ; $580a: $59
    ld e, $5a                                     ; $580b: $1e $5a
    ld d, h                                       ; $580d: $54
    ld e, d                                       ; $580e: $5a
    ld h, a                                       ; $580f: $67
    ld e, d                                       ; $5810: $5a
    ld l, d                                       ; $5811: $6a
    ld e, d                                       ; $5812: $5a
    ld l, l                                       ; $5813: $6d
    ld e, d                                       ; $5814: $5a
    add d                                         ; $5815: $82
    ld e, d                                       ; $5816: $5a
    sbc c                                         ; $5817: $99
    ld e, d                                       ; $5818: $5a
    and c                                         ; $5819: $a1
    ld e, d                                       ; $581a: $5a
    or c                                          ; $581b: $b1
    ld e, d                                       ; $581c: $5a
    or h                                          ; $581d: $b4
    ld e, d                                       ; $581e: $5a
    or a                                          ; $581f: $b7
    ld e, d                                       ; $5820: $5a
    ret z                                         ; $5821: $c8

    ld e, d                                       ; $5822: $5a
    rst $10                                       ; $5823: $d7
    ld e, d                                       ; $5824: $5a
    add sp, $5a                                   ; $5825: $e8 $5a
    db $ec                                        ; $5827: $ec
    ld e, d                                       ; $5828: $5a
    ld b, c                                       ; $5829: $41
    ld e, b                                       ; $582a: $58
    db $f4                                        ; $582b: $f4
    ld e, d                                       ; $582c: $5a
    call nc, $8c5b                                ; $582d: $d4 $5b $8c
    ld e, e                                       ; $5830: $5b
    inc e                                         ; $5831: $1c
    ld e, h                                       ; $5832: $5c
    ld h, $5c                                     ; $5833: $26 $5c
    ld b, l                                       ; $5835: $45
    ld e, h                                       ; $5836: $5c
    ld c, l                                       ; $5837: $4d
    ld e, h                                       ; $5838: $5c
    ld d, b                                       ; $5839: $50
    ld e, h                                       ; $583a: $5c
    adc c                                         ; $583b: $89
    ld e, h                                       ; $583c: $5c
    adc h                                         ; $583d: $8c
    ld e, h                                       ; $583e: $5c
    adc a                                         ; $583f: $8f
    ld e, h                                       ; $5840: $5c

Jump_005_5841:
jr_005_5841:
    pop af                                        ; $5841: $f1
    ldh [rSVBK], a                                ; $5842: $e0 $70
    ret                                           ; $5844: $c9


    ld a, $07                                     ; $5845: $3e $07
    call Call_000_275f                            ; $5847: $cd $5f $27
    add $2a                                       ; $584a: $c6 $2a
    ldh [$c1], a                                  ; $584c: $e0 $c1
    ld a, $4b                                     ; $584e: $3e $4b
    ldh [$bd], a                                  ; $5850: $e0 $bd
    ld a, $6a                                     ; $5852: $3e $6a
    ldh [$be], a                                  ; $5854: $e0 $be
    call Call_000_3441                            ; $5856: $cd $41 $34
    jr jr_005_5841                                ; $5859: $18 $e6

    ld hl, $cde1                                  ; $585b: $21 $e1 $cd
    ld a, [hl+]                                   ; $585e: $2a
    ld h, [hl]                                    ; $585f: $66
    ld l, a                                       ; $5860: $6f
    push hl                                       ; $5861: $e5
    sra h                                         ; $5862: $cb $2c
    rr l                                          ; $5864: $cb $1d
    sra h                                         ; $5866: $cb $2c
    rr l                                          ; $5868: $cb $1d
    ld a, [$d405]                                 ; $586a: $fa $05 $d4
    ld e, a                                       ; $586d: $5f
    ld a, [$d406]                                 ; $586e: $fa $06 $d4
    ld d, a                                       ; $5871: $57
    add hl, de                                    ; $5872: $19
    pop de                                        ; $5873: $d1
    call Call_000_323b                            ; $5874: $cd $3b $32
    ld a, l                                       ; $5877: $7d
    ld [$d405], a                                 ; $5878: $ea $05 $d4
    ld a, h                                       ; $587b: $7c
    ld [$d406], a                                 ; $587c: $ea $06 $d4
    jr jr_005_5841                                ; $587f: $18 $c0

    ld hl, $d40a                                  ; $5881: $21 $0a $d4
    set 7, [hl]                                   ; $5884: $cb $fe
    ld a, [$d40b]                                 ; $5886: $fa $0b $d4
    srl a                                         ; $5889: $cb $3f
    ld [$d40b], a                                 ; $588b: $ea $0b $d4
    ld hl, $d405                                  ; $588e: $21 $05 $d4
    ld a, [hl+]                                   ; $5891: $2a
    ld h, [hl]                                    ; $5892: $66
    ld l, a                                       ; $5893: $6f
    push hl                                       ; $5894: $e5
    sra h                                         ; $5895: $cb $2c
    rr l                                          ; $5897: $cb $1d
    sra h                                         ; $5899: $cb $2c
    rr l                                          ; $589b: $cb $1d
    call Call_000_007b                            ; $589d: $cd $7b $00
    pop de                                        ; $58a0: $d1
    add hl, de                                    ; $58a1: $19
    ld de, $0001                                  ; $58a2: $11 $01 $00
    call Call_000_3240                            ; $58a5: $cd $40 $32
    ld a, l                                       ; $58a8: $7d
    ld [$d405], a                                 ; $58a9: $ea $05 $d4
    ld a, h                                       ; $58ac: $7c
    ld [$d406], a                                 ; $58ad: $ea $06 $d4
    jp Jump_005_5841                              ; $58b0: $c3 $41 $58


    ld de, $fff6                                  ; $58b3: $11 $f6 $ff
    ld hl, $d415                                  ; $58b6: $21 $15 $d4
    ld [hl], e                                    ; $58b9: $73
    inc hl                                        ; $58ba: $23
    ld [hl], d                                    ; $58bb: $72
    ld hl, $d40a                                  ; $58bc: $21 $0a $d4
    set 2, [hl]                                   ; $58bf: $cb $d6
    jp Jump_005_5841                              ; $58c1: $c3 $41 $58


    pop af                                        ; $58c4: $f1
    ldh [rSVBK], a                                ; $58c5: $e0 $70
    ret                                           ; $58c7: $c9


    jp Jump_005_59d9                              ; $58c8: $c3 $d9 $59


    jp Jump_005_5841                              ; $58cb: $c3 $41 $58


    ld a, $06                                     ; $58ce: $3e $06
    call Call_000_275f                            ; $58d0: $cd $5f $27
    add $52                                       ; $58d3: $c6 $52
    ldh [$c1], a                                  ; $58d5: $e0 $c1
    ld a, $4b                                     ; $58d7: $3e $4b
    ldh [$bd], a                                  ; $58d9: $e0 $bd
    ld a, $6a                                     ; $58db: $3e $6a
    ldh [$be], a                                  ; $58dd: $e0 $be
    call Call_000_3441                            ; $58df: $cd $41 $34
    jp Jump_005_5841                              ; $58e2: $c3 $41 $58


    ld hl, $cc06                                  ; $58e5: $21 $06 $cc
    set 0, [hl]                                   ; $58e8: $cb $c6
    jp Jump_005_5841                              ; $58ea: $c3 $41 $58


    ld hl, $d40a                                  ; $58ed: $21 $0a $d4
    res 2, [hl]                                   ; $58f0: $cb $96
    jp Jump_005_5841                              ; $58f2: $c3 $41 $58


    xor a                                         ; $58f5: $af
    ld [$d40a], a                                 ; $58f6: $ea $0a $d4
    jp Jump_005_5841                              ; $58f9: $c3 $41 $58


    ld a, [$d40d]                                 ; $58fc: $fa $0d $d4
    sla a                                         ; $58ff: $cb $27
    jr nc, jr_005_5905                            ; $5901: $30 $02

    ld a, $ff                                     ; $5903: $3e $ff

jr_005_5905:
    ld [$d40d], a                                 ; $5905: $ea $0d $d4
    jp Jump_005_5841                              ; $5908: $c3 $41 $58


    ld a, [$d40b]                                 ; $590b: $fa $0b $d4
    sla a                                         ; $590e: $cb $27
    ld [$d40b], a                                 ; $5910: $ea $0b $d4
    jp Jump_005_5841                              ; $5913: $c3 $41 $58


    ld hl, $cc06                                  ; $5916: $21 $06 $cc
    set 3, [hl]                                   ; $5919: $cb $de
    jp Jump_005_5841                              ; $591b: $c3 $41 $58


    ld a, [$d424]                                 ; $591e: $fa $24 $d4
    add a                                         ; $5921: $87
    jr nc, jr_005_5926                            ; $5922: $30 $02

    ld a, $ff                                     ; $5924: $3e $ff

jr_005_5926:
    ld [$d424], a                                 ; $5926: $ea $24 $d4
    ld a, [$d43d]                                 ; $5929: $fa $3d $d4
    add a                                         ; $592c: $87
    jr nc, jr_005_5931                            ; $592d: $30 $02

    ld a, $ff                                     ; $592f: $3e $ff

jr_005_5931:
    ld [$d43d], a                                 ; $5931: $ea $3d $d4
    ld a, [$d456]                                 ; $5934: $fa $56 $d4
    add a                                         ; $5937: $87
    jr nc, jr_005_593c                            ; $5938: $30 $02

    ld a, $ff                                     ; $593a: $3e $ff

jr_005_593c:
    ld [$d456], a                                 ; $593c: $ea $56 $d4
    jp Jump_005_5841                              ; $593f: $c3 $41 $58


    call Call_005_5230                            ; $5942: $cd $30 $52
    ld [$cbe7], a                                 ; $5945: $ea $e7 $cb
    ldh [$c1], a                                  ; $5948: $e0 $c1
    ld a, $49                                     ; $594a: $3e $49
    ldh [$bd], a                                  ; $594c: $e0 $bd
    ld a, $68                                     ; $594e: $3e $68
    ldh [$be], a                                  ; $5950: $e0 $be
    call Call_000_344f                            ; $5952: $cd $4f $34
    jp Jump_005_5841                              ; $5955: $c3 $41 $58


    ldh a, [rSVBK]                                ; $5958: $f0 $70
    push af                                       ; $595a: $f5
    ld a, $06                                     ; $595b: $3e $06
    ldh [rSVBK], a                                ; $595d: $e0 $70
    ld hl, $d000                                  ; $595f: $21 $00 $d0
    ld de, $d108                                  ; $5962: $11 $08 $d1
    ld bc, $0000                                  ; $5965: $01 $00 $00

jr_005_5968:
    ld a, [hl+]                                   ; $5968: $2a
    or a                                          ; $5969: $b7
    jr z, jr_005_5970                             ; $596a: $28 $04

    ld a, c                                       ; $596c: $79
    ld [de], a                                    ; $596d: $12
    inc b                                         ; $596e: $04
    inc de                                        ; $596f: $13

jr_005_5970:
    inc c                                         ; $5970: $0c
    jr nz, jr_005_5968                            ; $5971: $20 $f5

    ld a, b                                       ; $5973: $78
    or a                                          ; $5974: $b7
    jr z, jr_005_59a5                             ; $5975: $28 $2e

    call Call_000_275f                            ; $5977: $cd $5f $27
    ld hl, $d108                                  ; $597a: $21 $08 $d1
    rst $08                                       ; $597d: $cf
    ld [$cc07], a                                 ; $597e: $ea $07 $cc
    ldh [$c1], a                                  ; $5981: $e0 $c1
    ld a, $7f                                     ; $5983: $3e $7f
    ldh [$bd], a                                  ; $5985: $e0 $bd
    ld a, $6a                                     ; $5987: $3e $6a
    ldh [$be], a                                  ; $5989: $e0 $be
    call Call_000_3441                            ; $598b: $cd $41 $34
    ld a, $5e                                     ; $598e: $3e $5e
    ldh [$c1], a                                  ; $5990: $e0 $c1
    ld a, $4b                                     ; $5992: $3e $4b
    ldh [$bd], a                                  ; $5994: $e0 $bd
    ld a, $6a                                     ; $5996: $3e $6a
    ldh [$be], a                                  ; $5998: $e0 $be
    call Call_000_3441                            ; $599a: $cd $41 $34
    ld a, [$cc06]                                 ; $599d: $fa $06 $cc
    set 6, a                                      ; $59a0: $cb $f7
    ld [$cc06], a                                 ; $59a2: $ea $06 $cc

jr_005_59a5:
    pop af                                        ; $59a5: $f1
    ldh [rSVBK], a                                ; $59a6: $e0 $70
    jp Jump_005_5841                              ; $59a8: $c3 $41 $58


    ld hl, $d407                                  ; $59ab: $21 $07 $d4
    ld a, [hl+]                                   ; $59ae: $2a
    ld h, [hl]                                    ; $59af: $66
    ld l, a                                       ; $59b0: $6f
    ld d, h                                       ; $59b1: $54
    ld e, l                                       ; $59b2: $5d
    sra d                                         ; $59b3: $cb $2a
    rr e                                          ; $59b5: $cb $1b
    sra d                                         ; $59b7: $cb $2a
    rr e                                          ; $59b9: $cb $1b
    add hl, de                                    ; $59bb: $19
    ld a, l                                       ; $59bc: $7d
    ld [$d407], a                                 ; $59bd: $ea $07 $d4
    ld a, h                                       ; $59c0: $7c
    ld [$d408], a                                 ; $59c1: $ea $08 $d4
    jp Jump_005_5841                              ; $59c4: $c3 $41 $58


    ld hl, $cc06                                  ; $59c7: $21 $06 $cc
    set 2, [hl]                                   ; $59ca: $cb $d6
    ld hl, $d40a                                  ; $59cc: $21 $0a $d4
    res 2, [hl]                                   ; $59cf: $cb $96
    ld hl, $d415                                  ; $59d1: $21 $15 $d4
    xor a                                         ; $59d4: $af
    ld [hl], a                                    ; $59d5: $77
    jp Jump_005_5841                              ; $59d6: $c3 $41 $58


Jump_005_59d9:
    jp Jump_005_5841                              ; $59d9: $c3 $41 $58


    jp Jump_005_5841                              ; $59dc: $c3 $41 $58


    ld a, [$d424]                                 ; $59df: $fa $24 $d4
    sra a                                         ; $59e2: $cb $2f
    sra a                                         ; $59e4: $cb $2f
    ld [$d424], a                                 ; $59e6: $ea $24 $d4
    ld a, [$d43d]                                 ; $59e9: $fa $3d $d4
    sra a                                         ; $59ec: $cb $2f
    sra a                                         ; $59ee: $cb $2f
    ld [$d43d], a                                 ; $59f0: $ea $3d $d4
    ld a, [$d456]                                 ; $59f3: $fa $56 $d4
    sra a                                         ; $59f6: $cb $2f
    sra a                                         ; $59f8: $cb $2f
    ld [$d456], a                                 ; $59fa: $ea $56 $d4
    ld a, [$d426]                                 ; $59fd: $fa $26 $d4
    sra a                                         ; $5a00: $cb $2f
    sra a                                         ; $5a02: $cb $2f
    ld [$d426], a                                 ; $5a04: $ea $26 $d4
    ld a, [$d43f]                                 ; $5a07: $fa $3f $d4
    sra a                                         ; $5a0a: $cb $2f
    sra a                                         ; $5a0c: $cb $2f
    ld [$d43f], a                                 ; $5a0e: $ea $3f $d4
    ld a, [$d458]                                 ; $5a11: $fa $58 $d4
    sra a                                         ; $5a14: $cb $2f
    sra a                                         ; $5a16: $cb $2f
    ld [$d458], a                                 ; $5a18: $ea $58 $d4
    jp Jump_005_5841                              ; $5a1b: $c3 $41 $58


    ld a, $01                                     ; $5a1e: $3e $01
    ldh [$c1], a                                  ; $5a20: $e0 $c1
    ld a, $1e                                     ; $5a22: $3e $1e
    ldh [$bd], a                                  ; $5a24: $e0 $bd
    ld a, $4c                                     ; $5a26: $3e $4c
    ldh [$be], a                                  ; $5a28: $e0 $be
    call Call_000_343a                            ; $5a2a: $cd $3a $34
    set 7, [hl]                                   ; $5a2d: $cb $fe
    ld a, $02                                     ; $5a2f: $3e $02
    ldh [$c1], a                                  ; $5a31: $e0 $c1
    ld a, $1e                                     ; $5a33: $3e $1e
    ldh [$bd], a                                  ; $5a35: $e0 $bd
    ld a, $4c                                     ; $5a37: $3e $4c
    ldh [$be], a                                  ; $5a39: $e0 $be
    call Call_000_343a                            ; $5a3b: $cd $3a $34
    set 7, [hl]                                   ; $5a3e: $cb $fe
    ld a, $03                                     ; $5a40: $3e $03
    ldh [$c1], a                                  ; $5a42: $e0 $c1
    ld a, $1e                                     ; $5a44: $3e $1e
    ldh [$bd], a                                  ; $5a46: $e0 $bd
    ld a, $4c                                     ; $5a48: $3e $4c
    ldh [$be], a                                  ; $5a4a: $e0 $be
    call Call_000_343a                            ; $5a4c: $cd $3a $34
    set 7, [hl]                                   ; $5a4f: $cb $fe
    jp Jump_005_5841                              ; $5a51: $c3 $41 $58


    xor a                                         ; $5a54: $af
    ldh [$c1], a                                  ; $5a55: $e0 $c1
    ld a, $1e                                     ; $5a57: $3e $1e
    ldh [$bd], a                                  ; $5a59: $e0 $bd
    ld a, $4c                                     ; $5a5b: $3e $4c
    ldh [$be], a                                  ; $5a5d: $e0 $be
    call Call_000_343a                            ; $5a5f: $cd $3a $34
    set 7, [hl]                                   ; $5a62: $cb $fe
    jp Jump_005_5841                              ; $5a64: $c3 $41 $58


    jp Jump_005_59d9                              ; $5a67: $c3 $d9 $59


    jp Jump_005_5841                              ; $5a6a: $c3 $41 $58


    ld hl, $d405                                  ; $5a6d: $21 $05 $d4
    ld a, [hl+]                                   ; $5a70: $2a
    ld h, [hl]                                    ; $5a71: $66
    ld l, a                                       ; $5a72: $6f
    sla l                                         ; $5a73: $cb $25
    rl h                                          ; $5a75: $cb $14
    ld a, l                                       ; $5a77: $7d
    ld [$d405], a                                 ; $5a78: $ea $05 $d4
    ld a, h                                       ; $5a7b: $7c
    ld [$d406], a                                 ; $5a7c: $ea $06 $d4
    jp Jump_005_5841                              ; $5a7f: $c3 $41 $58


    xor a                                         ; $5a82: $af
    ldh [$c1], a                                  ; $5a83: $e0 $c1
    ld a, $1e                                     ; $5a85: $3e $1e
    ldh [$bd], a                                  ; $5a87: $e0 $bd
    ld a, $4c                                     ; $5a89: $3e $4c
    ldh [$be], a                                  ; $5a8b: $e0 $be
    call Call_000_343a                            ; $5a8d: $cd $3a $34
    res 2, [hl]                                   ; $5a90: $cb $96
    res 7, [hl]                                   ; $5a92: $cb $be
    res 4, [hl]                                   ; $5a94: $cb $a6
    jp Jump_005_5841                              ; $5a96: $c3 $41 $58


    ld hl, $cc06                                  ; $5a99: $21 $06 $cc
    set 1, [hl]                                   ; $5a9c: $cb $ce
    jp Jump_005_5841                              ; $5a9e: $c3 $41 $58


    ld a, $19                                     ; $5aa1: $3e $19
    ld [$caf8], a                                 ; $5aa3: $ea $f8 $ca
    ld [$caf9], a                                 ; $5aa6: $ea $f9 $ca
    ld a, $0a                                     ; $5aa9: $3e $0a
    ld [$cafd], a                                 ; $5aab: $ea $fd $ca
    jp Jump_005_5841                              ; $5aae: $c3 $41 $58


    jp Jump_005_5841                              ; $5ab1: $c3 $41 $58


    jp Jump_005_5841                              ; $5ab4: $c3 $41 $58


    ld hl, $d403                                  ; $5ab7: $21 $03 $d4
    ld a, [hl+]                                   ; $5aba: $2a
    ld h, [hl]                                    ; $5abb: $66
    ld l, a                                       ; $5abc: $6f
    ld a, l                                       ; $5abd: $7d
    ld [$d407], a                                 ; $5abe: $ea $07 $d4
    ld a, h                                       ; $5ac1: $7c
    ld [$d408], a                                 ; $5ac2: $ea $08 $d4
    jp Jump_005_5841                              ; $5ac5: $c3 $41 $58


    ld a, [$cc06]                                 ; $5ac8: $fa $06 $cc
    and $08                                       ; $5acb: $e6 $08
    ld [$cc06], a                                 ; $5acd: $ea $06 $cc
    xor a                                         ; $5ad0: $af
    ld [$d40a], a                                 ; $5ad1: $ea $0a $d4
    jp Jump_005_5841                              ; $5ad4: $c3 $41 $58


    ld hl, $d401                                  ; $5ad7: $21 $01 $d4
    ld a, [hl+]                                   ; $5ada: $2a
    ld h, [hl]                                    ; $5adb: $66
    ld l, a                                       ; $5adc: $6f
    ld a, l                                       ; $5add: $7d
    ld [$d405], a                                 ; $5ade: $ea $05 $d4
    ld a, h                                       ; $5ae1: $7c
    ld [$d406], a                                 ; $5ae2: $ea $06 $d4
    jp Jump_005_5841                              ; $5ae5: $c3 $41 $58


    pop af                                        ; $5ae8: $f1
    ldh [rSVBK], a                                ; $5ae9: $e0 $70
    ret                                           ; $5aeb: $c9


    ld hl, $cc06                                  ; $5aec: $21 $06 $cc
    set 4, [hl]                                   ; $5aef: $cb $e6
    jp Jump_005_5841                              ; $5af1: $c3 $41 $58


    ld a, $06                                     ; $5af4: $3e $06
    ldh [rSVBK], a                                ; $5af6: $e0 $70
    ld a, [$d6cc]                                 ; $5af8: $fa $cc $d6
    or a                                          ; $5afb: $b7
    jr nz, jr_005_5b52                            ; $5afc: $20 $54

    ld a, $05                                     ; $5afe: $3e $05
    ldh [rSVBK], a                                ; $5b00: $e0 $70
    ld a, [$cdfb]                                 ; $5b02: $fa $fb $cd
    ldh [$c1], a                                  ; $5b05: $e0 $c1
    ld a, $af                                     ; $5b07: $3e $af
    ldh [$bd], a                                  ; $5b09: $e0 $bd
    ld a, $62                                     ; $5b0b: $3e $62
    ldh [$be], a                                  ; $5b0d: $e0 $be
    call Call_000_3448                            ; $5b0f: $cd $48 $34
    ld a, l                                       ; $5b12: $7d
    ld [$cdf9], a                                 ; $5b13: $ea $f9 $cd
    ld a, h                                       ; $5b16: $7c
    ld [$cdfa], a                                 ; $5b17: $ea $fa $cd
    ldh [$c1], a                                  ; $5b1a: $e0 $c1
    ld a, $37                                     ; $5b1c: $3e $37
    ldh [$bd], a                                  ; $5b1e: $e0 $bd
    ld a, $62                                     ; $5b20: $3e $62
    ldh [$be], a                                  ; $5b22: $e0 $be
    call Call_000_3448                            ; $5b24: $cd $48 $34
    ld hl, $cde1                                  ; $5b27: $21 $e1 $cd
    ld a, [hl+]                                   ; $5b2a: $2a
    ld h, [hl]                                    ; $5b2b: $66
    ld l, a                                       ; $5b2c: $6f
    ld a, l                                       ; $5b2d: $7d
    ld [$cde5], a                                 ; $5b2e: $ea $e5 $cd
    ld a, h                                       ; $5b31: $7c
    ld [$cde6], a                                 ; $5b32: $ea $e6 $cd
    ld hl, $cde3                                  ; $5b35: $21 $e3 $cd
    ld a, [hl+]                                   ; $5b38: $2a
    ld h, [hl]                                    ; $5b39: $66
    ld l, a                                       ; $5b3a: $6f
    ld a, l                                       ; $5b3b: $7d
    ld [$cde7], a                                 ; $5b3c: $ea $e7 $cd
    ld a, h                                       ; $5b3f: $7c
    ld [$cde8], a                                 ; $5b40: $ea $e8 $cd
    ld hl, $cde0                                  ; $5b43: $21 $e0 $cd
    ld de, $d400                                  ; $5b46: $11 $00 $d4
    inc de                                        ; $5b49: $13
    inc hl                                        ; $5b4a: $23
    call Call_000_122d                            ; $5b4b: $cd $2d $12
    ld a, $05                                     ; $5b4e: $3e $05
    ldh [rSVBK], a                                ; $5b50: $e0 $70

jr_005_5b52:
    jp Jump_005_5841                              ; $5b52: $c3 $41 $58


    ld l, $02                                     ; $5b55: $2e $02
    jr jr_005_5b5f                                ; $5b57: $18 $06

    ld l, $04                                     ; $5b59: $2e $04
    jr jr_005_5b5f                                ; $5b5b: $18 $02

    ld l, $01                                     ; $5b5d: $2e $01

jr_005_5b5f:
    ldh [$bc], a                                  ; $5b5f: $e0 $bc
    ldh a, [rSVBK]                                ; $5b61: $f0 $70
    push af                                       ; $5b63: $f5
    ld a, $06                                     ; $5b64: $3e $06
    ldh [rSVBK], a                                ; $5b66: $e0 $70
    ldh a, [$bc]                                  ; $5b68: $f0 $bc
    ld a, [$d6cc]                                 ; $5b6a: $fa $cc $d6
    and l                                         ; $5b6d: $a5
    jr nz, jr_005_5b7f                            ; $5b6e: $20 $0f

    ld a, [$d6cc]                                 ; $5b70: $fa $cc $d6
    or l                                          ; $5b73: $b5
    ld [$d6cc], a                                 ; $5b74: $ea $cc $d6
    ldh [$bc], a                                  ; $5b77: $e0 $bc
    pop af                                        ; $5b79: $f1
    ldh [rSVBK], a                                ; $5b7a: $e0 $70
    ldh a, [$bc]                                  ; $5b7c: $f0 $bc
    ret                                           ; $5b7e: $c9


jr_005_5b7f:
    ld a, $ff                                     ; $5b7f: $3e $ff
    ld [$cd63], a                                 ; $5b81: $ea $63 $cd
    ldh [$bc], a                                  ; $5b84: $e0 $bc
    pop af                                        ; $5b86: $f1
    ldh [rSVBK], a                                ; $5b87: $e0 $70
    ldh a, [$bc]                                  ; $5b89: $f0 $bc
    ret                                           ; $5b8b: $c9


    ld a, $06                                     ; $5b8c: $3e $06
    ldh [rSVBK], a                                ; $5b8e: $e0 $70
    ld a, [$d6cb]                                 ; $5b90: $fa $cb $d6
    or a                                          ; $5b93: $b7
    jr nz, jr_005_5bd1                            ; $5b94: $20 $3b

    ld a, $05                                     ; $5b96: $3e $05
    ldh [rSVBK], a                                ; $5b98: $e0 $70
    ld hl, $cde3                                  ; $5b9a: $21 $e3 $cd
    ld a, [hl+]                                   ; $5b9d: $2a
    ld h, [hl]                                    ; $5b9e: $66
    ld l, a                                       ; $5b9f: $6f
    sra h                                         ; $5ba0: $cb $2c
    rr l                                          ; $5ba2: $cb $1d
    sra h                                         ; $5ba4: $cb $2c
    rr l                                          ; $5ba6: $cb $1d
    sra h                                         ; $5ba8: $cb $2c
    rr l                                          ; $5baa: $cb $1d
    ldh a, [rSVBK]                                ; $5bac: $f0 $70
    push af                                       ; $5bae: $f5
    ld a, $06                                     ; $5baf: $3e $06
    ldh [rSVBK], a                                ; $5bb1: $e0 $70
    ld a, l                                       ; $5bb3: $7d
    ld [$d6cb], a                                 ; $5bb4: $ea $cb $d6
    pop af                                        ; $5bb7: $f1
    ldh [rSVBK], a                                ; $5bb8: $e0 $70
    ld a, [$d403]                                 ; $5bba: $fa $03 $d4
    ld e, a                                       ; $5bbd: $5f
    ld a, [$d404]                                 ; $5bbe: $fa $04 $d4
    ld d, a                                       ; $5bc1: $57
    add hl, de                                    ; $5bc2: $19
    ld de, $03e7                                  ; $5bc3: $11 $e7 $03
    call Call_000_323b                            ; $5bc6: $cd $3b $32
    ld a, l                                       ; $5bc9: $7d
    ld [$d403], a                                 ; $5bca: $ea $03 $d4
    ld a, h                                       ; $5bcd: $7c
    ld [$d404], a                                 ; $5bce: $ea $04 $d4

jr_005_5bd1:
    jp Jump_005_5841                              ; $5bd1: $c3 $41 $58


    ld a, $06                                     ; $5bd4: $3e $06
    ldh [rSVBK], a                                ; $5bd6: $e0 $70
    ld a, [$d6ca]                                 ; $5bd8: $fa $ca $d6
    or a                                          ; $5bdb: $b7
    jr nz, jr_005_5c19                            ; $5bdc: $20 $3b

    ld a, $05                                     ; $5bde: $3e $05
    ldh [rSVBK], a                                ; $5be0: $e0 $70
    ld hl, $cde1                                  ; $5be2: $21 $e1 $cd
    ld a, [hl+]                                   ; $5be5: $2a
    ld h, [hl]                                    ; $5be6: $66
    ld l, a                                       ; $5be7: $6f
    sra h                                         ; $5be8: $cb $2c
    rr l                                          ; $5bea: $cb $1d
    sra h                                         ; $5bec: $cb $2c
    rr l                                          ; $5bee: $cb $1d
    sra h                                         ; $5bf0: $cb $2c
    rr l                                          ; $5bf2: $cb $1d
    ldh a, [rSVBK]                                ; $5bf4: $f0 $70
    push af                                       ; $5bf6: $f5
    ld a, $06                                     ; $5bf7: $3e $06
    ldh [rSVBK], a                                ; $5bf9: $e0 $70
    ld a, l                                       ; $5bfb: $7d
    ld [$d6ca], a                                 ; $5bfc: $ea $ca $d6
    pop af                                        ; $5bff: $f1
    ldh [rSVBK], a                                ; $5c00: $e0 $70
    ld a, [$d401]                                 ; $5c02: $fa $01 $d4
    ld e, a                                       ; $5c05: $5f
    ld a, [$d402]                                 ; $5c06: $fa $02 $d4
    ld d, a                                       ; $5c09: $57
    add hl, de                                    ; $5c0a: $19
    ld de, $03e7                                  ; $5c0b: $11 $e7 $03
    call Call_000_323b                            ; $5c0e: $cd $3b $32
    ld a, l                                       ; $5c11: $7d
    ld [$d401], a                                 ; $5c12: $ea $01 $d4
    ld a, h                                       ; $5c15: $7c
    ld [$d402], a                                 ; $5c16: $ea $02 $d4

jr_005_5c19:
    jp Jump_005_5841                              ; $5c19: $c3 $41 $58


    xor a                                         ; $5c1c: $af
    ld [$d407], a                                 ; $5c1d: $ea $07 $d4
    ld [$d408], a                                 ; $5c20: $ea $08 $d4
    jp Jump_005_5841                              ; $5c23: $c3 $41 $58


    ld hl, $d403                                  ; $5c26: $21 $03 $d4
    ld a, [hl+]                                   ; $5c29: $2a
    ld h, [hl]                                    ; $5c2a: $66
    ld l, a                                       ; $5c2b: $6f
    ld a, l                                       ; $5c2c: $7d
    ld [$d407], a                                 ; $5c2d: $ea $07 $d4
    ld a, h                                       ; $5c30: $7c
    ld [$d408], a                                 ; $5c31: $ea $08 $d4
    ld hl, $d401                                  ; $5c34: $21 $01 $d4
    ld a, [hl+]                                   ; $5c37: $2a
    ld h, [hl]                                    ; $5c38: $66
    ld l, a                                       ; $5c39: $6f
    ld a, l                                       ; $5c3a: $7d
    ld [$d405], a                                 ; $5c3b: $ea $05 $d4
    ld a, h                                       ; $5c3e: $7c
    ld [$d406], a                                 ; $5c3f: $ea $06 $d4
    jp Jump_005_5841                              ; $5c42: $c3 $41 $58


    ld hl, $cc06                                  ; $5c45: $21 $06 $cc
    set 7, [hl]                                   ; $5c48: $cb $fe
    jp Jump_005_5841                              ; $5c4a: $c3 $41 $58


    jp Jump_005_5841                              ; $5c4d: $c3 $41 $58


    ld hl, $d41e                                  ; $5c50: $21 $1e $d4
    ld a, [hl+]                                   ; $5c53: $2a
    ld h, [hl]                                    ; $5c54: $66
    ld l, a                                       ; $5c55: $6f
    sra h                                         ; $5c56: $cb $2c
    rr l                                          ; $5c58: $cb $1d
    ld a, l                                       ; $5c5a: $7d
    ld [$d41e], a                                 ; $5c5b: $ea $1e $d4
    ld a, h                                       ; $5c5e: $7c
    ld [$d41f], a                                 ; $5c5f: $ea $1f $d4
    ld hl, $d437                                  ; $5c62: $21 $37 $d4
    ld a, [hl+]                                   ; $5c65: $2a
    ld h, [hl]                                    ; $5c66: $66
    ld l, a                                       ; $5c67: $6f
    sra h                                         ; $5c68: $cb $2c
    rr l                                          ; $5c6a: $cb $1d
    ld a, l                                       ; $5c6c: $7d
    ld [$d437], a                                 ; $5c6d: $ea $37 $d4
    ld a, h                                       ; $5c70: $7c
    ld [$d438], a                                 ; $5c71: $ea $38 $d4
    ld hl, $d450                                  ; $5c74: $21 $50 $d4
    ld a, [hl+]                                   ; $5c77: $2a
    ld h, [hl]                                    ; $5c78: $66
    ld l, a                                       ; $5c79: $6f
    sra h                                         ; $5c7a: $cb $2c
    rr l                                          ; $5c7c: $cb $1d
    ld a, l                                       ; $5c7e: $7d
    ld [$d450], a                                 ; $5c7f: $ea $50 $d4
    ld a, h                                       ; $5c82: $7c
    ld [$d451], a                                 ; $5c83: $ea $51 $d4
    jp Jump_005_5841                              ; $5c86: $c3 $41 $58


    jp Jump_005_5841                              ; $5c89: $c3 $41 $58


    jp Jump_005_5841                              ; $5c8c: $c3 $41 $58


    ldh [$c1], a                                  ; $5c8f: $e0 $c1
    ld a, $29                                     ; $5c91: $3e $29
    ldh [$bd], a                                  ; $5c93: $e0 $bd
    ld a, $6c                                     ; $5c95: $3e $6c
    ldh [$be], a                                  ; $5c97: $e0 $be
    call Call_000_3448                            ; $5c99: $cd $48 $34
    jp Jump_005_5841                              ; $5c9c: $c3 $41 $58


    ld h, b                                       ; $5c9f: $60
    ld h, b                                       ; $5ca0: $60
    ld [hl], c                                    ; $5ca1: $71
    ld h, b                                       ; $5ca2: $60

    db $7f, $60, $a0, $60, $aa, $60

    or h                                          ; $5ca9: $b4
    ld h, b                                       ; $5caa: $60

    db $c2, $60, $ca, $60, $ef, $60, $06, $61

    rra                                           ; $5cb3: $1f
    ld h, c                                       ; $5cb4: $61
    ld b, h                                       ; $5cb5: $44
    ld h, c                                       ; $5cb6: $61
    ld h, h                                       ; $5cb7: $64
    ld h, c                                       ; $5cb8: $61
    add h                                         ; $5cb9: $84
    ld h, c                                       ; $5cba: $61

    db $a4, $61

    ret nc                                        ; $5cbd: $d0

    ld h, c                                       ; $5cbe: $61
    dec bc                                        ; $5cbf: $0b
    ld h, d                                       ; $5cc0: $62
    ld [hl+], a                                   ; $5cc1: $22
    ld h, d                                       ; $5cc2: $62

    db $39, $62, $42, $62, $4b, $62, $41, $65, $f2, $62

    db $31                                        ; $5ccd: $31
    ld h, e                                       ; $5cce: $63

    db $3b, $64

    scf                                           ; $5cd1: $37
    ld h, h                                       ; $5cd2: $64

    db $ef, $65

    and l                                         ; $5cd5: $a5
    ld h, l                                       ; $5cd6: $65
    db $cd                                        ; $5cd7: $cd
    ld h, l                                       ; $5cd8: $65

    db $38, $65

    ld c, h                                       ; $5cdb: $4c
    ld h, e                                       ; $5cdc: $63
    ld e, l                                       ; $5cdd: $5d
    ld h, b                                       ; $5cde: $60

    db $69, $66

    ldh [$66], a                                  ; $5ce1: $e0 $66
    inc b                                         ; $5ce3: $04
    ld h, a                                       ; $5ce4: $67
    ld de, $ac67                                  ; $5ce5: $11 $67 $ac
    ld h, d                                       ; $5ce8: $62
    ld d, d                                       ; $5ce9: $52
    ld h, d                                       ; $5cea: $62

    db $7b, $62, $0d, $68

    ld l, h                                       ; $5cef: $6c
    ld l, b                                       ; $5cf0: $68

    db $81, $73, $c1, $73, $9a, $6d

    ld [hl+], a                                   ; $5cf7: $22
    ld [hl], c                                    ; $5cf8: $71

    db $cc, $62

    rst $10                                       ; $5cfb: $d7
    ld h, d                                       ; $5cfc: $62
    ld [c], a                                     ; $5cfd: $e2
    ld h, d                                       ; $5cfe: $62
    add sp, $62                                   ; $5cff: $e8 $62
    ld e, l                                       ; $5d01: $5d
    ld h, b                                       ; $5d02: $60

    db $55, $67

    ld c, c                                       ; $5d05: $49
    ld [hl], b                                    ; $5d06: $70
    ld l, h                                       ; $5d07: $6c
    ld [hl], b                                    ; $5d08: $70
    ld e, d                                       ; $5d09: $5a
    ld [hl], b                                    ; $5d0a: $70
    ld l, [hl]                                    ; $5d0b: $6e
    ld l, l                                       ; $5d0c: $6d

    db $ba, $6d

    jp z, $da6d                                   ; $5d0f: $ca $6d $da

    ld l, l                                       ; $5d12: $6d
    xor a                                         ; $5d13: $af
    ld l, c                                       ; $5d14: $69

    db $4e, $69

    adc a                                         ; $5d17: $8f
    ld l, c                                       ; $5d18: $69
    cp a                                          ; $5d19: $bf
    ld l, c                                       ; $5d1a: $69
    inc e                                         ; $5d1b: $1c
    ld l, [hl]                                    ; $5d1c: $6e
    ld c, l                                       ; $5d1d: $4d
    ld l, [hl]                                    ; $5d1e: $6e
    ld h, e                                       ; $5d1f: $63
    ld l, [hl]                                    ; $5d20: $6e
    sbc a                                         ; $5d21: $9f
    ld l, [hl]                                    ; $5d22: $6e
    db $e3                                        ; $5d23: $e3
    ld l, [hl]                                    ; $5d24: $6e
    daa                                           ; $5d25: $27
    ld l, a                                       ; $5d26: $6f
    ld e, l                                       ; $5d27: $5d
    ld h, b                                       ; $5d28: $60
    ld e, l                                       ; $5d29: $5d
    ld h, b                                       ; $5d2a: $60
    ld e, l                                       ; $5d2b: $5d
    ld h, b                                       ; $5d2c: $60
    ld e, l                                       ; $5d2d: $5d
    ld h, b                                       ; $5d2e: $60
    rst $18                                       ; $5d2f: $df
    ld l, c                                       ; $5d30: $69
    sbc a                                         ; $5d31: $9f
    ld l, c                                       ; $5d32: $69
    rst $08                                       ; $5d33: $cf
    ld l, c                                       ; $5d34: $69
    rst $18                                       ; $5d35: $df
    ld l, c                                       ; $5d36: $69
    nop                                           ; $5d37: $00
    ld l, d                                       ; $5d38: $6a
    ld e, l                                       ; $5d39: $5d
    ld h, b                                       ; $5d3a: $60
    ld e, l                                       ; $5d3b: $5d
    ld h, b                                       ; $5d3c: $60
    ld e, l                                       ; $5d3d: $5d
    ld h, b                                       ; $5d3e: $60
    db $ed                                        ; $5d3f: $ed
    ld h, a                                       ; $5d40: $67

    db $3d, $70

    ld e, l                                       ; $5d43: $5d
    ld h, b                                       ; $5d44: $60
    db $11                                        ; $5d45: $11
    ld l, d                                       ; $5d46: $6a

    db $65, $6a, $93, $6c, $9c, $6c, $a5, $6c

    or l                                          ; $5d4f: $b5
    ld l, h                                       ; $5d50: $6c
    jp $d56c                                      ; $5d51: $c3 $6c $d5


    ld l, h                                       ; $5d54: $6c
    push hl                                       ; $5d55: $e5
    ld l, h                                       ; $5d56: $6c
    di                                            ; $5d57: $f3
    ld l, h                                       ; $5d58: $6c

    db $fc, $6c, $16, $6d, $be, $6f, $fa, $6f, $ee, $61

    sbc l                                         ; $5d63: $9d
    ld l, a                                       ; $5d64: $6f
    ld a, b                                       ; $5d65: $78
    ld [hl], b                                    ; $5d66: $70
    add h                                         ; $5d67: $84
    ld [hl], b                                    ; $5d68: $70
    sub b                                         ; $5d69: $90
    ld [hl], b                                    ; $5d6a: $70
    sub e                                         ; $5d6b: $93
    ld [hl], b                                    ; $5d6c: $70

    db $c5, $70

    ld c, h                                       ; $5d6f: $4c
    ld [hl], c                                    ; $5d70: $71
    ld [hl], e                                    ; $5d71: $73
    ld [hl], c                                    ; $5d72: $71
    ld e, l                                       ; $5d73: $5d
    ld h, b                                       ; $5d74: $60
    and $71                                       ; $5d75: $e6 $71

    db $31, $72

    inc b                                         ; $5d79: $04
    ld h, l                                       ; $5d7a: $65

    db $18, $67, $26, $67, $70, $63

    ld a, $72                                     ; $5d81: $3e $72
    db $eb                                        ; $5d83: $eb
    ld l, b                                       ; $5d84: $68
    rst $00                                       ; $5d85: $c7
    ld l, b                                       ; $5d86: $68
    ld d, b                                       ; $5d87: $50
    ld [hl], d                                    ; $5d88: $72
    dec sp                                        ; $5d89: $3b
    ld h, e                                       ; $5d8a: $63
    and e                                         ; $5d8b: $a3
    ld h, e                                       ; $5d8c: $63
    ld a, a                                       ; $5d8d: $7f
    ld h, e                                       ; $5d8e: $63
    ld e, e                                       ; $5d8f: $5b
    ld [hl], d                                    ; $5d90: $72

    db $d2, $72

    pop hl                                        ; $5d93: $e1
    ld [hl], d                                    ; $5d94: $72
    rlca                                          ; $5d95: $07
    ld [hl], e                                    ; $5d96: $73
    add hl, hl                                    ; $5d97: $29
    ld [hl], e                                    ; $5d98: $73
    halt                                          ; $5d99: $76
    ld [hl], e                                    ; $5d9a: $73

    db $34, $67, $63, $7a, $71, $7a

    ld a, l                                       ; $5da1: $7d
    ld a, d                                       ; $5da2: $7a
    add e                                         ; $5da3: $83
    ld a, d                                       ; $5da4: $7a
    or l                                          ; $5da5: $b5
    ld b, [hl]                                    ; $5da6: $46
    cp l                                          ; $5da7: $bd
    ld b, [hl]                                    ; $5da8: $46

    db $89, $7a

    push bc                                       ; $5dab: $c5
    ld a, d                                       ; $5dac: $7a
    rst $08                                       ; $5dad: $cf
    ld a, d                                       ; $5dae: $7a
    rst $10                                       ; $5daf: $d7
    ld a, d                                       ; $5db0: $7a
    rst $20                                       ; $5db1: $e7
    ld a, d                                       ; $5db2: $7a
    pop af                                        ; $5db3: $f1
    ld a, d                                       ; $5db4: $7a
    ld sp, hl                                     ; $5db5: $f9
    ld a, d                                       ; $5db6: $7a
    push bc                                       ; $5db7: $c5
    ld b, [hl]                                    ; $5db8: $46
    push de                                       ; $5db9: $d5
    ld b, [hl]                                    ; $5dba: $46
    or l                                          ; $5dbb: $b5
    ld b, e                                       ; $5dbc: $43
    cp a                                          ; $5dbd: $bf
    ld b, e                                       ; $5dbe: $43
    push de                                       ; $5dbf: $d5
    ld b, e                                       ; $5dc0: $43
    rst $18                                       ; $5dc1: $df
    ld b, e                                       ; $5dc2: $43
    db $eb                                        ; $5dc3: $eb
    ld b, e                                       ; $5dc4: $43
    rlca                                          ; $5dc5: $07
    ld b, h                                       ; $5dc6: $44
    dec a                                         ; $5dc7: $3d
    ld b, h                                       ; $5dc8: $44
    ld b, a                                       ; $5dc9: $47
    ld b, h                                       ; $5dca: $44
    ld l, a                                       ; $5dcb: $6f
    ld a, e                                       ; $5dcc: $7b
    ld a, c                                       ; $5dcd: $79
    ld a, e                                       ; $5dce: $7b
    cp c                                          ; $5dcf: $b9
    ld a, d                                       ; $5dd0: $7a
    rst $10                                       ; $5dd1: $d7
    ld b, [hl]                                    ; $5dd2: $46
    rrca                                          ; $5dd3: $0f
    ld b, h                                       ; $5dd4: $44
    rla                                           ; $5dd5: $17
    ld b, h                                       ; $5dd6: $44
    dec l                                         ; $5dd7: $2d
    ld b, h                                       ; $5dd8: $44
    cpl                                           ; $5dd9: $2f
    ld b, h                                       ; $5dda: $44
    ld d, c                                       ; $5ddb: $51
    ld b, h                                       ; $5ddc: $44
    ret                                           ; $5ddd: $c9


    ld b, e                                       ; $5dde: $43
    add c                                         ; $5ddf: $81
    ld a, e                                       ; $5de0: $7b
    db $c3                                        ; $5de1: $c3
    ld b, h                                       ; $5de2: $44

    db $09, $7b

    scf                                           ; $5de5: $37
    ld a, e                                       ; $5de6: $7b

    db $19, $45, $29, $45, $a9, $7a

    jp $d17a                                      ; $5ded: $c3 $7a $d1


    ld b, e                                       ; $5df0: $43
    db $d3                                        ; $5df1: $d3
    ld b, e                                       ; $5df2: $43
    db $dd                                        ; $5df3: $dd
    ld b, [hl]                                    ; $5df4: $46
    push bc                                       ; $5df5: $c5
    ld a, e                                       ; $5df6: $7b
    rst $00                                       ; $5df7: $c7
    ld a, e                                       ; $5df8: $7b
    ret                                           ; $5df9: $c9


    ld a, e                                       ; $5dfa: $7b
    bit 7, e                                      ; $5dfb: $cb $7b
    sub l                                         ; $5dfd: $95
    ld b, h                                       ; $5dfe: $44
    and e                                         ; $5dff: $a3
    ld b, h                                       ; $5e00: $44
    ld d, e                                       ; $5e01: $53
    ld b, a                                       ; $5e02: $47
    ld e, e                                       ; $5e03: $5b
    ld b, a                                       ; $5e04: $47
    ld h, e                                       ; $5e05: $63
    ld b, a                                       ; $5e06: $47
    dec l                                         ; $5e07: $2d
    ld a, h                                       ; $5e08: $7c
    dec a                                         ; $5e09: $3d
    ld a, h                                       ; $5e0a: $7c
    rst $08                                       ; $5e0b: $cf
    ld b, h                                       ; $5e0c: $44
    ld e, d                                       ; $5e0d: $5a
    ld d, l                                       ; $5e0e: $55
    bit 0, a                                      ; $5e0f: $cb $47
    call $cf47                                    ; $5e11: $cd $47 $cf
    ld b, a                                       ; $5e14: $47
    pop de                                        ; $5e15: $d1
    ld b, a                                       ; $5e16: $47
    ld a, [bc]                                    ; $5e17: $0a
    ld a, h                                       ; $5e18: $7c
    ld h, l                                       ; $5e19: $65
    ld b, a                                       ; $5e1a: $47
    db $fd                                        ; $5e1b: $fd
    ld b, [hl]                                    ; $5e1c: $46
    rst $28                                       ; $5e1d: $ef
    ld b, h                                       ; $5e1e: $44
    ei                                            ; $5e1f: $fb
    ld b, h                                       ; $5e20: $44
    push af                                       ; $5e21: $f5
    ld b, h                                       ; $5e22: $44
    add hl, bc                                    ; $5e23: $09
    ld b, l                                       ; $5e24: $45
    db $db                                        ; $5e25: $db
    ld b, a                                       ; $5e26: $47
    push hl                                       ; $5e27: $e5
    ld b, a                                       ; $5e28: $47
    pop af                                        ; $5e29: $f1
    ld b, a                                       ; $5e2a: $47
    ei                                            ; $5e2b: $fb
    ld b, a                                       ; $5e2c: $47
    db $fd                                        ; $5e2d: $fd
    ld b, a                                       ; $5e2e: $47
    rst $38                                       ; $5e2f: $ff
    ld b, a                                       ; $5e30: $47
    ld bc, $0f48                                  ; $5e31: $01 $48 $0f
    ld c, b                                       ; $5e34: $48
    db $dd                                        ; $5e35: $dd
    ld b, h                                       ; $5e36: $44
    rla                                           ; $5e37: $17
    ld b, l                                       ; $5e38: $45
    adc c                                         ; $5e39: $89
    ld a, e                                       ; $5e3a: $7b
    db $ed                                        ; $5e3b: $ed
    ld b, h                                       ; $5e3c: $44
    ld c, e                                       ; $5e3d: $4b
    ld a, e                                       ; $5e3e: $7b
    and e                                         ; $5e3f: $a3
    ld a, e                                       ; $5e40: $7b
    cp e                                          ; $5e41: $bb
    ld a, e                                       ; $5e42: $7b
    ld d, e                                       ; $5e43: $53
    ld b, h                                       ; $5e44: $44
    ld h, e                                       ; $5e45: $63
    ld b, h                                       ; $5e46: $44
    ld a, e                                       ; $5e47: $7b
    ld b, h                                       ; $5e48: $44
    ld a, l                                       ; $5e49: $7d
    ld b, h                                       ; $5e4a: $44
    add l                                         ; $5e4b: $85
    ld b, h                                       ; $5e4c: $44
    adc c                                         ; $5e4d: $89
    ld b, h                                       ; $5e4e: $44
    sub c                                         ; $5e4f: $91
    ld b, h                                       ; $5e50: $44
    adc $7b                                       ; $5e51: $ce $7b
    sub $7b                                       ; $5e53: $d6 $7b
    add a                                         ; $5e55: $87
    ld b, h                                       ; $5e56: $44
    sub e                                         ; $5e57: $93
    ld b, h                                       ; $5e58: $44
    ret c                                         ; $5e59: $d8

    ld a, e                                       ; $5e5a: $7b
    call c, $da7b                                 ; $5e5b: $dc $7b $da
    ld a, e                                       ; $5e5e: $7b
    pop bc                                        ; $5e5f: $c1
    ld b, h                                       ; $5e60: $44
    dec sp                                        ; $5e61: $3b
    ld b, a                                       ; $5e62: $47
    ld e, l                                       ; $5e63: $5d
    ld a, e                                       ; $5e64: $7b
    ld c, c                                       ; $5e65: $49
    ld b, a                                       ; $5e66: $47
    ld hl, sp+$7b                                 ; $5e67: $f8 $7b

    db $1a, $0d, $1a, $1b, $15, $1d, $16, $14, $27, $28, $22, $2b, $3a, $4b, $4c, $2e
    db $52, $49, $4a, $1e, $58, $5d, $5e, $5f, $60, $68, $69, $11, $19, $0e, $24, $25
    db $26, $2c, $2d, $32, $33, $34, $35, $36, $37, $38, $39, $2f, $4d

    nop                                           ; $5e96: $00
    ld bc, $0302                                  ; $5e97: $01 $02 $03
    inc b                                         ; $5e9a: $04
    dec b                                         ; $5e9b: $05
    ld b, $07                                     ; $5e9c: $06 $07
    ld [$0a09], sp                                ; $5e9e: $08 $09 $0a
    dec bc                                        ; $5ea1: $0b
    inc c                                         ; $5ea2: $0c
    dec c                                         ; $5ea3: $0d

    db $0e, $0f

    db $10                                        ; $5ea6: $10
    ld de, $1312                                  ; $5ea7: $11 $12 $13
    inc d                                         ; $5eaa: $14

    db $15

    ld d, $17                                     ; $5eac: $16 $17
    jr jr_005_5ec9                                ; $5eae: $18 $19

    ld a, [de]                                    ; $5eb0: $1a
    dec de                                        ; $5eb1: $1b
    inc e                                         ; $5eb2: $1c
    dec e                                         ; $5eb3: $1d
    ld e, $1f                                     ; $5eb4: $1e $1f

    db $20

    ld hl, $2322                                  ; $5eb7: $21 $22 $23
    inc h                                         ; $5eba: $24
    dec h                                         ; $5ebb: $25
    ld h, $27                                     ; $5ebc: $26 $27
    jr z, jr_005_5ee9                             ; $5ebe: $28 $29

    ld a, [hl+]                                   ; $5ec0: $2a
    dec hl                                        ; $5ec1: $2b
    inc l                                         ; $5ec2: $2c
    dec l                                         ; $5ec3: $2d
    ld l, $2f                                     ; $5ec4: $2e $2f
    jr nc, jr_005_5ef9                            ; $5ec6: $30 $31

    ld [hl-], a                                   ; $5ec8: $32

jr_005_5ec9:
    inc sp                                        ; $5ec9: $33
    inc [hl]                                      ; $5eca: $34
    dec [hl]                                      ; $5ecb: $35
    ld [hl], $37                                  ; $5ecc: $36 $37
    jr c, jr_005_5f09                             ; $5ece: $38 $39

    ld a, [hl-]                                   ; $5ed0: $3a
    dec sp                                        ; $5ed1: $3b
    inc a                                         ; $5ed2: $3c
    dec a                                         ; $5ed3: $3d
    ld a, $3f                                     ; $5ed4: $3e $3f
    ld b, b                                       ; $5ed6: $40
    ld b, c                                       ; $5ed7: $41
    ld b, d                                       ; $5ed8: $42
    ld b, e                                       ; $5ed9: $43
    ld b, h                                       ; $5eda: $44
    ld b, l                                       ; $5edb: $45
    ld b, [hl]                                    ; $5edc: $46
    ld b, a                                       ; $5edd: $47
    ld c, b                                       ; $5ede: $48
    ld c, c                                       ; $5edf: $49
    ld c, d                                       ; $5ee0: $4a
    ld c, e                                       ; $5ee1: $4b
    ld c, h                                       ; $5ee2: $4c
    ld c, l                                       ; $5ee3: $4d
    ld c, [hl]                                    ; $5ee4: $4e
    ld c, a                                       ; $5ee5: $4f
    ld d, b                                       ; $5ee6: $50
    ld d, c                                       ; $5ee7: $51
    ld d, d                                       ; $5ee8: $52

jr_005_5ee9:
    ld d, e                                       ; $5ee9: $53
    ld d, h                                       ; $5eea: $54
    ld d, l                                       ; $5eeb: $55
    ld d, [hl]                                    ; $5eec: $56
    ld d, a                                       ; $5eed: $57
    ld e, b                                       ; $5eee: $58
    ld e, c                                       ; $5eef: $59
    ld h, b                                       ; $5ef0: $60
    ld h, c                                       ; $5ef1: $61
    ld h, d                                       ; $5ef2: $62
    nop                                           ; $5ef3: $00
    ld bc, $0302                                  ; $5ef4: $01 $02 $03
    inc b                                         ; $5ef7: $04
    dec b                                         ; $5ef8: $05

jr_005_5ef9:
    ld b, $07                                     ; $5ef9: $06 $07
    ld [$0a09], sp                                ; $5efb: $08 $09 $0a
    dec bc                                        ; $5efe: $0b
    inc c                                         ; $5eff: $0c
    dec c                                         ; $5f00: $0d
    ld c, $0f                                     ; $5f01: $0e $0f
    db $10                                        ; $5f03: $10
    ld de, $1312                                  ; $5f04: $11 $12 $13
    inc d                                         ; $5f07: $14
    dec d                                         ; $5f08: $15

jr_005_5f09:
    ld d, $17                                     ; $5f09: $16 $17
    jr @+$1b                                      ; $5f0b: $18 $19

    ld a, [de]                                    ; $5f0d: $1a
    dec de                                        ; $5f0e: $1b
    inc e                                         ; $5f0f: $1c
    dec e                                         ; $5f10: $1d
    ld e, $1f                                     ; $5f11: $1e $1f
    jr nz, jr_005_5f36                            ; $5f13: $20 $21

    ld [hl+], a                                   ; $5f15: $22
    inc hl                                        ; $5f16: $23
    inc h                                         ; $5f17: $24
    dec h                                         ; $5f18: $25
    ld h, $27                                     ; $5f19: $26 $27
    jr z, jr_005_5f46                             ; $5f1b: $28 $29

    ld a, [hl+]                                   ; $5f1d: $2a
    dec hl                                        ; $5f1e: $2b
    inc l                                         ; $5f1f: $2c
    dec l                                         ; $5f20: $2d
    ld l, $07                                     ; $5f21: $2e $07

    db $0c

    inc d                                         ; $5f24: $14
    ld e, $06                                     ; $5f25: $1e $06

    db $13

    ld a, [de]                                    ; $5f28: $1a
    dec h                                         ; $5f29: $25
    ld [bc], a                                    ; $5f2a: $02
    rrca                                          ; $5f2b: $0f
    add hl, de                                    ; $5f2c: $19
    jr nz, jr_005_5f4d                            ; $5f2d: $20 $1e

    inc d                                         ; $5f2f: $14
    inc c                                         ; $5f30: $0c
    rla                                           ; $5f31: $17
    inc b                                         ; $5f32: $04
    dec bc                                        ; $5f33: $0b
    dec d                                         ; $5f34: $15
    rra                                           ; $5f35: $1f

jr_005_5f36:
    inc hl                                        ; $5f36: $23
    rla                                           ; $5f37: $17
    jr nz, jr_005_5f4e                            ; $5f38: $20 $14

    ld a, [hl+]                                   ; $5f3a: $2a
    ld a, [hl+]                                   ; $5f3b: $2a
    ld a, [hl+]                                   ; $5f3c: $2a
    ld a, [hl+]                                   ; $5f3d: $2a
    ld a, [bc]                                    ; $5f3e: $0a
    rlca                                          ; $5f3f: $07
    rra                                           ; $5f40: $1f
    inc e                                         ; $5f41: $1c
    nop                                           ; $5f42: $00
    ld de, $231b                                  ; $5f43: $11 $1b $23

jr_005_5f46:
    inc l                                         ; $5f46: $2c
    inc l                                         ; $5f47: $2c
    inc l                                         ; $5f48: $2c
    inc l                                         ; $5f49: $2c
    inc c                                         ; $5f4a: $0c
    ld b, $05                                     ; $5f4b: $06 $05

jr_005_5f4d:
    add hl, de                                    ; $5f4d: $19

jr_005_5f4e:
    dec c                                         ; $5f4e: $0d
    dec b                                         ; $5f4f: $05
    inc bc                                        ; $5f50: $03
    ld c, $0e                                     ; $5f51: $0e $0e
    ld [bc], a                                    ; $5f53: $02
    db $10                                        ; $5f54: $10
    ld [de], a                                    ; $5f55: $12
    inc bc                                        ; $5f56: $03
    ld c, $1c                                     ; $5f57: $0e $1c
    ld h, $05                                     ; $5f59: $26 $05
    db $10                                        ; $5f5b: $10
    rla                                           ; $5f5c: $17
    inc h                                         ; $5f5d: $24
    ld l, $2e                                     ; $5f5e: $2e $2e
    ld l, $2e                                     ; $5f60: $2e $2e
    db $10                                        ; $5f62: $10
    ld [$0a25], sp                                ; $5f63: $08 $25 $0a
    ld [de], a                                    ; $5f66: $12
    inc bc                                        ; $5f67: $03
    ld h, $0b                                     ; $5f68: $26 $0b
    jr z, jr_005_5f94                             ; $5f6a: $28 $28

    jr z, jr_005_5f96                             ; $5f6c: $28 $28

    ld [$1d12], sp                                ; $5f6e: $08 $12 $1d
    ld hl, $3232                                  ; $5f71: $21 $32 $32
    ld [hl-], a                                   ; $5f74: $32
    ld [hl-], a                                   ; $5f75: $32
    ldh a, [$d8]                                  ; $5f76: $f0 $d8
    inc a                                         ; $5f78: $3c

Jump_005_5f79:
    ld [$cb1a], a                                 ; $5f79: $ea $1a $cb
    push hl                                       ; $5f7c: $e5
    ldh [$c1], a                                  ; $5f7d: $e0 $c1
    ld a, $1c                                     ; $5f7f: $3e $1c
    ldh [$bd], a                                  ; $5f81: $e0 $bd
    ld a, $35                                     ; $5f83: $3e $35
    ldh [$be], a                                  ; $5f85: $e0 $be
    call Call_000_3454                            ; $5f87: $cd $54 $34
    pop bc                                        ; $5f8a: $c1
    add hl, bc                                    ; $5f8b: $09
    ld de, $cb18                                  ; $5f8c: $11 $18 $cb
    ld a, l                                       ; $5f8f: $7d
    ld [de], a                                    ; $5f90: $12
    inc de                                        ; $5f91: $13
    ld a, h                                       ; $5f92: $7c
    ld [de], a                                    ; $5f93: $12

jr_005_5f94:
    ld a, $01                                     ; $5f94: $3e $01

jr_005_5f96:
    ld [$cb17], a                                 ; $5f96: $ea $17 $cb
    jr jr_005_5fe1                                ; $5f99: $18 $46

Jump_005_5f9b:
    ldh a, [$d8]                                  ; $5f9b: $f0 $d8
    inc a                                         ; $5f9d: $3c
    ld d, a                                       ; $5f9e: $57
    ld a, [$cb17]                                 ; $5f9f: $fa $17 $cb
    or a                                          ; $5fa2: $b7
    jr nz, jr_005_5fd8                            ; $5fa3: $20 $33

    ldh a, [rSVBK]                                ; $5fa5: $f0 $70
    push af                                       ; $5fa7: $f5
    ld a, $06                                     ; $5fa8: $3e $06
    ldh [rSVBK], a                                ; $5faa: $e0 $70
    ldh a, [$a5]                                  ; $5fac: $f0 $a5
    and $01                                       ; $5fae: $e6 $01
    ld [$d6ce], a                                 ; $5fb0: $ea $ce $d6
    pop af                                        ; $5fb3: $f1
    ldh [rSVBK], a                                ; $5fb4: $e0 $70
    ld a, d                                       ; $5fb6: $7a
    push bc                                       ; $5fb7: $c5
    ld [$cb1a], a                                 ; $5fb8: $ea $1a $cb
    ldh [$c1], a                                  ; $5fbb: $e0 $c1
    ld a, $02                                     ; $5fbd: $3e $02
    ldh [$bd], a                                  ; $5fbf: $e0 $bd
    ld a, $35                                     ; $5fc1: $3e $35
    ldh [$be], a                                  ; $5fc3: $e0 $be
    call Call_000_3454                            ; $5fc5: $cd $54 $34
    ld de, $cb18                                  ; $5fc8: $11 $18 $cb
    ld a, l                                       ; $5fcb: $7d
    ld [de], a                                    ; $5fcc: $12
    inc de                                        ; $5fcd: $13
    ld a, h                                       ; $5fce: $7c
    ld [de], a                                    ; $5fcf: $12
    ld a, $01                                     ; $5fd0: $3e $01
    ld [$cb17], a                                 ; $5fd2: $ea $17 $cb
    pop bc                                        ; $5fd5: $c1
    jr jr_005_5fe1                                ; $5fd6: $18 $09

jr_005_5fd8:
    ld hl, $caf4                                  ; $5fd8: $21 $f4 $ca
    xor a                                         ; $5fdb: $af
    ld [hl+], a                                   ; $5fdc: $22
    ld [hl+], a                                   ; $5fdd: $22
    ld [hl+], a                                   ; $5fde: $22
    ld [hl], a                                    ; $5fdf: $77
    ret                                           ; $5fe0: $c9


Jump_005_5fe1:
jr_005_5fe1:
    ld a, [$cb17]                                 ; $5fe1: $fa $17 $cb
    or a                                          ; $5fe4: $b7
    ret z                                         ; $5fe5: $c8

    ldh a, [$cf]                                  ; $5fe6: $f0 $cf
    cp $0f                                        ; $5fe8: $fe $0f
    jr nz, jr_005_5fee                            ; $5fea: $20 $02

    ld b, b                                       ; $5fec: $40
    ret z                                         ; $5fed: $c8

jr_005_5fee:
    ld a, [$cb17]                                 ; $5fee: $fa $17 $cb
    cp $01                                        ; $5ff1: $fe $01
    jr z, jr_005_6011                             ; $5ff3: $28 $1c

    cp $07                                        ; $5ff5: $fe $07
    ret nc                                        ; $5ff7: $d0

    cp $02                                        ; $5ff8: $fe $02
    jp z, Jump_005_627b                           ; $5ffa: $ca $7b $62

    cp $06                                        ; $5ffd: $fe $06
    jp z, Jump_005_7468                           ; $5fff: $ca $68 $74

    cp $03                                        ; $6002: $fe $03
    jp z, Jump_005_62ac                           ; $6004: $ca $ac $62

    cp $05                                        ; $6007: $fe $05
    jp z, Jump_005_6252                           ; $6009: $ca $52 $62

    cp $04                                        ; $600c: $fe $04
    jp z, Jump_005_6252                           ; $600e: $ca $52 $62

jr_005_6011:
    push bc                                       ; $6011: $c5
    ld a, [$cb1a]                                 ; $6012: $fa $1a $cb
    ld c, a                                       ; $6015: $4f
    call Call_000_3525                            ; $6016: $cd $25 $35
    pop bc                                        ; $6019: $c1
    or a                                          ; $601a: $b7
    jr z, jr_005_602c                             ; $601b: $28 $0f

    push bc                                       ; $601d: $c5
    ld hl, $5c9f                                  ; $601e: $21 $9f $5c
    dec a                                         ; $6021: $3d
    add a                                         ; $6022: $87
    ld c, a                                       ; $6023: $4f
    ld b, $00                                     ; $6024: $06 $00
    add hl, bc                                    ; $6026: $09
    pop bc                                        ; $6027: $c1
    ld a, [hl+]                                   ; $6028: $2a
    ld h, [hl]                                    ; $6029: $66
    ld l, a                                       ; $602a: $6f
    jp hl                                         ; $602b: $e9


jr_005_602c:
    xor a                                         ; $602c: $af
    ld [$cb17], a                                 ; $602d: $ea $17 $cb
    ld a, [$cb1d]                                 ; $6030: $fa $1d $cb
    or a                                          ; $6033: $b7
    jr nz, jr_005_603b                            ; $6034: $20 $05

    ld a, [$cb1e]                                 ; $6036: $fa $1e $cb
    or a                                          ; $6039: $b7
    ret z                                         ; $603a: $c8

jr_005_603b:
    ld a, [$cb1d]                                 ; $603b: $fa $1d $cb
    ld [$cb18], a                                 ; $603e: $ea $18 $cb
    ld a, [$cb1e]                                 ; $6041: $fa $1e $cb
    ld [$cb19], a                                 ; $6044: $ea $19 $cb
    ld a, [$cb1f]                                 ; $6047: $fa $1f $cb
    ld [$cb1a], a                                 ; $604a: $ea $1a $cb
    xor a                                         ; $604d: $af
    ld [$cb1d], a                                 ; $604e: $ea $1d $cb
    ld [$cb1e], a                                 ; $6051: $ea $1e $cb
    ld [$cb1f], a                                 ; $6054: $ea $1f $cb
    ld a, $01                                     ; $6057: $3e $01
    ld [$cb17], a                                 ; $6059: $ea $17 $cb
    ret                                           ; $605c: $c9


    jp Jump_005_73d9                              ; $605d: $c3 $d9 $73


    call Call_005_7401                            ; $6060: $cd $01 $74
    ld [$cb1a], a                                 ; $6063: $ea $1a $cb
    ld bc, $cb18                                  ; $6066: $01 $18 $cb
    ld a, l                                       ; $6069: $7d
    ld [bc], a                                    ; $606a: $02
    inc bc                                        ; $606b: $03
    ld a, h                                       ; $606c: $7c
    ld [bc], a                                    ; $606d: $02
    jp Jump_005_73d9                              ; $606e: $c3 $d9 $73


    ld bc, $cb18                                  ; $6071: $01 $18 $cb
    ld a, [bc]                                    ; $6074: $0a
    ld l, a                                       ; $6075: $6f
    inc bc                                        ; $6076: $03
    ld a, [bc]                                    ; $6077: $0a
    ld h, a                                       ; $6078: $67
    ld a, [$cb1a]                                 ; $6079: $fa $1a $cb
    call Call_005_73e1                            ; $607c: $cd $e1 $73

jr_005_607f:
    dec d                                         ; $607f: $15
    ld l, d                                       ; $6080: $6a
    ld h, $00                                     ; $6081: $26 $00
    bit 7, l                                      ; $6083: $cb $7d
    jr z, jr_005_6088                             ; $6085: $28 $01

    dec h                                         ; $6087: $25

jr_005_6088:
    ld e, l                                       ; $6088: $5d
    ld d, h                                       ; $6089: $54
    add hl, de                                    ; $608a: $19
    add hl, de                                    ; $608b: $19
    ld a, [$cb18]                                 ; $608c: $fa $18 $cb
    ld e, a                                       ; $608f: $5f
    ld a, [$cb19]                                 ; $6090: $fa $19 $cb
    ld d, a                                       ; $6093: $57
    add hl, de                                    ; $6094: $19
    ld a, l                                       ; $6095: $7d
    ld [$cb18], a                                 ; $6096: $ea $18 $cb
    ld a, h                                       ; $6099: $7c
    ld [$cb19], a                                 ; $609a: $ea $19 $cb
    jp Jump_005_73d9                              ; $609d: $c3 $d9 $73


    ld a, [$cb04]                                 ; $60a0: $fa $04 $cb
    bit 5, a                                      ; $60a3: $cb $6f
    jr nz, jr_005_607f                            ; $60a5: $20 $d8

    jp Jump_005_73d9                              ; $60a7: $c3 $d9 $73


    ld a, [$cb04]                                 ; $60aa: $fa $04 $cb
    bit 5, a                                      ; $60ad: $cb $6f
    jr z, jr_005_607f                             ; $60af: $28 $ce

    jp Jump_005_73d9                              ; $60b1: $c3 $d9 $73


    ld bc, $cb18                                  ; $60b4: $01 $18 $cb
    ld a, [bc]                                    ; $60b7: $0a
    ld l, a                                       ; $60b8: $6f
    inc bc                                        ; $60b9: $03
    ld a, [bc]                                    ; $60ba: $0a
    ld h, a                                       ; $60bb: $67
    ld a, [$cb1a]                                 ; $60bc: $fa $1a $cb
    call Call_005_73e1                            ; $60bf: $cd $e1 $73

    push de                                       ; $60c2: $d5
    pop hl                                        ; $60c3: $e1
    ld a, [$cb03]                                 ; $60c4: $fa $03 $cb
    jp Jump_005_5f79                              ; $60c7: $c3 $79 $5f


    ldh a, [rSVBK]                                ; $60ca: $f0 $70
    push af                                       ; $60cc: $f5
    ld a, $06                                     ; $60cd: $3e $06
    ldh [rSVBK], a                                ; $60cf: $e0 $70
    ld a, d                                       ; $60d1: $7a
    ld hl, $d5d5                                  ; $60d2: $21 $d5 $d5
    rst $08                                       ; $60d5: $cf
    ld d, a                                       ; $60d6: $57
    ld hl, $cb18                                  ; $60d7: $21 $18 $cb
    ld a, [hl+]                                   ; $60da: $2a
    ld h, [hl]                                    ; $60db: $66
    ld l, a                                       ; $60dc: $6f
    ld a, d                                       ; $60dd: $7a
    call Call_000_3171                            ; $60de: $cd $71 $31
    pop af                                        ; $60e1: $f1
    ldh [rSVBK], a                                ; $60e2: $e0 $70
    ld a, l                                       ; $60e4: $7d
    ld [$cb18], a                                 ; $60e5: $ea $18 $cb
    ld a, h                                       ; $60e8: $7c
    ld [$cb19], a                                 ; $60e9: $ea $19 $cb
    jp Jump_005_5fe1                              ; $60ec: $c3 $e1 $5f


    ldh a, [rSVBK]                                ; $60ef: $f0 $70
    push af                                       ; $60f1: $f5
    ld a, $06                                     ; $60f2: $3e $06
    ldh [rSVBK], a                                ; $60f4: $e0 $70
    ld hl, $d5d5                                  ; $60f6: $21 $d5 $d5
    ld c, d                                       ; $60f9: $4a
    ld b, $00                                     ; $60fa: $06 $00
    add hl, bc                                    ; $60fc: $09
    ld a, [hl]                                    ; $60fd: $7e
    ld hl, $cb04                                  ; $60fe: $21 $04 $cb
    cp e                                          ; $6101: $bb
    jr z, jr_005_6138                             ; $6102: $28 $34

    jr jr_005_613c                                ; $6104: $18 $36

    ldh a, [rSVBK]                                ; $6106: $f0 $70
    push af                                       ; $6108: $f5
    ld a, $06                                     ; $6109: $3e $06
    ldh [rSVBK], a                                ; $610b: $e0 $70
    ld hl, $d5d5                                  ; $610d: $21 $d5 $d5
    ld c, d                                       ; $6110: $4a
    ld b, $00                                     ; $6111: $06 $00
    add hl, bc                                    ; $6113: $09
    ld a, [hl]                                    ; $6114: $7e
    ld hl, $cb04                                  ; $6115: $21 $04 $cb
    ld d, a                                       ; $6118: $57
    ld a, e                                       ; $6119: $7b
    cp d                                          ; $611a: $ba
    jr c, jr_005_6138                             ; $611b: $38 $1b

    jr jr_005_613c                                ; $611d: $18 $1d

    ldh a, [rSVBK]                                ; $611f: $f0 $70
    push af                                       ; $6121: $f5
    ld a, $06                                     ; $6122: $3e $06
    ldh [rSVBK], a                                ; $6124: $e0 $70
    ld hl, $d5d5                                  ; $6126: $21 $d5 $d5
    ld c, d                                       ; $6129: $4a
    ld b, $00                                     ; $612a: $06 $00
    add hl, bc                                    ; $612c: $09
    ld a, [hl]                                    ; $612d: $7e
    ld d, a                                       ; $612e: $57
    ld hl, $cb04                                  ; $612f: $21 $04 $cb
    ld a, e                                       ; $6132: $7b
    cp d                                          ; $6133: $ba
    jr c, jr_005_613c                             ; $6134: $38 $06

    jr z, jr_005_613c                             ; $6136: $28 $04

jr_005_6138:
    set 5, [hl]                                   ; $6138: $cb $ee
    jr jr_005_613e                                ; $613a: $18 $02

jr_005_613c:
    res 5, [hl]                                   ; $613c: $cb $ae

jr_005_613e:
    pop af                                        ; $613e: $f1
    ldh [rSVBK], a                                ; $613f: $e0 $70
    jp Jump_005_73d9                              ; $6141: $c3 $d9 $73


    ldh a, [rSVBK]                                ; $6144: $f0 $70
    push af                                       ; $6146: $f5
    ld a, $06                                     ; $6147: $3e $06
    ldh [rSVBK], a                                ; $6149: $e0 $70
    ld hl, $d5d5                                  ; $614b: $21 $d5 $d5
    ld c, d                                       ; $614e: $4a
    ld b, $00                                     ; $614f: $06 $00
    add hl, bc                                    ; $6151: $09
    ld a, [hl]                                    ; $6152: $7e
    ld d, a                                       ; $6153: $57
    ld hl, $d5d5                                  ; $6154: $21 $d5 $d5
    ld c, e                                       ; $6157: $4b
    ld b, $00                                     ; $6158: $06 $00
    add hl, bc                                    ; $615a: $09
    ld a, [hl]                                    ; $615b: $7e
    ld hl, $cb04                                  ; $615c: $21 $04 $cb
    cp d                                          ; $615f: $ba
    jr z, jr_005_6138                             ; $6160: $28 $d6

    jr jr_005_613c                                ; $6162: $18 $d8

    ldh a, [rSVBK]                                ; $6164: $f0 $70
    push af                                       ; $6166: $f5
    ld a, $06                                     ; $6167: $3e $06
    ldh [rSVBK], a                                ; $6169: $e0 $70
    ld hl, $d5d5                                  ; $616b: $21 $d5 $d5
    ld c, d                                       ; $616e: $4a
    ld b, $00                                     ; $616f: $06 $00
    add hl, bc                                    ; $6171: $09
    ld a, [hl]                                    ; $6172: $7e
    ld d, a                                       ; $6173: $57
    ld hl, $d5d5                                  ; $6174: $21 $d5 $d5
    ld c, e                                       ; $6177: $4b
    ld b, $00                                     ; $6178: $06 $00
    add hl, bc                                    ; $617a: $09
    ld a, [hl]                                    ; $617b: $7e
    ld hl, $cb04                                  ; $617c: $21 $04 $cb
    cp d                                          ; $617f: $ba
    jr c, jr_005_6138                             ; $6180: $38 $b6

    jr jr_005_613c                                ; $6182: $18 $b8

    ldh a, [rSVBK]                                ; $6184: $f0 $70
    push af                                       ; $6186: $f5
    ld a, $06                                     ; $6187: $3e $06
    ldh [rSVBK], a                                ; $6189: $e0 $70
    ld hl, $d5d5                                  ; $618b: $21 $d5 $d5
    ld c, d                                       ; $618e: $4a
    ld b, $00                                     ; $618f: $06 $00
    add hl, bc                                    ; $6191: $09
    ld a, [hl]                                    ; $6192: $7e
    ld d, a                                       ; $6193: $57
    ld hl, $d5d5                                  ; $6194: $21 $d5 $d5
    ld c, e                                       ; $6197: $4b
    ld b, $00                                     ; $6198: $06 $00
    add hl, bc                                    ; $619a: $09
    ld a, [hl]                                    ; $619b: $7e
    ld hl, $cb04                                  ; $619c: $21 $04 $cb
    cp d                                          ; $619f: $ba
    jr c, jr_005_613c                             ; $61a0: $38 $9a

    jr jr_005_6138                                ; $61a2: $18 $94

    ldh a, [rSVBK]                                ; $61a4: $f0 $70
    push af                                       ; $61a6: $f5
    ld a, $06                                     ; $61a7: $3e $06
    ldh [rSVBK], a                                ; $61a9: $e0 $70
    ld hl, $d5d5                                  ; $61ab: $21 $d5 $d5
    ld c, d                                       ; $61ae: $4a
    ld b, $00                                     ; $61af: $06 $00
    add hl, bc                                    ; $61b1: $09
    ld a, e                                       ; $61b2: $7b
    ld [hl], a                                    ; $61b3: $77
    pop af                                        ; $61b4: $f1
    ldh [rSVBK], a                                ; $61b5: $e0 $70
    ld a, d                                       ; $61b7: $7a
    cp $ff                                        ; $61b8: $fe $ff
    jp nz, Jump_005_73d9                          ; $61ba: $c2 $d9 $73

    ld bc, $c320                                  ; $61bd: $01 $20 $c3
    ldh [$c1], a                                  ; $61c0: $e0 $c1
    ld a, $5a                                     ; $61c2: $3e $5a
    ldh [$bd], a                                  ; $61c4: $e0 $bd
    ld a, $7c                                     ; $61c6: $3e $7c
    ldh [$be], a                                  ; $61c8: $e0 $be
    call Call_000_3433                            ; $61ca: $cd $33 $34
    jp Jump_005_73d9                              ; $61cd: $c3 $d9 $73


    ldh a, [rSVBK]                                ; $61d0: $f0 $70
    push af                                       ; $61d2: $f5
    ld a, $06                                     ; $61d3: $3e $06
    ldh [rSVBK], a                                ; $61d5: $e0 $70
    ld hl, $d5d5                                  ; $61d7: $21 $d5 $d5
    ld c, d                                       ; $61da: $4a
    ld b, $00                                     ; $61db: $06 $00
    add hl, bc                                    ; $61dd: $09
    ld c, l                                       ; $61de: $4d
    ld b, h                                       ; $61df: $44
    ld hl, $d5d5                                  ; $61e0: $21 $d5 $d5
    ld d, $00                                     ; $61e3: $16 $00
    add hl, de                                    ; $61e5: $19
    ld a, [hl]                                    ; $61e6: $7e
    ld [bc], a                                    ; $61e7: $02
    pop af                                        ; $61e8: $f1
    ldh [rSVBK], a                                ; $61e9: $e0 $70
    jp Jump_005_73d9                              ; $61eb: $c3 $d9 $73


    ldh a, [rSVBK]                                ; $61ee: $f0 $70
    push af                                       ; $61f0: $f5
    ld a, $06                                     ; $61f1: $3e $06
    ldh [rSVBK], a                                ; $61f3: $e0 $70
    ld hl, $d5d5                                  ; $61f5: $21 $d5 $d5
    ld a, [hl]                                    ; $61f8: $7e
    cp d                                          ; $61f9: $ba
    ret z                                         ; $61fa: $c8

    ld [hl], d                                    ; $61fb: $72
    ld hl, $d5d6                                  ; $61fc: $21 $d6 $d5
    ld bc, $0020                                  ; $61ff: $01 $20 $00
    call Call_000_112e                            ; $6202: $cd $2e $11
    pop af                                        ; $6205: $f1
    ldh [rSVBK], a                                ; $6206: $e0 $70
    jp Jump_005_73d9                              ; $6208: $c3 $d9 $73


    ldh a, [rSVBK]                                ; $620b: $f0 $70
    push af                                       ; $620d: $f5
    ld a, $06                                     ; $620e: $3e $06
    ldh [rSVBK], a                                ; $6210: $e0 $70
    ld hl, $d5d5                                  ; $6212: $21 $d5 $d5
    ld c, d                                       ; $6215: $4a
    ld b, $00                                     ; $6216: $06 $00
    add hl, bc                                    ; $6218: $09
    ld a, [hl]                                    ; $6219: $7e
    add e                                         ; $621a: $83
    ld [hl], a                                    ; $621b: $77
    pop af                                        ; $621c: $f1
    ldh [rSVBK], a                                ; $621d: $e0 $70
    jp Jump_005_73d9                              ; $621f: $c3 $d9 $73


    ldh a, [rSVBK]                                ; $6222: $f0 $70
    push af                                       ; $6224: $f5
    ld a, $06                                     ; $6225: $3e $06
    ldh [rSVBK], a                                ; $6227: $e0 $70
    ld hl, $d5d5                                  ; $6229: $21 $d5 $d5
    ld c, d                                       ; $622c: $4a
    ld b, $00                                     ; $622d: $06 $00
    add hl, bc                                    ; $622f: $09
    ld a, [hl]                                    ; $6230: $7e
    sub e                                         ; $6231: $93
    ld [hl], a                                    ; $6232: $77
    pop af                                        ; $6233: $f1
    ldh [rSVBK], a                                ; $6234: $e0 $70
    jp Jump_005_73d9                              ; $6236: $c3 $d9 $73


    ld hl, $caff                                  ; $6239: $21 $ff $ca
    ld [hl], e                                    ; $623c: $73
    inc hl                                        ; $623d: $23
    ld [hl], d                                    ; $623e: $72
    jp Jump_005_5fe1                              ; $623f: $c3 $e1 $5f


    ld hl, $cb01                                  ; $6242: $21 $01 $cb
    ld [hl], e                                    ; $6245: $73
    inc hl                                        ; $6246: $23
    ld [hl], d                                    ; $6247: $72
    jp Jump_005_5fe1                              ; $6248: $c3 $e1 $5f


    ld a, d                                       ; $624b: $7a
    ld [$cb03], a                                 ; $624c: $ea $03 $cb
    jp Jump_005_5fe1                              ; $624f: $c3 $e1 $5f


Jump_005_6252:
    ld a, [$cb17]                                 ; $6252: $fa $17 $cb
    cp $05                                        ; $6255: $fe $05
    jr z, jr_005_6270                             ; $6257: $28 $17

    cp $04                                        ; $6259: $fe $04
    jr z, jr_005_6263                             ; $625b: $28 $06

    ld a, $05                                     ; $625d: $3e $05
    ld [$cb17], a                                 ; $625f: $ea $17 $cb
    ret                                           ; $6262: $c9


jr_005_6263:
    ldh a, [$a5]                                  ; $6263: $f0 $a5
    and $01                                       ; $6265: $e6 $01
    ret nz                                        ; $6267: $c0

    ld a, $01                                     ; $6268: $3e $01
    ld [$cb17], a                                 ; $626a: $ea $17 $cb
    jp Jump_005_73d9                              ; $626d: $c3 $d9 $73


jr_005_6270:
    ldh a, [$a5]                                  ; $6270: $f0 $a5
    and $01                                       ; $6272: $e6 $01
    ret z                                         ; $6274: $c8

    ld a, $04                                     ; $6275: $3e $04
    ld [$cb17], a                                 ; $6277: $ea $17 $cb
    ret                                           ; $627a: $c9


Jump_005_627b:
    ld a, [$cb17]                                 ; $627b: $fa $17 $cb
    cp $02                                        ; $627e: $fe $02
    jr z, jr_005_6290                             ; $6280: $28 $0e

    ld a, $02                                     ; $6282: $3e $02
    ld [$cb17], a                                 ; $6284: $ea $17 $cb
    ld a, d                                       ; $6287: $7a
    ld [$cb1b], a                                 ; $6288: $ea $1b $cb
    ld a, e                                       ; $628b: $7b
    ld [$cb1c], a                                 ; $628c: $ea $1c $cb
    ret                                           ; $628f: $c9


jr_005_6290:
    ld hl, $cb1b                                  ; $6290: $21 $1b $cb
    ld a, [hl+]                                   ; $6293: $2a
    ld e, [hl]                                    ; $6294: $5e
    ld d, a                                       ; $6295: $57
    dec de                                        ; $6296: $1b
    ld a, e                                       ; $6297: $7b
    or d                                          ; $6298: $b2
    jr nz, jr_005_62a3                            ; $6299: $20 $08

    ld a, $01                                     ; $629b: $3e $01
    ld [$cb17], a                                 ; $629d: $ea $17 $cb
    jp Jump_005_73d9                              ; $62a0: $c3 $d9 $73


jr_005_62a3:
    ld a, d                                       ; $62a3: $7a
    ld [$cb1b], a                                 ; $62a4: $ea $1b $cb
    ld a, e                                       ; $62a7: $7b
    ld [$cb1c], a                                 ; $62a8: $ea $1c $cb
    ret                                           ; $62ab: $c9


Jump_005_62ac:
    ld a, [$cb17]                                 ; $62ac: $fa $17 $cb
    cp $03                                        ; $62af: $fe $03
    jr z, jr_005_62bb                             ; $62b1: $28 $08

    ld a, $03                                     ; $62b3: $3e $03
    ld [$cb17], a                                 ; $62b5: $ea $17 $cb
    jp Jump_005_73d9                              ; $62b8: $c3 $d9 $73


jr_005_62bb:
    call Call_005_73d0                            ; $62bb: $cd $d0 $73
    call Call_000_2e8a                            ; $62be: $cd $8a $2e
    inc a                                         ; $62c1: $3c
    ret nz                                        ; $62c2: $c0

    ld [hl], a                                    ; $62c3: $77
    ld a, $01                                     ; $62c4: $3e $01
    ld [$cb17], a                                 ; $62c6: $ea $17 $cb
    jp Jump_005_73d9                              ; $62c9: $c3 $d9 $73


    ld hl, $5e96                                  ; $62cc: $21 $96 $5e
    ld a, d                                       ; $62cf: $7a
    rst $08                                       ; $62d0: $cf
    call Call_000_393e                            ; $62d1: $cd $3e $39
    jp Jump_005_73d9                              ; $62d4: $c3 $d9 $73


    ld hl, $5ef3                                  ; $62d7: $21 $f3 $5e
    ld a, d                                       ; $62da: $7a
    rst $08                                       ; $62db: $cf
    call Call_000_395e                            ; $62dc: $cd $5e $39
    jp Jump_005_73d9                              ; $62df: $c3 $d9 $73


    call Call_000_398b                            ; $62e2: $cd $8b $39
    jp Jump_005_73d9                              ; $62e5: $c3 $d9 $73


    ld a, d                                       ; $62e8: $7a
    ld hl, $4339                                  ; $62e9: $21 $39 $43
    call Call_000_3a2b                            ; $62ec: $cd $2b $3a
    jp Jump_005_73d9                              ; $62ef: $c3 $d9 $73


Call_005_62f2:
    push de                                       ; $62f2: $d5
    ld hl, $c320                                  ; $62f3: $21 $20 $c3
    ld a, d                                       ; $62f6: $7a
    or a                                          ; $62f7: $b7
    jr z, jr_005_631f                             ; $62f8: $28 $25

    ld a, [$cb03]                                 ; $62fa: $fa $03 $cb
    and $1f                                       ; $62fd: $e6 $1f
    cp $1e                                        ; $62ff: $fe $1e
    jp z, Jump_005_6317                           ; $6301: $ca $17 $63

    ld c, $51                                     ; $6304: $0e $51
    ld b, $00                                     ; $6306: $06 $00
    ld e, $14                                     ; $6308: $1e $14

jr_005_630a:
    ld a, [hl]                                    ; $630a: $7e
    cp d                                          ; $630b: $ba
    jr z, jr_005_631f                             ; $630c: $28 $11

    add hl, bc                                    ; $630e: $09
    dec e                                         ; $630f: $1d
    jr jr_005_630a                                ; $6310: $18 $f8

    ld hl, $c320                                  ; $6312: $21 $20 $c3
    jr jr_005_631f                                ; $6315: $18 $08

Jump_005_6317:
    ld c, $51                                     ; $6317: $0e $51
    ld b, $00                                     ; $6319: $06 $00

jr_005_631b:
    add hl, bc                                    ; $631b: $09
    dec d                                         ; $631c: $15
    jr nz, jr_005_631b                            ; $631d: $20 $fc

jr_005_631f:
    pop de                                        ; $631f: $d1
    ld a, l                                       ; $6320: $7d
    ld [$cb05], a                                 ; $6321: $ea $05 $cb
    ld a, h                                       ; $6324: $7c
    ld [$cb06], a                                 ; $6325: $ea $06 $cb
    ld b, h                                       ; $6328: $44
    ld c, l                                       ; $6329: $4d
    ld a, e                                       ; $632a: $7b
    cp $ff                                        ; $632b: $fe $ff
    ret z                                         ; $632d: $c8

    jp Jump_005_73d9                              ; $632e: $c3 $d9 $73


    call Call_005_73d0                            ; $6331: $cd $d0 $73
    ld a, d                                       ; $6334: $7a
    call Call_000_08ec                            ; $6335: $cd $ec $08
    jp Jump_005_73d9                              ; $6338: $c3 $d9 $73


    ld a, d                                       ; $633b: $7a
    call Call_000_0a6f                            ; $633c: $cd $6f $0a
    ld a, l                                       ; $633f: $7d
    ld [$cb05], a                                 ; $6340: $ea $05 $cb
    ld a, h                                       ; $6343: $7c
    ld [$cb06], a                                 ; $6344: $ea $06 $cb
    ld b, h                                       ; $6347: $44
    ld c, l                                       ; $6348: $4d
    jp Jump_005_73d9                              ; $6349: $c3 $d9 $73


    ld a, d                                       ; $634c: $7a
    or a                                          ; $634d: $b7
    jr nz, jr_005_6355                            ; $634e: $20 $05

    ld bc, $c320                                  ; $6350: $01 $20 $c3
    jr jr_005_635a                                ; $6353: $18 $05

jr_005_6355:
    call Call_000_0a6f                            ; $6355: $cd $6f $0a
    ld b, h                                       ; $6358: $44
    ld c, l                                       ; $6359: $4d

jr_005_635a:
    ld hl, $000d                                  ; $635a: $21 $0d $00
    add hl, bc                                    ; $635d: $09
    ld a, [hl+]                                   ; $635e: $2a
    ld h, [hl]                                    ; $635f: $66
    ld l, a                                       ; $6360: $6f
    ld a, l                                       ; $6361: $7d
    ld [$caff], a                                 ; $6362: $ea $ff $ca
    ld a, h                                       ; $6365: $7c
    ld [$cb00], a                                 ; $6366: $ea $00 $cb
    ld hl, $000b                                  ; $6369: $21 $0b $00
    add hl, bc                                    ; $636c: $09
    ld e, [hl]                                    ; $636d: $5e
    inc hl                                        ; $636e: $23
    ld d, [hl]                                    ; $636f: $56

    push de                                       ; $6370: $d5
    call Call_005_73d0                            ; $6371: $cd $d0 $73
    ld hl, $0045                                  ; $6374: $21 $45 $00
    add hl, bc                                    ; $6377: $09
    ld a, $80                                     ; $6378: $3e $80
    ld [hl+], a                                   ; $637a: $22
    ld [hl], $01                                  ; $637b: $36 $01
    jr jr_005_63b0                                ; $637d: $18 $31

    ld a, d                                       ; $637f: $7a
    or a                                          ; $6380: $b7
    jr nz, jr_005_6388                            ; $6381: $20 $05

    ld bc, $c320                                  ; $6383: $01 $20 $c3
    jr jr_005_638d                                ; $6386: $18 $05

jr_005_6388:
    call Call_000_0a6f                            ; $6388: $cd $6f $0a
    ld b, h                                       ; $638b: $44
    ld c, l                                       ; $638c: $4d

jr_005_638d:
    ld hl, $000d                                  ; $638d: $21 $0d $00
    add hl, bc                                    ; $6390: $09
    ld a, [hl+]                                   ; $6391: $2a
    ld h, [hl]                                    ; $6392: $66
    ld l, a                                       ; $6393: $6f
    ld a, l                                       ; $6394: $7d
    ld [$caff], a                                 ; $6395: $ea $ff $ca
    ld a, h                                       ; $6398: $7c
    ld [$cb00], a                                 ; $6399: $ea $00 $cb
    ld hl, $000b                                  ; $639c: $21 $0b $00
    add hl, bc                                    ; $639f: $09
    ld e, [hl]                                    ; $63a0: $5e
    inc hl                                        ; $63a1: $23
    ld d, [hl]                                    ; $63a2: $56
    push de                                       ; $63a3: $d5
    call Call_005_73d0                            ; $63a4: $cd $d0 $73
    ld hl, $0045                                  ; $63a7: $21 $45 $00
    add hl, bc                                    ; $63aa: $09
    ld a, $00                                     ; $63ab: $3e $00
    ld [hl+], a                                   ; $63ad: $22
    ld [hl], $04                                  ; $63ae: $36 $04

Jump_005_63b0:
jr_005_63b0:
    ld hl, $caff                                  ; $63b0: $21 $ff $ca
    ld a, [hl+]                                   ; $63b3: $2a
    ld h, [hl]                                    ; $63b4: $66
    ld l, a                                       ; $63b5: $6f
    ldh [$c1], a                                  ; $63b6: $e0 $c1
    ld a, $ce                                     ; $63b8: $3e $ce
    ldh [$bd], a                                  ; $63ba: $e0 $bd
    ld a, $6f                                     ; $63bc: $3e $6f
    ldh [$be], a                                  ; $63be: $e0 $be
    call Call_000_343a                            ; $63c0: $cd $3a $34
    ld hl, $0045                                  ; $63c3: $21 $45 $00
    add hl, bc                                    ; $63c6: $09
    ld e, [hl]                                    ; $63c7: $5e
    inc hl                                        ; $63c8: $23
    ld d, [hl]                                    ; $63c9: $56
    pop hl                                        ; $63ca: $e1
    push de                                       ; $63cb: $d5
    push hl                                       ; $63cc: $e5
    ld hl, $caff                                  ; $63cd: $21 $ff $ca
    ld e, [hl]                                    ; $63d0: $5e
    inc hl                                        ; $63d1: $23
    ld d, [hl]                                    ; $63d2: $56
    pop hl                                        ; $63d3: $e1
    call Call_000_0a29                            ; $63d4: $cd $29 $0a
    xor $04                                       ; $63d7: $ee $04
    call Call_000_2e9e                            ; $63d9: $cd $9e $2e
    cp $05                                        ; $63dc: $fe $05
    jr c, jr_005_63e7                             ; $63de: $38 $07

    ld a, $20                                     ; $63e0: $3e $20
    call Call_000_08ce                            ; $63e2: $cd $ce $08
    jr jr_005_63eb                                ; $63e5: $18 $04

jr_005_63e7:
    xor a                                         ; $63e7: $af
    call Call_000_08ce                            ; $63e8: $cd $ce $08

jr_005_63eb:
    call Call_005_741a                            ; $63eb: $cd $1a $74
    or a                                          ; $63ee: $b7
    jr z, jr_005_6408                             ; $63ef: $28 $17

    cp $01                                        ; $63f1: $fe $01
    jr z, jr_005_6417                             ; $63f3: $28 $22

    cp $02                                        ; $63f5: $fe $02
    jr z, jr_005_6426                             ; $63f7: $28 $2d

    ldh [$c1], a                                  ; $63f9: $e0 $c1
    ld a, $0b                                     ; $63fb: $3e $0b
    ldh [$bd], a                                  ; $63fd: $e0 $bd
    ld a, $6a                                     ; $63ff: $3e $6a
    ldh [$be], a                                  ; $6401: $e0 $be
    call Call_000_3448                            ; $6403: $cd $48 $34
    jr jr_005_6433                                ; $6406: $18 $2b

jr_005_6408:
    ldh [$c1], a                                  ; $6408: $e0 $c1
    ld a, $29                                     ; $640a: $3e $29
    ldh [$bd], a                                  ; $640c: $e0 $bd
    ld a, $6a                                     ; $640e: $3e $6a
    ldh [$be], a                                  ; $6410: $e0 $be
    call Call_000_3448                            ; $6412: $cd $48 $34
    jr jr_005_6433                                ; $6415: $18 $1c

jr_005_6417:
    ldh [$c1], a                                  ; $6417: $e0 $c1
    ld a, $65                                     ; $6419: $3e $65
    ldh [$bd], a                                  ; $641b: $e0 $bd
    ld a, $6a                                     ; $641d: $3e $6a
    ldh [$be], a                                  ; $641f: $e0 $be
    call Call_000_3448                            ; $6421: $cd $48 $34
    jr jr_005_6433                                ; $6424: $18 $0d

jr_005_6426:
    ldh [$c1], a                                  ; $6426: $e0 $c1
    ld a, $50                                     ; $6428: $3e $50
    ldh [$bd], a                                  ; $642a: $e0 $bd
    ld a, $6a                                     ; $642c: $3e $6a
    ldh [$be], a                                  ; $642e: $e0 $be
    call Call_000_3448                            ; $6430: $cd $48 $34

jr_005_6433:
    pop de                                        ; $6433: $d1
    jp Jump_005_7468                              ; $6434: $c3 $68 $74


    ld h, $01                                     ; $6437: $26 $01
    jr jr_005_643d                                ; $6439: $18 $02

    ld h, $00                                     ; $643b: $26 $00

jr_005_643d:
    push hl                                       ; $643d: $e5
    call Call_005_73d0                            ; $643e: $cd $d0 $73
    push de                                       ; $6441: $d5
    push hl                                       ; $6442: $e5
    call Call_005_741a                            ; $6443: $cd $1a $74
    or a                                          ; $6446: $b7
    jr z, jr_005_646f                             ; $6447: $28 $26

    cp $01                                        ; $6449: $fe $01
    jr z, jr_005_645b                             ; $644b: $28 $0e

    cp $02                                        ; $644d: $fe $02
    jr z, jr_005_6465                             ; $644f: $28 $14

    pop hl                                        ; $6451: $e1
    ld de, $7656                                  ; $6452: $11 $56 $76
    call Call_000_0a5b                            ; $6455: $cd $5b $0a
    pop de                                        ; $6458: $d1
    jr jr_005_64b2                                ; $6459: $18 $57

jr_005_645b:
    pop hl                                        ; $645b: $e1
    ld de, $766b                                  ; $645c: $11 $6b $76
    call Call_000_0a5b                            ; $645f: $cd $5b $0a
    pop de                                        ; $6462: $d1
    jr jr_005_64b2                                ; $6463: $18 $4d

jr_005_6465:
    pop hl                                        ; $6465: $e1
    ld de, $7664                                  ; $6466: $11 $64 $76
    call Call_000_0a5b                            ; $6469: $cd $5b $0a
    pop de                                        ; $646c: $d1
    jr jr_005_64b2                                ; $646d: $18 $43

jr_005_646f:
    ldh a, [rSVBK]                                ; $646f: $f0 $70
    push af                                       ; $6471: $f5
    ld a, $06                                     ; $6472: $3e $06
    ldh [rSVBK], a                                ; $6474: $e0 $70
    ld a, [$d6d4]                                 ; $6476: $fa $d4 $d6
    cp $02                                        ; $6479: $fe $02
    jr z, jr_005_648b                             ; $647b: $28 $0e

    cp $04                                        ; $647d: $fe $04
    jr z, jr_005_648b                             ; $647f: $28 $0a

    cp $06                                        ; $6481: $fe $06
    jr z, jr_005_648b                             ; $6483: $28 $06

    cp $08                                        ; $6485: $fe $08
    jr z, jr_005_648b                             ; $6487: $28 $02

    jr jr_005_6493                                ; $6489: $18 $08

jr_005_648b:
    ld hl, $002b                                  ; $648b: $21 $2b $00
    add hl, bc                                    ; $648e: $09
    res 3, [hl]                                   ; $648f: $cb $9e
    jr jr_005_64a3                                ; $6491: $18 $10

jr_005_6493:
    ld hl, $002b                                  ; $6493: $21 $2b $00
    add hl, bc                                    ; $6496: $09
    set 3, [hl]                                   ; $6497: $cb $de
    or a                                          ; $6499: $b7
    jr nz, jr_005_64a3                            ; $649a: $20 $07

    ld a, $01                                     ; $649c: $3e $01
    ld hl, $004d                                  ; $649e: $21 $4d $00
    add hl, bc                                    ; $64a1: $09
    ld [hl], a                                    ; $64a2: $77

jr_005_64a3:
    pop af                                        ; $64a3: $f1
    ldh [rSVBK], a                                ; $64a4: $e0 $70
    pop hl                                        ; $64a6: $e1
    ld de, $765d                                  ; $64a7: $11 $5d $76
    call Call_000_0a5b                            ; $64aa: $cd $5b $0a
    pop de                                        ; $64ad: $d1
    ld a, d                                       ; $64ae: $7a
    ld [$cae2], a                                 ; $64af: $ea $e2 $ca

jr_005_64b2:
    ld a, [$cb03]                                 ; $64b2: $fa $03 $cb
    and $0f                                       ; $64b5: $e6 $0f
    call Call_000_2e9e                            ; $64b7: $cd $9e $2e
    call Call_000_2ea4                            ; $64ba: $cd $a4 $2e
    pop hl                                        ; $64bd: $e1
    ld a, h                                       ; $64be: $7c
    or a                                          ; $64bf: $b7
    jr nz, jr_005_64cc                            ; $64c0: $20 $0a

    ld a, [$cb04]                                 ; $64c2: $fa $04 $cb
    and $40                                       ; $64c5: $e6 $40
    or a                                          ; $64c7: $b7
    ret nz                                        ; $64c8: $c0

    jp Jump_005_62ac                              ; $64c9: $c3 $ac $62


jr_005_64cc:
    ld a, [bc]                                    ; $64cc: $0a
    cp $01                                        ; $64cd: $fe $01
    jr z, jr_005_64ed                             ; $64cf: $28 $1c

    ld hl, $002b                                  ; $64d1: $21 $2b $00
    add hl, bc                                    ; $64d4: $09
    bit 3, [hl]                                   ; $64d5: $cb $5e
    jr nz, jr_005_64e3                            ; $64d7: $20 $0a

    push de                                       ; $64d9: $d5
    ld de, $770d                                  ; $64da: $11 $0d $77
    call Call_000_0a5b                            ; $64dd: $cd $5b $0a
    pop de                                        ; $64e0: $d1
    jr jr_005_64f5                                ; $64e1: $18 $12

jr_005_64e3:
    push de                                       ; $64e3: $d5
    ld de, $7682                                  ; $64e4: $11 $82 $76
    call Call_000_0a5b                            ; $64e7: $cd $5b $0a
    pop de                                        ; $64ea: $d1
    jr jr_005_64f5                                ; $64eb: $18 $08

jr_005_64ed:
    push de                                       ; $64ed: $d5
    ld de, $7798                                  ; $64ee: $11 $98 $77
    call Call_000_0a5b                            ; $64f1: $cd $5b $0a
    pop de                                        ; $64f4: $d1

jr_005_64f5:
    call Call_000_2ea4                            ; $64f5: $cd $a4 $2e
    ld a, [$cb04]                                 ; $64f8: $fa $04 $cb
    and $40                                       ; $64fb: $e6 $40
    or a                                          ; $64fd: $b7
    jp z, Jump_005_62ac                           ; $64fe: $ca $ac $62

    jp Jump_005_73d9                              ; $6501: $c3 $d9 $73


    call Call_005_73d0                            ; $6504: $cd $d0 $73
    call Call_000_2ea4                            ; $6507: $cd $a4 $2e
    ld hl, $caff                                  ; $650a: $21 $ff $ca
    ld e, [hl]                                    ; $650d: $5e
    inc hl                                        ; $650e: $23
    ld d, [hl]                                    ; $650f: $56
    ld a, d                                       ; $6510: $7a
    call Call_000_2e9e                            ; $6511: $cd $9e $2e
    ld a, e                                       ; $6514: $7b
    or a                                          ; $6515: $b7
    jr z, jr_005_6521                             ; $6516: $28 $09

    cp $01                                        ; $6518: $fe $01
    jr z, jr_005_6526                             ; $651a: $28 $0a

    ld de, $79c1                                  ; $651c: $11 $c1 $79
    jr jr_005_6529                                ; $651f: $18 $08

jr_005_6521:
    ld de, $79b3                                  ; $6521: $11 $b3 $79
    jr jr_005_6529                                ; $6524: $18 $03

jr_005_6526:
    ld de, $79bc                                  ; $6526: $11 $bc $79

jr_005_6529:
    call Call_000_0a5b                            ; $6529: $cd $5b $0a
    ld a, [$cb04]                                 ; $652c: $fa $04 $cb
    and $40                                       ; $652f: $e6 $40
    or a                                          ; $6531: $b7
    jp z, Jump_005_62ac                           ; $6532: $ca $ac $62

    jp Jump_005_73d9                              ; $6535: $c3 $d9 $73


    call Call_005_73d0                            ; $6538: $cd $d0 $73
    call Call_000_0e9d                            ; $653b: $cd $9d $0e
    jp Jump_005_73d9                              ; $653e: $c3 $d9 $73


    ld a, e                                       ; $6541: $7b
    cp $01                                        ; $6542: $fe $01
    jr nz, jr_005_656e                            ; $6544: $20 $28

    ld hl, $caff                                  ; $6546: $21 $ff $ca
    ld c, [hl]                                    ; $6549: $4e
    inc hl                                        ; $654a: $23
    ld b, [hl]                                    ; $654b: $46
    ld hl, $c326                                  ; $654c: $21 $26 $c3
    ld a, [hl+]                                   ; $654f: $2a
    ld h, [hl]                                    ; $6550: $66
    ld l, a                                       ; $6551: $6f
    add hl, bc                                    ; $6552: $09
    ld a, l                                       ; $6553: $7d
    ldh [$9c], a                                  ; $6554: $e0 $9c
    ld a, h                                       ; $6556: $7c
    ldh [$9d], a                                  ; $6557: $e0 $9d
    ld hl, $cb01                                  ; $6559: $21 $01 $cb
    ld c, [hl]                                    ; $655c: $4e
    inc hl                                        ; $655d: $23
    ld b, [hl]                                    ; $655e: $46
    ld hl, $c329                                  ; $655f: $21 $29 $c3
    ld a, [hl+]                                   ; $6562: $2a
    ld h, [hl]                                    ; $6563: $66
    ld l, a                                       ; $6564: $6f
    add hl, bc                                    ; $6565: $09
    ld a, l                                       ; $6566: $7d
    ldh [$9e], a                                  ; $6567: $e0 $9e
    ld a, h                                       ; $6569: $7c
    ldh [$9f], a                                  ; $656a: $e0 $9f
    jr jr_005_6579                                ; $656c: $18 $0b

jr_005_656e:
    push de                                       ; $656e: $d5
    ld hl, $caff                                  ; $656f: $21 $ff $ca
    ld de, $ff9c                                  ; $6572: $11 $9c $ff
    call Call_000_124b                            ; $6575: $cd $4b $12
    pop de                                        ; $6578: $d1

jr_005_6579:
    ld a, [$cb03]                                 ; $6579: $fa $03 $cb
    ldh [$9b], a                                  ; $657c: $e0 $9b
    ld a, d                                       ; $657e: $7a
    push de                                       ; $657f: $d5
    call Call_000_03a0                            ; $6580: $cd $a0 $03
    jr c, jr_005_6598                             ; $6583: $38 $13

    ld hl, $cb18                                  ; $6585: $21 $18 $cb
    ld a, [hl+]                                   ; $6588: $2a
    ld h, [hl]                                    ; $6589: $66
    ld l, a                                       ; $658a: $6f
    dec hl                                        ; $658b: $2b
    dec hl                                        ; $658c: $2b
    dec hl                                        ; $658d: $2b
    ld a, l                                       ; $658e: $7d
    ld [$cb18], a                                 ; $658f: $ea $18 $cb
    ld a, h                                       ; $6592: $7c
    ld [$cb19], a                                 ; $6593: $ea $19 $cb
    pop de                                        ; $6596: $d1
    ret                                           ; $6597: $c9


jr_005_6598:
    ld hl, $cb05                                  ; $6598: $21 $05 $cb
    ld [hl], e                                    ; $659b: $73
    inc hl                                        ; $659c: $23
    ld [hl], d                                    ; $659d: $72
    call Call_005_73d0                            ; $659e: $cd $d0 $73
    pop de                                        ; $65a1: $d1
    jp Jump_005_73d9                              ; $65a2: $c3 $d9 $73


    ld a, d                                       ; $65a5: $7a
    or a                                          ; $65a6: $b7
    jr nz, jr_005_65ae                            ; $65a7: $20 $05

    ld bc, $c320                                  ; $65a9: $01 $20 $c3
    jr jr_005_65b3                                ; $65ac: $18 $05

jr_005_65ae:
    call Call_000_0a6f                            ; $65ae: $cd $6f $0a
    ld b, h                                       ; $65b1: $44
    ld c, l                                       ; $65b2: $4d

jr_005_65b3:
    ld hl, $000d                                  ; $65b3: $21 $0d $00
    add hl, bc                                    ; $65b6: $09
    ld e, [hl]                                    ; $65b7: $5e
    inc hl                                        ; $65b8: $23
    ld d, [hl]                                    ; $65b9: $56
    ld hl, $000b                                  ; $65ba: $21 $0b $00
    add hl, bc                                    ; $65bd: $09
    ld a, [hl+]                                   ; $65be: $2a
    ld h, [hl]                                    ; $65bf: $66
    ld l, a                                       ; $65c0: $6f
    call Call_005_73d0                            ; $65c1: $cd $d0 $73
    call Call_000_0a29                            ; $65c4: $cd $29 $0a
    xor $04                                       ; $65c7: $ee $04
    ld d, a                                       ; $65c9: $57
    jp Jump_005_65f2                              ; $65ca: $c3 $f2 $65


    call Call_005_73d0                            ; $65cd: $cd $d0 $73
    ld a, [bc]                                    ; $65d0: $0a
    push af                                       ; $65d1: $f5
    push bc                                       ; $65d2: $c5
    ld e, $ff                                     ; $65d3: $1e $ff
    call Call_005_62f2                            ; $65d5: $cd $f2 $62
    call Call_005_73d0                            ; $65d8: $cd $d0 $73
    ld hl, $0019                                  ; $65db: $21 $19 $00
    add hl, bc                                    ; $65de: $09
    ld l, [hl]                                    ; $65df: $6e
    pop bc                                        ; $65e0: $c1
    pop af                                        ; $65e1: $f1
    push hl                                       ; $65e2: $e5
    push bc                                       ; $65e3: $c5
    ld d, a                                       ; $65e4: $57
    ld e, $ff                                     ; $65e5: $1e $ff
    call Call_005_62f2                            ; $65e7: $cd $f2 $62
    pop bc                                        ; $65ea: $c1
    pop hl                                        ; $65eb: $e1
    ld d, l                                       ; $65ec: $55
    jr jr_005_65f2                                ; $65ed: $18 $03

Jump_005_65ef:
    call Call_005_73d0                            ; $65ef: $cd $d0 $73

Call_005_65f2:
Jump_005_65f2:
jr_005_65f2:
    ld hl, $004e                                  ; $65f2: $21 $4e $00
    add hl, bc                                    ; $65f5: $09
    ld a, [hl]                                    ; $65f6: $7e
    or a                                          ; $65f7: $b7
    jp nz, Jump_005_73d9                          ; $65f8: $c2 $d9 $73

    ld a, d                                       ; $65fb: $7a
    cp $08                                        ; $65fc: $fe $08
    jr z, jr_005_665a                             ; $65fe: $28 $5a

    cp $09                                        ; $6600: $fe $09
    jr z, jr_005_6662                             ; $6602: $28 $5e

    cp $0a                                        ; $6604: $fe $0a
    jr nz, jr_005_660e                            ; $6606: $20 $06

    ld hl, $0002                                  ; $6608: $21 $02 $00
    add hl, bc                                    ; $660b: $09
    ld a, [hl]                                    ; $660c: $7e
    ld d, a                                       ; $660d: $57

jr_005_660e:
    ld [$cae2], a                                 ; $660e: $ea $e2 $ca
    push de                                       ; $6611: $d5
    ld de, $78bd                                  ; $6612: $11 $bd $78
    call Call_000_0a5b                            ; $6615: $cd $5b $0a
    call Call_005_741a                            ; $6618: $cd $1a $74
    or a                                          ; $661b: $b7
    jr z, jr_005_662a                             ; $661c: $28 $0c

    cp $01                                        ; $661e: $fe $01
    jr z, jr_005_6632                             ; $6620: $28 $10

    cp $02                                        ; $6622: $fe $02
    jr z, jr_005_663a                             ; $6624: $28 $14

    cp $03                                        ; $6626: $fe $03
    jr z, jr_005_6640                             ; $6628: $28 $16

jr_005_662a:
    ld de, $796e                                  ; $662a: $11 $6e $79
    call Call_000_0a5b                            ; $662d: $cd $5b $0a
    jr jr_005_6640                                ; $6630: $18 $0e

jr_005_6632:
    ld de, $78f8                                  ; $6632: $11 $f8 $78
    call Call_000_0a5b                            ; $6635: $cd $5b $0a
    jr jr_005_6640                                ; $6638: $18 $06

jr_005_663a:
    ld de, $7933                                  ; $663a: $11 $33 $79
    call Call_000_0a5b                            ; $663d: $cd $5b $0a

jr_005_6640:
    pop de                                        ; $6640: $d1
    ld a, d                                       ; $6641: $7a
    call Call_000_2e9e                            ; $6642: $cd $9e $2e
    ld hl, $0023                                  ; $6645: $21 $23 $00
    add hl, bc                                    ; $6648: $09
    ld a, [$cb03]                                 ; $6649: $fa $03 $cb
    and $40                                       ; $664c: $e6 $40
    jp z, Jump_005_62ac                           ; $664e: $ca $ac $62

    ld a, [$cb04]                                 ; $6651: $fa $04 $cb
    and $10                                       ; $6654: $e6 $10
    ret nz                                        ; $6656: $c0

    jp Jump_005_73d9                              ; $6657: $c3 $d9 $73


jr_005_665a:
    ld a, $20                                     ; $665a: $3e $20
    call Call_000_08ce                            ; $665c: $cd $ce $08
    jp Jump_005_73d9                              ; $665f: $c3 $d9 $73


jr_005_6662:
    xor a                                         ; $6662: $af
    call Call_000_08ce                            ; $6663: $cd $ce $08
    jp Jump_005_73d9                              ; $6666: $c3 $d9 $73


    ld a, d                                       ; $6669: $7a
    cp $36                                        ; $666a: $fe $36
    jr z, jr_005_669f                             ; $666c: $28 $31

    cp $38                                        ; $666e: $fe $38
    jr z, jr_005_66ab                             ; $6670: $28 $39

    cp $3d                                        ; $6672: $fe $3d
    jr z, jr_005_66b7                             ; $6674: $28 $41

    cp $50                                        ; $6676: $fe $50
    jr z, jr_005_66c3                             ; $6678: $28 $49

    cp $5a                                        ; $667a: $fe $5a
    jr z, jr_005_66c3                             ; $667c: $28 $45

    cp $5f                                        ; $667e: $fe $5f
    jr z, jr_005_66c3                             ; $6680: $28 $41

    cp $51                                        ; $6682: $fe $51
    jr z, jr_005_66c3                             ; $6684: $28 $3d

    cp $65                                        ; $6686: $fe $65
    jr z, jr_005_66c3                             ; $6688: $28 $39

    ld a, d                                       ; $668a: $7a
    push de                                       ; $668b: $d5
    ld hl, $5d9d                                  ; $668c: $21 $9d $5d
    call Call_000_318c                            ; $668f: $cd $8c $31
    ld a, [hl+]                                   ; $6692: $2a
    ld d, [hl]                                    ; $6693: $56
    ld e, a                                       ; $6694: $5f
    call Call_005_73d0                            ; $6695: $cd $d0 $73
    call Call_000_0a50                            ; $6698: $cd $50 $0a
    pop de                                        ; $669b: $d1
    jp Jump_005_73d9                              ; $669c: $c3 $d9 $73


jr_005_669f:
    call Call_005_73d0                            ; $669f: $cd $d0 $73
    ld de, $7c3d                                  ; $66a2: $11 $3d $7c
    call Call_000_0a5b                            ; $66a5: $cd $5b $0a
    jp Jump_005_73d9                              ; $66a8: $c3 $d9 $73


jr_005_66ab:
    call Call_005_73d0                            ; $66ab: $cd $d0 $73
    ld de, $555a                                  ; $66ae: $11 $5a $55
    call Call_000_0a5b                            ; $66b1: $cd $5b $0a
    jp Jump_005_73d9                              ; $66b4: $c3 $d9 $73


jr_005_66b7:
    call Call_005_73d0                            ; $66b7: $cd $d0 $73
    ld de, $7c1e                                  ; $66ba: $11 $1e $7c
    call Call_000_0a5b                            ; $66bd: $cd $5b $0a
    jp Jump_005_73d9                              ; $66c0: $c3 $d9 $73


jr_005_66c3:
    push de                                       ; $66c3: $d5
    ld hl, $c346                                  ; $66c4: $21 $46 $c3
    ld de, $0108                                  ; $66c7: $11 $08 $01
    ld [hl], e                                    ; $66ca: $73
    inc hl                                        ; $66cb: $23
    ld [hl], d                                    ; $66cc: $72
    ld hl, $5d9d                                  ; $66cd: $21 $9d $5d
    call Call_000_318c                            ; $66d0: $cd $8c $31
    ld a, [hl+]                                   ; $66d3: $2a
    ld d, [hl]                                    ; $66d4: $56
    ld e, a                                       ; $66d5: $5f
    call Call_005_73d0                            ; $66d6: $cd $d0 $73
    call Call_000_0a50                            ; $66d9: $cd $50 $0a
    pop de                                        ; $66dc: $d1
    jp Jump_005_73d9                              ; $66dd: $c3 $d9 $73


    call Call_005_73d0                            ; $66e0: $cd $d0 $73
    ld a, d                                       ; $66e3: $7a
    or a                                          ; $66e4: $b7
    jr nz, jr_005_66ec                            ; $66e5: $20 $05

    ld hl, $c320                                  ; $66e7: $21 $20 $c3
    jr jr_005_66f2                                ; $66ea: $18 $06

jr_005_66ec:
    ld e, $00                                     ; $66ec: $1e $00
    ld a, d                                       ; $66ee: $7a
    call Call_000_0a6f                            ; $66ef: $cd $6f $0a

jr_005_66f2:
    push de                                       ; $66f2: $d5
    push hl                                       ; $66f3: $e5
    ld hl, $004e                                  ; $66f4: $21 $4e $00
    add hl, bc                                    ; $66f7: $09
    push hl                                       ; $66f8: $e5
    pop de                                        ; $66f9: $d1
    pop hl                                        ; $66fa: $e1
    ld a, l                                       ; $66fb: $7d
    ld [de], a                                    ; $66fc: $12
    inc de                                        ; $66fd: $13
    ld a, h                                       ; $66fe: $7c
    ld [de], a                                    ; $66ff: $12
    pop de                                        ; $6700: $d1
    jp Jump_005_73d9                              ; $6701: $c3 $d9 $73


    call Call_005_73d0                            ; $6704: $cd $d0 $73
    ld hl, $004e                                  ; $6707: $21 $4e $00
    xor a                                         ; $670a: $af
    ld [hl+], a                                   ; $670b: $22
    ld [hl], $00                                  ; $670c: $36 $00
    jp Jump_005_73d9                              ; $670e: $c3 $d9 $73


    ld a, d                                       ; $6711: $7a
    ld [$cb28], a                                 ; $6712: $ea $28 $cb
    jp Jump_005_73d9                              ; $6715: $c3 $d9 $73


    ld hl, $0074                                  ; $6718: $21 $74 $00
    ld a, l                                       ; $671b: $7d
    ld [$c346], a                                 ; $671c: $ea $46 $c3
    ld a, h                                       ; $671f: $7c
    ld [$c347], a                                 ; $6720: $ea $47 $c3
    jp Jump_005_73d9                              ; $6723: $c3 $d9 $73


    ld hl, $0000                                  ; $6726: $21 $00 $00
    ld a, l                                       ; $6729: $7d
    ld [$c346], a                                 ; $672a: $ea $46 $c3
    ld a, h                                       ; $672d: $7c
    ld [$c347], a                                 ; $672e: $ea $47 $c3
    jp Jump_005_73d9                              ; $6731: $c3 $d9 $73


    ld a, $03                                     ; $6734: $3e $03
    ld [$cd19], a                                 ; $6736: $ea $19 $cd
    ld h, d                                       ; $6739: $62
    ld l, e                                       ; $673a: $6b
    add hl, de                                    ; $673b: $19
    add hl, de                                    ; $673c: $19
    inc hl                                        ; $673d: $23
    ld a, $5e                                     ; $673e: $3e $5e
    ldh [$c1], a                                  ; $6740: $e0 $c1
    ld a, $34                                     ; $6742: $3e $34
    ldh [$bd], a                                  ; $6744: $e0 $bd
    ld a, $43                                     ; $6746: $3e $43
    ldh [$be], a                                  ; $6748: $e0 $be
    call Call_000_3441                            ; $674a: $cd $41 $34
    ld a, $09                                     ; $674d: $3e $09
    ld [$cb17], a                                 ; $674f: $ea $17 $cb
    jp Jump_005_73d9                              ; $6752: $c3 $d9 $73


    ld a, [$cb03]                                 ; $6755: $fa $03 $cb
    cp $ff                                        ; $6758: $fe $ff
    jr nz, jr_005_67d0                            ; $675a: $20 $74

    ldh a, [$d8]                                  ; $675c: $f0 $d8
    cp $4a                                        ; $675e: $fe $4a
    jr z, jr_005_67c4                             ; $6760: $28 $62

    cp $43                                        ; $6762: $fe $43
    jr nz, jr_005_6776                            ; $6764: $20 $10

    call Call_000_2e82                            ; $6766: $cd $82 $2e
    or a                                          ; $6769: $b7
    jr z, jr_005_67c4                             ; $676a: $28 $58

    cp $01                                        ; $676c: $fe $01
    jr z, jr_005_67c4                             ; $676e: $28 $54

    cp $05                                        ; $6770: $fe $05
    jr z, jr_005_67c4                             ; $6772: $28 $50

    ldh a, [$d8]                                  ; $6774: $f0 $d8

jr_005_6776:
    cp $0e                                        ; $6776: $fe $0e
    jr nz, jr_005_677f                            ; $6778: $20 $05

    ld a, [bc]                                    ; $677a: $0a
    cp $14                                        ; $677b: $fe $14
    jr nz, jr_005_67c4                            ; $677d: $20 $45

jr_005_677f:
    ld hl, $cb20                                  ; $677f: $21 $20 $cb
    ld [hl], c                                    ; $6782: $71
    inc hl                                        ; $6783: $23
    ld [hl], b                                    ; $6784: $70
    ld hl, $001a                                  ; $6785: $21 $1a $00
    add hl, bc                                    ; $6788: $09
    ld a, [hl+]                                   ; $6789: $2a
    ld h, [hl]                                    ; $678a: $66
    ld l, a                                       ; $678b: $6f
    ld a, l                                       ; $678c: $7d
    ld [$cb22], a                                 ; $678d: $ea $22 $cb
    ld a, h                                       ; $6790: $7c
    ld [$cb23], a                                 ; $6791: $ea $23 $cb
    ld hl, $0023                                  ; $6794: $21 $23 $00
    add hl, bc                                    ; $6797: $09
    ld a, [hl+]                                   ; $6798: $2a
    ld [$cb25], a                                 ; $6799: $ea $25 $cb
    ld a, [hl+]                                   ; $679c: $2a
    ld [$cb26], a                                 ; $679d: $ea $26 $cb
    ld a, [hl]                                    ; $67a0: $7e
    ld [$cb27], a                                 ; $67a1: $ea $27 $cb
    ld hl, $001c                                  ; $67a4: $21 $1c $00
    add hl, bc                                    ; $67a7: $09
    ld a, [hl+]                                   ; $67a8: $2a
    ld d, a                                       ; $67a9: $57
    ld a, [hl]                                    ; $67aa: $7e
    or d                                          ; $67ab: $b2
    jr z, jr_005_67b0                             ; $67ac: $28 $02

    ld a, $01                                     ; $67ae: $3e $01

jr_005_67b0:
    ld [$cb24], a                                 ; $67b0: $ea $24 $cb
    call Call_000_09fd                            ; $67b3: $cd $fd $09
    xor $04                                       ; $67b6: $ee $04
    ld d, a                                       ; $67b8: $57
    ld a, [$cb04]                                 ; $67b9: $fa $04 $cb
    set 4, a                                      ; $67bc: $cb $e7
    ld [$cb04], a                                 ; $67be: $ea $04 $cb
    call Call_005_65f2                            ; $67c1: $cd $f2 $65

jr_005_67c4:
    call Call_000_2e82                            ; $67c4: $cd $82 $2e
    inc a                                         ; $67c7: $3c
    ld e, a                                       ; $67c8: $5f
    xor a                                         ; $67c9: $af
    ld [$cb17], a                                 ; $67ca: $ea $17 $cb
    jp Jump_005_5f9b                              ; $67cd: $c3 $9b $5f


jr_005_67d0:
    ld a, [$cb03]                                 ; $67d0: $fa $03 $cb
    ld h, d                                       ; $67d3: $62
    ld l, e                                       ; $67d4: $6b
    add hl, de                                    ; $67d5: $19
    add hl, de                                    ; $67d6: $19
    inc hl                                        ; $67d7: $23
    ldh [$c1], a                                  ; $67d8: $e0 $c1
    ld a, $34                                     ; $67da: $3e $34
    ldh [$bd], a                                  ; $67dc: $e0 $bd
    ld a, $43                                     ; $67de: $3e $43
    ldh [$be], a                                  ; $67e0: $e0 $be
    call Call_000_3441                            ; $67e2: $cd $41 $34
    ld a, $09                                     ; $67e5: $3e $09
    ld [$cb17], a                                 ; $67e7: $ea $17 $cb
    jp Jump_005_73d9                              ; $67ea: $c3 $d9 $73


    ld a, [$cb03]                                 ; $67ed: $fa $03 $cb
    ld h, d                                       ; $67f0: $62
    ld l, e                                       ; $67f1: $6b
    add hl, de                                    ; $67f2: $19
    add hl, de                                    ; $67f3: $19
    inc hl                                        ; $67f4: $23
    ldh [$c1], a                                  ; $67f5: $e0 $c1
    ld a, $d4                                     ; $67f7: $3e $d4
    ldh [$bd], a                                  ; $67f9: $e0 $bd
    ld a, $43                                     ; $67fb: $3e $43
    ldh [$be], a                                  ; $67fd: $e0 $be
    call Call_000_3441                            ; $67ff: $cd $41 $34
    ld a, $09                                     ; $6802: $3e $09
    ld [$cb17], a                                 ; $6804: $ea $17 $cb
    jp Jump_005_73d9                              ; $6807: $c3 $d9 $73


    jp Jump_005_73d9                              ; $680a: $c3 $d9 $73


    ldh a, [rSVBK]                                ; $680d: $f0 $70
    push af                                       ; $680f: $f5
    ld a, $06                                     ; $6810: $3e $06
    ldh [rSVBK], a                                ; $6812: $e0 $70
    ldh a, [$d8]                                  ; $6814: $f0 $d8
    ld [$d6d1], a                                 ; $6816: $ea $d1 $d6
    ld a, d                                       ; $6819: $7a
    cp $ff                                        ; $681a: $fe $ff
    jr nz, jr_005_683a                            ; $681c: $20 $1c

    pop af                                        ; $681e: $f1
    ldh [rSVBK], a                                ; $681f: $e0 $70
    ld hl, $cdcc                                  ; $6821: $21 $cc $cd
    ld c, [hl]                                    ; $6824: $4e
    inc hl                                        ; $6825: $23
    ld b, [hl]                                    ; $6826: $46
    inc bc                                        ; $6827: $03
    ld a, [bc]                                    ; $6828: $0a
    dec bc                                        ; $6829: $0b
    ldh [$c1], a                                  ; $682a: $e0 $c1
    ld a, $6e                                     ; $682c: $3e $6e
    ldh [$bd], a                                  ; $682e: $e0 $bd
    ld a, $5a                                     ; $6830: $3e $5a
    ldh [$be], a                                  ; $6832: $e0 $be
    call Call_000_342c                            ; $6834: $cd $2c $34
    jp Jump_000_0c95                              ; $6837: $c3 $95 $0c


jr_005_683a:
    ldh [$da], a                                  ; $683a: $e0 $da
    ld [$d6d2], a                                 ; $683c: $ea $d2 $d6
    push af                                       ; $683f: $f5
    ld hl, $4a3e                                  ; $6840: $21 $3e $4a
    ld e, $01                                     ; $6843: $1e $01
    ld d, a                                       ; $6845: $57
    call Call_000_35b2                            ; $6846: $cd $b2 $35
    ldh [$d9], a                                  ; $6849: $e0 $d9
    pop af                                        ; $684b: $f1
    ld hl, $4aa1                                  ; $684c: $21 $a1 $4a
    ld e, $01                                     ; $684f: $1e $01
    ld d, a                                       ; $6851: $57
    call Call_000_35b2                            ; $6852: $cd $b2 $35
    ld [$d6d1], a                                 ; $6855: $ea $d1 $d6
    ldh [$d8], a                                  ; $6858: $e0 $d8
    ldh [$bc], a                                  ; $685a: $e0 $bc
    pop af                                        ; $685c: $f1
    ldh [rSVBK], a                                ; $685d: $e0 $70
    ldh a, [$bc]                                  ; $685f: $f0 $bc
    ld a, $09                                     ; $6861: $3e $09
    ld [$cb17], a                                 ; $6863: $ea $17 $cb
    ld a, $01                                     ; $6866: $3e $01
    ld [$c0c1], a                                 ; $6868: $ea $c1 $c0
    ret                                           ; $686b: $c9


    push de                                       ; $686c: $d5
    ld hl, $cd30                                  ; $686d: $21 $30 $cd
    ld a, [hl+]                                   ; $6870: $2a
    ld h, [hl]                                    ; $6871: $66
    ld l, a                                       ; $6872: $6f
    ld a, l                                       ; $6873: $7d
    ldh [$9c], a                                  ; $6874: $e0 $9c
    ld a, h                                       ; $6876: $7c
    ldh [$9d], a                                  ; $6877: $e0 $9d
    ld hl, $cd32                                  ; $6879: $21 $32 $cd
    ld a, [hl+]                                   ; $687c: $2a
    ld h, [hl]                                    ; $687d: $66
    ld l, a                                       ; $687e: $6f
    ld a, l                                       ; $687f: $7d
    ldh [$9e], a                                  ; $6880: $e0 $9e
    ld a, h                                       ; $6882: $7c
    ldh [$9f], a                                  ; $6883: $e0 $9f
    ld a, $09                                     ; $6885: $3e $09
    call Call_000_03a0                            ; $6887: $cd $a0 $03
    ld a, e                                       ; $688a: $7b
    ld [$cb05], a                                 ; $688b: $ea $05 $cb
    ld a, d                                       ; $688e: $7a
    ld [$cb06], a                                 ; $688f: $ea $06 $cb
    call Call_005_73d0                            ; $6892: $cd $d0 $73
    ld hl, $004c                                  ; $6895: $21 $4c $00
    add hl, bc                                    ; $6898: $09
    ld a, [hl]                                    ; $6899: $7e
    ld [$cd43], a                                 ; $689a: $ea $43 $cd
    ld de, $7643                                  ; $689d: $11 $43 $76
    call Call_000_0a5b                            ; $68a0: $cd $5b $0a
    pop de                                        ; $68a3: $d1
    ld a, [$cb03]                                 ; $68a4: $fa $03 $cb
    call Call_000_2e9a                            ; $68a7: $cd $9a $2e
    ld a, d                                       ; $68aa: $7a
    call Call_000_2e9e                            ; $68ab: $cd $9e $2e
    ld d, $00                                     ; $68ae: $16 $00
    sla e                                         ; $68b0: $cb $23
    rl d                                          ; $68b2: $cb $12
    sla e                                         ; $68b4: $cb $23
    rl d                                          ; $68b6: $cb $12
    sla e                                         ; $68b8: $cb $23
    rl d                                          ; $68ba: $cb $12
    call Call_000_2ea4                            ; $68bc: $cd $a4 $2e
    ld a, $07                                     ; $68bf: $3e $07
    ld [$cb17], a                                 ; $68c1: $ea $17 $cb
    jp Jump_005_73d9                              ; $68c4: $c3 $d9 $73


    ld a, d                                       ; $68c7: $7a
    or a                                          ; $68c8: $b7
    jr nz, jr_005_68d0                            ; $68c9: $20 $05

    ld bc, $c320                                  ; $68cb: $01 $20 $c3
    jr jr_005_68d5                                ; $68ce: $18 $05

jr_005_68d0:
    call Call_000_0a6f                            ; $68d0: $cd $6f $0a
    ld b, h                                       ; $68d3: $44
    ld c, l                                       ; $68d4: $4d

jr_005_68d5:
    ld hl, $000d                                  ; $68d5: $21 $0d $00
    add hl, bc                                    ; $68d8: $09
    ld a, [hl+]                                   ; $68d9: $2a
    ld h, [hl]                                    ; $68da: $66
    ld l, a                                       ; $68db: $6f
    ld a, l                                       ; $68dc: $7d
    ld [$caff], a                                 ; $68dd: $ea $ff $ca
    ld a, h                                       ; $68e0: $7c
    ld [$cb00], a                                 ; $68e1: $ea $00 $cb
    ld hl, $000b                                  ; $68e4: $21 $0b $00
    add hl, bc                                    ; $68e7: $09
    ld e, [hl]                                    ; $68e8: $5e
    inc hl                                        ; $68e9: $23
    ld d, [hl]                                    ; $68ea: $56
    push de                                       ; $68eb: $d5
    ld hl, $cd30                                  ; $68ec: $21 $30 $cd
    ld a, [hl+]                                   ; $68ef: $2a
    ld h, [hl]                                    ; $68f0: $66
    ld l, a                                       ; $68f1: $6f
    ld a, l                                       ; $68f2: $7d
    ldh [$9c], a                                  ; $68f3: $e0 $9c
    ld a, h                                       ; $68f5: $7c
    ldh [$9d], a                                  ; $68f6: $e0 $9d
    ld hl, $cd32                                  ; $68f8: $21 $32 $cd
    ld a, [hl+]                                   ; $68fb: $2a
    ld h, [hl]                                    ; $68fc: $66
    ld l, a                                       ; $68fd: $6f
    ld a, l                                       ; $68fe: $7d
    ldh [$9e], a                                  ; $68ff: $e0 $9e
    ld a, h                                       ; $6901: $7c
    ldh [$9f], a                                  ; $6902: $e0 $9f
    ld a, $09                                     ; $6904: $3e $09
    call Call_000_03a0                            ; $6906: $cd $a0 $03
    ld a, e                                       ; $6909: $7b
    ld [$cb05], a                                 ; $690a: $ea $05 $cb
    ld a, d                                       ; $690d: $7a
    ld [$cb06], a                                 ; $690e: $ea $06 $cb
    call Call_005_73d0                            ; $6911: $cd $d0 $73
    ld hl, $004c                                  ; $6914: $21 $4c $00
    add hl, bc                                    ; $6917: $09
    ld a, [hl]                                    ; $6918: $7e
    ld [$cd43], a                                 ; $6919: $ea $43 $cd
    ld a, [$cb03]                                 ; $691c: $fa $03 $cb
    cp $01                                        ; $691f: $fe $01
    jr z, jr_005_6934                             ; $6921: $28 $11

    cp $02                                        ; $6923: $fe $02
    jr z, jr_005_6941                             ; $6925: $28 $1a

    ld hl, $0045                                  ; $6927: $21 $45 $00
    add hl, bc                                    ; $692a: $09
    ld a, $c0                                     ; $692b: $3e $c0
    ld [hl+], a                                   ; $692d: $22
    ld [hl], $00                                  ; $692e: $36 $00
    pop de                                        ; $6930: $d1
    jp Jump_005_63b0                              ; $6931: $c3 $b0 $63


jr_005_6934:
    ld hl, $0045                                  ; $6934: $21 $45 $00
    add hl, bc                                    ; $6937: $09
    ld a, $80                                     ; $6938: $3e $80
    ld [hl+], a                                   ; $693a: $22
    ld [hl], $01                                  ; $693b: $36 $01
    pop de                                        ; $693d: $d1
    jp Jump_005_63b0                              ; $693e: $c3 $b0 $63


jr_005_6941:
    ld hl, $0045                                  ; $6941: $21 $45 $00
    add hl, bc                                    ; $6944: $09
    ld a, $00                                     ; $6945: $3e $00
    ld [hl+], a                                   ; $6947: $22
    ld [hl], $03                                  ; $6948: $36 $03
    pop de                                        ; $694a: $d1
    jp Jump_005_63b0                              ; $694b: $c3 $b0 $63


    ld a, d                                       ; $694e: $7a
    ldh [$c1], a                                  ; $694f: $e0 $c1
    ld a, $84                                     ; $6951: $3e $84
    ldh [$bd], a                                  ; $6953: $e0 $bd
    ld a, $47                                     ; $6955: $3e $47
    ldh [$be], a                                  ; $6957: $e0 $be
    call Call_000_3441                            ; $6959: $cd $41 $34
    ld e, d                                       ; $695c: $5a
    ld d, $03                                     ; $695d: $16 $03
    ld bc, $1300                                  ; $695f: $01 $00 $13
    ld hl, $1bbe                                  ; $6962: $21 $be $1b
    ld a, $09                                     ; $6965: $3e $09
    ld [$cb17], a                                 ; $6967: $ea $17 $cb
    ld a, $12                                     ; $696a: $3e $12
    call Call_000_395e                            ; $696c: $cd $5e $39
    xor a                                         ; $696f: $af
    ldh [$c1], a                                  ; $6970: $e0 $c1
    ld a, $26                                     ; $6972: $3e $26
    ldh [$bd], a                                  ; $6974: $e0 $bd
    ld a, $44                                     ; $6976: $3e $44
    ldh [$be], a                                  ; $6978: $e0 $be
    call Call_000_3441                            ; $697a: $cd $41 $34
    ldh a, [rSVBK]                                ; $697d: $f0 $70
    push af                                       ; $697f: $f5
    ld a, $06                                     ; $6980: $3e $06
    ldh [rSVBK], a                                ; $6982: $e0 $70
    ld a, $01                                     ; $6984: $3e $01
    ld [$d6d3], a                                 ; $6986: $ea $d3 $d6
    pop af                                        ; $6989: $f1
    ldh [rSVBK], a                                ; $698a: $e0 $70
    jp Jump_005_73d9                              ; $698c: $c3 $d9 $73


    ldh [$c1], a                                  ; $698f: $e0 $c1
    ld a, $40                                     ; $6991: $3e $40
    ldh [$bd], a                                  ; $6993: $e0 $bd
    ld a, $7f                                     ; $6995: $3e $7f
    ldh [$be], a                                  ; $6997: $e0 $be
    call Call_000_3441                            ; $6999: $cd $41 $34
    jp Jump_005_73d9                              ; $699c: $c3 $d9 $73


    ldh [$c1], a                                  ; $699f: $e0 $c1
    ld a, $9f                                     ; $69a1: $3e $9f
    ldh [$bd], a                                  ; $69a3: $e0 $bd
    ld a, $51                                     ; $69a5: $3e $51
    ldh [$be], a                                  ; $69a7: $e0 $be
    call Call_000_3448                            ; $69a9: $cd $48 $34
    jp Jump_005_73d9                              ; $69ac: $c3 $d9 $73


    ldh [$c1], a                                  ; $69af: $e0 $c1
    ld a, $71                                     ; $69b1: $3e $71
    ldh [$bd], a                                  ; $69b3: $e0 $bd
    ld a, $51                                     ; $69b5: $3e $51
    ldh [$be], a                                  ; $69b7: $e0 $be
    call Call_000_3448                            ; $69b9: $cd $48 $34
    jp Jump_005_73d9                              ; $69bc: $c3 $d9 $73


    ldh [$c1], a                                  ; $69bf: $e0 $c1
    ld a, $44                                     ; $69c1: $3e $44
    ldh [$bd], a                                  ; $69c3: $e0 $bd
    ld a, $7f                                     ; $69c5: $3e $7f
    ldh [$be], a                                  ; $69c7: $e0 $be
    call Call_000_342c                            ; $69c9: $cd $2c $34
    jp Jump_005_73d9                              ; $69cc: $c3 $d9 $73


    ldh [$c1], a                                  ; $69cf: $e0 $c1
    ld a, $67                                     ; $69d1: $3e $67
    ldh [$bd], a                                  ; $69d3: $e0 $bd
    ld a, $7f                                     ; $69d5: $3e $7f
    ldh [$be], a                                  ; $69d7: $e0 $be
    call Call_000_3441                            ; $69d9: $cd $41 $34
    jp Jump_005_73d9                              ; $69dc: $c3 $d9 $73


    ld a, $08                                     ; $69df: $3e $08
    ld [$cb17], a                                 ; $69e1: $ea $17 $cb
    push de                                       ; $69e4: $d5
    ldh a, [rSVBK]                                ; $69e5: $f0 $70
    push af                                       ; $69e7: $f5
    ld a, $02                                     ; $69e8: $3e $02
    ldh [rSVBK], a                                ; $69ea: $e0 $70
    ld hl, $d28f                                  ; $69ec: $21 $8f $d2
    ld de, $d000                                  ; $69ef: $11 $00 $d0
    call Call_000_11ee                            ; $69f2: $cd $ee $11
    pop af                                        ; $69f5: $f1
    ldh [rSVBK], a                                ; $69f6: $e0 $70
    pop de                                        ; $69f8: $d1
    ld a, d                                       ; $69f9: $7a
    call Call_005_7c44                            ; $69fa: $cd $44 $7c
    jp Jump_005_73d9                              ; $69fd: $c3 $d9 $73


    ldh a, [rSVBK]                                ; $6a00: $f0 $70
    push af                                       ; $6a02: $f5
    ld a, $06                                     ; $6a03: $3e $06
    ldh [rSVBK], a                                ; $6a05: $e0 $70
    ld a, d                                       ; $6a07: $7a
    ld [$d6cd], a                                 ; $6a08: $ea $cd $d6
    pop af                                        ; $6a0b: $f1
    ldh [rSVBK], a                                ; $6a0c: $e0 $70
    jp Jump_005_73d9                              ; $6a0e: $c3 $d9 $73


    call Call_000_355e                            ; $6a11: $cd $5e $35
    ld a, d                                       ; $6a14: $7a
    rst $00                                       ; $6a15: $c7
    ld a, [hl+]                                   ; $6a16: $2a
    ld l, d                                       ; $6a17: $6a
    ld b, h                                       ; $6a18: $44
    ld l, d                                       ; $6a19: $6a
    ld e, b                                       ; $6a1a: $58
    ld l, d                                       ; $6a1b: $6a
    ld e, [hl]                                    ; $6a1c: $5e
    ld l, d                                       ; $6a1d: $6a
    ld h, h                                       ; $6a1e: $64
    ld l, d                                       ; $6a1f: $6a
    ld [hl+], a                                   ; $6a20: $22
    ld l, d                                       ; $6a21: $6a
    ld a, $41                                     ; $6a22: $3e $41
    call Call_000_2448                            ; $6a24: $cd $48 $24
    jp Jump_005_73d9                              ; $6a27: $c3 $d9 $73


    ld d, e                                       ; $6a2a: $53
    ld hl, $7ea7                                  ; $6a2b: $21 $a7 $7e
    ld e, $04                                     ; $6a2e: $1e $04
    ld a, d                                       ; $6a30: $7a
    call Call_000_35a1                            ; $6a31: $cd $a1 $35
    ld a, l                                       ; $6a34: $7d
    ld [$cbc8], a                                 ; $6a35: $ea $c8 $cb
    ld a, h                                       ; $6a38: $7c
    ld [$cbc9], a                                 ; $6a39: $ea $c9 $cb
    ld a, $24                                     ; $6a3c: $3e $24
    call Call_000_2448                            ; $6a3e: $cd $48 $24
    jp Jump_005_73d9                              ; $6a41: $c3 $d9 $73


    xor a                                         ; $6a44: $af
    ld [$d5d2], a                                 ; $6a45: $ea $d2 $d5
    ld [$d5d3], a                                 ; $6a48: $ea $d3 $d5
    ld a, $0a                                     ; $6a4b: $3e $0a
    ld [$cb17], a                                 ; $6a4d: $ea $17 $cb
    ld a, $23                                     ; $6a50: $3e $23
    call Call_000_2448                            ; $6a52: $cd $48 $24
    jp Jump_005_73d9                              ; $6a55: $c3 $d9 $73


    ld a, $03                                     ; $6a58: $3e $03
    call Call_000_2448                            ; $6a5a: $cd $48 $24
    ret                                           ; $6a5d: $c9


    ld a, $2b                                     ; $6a5e: $3e $2b
    call Call_000_2448                            ; $6a60: $cd $48 $24
    ret                                           ; $6a63: $c9


    ret                                           ; $6a64: $c9


    ld a, d                                       ; $6a65: $7a
    rst $00                                       ; $6a66: $c7

    ld b, c                                       ; $6a67: $41
    ld l, e                                       ; $6a68: $6b
    cp c                                          ; $6a69: $b9
    ld l, e                                       ; $6a6a: $6b
    ld hl, sp+$6b                                 ; $6a6b: $f8 $6b
    add $6b                                       ; $6a6d: $c6 $6b
    ld e, e                                       ; $6a6f: $5b
    ld l, e                                       ; $6a70: $6b
    ld [hl], l                                    ; $6a71: $75
    ld l, e                                       ; $6a72: $6b
    cpl                                           ; $6a73: $2f
    ld l, h                                       ; $6a74: $6c
    xor c                                         ; $6a75: $a9
    ld l, e                                       ; $6a76: $6b
    ld a, [hl-]                                   ; $6a77: $3a
    ld l, h                                       ; $6a78: $6c
    ld b, l                                       ; $6a79: $45
    ld l, h                                       ; $6a7a: $6c
    jp $556a                                      ; $6a7b: $c3 $6a $55


    ld l, h                                       ; $6a7e: $6c
    ld [hl], h                                    ; $6a7f: $74
    ld l, h                                       ; $6a80: $6c

    db $f1, $6a, $1b, $6b, $d1, $6a, $e1, $6a

    add $6a                                       ; $6a89: $c6 $6a

    db $b3, $6a

    adc a                                         ; $6a8d: $8f
    ld l, e                                       ; $6a8e: $6b
    and e                                         ; $6a8f: $a3
    ld l, d                                       ; $6a90: $6a
    sub e                                         ; $6a91: $93
    ld l, d                                       ; $6a92: $6a
    ldh [$c1], a                                  ; $6a93: $e0 $c1
    ld a, $1c                                     ; $6a95: $3e $1c
    ldh [$bd], a                                  ; $6a97: $e0 $bd
    ld a, $7f                                     ; $6a99: $3e $7f
    ldh [$be], a                                  ; $6a9b: $e0 $be
    call Call_000_343a                            ; $6a9d: $cd $3a $34
    jp Jump_005_73d9                              ; $6aa0: $c3 $d9 $73


    ldh [$c1], a                                  ; $6aa3: $e0 $c1
    ld a, $be                                     ; $6aa5: $3e $be
    ldh [$bd], a                                  ; $6aa7: $e0 $bd
    ld a, $6b                                     ; $6aa9: $3e $6b
    ldh [$be], a                                  ; $6aab: $e0 $be
    call Call_000_3448                            ; $6aad: $cd $48 $34
    jp Jump_005_73d9                              ; $6ab0: $c3 $d9 $73


    ld a, $0a                                     ; $6ab3: $3e $0a
    ld [$cb17], a                                 ; $6ab5: $ea $17 $cb
    call Call_000_355e                            ; $6ab8: $cd $5e $35
    ld a, $0a                                     ; $6abb: $3e $0a
    call Call_000_2448                            ; $6abd: $cd $48 $24
    jp Jump_005_73d9                              ; $6ac0: $c3 $d9 $73


    jp Jump_005_73d9                              ; $6ac3: $c3 $d9 $73


    call Call_000_355e                            ; $6ac6: $cd $5e $35
    ld a, $38                                     ; $6ac9: $3e $38
    call Call_000_2448                            ; $6acb: $cd $48 $24
    jp Jump_005_73d9                              ; $6ace: $c3 $d9 $73


    ldh [$c1], a                                  ; $6ad1: $e0 $c1
    ld a, $8a                                     ; $6ad3: $3e $8a
    ldh [$bd], a                                  ; $6ad5: $e0 $bd
    ld a, $6c                                     ; $6ad7: $3e $6c
    ldh [$be], a                                  ; $6ad9: $e0 $be
    call Call_000_344f                            ; $6adb: $cd $4f $34
    jp Jump_005_73d9                              ; $6ade: $c3 $d9 $73


    ldh [$c1], a                                  ; $6ae1: $e0 $c1
    ld a, $c6                                     ; $6ae3: $3e $c6
    ldh [$bd], a                                  ; $6ae5: $e0 $bd
    ld a, $6c                                     ; $6ae7: $3e $6c
    ldh [$be], a                                  ; $6ae9: $e0 $be
    call Call_000_344f                            ; $6aeb: $cd $4f $34
    jp Jump_005_73d9                              ; $6aee: $c3 $d9 $73


    ld a, $01                                     ; $6af1: $3e $01
    ld [$cbe0], a                                 ; $6af3: $ea $e0 $cb
    ldh a, [rSVBK]                                ; $6af6: $f0 $70
    push af                                       ; $6af8: $f5
    ld a, $02                                     ; $6af9: $3e $02
    ldh [rSVBK], a                                ; $6afb: $e0 $70
    ld de, $d28f                                  ; $6afd: $11 $8f $d2
    ld hl, $d080                                  ; $6b00: $21 $80 $d0
    call Call_000_11f4                            ; $6b03: $cd $f4 $11
    ld de, $d040                                  ; $6b06: $11 $40 $d0
    call Call_000_11f4                            ; $6b09: $cd $f4 $11
    xor a                                         ; $6b0c: $af
    call Call_005_7f74                            ; $6b0d: $cd $74 $7f
    pop af                                        ; $6b10: $f1
    ldh [rSVBK], a                                ; $6b11: $e0 $70
    ld a, $01                                     ; $6b13: $3e $01
    call Call_005_7bd8                            ; $6b15: $cd $d8 $7b
    jp Jump_005_73d9                              ; $6b18: $c3 $d9 $73


    ld a, $01                                     ; $6b1b: $3e $01
    ld [$cbe0], a                                 ; $6b1d: $ea $e0 $cb
    ld a, $08                                     ; $6b20: $3e $08
    ld [$cb17], a                                 ; $6b22: $ea $17 $cb
    ldh a, [rSVBK]                                ; $6b25: $f0 $70
    push af                                       ; $6b27: $f5
    ld a, $02                                     ; $6b28: $3e $02
    ldh [rSVBK], a                                ; $6b2a: $e0 $70
    ld hl, $d28f                                  ; $6b2c: $21 $8f $d2
    ld de, $d000                                  ; $6b2f: $11 $00 $d0
    call Call_000_11f4                            ; $6b32: $cd $f4 $11
    pop af                                        ; $6b35: $f1
    ldh [rSVBK], a                                ; $6b36: $e0 $70
    ld a, $01                                     ; $6b38: $3e $01
    ld e, a                                       ; $6b3a: $5f
    call Call_005_7d4f                            ; $6b3b: $cd $4f $7d
    jp Jump_005_73d9                              ; $6b3e: $c3 $d9 $73


    call Call_000_355e                            ; $6b41: $cd $5e $35
    ld a, $0a                                     ; $6b44: $3e $0a
    ld [$cb17], a                                 ; $6b46: $ea $17 $cb
    ld a, $01                                     ; $6b49: $3e $01
    ld [$cbcd], a                                 ; $6b4b: $ea $cd $cb
    ld a, $07                                     ; $6b4e: $3e $07
    ld [$cbce], a                                 ; $6b50: $ea $ce $cb
    ld a, $30                                     ; $6b53: $3e $30
    call Call_000_2441                            ; $6b55: $cd $41 $24
    jp Jump_005_73d9                              ; $6b58: $c3 $d9 $73


    call Call_000_355e                            ; $6b5b: $cd $5e $35
    ld a, $0a                                     ; $6b5e: $3e $0a
    ld [$cb17], a                                 ; $6b60: $ea $17 $cb
    ld a, $01                                     ; $6b63: $3e $01
    ld [$cbcd], a                                 ; $6b65: $ea $cd $cb
    ld a, $02                                     ; $6b68: $3e $02
    ld [$cbce], a                                 ; $6b6a: $ea $ce $cb
    ld a, $30                                     ; $6b6d: $3e $30
    call Call_000_2441                            ; $6b6f: $cd $41 $24
    jp Jump_005_73d9                              ; $6b72: $c3 $d9 $73


    call Call_000_355e                            ; $6b75: $cd $5e $35
    ld a, $0a                                     ; $6b78: $3e $0a
    ld [$cb17], a                                 ; $6b7a: $ea $17 $cb
    ld a, $05                                     ; $6b7d: $3e $05
    ld [$cbcd], a                                 ; $6b7f: $ea $cd $cb
    ld a, $06                                     ; $6b82: $3e $06
    ld [$cbce], a                                 ; $6b84: $ea $ce $cb
    ld a, $30                                     ; $6b87: $3e $30
    call Call_000_2441                            ; $6b89: $cd $41 $24
    jp Jump_005_73d9                              ; $6b8c: $c3 $d9 $73


    call Call_000_355e                            ; $6b8f: $cd $5e $35
    ld a, $0a                                     ; $6b92: $3e $0a
    ld [$cb17], a                                 ; $6b94: $ea $17 $cb
    ld a, $14                                     ; $6b97: $3e $14
    ld [$cbcd], a                                 ; $6b99: $ea $cd $cb
    ld a, $19                                     ; $6b9c: $3e $19
    ld [$cbce], a                                 ; $6b9e: $ea $ce $cb
    ld a, $30                                     ; $6ba1: $3e $30
    call Call_000_2441                            ; $6ba3: $cd $41 $24
    jp Jump_005_73d9                              ; $6ba6: $c3 $d9 $73


    call Call_000_355e                            ; $6ba9: $cd $5e $35
    ld a, $0a                                     ; $6bac: $3e $0a
    ld [$cb17], a                                 ; $6bae: $ea $17 $cb
    ld a, $31                                     ; $6bb1: $3e $31
    call Call_000_2448                            ; $6bb3: $cd $48 $24
    jp Jump_005_73d9                              ; $6bb6: $c3 $d9 $73


    ld a, $09                                     ; $6bb9: $3e $09
    ld [$cb17], a                                 ; $6bbb: $ea $17 $cb
    ld a, $0e                                     ; $6bbe: $3e $0e
    call Call_000_2441                            ; $6bc0: $cd $41 $24
    jp Jump_005_73d9                              ; $6bc3: $c3 $d9 $73


    ldh a, [rSVBK]                                ; $6bc6: $f0 $70
    push af                                       ; $6bc8: $f5
    ld a, $06                                     ; $6bc9: $3e $06
    ldh [rSVBK], a                                ; $6bcb: $e0 $70
    ld a, $01                                     ; $6bcd: $3e $01
    ld [$d6d3], a                                 ; $6bcf: $ea $d3 $d6
    pop af                                        ; $6bd2: $f1
    ldh [rSVBK], a                                ; $6bd3: $e0 $70
    ld hl, $0174                                  ; $6bd5: $21 $74 $01
    ld a, l                                       ; $6bd8: $7d
    ld [$cbee], a                                 ; $6bd9: $ea $ee $cb
    ld a, h                                       ; $6bdc: $7c
    ld [$cbef], a                                 ; $6bdd: $ea $ef $cb
    ld hl, $0122                                  ; $6be0: $21 $22 $01
    ld a, l                                       ; $6be3: $7d
    ld [$cbf0], a                                 ; $6be4: $ea $f0 $cb
    ld a, h                                       ; $6be7: $7c
    ld [$cbf1], a                                 ; $6be8: $ea $f1 $cb
    ld a, $0a                                     ; $6beb: $3e $0a
    ld [$cb17], a                                 ; $6bed: $ea $17 $cb
    ld a, $2d                                     ; $6bf0: $3e $2d
    call Call_000_2441                            ; $6bf2: $cd $41 $24
    jp Jump_005_73d9                              ; $6bf5: $c3 $d9 $73


    ldh [$c1], a                                  ; $6bf8: $e0 $c1
    ld a, $a9                                     ; $6bfa: $3e $a9
    ldh [$bd], a                                  ; $6bfc: $e0 $bd
    ld a, $6d                                     ; $6bfe: $3e $6d
    ldh [$be], a                                  ; $6c00: $e0 $be
    call Call_000_3441                            ; $6c02: $cd $41 $34
    ld a, [$ccf5]                                 ; $6c05: $fa $f5 $cc
    cp $ff                                        ; $6c08: $fe $ff
    jr nz, jr_005_6c16                            ; $6c0a: $20 $0a

    ld a, [$cdfe]                                 ; $6c0c: $fa $fe $cd
    or a                                          ; $6c0f: $b7
    jr z, jr_005_6c16                             ; $6c10: $28 $04

    ld a, $01                                     ; $6c12: $3e $01
    jr jr_005_6c17                                ; $6c14: $18 $01

jr_005_6c16:
    xor a                                         ; $6c16: $af

jr_005_6c17:
    ldh [$bc], a                                  ; $6c17: $e0 $bc
    ldh a, [rSVBK]                                ; $6c19: $f0 $70
    push af                                       ; $6c1b: $f5
    ld a, $06                                     ; $6c1c: $3e $06
    ldh [rSVBK], a                                ; $6c1e: $e0 $70
    ldh a, [$bc]                                  ; $6c20: $f0 $bc
    ld [$d6d3], a                                 ; $6c22: $ea $d3 $d6
    ldh [$bc], a                                  ; $6c25: $e0 $bc
    pop af                                        ; $6c27: $f1
    ldh [rSVBK], a                                ; $6c28: $e0 $70
    ldh a, [$bc]                                  ; $6c2a: $f0 $bc
    jp Jump_005_73d9                              ; $6c2c: $c3 $d9 $73


    call Call_000_355e                            ; $6c2f: $cd $5e $35
    ld a, $33                                     ; $6c32: $3e $33
    call Call_000_2448                            ; $6c34: $cd $48 $24
    jp Jump_005_73d9                              ; $6c37: $c3 $d9 $73


    call Call_000_355e                            ; $6c3a: $cd $5e $35
    ld a, $37                                     ; $6c3d: $3e $37
    call Call_000_2448                            ; $6c3f: $cd $48 $24
    jp Jump_005_73d9                              ; $6c42: $c3 $d9 $73


    call Call_000_355e                            ; $6c45: $cd $5e $35
    ld a, $0a                                     ; $6c48: $3e $0a
    ld [$cb17], a                                 ; $6c4a: $ea $17 $cb
    ld a, $39                                     ; $6c4d: $3e $39
    call Call_000_2448                            ; $6c4f: $cd $48 $24
    jp Jump_005_73d9                              ; $6c52: $c3 $d9 $73


    ldh a, [rSVBK]                                ; $6c55: $f0 $70
    push af                                       ; $6c57: $f5
    ld a, $06                                     ; $6c58: $3e $06
    ldh [rSVBK], a                                ; $6c5a: $e0 $70
    ld a, $01                                     ; $6c5c: $3e $01
    ld [$d6d3], a                                 ; $6c5e: $ea $d3 $d6
    pop af                                        ; $6c61: $f1
    ldh [rSVBK], a                                ; $6c62: $e0 $70
    call Call_000_355e                            ; $6c64: $cd $5e $35
    ld a, $0a                                     ; $6c67: $3e $0a
    ld [$cb17], a                                 ; $6c69: $ea $17 $cb
    ld a, $2e                                     ; $6c6c: $3e $2e
    call Call_000_2441                            ; $6c6e: $cd $41 $24
    jp Jump_005_73d9                              ; $6c71: $c3 $d9 $73


    ldh a, [rSVBK]                                ; $6c74: $f0 $70
    push af                                       ; $6c76: $f5
    ld a, $06                                     ; $6c77: $3e $06
    ldh [rSVBK], a                                ; $6c79: $e0 $70
    ld a, $01                                     ; $6c7b: $3e $01
    ld [$d6d3], a                                 ; $6c7d: $ea $d3 $d6
    pop af                                        ; $6c80: $f1
    ldh [rSVBK], a                                ; $6c81: $e0 $70
    call Call_000_355e                            ; $6c83: $cd $5e $35
    ld a, $0a                                     ; $6c86: $3e $0a
    ld [$cb17], a                                 ; $6c88: $ea $17 $cb
    ld a, $2c                                     ; $6c8b: $3e $2c
    call Call_000_2441                            ; $6c8d: $cd $41 $24
    jp Jump_005_73d9                              ; $6c90: $c3 $d9 $73


    ld a, $00                                     ; $6c93: $3e $00
    ldh [$de], a                                  ; $6c95: $e0 $de
    ldh [$dd], a                                  ; $6c97: $e0 $dd
    jp Jump_005_73d9                              ; $6c99: $c3 $d9 $73


    ld a, $01                                     ; $6c9c: $3e $01
    ldh [$de], a                                  ; $6c9e: $e0 $de
    ldh [$dd], a                                  ; $6ca0: $e0 $dd
    jp Jump_005_73d9                              ; $6ca2: $c3 $d9 $73


    ldh [$c1], a                                  ; $6ca5: $e0 $c1
    ld a, $9f                                     ; $6ca7: $3e $9f
    ldh [$bd], a                                  ; $6ca9: $e0 $bd
    ld a, $7e                                     ; $6cab: $3e $7e
    ldh [$be], a                                  ; $6cad: $e0 $be
    call Call_000_342c                            ; $6caf: $cd $2c $34
    jp Jump_005_73d9                              ; $6cb2: $c3 $d9 $73


    call Call_005_73d0                            ; $6cb5: $cd $d0 $73
    ld hl, $004c                                  ; $6cb8: $21 $4c $00
    add hl, bc                                    ; $6cbb: $09
    ld a, [hl]                                    ; $6cbc: $7e
    ld [$cd43], a                                 ; $6cbd: $ea $43 $cd
    jp Jump_005_73d9                              ; $6cc0: $c3 $d9 $73


    call Call_005_73d0                            ; $6cc3: $cd $d0 $73
    ld hl, $002d                                  ; $6cc6: $21 $2d $00
    add hl, bc                                    ; $6cc9: $09
    ld a, [hl]                                    ; $6cca: $7e
    res 4, a                                      ; $6ccb: $cb $a7
    res 7, a                                      ; $6ccd: $cb $bf
    res 6, a                                      ; $6ccf: $cb $b7
    ld [hl], a                                    ; $6cd1: $77
    jp Jump_005_73d9                              ; $6cd2: $c3 $d9 $73


    call Call_005_73d0                            ; $6cd5: $cd $d0 $73
    ld hl, $002d                                  ; $6cd8: $21 $2d $00
    add hl, bc                                    ; $6cdb: $09
    ld a, [hl]                                    ; $6cdc: $7e
    set 4, a                                      ; $6cdd: $cb $e7
    set 7, a                                      ; $6cdf: $cb $ff
    ld [hl], a                                    ; $6ce1: $77
    jp Jump_005_73d9                              ; $6ce2: $c3 $d9 $73


Jump_005_6ce5:
    ldh a, [$dc]                                  ; $6ce5: $f0 $dc
    set 4, a                                      ; $6ce7: $cb $e7
    ldh [$dc], a                                  ; $6ce9: $e0 $dc
    ld a, $01                                     ; $6ceb: $3e $01
    ld [$cd4d], a                                 ; $6ced: $ea $4d $cd
    jp Jump_005_73d9                              ; $6cf0: $c3 $d9 $73


    xor a                                         ; $6cf3: $af
    ldh [$dc], a                                  ; $6cf4: $e0 $dc
    ld [$cd4d], a                                 ; $6cf6: $ea $4d $cd
    jp Jump_005_73d9                              ; $6cf9: $c3 $d9 $73


    ld a, d                                       ; $6cfc: $7a
    or a                                          ; $6cfd: $b7
    jr nz, jr_005_6d0b                            ; $6cfe: $20 $0b

    ld a, [$cb04]                                 ; $6d00: $fa $04 $cb
    set 6, a                                      ; $6d03: $cb $f7
    ld [$cb04], a                                 ; $6d05: $ea $04 $cb
    jp Jump_005_73d9                              ; $6d08: $c3 $d9 $73


jr_005_6d0b:
    ld a, [$cb04]                                 ; $6d0b: $fa $04 $cb
    res 6, a                                      ; $6d0e: $cb $b7
    ld [$cb04], a                                 ; $6d10: $ea $04 $cb
    jp Jump_005_73d9                              ; $6d13: $c3 $d9 $73


    ld a, d                                       ; $6d16: $7a
    or a                                          ; $6d17: $b7
    jr nz, jr_005_6d25                            ; $6d18: $20 $0b

    ld a, [$cb04]                                 ; $6d1a: $fa $04 $cb
    set 7, a                                      ; $6d1d: $cb $ff
    ld [$cb04], a                                 ; $6d1f: $ea $04 $cb
    jp Jump_005_73d9                              ; $6d22: $c3 $d9 $73


jr_005_6d25:
    ld a, [$cb04]                                 ; $6d25: $fa $04 $cb
    res 7, a                                      ; $6d28: $cb $bf
    ld [$cb04], a                                 ; $6d2a: $ea $04 $cb
    jp Jump_005_73d9                              ; $6d2d: $c3 $d9 $73


    ld a, d                                       ; $6d30: $7a
    ldh [$c1], a                                  ; $6d31: $e0 $c1
    ld a, $67                                     ; $6d33: $3e $67
    ldh [$bd], a                                  ; $6d35: $e0 $bd
    ld a, $40                                     ; $6d37: $3e $40
    ldh [$be], a                                  ; $6d39: $e0 $be
    call Call_000_3441                            ; $6d3b: $cd $41 $34
    push af                                       ; $6d3e: $f5
    ld a, [$cdd2]                                 ; $6d3f: $fa $d2 $cd
    ld l, a                                       ; $6d42: $6f
    ld h, $00                                     ; $6d43: $26 $00
    pop af                                        ; $6d45: $f1
    push hl                                       ; $6d46: $e5
    ld bc, $5b82                                  ; $6d47: $01 $82 $5b
    ldh [$c1], a                                  ; $6d4a: $e0 $c1
    ld a, $6a                                     ; $6d4c: $3e $6a
    ldh [$bd], a                                  ; $6d4e: $e0 $bd
    ld a, $0f                                     ; $6d50: $3e $0f
    ldh [$be], a                                  ; $6d52: $e0 $be
    call Call_000_3454                            ; $6d54: $cd $54 $34
    pop hl                                        ; $6d57: $e1
    ld bc, $5cea                                  ; $6d58: $01 $ea $5c
    ld de, $d820                                  ; $6d5b: $11 $20 $d8
    ldh [$c1], a                                  ; $6d5e: $e0 $c1
    ld a, $7a                                     ; $6d60: $3e $7a
    ldh [$bd], a                                  ; $6d62: $e0 $bd
    ld a, $0f                                     ; $6d64: $3e $0f
    ldh [$be], a                                  ; $6d66: $e0 $be
    call Call_000_3454                            ; $6d68: $cd $54 $34
    jp Jump_005_73d9                              ; $6d6b: $c3 $d9 $73


    ld a, [$ce01]                                 ; $6d6e: $fa $01 $ce
    or d                                          ; $6d71: $b2
    ld [$ce01], a                                 ; $6d72: $ea $01 $ce
    ld a, $09                                     ; $6d75: $3e $09
    ld [$cb17], a                                 ; $6d77: $ea $17 $cb
    ld bc, $2287                                  ; $6d7a: $01 $87 $22
    ld e, $00                                     ; $6d7d: $1e $00
    ld d, $05                                     ; $6d7f: $16 $05
    ld hl, $1030                                  ; $6d81: $21 $30 $10
    ld a, $17                                     ; $6d84: $3e $17
    call Call_000_395e                            ; $6d86: $cd $5e $39
    xor a                                         ; $6d89: $af
    ldh [$c1], a                                  ; $6d8a: $e0 $c1
    ld a, $26                                     ; $6d8c: $3e $26
    ldh [$bd], a                                  ; $6d8e: $e0 $bd
    ld a, $44                                     ; $6d90: $3e $44
    ldh [$be], a                                  ; $6d92: $e0 $be
    call Call_000_3441                            ; $6d94: $cd $41 $34
    jp Jump_005_73d9                              ; $6d97: $c3 $d9 $73


    ldh [$c1], a                                  ; $6d9a: $e0 $c1
    ld a, $8d                                     ; $6d9c: $3e $8d
    ldh [$bd], a                                  ; $6d9e: $e0 $bd
    ld a, $7e                                     ; $6da0: $3e $7e
    ldh [$be], a                                  ; $6da2: $e0 $be
    call Call_000_343a                            ; $6da4: $cd $3a $34
    ld a, $0a                                     ; $6da7: $3e $0a
    ld [$cb17], a                                 ; $6da9: $ea $17 $cb
    call Call_000_355e                            ; $6dac: $cd $5e $35
    ld a, e                                       ; $6daf: $7b
    ld e, d                                       ; $6db0: $5a
    ld d, a                                       ; $6db1: $57
    ld a, $40                                     ; $6db2: $3e $40
    jp Jump_000_244b                              ; $6db4: $c3 $4b $24


    jp Jump_005_73d9                              ; $6db7: $c3 $d9 $73


    ldh [$c1], a                                  ; $6dba: $e0 $c1
    ld a, $be                                     ; $6dbc: $3e $be
    ldh [$bd], a                                  ; $6dbe: $e0 $bd
    ld a, $7e                                     ; $6dc0: $3e $7e
    ldh [$be], a                                  ; $6dc2: $e0 $be
    call Call_000_342c                            ; $6dc4: $cd $2c $34
    jp Jump_005_73d9                              ; $6dc7: $c3 $d9 $73


    ldh [$c1], a                                  ; $6dca: $e0 $c1
    ld a, $11                                     ; $6dcc: $3e $11
    ldh [$bd], a                                  ; $6dce: $e0 $bd
    ld a, $7f                                     ; $6dd0: $3e $7f
    ldh [$be], a                                  ; $6dd2: $e0 $be
    call Call_000_342c                            ; $6dd4: $cd $2c $34
    jp Jump_005_73d9                              ; $6dd7: $c3 $d9 $73


    ld hl, $cde1                                  ; $6dda: $21 $e1 $cd
    ld a, [hl+]                                   ; $6ddd: $2a
    ld h, [hl]                                    ; $6dde: $66
    ld l, a                                       ; $6ddf: $6f
    ld a, l                                       ; $6de0: $7d
    ld [$cde5], a                                 ; $6de1: $ea $e5 $cd
    ld a, h                                       ; $6de4: $7c
    ld [$cde6], a                                 ; $6de5: $ea $e6 $cd
    ld hl, $cde3                                  ; $6de8: $21 $e3 $cd
    ld a, [hl+]                                   ; $6deb: $2a
    ld h, [hl]                                    ; $6dec: $66
    ld l, a                                       ; $6ded: $6f
    ld a, l                                       ; $6dee: $7d
    ld [$cde7], a                                 ; $6def: $ea $e7 $cd
    ld a, h                                       ; $6df2: $7c
    ld [$cde8], a                                 ; $6df3: $ea $e8 $cd
    ldh a, [rSVBK]                                ; $6df6: $f0 $70
    push af                                       ; $6df8: $f5
    ld a, $06                                     ; $6df9: $3e $06
    ldh [rSVBK], a                                ; $6dfb: $e0 $70
    ld a, $2f                                     ; $6dfd: $3e $2f
    ldh [$d8], a                                  ; $6dff: $e0 $d8
    ld [$d6d1], a                                 ; $6e01: $ea $d1 $d6
    ld a, $35                                     ; $6e04: $3e $35
    ldh [$da], a                                  ; $6e06: $e0 $da
    ld [$d6d2], a                                 ; $6e08: $ea $d2 $d6
    pop af                                        ; $6e0b: $f1
    ldh [rSVBK], a                                ; $6e0c: $e0 $70
    ld a, $07                                     ; $6e0e: $3e $07
    ldh [$d9], a                                  ; $6e10: $e0 $d9
    xor a                                         ; $6e12: $af
    ld [$c0bb], a                                 ; $6e13: $ea $bb $c0
    ld a, $01                                     ; $6e16: $3e $01
    ld [$c0c1], a                                 ; $6e18: $ea $c1 $c0
    ret                                           ; $6e1b: $c9


    ld l, e                                       ; $6e1c: $6b
    ld h, d                                       ; $6e1d: $62
    ldh [$c1], a                                  ; $6e1e: $e0 $c1
    ld a, $66                                     ; $6e20: $3e $66
    ldh [$bd], a                                  ; $6e22: $e0 $bd
    ld a, $60                                     ; $6e24: $3e $60
    ldh [$be], a                                  ; $6e26: $e0 $be
    call Call_000_3448                            ; $6e28: $cd $48 $34
    ld a, $09                                     ; $6e2b: $3e $09
    ld [$cb17], a                                 ; $6e2d: $ea $17 $cb
    ld b, d                                       ; $6e30: $42
    ld c, e                                       ; $6e31: $4b
    ld d, $01                                     ; $6e32: $16 $01
    ld a, $13                                     ; $6e34: $3e $13
    call Call_000_393e                            ; $6e36: $cd $3e $39
    xor a                                         ; $6e39: $af
    ld hl, $102d                                  ; $6e3a: $21 $2d $10
    ldh [$c1], a                                  ; $6e3d: $e0 $c1
    ld a, $26                                     ; $6e3f: $3e $26
    ldh [$bd], a                                  ; $6e41: $e0 $bd
    ld a, $44                                     ; $6e43: $3e $44
    ldh [$be], a                                  ; $6e45: $e0 $be
    call Call_000_3441                            ; $6e47: $cd $41 $34
    jp Jump_005_73d9                              ; $6e4a: $c3 $d9 $73


    ld h, d                                       ; $6e4d: $62
    ld l, e                                       ; $6e4e: $6b
    push hl                                       ; $6e4f: $e5
    ld hl, $cdfc                                  ; $6e50: $21 $fc $cd
    ld a, [hl+]                                   ; $6e53: $2a
    ld d, [hl]                                    ; $6e54: $56
    ld e, a                                       ; $6e55: $5f
    pop hl                                        ; $6e56: $e1
    call Call_000_3132                            ; $6e57: $cd $32 $31
    ld hl, $cdfc                                  ; $6e5a: $21 $fc $cd
    ld [hl], e                                    ; $6e5d: $73
    inc hl                                        ; $6e5e: $23
    ld [hl], d                                    ; $6e5f: $72
    jp Jump_005_73d9                              ; $6e60: $c3 $d9 $73


    ldh [$bc], a                                  ; $6e63: $e0 $bc
    ldh a, [rSVBK]                                ; $6e65: $f0 $70
    push af                                       ; $6e67: $f5
    ld a, $06                                     ; $6e68: $3e $06
    ldh [rSVBK], a                                ; $6e6a: $e0 $70
    ldh a, [$bc]                                  ; $6e6c: $f0 $bc
    ld hl, $d5d0                                  ; $6e6e: $21 $d0 $d5
    ld a, [hl+]                                   ; $6e71: $2a
    ld h, [hl]                                    ; $6e72: $66
    ld l, a                                       ; $6e73: $6f
    add hl, de                                    ; $6e74: $19
    ld a, l                                       ; $6e75: $7d
    ld [$d5d0], a                                 ; $6e76: $ea $d0 $d5
    ld a, h                                       ; $6e79: $7c
    ld [$d5d1], a                                 ; $6e7a: $ea $d1 $d5
    ld hl, $d5d2                                  ; $6e7d: $21 $d2 $d5
    ld [hl], e                                    ; $6e80: $73
    inc hl                                        ; $6e81: $23
    ld [hl], d                                    ; $6e82: $72
    ld a, [$cb03]                                 ; $6e83: $fa $03 $cb
    inc a                                         ; $6e86: $3c
    ld [$d5d4], a                                 ; $6e87: $ea $d4 $d5
    ldh [$bc], a                                  ; $6e8a: $e0 $bc
    pop af                                        ; $6e8c: $f1
    ldh [rSVBK], a                                ; $6e8d: $e0 $70
    ldh a, [$bc]                                  ; $6e8f: $f0 $bc
    call Call_000_355e                            ; $6e91: $cd $5e $35
    ld a, $0a                                     ; $6e94: $3e $0a
    ld [$cb17], a                                 ; $6e96: $ea $17 $cb
    ld a, $23                                     ; $6e99: $3e $23
    jp Jump_000_2441                              ; $6e9b: $c3 $41 $24


    ret                                           ; $6e9e: $c9


    ldh [$bc], a                                  ; $6e9f: $e0 $bc
    ldh a, [rSVBK]                                ; $6ea1: $f0 $70
    push af                                       ; $6ea3: $f5
    ld a, $06                                     ; $6ea4: $3e $06
    ldh [rSVBK], a                                ; $6ea6: $e0 $70
    ldh a, [$bc]                                  ; $6ea8: $f0 $bc
    push de                                       ; $6eaa: $d5
    ld h, d                                       ; $6eab: $62
    ld l, e                                       ; $6eac: $6b
    ld a, [$d5d0]                                 ; $6ead: $fa $d0 $d5
    ld e, a                                       ; $6eb0: $5f
    ld a, [$d5d1]                                 ; $6eb1: $fa $d1 $d5
    ld d, a                                       ; $6eb4: $57
    call Call_000_3132                            ; $6eb5: $cd $32 $31
    ld hl, $d5d0                                  ; $6eb8: $21 $d0 $d5
    ld [hl], e                                    ; $6ebb: $73
    inc hl                                        ; $6ebc: $23
    ld [hl], d                                    ; $6ebd: $72
    pop de                                        ; $6ebe: $d1
    ld hl, $d5d2                                  ; $6ebf: $21 $d2 $d5
    ld [hl], e                                    ; $6ec2: $73
    inc hl                                        ; $6ec3: $23
    ld [hl], d                                    ; $6ec4: $72
    ld a, [$cb03]                                 ; $6ec5: $fa $03 $cb
    set 7, a                                      ; $6ec8: $cb $ff
    inc a                                         ; $6eca: $3c
    ld [$d5d4], a                                 ; $6ecb: $ea $d4 $d5
    ldh [$bc], a                                  ; $6ece: $e0 $bc
    pop af                                        ; $6ed0: $f1
    ldh [rSVBK], a                                ; $6ed1: $e0 $70
    ldh a, [$bc]                                  ; $6ed3: $f0 $bc
    call Call_000_355e                            ; $6ed5: $cd $5e $35
    ld a, $0a                                     ; $6ed8: $3e $0a
    ld [$cb17], a                                 ; $6eda: $ea $17 $cb
    ld a, $23                                     ; $6edd: $3e $23
    jp Jump_000_2441                              ; $6edf: $c3 $41 $24


    ret                                           ; $6ee2: $c9


    push de                                       ; $6ee3: $d5
    ld a, $09                                     ; $6ee4: $3e $09
    ld [$cb17], a                                 ; $6ee6: $ea $17 $cb
    ld b, d                                       ; $6ee9: $42
    ld c, e                                       ; $6eea: $4b
    ld d, $01                                     ; $6eeb: $16 $01
    xor a                                         ; $6eed: $af
    ld hl, $219d                                  ; $6eee: $21 $9d $21
    ldh [$c1], a                                  ; $6ef1: $e0 $c1
    ld a, $26                                     ; $6ef3: $3e $26
    ldh [$bd], a                                  ; $6ef5: $e0 $bd
    ld a, $44                                     ; $6ef7: $3e $44
    ldh [$be], a                                  ; $6ef9: $e0 $be
    call Call_000_3441                            ; $6efb: $cd $41 $34
    pop de                                        ; $6efe: $d1
    ld hl, $cde5                                  ; $6eff: $21 $e5 $cd
    ld a, [hl+]                                   ; $6f02: $2a
    ld h, [hl]                                    ; $6f03: $66
    ld l, a                                       ; $6f04: $6f
    add hl, de                                    ; $6f05: $19
    ld a, [$cde1]                                 ; $6f06: $fa $e1 $cd
    ld e, a                                       ; $6f09: $5f
    ld a, [$cde2]                                 ; $6f0a: $fa $e2 $cd
    ld d, a                                       ; $6f0d: $57
    rst $10                                       ; $6f0e: $d7
    jr c, jr_005_6f1c                             ; $6f0f: $38 $0b

    ld a, l                                       ; $6f11: $7d
    ld [$cde5], a                                 ; $6f12: $ea $e5 $cd
    ld a, h                                       ; $6f15: $7c
    ld [$cde6], a                                 ; $6f16: $ea $e6 $cd
    jp Jump_005_73d9                              ; $6f19: $c3 $d9 $73


jr_005_6f1c:
    ld a, e                                       ; $6f1c: $7b
    ld [$cde5], a                                 ; $6f1d: $ea $e5 $cd
    ld a, d                                       ; $6f20: $7a
    ld [$cde6], a                                 ; $6f21: $ea $e6 $cd
    jp Jump_005_73d9                              ; $6f24: $c3 $d9 $73


    push de                                       ; $6f27: $d5
    ld h, d                                       ; $6f28: $62
    ld l, e                                       ; $6f29: $6b
    ld a, [$cde5]                                 ; $6f2a: $fa $e5 $cd
    ld e, a                                       ; $6f2d: $5f
    ld a, [$cde6]                                 ; $6f2e: $fa $e6 $cd
    ld d, a                                       ; $6f31: $57
    call Call_000_3132                            ; $6f32: $cd $32 $31
    jr c, jr_005_6f69                             ; $6f35: $38 $32

    ld hl, $cde5                                  ; $6f37: $21 $e5 $cd
    ld [hl], e                                    ; $6f3a: $73
    inc hl                                        ; $6f3b: $23
    ld [hl], d                                    ; $6f3c: $72
    ldh a, [rSVBK]                                ; $6f3d: $f0 $70
    push af                                       ; $6f3f: $f5
    ld a, $06                                     ; $6f40: $3e $06
    ldh [rSVBK], a                                ; $6f42: $e0 $70
    xor a                                         ; $6f44: $af
    ld [$d6d3], a                                 ; $6f45: $ea $d3 $d6
    pop af                                        ; $6f48: $f1
    ldh [rSVBK], a                                ; $6f49: $e0 $70
    pop de                                        ; $6f4b: $d1
    ld a, $09                                     ; $6f4c: $3e $09
    ld [$cb17], a                                 ; $6f4e: $ea $17 $cb
    ld b, d                                       ; $6f51: $42
    ld c, e                                       ; $6f52: $4b
    ld d, $01                                     ; $6f53: $16 $01
    xor a                                         ; $6f55: $af
    ld hl, $219a                                  ; $6f56: $21 $9a $21
    ldh [$c1], a                                  ; $6f59: $e0 $c1
    ld a, $26                                     ; $6f5b: $3e $26
    ldh [$bd], a                                  ; $6f5d: $e0 $bd
    ld a, $44                                     ; $6f5f: $3e $44
    ldh [$be], a                                  ; $6f61: $e0 $be
    call Call_000_3441                            ; $6f63: $cd $41 $34
    jp Jump_005_73d9                              ; $6f66: $c3 $d9 $73


jr_005_6f69:
    pop de                                        ; $6f69: $d1
    ld a, $09                                     ; $6f6a: $3e $09
    ld [$cb17], a                                 ; $6f6c: $ea $17 $cb
    ld b, d                                       ; $6f6f: $42
    ld c, e                                       ; $6f70: $4b
    ld d, $01                                     ; $6f71: $16 $01
    xor a                                         ; $6f73: $af
    ld hl, $219a                                  ; $6f74: $21 $9a $21
    ldh [$c1], a                                  ; $6f77: $e0 $c1
    ld a, $26                                     ; $6f79: $3e $26
    ldh [$bd], a                                  ; $6f7b: $e0 $bd
    ld a, $44                                     ; $6f7d: $3e $44
    ldh [$be], a                                  ; $6f7f: $e0 $be
    call Call_000_3441                            ; $6f81: $cd $41 $34
    xor a                                         ; $6f84: $af
    ld [$cde5], a                                 ; $6f85: $ea $e5 $cd
    ld [$cde6], a                                 ; $6f88: $ea $e6 $cd
    ldh a, [rSVBK]                                ; $6f8b: $f0 $70
    push af                                       ; $6f8d: $f5
    ld a, $06                                     ; $6f8e: $3e $06
    ldh [rSVBK], a                                ; $6f90: $e0 $70
    ld a, $01                                     ; $6f92: $3e $01
    ld [$d6d3], a                                 ; $6f94: $ea $d3 $d6
    pop af                                        ; $6f97: $f1
    ldh [rSVBK], a                                ; $6f98: $e0 $70
    jp Jump_005_73d9                              ; $6f9a: $c3 $d9 $73


    ldh [$bc], a                                  ; $6f9d: $e0 $bc
    ldh a, [rSVBK]                                ; $6f9f: $f0 $70
    push af                                       ; $6fa1: $f5
    ld a, $06                                     ; $6fa2: $3e $06
    ldh [rSVBK], a                                ; $6fa4: $e0 $70
    ldh a, [$bc]                                  ; $6fa6: $f0 $bc
    ld hl, $d5d5                                  ; $6fa8: $21 $d5 $d5
    ld c, d                                       ; $6fab: $4a
    ld b, $00                                     ; $6fac: $06 $00
    add hl, bc                                    ; $6fae: $09
    ld a, e                                       ; $6faf: $7b
    call Call_000_275f                            ; $6fb0: $cd $5f $27
    ld [hl], a                                    ; $6fb3: $77
    ldh [$bc], a                                  ; $6fb4: $e0 $bc
    pop af                                        ; $6fb6: $f1
    ldh [rSVBK], a                                ; $6fb7: $e0 $70
    ldh a, [$bc]                                  ; $6fb9: $f0 $bc
    jp Jump_005_73d9                              ; $6fbb: $c3 $d9 $73


    push de                                       ; $6fbe: $d5
    ld hl, $cde1                                  ; $6fbf: $21 $e1 $cd
    ld a, [hl+]                                   ; $6fc2: $2a
    ld d, [hl]                                    ; $6fc3: $56
    ld e, a                                       ; $6fc4: $5f
    ld hl, $cde5                                  ; $6fc5: $21 $e5 $cd
    ld a, [hl+]                                   ; $6fc8: $2a
    ld h, [hl]                                    ; $6fc9: $66
    ld l, a                                       ; $6fca: $6f
    call Call_000_3132                            ; $6fcb: $cd $32 $31
    ld a, d                                       ; $6fce: $7a
    or a                                          ; $6fcf: $b7
    jr nz, jr_005_6fda                            ; $6fd0: $20 $08

    ld a, e                                       ; $6fd2: $7b
    or a                                          ; $6fd3: $b7
    jr nz, jr_005_6fda                            ; $6fd4: $20 $04

    ld c, $00                                     ; $6fd6: $0e $00
    jr jr_005_6fdc                                ; $6fd8: $18 $02

jr_005_6fda:
    ld c, $01                                     ; $6fda: $0e $01

jr_005_6fdc:
    pop de                                        ; $6fdc: $d1
    ldh [$bc], a                                  ; $6fdd: $e0 $bc
    ldh a, [rSVBK]                                ; $6fdf: $f0 $70
    push af                                       ; $6fe1: $f5
    ld a, $06                                     ; $6fe2: $3e $06
    ldh [rSVBK], a                                ; $6fe4: $e0 $70
    ldh a, [$bc]                                  ; $6fe6: $f0 $bc
    ld hl, $d5d5                                  ; $6fe8: $21 $d5 $d5
    ld e, d                                       ; $6feb: $5a
    ld d, $00                                     ; $6fec: $16 $00
    add hl, de                                    ; $6fee: $19
    ld [hl], c                                    ; $6fef: $71
    ldh [$bc], a                                  ; $6ff0: $e0 $bc
    pop af                                        ; $6ff2: $f1
    ldh [rSVBK], a                                ; $6ff3: $e0 $70
    ldh a, [$bc]                                  ; $6ff5: $f0 $bc
    jp Jump_005_73d9                              ; $6ff7: $c3 $d9 $73


    push de                                       ; $6ffa: $d5
    ld a, $1a                                     ; $6ffb: $3e $1a
    call Call_000_395e                            ; $6ffd: $cd $5e $39
    ld hl, $cde1                                  ; $7000: $21 $e1 $cd
    ld a, [hl+]                                   ; $7003: $2a
    ld h, [hl]                                    ; $7004: $66
    ld l, a                                       ; $7005: $6f
    ld a, l                                       ; $7006: $7d
    ld [$cde5], a                                 ; $7007: $ea $e5 $cd
    ld a, h                                       ; $700a: $7c
    ld [$cde6], a                                 ; $700b: $ea $e6 $cd
    ld hl, $cde3                                  ; $700e: $21 $e3 $cd
    ld a, [hl+]                                   ; $7011: $2a
    ld h, [hl]                                    ; $7012: $66
    ld l, a                                       ; $7013: $6f
    ld a, l                                       ; $7014: $7d
    ld [$cde7], a                                 ; $7015: $ea $e7 $cd
    ld a, h                                       ; $7018: $7c
    ld [$cde8], a                                 ; $7019: $ea $e8 $cd
    pop de                                        ; $701c: $d1
    ld a, d                                       ; $701d: $7a
    or a                                          ; $701e: $b7
    jp z, Jump_005_73d9                           ; $701f: $ca $d9 $73

    ld a, $09                                     ; $7022: $3e $09
    ld [$cb17], a                                 ; $7024: $ea $17 $cb
    ld d, $00                                     ; $7027: $16 $00
    xor a                                         ; $7029: $af
    ld hl, $1033                                  ; $702a: $21 $33 $10
    ldh [$c1], a                                  ; $702d: $e0 $c1
    ld a, $26                                     ; $702f: $3e $26
    ldh [$bd], a                                  ; $7031: $e0 $bd
    ld a, $44                                     ; $7033: $3e $44
    ldh [$be], a                                  ; $7035: $e0 $be
    call Call_000_3441                            ; $7037: $cd $41 $34
    jp Jump_005_73d9                              ; $703a: $c3 $d9 $73


    call Call_005_73d0                            ; $703d: $cd $d0 $73
    ld hl, $002b                                  ; $7040: $21 $2b $00
    add hl, bc                                    ; $7043: $09
    set 7, [hl]                                   ; $7044: $cb $fe
    jp Jump_005_73d9                              ; $7046: $c3 $d9 $73


    ld bc, $c320                                  ; $7049: $01 $20 $c3
    ld hl, $002b                                  ; $704c: $21 $2b $00
    add hl, bc                                    ; $704f: $09
    set 2, [hl]                                   ; $7050: $cb $d6
    ld a, $01                                     ; $7052: $3e $01
    ld [$cd44], a                                 ; $7054: $ea $44 $cd
    jp Jump_005_73d9                              ; $7057: $c3 $d9 $73


    ld bc, $c320                                  ; $705a: $01 $20 $c3
    ld hl, $002b                                  ; $705d: $21 $2b $00
    add hl, bc                                    ; $7060: $09
    res 2, [hl]                                   ; $7061: $cb $96
    res 7, [hl]                                   ; $7063: $cb $be
    xor a                                         ; $7065: $af
    ld [$cd44], a                                 ; $7066: $ea $44 $cd
    jp Jump_005_73d9                              ; $7069: $c3 $d9 $73


    ld a, d                                       ; $706c: $7a
    ld [$cc05], a                                 ; $706d: $ea $05 $cc
    call Call_000_355e                            ; $7070: $cd $5e $35
    ld a, $19                                     ; $7073: $3e $19
    jp Jump_000_2448                              ; $7075: $c3 $48 $24


    call Call_005_73d0                            ; $7078: $cd $d0 $73
    ld hl, $002b                                  ; $707b: $21 $2b $00
    add hl, bc                                    ; $707e: $09
    set 0, [hl]                                   ; $707f: $cb $c6
    jp Jump_005_73d9                              ; $7081: $c3 $d9 $73


    call Call_005_73d0                            ; $7084: $cd $d0 $73
    ld hl, $002b                                  ; $7087: $21 $2b $00
    add hl, bc                                    ; $708a: $09
    res 0, [hl]                                   ; $708b: $cb $86
    jp Jump_005_73d9                              ; $708d: $c3 $d9 $73


    jp Jump_005_73d9                              ; $7090: $c3 $d9 $73


    ld h, d                                       ; $7093: $62
    ld l, e                                       ; $7094: $6b
    ld de, $0040                                  ; $7095: $11 $40 $00
    ld a, l                                       ; $7098: $7d
    sbc e                                         ; $7099: $9b
    ld l, a                                       ; $709a: $6f
    ld a, h                                       ; $709b: $7c
    sbc d                                         ; $709c: $9a
    ld h, a                                       ; $709d: $67
    jr c, jr_005_70aa                             ; $709e: $38 $0a

    ld a, l                                       ; $70a0: $7d
    ld [$c274], a                                 ; $70a1: $ea $74 $c2
    ld a, h                                       ; $70a4: $7c
    ld [$c275], a                                 ; $70a5: $ea $75 $c2
    jr jr_005_70b5                                ; $70a8: $18 $0b

jr_005_70aa:
    ld hl, $0000                                  ; $70aa: $21 $00 $00
    ld a, l                                       ; $70ad: $7d
    ld [$c274], a                                 ; $70ae: $ea $74 $c2
    ld a, h                                       ; $70b1: $7c
    ld [$c275], a                                 ; $70b2: $ea $75 $c2

jr_005_70b5:
    ld hl, $c274                                  ; $70b5: $21 $74 $c2
    ld de, $ff92                                  ; $70b8: $11 $92 $ff
    call Call_000_1251                            ; $70bb: $cd $51 $12
    ld a, $03                                     ; $70be: $3e $03
    ldh [$dc], a                                  ; $70c0: $e0 $dc
    jp Jump_005_73d9                              ; $70c2: $c3 $d9 $73


    push de                                       ; $70c5: $d5
    ld hl, $caff                                  ; $70c6: $21 $ff $ca
    ld a, [hl+]                                   ; $70c9: $2a
    ld h, [hl]                                    ; $70ca: $66
    ld l, a                                       ; $70cb: $6f
    ld de, $0040                                  ; $70cc: $11 $40 $00
    ld a, l                                       ; $70cf: $7d
    sbc e                                         ; $70d0: $9b
    ld l, a                                       ; $70d1: $6f
    ld a, h                                       ; $70d2: $7c
    sbc d                                         ; $70d3: $9a
    ld h, a                                       ; $70d4: $67
    jr c, jr_005_70e1                             ; $70d5: $38 $0a

    ld a, l                                       ; $70d7: $7d
    ld [$c274], a                                 ; $70d8: $ea $74 $c2
    ld a, h                                       ; $70db: $7c
    ld [$c275], a                                 ; $70dc: $ea $75 $c2
    jr jr_005_70ec                                ; $70df: $18 $0b

jr_005_70e1:
    ld hl, $0000                                  ; $70e1: $21 $00 $00
    ld a, l                                       ; $70e4: $7d
    ld [$c274], a                                 ; $70e5: $ea $74 $c2
    ld a, h                                       ; $70e8: $7c
    ld [$c275], a                                 ; $70e9: $ea $75 $c2

jr_005_70ec:
    ld hl, $c274                                  ; $70ec: $21 $74 $c2
    ld de, $ff92                                  ; $70ef: $11 $92 $ff
    call Call_000_1251                            ; $70f2: $cd $51 $12
    pop hl                                        ; $70f5: $e1
    ld de, $0048                                  ; $70f6: $11 $48 $00
    ld a, l                                       ; $70f9: $7d
    sbc e                                         ; $70fa: $9b
    ld l, a                                       ; $70fb: $6f
    ld a, h                                       ; $70fc: $7c
    sbc d                                         ; $70fd: $9a
    ld h, a                                       ; $70fe: $67
    jr c, jr_005_710b                             ; $70ff: $38 $0a

    ld a, l                                       ; $7101: $7d
    ld [$c272], a                                 ; $7102: $ea $72 $c2
    ld a, h                                       ; $7105: $7c
    ld [$c273], a                                 ; $7106: $ea $73 $c2
    jr jr_005_7116                                ; $7109: $18 $0b

jr_005_710b:
    ld hl, $0000                                  ; $710b: $21 $00 $00
    ld a, l                                       ; $710e: $7d
    ld [$c272], a                                 ; $710f: $ea $72 $c2
    ld a, h                                       ; $7112: $7c
    ld [$c273], a                                 ; $7113: $ea $73 $c2

jr_005_7116:
    ld hl, $c272                                  ; $7116: $21 $72 $c2
    ld de, $ff90                                  ; $7119: $11 $90 $ff
    call Call_000_1251                            ; $711c: $cd $51 $12
    jp Jump_005_6ce5                              ; $711f: $c3 $e5 $6c


    ld hl, $cdfc                                  ; $7122: $21 $fc $cd
    ld a, [hl+]                                   ; $7125: $2a
    ld h, [hl]                                    ; $7126: $66
    ld l, a                                       ; $7127: $6f
    call RST_10                                   ; $7128: $cd $10 $00
    jr z, jr_005_712f                             ; $712b: $28 $02

    jr nc, jr_005_7133                            ; $712d: $30 $04

jr_005_712f:
    ld a, $01                                     ; $712f: $3e $01
    jr jr_005_7134                                ; $7131: $18 $01

jr_005_7133:
    xor a                                         ; $7133: $af

jr_005_7134:
    ldh [$bc], a                                  ; $7134: $e0 $bc
    ldh a, [rSVBK]                                ; $7136: $f0 $70
    push af                                       ; $7138: $f5
    ld a, $06                                     ; $7139: $3e $06
    ldh [rSVBK], a                                ; $713b: $e0 $70
    ldh a, [$bc]                                  ; $713d: $f0 $bc
    ld [$d6d3], a                                 ; $713f: $ea $d3 $d6
    ldh [$bc], a                                  ; $7142: $e0 $bc
    pop af                                        ; $7144: $f1
    ldh [rSVBK], a                                ; $7145: $e0 $70
    ldh a, [$bc]                                  ; $7147: $f0 $bc
    jp Jump_005_73d9                              ; $7149: $c3 $d9 $73


    ldh [$bc], a                                  ; $714c: $e0 $bc
    ldh a, [rSVBK]                                ; $714e: $f0 $70
    push af                                       ; $7150: $f5
    ld a, $06                                     ; $7151: $3e $06
    ldh [rSVBK], a                                ; $7153: $e0 $70
    ldh a, [$bc]                                  ; $7155: $f0 $bc
    ld a, d                                       ; $7157: $7a
    ldh [$c1], a                                  ; $7158: $e0 $c1
    ld a, $9e                                     ; $715a: $3e $9e
    ldh [$bd], a                                  ; $715c: $e0 $bd
    ld a, $68                                     ; $715e: $3e $68
    ldh [$be], a                                  ; $7160: $e0 $be
    call Call_000_3441                            ; $7162: $cd $41 $34
    ld hl, $d6d3                                  ; $7165: $21 $d3 $d6
    ld [hl], a                                    ; $7168: $77
    ldh [$bc], a                                  ; $7169: $e0 $bc
    pop af                                        ; $716b: $f1
    ldh [rSVBK], a                                ; $716c: $e0 $70
    ldh a, [$bc]                                  ; $716e: $f0 $bc
    jp Jump_005_73d9                              ; $7170: $c3 $d9 $73


    push de                                       ; $7173: $d5
    ld a, d                                       ; $7174: $7a
    cp $0c                                        ; $7175: $fe $0c
    jr nc, jr_005_71b2                            ; $7177: $30 $39

    ld h, d                                       ; $7179: $62
    ld l, $03                                     ; $717a: $2e $03
    call Call_000_00b9                            ; $717c: $cd $b9 $00
    ld a, h                                       ; $717f: $7c
    ldh [$c1], a                                  ; $7180: $e0 $c1
    ld a, $fb                                     ; $7182: $3e $fb
    ldh [$bd], a                                  ; $7184: $e0 $bd
    ld a, $61                                     ; $7186: $3e $61
    ldh [$be], a                                  ; $7188: $e0 $be
    call Call_000_3448                            ; $718a: $cd $48 $34
    ld a, $09                                     ; $718d: $3e $09
    ld [$cb17], a                                 ; $718f: $ea $17 $cb
    pop de                                        ; $7192: $d1
    ld bc, $001c                                  ; $7193: $01 $1c $00
    ld e, d                                       ; $7196: $5a
    ld d, $04                                     ; $7197: $16 $04
    ld hl, $225d                                  ; $7199: $21 $5d $22
    ld a, $0d                                     ; $719c: $3e $0d
    call Call_000_395e                            ; $719e: $cd $5e $39
    xor a                                         ; $71a1: $af
    ldh [$c1], a                                  ; $71a2: $e0 $c1
    ld a, $26                                     ; $71a4: $3e $26
    ldh [$bd], a                                  ; $71a6: $e0 $bd
    ld a, $44                                     ; $71a8: $3e $44
    ldh [$be], a                                  ; $71aa: $e0 $be
    call Call_000_3441                            ; $71ac: $cd $41 $34
    jp Jump_005_73d9                              ; $71af: $c3 $d9 $73


jr_005_71b2:
    ld a, d                                       ; $71b2: $7a
    cp $11                                        ; $71b3: $fe $11
    jr nc, jr_005_71e2                            ; $71b5: $30 $2b

    ld hl, $cdfe                                  ; $71b7: $21 $fe $cd
    call Call_000_3245                            ; $71ba: $cd $45 $32
    ld a, $09                                     ; $71bd: $3e $09
    ld [$cb17], a                                 ; $71bf: $ea $17 $cb
    pop de                                        ; $71c2: $d1
    ld bc, $001c                                  ; $71c3: $01 $1c $00
    ld e, d                                       ; $71c6: $5a
    ld d, $04                                     ; $71c7: $16 $04
    ld hl, $225d                                  ; $71c9: $21 $5d $22
    ld a, $0d                                     ; $71cc: $3e $0d
    call Call_000_395e                            ; $71ce: $cd $5e $39
    xor a                                         ; $71d1: $af
    ldh [$c1], a                                  ; $71d2: $e0 $c1
    ld a, $26                                     ; $71d4: $3e $26
    ldh [$bd], a                                  ; $71d6: $e0 $bd
    ld a, $44                                     ; $71d8: $3e $44
    ldh [$be], a                                  ; $71da: $e0 $be
    call Call_000_3441                            ; $71dc: $cd $41 $34
    jp Jump_005_73d9                              ; $71df: $c3 $d9 $73


jr_005_71e2:
    pop de                                        ; $71e2: $d1
    jp Jump_005_73d9                              ; $71e3: $c3 $d9 $73


    ld b, $04                                     ; $71e6: $06 $04

jr_005_71e8:
    ldh [$c1], a                                  ; $71e8: $e0 $c1
    ld a, $c8                                     ; $71ea: $3e $c8
    ldh [$bd], a                                  ; $71ec: $e0 $bd
    ld a, $68                                     ; $71ee: $3e $68
    ldh [$be], a                                  ; $71f0: $e0 $be
    call Call_000_3441                            ; $71f2: $cd $41 $34
    cp d                                          ; $71f5: $ba
    jr z, jr_005_7217                             ; $71f6: $28 $1f

    dec b                                         ; $71f8: $05
    ld a, b                                       ; $71f9: $78
    cp $ff                                        ; $71fa: $fe $ff
    jr nz, jr_005_71e8                            ; $71fc: $20 $ea

    ldh [$bc], a                                  ; $71fe: $e0 $bc
    ldh a, [rSVBK]                                ; $7200: $f0 $70
    push af                                       ; $7202: $f5
    ld a, $06                                     ; $7203: $3e $06
    ldh [rSVBK], a                                ; $7205: $e0 $70
    ldh a, [$bc]                                  ; $7207: $f0 $bc
    xor a                                         ; $7209: $af
    ld [$d6d3], a                                 ; $720a: $ea $d3 $d6
    ldh [$bc], a                                  ; $720d: $e0 $bc
    pop af                                        ; $720f: $f1
    ldh [rSVBK], a                                ; $7210: $e0 $70
    ldh a, [$bc]                                  ; $7212: $f0 $bc
    jp Jump_005_73d9                              ; $7214: $c3 $d9 $73


jr_005_7217:
    ldh [$bc], a                                  ; $7217: $e0 $bc
    ldh a, [rSVBK]                                ; $7219: $f0 $70
    push af                                       ; $721b: $f5
    ld a, $06                                     ; $721c: $3e $06
    ldh [rSVBK], a                                ; $721e: $e0 $70
    ldh a, [$bc]                                  ; $7220: $f0 $bc
    ld a, $01                                     ; $7222: $3e $01
    ld [$d6d3], a                                 ; $7224: $ea $d3 $d6
    ldh [$bc], a                                  ; $7227: $e0 $bc
    pop af                                        ; $7229: $f1
    ldh [rSVBK], a                                ; $722a: $e0 $70
    ldh a, [$bc]                                  ; $722c: $f0 $bc
    jp Jump_005_73d9                              ; $722e: $c3 $d9 $73


    ld a, [$cd58]                                 ; $7231: $fa $58 $cd
    or a                                          ; $7234: $b7
    jp z, Jump_005_73d9                           ; $7235: $ca $d9 $73

    ld a, $08                                     ; $7238: $3e $08
    ld [$cb17], a                                 ; $723a: $ea $17 $cb
    ret                                           ; $723d: $c9


    ldh a, [rSVBK]                                ; $723e: $f0 $70
    push af                                       ; $7240: $f5
    ld a, $06                                     ; $7241: $3e $06
    ldh [rSVBK], a                                ; $7243: $e0 $70
    ldh a, [$d9]                                  ; $7245: $f0 $d9
    ld [$d6d3], a                                 ; $7247: $ea $d3 $d6
    pop af                                        ; $724a: $f1
    ldh [rSVBK], a                                ; $724b: $e0 $70
    jp Jump_005_73d9                              ; $724d: $c3 $d9 $73


    call Call_005_73d0                            ; $7250: $cd $d0 $73
    ld hl, $004b                                  ; $7253: $21 $4b $00
    add hl, bc                                    ; $7256: $09
    ld [hl], d                                    ; $7257: $72
    jp Jump_005_73d9                              ; $7258: $c3 $d9 $73


    ldh [$bc], a                                  ; $725b: $e0 $bc
    ldh a, [rSVBK]                                ; $725d: $f0 $70
    push af                                       ; $725f: $f5
    ld a, $06                                     ; $7260: $3e $06
    ldh [rSVBK], a                                ; $7262: $e0 $70
    ldh a, [$bc]                                  ; $7264: $f0 $bc
    ldh a, [$d8]                                  ; $7266: $f0 $d8
    ld [$d6d1], a                                 ; $7268: $ea $d1 $d6
    ld a, e                                       ; $726b: $7b
    ldh [$d8], a                                  ; $726c: $e0 $d8
    ld a, d                                       ; $726e: $7a
    ldh [$d9], a                                  ; $726f: $e0 $d9
    ldh [$c1], a                                  ; $7271: $e0 $c1
    ld a, $66                                     ; $7273: $3e $66
    ldh [$bd], a                                  ; $7275: $e0 $bd
    ld a, $5a                                     ; $7277: $3e $5a
    ldh [$be], a                                  ; $7279: $e0 $be
    call Call_000_342c                            ; $727b: $cd $2c $34
    ldh [$da], a                                  ; $727e: $e0 $da
    ld [$d6d2], a                                 ; $7280: $ea $d2 $d6
    pop af                                        ; $7283: $f1
    ldh [rSVBK], a                                ; $7284: $e0 $70
    xor a                                         ; $7286: $af
    ld hl, $c32f                                  ; $7287: $21 $2f $c3
    ld [hl+], a                                   ; $728a: $22
    ld [hl+], a                                   ; $728b: $22
    ld [hl+], a                                   ; $728c: $22
    ld [hl+], a                                   ; $728d: $22
    ld [hl+], a                                   ; $728e: $22
    ld [hl], a                                    ; $728f: $77
    ld a, $01                                     ; $7290: $3e $01
    ldh [$de], a                                  ; $7292: $e0 $de
    ld a, $01                                     ; $7294: $3e $01
    ld [$c0c1], a                                 ; $7296: $ea $c1 $c0
    ldh a, [$d9]                                  ; $7299: $f0 $d9
    ldh [$c1], a                                  ; $729b: $e0 $c1
    ld a, $6e                                     ; $729d: $3e $6e
    ldh [$bd], a                                  ; $729f: $e0 $bd
    ld a, $5a                                     ; $72a1: $3e $5a
    ldh [$be], a                                  ; $72a3: $e0 $be
    call Call_000_342c                            ; $72a5: $cd $2c $34
    ldh a, [$d9]                                  ; $72a8: $f0 $d9
    ldh [$c1], a                                  ; $72aa: $e0 $c1
    ld a, $8f                                     ; $72ac: $3e $8f
    ldh [$bd], a                                  ; $72ae: $e0 $bd
    ld a, $5a                                     ; $72b0: $3e $5a
    ldh [$be], a                                  ; $72b2: $e0 $be
    call Call_000_342c                            ; $72b4: $cd $2c $34
    cp $02                                        ; $72b7: $fe $02
    jr z, jr_005_72c0                             ; $72b9: $28 $05

    cp $03                                        ; $72bb: $fe $03
    jr z, jr_005_72c9                             ; $72bd: $28 $0a

    ret                                           ; $72bf: $c9


jr_005_72c0:
    xor a                                         ; $72c0: $af
    ld [$c0c1], a                                 ; $72c1: $ea $c1 $c0
    ld a, $34                                     ; $72c4: $3e $34
    jp Jump_000_2448                              ; $72c6: $c3 $48 $24


jr_005_72c9:
    xor a                                         ; $72c9: $af
    ld [$c0c1], a                                 ; $72ca: $ea $c1 $c0
    ld a, $35                                     ; $72cd: $3e $35
    jp Jump_000_2448                              ; $72cf: $c3 $48 $24


    ldh a, [rSVBK]                                ; $72d2: $f0 $70
    push af                                       ; $72d4: $f5
    ld a, $06                                     ; $72d5: $3e $06
    ldh [rSVBK], a                                ; $72d7: $e0 $70
    ld a, d                                       ; $72d9: $7a
    ld [$d6c7], a                                 ; $72da: $ea $c7 $d6
    pop af                                        ; $72dd: $f1
    ldh [rSVBK], a                                ; $72de: $e0 $70
    ret                                           ; $72e0: $c9


    ldh [$bc], a                                  ; $72e1: $e0 $bc
    ldh a, [rSVBK]                                ; $72e3: $f0 $70
    push af                                       ; $72e5: $f5
    ld a, $06                                     ; $72e6: $3e $06
    ldh [rSVBK], a                                ; $72e8: $e0 $70
    ldh a, [$bc]                                  ; $72ea: $f0 $bc
    ld a, [$ce01]                                 ; $72ec: $fa $01 $ce
    and d                                         ; $72ef: $a2
    jr z, jr_005_72fd                             ; $72f0: $28 $0b

    ld a, $01                                     ; $72f2: $3e $01
    ld [$d6d3], a                                 ; $72f4: $ea $d3 $d6
    pop af                                        ; $72f7: $f1
    ldh [rSVBK], a                                ; $72f8: $e0 $70
    jp Jump_005_73d9                              ; $72fa: $c3 $d9 $73


jr_005_72fd:
    xor a                                         ; $72fd: $af
    ld [$d6d3], a                                 ; $72fe: $ea $d3 $d6
    pop af                                        ; $7301: $f1
    ldh [rSVBK], a                                ; $7302: $e0 $70
    jp Jump_005_73d9                              ; $7304: $c3 $d9 $73


    ld a, d                                       ; $7307: $7a
    ldh [$c1], a                                  ; $7308: $e0 $c1
    ld a, $af                                     ; $730a: $3e $af
    ldh [$bd], a                                  ; $730c: $e0 $bd
    ld a, $4c                                     ; $730e: $3e $4c
    ldh [$be], a                                  ; $7310: $e0 $be
    call Call_000_3441                            ; $7312: $cd $41 $34
    ldh [$bc], a                                  ; $7315: $e0 $bc
    ldh a, [rSVBK]                                ; $7317: $f0 $70
    push af                                       ; $7319: $f5
    ld a, $06                                     ; $731a: $3e $06
    ldh [rSVBK], a                                ; $731c: $e0 $70
    ldh a, [$bc]                                  ; $731e: $f0 $bc
    ld [$d6d3], a                                 ; $7320: $ea $d3 $d6
    pop af                                        ; $7323: $f1
    ldh [rSVBK], a                                ; $7324: $e0 $70
    jp Jump_005_73d9                              ; $7326: $c3 $d9 $73


    ldh a, [rSVBK]                                ; $7329: $f0 $70
    push af                                       ; $732b: $f5
    ld a, $06                                     ; $732c: $3e $06
    ldh [rSVBK], a                                ; $732e: $e0 $70
    ld b, $04                                     ; $7330: $06 $04
    ld c, $04                                     ; $7332: $0e $04
    ld hl, $d5c8                                  ; $7334: $21 $c8 $d5
    ld a, [hl+]                                   ; $7337: $2a
    ld d, [hl]                                    ; $7338: $56
    ld e, a                                       ; $7339: $5f
    dec hl                                        ; $733a: $2b
    push hl                                       ; $733b: $e5

jr_005_733c:
    dec b                                         ; $733c: $05
    jr z, jr_005_734e                             ; $733d: $28 $0f

    pop hl                                        ; $733f: $e1
    inc hl                                        ; $7340: $23
    inc hl                                        ; $7341: $23
    push hl                                       ; $7342: $e5
    ld a, [hl+]                                   ; $7343: $2a
    ld h, [hl]                                    ; $7344: $66
    ld l, a                                       ; $7345: $6f
    rst $10                                       ; $7346: $d7
    jr nc, jr_005_733c                            ; $7347: $30 $f3

    ld d, h                                       ; $7349: $54
    ld e, l                                       ; $734a: $5d
    ld c, b                                       ; $734b: $48
    jr jr_005_733c                                ; $734c: $18 $ee

jr_005_734e:
    pop hl                                        ; $734e: $e1
    ld a, c                                       ; $734f: $79
    cp $04                                        ; $7350: $fe $04
    jr z, jr_005_7360                             ; $7352: $28 $0c

    cp $03                                        ; $7354: $fe $03
    jr z, jr_005_7367                             ; $7356: $28 $0f

    cp $02                                        ; $7358: $fe $02
    jr z, jr_005_736b                             ; $735a: $28 $0f

    cp $01                                        ; $735c: $fe $01
    jr z, jr_005_7363                             ; $735e: $28 $03

jr_005_7360:
    xor a                                         ; $7360: $af
    jr jr_005_736d                                ; $7361: $18 $0a

jr_005_7363:
    ld a, $01                                     ; $7363: $3e $01
    jr jr_005_736d                                ; $7365: $18 $06

jr_005_7367:
    ld a, $02                                     ; $7367: $3e $02
    jr jr_005_736d                                ; $7369: $18 $02

jr_005_736b:
    ld a, $03                                     ; $736b: $3e $03

jr_005_736d:
    ld [$d6d3], a                                 ; $736d: $ea $d3 $d6
    pop af                                        ; $7370: $f1
    ldh [rSVBK], a                                ; $7371: $e0 $70
    jp Jump_005_73d9                              ; $7373: $c3 $d9 $73


    ld hl, $c346                                  ; $7376: $21 $46 $c3
    ld de, $0098                                  ; $7379: $11 $98 $00
    ld [hl], e                                    ; $737c: $73
    inc hl                                        ; $737d: $23
    ld [hl], d                                    ; $737e: $72
    jr jr_005_73d9                                ; $737f: $18 $58

    ldh a, [rSVBK]                                ; $7381: $f0 $70
    push af                                       ; $7383: $f5
    ld a, $06                                     ; $7384: $3e $06
    ldh [rSVBK], a                                ; $7386: $e0 $70
    dec d                                         ; $7388: $15
    ld a, d                                       ; $7389: $7a
    ld hl, $5f22                                  ; $738a: $21 $22 $5f
    call Call_000_317d                            ; $738d: $cd $7d $31
    ld a, [$ce03]                                 ; $7390: $fa $03 $ce
    rst $08                                       ; $7393: $cf
    ld hl, $d570                                  ; $7394: $21 $70 $d5
    call Call_000_3245                            ; $7397: $cd $45 $32
    pop af                                        ; $739a: $f1
    ldh [rSVBK], a                                ; $739b: $e0 $70
    ld a, $09                                     ; $739d: $3e $09
    ld [$cb17], a                                 ; $739f: $ea $17 $cb
    ld bc, $106c                                  ; $73a2: $01 $6c $10
    ld e, $6f                                     ; $73a5: $1e $6f
    ld d, $02                                     ; $73a7: $16 $02
    ld hl, $1030                                  ; $73a9: $21 $30 $10
    ld a, $0d                                     ; $73ac: $3e $0d
    call Call_000_395e                            ; $73ae: $cd $5e $39
    xor a                                         ; $73b1: $af
    ldh [$c1], a                                  ; $73b2: $e0 $c1
    ld a, $26                                     ; $73b4: $3e $26
    ldh [$bd], a                                  ; $73b6: $e0 $bd
    ld a, $44                                     ; $73b8: $3e $44
    ldh [$be], a                                  ; $73ba: $e0 $be
    call Call_000_3441                            ; $73bc: $cd $41 $34
    jr jr_005_73d9                                ; $73bf: $18 $18

    ldh [$c1], a                                  ; $73c1: $e0 $c1
    ld a, $a1                                     ; $73c3: $3e $a1
    ldh [$bd], a                                  ; $73c5: $e0 $bd
    ld a, $6a                                     ; $73c7: $3e $6a
    ldh [$be], a                                  ; $73c9: $e0 $be
    call Call_000_3441                            ; $73cb: $cd $41 $34
    jr jr_005_73d9                                ; $73ce: $18 $09

Call_005_73d0:
    ld a, [$cb05]                                 ; $73d0: $fa $05 $cb
    ld c, a                                       ; $73d3: $4f
    ld a, [$cb06]                                 ; $73d4: $fa $06 $cb
    ld b, a                                       ; $73d7: $47
    ret                                           ; $73d8: $c9


Jump_005_73d9:
jr_005_73d9:
    ld a, [$cb04]                                 ; $73d9: $fa $04 $cb
    rla                                           ; $73dc: $17
    ret nc                                        ; $73dd: $d0

    jp Jump_005_5fe1                              ; $73de: $c3 $e1 $5f


Call_005_73e1:
    push bc                                       ; $73e1: $c5
    push hl                                       ; $73e2: $e5
    push hl                                       ; $73e3: $e5
    push af                                       ; $73e4: $f5
    ld a, [$cb16]                                 ; $73e5: $fa $16 $cb
    ld c, a                                       ; $73e8: $4f
    ld b, $00                                     ; $73e9: $06 $00
    ld hl, $cb07                                  ; $73eb: $21 $07 $cb
    add hl, bc                                    ; $73ee: $09
    pop af                                        ; $73ef: $f1
    pop bc                                        ; $73f0: $c1
    ld [hl+], a                                   ; $73f1: $22
    ld [hl], c                                    ; $73f2: $71
    inc hl                                        ; $73f3: $23
    ld [hl], b                                    ; $73f4: $70
    ld a, [$cb16]                                 ; $73f5: $fa $16 $cb
    inc a                                         ; $73f8: $3c
    inc a                                         ; $73f9: $3c
    inc a                                         ; $73fa: $3c
    ld [$cb16], a                                 ; $73fb: $ea $16 $cb
    pop hl                                        ; $73fe: $e1
    pop bc                                        ; $73ff: $c1
    ret                                           ; $7400: $c9


Call_005_7401:
    push bc                                       ; $7401: $c5
    ld a, [$cb16]                                 ; $7402: $fa $16 $cb
    dec a                                         ; $7405: $3d
    dec a                                         ; $7406: $3d
    dec a                                         ; $7407: $3d
    ld [$cb16], a                                 ; $7408: $ea $16 $cb
    ld c, a                                       ; $740b: $4f
    ld b, $00                                     ; $740c: $06 $00
    ld hl, $cb07                                  ; $740e: $21 $07 $cb
    add hl, bc                                    ; $7411: $09
    ld a, [hl+]                                   ; $7412: $2a
    push af                                       ; $7413: $f5
    ld a, [hl+]                                   ; $7414: $2a
    ld h, [hl]                                    ; $7415: $66
    ld l, a                                       ; $7416: $6f
    pop af                                        ; $7417: $f1
    pop bc                                        ; $7418: $c1
    ret                                           ; $7419: $c9


Call_005_741a:
    ld a, [bc]                                    ; $741a: $0a
    cp $01                                        ; $741b: $fe $01
    jr z, jr_005_743b                             ; $741d: $28 $1c

    ld d, a                                       ; $741f: $57
    ld hl, $5e69                                  ; $7420: $21 $69 $5e
    ld a, [hl+]                                   ; $7423: $2a
    ld e, a                                       ; $7424: $5f

jr_005_7425:
    ld a, [hl+]                                   ; $7425: $2a
    cp d                                          ; $7426: $ba
    jr z, jr_005_743d                             ; $7427: $28 $14

    dec e                                         ; $7429: $1d
    jr nz, jr_005_7425                            ; $742a: $20 $f9

    ld hl, $5e84                                  ; $742c: $21 $84 $5e
    ld a, [hl+]                                   ; $742f: $2a
    ld e, a                                       ; $7430: $5f

jr_005_7431:
    ld a, [hl+]                                   ; $7431: $2a
    cp d                                          ; $7432: $ba
    jr z, jr_005_7440                             ; $7433: $28 $0b

    dec e                                         ; $7435: $1d
    jr nz, jr_005_7431                            ; $7436: $20 $f9

    ld a, $03                                     ; $7438: $3e $03
    ret                                           ; $743a: $c9


jr_005_743b:
    xor a                                         ; $743b: $af
    ret                                           ; $743c: $c9


jr_005_743d:
    ld a, $01                                     ; $743d: $3e $01
    ret                                           ; $743f: $c9


jr_005_7440:
    ld a, $02                                     ; $7440: $3e $02
    ret                                           ; $7442: $c9


    cp $01                                        ; $7443: $fe $01
    jr z, jr_005_7453                             ; $7445: $28 $0c

    cp $02                                        ; $7447: $fe $02
    jr z, jr_005_7457                             ; $7449: $28 $0c

    cp $03                                        ; $744b: $fe $03
    jr z, jr_005_745b                             ; $744d: $28 $0c

    ld a, $01                                     ; $744f: $3e $01
    jr jr_005_745d                                ; $7451: $18 $0a

jr_005_7453:
    ld a, $00                                     ; $7453: $3e $00
    jr jr_005_745d                                ; $7455: $18 $06

jr_005_7457:
    ld a, $01                                     ; $7457: $3e $01
    jr jr_005_745d                                ; $7459: $18 $02

jr_005_745b:
    ld a, $00                                     ; $745b: $3e $00

jr_005_745d:
    ld e, a                                       ; $745d: $5f
    ld hl, $002c                                  ; $745e: $21 $2c $00
    add hl, bc                                    ; $7461: $09
    ld a, [hl]                                    ; $7462: $7e
    and $f8                                       ; $7463: $e6 $f8
    or e                                          ; $7465: $b3
    ld [hl], a                                    ; $7466: $77
    ret                                           ; $7467: $c9


Jump_005_7468:
    ld a, [$cb17]                                 ; $7468: $fa $17 $cb
    cp $06                                        ; $746b: $fe $06
    jr z, jr_005_747d                             ; $746d: $28 $0e

    ld a, $06                                     ; $746f: $3e $06
    ld [$cb17], a                                 ; $7471: $ea $17 $cb
    ld a, d                                       ; $7474: $7a
    ld [$cb1b], a                                 ; $7475: $ea $1b $cb
    ld a, e                                       ; $7478: $7b
    ld [$cb1c], a                                 ; $7479: $ea $1c $cb
    ret                                           ; $747c: $c9


jr_005_747d:
    ld hl, $cb1b                                  ; $747d: $21 $1b $cb
    ld a, [hl+]                                   ; $7480: $2a
    ld e, [hl]                                    ; $7481: $5e
    ld d, a                                       ; $7482: $57
    or e                                          ; $7483: $b3
    jr z, jr_005_748b                             ; $7484: $28 $05

    dec de                                        ; $7486: $1b
    ld a, e                                       ; $7487: $7b
    or d                                          ; $7488: $b2
    jr nz, jr_005_749a                            ; $7489: $20 $0f

jr_005_748b:
    ld a, $01                                     ; $748b: $3e $01
    ld [$cb17], a                                 ; $748d: $ea $17 $cb
    call Call_005_73d0                            ; $7490: $cd $d0 $73
    call Call_000_2e8a                            ; $7493: $cd $8a $2e
    ld d, a                                       ; $7496: $57
    jp Jump_005_65ef                              ; $7497: $c3 $ef $65


jr_005_749a:
    ld a, d                                       ; $749a: $7a
    ld [$cb1b], a                                 ; $749b: $ea $1b $cb
    ld a, e                                       ; $749e: $7b
    ld [$cb1c], a                                 ; $749f: $ea $1c $cb
    ret                                           ; $74a2: $c9


    ld bc, $8021                                  ; $74a3: $01 $21 $80
    nop                                           ; $74a6: $00
    nop                                           ; $74a7: $00
    nop                                           ; $74a8: $00
    xor d                                         ; $74a9: $aa
    inc h                                         ; $74aa: $24
    ld bc, $0002                                  ; $74ab: $01 $02 $00
    ld bc, $0201                                  ; $74ae: $01 $01 $02
    inc bc                                        ; $74b1: $03
    inc b                                         ; $74b2: $04
    dec b                                         ; $74b3: $05
    ld b, $07                                     ; $74b4: $06 $07
    ld [$2109], sp                                ; $74b6: $08 $09 $21
    and e                                         ; $74b9: $a3
    ld [hl], h                                    ; $74ba: $74
    jp Jump_000_2837                              ; $74bb: $c3 $37 $28


    ld a, $03                                     ; $74be: $3e $03
    ldh [$c1], a                                  ; $74c0: $e0 $c1
    ld a, $05                                     ; $74c2: $3e $05
    ldh [$bd], a                                  ; $74c4: $e0 $bd
    ld a, $53                                     ; $74c6: $3e $53
    ldh [$be], a                                  ; $74c8: $e0 $be
    call Call_000_3448                            ; $74ca: $cd $48 $34
    ld a, $22                                     ; $74cd: $3e $22
    call Call_000_395e                            ; $74cf: $cd $5e $39
    ld hl, $ffb8                                  ; $74d2: $21 $b8 $ff
    ld [hl], $00                                  ; $74d5: $36 $00
    inc hl                                        ; $74d7: $23
    ld [hl], $00                                  ; $74d8: $36 $00
    ld a, $88                                     ; $74da: $3e $88
    ldh [$c1], a                                  ; $74dc: $e0 $c1
    ld a, $d6                                     ; $74de: $3e $d6
    ldh [$bd], a                                  ; $74e0: $e0 $bd
    ld a, $11                                     ; $74e2: $3e $11
    ldh [$be], a                                  ; $74e4: $e0 $be
    call Call_000_3454                            ; $74e6: $cd $54 $34
    ld a, $af                                     ; $74e9: $3e $af
    ldh [$c1], a                                  ; $74eb: $e0 $c1
    ld a, $d6                                     ; $74ed: $3e $d6
    ldh [$bd], a                                  ; $74ef: $e0 $bd
    ld a, $11                                     ; $74f1: $3e $11
    ldh [$be], a                                  ; $74f3: $e0 $be
    call Call_000_3454                            ; $74f5: $cd $54 $34
    ld a, $8c                                     ; $74f8: $3e $8c
    ldh [$c1], a                                  ; $74fa: $e0 $c1
    ld a, $d6                                     ; $74fc: $3e $d6
    ldh [$bd], a                                  ; $74fe: $e0 $bd
    ld a, $11                                     ; $7500: $3e $11
    ldh [$be], a                                  ; $7502: $e0 $be
    call Call_000_3454                            ; $7504: $cd $54 $34
    ld hl, $ffb8                                  ; $7507: $21 $b8 $ff
    ld [hl], $00                                  ; $750a: $36 $00
    inc hl                                        ; $750c: $23
    ld [hl], $00                                  ; $750d: $36 $00
    ld a, $8a                                     ; $750f: $3e $8a
    ldh [$c1], a                                  ; $7511: $e0 $c1
    ld a, $d2                                     ; $7513: $3e $d2
    ldh [$bd], a                                  ; $7515: $e0 $bd
    ld a, $11                                     ; $7517: $3e $11
    ldh [$be], a                                  ; $7519: $e0 $be
    call Call_000_3454                            ; $751b: $cd $54 $34
    ld a, $8b                                     ; $751e: $3e $8b
    ldh [$c1], a                                  ; $7520: $e0 $c1
    ld a, $d2                                     ; $7522: $3e $d2
    ldh [$bd], a                                  ; $7524: $e0 $bd
    ld a, $11                                     ; $7526: $3e $11
    ldh [$be], a                                  ; $7528: $e0 $be
    call Call_000_3454                            ; $752a: $cd $54 $34
    ld a, $8d                                     ; $752d: $3e $8d
    ldh [$c1], a                                  ; $752f: $e0 $c1
    ld a, $d2                                     ; $7531: $3e $d2
    ldh [$bd], a                                  ; $7533: $e0 $bd
    ld a, $11                                     ; $7535: $3e $11
    ldh [$be], a                                  ; $7537: $e0 $be
    call Call_000_3454                            ; $7539: $cd $54 $34
    ld a, $08                                     ; $753c: $3e $08
    ld hl, $5fd2                                  ; $753e: $21 $d2 $5f
    ldh [$c1], a                                  ; $7541: $e0 $c1
    ld a, $0f                                     ; $7543: $3e $0f
    ldh [$bd], a                                  ; $7545: $e0 $bd
    ld a, $25                                     ; $7547: $3e $25
    ldh [$be], a                                  ; $7549: $e0 $be
    call Call_000_3454                            ; $754b: $cd $54 $34
    xor a                                         ; $754e: $af
    ld [$cbc5], a                                 ; $754f: $ea $c5 $cb
    ld [$cbc4], a                                 ; $7552: $ea $c4 $cb
    ld [$cbc5], a                                 ; $7555: $ea $c5 $cb
    ld [$cbc6], a                                 ; $7558: $ea $c6 $cb
    ld [$cbc7], a                                 ; $755b: $ea $c7 $cb
    ld hl, $cbc6                                  ; $755e: $21 $c6 $cb
    ld [hl], $f2                                  ; $7561: $36 $f2
    inc hl                                        ; $7563: $23
    ld [hl], $75                                  ; $7564: $36 $75
    ld bc, $000a                                  ; $7566: $01 $0a $00
    ld hl, $cb2a                                  ; $7569: $21 $2a $cb
    call Call_000_112e                            ; $756c: $cd $2e $11
    ld hl, $cbba                                  ; $756f: $21 $ba $cb
    ld bc, $000a                                  ; $7572: $01 $0a $00
    call Call_000_112e                            ; $7575: $cd $2e $11
    ld a, $00                                     ; $7578: $3e $00
    ld [$cbba], a                                 ; $757a: $ea $ba $cb
    ld [$cbbc], a                                 ; $757d: $ea $bc $cb
    ld a, $02                                     ; $7580: $3e $02
    ld [$cbbb], a                                 ; $7582: $ea $bb $cb
    ld a, $80                                     ; $7585: $3e $80
    ld [$cbbd], a                                 ; $7587: $ea $bd $cb
    ld hl, $7a53                                  ; $758a: $21 $53 $7a
    ldh [$c1], a                                  ; $758d: $e0 $c1
    ld a, $6d                                     ; $758f: $3e $6d
    ldh [$bd], a                                  ; $7591: $e0 $bd
    ld a, $7c                                     ; $7593: $3e $7c
    ldh [$be], a                                  ; $7595: $e0 $be
    call Call_000_343a                            ; $7597: $cd $3a $34
    xor a                                         ; $759a: $af
    ldh [$9b], a                                  ; $759b: $e0 $9b
    ld a, $88                                     ; $759d: $3e $88
    call Call_000_03a0                            ; $759f: $cd $a0 $03
    ld hl, $cbbe                                  ; $75a2: $21 $be $cb
    ld [hl], e                                    ; $75a5: $73
    inc hl                                        ; $75a6: $23
    ld [hl], d                                    ; $75a7: $72
    ld a, $af                                     ; $75a8: $3e $af
    call Call_000_03a0                            ; $75aa: $cd $a0 $03
    ld a, $01                                     ; $75ad: $3e $01
    ldh [$9b], a                                  ; $75af: $e0 $9b
    ld a, $88                                     ; $75b1: $3e $88
    call Call_000_03a0                            ; $75b3: $cd $a0 $03
    ld hl, $cbc0                                  ; $75b6: $21 $c0 $cb
    ld [hl], e                                    ; $75b9: $73
    inc hl                                        ; $75ba: $23
    ld [hl], d                                    ; $75bb: $72
    ld a, $af                                     ; $75bc: $3e $af
    call Call_000_03a0                            ; $75be: $cd $a0 $03
    ld hl, $cbc2                                  ; $75c1: $21 $c2 $cb
    ld [hl], e                                    ; $75c4: $73
    inc hl                                        ; $75c5: $23
    ld [hl], d                                    ; $75c6: $72
    ld bc, $0001                                  ; $75c7: $01 $01 $00
    ld de, $0064                                  ; $75ca: $11 $64 $00
    jp Jump_000_30ea                              ; $75cd: $c3 $ea $30


    ldh [$c1], a                                  ; $75d0: $e0 $c1
    ld a, $86                                     ; $75d2: $3e $86
    ldh [$bd], a                                  ; $75d4: $e0 $bd
    ld a, $4f                                     ; $75d6: $3e $4f
    ldh [$be], a                                  ; $75d8: $e0 $be
    call Call_000_3448                            ; $75da: $cd $48 $34
    call Call_005_7639                            ; $75dd: $cd $39 $76
    call Call_005_766e                            ; $75e0: $cd $6e $76
    ldh a, [$cc]                                  ; $75e3: $f0 $cc
    cp $3e                                        ; $75e5: $fe $3e
    ret nz                                        ; $75e7: $c0

    ldh a, [$a5]                                  ; $75e8: $f0 $a5
    bit 1, a                                      ; $75ea: $cb $4f
    ret z                                         ; $75ec: $c8

    ld a, $3e                                     ; $75ed: $3e $3e
    jp Jump_000_2448                              ; $75ef: $c3 $48 $24


    ld a, [$cbc5]                                 ; $75f2: $fa $c5 $cb
    ld c, a                                       ; $75f5: $4f
    ld hl, $cb2a                                  ; $75f6: $21 $2a $cb
    cp $09                                        ; $75f9: $fe $09
    jr nc, jr_005_7615                            ; $75fb: $30 $18

    add l                                         ; $75fd: $85
    ld l, a                                       ; $75fe: $6f
    ld a, $00                                     ; $75ff: $3e $00
    adc h                                         ; $7601: $8c
    ld h, a                                       ; $7602: $67
    ld e, l                                       ; $7603: $5d
    ld d, h                                       ; $7604: $54
    ld hl, $74af                                  ; $7605: $21 $af $74
    ld a, c                                       ; $7608: $79
    add l                                         ; $7609: $85
    ld l, a                                       ; $760a: $6f
    ld a, $00                                     ; $760b: $3e $00
    adc h                                         ; $760d: $8c
    ld h, a                                       ; $760e: $67
    ld b, [hl]                                    ; $760f: $46
    ld a, [de]                                    ; $7610: $1a
    add b                                         ; $7611: $80
    ld [de], a                                    ; $7612: $12
    jr jr_005_761e                                ; $7613: $18 $09

jr_005_7615:
    sub $09                                       ; $7615: $d6 $09
    add l                                         ; $7617: $85
    ld l, a                                       ; $7618: $6f
    ld a, $00                                     ; $7619: $3e $00
    adc h                                         ; $761b: $8c
    ld h, a                                       ; $761c: $67
    ld a, [hl]                                    ; $761d: $7e

jr_005_761e:
    ld b, a                                       ; $761e: $47

jr_005_761f:
    ldh a, [rSTAT]                                ; $761f: $f0 $41
    and $03                                       ; $7621: $e6 $03
    jr z, jr_005_761f                             ; $7623: $28 $fa

jr_005_7625:
    ldh a, [rSTAT]                                ; $7625: $f0 $41
    and $03                                       ; $7627: $e6 $03
    jr nz, jr_005_7625                            ; $7629: $20 $fa

    ld a, b                                       ; $762b: $78
    ldh [rSCX], a                                 ; $762c: $e0 $43
    inc c                                         ; $762e: $0c
    ld a, c                                       ; $762f: $79
    sub $12                                       ; $7630: $d6 $12
    jr z, jr_005_7635                             ; $7632: $28 $01

    ld a, c                                       ; $7634: $79

jr_005_7635:
    ld [$cbc5], a                                 ; $7635: $ea $c5 $cb
    ret                                           ; $7638: $c9


Call_005_7639:
    ld a, [$cbba]                                 ; $7639: $fa $ba $cb
    ld hl, $cbbc                                  ; $763c: $21 $bc $cb
    cp [hl]                                       ; $763f: $be
    ret z                                         ; $7640: $c8

    ld [hl], a                                    ; $7641: $77
    ldh [$f0], a                                  ; $7642: $e0 $f0
    add $18                                       ; $7644: $c6 $18
    and $1f                                       ; $7646: $e6 $1f
    ld hl, $d880                                  ; $7648: $21 $80 $d8
    rst $08                                       ; $764b: $cf
    ld e, l                                       ; $764c: $5d
    ld d, h                                       ; $764d: $54
    ld a, $08                                     ; $764e: $3e $08
    ldh [$f2], a                                  ; $7650: $e0 $f2
    ld a, $05                                     ; $7652: $3e $05
    ldh [$f3], a                                  ; $7654: $e0 $f3
    xor a                                         ; $7656: $af
    ldh [$f1], a                                  ; $7657: $e0 $f1
    ld a, $22                                     ; $7659: $3e $22
    ld bc, $0000                                  ; $765b: $01 $00 $00
    ld hl, $537b                                  ; $765e: $21 $7b $53
    ldh [$c1], a                                  ; $7661: $e0 $c1
    ld a, $2a                                     ; $7663: $3e $2a
    ldh [$bd], a                                  ; $7665: $e0 $bd
    ld a, $33                                     ; $7667: $3e $33
    ldh [$be], a                                  ; $7669: $e0 $be
    jp Jump_000_3454                              ; $766b: $c3 $54 $34


Call_005_766e:
    call Call_000_30fc                            ; $766e: $cd $fc $30
    ret nz                                        ; $7671: $c0

    xor a                                         ; $7672: $af
    ldh [$9b], a                                  ; $7673: $e0 $9b
    ld a, $04                                     ; $7675: $3e $04
    call Call_000_2722                            ; $7677: $cd $22 $27
    add $8a                                       ; $767a: $c6 $8a
    call Call_000_03a0                            ; $767c: $cd $a0 $03
    ld a, $3c                                     ; $767f: $3e $3c
    call Call_000_2722                            ; $7681: $cd $22 $27
    ld de, $003c                                  ; $7684: $11 $3c $00
    add e                                         ; $7687: $83
    ld e, a                                       ; $7688: $5f
    ld a, $00                                     ; $7689: $3e $00
    adc d                                         ; $768b: $8a
    ld d, a                                       ; $768c: $57
    jp Jump_000_30ea                              ; $768d: $c3 $ea $30


    ld bc, $802b                                  ; $7690: $01 $2b $80
    nop                                           ; $7693: $00
    nop                                           ; $7694: $00
    nop                                           ; $7695: $00
    xor d                                         ; $7696: $aa
    inc h                                         ; $7697: $24
    ld bc, $0002                                  ; $7698: $01 $02 $00
    ld bc, $0200                                  ; $769b: $01 $00 $02
    ld hl, $7690                                  ; $769e: $21 $90 $76
    jp Jump_000_2837                              ; $76a1: $c3 $37 $28


    ld a, $00                                     ; $76a4: $3e $00
    ldh [$c1], a                                  ; $76a6: $e0 $c1
    ld a, $05                                     ; $76a8: $3e $05
    ldh [$bd], a                                  ; $76aa: $e0 $bd
    ld a, $53                                     ; $76ac: $3e $53
    ldh [$be], a                                  ; $76ae: $e0 $be
    call Call_000_3448                            ; $76b0: $cd $48 $34
    ld a, $22                                     ; $76b3: $3e $22
    call Call_000_395e                            ; $76b5: $cd $5e $39
    ld hl, $cb29                                  ; $76b8: $21 $29 $cb
    ld bc, $0014                                  ; $76bb: $01 $14 $00
    call Call_000_112e                            ; $76be: $cd $2e $11
    ld hl, $cbba                                  ; $76c1: $21 $ba $cb
    ld bc, $000a                                  ; $76c4: $01 $0a $00
    call Call_000_112e                            ; $76c7: $cd $2e $11
    ld hl, $ffb8                                  ; $76ca: $21 $b8 $ff
    ld [hl], $00                                  ; $76cd: $36 $00
    inc hl                                        ; $76cf: $23
    ld [hl], $00                                  ; $76d0: $36 $00
    ld a, $88                                     ; $76d2: $3e $88
    ldh [$c1], a                                  ; $76d4: $e0 $c1
    ld a, $d6                                     ; $76d6: $3e $d6
    ldh [$bd], a                                  ; $76d8: $e0 $bd
    ld a, $11                                     ; $76da: $3e $11
    ldh [$be], a                                  ; $76dc: $e0 $be
    call Call_000_3454                            ; $76de: $cd $54 $34
    ld a, $89                                     ; $76e1: $3e $89
    ldh [$c1], a                                  ; $76e3: $e0 $c1
    ld a, $d6                                     ; $76e5: $3e $d6
    ldh [$bd], a                                  ; $76e7: $e0 $bd
    ld a, $11                                     ; $76e9: $3e $11
    ldh [$be], a                                  ; $76eb: $e0 $be
    call Call_000_3454                            ; $76ed: $cd $54 $34
    ld a, $8c                                     ; $76f0: $3e $8c
    ldh [$c1], a                                  ; $76f2: $e0 $c1
    ld a, $d6                                     ; $76f4: $3e $d6
    ldh [$bd], a                                  ; $76f6: $e0 $bd
    ld a, $11                                     ; $76f8: $3e $11
    ldh [$be], a                                  ; $76fa: $e0 $be
    call Call_000_3454                            ; $76fc: $cd $54 $34
    ld hl, $ffb8                                  ; $76ff: $21 $b8 $ff
    ld [hl], $00                                  ; $7702: $36 $00
    inc hl                                        ; $7704: $23
    ld [hl], $00                                  ; $7705: $36 $00
    ld a, $8e                                     ; $7707: $3e $8e
    ldh [$c1], a                                  ; $7709: $e0 $c1
    ld a, $d2                                     ; $770b: $3e $d2
    ldh [$bd], a                                  ; $770d: $e0 $bd
    ld a, $11                                     ; $770f: $3e $11
    ldh [$be], a                                  ; $7711: $e0 $be
    call Call_000_3454                            ; $7713: $cd $54 $34
    ld a, $8f                                     ; $7716: $3e $8f
    ldh [$c1], a                                  ; $7718: $e0 $c1
    ld a, $d2                                     ; $771a: $3e $d2
    ldh [$bd], a                                  ; $771c: $e0 $bd
    ld a, $11                                     ; $771e: $3e $11
    ldh [$be], a                                  ; $7720: $e0 $be
    call Call_000_3454                            ; $7722: $cd $54 $34
    ld a, $09                                     ; $7725: $3e $09
    ld hl, $5fd2                                  ; $7727: $21 $d2 $5f
    ldh [$c1], a                                  ; $772a: $e0 $c1
    ld a, $0f                                     ; $772c: $3e $0f
    ldh [$bd], a                                  ; $772e: $e0 $bd
    ld a, $25                                     ; $7730: $3e $25
    ldh [$be], a                                  ; $7732: $e0 $be
    call Call_000_3454                            ; $7734: $cd $54 $34
    ld a, $18                                     ; $7737: $3e $18
    ld [$cbba], a                                 ; $7739: $ea $ba $cb
    ld [$cbbc], a                                 ; $773c: $ea $bc $cb
    xor a                                         ; $773f: $af
    ld [$cbc5], a                                 ; $7740: $ea $c5 $cb
    ld [$cb2c], a                                 ; $7743: $ea $2c $cb
    ld [$cbc4], a                                 ; $7746: $ea $c4 $cb
    ld [$cbc5], a                                 ; $7749: $ea $c5 $cb
    ld [$cbc6], a                                 ; $774c: $ea $c6 $cb
    ld [$cbc7], a                                 ; $774f: $ea $c7 $cb
    ld a, $02                                     ; $7752: $3e $02
    ld [$cbbb], a                                 ; $7754: $ea $bb $cb
    ld a, $a0                                     ; $7757: $3e $a0
    ld [$cbbd], a                                 ; $7759: $ea $bd $cb
    ld hl, $cbc6                                  ; $775c: $21 $c6 $cb
    ld [hl], $5f                                  ; $775f: $36 $5f
    inc hl                                        ; $7761: $23
    ld [hl], $78                                  ; $7762: $36 $78
    ld hl, $7a88                                  ; $7764: $21 $88 $7a
    ldh [$c1], a                                  ; $7767: $e0 $c1
    ld a, $6d                                     ; $7769: $3e $6d
    ldh [$bd], a                                  ; $776b: $e0 $bd
    ld a, $7c                                     ; $776d: $3e $7c
    ldh [$be], a                                  ; $776f: $e0 $be
    call Call_000_343a                            ; $7771: $cd $3a $34
    ld a, $2a                                     ; $7774: $3e $2a
    ldh [$c1], a                                  ; $7776: $e0 $c1
    ld a, $c0                                     ; $7778: $3e $c0
    ldh [$bd], a                                  ; $777a: $e0 $bd
    ld a, $70                                     ; $777c: $3e $70
    ldh [$be], a                                  ; $777e: $e0 $be
    call Call_000_342c                            ; $7780: $cd $2c $34
    xor a                                         ; $7783: $af
    ldh [$9b], a                                  ; $7784: $e0 $9b
    ld a, $88                                     ; $7786: $3e $88
    call Call_000_03a0                            ; $7788: $cd $a0 $03
    ld hl, $cbbe                                  ; $778b: $21 $be $cb
    ld [hl], e                                    ; $778e: $73
    inc hl                                        ; $778f: $23
    ld [hl], d                                    ; $7790: $72
    ld a, $89                                     ; $7791: $3e $89
    call Call_000_03a0                            ; $7793: $cd $a0 $03
    ld a, $01                                     ; $7796: $3e $01
    ldh [$9b], a                                  ; $7798: $e0 $9b
    ld a, $88                                     ; $779a: $3e $88
    call Call_000_03a0                            ; $779c: $cd $a0 $03
    ld hl, $cbc0                                  ; $779f: $21 $c0 $cb
    ld [hl], e                                    ; $77a2: $73
    inc hl                                        ; $77a3: $23
    ld [hl], d                                    ; $77a4: $72
    ld a, $89                                     ; $77a5: $3e $89
    call Call_000_03a0                            ; $77a7: $cd $a0 $03
    ld hl, $cbc2                                  ; $77aa: $21 $c2 $cb
    ld [hl], e                                    ; $77ad: $73
    inc hl                                        ; $77ae: $23
    ld [hl], d                                    ; $77af: $72
    ld b, $00                                     ; $77b0: $06 $00
    ld c, $01                                     ; $77b2: $0e $01
    ld de, $0064                                  ; $77b4: $11 $64 $00
    jp Jump_000_30ea                              ; $77b7: $c3 $ea $30


    ldh [$c1], a                                  ; $77ba: $e0 $c1
    ld a, $86                                     ; $77bc: $3e $86
    ldh [$bd], a                                  ; $77be: $e0 $bd
    ld a, $4f                                     ; $77c0: $3e $4f
    ldh [$be], a                                  ; $77c2: $e0 $be
    call Call_000_3448                            ; $77c4: $cd $48 $34
    call Call_005_77dc                            ; $77c7: $cd $dc $77
    call Call_005_781d                            ; $77ca: $cd $1d $78
    ldh a, [$cc]                                  ; $77cd: $f0 $cc
    cp $3e                                        ; $77cf: $fe $3e
    ret nz                                        ; $77d1: $c0

    ldh a, [$a5]                                  ; $77d2: $f0 $a5
    bit 1, a                                      ; $77d4: $cb $4f
    ret z                                         ; $77d6: $c8

    ld a, $3e                                     ; $77d7: $3e $3e
    jp Jump_000_2448                              ; $77d9: $c3 $48 $24


Call_005_77dc:
    ld a, [$cbba]                                 ; $77dc: $fa $ba $cb
    ld hl, $cbbc                                  ; $77df: $21 $bc $cb
    cp [hl]                                       ; $77e2: $be
    ret z                                         ; $77e3: $c8

    ld [hl], a                                    ; $77e4: $77
    ldh [$f0], a                                  ; $77e5: $e0 $f0
    and $1f                                       ; $77e7: $e6 $1f
    ld hl, $d800                                  ; $77e9: $21 $00 $d8
    rst $08                                       ; $77ec: $cf
    ld e, l                                       ; $77ed: $5d
    ld d, h                                       ; $77ee: $54
    ld a, $08                                     ; $77ef: $3e $08
    ldh [$f2], a                                  ; $77f1: $e0 $f2
    ld a, $12                                     ; $77f3: $3e $12
    ldh [$f3], a                                  ; $77f5: $e0 $f3
    ld a, $04                                     ; $77f7: $3e $04
    ldh [$f1], a                                  ; $77f9: $e0 $f1
    ld a, $2a                                     ; $77fb: $3e $2a
    ld bc, $0000                                  ; $77fd: $01 $00 $00
    ld hl, $537b                                  ; $7800: $21 $7b $53
    ldh [$c1], a                                  ; $7803: $e0 $c1
    ld a, $2a                                     ; $7805: $3e $2a
    ldh [$bd], a                                  ; $7807: $e0 $bd
    ld a, $33                                     ; $7809: $3e $33
    ldh [$be], a                                  ; $780b: $e0 $be
    jp Jump_000_3454                              ; $780d: $c3 $54 $34


    ld [$2016], sp                                ; $7810: $08 $16 $20
    ld l, $34                                     ; $7813: $2e $34
    inc a                                         ; $7815: $3c
    ld e, d                                       ; $7816: $5a
    ld l, h                                       ; $7817: $6c
    ld [hl], b                                    ; $7818: $70
    add c                                         ; $7819: $81
    sub d                                         ; $781a: $92
    sbc d                                         ; $781b: $9a
    rst $38                                       ; $781c: $ff

Call_005_781d:
    ld a, [$cbbb]                                 ; $781d: $fa $bb $cb
    srl a                                         ; $7820: $cb $3f
    srl a                                         ; $7822: $cb $3f
    ld hl, $cbba                                  ; $7824: $21 $ba $cb
    add [hl]                                      ; $7827: $86
    ld hl, $cb2c                                  ; $7828: $21 $2c $cb
    cp [hl]                                       ; $782b: $be
    ret z                                         ; $782c: $c8

    ld [hl], a                                    ; $782d: $77
    ld d, a                                       ; $782e: $57
    ld hl, $7810                                  ; $782f: $21 $10 $78
    ld e, $00                                     ; $7832: $1e $00

jr_005_7834:
    inc e                                         ; $7834: $1c
    ld a, [hl+]                                   ; $7835: $2a
    cp d                                          ; $7836: $ba
    jr z, jr_005_783c                             ; $7837: $28 $03

    ret nc                                        ; $7839: $d0

    jr jr_005_7834                                ; $783a: $18 $f8

jr_005_783c:
    ld a, e                                       ; $783c: $7b
    and $03                                       ; $783d: $e6 $03
    jr nz, jr_005_7853                            ; $783f: $20 $12

    ldh a, [rDIV]                                 ; $7841: $f0 $04
    and $01                                       ; $7843: $e6 $01
    jr z, jr_005_7853                             ; $7845: $28 $0c

    ld a, $03                                     ; $7847: $3e $03
    call Call_000_2722                            ; $7849: $cd $22 $27
    ldh [$9b], a                                  ; $784c: $e0 $9b
    ld a, $8e                                     ; $784e: $3e $8e
    call Call_000_03a0                            ; $7850: $cd $a0 $03

jr_005_7853:
    ld a, $03                                     ; $7853: $3e $03
    call Call_000_2722                            ; $7855: $cd $22 $27
    ldh [$9b], a                                  ; $7858: $e0 $9b
    ld a, $8e                                     ; $785a: $3e $8e
    jp Jump_000_03a0                              ; $785c: $c3 $a0 $03


    ld a, [$cbc5]                                 ; $785f: $fa $c5 $cb
    add a                                         ; $7862: $87
    ld c, a                                       ; $7863: $4f
    ld de, $cb2a                                  ; $7864: $11 $2a $cb
    add e                                         ; $7867: $83
    ld e, a                                       ; $7868: $5f
    ld a, $00                                     ; $7869: $3e $00
    adc d                                         ; $786b: $8a
    ld d, a                                       ; $786c: $57
    ld a, c                                       ; $786d: $79
    ld hl, $769c                                  ; $786e: $21 $9c $76
    add l                                         ; $7871: $85
    ld l, a                                       ; $7872: $6f
    ld a, $00                                     ; $7873: $3e $00
    adc h                                         ; $7875: $8c
    ld h, a                                       ; $7876: $67
    ld a, [de]                                    ; $7877: $1a
    add [hl]                                      ; $7878: $86
    ld [de], a                                    ; $7879: $12
    inc de                                        ; $787a: $13
    inc hl                                        ; $787b: $23
    ld a, [de]                                    ; $787c: $1a
    adc [hl]                                      ; $787d: $8e
    ld [de], a                                    ; $787e: $12
    ld b, a                                       ; $787f: $47

jr_005_7880:
    ldh a, [rSTAT]                                ; $7880: $f0 $41
    and $03                                       ; $7882: $e6 $03
    jr z, jr_005_7880                             ; $7884: $28 $fa

jr_005_7886:
    ldh a, [rSTAT]                                ; $7886: $f0 $41
    and $03                                       ; $7888: $e6 $03
    jr nz, jr_005_7886                            ; $788a: $20 $fa

    ld a, b                                       ; $788c: $78
    ldh [rSCX], a                                 ; $788d: $e0 $43
    ld a, c                                       ; $788f: $79
    srl a                                         ; $7890: $cb $3f
    inc a                                         ; $7892: $3c
    cp $01                                        ; $7893: $fe $01
    jr nz, jr_005_7898                            ; $7895: $20 $01

    xor a                                         ; $7897: $af

jr_005_7898:
    ld [$cbc5], a                                 ; $7898: $ea $c5 $cb
    ret                                           ; $789b: $c9


    ld bc, $8048                                  ; $789c: $01 $48 $80
    nop                                           ; $789f: $00
    nop                                           ; $78a0: $00
    nop                                           ; $78a1: $00
    xor d                                         ; $78a2: $aa
    inc h                                         ; $78a3: $24
    ld bc, $0002                                  ; $78a4: $01 $02 $00
    ld bc, $0040                                  ; $78a7: $01 $40 $00
    add b                                         ; $78aa: $80
    nop                                           ; $78ab: $00
    ret nz                                        ; $78ac: $c0

    nop                                           ; $78ad: $00
    nop                                           ; $78ae: $00
    ld bc, $0200                                  ; $78af: $01 $00 $02
    ld hl, $789c                                  ; $78b2: $21 $9c $78
    jp Jump_000_2837                              ; $78b5: $c3 $37 $28


    ld a, $01                                     ; $78b8: $3e $01
    ldh [$c1], a                                  ; $78ba: $e0 $c1
    ld a, $05                                     ; $78bc: $3e $05
    ldh [$bd], a                                  ; $78be: $e0 $bd
    ld a, $53                                     ; $78c0: $3e $53
    ldh [$be], a                                  ; $78c2: $e0 $be
    call Call_000_3448                            ; $78c4: $cd $48 $34
    ld a, $22                                     ; $78c7: $3e $22
    call Call_000_395e                            ; $78c9: $cd $5e $39
    ld hl, $cb29                                  ; $78cc: $21 $29 $cb
    ld bc, $000c                                  ; $78cf: $01 $0c $00
    call Call_000_112e                            ; $78d2: $cd $2e $11
    ld hl, $cbba                                  ; $78d5: $21 $ba $cb
    ld bc, $000a                                  ; $78d8: $01 $0a $00
    call Call_000_112e                            ; $78db: $cd $2e $11
    ld hl, $5b21                                  ; $78de: $21 $21 $5b
    ldh [$c1], a                                  ; $78e1: $e0 $c1
    ld a, $8f                                     ; $78e3: $3e $8f
    ldh [$bd], a                                  ; $78e5: $e0 $bd
    ld a, $5b                                     ; $78e7: $3e $5b
    ldh [$be], a                                  ; $78e9: $e0 $be
    call Call_000_342c                            ; $78eb: $cd $2c $34
    ld hl, $ffb8                                  ; $78ee: $21 $b8 $ff
    ld [hl], $00                                  ; $78f1: $36 $00
    inc hl                                        ; $78f3: $23
    ld [hl], $00                                  ; $78f4: $36 $00
    ld a, $88                                     ; $78f6: $3e $88
    ldh [$c1], a                                  ; $78f8: $e0 $c1
    ld a, $d6                                     ; $78fa: $3e $d6
    ldh [$bd], a                                  ; $78fc: $e0 $bd
    ld a, $11                                     ; $78fe: $3e $11
    ldh [$be], a                                  ; $7900: $e0 $be
    call Call_000_3454                            ; $7902: $cd $54 $34
    ld a, $0a                                     ; $7905: $3e $0a
    ld hl, $5fd2                                  ; $7907: $21 $d2 $5f
    ldh [$c1], a                                  ; $790a: $e0 $c1
    ld a, $0f                                     ; $790c: $3e $0f
    ldh [$bd], a                                  ; $790e: $e0 $bd
    ld a, $25                                     ; $7910: $3e $25
    ldh [$be], a                                  ; $7912: $e0 $be
    call Call_000_3454                            ; $7914: $cd $54 $34
    call Call_005_7a38                            ; $7917: $cd $38 $7a
    ld a, $18                                     ; $791a: $3e $18
    ld [$cbba], a                                 ; $791c: $ea $ba $cb
    ld [$cbbc], a                                 ; $791f: $ea $bc $cb
    xor a                                         ; $7922: $af
    ld [$cbc5], a                                 ; $7923: $ea $c5 $cb
    ld [$cb34], a                                 ; $7926: $ea $34 $cb
    ld [$cbc4], a                                 ; $7929: $ea $c4 $cb
    ld [$cbc5], a                                 ; $792c: $ea $c5 $cb
    ld [$cbc6], a                                 ; $792f: $ea $c6 $cb
    ld [$cbc7], a                                 ; $7932: $ea $c7 $cb
    ld a, $02                                     ; $7935: $3e $02
    ld [$cbbb], a                                 ; $7937: $ea $bb $cb
    ld a, $40                                     ; $793a: $3e $40
    ld [$cbbd], a                                 ; $793c: $ea $bd $cb
    ld hl, $cbc6                                  ; $793f: $21 $c6 $cb
    ld [hl], $fb                                  ; $7942: $36 $fb
    inc hl                                        ; $7944: $23
    ld [hl], $79                                  ; $7945: $36 $79
    ld hl, $7aa1                                  ; $7947: $21 $a1 $7a
    ldh [$c1], a                                  ; $794a: $e0 $c1
    ld a, $6d                                     ; $794c: $3e $6d
    ldh [$bd], a                                  ; $794e: $e0 $bd
    ld a, $7c                                     ; $7950: $3e $7c
    ldh [$be], a                                  ; $7952: $e0 $be
    call Call_000_343a                            ; $7954: $cd $3a $34
    xor a                                         ; $7957: $af
    ldh [$9b], a                                  ; $7958: $e0 $9b
    ld a, $88                                     ; $795a: $3e $88
    call Call_000_03a0                            ; $795c: $cd $a0 $03
    ld hl, $cbbe                                  ; $795f: $21 $be $cb
    ld [hl], e                                    ; $7962: $73
    inc hl                                        ; $7963: $23
    ld [hl], d                                    ; $7964: $72
    ld a, $a6                                     ; $7965: $3e $a6
    call Call_000_03a0                            ; $7967: $cd $a0 $03
    ld a, $01                                     ; $796a: $3e $01
    ldh [$9b], a                                  ; $796c: $e0 $9b
    ld a, $88                                     ; $796e: $3e $88
    call Call_000_03a0                            ; $7970: $cd $a0 $03
    ld hl, $cbc0                                  ; $7973: $21 $c0 $cb
    ld [hl], e                                    ; $7976: $73
    inc hl                                        ; $7977: $23
    ld [hl], d                                    ; $7978: $72
    ld a, $a6                                     ; $7979: $3e $a6
    call Call_000_03a0                            ; $797b: $cd $a0 $03
    ld hl, $cbc2                                  ; $797e: $21 $c2 $cb
    ld [hl], e                                    ; $7981: $73
    inc hl                                        ; $7982: $23
    ld [hl], d                                    ; $7983: $72
    ld b, $00                                     ; $7984: $06 $00
    ld c, $01                                     ; $7986: $0e $01
    ld de, $0064                                  ; $7988: $11 $64 $00
    jp Jump_000_30ea                              ; $798b: $c3 $ea $30


    ldh [$c1], a                                  ; $798e: $e0 $c1
    ld a, $86                                     ; $7990: $3e $86
    ldh [$bd], a                                  ; $7992: $e0 $bd
    ld a, $4f                                     ; $7994: $3e $4f
    ldh [$be], a                                  ; $7996: $e0 $be
    call Call_000_3448                            ; $7998: $cd $48 $34
    call Call_005_79b0                            ; $799b: $cd $b0 $79
    call Call_005_79e3                            ; $799e: $cd $e3 $79
    ldh a, [$cc]                                  ; $79a1: $f0 $cc
    cp $3e                                        ; $79a3: $fe $3e
    ret nz                                        ; $79a5: $c0

    ldh a, [$a5]                                  ; $79a6: $f0 $a5
    bit 1, a                                      ; $79a8: $cb $4f
    ret z                                         ; $79aa: $c8

    ld a, $3e                                     ; $79ab: $3e $3e
    jp Jump_000_2448                              ; $79ad: $c3 $48 $24


Call_005_79b0:
    ld a, [$cbba]                                 ; $79b0: $fa $ba $cb
    ld hl, $cbbc                                  ; $79b3: $21 $bc $cb
    cp [hl]                                       ; $79b6: $be
    ret z                                         ; $79b7: $c8

    ld [hl], a                                    ; $79b8: $77
    ldh [$f0], a                                  ; $79b9: $e0 $f0
    and $1f                                       ; $79bb: $e6 $1f
    ld hl, $d920                                  ; $79bd: $21 $20 $d9
    rst $08                                       ; $79c0: $cf
    ld e, l                                       ; $79c1: $5d
    ld d, h                                       ; $79c2: $54
    ld a, $08                                     ; $79c3: $3e $08
    ldh [$f2], a                                  ; $79c5: $e0 $f2
    ld a, $06                                     ; $79c7: $3e $06
    ldh [$f3], a                                  ; $79c9: $e0 $f3
    xor a                                         ; $79cb: $af
    ldh [$f1], a                                  ; $79cc: $e0 $f1
    ld a, $49                                     ; $79ce: $3e $49
    ld bc, $0000                                  ; $79d0: $01 $00 $00
    ld hl, $537b                                  ; $79d3: $21 $7b $53
    ldh [$c1], a                                  ; $79d6: $e0 $c1
    ld a, $2a                                     ; $79d8: $3e $2a
    ldh [$bd], a                                  ; $79da: $e0 $bd
    ld a, $33                                     ; $79dc: $3e $33
    ldh [$be], a                                  ; $79de: $e0 $be
    jp Jump_000_3454                              ; $79e0: $c3 $54 $34


Call_005_79e3:
    call Call_000_30fc                            ; $79e3: $cd $fc $30
    ret nz                                        ; $79e6: $c0

    ld a, $3c                                     ; $79e7: $3e $3c
    call Call_000_2722                            ; $79e9: $cd $22 $27
    ld hl, $003c                                  ; $79ec: $21 $3c $00
    rst $08                                       ; $79ef: $cf
    ld e, l                                       ; $79f0: $5d
    ld d, h                                       ; $79f1: $54
    call Call_000_30ea                            ; $79f2: $cd $ea $30
    ld a, $a7                                     ; $79f5: $3e $a7
    call Call_000_03a0                            ; $79f7: $cd $a0 $03
    ret                                           ; $79fa: $c9


    ld a, [$cbc5]                                 ; $79fb: $fa $c5 $cb
    add a                                         ; $79fe: $87
    ld c, a                                       ; $79ff: $4f
    ld de, $cb2a                                  ; $7a00: $11 $2a $cb
    add e                                         ; $7a03: $83
    ld e, a                                       ; $7a04: $5f
    ld a, $00                                     ; $7a05: $3e $00
    adc d                                         ; $7a07: $8a
    ld d, a                                       ; $7a08: $57
    ld a, c                                       ; $7a09: $79
    ld hl, $78a8                                  ; $7a0a: $21 $a8 $78
    add l                                         ; $7a0d: $85
    ld l, a                                       ; $7a0e: $6f
    ld a, $00                                     ; $7a0f: $3e $00
    adc h                                         ; $7a11: $8c
    ld h, a                                       ; $7a12: $67
    ld a, [de]                                    ; $7a13: $1a
    add [hl]                                      ; $7a14: $86
    ld [de], a                                    ; $7a15: $12
    inc de                                        ; $7a16: $13
    inc hl                                        ; $7a17: $23
    ld a, [de]                                    ; $7a18: $1a
    adc [hl]                                      ; $7a19: $8e
    ld [de], a                                    ; $7a1a: $12
    ld b, a                                       ; $7a1b: $47

jr_005_7a1c:
    ldh a, [rSTAT]                                ; $7a1c: $f0 $41
    and $03                                       ; $7a1e: $e6 $03
    jr z, jr_005_7a1c                             ; $7a20: $28 $fa

jr_005_7a22:
    ldh a, [rSTAT]                                ; $7a22: $f0 $41
    and $03                                       ; $7a24: $e6 $03
    jr nz, jr_005_7a22                            ; $7a26: $20 $fa

    ld a, b                                       ; $7a28: $78
    ldh [rSCX], a                                 ; $7a29: $e0 $43
    ld a, c                                       ; $7a2b: $79
    srl a                                         ; $7a2c: $cb $3f
    inc a                                         ; $7a2e: $3c
    cp $05                                        ; $7a2f: $fe $05
    jr nz, jr_005_7a34                            ; $7a31: $20 $01

    xor a                                         ; $7a33: $af

jr_005_7a34:
    ld [$cbc5], a                                 ; $7a34: $ea $c5 $cb
    ret                                           ; $7a37: $c9


Call_005_7a38:
    call Call_000_19b7                            ; $7a38: $cd $b7 $19
    ld hl, $c124                                  ; $7a3b: $21 $24 $c1
    ld de, $5e8e                                  ; $7a3e: $11 $8e $5e
    ld a, $02                                     ; $7a41: $3e $02
    ld [hl+], a                                   ; $7a43: $22
    xor a                                         ; $7a44: $af
    ld [hl+], a                                   ; $7a45: $22
    ld [hl+], a                                   ; $7a46: $22
    ld a, e                                       ; $7a47: $7b
    ld [hl+], a                                   ; $7a48: $22
    ld a, d                                       ; $7a49: $7a
    ld [hl+], a                                   ; $7a4a: $22
    ld hl, $c129                                  ; $7a4b: $21 $29 $c1
    ld a, $02                                     ; $7a4e: $3e $02
    ld [hl+], a                                   ; $7a50: $22
    ld [hl+], a                                   ; $7a51: $22
    ld [hl+], a                                   ; $7a52: $22
    ld a, e                                       ; $7a53: $7b
    ld [hl+], a                                   ; $7a54: $22
    ld a, d                                       ; $7a55: $7a
    ld [hl+], a                                   ; $7a56: $22
    ld hl, $c12e                                  ; $7a57: $21 $2e $c1
    ld a, $02                                     ; $7a5a: $3e $02
    ld [hl+], a                                   ; $7a5c: $22
    ld a, $04                                     ; $7a5d: $3e $04
    ld [hl+], a                                   ; $7a5f: $22
    ld [hl+], a                                   ; $7a60: $22
    ld a, e                                       ; $7a61: $7b
    ld [hl+], a                                   ; $7a62: $22
    ld a, d                                       ; $7a63: $7a
    ld [hl+], a                                   ; $7a64: $22
    ld hl, $c133                                  ; $7a65: $21 $33 $c1
    ld a, $02                                     ; $7a68: $3e $02
    ld [hl+], a                                   ; $7a6a: $22
    ld a, $06                                     ; $7a6b: $3e $06
    ld [hl+], a                                   ; $7a6d: $22
    ld [hl+], a                                   ; $7a6e: $22
    ld a, e                                       ; $7a6f: $7b
    ld [hl+], a                                   ; $7a70: $22
    ld a, d                                       ; $7a71: $7a
    ld [hl+], a                                   ; $7a72: $22
    ret                                           ; $7a73: $c9


    dec hl                                        ; $7a74: $2b
    dec c                                         ; $7a75: $0d
    dec [hl]                                      ; $7a76: $35
    dec c                                         ; $7a77: $0d
    ccf                                           ; $7a78: $3f
    dec c                                         ; $7a79: $0d
    call Call_000_2e82                            ; $7a7a: $cd $82 $2e
    ld hl, $7a74                                  ; $7a7d: $21 $74 $7a
    call Call_000_3194                            ; $7a80: $cd $94 $31
    ldh [$c1], a                                  ; $7a83: $e0 $c1
    ld a, $b5                                     ; $7a85: $3e $b5
    ldh [$bd], a                                  ; $7a87: $e0 $bd
    ld a, $63                                     ; $7a89: $3e $63
    ldh [$be], a                                  ; $7a8b: $e0 $be
    jp Jump_000_3433                              ; $7a8d: $c3 $33 $34


    ld a, $ff                                     ; $7a90: $3e $ff
    call Call_000_2722                            ; $7a92: $cd $22 $27
    push af                                       ; $7a95: $f5
    ldh [$c1], a                                  ; $7a96: $e0 $c1
    ld a, $11                                     ; $7a98: $3e $11
    ldh [$bd], a                                  ; $7a9a: $e0 $bd
    ld a, $6b                                     ; $7a9c: $3e $6b
    ldh [$be], a                                  ; $7a9e: $e0 $be
    call Call_000_342c                            ; $7aa0: $cd $2c $34
    ld l, a                                       ; $7aa3: $6f
    rla                                           ; $7aa4: $17
    sbc a                                         ; $7aa5: $9f
    ld h, a                                       ; $7aa6: $67
    add hl, hl                                    ; $7aa7: $29
    add hl, hl                                    ; $7aa8: $29
    ld e, l                                       ; $7aa9: $5d
    ld d, h                                       ; $7aaa: $54
    ld hl, $0011                                  ; $7aab: $21 $11 $00
    add hl, bc                                    ; $7aae: $09
    ld [hl], e                                    ; $7aaf: $73
    inc hl                                        ; $7ab0: $23
    ld [hl], d                                    ; $7ab1: $72
    pop af                                        ; $7ab2: $f1
    ldh [$c1], a                                  ; $7ab3: $e0 $c1
    ld a, $0f                                     ; $7ab5: $3e $0f
    ldh [$bd], a                                  ; $7ab7: $e0 $bd
    ld a, $6b                                     ; $7ab9: $3e $6b
    ldh [$be], a                                  ; $7abb: $e0 $be
    call Call_000_342c                            ; $7abd: $cd $2c $34
    ld l, a                                       ; $7ac0: $6f
    rla                                           ; $7ac1: $17
    sbc a                                         ; $7ac2: $9f
    ld h, a                                       ; $7ac3: $67
    add hl, hl                                    ; $7ac4: $29
    add hl, hl                                    ; $7ac5: $29
    ld e, l                                       ; $7ac6: $5d
    ld d, h                                       ; $7ac7: $54
    ld hl, $000f                                  ; $7ac8: $21 $0f $00
    add hl, bc                                    ; $7acb: $09
    ld [hl], e                                    ; $7acc: $73
    inc hl                                        ; $7acd: $23
    ld [hl], d                                    ; $7ace: $72
    ret                                           ; $7acf: $c9


    ret                                           ; $7ad0: $c9


    ld a, $02                                     ; $7ad1: $3e $02
    ldh [$c1], a                                  ; $7ad3: $e0 $c1
    ld a, $05                                     ; $7ad5: $3e $05
    ldh [$bd], a                                  ; $7ad7: $e0 $bd
    ld a, $53                                     ; $7ad9: $3e $53
    ldh [$be], a                                  ; $7adb: $e0 $be
    call Call_000_3448                            ; $7add: $cd $48 $34
    ret                                           ; $7ae0: $c9


    ld hl, $0003                                  ; $7ae1: $21 $03 $00
    add hl, bc                                    ; $7ae4: $09
    ld a, [hl]                                    ; $7ae5: $7e
    or a                                          ; $7ae6: $b7
    jr z, jr_005_7af1                             ; $7ae7: $28 $08

    dec [hl]                                      ; $7ae9: $35
    ld a, $09                                     ; $7aea: $3e $09
    call Call_000_08ec                            ; $7aec: $cd $ec $08
    jr jr_005_7b5f                                ; $7aef: $18 $6e

jr_005_7af1:
    ldh a, [$a4]                                  ; $7af1: $f0 $a4
    bit 6, a                                      ; $7af3: $cb $77
    call nz, Call_005_7b20                        ; $7af5: $c4 $20 $7b
    ldh a, [$a4]                                  ; $7af8: $f0 $a4
    bit 7, a                                      ; $7afa: $cb $7f
    call nz, Call_005_7b40                        ; $7afc: $c4 $40 $7b
    ldh a, [$a4]                                  ; $7aff: $f0 $a4
    bit 5, a                                      ; $7b01: $cb $6f
    call nz, Call_005_7b5f                        ; $7b03: $c4 $5f $7b
    ldh a, [$a4]                                  ; $7b06: $f0 $a4
    bit 4, a                                      ; $7b08: $cb $67
    call nz, Call_005_7b70                        ; $7b0a: $c4 $70 $7b
    ldh a, [$a4]                                  ; $7b0d: $f0 $a4
    and $c0                                       ; $7b0f: $e6 $c0
    ret nz                                        ; $7b11: $c0

    call Call_000_2e8a                            ; $7b12: $cd $8a $2e
    or a                                          ; $7b15: $b7
    ret z                                         ; $7b16: $c8

    ld [hl], $00                                  ; $7b17: $36 $00
    ld de, $5955                                  ; $7b19: $11 $55 $59
    call Call_000_0a50                            ; $7b1c: $cd $50 $0a
    ret                                           ; $7b1f: $c9


Call_005_7b20:
    ldh a, [$a5]                                  ; $7b20: $f0 $a5
    bit 6, a                                      ; $7b22: $cb $77
    jr z, jr_005_7b26                             ; $7b24: $28 $00

jr_005_7b26:
    call Call_000_2e8a                            ; $7b26: $cd $8a $2e
    cp $01                                        ; $7b29: $fe $01
    jr z, jr_005_7b35                             ; $7b2b: $28 $08

    ld [hl], $01                                  ; $7b2d: $36 $01
    ld de, $5965                                  ; $7b2f: $11 $65 $59
    call Call_000_0a50                            ; $7b32: $cd $50 $0a

jr_005_7b35:
    ld hl, $0009                                  ; $7b35: $21 $09 $00
    add hl, bc                                    ; $7b38: $09
    ld a, [hl]                                    ; $7b39: $7e
    cp $10                                        ; $7b3a: $fe $10
    ret c                                         ; $7b3c: $d8

    ret z                                         ; $7b3d: $c8

    dec [hl]                                      ; $7b3e: $35
    ret                                           ; $7b3f: $c9


Call_005_7b40:
    ldh a, [$a5]                                  ; $7b40: $f0 $a5
    bit 7, a                                      ; $7b42: $cb $7f
    jr z, jr_005_7b46                             ; $7b44: $28 $00

jr_005_7b46:
    call Call_000_2e8a                            ; $7b46: $cd $8a $2e
    cp $02                                        ; $7b49: $fe $02
    jr z, jr_005_7b55                             ; $7b4b: $28 $08

    ld [hl], $02                                  ; $7b4d: $36 $02
    ld de, $595d                                  ; $7b4f: $11 $5d $59
    call Call_000_0a50                            ; $7b52: $cd $50 $0a

jr_005_7b55:
    ld hl, $0009                                  ; $7b55: $21 $09 $00
    add hl, bc                                    ; $7b58: $09
    ld a, [hl]                                    ; $7b59: $7e
    cp $80                                        ; $7b5a: $fe $80
    ret nc                                        ; $7b5c: $d0

    inc [hl]                                      ; $7b5d: $34
    ret                                           ; $7b5e: $c9


Call_005_7b5f:
jr_005_7b5f:
    ldh a, [$a5]                                  ; $7b5f: $f0 $a5
    bit 5, a                                      ; $7b61: $cb $6f
    jr z, jr_005_7b65                             ; $7b63: $28 $00

jr_005_7b65:
    ld hl, $0006                                  ; $7b65: $21 $06 $00
    add hl, bc                                    ; $7b68: $09
    ld a, [hl]                                    ; $7b69: $7e
    cp $10                                        ; $7b6a: $fe $10
    ret c                                         ; $7b6c: $d8

    ret z                                         ; $7b6d: $c8

    dec [hl]                                      ; $7b6e: $35
    ret                                           ; $7b6f: $c9


Call_005_7b70:
    ldh a, [$a5]                                  ; $7b70: $f0 $a5
    bit 4, a                                      ; $7b72: $cb $67
    jr z, jr_005_7b76                             ; $7b74: $28 $00

jr_005_7b76:
    ld hl, $0006                                  ; $7b76: $21 $06 $00
    add hl, bc                                    ; $7b79: $09
    ld a, [hl]                                    ; $7b7a: $7e
    cp $90                                        ; $7b7b: $fe $90
    ret nc                                        ; $7b7d: $d0

    inc [hl]                                      ; $7b7e: $34
    ret                                           ; $7b7f: $c9


    db $6d, $7c, $e6, $7c

    ret                                           ; $7b84: $c9


    ld a, l                                       ; $7b85: $7d
    push bc                                       ; $7b86: $c5
    ld a, l                                       ; $7b87: $7d
    pop bc                                        ; $7b88: $c1
    ld a, l                                       ; $7b89: $7d

    db $b0, $7e

    nop                                           ; $7b8c: $00
    nop                                           ; $7b8d: $00
    nop                                           ; $7b8e: $00
    nop                                           ; $7b8f: $00
    nop                                           ; $7b90: $00
    nop                                           ; $7b91: $00
    ld d, $7d                                     ; $7b92: $16 $7d

    db $9a, $7c, $4f, $7d

    add hl, hl                                    ; $7b98: $29
    ld a, [hl]                                    ; $7b99: $7e

    db $22, $7e

    add hl, de                                    ; $7b9c: $19
    ld a, [hl]                                    ; $7b9d: $7e
    db $10                                        ; $7b9e: $10
    ld a, a                                       ; $7b9f: $7f
    nop                                           ; $7ba0: $00
    nop                                           ; $7ba1: $00
    nop                                           ; $7ba2: $00
    nop                                           ; $7ba3: $00
    nop                                           ; $7ba4: $00
    nop                                           ; $7ba5: $00
    sub e                                         ; $7ba6: $93
    ld a, l                                       ; $7ba7: $7d
    ldh a, [rSVBK]                                ; $7ba8: $f0 $70
    push af                                       ; $7baa: $f5
    ld a, $02                                     ; $7bab: $3e $02
    ldh [rSVBK], a                                ; $7bad: $e0 $70
    ld hl, $d000                                  ; $7baf: $21 $00 $d0
    ld bc, $0040                                  ; $7bb2: $01 $40 $00
    ld a, $ff                                     ; $7bb5: $3e $ff
    call Call_000_112f                            ; $7bb7: $cd $2f $11
    pop af                                        ; $7bba: $f1
    ldh [rSVBK], a                                ; $7bbb: $e0 $70
    ld a, $01                                     ; $7bbd: $3e $01
    jr jr_005_7bf1                                ; $7bbf: $18 $30

    ldh a, [rSVBK]                                ; $7bc1: $f0 $70
    push af                                       ; $7bc3: $f5
    ld a, $02                                     ; $7bc4: $3e $02
    ldh [rSVBK], a                                ; $7bc6: $e0 $70
    ld hl, $d000                                  ; $7bc8: $21 $00 $d0
    ld bc, $0080                                  ; $7bcb: $01 $80 $00
    ld a, $ff                                     ; $7bce: $3e $ff
    call Call_000_112f                            ; $7bd0: $cd $2f $11
    pop af                                        ; $7bd3: $f1
    ldh [rSVBK], a                                ; $7bd4: $e0 $70
    ld a, $01                                     ; $7bd6: $3e $01

Call_005_7bd8:
    ld [$cd56], a                                 ; $7bd8: $ea $56 $cd
    ld [$cd57], a                                 ; $7bdb: $ea $57 $cd
    ldh [$c1], a                                  ; $7bde: $e0 $c1
    ld a, $87                                     ; $7be0: $3e $87
    ldh [$bd], a                                  ; $7be2: $e0 $bd
    ld a, $77                                     ; $7be4: $3e $77
    ldh [$be], a                                  ; $7be6: $e0 $be
    call Call_000_343a                            ; $7be8: $cd $3a $34
    ld a, $08                                     ; $7beb: $3e $08
    ld [$cd58], a                                 ; $7bed: $ea $58 $cd
    ret                                           ; $7bf0: $c9


Call_005_7bf1:
jr_005_7bf1:
    ld [$cd56], a                                 ; $7bf1: $ea $56 $cd
    ld [$cd57], a                                 ; $7bf4: $ea $57 $cd
    ldh [$c1], a                                  ; $7bf7: $e0 $c1
    ld a, $79                                     ; $7bf9: $3e $79
    ldh [$bd], a                                  ; $7bfb: $e0 $bd
    ld a, $77                                     ; $7bfd: $3e $77
    ldh [$be], a                                  ; $7bff: $e0 $be
    call Call_000_343a                            ; $7c01: $cd $3a $34
    ld a, $08                                     ; $7c04: $3e $08
    ld [$cd58], a                                 ; $7c06: $ea $58 $cd
    ret                                           ; $7c09: $c9


Call_005_7c0a:
    ld d, $01                                     ; $7c0a: $16 $01
    jr jr_005_7c10                                ; $7c0c: $18 $02

    ld d, $00                                     ; $7c0e: $16 $00

jr_005_7c10:
    push af                                       ; $7c10: $f5
    push de                                       ; $7c11: $d5
    ld a, $05                                     ; $7c12: $3e $05
    ld [$cbdc], a                                 ; $7c14: $ea $dc $cb
    ld a, [$cbe0]                                 ; $7c17: $fa $e0 $cb
    or a                                          ; $7c1a: $b7
    jr nz, jr_005_7c27                            ; $7c1b: $20 $0a

    ld hl, $ffdc                                  ; $7c1d: $21 $dc $ff
    set 4, [hl]                                   ; $7c20: $cb $e6
    ld a, $01                                     ; $7c22: $3e $01
    ld [$cd4d], a                                 ; $7c24: $ea $4d $cd

jr_005_7c27:
    xor a                                         ; $7c27: $af
    ld hl, $c32f                                  ; $7c28: $21 $2f $c3
    ld [hl+], a                                   ; $7c2b: $22
    ld [hl+], a                                   ; $7c2c: $22
    ld [hl+], a                                   ; $7c2d: $22
    ld [hl+], a                                   ; $7c2e: $22
    ld [hl+], a                                   ; $7c2f: $22
    ld [hl+], a                                   ; $7c30: $22
    ld [$cd57], a                                 ; $7c31: $ea $57 $cd
    ld [$cd58], a                                 ; $7c34: $ea $58 $cd
    pop de                                        ; $7c37: $d1
    pop af                                        ; $7c38: $f1
    ld hl, $7b80                                  ; $7c39: $21 $80 $7b
    call Call_000_319d                            ; $7c3c: $cd $9d $31
    jp hl                                         ; $7c3f: $e9


Call_005_7c40:
    ld d, $01                                     ; $7c40: $16 $01
    jr jr_005_7c46                                ; $7c42: $18 $02

Call_005_7c44:
    ld d, $00                                     ; $7c44: $16 $00

jr_005_7c46:
    push af                                       ; $7c46: $f5
    push de                                       ; $7c47: $d5
    ld a, $05                                     ; $7c48: $3e $05
    ld [$cbdc], a                                 ; $7c4a: $ea $dc $cb
    ld a, [$cbe0]                                 ; $7c4d: $fa $e0 $cb
    or a                                          ; $7c50: $b7
    jr nz, jr_005_7c5d                            ; $7c51: $20 $0a

    ld hl, $ffdc                                  ; $7c53: $21 $dc $ff
    set 4, [hl]                                   ; $7c56: $cb $e6
    ld a, $01                                     ; $7c58: $3e $01
    ld [$cd4d], a                                 ; $7c5a: $ea $4d $cd

jr_005_7c5d:
    xor a                                         ; $7c5d: $af
    ld [$cd57], a                                 ; $7c5e: $ea $57 $cd
    ld [$cd58], a                                 ; $7c61: $ea $58 $cd
    pop de                                        ; $7c64: $d1
    pop af                                        ; $7c65: $f1
    ld hl, $7b94                                  ; $7c66: $21 $94 $7b
    call Call_000_319d                            ; $7c69: $cd $9d $31
    jp hl                                         ; $7c6c: $e9


    push de                                       ; $7c6d: $d5
    ldh a, [rSVBK]                                ; $7c6e: $f0 $70
    push af                                       ; $7c70: $f5
    ld a, $02                                     ; $7c71: $3e $02
    ldh [rSVBK], a                                ; $7c73: $e0 $70
    ld hl, $d080                                  ; $7c75: $21 $80 $d0
    ld bc, $0080                                  ; $7c78: $01 $80 $00
    ld a, $ff                                     ; $7c7b: $3e $ff
    call Call_000_112f                            ; $7c7d: $cd $2f $11
    pop af                                        ; $7c80: $f1
    ldh [rSVBK], a                                ; $7c81: $e0 $70
    call Call_000_258a                            ; $7c83: $cd $8a $25
    pop de                                        ; $7c86: $d1
    ld a, d                                       ; $7c87: $7a
    or a                                          ; $7c88: $b7
    jp z, Jump_005_7f53                           ; $7c89: $ca $53 $7f

    ld hl, $7f53                                  ; $7c8c: $21 $53 $7f
    ld a, l                                       ; $7c8f: $7d
    ld [$cd59], a                                 ; $7c90: $ea $59 $cd
    ld a, h                                       ; $7c93: $7c
    ld [$cd5a], a                                 ; $7c94: $ea $5a $cd
    jp Jump_000_3820                              ; $7c97: $c3 $20 $38


Call_005_7c9a:
    push de                                       ; $7c9a: $d5
    ldh a, [rSVBK]                                ; $7c9b: $f0 $70
    push af                                       ; $7c9d: $f5
    ld a, $02                                     ; $7c9e: $3e $02
    ldh [rSVBK], a                                ; $7ca0: $e0 $70
    ldh a, [rSVBK]                                ; $7ca2: $f0 $70
    push af                                       ; $7ca4: $f5
    ld a, $06                                     ; $7ca5: $3e $06
    ldh [rSVBK], a                                ; $7ca7: $e0 $70
    ld a, [$d6cd]                                 ; $7ca9: $fa $cd $d6
    ldh [$bc], a                                  ; $7cac: $e0 $bc
    pop af                                        ; $7cae: $f1
    ldh [rSVBK], a                                ; $7caf: $e0 $70
    ldh a, [$bc]                                  ; $7cb1: $f0 $bc
    or a                                          ; $7cb3: $b7
    jr z, jr_005_7cc3                             ; $7cb4: $28 $0d

    ldh a, [$d2]                                  ; $7cb6: $f0 $d2
    cp $19                                        ; $7cb8: $fe $19
    jr nz, jr_005_7cc3                            ; $7cba: $20 $07

    push de                                       ; $7cbc: $d5
    ld a, $01                                     ; $7cbd: $3e $01
    call Call_005_7f74                            ; $7cbf: $cd $74 $7f
    pop de                                        ; $7cc2: $d1

jr_005_7cc3:
    ld hl, $d000                                  ; $7cc3: $21 $00 $d0
    ld de, $d080                                  ; $7cc6: $11 $80 $d0
    call Call_000_11ee                            ; $7cc9: $cd $ee $11
    pop af                                        ; $7ccc: $f1
    ldh [rSVBK], a                                ; $7ccd: $e0 $70
    call Call_000_258a                            ; $7ccf: $cd $8a $25
    pop de                                        ; $7cd2: $d1
    ld a, d                                       ; $7cd3: $7a
    or a                                          ; $7cd4: $b7
    jp z, Jump_005_7f53                           ; $7cd5: $ca $53 $7f

    ld hl, $7f53                                  ; $7cd8: $21 $53 $7f
    ld a, l                                       ; $7cdb: $7d
    ld [$cd59], a                                 ; $7cdc: $ea $59 $cd
    ld a, h                                       ; $7cdf: $7c
    ld [$cd5a], a                                 ; $7ce0: $ea $5a $cd
    jp Jump_000_3820                              ; $7ce3: $c3 $20 $38


    push de                                       ; $7ce6: $d5
    ldh a, [rSVBK]                                ; $7ce7: $f0 $70
    push af                                       ; $7ce9: $f5
    ld a, $02                                     ; $7cea: $3e $02
    ldh [rSVBK], a                                ; $7cec: $e0 $70
    ld hl, $d000                                  ; $7cee: $21 $00 $d0
    ld bc, $0080                                  ; $7cf1: $01 $80 $00
    ld a, $ff                                     ; $7cf4: $3e $ff
    call Call_000_112f                            ; $7cf6: $cd $2f $11
    pop af                                        ; $7cf9: $f1
    ldh [rSVBK], a                                ; $7cfa: $e0 $70
    pop de                                        ; $7cfc: $d1
    push de                                       ; $7cfd: $d5
    ld a, e                                       ; $7cfe: $7b
    call Call_005_7bd8                            ; $7cff: $cd $d8 $7b
    pop de                                        ; $7d02: $d1
    ld a, d                                       ; $7d03: $7a
    or a                                          ; $7d04: $b7
    jp z, Jump_005_7f53                           ; $7d05: $ca $53 $7f

    ld hl, $7f53                                  ; $7d08: $21 $53 $7f
    ld a, l                                       ; $7d0b: $7d
    ld [$cd59], a                                 ; $7d0c: $ea $59 $cd
    ld a, h                                       ; $7d0f: $7c
    ld [$cd5a], a                                 ; $7d10: $ea $5a $cd
    jp Jump_000_3820                              ; $7d13: $c3 $20 $38


    push de                                       ; $7d16: $d5
    ldh a, [rSVBK]                                ; $7d17: $f0 $70
    push af                                       ; $7d19: $f5
    ld a, $02                                     ; $7d1a: $3e $02
    ldh [rSVBK], a                                ; $7d1c: $e0 $70
    ld hl, $d000                                  ; $7d1e: $21 $00 $d0
    ld bc, $0040                                  ; $7d21: $01 $40 $00
    ld a, $ff                                     ; $7d24: $3e $ff
    call Call_000_112f                            ; $7d26: $cd $2f $11
    ld hl, $d0c0                                  ; $7d29: $21 $c0 $d0
    ld de, $d040                                  ; $7d2c: $11 $40 $d0
    call Call_000_11f4                            ; $7d2f: $cd $f4 $11
    pop af                                        ; $7d32: $f1
    ldh [rSVBK], a                                ; $7d33: $e0 $70
    pop de                                        ; $7d35: $d1
    push de                                       ; $7d36: $d5
    ld a, e                                       ; $7d37: $7b
    call Call_005_7bd8                            ; $7d38: $cd $d8 $7b
    pop de                                        ; $7d3b: $d1
    ld a, d                                       ; $7d3c: $7a
    or a                                          ; $7d3d: $b7
    jp z, Jump_005_7f53                           ; $7d3e: $ca $53 $7f

    ld hl, $7f53                                  ; $7d41: $21 $53 $7f
    ld a, l                                       ; $7d44: $7d
    ld [$cd59], a                                 ; $7d45: $ea $59 $cd
    ld a, h                                       ; $7d48: $7c
    ld [$cd5a], a                                 ; $7d49: $ea $5a $cd
    jp Jump_000_3820                              ; $7d4c: $c3 $20 $38


Call_005_7d4f:
    push de                                       ; $7d4f: $d5
    ldh a, [rSVBK]                                ; $7d50: $f0 $70
    push af                                       ; $7d52: $f5
    ld a, $02                                     ; $7d53: $3e $02
    ldh [rSVBK], a                                ; $7d55: $e0 $70
    ldh a, [rSVBK]                                ; $7d57: $f0 $70
    push af                                       ; $7d59: $f5
    ld a, $06                                     ; $7d5a: $3e $06
    ldh [rSVBK], a                                ; $7d5c: $e0 $70
    ld a, [$d6cd]                                 ; $7d5e: $fa $cd $d6
    ldh [$bc], a                                  ; $7d61: $e0 $bc
    pop af                                        ; $7d63: $f1
    ldh [rSVBK], a                                ; $7d64: $e0 $70
    ldh a, [$bc]                                  ; $7d66: $f0 $bc
    or a                                          ; $7d68: $b7
    jr z, jr_005_7d78                             ; $7d69: $28 $0d

    ldh a, [$d2]                                  ; $7d6b: $f0 $d2
    cp $0b                                        ; $7d6d: $fe $0b
    jr nz, jr_005_7d78                            ; $7d6f: $20 $07

    push de                                       ; $7d71: $d5
    ld a, $01                                     ; $7d72: $3e $01
    call Call_005_7f74                            ; $7d74: $cd $74 $7f
    pop de                                        ; $7d77: $d1

jr_005_7d78:
    ld a, e                                       ; $7d78: $7b
    call Call_005_7bd8                            ; $7d79: $cd $d8 $7b
    pop af                                        ; $7d7c: $f1
    ldh [rSVBK], a                                ; $7d7d: $e0 $70
    pop de                                        ; $7d7f: $d1
    ld a, d                                       ; $7d80: $7a
    or a                                          ; $7d81: $b7
    jp z, Jump_005_7f53                           ; $7d82: $ca $53 $7f

    ld hl, $7f53                                  ; $7d85: $21 $53 $7f
    ld a, l                                       ; $7d88: $7d
    ld [$cd59], a                                 ; $7d89: $ea $59 $cd
    ld a, h                                       ; $7d8c: $7c
    ld [$cd5a], a                                 ; $7d8d: $ea $5a $cd
    jp Jump_000_3820                              ; $7d90: $c3 $20 $38


    push de                                       ; $7d93: $d5
    ldh a, [rSVBK]                                ; $7d94: $f0 $70
    push af                                       ; $7d96: $f5
    ld a, $02                                     ; $7d97: $3e $02
    ldh [rSVBK], a                                ; $7d99: $e0 $70
    push de                                       ; $7d9b: $d5
    ld hl, $d0c0                                  ; $7d9c: $21 $c0 $d0
    ld de, $d040                                  ; $7d9f: $11 $40 $d0
    call Call_000_11f4                            ; $7da2: $cd $f4 $11
    pop de                                        ; $7da5: $d1
    ld a, e                                       ; $7da6: $7b
    call Call_005_7bf1                            ; $7da7: $cd $f1 $7b
    pop af                                        ; $7daa: $f1
    ldh [rSVBK], a                                ; $7dab: $e0 $70
    pop de                                        ; $7dad: $d1
    ld a, d                                       ; $7dae: $7a
    or a                                          ; $7daf: $b7
    jp z, Jump_005_7f53                           ; $7db0: $ca $53 $7f

    ld hl, $7f53                                  ; $7db3: $21 $53 $7f
    ld a, l                                       ; $7db6: $7d
    ld [$cd59], a                                 ; $7db7: $ea $59 $cd
    ld a, h                                       ; $7dba: $7c
    ld [$cd5a], a                                 ; $7dbb: $ea $5a $cd
    jp Jump_000_3820                              ; $7dbe: $c3 $20 $38


    ld d, $02                                     ; $7dc1: $16 $02
    jr jr_005_7dcb                                ; $7dc3: $18 $06

    ld d, $01                                     ; $7dc5: $16 $01
    jr jr_005_7dcb                                ; $7dc7: $18 $02

    ld d, $00                                     ; $7dc9: $16 $00

jr_005_7dcb:
    ld a, $05                                     ; $7dcb: $3e $05
    ld [$cbdc], a                                 ; $7dcd: $ea $dc $cb
    ld a, [$c116]                                 ; $7dd0: $fa $16 $c1
    ld [$cbd3], a                                 ; $7dd3: $ea $d3 $cb
    ld a, [$c117]                                 ; $7dd6: $fa $17 $c1
    ld [$cbd4], a                                 ; $7dd9: $ea $d4 $cb
    ld a, e                                       ; $7ddc: $7b
    dec a                                         ; $7ddd: $3d
    ld [$cbd1], a                                 ; $7dde: $ea $d1 $cb
    xor a                                         ; $7de1: $af
    ld [$cbd2], a                                 ; $7de2: $ea $d2 $cb
    ldh a, [rSCY]                                 ; $7de5: $f0 $42
    ld [$cbd0], a                                 ; $7de7: $ea $d0 $cb
    inc a                                         ; $7dea: $3c
    ld [$cbcf], a                                 ; $7deb: $ea $cf $cb
    ldh a, [rSCX]                                 ; $7dee: $f0 $43
    ld [$cbd8], a                                 ; $7df0: $ea $d8 $cb
    ld a, d                                       ; $7df3: $7a
    or a                                          ; $7df4: $b7
    jr nz, jr_005_7e08                            ; $7df5: $20 $11

    ld hl, $7b62                                  ; $7df7: $21 $62 $7b
    ldh [$c1], a                                  ; $7dfa: $e0 $c1
    ld a, $6d                                     ; $7dfc: $3e $6d
    ldh [$bd], a                                  ; $7dfe: $e0 $bd
    ld a, $7c                                     ; $7e00: $3e $7c
    ldh [$be], a                                  ; $7e02: $e0 $be
    call Call_000_343a                            ; $7e04: $cd $3a $34
    ret                                           ; $7e07: $c9


jr_005_7e08:
    ld hl, $7b6f                                  ; $7e08: $21 $6f $7b
    ldh [$c1], a                                  ; $7e0b: $e0 $c1
    ld a, $6d                                     ; $7e0d: $3e $6d
    ldh [$bd], a                                  ; $7e0f: $e0 $bd
    ld a, $7c                                     ; $7e11: $3e $7c
    ldh [$be], a                                  ; $7e13: $e0 $be
    call Call_000_343a                            ; $7e15: $cd $3a $34
    ret                                           ; $7e18: $c9


    ld a, $0a                                     ; $7e19: $3e $0a
    ld [$cbd7], a                                 ; $7e1b: $ea $d7 $cb
    ld d, $02                                     ; $7e1e: $16 $02
    jr jr_005_7e32                                ; $7e20: $18 $10

    call Call_000_37e0                            ; $7e22: $cd $e0 $37
    ld d, $01                                     ; $7e25: $16 $01
    jr jr_005_7e2b                                ; $7e27: $18 $02

    ld d, $00                                     ; $7e29: $16 $00

jr_005_7e2b:
    push de                                       ; $7e2b: $d5
    ld d, $01                                     ; $7e2c: $16 $01
    call Call_005_7c9a                            ; $7e2e: $cd $9a $7c
    pop de                                        ; $7e31: $d1

jr_005_7e32:
    ld a, [$c116]                                 ; $7e32: $fa $16 $c1
    ld [$cbd3], a                                 ; $7e35: $ea $d3 $cb
    ld a, [$c117]                                 ; $7e38: $fa $17 $c1
    ld [$cbd4], a                                 ; $7e3b: $ea $d4 $cb
    ld a, e                                       ; $7e3e: $7b
    dec a                                         ; $7e3f: $3d
    ld [$cbd1], a                                 ; $7e40: $ea $d1 $cb
    xor a                                         ; $7e43: $af
    ld [$cbd2], a                                 ; $7e44: $ea $d2 $cb
    ld a, d                                       ; $7e47: $7a
    cp $01                                        ; $7e48: $fe $01
    jr z, jr_005_7e70                             ; $7e4a: $28 $24

    cp $02                                        ; $7e4c: $fe $02
    jr z, jr_005_7e90                             ; $7e4e: $28 $40

    ldh a, [rSCY]                                 ; $7e50: $f0 $42
    ld [$cbd0], a                                 ; $7e52: $ea $d0 $cb
    add $8f                                       ; $7e55: $c6 $8f
    ld [$cbcf], a                                 ; $7e57: $ea $cf $cb
    ldh a, [rSCX]                                 ; $7e5a: $f0 $43
    ld [$cbd8], a                                 ; $7e5c: $ea $d8 $cb
    ld hl, $7b80                                  ; $7e5f: $21 $80 $7b
    ldh [$c1], a                                  ; $7e62: $e0 $c1
    ld a, $6d                                     ; $7e64: $3e $6d
    ldh [$bd], a                                  ; $7e66: $e0 $bd
    ld a, $7c                                     ; $7e68: $3e $7c
    ldh [$be], a                                  ; $7e6a: $e0 $be
    call Call_000_343a                            ; $7e6c: $cd $3a $34
    ret                                           ; $7e6f: $c9


jr_005_7e70:
    ldh a, [rSCY]                                 ; $7e70: $f0 $42
    ld [$cbd0], a                                 ; $7e72: $ea $d0 $cb
    add $6b                                       ; $7e75: $c6 $6b
    ld [$cbcf], a                                 ; $7e77: $ea $cf $cb
    ldh a, [rSCX]                                 ; $7e7a: $f0 $43
    ld [$cbd8], a                                 ; $7e7c: $ea $d8 $cb
    ld hl, $7b8d                                  ; $7e7f: $21 $8d $7b
    ldh [$c1], a                                  ; $7e82: $e0 $c1
    ld a, $6d                                     ; $7e84: $3e $6d
    ldh [$bd], a                                  ; $7e86: $e0 $bd
    ld a, $7c                                     ; $7e88: $3e $7c
    ldh [$be], a                                  ; $7e8a: $e0 $be
    call Call_000_343a                            ; $7e8c: $cd $3a $34
    ret                                           ; $7e8f: $c9


jr_005_7e90:
    ldh a, [rSCY]                                 ; $7e90: $f0 $42
    ld [$cbd0], a                                 ; $7e92: $ea $d0 $cb
    add $8f                                       ; $7e95: $c6 $8f
    ld [$cbcf], a                                 ; $7e97: $ea $cf $cb
    ldh a, [rSCX]                                 ; $7e9a: $f0 $43
    ld [$cbd8], a                                 ; $7e9c: $ea $d8 $cb
    ld hl, $7ba2                                  ; $7e9f: $21 $a2 $7b
    ldh [$c1], a                                  ; $7ea2: $e0 $c1
    ld a, $6d                                     ; $7ea4: $3e $6d
    ldh [$bd], a                                  ; $7ea6: $e0 $bd
    ld a, $7c                                     ; $7ea8: $3e $7c
    ldh [$be], a                                  ; $7eaa: $e0 $be
    call Call_000_343a                            ; $7eac: $cd $3a $34
    ret                                           ; $7eaf: $c9


    push de                                       ; $7eb0: $d5
    call Call_000_37e0                            ; $7eb1: $cd $e0 $37
    ld d, $00                                     ; $7eb4: $16 $00
    ld a, $05                                     ; $7eb6: $3e $05
    ld [$cbdc], a                                 ; $7eb8: $ea $dc $cb
    ld a, [$c116]                                 ; $7ebb: $fa $16 $c1
    ld [$cbd3], a                                 ; $7ebe: $ea $d3 $cb
    ld a, [$c117]                                 ; $7ec1: $fa $17 $c1
    ld [$cbd4], a                                 ; $7ec4: $ea $d4 $cb
    ld a, e                                       ; $7ec7: $7b
    dec a                                         ; $7ec8: $3d
    ld [$cbd1], a                                 ; $7ec9: $ea $d1 $cb
    xor a                                         ; $7ecc: $af
    ld [$cbd2], a                                 ; $7ecd: $ea $d2 $cb
    ldh a, [rSCY]                                 ; $7ed0: $f0 $42
    ld [$cbd0], a                                 ; $7ed2: $ea $d0 $cb
    inc a                                         ; $7ed5: $3c
    ld [$cbcf], a                                 ; $7ed6: $ea $cf $cb
    ld a, $8e                                     ; $7ed9: $3e $8e
    ld [$cbdb], a                                 ; $7edb: $ea $db $cb
    ldh a, [rSCX]                                 ; $7ede: $f0 $43
    ld [$cbd8], a                                 ; $7ee0: $ea $d8 $cb
    xor a                                         ; $7ee3: $af
    ld [$cbda], a                                 ; $7ee4: $ea $da $cb
    ld [$cbd9], a                                 ; $7ee7: $ea $d9 $cb
    ld hl, $7bc4                                  ; $7eea: $21 $c4 $7b
    ldh [$c1], a                                  ; $7eed: $e0 $c1
    ld a, $6d                                     ; $7eef: $3e $6d
    ldh [$bd], a                                  ; $7ef1: $e0 $bd
    ld a, $7c                                     ; $7ef3: $3e $7c
    ldh [$be], a                                  ; $7ef5: $e0 $be
    call Call_000_343a                            ; $7ef7: $cd $3a $34
    pop de                                        ; $7efa: $d1
    ld a, d                                       ; $7efb: $7a
    or a                                          ; $7efc: $b7
    ret z                                         ; $7efd: $c8

    ld a, $19                                     ; $7efe: $3e $19

jr_005_7f00:
    push af                                       ; $7f00: $f5
    call Call_000_37e0                            ; $7f01: $cd $e0 $37
    pop af                                        ; $7f04: $f1
    dec a                                         ; $7f05: $3d
    jr nz, jr_005_7f00                            ; $7f06: $20 $f8

    xor a                                         ; $7f08: $af
    ld [$cbdc], a                                 ; $7f09: $ea $dc $cb
    ld [$cd57], a                                 ; $7f0c: $ea $57 $cd
    ret                                           ; $7f0f: $c9


    ld d, $00                                     ; $7f10: $16 $00
    push de                                       ; $7f12: $d5
    ld d, $01                                     ; $7f13: $16 $01
    call Call_005_7c9a                            ; $7f15: $cd $9a $7c
    pop de                                        ; $7f18: $d1
    ld a, [$c116]                                 ; $7f19: $fa $16 $c1
    ld [$cbd3], a                                 ; $7f1c: $ea $d3 $cb
    ld a, [$c117]                                 ; $7f1f: $fa $17 $c1
    ld [$cbd4], a                                 ; $7f22: $ea $d4 $cb
    ld a, e                                       ; $7f25: $7b
    dec a                                         ; $7f26: $3d
    ld [$cbd1], a                                 ; $7f27: $ea $d1 $cb
    xor a                                         ; $7f2a: $af
    ld [$cbd2], a                                 ; $7f2b: $ea $d2 $cb
    ldh a, [rSCY]                                 ; $7f2e: $f0 $42
    ld [$cbd0], a                                 ; $7f30: $ea $d0 $cb
    add $47                                       ; $7f33: $c6 $47
    ld [$cbcf], a                                 ; $7f35: $ea $cf $cb
    ld a, $48                                     ; $7f38: $3e $48
    ld [$cbdb], a                                 ; $7f3a: $ea $db $cb
    ldh a, [rSCX]                                 ; $7f3d: $f0 $43
    ld [$cbd8], a                                 ; $7f3f: $ea $d8 $cb
    ld hl, $7baf                                  ; $7f42: $21 $af $7b
    ldh [$c1], a                                  ; $7f45: $e0 $c1
    ld a, $6d                                     ; $7f47: $3e $6d
    ldh [$bd], a                                  ; $7f49: $e0 $bd
    ld a, $7c                                     ; $7f4b: $3e $7c
    ldh [$be], a                                  ; $7f4d: $e0 $be
    call Call_000_343a                            ; $7f4f: $cd $3a $34
    ret                                           ; $7f52: $c9


Jump_005_7f53:
    ld a, [$cbe0]                                 ; $7f53: $fa $e0 $cb
    or a                                          ; $7f56: $b7
    jr nz, jr_005_7f5f                            ; $7f57: $20 $06

    xor a                                         ; $7f59: $af
    ldh [$dc], a                                  ; $7f5a: $e0 $dc
    ld [$cd4d], a                                 ; $7f5c: $ea $4d $cd

jr_005_7f5f:
    xor a                                         ; $7f5f: $af
    ld [$cbe0], a                                 ; $7f60: $ea $e0 $cb
    ld [$cbdc], a                                 ; $7f63: $ea $dc $cb
    ld a, [$cb17]                                 ; $7f66: $fa $17 $cb
    or a                                          ; $7f69: $b7
    ret z                                         ; $7f6a: $c8

    cp $0a                                        ; $7f6b: $fe $0a
    ret z                                         ; $7f6d: $c8

    ld a, $01                                     ; $7f6e: $3e $01
    ld [$cb17], a                                 ; $7f70: $ea $17 $cb
    ret                                           ; $7f73: $c9


Call_005_7f74:
    ld hl, $d000                                  ; $7f74: $21 $00 $d0
    or a                                          ; $7f77: $b7
    jr z, jr_005_7f7f                             ; $7f78: $28 $05

    ld bc, $0040                                  ; $7f7a: $01 $40 $00
    jr jr_005_7f82                                ; $7f7d: $18 $03

jr_005_7f7f:
    ld bc, $0020                                  ; $7f7f: $01 $20 $00

jr_005_7f82:
    ld a, [hl+]                                   ; $7f82: $2a
    ld e, a                                       ; $7f83: $5f
    ld a, [hl-]                                   ; $7f84: $3a
    ld d, a                                       ; $7f85: $57
    push hl                                       ; $7f86: $e5
    res 7, d                                      ; $7f87: $cb $ba
    ldh [$c1], a                                  ; $7f89: $e0 $c1
    ld a, $91                                     ; $7f8b: $3e $91
    ldh [$bd], a                                  ; $7f8d: $e0 $bd
    ld a, $78                                     ; $7f8f: $3e $78
    ldh [$be], a                                  ; $7f91: $e0 $be
    call Call_000_343a                            ; $7f93: $cd $3a $34
    sub $10                                       ; $7f96: $d6 $10
    call c, Call_005_7fbc                         ; $7f98: $dc $bc $7f
    push af                                       ; $7f9b: $f5
    ld a, l                                       ; $7f9c: $7d
    sub $10                                       ; $7f9d: $d6 $10
    call c, Call_005_7fbc                         ; $7f9f: $dc $bc $7f
    ld l, a                                       ; $7fa2: $6f
    pop af                                        ; $7fa3: $f1
    ldh [$c1], a                                  ; $7fa4: $e0 $c1
    ld a, $a5                                     ; $7fa6: $3e $a5
    ldh [$bd], a                                  ; $7fa8: $e0 $bd
    ld a, $78                                     ; $7faa: $3e $78
    ldh [$be], a                                  ; $7fac: $e0 $be
    call Call_000_343a                            ; $7fae: $cd $3a $34
    pop hl                                        ; $7fb1: $e1
    ld [hl], e                                    ; $7fb2: $73
    inc hl                                        ; $7fb3: $23
    ld [hl], d                                    ; $7fb4: $72
    inc hl                                        ; $7fb5: $23
    dec bc                                        ; $7fb6: $0b
    ld a, b                                       ; $7fb7: $78
    or c                                          ; $7fb8: $b1
    jr nz, jr_005_7f82                            ; $7fb9: $20 $c7

    ret                                           ; $7fbb: $c9


Call_005_7fbc:
    xor a                                         ; $7fbc: $af
    ret                                           ; $7fbd: $c9


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
