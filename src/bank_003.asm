; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

    db $03

Call_003_4001:
    ld a, [$cd44]                                 ; $4001: $fa $44 $cd
    or a                                          ; $4004: $b7
    ret nz                                        ; $4005: $c0

    push bc                                       ; $4006: $c5
    ld hl, $cdc7                                  ; $4007: $21 $c7 $cd
    ld e, [hl]                                    ; $400a: $5e
    inc hl                                        ; $400b: $23
    ld d, [hl]                                    ; $400c: $56
    ld hl, $ff90                                  ; $400d: $21 $90 $ff
    ld a, [hl+]                                   ; $4010: $2a
    ld h, [hl]                                    ; $4011: $66
    ld l, a                                       ; $4012: $6f
    ld bc, $0010                                  ; $4013: $01 $10 $00
    add hl, bc                                    ; $4016: $09
    call Call_000_3139                            ; $4017: $cd $39 $31
    jr c, jr_003_4025                             ; $401a: $38 $09

    ld bc, $0080                                  ; $401c: $01 $80 $00
    add hl, bc                                    ; $401f: $09
    call Call_000_3139                            ; $4020: $cd $39 $31
    jr c, jr_003_4026                             ; $4023: $38 $01

jr_003_4025:
    xor a                                         ; $4025: $af

jr_003_4026:
    pop bc                                        ; $4026: $c1
    ret                                           ; $4027: $c9


Call_003_4028:
    ld a, [$cd44]                                 ; $4028: $fa $44 $cd
    or a                                          ; $402b: $b7
    ret nz                                        ; $402c: $c0

    push bc                                       ; $402d: $c5
    ld hl, $cdca                                  ; $402e: $21 $ca $cd
    ld e, [hl]                                    ; $4031: $5e
    inc hl                                        ; $4032: $23
    ld d, [hl]                                    ; $4033: $56
    ld hl, $ff92                                  ; $4034: $21 $92 $ff
    ld a, [hl+]                                   ; $4037: $2a
    ld h, [hl]                                    ; $4038: $66
    ld l, a                                       ; $4039: $6f
    ld bc, $0008                                  ; $403a: $01 $08 $00
    add hl, bc                                    ; $403d: $09
    call Call_000_3139                            ; $403e: $cd $39 $31
    jr c, jr_003_4050                             ; $4041: $38 $0d

    ld hl, $cd4b                                  ; $4043: $21 $4b $cd
    ld a, [hl+]                                   ; $4046: $2a
    ld h, [hl]                                    ; $4047: $66
    ld l, a                                       ; $4048: $6f
    ld bc, $fff8                                  ; $4049: $01 $f8 $ff
    add hl, bc                                    ; $404c: $09
    rst $10                                       ; $404d: $d7
    jr c, jr_003_4051                             ; $404e: $38 $01

jr_003_4050:
    xor a                                         ; $4050: $af

jr_003_4051:
    pop bc                                        ; $4051: $c1
    ret                                           ; $4052: $c9


    call Call_000_0926                            ; $4053: $cd $26 $09
    ld a, h                                       ; $4056: $7c
    or a                                          ; $4057: $b7
    jr nz, jr_003_4062                            ; $4058: $20 $08

    ld a, [$cafa]                                 ; $405a: $fa $fa $ca
    ld h, a                                       ; $405d: $67
    ld a, l                                       ; $405e: $7d
    cp h                                          ; $405f: $bc
    jr c, jr_003_40a5                             ; $4060: $38 $43

jr_003_4062:
    ldh a, [rSVBK]                                ; $4062: $f0 $70
    push af                                       ; $4064: $f5
    ld a, $06                                     ; $4065: $3e $06
    ldh [rSVBK], a                                ; $4067: $e0 $70
    ld a, [$d6cd]                                 ; $4069: $fa $cd $d6
    ldh [$bc], a                                  ; $406c: $e0 $bc
    pop af                                        ; $406e: $f1
    ldh [rSVBK], a                                ; $406f: $e0 $70
    ldh a, [$bc]                                  ; $4071: $f0 $bc
    or a                                          ; $4073: $b7
    jr nz, jr_003_408c                            ; $4074: $20 $16

    ldh a, [$d8]                                  ; $4076: $f0 $d8
    cp $4d                                        ; $4078: $fe $4d
    jr z, jr_003_40a5                             ; $407a: $28 $29

    ldh a, [$d8]                                  ; $407c: $f0 $d8
    cp $45                                        ; $407e: $fe $45
    jr z, jr_003_40a5                             ; $4080: $28 $23

    ldh a, [$d8]                                  ; $4082: $f0 $d8
    cp $2c                                        ; $4084: $fe $2c
    jr c, jr_003_408c                             ; $4086: $38 $04

    cp $33                                        ; $4088: $fe $33
    jr c, jr_003_40a5                             ; $408a: $38 $19

jr_003_408c:
    ld hl, $0006                                  ; $408c: $21 $06 $00
    add hl, bc                                    ; $408f: $09
    ld a, [hl+]                                   ; $4090: $2a
    ld d, [hl]                                    ; $4091: $56
    ld e, a                                       ; $4092: $5f
    inc hl                                        ; $4093: $23
    inc hl                                        ; $4094: $23
    ld a, [hl+]                                   ; $4095: $2a
    ld h, [hl]                                    ; $4096: $66
    ld l, a                                       ; $4097: $6f
    call Call_003_7182                            ; $4098: $cd $82 $71
    cp $09                                        ; $409b: $fe $09
    jr nz, jr_003_40a5                            ; $409d: $20 $06

    ld a, $01                                     ; $409f: $3e $01
    or a                                          ; $40a1: $b7
    jp Jump_000_0039                              ; $40a2: $c3 $39 $00


jr_003_40a5:
    ld a, $01                                     ; $40a5: $3e $01
    ld [$cbf5], a                                 ; $40a7: $ea $f5 $cb
    xor a                                         ; $40aa: $af
    jp Jump_000_0039                              ; $40ab: $c3 $39 $00


    call Call_000_2485                            ; $40ae: $cd $85 $24
    ret nz                                        ; $40b1: $c0

    ldh a, [$cf]                                  ; $40b2: $f0 $cf
    cp $0b                                        ; $40b4: $fe $0b
    jr z, jr_003_40bb                             ; $40b6: $28 $03

    cp $0c                                        ; $40b8: $fe $0c
    ret nz                                        ; $40ba: $c0

jr_003_40bb:
    ldh a, [$de]                                  ; $40bb: $f0 $de
    cp $05                                        ; $40bd: $fe $05
    jp z, Jump_003_41cf                           ; $40bf: $ca $cf $41

    cp $00                                        ; $40c2: $fe $00
    jr z, jr_003_4106                             ; $40c4: $28 $40

    ldh a, [$d8]                                  ; $40c6: $f0 $d8
    cp $11                                        ; $40c8: $fe $11
    jr nz, jr_003_40d7                            ; $40ca: $20 $0b

    ld e, $04                                     ; $40cc: $1e $04
    ld hl, $ccf6                                  ; $40ce: $21 $f6 $cc

jr_003_40d1:
    dec [hl]                                      ; $40d1: $35
    dec [hl]                                      ; $40d2: $35
    inc hl                                        ; $40d3: $23
    dec e                                         ; $40d4: $1d
    jr nz, jr_003_40d1                            ; $40d5: $20 $fa

jr_003_40d7:
    ldh a, [rSVBK]                                ; $40d7: $f0 $70
    push af                                       ; $40d9: $f5
    ld a, $06                                     ; $40da: $3e $06
    ldh [rSVBK], a                                ; $40dc: $e0 $70
    ld a, [$d6c7]                                 ; $40de: $fa $c7 $d6
    ldh [$bc], a                                  ; $40e1: $e0 $bc
    pop af                                        ; $40e3: $f1
    ldh [rSVBK], a                                ; $40e4: $e0 $70
    ldh a, [$bc]                                  ; $40e6: $f0 $bc
    or a                                          ; $40e8: $b7
    jr nz, jr_003_4106                            ; $40e9: $20 $1b

    ld hl, $cbf5                                  ; $40eb: $21 $f5 $cb
    dec [hl]                                      ; $40ee: $35
    jr nz, jr_003_4106                            ; $40ef: $20 $15

    push hl                                       ; $40f1: $e5
    ld hl, $caf9                                  ; $40f2: $21 $f9 $ca
    ld a, [$caf8]                                 ; $40f5: $fa $f8 $ca
    call Call_000_2722                            ; $40f8: $cd $22 $27
    add [hl]                                      ; $40fb: $86
    pop hl                                        ; $40fc: $e1
    ld [hl], a                                    ; $40fd: $77
    call Call_003_439b                            ; $40fe: $cd $9b $43
    ld a, $05                                     ; $4101: $3e $05
    call Call_000_03a0                            ; $4103: $cd $a0 $03

jr_003_4106:
    call Call_003_6bef                            ; $4106: $cd $ef $6b
    ld hl, $cdc1                                  ; $4109: $21 $c1 $cd
    ld a, [hl+]                                   ; $410c: $2a
    ld h, [hl]                                    ; $410d: $66
    ld l, a                                       ; $410e: $6f
    ld a, l                                       ; $410f: $7d
    ld [$cdc7], a                                 ; $4110: $ea $c7 $cd
    ld a, h                                       ; $4113: $7c
    ld [$cdc8], a                                 ; $4114: $ea $c8 $cd
    call Call_003_4001                            ; $4117: $cd $01 $40
    jr nz, jr_003_4125                            ; $411a: $20 $09

    ld hl, $c325                                  ; $411c: $21 $25 $c3
    ld de, $cdc0                                  ; $411f: $11 $c0 $cd
    call CopyHL2DE_3                            ; $4122: $cd $4e $12

jr_003_4125:
    call Call_003_6c3e                            ; $4125: $cd $3e $6c
    call Call_003_6c13                            ; $4128: $cd $13 $6c
    ld hl, $cdc4                                  ; $412b: $21 $c4 $cd
    ld a, [hl+]                                   ; $412e: $2a
    ld h, [hl]                                    ; $412f: $66
    ld l, a                                       ; $4130: $6f
    ld a, l                                       ; $4131: $7d
    ld [$cdca], a                                 ; $4132: $ea $ca $cd
    ld a, h                                       ; $4135: $7c
    ld [$cdcb], a                                 ; $4136: $ea $cb $cd
    call Call_003_4028                            ; $4139: $cd $28 $40
    jr nz, jr_003_4147                            ; $413c: $20 $09

    ld hl, $c328                                  ; $413e: $21 $28 $c3
    ld de, $cdc3                                  ; $4141: $11 $c3 $cd
    call CopyHL2DE_3                            ; $4144: $cd $4e $12

jr_003_4147:
    ld hl, $cdc7                                  ; $4147: $21 $c7 $cd
    ld de, $cabc                                  ; $414a: $11 $bc $ca
    call CopyHL2DE_2                            ; $414d: $cd $51 $12
    ld hl, $cdca                                  ; $4150: $21 $ca $cd
    ld de, $cabe                                  ; $4153: $11 $be $ca
    call CopyHL2DE_2                            ; $4156: $cd $51 $12
    ldh a, [$d8]                                  ; $4159: $f0 $d8
    cp $0a                                        ; $415b: $fe $0a
    jr z, jr_003_4184                             ; $415d: $28 $25

    ldh [$c1], a                                  ; $415f: $e0 $c1
    ld a, $12                                     ; $4161: $3e $12
    ldh [$bd], a                                  ; $4163: $e0 $bd
    ld a, $07                                     ; $4165: $3e $07
    ldh [$be], a                                  ; $4167: $e0 $be
    call Call_000_33ec                            ; $4169: $cd $ec $33
    ldh [$c1], a                                  ; $416c: $e0 $c1
    ld a, $cc                                     ; $416e: $3e $cc
    ldh [$bd], a                                  ; $4170: $e0 $bd
    ld a, $4e                                     ; $4172: $3e $4e
    ldh [$be], a                                  ; $4174: $e0 $be
    call Call_000_33c4                            ; $4176: $cd $c4 $33
    jr c, jr_003_4184                             ; $4179: $38 $09

    ld hl, $c325                                  ; $417b: $21 $25 $c3
    ld de, $cdc0                                  ; $417e: $11 $c0 $cd
    call CopyHL2DE_6                            ; $4181: $cd $45 $12

jr_003_4184:
    call Call_003_6c9c                            ; $4184: $cd $9c $6c
    call Call_003_7728                            ; $4187: $cd $28 $77
    jr z, jr_003_4194                             ; $418a: $28 $08

    ld hl, $002b                                  ; $418c: $21 $2b $00
    add hl, bc                                    ; $418f: $09
    set 0, [hl]                                   ; $4190: $cb $c6
    jr jr_003_419a                                ; $4192: $18 $06

jr_003_4194:
    ld hl, $002b                                  ; $4194: $21 $2b $00
    add hl, bc                                    ; $4197: $09
    res 0, [hl]                                   ; $4198: $cb $86

jr_003_419a:
    call Call_003_7127                            ; $419a: $cd $27 $71
    call Call_003_70f1                            ; $419d: $cd $f1 $70
    ld a, [$c34d]                                 ; $41a0: $fa $4d $c3
    bit 4, a                                      ; $41a3: $cb $67
    jr z, jr_003_41ba                             ; $41a5: $28 $13

    ldh a, [$d8]                                  ; $41a7: $f0 $d8
    cp $0a                                        ; $41a9: $fe $0a
    jr z, jr_003_41ba                             ; $41ab: $28 $0d

    ldh [$c1], a                                  ; $41ad: $e0 $c1
    ld a, $12                                     ; $41af: $3e $12
    ldh [$bd], a                                  ; $41b1: $e0 $bd
    ld a, $07                                     ; $41b3: $3e $07
    ldh [$be], a                                  ; $41b5: $e0 $be
    call Call_000_33ec                            ; $41b7: $cd $ec $33

jr_003_41ba:
    ldh [$c1], a                                  ; $41ba: $e0 $c1
    ld a, $03                                     ; $41bc: $3e $03
    ldh [$bd], a                                  ; $41be: $e0 $bd
    ld a, $72                                     ; $41c0: $3e $72
    ldh [$be], a                                  ; $41c2: $e0 $be
    call Call_000_33c4                            ; $41c4: $cd $c4 $33
    ldh a, [$d8]                                  ; $41c7: $f0 $d8
    cp $60                                        ; $41c9: $fe $60
    jr z, jr_003_41fd                             ; $41cb: $28 $30

    jr jr_003_41d7                                ; $41cd: $18 $08

Jump_003_41cf:
    ld hl, $cae8                                  ; $41cf: $21 $e8 $ca
    ld [hl], $ff                                  ; $41d2: $36 $ff
    inc hl                                        ; $41d4: $23
    ld [hl], $ff                                  ; $41d5: $36 $ff

jr_003_41d7:
    call Call_003_4466                            ; $41d7: $cd $66 $44

jr_003_41da:
    ld hl, $cae6                                  ; $41da: $21 $e6 $ca
    ld e, [hl]                                    ; $41dd: $5e
    inc hl                                        ; $41de: $23
    ld d, [hl]                                    ; $41df: $56
    call Call_003_45d2                            ; $41e0: $cd $d2 $45

jr_003_41e3:
    ldh [$c1], a                                  ; $41e3: $e0 $c1
    ld a, $25                                     ; $41e5: $3e $25
    ldh [$bd], a                                  ; $41e7: $e0 $bd
    ld a, $2e                                     ; $41e9: $3e $2e
    ldh [$be], a                                  ; $41eb: $e0 $be
    call Call_000_33ec                            ; $41ed: $cd $ec $33
    ldh [$c1], a                                  ; $41f0: $e0 $c1
    ld a, $b9                                     ; $41f2: $3e $b9
    ldh [$bd], a                                  ; $41f4: $e0 $bd
    ld a, $29                                     ; $41f6: $3e $29
    ldh [$be], a                                  ; $41f8: $e0 $be
    jp Jump_000_33ec                              ; $41fa: $c3 $ec $33


jr_003_41fd:
    ldh a, [$cc]                                  ; $41fd: $f0 $cc
    cp $3e                                        ; $41ff: $fe $3e
    jr nz, jr_003_420e                            ; $4201: $20 $0b

    ldh a, [$a5]                                  ; $4203: $f0 $a5
    and $02                                       ; $4205: $e6 $02
    jr z, jr_003_420e                             ; $4207: $28 $05

    ld a, $3e                                     ; $4209: $3e $3e
    jp Jump_000_2448                              ; $420b: $c3 $48 $24


jr_003_420e:
    ld hl, $c34b                                  ; $420e: $21 $4b $c3
    res 3, [hl]                                   ; $4211: $cb $9e
    ld a, [$c322]                                 ; $4213: $fa $22 $c3
    or a                                          ; $4216: $b7
    jr z, jr_003_422e                             ; $4217: $28 $15

    dec a                                         ; $4219: $3d
    ld [$c322], a                                 ; $421a: $ea $22 $c3
    ld de, $7ba1                                  ; $421d: $11 $a1 $7b
    call Call_000_0a50                            ; $4220: $cd $50 $0a
    xor a                                         ; $4223: $af
    ld hl, $c32f                                  ; $4224: $21 $2f $c3
    ld [hl+], a                                   ; $4227: $22
    ld [hl+], a                                   ; $4228: $22
    ld [hl+], a                                   ; $4229: $22
    ld [hl], $02                                  ; $422a: $36 $02
    jr jr_003_41e3                                ; $422c: $18 $b5

jr_003_422e:
    call Call_003_4233                            ; $422e: $cd $33 $42
    jr jr_003_41da                                ; $4231: $18 $a7

Call_003_4233:
    ldh a, [$a5]                                  ; $4233: $f0 $a5
    and $f0                                       ; $4235: $e6 $f0
    or a                                          ; $4237: $b7
    jr z, jr_003_4258                             ; $4238: $28 $1e

    ld [$cae0], a                                 ; $423a: $ea $e0 $ca
    bit 4, a                                      ; $423d: $cb $67
    jr nz, jr_003_427c                            ; $423f: $20 $3b

    ld a, [$cae0]                                 ; $4241: $fa $e0 $ca
    bit 5, a                                      ; $4244: $cb $6f
    jr nz, jr_003_42b5                            ; $4246: $20 $6d

    ld a, [$cae0]                                 ; $4248: $fa $e0 $ca
    bit 6, a                                      ; $424b: $cb $77
    jp nz, Jump_003_42e9                          ; $424d: $c2 $e9 $42

    ld a, [$cae0]                                 ; $4250: $fa $e0 $ca
    bit 7, a                                      ; $4253: $cb $7f
    jp nz, Jump_003_4318                          ; $4255: $c2 $18 $43

jr_003_4258:
    ldh a, [$a4]                                  ; $4258: $f0 $a4
    and $f0                                       ; $425a: $e6 $f0
    ld [$cae0], a                                 ; $425c: $ea $e0 $ca
    bit 4, a                                      ; $425f: $cb $67
    jr nz, jr_003_4298                            ; $4261: $20 $35

    ld a, [$cae0]                                 ; $4263: $fa $e0 $ca
    bit 5, a                                      ; $4266: $cb $6f
    jp nz, Jump_003_42d2                          ; $4268: $c2 $d2 $42

    ld a, [$cae0]                                 ; $426b: $fa $e0 $ca
    bit 6, a                                      ; $426e: $cb $77
    jp nz, Jump_003_4301                          ; $4270: $c2 $01 $43

    ld a, [$cae0]                                 ; $4273: $fa $e0 $ca
    bit 7, a                                      ; $4276: $cb $7f
    jp nz, Jump_003_4330                          ; $4278: $c2 $30 $43

    ret                                           ; $427b: $c9


jr_003_427c:
    ld de, $7b89                                  ; $427c: $11 $89 $7b
    call Call_000_0a50                            ; $427f: $cd $50 $0a
    xor a                                         ; $4282: $af
    call Call_000_08ce                            ; $4283: $cd $ce $08
    ld hl, $0000                                  ; $4286: $21 $00 $00
    push de                                       ; $4289: $d5
    push hl                                       ; $428a: $e5
    ld hl, $000f                                  ; $428b: $21 $0f $00
    add hl, bc                                    ; $428e: $09
    push hl                                       ; $428f: $e5
    pop de                                        ; $4290: $d1
    pop hl                                        ; $4291: $e1
    ld a, l                                       ; $4292: $7d
    ld [de], a                                    ; $4293: $12
    inc de                                        ; $4294: $13
    ld a, h                                       ; $4295: $7c
    ld [de], a                                    ; $4296: $12
    pop de                                        ; $4297: $d1

jr_003_4298:
    ld hl, $000f                                  ; $4298: $21 $0f $00
    add hl, bc                                    ; $429b: $09
    ld e, [hl]                                    ; $429c: $5e
    inc hl                                        ; $429d: $23
    ld d, [hl]                                    ; $429e: $56
    ld hl, $004b                                  ; $429f: $21 $4b $00
    add hl, de                                    ; $42a2: $19
    push de                                       ; $42a3: $d5
    push hl                                       ; $42a4: $e5
    ld hl, $000f                                  ; $42a5: $21 $0f $00
    add hl, bc                                    ; $42a8: $09
    push hl                                       ; $42a9: $e5
    pop de                                        ; $42aa: $d1
    pop hl                                        ; $42ab: $e1
    ld a, l                                       ; $42ac: $7d
    ld [de], a                                    ; $42ad: $12
    inc de                                        ; $42ae: $13
    ld a, h                                       ; $42af: $7c
    ld [de], a                                    ; $42b0: $12
    pop de                                        ; $42b1: $d1
    jp Jump_003_434a                              ; $42b2: $c3 $4a $43


jr_003_42b5:
    ld de, $7b89                                  ; $42b5: $11 $89 $7b
    call Call_000_0a50                            ; $42b8: $cd $50 $0a
    ld a, $20                                     ; $42bb: $3e $20
    call Call_000_08ce                            ; $42bd: $cd $ce $08
    ld hl, $0000                                  ; $42c0: $21 $00 $00
    push de                                       ; $42c3: $d5
    push hl                                       ; $42c4: $e5
    ld hl, $000f                                  ; $42c5: $21 $0f $00
    add hl, bc                                    ; $42c8: $09
    push hl                                       ; $42c9: $e5
    pop de                                        ; $42ca: $d1
    pop hl                                        ; $42cb: $e1
    ld a, l                                       ; $42cc: $7d
    ld [de], a                                    ; $42cd: $12
    inc de                                        ; $42ce: $13
    ld a, h                                       ; $42cf: $7c
    ld [de], a                                    ; $42d0: $12
    pop de                                        ; $42d1: $d1

Jump_003_42d2:
    ld hl, $000f                                  ; $42d2: $21 $0f $00
    add hl, bc                                    ; $42d5: $09
    ld e, [hl]                                    ; $42d6: $5e
    inc hl                                        ; $42d7: $23
    ld d, [hl]                                    ; $42d8: $56
    ld hl, $004b                                  ; $42d9: $21 $4b $00
    call Call_000_3132                            ; $42dc: $cd $32 $31
    ld hl, $000f                                  ; $42df: $21 $0f $00
    add hl, bc                                    ; $42e2: $09
    ld a, e                                       ; $42e3: $7b
    ld [hl+], a                                   ; $42e4: $22
    ld a, d                                       ; $42e5: $7a
    ld [hl], a                                    ; $42e6: $77
    jr jr_003_434a                                ; $42e7: $18 $61

Jump_003_42e9:
    ld de, $7b91                                  ; $42e9: $11 $91 $7b
    call Call_000_0a50                            ; $42ec: $cd $50 $0a
    ld hl, $0000                                  ; $42ef: $21 $00 $00
    push de                                       ; $42f2: $d5
    push hl                                       ; $42f3: $e5
    ld hl, $0011                                  ; $42f4: $21 $11 $00
    add hl, bc                                    ; $42f7: $09
    push hl                                       ; $42f8: $e5
    pop de                                        ; $42f9: $d1
    pop hl                                        ; $42fa: $e1
    ld a, l                                       ; $42fb: $7d
    ld [de], a                                    ; $42fc: $12
    inc de                                        ; $42fd: $13
    ld a, h                                       ; $42fe: $7c
    ld [de], a                                    ; $42ff: $12
    pop de                                        ; $4300: $d1

Jump_003_4301:
    ld hl, $0011                                  ; $4301: $21 $11 $00
    add hl, bc                                    ; $4304: $09
    ld e, [hl]                                    ; $4305: $5e
    inc hl                                        ; $4306: $23
    ld d, [hl]                                    ; $4307: $56
    ld hl, $004b                                  ; $4308: $21 $4b $00
    call Call_000_3132                            ; $430b: $cd $32 $31
    ld hl, $0011                                  ; $430e: $21 $11 $00
    add hl, bc                                    ; $4311: $09
    ld a, e                                       ; $4312: $7b
    ld [hl+], a                                   ; $4313: $22
    ld a, d                                       ; $4314: $7a
    ld [hl], a                                    ; $4315: $77
    jr jr_003_434a                                ; $4316: $18 $32

Jump_003_4318:
    ld de, $7b99                                  ; $4318: $11 $99 $7b
    call Call_000_0a50                            ; $431b: $cd $50 $0a
    ld hl, $0000                                  ; $431e: $21 $00 $00
    push de                                       ; $4321: $d5
    push hl                                       ; $4322: $e5
    ld hl, $0011                                  ; $4323: $21 $11 $00
    add hl, bc                                    ; $4326: $09
    push hl                                       ; $4327: $e5
    pop de                                        ; $4328: $d1
    pop hl                                        ; $4329: $e1
    ld a, l                                       ; $432a: $7d
    ld [de], a                                    ; $432b: $12
    inc de                                        ; $432c: $13
    ld a, h                                       ; $432d: $7c
    ld [de], a                                    ; $432e: $12
    pop de                                        ; $432f: $d1

Jump_003_4330:
    ld hl, $0011                                  ; $4330: $21 $11 $00
    add hl, bc                                    ; $4333: $09
    ld e, [hl]                                    ; $4334: $5e
    inc hl                                        ; $4335: $23
    ld d, [hl]                                    ; $4336: $56
    ld hl, $004b                                  ; $4337: $21 $4b $00
    add hl, de                                    ; $433a: $19
    push de                                       ; $433b: $d5
    push hl                                       ; $433c: $e5
    ld hl, $0011                                  ; $433d: $21 $11 $00
    add hl, bc                                    ; $4340: $09
    push hl                                       ; $4341: $e5
    pop de                                        ; $4342: $d1
    pop hl                                        ; $4343: $e1
    ld a, l                                       ; $4344: $7d
    ld [de], a                                    ; $4345: $12
    inc de                                        ; $4346: $13
    ld a, h                                       ; $4347: $7c
    ld [de], a                                    ; $4348: $12
    pop de                                        ; $4349: $d1

Jump_003_434a:
jr_003_434a:
    ld hl, $c32f                                  ; $434a: $21 $2f $c3
    ld a, [hl+]                                   ; $434d: $2a
    ld h, [hl]                                    ; $434e: $66
    ld l, a                                       ; $434f: $6f
    ld a, h                                       ; $4350: $7c
    rla                                           ; $4351: $17
    jr nc, jr_003_4364                            ; $4352: $30 $10

    ld de, $fa00                                  ; $4354: $11 $00 $fa
    call Call_000_3240                            ; $4357: $cd $40 $32
    ld a, l                                       ; $435a: $7d
    ld [$c32f], a                                 ; $435b: $ea $2f $c3
    ld a, h                                       ; $435e: $7c
    ld [$c330], a                                 ; $435f: $ea $30 $c3
    jr jr_003_4372                                ; $4362: $18 $0e

jr_003_4364:
    ld de, $0600                                  ; $4364: $11 $00 $06
    call Call_000_323b                            ; $4367: $cd $3b $32
    ld a, l                                       ; $436a: $7d
    ld [$c32f], a                                 ; $436b: $ea $2f $c3
    ld a, h                                       ; $436e: $7c
    ld [$c330], a                                 ; $436f: $ea $30 $c3

jr_003_4372:
    ld hl, $c331                                  ; $4372: $21 $31 $c3
    ld a, [hl+]                                   ; $4375: $2a
    ld h, [hl]                                    ; $4376: $66
    ld l, a                                       ; $4377: $6f
    ld a, h                                       ; $4378: $7c
    rla                                           ; $4379: $17
    jr nc, jr_003_438b                            ; $437a: $30 $0f

    ld de, $fa00                                  ; $437c: $11 $00 $fa
    call Call_000_3240                            ; $437f: $cd $40 $32
    ld a, l                                       ; $4382: $7d
    ld [$c331], a                                 ; $4383: $ea $31 $c3
    ld a, h                                       ; $4386: $7c
    ld [$c332], a                                 ; $4387: $ea $32 $c3
    ret                                           ; $438a: $c9


jr_003_438b:
    ld de, $0600                                  ; $438b: $11 $00 $06
    call Call_000_323b                            ; $438e: $cd $3b $32
    ld a, l                                       ; $4391: $7d
    ld [$c331], a                                 ; $4392: $ea $31 $c3
    ld a, h                                       ; $4395: $7c
    ld [$c332], a                                 ; $4396: $ea $32 $c3
    ret                                           ; $4399: $c9


    ret                                           ; $439a: $c9


Call_003_439b:
    ld hl, $ff90                                  ; $439b: $21 $90 $ff
    ld a, [hl+]                                   ; $439e: $2a
    ld h, [hl]                                    ; $439f: $66
    ld l, a                                       ; $43a0: $6f
    ld a, $a0                                     ; $43a1: $3e $a0
    call Call_000_2722                            ; $43a3: $cd $22 $27
    rst $08                                       ; $43a6: $cf
    ld a, l                                       ; $43a7: $7d
    ldh [$9c], a                                  ; $43a8: $e0 $9c
    ld a, h                                       ; $43aa: $7c
    ldh [$9d], a                                  ; $43ab: $e0 $9d
    ld hl, $ff92                                  ; $43ad: $21 $92 $ff
    ld a, [hl+]                                   ; $43b0: $2a
    ld h, [hl]                                    ; $43b1: $66
    ld l, a                                       ; $43b2: $6f
    ld a, $90                                     ; $43b3: $3e $90
    call Call_000_2722                            ; $43b5: $cd $22 $27
    rst $08                                       ; $43b8: $cf
    ld a, l                                       ; $43b9: $7d
    ldh [$9e], a                                  ; $43ba: $e0 $9e
    ld a, h                                       ; $43bc: $7c
    ldh [$9f], a                                  ; $43bd: $e0 $9f
    ld hl, $cafc                                  ; $43bf: $21 $fc $ca
    ld a, [$cafb]                                 ; $43c2: $fa $fb $ca
    call Call_000_2722                            ; $43c5: $cd $22 $27
    add [hl]                                      ; $43c8: $86
    add $28                                       ; $43c9: $c6 $28
    jr nc, jr_003_43cf                            ; $43cb: $30 $02

    ld a, $ff                                     ; $43cd: $3e $ff

jr_003_43cf:
    ld [$c301], a                                 ; $43cf: $ea $01 $c3
    ldh [$9b], a                                  ; $43d2: $e0 $9b
    ret                                           ; $43d4: $c9


    ldh a, [rSVBK]                                ; $43d5: $f0 $70
    push af                                       ; $43d7: $f5
    ld a, $06                                     ; $43d8: $3e $06
    ldh [rSVBK], a                                ; $43da: $e0 $70
    ld hl, $d57e                                  ; $43dc: $21 $7e $d5

jr_003_43df:
    ld a, [hl+]                                   ; $43df: $2a
    or a                                          ; $43e0: $b7
    jr z, jr_003_4407                             ; $43e1: $28 $24

    ldh [$9b], a                                  ; $43e3: $e0 $9b
    ld a, [hl+]                                   ; $43e5: $2a
    ld [$c301], a                                 ; $43e6: $ea $01 $c3
    ld de, $fff9                                  ; $43e9: $11 $f9 $ff
    add hl, de                                    ; $43ec: $19
    ld a, [hl+]                                   ; $43ed: $2a
    ldh [$9c], a                                  ; $43ee: $e0 $9c
    ld a, [hl+]                                   ; $43f0: $2a
    ldh [$9d], a                                  ; $43f1: $e0 $9d
    inc hl                                        ; $43f3: $23
    ld a, [hl+]                                   ; $43f4: $2a
    ldh [$9e], a                                  ; $43f5: $e0 $9e
    ld a, [hl+]                                   ; $43f7: $2a
    ldh [$9f], a                                  ; $43f8: $e0 $9f
    push hl                                       ; $43fa: $e5
    ld a, $05                                     ; $43fb: $3e $05
    call Call_000_03a0                            ; $43fd: $cd $a0 $03
    pop hl                                        ; $4400: $e1
    ld de, $0008                                  ; $4401: $11 $08 $00
    add hl, de                                    ; $4404: $19
    jr jr_003_43df                                ; $4405: $18 $d8

jr_003_4407:
    ld bc, $0050                                  ; $4407: $01 $50 $00
    ld hl, $d578                                  ; $440a: $21 $78 $d5
    call Call_000_112e                            ; $440d: $cd $2e $11
    pop af                                        ; $4410: $f1
    ldh [rSVBK], a                                ; $4411: $e0 $70
    ret                                           ; $4413: $c9


    ldh a, [rSVBK]                                ; $4414: $f0 $70
    push af                                       ; $4416: $f5
    ld a, $06                                     ; $4417: $3e $06
    ldh [rSVBK], a                                ; $4419: $e0 $70
    ld a, $0a                                     ; $441b: $3e $0a
    ld hl, $d57e                                  ; $441d: $21 $7e $d5

jr_003_4420:
    push af                                       ; $4420: $f5
    ld de, $0008                                  ; $4421: $11 $08 $00
    ld a, [hl]                                    ; $4424: $7e
    or a                                          ; $4425: $b7
    jr nz, jr_003_4443                            ; $4426: $20 $1b

    push hl                                       ; $4428: $e5
    ld de, $fffa                                  ; $4429: $11 $fa $ff
    add hl, de                                    ; $442c: $19
    ld e, l                                       ; $442d: $5d
    ld d, h                                       ; $442e: $54
    ld hl, $0005                                  ; $442f: $21 $05 $00
    add hl, bc                                    ; $4432: $09
    call CopyHL2DE_6                            ; $4433: $cd $45 $12
    ld hl, $0001                                  ; $4436: $21 $01 $00
    add hl, bc                                    ; $4439: $09
    call CopyHL2DE_2                            ; $443a: $cd $51 $12
    pop hl                                        ; $443d: $e1
    pop af                                        ; $443e: $f1
    pop af                                        ; $443f: $f1
    ldh [rSVBK], a                                ; $4440: $e0 $70
    ret                                           ; $4442: $c9


jr_003_4443:
    add hl, de                                    ; $4443: $19
    pop af                                        ; $4444: $f1
    dec a                                         ; $4445: $3d
    jr nz, jr_003_4420                            ; $4446: $20 $d8

    pop af                                        ; $4448: $f1
    ldh [rSVBK], a                                ; $4449: $e0 $70
    ret                                           ; $444b: $c9


Call_003_444c:
    ldh a, [$cf]                                  ; $444c: $f0 $cf
    cp $0b                                        ; $444e: $fe $0b
    jr z, jr_003_4456                             ; $4450: $28 $04

    cp $0c                                        ; $4452: $fe $0c
    jr nz, jr_003_4464                            ; $4454: $20 $0e

jr_003_4456:
    ld a, [$cd58]                                 ; $4456: $fa $58 $cd
    or a                                          ; $4459: $b7
    jr nz, jr_003_4464                            ; $445a: $20 $08

    ld a, [$c0c2]                                 ; $445c: $fa $c2 $c0
    or a                                          ; $445f: $b7
    jr nz, jr_003_4464                            ; $4460: $20 $02

    inc a                                         ; $4462: $3c
    ret                                           ; $4463: $c9


jr_003_4464:
    xor a                                         ; $4464: $af
    ret                                           ; $4465: $c9


Call_003_4466:
    call Call_003_444c                            ; $4466: $cd $4c $44
    ret z                                         ; $4469: $c8

    ldh a, [$a5]                                  ; $446a: $f0 $a5
    and $02                                       ; $446c: $e6 $02
    call nz, Call_003_4555                        ; $446e: $c4 $55 $45
    ldh a, [$a4]                                  ; $4471: $f0 $a4
    and $f0                                       ; $4473: $e6 $f0
    ld [$cae0], a                                 ; $4475: $ea $e0 $ca
    ld e, a                                       ; $4478: $5f
    ldh a, [$de]                                  ; $4479: $f0 $de
    cp $01                                        ; $447b: $fe $01
    jr z, jr_003_448d                             ; $447d: $28 $0e

    cp $02                                        ; $447f: $fe $02
    jp z, Jump_003_44ba                           ; $4481: $ca $ba $44

    cp $04                                        ; $4484: $fe $04
    jp z, Jump_003_45a3                           ; $4486: $ca $a3 $45

    cp $00                                        ; $4489: $fe $00
    ret z                                         ; $448b: $c8

    ret                                           ; $448c: $c9


jr_003_448d:
    ld hl, $c32f                                  ; $448d: $21 $2f $c3
    ld [hl], $00                                  ; $4490: $36 $00
    inc hl                                        ; $4492: $23
    ld [hl], $00                                  ; $4493: $36 $00
    ld hl, $c331                                  ; $4495: $21 $31 $c3
    ld [hl], $00                                  ; $4498: $36 $00
    inc hl                                        ; $449a: $23
    ld [hl], $00                                  ; $449b: $36 $00
    call Call_003_45fd                            ; $449d: $cd $fd $45
    or a                                          ; $44a0: $b7
    ret z                                         ; $44a1: $c8

    xor a                                         ; $44a2: $af
    ld [$c33c], a                                 ; $44a3: $ea $3c $c3
    ld [$c33a], a                                 ; $44a6: $ea $3a $c3
    ld [$c33b], a                                 ; $44a9: $ea $3b $c3
    ld [$c33e], a                                 ; $44ac: $ea $3e $c3
    ld hl, $cae8                                  ; $44af: $21 $e8 $ca
    ld [hl], $ff                                  ; $44b2: $36 $ff
    inc hl                                        ; $44b4: $23
    ld [hl], $ff                                  ; $44b5: $36 $ff
    jp Jump_003_45bc                              ; $44b7: $c3 $bc $45


Jump_003_44ba:
    ld a, e                                       ; $44ba: $7b
    or a                                          ; $44bb: $b7
    jp z, Jump_003_458e                           ; $44bc: $ca $8e $45

    ldh a, [rSVBK]                                ; $44bf: $f0 $70
    push af                                       ; $44c1: $f5
    ld a, $06                                     ; $44c2: $3e $06
    ldh [rSVBK], a                                ; $44c4: $e0 $70
    ld a, [$ce02]                                 ; $44c6: $fa $02 $ce
    or a                                          ; $44c9: $b7
    jr z, jr_003_4533                             ; $44ca: $28 $67

    ld a, [$d6d4]                                 ; $44cc: $fa $d4 $d6
    cp $03                                        ; $44cf: $fe $03
    jr z, jr_003_44d9                             ; $44d1: $28 $06

    xor a                                         ; $44d3: $af
    ld [$ce02], a                                 ; $44d4: $ea $02 $ce
    jr jr_003_4533                                ; $44d7: $18 $5a

jr_003_44d9:
    ld a, [$ce02]                                 ; $44d9: $fa $02 $ce
    dec a                                         ; $44dc: $3d
    ld [$ce02], a                                 ; $44dd: $ea $02 $ce
    push af                                       ; $44e0: $f5
    cp $13                                        ; $44e1: $fe $13
    jr nz, jr_003_44ed                            ; $44e3: $20 $08

    ld hl, $002c                                  ; $44e5: $21 $2c $00
    add hl, bc                                    ; $44e8: $09
    ld a, [hl]                                    ; $44e9: $7e
    and $f8                                       ; $44ea: $e6 $f8
    ld [hl], a                                    ; $44ec: $77

jr_003_44ed:
    pop af                                        ; $44ed: $f1
    jr nz, jr_003_453f                            ; $44ee: $20 $4f

    ld a, $23                                     ; $44f0: $3e $23
    call Call_000_393e                            ; $44f2: $cd $3e $39
    ld hl, $cde5                                  ; $44f5: $21 $e5 $cd
    ld a, [hl+]                                   ; $44f8: $2a
    ld h, [hl]                                    ; $44f9: $66
    ld l, a                                       ; $44fa: $6f
    dec hl                                        ; $44fb: $2b
    ld a, l                                       ; $44fc: $7d
    ld [$cde5], a                                 ; $44fd: $ea $e5 $cd
    ld a, h                                       ; $4500: $7c
    ld [$cde6], a                                 ; $4501: $ea $e6 $cd
    ld a, h                                       ; $4504: $7c
    or l                                          ; $4505: $b5
    jr z, jr_003_4514                             ; $4506: $28 $0c

    push hl                                       ; $4508: $e5
    ld hl, $002c                                  ; $4509: $21 $2c $00
    add hl, bc                                    ; $450c: $09
    ld a, [hl]                                    ; $450d: $7e
    and $f8                                       ; $450e: $e6 $f8
    or $01                                        ; $4510: $f6 $01
    ld [hl], a                                    ; $4512: $77
    pop hl                                        ; $4513: $e1

jr_003_4514:
    ld a, $14                                     ; $4514: $3e $14
    ld [$ce02], a                                 ; $4516: $ea $02 $ce
    ld a, h                                       ; $4519: $7c
    or l                                          ; $451a: $b5
    jr nz, jr_003_453f                            ; $451b: $20 $22

    pop af                                        ; $451d: $f1
    ldh [rSVBK], a                                ; $451e: $e0 $70
    ld e, $03                                     ; $4520: $1e $03
    xor a                                         ; $4522: $af
    push bc                                       ; $4523: $c5
    ldh [$c1], a                                  ; $4524: $e0 $c1
    ld a, $9e                                     ; $4526: $3e $9e
    ldh [$bd], a                                  ; $4528: $e0 $bd
    ld a, $5f                                     ; $452a: $3e $5f
    ldh [$be], a                                  ; $452c: $e0 $be
    call Call_000_33d9                            ; $452e: $cd $d9 $33
    pop bc                                        ; $4531: $c1
    ret                                           ; $4532: $c9


jr_003_4533:
    ld a, [$d6d4]                                 ; $4533: $fa $d4 $d6
    cp $03                                        ; $4536: $fe $03
    jr nz, jr_003_453f                            ; $4538: $20 $05

    ld a, $05                                     ; $453a: $3e $05
    ld [$ce02], a                                 ; $453c: $ea $02 $ce

jr_003_453f:
    pop af                                        ; $453f: $f1
    ldh [rSVBK], a                                ; $4540: $e0 $70
    ld a, e                                       ; $4542: $7b
    and $f0                                       ; $4543: $e6 $f0
    ret z                                         ; $4545: $c8

    ld a, $09                                     ; $4546: $3e $09
    ld [$cae4], a                                 ; $4548: $ea $e4 $ca
    call Call_003_6e57                            ; $454b: $cd $57 $6e
    call Call_003_6ea5                            ; $454e: $cd $a5 $6e
    call Call_003_45af                            ; $4551: $cd $af $45
    ret                                           ; $4554: $c9


Call_003_4555:
    ldh a, [$d8]                                  ; $4555: $f0 $d8
    cp $0a                                        ; $4557: $fe $0a
    ret nz                                        ; $4559: $c0

    ld a, [$cbe1]                                 ; $455a: $fa $e1 $cb
    or a                                          ; $455d: $b7
    ret z                                         ; $455e: $c8

    push bc                                       ; $455f: $c5
    ld a, $0f                                     ; $4560: $3e $0f
    ld e, $00                                     ; $4562: $1e $00
    call Call_000_0a6f                            ; $4564: $cd $6f $0a
    ld b, h                                       ; $4567: $44
    ld c, l                                       ; $4568: $4d
    ld hl, $0006                                  ; $4569: $21 $06 $00
    add hl, bc                                    ; $456c: $09
    ld a, [hl+]                                   ; $456d: $2a
    ld h, [hl]                                    ; $456e: $66
    ld l, a                                       ; $456f: $6f
    ld a, l                                       ; $4570: $7d
    ldh [$9c], a                                  ; $4571: $e0 $9c
    ld a, h                                       ; $4573: $7c
    ldh [$9d], a                                  ; $4574: $e0 $9d
    ld hl, $0009                                  ; $4576: $21 $09 $00
    add hl, bc                                    ; $4579: $09
    ld a, [hl+]                                   ; $457a: $2a
    ld h, [hl]                                    ; $457b: $66
    ld l, a                                       ; $457c: $6f
    ld a, l                                       ; $457d: $7d
    ldh [$9e], a                                  ; $457e: $e0 $9e
    ld a, h                                       ; $4580: $7c
    ldh [$9f], a                                  ; $4581: $e0 $9f
    ld a, $2a                                     ; $4583: $3e $2a
    ldh [$9b], a                                  ; $4585: $e0 $9b
    ld a, $53                                     ; $4587: $3e $53
    call Call_000_03a0                            ; $4589: $cd $a0 $03
    pop bc                                        ; $458c: $c1
    ret                                           ; $458d: $c9


Jump_003_458e:
    ld a, e                                       ; $458e: $7b
    and $f0                                       ; $458f: $e6 $f0
    jp nz, Jump_003_45c9                          ; $4591: $c2 $c9 $45

    ld a, $01                                     ; $4594: $3e $01
    ldh [$de], a                                  ; $4596: $e0 $de
    ld a, $01                                     ; $4598: $3e $01
    ld [$cae5], a                                 ; $459a: $ea $e5 $ca
    call Call_003_6ea5                            ; $459d: $cd $a5 $6e
    jp Jump_003_45af                              ; $45a0: $c3 $af $45


Jump_003_45a3:
    call Call_003_45af                            ; $45a3: $cd $af $45
    ret                                           ; $45a6: $c9


    ld hl, $cae8                                  ; $45a7: $21 $e8 $ca
    ld [hl], $ff                                  ; $45aa: $36 $ff
    inc hl                                        ; $45ac: $23
    ld [hl], $ff                                  ; $45ad: $36 $ff

Call_003_45af:
Jump_003_45af:
    ldh [$c1], a                                  ; $45af: $e0 $c1
    ld a, $5a                                     ; $45b1: $3e $5a
    ldh [$bd], a                                  ; $45b3: $e0 $bd
    ld a, $7c                                     ; $45b5: $3e $7c
    ldh [$be], a                                  ; $45b7: $e0 $be
    jp Jump_000_33cb                              ; $45b9: $c3 $cb $33


Jump_003_45bc:
    ldh a, [$a4]                                  ; $45bc: $f0 $a4
    call Call_003_6eba                            ; $45be: $cd $ba $6e
    ld [$cae1], a                                 ; $45c1: $ea $e1 $ca
    ld a, $09                                     ; $45c4: $3e $09
    ld [$cae4], a                                 ; $45c6: $ea $e4 $ca

Jump_003_45c9:
    ld a, $02                                     ; $45c9: $3e $02
    ldh [$de], a                                  ; $45cb: $e0 $de
    xor a                                         ; $45cd: $af
    ld [$cae5], a                                 ; $45ce: $ea $e5 $ca
    ret                                           ; $45d1: $c9


Call_003_45d2:
    ld hl, $cae8                                  ; $45d2: $21 $e8 $ca
    ld a, [hl+]                                   ; $45d5: $2a
    ld h, [hl]                                    ; $45d6: $66
    ld l, a                                       ; $45d7: $6f
    rst $10                                       ; $45d8: $d7
    ret z                                         ; $45d9: $c8

    ld hl, $cae8                                  ; $45da: $21 $e8 $ca
    ld [hl], e                                    ; $45dd: $73
    inc hl                                        ; $45de: $23
    ld [hl], d                                    ; $45df: $72
    ld hl, $7a11                                  ; $45e0: $21 $11 $7a
    ldh [$c1], a                                  ; $45e3: $e0 $c1
    ld a, $f6                                     ; $45e5: $3e $f6
    ldh [$bd], a                                  ; $45e7: $e0 $bd
    ld a, $00                                     ; $45e9: $3e $00
    ldh [$be], a                                  ; $45eb: $e0 $be
    call Call_000_33ec                            ; $45ed: $cd $ec $33
    ldh [$c1], a                                  ; $45f0: $e0 $c1
    ld a, $50                                     ; $45f2: $3e $50
    ldh [$bd], a                                  ; $45f4: $e0 $bd
    ld a, $0a                                     ; $45f6: $3e $0a
    ldh [$be], a                                  ; $45f8: $e0 $be
    jp Jump_000_33ec                              ; $45fa: $c3 $ec $33


Call_003_45fd:
    ld a, e                                       ; $45fd: $7b
    and $30                                       ; $45fe: $e6 $30
    ld a, e                                       ; $4600: $7b
    ret z                                         ; $4601: $c8

    ld hl, $c34c                                  ; $4602: $21 $4c $c3
    bit 5, [hl]                                   ; $4605: $cb $6e
    jr z, jr_003_460e                             ; $4607: $28 $05

    bit 4, a                                      ; $4609: $cb $67
    ret z                                         ; $460b: $c8

    jr jr_003_4611                                ; $460c: $18 $03

jr_003_460e:
    bit 5, a                                      ; $460e: $cb $6f
    ret z                                         ; $4610: $c8

jr_003_4611:
    ld a, e                                       ; $4611: $7b
    ret                                           ; $4612: $c9


Call_003_4613:
    ldh a, [rSVBK]                                ; $4613: $f0 $70
    push af                                       ; $4615: $f5
    ld a, $05                                     ; $4616: $3e $05
    ldh [rSVBK], a                                ; $4618: $e0 $70
    ld a, $ff                                     ; $461a: $3e $ff
    ld [$d400], a                                 ; $461c: $ea $00 $d4
    ld [$d419], a                                 ; $461f: $ea $19 $d4
    ld [$d432], a                                 ; $4622: $ea $32 $d4
    ld [$d44b], a                                 ; $4625: $ea $4b $d4
    ld [$cbe3], a                                 ; $4628: $ea $e3 $cb
    ld a, $00                                     ; $462b: $3e $00
    ld [$cbe5], a                                 ; $462d: $ea $e5 $cb
    xor a                                         ; $4630: $af
    ld [$cb86], a                                 ; $4631: $ea $86 $cb
    ld [$cb17], a                                 ; $4634: $ea $17 $cb
    pop af                                        ; $4637: $f1
    ldh [rSVBK], a                                ; $4638: $e0 $70
    ldh a, [rSVBK]                                ; $463a: $f0 $70
    push af                                       ; $463c: $f5
    ld a, $06                                     ; $463d: $3e $06
    ldh [rSVBK], a                                ; $463f: $e0 $70
    ld a, $02                                     ; $4641: $3e $02
    ld [$d6cf], a                                 ; $4643: $ea $cf $d6
    pop af                                        ; $4646: $f1
    ldh [rSVBK], a                                ; $4647: $e0 $70
    ld a, [$cafd]                                 ; $4649: $fa $fd $ca
    or a                                          ; $464c: $b7
    jr z, jr_003_465e                             ; $464d: $28 $0f

    dec a                                         ; $464f: $3d
    ld [$cafd], a                                 ; $4650: $ea $fd $ca
    or a                                          ; $4653: $b7
    jr nz, jr_003_465e                            ; $4654: $20 $08

    ld a, $32                                     ; $4656: $3e $32
    ld [$caf8], a                                 ; $4658: $ea $f8 $ca
    ld [$caf9], a                                 ; $465b: $ea $f9 $ca

jr_003_465e:
    xor a                                         ; $465e: $af
    ld hl, $cbf8                                  ; $465f: $21 $f8 $cb
    ld [hl+], a                                   ; $4662: $22
    ld [hl+], a                                   ; $4663: $22
    ld [hl+], a                                   ; $4664: $22
    ld [hl+], a                                   ; $4665: $22
    ld [hl+], a                                   ; $4666: $22
    dec a                                         ; $4667: $3d
    ld [hl+], a                                   ; $4668: $22
    ld [hl+], a                                   ; $4669: $22
    ld [hl+], a                                   ; $466a: $22
    ld a, $ff                                     ; $466b: $3e $ff
    ld [$cbe6], a                                 ; $466d: $ea $e6 $cb
    xor a                                         ; $4670: $af
    ld [$cb96], a                                 ; $4671: $ea $96 $cb
    ld [$cb97], a                                 ; $4674: $ea $97 $cb
    ret                                           ; $4677: $c9


    push hl                                       ; $4678: $e5
    ld l, $03                                     ; $4679: $2e $03
    ld h, a                                       ; $467b: $67
    call Call_000_00b9                            ; $467c: $cd $b9 $00
    ld a, h                                       ; $467f: $7c
    cp $04                                        ; $4680: $fe $04
    jr c, jr_003_4685                             ; $4682: $38 $01

    xor a                                         ; $4684: $af

jr_003_4685:
    pop hl                                        ; $4685: $e1
    ret                                           ; $4686: $c9


Call_003_4687:
    ldh a, [$d8]                                  ; $4687: $f0 $d8
    ret                                           ; $4689: $c9


Call_003_468a:
    ld hl, $5b12                                  ; $468a: $21 $12 $5b
    ldh [$c1], a                                  ; $468d: $e0 $c1
    ld a, $8f                                     ; $468f: $3e $8f
    ldh [$bd], a                                  ; $4691: $e0 $bd
    ld a, $5b                                     ; $4693: $3e $5b
    ldh [$be], a                                  ; $4695: $e0 $be
    call Call_000_33c4                            ; $4697: $cd $c4 $33
    ldh a, [rSVBK]                                ; $469a: $f0 $70
    push af                                       ; $469c: $f5
    ld a, $06                                     ; $469d: $3e $06
    ldh [rSVBK], a                                ; $469f: $e0 $70
    ld a, [$d6d4]                                 ; $46a1: $fa $d4 $d6
    cp $01                                        ; $46a4: $fe $01
    jr z, jr_003_46a9                             ; $46a6: $28 $01

    xor a                                         ; $46a8: $af

jr_003_46a9:
    ldh [$9b], a                                  ; $46a9: $e0 $9b
    pop af                                        ; $46ab: $f1
    ldh [rSVBK], a                                ; $46ac: $e0 $70
    ld a, $7b                                     ; $46ae: $3e $7b
    call Call_000_03a0                            ; $46b0: $cd $a0 $03
    call Call_003_4714                            ; $46b3: $cd $14 $47
    jr nz, jr_003_46c6                            ; $46b6: $20 $0e

    ld a, $07                                     ; $46b8: $3e $07
    call Call_000_2722                            ; $46ba: $cd $22 $27
    inc a                                         ; $46bd: $3c
    ld [$cc04], a                                 ; $46be: $ea $04 $cc
    call Call_003_6b60                            ; $46c1: $cd $60 $6b
    ld b, $00                                     ; $46c4: $06 $00

jr_003_46c6:
    ld a, [hl+]                                   ; $46c6: $2a
    push hl                                       ; $46c7: $e5
    ld c, a                                       ; $46c8: $4f
    or a                                          ; $46c9: $b7
    jr z, jr_003_46d5                             ; $46ca: $28 $09

    ld a, b                                       ; $46cc: $78
    ld hl, $cc04                                  ; $46cd: $21 $04 $cc
    call Call_000_3256                            ; $46d0: $cd $56 $32
    jr nz, jr_003_46f6                            ; $46d3: $20 $21

jr_003_46d5:
    ldh a, [rSVBK]                                ; $46d5: $f0 $70
    push af                                       ; $46d7: $f5
    ld a, $05                                     ; $46d8: $3e $05
    ldh [rSVBK], a                                ; $46da: $e0 $70
    ldh [$c1], a                                  ; $46dc: $e0 $c1
    ld a, $66                                     ; $46de: $3e $66
    ldh [$bd], a                                  ; $46e0: $e0 $bd
    ld a, $73                                     ; $46e2: $3e $73
    ldh [$be], a                                  ; $46e4: $e0 $be
    call Call_000_33e7                            ; $46e6: $cd $e7 $33
    ld [hl], $00                                  ; $46e9: $36 $00
    ld de, $000a                                  ; $46eb: $11 $0a $00
    add hl, de                                    ; $46ee: $19
    ld [hl], $02                                  ; $46ef: $36 $02
    pop af                                        ; $46f1: $f1
    ldh [rSVBK], a                                ; $46f2: $e0 $70
    jr jr_003_4707                                ; $46f4: $18 $11

jr_003_46f6:
    ld a, c                                       ; $46f6: $79
    ldh [$9b], a                                  ; $46f7: $e0 $9b
    ld a, $7b                                     ; $46f9: $3e $7b
    call Call_000_03a0                            ; $46fb: $cd $a0 $03
    ld a, b                                       ; $46fe: $78
    inc a                                         ; $46ff: $3c
    ldh [$9b], a                                  ; $4700: $e0 $9b
    ld a, $b0                                     ; $4702: $3e $b0
    call Call_000_03a0                            ; $4704: $cd $a0 $03

jr_003_4707:
    pop hl                                        ; $4707: $e1
    inc b                                         ; $4708: $04
    ld a, b                                       ; $4709: $78
    cp $03                                        ; $470a: $fe $03
    jr nz, jr_003_46c6                            ; $470c: $20 $b8

    ret                                           ; $470e: $c9


Call_003_470f:
    ld a, [$cc05]                                 ; $470f: $fa $05 $cc
    or a                                          ; $4712: $b7
    ret                                           ; $4713: $c9


Call_003_4714:
    ld a, [$cc05]                                 ; $4714: $fa $05 $cc
    or a                                          ; $4717: $b7
    ret z                                         ; $4718: $c8

    dec a                                         ; $4719: $3d
    ld hl, $65e0                                  ; $471a: $21 $e0 $65
    call Call_000_319d                            ; $471d: $cd $9d $31
    xor a                                         ; $4720: $af
    ld [$cc04], a                                 ; $4721: $ea $04 $cc
    push de                                       ; $4724: $d5
    push hl                                       ; $4725: $e5
    ld de, $0103                                  ; $4726: $11 $03 $01

jr_003_4729:
    ld a, [hl+]                                   ; $4729: $2a
    cp $00                                        ; $472a: $fe $00
    jr z, jr_003_4735                             ; $472c: $28 $07

    ld a, [$cc04]                                 ; $472e: $fa $04 $cc
    or d                                          ; $4731: $b2
    ld [$cc04], a                                 ; $4732: $ea $04 $cc

jr_003_4735:
    rl d                                          ; $4735: $cb $12
    dec e                                         ; $4737: $1d
    jr nz, jr_003_4729                            ; $4738: $20 $ef

    pop hl                                        ; $473a: $e1
    pop de                                        ; $473b: $d1
    inc a                                         ; $473c: $3c
    ret                                           ; $473d: $c9


    ldh a, [rSVBK]                                ; $473e: $f0 $70
    push af                                       ; $4740: $f5
    ld a, $05                                     ; $4741: $3e $05
    ldh [rSVBK], a                                ; $4743: $e0 $70
    ld hl, $d405                                  ; $4745: $21 $05 $d4
    ld de, $cde5                                  ; $4748: $11 $e5 $cd
    call CopyHL2DE_4                            ; $474b: $cd $4b $12
    pop af                                        ; $474e: $f1
    ldh [rSVBK], a                                ; $474f: $e0 $70
    ld hl, $cde3                                  ; $4751: $21 $e3 $cd
    ld a, [hl+]                                   ; $4754: $2a
    ld d, [hl]                                    ; $4755: $56
    ld e, a                                       ; $4756: $5f
    ld hl, $cde7                                  ; $4757: $21 $e7 $cd
    ld a, [hl+]                                   ; $475a: $2a
    ld h, [hl]                                    ; $475b: $66
    ld l, a                                       ; $475c: $6f
    call RST_10                                   ; $475d: $cd $10 $00
    jr nc, jr_003_4768                            ; $4760: $30 $06

    ld hl, $cde7                                  ; $4762: $21 $e7 $cd
    ld [hl], e                                    ; $4765: $73
    inc hl                                        ; $4766: $23
    ld [hl], d                                    ; $4767: $72

jr_003_4768:
    ld hl, $cde1                                  ; $4768: $21 $e1 $cd
    ld a, [hl+]                                   ; $476b: $2a
    ld d, [hl]                                    ; $476c: $56
    ld e, a                                       ; $476d: $5f
    ld hl, $cde5                                  ; $476e: $21 $e5 $cd
    ld a, [hl+]                                   ; $4771: $2a
    ld h, [hl]                                    ; $4772: $66
    ld l, a                                       ; $4773: $6f
    call RST_10                                   ; $4774: $cd $10 $00
    ret nc                                        ; $4777: $d0

    ld hl, $cde5                                  ; $4778: $21 $e5 $cd
    ld [hl], e                                    ; $477b: $73
    inc hl                                        ; $477c: $23
    ld [hl], d                                    ; $477d: $72
    ret                                           ; $477e: $c9


    push bc                                       ; $477f: $c5
    ld bc, $0001                                  ; $4780: $01 $01 $00

Jump_003_4783:
    ld a, c                                       ; $4783: $79
    dec a                                         ; $4784: $3d
    ld hl, $cc04                                  ; $4785: $21 $04 $cc
    call Call_000_3256                            ; $4788: $cd $56 $32
    jp z, Jump_003_4814                           ; $478b: $ca $14 $48

    ldh a, [rSVBK]                                ; $478e: $f0 $70
    push af                                       ; $4790: $f5
    ld a, $05                                     ; $4791: $3e $05
    ldh [rSVBK], a                                ; $4793: $e0 $70
    ld a, c                                       ; $4795: $79
    call Call_003_4de8                            ; $4796: $cd $e8 $4d
    ld a, [hl]                                    ; $4799: $7e
    ldh [$bc], a                                  ; $479a: $e0 $bc
    pop af                                        ; $479c: $f1
    ldh [rSVBK], a                                ; $479d: $e0 $70
    ldh a, [$bc]                                  ; $479f: $f0 $bc
    or a                                          ; $47a1: $b7
    jr z, jr_003_4814                             ; $47a2: $28 $70

    dec a                                         ; $47a4: $3d
    dec a                                         ; $47a5: $3d
    ld l, a                                       ; $47a6: $6f
    ld h, $15                                     ; $47a7: $26 $15
    call Call_000_00a5                            ; $47a9: $cd $a5 $00
    ld de, $5c2e                                  ; $47ac: $11 $2e $5c
    add hl, de                                    ; $47af: $19
    push hl                                       ; $47b0: $e5
    ld a, [hl+]                                   ; $47b1: $2a
    ld h, [hl]                                    ; $47b2: $66
    ld l, a                                       ; $47b3: $6f
    ld a, [$cbf8]                                 ; $47b4: $fa $f8 $cb
    ld e, a                                       ; $47b7: $5f
    ld a, [$cbf9]                                 ; $47b8: $fa $f9 $cb
    ld d, a                                       ; $47bb: $57
    add hl, de                                    ; $47bc: $19
    ld a, l                                       ; $47bd: $7d
    ld [$cbf8], a                                 ; $47be: $ea $f8 $cb
    ld a, h                                       ; $47c1: $7c
    ld [$cbf9], a                                 ; $47c2: $ea $f9 $cb
    pop hl                                        ; $47c5: $e1
    inc hl                                        ; $47c6: $23
    inc hl                                        ; $47c7: $23
    push hl                                       ; $47c8: $e5
    ld a, [hl+]                                   ; $47c9: $2a
    ld h, [hl]                                    ; $47ca: $66
    ld l, a                                       ; $47cb: $6f
    ld a, [$cbfa]                                 ; $47cc: $fa $fa $cb
    ld e, a                                       ; $47cf: $5f
    ld a, [$cbfb]                                 ; $47d0: $fa $fb $cb
    ld d, a                                       ; $47d3: $57
    add hl, de                                    ; $47d4: $19
    ld a, l                                       ; $47d5: $7d
    ld [$cbfa], a                                 ; $47d6: $ea $fa $cb
    ld a, h                                       ; $47d9: $7c
    ld [$cbfb], a                                 ; $47da: $ea $fb $cb
    pop hl                                        ; $47dd: $e1
    inc hl                                        ; $47de: $23
    inc hl                                        ; $47df: $23
    ld a, [hl+]                                   ; $47e0: $2a
    push hl                                       ; $47e1: $e5
    call Call_000_2722                            ; $47e2: $cd $22 $27
    ld e, a                                       ; $47e5: $5f
    ld d, $00                                     ; $47e6: $16 $00
    ld hl, $cbfa                                  ; $47e8: $21 $fa $cb
    ld a, [hl+]                                   ; $47eb: $2a
    ld h, [hl]                                    ; $47ec: $66
    ld l, a                                       ; $47ed: $6f
    add hl, de                                    ; $47ee: $19
    ld a, l                                       ; $47ef: $7d
    ld [$cbfa], a                                 ; $47f0: $ea $fa $cb
    ld a, h                                       ; $47f3: $7c
    ld [$cbfb], a                                 ; $47f4: $ea $fb $cb
    pop hl                                        ; $47f7: $e1
    ld a, [hl]                                    ; $47f8: $7e
    cp $ff                                        ; $47f9: $fe $ff
    jr z, jr_003_4814                             ; $47fb: $28 $17

    ld e, a                                       ; $47fd: $5f
    ld a, $03                                     ; $47fe: $3e $03
    call Call_000_2722                            ; $4800: $cd $22 $27
    or a                                          ; $4803: $b7
    jr nz, jr_003_4814                            ; $4804: $20 $0e

    ld hl, $cbfc                                  ; $4806: $21 $fc $cb
    ld a, $ff                                     ; $4809: $3e $ff

jr_003_480b:
    inc hl                                        ; $480b: $23
    cp [hl]                                       ; $480c: $be
    jr nz, jr_003_480b                            ; $480d: $20 $fc

    ld [hl], e                                    ; $480f: $73
    ld hl, $cbfc                                  ; $4810: $21 $fc $cb
    inc [hl]                                      ; $4813: $34

Jump_003_4814:
jr_003_4814:
    inc c                                         ; $4814: $0c
    ld a, c                                       ; $4815: $79
    cp $04                                        ; $4816: $fe $04
    jp nz, Jump_003_4783                          ; $4818: $c2 $83 $47

    pop bc                                        ; $481b: $c1
    ret                                           ; $481c: $c9


    add [hl]                                      ; $481d: $86
    ld [hl+], a                                   ; $481e: $22
    ld a, $00                                     ; $481f: $3e $00
    adc [hl]                                      ; $4821: $8e
    ld [hl+], a                                   ; $4822: $22
    ret                                           ; $4823: $c9


    add [hl]                                      ; $4824: $86
    ld [hl+], a                                   ; $4825: $22
    ld a, $00                                     ; $4826: $3e $00
    adc [hl]                                      ; $4828: $8e
    ld [hl-], a                                   ; $4829: $32
    ret                                           ; $482a: $c9


    ldh a, [rSVBK]                                ; $482b: $f0 $70
    push af                                       ; $482d: $f5
    ld a, $05                                     ; $482e: $3e $05
    ldh [rSVBK], a                                ; $4830: $e0 $70
    call Call_003_4de5                            ; $4832: $cd $e5 $4d
    push hl                                       ; $4835: $e5
    ld a, [hl]                                    ; $4836: $7e
    or a                                          ; $4837: $b7
    jr z, jr_003_484a                             ; $4838: $28 $10

    dec a                                         ; $483a: $3d
    jr z, jr_003_484a                             ; $483b: $28 $0d

    dec a                                         ; $483d: $3d
    ld l, a                                       ; $483e: $6f
    ld h, $15                                     ; $483f: $26 $15
    call Call_000_00a5                            ; $4841: $cd $a5 $00
    ld de, $5c1f                                  ; $4844: $11 $1f $5c
    add hl, de                                    ; $4847: $19
    jr jr_003_4858                                ; $4848: $18 $0e

jr_003_484a:
    ld hl, $cde0                                  ; $484a: $21 $e0 $cd
    pop de                                        ; $484d: $d1
    inc de                                        ; $484e: $13
    inc hl                                        ; $484f: $23
    call CopyHL2DE_16                            ; $4850: $cd $27 $12
    push bc                                       ; $4853: $c5
    ld c, $00                                     ; $4854: $0e $00
    jr jr_003_4866                                ; $4856: $18 $0e

jr_003_4858:
    pop de                                        ; $4858: $d1
    push bc                                       ; $4859: $c5
    ld a, [de]                                    ; $485a: $1a
    ld c, a                                       ; $485b: $4f
    inc de                                        ; $485c: $13
    inc hl                                        ; $485d: $23
    push hl                                       ; $485e: $e5
    call CopyHL2DE_4                            ; $485f: $cd $4b $12
    pop hl                                        ; $4862: $e1
    call CopyHL2DE_12                            ; $4863: $cd $33 $12

jr_003_4866:
    ld l, e                                       ; $4866: $6b
    ld h, d                                       ; $4867: $62
    xor a                                         ; $4868: $af
    ld [hl+], a                                   ; $4869: $22
    ld [hl+], a                                   ; $486a: $22
    ld [hl], c                                    ; $486b: $71
    inc hl                                        ; $486c: $23
    ld [hl+], a                                   ; $486d: $22
    ld [hl+], a                                   ; $486e: $22
    ld [hl+], a                                   ; $486f: $22
    ld [hl+], a                                   ; $4870: $22
    ld [hl], a                                    ; $4871: $77
    pop bc                                        ; $4872: $c1
    pop af                                        ; $4873: $f1
    ldh [rSVBK], a                                ; $4874: $e0 $70
    ret                                           ; $4876: $c9


Call_003_4877:
Jump_003_4877:
    ld a, [$cbe2]                                 ; $4877: $fa $e2 $cb
    ld l, $01                                     ; $487a: $2e $01
    jp Jump_003_4c60                              ; $487c: $c3 $60 $4c


Call_003_487f:
    ld a, [$cbe2]                                 ; $487f: $fa $e2 $cb
    ld l, $09                                     ; $4882: $2e $09
    jp Jump_003_4c60                              ; $4884: $c3 $60 $4c


Jump_003_4887:
    xor a                                         ; $4887: $af
    ld [$cbe9], a                                 ; $4888: $ea $e9 $cb
    call Call_003_58fb                            ; $488b: $cd $fb $58
    ld a, [$cbe2]                                 ; $488e: $fa $e2 $cb
    ld l, $0c                                     ; $4891: $2e $0c
    jp Jump_003_4c60                              ; $4893: $c3 $60 $4c


    call Call_003_48ef                            ; $4896: $cd $ef $48
    rst $18                                       ; $4899: $df
    call Call_003_5828                            ; $489a: $cd $28 $58
    rst $20                                       ; $489d: $e7
    ldh [$c1], a                                  ; $489e: $e0 $c1
    ld a, $fb                                     ; $48a0: $3e $fb
    ldh [$bd], a                                  ; $48a2: $e0 $bd
    ld a, $71                                     ; $48a4: $3e $71
    ldh [$be], a                                  ; $48a6: $e0 $be
    jp Jump_000_33e7                              ; $48a8: $c3 $e7 $33


    call Call_003_48ef                            ; $48ab: $cd $ef $48
    rst $18                                       ; $48ae: $df
    call Call_003_5828                            ; $48af: $cd $28 $58
    jp RST_20                                     ; $48b2: $c3 $20 $00


Call_003_48b5:
    push bc                                       ; $48b5: $c5
    push de                                       ; $48b6: $d5
    push hl                                       ; $48b7: $e5
    ld [$cb85], a                                 ; $48b8: $ea $85 $cb
    ld a, l                                       ; $48bb: $7d
    ld [$cb83], a                                 ; $48bc: $ea $83 $cb
    ld a, h                                       ; $48bf: $7c
    ld [$cb84], a                                 ; $48c0: $ea $84 $cb
    ld b, $03                                     ; $48c3: $06 $03

jr_003_48c5:
    ld de, $000a                                  ; $48c5: $11 $0a $00
    call Call_000_31b4                            ; $48c8: $cd $b4 $31
    push de                                       ; $48cb: $d5
    dec b                                         ; $48cc: $05
    jr nz, jr_003_48c5                            ; $48cd: $20 $f6

    ld b, $03                                     ; $48cf: $06 $03

jr_003_48d1:
    pop hl                                        ; $48d1: $e1
    ld a, l                                       ; $48d2: $7d
    or h                                          ; $48d3: $b4
    jr nz, jr_003_48da                            ; $48d4: $20 $04

    dec b                                         ; $48d6: $05
    jr nz, jr_003_48d1                            ; $48d7: $20 $f8

    inc b                                         ; $48d9: $04

jr_003_48da:
    push hl                                       ; $48da: $e5

jr_003_48db:
    pop hl                                        ; $48db: $e1
    ld a, b                                       ; $48dc: $78
    dec a                                         ; $48dd: $3d
    swap a                                        ; $48de: $cb $37
    or l                                          ; $48e0: $b5
    ldh [$9b], a                                  ; $48e1: $e0 $9b
    ld a, $7d                                     ; $48e3: $3e $7d
    call Call_000_03a0                            ; $48e5: $cd $a0 $03
    dec b                                         ; $48e8: $05
    jr nz, jr_003_48db                            ; $48e9: $20 $f0

    pop hl                                        ; $48eb: $e1
    pop de                                        ; $48ec: $d1
    pop bc                                        ; $48ed: $c1
    ret                                           ; $48ee: $c9


Call_003_48ef:
    ld a, [$cbe7]                                 ; $48ef: $fa $e7 $cb
    cp $04                                        ; $48f2: $fe $04
    jp z, Jump_003_49de                           ; $48f4: $ca $de $49

Call_003_48f7:
    ldh a, [rSVBK]                                ; $48f7: $f0 $70
    push af                                       ; $48f9: $f5
    ld a, $05                                     ; $48fa: $3e $05
    ldh [rSVBK], a                                ; $48fc: $e0 $70
    push bc                                       ; $48fe: $c5
    xor a                                         ; $48ff: $af
    ld [$cb97], a                                 ; $4900: $ea $97 $cb
    call Call_003_4a18                            ; $4903: $cd $18 $4a
    ld hl, $0000                                  ; $4906: $21 $00 $00
    jr z, jr_003_490e                             ; $4909: $28 $03

    call Call_003_4a94                            ; $490b: $cd $94 $4a

jr_003_490e:
    ld a, l                                       ; $490e: $7d
    or h                                          ; $490f: $b4
    jp z, Jump_003_49c7                           ; $4910: $ca $c7 $49

    ldh [$c1], a                                  ; $4913: $e0 $c1
    ld a, $2d                                     ; $4915: $3e $2d
    ldh [$bd], a                                  ; $4917: $e0 $bd
    ld a, $51                                     ; $4919: $3e $51
    ldh [$be], a                                  ; $491b: $e0 $be
    call Call_000_33d9                            ; $491d: $cd $d9 $33
    jr z, jr_003_4979                             ; $4920: $28 $57

    cp $01                                        ; $4922: $fe $01
    jr z, jr_003_4934                             ; $4924: $28 $0e

    cp $02                                        ; $4926: $fe $02
    jr z, jr_003_495f                             ; $4928: $28 $35

    cp $03                                        ; $492a: $fe $03
    jr z, jr_003_4946                             ; $492c: $28 $18

    cp $06                                        ; $492e: $fe $06
    jr z, jr_003_493b                             ; $4930: $28 $09

    jr jr_003_4979                                ; $4932: $18 $45

jr_003_4934:
    ld a, $01                                     ; $4934: $3e $01
    ld [$cb97], a                                 ; $4936: $ea $97 $cb
    jr jr_003_497f                                ; $4939: $18 $44

jr_003_493b:
    ld a, $03                                     ; $493b: $3e $03
    ld [$cb97], a                                 ; $493d: $ea $97 $cb
    ld hl, $0000                                  ; $4940: $21 $00 $00
    jp Jump_003_49c7                              ; $4943: $c3 $c7 $49


jr_003_4946:
    ld [$cb97], a                                 ; $4946: $ea $97 $cb
    cp $02                                        ; $4949: $fe $02
    jr z, jr_003_4952                             ; $494b: $28 $05

    ld a, $04                                     ; $494d: $3e $04
    ld [$cb97], a                                 ; $494f: $ea $97 $cb

jr_003_4952:
    ld d, h                                       ; $4952: $54
    ld e, l                                       ; $4953: $5d
    sra d                                         ; $4954: $cb $2a
    rr e                                          ; $4956: $cb $1b
    sra d                                         ; $4958: $cb $2a
    rr e                                          ; $495a: $cb $1b
    add hl, de                                    ; $495c: $19
    jr jr_003_4979                                ; $495d: $18 $1a

jr_003_495f:
    ld a, [$cb97]                                 ; $495f: $fa $97 $cb
    cp $02                                        ; $4962: $fe $02
    jr z, jr_003_496b                             ; $4964: $28 $05

    ld a, $06                                     ; $4966: $3e $06
    ld [$cb97], a                                 ; $4968: $ea $97 $cb

jr_003_496b:
    ld d, h                                       ; $496b: $54
    ld e, l                                       ; $496c: $5d
    sra d                                         ; $496d: $cb $2a
    rr e                                          ; $496f: $cb $1b
    sra d                                         ; $4971: $cb $2a
    rr e                                          ; $4973: $cb $1b
    call Call_000_0098                            ; $4975: $cd $98 $00
    add hl, de                                    ; $4978: $19

jr_003_4979:
    push hl                                       ; $4979: $e5
    call Call_000_007b                            ; $497a: $cd $7b $00
    jr jr_003_4980                                ; $497d: $18 $01

jr_003_497f:
    push hl                                       ; $497f: $e5

jr_003_4980:
    push hl                                       ; $4980: $e5
    ld a, [$cbe7]                                 ; $4981: $fa $e7 $cb
    call Call_003_4de8                            ; $4984: $cd $e8 $4d
    ld de, $0005                                  ; $4987: $11 $05 $00
    add hl, de                                    ; $498a: $19
    pop de                                        ; $498b: $d1
    push hl                                       ; $498c: $e5
    ld a, [hl+]                                   ; $498d: $2a
    ld h, [hl]                                    ; $498e: $66
    ld l, a                                       ; $498f: $6f
    add hl, de                                    ; $4990: $19
    ld e, l                                       ; $4991: $5d
    ld d, h                                       ; $4992: $54
    pop hl                                        ; $4993: $e1
    jr c, jr_003_49c2                             ; $4994: $38 $2c

    ldh [$c1], a                                  ; $4996: $e0 $c1
    ld a, $2d                                     ; $4998: $3e $2d
    ldh [$bd], a                                  ; $499a: $e0 $bd
    ld a, $51                                     ; $499c: $3e $51
    ldh [$be], a                                  ; $499e: $e0 $be
    call Call_000_33d9                            ; $49a0: $cd $d9 $33
    jr z, jr_003_49a9                             ; $49a3: $28 $04

    cp $01                                        ; $49a5: $fe $01
    jr z, jr_003_49ae                             ; $49a7: $28 $05

jr_003_49a9:
    ld de, $0000                                  ; $49a9: $11 $00 $00
    jr jr_003_49c2                                ; $49ac: $18 $14

jr_003_49ae:
    push hl                                       ; $49ae: $e5
    ld a, [$cbe7]                                 ; $49af: $fa $e7 $cb
    call Call_003_4de8                            ; $49b2: $cd $e8 $4d
    ld bc, $0001                                  ; $49b5: $01 $01 $00
    add hl, bc                                    ; $49b8: $09
    ld a, [hl+]                                   ; $49b9: $2a
    ld h, [hl]                                    ; $49ba: $66
    ld l, a                                       ; $49bb: $6f
    call Call_000_323b                            ; $49bc: $cd $3b $32
    ld d, h                                       ; $49bf: $54
    ld e, l                                       ; $49c0: $5d
    pop hl                                        ; $49c1: $e1

jr_003_49c2:
    ld [hl], e                                    ; $49c2: $73
    inc hl                                        ; $49c3: $23
    ld [hl], d                                    ; $49c4: $72
    jr jr_003_49cd                                ; $49c5: $18 $06

Jump_003_49c7:
    ld a, $03                                     ; $49c7: $3e $03
    ld [$cb97], a                                 ; $49c9: $ea $97 $cb
    push hl                                       ; $49cc: $e5

jr_003_49cd:
    pop hl                                        ; $49cd: $e1
    call Call_003_48b5                            ; $49ce: $cd $b5 $48
    ld a, [$cbe7]                                 ; $49d1: $fa $e7 $cb
    ld l, $02                                     ; $49d4: $2e $02
    call Call_003_4c60                            ; $49d6: $cd $60 $4c
    pop bc                                        ; $49d9: $c1
    pop af                                        ; $49da: $f1
    ldh [rSVBK], a                                ; $49db: $e0 $70
    ret                                           ; $49dd: $c9


Jump_003_49de:
    ld a, $01                                     ; $49de: $3e $01
    ld [$cb9a], a                                 ; $49e0: $ea $9a $cb
    ld a, [$cb98]                                 ; $49e3: $fa $98 $cb
    ld [$cb99], a                                 ; $49e6: $ea $99 $cb
    ld a, $01                                     ; $49e9: $3e $01
    ld [$cbe7], a                                 ; $49eb: $ea $e7 $cb
    call Call_003_4c1e                            ; $49ee: $cd $1e $4c
    bit 1, a                                      ; $49f1: $cb $4f
    call z, Call_003_48f7                         ; $49f3: $cc $f7 $48
    ld a, $02                                     ; $49f6: $3e $02
    ld [$cbe7], a                                 ; $49f8: $ea $e7 $cb
    call Call_003_4c1e                            ; $49fb: $cd $1e $4c
    bit 1, a                                      ; $49fe: $cb $4f
    call z, Call_003_48f7                         ; $4a00: $cc $f7 $48
    ld a, $03                                     ; $4a03: $3e $03
    ld [$cbe7], a                                 ; $4a05: $ea $e7 $cb
    call Call_003_4c1e                            ; $4a08: $cd $1e $4c
    bit 1, a                                      ; $4a0b: $cb $4f
    jr nz, jr_003_4a12                            ; $4a0d: $20 $03

    call Call_003_48f7                            ; $4a0f: $cd $f7 $48

jr_003_4a12:
    ld a, $04                                     ; $4a12: $3e $04
    ld [$cbe7], a                                 ; $4a14: $ea $e7 $cb
    ret                                           ; $4a17: $c9


Call_003_4a18:
    ld a, [$cbe2]                                 ; $4a18: $fa $e2 $cb
    or a                                          ; $4a1b: $b7
    jr nz, jr_003_4a42                            ; $4a1c: $20 $24

    ld a, [$cd63]                                 ; $4a1e: $fa $63 $cd
    cp $04                                        ; $4a21: $fe $04
    jr z, jr_003_4a40                             ; $4a23: $28 $1b

    cp $25                                        ; $4a25: $fe $25
    jr z, jr_003_4a40                             ; $4a27: $28 $17

    ld a, [$ce0b]                                 ; $4a29: $fa $0b $ce
    or a                                          ; $4a2c: $b7
    jr z, jr_003_4a35                             ; $4a2d: $28 $06

    dec a                                         ; $4a2f: $3d
    ld [$ce0b], a                                 ; $4a30: $ea $0b $ce
    inc a                                         ; $4a33: $3c
    ret                                           ; $4a34: $c9


jr_003_4a35:
    ld a, $64                                     ; $4a35: $3e $64
    call Call_000_275f                            ; $4a37: $cd $5f $27
    cp $5d                                        ; $4a3a: $fe $5d
    jr c, jr_003_4a5d                             ; $4a3c: $38 $1f

    jr jr_003_4a5b                                ; $4a3e: $18 $1b

jr_003_4a40:
    dec a                                         ; $4a40: $3d
    ret                                           ; $4a41: $c9


jr_003_4a42:
    ld a, $0a                                     ; $4a42: $3e $0a
    call Call_000_275f                            ; $4a44: $cd $5f $27
    push af                                       ; $4a47: $f5
    ld a, [$cc06]                                 ; $4a48: $fa $06 $cc
    bit 3, a                                      ; $4a4b: $cb $5f
    jr nz, jr_003_4a56                            ; $4a4d: $20 $07

    pop af                                        ; $4a4f: $f1
    cp $07                                        ; $4a50: $fe $07
    jr c, jr_003_4a5d                             ; $4a52: $38 $09

    jr jr_003_4a5b                                ; $4a54: $18 $05

jr_003_4a56:
    pop af                                        ; $4a56: $f1
    cp $04                                        ; $4a57: $fe $04
    jr c, jr_003_4a5d                             ; $4a59: $38 $02

jr_003_4a5b:
    xor a                                         ; $4a5b: $af
    ret                                           ; $4a5c: $c9


jr_003_4a5d:
    ld a, $02                                     ; $4a5d: $3e $02
    dec a                                         ; $4a5f: $3d
    ret                                           ; $4a60: $c9


Call_003_4a61:
    ld a, [$cbe2]                                 ; $4a61: $fa $e2 $cb
    or a                                          ; $4a64: $b7
    jr nz, jr_003_4a71                            ; $4a65: $20 $0a

    ld a, $0a                                     ; $4a67: $3e $0a
    call Call_000_2722                            ; $4a69: $cd $22 $27
    or a                                          ; $4a6c: $b7
    jr z, jr_003_4a79                             ; $4a6d: $28 $0a

    xor a                                         ; $4a6f: $af
    ret                                           ; $4a70: $c9


jr_003_4a71:
    ldh a, [rDIV]                                 ; $4a71: $f0 $04
    and $3f                                       ; $4a73: $e6 $3f
    jr z, jr_003_4a79                             ; $4a75: $28 $02

    xor a                                         ; $4a77: $af
    ret                                           ; $4a78: $c9


jr_003_4a79:
    ld a, $02                                     ; $4a79: $3e $02
    ld [$cb97], a                                 ; $4a7b: $ea $97 $cb
    add hl, hl                                    ; $4a7e: $29
    ld a, $01                                     ; $4a7f: $3e $01
    or a                                          ; $4a81: $b7
    ret                                           ; $4a82: $c9


Call_003_4a83:
    push hl                                       ; $4a83: $e5
    ld a, [$cbe6]                                 ; $4a84: $fa $e6 $cb
    cp $ff                                        ; $4a87: $fe $ff
    jr nz, jr_003_4a8e                            ; $4a89: $20 $03

    xor a                                         ; $4a8b: $af
    jr jr_003_4a92                                ; $4a8c: $18 $04

jr_003_4a8e:
    ld hl, $6120                                  ; $4a8e: $21 $20 $61
    rst $08                                       ; $4a91: $cf

jr_003_4a92:
    pop hl                                        ; $4a92: $e1
    ret                                           ; $4a93: $c9


Call_003_4a94:
    ld a, c                                       ; $4a94: $79
    rst $00                                       ; $4a95: $c7

    db $9e, $4a, $c2, $4a

    sub $4a                                       ; $4a9a: $d6 $4a
    db $ea                                        ; $4a9c: $ea
    ld c, d                                       ; $4a9d: $4a

    ldh a, [rSVBK]                                ; $4a9e: $f0 $70
    push af                                       ; $4aa0: $f5
    ld a, $05                                     ; $4aa1: $3e $05
    ldh [rSVBK], a                                ; $4aa3: $e0 $70
    push de                                       ; $4aa5: $d5
    ld de, $000d                                  ; $4aa6: $11 $0d $00
    call Call_003_4b6f                            ; $4aa9: $cd $6f $4b
    ld a, $0b                                     ; $4aac: $3e $0b
    call Call_003_4b7a                            ; $4aae: $cd $7a $4b
    call Call_003_4b15                            ; $4ab1: $cd $15 $4b
    call Call_003_4a61                            ; $4ab4: $cd $61 $4a
    call Call_003_4bcc                            ; $4ab7: $cd $cc $4b
    call Call_003_4b9d                            ; $4aba: $cd $9d $4b
    pop de                                        ; $4abd: $d1
    pop af                                        ; $4abe: $f1
    ldh [rSVBK], a                                ; $4abf: $e0 $70
    ret                                           ; $4ac1: $c9


    call Call_003_4b58                            ; $4ac2: $cd $58 $4b
    ret nz                                        ; $4ac5: $c0

    ldh a, [rSVBK]                                ; $4ac6: $f0 $70
    push af                                       ; $4ac8: $f5
    ld a, $05                                     ; $4ac9: $3e $05
    ldh [rSVBK], a                                ; $4acb: $e0 $70
    push de                                       ; $4acd: $d5
    ld de, $000e                                  ; $4ace: $11 $0e $00
    call Call_003_4b6f                            ; $4ad1: $cd $6f $4b
    jr jr_003_4afc                                ; $4ad4: $18 $26

    call Call_003_4b58                            ; $4ad6: $cd $58 $4b
    ret nz                                        ; $4ad9: $c0

    ldh a, [rSVBK]                                ; $4ada: $f0 $70
    push af                                       ; $4adc: $f5
    ld a, $05                                     ; $4add: $3e $05
    ldh [rSVBK], a                                ; $4adf: $e0 $70
    push de                                       ; $4ae1: $d5
    ld de, $000f                                  ; $4ae2: $11 $0f $00
    call Call_003_4b6f                            ; $4ae5: $cd $6f $4b
    jr jr_003_4afc                                ; $4ae8: $18 $12

    call Call_003_4b58                            ; $4aea: $cd $58 $4b
    ret nz                                        ; $4aed: $c0

    ldh a, [rSVBK]                                ; $4aee: $f0 $70
    push af                                       ; $4af0: $f5
    ld a, $05                                     ; $4af1: $3e $05
    ldh [rSVBK], a                                ; $4af3: $e0 $70
    push de                                       ; $4af5: $d5
    ld de, $0010                                  ; $4af6: $11 $10 $00
    call Call_003_4b6f                            ; $4af9: $cd $6f $4b

jr_003_4afc:
    ld a, $0c                                     ; $4afc: $3e $0c
    call Call_003_4b7a                            ; $4afe: $cd $7a $4b
    call Call_003_4b23                            ; $4b01: $cd $23 $4b
    call Call_003_4a61                            ; $4b04: $cd $61 $4a
    call Call_003_4bb6                            ; $4b07: $cd $b6 $4b
    call Call_003_4bcc                            ; $4b0a: $cd $cc $4b
    call Call_003_4b84                            ; $4b0d: $cd $84 $4b
    pop de                                        ; $4b10: $d1
    pop af                                        ; $4b11: $f1
    ldh [rSVBK], a                                ; $4b12: $e0 $70
    ret                                           ; $4b14: $c9


Call_003_4b15:
    call Call_000_0098                            ; $4b15: $cd $98 $00
    call Call_003_4a83                            ; $4b18: $cd $83 $4a
    rst $08                                       ; $4b1b: $cf
    add hl, hl                                    ; $4b1c: $29
    add hl, de                                    ; $4b1d: $19
    sra h                                         ; $4b1e: $cb $2c
    rr l                                          ; $4b20: $cb $1d
    ret                                           ; $4b22: $c9


Call_003_4b23:
    call Call_000_0098                            ; $4b23: $cd $98 $00
    add hl, de                                    ; $4b26: $19
    sra h                                         ; $4b27: $cb $2c
    rr l                                          ; $4b29: $cb $1d
    call Call_003_4a83                            ; $4b2b: $cd $83 $4a
    ld e, a                                       ; $4b2e: $5f
    ld d, $00                                     ; $4b2f: $16 $00
    ld h, a                                       ; $4b31: $67
    ld a, l                                       ; $4b32: $7d
    rla                                           ; $4b33: $17
    push af                                       ; $4b34: $f5
    jr nc, jr_003_4b3b                            ; $4b35: $30 $04

    ld a, l                                       ; $4b37: $7d
    cpl                                           ; $4b38: $2f
    inc a                                         ; $4b39: $3c
    ld l, a                                       ; $4b3a: $6f

jr_003_4b3b:
    call Call_000_00a5                            ; $4b3b: $cd $a5 $00
    pop af                                        ; $4b3e: $f1
    call c, Call_000_007b                         ; $4b3f: $dc $7b $00
    sra h                                         ; $4b42: $cb $2c
    rr l                                          ; $4b44: $cb $1d
    sra h                                         ; $4b46: $cb $2c
    rr l                                          ; $4b48: $cb $1d
    sra h                                         ; $4b4a: $cb $2c
    rr l                                          ; $4b4c: $cb $1d
    sra h                                         ; $4b4e: $cb $2c
    rr l                                          ; $4b50: $cb $1d
    sra h                                         ; $4b52: $cb $2c
    rr l                                          ; $4b54: $cb $1d
    add hl, de                                    ; $4b56: $19
    ret                                           ; $4b57: $c9


Call_003_4b58:
    ld a, [$cbe2]                                 ; $4b58: $fa $e2 $cb
    or a                                          ; $4b5b: $b7
    ret z                                         ; $4b5c: $c8

    ld a, [$cbe7]                                 ; $4b5d: $fa $e7 $cb
    or a                                          ; $4b60: $b7
    jr z, jr_003_4b65                             ; $4b61: $28 $02

    xor a                                         ; $4b63: $af
    ret                                           ; $4b64: $c9


jr_003_4b65:
    ld a, [$cc06]                                 ; $4b65: $fa $06 $cc
    bit 7, a                                      ; $4b68: $cb $7f
    ret z                                         ; $4b6a: $c8

    ld hl, $0000                                  ; $4b6b: $21 $00 $00
    ret                                           ; $4b6e: $c9


Call_003_4b6f:
    ld a, [$cbe7]                                 ; $4b6f: $fa $e7 $cb
    call Call_003_4de8                            ; $4b72: $cd $e8 $4d
    add hl, de                                    ; $4b75: $19
    ld e, [hl]                                    ; $4b76: $5e
    ld d, $00                                     ; $4b77: $16 $00
    ret                                           ; $4b79: $c9


Call_003_4b7a:
    push af                                       ; $4b7a: $f5
    call Call_003_4de5                            ; $4b7b: $cd $e5 $4d
    pop af                                        ; $4b7e: $f1
    rst $08                                       ; $4b7f: $cf
    ld l, [hl]                                    ; $4b80: $6e
    ld h, $00                                     ; $4b81: $26 $00
    ret                                           ; $4b83: $c9


Call_003_4b84:
    ldh [$c1], a                                  ; $4b84: $e0 $c1
    ld a, $2d                                     ; $4b86: $3e $2d
    ldh [$bd], a                                  ; $4b88: $e0 $bd
    ld a, $51                                     ; $4b8a: $3e $51
    ldh [$be], a                                  ; $4b8c: $e0 $be
    call Call_000_33d9                            ; $4b8e: $cd $d9 $33
    ret z                                         ; $4b91: $c8

    cp $04                                        ; $4b92: $fe $04
    ret nz                                        ; $4b94: $c0

    add hl, hl                                    ; $4b95: $29
    add hl, hl                                    ; $4b96: $29
    ld de, $03e7                                  ; $4b97: $11 $e7 $03
    jp Jump_000_323b                              ; $4b9a: $c3 $3b $32


Call_003_4b9d:
    ldh [$c1], a                                  ; $4b9d: $e0 $c1
    ld a, $2d                                     ; $4b9f: $3e $2d
    ldh [$bd], a                                  ; $4ba1: $e0 $bd
    ld a, $51                                     ; $4ba3: $3e $51
    ldh [$be], a                                  ; $4ba5: $e0 $be
    call Call_000_33d9                            ; $4ba7: $cd $d9 $33
    ret z                                         ; $4baa: $c8

    cp $05                                        ; $4bab: $fe $05
    ret nz                                        ; $4bad: $c0

    add hl, hl                                    ; $4bae: $29
    add hl, hl                                    ; $4baf: $29
    ld de, $03e7                                  ; $4bb0: $11 $e7 $03
    jp Jump_000_323b                              ; $4bb3: $c3 $3b $32


Call_003_4bb6:
    ld a, [$cb9a]                                 ; $4bb6: $fa $9a $cb
    or a                                          ; $4bb9: $b7
    ret z                                         ; $4bba: $c8

    ld a, [$cbe6]                                 ; $4bbb: $fa $e6 $cb
    cp $08                                        ; $4bbe: $fe $08
    jr z, jr_003_4bc7                             ; $4bc0: $28 $05

    cp $0b                                        ; $4bc2: $fe $0b
    jr z, jr_003_4bc7                             ; $4bc4: $28 $01

    ret                                           ; $4bc6: $c9


jr_003_4bc7:
    sra h                                         ; $4bc7: $cb $2c
    rr l                                          ; $4bc9: $cb $1d
    ret                                           ; $4bcb: $c9


Call_003_4bcc:
    bit 7, h                                      ; $4bcc: $cb $7c
    jr nz, jr_003_4bf7                            ; $4bce: $20 $27

    push hl                                       ; $4bd0: $e5
    sra h                                         ; $4bd1: $cb $2c
    rr l                                          ; $4bd3: $cb $1d
    sra h                                         ; $4bd5: $cb $2c
    rr l                                          ; $4bd7: $cb $1d
    sra h                                         ; $4bd9: $cb $2c
    rr l                                          ; $4bdb: $cb $1d
    ld e, l                                       ; $4bdd: $5d
    srl l                                         ; $4bde: $cb $3d
    jr nz, jr_003_4be6                            ; $4be0: $20 $04

    ld e, $02                                     ; $4be2: $1e $02
    ld l, $01                                     ; $4be4: $2e $01

jr_003_4be6:
    ld a, e                                       ; $4be6: $7b
    inc a                                         ; $4be7: $3c
    call Call_000_2722                            ; $4be8: $cd $22 $27
    sub l                                         ; $4beb: $95
    ld e, a                                       ; $4bec: $5f
    ld a, $00                                     ; $4bed: $3e $00
    sbc a                                         ; $4bef: $9f
    ld d, a                                       ; $4bf0: $57
    pop hl                                        ; $4bf1: $e1
    add hl, de                                    ; $4bf2: $19
    bit 7, h                                      ; $4bf3: $cb $7c
    jr z, jr_003_4bfa                             ; $4bf5: $28 $03

jr_003_4bf7:
    ld hl, $0001                                  ; $4bf7: $21 $01 $00

jr_003_4bfa:
    ld de, $03e7                                  ; $4bfa: $11 $e7 $03
    call Call_000_323b                            ; $4bfd: $cd $3b $32
    ld de, $0001                                  ; $4c00: $11 $01 $00
    call Call_000_3240                            ; $4c03: $cd $40 $32
    ret                                           ; $4c06: $c9


    ldh [$bc], a                                  ; $4c07: $e0 $bc
    ldh a, [rSVBK]                                ; $4c09: $f0 $70
    push af                                       ; $4c0b: $f5
    ld a, $05                                     ; $4c0c: $3e $05
    ldh [rSVBK], a                                ; $4c0e: $e0 $70
    ldh a, [$bc]                                  ; $4c10: $f0 $bc
    call Call_003_4de8                            ; $4c12: $cd $e8 $4d
    ld a, [hl]                                    ; $4c15: $7e
    ldh [$bc], a                                  ; $4c16: $e0 $bc
    pop af                                        ; $4c18: $f1
    ldh [rSVBK], a                                ; $4c19: $e0 $70
    ldh a, [$bc]                                  ; $4c1b: $f0 $bc
    ret                                           ; $4c1d: $c9


Call_003_4c1e:
    ldh [$bc], a                                  ; $4c1e: $e0 $bc
    ldh a, [rSVBK]                                ; $4c20: $f0 $70
    push af                                       ; $4c22: $f5
    ld a, $05                                     ; $4c23: $3e $05
    ldh [rSVBK], a                                ; $4c25: $e0 $70
    ldh a, [$bc]                                  ; $4c27: $f0 $bc
    push de                                       ; $4c29: $d5
    call Call_003_4de8                            ; $4c2a: $cd $e8 $4d
    ld de, $000a                                  ; $4c2d: $11 $0a $00
    add hl, de                                    ; $4c30: $19
    ld a, [hl]                                    ; $4c31: $7e
    pop de                                        ; $4c32: $d1
    ldh [$bc], a                                  ; $4c33: $e0 $bc
    pop af                                        ; $4c35: $f1
    ldh [rSVBK], a                                ; $4c36: $e0 $70
    ldh a, [$bc]                                  ; $4c38: $f0 $bc
    ret                                           ; $4c3a: $c9


Call_003_4c3b:
Jump_003_4c3b:
    push af                                       ; $4c3b: $f5
    call Call_003_4c1e                            ; $4c3c: $cd $1e $4c
    and $02                                       ; $4c3f: $e6 $02
    pop hl                                        ; $4c41: $e1
    ld a, h                                       ; $4c42: $7c
    ret                                           ; $4c43: $c9


Call_003_4c44:
    jp Jump_003_4c89                              ; $4c44: $c3 $89 $4c


Call_003_4c47:
    ldh [$bc], a                                  ; $4c47: $e0 $bc
    ldh a, [rSVBK]                                ; $4c49: $f0 $70
    push af                                       ; $4c4b: $f5
    ld a, $05                                     ; $4c4c: $3e $05
    ldh [rSVBK], a                                ; $4c4e: $e0 $70
    ldh a, [$bc]                                  ; $4c50: $f0 $bc
    call Call_003_4de8                            ; $4c52: $cd $e8 $4d
    ld a, $12                                     ; $4c55: $3e $12
    rst $08                                       ; $4c57: $cf
    ldh [$bc], a                                  ; $4c58: $e0 $bc
    pop af                                        ; $4c5a: $f1
    ldh [rSVBK], a                                ; $4c5b: $e0 $70
    ldh a, [$bc]                                  ; $4c5d: $f0 $bc
    ret                                           ; $4c5f: $c9


Call_003_4c60:
Jump_003_4c60:
    ld e, l                                       ; $4c60: $5d
    cp $04                                        ; $4c61: $fe $04
    jr z, jr_003_4c7b                             ; $4c63: $28 $16

Call_003_4c65:
jr_003_4c65:
    ldh [$bc], a                                  ; $4c65: $e0 $bc
    ldh a, [rSVBK]                                ; $4c67: $f0 $70
    push af                                       ; $4c69: $f5
    ld a, $05                                     ; $4c6a: $3e $05
    ldh [rSVBK], a                                ; $4c6c: $e0 $70
    ldh a, [$bc]                                  ; $4c6e: $f0 $bc
    call Call_003_4de8                            ; $4c70: $cd $e8 $4d
    ld a, $12                                     ; $4c73: $3e $12
    rst $08                                       ; $4c75: $cf
    ld [hl], e                                    ; $4c76: $73
    pop af                                        ; $4c77: $f1
    ldh [rSVBK], a                                ; $4c78: $e0 $70
    ret                                           ; $4c7a: $c9


jr_003_4c7b:
    ld a, $01                                     ; $4c7b: $3e $01
    call Call_003_4c65                            ; $4c7d: $cd $65 $4c
    ld a, $02                                     ; $4c80: $3e $02
    call Call_003_4c65                            ; $4c82: $cd $65 $4c
    ld a, $03                                     ; $4c85: $3e $03
    jr jr_003_4c65                                ; $4c87: $18 $dc

Call_003_4c89:
Jump_003_4c89:
    ldh a, [rSVBK]                                ; $4c89: $f0 $70
    push af                                       ; $4c8b: $f5
    ld a, $05                                     ; $4c8c: $3e $05
    ldh [rSVBK], a                                ; $4c8e: $e0 $70
    call Call_003_4e42                            ; $4c90: $cd $42 $4e
    jr nz, jr_003_4d0e                            ; $4c93: $20 $79

    ld de, $0019                                  ; $4c95: $11 $19 $00
    ld hl, $d3f0                                  ; $4c98: $21 $f0 $d3
    xor a                                         ; $4c9b: $af
    ld b, a                                       ; $4c9c: $47
    ld c, $ff                                     ; $4c9d: $0e $ff
    push af                                       ; $4c9f: $f5

jr_003_4ca0:
    ldh a, [rSVBK]                                ; $4ca0: $f0 $70
    push af                                       ; $4ca2: $f5
    ld a, $05                                     ; $4ca3: $3e $05
    ldh [rSVBK], a                                ; $4ca5: $e0 $70
    add hl, de                                    ; $4ca7: $19
    push de                                       ; $4ca8: $d5
    push hl                                       ; $4ca9: $e5
    ld de, $0001                                  ; $4caa: $11 $01 $00
    add hl, de                                    ; $4cad: $19
    bit 7, [hl]                                   ; $4cae: $cb $7e
    pop hl                                        ; $4cb0: $e1
    pop de                                        ; $4cb1: $d1
    jr z, jr_003_4cb8                             ; $4cb2: $28 $04

    ld a, $fe                                     ; $4cb4: $3e $fe
    jr jr_003_4cc9                                ; $4cb6: $18 $11

jr_003_4cb8:
    push de                                       ; $4cb8: $d5
    push hl                                       ; $4cb9: $e5
    ld de, $0001                                  ; $4cba: $11 $01 $00
    add hl, de                                    ; $4cbd: $19
    bit 6, [hl]                                   ; $4cbe: $cb $76
    pop hl                                        ; $4cc0: $e1
    pop de                                        ; $4cc1: $d1
    jr z, jr_003_4cc8                             ; $4cc2: $28 $04

    ld a, $01                                     ; $4cc4: $3e $01
    jr jr_003_4cc9                                ; $4cc6: $18 $01

jr_003_4cc8:
    ld a, [hl]                                    ; $4cc8: $7e

jr_003_4cc9:
    cp c                                          ; $4cc9: $b9
    jr c, jr_003_4cd1                             ; $4cca: $38 $05

    pop af                                        ; $4ccc: $f1
    ldh [rSVBK], a                                ; $4ccd: $e0 $70
    jr jr_003_4cfc                                ; $4ccf: $18 $2b

jr_003_4cd1:
    inc hl                                        ; $4cd1: $23
    ld a, [hl-]                                   ; $4cd2: $3a
    and $1b                                       ; $4cd3: $e6 $1b
    jr z, jr_003_4cdc                             ; $4cd5: $28 $05

    pop af                                        ; $4cd7: $f1
    ldh [rSVBK], a                                ; $4cd8: $e0 $70
    jr jr_003_4cfc                                ; $4cda: $18 $20

jr_003_4cdc:
    ld a, [$d46a]                                 ; $4cdc: $fa $6a $d4
    cp $02                                        ; $4cdf: $fe $02
    jr nz, jr_003_4cf4                            ; $4ce1: $20 $11

    push hl                                       ; $4ce3: $e5
    ld hl, $d46b                                  ; $4ce4: $21 $6b $d4
    ld a, b                                       ; $4ce7: $78
    inc a                                         ; $4ce8: $3c
    call Call_000_3256                            ; $4ce9: $cd $56 $32
    pop hl                                        ; $4cec: $e1
    jr z, jr_003_4cf4                             ; $4ced: $28 $05

    pop af                                        ; $4cef: $f1
    ldh [rSVBK], a                                ; $4cf0: $e0 $70
    jr jr_003_4cfc                                ; $4cf2: $18 $08

jr_003_4cf4:
    pop af                                        ; $4cf4: $f1
    ldh [rSVBK], a                                ; $4cf5: $e0 $70
    ld a, [hl]                                    ; $4cf7: $7e
    ld c, a                                       ; $4cf8: $4f
    pop af                                        ; $4cf9: $f1
    ld a, b                                       ; $4cfa: $78
    push af                                       ; $4cfb: $f5

jr_003_4cfc:
    inc b                                         ; $4cfc: $04
    ld a, $04                                     ; $4cfd: $3e $04
    cp b                                          ; $4cff: $b8
    jr nz, jr_003_4ca0                            ; $4d00: $20 $9e

    pop af                                        ; $4d02: $f1
    ld b, a                                       ; $4d03: $47
    ld a, c                                       ; $4d04: $79
    cp $ff                                        ; $4d05: $fe $ff
    jr nz, jr_003_4d16                            ; $4d07: $20 $0d

    ld a, $a8                                     ; $4d09: $3e $a8
    ld [$cc03], a                                 ; $4d0b: $ea $03 $cc

jr_003_4d0e:
    ldh [$bc], a                                  ; $4d0e: $e0 $bc
    pop af                                        ; $4d10: $f1
    ldh [rSVBK], a                                ; $4d11: $e0 $70
    ldh a, [$bc]                                  ; $4d13: $f0 $bc
    ret                                           ; $4d15: $c9


jr_003_4d16:
    ld a, b                                       ; $4d16: $78
    ld [$cbe2], a                                 ; $4d17: $ea $e2 $cb
    ldh [$bc], a                                  ; $4d1a: $e0 $bc
    pop af                                        ; $4d1c: $f1
    ldh [rSVBK], a                                ; $4d1d: $e0 $70
    ldh a, [$bc]                                  ; $4d1f: $f0 $bc
    or a                                          ; $4d21: $b7
    ret nz                                        ; $4d22: $c0

    ldh a, [rSVBK]                                ; $4d23: $f0 $70
    push af                                       ; $4d25: $f5
    ld a, $05                                     ; $4d26: $3e $05
    ldh [rSVBK], a                                ; $4d28: $e0 $70
    ld a, [$d46a]                                 ; $4d2a: $fa $6a $d4
    cp $02                                        ; $4d2d: $fe $02
    jr nz, jr_003_4d56                            ; $4d2f: $20 $25

    ld a, [$d46c]                                 ; $4d31: $fa $6c $d4
    dec a                                         ; $4d34: $3d
    jr z, jr_003_4d3e                             ; $4d35: $28 $07

    ld [$d46c], a                                 ; $4d37: $ea $6c $d4
    pop af                                        ; $4d3a: $f1
    ldh [rSVBK], a                                ; $4d3b: $e0 $70
    ret                                           ; $4d3d: $c9


jr_003_4d3e:
    jr jr_003_4d56                                ; $4d3e: $18 $16

    ld bc, $0019                                  ; $4d40: $01 $19 $00
    ld hl, $d40a                                  ; $4d43: $21 $0a $d4

jr_003_4d46:
    ld de, $d455                                  ; $4d46: $11 $55 $d4
    rst $10                                       ; $4d49: $d7
    jr z, jr_003_4d56                             ; $4d4a: $28 $0a

    add hl, bc                                    ; $4d4c: $09
    ld a, [hl]                                    ; $4d4d: $7e
    and $1b                                       ; $4d4e: $e6 $1b
    jr nz, jr_003_4d46                            ; $4d50: $20 $f4

    set 0, [hl]                                   ; $4d52: $cb $c6
    jr jr_003_4d46                                ; $4d54: $18 $f0

jr_003_4d56:
    xor a                                         ; $4d56: $af
    ld [$d46a], a                                 ; $4d57: $ea $6a $d4
    ld [$d46b], a                                 ; $4d5a: $ea $6b $d4
    ld [$d46d], a                                 ; $4d5d: $ea $6d $d4
    ld [$d46c], a                                 ; $4d60: $ea $6c $d4
    pop af                                        ; $4d63: $f1

Jump_003_4d64:
    ldh [rSVBK], a                                ; $4d64: $e0 $70
    ld a, $00                                     ; $4d66: $3e $00
    ret                                           ; $4d68: $c9


Jump_003_4d69:
    ldh a, [rSVBK]                                ; $4d69: $f0 $70
    push af                                       ; $4d6b: $f5
    ld a, $05                                     ; $4d6c: $3e $05
    ldh [rSVBK], a                                ; $4d6e: $e0 $70
    ld hl, $cbad                                  ; $4d70: $21 $ad $cb
    xor a                                         ; $4d73: $af
    ld [hl+], a                                   ; $4d74: $22
    ld [hl+], a                                   ; $4d75: $22
    ld [hl], a                                    ; $4d76: $77
    ld [$cb96], a                                 ; $4d77: $ea $96 $cb
    ldh [$c1], a                                  ; $4d7a: $e0 $c1
    ld a, $e5                                     ; $4d7c: $3e $e5
    ldh [$bd], a                                  ; $4d7e: $e0 $bd
    ld a, $65                                     ; $4d80: $3e $65
    ldh [$be], a                                  ; $4d82: $e0 $be
    call Call_000_33e7                            ; $4d84: $cd $e7 $33
    ld b, $04                                     ; $4d87: $06 $04
    ld hl, $d40a                                  ; $4d89: $21 $0a $d4

jr_003_4d8c:
    res 0, [hl]                                   ; $4d8c: $cb $86
    bit 2, [hl]                                   ; $4d8e: $cb $56
    call nz, Call_003_4e8c                        ; $4d90: $c4 $8c $4e
    bit 4, [hl]                                   ; $4d93: $cb $66
    call nz, Call_003_4f6a                        ; $4d95: $c4 $6a $4f
    bit 3, [hl]                                   ; $4d98: $cb $5e
    call nz, Call_003_4f73                        ; $4d9a: $c4 $73 $4f
    ld de, $0019                                  ; $4d9d: $11 $19 $00
    add hl, de                                    ; $4da0: $19
    dec b                                         ; $4da1: $05
    jr nz, jr_003_4d8c                            ; $4da2: $20 $e8

    ld a, $ff                                     ; $4da4: $3e $ff
    ld [$cbe3], a                                 ; $4da6: $ea $e3 $cb
    ld a, $14                                     ; $4da9: $3e $14
    ld [$cc03], a                                 ; $4dab: $ea $03 $cc
    pop af                                        ; $4dae: $f1
    ldh [rSVBK], a                                ; $4daf: $e0 $70
    jp Jump_003_4c89                              ; $4db1: $c3 $89 $4c


Call_003_4db4:
Jump_003_4db4:
    ldh a, [rSVBK]                                ; $4db4: $f0 $70
    push af                                       ; $4db6: $f5
    ld a, $05                                     ; $4db7: $3e $05
    ldh [rSVBK], a                                ; $4db9: $e0 $70
    push bc                                       ; $4dbb: $c5
    call Call_003_4de5                            ; $4dbc: $cd $e5 $4d
    ld de, $000a                                  ; $4dbf: $11 $0a $00
    add hl, de                                    ; $4dc2: $19
    bit 6, [hl]                                   ; $4dc3: $cb $76
    call nz, Call_003_4fd5                        ; $4dc5: $c4 $d5 $4f
    bit 7, [hl]                                   ; $4dc8: $cb $7e
    call nz, Call_003_4fd5                        ; $4dca: $c4 $d5 $4f
    set 0, [hl]                                   ; $4dcd: $cb $c6
    xor a                                         ; $4dcf: $af
    ld [$cb9a], a                                 ; $4dd0: $ea $9a $cb
    call Call_003_4c89                            ; $4dd3: $cd $89 $4c
    ld a, $1e                                     ; $4dd6: $3e $1e
    ld [$cbed], a                                 ; $4dd8: $ea $ed $cb
    ld a, $ff                                     ; $4ddb: $3e $ff
    ld [$cbe6], a                                 ; $4ddd: $ea $e6 $cb
    pop bc                                        ; $4de0: $c1
    pop af                                        ; $4de1: $f1
    ldh [rSVBK], a                                ; $4de2: $e0 $70
    ret                                           ; $4de4: $c9


Call_003_4de5:
    ld a, [$cbe2]                                 ; $4de5: $fa $e2 $cb

Call_003_4de8:
    ld l, a                                       ; $4de8: $6f
    ld h, $19                                     ; $4de9: $26 $19
    call Call_000_00a5                            ; $4deb: $cd $a5 $00
    ld hl, $d400                                  ; $4dee: $21 $00 $d4
    jp RST_08                                     ; $4df1: $c3 $08 $00


    call Call_003_4e42                            ; $4df4: $cd $42 $4e
    ret nz                                        ; $4df7: $c0

    ld a, [$cc03]                                 ; $4df8: $fa $03 $cc
    or a                                          ; $4dfb: $b7
    jr z, jr_003_4e0f                             ; $4dfc: $28 $11

    xor a                                         ; $4dfe: $af
    ld [$cbed], a                                 ; $4dff: $ea $ed $cb
    ld a, [$cc03]                                 ; $4e02: $fa $03 $cc
    cp $80                                        ; $4e05: $fe $80
    jp z, Jump_003_4d69                           ; $4e07: $ca $69 $4d

    dec a                                         ; $4e0a: $3d
    ld [$cc03], a                                 ; $4e0b: $ea $03 $cc
    ret                                           ; $4e0e: $c9


jr_003_4e0f:
    ld a, [$cbe2]                                 ; $4e0f: $fa $e2 $cb
    ld hl, $cbe3                                  ; $4e12: $21 $e3 $cb
    cp [hl]                                       ; $4e15: $be
    jr z, jr_003_4e20                             ; $4e16: $28 $08

    ld [hl], a                                    ; $4e18: $77
    call Call_003_4e42                            ; $4e19: $cd $42 $4e
    ret nz                                        ; $4e1c: $c0

    call Call_003_4e77                            ; $4e1d: $cd $77 $4e

jr_003_4e20:
    ret                                           ; $4e20: $c9


Call_003_4e21:
    ldh a, [rSVBK]                                ; $4e21: $f0 $70
    push af                                       ; $4e23: $f5
    ld a, $05                                     ; $4e24: $3e $05
    ldh [rSVBK], a                                ; $4e26: $e0 $70
    push bc                                       ; $4e28: $c5
    ld bc, $0300                                  ; $4e29: $01 $00 $03

jr_003_4e2c:
    ld a, b                                       ; $4e2c: $78
    call Call_003_4c1e                            ; $4e2d: $cd $1e $4c
    bit 1, a                                      ; $4e30: $cb $4f
    jr nz, jr_003_4e35                            ; $4e32: $20 $01

    inc c                                         ; $4e34: $0c

jr_003_4e35:
    dec b                                         ; $4e35: $05
    jr nz, jr_003_4e2c                            ; $4e36: $20 $f4

    ld a, c                                       ; $4e38: $79
    pop bc                                        ; $4e39: $c1
    ldh [$bc], a                                  ; $4e3a: $e0 $bc
    pop af                                        ; $4e3c: $f1
    ldh [rSVBK], a                                ; $4e3d: $e0 $70
    ldh a, [$bc]                                  ; $4e3f: $f0 $bc
    ret                                           ; $4e41: $c9


Call_003_4e42:
    ldh a, [rSVBK]                                ; $4e42: $f0 $70
    push af                                       ; $4e44: $f5
    ld a, $05                                     ; $4e45: $3e $05
    ldh [rSVBK], a                                ; $4e47: $e0 $70
    ld hl, $d40a                                  ; $4e49: $21 $0a $d4
    ld de, $0019                                  ; $4e4c: $11 $19 $00
    bit 1, [hl]                                   ; $4e4f: $cb $4e
    jr nz, jr_003_4e65                            ; $4e51: $20 $12

    ld b, $03                                     ; $4e53: $06 $03

jr_003_4e55:
    add hl, de                                    ; $4e55: $19
    bit 1, [hl]                                   ; $4e56: $cb $4e
    jr z, jr_003_4e72                             ; $4e58: $28 $18

    dec b                                         ; $4e5a: $05
    jr nz, jr_003_4e55                            ; $4e5b: $20 $f8

    xor a                                         ; $4e5d: $af
    ld l, $04                                     ; $4e5e: $2e $04
    call Call_003_4c60                            ; $4e60: $cd $60 $4c
    jr jr_003_4e6b                                ; $4e63: $18 $06

jr_003_4e65:
    xor a                                         ; $4e65: $af
    ld l, $05                                     ; $4e66: $2e $05
    call Call_003_4c60                            ; $4e68: $cd $60 $4c

jr_003_4e6b:
    pop af                                        ; $4e6b: $f1
    ldh [rSVBK], a                                ; $4e6c: $e0 $70
    ld a, $05                                     ; $4e6e: $3e $05
    dec a                                         ; $4e70: $3d
    ret                                           ; $4e71: $c9


jr_003_4e72:
    pop af                                        ; $4e72: $f1
    ldh [rSVBK], a                                ; $4e73: $e0 $70
    xor a                                         ; $4e75: $af
    ret                                           ; $4e76: $c9


Call_003_4e77:
    ld a, [$cbe2]                                 ; $4e77: $fa $e2 $cb
    or a                                          ; $4e7a: $b7
    jr nz, jr_003_4e87                            ; $4e7b: $20 $0a

    ldh a, [$cf]                                  ; $4e7d: $f0 $cf
    cp $1a                                        ; $4e7f: $fe $1a
    ret z                                         ; $4e81: $c8

    ld a, $1a                                     ; $4e82: $3e $1a
    jp Jump_000_2448                              ; $4e84: $c3 $48 $24


jr_003_4e87:
    ld a, $20                                     ; $4e87: $3e $20
    jp Jump_000_2448                              ; $4e89: $c3 $48 $24


Call_003_4e8c:
    bit 1, [hl]                                   ; $4e8c: $cb $4e
    ret nz                                        ; $4e8e: $c0

    push bc                                       ; $4e8f: $c5
    push de                                       ; $4e90: $d5
    push hl                                       ; $4e91: $e5
    push bc                                       ; $4e92: $c5
    push hl                                       ; $4e93: $e5
    call Call_003_4e42                            ; $4e94: $cd $42 $4e
    pop hl                                        ; $4e97: $e1
    pop bc                                        ; $4e98: $c1
    jp nz, Jump_003_4f66                          ; $4e99: $c2 $66 $4f

    push bc                                       ; $4e9c: $c5
    ld de, $d40a                                  ; $4e9d: $11 $0a $d4
    rst $10                                       ; $4ea0: $d7
    jr z, jr_003_4eb3                             ; $4ea1: $28 $10

    ld de, $d423                                  ; $4ea3: $11 $23 $d4
    rst $10                                       ; $4ea6: $d7
    jr z, jr_003_4eb6                             ; $4ea7: $28 $0d

    ld de, $d43c                                  ; $4ea9: $11 $3c $d4
    rst $10                                       ; $4eac: $d7
    jr z, jr_003_4eba                             ; $4ead: $28 $0b

    ld a, $03                                     ; $4eaf: $3e $03
    jr jr_003_4ebc                                ; $4eb1: $18 $09

jr_003_4eb3:
    xor a                                         ; $4eb3: $af
    jr jr_003_4ebc                                ; $4eb4: $18 $06

jr_003_4eb6:
    ld a, $01                                     ; $4eb6: $3e $01
    jr jr_003_4ebc                                ; $4eb8: $18 $02

jr_003_4eba:
    ld a, $02                                     ; $4eba: $3e $02

jr_003_4ebc:
    ld [$cbe7], a                                 ; $4ebc: $ea $e7 $cb
    ld bc, $000b                                  ; $4ebf: $01 $0b $00
    add hl, bc                                    ; $4ec2: $09
    ld a, [hl+]                                   ; $4ec3: $2a
    ld b, [hl]                                    ; $4ec4: $46
    ld c, a                                       ; $4ec5: $4f
    push bc                                       ; $4ec6: $c5
    push hl                                       ; $4ec7: $e5
    push de                                       ; $4ec8: $d5
    ld hl, $0064                                  ; $4ec9: $21 $64 $00
    ld d, b                                       ; $4ecc: $50
    ld e, c                                       ; $4ecd: $59
    rst $10                                       ; $4ece: $d7
    pop de                                        ; $4ecf: $d1
    pop hl                                        ; $4ed0: $e1
    jr c, jr_003_4ed6                             ; $4ed1: $38 $03

    call $0088                                    ; $4ed3: $cd $88 $00

jr_003_4ed6:
    push hl                                       ; $4ed6: $e5
    ld a, $05                                     ; $4ed7: $3e $05
    ld [$cb97], a                                 ; $4ed9: $ea $97 $cb
    ld h, b                                       ; $4edc: $60
    ld l, c                                       ; $4edd: $69
    xor a                                         ; $4ede: $af
    call Call_003_48b5                            ; $4edf: $cd $b5 $48
    pop hl                                        ; $4ee2: $e1
    pop bc                                        ; $4ee3: $c1
    dec hl                                        ; $4ee4: $2b
    call $0088                                    ; $4ee5: $cd $88 $00
    ld de, $0010                                  ; $4ee8: $11 $10 $00
    call Call_000_0098                            ; $4eeb: $cd $98 $00
    add hl, de                                    ; $4eee: $19
    ld d, h                                       ; $4eef: $54
    ld e, l                                       ; $4ef0: $5d
    ld a, [hl+]                                   ; $4ef1: $2a
    ld h, [hl]                                    ; $4ef2: $66
    ld l, a                                       ; $4ef3: $6f
    add hl, bc                                    ; $4ef4: $09
    jr nc, jr_003_4f17                            ; $4ef5: $30 $20

    ld a, h                                       ; $4ef7: $7c
    or l                                          ; $4ef8: $b5
    jr z, jr_003_4f17                             ; $4ef9: $28 $1c

jr_003_4efb:
    pop bc                                        ; $4efb: $c1
    push hl                                       ; $4efc: $e5
    ld hl, $0004                                  ; $4efd: $21 $04 $00
    call Call_000_007b                            ; $4f00: $cd $7b $00
    add hl, de                                    ; $4f03: $19
    ld b, h                                       ; $4f04: $44
    ld c, l                                       ; $4f05: $4d
    ld a, [hl+]                                   ; $4f06: $2a
    ld h, [hl]                                    ; $4f07: $66
    ld l, a                                       ; $4f08: $6f
    pop de                                        ; $4f09: $d1
    call Call_000_323b                            ; $4f0a: $cd $3b $32
    push hl                                       ; $4f0d: $e5
    ld hl, $0004                                  ; $4f0e: $21 $04 $00
    add hl, bc                                    ; $4f11: $09
    ld d, h                                       ; $4f12: $54
    ld e, l                                       ; $4f13: $5d
    pop hl                                        ; $4f14: $e1
    jr jr_003_4f54                                ; $4f15: $18 $3d

jr_003_4f17:
    push hl                                       ; $4f17: $e5
    ld hl, $0064                                  ; $4f18: $21 $64 $00
    push de                                       ; $4f1b: $d5
    ld d, b                                       ; $4f1c: $50
    ld e, c                                       ; $4f1d: $59
    rst $10                                       ; $4f1e: $d7
    pop de                                        ; $4f1f: $d1
    pop hl                                        ; $4f20: $e1
    jr c, jr_003_4efb                             ; $4f21: $38 $d8

    xor a                                         ; $4f23: $af
    ld [de], a                                    ; $4f24: $12
    inc de                                        ; $4f25: $13
    ld [de], a                                    ; $4f26: $12
    pop bc                                        ; $4f27: $c1
    ld a, $04                                     ; $4f28: $3e $04
    sub b                                         ; $4f2a: $90
    or a                                          ; $4f2b: $b7
    jr nz, jr_003_4f39                            ; $4f2c: $20 $0b

    push hl                                       ; $4f2e: $e5
    ld hl, $d40a                                  ; $4f2f: $21 $0a $d4
    set 1, [hl]                                   ; $4f32: $cb $ce
    pop hl                                        ; $4f34: $e1
    ld l, $05                                     ; $4f35: $2e $05
    jr jr_003_4f3b                                ; $4f37: $18 $02

jr_003_4f39:
    ld l, $03                                     ; $4f39: $2e $03

jr_003_4f3b:
    call Call_003_4c60                            ; $4f3b: $cd $60 $4c
    push de                                       ; $4f3e: $d5
    call Call_003_4e42                            ; $4f3f: $cd $42 $4e
    pop de                                        ; $4f42: $d1
    ld hl, $0000                                  ; $4f43: $21 $00 $00
    jr z, jr_003_4f4e                             ; $4f46: $28 $06

    xor a                                         ; $4f48: $af
    ld l, $04                                     ; $4f49: $2e $04
    call Call_003_4c60                            ; $4f4b: $cd $60 $4c

jr_003_4f4e:
    pop hl                                        ; $4f4e: $e1
    pop de                                        ; $4f4f: $d1
    pop bc                                        ; $4f50: $c1
    set 1, [hl]                                   ; $4f51: $cb $ce
    ret                                           ; $4f53: $c9


jr_003_4f54:
    push de                                       ; $4f54: $d5
    push hl                                       ; $4f55: $e5
    ld hl, $0000                                  ; $4f56: $21 $00 $00
    add hl, de                                    ; $4f59: $19
    push hl                                       ; $4f5a: $e5
    pop de                                        ; $4f5b: $d1
    pop hl                                        ; $4f5c: $e1
    ld a, l                                       ; $4f5d: $7d
    ld [de], a                                    ; $4f5e: $12
    inc de                                        ; $4f5f: $13
    ld a, h                                       ; $4f60: $7c
    ld [de], a                                    ; $4f61: $12
    pop de                                        ; $4f62: $d1
    call Call_003_5828                            ; $4f63: $cd $28 $58

Jump_003_4f66:
    pop hl                                        ; $4f66: $e1
    pop de                                        ; $4f67: $d1
    pop bc                                        ; $4f68: $c1
    ret                                           ; $4f69: $c9


Call_003_4f6a:
    ldh a, [rDIV]                                 ; $4f6a: $f0 $04
    and $01                                       ; $4f6c: $e6 $01
    jr z, jr_003_4f72                             ; $4f6e: $28 $02

    res 4, [hl]                                   ; $4f70: $cb $a6

jr_003_4f72:
    ret                                           ; $4f72: $c9


Call_003_4f73:
    push bc                                       ; $4f73: $c5
    push hl                                       ; $4f74: $e5
    push hl                                       ; $4f75: $e5
    ld de, $000a                                  ; $4f76: $11 $0a $00
    add hl, de                                    ; $4f79: $19
    bit 0, [hl]                                   ; $4f7a: $cb $46
    jr z, jr_003_4f83                             ; $4f7c: $28 $05

    res 0, [hl]                                   ; $4f7e: $cb $86
    pop hl                                        ; $4f80: $e1
    jr jr_003_4fd2                                ; $4f81: $18 $4f

jr_003_4f83:
    pop hl                                        ; $4f83: $e1
    ldh a, [rDIV]                                 ; $4f84: $f0 $04
    and $03                                       ; $4f86: $e6 $03
    jr nz, jr_003_4fd2                            ; $4f88: $20 $48

    res 3, [hl]                                   ; $4f8a: $cb $9e
    set 0, [hl]                                   ; $4f8c: $cb $c6
    ld de, $0009                                  ; $4f8e: $11 $09 $00
    add hl, de                                    ; $4f91: $19
    ld e, [hl]                                    ; $4f92: $5e
    ld a, $04                                     ; $4f93: $3e $04
    sub b                                         ; $4f95: $90
    ld d, a                                       ; $4f96: $57
    push de                                       ; $4f97: $d5
    ld e, a                                       ; $4f98: $5f
    ld a, $7b                                     ; $4f99: $3e $7b
    call Call_000_0a6f                            ; $4f9b: $cd $6f $0a
    ld b, h                                       ; $4f9e: $44
    ld c, l                                       ; $4f9f: $4d
    ld hl, $0025                                  ; $4fa0: $21 $25 $00
    add hl, bc                                    ; $4fa3: $09
    ld [hl], $01                                  ; $4fa4: $36 $01
    ldh [$c1], a                                  ; $4fa6: $e0 $c1
    ld a, $7f                                     ; $4fa8: $3e $7f
    ldh [$bd], a                                  ; $4faa: $e0 $bd
    ld a, $6f                                     ; $4fac: $3e $6f
    ldh [$be], a                                  ; $4fae: $e0 $be
    call Call_000_33e7                            ; $4fb0: $cd $e7 $33
    xor a                                         ; $4fb3: $af
    call Call_000_08ce                            ; $4fb4: $cd $ce $08
    pop de                                        ; $4fb7: $d1
    push de                                       ; $4fb8: $d5
    ld a, e                                       ; $4fb9: $7b
    ld e, $01                                     ; $4fba: $1e $01
    ld hl, $6131                                  ; $4fbc: $21 $31 $61
    ldh [$c1], a                                  ; $4fbf: $e0 $c1
    ld a, $3d                                     ; $4fc1: $3e $3d
    ldh [$bd], a                                  ; $4fc3: $e0 $bd
    ld a, $25                                     ; $4fc5: $3e $25
    ldh [$be], a                                  ; $4fc7: $e0 $be
    call Call_000_33ec                            ; $4fc9: $cd $ec $33
    pop af                                        ; $4fcc: $f1
    ld l, $00                                     ; $4fcd: $2e $00
    call Call_003_4c60                            ; $4fcf: $cd $60 $4c

jr_003_4fd2:
    pop hl                                        ; $4fd2: $e1
    pop bc                                        ; $4fd3: $c1
    ret                                           ; $4fd4: $c9


Call_003_4fd5:
    ret                                           ; $4fd5: $c9


Call_003_4fd6:
    xor a                                         ; $4fd6: $af
    ld [$cbe7], a                                 ; $4fd7: $ea $e7 $cb
    call Call_003_4ff3                            ; $4fda: $cd $f3 $4f
    or a                                          ; $4fdd: $b7
    jr nz, jr_003_4fe3                            ; $4fde: $20 $03

    jp Jump_003_4877                              ; $4fe0: $c3 $77 $48


jr_003_4fe3:
    ld [$cbe6], a                                 ; $4fe3: $ea $e6 $cb
    ld a, $ff                                     ; $4fe6: $3e $ff
    ld [$c301], a                                 ; $4fe8: $ea $01 $c3
    call Call_003_487f                            ; $4feb: $cd $7f $48
    ret                                           ; $4fee: $c9


    call Call_003_4db4                            ; $4fef: $cd $b4 $4d
    ret                                           ; $4ff2: $c9


Call_003_4ff3:
    call Call_003_500d                            ; $4ff3: $cd $0d $50
    ld a, $0e                                     ; $4ff6: $3e $0e
    rst $08                                       ; $4ff8: $cf
    ld e, [hl]                                    ; $4ff9: $5e
    ld a, $64                                     ; $4ffa: $3e $64
    call Call_000_2722                            ; $4ffc: $cd $22 $27
    cp e                                          ; $4fff: $bb
    jr c, jr_003_5004                             ; $5000: $38 $02

    xor a                                         ; $5002: $af
    ret                                           ; $5003: $c9


jr_003_5004:
    dec hl                                        ; $5004: $2b
    ld a, [hl]                                    ; $5005: $7e
    ret                                           ; $5006: $c9


    push de                                       ; $5007: $d5
    call Call_003_4de8                            ; $5008: $cd $e8 $4d
    jr jr_003_5011                                ; $500b: $18 $04

Call_003_500d:
    push de                                       ; $500d: $d5
    call Call_003_4de5                            ; $500e: $cd $e5 $4d

jr_003_5011:
    ldh a, [rSVBK]                                ; $5011: $f0 $70
    push af                                       ; $5013: $f5
    ld a, $05                                     ; $5014: $3e $05
    ldh [rSVBK], a                                ; $5016: $e0 $70
    ld a, [hl]                                    ; $5018: $7e
    dec a                                         ; $5019: $3d
    dec a                                         ; $501a: $3d
    ld l, a                                       ; $501b: $6f
    ld h, $15                                     ; $501c: $26 $15
    call Call_000_00a5                            ; $501e: $cd $a5 $00
    ld de, $5c1f                                  ; $5021: $11 $1f $5c
    add hl, de                                    ; $5024: $19
    pop af                                        ; $5025: $f1
    ldh [rSVBK], a                                ; $5026: $e0 $70
    pop de                                        ; $5028: $d1
    ret                                           ; $5029: $c9


    ld bc, $3101                                  ; $502a: $01 $01 $31
    ld d, b                                       ; $502d: $50
    add hl, de                                    ; $502e: $19
    ld bc, $c341                                  ; $502f: $01 $41 $c3
    reti                                          ; $5032: $d9


    db $e3                                        ; $5033: $e3
    reti                                          ; $5034: $d9


    inc bc                                        ; $5035: $03
    jp c, $da23                                   ; $5036: $da $23 $da

    ld bc, $4001                                  ; $5039: $01 $01 $40
    ld d, b                                       ; $503c: $50
    ld c, l                                       ; $503d: $4d
    ld bc, $c141                                  ; $503e: $01 $41 $c1
    reti                                          ; $5041: $d9


    pop hl                                        ; $5042: $e1
    reti                                          ; $5043: $d9


    ld bc, $21da                                  ; $5044: $01 $da $21
    jp c, $0101                                   ; $5047: $da $01 $01

    ld c, a                                       ; $504a: $4f
    ld d, b                                       ; $504b: $50
    add hl, de                                    ; $504c: $19
    ld bc, $c141                                  ; $504d: $01 $41 $c1
    reti                                          ; $5050: $d9


    pop hl                                        ; $5051: $e1
    reti                                          ; $5052: $d9


    ld bc, $21da                                  ; $5053: $01 $da $21
    jp c, $0f3e                                   ; $5056: $da $3e $0f

    ld d, $04                                     ; $5059: $16 $04
    ld e, $00                                     ; $505b: $1e $00
    ldh [$c1], a                                  ; $505d: $e0 $c1
    ld a, $a9                                     ; $505f: $3e $a9
    ldh [$bd], a                                  ; $5061: $e0 $bd
    ld a, $69                                     ; $5063: $3e $69
    ldh [$be], a                                  ; $5065: $e0 $be
    call Call_000_33d2                            ; $5067: $cd $d2 $33
    ldh a, [rSVBK]                                ; $506a: $f0 $70
    push af                                       ; $506c: $f5
    ld a, $06                                     ; $506d: $3e $06
    ldh [rSVBK], a                                ; $506f: $e0 $70
    ld a, [$d108]                                 ; $5071: $fa $08 $d1
    ldh [$bc], a                                  ; $5074: $e0 $bc
    pop af                                        ; $5076: $f1
    ldh [rSVBK], a                                ; $5077: $e0 $70
    ldh a, [$bc]                                  ; $5079: $f0 $bc
    or a                                          ; $507b: $b7
    jr z, jr_003_509d                             ; $507c: $28 $1f

    xor a                                         ; $507e: $af
    ld [$cbeb], a                                 ; $507f: $ea $eb $cb
    xor a                                         ; $5082: $af
    ldh [$d5], a                                  ; $5083: $e0 $d5
    rst $18                                       ; $5085: $df
    ldh a, [rSVBK]                                ; $5086: $f0 $70
    push af                                       ; $5088: $f5
    ld a, $06                                     ; $5089: $3e $06
    ldh [rSVBK], a                                ; $508b: $e0 $70
    call Call_003_5253                            ; $508d: $cd $53 $52
    call Call_003_528c                            ; $5090: $cd $8c $52
    ldh [$bc], a                                  ; $5093: $e0 $bc
    pop af                                        ; $5095: $f1
    ldh [rSVBK], a                                ; $5096: $e0 $70
    ldh a, [$bc]                                  ; $5098: $f0 $bc
    jp RST_20                                     ; $509a: $c3 $20 $00


jr_003_509d:
    ld hl, $11bc                                  ; $509d: $21 $bc $11
    ld a, l                                       ; $50a0: $7d
    ld [$cb2a], a                                 ; $50a1: $ea $2a $cb
    ld a, h                                       ; $50a4: $7c
    ld [$cb2b], a                                 ; $50a5: $ea $2b $cb
    xor a                                         ; $50a8: $af
    ld [$cbe9], a                                 ; $50a9: $ea $e9 $cb
    ld a, $1e                                     ; $50ac: $3e $1e
    jp Jump_000_2448                              ; $50ae: $c3 $48 $24


    rst $18                                       ; $50b1: $df
    call Call_003_56e4                            ; $50b2: $cd $e4 $56
    ld hl, $5048                                  ; $50b5: $21 $48 $50
    call Call_000_301f                            ; $50b8: $cd $1f $30
    ld a, $70                                     ; $50bb: $3e $70
    ld [$c1eb], a                                 ; $50bd: $ea $eb $c1
    ld a, $04                                     ; $50c0: $3e $04
    ld [$c234], a                                 ; $50c2: $ea $34 $c2
    ld hl, $cb2a                                  ; $50c5: $21 $2a $cb
    ld a, [hl+]                                   ; $50c8: $2a
    ld h, [hl]                                    ; $50c9: $66
    ld l, a                                       ; $50ca: $6f
    ldh [$c1], a                                  ; $50cb: $e0 $c1
    ld a, $94                                     ; $50cd: $3e $94
    ldh [$bd], a                                  ; $50cf: $e0 $bd
    ld a, $6e                                     ; $50d1: $3e $6e
    ldh [$be], a                                  ; $50d3: $e0 $be
    call Call_000_33c4                            ; $50d5: $cd $c4 $33
    ldh [$c1], a                                  ; $50d8: $e0 $c1
    ld a, $b3                                     ; $50da: $3e $b3
    ldh [$bd], a                                  ; $50dc: $e0 $bd
    ld a, $6c                                     ; $50de: $3e $6c
    ldh [$be], a                                  ; $50e0: $e0 $be
    call Call_000_33c4                            ; $50e2: $cd $c4 $33
    ld hl, $11ce                                  ; $50e5: $21 $ce $11
    ldh [$c1], a                                  ; $50e8: $e0 $c1
    ld a, $1a                                     ; $50ea: $3e $1a
    ldh [$bd], a                                  ; $50ec: $e0 $bd
    ld a, $6e                                     ; $50ee: $3e $6e
    ldh [$be], a                                  ; $50f0: $e0 $be
    call Call_000_33c4                            ; $50f2: $cd $c4 $33
    jp RST_20                                     ; $50f5: $c3 $20 $00


    ld a, [$cbe9]                                 ; $50f8: $fa $e9 $cb
    or a                                          ; $50fb: $b7
    ret z                                         ; $50fc: $c8

    ldh a, [rSVBK]                                ; $50fd: $f0 $70
    push af                                       ; $50ff: $f5
    ld a, $06                                     ; $5100: $3e $06
    ldh [rSVBK], a                                ; $5102: $e0 $70
    ldh a, [$a5]                                  ; $5104: $f0 $a5
    and $30                                       ; $5106: $e6 $30
    jr z, jr_003_5117                             ; $5108: $28 $0d

    ldh [$c1], a                                  ; $510a: $e0 $c1
    ld a, $fc                                     ; $510c: $3e $fc
    ldh [$bd], a                                  ; $510e: $e0 $bd
    ld a, $74                                     ; $5110: $3e $74
    ldh [$be], a                                  ; $5112: $e0 $be
    call Call_000_33d2                            ; $5114: $cd $d2 $33

jr_003_5117:
    ld a, [$d109]                                 ; $5117: $fa $09 $d1
    or a                                          ; $511a: $b7
    jp z, Jump_003_5225                           ; $511b: $ca $25 $52

    ld c, $00                                     ; $511e: $0e $00
    ld e, $00                                     ; $5120: $1e $00
    ldh a, [$a5]                                  ; $5122: $f0 $a5
    bit 7, a                                      ; $5124: $cb $7f
    jr z, jr_003_5171                             ; $5126: $28 $49

    ld a, [$d109]                                 ; $5128: $fa $09 $d1
    ld b, a                                       ; $512b: $47
    dec b                                         ; $512c: $05
    ldh a, [$d5]                                  ; $512d: $f0 $d5
    ld [$cb94], a                                 ; $512f: $ea $94 $cb
    cp b                                          ; $5132: $b8
    jr nz, jr_003_516d                            ; $5133: $20 $38

    ld b, a                                       ; $5135: $47
    ld a, [$cbeb]                                 ; $5136: $fa $eb $cb
    add b                                         ; $5139: $80
    inc a                                         ; $513a: $3c
    ld b, a                                       ; $513b: $47
    ld hl, $d108                                  ; $513c: $21 $08 $d1
    ld a, b                                       ; $513f: $78
    cp [hl]                                       ; $5140: $be
    jr z, jr_003_516d                             ; $5141: $28 $2a

    ld a, [$cbeb]                                 ; $5143: $fa $eb $cb
    ld e, a                                       ; $5146: $5f
    ld a, [$d109]                                 ; $5147: $fa $09 $d1
    add e                                         ; $514a: $83
    ld [$cbeb], a                                 ; $514b: $ea $eb $cb
    ld a, [$d109]                                 ; $514e: $fa $09 $d1
    ld d, a                                       ; $5151: $57
    ld a, [$d108]                                 ; $5152: $fa $08 $d1
    sub d                                         ; $5155: $92
    ld hl, $cbeb                                  ; $5156: $21 $eb $cb
    cp [hl]                                       ; $5159: $be
    jr nc, jr_003_515f                            ; $515a: $30 $03

    ld [$cbeb], a                                 ; $515c: $ea $eb $cb

jr_003_515f:
    ld c, $01                                     ; $515f: $0e $01
    ld a, [$d109]                                 ; $5161: $fa $09 $d1
    add e                                         ; $5164: $83
    ld hl, $cbeb                                  ; $5165: $21 $eb $cb
    sub [hl]                                      ; $5168: $96
    ldh [$d5], a                                  ; $5169: $e0 $d5
    ld e, $01                                     ; $516b: $1e $01

jr_003_516d:
    ldh a, [$a5]                                  ; $516d: $f0 $a5
    jr jr_003_51a4                                ; $516f: $18 $33

jr_003_5171:
    bit 6, a                                      ; $5171: $cb $77
    jr z, jr_003_51a4                             ; $5173: $28 $2f

    ldh a, [$d5]                                  ; $5175: $f0 $d5
    ld [$cb94], a                                 ; $5177: $ea $94 $cb
    or a                                          ; $517a: $b7
    jr nz, jr_003_51a2                            ; $517b: $20 $25

    ld a, [$cbeb]                                 ; $517d: $fa $eb $cb
    or a                                          ; $5180: $b7
    jp z, Jump_003_5221                           ; $5181: $ca $21 $52

    ld a, [$d109]                                 ; $5184: $fa $09 $d1
    ld d, a                                       ; $5187: $57
    ld a, [$cbeb]                                 ; $5188: $fa $eb $cb
    ld e, a                                       ; $518b: $5f
    cp d                                          ; $518c: $ba
    jr c, jr_003_5192                             ; $518d: $38 $03

    sub d                                         ; $518f: $92
    jr jr_003_5193                                ; $5190: $18 $01

jr_003_5192:
    xor a                                         ; $5192: $af

jr_003_5193:
    ld [$cbeb], a                                 ; $5193: $ea $eb $cb
    ld c, $01                                     ; $5196: $0e $01
    ld a, e                                       ; $5198: $7b
    dec a                                         ; $5199: $3d
    ld hl, $cbeb                                  ; $519a: $21 $eb $cb
    sub [hl]                                      ; $519d: $96
    ldh [$d5], a                                  ; $519e: $e0 $d5
    ld e, $01                                     ; $51a0: $1e $01

jr_003_51a2:
    ldh a, [$a5]                                  ; $51a2: $f0 $a5

jr_003_51a4:
    bit 0, a                                      ; $51a4: $cb $47
    jr nz, jr_003_51e3                            ; $51a6: $20 $3b

    bit 1, a                                      ; $51a8: $cb $4f
    jr nz, jr_003_5205                            ; $51aa: $20 $59

    bit 7, a                                      ; $51ac: $cb $7f
    jr z, jr_003_51bc                             ; $51ae: $28 $0c

    ld a, [$d109]                                 ; $51b0: $fa $09 $d1
    dec a                                         ; $51b3: $3d
    ld hl, $ffd5                                  ; $51b4: $21 $d5 $ff
    cp [hl]                                       ; $51b7: $be
    jr nz, jr_003_51bc                            ; $51b8: $20 $02

    jr jr_003_51cd                                ; $51ba: $18 $11

jr_003_51bc:
    ld a, e                                       ; $51bc: $7b
    or a                                          ; $51bd: $b7
    jr nz, jr_003_51cd                            ; $51be: $20 $0d

    ldh [$c1], a                                  ; $51c0: $e0 $c1
    ld a, $86                                     ; $51c2: $3e $86
    ldh [$bd], a                                  ; $51c4: $e0 $bd
    ld a, $4f                                     ; $51c6: $3e $4f
    ldh [$be], a                                  ; $51c8: $e0 $be
    call Call_000_33e0                            ; $51ca: $cd $e0 $33

jr_003_51cd:
    ld a, c                                       ; $51cd: $79
    or a                                          ; $51ce: $b7
    jr z, jr_003_5221                             ; $51cf: $28 $50

    rst $18                                       ; $51d1: $df
    call Call_003_56e4                            ; $51d2: $cd $e4 $56
    rst $20                                       ; $51d5: $e7
    call Call_000_3308                            ; $51d6: $cd $08 $33
    rst $18                                       ; $51d9: $df
    call Call_003_5253                            ; $51da: $cd $53 $52
    call Call_003_528c                            ; $51dd: $cd $8c $52
    rst $20                                       ; $51e0: $e7
    jr jr_003_5221                                ; $51e1: $18 $3e

jr_003_51e3:
    ldh a, [$d5]                                  ; $51e3: $f0 $d5
    ld b, a                                       ; $51e5: $47
    ld a, [$cbeb]                                 ; $51e6: $fa $eb $cb
    add b                                         ; $51e9: $80
    ld hl, $d10c                                  ; $51ea: $21 $0c $d1
    call Call_000_317d                            ; $51ed: $cd $7d $31
    ld a, [hl]                                    ; $51f0: $7e
    ldh [$c1], a                                  ; $51f1: $e0 $c1
    ld a, $cf                                     ; $51f3: $3e $cf
    ldh [$bd], a                                  ; $51f5: $e0 $bd
    ld a, $6a                                     ; $51f7: $3e $6a
    ldh [$be], a                                  ; $51f9: $e0 $be
    call Call_000_33d2                            ; $51fb: $cd $d2 $33
    ld d, $01                                     ; $51fe: $16 $01
    jr nc, jr_003_5218                            ; $5200: $30 $16

    dec d                                         ; $5202: $15
    jr jr_003_5218                                ; $5203: $18 $13

jr_003_5205:
    rst $18                                       ; $5205: $df
    call Call_003_56e4                            ; $5206: $cd $e4 $56
    rst $20                                       ; $5209: $e7
    call Call_000_3308                            ; $520a: $cd $08 $33
    xor a                                         ; $520d: $af
    ld [$cbe9], a                                 ; $520e: $ea $e9 $cb
    ld a, $1a                                     ; $5211: $3e $1a
    call Call_000_2448                            ; $5213: $cd $48 $24
    jr jr_003_5221                                ; $5216: $18 $09

jr_003_5218:
    ld a, $1e                                     ; $5218: $3e $1e
    call Call_000_244b                            ; $521a: $cd $4b $24
    xor a                                         ; $521d: $af
    ld [$cbe9], a                                 ; $521e: $ea $e9 $cb

Jump_003_5221:
jr_003_5221:
    pop af                                        ; $5221: $f1
    ldh [rSVBK], a                                ; $5222: $e0 $70
    ret                                           ; $5224: $c9


Jump_003_5225:
    pop af                                        ; $5225: $f1
    ldh [rSVBK], a                                ; $5226: $e0 $70
    ldh a, [$a5]                                  ; $5228: $f0 $a5
    bit 1, a                                      ; $522a: $cb $4f
    ret z                                         ; $522c: $c8

    xor a                                         ; $522d: $af
    ld [$cbe9], a                                 ; $522e: $ea $e9 $cb
    ld a, $1a                                     ; $5231: $3e $1a
    jp Jump_000_2448                              ; $5233: $c3 $48 $24


    ldh a, [$a5]                                  ; $5236: $f0 $a5
    and $03                                       ; $5238: $e6 $03
    ret z                                         ; $523a: $c8

    ldh [$c1], a                                  ; $523b: $e0 $c1
    ld a, $22                                     ; $523d: $3e $22
    ldh [$bd], a                                  ; $523f: $e0 $bd
    ld a, $54                                     ; $5241: $3e $54
    ldh [$be], a                                  ; $5243: $e0 $be
    call Call_000_33d9                            ; $5245: $cd $d9 $33
    rst $18                                       ; $5248: $df
    call Call_003_56e4                            ; $5249: $cd $e4 $56
    call Call_003_5828                            ; $524c: $cd $28 $58
    rst $20                                       ; $524f: $e7
    jp Jump_003_4db4                              ; $5250: $c3 $b4 $4d


Call_003_5253:
    call Call_003_56e4                            ; $5253: $cd $e4 $56
    ld hl, $502a                                  ; $5256: $21 $2a $50
    call Call_000_301f                            ; $5259: $cd $1f $30
    ld a, $62                                     ; $525c: $3e $62
    ld [$c1eb], a                                 ; $525e: $ea $eb $c1
    ld a, $04                                     ; $5261: $3e $04
    ld [$c234], a                                 ; $5263: $ea $34 $c2
    ld b, $00                                     ; $5266: $06 $00
    ld a, [$d109]                                 ; $5268: $fa $09 $d1
    ld c, a                                       ; $526b: $4f

jr_003_526c:
    ld a, [$cbeb]                                 ; $526c: $fa $eb $cb
    add b                                         ; $526f: $80
    ld hl, $d10a                                  ; $5270: $21 $0a $d1
    call Call_000_317d                            ; $5273: $cd $7d $31
    ld a, [hl+]                                   ; $5276: $2a
    ld h, [hl]                                    ; $5277: $66
    ld l, a                                       ; $5278: $6f
    ldh [$c1], a                                  ; $5279: $e0 $c1
    ld a, $1a                                     ; $527b: $3e $1a
    ldh [$bd], a                                  ; $527d: $e0 $bd
    ld a, $6e                                     ; $527f: $3e $6e
    ldh [$be], a                                  ; $5281: $e0 $be
    call Call_000_33c4                            ; $5283: $cd $c4 $33
    inc b                                         ; $5286: $04
    ld a, b                                       ; $5287: $78
    cp c                                          ; $5288: $b9
    jr nz, jr_003_526c                            ; $5289: $20 $e1

    ret                                           ; $528b: $c9


Call_003_528c:
    ld hl, $5039                                  ; $528c: $21 $39 $50
    call Call_000_301f                            ; $528f: $cd $1f $30
    ld a, $10                                     ; $5292: $3e $10
    ld [$c1eb], a                                 ; $5294: $ea $eb $c1
    ld a, $01                                     ; $5297: $3e $01
    ld [$c234], a                                 ; $5299: $ea $34 $c2
    ld b, $00                                     ; $529c: $06 $00
    ld a, [$d109]                                 ; $529e: $fa $09 $d1
    ld c, a                                       ; $52a1: $4f

jr_003_52a2:
    ld a, [$cbeb]                                 ; $52a2: $fa $eb $cb
    add b                                         ; $52a5: $80
    ld hl, $d10c                                  ; $52a6: $21 $0c $d1
    call Call_000_317d                            ; $52a9: $cd $7d $31
    ld a, [hl]                                    ; $52ac: $7e
    ld hl, $d000                                  ; $52ad: $21 $00 $d0
    rst $08                                       ; $52b0: $cf
    ldh [$c1], a                                  ; $52b1: $e0 $c1
    ld a, $be                                     ; $52b3: $3e $be
    ldh [$bd], a                                  ; $52b5: $e0 $bd
    ld a, $6e                                     ; $52b7: $3e $6e
    ldh [$be], a                                  ; $52b9: $e0 $be
    call Call_000_33c4                            ; $52bb: $cd $c4 $33
    inc b                                         ; $52be: $04
    ld a, b                                       ; $52bf: $78
    cp c                                          ; $52c0: $b9
    jr nz, jr_003_52a2                            ; $52c1: $20 $df

    ret                                           ; $52c3: $c9


    db $01, $01, $e0, $52, $19, $01, $41

    ld bc, $e801                                  ; $52cb: $01 $01 $e8
    ld d, d                                       ; $52ce: $52
    ld d, l                                       ; $52cf: $55
    db $01                                        ; $52d0: $01
    ld b, c                                       ; $52d1: $41

    db $01, $01, $ea, $52, $37, $01, $41

    ld [bc], a                                    ; $52d9: $02
    ld bc, $52ea                                  ; $52da: $01 $ea $52
    scf                                           ; $52dd: $37
    db $01                                        ; $52de: $01
    ld b, c                                       ; $52df: $41

    db $c1, $d9, $e1, $d9, $01, $da, $21, $da, $a0, $d9, $c9, $d9, $e9, $d9, $01, $1b
    db $00, $01, $00, $00, $aa, $24, $05, $01, $03, $01, $01, $1b, $00, $01, $00, $00
    db $aa, $24, $01, $02, $01, $02, $01, $1b, $00, $01, $00, $00, $aa, $24, $00, $01
    db $00, $01, $1c, $2a, $1d, $1f, $03, $00, $00, $00, $00, $01, $12, $1f, $00, $13
    db $00, $01, $12, $14, $00, $00, $00, $14, $01, $00, $1f

    ldh [$c1], a                                  ; $532b: $e0 $c1
    ld a, $8f                                     ; $532d: $3e $8f
    ldh [$bd], a                                  ; $532f: $e0 $bd
    ld a, $5f                                     ; $5331: $3e $5f
    ldh [$be], a                                  ; $5333: $e0 $be
    call Call_000_33e0                            ; $5335: $cd $e0 $33
    ldh a, [$cc]                                  ; $5338: $f0 $cc
    cp $2a                                        ; $533a: $fe $2a
    jr z, jr_003_5349                             ; $533c: $28 $0b

    ld a, $29                                     ; $533e: $3e $29
    call Call_000_395e                            ; $5340: $cd $5e $39
    ld hl, $52ee                                  ; $5343: $21 $ee $52
    jp Jump_000_2837                              ; $5346: $c3 $37 $28


jr_003_5349:
    ld hl, $5306                                  ; $5349: $21 $06 $53
    jp Jump_000_2837                              ; $534c: $c3 $37 $28


    call Call_003_579c                            ; $534f: $cd $9c $57
    call Call_003_57ea                            ; $5352: $cd $ea $57
    call Call_003_573d                            ; $5355: $cd $3d $57
    call Call_003_56f7                            ; $5358: $cd $f7 $56
    ldh a, [$d4]                                  ; $535b: $f0 $d4
    or a                                          ; $535d: $b7
    jr nz, jr_003_53b2                            ; $535e: $20 $52

    call Call_003_4613                            ; $5360: $cd $13 $46
    call Call_003_468a                            ; $5363: $cd $8a $46
    call Call_003_4c44                            ; $5366: $cd $44 $4c
    ld a, [$cc04]                                 ; $5369: $fa $04 $cc
    ld d, a                                       ; $536c: $57
    xor a                                         ; $536d: $af
    rrc d                                         ; $536e: $cb $0a
    adc $00                                       ; $5370: $ce $00
    rrc d                                         ; $5372: $cb $0a
    adc $00                                       ; $5374: $ce $00
    rrc d                                         ; $5376: $cb $0a
    adc $00                                       ; $5378: $ce $00
    ld [$cb98], a                                 ; $537a: $ea $98 $cb
    ld hl, $7ace                                  ; $537d: $21 $ce $7a
    call Call_003_7c6d                            ; $5380: $cd $6d $7c
    ld a, [$cc05]                                 ; $5383: $fa $05 $cc
    or a                                          ; $5386: $b7
    jr z, jr_003_5399                             ; $5387: $28 $10

    cp $0b                                        ; $5389: $fe $0b
    jr z, jr_003_5395                             ; $538b: $28 $08

    cp $0c                                        ; $538d: $fe $0c
    jr z, jr_003_5395                             ; $538f: $28 $04

    ld a, $0c                                     ; $5391: $3e $0c
    jr jr_003_539b                                ; $5393: $18 $06

jr_003_5395:
    ld a, $08                                     ; $5395: $3e $08
    jr jr_003_539b                                ; $5397: $18 $02

jr_003_5399:
    ld a, $2b                                     ; $5399: $3e $2b

jr_003_539b:
    ld hl, $cc11                                  ; $539b: $21 $11 $cc
    cp [hl]                                       ; $539e: $be
    jp z, Jump_003_57e0                           ; $539f: $ca $e0 $57

    call Call_000_395e                            ; $53a2: $cd $5e $39
    call Call_000_38fb                            ; $53a5: $cd $fb $38
    ld a, l                                       ; $53a8: $7d
    ld [$cc12], a                                 ; $53a9: $ea $12 $cc
    ld a, h                                       ; $53ac: $7c
    ld [$cc13], a                                 ; $53ad: $ea $13 $cc
    jr jr_003_53be                                ; $53b0: $18 $0c

jr_003_53b2:
    call Call_003_53c8                            ; $53b2: $cd $c8 $53
    call Call_003_542a                            ; $53b5: $cd $2a $54
    ld hl, $7ace                                  ; $53b8: $21 $ce $7a
    call Call_003_7c6d                            ; $53bb: $cd $6d $7c

jr_003_53be:
    ld hl, $012c                                  ; $53be: $21 $2c $01
    call Call_000_3929                            ; $53c1: $cd $29 $39
    call Call_003_57e0                            ; $53c4: $cd $e0 $57
    ret                                           ; $53c7: $c9


Call_003_53c8:
    ld hl, $5b12                                  ; $53c8: $21 $12 $5b
    ldh [$c1], a                                  ; $53cb: $e0 $c1
    ld a, $8f                                     ; $53cd: $3e $8f
    ldh [$bd], a                                  ; $53cf: $e0 $bd
    ld a, $5b                                     ; $53d1: $3e $5b
    ldh [$be], a                                  ; $53d3: $e0 $be
    call Call_000_33c4                            ; $53d5: $cd $c4 $33
    ldh a, [rSVBK]                                ; $53d8: $f0 $70
    push af                                       ; $53da: $f5
    ld a, $06                                     ; $53db: $3e $06
    ldh [rSVBK], a                                ; $53dd: $e0 $70
    ld a, [$d6d4]                                 ; $53df: $fa $d4 $d6
    cp $01                                        ; $53e2: $fe $01
    jr z, jr_003_53e7                             ; $53e4: $28 $01

    xor a                                         ; $53e6: $af

jr_003_53e7:
    ldh [$9b], a                                  ; $53e7: $e0 $9b
    pop af                                        ; $53e9: $f1
    ldh [rSVBK], a                                ; $53ea: $e0 $70
    ld a, $7b                                     ; $53ec: $3e $7b
    call Call_000_03a0                            ; $53ee: $cd $a0 $03
    ldh a, [rSVBK]                                ; $53f1: $f0 $70
    push af                                       ; $53f3: $f5
    ld a, $05                                     ; $53f4: $3e $05
    ldh [rSVBK], a                                ; $53f6: $e0 $70
    ld b, $03                                     ; $53f8: $06 $03
    ld hl, $d423                                  ; $53fa: $21 $23 $d4

jr_003_53fd:
    bit 1, [hl]                                   ; $53fd: $cb $4e
    jr nz, jr_003_541f                            ; $53ff: $20 $1e

    push hl                                       ; $5401: $e5
    ld a, $04                                     ; $5402: $3e $04
    sub b                                         ; $5404: $90
    ld [$c301], a                                 ; $5405: $ea $01 $c3
    ld de, $fff6                                  ; $5408: $11 $f6 $ff
    add hl, de                                    ; $540b: $19
    ld a, [hl]                                    ; $540c: $7e
    ldh [$9b], a                                  ; $540d: $e0 $9b
    ld a, $7b                                     ; $540f: $3e $7b
    call Call_000_03a0                            ; $5411: $cd $a0 $03
    ld a, $04                                     ; $5414: $3e $04
    sub b                                         ; $5416: $90
    ldh [$9b], a                                  ; $5417: $e0 $9b
    ld a, $b0                                     ; $5419: $3e $b0
    call Call_000_03a0                            ; $541b: $cd $a0 $03
    pop hl                                        ; $541e: $e1

jr_003_541f:
    ld de, $0019                                  ; $541f: $11 $19 $00
    add hl, de                                    ; $5422: $19
    dec b                                         ; $5423: $05
    jr nz, jr_003_53fd                            ; $5424: $20 $d7

    pop af                                        ; $5426: $f1
    ldh [rSVBK], a                                ; $5427: $e0 $70
    ret                                           ; $5429: $c9


Call_003_542a:
    ldh a, [rSVBK]                                ; $542a: $f0 $70
    push af                                       ; $542c: $f5
    ld a, $05                                     ; $542d: $3e $05
    ldh [rSVBK], a                                ; $542f: $e0 $70
    ld de, $d400                                  ; $5431: $11 $00 $d4
    ld b, $00                                     ; $5434: $06 $00

jr_003_5436:
    ld a, b                                       ; $5436: $78
    ld [$cbe7], a                                 ; $5437: $ea $e7 $cb
    ld hl, $000a                                  ; $543a: $21 $0a $00
    add hl, de                                    ; $543d: $19
    bit 2, [hl]                                   ; $543e: $cb $56
    jr z, jr_003_544f                             ; $5440: $28 $0d

    ldh [$c1], a                                  ; $5442: $e0 $c1
    ld a, $00                                     ; $5444: $3e $00
    ldh [$bd], a                                  ; $5446: $e0 $bd
    ld a, $68                                     ; $5448: $3e $68
    ldh [$be], a                                  ; $544a: $e0 $be
    call Call_000_33e7                            ; $544c: $cd $e7 $33

jr_003_544f:
    bit 3, [hl]                                   ; $544f: $cb $5e
    jr z, jr_003_5496                             ; $5451: $28 $43

    push bc                                       ; $5453: $c5
    push de                                       ; $5454: $d5
    ld e, b                                       ; $5455: $58
    ld a, $7b                                     ; $5456: $3e $7b
    call Call_000_0a6f                            ; $5458: $cd $6f $0a
    ld b, h                                       ; $545b: $44
    ld c, l                                       ; $545c: $4d
    ldh [$c1], a                                  ; $545d: $e0 $c1
    ld a, $95                                     ; $545f: $3e $95
    ldh [$bd], a                                  ; $5461: $e0 $bd
    ld a, $0a                                     ; $5463: $3e $0a
    ldh [$be], a                                  ; $5465: $e0 $be
    call Call_000_33ec                            ; $5467: $cd $ec $33
    ld hl, $0025                                  ; $546a: $21 $25 $00
    add hl, bc                                    ; $546d: $09
    xor a                                         ; $546e: $af
    ld [hl], a                                    ; $546f: $77
    pop de                                        ; $5470: $d1
    pop bc                                        ; $5471: $c1
    ld hl, $0014                                  ; $5472: $21 $14 $00
    add hl, de                                    ; $5475: $19
    bit 1, [hl]                                   ; $5476: $cb $4e
    jr nz, jr_003_5489                            ; $5478: $20 $0f

    ldh [$c1], a                                  ; $547a: $e0 $c1
    ld a, $c2                                     ; $547c: $3e $c2
    ldh [$bd], a                                  ; $547e: $e0 $bd
    ld a, $67                                     ; $5480: $3e $67
    ldh [$be], a                                  ; $5482: $e0 $be
    call Call_000_33e7                            ; $5484: $cd $e7 $33
    jr jr_003_5496                                ; $5487: $18 $0d

jr_003_5489:
    ldh [$c1], a                                  ; $5489: $e0 $c1
    ld a, $0c                                     ; $548b: $3e $0c
    ldh [$bd], a                                  ; $548d: $e0 $bd
    ld a, $68                                     ; $548f: $3e $68
    ldh [$be], a                                  ; $5491: $e0 $be
    call Call_000_33e7                            ; $5493: $cd $e7 $33

jr_003_5496:
    ld hl, $0019                                  ; $5496: $21 $19 $00
    add hl, de                                    ; $5499: $19
    ld d, h                                       ; $549a: $54
    ld e, l                                       ; $549b: $5d
    inc b                                         ; $549c: $04
    ld a, b                                       ; $549d: $78
    cp $04                                        ; $549e: $fe $04
    jr nz, jr_003_5436                            ; $54a0: $20 $94

    pop af                                        ; $54a2: $f1
    ldh [rSVBK], a                                ; $54a3: $e0 $70
    ret                                           ; $54a5: $c9


    ld a, [$cbe9]                                 ; $54a6: $fa $e9 $cb
    or a                                          ; $54a9: $b7
    ret z                                         ; $54aa: $c8

    ldh a, [$cc]                                  ; $54ab: $f0 $cc
    cp $2a                                        ; $54ad: $fe $2a
    jr nz, jr_003_54b8                            ; $54af: $20 $07

    ldh a, [$d3]                                  ; $54b1: $f0 $d3
    cp $ff                                        ; $54b3: $fe $ff
    jp nz, Jump_003_4887                          ; $54b5: $c2 $87 $48

jr_003_54b8:
    ld a, [$cbe4]                                 ; $54b8: $fa $e4 $cb
    or a                                          ; $54bb: $b7
    call z, Call_003_5917                         ; $54bc: $cc $17 $59
    ldh [$c1], a                                  ; $54bf: $e0 $c1
    ld a, $86                                     ; $54c1: $3e $86
    ldh [$bd], a                                  ; $54c3: $e0 $bd
    ld a, $4f                                     ; $54c5: $3e $4f
    ldh [$be], a                                  ; $54c7: $e0 $be
    call Call_000_33e0                            ; $54c9: $cd $e0 $33
    xor a                                         ; $54cc: $af
    call Call_003_4c47                            ; $54cd: $cd $47 $4c
    cp $04                                        ; $54d0: $fe $04
    ret z                                         ; $54d2: $c8

    ldh a, [$a5]                                  ; $54d3: $f0 $a5
    bit 0, a                                      ; $54d5: $cb $47
    ret z                                         ; $54d7: $c8

    rst $18                                       ; $54d8: $df
    call Call_003_56e4                            ; $54d9: $cd $e4 $56
    rst $20                                       ; $54dc: $e7
    ldh a, [$d5]                                  ; $54dd: $f0 $d5
    or a                                          ; $54df: $b7
    jr z, jr_003_54e7                             ; $54e0: $28 $05

    push af                                       ; $54e2: $f5
    call Call_003_58fb                            ; $54e3: $cd $fb $58
    pop af                                        ; $54e6: $f1

jr_003_54e7:
    ld hl, $5312                                  ; $54e7: $21 $12 $53
    rst $08                                       ; $54ea: $cf
    cp $2a                                        ; $54eb: $fe $2a
    jp nz, Jump_000_2448                          ; $54ed: $c2 $48 $24

    push af                                       ; $54f0: $f5
    ld hl, $cc12                                  ; $54f1: $21 $12 $cc
    ld a, [hl+]                                   ; $54f4: $2a
    ld h, [hl]                                    ; $54f5: $66
    ld l, a                                       ; $54f6: $6f
    call Call_000_3911                            ; $54f7: $cd $11 $39
    pop af                                        ; $54fa: $f1
    ld d, $ff                                     ; $54fb: $16 $ff
    ld e, $00                                     ; $54fd: $1e $00
    jp Jump_000_244b                              ; $54ff: $c3 $4b $24


    xor a                                         ; $5502: $af
    call Call_003_4c47                            ; $5503: $cd $47 $4c
    cp $04                                        ; $5506: $fe $04
    jr nz, jr_003_5513                            ; $5508: $20 $09

    xor a                                         ; $550a: $af
    ld [$cbe7], a                                 ; $550b: $ea $e7 $cb
    ld [$cbe9], a                                 ; $550e: $ea $e9 $cb
    jr jr_003_551b                                ; $5511: $18 $08

jr_003_5513:
    xor a                                         ; $5513: $af
    ld [$cbe7], a                                 ; $5514: $ea $e7 $cb
    inc a                                         ; $5517: $3c
    ld [$cbe9], a                                 ; $5518: $ea $e9 $cb

jr_003_551b:
    ld hl, $4974                                  ; $551b: $21 $74 $49
    ldh [$c1], a                                  ; $551e: $e0 $c1
    ld a, $61                                     ; $5520: $3e $61
    ldh [$bd], a                                  ; $5522: $e0 $bd
    ld a, $4f                                     ; $5524: $3e $4f
    ldh [$be], a                                  ; $5526: $e0 $be
    call Call_000_33e0                            ; $5528: $cd $e0 $33
    jp Jump_003_57e0                              ; $552b: $c3 $e0 $57


    xor a                                         ; $552e: $af
    ld [$cbe7], a                                 ; $552f: $ea $e7 $cb
    call Call_003_55d7                            ; $5532: $cd $d7 $55
    ld a, $02                                     ; $5535: $3e $02
    ld [$cbe9], a                                 ; $5537: $ea $e9 $cb
    ret                                           ; $553a: $c9


    rst $18                                       ; $553b: $df
    call Call_003_56e4                            ; $553c: $cd $e4 $56
    xor a                                         ; $553f: $af
    ld [$cbe7], a                                 ; $5540: $ea $e7 $cb
    ld [$cbeb], a                                 ; $5543: $ea $eb $cb
    call Call_003_5be0                            ; $5546: $cd $e0 $5b
    call Call_003_5ad6                            ; $5549: $cd $d6 $5a
    sub $04                                       ; $554c: $d6 $04
    jr nc, jr_003_5551                            ; $554e: $30 $01

    xor a                                         ; $5550: $af

jr_003_5551:
    ld [$cbe8], a                                 ; $5551: $ea $e8 $cb
    call Call_003_5be0                            ; $5554: $cd $e0 $5b
    call Call_003_5af6                            ; $5557: $cd $f6 $5a
    ld hl, $4995                                  ; $555a: $21 $95 $49
    ldh [$c1], a                                  ; $555d: $e0 $c1
    ld a, $61                                     ; $555f: $3e $61
    ldh [$bd], a                                  ; $5561: $e0 $bd
    ld a, $4f                                     ; $5563: $3e $4f
    ldh [$be], a                                  ; $5565: $e0 $be
    jp Jump_000_33e0                              ; $5567: $c3 $e0 $33


    call Call_003_56e4                            ; $556a: $cd $e4 $56
    xor a                                         ; $556d: $af
    ld [$cbe9], a                                 ; $556e: $ea $e9 $cb
    call Call_003_470f                            ; $5571: $cd $0f $47
    jr nz, jr_003_557c                            ; $5574: $20 $06

    ldh a, [rDIV]                                 ; $5576: $f0 $04
    and $03                                       ; $5578: $e6 $03
    jr nz, jr_003_559f                            ; $557a: $20 $23

jr_003_557c:
    ld hl, $5048                                  ; $557c: $21 $48 $50
    call Call_000_301f                            ; $557f: $cd $1f $30
    ld a, $70                                     ; $5582: $3e $70
    ld [$c1eb], a                                 ; $5584: $ea $eb $c1
    ld a, $04                                     ; $5587: $3e $04
    ld [$c234], a                                 ; $5589: $ea $34 $c2
    ld hl, $0055                                  ; $558c: $21 $55 $00
    ldh [$c1], a                                  ; $558f: $e0 $c1
    ld a, $1a                                     ; $5591: $3e $1a
    ldh [$bd], a                                  ; $5593: $e0 $bd
    ld a, $6e                                     ; $5595: $3e $6e
    ldh [$be], a                                  ; $5597: $e0 $be
    call Call_000_33c4                            ; $5599: $cd $c4 $33
    jp RST_20                                     ; $559c: $c3 $20 $00


jr_003_559f:
    rst $20                                       ; $559f: $e7
    ldh a, [rSVBK]                                ; $55a0: $f0 $70
    push af                                       ; $55a2: $f5
    ld a, $06                                     ; $55a3: $3e $06
    ldh [rSVBK], a                                ; $55a5: $e0 $70
    ld a, $03                                     ; $55a7: $3e $03
    ld [$d6cf], a                                 ; $55a9: $ea $cf $d6
    pop af                                        ; $55ac: $f1
    ldh [rSVBK], a                                ; $55ad: $e0 $70
    xor a                                         ; $55af: $af
    ld l, $06                                     ; $55b0: $2e $06
    jp Jump_003_4c60                              ; $55b2: $c3 $60 $4c


    ld a, [$cbe9]                                 ; $55b5: $fa $e9 $cb
    or a                                          ; $55b8: $b7
    ret z                                         ; $55b9: $c8

    ldh a, [$a5]                                  ; $55ba: $f0 $a5
    or a                                          ; $55bc: $b7
    ret z                                         ; $55bd: $c8

    bit 6, a                                      ; $55be: $cb $77
    jr z, jr_003_55d3                             ; $55c0: $28 $11

jr_003_55c2:
    ld a, [$cbe7]                                 ; $55c2: $fa $e7 $cb
    dec a                                         ; $55c5: $3d
    jr nz, jr_003_55ca                            ; $55c6: $20 $02

    ld a, $03                                     ; $55c8: $3e $03

jr_003_55ca:
    ld [$cbe7], a                                 ; $55ca: $ea $e7 $cb
    call Call_003_4c3b                            ; $55cd: $cd $3b $4c
    jr nz, jr_003_55c2                            ; $55d0: $20 $f0

    ret                                           ; $55d2: $c9


jr_003_55d3:
    bit 7, a                                      ; $55d3: $cb $7f
    jr z, jr_003_55ea                             ; $55d5: $28 $13

Call_003_55d7:
jr_003_55d7:
    ld a, [$cbe7]                                 ; $55d7: $fa $e7 $cb
    inc a                                         ; $55da: $3c
    cp $04                                        ; $55db: $fe $04
    jr nz, jr_003_55e1                            ; $55dd: $20 $02

    ld a, $01                                     ; $55df: $3e $01

jr_003_55e1:
    ld [$cbe7], a                                 ; $55e1: $ea $e7 $cb
    call Call_003_4c3b                            ; $55e4: $cd $3b $4c
    jr nz, jr_003_55d7                            ; $55e7: $20 $ee

    ret                                           ; $55e9: $c9


jr_003_55ea:
    bit 0, a                                      ; $55ea: $cb $47
    jr z, jr_003_55f6                             ; $55ec: $28 $08

    call Call_003_4877                            ; $55ee: $cd $77 $48
    xor a                                         ; $55f1: $af
    ld [$cbe9], a                                 ; $55f2: $ea $e9 $cb
    ret                                           ; $55f5: $c9


jr_003_55f6:
    bit 1, a                                      ; $55f6: $cb $4f
    ret z                                         ; $55f8: $c8

    ld a, $1a                                     ; $55f9: $3e $1a
    jp Jump_000_2448                              ; $55fb: $c3 $48 $24


    ldh [$c1], a                                  ; $55fe: $e0 $c1
    ld a, $86                                     ; $5600: $3e $86
    ldh [$bd], a                                  ; $5602: $e0 $bd
    ld a, $4f                                     ; $5604: $3e $4f
    ldh [$be], a                                  ; $5606: $e0 $be
    call Call_000_33e0                            ; $5608: $cd $e0 $33
    ldh a, [$a5]                                  ; $560b: $f0 $a5
    bit 0, a                                      ; $560d: $cb $47
    jp nz, Jump_003_569d                          ; $560f: $c2 $9d $56

    bit 1, a                                      ; $5612: $cb $4f
    jp nz, Jump_003_56a7                          ; $5614: $c2 $a7 $56

    call Call_003_5ae9                            ; $5617: $cd $e9 $5a
    jr nz, jr_003_5625                            ; $561a: $20 $09

    ld a, $01                                     ; $561c: $3e $01
    ldh [$d5], a                                  ; $561e: $e0 $d5
    xor a                                         ; $5620: $af
    ld [$cbe9], a                                 ; $5621: $ea $e9 $cb
    ret                                           ; $5624: $c9


jr_003_5625:
    ldh a, [$a5]                                  ; $5625: $f0 $a5
    bit 4, a                                      ; $5627: $cb $67
    jr z, jr_003_5640                             ; $5629: $28 $15

    ld hl, $cbeb                                  ; $562b: $21 $eb $cb
    ld a, $05                                     ; $562e: $3e $05
    add [hl]                                      ; $5630: $86
    ld hl, $cbe8                                  ; $5631: $21 $e8 $cb
    cp [hl]                                       ; $5634: $be
    ld [$cbeb], a                                 ; $5635: $ea $eb $cb
    jr c, jr_003_5661                             ; $5638: $38 $27

    ld a, [hl]                                    ; $563a: $7e
    ld [$cbeb], a                                 ; $563b: $ea $eb $cb
    jr jr_003_5682                                ; $563e: $18 $42

jr_003_5640:
    bit 5, a                                      ; $5640: $cb $6f
    jr z, jr_003_5655                             ; $5642: $28 $11

    ld hl, $cbeb                                  ; $5644: $21 $eb $cb
    ld a, $fd                                     ; $5647: $3e $fd
    add [hl]                                      ; $5649: $86
    ld [$cbeb], a                                 ; $564a: $ea $eb $cb
    jr c, jr_003_5661                             ; $564d: $38 $12

    xor a                                         ; $564f: $af
    ld [$cbeb], a                                 ; $5650: $ea $eb $cb
    jr jr_003_5661                                ; $5653: $18 $0c

jr_003_5655:
    bit 7, a                                      ; $5655: $cb $7f
    jr nz, jr_003_5671                            ; $5657: $20 $18

    bit 6, a                                      ; $5659: $cb $77
    ret z                                         ; $565b: $c8

    ldh a, [$d5]                                  ; $565c: $f0 $d5
    cp $00                                        ; $565e: $fe $00
    ret nz                                        ; $5660: $c0

jr_003_5661:
    ld a, $01                                     ; $5661: $3e $01
    ldh [$d5], a                                  ; $5663: $e0 $d5
    ld a, [$cbeb]                                 ; $5665: $fa $eb $cb
    or a                                          ; $5668: $b7
    jr z, jr_003_569a                             ; $5669: $28 $2f

    dec a                                         ; $566b: $3d
    ld [$cbeb], a                                 ; $566c: $ea $eb $cb
    jr jr_003_569a                                ; $566f: $18 $29

jr_003_5671:
    ldh a, [$d5]                                  ; $5671: $f0 $d5
    cp $05                                        ; $5673: $fe $05
    jr z, jr_003_5682                             ; $5675: $28 $0b

    call Call_003_5ad6                            ; $5677: $cd $d6 $5a
    inc a                                         ; $567a: $3c
    ld hl, $ffd5                                  ; $567b: $21 $d5 $ff
    cp [hl]                                       ; $567e: $be
    ret nz                                        ; $567f: $c0

    dec [hl]                                      ; $5680: $35
    ret                                           ; $5681: $c9


jr_003_5682:
    call Call_003_5ad6                            ; $5682: $cd $d6 $5a
    cp $04                                        ; $5685: $fe $04
    jr c, jr_003_568b                             ; $5687: $38 $02

    ld a, $04                                     ; $5689: $3e $04

jr_003_568b:
    ldh [$d5], a                                  ; $568b: $e0 $d5
    ld a, [$cbeb]                                 ; $568d: $fa $eb $cb
    ld hl, $cbe8                                  ; $5690: $21 $e8 $cb
    cp [hl]                                       ; $5693: $be
    jr z, jr_003_569a                             ; $5694: $28 $04

    inc a                                         ; $5696: $3c
    ld [$cbeb], a                                 ; $5697: $ea $eb $cb

jr_003_569a:
    jp Jump_003_5af6                              ; $569a: $c3 $f6 $5a


Jump_003_569d:
    call Call_003_5ae9                            ; $569d: $cd $e9 $5a
    jr z, jr_003_56a7                             ; $56a0: $28 $05

    ld a, $21                                     ; $56a2: $3e $21
    jp Jump_000_2448                              ; $56a4: $c3 $48 $24


Jump_003_56a7:
jr_003_56a7:
    rst $18                                       ; $56a7: $df
    call Call_003_56e4                            ; $56a8: $cd $e4 $56
    rst $20                                       ; $56ab: $e7
    call Call_000_3308                            ; $56ac: $cd $08 $33
    ld a, $1a                                     ; $56af: $3e $1a
    jp Jump_000_2448                              ; $56b1: $c3 $48 $24


    ld a, [$cbe2]                                 ; $56b4: $fa $e2 $cb
    call Call_003_4c47                            ; $56b7: $cd $47 $4c
    cp $06                                        ; $56ba: $fe $06
    ret z                                         ; $56bc: $c8

    ldh a, [$a5]                                  ; $56bd: $f0 $a5
    and $03                                       ; $56bf: $e6 $03
    ret z                                         ; $56c1: $c8

    call Call_003_56e4                            ; $56c2: $cd $e4 $56
    call Call_003_57e0                            ; $56c5: $cd $e0 $57
    rst $20                                       ; $56c8: $e7
    jp Jump_003_4db4                              ; $56c9: $c3 $b4 $4d


    xor a                                         ; $56cc: $af
    ld [$cbe9], a                                 ; $56cd: $ea $e9 $cb
    ld a, $1e                                     ; $56d0: $3e $1e
    ld [$cbed], a                                 ; $56d2: $ea $ed $cb
    ret                                           ; $56d5: $c9


    ld a, [$cbed]                                 ; $56d6: $fa $ed $cb
    or a                                          ; $56d9: $b7
    ret z                                         ; $56da: $c8

    dec a                                         ; $56db: $3d
    ld [$cbed], a                                 ; $56dc: $ea $ed $cb
    ret nz                                        ; $56df: $c0

    call Call_003_4fd6                            ; $56e0: $cd $d6 $4f
    ret                                           ; $56e3: $c9


Call_003_56e4:
    push bc                                       ; $56e4: $c5
    push de                                       ; $56e5: $d5
    push hl                                       ; $56e6: $e5
    ld c, $00                                     ; $56e7: $0e $00
    ld d, $05                                     ; $56e9: $16 $05
    ld e, $10                                     ; $56eb: $1e $10
    ld hl, $01a0                                  ; $56ed: $21 $a0 $01
    call Call_000_13c2                            ; $56f0: $cd $c2 $13
    pop hl                                        ; $56f3: $e1
    pop de                                        ; $56f4: $d1
    pop bc                                        ; $56f5: $c1
    ret                                           ; $56f6: $c9


Call_003_56f7:
    ld hl, $4974                                  ; $56f7: $21 $74 $49
    ldh [$c1], a                                  ; $56fa: $e0 $c1
    ld a, $61                                     ; $56fc: $3e $61
    ldh [$bd], a                                  ; $56fe: $e0 $bd
    ld a, $4f                                     ; $5700: $3e $4f
    ldh [$be], a                                  ; $5702: $e0 $be
    call Call_000_33e0                            ; $5704: $cd $e0 $33
    xor a                                         ; $5707: $af
    ld [$cbe7], a                                 ; $5708: $ea $e7 $cb
    inc a                                         ; $570b: $3c
    ld [$cbe9], a                                 ; $570c: $ea $e9 $cb
    ld hl, $ffb8                                  ; $570f: $21 $b8 $ff
    ld [hl], $00                                  ; $5712: $36 $00
    inc hl                                        ; $5714: $23
    ld [hl], $00                                  ; $5715: $36 $00
    ld a, $01                                     ; $5717: $3e $01
    ld [$cdb6], a                                 ; $5719: $ea $b6 $cd
    ld hl, $62a0                                  ; $571c: $21 $a0 $62
    ldh [$c1], a                                  ; $571f: $e0 $c1
    ld a, $ed                                     ; $5721: $3e $ed
    ldh [$bd], a                                  ; $5723: $e0 $bd
    ld a, $06                                     ; $5725: $3e $06
    ldh [$be], a                                  ; $5727: $e0 $be
    call Call_000_33c4                            ; $5729: $cd $c4 $33
    xor a                                         ; $572c: $af
    ldh [$9b], a                                  ; $572d: $e0 $9b
    ld a, $7c                                     ; $572f: $3e $7c
    call Call_000_03a0                            ; $5731: $cd $a0 $03
    ld a, $01                                     ; $5734: $3e $01
    ldh [$9b], a                                  ; $5736: $e0 $9b
    ld a, $7c                                     ; $5738: $3e $7c
    jp Jump_000_03a0                              ; $573a: $c3 $a0 $03


Call_003_573d:
    ldh [$c1], a                                  ; $573d: $e0 $c1
    ld a, $de                                     ; $573f: $3e $de
    ldh [$bd], a                                  ; $5741: $e0 $bd
    ld a, $62                                     ; $5743: $3e $62
    ldh [$be], a                                  ; $5745: $e0 $be
    call Call_000_33e0                            ; $5747: $cd $e0 $33
    ld bc, $5b82                                  ; $574a: $01 $82 $5b
    ld hl, $0109                                  ; $574d: $21 $09 $01
    ldh [$c1], a                                  ; $5750: $e0 $c1
    ld a, $6a                                     ; $5752: $3e $6a
    ldh [$bd], a                                  ; $5754: $e0 $bd
    ld a, $0f                                     ; $5756: $3e $0f
    ldh [$be], a                                  ; $5758: $e0 $be
    call Call_000_33ec                            ; $575a: $cd $ec $33
    xor a                                         ; $575d: $af
    ld bc, $5cea                                  ; $575e: $01 $ea $5c
    ld de, $d9d0                                  ; $5761: $11 $d0 $d9
    ld hl, $0089                                  ; $5764: $21 $89 $00
    ldh [$c1], a                                  ; $5767: $e0 $c1
    ld a, $7a                                     ; $5769: $3e $7a
    ldh [$bd], a                                  ; $576b: $e0 $bd
    ld a, $0f                                     ; $576d: $3e $0f
    ldh [$be], a                                  ; $576f: $e0 $be
    jp Jump_000_33ec                              ; $5771: $c3 $ec $33


Call_003_5774:
    call Call_003_4687                            ; $5774: $cd $87 $46
    cp $0e                                        ; $5777: $fe $0e
    jr z, jr_003_578d                             ; $5779: $28 $12

    cp $1e                                        ; $577b: $fe $1e
    ret nz                                        ; $577d: $c0

    ld a, $46                                     ; $577e: $3e $46
    ldh [$c1], a                                  ; $5780: $e0 $c1
    ld a, $c0                                     ; $5782: $3e $c0
    ldh [$bd], a                                  ; $5784: $e0 $bd
    ld a, $70                                     ; $5786: $3e $70
    ldh [$be], a                                  ; $5788: $e0 $be
    jp Jump_000_33c4                              ; $578a: $c3 $c4 $33


jr_003_578d:
    ld a, $23                                     ; $578d: $3e $23
    ldh [$c1], a                                  ; $578f: $e0 $c1
    ld a, $c0                                     ; $5791: $3e $c0
    ldh [$bd], a                                  ; $5793: $e0 $bd
    ld a, $70                                     ; $5795: $3e $70
    ldh [$be], a                                  ; $5797: $e0 $be
    jp Jump_000_33c4                              ; $5799: $c3 $c4 $33


Call_003_579c:
    call Call_003_5774                            ; $579c: $cd $74 $57
    ld hl, $ffb8                                  ; $579f: $21 $b8 $ff
    ld [hl], $68                                  ; $57a2: $36 $68
    inc hl                                        ; $57a4: $23
    ld [hl], $01                                  ; $57a5: $36 $01
    call Call_003_4687                            ; $57a7: $cd $87 $46
    ld hl, $559a                                  ; $57aa: $21 $9a $55
    ldh [$c1], a                                  ; $57ad: $e0 $c1
    ld a, $37                                     ; $57af: $3e $37
    ldh [$bd], a                                  ; $57b1: $e0 $bd
    ld a, $29                                     ; $57b3: $3e $29
    ldh [$be], a                                  ; $57b5: $e0 $be
    call Call_000_33ec                            ; $57b7: $cd $ec $33
    call Call_000_3674                            ; $57ba: $cd $74 $36

    db $00, $00, $14, $0d

    ld de, $d800                                  ; $57c1: $11 $00 $d8
    call Call_003_4687                            ; $57c4: $cd $87 $46
    ld bc, $0000                                  ; $57c7: $01 $00 $00
    ld hl, $56ba                                  ; $57ca: $21 $ba $56
    ldh [$c1], a                                  ; $57cd: $e0 $c1
    ld a, $32                                     ; $57cf: $3e $32
    ldh [$bd], a                                  ; $57d1: $e0 $bd
    ld a, $33                                     ; $57d3: $3e $33
    ldh [$be], a                                  ; $57d5: $e0 $be
    call Call_000_33ec                            ; $57d7: $cd $ec $33
    ld de, $5316                                  ; $57da: $11 $16 $53
    jp Jump_000_134e                              ; $57dd: $c3 $4e $13


Call_003_57e0:
Jump_003_57e0:
    rst $18                                       ; $57e0: $df
    call Call_003_589f                            ; $57e1: $cd $9f $58
    call Call_003_5828                            ; $57e4: $cd $28 $58
    jp RST_20                                     ; $57e7: $c3 $20 $00


Call_003_57ea:
    call Call_003_4687                            ; $57ea: $cd $87 $46
    ld hl, $57da                                  ; $57ed: $21 $da $57
    ldh [$c1], a                                  ; $57f0: $e0 $c1
    ld a, $f8                                     ; $57f2: $3e $f8
    ldh [$bd], a                                  ; $57f4: $e0 $bd
    ld a, $24                                     ; $57f6: $3e $24
    ldh [$be], a                                  ; $57f8: $e0 $be
    call Call_000_33ec                            ; $57fa: $cd $ec $33
    call Call_000_19b7                            ; $57fd: $cd $b7 $19
    ld hl, $c124                                  ; $5800: $21 $24 $c1
    ld a, $04                                     ; $5803: $3e $04
    ld [hl+], a                                   ; $5805: $22
    xor a                                         ; $5806: $af
    ld [hl+], a                                   ; $5807: $22
    ld [hl+], a                                   ; $5808: $22
    ld a, $58                                     ; $5809: $3e $58
    ld [hl+], a                                   ; $580b: $22
    ld a, $5e                                     ; $580c: $3e $5e
    ld [hl+], a                                   ; $580e: $22
    ld a, $20                                     ; $580f: $3e $20
    ld [$c141], a                                 ; $5811: $ea $41 $c1
    ldh [$c1], a                                  ; $5814: $e0 $c1
    ld a, $de                                     ; $5816: $3e $de
    ldh [$bd], a                                  ; $5818: $e0 $bd
    ld a, $62                                     ; $581a: $3e $62
    ldh [$be], a                                  ; $581c: $e0 $be
    call Call_000_33e0                            ; $581e: $cd $e0 $33
    ld hl, $5ced                                  ; $5821: $21 $ed $5c
    call Call_000_0fad                            ; $5824: $cd $ad $0f
    ret                                           ; $5827: $c9


Call_003_5828:
    push bc                                       ; $5828: $c5
    ld c, $00                                     ; $5829: $0e $00
    ld d, $04                                     ; $582b: $16 $04
    ld e, $06                                     ; $582d: $1e $06
    ld hl, $01c9                                  ; $582f: $21 $c9 $01
    call Call_000_13c2                            ; $5832: $cd $c2 $13
    ldh a, [rSVBK]                                ; $5835: $f0 $70
    push af                                       ; $5837: $f5
    ld a, $05                                     ; $5838: $3e $05
    ldh [rSVBK], a                                ; $583a: $e0 $70
    ld hl, $d40a                                  ; $583c: $21 $0a $d4
    bit 2, [hl]                                   ; $583f: $cb $56
    jr nz, jr_003_5848                            ; $5841: $20 $05

    ld hl, $52d2                                  ; $5843: $21 $d2 $52
    jr jr_003_584b                                ; $5846: $18 $03

jr_003_5848:
    ld hl, $52d9                                  ; $5848: $21 $d9 $52

jr_003_584b:
    pop af                                        ; $584b: $f1
    ldh [rSVBK], a                                ; $584c: $e0 $70
    call Call_000_301f                            ; $584e: $cd $1f $30
    ldh a, [rSVBK]                                ; $5851: $f0 $70
    push af                                       ; $5853: $f5
    ld a, $05                                     ; $5854: $3e $05
    ldh [rSVBK], a                                ; $5856: $e0 $70
    ld hl, $d405                                  ; $5858: $21 $05 $d4
    ld c, [hl]                                    ; $585b: $4e
    inc hl                                        ; $585c: $23
    ld b, [hl]                                    ; $585d: $46
    ld hl, $d401                                  ; $585e: $21 $01 $d4
    ld e, [hl]                                    ; $5861: $5e
    inc hl                                        ; $5862: $23
    ld d, [hl]                                    ; $5863: $56
    pop af                                        ; $5864: $f1
    ldh [rSVBK], a                                ; $5865: $e0 $70
    ld hl, $0016                                  ; $5867: $21 $16 $00
    ldh [$c1], a                                  ; $586a: $e0 $c1
    ld a, $6a                                     ; $586c: $3e $6a
    ldh [$bd], a                                  ; $586e: $e0 $bd
    ld a, $6d                                     ; $5870: $3e $6d
    ldh [$be], a                                  ; $5872: $e0 $be
    call Call_000_33c4                            ; $5874: $cd $c4 $33
    ldh a, [rSVBK]                                ; $5877: $f0 $70
    push af                                       ; $5879: $f5
    ld a, $05                                     ; $587a: $3e $05
    ldh [rSVBK], a                                ; $587c: $e0 $70
    ld hl, $d407                                  ; $587e: $21 $07 $d4
    ld c, [hl]                                    ; $5881: $4e
    inc hl                                        ; $5882: $23
    ld b, [hl]                                    ; $5883: $46
    ld hl, $d403                                  ; $5884: $21 $03 $d4
    ld e, [hl]                                    ; $5887: $5e
    inc hl                                        ; $5888: $23
    ld d, [hl]                                    ; $5889: $56
    pop af                                        ; $588a: $f1
    ldh [rSVBK], a                                ; $588b: $e0 $70
    ld hl, $0019                                  ; $588d: $21 $19 $00
    ldh [$c1], a                                  ; $5890: $e0 $c1
    ld a, $6a                                     ; $5892: $3e $6a
    ldh [$bd], a                                  ; $5894: $e0 $bd
    ld a, $6d                                     ; $5896: $3e $6d
    ldh [$be], a                                  ; $5898: $e0 $be
    call Call_000_33c4                            ; $589a: $cd $c4 $33
    pop bc                                        ; $589d: $c1
    ret                                           ; $589e: $c9


Call_003_589f:
    ld c, $00                                     ; $589f: $0e $00
    ld d, $05                                     ; $58a1: $16 $05
    ld e, $09                                     ; $58a3: $1e $09
    ld hl, $01a0                                  ; $58a5: $21 $a0 $01
    call Call_000_13c2                            ; $58a8: $cd $c2 $13
    ld hl, $52c4                                  ; $58ab: $21 $c4 $52
    call Call_000_301f                            ; $58ae: $cd $1f $30
    ld a, $7c                                     ; $58b1: $3e $7c
    ld [$c1eb], a                                 ; $58b3: $ea $eb $c1
    ld a, $01                                     ; $58b6: $3e $01
    ld [$c234], a                                 ; $58b8: $ea $34 $c2
    ld hl, $000a                                  ; $58bb: $21 $0a $00
    ldh [$c1], a                                  ; $58be: $e0 $c1
    ld a, $1a                                     ; $58c0: $3e $1a
    ldh [$bd], a                                  ; $58c2: $e0 $bd
    ld a, $6e                                     ; $58c4: $3e $6e
    ldh [$be], a                                  ; $58c6: $e0 $be
    call Call_000_33c4                            ; $58c8: $cd $c4 $33
    ld hl, $000d                                  ; $58cb: $21 $0d $00
    ldh [$c1], a                                  ; $58ce: $e0 $c1
    ld a, $1a                                     ; $58d0: $3e $1a
    ldh [$bd], a                                  ; $58d2: $e0 $bd
    ld a, $6e                                     ; $58d4: $3e $6e
    ldh [$be], a                                  ; $58d6: $e0 $be
    call Call_000_33c4                            ; $58d8: $cd $c4 $33
    ld hl, $0010                                  ; $58db: $21 $10 $00
    ldh [$c1], a                                  ; $58de: $e0 $c1
    ld a, $1a                                     ; $58e0: $3e $1a
    ldh [$bd], a                                  ; $58e2: $e0 $bd
    ld a, $6e                                     ; $58e4: $3e $6e
    ldh [$be], a                                  ; $58e6: $e0 $be
    call Call_000_33c4                            ; $58e8: $cd $c4 $33
    ld hl, $0013                                  ; $58eb: $21 $13 $00
    ldh [$c1], a                                  ; $58ee: $e0 $c1
    ld a, $1a                                     ; $58f0: $3e $1a
    ldh [$bd], a                                  ; $58f2: $e0 $bd
    ld a, $6e                                     ; $58f4: $3e $6e
    ldh [$be], a                                  ; $58f6: $e0 $be
    jp Jump_000_33c4                              ; $58f8: $c3 $c4 $33


Call_003_58fb:
    push bc                                       ; $58fb: $c5
    xor a                                         ; $58fc: $af
    ld [$cbe4], a                                 ; $58fd: $ea $e4 $cb
    ld e, $01                                     ; $5900: $1e $01

jr_003_5902:
    ld a, $b0                                     ; $5902: $3e $b0
    call Call_000_0a6f                            ; $5904: $cd $6f $0a
    jr nz, jr_003_590f                            ; $5907: $20 $06

    ld bc, $002b                                  ; $5909: $01 $2b $00
    add hl, bc                                    ; $590c: $09
    set 0, [hl]                                   ; $590d: $cb $c6

jr_003_590f:
    inc e                                         ; $590f: $1c
    ld a, e                                       ; $5910: $7b
    cp $04                                        ; $5911: $fe $04
    jr nz, jr_003_5902                            ; $5913: $20 $ed

    pop bc                                        ; $5915: $c1
    ret                                           ; $5916: $c9


Call_003_5917:
    push bc                                       ; $5917: $c5
    ld a, $01                                     ; $5918: $3e $01
    ld [$cbe4], a                                 ; $591a: $ea $e4 $cb
    ld e, a                                       ; $591d: $5f

jr_003_591e:
    ld a, $b0                                     ; $591e: $3e $b0
    call Call_000_0a6f                            ; $5920: $cd $6f $0a
    jr nz, jr_003_593a                            ; $5923: $20 $15

    ld c, l                                       ; $5925: $4d
    ld b, h                                       ; $5926: $44
    ld hl, $002b                                  ; $5927: $21 $2b $00
    add hl, bc                                    ; $592a: $09
    res 0, [hl]                                   ; $592b: $cb $86
    ldh [$c1], a                                  ; $592d: $e0 $c1
    ld a, $40                                     ; $592f: $3e $40
    ldh [$bd], a                                  ; $5931: $e0 $bd
    ld a, $6c                                     ; $5933: $3e $6c
    ldh [$be], a                                  ; $5935: $e0 $be
    call Call_000_33e0                            ; $5937: $cd $e0 $33

jr_003_593a:
    inc e                                         ; $593a: $1c
    ld a, e                                       ; $593b: $7b
    cp $04                                        ; $593c: $fe $04
    jr nz, jr_003_591e                            ; $593e: $20 $de

    pop bc                                        ; $5940: $c1
    ret                                           ; $5941: $c9


    db $01, $01, $50, $59, $19, $01, $41

    ld bc, $e001                                  ; $5949: $01 $01 $e0
    ld d, d                                       ; $594c: $52
    add hl, de                                    ; $594d: $19
    db $01                                        ; $594e: $01
    ld b, c                                       ; $594f: $41

    db $c1, $d9, $c3, $d9, $e1, $d9, $e3, $d9, $01, $da, $03, $da, $21, $da, $23, $da
    db $ff, $ff, $01, $00

Call_003_5964:
    ld a, [$cbeb]                                 ; $5964: $fa $eb $cb
    ld hl, $ffd5                                  ; $5967: $21 $d5 $ff
    add [hl]                                      ; $596a: $86
    dec a                                         ; $596b: $3d
    ld hl, $cb2a                                  ; $596c: $21 $2a $cb
    call Call_000_3185                            ; $596f: $cd $85 $31
    ld a, [hl+]                                   ; $5972: $2a
    ld h, [hl]                                    ; $5973: $66
    ld l, a                                       ; $5974: $6f
    ld de, $001c                                  ; $5975: $11 $1c $00
    call Call_000_0098                            ; $5978: $cd $98 $00
    add hl, de                                    ; $597b: $19
    ld h, l                                       ; $597c: $65
    ld l, $03                                     ; $597d: $2e $03
    call Call_000_00b9                            ; $597f: $cd $b9 $00
    ld a, h                                       ; $5982: $7c
    ld [$cbe6], a                                 ; $5983: $ea $e6 $cb
    ret                                           ; $5986: $c9


Call_003_5987:
    ld a, $01                                     ; $5987: $3e $01
    ld [$cbe7], a                                 ; $5989: $ea $e7 $cb
    call Call_003_4c3b                            ; $598c: $cd $3b $4c
    ret z                                         ; $598f: $c8

    inc a                                         ; $5990: $3c
    ld [$cbe7], a                                 ; $5991: $ea $e7 $cb
    call Call_003_4c3b                            ; $5994: $cd $3b $4c
    ret z                                         ; $5997: $c8

    inc a                                         ; $5998: $3c
    ld [$cbe7], a                                 ; $5999: $ea $e7 $cb
    jp Jump_003_4c3b                              ; $599c: $c3 $3b $4c


    call Call_003_5964                            ; $599f: $cd $64 $59
    call Call_003_5987                            ; $59a2: $cd $87 $59
    ld a, $02                                     ; $59a5: $3e $02
    ld [$cbe9], a                                 ; $59a7: $ea $e9 $cb
    call Call_003_5a67                            ; $59aa: $cd $67 $5a
    ret z                                         ; $59ad: $c8

    ld a, $04                                     ; $59ae: $3e $04
    ld [$cbe7], a                                 ; $59b0: $ea $e7 $cb
    ret                                           ; $59b3: $c9


    ld a, [$cbe9]                                 ; $59b4: $fa $e9 $cb
    or a                                          ; $59b7: $b7
    ret z                                         ; $59b8: $c8

    ldh a, [$a5]                                  ; $59b9: $f0 $a5
    or a                                          ; $59bb: $b7
    ret z                                         ; $59bc: $c8

    bit 6, a                                      ; $59bd: $cb $77
    jr z, jr_003_59d7                             ; $59bf: $28 $16

jr_003_59c1:
    ld a, [$cbe7]                                 ; $59c1: $fa $e7 $cb
    or a                                          ; $59c4: $b7
    ret z                                         ; $59c5: $c8

    cp $04                                        ; $59c6: $fe $04
    ret z                                         ; $59c8: $c8

    dec a                                         ; $59c9: $3d
    jr nz, jr_003_59ce                            ; $59ca: $20 $02

    ld a, $03                                     ; $59cc: $3e $03

jr_003_59ce:
    ld [$cbe7], a                                 ; $59ce: $ea $e7 $cb
    call Call_003_4c3b                            ; $59d1: $cd $3b $4c
    jr nz, jr_003_59c1                            ; $59d4: $20 $eb

    ret                                           ; $59d6: $c9


jr_003_59d7:
    bit 7, a                                      ; $59d7: $cb $7f
    jr z, jr_003_59f3                             ; $59d9: $28 $18

jr_003_59db:
    ld a, [$cbe7]                                 ; $59db: $fa $e7 $cb
    or a                                          ; $59de: $b7
    ret z                                         ; $59df: $c8

    cp $04                                        ; $59e0: $fe $04
    ret z                                         ; $59e2: $c8

    inc a                                         ; $59e3: $3c
    cp $04                                        ; $59e4: $fe $04
    jr nz, jr_003_59ea                            ; $59e6: $20 $02

    ld a, $01                                     ; $59e8: $3e $01

jr_003_59ea:
    ld [$cbe7], a                                 ; $59ea: $ea $e7 $cb
    call Call_003_4c3b                            ; $59ed: $cd $3b $4c
    jr nz, jr_003_59db                            ; $59f0: $20 $e9

    ret                                           ; $59f2: $c9


jr_003_59f3:
    bit 5, a                                      ; $59f3: $cb $6f
    jr z, jr_003_5a22                             ; $59f5: $28 $2b

    call Call_003_5a67                            ; $59f7: $cd $67 $5a
    ret nz                                        ; $59fa: $c0

    ld a, [$cbe7]                                 ; $59fb: $fa $e7 $cb
    cp $04                                        ; $59fe: $fe $04
    ret z                                         ; $5a00: $c8

    cp $01                                        ; $5a01: $fe $01
    jr c, jr_003_5a15                             ; $5a03: $38 $10

    call Call_003_4e21                            ; $5a05: $cd $21 $4e
    cp $01                                        ; $5a08: $fe $01
    ret z                                         ; $5a0a: $c8

    call Call_003_5a5e                            ; $5a0b: $cd $5e $5a
    ret z                                         ; $5a0e: $c8

    ld a, $04                                     ; $5a0f: $3e $04
    ld [$cbe7], a                                 ; $5a11: $ea $e7 $cb
    ret                                           ; $5a14: $c9


jr_003_5a15:
    ld a, [$cbe7]                                 ; $5a15: $fa $e7 $cb
    inc a                                         ; $5a18: $3c
    ld [$cbe7], a                                 ; $5a19: $ea $e7 $cb
    call Call_003_4c3b                            ; $5a1c: $cd $3b $4c
    jr nz, jr_003_5a15                            ; $5a1f: $20 $f4

    ret                                           ; $5a21: $c9


jr_003_5a22:
    bit 4, a                                      ; $5a22: $cb $67
    jr z, jr_003_5a38                             ; $5a24: $28 $12

    call Call_003_5a67                            ; $5a26: $cd $67 $5a
    ret nz                                        ; $5a29: $c0

    ld a, [$cbe7]                                 ; $5a2a: $fa $e7 $cb
    or a                                          ; $5a2d: $b7
    ret z                                         ; $5a2e: $c8

    and $03                                       ; $5a2f: $e6 $03
    ret nz                                        ; $5a31: $c0

    xor a                                         ; $5a32: $af
    ld [$cbe7], a                                 ; $5a33: $ea $e7 $cb
    jr jr_003_5a15                                ; $5a36: $18 $dd

jr_003_5a38:
    bit 0, a                                      ; $5a38: $cb $47
    jr z, jr_003_5a55                             ; $5a3a: $28 $19

    ld a, [$cbe7]                                 ; $5a3c: $fa $e7 $cb
    or a                                          ; $5a3f: $b7
    jr z, jr_003_5a55                             ; $5a40: $28 $13

    call Call_003_58fb                            ; $5a42: $cd $fb $58
    call Call_003_487f                            ; $5a45: $cd $7f $48
    xor a                                         ; $5a48: $af
    ld [$cbe9], a                                 ; $5a49: $ea $e9 $cb
    ld a, [$cbe6]                                 ; $5a4c: $fa $e6 $cb
    call Call_003_5a8c                            ; $5a4f: $cd $8c $5a
    jp Jump_003_57e0                              ; $5a52: $c3 $e0 $57


jr_003_5a55:
    bit 1, a                                      ; $5a55: $cb $4f
    ret z                                         ; $5a57: $c8

    ld a, $1a                                     ; $5a58: $3e $1a
    jp Jump_000_2448                              ; $5a5a: $c3 $48 $24


    ret                                           ; $5a5d: $c9


Call_003_5a5e:
    ld a, [$cbe6]                                 ; $5a5e: $fa $e6 $cb
    ld hl, $6142                                  ; $5a61: $21 $42 $61
    jp Jump_000_3256                              ; $5a64: $c3 $56 $32


Call_003_5a67:
    ld a, [$cbe6]                                 ; $5a67: $fa $e6 $cb
    ld hl, $6146                                  ; $5a6a: $21 $46 $61
    jp Jump_000_3256                              ; $5a6d: $c3 $56 $32


Call_003_5a70:
    ld a, [$ce17]                                 ; $5a70: $fa $17 $ce
    or a                                          ; $5a73: $b7
    ld hl, $cdfe                                  ; $5a74: $21 $fe $cd
    ret z                                         ; $5a77: $c8

    ld hl, $5960                                  ; $5a78: $21 $60 $59
    ret                                           ; $5a7b: $c9


Call_003_5a7c:
    push hl                                       ; $5a7c: $e5
    ld hl, $6131                                  ; $5a7d: $21 $31 $61
    rst $08                                       ; $5a80: $cf
    ld hl, $cc06                                  ; $5a81: $21 $06 $cc
    bit 4, [hl]                                   ; $5a84: $cb $66
    jr z, jr_003_5a8a                             ; $5a86: $28 $02

    srl a                                         ; $5a88: $cb $3f

jr_003_5a8a:
    pop hl                                        ; $5a8a: $e1
    ret                                           ; $5a8b: $c9


Call_003_5a8c:
    ldh [$bc], a                                  ; $5a8c: $e0 $bc
    ldh a, [rSVBK]                                ; $5a8e: $f0 $70
    push af                                       ; $5a90: $f5
    ld a, $05                                     ; $5a91: $3e $05
    ldh [rSVBK], a                                ; $5a93: $e0 $70
    ldh a, [$bc]                                  ; $5a95: $f0 $bc
    push af                                       ; $5a97: $f5
    ld hl, $d407                                  ; $5a98: $21 $07 $d4
    ld a, [hl+]                                   ; $5a9b: $2a
    ld h, [hl]                                    ; $5a9c: $66
    ld l, a                                       ; $5a9d: $6f
    pop af                                        ; $5a9e: $f1
    call Call_003_5a7c                            ; $5a9f: $cd $7c $5a
    cpl                                           ; $5aa2: $2f
    inc a                                         ; $5aa3: $3c
    call Call_000_31a8                            ; $5aa4: $cd $a8 $31
    ld a, l                                       ; $5aa7: $7d
    ld [$d407], a                                 ; $5aa8: $ea $07 $d4
    ld a, h                                       ; $5aab: $7c
    ld [$d408], a                                 ; $5aac: $ea $08 $d4
    pop af                                        ; $5aaf: $f1
    ldh [rSVBK], a                                ; $5ab0: $e0 $70
    ret                                           ; $5ab2: $c9


Call_003_5ab3:
    push bc                                       ; $5ab3: $c5
    push de                                       ; $5ab4: $d5
    call Call_003_5a70                            ; $5ab5: $cd $70 $5a
    xor a                                         ; $5ab8: $af
    ld bc, $1100                                  ; $5ab9: $01 $00 $11
    ld de, $614a                                  ; $5abc: $11 $4a $61

jr_003_5abf:
    push hl                                       ; $5abf: $e5
    call Call_000_3256                            ; $5ac0: $cd $56 $32
    jr z, jr_003_5acd                             ; $5ac3: $28 $08

    ld l, e                                       ; $5ac5: $6b
    ld h, d                                       ; $5ac6: $62
    call Call_000_3256                            ; $5ac7: $cd $56 $32
    jr z, jr_003_5acd                             ; $5aca: $28 $01

    inc c                                         ; $5acc: $0c

jr_003_5acd:
    pop hl                                        ; $5acd: $e1
    inc a                                         ; $5ace: $3c
    cp b                                          ; $5acf: $b8
    jr nz, jr_003_5abf                            ; $5ad0: $20 $ed

    ld a, c                                       ; $5ad2: $79
    pop de                                        ; $5ad3: $d1
    pop bc                                        ; $5ad4: $c1
    ret                                           ; $5ad5: $c9


Call_003_5ad6:
    ld e, $00                                     ; $5ad6: $1e $00
    ld hl, $cb29                                  ; $5ad8: $21 $29 $cb

jr_003_5adb:
    ld a, [hl+]                                   ; $5adb: $2a
    or [hl]                                       ; $5adc: $b6
    jr z, jr_003_5ae7                             ; $5add: $28 $08

    inc e                                         ; $5adf: $1c
    inc hl                                        ; $5ae0: $23
    inc hl                                        ; $5ae1: $23
    ld a, e                                       ; $5ae2: $7b
    cp $11                                        ; $5ae3: $fe $11
    jr nz, jr_003_5adb                            ; $5ae5: $20 $f4

jr_003_5ae7:
    ld a, e                                       ; $5ae7: $7b
    ret                                           ; $5ae8: $c9


Call_003_5ae9:
    call Call_003_5ab3                            ; $5ae9: $cd $b3 $5a
    or a                                          ; $5aec: $b7
    ret z                                         ; $5aed: $c8

    ld hl, $cb29                                  ; $5aee: $21 $29 $cb
    ld a, [hl+]                                   ; $5af1: $2a
    ld h, [hl]                                    ; $5af2: $66
    ld l, a                                       ; $5af3: $6f
    or h                                          ; $5af4: $b4
    ret                                           ; $5af5: $c9


Call_003_5af6:
Jump_003_5af6:
    rst $18                                       ; $5af6: $df
    ld c, $00                                     ; $5af7: $0e $00
    ld d, $05                                     ; $5af9: $16 $05
    ld e, $0f                                     ; $5afb: $1e $0f
    ld hl, $01a0                                  ; $5afd: $21 $a0 $01
    call Call_000_13c2                            ; $5b00: $cd $c2 $13
    rst $20                                       ; $5b03: $e7
    call Call_000_3308                            ; $5b04: $cd $08 $33
    rst $18                                       ; $5b07: $df
    call Call_003_5ab3                            ; $5b08: $cd $b3 $5a
    or a                                          ; $5b0b: $b7
    jr nz, jr_003_5b30                            ; $5b0c: $20 $22

    ld a, $04                                     ; $5b0e: $3e $04
    ld [$c234], a                                 ; $5b10: $ea $34 $c2
    ld a, $70                                     ; $5b13: $3e $70
    ld [$c1eb], a                                 ; $5b15: $ea $eb $c1
    ld hl, $5949                                  ; $5b18: $21 $49 $59
    call Call_000_301f                            ; $5b1b: $cd $1f $30
    ld hl, $004f                                  ; $5b1e: $21 $4f $00
    ldh [$c1], a                                  ; $5b21: $e0 $c1
    ld a, $1a                                     ; $5b23: $3e $1a
    ldh [$bd], a                                  ; $5b25: $e0 $bd
    ld a, $6e                                     ; $5b27: $3e $6e
    ldh [$be], a                                  ; $5b29: $e0 $be
    call Call_000_33c4                            ; $5b2b: $cd $c4 $33
    jr jr_003_5ba5                                ; $5b2e: $18 $75

jr_003_5b30:
    ld hl, $cb29                                  ; $5b30: $21 $29 $cb
    ld a, [hl+]                                   ; $5b33: $2a
    ld h, [hl]                                    ; $5b34: $66
    ld l, a                                       ; $5b35: $6f
    or h                                          ; $5b36: $b4
    jr nz, jr_003_5b5b                            ; $5b37: $20 $22

    ld hl, $5949                                  ; $5b39: $21 $49 $59
    call Call_000_301f                            ; $5b3c: $cd $1f $30
    ld a, $70                                     ; $5b3f: $3e $70
    ld [$c1eb], a                                 ; $5b41: $ea $eb $c1
    ld a, $04                                     ; $5b44: $3e $04
    ld [$c234], a                                 ; $5b46: $ea $34 $c2
    ld hl, $0052                                  ; $5b49: $21 $52 $00
    ldh [$c1], a                                  ; $5b4c: $e0 $c1
    ld a, $1a                                     ; $5b4e: $3e $1a
    ldh [$bd], a                                  ; $5b50: $e0 $bd
    ld a, $6e                                     ; $5b52: $3e $6e
    ldh [$be], a                                  ; $5b54: $e0 $be
    call Call_000_33c4                            ; $5b56: $cd $c4 $33
    jr jr_003_5ba5                                ; $5b59: $18 $4a

jr_003_5b5b:
    ld hl, $5942                                  ; $5b5b: $21 $42 $59
    call Call_000_301f                            ; $5b5e: $cd $1f $30
    ld a, $01                                     ; $5b61: $3e $01
    ld [$c234], a                                 ; $5b63: $ea $34 $c2
    ld a, $68                                     ; $5b66: $3e $68
    ld [$c1eb], a                                 ; $5b68: $ea $eb $c1
    call Call_003_5ad6                            ; $5b6b: $cd $d6 $5a
    ld b, a                                       ; $5b6e: $47
    cp $04                                        ; $5b6f: $fe $04
    jr c, jr_003_5b75                             ; $5b71: $38 $02

    ld b, $04                                     ; $5b73: $06 $04

jr_003_5b75:
    ld a, [$cbeb]                                 ; $5b75: $fa $eb $cb
    ld hl, $cb29                                  ; $5b78: $21 $29 $cb
    call Call_000_3185                            ; $5b7b: $cd $85 $31
    ld e, l                                       ; $5b7e: $5d
    ld d, h                                       ; $5b7f: $54

jr_003_5b80:
    ld a, [de]                                    ; $5b80: $1a
    inc de                                        ; $5b81: $13
    ldh [$c1], a                                  ; $5b82: $e0 $c1
    ld a, $be                                     ; $5b84: $3e $be
    ldh [$bd], a                                  ; $5b86: $e0 $bd
    ld a, $6e                                     ; $5b88: $3e $6e
    ldh [$be], a                                  ; $5b8a: $e0 $be
    call Call_000_33c4                            ; $5b8c: $cd $c4 $33
    ld a, [de]                                    ; $5b8f: $1a
    ld l, a                                       ; $5b90: $6f
    inc de                                        ; $5b91: $13
    ld a, [de]                                    ; $5b92: $1a
    ld h, a                                       ; $5b93: $67
    inc de                                        ; $5b94: $13
    ldh [$c1], a                                  ; $5b95: $e0 $c1
    ld a, $1a                                     ; $5b97: $3e $1a
    ldh [$bd], a                                  ; $5b99: $e0 $bd
    ld a, $6e                                     ; $5b9b: $3e $6e
    ldh [$be], a                                  ; $5b9d: $e0 $be
    call Call_000_33c4                            ; $5b9f: $cd $c4 $33
    dec b                                         ; $5ba2: $05
    jr nz, jr_003_5b80                            ; $5ba3: $20 $db

jr_003_5ba5:
    jp RST_20                                     ; $5ba5: $c3 $20 $00


Call_003_5ba8:
    push hl                                       ; $5ba8: $e5
    ld hl, $614a                                  ; $5ba9: $21 $4a $61
    call Call_000_3256                            ; $5bac: $cd $56 $32
    pop hl                                        ; $5baf: $e1
    ret                                           ; $5bb0: $c9


Call_003_5bb1:
    ldh [$bc], a                                  ; $5bb1: $e0 $bc
    ldh a, [rSVBK]                                ; $5bb3: $f0 $70
    push af                                       ; $5bb5: $f5
    ld a, $05                                     ; $5bb6: $3e $05
    ldh [rSVBK], a                                ; $5bb8: $e0 $70
    ldh a, [$bc]                                  ; $5bba: $f0 $bc
    push de                                       ; $5bbc: $d5
    push hl                                       ; $5bbd: $e5
    ld e, a                                       ; $5bbe: $5f
    ld hl, $d407                                  ; $5bbf: $21 $07 $d4
    ld a, [hl+]                                   ; $5bc2: $2a
    ld h, [hl]                                    ; $5bc3: $66
    ld l, a                                       ; $5bc4: $6f
    ld a, h                                       ; $5bc5: $7c
    or a                                          ; $5bc6: $b7
    jr nz, jr_003_5bd5                            ; $5bc7: $20 $0c

    ld a, e                                       ; $5bc9: $7b
    call Call_003_5a7c                            ; $5bca: $cd $7c $5a
    ld h, a                                       ; $5bcd: $67
    ld a, l                                       ; $5bce: $7d
    sub h                                         ; $5bcf: $94
    ld a, $01                                     ; $5bd0: $3e $01
    jr nc, jr_003_5bd5                            ; $5bd2: $30 $01

    xor a                                         ; $5bd4: $af

jr_003_5bd5:
    pop hl                                        ; $5bd5: $e1
    pop de                                        ; $5bd6: $d1
    ldh [$bc], a                                  ; $5bd7: $e0 $bc
    pop af                                        ; $5bd9: $f1
    ldh [rSVBK], a                                ; $5bda: $e0 $70
    ldh a, [$bc]                                  ; $5bdc: $f0 $bc
    or a                                          ; $5bde: $b7
    ret                                           ; $5bdf: $c9


Call_003_5be0:
    ld bc, $005a                                  ; $5be0: $01 $5a $00
    ld hl, $cb29                                  ; $5be3: $21 $29 $cb
    call Call_000_112e                            ; $5be6: $cd $2e $11
    ld bc, $cb29                                  ; $5be9: $01 $29 $cb
    ld de, $001c                                  ; $5bec: $11 $1c $00
    call Call_003_5a70                            ; $5bef: $cd $70 $5a
    xor a                                         ; $5bf2: $af

jr_003_5bf3:
    call Call_000_3256                            ; $5bf3: $cd $56 $32
    jr z, jr_003_5c16                             ; $5bf6: $28 $1e

    ld [$cb87], a                                 ; $5bf8: $ea $87 $cb
    call Call_003_5ba8                            ; $5bfb: $cd $a8 $5b
    jr z, jr_003_5c13                             ; $5bfe: $28 $13

    call Call_003_5bb1                            ; $5c00: $cd $b1 $5b
    jr z, jr_003_5c13                             ; $5c03: $28 $0e

    ld a, [$cb87]                                 ; $5c05: $fa $87 $cb
    call Call_003_5a7c                            ; $5c08: $cd $7c $5a
    ld [bc], a                                    ; $5c0b: $02
    inc bc                                        ; $5c0c: $03
    ld a, e                                       ; $5c0d: $7b
    ld [bc], a                                    ; $5c0e: $02
    inc bc                                        ; $5c0f: $03
    ld a, d                                       ; $5c10: $7a
    ld [bc], a                                    ; $5c11: $02
    inc bc                                        ; $5c12: $03

jr_003_5c13:
    ld a, [$cb87]                                 ; $5c13: $fa $87 $cb

jr_003_5c16:
    inc de                                        ; $5c16: $13
    inc de                                        ; $5c17: $13
    inc de                                        ; $5c18: $13
    inc a                                         ; $5c19: $3c
    cp $1e                                        ; $5c1a: $fe $1e
    jr nz, jr_003_5bf3                            ; $5c1c: $20 $d5

    ret                                           ; $5c1e: $c9


    ld bc, $001e                                  ; $5c1f: $01 $1e $00
    nop                                           ; $5c22: $00
    nop                                           ; $5c23: $00
    ret z                                         ; $5c24: $c8

    nop                                           ; $5c25: $00
    rlca                                          ; $5c26: $07
    ld bc, $020a                                  ; $5c27: $01 $0a $02
    ld [bc], a                                    ; $5c2a: $02
    ld [bc], a                                    ; $5c2b: $02
    nop                                           ; $5c2c: $00
    nop                                           ; $5c2d: $00
    inc b                                         ; $5c2e: $04
    nop                                           ; $5c2f: $00
    inc bc                                        ; $5c30: $03
    nop                                           ; $5c31: $00
    ld bc, $022f                                  ; $5c32: $01 $2f $02
    dec l                                         ; $5c35: $2d
    nop                                           ; $5c36: $00
    nop                                           ; $5c37: $00
    nop                                           ; $5c38: $00
    or h                                          ; $5c39: $b4
    nop                                           ; $5c3a: $00
    add hl, de                                    ; $5c3b: $19
    ld bc, $0528                                  ; $5c3c: $01 $28 $05
    inc d                                         ; $5c3f: $14
    inc d                                         ; $5c40: $14
    nop                                           ; $5c41: $00
    nop                                           ; $5c42: $00
    rlca                                          ; $5c43: $07
    nop                                           ; $5c44: $00
    dec b                                         ; $5c45: $05
    nop                                           ; $5c46: $00
    inc bc                                        ; $5c47: $03
    dec hl                                        ; $5c48: $2b
    inc bc                                        ; $5c49: $03
    ld b, c                                       ; $5c4a: $41
    nop                                           ; $5c4b: $00
    nop                                           ; $5c4c: $00
    nop                                           ; $5c4d: $00
    inc a                                         ; $5c4e: $3c
    nop                                           ; $5c4f: $00
    jr z, jr_003_5c53                             ; $5c50: $28 $01

    ld d, b                                       ; $5c52: $50

jr_003_5c53:
    dec b                                         ; $5c53: $05
    jr z, jr_003_5c7e                             ; $5c54: $28 $28

    nop                                           ; $5c56: $00
    nop                                           ; $5c57: $00
    inc d                                         ; $5c58: $14
    nop                                           ; $5c59: $00
    inc d                                         ; $5c5a: $14
    nop                                           ; $5c5b: $00
    ld a, [bc]                                    ; $5c5c: $0a
    ld de, $3204                                  ; $5c5d: $11 $04 $32
    nop                                           ; $5c60: $00
    nop                                           ; $5c61: $00
    nop                                           ; $5c62: $00
    ld a, b                                       ; $5c63: $78
    nop                                           ; $5c64: $00
    add hl, de                                    ; $5c65: $19
    ld bc, $140f                                  ; $5c66: $01 $0f $14
    ld h, h                                       ; $5c69: $64
    ld h, h                                       ; $5c6a: $64
    nop                                           ; $5c6b: $00
    nop                                           ; $5c6c: $00
    rrca                                          ; $5c6d: $0f
    nop                                           ; $5c6e: $00
    sub [hl]                                      ; $5c6f: $96
    nop                                           ; $5c70: $00
    inc a                                         ; $5c71: $3c
    db $fc                                        ; $5c72: $fc
    dec b                                         ; $5c73: $05
    ld d, b                                       ; $5c74: $50
    nop                                           ; $5c75: $00
    nop                                           ; $5c76: $00
    nop                                           ; $5c77: $00
    ld h, h                                       ; $5c78: $64
    nop                                           ; $5c79: $00
    ld e, $01                                     ; $5c7a: $1e $01
    add hl, de                                    ; $5c7c: $19
    ret z                                         ; $5c7d: $c8

jr_003_5c7e:
    inc d                                         ; $5c7e: $14
    ret z                                         ; $5c7f: $c8

    nop                                           ; $5c80: $00
    nop                                           ; $5c81: $00
    ld a, [de]                                    ; $5c82: $1a
    nop                                           ; $5c83: $00
    sub [hl]                                      ; $5c84: $96
    nop                                           ; $5c85: $00
    ld d, b                                       ; $5c86: $50
    ld d, l                                       ; $5c87: $55
    ld b, $64                                     ; $5c88: $06 $64
    nop                                           ; $5c8a: $00
    nop                                           ; $5c8b: $00
    nop                                           ; $5c8c: $00
    ld d, b                                       ; $5c8d: $50
    nop                                           ; $5c8e: $00
    dec l                                         ; $5c8f: $2d
    ld bc, $141e                                  ; $5c90: $01 $1e $14
    ret z                                         ; $5c93: $c8

    ret z                                         ; $5c94: $c8

    nop                                           ; $5c95: $00
    nop                                           ; $5c96: $00
    ld l, $00                                     ; $5c97: $2e $00
    sub [hl]                                      ; $5c99: $96
    nop                                           ; $5c9a: $00
    ld h, h                                       ; $5c9b: $64
    db $fd                                        ; $5c9c: $fd
    rlca                                          ; $5c9d: $07
    ld a, b                                       ; $5c9e: $78
    nop                                           ; $5c9f: $00
    nop                                           ; $5ca0: $00
    nop                                           ; $5ca1: $00
    ld [hl-], a                                   ; $5ca2: $32
    nop                                           ; $5ca3: $00
    ld b, c                                       ; $5ca4: $41
    ld bc, $c832                                  ; $5ca5: $01 $32 $c8
    ret z                                         ; $5ca8: $c8

    inc d                                         ; $5ca9: $14
    nop                                           ; $5caa: $00
    nop                                           ; $5cab: $00
    ld a, $00                                     ; $5cac: $3e $00
    sub [hl]                                      ; $5cae: $96
    nop                                           ; $5caf: $00
    ld a, b                                       ; $5cb0: $78
    db $10                                        ; $5cb1: $10
    ld [$0028], sp                                ; $5cb2: $08 $28 $00
    nop                                           ; $5cb5: $00
    nop                                           ; $5cb6: $00
    call c, $0a00                                 ; $5cb7: $dc $00 $0a
    ld bc, $0a0a                                  ; $5cba: $01 $0a $0a
    ld a, [bc]                                    ; $5cbd: $0a
    ld a, [bc]                                    ; $5cbe: $0a
    nop                                           ; $5cbf: $00
    nop                                           ; $5cc0: $00
    ld b, $00                                     ; $5cc1: $06 $00
    inc d                                         ; $5cc3: $14
    nop                                           ; $5cc4: $00
    dec b                                         ; $5cc5: $05
    ld d, [hl]                                    ; $5cc6: $56
    add hl, bc                                    ; $5cc7: $09
    ld [hl-], a                                   ; $5cc8: $32
    nop                                           ; $5cc9: $00
    nop                                           ; $5cca: $00
    nop                                           ; $5ccb: $00
    ld a, b                                       ; $5ccc: $78
    nop                                           ; $5ccd: $00
    inc d                                         ; $5cce: $14
    ld bc, $190a                                  ; $5ccf: $01 $0a $19
    nop                                           ; $5cd2: $00
    rrca                                          ; $5cd3: $0f
    nop                                           ; $5cd4: $00
    nop                                           ; $5cd5: $00
    ld a, [bc]                                    ; $5cd6: $0a
    nop                                           ; $5cd7: $00
    jr z, jr_003_5cda                             ; $5cd8: $28 $00

jr_003_5cda:
    inc d                                         ; $5cda: $14
    cpl                                           ; $5cdb: $2f
    ld a, [bc]                                    ; $5cdc: $0a
    inc a                                         ; $5cdd: $3c
    nop                                           ; $5cde: $00
    nop                                           ; $5cdf: $00
    nop                                           ; $5ce0: $00
    ld d, b                                       ; $5ce1: $50
    nop                                           ; $5ce2: $00
    inc hl                                        ; $5ce3: $23
    dec b                                         ; $5ce4: $05
    rrca                                          ; $5ce5: $0f
    ld d, b                                       ; $5ce6: $50
    inc d                                         ; $5ce7: $14
    ld e, a                                       ; $5ce8: $5f
    nop                                           ; $5ce9: $00
    nop                                           ; $5cea: $00
    inc d                                         ; $5ceb: $14
    nop                                           ; $5cec: $00
    ld b, [hl]                                    ; $5ced: $46
    nop                                           ; $5cee: $00
    jr z, jr_003_5d1c                             ; $5cef: $28 $2b

    dec bc                                        ; $5cf1: $0b
    ret z                                         ; $5cf2: $c8

    nop                                           ; $5cf3: $00
    nop                                           ; $5cf4: $00
    nop                                           ; $5cf5: $00
    jr z, jr_003_5cf8                             ; $5cf6: $28 $00

jr_003_5cf8:
    scf                                           ; $5cf8: $37
    dec b                                         ; $5cf9: $05
    rrca                                          ; $5cfa: $0f
    inc a                                         ; $5cfb: $3c
    ld e, $0a                                     ; $5cfc: $1e $0a
    nop                                           ; $5cfe: $00
    nop                                           ; $5cff: $00
    ld h, h                                       ; $5d00: $64
    nop                                           ; $5d01: $00
    ld e, d                                       ; $5d02: $5a
    nop                                           ; $5d03: $00
    ret z                                         ; $5d04: $c8

    inc bc                                        ; $5d05: $03
    inc c                                         ; $5d06: $0c

    db $0f, $00, $00, $00, $96, $00, $05, $05, $05, $05, $05, $05

    nop                                           ; $5d13: $00
    nop                                           ; $5d14: $00

    db $02, $00, $01, $00, $05, $55

    dec c                                         ; $5d1b: $0d

jr_003_5d1c:
    inc d                                         ; $5d1c: $14
    nop                                           ; $5d1d: $00
    nop                                           ; $5d1e: $00
    nop                                           ; $5d1f: $00
    ld a, b                                       ; $5d20: $78
    nop                                           ; $5d21: $00
    rrca                                          ; $5d22: $0f
    ld bc, $0f0a                                  ; $5d23: $01 $0a $0f
    inc b                                         ; $5d26: $04
    rrca                                          ; $5d27: $0f
    nop                                           ; $5d28: $00
    nop                                           ; $5d29: $00
    ld b, $00                                     ; $5d2a: $06 $00
    ld a, [bc]                                    ; $5d2c: $0a
    nop                                           ; $5d2d: $00
    dec b                                         ; $5d2e: $05
    dec hl                                        ; $5d2f: $2b
    ld c, $1c                                     ; $5d30: $0e $1c
    nop                                           ; $5d32: $00
    nop                                           ; $5d33: $00
    nop                                           ; $5d34: $00
    ld l, [hl]                                    ; $5d35: $6e
    nop                                           ; $5d36: $00
    add hl, de                                    ; $5d37: $19
    ld bc, $1e0f                                  ; $5d38: $01 $0f $1e
    ld [$005f], sp                                ; $5d3b: $08 $5f $00
    nop                                           ; $5d3e: $00
    ld a, [bc]                                    ; $5d3f: $0a
    nop                                           ; $5d40: $00
    ld a, [hl+]                                   ; $5d41: $2a
    nop                                           ; $5d42: $00
    dec bc                                        ; $5d43: $0b
    db $fd                                        ; $5d44: $fd
    rrca                                          ; $5d45: $0f
    jr z, jr_003_5d48                             ; $5d46: $28 $00

jr_003_5d48:
    nop                                           ; $5d48: $00
    nop                                           ; $5d49: $00
    ld h, h                                       ; $5d4a: $64
    nop                                           ; $5d4b: $00
    ld e, $01                                     ; $5d4c: $1e $01
    jr z, @+$3e                                   ; $5d4e: $28 $3c

    ld a, [bc]                                    ; $5d50: $0a
    call RST_00                                   ; $5d51: $cd $00 $00
    inc d                                         ; $5d54: $14
    nop                                           ; $5d55: $00
    ld d, b                                       ; $5d56: $50
    nop                                           ; $5d57: $00
    jr z, jr_003_5d86                             ; $5d58: $28 $2c

    db $10                                        ; $5d5a: $10
    add hl, de                                    ; $5d5b: $19
    nop                                           ; $5d5c: $00
    nop                                           ; $5d5d: $00
    nop                                           ; $5d5e: $00
    inc a                                         ; $5d5f: $3c
    nop                                           ; $5d60: $00
    inc d                                         ; $5d61: $14
    ld bc, $370a                                  ; $5d62: $01 $0a $37
    scf                                           ; $5d65: $37
    rrca                                          ; $5d66: $0f
    nop                                           ; $5d67: $00
    nop                                           ; $5d68: $00
    stop                                          ; $5d69: $10 $00
    add hl, de                                    ; $5d6b: $19
    nop                                           ; $5d6c: $00
    ld a, [bc]                                    ; $5d6d: $0a
    ld a, [hl+]                                   ; $5d6e: $2a
    ld de, $001e                                  ; $5d6f: $11 $1e $00
    nop                                           ; $5d72: $00
    nop                                           ; $5d73: $00
    inc a                                         ; $5d74: $3c
    nop                                           ; $5d75: $00
    inc hl                                        ; $5d76: $23
    ld bc, $4118                                  ; $5d77: $01 $18 $41
    rrca                                          ; $5d7a: $0f
    add hl, de                                    ; $5d7b: $19
    nop                                           ; $5d7c: $00
    nop                                           ; $5d7d: $00
    jr nz, jr_003_5d80                            ; $5d7e: $20 $00

jr_003_5d80:
    scf                                           ; $5d80: $37
    nop                                           ; $5d81: $00
    ld e, $2a                                     ; $5d82: $1e $2a
    ld [de], a                                    ; $5d84: $12
    ld [hl-], a                                   ; $5d85: $32

jr_003_5d86:
    nop                                           ; $5d86: $00
    nop                                           ; $5d87: $00
    nop                                           ; $5d88: $00
    inc a                                         ; $5d89: $3c
    nop                                           ; $5d8a: $00
    jr z, jr_003_5d8e                             ; $5d8b: $28 $01

    ld a, b                                       ; $5d8d: $78

jr_003_5d8e:
    rrca                                          ; $5d8e: $0f
    ld e, a                                       ; $5d8f: $5f
    inc hl                                        ; $5d90: $23
    nop                                           ; $5d91: $00
    nop                                           ; $5d92: $00
    ld b, c                                       ; $5d93: $41
    nop                                           ; $5d94: $00
    ld d, l                                       ; $5d95: $55

jr_003_5d96:
    nop                                           ; $5d96: $00
    jr z, jr_003_5d96                             ; $5d97: $28 $fd

    inc de                                        ; $5d99: $13
    ld e, d                                       ; $5d9a: $5a
    nop                                           ; $5d9b: $00
    nop                                           ; $5d9c: $00
    nop                                           ; $5d9d: $00
    inc a                                         ; $5d9e: $3c
    nop                                           ; $5d9f: $00
    inc a                                         ; $5da0: $3c
    ld bc, $7d78                                  ; $5da1: $01 $78 $7d
    add hl, de                                    ; $5da4: $19
    dec l                                         ; $5da5: $2d
    nop                                           ; $5da6: $00
    nop                                           ; $5da7: $00
    ld c, e                                       ; $5da8: $4b
    nop                                           ; $5da9: $00
    ld a, l                                       ; $5daa: $7d
    nop                                           ; $5dab: $00
    ld [hl-], a                                   ; $5dac: $32
    db $fd                                        ; $5dad: $fd
    inc d                                         ; $5dae: $14
    inc hl                                        ; $5daf: $23
    nop                                           ; $5db0: $00
    nop                                           ; $5db1: $00
    nop                                           ; $5db2: $00
    ret z                                         ; $5db3: $c8

    nop                                           ; $5db4: $00
    ld [de], a                                    ; $5db5: $12
    ld bc, $1432                                  ; $5db6: $01 $32 $14
    ld a, [bc]                                    ; $5db9: $0a
    ld a, [bc]                                    ; $5dba: $0a
    nop                                           ; $5dbb: $00
    nop                                           ; $5dbc: $00
    inc c                                         ; $5dbd: $0c
    nop                                           ; $5dbe: $00
    ld a, [bc]                                    ; $5dbf: $0a
    nop                                           ; $5dc0: $00
    dec b                                         ; $5dc1: $05
    db $fc                                        ; $5dc2: $fc
    dec d                                         ; $5dc3: $15
    rrca                                          ; $5dc4: $0f
    nop                                           ; $5dc5: $00
    nop                                           ; $5dc6: $00
    nop                                           ; $5dc7: $00
    inc d                                         ; $5dc8: $14
    nop                                           ; $5dc9: $00
    dec c                                         ; $5dca: $0d
    ld bc, $0a0a                                  ; $5dcb: $01 $0a $0a
    ld a, [bc]                                    ; $5dce: $0a
    ld a, [bc]                                    ; $5dcf: $0a
    nop                                           ; $5dd0: $00
    nop                                           ; $5dd1: $00
    dec b                                         ; $5dd2: $05
    nop                                           ; $5dd3: $00
    ld [bc], a                                    ; $5dd4: $02
    nop                                           ; $5dd5: $00
    inc b                                         ; $5dd6: $04
    ld d, [hl]                                    ; $5dd7: $56
    ld d, $14                                     ; $5dd8: $16 $14
    nop                                           ; $5dda: $00
    nop                                           ; $5ddb: $00
    nop                                           ; $5ddc: $00
    call c, Call_000_1000                         ; $5ddd: $dc $00 $10
    dec b                                         ; $5de0: $05
    or h                                          ; $5de1: $b4
    rrca                                          ; $5de2: $0f
    ld a, [bc]                                    ; $5de3: $0a
    ld a, [bc]                                    ; $5de4: $0a
    nop                                           ; $5de5: $00
    nop                                           ; $5de6: $00
    ld a, [bc]                                    ; $5de7: $0a
    nop                                           ; $5de8: $00
    ld a, [bc]                                    ; $5de9: $0a
    nop                                           ; $5dea: $00
    ld e, $2f                                     ; $5deb: $1e $2f
    rla                                           ; $5ded: $17
    rla                                           ; $5dee: $17
    nop                                           ; $5def: $00
    nop                                           ; $5df0: $00
    nop                                           ; $5df1: $00
    call c, Call_000_1400                         ; $5df2: $dc $00 $14
    dec b                                         ; $5df5: $05
    ld a, [bc]                                    ; $5df6: $0a
    ld [de], a                                    ; $5df7: $12
    ld h, h                                       ; $5df8: $64
    ld h, h                                       ; $5df9: $64
    ld d, $64                                     ; $5dfa: $16 $64
    rrca                                          ; $5dfc: $0f
    nop                                           ; $5dfd: $00
    inc d                                         ; $5dfe: $14
    nop                                           ; $5dff: $00
    ld e, $fc                                     ; $5e00: $1e $fc
    jr @+$1e                                      ; $5e02: $18 $1c

    nop                                           ; $5e04: $00
    nop                                           ; $5e05: $00
    nop                                           ; $5e06: $00
    ret z                                         ; $5e07: $c8

    nop                                           ; $5e08: $00
    add hl, de                                    ; $5e09: $19
    dec b                                         ; $5e0a: $05
    inc c                                         ; $5e0b: $0c
    inc d                                         ; $5e0c: $14
    ld h, h                                       ; $5e0d: $64
    ld h, h                                       ; $5e0e: $64
    ld d, $64                                     ; $5e0f: $16 $64
    add hl, de                                    ; $5e11: $19
    nop                                           ; $5e12: $00
    ld [hl-], a                                   ; $5e13: $32
    nop                                           ; $5e14: $00
    ld e, d                                       ; $5e15: $5a
    db $fc                                        ; $5e16: $fc
    add hl, de                                    ; $5e17: $19
    inc a                                         ; $5e18: $3c
    nop                                           ; $5e19: $00
    nop                                           ; $5e1a: $00
    nop                                           ; $5e1b: $00
    sub [hl]                                      ; $5e1c: $96
    nop                                           ; $5e1d: $00
    inc hl                                        ; $5e1e: $23
    ld bc, $140e                                  ; $5e1f: $01 $0e $14
    ld h, h                                       ; $5e22: $64
    ld h, h                                       ; $5e23: $64
    ld d, $64                                     ; $5e24: $16 $64
    jr z, jr_003_5e28                             ; $5e26: $28 $00

jr_003_5e28:
    call c, Call_003_6400                         ; $5e28: $dc $00 $64
    db $fd                                        ; $5e2b: $fd
    ld a, [de]                                    ; $5e2c: $1a
    ld h, h                                       ; $5e2d: $64
    nop                                           ; $5e2e: $00
    nop                                           ; $5e2f: $00
    nop                                           ; $5e30: $00
    call c, Call_000_1400                         ; $5e31: $dc $00 $14
    rrca                                          ; $5e34: $0f
    dec b                                         ; $5e35: $05
    rrca                                          ; $5e36: $0f
    dec b                                         ; $5e37: $05
    add hl, de                                    ; $5e38: $19
    rla                                           ; $5e39: $17
    ld h, h                                       ; $5e3a: $64
    inc a                                         ; $5e3b: $3c
    nop                                           ; $5e3c: $00
    add hl, de                                    ; $5e3d: $19
    nop                                           ; $5e3e: $00
    rrca                                          ; $5e3f: $0f
    inc l                                         ; $5e40: $2c
    dec de                                        ; $5e41: $1b
    inc a                                         ; $5e42: $3c
    nop                                           ; $5e43: $00
    nop                                           ; $5e44: $00
    nop                                           ; $5e45: $00
    ld a, b                                       ; $5e46: $78
    nop                                           ; $5e47: $00
    add hl, de                                    ; $5e48: $19
    ld bc, $3205                                  ; $5e49: $01 $05 $32
    ld [hl-], a                                   ; $5e4c: $32
    ld h, h                                       ; $5e4d: $64
    nop                                           ; $5e4e: $00
    nop                                           ; $5e4f: $00
    inc d                                         ; $5e50: $14
    nop                                           ; $5e51: $00
    ld e, $00                                     ; $5e52: $1e $00
    inc d                                         ; $5e54: $14
    db $fd                                        ; $5e55: $fd
    inc e                                         ; $5e56: $1c
    ldh a, [rP1]                                  ; $5e57: $f0 $00
    nop                                           ; $5e59: $00
    nop                                           ; $5e5a: $00
    ld e, $00                                     ; $5e5b: $1e $00
    scf                                           ; $5e5d: $37
    ld bc, $c850                                  ; $5e5e: $01 $50 $c8
    ret z                                         ; $5e61: $c8

    dec b                                         ; $5e62: $05
    nop                                           ; $5e63: $00
    nop                                           ; $5e64: $00
    ld a, b                                       ; $5e65: $78
    nop                                           ; $5e66: $00
    ld a, b                                       ; $5e67: $78
    nop                                           ; $5e68: $00

jr_003_5e69:
    ld h, h                                       ; $5e69: $64
    cp $1d                                        ; $5e6a: $fe $1d
    sub [hl]                                      ; $5e6c: $96
    nop                                           ; $5e6d: $00
    nop                                           ; $5e6e: $00
    nop                                           ; $5e6f: $00
    ld e, d                                       ; $5e70: $5a
    nop                                           ; $5e71: $00
    ld e, $01                                     ; $5e72: $1e $01
    add hl, de                                    ; $5e74: $19
    dec b                                         ; $5e75: $05
    ld h, h                                       ; $5e76: $64
    call c, RST_00                                ; $5e77: $dc $00 $00
    inc a                                         ; $5e7a: $3c
    nop                                           ; $5e7b: $00
    jr z, jr_003_5e7e                             ; $5e7c: $28 $00

jr_003_5e7e:
    sub [hl]                                      ; $5e7e: $96
    jr nc, @+$20                                  ; $5e7f: $30 $1e

    sub [hl]                                      ; $5e81: $96
    nop                                           ; $5e82: $00
    nop                                           ; $5e83: $00
    nop                                           ; $5e84: $00
    inc a                                         ; $5e85: $3c
    nop                                           ; $5e86: $00
    inc hl                                        ; $5e87: $23
    ld bc, $0519                                  ; $5e88: $01 $19 $05
    jr z, jr_003_5e69                             ; $5e8b: $28 $dc

    nop                                           ; $5e8d: $00
    nop                                           ; $5e8e: $00
    inc a                                         ; $5e8f: $3c
    nop                                           ; $5e90: $00
    jr z, jr_003_5e93                             ; $5e91: $28 $00

jr_003_5e93:
    ld a, [$1f2c]                                 ; $5e93: $fa $2c $1f
    inc a                                         ; $5e96: $3c
    nop                                           ; $5e97: $00
    nop                                           ; $5e98: $00
    nop                                           ; $5e99: $00
    inc a                                         ; $5e9a: $3c
    nop                                           ; $5e9b: $00
    ld a, [bc]                                    ; $5e9c: $0a
    ld bc, $0f0f                                  ; $5e9d: $01 $0f $0f
    ld [hl-], a                                   ; $5ea0: $32
    inc a                                         ; $5ea1: $3c
    add hl, de                                    ; $5ea2: $19
    add hl, de                                    ; $5ea3: $19
    inc c                                         ; $5ea4: $0c
    nop                                           ; $5ea5: $00
    inc d                                         ; $5ea6: $14
    nop                                           ; $5ea7: $00
    ld a, [bc]                                    ; $5ea8: $0a
    db $fc                                        ; $5ea9: $fc
    jr nz, jr_003_5efc                            ; $5eaa: $20 $50

    nop                                           ; $5eac: $00
    nop                                           ; $5ead: $00
    nop                                           ; $5eae: $00
    jr z, jr_003_5eb1                             ; $5eaf: $28 $00

jr_003_5eb1:
    add hl, de                                    ; $5eb1: $19
    ld bc, $191e                                  ; $5eb2: $01 $1e $19
    ld b, [hl]                                    ; $5eb5: $46
    ld a, b                                       ; $5eb6: $78
    add hl, de                                    ; $5eb7: $19
    ld hl, $001c                                  ; $5eb8: $21 $1c $00
    scf                                           ; $5ebb: $37
    nop                                           ; $5ebc: $00
    rrca                                          ; $5ebd: $0f
    db $fd                                        ; $5ebe: $fd
    ld hl, $001e                                  ; $5ebf: $21 $1e $00
    nop                                           ; $5ec2: $00
    nop                                           ; $5ec3: $00
    call c, $1900                                 ; $5ec4: $dc $00 $19
    ld bc, $190f                                  ; $5ec7: $01 $0f $19
    add hl, de                                    ; $5eca: $19
    ld a, [bc]                                    ; $5ecb: $0a
    nop                                           ; $5ecc: $00
    nop                                           ; $5ecd: $00
    rrca                                          ; $5ece: $0f
    nop                                           ; $5ecf: $00
    dec b                                         ; $5ed0: $05
    nop                                           ; $5ed1: $00
    ld [bc], a                                    ; $5ed2: $02
    cpl                                           ; $5ed3: $2f
    ld [hl+], a                                   ; $5ed4: $22
    inc a                                         ; $5ed5: $3c
    nop                                           ; $5ed6: $00
    nop                                           ; $5ed7: $00
    nop                                           ; $5ed8: $00
    and b                                         ; $5ed9: $a0
    nop                                           ; $5eda: $00
    ld [hl-], a                                   ; $5edb: $32
    ld bc, $2846                                  ; $5edc: $01 $46 $28
    jr z, jr_003_5eff                             ; $5edf: $28 $1e

    nop                                           ; $5ee1: $00
    nop                                           ; $5ee2: $00
    add hl, de                                    ; $5ee3: $19
    nop                                           ; $5ee4: $00
    inc d                                         ; $5ee5: $14
    nop                                           ; $5ee6: $00
    ld [$23fc], sp                                ; $5ee7: $08 $fc $23
    ld a, b                                       ; $5eea: $78
    nop                                           ; $5eeb: $00
    nop                                           ; $5eec: $00
    nop                                           ; $5eed: $00
    ld a, b                                       ; $5eee: $78
    nop                                           ; $5eef: $00
    ld d, b                                       ; $5ef0: $50
    ld bc, $501e                                  ; $5ef1: $01 $1e $50
    add hl, de                                    ; $5ef4: $19
    inc d                                         ; $5ef5: $14
    nop                                           ; $5ef6: $00
    nop                                           ; $5ef7: $00
    jr z, jr_003_5efa                             ; $5ef8: $28 $00

jr_003_5efa:
    jr z, jr_003_5efc                             ; $5efa: $28 $00

jr_003_5efc:
    ld a, [bc]                                    ; $5efc: $0a
    db $fd                                        ; $5efd: $fd
    inc h                                         ; $5efe: $24

jr_003_5eff:
    dec l                                         ; $5eff: $2d
    nop                                           ; $5f00: $00
    nop                                           ; $5f01: $00
    nop                                           ; $5f02: $00
    ld a, [$1900]                                 ; $5f03: $fa $00 $19
    ld bc, $3c0f                                  ; $5f06: $01 $0f $3c
    inc a                                         ; $5f09: $3c
    inc d                                         ; $5f0a: $14
    ld a, [de]                                    ; $5f0b: $1a
    add hl, de                                    ; $5f0c: $19
    ld [$0500], sp                                ; $5f0d: $08 $00 $05
    nop                                           ; $5f10: $00
    dec b                                         ; $5f11: $05
    db $fc                                        ; $5f12: $fc
    dec h                                         ; $5f13: $25
    inc a                                         ; $5f14: $3c
    nop                                           ; $5f15: $00
    nop                                           ; $5f16: $00
    nop                                           ; $5f17: $00
    call c, $2300                                 ; $5f18: $dc $00 $23
    ld bc, $5019                                  ; $5f1b: $01 $19 $50
    inc d                                         ; $5f1e: $14
    ld e, $1a                                     ; $5f1f: $1e $1a
    inc hl                                        ; $5f21: $23
    stop                                          ; $5f22: $10 $00
    inc d                                         ; $5f24: $14
    nop                                           ; $5f25: $00
    rrca                                          ; $5f26: $0f
    db $fd                                        ; $5f27: $fd
    ld h, $50                                     ; $5f28: $26 $50
    nop                                           ; $5f2a: $00
    nop                                           ; $5f2b: $00
    nop                                           ; $5f2c: $00
    ld a, [$1200]                                 ; $5f2d: $fa $00 $12
    ld bc, $140f                                  ; $5f30: $01 $0f $14
    inc d                                         ; $5f33: $14
    inc d                                         ; $5f34: $14
    nop                                           ; $5f35: $00
    nop                                           ; $5f36: $00
    rrca                                          ; $5f37: $0f
    nop                                           ; $5f38: $00
    ld a, [bc]                                    ; $5f39: $0a
    nop                                           ; $5f3a: $00
    dec b                                         ; $5f3b: $05
    ld d, a                                       ; $5f3c: $57
    daa                                           ; $5f3d: $27
    jr z, jr_003_5f40                             ; $5f3e: $28 $00

jr_003_5f40:
    nop                                           ; $5f40: $00
    nop                                           ; $5f41: $00
    ld a, b                                       ; $5f42: $78
    nop                                           ; $5f43: $00
    add hl, de                                    ; $5f44: $19
    ld bc, $0a0a                                  ; $5f45: $01 $0a $0a
    ld a, [bc]                                    ; $5f48: $0a
    ld a, [bc]                                    ; $5f49: $0a
    nop                                           ; $5f4a: $00
    nop                                           ; $5f4b: $00
    add hl, de                                    ; $5f4c: $19
    nop                                           ; $5f4d: $00
    inc d                                         ; $5f4e: $14
    nop                                           ; $5f4f: $00
    ld a, [bc]                                    ; $5f50: $0a
    db $fc                                        ; $5f51: $fc
    jr z, jr_003_5fa4                             ; $5f52: $28 $50

    nop                                           ; $5f54: $00
    nop                                           ; $5f55: $00
    nop                                           ; $5f56: $00
    ld d, b                                       ; $5f57: $50
    nop                                           ; $5f58: $00
    jr z, @+$03                                   ; $5f59: $28 $01

    ld e, $28                                     ; $5f5b: $1e $28
    rrca                                          ; $5f5d: $0f
    jr z, jr_003_5f60                             ; $5f5e: $28 $00

jr_003_5f60:
    nop                                           ; $5f60: $00
    jr z, jr_003_5f63                             ; $5f61: $28 $00

jr_003_5f63:
    ld a, b                                       ; $5f63: $78
    nop                                           ; $5f64: $00
    inc a                                         ; $5f65: $3c
    inc l                                         ; $5f66: $2c
    add hl, hl                                    ; $5f67: $29
    sub [hl]                                      ; $5f68: $96
    nop                                           ; $5f69: $00
    nop                                           ; $5f6a: $00
    nop                                           ; $5f6b: $00
    ld a, b                                       ; $5f6c: $78
    nop                                           ; $5f6d: $00
    inc d                                         ; $5f6e: $14
    jr z, jr_003_5f8a                             ; $5f6f: $28 $19

    ld [hl-], a                                   ; $5f71: $32
    ld [hl-], a                                   ; $5f72: $32
    rst $38                                       ; $5f73: $ff
    nop                                           ; $5f74: $00
    nop                                           ; $5f75: $00
    ld [hl-], a                                   ; $5f76: $32
    nop                                           ; $5f77: $00
    ld h, h                                       ; $5f78: $64
    nop                                           ; $5f79: $00
    ld [hl-], a                                   ; $5f7a: $32
    db $fd                                        ; $5f7b: $fd
    ld a, [hl+]                                   ; $5f7c: $2a
    ld [$0002], sp                                ; $5f7d: $08 $02 $00
    nop                                           ; $5f80: $00
    and b                                         ; $5f81: $a0
    nop                                           ; $5f82: $00
    inc a                                         ; $5f83: $3c
    ld bc, $b464                                  ; $5f84: $01 $64 $b4
    inc d                                         ; $5f87: $14
    ret z                                         ; $5f88: $c8

    nop                                           ; $5f89: $00

jr_003_5f8a:
    nop                                           ; $5f8a: $00
    adc h                                         ; $5f8b: $8c
    nop                                           ; $5f8c: $00
    ld a, b                                       ; $5f8d: $78
    nop                                           ; $5f8e: $00
    ld h, h                                       ; $5f8f: $64
    db $fd                                        ; $5f90: $fd
    dec hl                                        ; $5f91: $2b
    ld a, [$0000]                                 ; $5f92: $fa $00 $00
    nop                                           ; $5f95: $00
    or h                                          ; $5f96: $b4
    nop                                           ; $5f97: $00
    add hl, de                                    ; $5f98: $19
    ld bc, $1414                                  ; $5f99: $01 $14 $14
    adc h                                         ; $5f9c: $8c
    adc h                                         ; $5f9d: $8c
    nop                                           ; $5f9e: $00
    nop                                           ; $5f9f: $00
    ld h, h                                       ; $5fa0: $64
    nop                                           ; $5fa1: $00
    ld d, b                                       ; $5fa2: $50
    nop                                           ; $5fa3: $00

jr_003_5fa4:
    ld e, $1b                                     ; $5fa4: $1e $1b
    inc l                                         ; $5fa6: $2c
    add hl, de                                    ; $5fa7: $19
    nop                                           ; $5fa8: $00
    nop                                           ; $5fa9: $00
    nop                                           ; $5faa: $00
    ld a, [bc]                                    ; $5fab: $0a
    nop                                           ; $5fac: $00
    ld a, [de]                                    ; $5fad: $1a
    ld bc, $1419                                  ; $5fae: $01 $19 $14
    ret z                                         ; $5fb1: $c8

    ld a, [bc]                                    ; $5fb2: $0a
    nop                                           ; $5fb3: $00
    nop                                           ; $5fb4: $00
    jr z, jr_003_5fb7                             ; $5fb5: $28 $00

jr_003_5fb7:
    ld bc, $0100                                  ; $5fb7: $01 $00 $01
    ld e, [hl]                                    ; $5fba: $5e
    dec l                                         ; $5fbb: $2d
    sub [hl]                                      ; $5fbc: $96
    nop                                           ; $5fbd: $00
    nop                                           ; $5fbe: $00
    nop                                           ; $5fbf: $00
    sub [hl]                                      ; $5fc0: $96
    nop                                           ; $5fc1: $00
    ld [hl-], a                                   ; $5fc2: $32
    ld bc, $64ff                                  ; $5fc3: $01 $ff $64
    ld h, h                                       ; $5fc6: $64
    ld h, h                                       ; $5fc7: $64
    nop                                           ; $5fc8: $00
    nop                                           ; $5fc9: $00
    ld e, b                                       ; $5fca: $58
    ld [bc], a                                    ; $5fcb: $02
    ret z                                         ; $5fcc: $c8

    nop                                           ; $5fcd: $00
    ret z                                         ; $5fce: $c8

    dec c                                         ; $5fcf: $0d
    ld l, $c8                                     ; $5fd0: $2e $c8
    nop                                           ; $5fd2: $00
    nop                                           ; $5fd3: $00
    nop                                           ; $5fd4: $00
    ld [hl-], a                                   ; $5fd5: $32
    nop                                           ; $5fd6: $00
    ld b, [hl]                                    ; $5fd7: $46
    ld bc, $64c8                                  ; $5fd8: $01 $c8 $64
    ld h, h                                       ; $5fdb: $64
    ld h, h                                       ; $5fdc: $64
    nop                                           ; $5fdd: $00
    nop                                           ; $5fde: $00
    ld a, a                                       ; $5fdf: $7f
    inc bc                                        ; $5fe0: $03
    call c, $dc00                                 ; $5fe1: $dc $00 $dc
    inc d                                         ; $5fe4: $14
    cpl                                           ; $5fe5: $2f
    ld a, [$0000]                                 ; $5fe6: $fa $00 $00
    nop                                           ; $5fe9: $00
    ld h, h                                       ; $5fea: $64
    nop                                           ; $5feb: $00
    inc a                                         ; $5fec: $3c
    ld bc, $dc64                                  ; $5fed: $01 $64 $dc
    call c, Call_000_00dc                         ; $5ff0: $dc $dc $00
    nop                                           ; $5ff3: $00
    ret nz                                        ; $5ff4: $c0

    inc bc                                        ; $5ff5: $03
    ld a, [$fa00]                                 ; $5ff6: $fa $00 $fa
    ld b, $30                                     ; $5ff9: $06 $30
    ld e, d                                       ; $5ffb: $5a
    nop                                           ; $5ffc: $00
    nop                                           ; $5ffd: $00
    nop                                           ; $5ffe: $00
    ld h, h                                       ; $5fff: $64
    nop                                           ; $6000: $00
    ld [hl-], a                                   ; $6001: $32
    ld bc, $14b4                                  ; $6002: $01 $b4 $14
    ld l, [hl]                                    ; $6005: $6e
    rst $38                                       ; $6006: $ff
    jr @+$66                                      ; $6007: $18 $64

    jr z, jr_003_600b                             ; $6009: $28 $00

jr_003_600b:
    ld [hl-], a                                   ; $600b: $32
    nop                                           ; $600c: $00
    ld [hl-], a                                   ; $600d: $32
    db $fc                                        ; $600e: $fc
    ld sp, $0078                                  ; $600f: $31 $78 $00
    nop                                           ; $6012: $00
    nop                                           ; $6013: $00
    ld a, b                                       ; $6014: $78
    nop                                           ; $6015: $00
    inc hl                                        ; $6016: $23
    ld bc, $1ec8                                  ; $6017: $01 $c8 $1e
    adc h                                         ; $601a: $8c
    rst $38                                       ; $601b: $ff
    jr @+$66                                      ; $601c: $18 $64

    scf                                           ; $601e: $37
    nop                                           ; $601f: $00
    sub [hl]                                      ; $6020: $96
    nop                                           ; $6021: $00
    sub [hl]                                      ; $6022: $96
    db $fc                                        ; $6023: $fc
    ld [hl-], a                                   ; $6024: $32
    and b                                         ; $6025: $a0
    nop                                           ; $6026: $00
    nop                                           ; $6027: $00
    nop                                           ; $6028: $00
    adc h                                         ; $6029: $8c
    nop                                           ; $602a: $00
    jr z, @+$03                                   ; $602b: $28 $01

    call c, $a028                                 ; $602d: $dc $28 $a0
    rst $38                                       ; $6030: $ff
    jr jr_003_6097                                ; $6031: $18 $64

    ld b, [hl]                                    ; $6033: $46
    nop                                           ; $6034: $00
    ld a, [$fa00]                                 ; $6035: $fa $00 $fa
    db $fd                                        ; $6038: $fd
    inc sp                                        ; $6039: $33
    ld d, b                                       ; $603a: $50
    nop                                           ; $603b: $00
    nop                                           ; $603c: $00
    nop                                           ; $603d: $00
    or h                                          ; $603e: $b4
    nop                                           ; $603f: $00
    dec l                                         ; $6040: $2d
    ld bc, $1418                                  ; $6041: $01 $18 $14
    ld e, $3c                                     ; $6044: $1e $3c
    nop                                           ; $6046: $00
    nop                                           ; $6047: $00
    ld e, $00                                     ; $6048: $1e $00
    ld a, [bc]                                    ; $604a: $0a
    nop                                           ; $604b: $00
    ld [hl-], a                                   ; $604c: $32
    inc l                                         ; $604d: $2c
    inc [hl]                                      ; $604e: $34
    inc hl                                        ; $604f: $23
    nop                                           ; $6050: $00
    nop                                           ; $6051: $00
    nop                                           ; $6052: $00
    jr z, jr_003_6055                             ; $6053: $28 $00

jr_003_6055:
    add hl, de                                    ; $6055: $19
    ld bc, $280d                                  ; $6056: $01 $0d $28
    rrca                                          ; $6059: $0f
    jr z, jr_003_605c                             ; $605a: $28 $00

jr_003_605c:
    nop                                           ; $605c: $00
    rrca                                          ; $605d: $0f
    nop                                           ; $605e: $00
    inc d                                         ; $605f: $14
    nop                                           ; $6060: $00
    ld a, [bc]                                    ; $6061: $0a
    dec hl                                        ; $6062: $2b
    dec [hl]                                      ; $6063: $35
    ld e, $00                                     ; $6064: $1e $00
    nop                                           ; $6066: $00
    nop                                           ; $6067: $00
    adc h                                         ; $6068: $8c
    nop                                           ; $6069: $00
    ld [de], a                                    ; $606a: $12
    ld bc, $1e0f                                  ; $606b: $01 $0f $1e
    ld a, [bc]                                    ; $606e: $0a
    adc h                                         ; $606f: $8c
    dec e                                         ; $6070: $1d
    rrca                                          ; $6071: $0f
    rrca                                          ; $6072: $0f
    nop                                           ; $6073: $00
    inc d                                         ; $6074: $14
    nop                                           ; $6075: $00
    ld a, [bc]                                    ; $6076: $0a
    ld c, l                                       ; $6077: $4d
    ld [hl], $2d                                  ; $6078: $36 $2d
    nop                                           ; $607a: $00
    nop                                           ; $607b: $00
    nop                                           ; $607c: $00
    add d                                         ; $607d: $82
    nop                                           ; $607e: $00
    inc e                                         ; $607f: $1c
    ld bc, $2814                                  ; $6080: $01 $14 $28
    inc d                                         ; $6083: $14
    adc h                                         ; $6084: $8c
    dec e                                         ; $6085: $1d
    inc d                                         ; $6086: $14
    inc e                                         ; $6087: $1c
    nop                                           ; $6088: $00
    inc d                                         ; $6089: $14
    nop                                           ; $608a: $00

jr_003_608b:
    ld a, [bc]                                    ; $608b: $0a
    ld a, [hl+]                                   ; $608c: $2a
    scf                                           ; $608d: $37
    ld b, [hl]                                    ; $608e: $46
    nop                                           ; $608f: $00
    nop                                           ; $6090: $00
    nop                                           ; $6091: $00
    ld a, b                                       ; $6092: $78
    nop                                           ; $6093: $00
    jr z, jr_003_6097                             ; $6094: $28 $01

    add hl, de                                    ; $6096: $19

jr_003_6097:
    ld [hl-], a                                   ; $6097: $32
    ld e, $8c                                     ; $6098: $1e $8c
    dec e                                         ; $609a: $1d
    inc hl                                        ; $609b: $23
    jr z, jr_003_609e                             ; $609c: $28 $00

jr_003_609e:
    inc d                                         ; $609e: $14
    nop                                           ; $609f: $00
    ld a, [bc]                                    ; $60a0: $0a
    ld a, [hl+]                                   ; $60a1: $2a
    jr c, jr_003_60fe                             ; $60a2: $38 $5a

    nop                                           ; $60a4: $00
    nop                                           ; $60a5: $00
    nop                                           ; $60a6: $00
    ld l, [hl]                                    ; $60a7: $6e
    nop                                           ; $60a8: $00
    ld [hl-], a                                   ; $60a9: $32
    ld bc, $3c28                                  ; $60aa: $01 $28 $3c
    jr z, jr_003_608b                             ; $60ad: $28 $dc

    dec e                                         ; $60af: $1d
    dec l                                         ; $60b0: $2d
    inc a                                         ; $60b1: $3c
    nop                                           ; $60b2: $00
    inc d                                         ; $60b3: $14
    nop                                           ; $60b4: $00
    ld a, [bc]                                    ; $60b5: $0a
    inc l                                         ; $60b6: $2c
    add hl, sp                                    ; $60b7: $39
    ld d, b                                       ; $60b8: $50
    nop                                           ; $60b9: $00
    nop                                           ; $60ba: $00
    nop                                           ; $60bb: $00
    ld b, [hl]                                    ; $60bc: $46
    nop                                           ; $60bd: $00
    rrca                                          ; $60be: $0f
    ld bc, $0a3c                                  ; $60bf: $01 $3c $0a
    ld a, [bc]                                    ; $60c2: $0a
    ld e, $00                                     ; $60c3: $1e $00
    nop                                           ; $60c5: $00
    add hl, de                                    ; $60c6: $19
    nop                                           ; $60c7: $00
    jr z, jr_003_60ca                             ; $60c8: $28 $00

jr_003_60ca:
    ld a, [bc]                                    ; $60ca: $0a
    rra                                           ; $60cb: $1f
    ld a, [hl-]                                   ; $60cc: $3a
    ld h, h                                       ; $60cd: $64
    nop                                           ; $60ce: $00
    nop                                           ; $60cf: $00
    nop                                           ; $60d0: $00
    inc d                                         ; $60d1: $14
    nop                                           ; $60d2: $00
    jr z, @+$03                                   ; $60d3: $28 $01

    jp nc, $1eb4                                  ; $60d5: $d2 $b4 $1e

    jr z, jr_003_60da                             ; $60d8: $28 $00

jr_003_60da:
    nop                                           ; $60da: $00
    inc a                                         ; $60db: $3c
    nop                                           ; $60dc: $00
    ld e, $00                                     ; $60dd: $1e $00
    ld a, [bc]                                    ; $60df: $0a
    jr nc, jr_003_611d                            ; $60e0: $30 $3b

    ret z                                         ; $60e2: $c8

    nop                                           ; $60e3: $00
    nop                                           ; $60e4: $00
    nop                                           ; $60e5: $00
    inc d                                         ; $60e6: $14
    nop                                           ; $60e7: $00
    ld h, h                                       ; $60e8: $64
    ld bc, $e6fa                                  ; $60e9: $01 $fa $e6
    ld l, [hl]                                    ; $60ec: $6e
    ld e, $00                                     ; $60ed: $1e $00
    nop                                           ; $60ef: $00
    call c, Call_000_2800                         ; $60f0: $dc $00 $28
    nop                                           ; $60f3: $00
    ld a, [bc]                                    ; $60f4: $0a
    ld [hl+], a                                   ; $60f5: $22
    inc a                                         ; $60f6: $3c
    jp nz, Jump_000_0001                          ; $60f7: $c2 $01 $00

    nop                                           ; $60fa: $00
    ld h, h                                       ; $60fb: $64
    nop                                           ; $60fc: $00
    adc h                                         ; $60fd: $8c

jr_003_60fe:
    ld bc, $64fa                                  ; $60fe: $01 $fa $64
    add d                                         ; $6101: $82
    inc a                                         ; $6102: $3c
    dec de                                        ; $6103: $1b
    ld h, h                                       ; $6104: $64
    db $fc                                        ; $6105: $fc
    inc bc                                        ; $6106: $03
    ldh a, [rP1]                                  ; $6107: $f0 $00
    jp nc, $3d2c                                  ; $6109: $d2 $2c $3d

    ld e, b                                       ; $610c: $58
    ld [bc], a                                    ; $610d: $02
    nop                                           ; $610e: $00
    nop                                           ; $610f: $00
    inc a                                         ; $6110: $3c
    nop                                           ; $6111: $00
    or h                                          ; $6112: $b4
    ld bc, $ff32                                  ; $6113: $01 $32 $ff
    ret z                                         ; $6116: $c8

    ret z                                         ; $6117: $c8

    nop                                           ; $6118: $00
    nop                                           ; $6119: $00
    call nz, $f004                                ; $611a: $c4 $04 $f0

jr_003_611d:
    nop                                           ; $611d: $00
    call c, Call_000_05fe                         ; $611e: $dc $fe $05
    inc c                                         ; $6121: $0c
    db $18                                        ; $6122: $18

    db $14

    jr z, jr_003_6162                             ; $6124: $28 $3c

    inc d                                         ; $6126: $14
    jr z, @+$3e                                   ; $6127: $28 $3c

    jr z, jr_003_617b                             ; $6129: $28 $50

    ld a, b                                       ; $612b: $78
    ld [hl-], a                                   ; $612c: $32
    nop                                           ; $612d: $00
    nop                                           ; $612e: $00
    nop                                           ; $612f: $00
    db $01                                        ; $6130: $01

    db $00

    inc b                                         ; $6132: $04
    db $08                                        ; $6133: $08

    db $02

    ld [$0310], sp                                ; $6135: $08 $10 $03

jr_003_6138:
    ld [$0810], sp                                ; $6138: $08 $10 $08
    rrca                                          ; $613b: $0f
    ld e, $0a                                     ; $613c: $1e $0a
    ld a, [bc]                                    ; $613e: $0a
    ld e, $3c                                     ; $613f: $1e $3c
    ld d, b                                       ; $6141: $50
    inc b                                         ; $6142: $04
    adc c                                         ; $6143: $89
    nop                                           ; $6144: $00
    nop                                           ; $6145: $00

    db $04

    add b                                         ; $6147: $80
    nop                                           ; $6148: $00
    nop                                           ; $6149: $00

    db $ff

    rst $38                                       ; $614b: $ff
    ld bc, $1600                                  ; $614c: $01 $00 $16
    ld h, d                                       ; $614f: $62
    ld d, $62                                     ; $6150: $16 $62
    ld d, $62                                     ; $6152: $16 $62
    ld d, $62                                     ; $6154: $16 $62
    ld d, $62                                     ; $6156: $16 $62
    ld d, $62                                     ; $6158: $16 $62
    ld d, $62                                     ; $615a: $16 $62
    ld d, $62                                     ; $615c: $16 $62
    ld d, $62                                     ; $615e: $16 $62

    db $1e, $62

jr_003_6162:
    ld l, $62                                     ; $6162: $2e $62
    ld [hl], $62                                  ; $6164: $36 $62
    ld a, $62                                     ; $6166: $3e $62
    ld b, [hl]                                    ; $6168: $46
    ld h, d                                       ; $6169: $62
    ld c, [hl]                                    ; $616a: $4e
    ld h, d                                       ; $616b: $62
    ld c, [hl]                                    ; $616c: $4e
    ld h, d                                       ; $616d: $62
    ld d, [hl]                                    ; $616e: $56
    ld h, d                                       ; $616f: $62
    ld e, [hl]                                    ; $6170: $5e
    ld h, d                                       ; $6171: $62
    ld h, [hl]                                    ; $6172: $66
    ld h, d                                       ; $6173: $62
    ld l, [hl]                                    ; $6174: $6e
    ld h, d                                       ; $6175: $62
    halt                                          ; $6176: $76
    ld h, d                                       ; $6177: $62
    halt                                          ; $6178: $76
    ld h, d                                       ; $6179: $62
    ld a, [hl]                                    ; $617a: $7e

jr_003_617b:
    ld h, d                                       ; $617b: $62
    add [hl]                                      ; $617c: $86
    ld h, d                                       ; $617d: $62
    adc [hl]                                      ; $617e: $8e
    ld h, d                                       ; $617f: $62
    sub [hl]                                      ; $6180: $96
    ld h, d                                       ; $6181: $62
    sbc [hl]                                      ; $6182: $9e
    ld h, d                                       ; $6183: $62
    and [hl]                                      ; $6184: $a6
    ld h, d                                       ; $6185: $62
    xor [hl]                                      ; $6186: $ae
    ld h, d                                       ; $6187: $62
    or [hl]                                       ; $6188: $b6
    ld h, d                                       ; $6189: $62
    cp [hl]                                       ; $618a: $be
    ld h, d                                       ; $618b: $62
    add $62                                       ; $618c: $c6 $62
    adc $62                                       ; $618e: $ce $62
    sub $62                                       ; $6190: $d6 $62
    sbc $62                                       ; $6192: $de $62
    and $62                                       ; $6194: $e6 $62
    xor $62                                       ; $6196: $ee $62
    or $62                                        ; $6198: $f6 $62
    cp $62                                        ; $619a: $fe $62
    ld b, $63                                     ; $619c: $06 $63
    ld c, $63                                     ; $619e: $0e $63
    ld d, $63                                     ; $61a0: $16 $63
    ld e, $63                                     ; $61a2: $1e $63
    ld b, [hl]                                    ; $61a4: $46
    ld h, e                                       ; $61a5: $63
    ld d, [hl]                                    ; $61a6: $56
    ld h, e                                       ; $61a7: $63
    ld d, [hl]                                    ; $61a8: $56
    ld h, e                                       ; $61a9: $63
    ld d, [hl]                                    ; $61aa: $56
    ld h, e                                       ; $61ab: $63
    ld d, [hl]                                    ; $61ac: $56
    ld h, e                                       ; $61ad: $63
    ld d, [hl]                                    ; $61ae: $56
    ld h, e                                       ; $61af: $63
    ld d, [hl]                                    ; $61b0: $56
    ld h, e                                       ; $61b1: $63
    ld d, [hl]                                    ; $61b2: $56
    ld h, e                                       ; $61b3: $63
    ld h, [hl]                                    ; $61b4: $66
    ld h, e                                       ; $61b5: $63
    ld l, [hl]                                    ; $61b6: $6e
    ld h, e                                       ; $61b7: $63
    ld e, [hl]                                    ; $61b8: $5e
    ld h, e                                       ; $61b9: $63
    halt                                          ; $61ba: $76
    ld h, e                                       ; $61bb: $63
    ld a, [hl]                                    ; $61bc: $7e
    ld h, e                                       ; $61bd: $63
    add [hl]                                      ; $61be: $86
    ld h, e                                       ; $61bf: $63
    adc [hl]                                      ; $61c0: $8e
    ld h, e                                       ; $61c1: $63
    sub [hl]                                      ; $61c2: $96
    ld h, e                                       ; $61c3: $63
    sbc [hl]                                      ; $61c4: $9e
    ld h, e                                       ; $61c5: $63
    and [hl]                                      ; $61c6: $a6
    ld h, e                                       ; $61c7: $63
    xor [hl]                                      ; $61c8: $ae
    ld h, e                                       ; $61c9: $63
    or [hl]                                       ; $61ca: $b6
    ld h, e                                       ; $61cb: $63
    cp [hl]                                       ; $61cc: $be
    ld h, e                                       ; $61cd: $63
    add $63                                       ; $61ce: $c6 $63
    adc $63                                       ; $61d0: $ce $63
    ld h, $62                                     ; $61d2: $26 $62
    sub $63                                       ; $61d4: $d6 $63
    sbc $63                                       ; $61d6: $de $63
    ld d, [hl]                                    ; $61d8: $56
    ld h, e                                       ; $61d9: $63
    and $63                                       ; $61da: $e6 $63
    and $63                                       ; $61dc: $e6 $63
    xor $63                                       ; $61de: $ee $63
    or $63                                        ; $61e0: $f6 $63
    ld c, [hl]                                    ; $61e2: $4e
    ld h, e                                       ; $61e3: $63
    cp $63                                        ; $61e4: $fe $63
    ld b, $64                                     ; $61e6: $06 $64
    ld c, $64                                     ; $61e8: $0e $64
    ld d, $64                                     ; $61ea: $16 $64
    and $63                                       ; $61ec: $e6 $63
    ld e, $64                                     ; $61ee: $1e $64
    ld h, $63                                     ; $61f0: $26 $63
    ld l, $63                                     ; $61f2: $2e $63
    ld [hl], $63                                  ; $61f4: $36 $63
    ld a, $63                                     ; $61f6: $3e $63
    ld h, $64                                     ; $61f8: $26 $64
    ld l, $64                                     ; $61fa: $2e $64
    ld [hl], $64                                  ; $61fc: $36 $64
    ld a, $64                                     ; $61fe: $3e $64
    ld b, [hl]                                    ; $6200: $46
    ld h, h                                       ; $6201: $64
    ld c, [hl]                                    ; $6202: $4e
    ld h, h                                       ; $6203: $64
    ld d, [hl]                                    ; $6204: $56
    ld h, h                                       ; $6205: $64
    ld e, [hl]                                    ; $6206: $5e
    ld h, h                                       ; $6207: $64
    ld h, [hl]                                    ; $6208: $66
    ld h, h                                       ; $6209: $64
    ld l, [hl]                                    ; $620a: $6e
    ld h, h                                       ; $620b: $64
    halt                                          ; $620c: $76
    ld h, h                                       ; $620d: $64
    xor [hl]                                      ; $620e: $ae
    ld h, h                                       ; $620f: $64
    or c                                          ; $6210: $b1
    ld h, h                                       ; $6211: $64
    or h                                          ; $6212: $b4
    ld h, h                                       ; $6213: $64
    or a                                          ; $6214: $b7
    ld h, h                                       ; $6215: $64
    adc l                                         ; $6216: $8d
    ld h, h                                       ; $6217: $64
    sub b                                         ; $6218: $90
    ld h, h                                       ; $6219: $64
    adc l                                         ; $621a: $8d
    ld h, h                                       ; $621b: $64
    sub b                                         ; $621c: $90
    ld h, h                                       ; $621d: $64

    db $93, $64

    sub b                                         ; $6220: $90
    ld h, h                                       ; $6221: $64
    sub e                                         ; $6222: $93
    ld h, h                                       ; $6223: $64
    sub [hl]                                      ; $6224: $96
    ld h, h                                       ; $6225: $64
    sub e                                         ; $6226: $93
    ld h, h                                       ; $6227: $64
    sub b                                         ; $6228: $90
    ld h, h                                       ; $6229: $64
    sbc c                                         ; $622a: $99
    ld h, h                                       ; $622b: $64
    sub [hl]                                      ; $622c: $96
    ld h, h                                       ; $622d: $64
    add c                                         ; $622e: $81
    ld h, h                                       ; $622f: $64
    add h                                         ; $6230: $84
    ld h, h                                       ; $6231: $64
    add a                                         ; $6232: $87
    ld h, h                                       ; $6233: $64
    adc d                                         ; $6234: $8a
    ld h, h                                       ; $6235: $64
    sbc h                                         ; $6236: $9c
    ld h, h                                       ; $6237: $64
    sbc a                                         ; $6238: $9f
    ld h, h                                       ; $6239: $64
    and d                                         ; $623a: $a2
    ld h, h                                       ; $623b: $64
    and l                                         ; $623c: $a5
    ld h, h                                       ; $623d: $64
    sbc a                                         ; $623e: $9f
    ld h, h                                       ; $623f: $64
    and d                                         ; $6240: $a2
    ld h, h                                       ; $6241: $64
    and l                                         ; $6242: $a5
    ld h, h                                       ; $6243: $64
    and d                                         ; $6244: $a2
    ld h, h                                       ; $6245: $64
    and d                                         ; $6246: $a2
    ld h, h                                       ; $6247: $64
    and l                                         ; $6248: $a5
    ld h, h                                       ; $6249: $64
    and d                                         ; $624a: $a2
    ld h, h                                       ; $624b: $64
    and l                                         ; $624c: $a5
    ld h, h                                       ; $624d: $64
    cp d                                          ; $624e: $ba
    ld h, h                                       ; $624f: $64
    cp l                                          ; $6250: $bd
    ld h, h                                       ; $6251: $64
    ret nz                                        ; $6252: $c0

    ld h, h                                       ; $6253: $64
    jp $c064                                      ; $6254: $c3 $64 $c0


    ld h, h                                       ; $6257: $64
    jp $c964                                      ; $6258: $c3 $64 $c9


    ld h, h                                       ; $625b: $64
    add $64                                       ; $625c: $c6 $64
    call z, $cf64                                 ; $625e: $cc $64 $cf
    ld h, h                                       ; $6261: $64
    call z, $cf64                                 ; $6262: $cc $64 $cf
    ld h, h                                       ; $6265: $64
    add [hl]                                      ; $6266: $86
    ld h, l                                       ; $6267: $65
    adc c                                         ; $6268: $89
    ld h, l                                       ; $6269: $65
    adc h                                         ; $626a: $8c
    ld h, l                                       ; $626b: $65
    adc a                                         ; $626c: $8f
    ld h, l                                       ; $626d: $65
    xor [hl]                                      ; $626e: $ae
    ld h, h                                       ; $626f: $64
    or c                                          ; $6270: $b1
    ld h, h                                       ; $6271: $64
    or h                                          ; $6272: $b4
    ld h, h                                       ; $6273: $64
    or a                                          ; $6274: $b7
    ld h, h                                       ; $6275: $64
    and d                                         ; $6276: $a2
    ld h, h                                       ; $6277: $64
    and l                                         ; $6278: $a5
    ld h, h                                       ; $6279: $64
    xor b                                         ; $627a: $a8
    ld h, h                                       ; $627b: $64
    xor e                                         ; $627c: $ab
    ld h, h                                       ; $627d: $64
    xor b                                         ; $627e: $a8
    ld h, h                                       ; $627f: $64
    xor e                                         ; $6280: $ab
    ld h, h                                       ; $6281: $64
    xor [hl]                                      ; $6282: $ae
    ld h, h                                       ; $6283: $64
    or c                                          ; $6284: $b1
    ld h, h                                       ; $6285: $64
    cp d                                          ; $6286: $ba
    ld h, h                                       ; $6287: $64
    cp l                                          ; $6288: $bd
    ld h, h                                       ; $6289: $64
    ret nz                                        ; $628a: $c0

    ld h, h                                       ; $628b: $64
    jp $d264                                      ; $628c: $c3 $64 $d2


    ld h, h                                       ; $628f: $64
    push de                                       ; $6290: $d5
    ld h, h                                       ; $6291: $64
    ret c                                         ; $6292: $d8

    ld h, h                                       ; $6293: $64
    db $db                                        ; $6294: $db
    ld h, h                                       ; $6295: $64
    sbc $64                                       ; $6296: $de $64
    pop hl                                        ; $6298: $e1
    ld h, h                                       ; $6299: $64
    db $e4                                        ; $629a: $e4
    ld h, h                                       ; $629b: $64
    rst $20                                       ; $629c: $e7
    ld h, h                                       ; $629d: $64
    ld [$ed64], a                                 ; $629e: $ea $64 $ed
    ld h, h                                       ; $62a1: $64
    ldh a, [$64]                                  ; $62a2: $f0 $64
    di                                            ; $62a4: $f3
    ld h, h                                       ; $62a5: $64
    or $64                                        ; $62a6: $f6 $64
    ld sp, hl                                     ; $62a8: $f9
    ld h, h                                       ; $62a9: $64
    db $fc                                        ; $62aa: $fc
    ld h, h                                       ; $62ab: $64
    rst $38                                       ; $62ac: $ff
    ld h, h                                       ; $62ad: $64
    ld [bc], a                                    ; $62ae: $02
    ld h, l                                       ; $62af: $65
    dec b                                         ; $62b0: $05
    ld h, l                                       ; $62b1: $65
    dec b                                         ; $62b2: $05
    ld h, l                                       ; $62b3: $65
    dec bc                                        ; $62b4: $0b
    ld h, l                                       ; $62b5: $65
    ldh a, [$64]                                  ; $62b6: $f0 $64
    rst $38                                       ; $62b8: $ff
    ld h, h                                       ; $62b9: $64
    ld [$e165], sp                                ; $62ba: $08 $65 $e1
    ld h, h                                       ; $62bd: $64
    adc h                                         ; $62be: $8c
    ld h, l                                       ; $62bf: $65
    adc a                                         ; $62c0: $8f
    ld h, l                                       ; $62c1: $65
    sub d                                         ; $62c2: $92
    ld h, l                                       ; $62c3: $65
    adc a                                         ; $62c4: $8f
    ld h, l                                       ; $62c5: $65
    adc h                                         ; $62c6: $8c
    ld h, l                                       ; $62c7: $65
    adc a                                         ; $62c8: $8f
    ld h, l                                       ; $62c9: $65
    sub d                                         ; $62ca: $92
    ld h, l                                       ; $62cb: $65
    adc a                                         ; $62cc: $8f
    ld h, l                                       ; $62cd: $65
    adc h                                         ; $62ce: $8c
    ld h, l                                       ; $62cf: $65
    adc a                                         ; $62d0: $8f
    ld h, l                                       ; $62d1: $65
    sub d                                         ; $62d2: $92
    ld h, l                                       ; $62d3: $65
    adc a                                         ; $62d4: $8f
    ld h, l                                       ; $62d5: $65
    sub d                                         ; $62d6: $92
    ld h, l                                       ; $62d7: $65
    sub l                                         ; $62d8: $95
    ld h, l                                       ; $62d9: $65
    sbc b                                         ; $62da: $98
    ld h, l                                       ; $62db: $65
    sbc b                                         ; $62dc: $98
    ld h, l                                       ; $62dd: $65
    sub d                                         ; $62de: $92
    ld h, l                                       ; $62df: $65
    sub l                                         ; $62e0: $95
    ld h, l                                       ; $62e1: $65
    sbc b                                         ; $62e2: $98
    ld h, l                                       ; $62e3: $65
    sbc b                                         ; $62e4: $98
    ld h, l                                       ; $62e5: $65
    sub d                                         ; $62e6: $92
    ld h, l                                       ; $62e7: $65
    sub l                                         ; $62e8: $95
    ld h, l                                       ; $62e9: $65
    sbc b                                         ; $62ea: $98
    ld h, l                                       ; $62eb: $65
    sbc b                                         ; $62ec: $98
    ld h, l                                       ; $62ed: $65
    and d                                         ; $62ee: $a2
    ld h, h                                       ; $62ef: $64
    and l                                         ; $62f0: $a5
    ld h, h                                       ; $62f1: $64
    xor b                                         ; $62f2: $a8
    ld h, h                                       ; $62f3: $64
    xor e                                         ; $62f4: $ab
    ld h, h                                       ; $62f5: $64
    xor [hl]                                      ; $62f6: $ae
    ld h, h                                       ; $62f7: $64
    or c                                          ; $62f8: $b1
    ld h, h                                       ; $62f9: $64
    or h                                          ; $62fa: $b4
    ld h, h                                       ; $62fb: $64
    or a                                          ; $62fc: $b7
    ld h, h                                       ; $62fd: $64
    cp d                                          ; $62fe: $ba
    ld h, h                                       ; $62ff: $64
    cp l                                          ; $6300: $bd
    ld h, h                                       ; $6301: $64
    ret nz                                        ; $6302: $c0

    ld h, h                                       ; $6303: $64
    jp $b464                                      ; $6304: $c3 $64 $b4


    ld h, h                                       ; $6307: $64
    or a                                          ; $6308: $b7
    ld h, h                                       ; $6309: $64
    ret nz                                        ; $630a: $c0

    ld h, h                                       ; $630b: $64
    jp Jump_003_4d64                              ; $630c: $c3 $64 $4d


    ld h, l                                       ; $630f: $65
    ld d, [hl]                                    ; $6310: $56
    ld h, l                                       ; $6311: $65
    ld d, e                                       ; $6312: $53
    ld h, l                                       ; $6313: $65
    ld e, c                                       ; $6314: $59
    ld h, l                                       ; $6315: $65
    ret nz                                        ; $6316: $c0

    ld h, h                                       ; $6317: $64
    cp l                                          ; $6318: $bd
    ld h, h                                       ; $6319: $64
    xor [hl]                                      ; $631a: $ae
    ld h, h                                       ; $631b: $64
    or h                                          ; $631c: $b4
    ld h, h                                       ; $631d: $64
    dec e                                         ; $631e: $1d
    ld h, l                                       ; $631f: $65
    jr nz, jr_003_6387                            ; $6320: $20 $65

    inc hl                                        ; $6322: $23
    ld h, l                                       ; $6323: $65
    ld h, $65                                     ; $6324: $26 $65
    add hl, hl                                    ; $6326: $29
    ld h, l                                       ; $6327: $65
    inc l                                         ; $6328: $2c
    ld h, l                                       ; $6329: $65
    cpl                                           ; $632a: $2f
    ld h, l                                       ; $632b: $65
    ld [hl-], a                                   ; $632c: $32
    ld h, l                                       ; $632d: $65
    dec [hl]                                      ; $632e: $35
    ld h, l                                       ; $632f: $65
    ld [hl-], a                                   ; $6330: $32
    ld h, l                                       ; $6331: $65
    dec [hl]                                      ; $6332: $35
    ld h, l                                       ; $6333: $65
    jr c, jr_003_639b                             ; $6334: $38 $65

    ld b, c                                       ; $6336: $41
    ld h, l                                       ; $6337: $65
    ld b, h                                       ; $6338: $44
    ld h, l                                       ; $6339: $65
    ld b, a                                       ; $633a: $47
    ld h, l                                       ; $633b: $65
    ld c, d                                       ; $633c: $4a
    ld h, l                                       ; $633d: $65
    add hl, hl                                    ; $633e: $29
    ld h, l                                       ; $633f: $65
    inc l                                         ; $6340: $2c
    ld h, l                                       ; $6341: $65
    cpl                                           ; $6342: $2f
    ld h, l                                       ; $6343: $65
    ld [hl-], a                                   ; $6344: $32
    ld h, l                                       ; $6345: $65
    ld e, h                                       ; $6346: $5c
    ld h, l                                       ; $6347: $65
    ld e, a                                       ; $6348: $5f
    ld h, l                                       ; $6349: $65
    ld h, d                                       ; $634a: $62
    ld h, l                                       ; $634b: $65
    ld h, l                                       ; $634c: $65
    ld h, l                                       ; $634d: $65
    sbc h                                         ; $634e: $9c
    ld h, h                                       ; $634f: $64
    sbc a                                         ; $6350: $9f
    ld h, h                                       ; $6351: $64
    and d                                         ; $6352: $a2
    ld h, h                                       ; $6353: $64
    and l                                         ; $6354: $a5
    ld h, h                                       ; $6355: $64
    ld [$ed64], a                                 ; $6356: $ea $64 $ed
    ld h, h                                       ; $6359: $64
    ldh a, [$64]                                  ; $635a: $f0 $64
    di                                            ; $635c: $f3
    ld h, h                                       ; $635d: $64
    xor [hl]                                      ; $635e: $ae
    ld h, h                                       ; $635f: $64
    or c                                          ; $6360: $b1
    ld h, h                                       ; $6361: $64
    or h                                          ; $6362: $b4
    ld h, h                                       ; $6363: $64
    or a                                          ; $6364: $b7
    ld h, h                                       ; $6365: $64
    adc l                                         ; $6366: $8d
    ld h, h                                       ; $6367: $64
    sub b                                         ; $6368: $90
    ld h, h                                       ; $6369: $64
    sub e                                         ; $636a: $93
    ld h, h                                       ; $636b: $64
    sub b                                         ; $636c: $90
    ld h, h                                       ; $636d: $64
    xor [hl]                                      ; $636e: $ae
    ld h, h                                       ; $636f: $64
    or c                                          ; $6370: $b1
    ld h, h                                       ; $6371: $64
    or h                                          ; $6372: $b4
    ld h, h                                       ; $6373: $64
    or a                                          ; $6374: $b7
    ld h, h                                       ; $6375: $64
    and d                                         ; $6376: $a2
    ld h, h                                       ; $6377: $64
    and l                                         ; $6378: $a5
    ld h, h                                       ; $6379: $64
    xor b                                         ; $637a: $a8
    ld h, h                                       ; $637b: $64
    xor e                                         ; $637c: $ab
    ld h, h                                       ; $637d: $64
    xor b                                         ; $637e: $a8
    ld h, h                                       ; $637f: $64
    xor e                                         ; $6380: $ab
    ld h, h                                       ; $6381: $64
    xor [hl]                                      ; $6382: $ae
    ld h, h                                       ; $6383: $64
    or c                                          ; $6384: $b1
    ld h, h                                       ; $6385: $64
    sbc h                                         ; $6386: $9c

jr_003_6387:
    ld h, h                                       ; $6387: $64
    sbc a                                         ; $6388: $9f
    ld h, h                                       ; $6389: $64
    and d                                         ; $638a: $a2
    ld h, h                                       ; $638b: $64
    and l                                         ; $638c: $a5
    ld h, h                                       ; $638d: $64
    or h                                          ; $638e: $b4
    ld h, h                                       ; $638f: $64
    or a                                          ; $6390: $b7
    ld h, h                                       ; $6391: $64
    cp d                                          ; $6392: $ba
    ld h, h                                       ; $6393: $64
    cp l                                          ; $6394: $bd
    ld h, h                                       ; $6395: $64
    xor [hl]                                      ; $6396: $ae
    ld h, h                                       ; $6397: $64
    or c                                          ; $6398: $b1
    ld h, h                                       ; $6399: $64
    or h                                          ; $639a: $b4

jr_003_639b:
    ld h, h                                       ; $639b: $64
    or a                                          ; $639c: $b7
    ld h, h                                       ; $639d: $64
    ld l, b                                       ; $639e: $68
    ld h, l                                       ; $639f: $65
    ld l, e                                       ; $63a0: $6b
    ld h, l                                       ; $63a1: $65
    ld l, b                                       ; $63a2: $68
    ld h, l                                       ; $63a3: $65
    ld l, [hl]                                    ; $63a4: $6e
    ld h, l                                       ; $63a5: $65
    xor b                                         ; $63a6: $a8
    ld h, h                                       ; $63a7: $64
    xor e                                         ; $63a8: $ab
    ld h, h                                       ; $63a9: $64
    xor [hl]                                      ; $63aa: $ae
    ld h, h                                       ; $63ab: $64
    or c                                          ; $63ac: $b1
    ld h, h                                       ; $63ad: $64
    ld [hl], h                                    ; $63ae: $74
    ld h, l                                       ; $63af: $65
    ld [hl], c                                    ; $63b0: $71
    ld h, l                                       ; $63b1: $65
    ld [hl], h                                    ; $63b2: $74
    ld h, l                                       ; $63b3: $65
    ld [hl], a                                    ; $63b4: $77
    ld h, l                                       ; $63b5: $65
    ld c, l                                       ; $63b6: $4d
    ld h, l                                       ; $63b7: $65
    ld d, b                                       ; $63b8: $50
    ld h, l                                       ; $63b9: $65
    ld d, e                                       ; $63ba: $53
    ld h, l                                       ; $63bb: $65
    ld d, [hl]                                    ; $63bc: $56
    ld h, l                                       ; $63bd: $65
    ld e, h                                       ; $63be: $5c
    ld h, l                                       ; $63bf: $65
    ld e, a                                       ; $63c0: $5f
    ld h, l                                       ; $63c1: $65
    ld h, d                                       ; $63c2: $62
    ld h, l                                       ; $63c3: $65
    ld h, l                                       ; $63c4: $65
    ld h, l                                       ; $63c5: $65
    sbc h                                         ; $63c6: $9c
    ld h, h                                       ; $63c7: $64
    and d                                         ; $63c8: $a2
    ld h, h                                       ; $63c9: $64
    and l                                         ; $63ca: $a5
    ld h, h                                       ; $63cb: $64
    sbc a                                         ; $63cc: $9f
    ld h, h                                       ; $63cd: $64
    call z, $cc64                                 ; $63ce: $cc $64 $cc
    ld h, h                                       ; $63d1: $64
    call z, $cc64                                 ; $63d2: $cc $64 $cc
    ld h, h                                       ; $63d5: $64
    adc l                                         ; $63d6: $8d
    ld h, h                                       ; $63d7: $64
    adc l                                         ; $63d8: $8d
    ld h, h                                       ; $63d9: $64
    adc l                                         ; $63da: $8d
    ld h, h                                       ; $63db: $64
    adc l                                         ; $63dc: $8d
    ld h, h                                       ; $63dd: $64
    sbc h                                         ; $63de: $9c
    ld h, h                                       ; $63df: $64
    sbc c                                         ; $63e0: $99
    ld h, h                                       ; $63e1: $64
    add c                                         ; $63e2: $81
    ld h, h                                       ; $63e3: $64
    sub [hl]                                      ; $63e4: $96
    ld h, h                                       ; $63e5: $64
    ret nz                                        ; $63e6: $c0

    ld h, h                                       ; $63e7: $64
    jp $c664                                      ; $63e8: $c3 $64 $c6


    ld h, h                                       ; $63eb: $64
    ret                                           ; $63ec: $c9


    ld h, h                                       ; $63ed: $64
    sbc h                                         ; $63ee: $9c
    ld h, h                                       ; $63ef: $64
    sbc a                                         ; $63f0: $9f
    ld h, h                                       ; $63f1: $64
    and l                                         ; $63f2: $a5
    ld h, h                                       ; $63f3: $64
    and d                                         ; $63f4: $a2
    ld h, h                                       ; $63f5: $64
    sbc h                                         ; $63f6: $9c
    ld h, h                                       ; $63f7: $64
    sbc a                                         ; $63f8: $9f
    ld h, h                                       ; $63f9: $64
    and d                                         ; $63fa: $a2
    ld h, h                                       ; $63fb: $64
    and l                                         ; $63fc: $a5
    ld h, h                                       ; $63fd: $64
    sbc h                                         ; $63fe: $9c
    ld h, h                                       ; $63ff: $64

Call_003_6400:
    sbc a                                         ; $6400: $9f
    ld h, h                                       ; $6401: $64
    and d                                         ; $6402: $a2
    ld h, h                                       ; $6403: $64
    and l                                         ; $6404: $a5
    ld h, h                                       ; $6405: $64
    sbc h                                         ; $6406: $9c
    ld h, h                                       ; $6407: $64
    sbc a                                         ; $6408: $9f
    ld h, h                                       ; $6409: $64
    and d                                         ; $640a: $a2
    ld h, h                                       ; $640b: $64
    and l                                         ; $640c: $a5
    ld h, h                                       ; $640d: $64
    ldh a, [$64]                                  ; $640e: $f0 $64
    di                                            ; $6410: $f3
    ld h, h                                       ; $6411: $64
    or $64                                        ; $6412: $f6 $64
    ld sp, hl                                     ; $6414: $f9
    ld h, h                                       ; $6415: $64
    ld [hl], c                                    ; $6416: $71
    ld h, l                                       ; $6417: $65
    ld l, [hl]                                    ; $6418: $6e
    ld h, l                                       ; $6419: $65
    ld l, e                                       ; $641a: $6b
    ld h, l                                       ; $641b: $65
    ld l, b                                       ; $641c: $68
    ld h, l                                       ; $641d: $65
    adc a                                         ; $641e: $8f
    ld h, l                                       ; $641f: $65
    add [hl]                                      ; $6420: $86
    ld h, l                                       ; $6421: $65
    adc c                                         ; $6422: $89
    ld h, l                                       ; $6423: $65
    adc h                                         ; $6424: $8c
    ld h, l                                       ; $6425: $65
    or h                                          ; $6426: $b4
    ld h, h                                       ; $6427: $64
    or a                                          ; $6428: $b7
    ld h, h                                       ; $6429: $64
    cp d                                          ; $642a: $ba
    ld h, h                                       ; $642b: $64
    cp l                                          ; $642c: $bd
    ld h, h                                       ; $642d: $64
    sbc h                                         ; $642e: $9c
    ld h, h                                       ; $642f: $64
    sbc a                                         ; $6430: $9f
    ld h, h                                       ; $6431: $64
    and d                                         ; $6432: $a2
    ld h, h                                       ; $6433: $64
    and l                                         ; $6434: $a5
    ld h, h                                       ; $6435: $64
    or h                                          ; $6436: $b4
    ld h, h                                       ; $6437: $64
    or a                                          ; $6438: $b7
    ld h, h                                       ; $6439: $64
    cp d                                          ; $643a: $ba
    ld h, h                                       ; $643b: $64
    cp l                                          ; $643c: $bd
    ld h, h                                       ; $643d: $64
    cp l                                          ; $643e: $bd
    ld h, h                                       ; $643f: $64
    jp $c064                                      ; $6440: $c3 $64 $c0


    ld h, h                                       ; $6443: $64
    cp d                                          ; $6444: $ba
    ld h, h                                       ; $6445: $64
    or h                                          ; $6446: $b4
    ld h, h                                       ; $6447: $64
    or a                                          ; $6448: $b7
    ld h, h                                       ; $6449: $64
    cp d                                          ; $644a: $ba
    ld h, h                                       ; $644b: $64
    cp l                                          ; $644c: $bd
    ld h, h                                       ; $644d: $64
    or h                                          ; $644e: $b4
    ld h, h                                       ; $644f: $64
    or a                                          ; $6450: $b7
    ld h, h                                       ; $6451: $64
    cp l                                          ; $6452: $bd
    ld h, h                                       ; $6453: $64
    cp d                                          ; $6454: $ba
    ld h, h                                       ; $6455: $64
    or h                                          ; $6456: $b4
    ld h, h                                       ; $6457: $64
    or a                                          ; $6458: $b7
    ld h, h                                       ; $6459: $64
    or h                                          ; $645a: $b4
    ld h, h                                       ; $645b: $64
    or a                                          ; $645c: $b7
    ld h, h                                       ; $645d: $64
    or $64                                        ; $645e: $f6 $64
    ld sp, hl                                     ; $6460: $f9
    ld h, h                                       ; $6461: $64
    db $fc                                        ; $6462: $fc
    ld h, h                                       ; $6463: $64
    rst $38                                       ; $6464: $ff
    ld h, h                                       ; $6465: $64
    inc d                                         ; $6466: $14
    ld h, l                                       ; $6467: $65
    rla                                           ; $6468: $17
    ld h, l                                       ; $6469: $65
    ld a, [de]                                    ; $646a: $1a
    ld h, l                                       ; $646b: $65
    dec e                                         ; $646c: $1d
    ld h, l                                       ; $646d: $65
    xor [hl]                                      ; $646e: $ae
    ld h, h                                       ; $646f: $64
    or c                                          ; $6470: $b1
    ld h, h                                       ; $6471: $64
    or h                                          ; $6472: $b4
    ld h, h                                       ; $6473: $64
    or a                                          ; $6474: $b7
    ld h, h                                       ; $6475: $64
    jp $c064                                      ; $6476: $c3 $64 $c0


    ld h, h                                       ; $6479: $64
    cp l                                          ; $647a: $bd
    ld h, h                                       ; $647b: $64
    cp d                                          ; $647c: $ba
    ld h, h                                       ; $647d: $64
    ld [hl], $36                                  ; $647e: $36 $36
    ld [hl], $16                                  ; $6480: $36 $16
    ld d, $16                                     ; $6482: $16 $16
    ld d, $17                                     ; $6484: $16 $17
    ld d, $16                                     ; $6486: $16 $16
    dec d                                         ; $6488: $15
    ld d, $17                                     ; $6489: $16 $17
    dec d                                         ; $648b: $15
    rla                                           ; $648c: $17
    dec c                                         ; $648d: $0d
    dec c                                         ; $648e: $0d
    dec c                                         ; $648f: $0d
    dec c                                         ; $6490: $0d
    dec c                                         ; $6491: $0d
    dec c                                         ; $6492: $0d

    db $02, $0d, $02

    ld [bc], a                                    ; $6496: $02
    dec c                                         ; $6497: $0d
    ld [bc], a                                    ; $6498: $02
    ld [bc], a                                    ; $6499: $02
    ld [bc], a                                    ; $649a: $02
    ld [bc], a                                    ; $649b: $02
    ld c, $0a                                     ; $649c: $0e $0a
    ld c, $0e                                     ; $649e: $0e $0e
    ld c, $0e                                     ; $64a0: $0e $0e
    ld a, [bc]                                    ; $64a2: $0a
    inc bc                                        ; $64a3: $03
    ld a, [bc]                                    ; $64a4: $0a
    inc bc                                        ; $64a5: $03
    ld a, [bc]                                    ; $64a6: $0a
    inc bc                                        ; $64a7: $03
    rrca                                          ; $64a8: $0f
    ld de, $110f                                  ; $64a9: $11 $0f $11
    rrca                                          ; $64ac: $0f
    ld de, $0b20                                  ; $64ad: $11 $20 $0b
    jr nz, jr_003_64c1                            ; $64b0: $20 $0f

    dec bc                                        ; $64b2: $0b
    rrca                                          ; $64b3: $0f
    db $10                                        ; $64b4: $10
    ld [de], a                                    ; $64b5: $12
    db $10                                        ; $64b6: $10
    ld [de], a                                    ; $64b7: $12
    inc de                                        ; $64b8: $13
    ld [de], a                                    ; $64b9: $12
    inc de                                        ; $64ba: $13
    ld [de], a                                    ; $64bb: $12
    inc de                                        ; $64bc: $13
    inc de                                        ; $64bd: $13
    inc de                                        ; $64be: $13
    inc de                                        ; $64bf: $13
    inc de                                        ; $64c0: $13

jr_003_64c1:
    ld hl, $1a13                                  ; $64c1: $21 $13 $1a
    inc b                                         ; $64c4: $04
    ld a, [de]                                    ; $64c5: $1a
    inc b                                         ; $64c6: $04
    ld a, [de]                                    ; $64c7: $1a
    inc b                                         ; $64c8: $04
    ld hl, $211a                                  ; $64c9: $21 $1a $21
    inc e                                         ; $64cc: $1c
    rra                                           ; $64cd: $1f
    inc e                                         ; $64ce: $1c
    inc e                                         ; $64cf: $1c
    dec e                                         ; $64d0: $1d
    inc e                                         ; $64d1: $1c
    inc de                                        ; $64d2: $13
    inc de                                        ; $64d3: $13
    inc de                                        ; $64d4: $13
    inc de                                        ; $64d5: $13
    inc d                                         ; $64d6: $14
    inc de                                        ; $64d7: $13
    inc d                                         ; $64d8: $14
    inc de                                        ; $64d9: $13
    inc d                                         ; $64da: $14
    inc d                                         ; $64db: $14
    scf                                           ; $64dc: $37
    inc d                                         ; $64dd: $14
    inc d                                         ; $64de: $14
    ld sp, $1314                                  ; $64df: $31 $14 $13
    ld sp, $3114                                  ; $64e2: $31 $14 $31
    scf                                           ; $64e5: $37
    ld sp, $3231                                  ; $64e6: $31 $31 $32
    ld sp, $3932                                  ; $64e9: $31 $32 $39
    ld [hl-], a                                   ; $64ec: $32
    ld [hl-], a                                   ; $64ed: $32
    inc sp                                        ; $64ee: $33
    ld [hl-], a                                   ; $64ef: $32
    ld [hl-], a                                   ; $64f0: $32
    inc l                                         ; $64f1: $2c
    ld [hl-], a                                   ; $64f2: $32
    inc d                                         ; $64f3: $14
    inc l                                         ; $64f4: $2c
    inc d                                         ; $64f5: $14
    inc d                                         ; $64f6: $14
    inc l                                         ; $64f7: $2c
    inc sp                                        ; $64f8: $33
    inc l                                         ; $64f9: $2c
    inc l                                         ; $64fa: $2c
    inc l                                         ; $64fb: $2c
    ld b, $06                                     ; $64fc: $06 $06
    ld b, $06                                     ; $64fe: $06 $06
    ld [$0606], sp                                ; $6500: $08 $06 $06
    rlca                                          ; $6503: $07
    ld b, $06                                     ; $6504: $06 $06
    ld [$0706], sp                                ; $6506: $08 $06 $07
    scf                                           ; $6509: $37
    rlca                                          ; $650a: $07
    ld [$0807], sp                                ; $650b: $08 $07 $08
    ld b, $06                                     ; $650e: $06 $06
    ld b, $06                                     ; $6510: $06 $06
    inc d                                         ; $6512: $14
    ld b, $14                                     ; $6513: $06 $14
    ld [$1414], sp                                ; $6515: $08 $14 $14
    inc l                                         ; $6518: $2c
    inc d                                         ; $6519: $14
    inc sp                                        ; $651a: $33
    inc l                                         ; $651b: $2c
    inc sp                                        ; $651c: $33
    ld [hl], $36                                  ; $651d: $36 $36
    ld [hl], $27                                  ; $651f: $36 $27
    ld [hl], $27                                  ; $6521: $36 $27
    ld [hl+], a                                   ; $6523: $22
    ld [hl+], a                                   ; $6524: $22
    ld [hl+], a                                   ; $6525: $22
    ld [hl+], a                                   ; $6526: $22
    ld [hl], $22                                  ; $6527: $36 $22
    dec h                                         ; $6529: $25
    jr z, @+$27                                   ; $652a: $28 $25

    jr z, @+$27                                   ; $652c: $28 $25

    jr z, jr_003_6552                             ; $652e: $28 $22

    inc hl                                        ; $6530: $23
    ld [hl+], a                                   ; $6531: $22
    jr z, jr_003_655c                             ; $6532: $28 $28

    jr z, @+$37                                   ; $6534: $28 $35

    ld h, $35                                     ; $6536: $26 $35
    dec [hl]                                      ; $6538: $35
    inc [hl]                                      ; $6539: $34
    dec [hl]                                      ; $653a: $35
    dec [hl]                                      ; $653b: $35
    dec [hl]                                      ; $653c: $35
    dec [hl]                                      ; $653d: $35
    ld h, $35                                     ; $653e: $26 $35
    inc [hl]                                      ; $6540: $34
    inc hl                                        ; $6541: $23
    inc hl                                        ; $6542: $23
    inc hl                                        ; $6543: $23
    inc hl                                        ; $6544: $23
    inc h                                         ; $6545: $24
    inc hl                                        ; $6546: $23
    inc h                                         ; $6547: $24
    add hl, hl                                    ; $6548: $29
    inc h                                         ; $6549: $24
    add hl, hl                                    ; $654a: $29
    inc h                                         ; $654b: $24
    add hl, hl                                    ; $654c: $29
    inc h                                         ; $654d: $24
    add hl, hl                                    ; $654e: $29
    inc h                                         ; $654f: $24
    jr z, jr_003_6587                             ; $6550: $28 $35

jr_003_6552:
    jr z, jr_003_6589                             ; $6552: $28 $35

    dec [hl]                                      ; $6554: $35
    dec [hl]                                      ; $6555: $35
    dec [hl]                                      ; $6556: $35
    inc [hl]                                      ; $6557: $34
    dec [hl]                                      ; $6558: $35
    inc [hl]                                      ; $6559: $34
    dec [hl]                                      ; $655a: $35
    inc [hl]                                      ; $655b: $34

jr_003_655c:
    ld de, $1129                                  ; $655c: $11 $29 $11
    ld de, $110f                                  ; $655f: $11 $0f $11
    rrca                                          ; $6562: $0f
    ld de, $0a0f                                  ; $6563: $11 $0f $0a
    rrca                                          ; $6566: $0f
    ld a, [bc]                                    ; $6567: $0a
    jr jr_003_6582                                ; $6568: $18 $18

    jr @+$10                                      ; $656a: $18 $0e

    jr nz, @+$10                                  ; $656c: $20 $0e

    dec b                                         ; $656e: $05
    ld de, $0e05                                  ; $656f: $11 $05 $0e
    add hl, de                                    ; $6572: $19
    ld c, $36                                     ; $6573: $0e $36
    ld [hl], $36                                  ; $6575: $36 $36
    ld [hl], $37                                  ; $6577: $36 $37
    ld [hl], $11                                  ; $6579: $36 $11
    ld de, $1111                                  ; $657b: $11 $11 $11
    ld [de], a                                    ; $657e: $12
    ld de, $0f11                                  ; $657f: $11 $11 $0f

jr_003_6582:
    ld de, $090f                                  ; $6582: $11 $0f $09
    rrca                                          ; $6585: $0f
    inc b                                         ; $6586: $04

jr_003_6587:
    inc c                                         ; $6587: $0c
    inc b                                         ; $6588: $04

jr_003_6589:
    inc c                                         ; $6589: $0c
    inc c                                         ; $658a: $0c
    inc c                                         ; $658b: $0c
    inc b                                         ; $658c: $04
    inc b                                         ; $658d: $04
    inc b                                         ; $658e: $04
    inc c                                         ; $658f: $0c
    inc b                                         ; $6590: $04
    inc c                                         ; $6591: $0c
    add hl, sp                                    ; $6592: $39
    inc d                                         ; $6593: $14
    add hl, sp                                    ; $6594: $39
    jr c, jr_003_65ab                             ; $6595: $38 $14

    jr c, jr_003_65d1                             ; $6597: $38 $38

    add hl, sp                                    ; $6599: $39
    jr c, jr_003_65c8                             ; $659a: $38 $2c

    rra                                           ; $659c: $1f
    inc l                                         ; $659d: $2c
    ld e, $1f                                     ; $659e: $1e $1f
    ld e, $08                                     ; $65a0: $1e $08
    rra                                           ; $65a2: $1f
    ld [$1f21], sp                                ; $65a3: $08 $21 $1f
    ld hl, $141f                                  ; $65a6: $21 $1f $14
    rra                                           ; $65a9: $1f
    rra                                           ; $65aa: $1f

jr_003_65ab:
    dec bc                                        ; $65ab: $0b
    rra                                           ; $65ac: $1f
    rra                                           ; $65ad: $1f
    ld e, $1f                                     ; $65ae: $1e $1f
    rra                                           ; $65b0: $1f
    inc l                                         ; $65b1: $2c
    rra                                           ; $65b2: $1f
    rra                                           ; $65b3: $1f
    rra                                           ; $65b4: $1f
    rra                                           ; $65b5: $1f
    nop                                           ; $65b6: $00
    dec de                                        ; $65b7: $1b
    nop                                           ; $65b8: $00
    db $10                                        ; $65b9: $10
    inc c                                         ; $65ba: $0c
    stop                                          ; $65bb: $10 $00
    dec hl                                        ; $65bd: $2b
    nop                                           ; $65be: $00
    nop                                           ; $65bf: $00
    inc l                                         ; $65c0: $2c
    nop                                           ; $65c1: $00
    nop                                           ; $65c2: $00
    ld a, [hl+]                                   ; $65c3: $2a
    nop                                           ; $65c4: $00
    dec l                                         ; $65c5: $2d
    dec l                                         ; $65c6: $2d
    dec l                                         ; $65c7: $2d

jr_003_65c8:
    nop                                           ; $65c8: $00
    ld l, $00                                     ; $65c9: $2e $00
    nop                                           ; $65cb: $00
    cpl                                           ; $65cc: $2f
    nop                                           ; $65cd: $00
    nop                                           ; $65ce: $00
    jr nc, jr_003_65d1                            ; $65cf: $30 $00

jr_003_65d1:
    dec sp                                        ; $65d1: $3b
    inc a                                         ; $65d2: $3c
    dec sp                                        ; $65d3: $3b
    nop                                           ; $65d4: $00
    dec a                                         ; $65d5: $3d
    nop                                           ; $65d6: $00
    nop                                           ; $65d7: $00
    ld a, $00                                     ; $65d8: $3e $00
    dec c                                         ; $65da: $0d
    ld a, [hl-]                                   ; $65db: $3a
    dec c                                         ; $65dc: $0d
    nop                                           ; $65dd: $00
    inc e                                         ; $65de: $1c
    nop                                           ; $65df: $00
    or [hl]                                       ; $65e0: $b6
    ld h, l                                       ; $65e1: $65
    cp c                                          ; $65e2: $b9
    ld h, l                                       ; $65e3: $65
    cp h                                          ; $65e4: $bc
    ld h, l                                       ; $65e5: $65
    cp a                                          ; $65e6: $bf
    ld h, l                                       ; $65e7: $65
    jp nz, $c565                                  ; $65e8: $c2 $65 $c5

    ld h, l                                       ; $65eb: $65
    ret z                                         ; $65ec: $c8

    ld h, l                                       ; $65ed: $65
    bit 4, l                                      ; $65ee: $cb $65
    adc $65                                       ; $65f0: $ce $65
    pop de                                        ; $65f2: $d1
    ld h, l                                       ; $65f3: $65
    call nc, $d765                                ; $65f4: $d4 $65 $d7
    ld h, l                                       ; $65f7: $65
    jp c, $dd65                                   ; $65f8: $da $65 $dd

    ld h, l                                       ; $65fb: $65

    db $1e, $0e, $62, $0e

    cpl                                           ; $6600: $2f
    rrca                                          ; $6601: $0f
    cpl                                           ; $6602: $2f
    rrca                                          ; $6603: $0f
    cpl                                           ; $6604: $2f
    rrca                                          ; $6605: $0f
    ccf                                           ; $6606: $3f
    rrca                                          ; $6607: $0f
    ccf                                           ; $6608: $3f
    rrca                                          ; $6609: $0f
    ccf                                           ; $660a: $3f
    rrca                                          ; $660b: $0f
    ccf                                           ; $660c: $3f
    rrca                                          ; $660d: $0f
    ld c, a                                       ; $660e: $4f
    rrca                                          ; $660f: $0f
    ld c, a                                       ; $6610: $4f
    rrca                                          ; $6611: $0f
    ld c, a                                       ; $6612: $4f
    rrca                                          ; $6613: $0f
    ld c, a                                       ; $6614: $4f
    rrca                                          ; $6615: $0f

    db $5f, $0f

    ld e, a                                       ; $6618: $5f
    rrca                                          ; $6619: $0f
    ld e, a                                       ; $661a: $5f
    rrca                                          ; $661b: $0f
    ld e, a                                       ; $661c: $5f
    rrca                                          ; $661d: $0f
    ld l, a                                       ; $661e: $6f
    rrca                                          ; $661f: $0f
    ld l, a                                       ; $6620: $6f
    rrca                                          ; $6621: $0f
    ld l, a                                       ; $6622: $6f
    rrca                                          ; $6623: $0f
    ld l, a                                       ; $6624: $6f
    rrca                                          ; $6625: $0f
    ld a, a                                       ; $6626: $7f
    rrca                                          ; $6627: $0f
    adc a                                         ; $6628: $8f
    rrca                                          ; $6629: $0f
    sbc a                                         ; $662a: $9f
    rrca                                          ; $662b: $0f
    inc de                                        ; $662c: $13
    rrca                                          ; $662d: $0f
    inc de                                        ; $662e: $13
    rrca                                          ; $662f: $0f
    inc de                                        ; $6630: $13
    rrca                                          ; $6631: $0f
    jp c, $af0e                                   ; $6632: $da $0e $af

    rrca                                          ; $6635: $0f
    xor a                                         ; $6636: $af
    rrca                                          ; $6637: $0f
    xor a                                         ; $6638: $af
    rrca                                          ; $6639: $0f
    xor a                                         ; $663a: $af
    rrca                                          ; $663b: $0f
    cp a                                          ; $663c: $bf
    rrca                                          ; $663d: $0f
    cp a                                          ; $663e: $bf
    rrca                                          ; $663f: $0f
    push de                                       ; $6640: $d5
    rrca                                          ; $6641: $0f
    push de                                       ; $6642: $d5
    rrca                                          ; $6643: $0f
    push de                                       ; $6644: $d5
    rrca                                          ; $6645: $0f
    push hl                                       ; $6646: $e5
    rrca                                          ; $6647: $0f
    push hl                                       ; $6648: $e5
    rrca                                          ; $6649: $0f
    ld hl, sp+$0f                                 ; $664a: $f8 $0f
    ld [$0810], sp                                ; $664c: $08 $10 $08
    db $10                                        ; $664f: $10
    jr jr_003_6662                                ; $6650: $18 $10

    jr z, jr_003_6664                             ; $6652: $28 $10

    ld b, h                                       ; $6654: $44
    db $10                                        ; $6655: $10
    add h                                         ; $6656: $84
    db $10                                        ; $6657: $10
    ld d, h                                       ; $6658: $54
    db $10                                        ; $6659: $10
    ld h, h                                       ; $665a: $64
    db $10                                        ; $665b: $10
    ld [hl], h                                    ; $665c: $74
    db $10                                        ; $665d: $10
    and h                                         ; $665e: $a4
    db $10                                        ; $665f: $10
    and h                                         ; $6660: $a4
    db $10                                        ; $6661: $10

jr_003_6662:
    and h                                         ; $6662: $a4
    db $10                                        ; $6663: $10

jr_003_6664:
    ld [c], a                                     ; $6664: $e2
    db $10                                        ; $6665: $10
    sub h                                         ; $6666: $94
    db $10                                        ; $6667: $10
    jp nz, $c210                                  ; $6668: $c2 $10 $c2

    db $10                                        ; $666b: $10
    jp nz, $c210                                  ; $666c: $c2 $10 $c2

    db $10                                        ; $666f: $10
    jp nc, $2c10                                  ; $6670: $d2 $10 $2c

    ld de, $111c                                  ; $6673: $11 $1c $11
    ld a, [c]                                     ; $6676: $f2
    db $10                                        ; $6677: $10
    inc b                                         ; $6678: $04
    db $11                                        ; $6679: $11

    db $e2, $69, $2a, $00

    ld d, e                                       ; $667e: $53
    ld l, d                                       ; $667f: $6a
    ld a, [hl+]                                   ; $6680: $2a
    nop                                           ; $6681: $00
    inc bc                                        ; $6682: $03
    ld l, c                                       ; $6683: $69
    inc h                                         ; $6684: $24
    nop                                           ; $6685: $00
    inc bc                                        ; $6686: $03
    ld l, c                                       ; $6687: $69
    inc h                                         ; $6688: $24
    nop                                           ; $6689: $00
    inc bc                                        ; $668a: $03
    ld l, c                                       ; $668b: $69
    inc h                                         ; $668c: $24
    nop                                           ; $668d: $00
    inc bc                                        ; $668e: $03
    ld l, c                                       ; $668f: $69
    inc h                                         ; $6690: $24
    nop                                           ; $6691: $00
    inc bc                                        ; $6692: $03
    ld l, c                                       ; $6693: $69
    inc h                                         ; $6694: $24
    nop                                           ; $6695: $00
    inc bc                                        ; $6696: $03
    ld l, c                                       ; $6697: $69
    inc h                                         ; $6698: $24
    nop                                           ; $6699: $00
    inc bc                                        ; $669a: $03
    ld l, c                                       ; $669b: $69
    inc h                                         ; $669c: $24
    nop                                           ; $669d: $00
    inc bc                                        ; $669e: $03
    ld l, c                                       ; $669f: $69
    inc h                                         ; $66a0: $24
    nop                                           ; $66a1: $00
    inc bc                                        ; $66a2: $03
    ld l, c                                       ; $66a3: $69
    inc h                                         ; $66a4: $24
    nop                                           ; $66a5: $00
    inc bc                                        ; $66a6: $03
    ld l, c                                       ; $66a7: $69
    inc h                                         ; $66a8: $24
    nop                                           ; $66a9: $00
    inc bc                                        ; $66aa: $03
    ld l, c                                       ; $66ab: $69
    inc h                                         ; $66ac: $24
    nop                                           ; $66ad: $00
    sub b                                         ; $66ae: $90
    ld l, d                                       ; $66af: $6a
    inc h                                         ; $66b0: $24
    nop                                           ; $66b1: $00
    sub b                                         ; $66b2: $90
    ld l, d                                       ; $66b3: $6a
    inc h                                         ; $66b4: $24
    nop                                           ; $66b5: $00
    sub b                                         ; $66b6: $90
    ld l, d                                       ; $66b7: $6a
    inc h                                         ; $66b8: $24
    nop                                           ; $66b9: $00
    sub b                                         ; $66ba: $90
    ld l, d                                       ; $66bb: $6a
    inc h                                         ; $66bc: $24
    nop                                           ; $66bd: $00
    inc bc                                        ; $66be: $03
    ld l, c                                       ; $66bf: $69
    ld e, $00                                     ; $66c0: $1e $00
    inc bc                                        ; $66c2: $03
    ld l, c                                       ; $66c3: $69
    ld e, $00                                     ; $66c4: $1e $00
    inc bc                                        ; $66c6: $03
    ld l, c                                       ; $66c7: $69
    ld e, $00                                     ; $66c8: $1e $00
    inc bc                                        ; $66ca: $03
    ld l, c                                       ; $66cb: $69
    ld e, $00                                     ; $66cc: $1e $00
    inc bc                                        ; $66ce: $03
    ld l, c                                       ; $66cf: $69
    inc h                                         ; $66d0: $24
    nop                                           ; $66d1: $00
    inc bc                                        ; $66d2: $03
    ld l, c                                       ; $66d3: $69
    inc h                                         ; $66d4: $24
    nop                                           ; $66d5: $00
    inc bc                                        ; $66d6: $03
    ld l, c                                       ; $66d7: $69
    inc h                                         ; $66d8: $24
    nop                                           ; $66d9: $00
    inc bc                                        ; $66da: $03
    ld l, c                                       ; $66db: $69
    inc h                                         ; $66dc: $24
    nop                                           ; $66dd: $00
    inc bc                                        ; $66de: $03
    ld l, c                                       ; $66df: $69
    inc h                                         ; $66e0: $24
    nop                                           ; $66e1: $00
    inc bc                                        ; $66e2: $03
    ld l, c                                       ; $66e3: $69
    inc h                                         ; $66e4: $24
    nop                                           ; $66e5: $00
    cp c                                          ; $66e6: $b9
    ld l, d                                       ; $66e7: $6a
    ld a, [hl+]                                   ; $66e8: $2a
    nop                                           ; $66e9: $00
    inc bc                                        ; $66ea: $03
    ld l, c                                       ; $66eb: $69
    inc h                                         ; $66ec: $24
    nop                                           ; $66ed: $00
    inc bc                                        ; $66ee: $03
    ld l, c                                       ; $66ef: $69
    inc h                                         ; $66f0: $24
    nop                                           ; $66f1: $00
    inc bc                                        ; $66f2: $03
    ld l, c                                       ; $66f3: $69
    inc h                                         ; $66f4: $24
    nop                                           ; $66f5: $00
    inc bc                                        ; $66f6: $03
    ld l, c                                       ; $66f7: $69
    inc h                                         ; $66f8: $24
    nop                                           ; $66f9: $00
    inc bc                                        ; $66fa: $03
    ld l, c                                       ; $66fb: $69
    inc h                                         ; $66fc: $24
    nop                                           ; $66fd: $00
    inc bc                                        ; $66fe: $03
    ld l, c                                       ; $66ff: $69
    inc h                                         ; $6700: $24
    nop                                           ; $6701: $00
    inc bc                                        ; $6702: $03
    ld l, c                                       ; $6703: $69
    inc h                                         ; $6704: $24
    nop                                           ; $6705: $00
    inc bc                                        ; $6706: $03
    ld l, c                                       ; $6707: $69
    inc h                                         ; $6708: $24
    nop                                           ; $6709: $00
    inc bc                                        ; $670a: $03
    ld l, c                                       ; $670b: $69
    inc h                                         ; $670c: $24
    nop                                           ; $670d: $00
    inc bc                                        ; $670e: $03
    ld l, c                                       ; $670f: $69
    inc h                                         ; $6710: $24
    nop                                           ; $6711: $00
    inc bc                                        ; $6712: $03
    ld l, c                                       ; $6713: $69
    inc h                                         ; $6714: $24
    nop                                           ; $6715: $00
    inc bc                                        ; $6716: $03
    ld l, c                                       ; $6717: $69
    inc h                                         ; $6718: $24
    nop                                           ; $6719: $00
    inc bc                                        ; $671a: $03
    ld l, c                                       ; $671b: $69
    inc h                                         ; $671c: $24
    nop                                           ; $671d: $00
    inc bc                                        ; $671e: $03
    ld l, c                                       ; $671f: $69
    inc h                                         ; $6720: $24
    nop                                           ; $6721: $00
    inc bc                                        ; $6722: $03
    ld l, c                                       ; $6723: $69
    inc h                                         ; $6724: $24
    nop                                           ; $6725: $00
    rst $30                                       ; $6726: $f7
    ld l, d                                       ; $6727: $6a
    ld c, b                                       ; $6728: $48
    nop                                           ; $6729: $00
    inc bc                                        ; $672a: $03
    ld l, c                                       ; $672b: $69
    ld e, $00                                     ; $672c: $1e $00
    inc bc                                        ; $672e: $03
    ld l, c                                       ; $672f: $69
    inc h                                         ; $6730: $24
    nop                                           ; $6731: $00
    inc bc                                        ; $6732: $03
    ld l, c                                       ; $6733: $69
    inc h                                         ; $6734: $24
    nop                                           ; $6735: $00
    inc bc                                        ; $6736: $03
    ld l, c                                       ; $6737: $69
    inc h                                         ; $6738: $24
    nop                                           ; $6739: $00
    inc bc                                        ; $673a: $03
    ld l, c                                       ; $673b: $69
    inc h                                         ; $673c: $24
    nop                                           ; $673d: $00
    dec hl                                        ; $673e: $2b
    ld l, c                                       ; $673f: $69
    ld c, b                                       ; $6740: $48
    nop                                           ; $6741: $00
    dec hl                                        ; $6742: $2b
    ld l, c                                       ; $6743: $69
    ld c, b                                       ; $6744: $48
    nop                                           ; $6745: $00
    dec hl                                        ; $6746: $2b
    ld l, c                                       ; $6747: $69
    ld c, b                                       ; $6748: $48
    nop                                           ; $6749: $00
    inc bc                                        ; $674a: $03
    ld l, c                                       ; $674b: $69
    inc h                                         ; $674c: $24
    nop                                           ; $674d: $00
    inc bc                                        ; $674e: $03
    ld l, c                                       ; $674f: $69
    inc h                                         ; $6750: $24
    nop                                           ; $6751: $00
    inc bc                                        ; $6752: $03
    ld l, c                                       ; $6753: $69
    inc h                                         ; $6754: $24
    nop                                           ; $6755: $00
    inc bc                                        ; $6756: $03
    ld l, c                                       ; $6757: $69
    inc h                                         ; $6758: $24
    nop                                           ; $6759: $00
    inc bc                                        ; $675a: $03
    ld l, c                                       ; $675b: $69
    inc h                                         ; $675c: $24
    nop                                           ; $675d: $00
    inc bc                                        ; $675e: $03
    ld l, c                                       ; $675f: $69
    inc h                                         ; $6760: $24
    nop                                           ; $6761: $00
    inc bc                                        ; $6762: $03
    ld l, c                                       ; $6763: $69
    inc h                                         ; $6764: $24
    nop                                           ; $6765: $00
    inc bc                                        ; $6766: $03
    ld l, c                                       ; $6767: $69
    inc h                                         ; $6768: $24
    nop                                           ; $6769: $00
    inc bc                                        ; $676a: $03
    ld l, c                                       ; $676b: $69
    inc h                                         ; $676c: $24
    nop                                           ; $676d: $00
    ld c, [hl]                                    ; $676e: $4e
    ld l, c                                       ; $676f: $69
    jr nc, jr_003_6772                            ; $6770: $30 $00

jr_003_6772:
    ld l, c                                       ; $6772: $69
    ld l, c                                       ; $6773: $69
    ld [hl], $00                                  ; $6774: $36 $00

    db $e5, $69, $28, $00

    ld d, [hl]                                    ; $677a: $56
    ld l, d                                       ; $677b: $6a
    jr z, jr_003_677e                             ; $677c: $28 $00

jr_003_677e:
    sub b                                         ; $677e: $90
    ld l, c                                       ; $677f: $69
    jr z, jr_003_6782                             ; $6780: $28 $00

jr_003_6782:
    sub b                                         ; $6782: $90
    ld l, c                                       ; $6783: $69
    jr z, jr_003_6786                             ; $6784: $28 $00

jr_003_6786:
    sub b                                         ; $6786: $90
    ld l, c                                       ; $6787: $69
    jr z, jr_003_678a                             ; $6788: $28 $00

jr_003_678a:
    sub b                                         ; $678a: $90
    ld l, c                                       ; $678b: $69
    jr z, jr_003_678e                             ; $678c: $28 $00

jr_003_678e:
    sub b                                         ; $678e: $90
    ld l, c                                       ; $678f: $69
    jr z, jr_003_6792                             ; $6790: $28 $00

jr_003_6792:
    sub b                                         ; $6792: $90
    ld l, c                                       ; $6793: $69
    jr z, jr_003_6796                             ; $6794: $28 $00

jr_003_6796:
    sub b                                         ; $6796: $90
    ld l, c                                       ; $6797: $69
    jr z, jr_003_679a                             ; $6798: $28 $00

jr_003_679a:
    add [hl]                                      ; $679a: $86
    ld l, d                                       ; $679b: $6a
    jr z, jr_003_679e                             ; $679c: $28 $00

jr_003_679e:
    add [hl]                                      ; $679e: $86
    ld l, d                                       ; $679f: $6a
    jr z, jr_003_67a2                             ; $67a0: $28 $00

jr_003_67a2:
    add [hl]                                      ; $67a2: $86
    ld l, d                                       ; $67a3: $6a
    jr z, jr_003_67a6                             ; $67a4: $28 $00

jr_003_67a6:
    add [hl]                                      ; $67a6: $86
    ld l, d                                       ; $67a7: $6a
    jr z, @+$02                                   ; $67a8: $28 $00

    db $9d, $6a, $28, $00

    sbc l                                         ; $67ae: $9d
    ld l, d                                       ; $67af: $6a
    jr z, jr_003_67b2                             ; $67b0: $28 $00

jr_003_67b2:
    sbc l                                         ; $67b2: $9d
    ld l, d                                       ; $67b3: $6a
    jr z, jr_003_67b6                             ; $67b4: $28 $00

jr_003_67b6:
    sbc l                                         ; $67b6: $9d
    ld l, d                                       ; $67b7: $6a
    jr z, jr_003_67ba                             ; $67b8: $28 $00

jr_003_67ba:
    and a                                         ; $67ba: $a7
    ld l, d                                       ; $67bb: $6a
    jr z, jr_003_67be                             ; $67bc: $28 $00

jr_003_67be:
    and a                                         ; $67be: $a7
    ld l, d                                       ; $67bf: $6a
    jr z, jr_003_67c2                             ; $67c0: $28 $00

jr_003_67c2:
    and a                                         ; $67c2: $a7
    ld l, d                                       ; $67c3: $6a
    jr z, jr_003_67c6                             ; $67c4: $28 $00

jr_003_67c6:
    and a                                         ; $67c6: $a7
    ld l, d                                       ; $67c7: $6a
    jr z, jr_003_67ca                             ; $67c8: $28 $00

jr_003_67ca:
    or c                                          ; $67ca: $b1
    ld l, d                                       ; $67cb: $6a
    jr nz, jr_003_67ce                            ; $67cc: $20 $00

jr_003_67ce:
    or c                                          ; $67ce: $b1
    ld l, d                                       ; $67cf: $6a
    jr nz, jr_003_67d2                            ; $67d0: $20 $00

jr_003_67d2:
    or c                                          ; $67d2: $b1
    ld l, d                                       ; $67d3: $6a
    jr nz, jr_003_67d6                            ; $67d4: $20 $00

jr_003_67d6:
    or c                                          ; $67d6: $b1
    ld l, d                                       ; $67d7: $6a
    jr nz, jr_003_67da                            ; $67d8: $20 $00

jr_003_67da:
    or c                                          ; $67da: $b1
    ld l, d                                       ; $67db: $6a
    jr nz, jr_003_67de                            ; $67dc: $20 $00

jr_003_67de:
    or c                                          ; $67de: $b1
    ld l, d                                       ; $67df: $6a
    jr nz, jr_003_67e2                            ; $67e0: $20 $00

jr_003_67e2:
    jp z, $206a                                   ; $67e2: $ca $6a $20

    nop                                           ; $67e5: $00
    sub b                                         ; $67e6: $90
    ld l, c                                       ; $67e7: $69
    inc h                                         ; $67e8: $24
    nop                                           ; $67e9: $00
    sub b                                         ; $67ea: $90
    ld l, c                                       ; $67eb: $69
    inc h                                         ; $67ec: $24
    nop                                           ; $67ed: $00
    sub b                                         ; $67ee: $90
    ld l, c                                       ; $67ef: $69
    inc h                                         ; $67f0: $24
    nop                                           ; $67f1: $00
    sub b                                         ; $67f2: $90
    ld l, c                                       ; $67f3: $69
    inc h                                         ; $67f4: $24
    nop                                           ; $67f5: $00
    sub b                                         ; $67f6: $90
    ld l, c                                       ; $67f7: $69
    inc h                                         ; $67f8: $24
    nop                                           ; $67f9: $00
    sub b                                         ; $67fa: $90
    ld l, c                                       ; $67fb: $69
    inc h                                         ; $67fc: $24
    nop                                           ; $67fd: $00
    sub b                                         ; $67fe: $90
    ld l, c                                       ; $67ff: $69
    inc h                                         ; $6800: $24
    nop                                           ; $6801: $00
    sub b                                         ; $6802: $90
    ld l, c                                       ; $6803: $69
    inc h                                         ; $6804: $24
    nop                                           ; $6805: $00
    sub b                                         ; $6806: $90
    ld l, c                                       ; $6807: $69
    inc h                                         ; $6808: $24
    nop                                           ; $6809: $00
    sub b                                         ; $680a: $90
    ld l, c                                       ; $680b: $69
    inc h                                         ; $680c: $24
    nop                                           ; $680d: $00
    sub b                                         ; $680e: $90
    ld l, c                                       ; $680f: $69
    inc h                                         ; $6810: $24
    nop                                           ; $6811: $00
    sub b                                         ; $6812: $90
    ld l, c                                       ; $6813: $69
    inc h                                         ; $6814: $24
    nop                                           ; $6815: $00
    sub b                                         ; $6816: $90
    ld l, c                                       ; $6817: $69
    inc h                                         ; $6818: $24
    nop                                           ; $6819: $00
    sub b                                         ; $681a: $90
    ld l, c                                       ; $681b: $69
    inc h                                         ; $681c: $24
    nop                                           ; $681d: $00
    sub b                                         ; $681e: $90
    ld l, c                                       ; $681f: $69
    inc h                                         ; $6820: $24
    nop                                           ; $6821: $00
    jr jr_003_688f                                ; $6822: $18 $6b

    jr nz, jr_003_6826                            ; $6824: $20 $00

jr_003_6826:
    sub b                                         ; $6826: $90
    ld l, c                                       ; $6827: $69
    inc h                                         ; $6828: $24
    nop                                           ; $6829: $00
    sub b                                         ; $682a: $90
    ld l, c                                       ; $682b: $69
    jr z, jr_003_682e                             ; $682c: $28 $00

jr_003_682e:
    sub b                                         ; $682e: $90
    ld l, c                                       ; $682f: $69
    jr z, jr_003_6832                             ; $6830: $28 $00

jr_003_6832:
    sub b                                         ; $6832: $90
    ld l, c                                       ; $6833: $69
    jr z, jr_003_6836                             ; $6834: $28 $00

jr_003_6836:
    sub b                                         ; $6836: $90
    ld l, c                                       ; $6837: $69
    jr z, jr_003_683a                             ; $6838: $28 $00

jr_003_683a:
    sub [hl]                                      ; $683a: $96
    ld l, c                                       ; $683b: $69
    jr z, jr_003_683e                             ; $683c: $28 $00

jr_003_683e:
    sub [hl]                                      ; $683e: $96
    ld l, c                                       ; $683f: $69
    jr z, jr_003_6842                             ; $6840: $28 $00

jr_003_6842:
    sub [hl]                                      ; $6842: $96
    ld l, c                                       ; $6843: $69
    jr z, jr_003_6846                             ; $6844: $28 $00

jr_003_6846:
    sub b                                         ; $6846: $90
    ld l, c                                       ; $6847: $69
    jr z, jr_003_684a                             ; $6848: $28 $00

jr_003_684a:
    sub b                                         ; $684a: $90
    ld l, c                                       ; $684b: $69
    jr z, jr_003_684e                             ; $684c: $28 $00

jr_003_684e:
    sub b                                         ; $684e: $90
    ld l, c                                       ; $684f: $69
    jr z, jr_003_6852                             ; $6850: $28 $00

jr_003_6852:
    sub b                                         ; $6852: $90
    ld l, c                                       ; $6853: $69
    jr z, jr_003_6856                             ; $6854: $28 $00

jr_003_6856:
    sub b                                         ; $6856: $90
    ld l, c                                       ; $6857: $69
    jr z, jr_003_685a                             ; $6858: $28 $00

jr_003_685a:
    sub b                                         ; $685a: $90
    ld l, c                                       ; $685b: $69
    jr z, jr_003_685e                             ; $685c: $28 $00

jr_003_685e:
    sub b                                         ; $685e: $90
    ld l, c                                       ; $685f: $69
    jr z, jr_003_6862                             ; $6860: $28 $00

jr_003_6862:
    sub b                                         ; $6862: $90
    ld l, c                                       ; $6863: $69
    jr z, jr_003_6866                             ; $6864: $28 $00

jr_003_6866:
    sub b                                         ; $6866: $90
    ld l, c                                       ; $6867: $69
    jr z, jr_003_686a                             ; $6868: $28 $00

jr_003_686a:
    ld h, c                                       ; $686a: $61
    ld l, c                                       ; $686b: $69
    jr z, jr_003_686e                             ; $686c: $28 $00

jr_003_686e:
    adc b                                         ; $686e: $88
    ld l, c                                       ; $686f: $69
    jr z, @+$02                                   ; $6870: $28 $00

    db $a6, $69, $4b, $00

    rla                                           ; $6876: $17
    ld l, d                                       ; $6877: $6a
    ld c, e                                       ; $6878: $4b
    nop                                           ; $6879: $00
    jp $2369                                      ; $687a: $c3 $69 $23


    nop                                           ; $687d: $00

    db $34, $6a, $23, $00

    nop                                           ; $6882: $00
    nop                                           ; $6883: $00
    nop                                           ; $6884: $00
    nop                                           ; $6885: $00
    nop                                           ; $6886: $00
    nop                                           ; $6887: $00
    nop                                           ; $6888: $00
    nop                                           ; $6889: $00
    nop                                           ; $688a: $00
    nop                                           ; $688b: $00
    nop                                           ; $688c: $00
    nop                                           ; $688d: $00
    nop                                           ; $688e: $00

jr_003_688f:
    nop                                           ; $688f: $00
    nop                                           ; $6890: $00
    nop                                           ; $6891: $00
    nop                                           ; $6892: $00
    nop                                           ; $6893: $00
    nop                                           ; $6894: $00
    nop                                           ; $6895: $00
    nop                                           ; $6896: $00
    nop                                           ; $6897: $00
    nop                                           ; $6898: $00
    nop                                           ; $6899: $00
    nop                                           ; $689a: $00
    nop                                           ; $689b: $00
    nop                                           ; $689c: $00
    nop                                           ; $689d: $00
    nop                                           ; $689e: $00
    nop                                           ; $689f: $00
    nop                                           ; $68a0: $00
    nop                                           ; $68a1: $00
    nop                                           ; $68a2: $00
    nop                                           ; $68a3: $00
    nop                                           ; $68a4: $00
    nop                                           ; $68a5: $00
    nop                                           ; $68a6: $00
    nop                                           ; $68a7: $00
    nop                                           ; $68a8: $00
    nop                                           ; $68a9: $00
    nop                                           ; $68aa: $00
    nop                                           ; $68ab: $00
    nop                                           ; $68ac: $00
    nop                                           ; $68ad: $00
    nop                                           ; $68ae: $00
    nop                                           ; $68af: $00
    nop                                           ; $68b0: $00
    nop                                           ; $68b1: $00
    nop                                           ; $68b2: $00
    nop                                           ; $68b3: $00
    nop                                           ; $68b4: $00
    nop                                           ; $68b5: $00
    nop                                           ; $68b6: $00
    nop                                           ; $68b7: $00
    nop                                           ; $68b8: $00
    nop                                           ; $68b9: $00
    nop                                           ; $68ba: $00
    nop                                           ; $68bb: $00
    nop                                           ; $68bc: $00
    nop                                           ; $68bd: $00
    nop                                           ; $68be: $00
    nop                                           ; $68bf: $00
    nop                                           ; $68c0: $00
    nop                                           ; $68c1: $00
    nop                                           ; $68c2: $00
    nop                                           ; $68c3: $00
    nop                                           ; $68c4: $00
    nop                                           ; $68c5: $00
    nop                                           ; $68c6: $00
    nop                                           ; $68c7: $00
    nop                                           ; $68c8: $00
    nop                                           ; $68c9: $00
    nop                                           ; $68ca: $00
    nop                                           ; $68cb: $00
    nop                                           ; $68cc: $00
    nop                                           ; $68cd: $00
    nop                                           ; $68ce: $00
    nop                                           ; $68cf: $00
    nop                                           ; $68d0: $00
    nop                                           ; $68d1: $00
    nop                                           ; $68d2: $00
    nop                                           ; $68d3: $00
    nop                                           ; $68d4: $00
    nop                                           ; $68d5: $00
    nop                                           ; $68d6: $00
    nop                                           ; $68d7: $00
    nop                                           ; $68d8: $00
    nop                                           ; $68d9: $00
    inc bc                                        ; $68da: $03
    ld l, c                                       ; $68db: $69
    inc h                                         ; $68dc: $24
    nop                                           ; $68dd: $00
    inc bc                                        ; $68de: $03
    ld l, c                                       ; $68df: $69
    inc h                                         ; $68e0: $24
    nop                                           ; $68e1: $00
    inc bc                                        ; $68e2: $03
    ld l, c                                       ; $68e3: $69
    inc h                                         ; $68e4: $24
    nop                                           ; $68e5: $00
    jp nc, $1e6a                                  ; $68e6: $d2 $6a $1e

    nop                                           ; $68e9: $00
    nop                                           ; $68ea: $00
    nop                                           ; $68eb: $00
    nop                                           ; $68ec: $00
    nop                                           ; $68ed: $00
    nop                                           ; $68ee: $00
    nop                                           ; $68ef: $00
    nop                                           ; $68f0: $00
    nop                                           ; $68f1: $00
    nop                                           ; $68f2: $00
    nop                                           ; $68f3: $00
    nop                                           ; $68f4: $00
    nop                                           ; $68f5: $00
    nop                                           ; $68f6: $00
    nop                                           ; $68f7: $00
    nop                                           ; $68f8: $00
    nop                                           ; $68f9: $00
    ld de, $2a69                                  ; $68fa: $11 $69 $2a
    nop                                           ; $68fd: $00
    ld de, $2a69                                  ; $68fe: $11 $69 $2a
    nop                                           ; $6901: $00
    nop                                           ; $6902: $00
    nop                                           ; $6903: $00
    nop                                           ; $6904: $00
    nop                                           ; $6905: $00
    nop                                           ; $6906: $00
    nop                                           ; $6907: $00
    nop                                           ; $6908: $00
    nop                                           ; $6909: $00
    nop                                           ; $690a: $00
    nop                                           ; $690b: $00
    nop                                           ; $690c: $00
    nop                                           ; $690d: $00
    inc bc                                        ; $690e: $03
    ld l, c                                       ; $690f: $69
    inc h                                         ; $6910: $24
    nop                                           ; $6911: $00
    inc bc                                        ; $6912: $03
    ld l, c                                       ; $6913: $69
    inc h                                         ; $6914: $24
    nop                                           ; $6915: $00
    nop                                           ; $6916: $00
    nop                                           ; $6917: $00
    nop                                           ; $6918: $00
    nop                                           ; $6919: $00
    nop                                           ; $691a: $00
    nop                                           ; $691b: $00
    nop                                           ; $691c: $00
    nop                                           ; $691d: $00
    nop                                           ; $691e: $00
    nop                                           ; $691f: $00
    nop                                           ; $6920: $00
    nop                                           ; $6921: $00
    nop                                           ; $6922: $00
    nop                                           ; $6923: $00
    nop                                           ; $6924: $00
    nop                                           ; $6925: $00
    nop                                           ; $6926: $00
    nop                                           ; $6927: $00
    nop                                           ; $6928: $00
    nop                                           ; $6929: $00
    nop                                           ; $692a: $00
    nop                                           ; $692b: $00
    nop                                           ; $692c: $00
    nop                                           ; $692d: $00
    nop                                           ; $692e: $00
    nop                                           ; $692f: $00
    nop                                           ; $6930: $00
    nop                                           ; $6931: $00
    nop                                           ; $6932: $00
    nop                                           ; $6933: $00
    nop                                           ; $6934: $00
    nop                                           ; $6935: $00
    nop                                           ; $6936: $00
    nop                                           ; $6937: $00
    nop                                           ; $6938: $00
    nop                                           ; $6939: $00
    nop                                           ; $693a: $00
    nop                                           ; $693b: $00
    nop                                           ; $693c: $00
    nop                                           ; $693d: $00
    dec hl                                        ; $693e: $2b
    ld l, c                                       ; $693f: $69
    ld a, l                                       ; $6940: $7d
    nop                                           ; $6941: $00
    dec hl                                        ; $6942: $2b
    ld l, c                                       ; $6943: $69
    ld a, l                                       ; $6944: $7d
    nop                                           ; $6945: $00
    dec hl                                        ; $6946: $2b
    ld l, c                                       ; $6947: $69
    ld a, l                                       ; $6948: $7d
    nop                                           ; $6949: $00
    nop                                           ; $694a: $00
    nop                                           ; $694b: $00
    nop                                           ; $694c: $00
    nop                                           ; $694d: $00
    nop                                           ; $694e: $00
    nop                                           ; $694f: $00
    nop                                           ; $6950: $00
    nop                                           ; $6951: $00
    inc bc                                        ; $6952: $03
    ld l, c                                       ; $6953: $69
    inc h                                         ; $6954: $24
    nop                                           ; $6955: $00
    inc bc                                        ; $6956: $03
    ld l, c                                       ; $6957: $69
    inc h                                         ; $6958: $24
    nop                                           ; $6959: $00
    inc bc                                        ; $695a: $03
    ld l, c                                       ; $695b: $69
    inc h                                         ; $695c: $24
    nop                                           ; $695d: $00
    inc bc                                        ; $695e: $03
    ld l, c                                       ; $695f: $69
    inc h                                         ; $6960: $24
    nop                                           ; $6961: $00
    nop                                           ; $6962: $00
    nop                                           ; $6963: $00
    nop                                           ; $6964: $00
    nop                                           ; $6965: $00
    nop                                           ; $6966: $00
    nop                                           ; $6967: $00
    nop                                           ; $6968: $00
    nop                                           ; $6969: $00
    nop                                           ; $696a: $00
    nop                                           ; $696b: $00
    nop                                           ; $696c: $00
    nop                                           ; $696d: $00
    ld c, [hl]                                    ; $696e: $4e
    ld l, c                                       ; $696f: $69
    jr nc, jr_003_6972                            ; $6970: $30 $00

jr_003_6972:
    dec d                                         ; $6972: $15
    ld de, $0036                                  ; $6973: $11 $36 $00

    db $ed, $69, $50, $00

    ld e, [hl]                                    ; $697a: $5e
    ld l, d                                       ; $697b: $6a
    ld d, b                                       ; $697c: $50
    nop                                           ; $697d: $00
    ld bc, $a26a                                  ; $697e: $01 $6a $a2
    nop                                           ; $6981: $00

    db $72, $6a, $a2, $00

    nop                                           ; $6986: $00
    nop                                           ; $6987: $00
    push af                                       ; $6988: $f5
    nop                                           ; $6989: $00
    dec bc                                        ; $698a: $0b
    nop                                           ; $698b: $00
    nop                                           ; $698c: $00
    inc b                                         ; $698d: $04
    nop                                           ; $698e: $00
    db $fc                                        ; $698f: $fc
    ld a, [$0602]                                 ; $6990: $fa $02 $06
    cp $06                                        ; $6993: $fe $06
    ld [bc], a                                    ; $6995: $02
    ld a, [$00fe]                                 ; $6996: $fa $fe $00
    stop                                          ; $6999: $10 $00
    nop                                           ; $699b: $00
    nop                                           ; $699c: $00
    ldh a, [$9f]                                  ; $699d: $f0 $9f
    ld de, $11ad                                  ; $699f: $11 $ad $11
    cp a                                          ; $69a2: $bf
    db $11                                        ; $69a3: $11

    db $3c, $11

    ld c, c                                       ; $69a6: $49
    ld de, $1156                                  ; $69a7: $11 $56 $11
    ld l, [hl]                                    ; $69aa: $6e
    ld de, $1178                                  ; $69ab: $11 $78 $11
    adc d                                         ; $69ae: $8a
    ld de, $1227                                  ; $69af: $11 $27 $12
    ld [hl], $12                                  ; $69b2: $36 $12
    ld b, l                                       ; $69b4: $45
    ld [de], a                                    ; $69b5: $12
    ld sp, hl                                     ; $69b6: $f9
    ld de, $1205                                  ; $69b7: $11 $05 $12
    jp c, $e711                                   ; $69ba: $da $11 $e7

    ld de, $121b                                  ; $69bd: $11 $1b $12
    ld d, [hl]                                    ; $69c0: $56
    ld de, $1227                                  ; $69c1: $11 $27 $12
    rst $20                                       ; $69c4: $e7
    ld de, $118a                                  ; $69c5: $11 $8a $11
    ld b, l                                       ; $69c8: $45
    ld [de], a                                    ; $69c9: $12
    inc hl                                        ; $69ca: $23
    rrca                                          ; $69cb: $0f
    inc a                                         ; $69cc: $3c
    ld de, $10ba                                  ; $69cd: $11 $ba $10
    rst $08                                       ; $69d0: $cf
    rrca                                          ; $69d1: $0f
    push af                                       ; $69d2: $f5
    rrca                                          ; $69d3: $0f
    sbc a                                         ; $69d4: $9f
    ld de, $1115                                  ; $69d5: $11 $15 $11
    jp nz, $5210                                  ; $69d8: $c2 $10 $52

    dec b                                         ; $69db: $05
    dec b                                         ; $69dc: $05

    db $24

    ld d, e                                       ; $69de: $53
    ld d, e                                       ; $69df: $53
    ld d, b                                       ; $69e0: $50
    ld c, [hl]                                    ; $69e1: $4e
    ld c, [hl]                                    ; $69e2: $4e
    ld c, a                                       ; $69e3: $4f
    ld c, a                                       ; $69e4: $4f
    ld c, a                                       ; $69e5: $4f
    ld d, c                                       ; $69e6: $51
    ld [hl-], a                                   ; $69e7: $32
    add hl, hl                                    ; $69e8: $29
    ld a, [hl+]                                   ; $69e9: $2a
    jr nc, @+$29                                  ; $69ea: $30 $27

    daa                                           ; $69ec: $27
    daa                                           ; $69ed: $27
    daa                                           ; $69ee: $27
    daa                                           ; $69ef: $27
    daa                                           ; $69f0: $27
    daa                                           ; $69f1: $27
    daa                                           ; $69f2: $27
    daa                                           ; $69f3: $27
    daa                                           ; $69f4: $27
    daa                                           ; $69f5: $27
    daa                                           ; $69f6: $27
    daa                                           ; $69f7: $27
    add a                                         ; $69f8: $87
    ld l, l                                       ; $69f9: $6d
    ld c, $00                                     ; $69fa: $0e $00
    inc hl                                        ; $69fc: $23
    ld l, l                                       ; $69fd: $6d
    ld bc, $4d00                                  ; $69fe: $01 $00 $4d
    ld l, l                                       ; $6a01: $6d
    dec l                                         ; $6a02: $2d
    nop                                           ; $6a03: $00

    db $23, $6b, $09, $00

    ccf                                           ; $6a08: $3f
    ld l, e                                       ; $6a09: $6b
    jr jr_003_6a0c                                ; $6a0a: $18 $00

jr_003_6a0c:
    ld e, l                                       ; $6a0c: $5d
    ld l, e                                       ; $6a0d: $6b
    ld e, $00                                     ; $6a0e: $1e $00
    add l                                         ; $6a10: $85
    ld l, e                                       ; $6a11: $6b
    ld e, $00                                     ; $6a12: $1e $00
    sbc e                                         ; $6a14: $9b
    ld l, e                                       ; $6a15: $6b
    jr z, jr_003_6a18                             ; $6a16: $28 $00

jr_003_6a18:
    pop bc                                        ; $6a18: $c1
    ld l, e                                       ; $6a19: $6b
    jr jr_003_6a1c                                ; $6a1a: $18 $00

jr_003_6a1c:
    rlca                                          ; $6a1c: $07
    ld l, h                                       ; $6a1d: $6c
    inc h                                         ; $6a1e: $24
    nop                                           ; $6a1f: $00
    rlca                                          ; $6a20: $07
    ld l, h                                       ; $6a21: $6c
    inc h                                         ; $6a22: $24
    nop                                           ; $6a23: $00
    inc de                                        ; $6a24: $13
    ld l, h                                       ; $6a25: $6c
    inc h                                         ; $6a26: $24
    nop                                           ; $6a27: $00
    adc a                                         ; $6a28: $8f
    ld l, h                                       ; $6a29: $6c
    inc h                                         ; $6a2a: $24
    nop                                           ; $6a2b: $00
    db $dd                                        ; $6a2c: $dd
    ld l, h                                       ; $6a2d: $6c
    jr jr_003_6a30                                ; $6a2e: $18 $00

jr_003_6a30:
    adc a                                         ; $6a30: $8f
    ld l, h                                       ; $6a31: $6c
    inc h                                         ; $6a32: $24
    nop                                           ; $6a33: $00
    xor e                                         ; $6a34: $ab
    ld l, h                                       ; $6a35: $6c
    inc l                                         ; $6a36: $2c
    nop                                           ; $6a37: $00
    add hl, bc                                    ; $6a38: $09
    ld l, l                                       ; $6a39: $6d
    rrca                                          ; $6a3a: $0f
    nop                                           ; $6a3b: $00
    add a                                         ; $6a3c: $87
    ld l, l                                       ; $6a3d: $6d
    ld c, $00                                     ; $6a3e: $0e $00
    add a                                         ; $6a40: $87
    ld l, l                                       ; $6a41: $6d
    ld c, $00                                     ; $6a42: $0e $00
    add a                                         ; $6a44: $87
    ld l, l                                       ; $6a45: $6d
    ld c, $00                                     ; $6a46: $0e $00
    add a                                         ; $6a48: $87
    ld l, l                                       ; $6a49: $6d
    ld c, $00                                     ; $6a4a: $0e $00
    add a                                         ; $6a4c: $87
    ld l, l                                       ; $6a4d: $6d
    ld c, $00                                     ; $6a4e: $0e $00
    and a                                         ; $6a50: $a7
    ld l, l                                       ; $6a51: $6d
    ld [$2300], sp                                ; $6a52: $08 $00 $23
    ld l, e                                       ; $6a55: $6b
    add hl, bc                                    ; $6a56: $09
    nop                                           ; $6a57: $00
    pop bc                                        ; $6a58: $c1
    ld l, l                                       ; $6a59: $6d
    inc c                                         ; $6a5a: $0c
    nop                                           ; $6a5b: $00
    dec e                                         ; $6a5c: $1d
    ld l, c                                       ; $6a5d: $69
    ld bc, $9e00                                  ; $6a5e: $01 $00 $9e
    ld l, c                                       ; $6a61: $69
    ld bc, $8700                                  ; $6a62: $01 $00 $87
    ld l, l                                       ; $6a65: $6d
    ld c, $00                                     ; $6a66: $0e $00
    ld a, d                                       ; $6a68: $7a
    ld l, c                                       ; $6a69: $69
    ld [hl], $00                                  ; $6a6a: $36 $00
    inc bc                                        ; $6a6c: $03
    ld l, c                                       ; $6a6d: $69
    inc h                                         ; $6a6e: $24
    nop                                           ; $6a6f: $00
    adc l                                         ; $6a70: $8d
    ld l, l                                       ; $6a71: $6d
    nop                                           ; $6a72: $00
    nop                                           ; $6a73: $00
    dec h                                         ; $6a74: $25
    ld l, l                                       ; $6a75: $6d
    nop                                           ; $6a76: $00
    nop                                           ; $6a77: $00
    ld e, a                                       ; $6a78: $5f
    ld l, l                                       ; $6a79: $6d
    nop                                           ; $6a7a: $00
    nop                                           ; $6a7b: $00

    db $29, $6b, $00, $00

    ld b, a                                       ; $6a80: $47
    ld l, e                                       ; $6a81: $6b
    nop                                           ; $6a82: $00
    nop                                           ; $6a83: $00
    ld h, a                                       ; $6a84: $67
    ld l, e                                       ; $6a85: $6b
    nop                                           ; $6a86: $00
    nop                                           ; $6a87: $00
    adc a                                         ; $6a88: $8f
    ld l, e                                       ; $6a89: $6b
    nop                                           ; $6a8a: $00
    nop                                           ; $6a8b: $00
    xor e                                         ; $6a8c: $ab
    ld l, e                                       ; $6a8d: $6b
    nop                                           ; $6a8e: $00
    nop                                           ; $6a8f: $00
    xor c                                         ; $6a90: $a9
    ld l, h                                       ; $6a91: $6c
    nop                                           ; $6a92: $00
    nop                                           ; $6a93: $00
    ld hl, $006c                                  ; $6a94: $21 $6c $00
    nop                                           ; $6a97: $00
    daa                                           ; $6a98: $27
    ld l, h                                       ; $6a99: $6c
    nop                                           ; $6a9a: $00
    nop                                           ; $6a9b: $00
    cpl                                           ; $6a9c: $2f
    ld l, h                                       ; $6a9d: $6c
    nop                                           ; $6a9e: $00
    nop                                           ; $6a9f: $00
    xor c                                         ; $6aa0: $a9
    ld l, h                                       ; $6aa1: $6c
    nop                                           ; $6aa2: $00
    nop                                           ; $6aa3: $00
    xor c                                         ; $6aa4: $a9
    ld l, h                                       ; $6aa5: $6c
    nop                                           ; $6aa6: $00
    nop                                           ; $6aa7: $00
    xor c                                         ; $6aa8: $a9
    ld l, h                                       ; $6aa9: $6c
    nop                                           ; $6aaa: $00
    nop                                           ; $6aab: $00
    xor c                                         ; $6aac: $a9
    ld l, h                                       ; $6aad: $6c
    nop                                           ; $6aae: $00
    nop                                           ; $6aaf: $00
    rrca                                          ; $6ab0: $0f
    ld l, l                                       ; $6ab1: $6d
    nop                                           ; $6ab2: $00
    nop                                           ; $6ab3: $00
    adc l                                         ; $6ab4: $8d
    ld l, l                                       ; $6ab5: $6d
    nop                                           ; $6ab6: $00
    nop                                           ; $6ab7: $00
    adc l                                         ; $6ab8: $8d
    ld l, l                                       ; $6ab9: $6d
    nop                                           ; $6aba: $00
    nop                                           ; $6abb: $00
    adc l                                         ; $6abc: $8d
    ld l, l                                       ; $6abd: $6d
    nop                                           ; $6abe: $00
    nop                                           ; $6abf: $00
    adc l                                         ; $6ac0: $8d
    ld l, l                                       ; $6ac1: $6d
    nop                                           ; $6ac2: $00
    nop                                           ; $6ac3: $00
    adc l                                         ; $6ac4: $8d
    ld l, l                                       ; $6ac5: $6d
    nop                                           ; $6ac6: $00
    nop                                           ; $6ac7: $00
    xor e                                         ; $6ac8: $ab
    ld l, l                                       ; $6ac9: $6d
    nop                                           ; $6aca: $00
    nop                                           ; $6acb: $00
    add hl, hl                                    ; $6acc: $29
    ld l, e                                       ; $6acd: $6b
    nop                                           ; $6ace: $00
    nop                                           ; $6acf: $00
    rst $00                                       ; $6ad0: $c7
    ld l, l                                       ; $6ad1: $6d
    nop                                           ; $6ad2: $00
    nop                                           ; $6ad3: $00
    dec e                                         ; $6ad4: $1d
    ld l, c                                       ; $6ad5: $69
    nop                                           ; $6ad6: $00
    nop                                           ; $6ad7: $00
    sbc [hl]                                      ; $6ad8: $9e
    ld l, c                                       ; $6ad9: $69
    nop                                           ; $6ada: $00
    nop                                           ; $6adb: $00
    adc l                                         ; $6adc: $8d
    ld l, l                                       ; $6add: $6d
    nop                                           ; $6ade: $00
    nop                                           ; $6adf: $00
    adc l                                         ; $6ae0: $8d
    ld l, l                                       ; $6ae1: $6d
    nop                                           ; $6ae2: $00
    nop                                           ; $6ae3: $00
    adc l                                         ; $6ae4: $8d
    ld l, l                                       ; $6ae5: $6d
    nop                                           ; $6ae6: $00
    nop                                           ; $6ae7: $00
    sbc c                                         ; $6ae8: $99
    ld l, l                                       ; $6ae9: $6d
    dec d                                         ; $6aea: $15
    nop                                           ; $6aeb: $00
    dec sp                                        ; $6aec: $3b
    ld l, l                                       ; $6aed: $6d
    inc h                                         ; $6aee: $24
    nop                                           ; $6aef: $00
    ld h, c                                       ; $6af0: $61
    ld l, l                                       ; $6af1: $6d
    ld d, l                                       ; $6af2: $55
    nop                                           ; $6af3: $00

    db $31, $6b, $15, $00

    ld d, c                                       ; $6af8: $51
    ld l, e                                       ; $6af9: $6b
    inc a                                         ; $6afa: $3c
    nop                                           ; $6afb: $00
    ld h, a                                       ; $6afc: $67
    ld l, e                                       ; $6afd: $6b
    inc a                                         ; $6afe: $3c
    nop                                           ; $6aff: $00
    sub c                                         ; $6b00: $91
    ld l, e                                       ; $6b01: $6b
    add hl, de                                    ; $6b02: $19
    nop                                           ; $6b03: $00
    xor l                                         ; $6b04: $ad
    ld l, e                                       ; $6b05: $6b
    ld [hl-], a                                   ; $6b06: $32
    nop                                           ; $6b07: $00
    pop de                                        ; $6b08: $d1
    ld l, e                                       ; $6b09: $6b
    ld d, b                                       ; $6b0a: $50
    nop                                           ; $6b0b: $00
    scf                                           ; $6b0c: $37
    ld l, h                                       ; $6b0d: $6c
    ld h, [hl]                                    ; $6b0e: $66
    nop                                           ; $6b0f: $00
    ld c, e                                       ; $6b10: $4b
    ld l, h                                       ; $6b11: $6c
    ld [hl], $00                                  ; $6b12: $36 $00
    ld e, l                                       ; $6b14: $5d
    ld l, h                                       ; $6b15: $6c
    ld l, h                                       ; $6b16: $6c
    nop                                           ; $6b17: $00
    sbc e                                         ; $6b18: $9b
    ld l, h                                       ; $6b19: $6c
    inc h                                         ; $6b1a: $24
    nop                                           ; $6b1b: $00
    push hl                                       ; $6b1c: $e5
    ld l, h                                       ; $6b1d: $6c
    ld e, d                                       ; $6b1e: $5a
    nop                                           ; $6b1f: $00
    pop bc                                        ; $6b20: $c1
    ld l, h                                       ; $6b21: $6c
    ld a, [hl+]                                   ; $6b22: $2a
    nop                                           ; $6b23: $00
    rst $08                                       ; $6b24: $cf
    ld l, h                                       ; $6b25: $6c
    inc hl                                        ; $6b26: $23
    nop                                           ; $6b27: $00
    rla                                           ; $6b28: $17
    ld l, l                                       ; $6b29: $6d
    ld e, $00                                     ; $6b2a: $1e $00
    ld h, a                                       ; $6b2c: $67
    ld l, e                                       ; $6b2d: $6b
    inc a                                         ; $6b2e: $3c
    nop                                           ; $6b2f: $00
    scf                                           ; $6b30: $37
    ld l, h                                       ; $6b31: $6c
    ld h, [hl]                                    ; $6b32: $66
    nop                                           ; $6b33: $00
    rst $08                                       ; $6b34: $cf
    ld l, h                                       ; $6b35: $6c
    inc hl                                        ; $6b36: $23
    nop                                           ; $6b37: $00
    pop de                                        ; $6b38: $d1
    ld l, e                                       ; $6b39: $6b
    ld d, b                                       ; $6b3a: $50
    nop                                           ; $6b3b: $00
    ld e, l                                       ; $6b3c: $5d
    ld l, h                                       ; $6b3d: $6c
    ld l, h                                       ; $6b3e: $6c
    nop                                           ; $6b3f: $00
    cp c                                          ; $6b40: $b9
    ld l, l                                       ; $6b41: $6d
    stop                                          ; $6b42: $10 $00
    ld sp, $156b                                  ; $6b44: $31 $6b $15
    nop                                           ; $6b47: $00
    db $d3                                        ; $6b48: $d3
    ld l, l                                       ; $6b49: $6d
    ld bc, $1d00                                  ; $6b4a: $01 $00 $1d
    ld l, c                                       ; $6b4d: $69
    ld bc, $9e00                                  ; $6b4e: $01 $00 $9e
    ld l, c                                       ; $6b51: $69
    ld bc, $9e00                                  ; $6b52: $01 $00 $9e
    ld l, c                                       ; $6b55: $69
    ld bc, $9e00                                  ; $6b56: $01 $00 $9e
    ld l, c                                       ; $6b59: $69
    ld bc, $9000                                  ; $6b5a: $01 $00 $90
    ld l, c                                       ; $6b5d: $69
    jr z, jr_003_6b60                             ; $6b5e: $28 $00

Call_003_6b60:
jr_003_6b60:
    ldh a, [rSVBK]                                ; $6b60: $f0 $70
    push af                                       ; $6b62: $f5
    ld a, $06                                     ; $6b63: $3e $06
    ldh [rSVBK], a                                ; $6b65: $e0 $70
    ld a, [$d5d5]                                 ; $6b67: $fa $d5 $d5
    ldh [$bc], a                                  ; $6b6a: $e0 $bc
    pop af                                        ; $6b6c: $f1
    ldh [rSVBK], a                                ; $6b6d: $e0 $70
    ldh a, [$bc]                                  ; $6b6f: $f0 $bc
    cp $18                                        ; $6b71: $fe $18
    jr nz, jr_003_6b80                            ; $6b73: $20 $0b

    ldh a, [$d8]                                  ; $6b75: $f0 $d8
    cp $09                                        ; $6b77: $fe $09
    jr nz, jr_003_6b80                            ; $6b79: $20 $05

    ld hl, $620e                                  ; $6b7b: $21 $0e $62
    jr jr_003_6b88                                ; $6b7e: $18 $08

jr_003_6b80:
    ldh a, [$d8]                                  ; $6b80: $f0 $d8
    ld hl, $614e                                  ; $6b82: $21 $4e $61
    call Call_000_319d                            ; $6b85: $cd $9d $31

jr_003_6b88:
    ldh a, [rDIV]                                 ; $6b88: $f0 $04
    and $03                                       ; $6b8a: $e6 $03
    jp Jump_000_319d                              ; $6b8c: $c3 $9d $31


    ld hl, $65fc                                  ; $6b8f: $21 $fc $65
    jr jr_003_6b97                                ; $6b92: $18 $03

    ld hl, $699e                                  ; $6b94: $21 $9e $69

jr_003_6b97:
    inc bc                                        ; $6b97: $03
    ld a, [bc]                                    ; $6b98: $0a
    dec bc                                        ; $6b99: $0b
    call Call_000_3194                            ; $6b9a: $cd $94 $31
    ldh [$c1], a                                  ; $6b9d: $e0 $c1
    ld a, $b5                                     ; $6b9f: $3e $b5
    ldh [$bd], a                                  ; $6ba1: $e0 $bd
    ld a, $63                                     ; $6ba3: $3e $63
    ldh [$be], a                                  ; $6ba5: $e0 $be
    jp Jump_000_33cb                              ; $6ba7: $c3 $cb $33


    ld e, [hl]                                    ; $6baa: $5e
    inc hl                                        ; $6bab: $23
    ld d, [hl]                                    ; $6bac: $56
    inc hl                                        ; $6bad: $23
    ld a, [hl+]                                   ; $6bae: $2a
    ld h, [hl]                                    ; $6baf: $66
    ld l, a                                       ; $6bb0: $6f
    ret                                           ; $6bb1: $c9


Call_003_6bb2:
    ld hl, $0001                                  ; $6bb2: $21 $01 $00
    add hl, bc                                    ; $6bb5: $09
    ld a, [hl+]                                   ; $6bb6: $2a
    push hl                                       ; $6bb7: $e5
    rst $08                                       ; $6bb8: $cf
    pop hl                                        ; $6bb9: $e1
    ret                                           ; $6bba: $c9


    call Call_003_6bb2                            ; $6bbb: $cd $b2 $6b
    cp [hl]                                       ; $6bbe: $be
    jp Jump_000_0039                              ; $6bbf: $c3 $39 $00


    call Call_003_6bb2                            ; $6bc2: $cd $b2 $6b
    cp [hl]                                       ; $6bc5: $be
    call Call_000_0039                            ; $6bc6: $cd $39 $00
    ld a, [hl]                                    ; $6bc9: $7e
    inc a                                         ; $6bca: $3c
    ld [$cbe7], a                                 ; $6bcb: $ea $e7 $cb
    ret                                           ; $6bce: $c9


    db $00, $00, $00, $fd, $1f, $02, $e1, $fd, $00, $03, $00, $00

    rra                                           ; $6bdb: $1f
    ld [bc], a                                    ; $6bdc: $02
    rra                                           ; $6bdd: $1f
    ld [bc], a                                    ; $6bde: $02

    db $00, $00, $00, $03

    pop hl                                        ; $6be3: $e1
    db $fd                                        ; $6be4: $fd
    rra                                           ; $6be5: $1f
    ld [bc], a                                    ; $6be6: $02

    db $00, $fd, $00, $00, $e1, $fd, $e1, $fd

Call_003_6bef:
    ld hl, $000f                                  ; $6bef: $21 $0f $00
    add hl, bc                                    ; $6bf2: $09
    ld a, [hl+]                                   ; $6bf3: $2a
    ld d, [hl]                                    ; $6bf4: $56
    ld hl, $0005                                  ; $6bf5: $21 $05 $00
    add hl, bc                                    ; $6bf8: $09
    add [hl]                                      ; $6bf9: $86
    ld [$cdc0], a                                 ; $6bfa: $ea $c0 $cd
    inc hl                                        ; $6bfd: $23
    ld a, d                                       ; $6bfe: $7a
    adc [hl]                                      ; $6bff: $8e
    ld [$cdc1], a                                 ; $6c00: $ea $c1 $cd
    ld e, a                                       ; $6c03: $5f
    inc hl                                        ; $6c04: $23
    ld a, $00                                     ; $6c05: $3e $00
    bit 7, d                                      ; $6c07: $cb $7a
    jr z, jr_003_6c0d                             ; $6c09: $28 $02

    ld a, $ff                                     ; $6c0b: $3e $ff

jr_003_6c0d:
    adc [hl]                                      ; $6c0d: $8e
    ld [$cdc2], a                                 ; $6c0e: $ea $c2 $cd
    ld d, a                                       ; $6c11: $57
    ret                                           ; $6c12: $c9


Call_003_6c13:
    ld hl, $0011                                  ; $6c13: $21 $11 $00
    add hl, bc                                    ; $6c16: $09
    ld a, [hl+]                                   ; $6c17: $2a
    ld d, [hl]                                    ; $6c18: $56
    ld hl, $0008                                  ; $6c19: $21 $08 $00
    add hl, bc                                    ; $6c1c: $09
    add [hl]                                      ; $6c1d: $86
    ld [$cdc3], a                                 ; $6c1e: $ea $c3 $cd
    inc hl                                        ; $6c21: $23
    ld a, d                                       ; $6c22: $7a
    adc [hl]                                      ; $6c23: $8e
    ld [$cdc4], a                                 ; $6c24: $ea $c4 $cd
    ld e, a                                       ; $6c27: $5f
    inc hl                                        ; $6c28: $23
    ld a, $00                                     ; $6c29: $3e $00
    bit 7, d                                      ; $6c2b: $cb $7a
    jr z, jr_003_6c31                             ; $6c2d: $28 $02

    ld a, $ff                                     ; $6c2f: $3e $ff

jr_003_6c31:
    adc [hl]                                      ; $6c31: $8e
    ld [$cdc5], a                                 ; $6c32: $ea $c5 $cd
    ld d, a                                       ; $6c35: $57
    ret                                           ; $6c36: $c9


    call Call_003_6bef                            ; $6c37: $cd $ef $6b
    call Call_003_6c13                            ; $6c3a: $cd $13 $6c
    ret                                           ; $6c3d: $c9


Call_003_6c3e:
    ld hl, $002b                                  ; $6c3e: $21 $2b $00
    add hl, bc                                    ; $6c41: $09
    bit 1, [hl]                                   ; $6c42: $cb $4e
    ret z                                         ; $6c44: $c8

    ld de, $ffd0                                  ; $6c45: $11 $d0 $ff
    ld hl, $0011                                  ; $6c48: $21 $11 $00
    add hl, bc                                    ; $6c4b: $09
    push hl                                       ; $6c4c: $e5
    ld a, [hl+]                                   ; $6c4d: $2a
    ld h, [hl]                                    ; $6c4e: $66
    ld l, a                                       ; $6c4f: $6f
    add hl, de                                    ; $6c50: $19
    pop de                                        ; $6c51: $d1
    ld a, l                                       ; $6c52: $7d
    ld [de], a                                    ; $6c53: $12
    inc de                                        ; $6c54: $13
    ld a, h                                       ; $6c55: $7c
    ld [de], a                                    ; $6c56: $12
    ret                                           ; $6c57: $c9


Call_003_6c58:
    ld hl, $cd5c                                  ; $6c58: $21 $5c $cd
    ld e, [hl]                                    ; $6c5b: $5e
    inc hl                                        ; $6c5c: $23
    ld d, [hl]                                    ; $6c5d: $56
    ld hl, $fffd                                  ; $6c5e: $21 $fd $ff
    add hl, de                                    ; $6c61: $19
    ld a, h                                       ; $6c62: $7c
    rla                                           ; $6c63: $17
    jr nc, jr_003_6c69                            ; $6c64: $30 $03

    ld hl, $0000                                  ; $6c66: $21 $00 $00

jr_003_6c69:
    ld a, l                                       ; $6c69: $7d
    ld [$cd5c], a                                 ; $6c6a: $ea $5c $cd
    ld a, h                                       ; $6c6d: $7c
    ld [$cd5d], a                                 ; $6c6e: $ea $5d $cd
    push hl                                       ; $6c71: $e5
    ld hl, $cd5e                                  ; $6c72: $21 $5e $cd
    ld a, [hl+]                                   ; $6c75: $2a
    ld h, [hl]                                    ; $6c76: $66
    ld l, a                                       ; $6c77: $6f
    pop de                                        ; $6c78: $d1
    call Call_003_7182                            ; $6c79: $cd $82 $71
    bit 2, a                                      ; $6c7c: $cb $57
    ret nz                                        ; $6c7e: $c0

    ld hl, $cd5c                                  ; $6c7f: $21 $5c $cd
    ld e, [hl]                                    ; $6c82: $5e
    inc hl                                        ; $6c83: $23
    ld d, [hl]                                    ; $6c84: $56
    ld hl, $0007                                  ; $6c85: $21 $07 $00
    add hl, de                                    ; $6c88: $19
    ld a, l                                       ; $6c89: $7d
    ld [$cd5c], a                                 ; $6c8a: $ea $5c $cd
    ld a, h                                       ; $6c8d: $7c
    ld [$cd5d], a                                 ; $6c8e: $ea $5d $cd
    push hl                                       ; $6c91: $e5
    ld hl, $cd5e                                  ; $6c92: $21 $5e $cd
    ld a, [hl+]                                   ; $6c95: $2a
    ld h, [hl]                                    ; $6c96: $66
    ld l, a                                       ; $6c97: $6f
    pop de                                        ; $6c98: $d1
    jp Jump_003_7182                              ; $6c99: $c3 $82 $71


Call_003_6c9c:
    ld hl, $002d                                  ; $6c9c: $21 $2d $00
    add hl, bc                                    ; $6c9f: $09
    bit 7, [hl]                                   ; $6ca0: $cb $7e
    ret z                                         ; $6ca2: $c8

    xor a                                         ; $6ca3: $af
    ld [$cd5b], a                                 ; $6ca4: $ea $5b $cd
    ld hl, $002b                                  ; $6ca7: $21 $2b $00
    add hl, bc                                    ; $6caa: $09
    ld a, [hl]                                    ; $6cab: $7e
    bit 1, a                                      ; $6cac: $cb $4f
    ret nz                                        ; $6cae: $c0

    xor a                                         ; $6caf: $af
    ld [$cd5b], a                                 ; $6cb0: $ea $5b $cd
    call Call_003_6d30                            ; $6cb3: $cd $30 $6d
    call Call_003_6c58                            ; $6cb6: $cd $58 $6c
    bit 3, l                                      ; $6cb9: $cb $5d
    jp nz, Jump_003_6cd8                          ; $6cbb: $c2 $d8 $6c

    ld e, $01                                     ; $6cbe: $1e $01
    call Call_003_6e49                            ; $6cc0: $cd $49 $6e
    ld a, [$cd5b]                                 ; $6cc3: $fa $5b $cd
    ld e, a                                       ; $6cc6: $5f
    or a                                          ; $6cc7: $b7
    jp z, Jump_003_6cce                           ; $6cc8: $ca $ce $6c

    call Call_003_6d5e                            ; $6ccb: $cd $5e $6d

Jump_003_6cce:
jr_003_6cce:
    call Call_003_6d4b                            ; $6cce: $cd $4b $6d

Jump_003_6cd1:
    ld hl, $caba                                  ; $6cd1: $21 $ba $ca
    ld c, [hl]                                    ; $6cd4: $4e
    inc hl                                        ; $6cd5: $23
    ld b, [hl]                                    ; $6cd6: $46
    ret                                           ; $6cd7: $c9


Jump_003_6cd8:
    ld a, [bc]                                    ; $6cd8: $0a
    cp $0f                                        ; $6cd9: $fe $0f
    jr z, jr_003_6ce2                             ; $6cdb: $28 $05

    cp $01                                        ; $6cdd: $fe $01
    jp nz, Jump_003_6cd1                          ; $6cdf: $c2 $d1 $6c

jr_003_6ce2:
    ld a, l                                       ; $6ce2: $7d
    res 3, a                                      ; $6ce3: $cb $9f
    or a                                          ; $6ce5: $b7
    jr z, jr_003_6d1c                             ; $6ce6: $28 $34

    cp $07                                        ; $6ce8: $fe $07
    jr z, jr_003_6cf1                             ; $6cea: $28 $05

    ld h, $00                                     ; $6cec: $26 $00
    jp Jump_003_6cd1                              ; $6cee: $c3 $d1 $6c


jr_003_6cf1:
    ld hl, $000f                                  ; $6cf1: $21 $0f $00
    add hl, bc                                    ; $6cf4: $09
    xor a                                         ; $6cf5: $af
    ld [hl+], a                                   ; $6cf6: $22
    ld [hl+], a                                   ; $6cf7: $22
    ld [hl+], a                                   ; $6cf8: $22
    ld [hl+], a                                   ; $6cf9: $22
    ld [hl+], a                                   ; $6cfa: $22
    ld [hl+], a                                   ; $6cfb: $22
    ld a, $01                                     ; $6cfc: $3e $01
    ldh [$de], a                                  ; $6cfe: $e0 $de
    ld e, $01                                     ; $6d00: $1e $01
    ldh [$c1], a                                  ; $6d02: $e0 $c1
    ld a, $9b                                     ; $6d04: $3e $9b
    ldh [$bd], a                                  ; $6d06: $e0 $bd
    ld a, $5f                                     ; $6d08: $3e $5f
    ldh [$be], a                                  ; $6d0a: $e0 $be
    call Call_000_33d9                            ; $6d0c: $cd $d9 $33
    ld hl, $caba                                  ; $6d0f: $21 $ba $ca
    ld c, [hl]                                    ; $6d12: $4e
    inc hl                                        ; $6d13: $23
    ld b, [hl]                                    ; $6d14: $46
    ld hl, $002d                                  ; $6d15: $21 $2d $00
    add hl, bc                                    ; $6d18: $09
    res 7, [hl]                                   ; $6d19: $cb $be
    ret                                           ; $6d1b: $c9


jr_003_6d1c:
    ldh a, [$a4]                                  ; $6d1c: $f0 $a4
    and $f0                                       ; $6d1e: $e6 $f0
    jr z, jr_003_6cce                             ; $6d20: $28 $ac

    ld a, [$cb17]                                 ; $6d22: $fa $17 $cb
    or a                                          ; $6d25: $b7
    jr nz, jr_003_6cce                            ; $6d26: $20 $a6

    call Call_000_355e                            ; $6d28: $cd $5e $35
    ld a, $19                                     ; $6d2b: $3e $19
    jp Jump_000_2448                              ; $6d2d: $c3 $48 $24


Call_003_6d30:
    ld hl, $cdc1                                  ; $6d30: $21 $c1 $cd
    ld a, [hl+]                                   ; $6d33: $2a
    ld h, [hl]                                    ; $6d34: $66
    ld l, a                                       ; $6d35: $6f
    ld [$cd5c], a                                 ; $6d36: $ea $5c $cd
    ld a, h                                       ; $6d39: $7c
    ld [$cd5d], a                                 ; $6d3a: $ea $5d $cd
    ld hl, $cdc4                                  ; $6d3d: $21 $c4 $cd
    ld a, [hl+]                                   ; $6d40: $2a
    ld h, [hl]                                    ; $6d41: $66
    ld l, a                                       ; $6d42: $6f
    ld [$cd5e], a                                 ; $6d43: $ea $5e $cd
    ld a, h                                       ; $6d46: $7c
    ld [$cd5f], a                                 ; $6d47: $ea $5f $cd
    ret                                           ; $6d4a: $c9


Call_003_6d4b:
    ld hl, $0009                                  ; $6d4b: $21 $09 $00
    add hl, bc                                    ; $6d4e: $09
    ld a, [hl+]                                   ; $6d4f: $2a
    ld h, [hl]                                    ; $6d50: $66
    ld l, a                                       ; $6d51: $6f
    push hl                                       ; $6d52: $e5
    ld hl, $0006                                  ; $6d53: $21 $06 $00
    add hl, bc                                    ; $6d56: $09
    ld e, [hl]                                    ; $6d57: $5e
    inc hl                                        ; $6d58: $23
    ld d, [hl]                                    ; $6d59: $56
    pop hl                                        ; $6d5a: $e1
    jp Jump_003_7182                              ; $6d5b: $c3 $82 $71


Call_003_6d5e:
    ld hl, $002d                                  ; $6d5e: $21 $2d $00
    add hl, bc                                    ; $6d61: $09
    bit 4, [hl]                                   ; $6d62: $cb $66
    ret z                                         ; $6d64: $c8

    set 6, [hl]                                   ; $6d65: $cb $f6
    call Call_003_6db9                            ; $6d67: $cd $b9 $6d
    xor a                                         ; $6d6a: $af
    ld hl, $000f                                  ; $6d6b: $21 $0f $00
    add hl, bc                                    ; $6d6e: $09
    ld [hl+], a                                   ; $6d6f: $22
    ld [hl+], a                                   ; $6d70: $22
    ld [hl+], a                                   ; $6d71: $22
    ld [hl+], a                                   ; $6d72: $22
    ret                                           ; $6d73: $c9


Call_003_6d74:
    ld hl, $0006                                  ; $6d74: $21 $06 $00
    add hl, bc                                    ; $6d77: $09
    ld a, [hl+]                                   ; $6d78: $2a
    ld d, [hl]                                    ; $6d79: $56
    ld e, a                                       ; $6d7a: $5f
    call Call_000_0098                            ; $6d7b: $cd $98 $00
    ld hl, $cdc1                                  ; $6d7e: $21 $c1 $cd
    ld a, [hl+]                                   ; $6d81: $2a
    ld h, [hl]                                    ; $6d82: $66
    ld l, a                                       ; $6d83: $6f
    add hl, de                                    ; $6d84: $19
    ld a, [$cd5c]                                 ; $6d85: $fa $5c $cd
    ld e, a                                       ; $6d88: $5f
    ld a, [$cd5d]                                 ; $6d89: $fa $5d $cd
    ld d, a                                       ; $6d8c: $57
    add hl, de                                    ; $6d8d: $19
    ld a, l                                       ; $6d8e: $7d
    ld [$cd5c], a                                 ; $6d8f: $ea $5c $cd
    ld a, h                                       ; $6d92: $7c
    ld [$cd5d], a                                 ; $6d93: $ea $5d $cd
    ld hl, $0009                                  ; $6d96: $21 $09 $00
    add hl, bc                                    ; $6d99: $09
    ld a, [hl+]                                   ; $6d9a: $2a
    ld d, [hl]                                    ; $6d9b: $56
    ld e, a                                       ; $6d9c: $5f
    call Call_000_0098                            ; $6d9d: $cd $98 $00
    ld hl, $cdc4                                  ; $6da0: $21 $c4 $cd
    ld a, [hl+]                                   ; $6da3: $2a
    ld h, [hl]                                    ; $6da4: $66
    ld l, a                                       ; $6da5: $6f
    add hl, de                                    ; $6da6: $19
    ld a, [$cd5e]                                 ; $6da7: $fa $5e $cd
    ld e, a                                       ; $6daa: $5f
    ld a, [$cd5f]                                 ; $6dab: $fa $5f $cd
    ld d, a                                       ; $6dae: $57
    add hl, de                                    ; $6daf: $19
    ld a, l                                       ; $6db0: $7d
    ld [$cd5e], a                                 ; $6db1: $ea $5e $cd
    ld a, h                                       ; $6db4: $7c
    ld [$cd5f], a                                 ; $6db5: $ea $5f $cd
    ret                                           ; $6db8: $c9


Call_003_6db9:
    call Call_003_6d74                            ; $6db9: $cd $74 $6d
    ld hl, $0005                                  ; $6dbc: $21 $05 $00
    add hl, bc                                    ; $6dbf: $09
    ld de, $cdc0                                  ; $6dc0: $11 $c0 $cd
    call CopyHL2DE_6                            ; $6dc3: $cd $45 $12
    ld hl, $000f                                  ; $6dc6: $21 $0f $00
    add hl, bc                                    ; $6dc9: $09
    ld a, [hl+]                                   ; $6dca: $2a
    ld h, [hl]                                    ; $6dcb: $66
    ld l, a                                       ; $6dcc: $6f
    bit 7, h                                      ; $6dcd: $cb $7c
    ld d, $ff                                     ; $6dcf: $16 $ff
    jr nz, jr_003_6dd8                            ; $6dd1: $20 $05

    inc d                                         ; $6dd3: $14
    or h                                          ; $6dd4: $b4
    jr z, jr_003_6dd8                             ; $6dd5: $28 $01

    inc d                                         ; $6dd7: $14

jr_003_6dd8:
    ld hl, $0011                                  ; $6dd8: $21 $11 $00
    add hl, bc                                    ; $6ddb: $09
    ld a, [hl+]                                   ; $6ddc: $2a
    ld h, [hl]                                    ; $6ddd: $66
    ld l, a                                       ; $6dde: $6f
    bit 7, h                                      ; $6ddf: $cb $7c
    ld e, $ff                                     ; $6de1: $1e $ff
    jr nz, jr_003_6dea                            ; $6de3: $20 $05

    inc e                                         ; $6de5: $1c
    or h                                          ; $6de6: $b4
    jr z, jr_003_6dea                             ; $6de7: $28 $01

    inc e                                         ; $6de9: $1c

jr_003_6dea:
    ld hl, $ffb3                                  ; $6dea: $21 $b3 $ff
    ld [hl], e                                    ; $6ded: $73
    inc hl                                        ; $6dee: $23
    ld [hl], d                                    ; $6def: $72
    ld hl, $cd5c                                  ; $6df0: $21 $5c $cd
    ld e, [hl]                                    ; $6df3: $5e
    inc hl                                        ; $6df4: $23
    ld d, [hl]                                    ; $6df5: $56
    ld hl, $cd5e                                  ; $6df6: $21 $5e $cd
    ld a, [hl+]                                   ; $6df9: $2a
    ld h, [hl]                                    ; $6dfa: $66
    ld l, a                                       ; $6dfb: $6f
    push bc                                       ; $6dfc: $c5
    ld b, $03                                     ; $6dfd: $06 $03

jr_003_6dff:
    push hl                                       ; $6dff: $e5
    ld l, e                                       ; $6e00: $6b
    ld h, d                                       ; $6e01: $62
    ldh a, [$b4]                                  ; $6e02: $f0 $b4
    call Call_000_31a8                            ; $6e04: $cd $a8 $31
    ld e, l                                       ; $6e07: $5d
    ld d, h                                       ; $6e08: $54
    pop hl                                        ; $6e09: $e1
    ldh a, [$b3]                                  ; $6e0a: $f0 $b3
    call Call_000_31a8                            ; $6e0c: $cd $a8 $31
    push hl                                       ; $6e0f: $e5
    call Call_003_7182                            ; $6e10: $cd $82 $71
    pop hl                                        ; $6e13: $e1
    bit 2, a                                      ; $6e14: $cb $57
    jr nz, jr_003_6e1e                            ; $6e16: $20 $06

    call Call_003_6e20                            ; $6e18: $cd $20 $6e
    dec b                                         ; $6e1b: $05
    jr nz, jr_003_6dff                            ; $6e1c: $20 $e1

jr_003_6e1e:
    pop bc                                        ; $6e1e: $c1
    ret                                           ; $6e1f: $c9


Call_003_6e20:
    push hl                                       ; $6e20: $e5
    ld hl, $cdc1                                  ; $6e21: $21 $c1 $cd
    ld a, [hl+]                                   ; $6e24: $2a
    ld h, [hl]                                    ; $6e25: $66
    ld l, a                                       ; $6e26: $6f
    ldh a, [$b4]                                  ; $6e27: $f0 $b4
    call Call_000_31a8                            ; $6e29: $cd $a8 $31
    ld a, l                                       ; $6e2c: $7d
    ld [$cdc1], a                                 ; $6e2d: $ea $c1 $cd
    ld a, h                                       ; $6e30: $7c
    ld [$cdc2], a                                 ; $6e31: $ea $c2 $cd
    ld hl, $cdc4                                  ; $6e34: $21 $c4 $cd
    ld a, [hl+]                                   ; $6e37: $2a
    ld h, [hl]                                    ; $6e38: $66
    ld l, a                                       ; $6e39: $6f
    ldh a, [$b3]                                  ; $6e3a: $f0 $b3
    call Call_000_31a8                            ; $6e3c: $cd $a8 $31
    ld a, l                                       ; $6e3f: $7d
    ld [$cdc4], a                                 ; $6e40: $ea $c4 $cd
    ld a, h                                       ; $6e43: $7c
    ld [$cdc5], a                                 ; $6e44: $ea $c5 $cd
    pop hl                                        ; $6e47: $e1
    ret                                           ; $6e48: $c9


Call_003_6e49:
    ld a, l                                       ; $6e49: $7d
    bit 2, a                                      ; $6e4a: $cb $57
    jr nz, jr_003_6e4f                            ; $6e4c: $20 $01

    ret                                           ; $6e4e: $c9


jr_003_6e4f:
    ld a, [$cd5b]                                 ; $6e4f: $fa $5b $cd
    or e                                          ; $6e52: $b3
    ld [$cd5b], a                                 ; $6e53: $ea $5b $cd
    ret                                           ; $6e56: $c9


Call_003_6e57:
    ldh a, [$a4]                                  ; $6e57: $f0 $a4
    call Call_003_6eba                            ; $6e59: $cd $ba $6e
    ld [$cae2], a                                 ; $6e5c: $ea $e2 $ca
    ld a, [$cae1]                                 ; $6e5f: $fa $e1 $ca
    ldh [$b2], a                                  ; $6e62: $e0 $b2
    ld hl, $cae2                                  ; $6e64: $21 $e2 $ca
    cp [hl]                                       ; $6e67: $be
    jr nz, jr_003_6e6f                            ; $6e68: $20 $05

    xor a                                         ; $6e6a: $af
    ld [$cae3], a                                 ; $6e6b: $ea $e3 $ca
    ret                                           ; $6e6e: $c9


jr_003_6e6f:
    ld e, $01                                     ; $6e6f: $1e $01
    ld d, $ff                                     ; $6e71: $16 $ff
    ld hl, $cae3                                  ; $6e73: $21 $e3 $ca
    dec [hl]                                      ; $6e76: $35
    bit 7, [hl]                                   ; $6e77: $cb $7e
    ret z                                         ; $6e79: $c8

    ld hl, $cae2                                  ; $6e7a: $21 $e2 $ca
    ldh a, [$b2]                                  ; $6e7d: $f0 $b2
    sub [hl]                                      ; $6e7f: $96
    and $07                                       ; $6e80: $e6 $07
    cp $04                                        ; $6e82: $fe $04
    ld a, d                                       ; $6e84: $7a
    jr c, jr_003_6e88                             ; $6e85: $38 $01

    ld a, e                                       ; $6e87: $7b

jr_003_6e88:
    ld hl, $ffb2                                  ; $6e88: $21 $b2 $ff
    add [hl]                                      ; $6e8b: $86
    cp $07                                        ; $6e8c: $fe $07
    jr c, jr_003_6e98                             ; $6e8e: $38 $08

    cp $08                                        ; $6e90: $fe $08
    ld a, $00                                     ; $6e92: $3e $00
    jr z, jr_003_6e98                             ; $6e94: $28 $02

    ld a, $07                                     ; $6e96: $3e $07

jr_003_6e98:
    ld [$cae1], a                                 ; $6e98: $ea $e1 $ca
    ld hl, $c339                                  ; $6e9b: $21 $39 $c3
    ld [hl], a                                    ; $6e9e: $77
    ld a, $02                                     ; $6e9f: $3e $02
    ld [$cae3], a                                 ; $6ea1: $ea $e3 $ca
    ret                                           ; $6ea4: $c9


Call_003_6ea5:
    ld hl, $c34b                                  ; $6ea5: $21 $4b $c3
    bit 1, [hl]                                   ; $6ea8: $cb $4e
    ret nz                                        ; $6eaa: $c0

    ld a, [$cae1]                                 ; $6eab: $fa $e1 $ca
    ld hl, $6bcf                                  ; $6eae: $21 $cf $6b
    call Call_000_317d                            ; $6eb1: $cd $7d $31
    ld de, $c32f                                  ; $6eb4: $11 $2f $c3
    jp CopyHL2DE_4                              ; $6eb7: $c3 $4b $12


Call_003_6eba:
    swap a                                        ; $6eba: $cb $37
    and $0f                                       ; $6ebc: $e6 $0f
    ld hl, $6ec4                                  ; $6ebe: $21 $c4 $6e
    jp RST_08                                     ; $6ec1: $c3 $08 $00


    nop                                           ; $6ec4: $00

    db $02, $06

    nop                                           ; $6ec7: $00

    db $00, $01, $07

    nop                                           ; $6ecb: $00

    db $04

    inc bc                                        ; $6ecd: $03
    dec b                                         ; $6ece: $05
    nop                                           ; $6ecf: $00
    nop                                           ; $6ed0: $00
    nop                                           ; $6ed1: $00
    nop                                           ; $6ed2: $00
    nop                                           ; $6ed3: $00

    ld hl, $9800                                  ; $6ed4: $21 $00 $98
    ld bc, $0400                                  ; $6ed7: $01 $00 $04
    ld a, $7f                                     ; $6eda: $3e $7f
    call Call_000_112f                            ; $6edc: $cd $2f $11
    ld hl, $9c00                                  ; $6edf: $21 $00 $9c
    ld bc, $0400                                  ; $6ee2: $01 $00 $04
    ld a, $7f                                     ; $6ee5: $3e $7f
    call Call_000_112f                            ; $6ee7: $cd $2f $11
    call Call_003_6f23                            ; $6eea: $cd $23 $6f
    ld a, $01                                     ; $6eed: $3e $01
    ldh [rVBK], a                                 ; $6eef: $e0 $4f
    ld hl, $9800                                  ; $6ef1: $21 $00 $98
    ld bc, $0400                                  ; $6ef4: $01 $00 $04
    ld a, $08                                     ; $6ef7: $3e $08
    call Call_000_112f                            ; $6ef9: $cd $2f $11
    ld hl, $9c00                                  ; $6efc: $21 $00 $9c
    ld bc, $0400                                  ; $6eff: $01 $00 $04
    ld a, $08                                     ; $6f02: $3e $08
    call Call_000_112f                            ; $6f04: $cd $2f $11
    call Call_003_6f23                            ; $6f07: $cd $23 $6f
    xor a                                         ; $6f0a: $af
    ldh [rVBK], a                                 ; $6f0b: $e0 $4f
    ldh a, [rSVBK]                                ; $6f0d: $f0 $70
    push af                                       ; $6f0f: $f5
    ld a, $01                                     ; $6f10: $3e $01
    ldh [rSVBK], a                                ; $6f12: $e0 $70
    ld hl, $d800                                  ; $6f14: $21 $00 $d8
    ld bc, $0800                                  ; $6f17: $01 $00 $08
    ld a, $7f                                     ; $6f1a: $3e $7f
    call Call_000_112f                            ; $6f1c: $cd $2f $11
    pop af                                        ; $6f1f: $f1
    ldh [rSVBK], a                                ; $6f20: $e0 $70
    ret                                           ; $6f22: $c9


Call_003_6f23:
    ld hl, $8000                                  ; $6f23: $21 $00 $80
    ld bc, $17ff                                  ; $6f26: $01 $ff $17
    jp Jump_000_112e                              ; $6f29: $c3 $2e $11


    ld hl, $c000                                  ; $6f2c: $21 $00 $c0
    ld bc, $00a0                                  ; $6f2f: $01 $a0 $00
    jp Jump_000_112e                              ; $6f32: $c3 $2e $11


    xor a                                         ; $6f35: $af
    ldh [$a4], a                                  ; $6f36: $e0 $a4
    ldh [$a5], a                                  ; $6f38: $e0 $a5
    ld [$c0c2], a                                 ; $6f3a: $ea $c2 $c0
    ld [$c0c1], a                                 ; $6f3d: $ea $c1 $c0
    ldh [$dc], a                                  ; $6f40: $e0 $dc
    ld [$cd4d], a                                 ; $6f42: $ea $4d $cd
    ld [$c300], a                                 ; $6f45: $ea $00 $c3
    ld [$cd44], a                                 ; $6f48: $ea $44 $cd
    inc a                                         ; $6f4b: $3c
    ldh [$db], a                                  ; $6f4c: $e0 $db
    ldh [$a7], a                                  ; $6f4e: $e0 $a7
    ld [$cd57], a                                 ; $6f50: $ea $57 $cd
    inc a                                         ; $6f53: $3c
    ld [$cce2], a                                 ; $6f54: $ea $e2 $cc
    ld a, $03                                     ; $6f57: $3e $03
    ld [$c0c5], a                                 ; $6f59: $ea $c5 $c0
    ld hl, $ccf6                                  ; $6f5c: $21 $f6 $cc
    ld a, $02                                     ; $6f5f: $3e $02
    ld [hl+], a                                   ; $6f61: $22
    ld a, $42                                     ; $6f62: $3e $42
    ld [hl+], a                                   ; $6f64: $22
    ld a, $82                                     ; $6f65: $3e $82
    ld [hl+], a                                   ; $6f67: $22
    ld a, $c2                                     ; $6f68: $3e $c2
    ld [hl+], a                                   ; $6f6a: $22
    ret                                           ; $6f6b: $c9


Call_003_6f6c:
    push de                                       ; $6f6c: $d5
    push hl                                       ; $6f6d: $e5
    ld hl, $0047                                  ; $6f6e: $21 $47 $00
    add hl, bc                                    ; $6f71: $09
    ld a, e                                       ; $6f72: $7b
    ld [hl+], a                                   ; $6f73: $22
    ld [hl], d                                    ; $6f74: $72
    inc hl                                        ; $6f75: $23
    pop de                                        ; $6f76: $d1
    ld a, e                                       ; $6f77: $7b
    ld [hl+], a                                   ; $6f78: $22
    ld [hl], d                                    ; $6f79: $72
    ld l, e                                       ; $6f7a: $6b
    ld h, d                                       ; $6f7b: $62
    pop de                                        ; $6f7c: $d1
    push hl                                       ; $6f7d: $e5
    ld hl, $0006                                  ; $6f7e: $21 $06 $00
    add hl, bc                                    ; $6f81: $09
    ld a, [hl+]                                   ; $6f82: $2a
    ld h, [hl]                                    ; $6f83: $66
    ld l, a                                       ; $6f84: $6f
    call Call_000_007b                            ; $6f85: $cd $7b $00
    add hl, de                                    ; $6f88: $19
    pop de                                        ; $6f89: $d1
    push hl                                       ; $6f8a: $e5
    ld hl, $0009                                  ; $6f8b: $21 $09 $00
    add hl, bc                                    ; $6f8e: $09
    ld a, [hl+]                                   ; $6f8f: $2a
    ld h, [hl]                                    ; $6f90: $66
    ld l, a                                       ; $6f91: $6f
    call Call_000_007b                            ; $6f92: $cd $7b $00
    add hl, de                                    ; $6f95: $19
    pop de                                        ; $6f96: $d1
    ret                                           ; $6f97: $c9


Call_003_6f98:
    push hl                                       ; $6f98: $e5
    call Call_003_6fff                            ; $6f99: $cd $ff $6f
    ld hl, $000f                                  ; $6f9c: $21 $0f $00
    add hl, bc                                    ; $6f9f: $09
    ld [hl], e                                    ; $6fa0: $73
    inc hl                                        ; $6fa1: $23
    ld [hl], d                                    ; $6fa2: $72
    pop de                                        ; $6fa3: $d1
    call Call_003_6fff                            ; $6fa4: $cd $ff $6f
    ld hl, $0011                                  ; $6fa7: $21 $11 $00
    add hl, bc                                    ; $6faa: $09
    ld [hl], e                                    ; $6fab: $73
    inc hl                                        ; $6fac: $23
    ld [hl], d                                    ; $6fad: $72
    ret                                           ; $6fae: $c9


    ld hl, $c32b                                  ; $6faf: $21 $2b $c3
    ld e, [hl]                                    ; $6fb2: $5e
    inc hl                                        ; $6fb3: $23
    ld d, [hl]                                    ; $6fb4: $56
    ld hl, $c32d                                  ; $6fb5: $21 $2d $c3
    ld a, [hl+]                                   ; $6fb8: $2a
    ld h, [hl]                                    ; $6fb9: $66
    ld l, a                                       ; $6fba: $6f

    call Call_003_6f6c                            ; $6fbb: $cd $6c $6f
    call Call_003_6f98                            ; $6fbe: $cd $98 $6f
    ret                                           ; $6fc1: $c9


    ld hl, $c32b                                  ; $6fc2: $21 $2b $c3
    ld e, [hl]                                    ; $6fc5: $5e
    inc hl                                        ; $6fc6: $23
    ld d, [hl]                                    ; $6fc7: $56
    ld hl, $c32d                                  ; $6fc8: $21 $2d $c3
    ld a, [hl+]                                   ; $6fcb: $2a
    ld h, [hl]                                    ; $6fcc: $66
    ld l, a                                       ; $6fcd: $6f

Call_003_6fce:
    call Call_003_6f6c                            ; $6fce: $cd $6c $6f
    call Call_003_6fd8                            ; $6fd1: $cd $d8 $6f
    call Call_003_6f98                            ; $6fd4: $cd $98 $6f
    ret                                           ; $6fd7: $c9


Call_003_6fd8:
    push de                                       ; $6fd8: $d5
    push hl                                       ; $6fd9: $e5
    call Call_000_0095                            ; $6fda: $cd $95 $00
    call Call_000_0078                            ; $6fdd: $cd $78 $00
    call Call_000_0061                            ; $6fe0: $cd $61 $00
    push hl                                       ; $6fe3: $e5
    ld hl, $0045                                  ; $6fe4: $21 $45 $00
    add hl, bc                                    ; $6fe7: $09
    ld a, [hl+]                                   ; $6fe8: $2a
    ld d, [hl]                                    ; $6fe9: $56
    ld e, a                                       ; $6fea: $5f
    pop hl                                        ; $6feb: $e1
    ld a, h                                       ; $6fec: $7c
    ld h, l                                       ; $6fed: $65
    ld l, $00                                     ; $6fee: $2e $00
    call Call_000_31f4                            ; $6ff0: $cd $f4 $31
    ld e, l                                       ; $6ff3: $5d
    ld d, h                                       ; $6ff4: $54
    ld hl, $0045                                  ; $6ff5: $21 $45 $00
    add hl, bc                                    ; $6ff8: $09
    ld a, e                                       ; $6ff9: $7b
    ld [hl+], a                                   ; $6ffa: $22
    ld [hl], d                                    ; $6ffb: $72
    pop hl                                        ; $6ffc: $e1
    pop de                                        ; $6ffd: $d1
    ret                                           ; $6ffe: $c9


Call_003_6fff:
    ld a, d                                       ; $6fff: $7a
    rla                                           ; $7000: $17
    push af                                       ; $7001: $f5
    call c, Call_000_0098                         ; $7002: $dc $98 $00
    ld hl, $0045                                  ; $7005: $21 $45 $00
    add hl, bc                                    ; $7008: $09
    ld a, [hl]                                    ; $7009: $7e
    ld h, e                                       ; $700a: $63
    ld l, $00                                     ; $700b: $2e $00
    ld e, a                                       ; $700d: $5f
    ld a, d                                       ; $700e: $7a
    ld d, l                                       ; $700f: $55
    call Call_000_31f4                            ; $7010: $cd $f4 $31
    pop af                                        ; $7013: $f1
    call c, Call_000_007b                         ; $7014: $dc $7b $00
    ld e, l                                       ; $7017: $5d
    ld d, h                                       ; $7018: $54
    ret                                           ; $7019: $c9


Call_003_701a:
    ld hl, $ff92                                  ; $701a: $21 $92 $ff
    ld a, [hl+]                                   ; $701d: $2a
    ld h, [hl]                                    ; $701e: $66
    ld l, a                                       ; $701f: $6f
    push bc                                       ; $7020: $c5
    push hl                                       ; $7021: $e5
    ld de, $01cd                                  ; $7022: $11 $cd $01
    ld hl, $000d                                  ; $7025: $21 $0d $00
    jr jr_003_7038                                ; $7028: $18 $0e

Call_003_702a:
    ld hl, $ff90                                  ; $702a: $21 $90 $ff
    ld a, [hl+]                                   ; $702d: $2a
    ld h, [hl]                                    ; $702e: $66
    ld l, a                                       ; $702f: $6f
    push bc                                       ; $7030: $c5
    push hl                                       ; $7031: $e5
    ld de, $01c9                                  ; $7032: $11 $c9 $01
    ld hl, $000b                                  ; $7035: $21 $0b $00

jr_003_7038:
    add hl, bc                                    ; $7038: $09
    ld c, [hl]                                    ; $7039: $4e
    inc hl                                        ; $703a: $23
    ld b, [hl]                                    ; $703b: $46
    push de                                       ; $703c: $d5
    ld d, h                                       ; $703d: $54
    ld e, l                                       ; $703e: $5d
    pop hl                                        ; $703f: $e1
    pop de                                        ; $7040: $d1
    push de                                       ; $7041: $d5
    ld a, e                                       ; $7042: $7b
    add [hl]                                      ; $7043: $86
    ld e, a                                       ; $7044: $5f
    inc hl                                        ; $7045: $23
    ld a, d                                       ; $7046: $7a
    adc [hl]                                      ; $7047: $8e
    ld d, a                                       ; $7048: $57
    xor a                                         ; $7049: $af
    ld [$cdcf], a                                 ; $704a: $ea $cf $cd
    ld [$cdd0], a                                 ; $704d: $ea $d0 $cd
    bit 7, d                                      ; $7050: $cb $7a
    jr z, jr_003_7068                             ; $7052: $28 $14

    call Call_000_0098                            ; $7054: $cd $98 $00
    ld a, e                                       ; $7057: $7b
    ld [$cdcf], a                                 ; $7058: $ea $cf $cd
    ld a, d                                       ; $705b: $7a
    ld [$cdd0], a                                 ; $705c: $ea $d0 $cd
    ld a, c                                       ; $705f: $79
    add e                                         ; $7060: $83
    ld c, a                                       ; $7061: $4f
    ld a, b                                       ; $7062: $78
    adc d                                         ; $7063: $8a
    ld b, a                                       ; $7064: $47
    ld de, $0000                                  ; $7065: $11 $00 $00

jr_003_7068:
    ld a, b                                       ; $7068: $78
    cp d                                          ; $7069: $ba
    jr z, jr_003_7071                             ; $706a: $28 $05

    jr nc, jr_003_7078                            ; $706c: $30 $0a

    pop de                                        ; $706e: $d1
    jr jr_003_7094                                ; $706f: $18 $23

jr_003_7071:
    ld a, c                                       ; $7071: $79
    cp e                                          ; $7072: $bb
    jr nc, jr_003_7078                            ; $7073: $30 $03

    pop de                                        ; $7075: $d1
    jr jr_003_7094                                ; $7076: $18 $1c

jr_003_7078:
    pop de                                        ; $7078: $d1
    inc hl                                        ; $7079: $23
    ld a, e                                       ; $707a: $7b
    add [hl]                                      ; $707b: $86
    ld e, a                                       ; $707c: $5f
    inc hl                                        ; $707d: $23
    ld a, d                                       ; $707e: $7a
    adc [hl]                                      ; $707f: $8e
    ld d, a                                       ; $7080: $57
    ld a, [$cdcf]                                 ; $7081: $fa $cf $cd
    add e                                         ; $7084: $83
    ld e, a                                       ; $7085: $5f
    ld a, [$cdd0]                                 ; $7086: $fa $d0 $cd
    adc d                                         ; $7089: $8a
    ld d, a                                       ; $708a: $57
    ld a, b                                       ; $708b: $78
    cp d                                          ; $708c: $ba
    jr z, jr_003_7098                             ; $708d: $28 $09

jr_003_708f:
    jr nc, jr_003_7094                            ; $708f: $30 $03

jr_003_7091:
    pop bc                                        ; $7091: $c1
    xor a                                         ; $7092: $af
    ret                                           ; $7093: $c9


jr_003_7094:
    pop bc                                        ; $7094: $c1
    or $01                                        ; $7095: $f6 $01
    ret                                           ; $7097: $c9


jr_003_7098:
    ld a, c                                       ; $7098: $79
    cp e                                          ; $7099: $bb
    jr z, jr_003_7091                             ; $709a: $28 $f5

    jr jr_003_708f                                ; $709c: $18 $f1

    call Call_003_70c9                            ; $709e: $cd $c9 $70
    ld hl, $000d                                  ; $70a1: $21 $0d $00
    add hl, bc                                    ; $70a4: $09
    ld a, [$c32d]                                 ; $70a5: $fa $2d $c3
    sub [hl]                                      ; $70a8: $96
    ld [$cc0d], a                                 ; $70a9: $ea $0d $cc
    inc hl                                        ; $70ac: $23
    ld a, [$c32e]                                 ; $70ad: $fa $2e $c3
    sbc [hl]                                      ; $70b0: $9e
    ld [$cc0e], a                                 ; $70b1: $ea $0e $cc
    ld d, $00                                     ; $70b4: $16 $00
    bit 7, a                                      ; $70b6: $cb $7f
    ld a, [$cc0d]                                 ; $70b8: $fa $0d $cc
    jr z, jr_003_70c1                             ; $70bb: $28 $04

    cpl                                           ; $70bd: $2f
    inc a                                         ; $70be: $3c
    ld d, $20                                     ; $70bf: $16 $20

jr_003_70c1:
    ld hl, $cc0f                                  ; $70c1: $21 $0f $cc
    ld [hl], d                                    ; $70c4: $72
    ld [$cc10], a                                 ; $70c5: $ea $10 $cc
    ret                                           ; $70c8: $c9


Call_003_70c9:
    ld hl, $000b                                  ; $70c9: $21 $0b $00
    add hl, bc                                    ; $70cc: $09
    ld a, [$c32b]                                 ; $70cd: $fa $2b $c3
    sub [hl]                                      ; $70d0: $96
    ld [$cc09], a                                 ; $70d1: $ea $09 $cc
    inc hl                                        ; $70d4: $23
    ld a, [$c32c]                                 ; $70d5: $fa $2c $c3
    sbc [hl]                                      ; $70d8: $9e
    ld [$cc0a], a                                 ; $70d9: $ea $0a $cc
    ld d, $00                                     ; $70dc: $16 $00
    bit 7, a                                      ; $70de: $cb $7f
    ld a, [$cc09]                                 ; $70e0: $fa $09 $cc
    jr z, jr_003_70e9                             ; $70e3: $28 $04

    cpl                                           ; $70e5: $2f
    inc a                                         ; $70e6: $3c
    ld d, $20                                     ; $70e7: $16 $20

jr_003_70e9:
    ld hl, $cc0b                                  ; $70e9: $21 $0b $cc
    ld [hl], d                                    ; $70ec: $72
    ld [$cc0c], a                                 ; $70ed: $ea $0c $cc
    ret                                           ; $70f0: $c9


Call_003_70f1:
    ld hl, $cdc0                                  ; $70f1: $21 $c0 $cd
    ld de, $c325                                  ; $70f4: $11 $25 $c3
    ld a, [hl+]                                   ; $70f7: $2a
    ld [de], a                                    ; $70f8: $12
    inc de                                        ; $70f9: $13
    ld a, [hl+]                                   ; $70fa: $2a
    ld [de], a                                    ; $70fb: $12
    ld [$c32b], a                                 ; $70fc: $ea $2b $c3
    ld [$cabc], a                                 ; $70ff: $ea $bc $ca
    inc de                                        ; $7102: $13
    ld a, [hl+]                                   ; $7103: $2a
    ld [de], a                                    ; $7104: $12
    ld [$c32c], a                                 ; $7105: $ea $2c $c3
    ld [$cabd], a                                 ; $7108: $ea $bd $ca
    ld de, $c328                                  ; $710b: $11 $28 $c3
    ld hl, $cdc3                                  ; $710e: $21 $c3 $cd
    call CopyHL2DE_3                            ; $7111: $cd $4e $12
    ld a, [$cdc4]                                 ; $7114: $fa $c4 $cd
    ld [$c32d], a                                 ; $7117: $ea $2d $c3
    ld [$cabe], a                                 ; $711a: $ea $be $ca
    ld a, [$cdc5]                                 ; $711d: $fa $c5 $cd
    ld [$c32e], a                                 ; $7120: $ea $2e $c3
    ld [$cabf], a                                 ; $7123: $ea $bf $ca
    ret                                           ; $7126: $c9


Call_003_7127:
    ld hl, $c325                                  ; $7127: $21 $25 $c3
    ld de, $c333                                  ; $712a: $11 $33 $c3
    jp CopyHL2DE_6                              ; $712d: $c3 $45 $12


Call_003_7130:
    push bc                                       ; $7130: $c5
    ldh a, [rSVBK]                                ; $7131: $f0 $70
    push af                                       ; $7133: $f5
    ld a, $05                                     ; $7134: $3e $05
    ldh [rSVBK], a                                ; $7136: $e0 $70
    call Call_000_2f9b                            ; $7138: $cd $9b $2f
    ld a, b                                       ; $713b: $78
    ld l, a                                       ; $713c: $6f
    ld a, [$cd3a]                                 ; $713d: $fa $3a $cd
    ld h, a                                       ; $7140: $67
    call Call_000_00a5                            ; $7141: $cd $a5 $00
    ld a, c                                       ; $7144: $79
    rst $08                                       ; $7145: $cf
    ld de, $d000                                  ; $7146: $11 $00 $d0
    add hl, de                                    ; $7149: $19
    ld c, [hl]                                    ; $714a: $4e
    pop af                                        ; $714b: $f1
    ldh [rSVBK], a                                ; $714c: $e0 $70
    ld a, c                                       ; $714e: $79
    pop bc                                        ; $714f: $c1
    ret                                           ; $7150: $c9


    push de                                       ; $7151: $d5
    push hl                                       ; $7152: $e5
    push bc                                       ; $7153: $c5
    ldh [$bc], a                                  ; $7154: $e0 $bc
    ldh a, [rSVBK]                                ; $7156: $f0 $70
    push af                                       ; $7158: $f5
    ld a, $05                                     ; $7159: $3e $05
    ldh [rSVBK], a                                ; $715b: $e0 $70
    ldh a, [$bc]                                  ; $715d: $f0 $bc
    push af                                       ; $715f: $f5
    call Call_000_2f9b                            ; $7160: $cd $9b $2f
    ld a, b                                       ; $7163: $78
    ld l, a                                       ; $7164: $6f
    ld a, [$cd3a]                                 ; $7165: $fa $3a $cd
    ld h, a                                       ; $7168: $67
    call Call_000_00a5                            ; $7169: $cd $a5 $00
    ld a, c                                       ; $716c: $79
    rst $08                                       ; $716d: $cf
    ld de, $d000                                  ; $716e: $11 $00 $d0
    add hl, de                                    ; $7171: $19
    pop af                                        ; $7172: $f1
    ld [hl], a                                    ; $7173: $77
    pop af                                        ; $7174: $f1
    ldh [rSVBK], a                                ; $7175: $e0 $70
    ld a, c                                       ; $7177: $79
    pop bc                                        ; $7178: $c1
    pop hl                                        ; $7179: $e1
    pop de                                        ; $717a: $d1
    ret                                           ; $717b: $c9


jr_003_717c:
    ld h, $00                                     ; $717c: $26 $00
    ld l, $02                                     ; $717e: $2e $02
    ld a, l                                       ; $7180: $7d
    ret                                           ; $7181: $c9


Call_003_7182:
Jump_003_7182:
    bit 7, d                                      ; $7182: $cb $7a
    jr nz, jr_003_717c                            ; $7184: $20 $f6

    bit 7, h                                      ; $7186: $cb $7c
    jr nz, jr_003_717c                            ; $7188: $20 $f2

    ldh a, [rSVBK]                                ; $718a: $f0 $70
    push af                                       ; $718c: $f5
    ld a, $04                                     ; $718d: $3e $04
    ldh [rSVBK], a                                ; $718f: $e0 $70
    push bc                                       ; $7191: $c5
    push de                                       ; $7192: $d5
    push de                                       ; $7193: $d5
    push hl                                       ; $7194: $e5
    call Call_003_7130                            ; $7195: $cd $30 $71
    ld l, a                                       ; $7198: $6f
    ld h, $00                                     ; $7199: $26 $00
    call Call_000_314b                            ; $719b: $cd $4b $31
    ld de, $d000                                  ; $719e: $11 $00 $d0
    add hl, de                                    ; $71a1: $19
    pop de                                        ; $71a2: $d1
    ld a, e                                       ; $71a3: $7b
    rra                                           ; $71a4: $1f
    and $0c                                       ; $71a5: $e6 $0c
    pop de                                        ; $71a7: $d1
    ld d, a                                       ; $71a8: $57
    ld a, e                                       ; $71a9: $7b
    srl a                                         ; $71aa: $cb $3f
    srl a                                         ; $71ac: $cb $3f
    srl a                                         ; $71ae: $cb $3f
    and $03                                       ; $71b0: $e6 $03
    or d                                          ; $71b2: $b2
    rst $08                                       ; $71b3: $cf
    ld c, [hl]                                    ; $71b4: $4e
    bit 3, c                                      ; $71b5: $cb $59
    jr nz, jr_003_71c3                            ; $71b7: $20 $0a

    ld a, $03                                     ; $71b9: $3e $03
    and c                                         ; $71bb: $a1
    ld h, a                                       ; $71bc: $67
    ld a, c                                       ; $71bd: $79
    and $04                                       ; $71be: $e6 $04
    ld l, a                                       ; $71c0: $6f
    jr jr_003_71c8                                ; $71c1: $18 $05

jr_003_71c3:
    res 3, a                                      ; $71c3: $cb $9f
    ld h, $00                                     ; $71c5: $26 $00
    ld l, c                                       ; $71c7: $69

jr_003_71c8:
    pop de                                        ; $71c8: $d1
    pop bc                                        ; $71c9: $c1
    pop af                                        ; $71ca: $f1
    ldh [rSVBK], a                                ; $71cb: $e0 $70
    ld a, l                                       ; $71cd: $7d
    ret                                           ; $71ce: $c9


    ld hl, $ff9c                                  ; $71cf: $21 $9c $ff
    ld e, [hl]                                    ; $71d2: $5e
    inc hl                                        ; $71d3: $23
    ld d, [hl]                                    ; $71d4: $56
    ld hl, $ffd2                                  ; $71d5: $21 $d2 $ff
    add hl, de                                    ; $71d8: $19
    ld a, l                                       ; $71d9: $7d
    ld [$cad8], a                                 ; $71da: $ea $d8 $ca
    ld a, h                                       ; $71dd: $7c
    ld [$cad9], a                                 ; $71de: $ea $d9 $ca
    ld hl, $002e                                  ; $71e1: $21 $2e $00
    add hl, de                                    ; $71e4: $19
    ld a, l                                       ; $71e5: $7d
    ld [$cada], a                                 ; $71e6: $ea $da $ca
    ld a, h                                       ; $71e9: $7c
    ld [$cadb], a                                 ; $71ea: $ea $db $ca
    ld hl, $ff9e                                  ; $71ed: $21 $9e $ff
    ld e, [hl]                                    ; $71f0: $5e
    inc hl                                        ; $71f1: $23
    ld d, [hl]                                    ; $71f2: $56
    ld hl, $ffcc                                  ; $71f3: $21 $cc $ff
    add hl, de                                    ; $71f6: $19
    ld a, l                                       ; $71f7: $7d
    ld [$cadc], a                                 ; $71f8: $ea $dc $ca
    ld a, h                                       ; $71fb: $7c
    ld [$cadd], a                                 ; $71fc: $ea $dd $ca
    ld hl, $0034                                  ; $71ff: $21 $34 $00
    add hl, de                                    ; $7202: $19
    ld a, l                                       ; $7203: $7d
    ld [$cade], a                                 ; $7204: $ea $de $ca
    ld a, h                                       ; $7207: $7c
    ld [$cadf], a                                 ; $7208: $ea $df $ca
    ret                                           ; $720b: $c9


Call_003_720c:
    push bc                                       ; $720c: $c5
    ld hl, $0013                                  ; $720d: $21 $13 $00
    add hl, bc                                    ; $7210: $09
    ld de, $cdc0                                  ; $7211: $11 $c0 $cd
    call CopyHL2DE_6                            ; $7214: $cd $45 $12
    ld hl, $000f                                  ; $7217: $21 $0f $00
    add hl, bc                                    ; $721a: $09
    ld bc, $0004                                  ; $721b: $01 $04 $00
    call Call_000_112e                            ; $721e: $cd $2e $11
    pop bc                                        ; $7221: $c1
    ret                                           ; $7222: $c9


Call_003_7223:
    ldh a, [$a5]                                  ; $7223: $f0 $a5
    and $01                                       ; $7225: $e6 $01
    jr z, jr_003_7256                             ; $7227: $28 $2d

    ld a, [$cd24]                                 ; $7229: $fa $24 $cd
    or a                                          ; $722c: $b7
    ret nz                                        ; $722d: $c0

    ld a, [$cb17]                                 ; $722e: $fa $17 $cb
    cp $09                                        ; $7231: $fe $09
    jr z, jr_003_7256                             ; $7233: $28 $21

    cp $04                                        ; $7235: $fe $04
    jr z, jr_003_7256                             ; $7237: $28 $1d

    ld hl, $cc09                                  ; $7239: $21 $09 $cc
    ld e, [hl]                                    ; $723c: $5e
    inc hl                                        ; $723d: $23
    ld d, [hl]                                    ; $723e: $56
    call Call_000_0095                            ; $723f: $cd $95 $00
    ld hl, $cc0d                                  ; $7242: $21 $0d $cc
    ld a, [hl+]                                   ; $7245: $2a
    ld h, [hl]                                    ; $7246: $66
    ld l, a                                       ; $7247: $6f
    call Call_000_0078                            ; $7248: $cd $78 $00
    call Call_000_0061                            ; $724b: $cd $61 $00
    ld de, $0018                                  ; $724e: $11 $18 $00
    rst $10                                       ; $7251: $d7
    jr c, jr_003_7256                             ; $7252: $38 $02

    scf                                           ; $7254: $37
    ret                                           ; $7255: $c9


jr_003_7256:
    or a                                          ; $7256: $b7
    ret                                           ; $7257: $c9


    ldh a, [$a5]                                  ; $7258: $f0 $a5
    and $01                                       ; $725a: $e6 $01
    jr z, jr_003_7286                             ; $725c: $28 $28

    ld a, [$cb17]                                 ; $725e: $fa $17 $cb
    cp $09                                        ; $7261: $fe $09
    jr z, jr_003_7256                             ; $7263: $28 $f1

    cp $04                                        ; $7265: $fe $04
    jr z, jr_003_7286                             ; $7267: $28 $1d

    ld hl, $cc09                                  ; $7269: $21 $09 $cc
    ld e, [hl]                                    ; $726c: $5e
    inc hl                                        ; $726d: $23
    ld d, [hl]                                    ; $726e: $56
    call Call_000_0095                            ; $726f: $cd $95 $00
    ld hl, $cc0d                                  ; $7272: $21 $0d $cc
    ld a, [hl+]                                   ; $7275: $2a
    ld h, [hl]                                    ; $7276: $66
    ld l, a                                       ; $7277: $6f
    call Call_000_0078                            ; $7278: $cd $78 $00
    call Call_000_0061                            ; $727b: $cd $61 $00
    ld de, $0028                                  ; $727e: $11 $28 $00
    rst $10                                       ; $7281: $d7
    jr c, jr_003_7286                             ; $7282: $38 $02

    scf                                           ; $7284: $37
    ret                                           ; $7285: $c9


jr_003_7286:
    or a                                          ; $7286: $b7
    ret                                           ; $7287: $c9


Call_003_7288:
    call Call_003_7223                            ; $7288: $cd $23 $72
    ret nc                                        ; $728b: $d0

    ld hl, $004b                                  ; $728c: $21 $4b $00
    add hl, bc                                    ; $728f: $09
    ld a, [hl]                                    ; $7290: $7e
    or a                                          ; $7291: $b7
    jr nz, jr_003_72df                            ; $7292: $20 $4b

    ld a, [bc]                                    ; $7294: $0a
    cp $06                                        ; $7295: $fe $06
    jr z, jr_003_729f                             ; $7297: $28 $06

    cp $18                                        ; $7299: $fe $18
    jr z, jr_003_729f                             ; $729b: $28 $02

    jr jr_003_72cd                                ; $729d: $18 $2e

jr_003_729f:
    call Call_003_720c                            ; $729f: $cd $0c $72
    xor a                                         ; $72a2: $af
    ld e, a                                       ; $72a3: $5f
    ld [$cb03], a                                 ; $72a4: $ea $03 $cb
    ldh [$c1], a                                  ; $72a7: $e0 $c1
    ld a, $9e                                     ; $72a9: $3e $9e
    ldh [$bd], a                                  ; $72ab: $e0 $bd
    ld a, $5f                                     ; $72ad: $3e $5f
    ldh [$be], a                                  ; $72af: $e0 $be
    call Call_000_33d9                            ; $72b1: $cd $d9 $33
    ret                                           ; $72b4: $c9


    call Call_003_7223                            ; $72b5: $cd $23 $72
    ret nc                                        ; $72b8: $d0

    call Call_000_2e82                            ; $72b9: $cd $82 $2e
    add $03                                       ; $72bc: $c6 $03
    ld e, a                                       ; $72be: $5f
    ldh [$c1], a                                  ; $72bf: $e0 $c1
    ld a, $9b                                     ; $72c1: $3e $9b
    ldh [$bd], a                                  ; $72c3: $e0 $bd
    ld a, $5f                                     ; $72c5: $3e $5f
    ldh [$be], a                                  ; $72c7: $e0 $be
    call Call_000_33d9                            ; $72c9: $cd $d9 $33
    ret                                           ; $72cc: $c9


jr_003_72cd:
    call Call_000_2e82                            ; $72cd: $cd $82 $2e
    ld e, a                                       ; $72d0: $5f
    ldh [$c1], a                                  ; $72d1: $e0 $c1
    ld a, $9b                                     ; $72d3: $3e $9b
    ldh [$bd], a                                  ; $72d5: $e0 $bd
    ld a, $5f                                     ; $72d7: $3e $5f
    ldh [$be], a                                  ; $72d9: $e0 $be
    call Call_000_33d9                            ; $72db: $cd $d9 $33
    ret                                           ; $72de: $c9


jr_003_72df:
    ld hl, $004b                                  ; $72df: $21 $4b $00
    add hl, bc                                    ; $72e2: $09
    ld a, [hl]                                    ; $72e3: $7e
    or a                                          ; $72e4: $b7
    ret z                                         ; $72e5: $c8

    ld a, [bc]                                    ; $72e6: $0a
    cp $06                                        ; $72e7: $fe $06
    call z, Call_003_720c                         ; $72e9: $cc $0c $72
    cp $18                                        ; $72ec: $fe $18
    call z, Call_003_720c                         ; $72ee: $cc $0c $72
    ld hl, $004b                                  ; $72f1: $21 $4b $00
    add hl, bc                                    ; $72f4: $09
    ld a, [hl]                                    ; $72f5: $7e
    ld e, a                                       ; $72f6: $5f
    ldh [$c1], a                                  ; $72f7: $e0 $c1
    ld a, $9b                                     ; $72f9: $3e $9b
    ldh [$bd], a                                  ; $72fb: $e0 $bd
    ld a, $5f                                     ; $72fd: $3e $5f
    ldh [$be], a                                  ; $72ff: $e0 $be
    call Call_000_33d9                            ; $7301: $cd $d9 $33
    ret                                           ; $7304: $c9


Call_003_7305:
    ld hl, $003b                                  ; $7305: $21 $3b $00
    add hl, bc                                    ; $7308: $09
    ld de, $cac0                                  ; $7309: $11 $c0 $ca
    jp CopyHL2DE_16                              ; $730c: $c3 $27 $12


    ld hl, $004e                                  ; $730f: $21 $4e $00
    add hl, bc                                    ; $7312: $09
    ld a, [hl+]                                   ; $7313: $2a
    ld h, [hl]                                    ; $7314: $66
    ld l, a                                       ; $7315: $6f
    ld de, $000b                                  ; $7316: $11 $0b $00
    add hl, de                                    ; $7319: $19
    ld e, [hl]                                    ; $731a: $5e
    inc hl                                        ; $731b: $23
    ld d, [hl]                                    ; $731c: $56
    inc hl                                        ; $731d: $23
    ld a, [hl+]                                   ; $731e: $2a
    ld h, [hl]                                    ; $731f: $66
    ld l, a                                       ; $7320: $6f
    push de                                       ; $7321: $d5
    push hl                                       ; $7322: $e5
    call Call_003_6f6c                            ; $7323: $cd $6c $6f
    call Call_000_0095                            ; $7326: $cd $95 $00
    call Call_000_0078                            ; $7329: $cd $78 $00
    call Call_000_0061                            ; $732c: $cd $61 $00
    ld de, $0012                                  ; $732f: $11 $12 $00
    rst $10                                       ; $7332: $d7
    jr c, jr_003_734c                             ; $7333: $38 $17

    ld hl, $0045                                  ; $7335: $21 $45 $00
    add hl, bc                                    ; $7338: $09
    xor a                                         ; $7339: $af
    ld [hl+], a                                   ; $733a: $22
    ld [hl], a                                    ; $733b: $77
    pop hl                                        ; $733c: $e1
    pop de                                        ; $733d: $d1
    call Call_003_6fce                            ; $733e: $cd $ce $6f
    ld hl, $0025                                  ; $7341: $21 $25 $00
    add hl, bc                                    ; $7344: $09
    xor a                                         ; $7345: $af
    ld [hl], a                                    ; $7346: $77
    ld a, $2a                                     ; $7347: $3e $2a
    jp Jump_000_2e9e                              ; $7349: $c3 $9e $2e


jr_003_734c:
    ld de, $0019                                  ; $734c: $11 $19 $00
    rst $10                                       ; $734f: $d7
    jr nc, jr_003_735d                            ; $7350: $30 $0b

    ld hl, $0045                                  ; $7352: $21 $45 $00
    add hl, bc                                    ; $7355: $09
    ld a, $84                                     ; $7356: $3e $84
    ld [hl+], a                                   ; $7358: $22
    ld [hl], $03                                  ; $7359: $36 $03
    jr jr_003_7366                                ; $735b: $18 $09

jr_003_735d:
    ld hl, $0045                                  ; $735d: $21 $45 $00
    add hl, bc                                    ; $7360: $09
    ld a, $f4                                     ; $7361: $3e $f4
    ld [hl+], a                                   ; $7363: $22
    ld [hl], $01                                  ; $7364: $36 $01

jr_003_7366:
    pop hl                                        ; $7366: $e1
    pop de                                        ; $7367: $d1
    push de                                       ; $7368: $d5
    push hl                                       ; $7369: $e5
    call Call_003_6fce                            ; $736a: $cd $ce $6f
    pop de                                        ; $736d: $d1
    pop hl                                        ; $736e: $e1
    call Call_000_0a29                            ; $736f: $cd $29 $0a
    xor $04                                       ; $7372: $ee $04
    ld hl, $0002                                  ; $7374: $21 $02 $00
    add hl, bc                                    ; $7377: $09
    cp [hl]                                       ; $7378: $be
    ret z                                         ; $7379: $c8

    ld [hl], a                                    ; $737a: $77
    ldh [$c1], a                                  ; $737b: $e0 $c1
    ld a, $1a                                     ; $737d: $3e $1a
    ldh [$bd], a                                  ; $737f: $e0 $bd
    ld a, $74                                     ; $7381: $3e $74
    ldh [$be], a                                  ; $7383: $e0 $be
    call Call_000_33d9                            ; $7385: $cd $d9 $33
    or a                                          ; $7388: $b7
    jr z, jr_003_73a3                             ; $7389: $28 $18

    cp $01                                        ; $738b: $fe $01
    jr z, jr_003_73b3                             ; $738d: $28 $24

    cp $02                                        ; $738f: $fe $02
    jr z, jr_003_73c3                             ; $7391: $28 $30

    ldh [$c1], a                                  ; $7393: $e0 $c1
    ld a, $20                                     ; $7395: $3e $20
    ldh [$bd], a                                  ; $7397: $e0 $bd
    ld a, $6a                                     ; $7399: $3e $6a
    ldh [$be], a                                  ; $739b: $e0 $be
    call Call_000_33e0                            ; $739d: $cd $e0 $33
    jp Jump_003_73d3                              ; $73a0: $c3 $d3 $73


jr_003_73a3:
    ldh [$c1], a                                  ; $73a3: $e0 $c1
    ld a, $47                                     ; $73a5: $3e $47
    ldh [$bd], a                                  ; $73a7: $e0 $bd
    ld a, $6a                                     ; $73a9: $3e $6a
    ldh [$be], a                                  ; $73ab: $e0 $be
    call Call_000_33e0                            ; $73ad: $cd $e0 $33
    jp Jump_003_73d3                              ; $73b0: $c3 $d3 $73


jr_003_73b3:
    ldh [$c1], a                                  ; $73b3: $e0 $c1
    ld a, $71                                     ; $73b5: $3e $71
    ldh [$bd], a                                  ; $73b7: $e0 $bd
    ld a, $6a                                     ; $73b9: $3e $6a
    ldh [$be], a                                  ; $73bb: $e0 $be
    call Call_000_33e0                            ; $73bd: $cd $e0 $33
    jp Jump_003_73d3                              ; $73c0: $c3 $d3 $73


jr_003_73c3:
    ldh [$c1], a                                  ; $73c3: $e0 $c1
    ld a, $5c                                     ; $73c5: $3e $5c
    ldh [$bd], a                                  ; $73c7: $e0 $bd
    ld a, $6a                                     ; $73c9: $3e $6a
    ldh [$be], a                                  ; $73cb: $e0 $be
    call Call_000_33e0                            ; $73cd: $cd $e0 $33
    jp Jump_003_73d3                              ; $73d0: $c3 $d3 $73


Jump_003_73d3:
    ret                                           ; $73d3: $c9


    ld hl, $002e                                  ; $73d4: $21 $2e $00
    add hl, bc                                    ; $73d7: $09
    bit 1, [hl]                                   ; $73d8: $cb $4e
    ret nz                                        ; $73da: $c0

    ld hl, $002d                                  ; $73db: $21 $2d $00
    add hl, bc                                    ; $73de: $09
    bit 4, [hl]                                   ; $73df: $cb $66
    ret z                                         ; $73e1: $c8

    ldh [$c1], a                                  ; $73e2: $e0 $c1
    ld a, $44                                     ; $73e4: $3e $44
    ldh [$bd], a                                  ; $73e6: $e0 $bd
    ld a, $5a                                     ; $73e8: $3e $5a
    ldh [$be], a                                  ; $73ea: $e0 $be
    call Call_000_33c4                            ; $73ec: $cd $c4 $33
    ldh [$c1], a                                  ; $73ef: $e0 $c1
    ld a, $93                                     ; $73f1: $3e $93
    ldh [$bd], a                                  ; $73f3: $e0 $bd
    ld a, $4e                                     ; $73f5: $3e $4e
    ldh [$be], a                                  ; $73f7: $e0 $be
    call Call_000_33c4                            ; $73f9: $cd $c4 $33
    ret c                                         ; $73fc: $d8

    ldh [$c1], a                                  ; $73fd: $e0 $c1
    ld a, $ad                                     ; $73ff: $3e $ad
    ldh [$bd], a                                  ; $7401: $e0 $bd
    ld a, $5a                                     ; $7403: $3e $5a
    ldh [$be], a                                  ; $7405: $e0 $be
    call Call_000_33c4                            ; $7407: $cd $c4 $33
    ret z                                         ; $740a: $c8

    ld hl, $caf4                                  ; $740b: $21 $f4 $ca
    xor a                                         ; $740e: $af
    ld [hl+], a                                   ; $740f: $22
    ld [hl+], a                                   ; $7410: $22
    ld [hl+], a                                   ; $7411: $22
    ld [hl], a                                    ; $7412: $77
    ld hl, $cdcc                                  ; $7413: $21 $cc $cd
    ld [hl], c                                    ; $7416: $71
    inc hl                                        ; $7417: $23
    ld [hl], b                                    ; $7418: $70
    call Call_000_2e82                            ; $7419: $cd $82 $2e
    push af                                       ; $741c: $f5
    ldh [$c1], a                                  ; $741d: $e0 $c1
    ld a, $8f                                     ; $741f: $3e $8f
    ldh [$bd], a                                  ; $7421: $e0 $bd
    ld a, $5a                                     ; $7423: $3e $5a
    ldh [$be], a                                  ; $7425: $e0 $be
    call Call_000_33c4                            ; $7427: $cd $c4 $33
    cp $01                                        ; $742a: $fe $01
    jr z, jr_003_7448                             ; $742c: $28 $1a

    cp $02                                        ; $742e: $fe $02
    jr z, jr_003_7477                             ; $7430: $28 $45

    cp $03                                        ; $7432: $fe $03
    jp z, Jump_003_74b8                           ; $7434: $ca $b8 $74

    pop af                                        ; $7437: $f1
    ldh [$c1], a                                  ; $7438: $e0 $c1
    ld a, $6e                                     ; $743a: $3e $6e
    ldh [$bd], a                                  ; $743c: $e0 $bd
    ld a, $5a                                     ; $743e: $3e $5a
    ldh [$be], a                                  ; $7440: $e0 $be
    call Call_000_33c4                            ; $7442: $cd $c4 $33
    jp Jump_000_0c95                              ; $7445: $c3 $95 $0c


jr_003_7448:
    pop af                                        ; $7448: $f1
    ldh [$bc], a                                  ; $7449: $e0 $bc
    ldh a, [rSVBK]                                ; $744b: $f0 $70
    push af                                       ; $744d: $f5
    ld a, $06                                     ; $744e: $3e $06
    ldh [rSVBK], a                                ; $7450: $e0 $70
    ldh a, [$bc]                                  ; $7452: $f0 $bc
    ldh [$c1], a                                  ; $7454: $e0 $c1
    ld a, $66                                     ; $7456: $3e $66
    ldh [$bd], a                                  ; $7458: $e0 $bd
    ld a, $5a                                     ; $745a: $3e $5a
    ldh [$be], a                                  ; $745c: $e0 $be
    call Call_000_33c4                            ; $745e: $cd $c4 $33
    ld [$d6d0], a                                 ; $7461: $ea $d0 $d6
    pop af                                        ; $7464: $f1
    ldh [rSVBK], a                                ; $7465: $e0 $70
    ld e, $01                                     ; $7467: $1e $01
    xor a                                         ; $7469: $af
    ldh [$c1], a                                  ; $746a: $e0 $c1
    ld a, $9e                                     ; $746c: $3e $9e
    ldh [$bd], a                                  ; $746e: $e0 $bd
    ld a, $5f                                     ; $7470: $3e $5f
    ldh [$be], a                                  ; $7472: $e0 $be
    jp Jump_000_33d9                              ; $7474: $c3 $d9 $33


jr_003_7477:
    ldh [$c1], a                                  ; $7477: $e0 $c1
    ld a, $6e                                     ; $7479: $3e $6e
    ldh [$bd], a                                  ; $747b: $e0 $bd
    ld a, $5a                                     ; $747d: $3e $5a
    ldh [$be], a                                  ; $747f: $e0 $be
    call Call_000_33c4                            ; $7481: $cd $c4 $33
    pop af                                        ; $7484: $f1
    ldh [$d9], a                                  ; $7485: $e0 $d9
    ldh [$c1], a                                  ; $7487: $e0 $c1
    ld a, $66                                     ; $7489: $3e $66
    ldh [$bd], a                                  ; $748b: $e0 $bd
    ld a, $5a                                     ; $748d: $3e $5a
    ldh [$be], a                                  ; $748f: $e0 $be
    call Call_000_33c4                            ; $7491: $cd $c4 $33
    ld l, a                                       ; $7494: $6f
    ldh a, [$d8]                                  ; $7495: $f0 $d8
    cp l                                          ; $7497: $bd
    ret z                                         ; $7498: $c8

    ldh [$bc], a                                  ; $7499: $e0 $bc
    ldh a, [rSVBK]                                ; $749b: $f0 $70
    push af                                       ; $749d: $f5
    ld a, $06                                     ; $749e: $3e $06
    ldh [rSVBK], a                                ; $74a0: $e0 $70
    ldh a, [$bc]                                  ; $74a2: $f0 $bc
    ld [$d6d1], a                                 ; $74a4: $ea $d1 $d6
    ld a, l                                       ; $74a7: $7d
    ldh [$da], a                                  ; $74a8: $e0 $da
    ld [$d6d2], a                                 ; $74aa: $ea $d2 $d6
    pop af                                        ; $74ad: $f1
    ldh [rSVBK], a                                ; $74ae: $e0 $70
    ld a, $34                                     ; $74b0: $3e $34
    call Call_000_2448                            ; $74b2: $cd $48 $24
    jp Jump_000_0e9d                              ; $74b5: $c3 $9d $0e


Jump_003_74b8:
    ldh [$c1], a                                  ; $74b8: $e0 $c1
    ld a, $6e                                     ; $74ba: $3e $6e
    ldh [$bd], a                                  ; $74bc: $e0 $bd
    ld a, $5a                                     ; $74be: $3e $5a
    ldh [$be], a                                  ; $74c0: $e0 $be
    call Call_000_33c4                            ; $74c2: $cd $c4 $33
    pop af                                        ; $74c5: $f1
    ldh [$d9], a                                  ; $74c6: $e0 $d9
    ldh [$c1], a                                  ; $74c8: $e0 $c1
    ld a, $66                                     ; $74ca: $3e $66
    ldh [$bd], a                                  ; $74cc: $e0 $bd
    ld a, $5a                                     ; $74ce: $3e $5a
    ldh [$be], a                                  ; $74d0: $e0 $be
    call Call_000_33c4                            ; $74d2: $cd $c4 $33
    ld l, a                                       ; $74d5: $6f
    ldh a, [$d8]                                  ; $74d6: $f0 $d8
    cp l                                          ; $74d8: $bd
    ret z                                         ; $74d9: $c8

    ldh [$bc], a                                  ; $74da: $e0 $bc
    ldh a, [rSVBK]                                ; $74dc: $f0 $70
    push af                                       ; $74de: $f5
    ld a, $06                                     ; $74df: $3e $06
    ldh [rSVBK], a                                ; $74e1: $e0 $70
    ldh a, [$bc]                                  ; $74e3: $f0 $bc
    ld [$d6d1], a                                 ; $74e5: $ea $d1 $d6
    ld a, l                                       ; $74e8: $7d
    ldh [$da], a                                  ; $74e9: $e0 $da
    ld [$d6d2], a                                 ; $74eb: $ea $d2 $d6
    pop af                                        ; $74ee: $f1
    ldh [rSVBK], a                                ; $74ef: $e0 $70
    ld a, $35                                     ; $74f1: $3e $35
    call Call_000_2448                            ; $74f3: $cd $48 $24
    jp Jump_000_0e9d                              ; $74f6: $c3 $9d $0e


    ld hl, $002e                                  ; $74f9: $21 $2e $00
    add hl, bc                                    ; $74fc: $09
    bit 1, [hl]                                   ; $74fd: $cb $4e
    ret nz                                        ; $74ff: $c0

    ld hl, $002d                                  ; $7500: $21 $2d $00
    add hl, bc                                    ; $7503: $09
    bit 6, [hl]                                   ; $7504: $cb $76
    jp nz, Jump_003_755a                          ; $7506: $c2 $5a $75

    call Call_003_7305                            ; $7509: $cd $05 $73
    ldh a, [$a4]                                  ; $750c: $f0 $a4
    and $30                                       ; $750e: $e6 $30
    jr nz, jr_003_7523                            ; $7510: $20 $11

    xor a                                         ; $7512: $af
    ld hl, $000f                                  ; $7513: $21 $0f $00
    add hl, bc                                    ; $7516: $09
    ld [hl+], a                                   ; $7517: $22
    ld [hl], a                                    ; $7518: $77
    ld hl, $0025                                  ; $7519: $21 $25 $00
    add hl, bc                                    ; $751c: $09
    ld [hl], a                                    ; $751d: $77
    ld a, $02                                     ; $751e: $3e $02
    jp Jump_000_08ec                              ; $7520: $c3 $ec $08


jr_003_7523:
    ld hl, $0025                                  ; $7523: $21 $25 $00
    add hl, bc                                    ; $7526: $09
    xor a                                         ; $7527: $af
    ld [hl], a                                    ; $7528: $77
    call Call_000_08ec                            ; $7529: $cd $ec $08
    ldh a, [$a4]                                  ; $752c: $f0 $a4
    bit 5, a                                      ; $752e: $cb $6f
    jr nz, jr_003_7543                            ; $7530: $20 $11

    bit 4, a                                      ; $7532: $cb $67
    ret z                                         ; $7534: $c8

    xor a                                         ; $7535: $af
    call Call_000_08ce                            ; $7536: $cd $ce $08
    ld a, $e1                                     ; $7539: $3e $e1
    ld hl, $000f                                  ; $753b: $21 $0f $00
    add hl, bc                                    ; $753e: $09
    ld [hl+], a                                   ; $753f: $22
    ld [hl], $00                                  ; $7540: $36 $00
    ret                                           ; $7542: $c9


jr_003_7543:
    ld a, $20                                     ; $7543: $3e $20
    call Call_000_08ce                            ; $7545: $cd $ce $08
    ld a, $1f                                     ; $7548: $3e $1f
    ld hl, $000f                                  ; $754a: $21 $0f $00
    add hl, bc                                    ; $754d: $09
    ld [hl+], a                                   ; $754e: $22
    ld [hl], $ff                                  ; $754f: $36 $ff
    ret                                           ; $7551: $c9


    call Call_000_355e                            ; $7552: $cd $5e $35
    ld a, $19                                     ; $7555: $3e $19
    jp Jump_000_2448                              ; $7557: $c3 $48 $24


Jump_003_755a:
    ld hl, $0006                                  ; $755a: $21 $06 $00
    add hl, bc                                    ; $755d: $09
    ld a, $55                                     ; $755e: $3e $55
    ld [hl+], a                                   ; $7560: $22
    xor a                                         ; $7561: $af
    ld [hl+], a                                   ; $7562: $22
    inc hl                                        ; $7563: $23
    push hl                                       ; $7564: $e5
    ld a, [hl+]                                   ; $7565: $2a
    ld h, [hl]                                    ; $7566: $66
    ld l, a                                       ; $7567: $6f
    ld de, $0060                                  ; $7568: $11 $60 $00
    add hl, de                                    ; $756b: $19
    pop de                                        ; $756c: $d1
    ld a, l                                       ; $756d: $7d
    ld [de], a                                    ; $756e: $12
    inc de                                        ; $756f: $13
    ld a, h                                       ; $7570: $7c
    ld [de], a                                    ; $7571: $12
    call Call_000_355e                            ; $7572: $cd $5e $35
    ld hl, $002d                                  ; $7575: $21 $2d $00
    add hl, bc                                    ; $7578: $09
    res 6, [hl]                                   ; $7579: $cb $b6
    ld a, $19                                     ; $757b: $3e $19
    jp Jump_000_2448                              ; $757d: $c3 $48 $24


    xor a                                         ; $7580: $af
    ld [$cb17], a                                 ; $7581: $ea $17 $cb
    ld e, a                                       ; $7584: $5f
    ldh [$c1], a                                  ; $7585: $e0 $c1
    ld a, $9b                                     ; $7587: $3e $9b
    ldh [$bd], a                                  ; $7589: $e0 $bd
    ld a, $5f                                     ; $758b: $3e $5f
    ldh [$be], a                                  ; $758d: $e0 $be
    jp Jump_000_33d9                              ; $758f: $c3 $d9 $33


Call_003_7592:
jr_003_7592:
    ld a, $27                                     ; $7592: $3e $27
    call Call_000_393e                            ; $7594: $cd $3e $39
    ld hl, $0006                                  ; $7597: $21 $06 $00
    add hl, bc                                    ; $759a: $09
    ld a, [hl]                                    ; $759b: $7e
    sub $04                                       ; $759c: $d6 $04
    ld [hl], a                                    ; $759e: $77
    ret                                           ; $759f: $c9


Call_003_75a0:
jr_003_75a0:
    ld a, $27                                     ; $75a0: $3e $27
    call Call_000_393e                            ; $75a2: $cd $3e $39
    ld hl, $0006                                  ; $75a5: $21 $06 $00
    add hl, bc                                    ; $75a8: $09
    ld a, $04                                     ; $75a9: $3e $04
    add [hl]                                      ; $75ab: $86
    ld [hl], a                                    ; $75ac: $77
    ret                                           ; $75ad: $c9


    ld hl, $002e                                  ; $75ae: $21 $2e $00
    add hl, bc                                    ; $75b1: $09
    bit 1, [hl]                                   ; $75b2: $cb $4e
    ret nz                                        ; $75b4: $c0

    ldh a, [$a4]                                  ; $75b5: $f0 $a4
    or a                                          ; $75b7: $b7
    jr nz, jr_003_75dd                            ; $75b8: $20 $23

    xor a                                         ; $75ba: $af
    ld hl, $000f                                  ; $75bb: $21 $0f $00
    add hl, bc                                    ; $75be: $09
    ld [hl+], a                                   ; $75bf: $22
    ld [hl], a                                    ; $75c0: $77
    ld hl, $0001                                  ; $75c1: $21 $01 $00
    add hl, bc                                    ; $75c4: $09
    or [hl]                                       ; $75c5: $b6
    ret z                                         ; $75c6: $c8

    push af                                       ; $75c7: $f5
    push hl                                       ; $75c8: $e5
    ld de, $4571                                  ; $75c9: $11 $71 $45
    call Call_000_0a50                            ; $75cc: $cd $50 $0a
    pop hl                                        ; $75cf: $e1
    pop af                                        ; $75d0: $f1
    cp $01                                        ; $75d1: $fe $01
    jr z, jr_003_75d9                             ; $75d3: $28 $04

    ld [hl], $00                                  ; $75d5: $36 $00
    jr jr_003_75a0                                ; $75d7: $18 $c7

jr_003_75d9:
    ld [hl], $00                                  ; $75d9: $36 $00
    jr jr_003_7592                                ; $75db: $18 $b5

jr_003_75dd:
    bit 5, a                                      ; $75dd: $cb $6f
    jr nz, jr_003_760f                            ; $75df: $20 $2e

    bit 4, a                                      ; $75e1: $cb $67
    ret z                                         ; $75e3: $c8

    xor a                                         ; $75e4: $af
    call Call_000_08ce                            ; $75e5: $cd $ce $08
    call Call_000_2e82                            ; $75e8: $cd $82 $2e
    or a                                          ; $75eb: $b7
    jr z, jr_003_75f5                             ; $75ec: $28 $07

    cp $02                                        ; $75ee: $fe $02
    jr z, jr_003_7605                             ; $75f0: $28 $13

    call Call_003_7592                            ; $75f2: $cd $92 $75

jr_003_75f5:
    call Call_003_7592                            ; $75f5: $cd $92 $75
    push af                                       ; $75f8: $f5
    ld de, $457b                                  ; $75f9: $11 $7b $45
    call Call_000_0a50                            ; $75fc: $cd $50 $0a
    pop af                                        ; $75ff: $f1
    ld a, $02                                     ; $7600: $3e $02
    call Call_000_2e9a                            ; $7602: $cd $9a $2e

jr_003_7605:
    ld a, $e1                                     ; $7605: $3e $e1
    ld hl, $000f                                  ; $7607: $21 $0f $00
    add hl, bc                                    ; $760a: $09
    ld [hl+], a                                   ; $760b: $22
    ld [hl], $00                                  ; $760c: $36 $00
    ret                                           ; $760e: $c9


jr_003_760f:
    ld a, $20                                     ; $760f: $3e $20
    call Call_000_08ce                            ; $7611: $cd $ce $08
    call Call_000_2e82                            ; $7614: $cd $82 $2e
    or a                                          ; $7617: $b7
    jr z, jr_003_7621                             ; $7618: $28 $07

    cp $01                                        ; $761a: $fe $01
    jr z, jr_003_7631                             ; $761c: $28 $13

    call Call_003_75a0                            ; $761e: $cd $a0 $75

jr_003_7621:
    push af                                       ; $7621: $f5
    ld de, $457b                                  ; $7622: $11 $7b $45
    call Call_000_0a50                            ; $7625: $cd $50 $0a
    pop af                                        ; $7628: $f1
    call Call_003_75a0                            ; $7629: $cd $a0 $75
    ld a, $01                                     ; $762c: $3e $01
    call Call_000_2e9a                            ; $762e: $cd $9a $2e

jr_003_7631:
    ld a, $1f                                     ; $7631: $3e $1f
    ld hl, $000f                                  ; $7633: $21 $0f $00
    add hl, bc                                    ; $7636: $09
    ld [hl+], a                                   ; $7637: $22
    ld [hl], $ff                                  ; $7638: $36 $ff
    ret                                           ; $763a: $c9


    push bc                                       ; $763b: $c5
    call Call_003_7288                            ; $763c: $cd $88 $72
    pop bc                                        ; $763f: $c1
    ld hl, $002d                                  ; $7640: $21 $2d $00
    add hl, bc                                    ; $7643: $09
    bit 4, [hl]                                   ; $7644: $cb $66
    ret z                                         ; $7646: $c8

    ldh [$c1], a                                  ; $7647: $e0 $c1
    ld a, $93                                     ; $7649: $3e $93
    ldh [$bd], a                                  ; $764b: $e0 $bd
    ld a, $4e                                     ; $764d: $3e $4e
    ldh [$be], a                                  ; $764f: $e0 $be
    call Call_000_33c4                            ; $7651: $cd $c4 $33
    jr c, jr_003_767f                             ; $7654: $38 $29

    ldh a, [$d8]                                  ; $7656: $f0 $d8
    cp $4a                                        ; $7658: $fe $4a
    jr z, jr_003_767f                             ; $765a: $28 $23

    ldh a, [$d8]                                  ; $765c: $f0 $d8
    cp $0e                                        ; $765e: $fe $0e
    jr z, jr_003_7671                             ; $7660: $28 $0f

    ld hl, $0025                                  ; $7662: $21 $25 $00
    add hl, bc                                    ; $7665: $09
    ld [hl], $00                                  ; $7666: $36 $00
    ld a, [$cb17]                                 ; $7668: $fa $17 $cb
    cp $09                                        ; $766b: $fe $09
    ret z                                         ; $766d: $c8

    cp $04                                        ; $766e: $fe $04
    ret z                                         ; $7670: $c8

jr_003_7671:
    push bc                                       ; $7671: $c5
    call Call_000_09fd                            ; $7672: $cd $fd $09
    call Call_000_2e9e                            ; $7675: $cd $9e $2e
    ld de, $4a52                                  ; $7678: $11 $52 $4a
    call Call_000_0a5b                            ; $767b: $cd $5b $0a
    pop bc                                        ; $767e: $c1

jr_003_767f:
    ld hl, $002d                                  ; $767f: $21 $2d $00
    add hl, bc                                    ; $7682: $09
    bit 6, [hl]                                   ; $7683: $cb $76
    ret z                                         ; $7685: $c8

    res 6, [hl]                                   ; $7686: $cb $b6
    ldh a, [$d8]                                  ; $7688: $f0 $d8
    cp $0e                                        ; $768a: $fe $0e
    ret z                                         ; $768c: $c8

    cp $44                                        ; $768d: $fe $44
    ret z                                         ; $768f: $c8

    ld hl, $0025                                  ; $7690: $21 $25 $00
    add hl, bc                                    ; $7693: $09
    ld [hl], $00                                  ; $7694: $36 $00
    ld hl, $001c                                  ; $7696: $21 $1c $00
    add hl, bc                                    ; $7699: $09
    ld [hl], $01                                  ; $769a: $36 $01
    ret                                           ; $769c: $c9


    ldh [$c1], a                                  ; $769d: $e0 $c1
    ld a, $93                                     ; $769f: $3e $93
    ldh [$bd], a                                  ; $76a1: $e0 $bd
    ld a, $4e                                     ; $76a3: $3e $4e
    ldh [$be], a                                  ; $76a5: $e0 $be
    call Call_000_33c4                            ; $76a7: $cd $c4 $33
    ret c                                         ; $76aa: $d8

    ld hl, $cbbe                                  ; $76ab: $21 $be $cb
    ld e, [hl]                                    ; $76ae: $5e
    inc hl                                        ; $76af: $23
    ld d, [hl]                                    ; $76b0: $56
    ld hl, $0003                                  ; $76b1: $21 $03 $00
    add hl, de                                    ; $76b4: $19
    ld [hl], $3c                                  ; $76b5: $36 $3c
    ld hl, $002d                                  ; $76b7: $21 $2d $00
    add hl, bc                                    ; $76ba: $09
    ld [hl], $00                                  ; $76bb: $36 $00
    ld a, $23                                     ; $76bd: $3e $23
    call Call_000_393e                            ; $76bf: $cd $3e $39
    ldh a, [$cf]                                  ; $76c2: $f0 $cf
    cp $2d                                        ; $76c4: $fe $2d
    ret nz                                        ; $76c6: $c0

    xor a                                         ; $76c7: $af
    ldh [$9b], a                                  ; $76c8: $e0 $9b
    ld a, $8f                                     ; $76ca: $3e $8f
    call Call_000_03a0                            ; $76cc: $cd $a0 $03
    push bc                                       ; $76cf: $c5
    ld hl, $0006                                  ; $76d0: $21 $06 $00
    add hl, bc                                    ; $76d3: $09
    ld a, [hl]                                    ; $76d4: $7e
    ld hl, $0009                                  ; $76d5: $21 $09 $00
    add hl, bc                                    ; $76d8: $09
    ld l, [hl]                                    ; $76d9: $6e
    ld c, e                                       ; $76da: $4b
    ld b, d                                       ; $76db: $42
    ld e, a                                       ; $76dc: $5f
    ld d, l                                       ; $76dd: $55
    call Call_000_090d                            ; $76de: $cd $0d $09
    pop bc                                        ; $76e1: $c1
    ret                                           ; $76e2: $c9


    ldh [$c1], a                                  ; $76e3: $e0 $c1
    ld a, $93                                     ; $76e5: $3e $93
    ldh [$bd], a                                  ; $76e7: $e0 $bd
    ld a, $4e                                     ; $76e9: $3e $4e
    ldh [$be], a                                  ; $76eb: $e0 $be
    call Call_000_33c4                            ; $76ed: $cd $c4 $33
    ret c                                         ; $76f0: $d8

    call Call_000_2e82                            ; $76f1: $cd $82 $2e
    cp $02                                        ; $76f4: $fe $02
    jr nz, jr_003_7718                            ; $76f6: $20 $20

    ld hl, $002d                                  ; $76f8: $21 $2d $00
    add hl, bc                                    ; $76fb: $09
    ld [hl], $00                                  ; $76fc: $36 $00
    ldh a, [$cc]                                  ; $76fe: $f0 $cc
    cp $3e                                        ; $7700: $fe $3e
    jp z, Jump_000_2448                           ; $7702: $ca $48 $24

    push bc                                       ; $7705: $c5
    ld a, $01                                     ; $7706: $3e $01
    ld e, a                                       ; $7708: $5f
    ldh [$c1], a                                  ; $7709: $e0 $c1
    ld a, $9b                                     ; $770b: $3e $9b
    ldh [$bd], a                                  ; $770d: $e0 $bd
    ld a, $5f                                     ; $770f: $3e $5f
    ldh [$be], a                                  ; $7711: $e0 $be
    call Call_000_33d9                            ; $7713: $cd $d9 $33
    pop bc                                        ; $7716: $c1
    ret                                           ; $7717: $c9


jr_003_7718:
    ld a, [$c322]                                 ; $7718: $fa $22 $c3
    or a                                          ; $771b: $b7
    ret nz                                        ; $771c: $c0

    ld a, $23                                     ; $771d: $3e $23
    call Call_000_393e                            ; $771f: $cd $3e $39
    ld a, $0a                                     ; $7722: $3e $0a
    ld [$c322], a                                 ; $7724: $ea $22 $c3
    ret                                           ; $7727: $c9


Call_003_7728:
    ld hl, $002e                                  ; $7728: $21 $2e $00
    add hl, bc                                    ; $772b: $09
    res 1, [hl]                                   ; $772c: $cb $8e
    ld hl, $002b                                  ; $772e: $21 $2b $00
    add hl, bc                                    ; $7731: $09
    bit 2, [hl]                                   ; $7732: $cb $56
    jr nz, jr_003_7748                            ; $7734: $20 $12

    ld hl, $002d                                  ; $7736: $21 $2d $00
    add hl, bc                                    ; $7739: $09
    bit 2, [hl]                                   ; $773a: $cb $56
    jr nz, jr_003_7748                            ; $773c: $20 $0a

    call Call_003_702a                            ; $773e: $cd $2a $70
    jr nz, jr_003_774a                            ; $7741: $20 $07

    call Call_003_701a                            ; $7743: $cd $1a $70
    jr nz, jr_003_774a                            ; $7746: $20 $02

jr_003_7748:
    xor a                                         ; $7748: $af
    ret                                           ; $7749: $c9


jr_003_774a:
    ld hl, $002e                                  ; $774a: $21 $2e $00
    add hl, bc                                    ; $774d: $09
    set 1, [hl]                                   ; $774e: $cb $ce
    ld hl, $002b                                  ; $7750: $21 $2b $00
    add hl, bc                                    ; $7753: $09
    bit 7, [hl]                                   ; $7754: $cb $7e
    jr nz, jr_003_7748                            ; $7756: $20 $f0

    ld a, $01                                     ; $7758: $3e $01
    or a                                          ; $775a: $b7
    ret                                           ; $775b: $c9


    ld hl, $0013                                  ; $775c: $21 $13 $00
    add hl, bc                                    ; $775f: $09
    push de                                       ; $7760: $d5
    ld d, h                                       ; $7761: $54
    ld e, l                                       ; $7762: $5d
    pop hl                                        ; $7763: $e1
    ld hl, $0005                                  ; $7764: $21 $05 $00
    add hl, bc                                    ; $7767: $09
    call CopyHL2DE_6                            ; $7768: $cd $45 $12
    ld hl, $0005                                  ; $776b: $21 $05 $00
    add hl, bc                                    ; $776e: $09
    push de                                       ; $776f: $d5
    ld d, h                                       ; $7770: $54
    ld e, l                                       ; $7771: $5d
    pop hl                                        ; $7772: $e1
    ld hl, $cdc0                                  ; $7773: $21 $c0 $cd
    jp CopyHL2DE_6                              ; $7776: $c3 $45 $12


    ldh a, [rSVBK]                                ; $7779: $f0 $70
    push af                                       ; $777b: $f5
    ld a, $02                                     ; $777c: $3e $02
    ldh [rSVBK], a                                ; $777e: $e0 $70
    ld bc, $0000                                  ; $7780: $01 $00 $00
    ld a, $20                                     ; $7783: $3e $20
    jr jr_003_7793                                ; $7785: $18 $0c

    ldh a, [rSVBK]                                ; $7787: $f0 $70
    push af                                       ; $7789: $f5
    ld a, $02                                     ; $778a: $3e $02
    ldh [rSVBK], a                                ; $778c: $e0 $70
    ld bc, $0000                                  ; $778e: $01 $00 $00
    ld a, $40                                     ; $7791: $3e $40

jr_003_7793:
    push af                                       ; $7793: $f5
    ld hl, $d000                                  ; $7794: $21 $00 $d0
    add hl, bc                                    ; $7797: $09
    add hl, bc                                    ; $7798: $09
    ld a, [hl+]                                   ; $7799: $2a
    ld d, [hl]                                    ; $779a: $56
    ld e, a                                       ; $779b: $5f
    res 7, d                                      ; $779c: $cb $ba
    call Call_003_7891                            ; $779e: $cd $91 $78
    ld e, l                                       ; $77a1: $5d
    ld d, h                                       ; $77a2: $54
    ld hl, $d100                                  ; $77a3: $21 $00 $d1
    add hl, bc                                    ; $77a6: $09
    add hl, bc                                    ; $77a7: $09
    add hl, bc                                    ; $77a8: $09
    ld [hl+], a                                   ; $77a9: $22
    ld a, e                                       ; $77aa: $7b
    ld [hl+], a                                   ; $77ab: $22
    ld [hl], d                                    ; $77ac: $72
    ld hl, $d080                                  ; $77ad: $21 $80 $d0
    add hl, bc                                    ; $77b0: $09
    add hl, bc                                    ; $77b1: $09
    ld a, [hl+]                                   ; $77b2: $2a
    ld d, [hl]                                    ; $77b3: $56
    ld e, a                                       ; $77b4: $5f
    res 7, d                                      ; $77b5: $cb $ba
    call Call_003_7891                            ; $77b7: $cd $91 $78
    ld e, l                                       ; $77ba: $5d
    ld d, h                                       ; $77bb: $54
    push af                                       ; $77bc: $f5
    ld hl, $d1c0                                  ; $77bd: $21 $c0 $d1
    add hl, bc                                    ; $77c0: $09
    add hl, bc                                    ; $77c1: $09
    add hl, bc                                    ; $77c2: $09
    add a                                         ; $77c3: $87
    add a                                         ; $77c4: $87
    add a                                         ; $77c5: $87
    ld [hl+], a                                   ; $77c6: $22
    ld a, e                                       ; $77c7: $7b
    add a                                         ; $77c8: $87
    add a                                         ; $77c9: $87
    add a                                         ; $77ca: $87
    ld [hl+], a                                   ; $77cb: $22
    ld a, d                                       ; $77cc: $7a
    add a                                         ; $77cd: $87
    add a                                         ; $77ce: $87
    add a                                         ; $77cf: $87
    ld [hl], a                                    ; $77d0: $77
    ld hl, $d102                                  ; $77d1: $21 $02 $d1
    add hl, bc                                    ; $77d4: $09
    add hl, bc                                    ; $77d5: $09
    add hl, bc                                    ; $77d6: $09
    ld a, [hl]                                    ; $77d7: $7e
    sub d                                         ; $77d8: $92
    ld [hl-], a                                   ; $77d9: $32
    ld a, [hl]                                    ; $77da: $7e
    sub e                                         ; $77db: $93
    ld [hl-], a                                   ; $77dc: $32
    pop de                                        ; $77dd: $d1
    ld a, [hl]                                    ; $77de: $7e
    sub d                                         ; $77df: $92
    ld [hl], a                                    ; $77e0: $77
    inc bc                                        ; $77e1: $03
    pop af                                        ; $77e2: $f1
    dec a                                         ; $77e3: $3d
    jr nz, jr_003_7793                            ; $77e4: $20 $ad

    pop af                                        ; $77e6: $f1
    ldh [rSVBK], a                                ; $77e7: $e0 $70
    ret                                           ; $77e9: $c9


    push bc                                       ; $77ea: $c5
    ld c, a                                       ; $77eb: $4f
    ldh a, [rSVBK]                                ; $77ec: $f0 $70
    push af                                       ; $77ee: $f5
    ld a, $02                                     ; $77ef: $3e $02
    ldh [rSVBK], a                                ; $77f1: $e0 $70
    xor a                                         ; $77f3: $af
    ld [$c0cc], a                                 ; $77f4: $ea $cc $c0
    ld b, $60                                     ; $77f7: $06 $60
    ld hl, $d100                                  ; $77f9: $21 $00 $d1
    ld de, $d1c0                                  ; $77fc: $11 $c0 $d1
    ld a, c                                       ; $77ff: $79
    or a                                          ; $7800: $b7
    jr nz, jr_003_7805                            ; $7801: $20 $02

    sla b                                         ; $7803: $cb $20

jr_003_7805:
    ld a, [de]                                    ; $7805: $1a
    add [hl]                                      ; $7806: $86
    ld [de], a                                    ; $7807: $12
    inc de                                        ; $7808: $13
    inc hl                                        ; $7809: $23
    dec b                                         ; $780a: $05
    jr nz, jr_003_7805                            ; $780b: $20 $f8

    pop af                                        ; $780d: $f1
    ldh [rSVBK], a                                ; $780e: $e0 $70
    ld a, c                                       ; $7810: $79
    pop bc                                        ; $7811: $c1
    ldh [$bc], a                                  ; $7812: $e0 $bc
    ldh a, [rSVBK]                                ; $7814: $f0 $70
    push af                                       ; $7816: $f5
    ld a, $02                                     ; $7817: $3e $02
    ldh [rSVBK], a                                ; $7819: $e0 $70
    ldh a, [$bc]                                  ; $781b: $f0 $bc
    push bc                                       ; $781d: $c5
    ld de, $d1c0                                  ; $781e: $11 $c0 $d1
    ld bc, $d080                                  ; $7821: $01 $80 $d0
    or a                                          ; $7824: $b7
    ld a, $20                                     ; $7825: $3e $20
    jr nz, jr_003_782a                            ; $7827: $20 $01

    add a                                         ; $7829: $87

jr_003_782a:
    push af                                       ; $782a: $f5
    ld a, [de]                                    ; $782b: $1a
    srl a                                         ; $782c: $cb $3f
    srl a                                         ; $782e: $cb $3f
    srl a                                         ; $7830: $cb $3f
    push af                                       ; $7832: $f5
    inc de                                        ; $7833: $13
    ld a, [de]                                    ; $7834: $1a
    srl a                                         ; $7835: $cb $3f
    srl a                                         ; $7837: $cb $3f
    srl a                                         ; $7839: $cb $3f
    ld l, a                                       ; $783b: $6f
    inc de                                        ; $783c: $13
    ld a, [de]                                    ; $783d: $1a
    srl a                                         ; $783e: $cb $3f
    srl a                                         ; $7840: $cb $3f
    srl a                                         ; $7842: $cb $3f
    ld h, a                                       ; $7844: $67
    inc de                                        ; $7845: $13
    pop af                                        ; $7846: $f1
    push de                                       ; $7847: $d5
    call Call_003_78a5                            ; $7848: $cd $a5 $78
    ld a, e                                       ; $784b: $7b
    ld [bc], a                                    ; $784c: $02
    inc bc                                        ; $784d: $03
    ld a, d                                       ; $784e: $7a
    ld [bc], a                                    ; $784f: $02
    inc bc                                        ; $7850: $03
    pop de                                        ; $7851: $d1
    pop af                                        ; $7852: $f1
    dec a                                         ; $7853: $3d
    jr nz, jr_003_782a                            ; $7854: $20 $d4

    call Call_000_258a                            ; $7856: $cd $8a $25
    pop bc                                        ; $7859: $c1
    pop af                                        ; $785a: $f1
    ldh [rSVBK], a                                ; $785b: $e0 $70
    ret                                           ; $785d: $c9


    ldh a, [rSVBK]                                ; $785e: $f0 $70
    push af                                       ; $7860: $f5
    ld a, $02                                     ; $7861: $3e $02
    ldh [rSVBK], a                                ; $7863: $e0 $70
    ld a, $80                                     ; $7865: $3e $80
    ldh [rBCPS], a                                ; $7867: $e0 $68
    ldh [rOCPS], a                                ; $7869: $e0 $6a
    ld hl, $ff69                                  ; $786b: $21 $69 $ff
    call $d310                                    ; $786e: $cd $10 $d3
    ld hl, $ff6b                                  ; $7871: $21 $6b $ff
    call $d391                                    ; $7874: $cd $91 $d3
    pop af                                        ; $7877: $f1
    ldh [rSVBK], a                                ; $7878: $e0 $70
    ret                                           ; $787a: $c9


Call_003_787b:
    ldh a, [rSVBK]                                ; $787b: $f0 $70
    push af                                       ; $787d: $f5
    ld a, $02                                     ; $787e: $3e $02
    ldh [rSVBK], a                                ; $7880: $e0 $70
    ld b, $40                                     ; $7882: $06 $40
    ld a, $36                                     ; $7884: $3e $36

jr_003_7886:
    ld [hl+], a                                   ; $7886: $22
    inc hl                                        ; $7887: $23
    dec b                                         ; $7888: $05
    jr nz, jr_003_7886                            ; $7889: $20 $fb

    ld [hl], $c9                                  ; $788b: $36 $c9
    pop af                                        ; $788d: $f1
    ldh [rSVBK], a                                ; $788e: $e0 $70
    ret                                           ; $7890: $c9


Call_003_7891:
    ld a, e                                       ; $7891: $7b
    srl d                                         ; $7892: $cb $3a
    rr e                                          ; $7894: $cb $1b
    srl d                                         ; $7896: $cb $3a
    rr e                                          ; $7898: $cb $1b
    ld h, d                                       ; $789a: $62
    srl e                                         ; $789b: $cb $3b
    srl e                                         ; $789d: $cb $3b
    srl e                                         ; $789f: $cb $3b
    ld l, e                                       ; $78a1: $6b
    and $1f                                       ; $78a2: $e6 $1f
    ret                                           ; $78a4: $c9


Call_003_78a5:
    swap a                                        ; $78a5: $cb $37
    rrca                                          ; $78a7: $0f
    ld e, a                                       ; $78a8: $5f
    srl l                                         ; $78a9: $cb $3d
    rr e                                          ; $78ab: $cb $1b
    srl l                                         ; $78ad: $cb $3d
    rr e                                          ; $78af: $cb $1b
    srl l                                         ; $78b1: $cb $3d
    rr e                                          ; $78b3: $cb $1b
    ld a, h                                       ; $78b5: $7c
    add a                                         ; $78b6: $87
    add a                                         ; $78b7: $87
    add l                                         ; $78b8: $85
    ld d, a                                       ; $78b9: $57
    ret                                           ; $78ba: $c9


    ld a, b                                       ; $78bb: $78
    or a                                          ; $78bc: $b7
    jr z, jr_003_78e3                             ; $78bd: $28 $24

    push bc                                       ; $78bf: $c5

jr_003_78c0:
    ld c, $10                                     ; $78c0: $0e $10

jr_003_78c2:
    ld a, [$c26a]                                 ; $78c2: $fa $6a $c2
    ldh [rSVBK], a                                ; $78c5: $e0 $70
    push de                                       ; $78c7: $d5
    ld de, $ffdf                                  ; $78c8: $11 $df $ff
    call CopyHL2DE_16                            ; $78cb: $cd $27 $12
    ld a, [$c26b]                                 ; $78ce: $fa $6b $c2
    ldh [rSVBK], a                                ; $78d1: $e0 $70
    pop de                                        ; $78d3: $d1
    push hl                                       ; $78d4: $e5
    ld hl, $ffdf                                  ; $78d5: $21 $df $ff
    call CopyHL2DE_16                            ; $78d8: $cd $27 $12
    pop hl                                        ; $78db: $e1
    dec c                                         ; $78dc: $0d
    jr nz, jr_003_78c2                            ; $78dd: $20 $e3

    dec b                                         ; $78df: $05
    jr nz, jr_003_78c0                            ; $78e0: $20 $de

    pop bc                                        ; $78e2: $c1

jr_003_78e3:
    ld a, c                                       ; $78e3: $79
    and $f0                                       ; $78e4: $e6 $f0
    jr z, jr_003_7908                             ; $78e6: $28 $20

    swap a                                        ; $78e8: $cb $37
    ld b, a                                       ; $78ea: $47

jr_003_78eb:
    ld a, [$c26a]                                 ; $78eb: $fa $6a $c2
    ldh [rSVBK], a                                ; $78ee: $e0 $70
    push de                                       ; $78f0: $d5
    ld de, $ffdf                                  ; $78f1: $11 $df $ff
    call CopyHL2DE_16                            ; $78f4: $cd $27 $12
    ld a, [$c26b]                                 ; $78f7: $fa $6b $c2
    ldh [rSVBK], a                                ; $78fa: $e0 $70
    pop de                                        ; $78fc: $d1
    push hl                                       ; $78fd: $e5
    ld hl, $ffdf                                  ; $78fe: $21 $df $ff
    call CopyHL2DE_16                            ; $7901: $cd $27 $12
    pop hl                                        ; $7904: $e1
    dec b                                         ; $7905: $05
    jr nz, jr_003_78eb                            ; $7906: $20 $e3

jr_003_7908:
    ld a, c                                       ; $7908: $79
    and $0f                                       ; $7909: $e6 $0f
    jr z, jr_003_7920                             ; $790b: $28 $13

    ld c, a                                       ; $790d: $4f

jr_003_790e:
    ld a, [$c26a]                                 ; $790e: $fa $6a $c2
    ldh [rSVBK], a                                ; $7911: $e0 $70
    ld a, [hl+]                                   ; $7913: $2a
    ld b, a                                       ; $7914: $47
    ld a, [$c26b]                                 ; $7915: $fa $6b $c2
    ldh [rSVBK], a                                ; $7918: $e0 $70
    ld a, b                                       ; $791a: $78
    ld [de], a                                    ; $791b: $12
    inc de                                        ; $791c: $13
    dec c                                         ; $791d: $0d
    jr nz, jr_003_790e                            ; $791e: $20 $ee

jr_003_7920:
    xor a                                         ; $7920: $af
    ld b, a                                       ; $7921: $47
    ld c, a                                       ; $7922: $4f
    ld a, [$c26a]                                 ; $7923: $fa $6a $c2
    ldh [rSVBK], a                                ; $7926: $e0 $70
    ret                                           ; $7928: $c9


    ldh a, [$d8]                                  ; $7929: $f0 $d8
    sub $1e                                       ; $792b: $d6 $1e
    ret c                                         ; $792d: $d8

    cp $07                                        ; $792e: $fe $07
    ret c                                         ; $7930: $d8

    ld a, $2e                                     ; $7931: $3e $2e
    ldh [$da], a                                  ; $7933: $e0 $da
    ld [$d6d2], a                                 ; $7935: $ea $d2 $d6
    ld a, $27                                     ; $7938: $3e $27
    ldh [$d8], a                                  ; $793a: $e0 $d8
    ld [$d6d1], a                                 ; $793c: $ea $d1 $d6
    ld a, $00                                     ; $793f: $3e $00
    ldh [$d9], a                                  ; $7941: $e0 $d9
    ld hl, $cde1                                  ; $7943: $21 $e1 $cd
    ld a, [hl+]                                   ; $7946: $2a
    ld h, [hl]                                    ; $7947: $66
    ld l, a                                       ; $7948: $6f
    ld [$cde5], a                                 ; $7949: $ea $e5 $cd
    ld a, h                                       ; $794c: $7c
    ld [$cde6], a                                 ; $794d: $ea $e6 $cd
    ld hl, $cde3                                  ; $7950: $21 $e3 $cd
    ld a, [hl+]                                   ; $7953: $2a
    ld h, [hl]                                    ; $7954: $66
    ld l, a                                       ; $7955: $6f
    ld [$cde7], a                                 ; $7956: $ea $e7 $cd
    ld a, h                                       ; $7959: $7c
    ld [$cde8], a                                 ; $795a: $ea $e8 $cd
    xor a                                         ; $795d: $af
    ret                                           ; $795e: $c9


    db $05, $01, $02, $d3, $18, $01, $20, $7a, $18, $01, $30, $7a, $18, $01, $40, $7a
    db $18, $01, $50, $7a, $18, $0c, $01, $02, $d3, $18, $01, $12, $7a, $18, $01, $2f
    db $c0, $19, $01, $37, $c0, $19, $01, $3f, $c0, $19, $01, $47, $c0, $19, $01, $4f
    db $c0, $19, $01, $51, $9c, $1a, $01, $57, $c0, $19, $01, $5f, $c0, $19, $01, $67
    db $c0, $19, $01, $6a, $7a, $18

    dec b                                         ; $79a5: $05
    ld bc, $d301                                  ; $79a6: $01 $01 $d3
    jr jr_003_79ac                                ; $79a9: $18 $01

    rrca                                          ; $79ab: $0f

jr_003_79ac:
    xor l                                         ; $79ac: $ad
    dec de                                        ; $79ad: $1b
    ld bc, $9c31                                  ; $79ae: $01 $31 $9c
    ld a, [de]                                    ; $79b1: $1a
    ld bc, $7a58                                  ; $79b2: $01 $58 $7a
    jr jr_003_79b8                                ; $79b5: $18 $01

    ld l, b                                       ; $79b7: $68

jr_003_79b8:
    ld a, d                                       ; $79b8: $7a
    db $18                                        ; $79b9: $18

    db $06, $01, $01, $ad, $1b, $01, $21, $9c, $1a, $01, $25, $d3, $18, $01, $38, $7a
    db $18, $01, $48, $7a, $18, $01, $50, $7a, $18

    ld bc, $7a68                                  ; $79d3: $01 $68 $7a
    db $18                                        ; $79d6: $18

    db $05, $01, $02, $4e, $19, $01, $28, $7a, $18, $01, $38, $7a, $18, $01, $50, $7a
    db $18, $01, $68, $7a, $18, $07, $01, $02, $4e, $19, $01, $28, $7a, $18, $01, $38
    db $7a, $18, $01, $48, $7a, $18, $01, $5c, $7a, $18, $01, $67, $6e, $1a, $01, $6f
    db $ad, $1b, $08, $01, $02, $4e, $19, $01, $28, $7a, $18, $01, $38, $7a, $18, $01
    db $48, $7a, $18, $01, $5c, $7a, $18, $01, $67, $6e, $1a, $01, $70, $85, $1c, $01
    db $7e, $6a, $1c

    ld a, [bc]                                    ; $7a2a: $0a
    ld bc, $c000                                  ; $7a2b: $01 $00 $c0
    add hl, de                                    ; $7a2e: $19
    ld bc, $d302                                  ; $7a2f: $01 $02 $d3
    jr jr_003_7a35                                ; $7a32: $18 $01

    rrca                                          ; $7a34: $0f

jr_003_7a35:
    ret nz                                        ; $7a35: $c0

    add hl, de                                    ; $7a36: $19
    ld bc, $eb12                                  ; $7a37: $01 $12 $eb
    add hl, de                                    ; $7a3a: $19
    ld bc, $7a18                                  ; $7a3b: $01 $18 $7a
    jr jr_003_7a41                                ; $7a3e: $18 $01

    cpl                                           ; $7a40: $2f

jr_003_7a41:
    ret nz                                        ; $7a41: $c0

    add hl, de                                    ; $7a42: $19
    ld bc, $9c38                                  ; $7a43: $01 $38 $9c
    ld a, [de]                                    ; $7a46: $1a
    ld bc, $7a44                                  ; $7a47: $01 $44 $7a
    jr jr_003_7a4d                                ; $7a4a: $18 $01

    ld e, a                                       ; $7a4c: $5f

jr_003_7a4d:
    ret nz                                        ; $7a4d: $c0

    add hl, de                                    ; $7a4e: $19
    ld bc, $c06f                                  ; $7a4f: $01 $6f $c0
    add hl, de                                    ; $7a52: $19
    dec c                                         ; $7a53: $0d
    ld bc, $c000                                  ; $7a54: $01 $00 $c0
    add hl, de                                    ; $7a57: $19
    ld bc, $d302                                  ; $7a58: $01 $02 $d3
    jr jr_003_7a5e                                ; $7a5b: $18 $01

    ld [de], a                                    ; $7a5d: $12

jr_003_7a5e:
    inc c                                         ; $7a5e: $0c
    ld a, [de]                                    ; $7a5f: $1a
    ld bc, $c01f                                  ; $7a60: $01 $1f $c0
    add hl, de                                    ; $7a63: $19
    ld bc, $7a22                                  ; $7a64: $01 $22 $7a
    jr jr_003_7a6a                                ; $7a67: $18 $01

    ld [hl-], a                                   ; $7a69: $32

jr_003_7a6a:
    ld a, d                                       ; $7a6a: $7a
    jr jr_003_7a6e                                ; $7a6b: $18 $01

    ld b, a                                       ; $7a6d: $47

jr_003_7a6e:
    ret nz                                        ; $7a6e: $c0

    add hl, de                                    ; $7a6f: $19
    ld bc, $c04f                                  ; $7a70: $01 $4f $c0
    add hl, de                                    ; $7a73: $19
    ld bc, $c057                                  ; $7a74: $01 $57 $c0
    add hl, de                                    ; $7a77: $19
    ld bc, $c05f                                  ; $7a78: $01 $5f $c0
    add hl, de                                    ; $7a7b: $19
    ld bc, $c067                                  ; $7a7c: $01 $67 $c0
    add hl, de                                    ; $7a7f: $19
    ld bc, $c06f                                  ; $7a80: $01 $6f $c0
    add hl, de                                    ; $7a83: $19
    ld bc, $c077                                  ; $7a84: $01 $77 $c0
    add hl, de                                    ; $7a87: $19
    ld b, $01                                     ; $7a88: $06 $01
    nop                                           ; $7a8a: $00
    ret nz                                        ; $7a8b: $c0

    add hl, de                                    ; $7a8c: $19
    ld bc, $d302                                  ; $7a8d: $01 $02 $d3
    jr jr_003_7a93                                ; $7a90: $18 $01

    ld [de], a                                    ; $7a92: $12

jr_003_7a93:
    inc l                                         ; $7a93: $2c
    ld a, [de]                                    ; $7a94: $1a
    ld bc, $7a22                                  ; $7a95: $01 $22 $7a
    jr jr_003_7a9b                                ; $7a98: $18 $01

    ld [hl-], a                                   ; $7a9a: $32

jr_003_7a9b:
    ld a, d                                       ; $7a9b: $7a
    jr jr_003_7a9f                                ; $7a9c: $18 $01

    ld e, d                                       ; $7a9e: $5a

jr_003_7a9f:
    ld a, d                                       ; $7a9f: $7a
    jr jr_003_7aad                                ; $7aa0: $18 $0b

    ld bc, $c000                                  ; $7aa2: $01 $00 $c0
    add hl, de                                    ; $7aa5: $19
    ld bc, $d302                                  ; $7aa6: $01 $02 $d3
    jr jr_003_7aac                                ; $7aa9: $18 $01

    ld [de], a                                    ; $7aab: $12

jr_003_7aac:
    ld c, l                                       ; $7aac: $4d

jr_003_7aad:
    ld a, [de]                                    ; $7aad: $1a
    ld bc, $7a17                                  ; $7aae: $01 $17 $7a
    jr jr_003_7ab4                                ; $7ab1: $18 $01

    daa                                           ; $7ab3: $27

jr_003_7ab4:
    ret nz                                        ; $7ab4: $c0

    add hl, de                                    ; $7ab5: $19
    ld bc, $c037                                  ; $7ab6: $01 $37 $c0
    add hl, de                                    ; $7ab9: $19
    ld bc, $c047                                  ; $7aba: $01 $47 $c0
    add hl, de                                    ; $7abd: $19
    ld bc, $9c4d                                  ; $7abe: $01 $4d $9c
    ld a, [de]                                    ; $7ac1: $1a
    ld bc, $7a58                                  ; $7ac2: $01 $58 $7a
    jr jr_003_7ac8                                ; $7ac5: $18 $01

    ld l, b                                       ; $7ac7: $68

jr_003_7ac8:
    ld a, d                                       ; $7ac8: $7a
    jr jr_003_7acc                                ; $7ac9: $18 $01

    ld [hl], a                                    ; $7acb: $77

jr_003_7acc:
    ret nz                                        ; $7acc: $c0

    add hl, de                                    ; $7acd: $19

    db $0a, $01, $01, $65, $23, $01, $03, $d3, $18, $01, $1c, $73, $23, $01, $30, $7a
    db $18, $01, $45, $81, $23, $01, $4a, $7a, $18, $01, $60, $22, $23, $01, $6b, $9c
    db $1a, $01, $6e, $fd, $22, $01, $6f, $ad, $1b, $0a, $01, $02, $d3, $18, $01, $10
    db $7a, $18, $01, $30, $7a, $18, $01, $40, $81, $21, $01, $50, $7a, $18, $01, $60
    db $df, $21, $01, $6a, $98, $22, $01, $6b, $9c, $1a, $01, $6e, $fd, $22, $01, $6f
    db $ad, $1b

    add hl, bc                                    ; $7b20: $09
    ld bc, $d302                                  ; $7b21: $01 $02 $d3
    jr jr_003_7b27                                ; $7b24: $18 $01

    db $10                                        ; $7b26: $10

jr_003_7b27:
    ld a, d                                       ; $7b27: $7a
    jr @+$03                                      ; $7b28: $18 $01

    jr nc, jr_003_7ba6                            ; $7b2a: $30 $7a

    jr jr_003_7b2f                                ; $7b2c: $18 $01

    ld b, b                                       ; $7b2e: $40

jr_003_7b2f:
    and l                                         ; $7b2f: $a5
    ld [hl+], a                                   ; $7b30: $22
    ld bc, $7a50                                  ; $7b31: $01 $50 $7a
    jr jr_003_7b37                                ; $7b34: $18 $01

    ld h, b                                       ; $7b36: $60

jr_003_7b37:
    jp c, $0121                                   ; $7b37: $da $21 $01

    ld l, d                                       ; $7b3a: $6a
    sbc b                                         ; $7b3b: $98
    ld [hl+], a                                   ; $7b3c: $22
    ld bc, $9c6b                                  ; $7b3d: $01 $6b $9c
    ld a, [de]                                    ; $7b40: $1a
    ld bc, $ad6f                                  ; $7b41: $01 $6f $ad
    dec de                                        ; $7b44: $1b
    rlca                                          ; $7b45: $07
    ld bc, $5202                                  ; $7b46: $01 $02 $52
    ld hl, $0301                                  ; $7b49: $21 $01 $03
    db $d3                                        ; $7b4c: $d3
    jr jr_003_7b50                                ; $7b4d: $18 $01

    db $10                                        ; $7b4f: $10

jr_003_7b50:
    ld a, d                                       ; $7b50: $7a
    jr @+$03                                      ; $7b51: $18 $01

    jr nc, @+$7c                                  ; $7b53: $30 $7a

    jr jr_003_7b58                                ; $7b55: $18 $01

    ld d, b                                       ; $7b57: $50

jr_003_7b58:
    ld a, d                                       ; $7b58: $7a
    jr jr_003_7b5c                                ; $7b59: $18 $01

    ld l, c                                       ; $7b5b: $69

jr_003_7b5c:
    ld l, b                                       ; $7b5c: $68
    ld hl, $6b01                                  ; $7b5d: $21 $01 $6b
    sbc h                                         ; $7b60: $9c
    ld a, [de]                                    ; $7b61: $1a
    inc bc                                        ; $7b62: $03
    ld bc, $da00                                  ; $7b63: $01 $00 $da
    dec e                                         ; $7b66: $1d
    ld bc, $f601                                  ; $7b67: $01 $01 $f6
    ld e, $01                                     ; $7b6a: $1e $01
    adc a                                         ; $7b6c: $8f
    inc d                                         ; $7b6d: $14
    rra                                           ; $7b6e: $1f
    inc b                                         ; $7b6f: $04
    ld bc, $da00                                  ; $7b70: $01 $00 $da
    dec e                                         ; $7b73: $1d
    ld bc, $f669                                  ; $7b74: $01 $69 $f6
    ld e, $01                                     ; $7b77: $1e $01
    ld l, h                                       ; $7b79: $6c
    sbc h                                         ; $7b7a: $9c
    ld a, [de]                                    ; $7b7b: $1a
    ld bc, $148f                                  ; $7b7c: $01 $8f $14
    rra                                           ; $7b7f: $1f
    inc bc                                        ; $7b80: $03
    ld bc, $da00                                  ; $7b81: $01 $00 $da
    dec e                                         ; $7b84: $1d
    ld bc, $7e8e                                  ; $7b85: $01 $8e $7e
    ld e, $01                                     ; $7b88: $1e $01
    adc a                                         ; $7b8a: $8f
    and [hl]                                      ; $7b8b: $a6
    db $1e                                        ; $7b8c: $1e

    db $05, $01, $00, $29, $1e, $01, $6b, $7e, $1e, $01, $6c, $9c, $1a, $01, $6f, $ad
    db $1b, $01, $90, $a6, $1e

    inc bc                                        ; $7ba2: $03
    ld bc, $2900                                  ; $7ba3: $01 $00 $29

jr_003_7ba6:
    ld e, $01                                     ; $7ba6: $1e $01
    adc [hl]                                      ; $7ba8: $8e
    ld a, [hl]                                    ; $7ba9: $7e
    ld e, $01                                     ; $7baa: $1e $01
    adc a                                         ; $7bac: $8f
    and [hl]                                      ; $7bad: $a6
    ld e, $05                                     ; $7bae: $1e $05
    ld bc, $4800                                  ; $7bb0: $01 $00 $48
    rra                                           ; $7bb3: $1f
    ld bc, $9647                                  ; $7bb4: $01 $47 $96
    rra                                           ; $7bb7: $1f
    ld bc, $b448                                  ; $7bb8: $01 $48 $b4
    rra                                           ; $7bbb: $1f
    ld bc, $c949                                  ; $7bbc: $01 $49 $c9
    rra                                           ; $7bbf: $1f
    ld bc, $eb8f                                  ; $7bc0: $01 $8f $eb
    rra                                           ; $7bc3: $1f

    db $05, $01, $00, $48, $1f, $01, $02, $77, $20, $01, $48, $9c, $20, $01, $8c, $2c
    db $20, $01, $8f, $ae, $20

    dec b                                         ; $7bd9: $05
    ld bc, $d302                                  ; $7bda: $01 $02 $d3
    jr jr_003_7be0                                ; $7bdd: $18 $01

    db $10                                        ; $7bdf: $10

jr_003_7be0:
    ld a, d                                       ; $7be0: $7a
    jr @+$03                                      ; $7be1: $18 $01

    jr nz, jr_003_7c5f                            ; $7be3: $20 $7a

    jr @+$03                                      ; $7be5: $18 $01

    jr nc, @+$7c                                  ; $7be7: $30 $7a

    jr jr_003_7bec                                ; $7be9: $18 $01

    ld b, b                                       ; $7beb: $40

jr_003_7bec:
    ld a, d                                       ; $7bec: $7a
    jr jr_003_7bf4                                ; $7bed: $18 $05

    ld bc, $d302                                  ; $7bef: $01 $02 $d3
    jr jr_003_7bf5                                ; $7bf2: $18 $01

jr_003_7bf4:
    db $10                                        ; $7bf4: $10

jr_003_7bf5:
    ld a, d                                       ; $7bf5: $7a
    jr @+$03                                      ; $7bf6: $18 $01

    jr nc, jr_003_7c74                            ; $7bf8: $30 $7a

    jr jr_003_7bfd                                ; $7bfa: $18 $01

    ld d, b                                       ; $7bfc: $50

jr_003_7bfd:
    sbc h                                         ; $7bfd: $9c
    ld a, [de]                                    ; $7bfe: $1a
    ld bc, $7a6c                                  ; $7bff: $01 $6c $7a
    db $18                                        ; $7c02: $18

    db $05, $01, $02, $d3, $18, $01, $06, $b0, $1c, $01, $46, $9c, $1a, $01, $58, $7a
    db $18, $01, $68, $7a, $18, $04, $01, $02, $d3, $18, $01, $46, $9c, $1a, $01, $58
    db $7a, $18, $01, $68, $7a, $18, $06, $01, $02, $d3, $18, $01, $1f, $50, $1b, $01
    db $37, $50, $1b, $01, $4f, $50, $1b, $01, $58, $7a, $18, $01, $70, $7a, $18

    ld bc, $0201                                  ; $7c42: $01 $01 $02
    sbc e                                         ; $7c45: $9b
    db $18                                        ; $7c46: $18

Call_003_7c47:
jr_003_7c47:
    ldh a, [rLCDC]                                ; $7c47: $f0 $40
    rla                                           ; $7c49: $17
    ret nc                                        ; $7c4a: $d0

    ld a, [$c118]                                 ; $7c4b: $fa $18 $c1
    or a                                          ; $7c4e: $b7
    jr nz, jr_003_7c47                            ; $7c4f: $20 $f6

    ld a, l                                       ; $7c51: $7d
    ld [$c119], a                                 ; $7c52: $ea $19 $c1
    ld a, h                                       ; $7c55: $7c
    ld [$c11a], a                                 ; $7c56: $ea $1a $c1
    ld a, $01                                     ; $7c59: $3e $01
    ld [$c118], a                                 ; $7c5b: $ea $18 $c1
    ret                                           ; $7c5e: $c9


jr_003_7c5f:
    call Call_003_7c47                            ; $7c5f: $cd $47 $7c

jr_003_7c62:
    ldh a, [rLCDC]                                ; $7c62: $f0 $40
    rla                                           ; $7c64: $17
    ret nc                                        ; $7c65: $d0

    ld a, [$c118]                                 ; $7c66: $fa $18 $c1
    or a                                          ; $7c69: $b7
    jr nz, jr_003_7c62                            ; $7c6a: $20 $f6

    ret                                           ; $7c6c: $c9


Call_003_7c6d:
    ld a, [$c113]                                 ; $7c6d: $fa $13 $c1
    or a                                          ; $7c70: $b7
    ret nz                                        ; $7c71: $c0

    ldh a, [rLCDC]                                ; $7c72: $f0 $40

jr_003_7c74:
    rla                                           ; $7c74: $17
    jr nc, jr_003_7c8a                            ; $7c75: $30 $13

    ld a, $01                                     ; $7c77: $3e $01
    ld [$c113], a                                 ; $7c79: $ea $13 $c1
    ld a, h                                       ; $7c7c: $7c
    ld [$c115], a                                 ; $7c7d: $ea $15 $c1
    ld a, l                                       ; $7c80: $7d
    ld [$c114], a                                 ; $7c81: $ea $14 $c1
    ld a, $02                                     ; $7c84: $3e $02
    ld [$c113], a                                 ; $7c86: $ea $13 $c1
    ret                                           ; $7c89: $c9


jr_003_7c8a:
    ld a, l                                       ; $7c8a: $7d
    ld [$c116], a                                 ; $7c8b: $ea $16 $c1
    ld a, h                                       ; $7c8e: $7c
    ld [$c117], a                                 ; $7c8f: $ea $17 $c1
    ld a, [hl+]                                   ; $7c92: $2a
    ld [$c0d2], a                                 ; $7c93: $ea $d2 $c0
    ld [$c0d1], a                                 ; $7c96: $ea $d1 $c0
    add a                                         ; $7c99: $87
    add a                                         ; $7c9a: $87
    ld c, a                                       ; $7c9b: $4f
    ld de, $c0d3                                  ; $7c9c: $11 $d3 $c0
    call Call_000_114a                            ; $7c9f: $cd $4a $11
    call Call_000_18a3                            ; $7ca2: $cd $a3 $18
    xor a                                         ; $7ca5: $af
    ld [$c114], a                                 ; $7ca6: $ea $14 $c1
    ld [$c115], a                                 ; $7ca9: $ea $15 $c1
    ld [$c113], a                                 ; $7cac: $ea $13 $c1
    ret                                           ; $7caf: $c9


    db $00

    ld [bc], a                                    ; $7cb1: $02
    ld [bc], a                                    ; $7cb2: $02
    ld [bc], a                                    ; $7cb3: $02

    db $02

    ld [bc], a                                    ; $7cb5: $02
    ld [bc], a                                    ; $7cb6: $02
    ld [bc], a                                    ; $7cb7: $02

    db $02, $2c

    ld [hl+], a                                   ; $7cba: $22
    rra                                           ; $7cbb: $1f
    rra                                           ; $7cbc: $1f
    rra                                           ; $7cbd: $1f
    ld a, [hl+]                                   ; $7cbe: $2a
    dec bc                                        ; $7cbf: $0b
    dec bc                                        ; $7cc0: $0b
    rra                                           ; $7cc1: $1f
    jr nz, jr_003_7cc6                            ; $7cc2: $20 $02

    ld [bc], a                                    ; $7cc4: $02
    dec bc                                        ; $7cc5: $0b

jr_003_7cc6:
    ld [$0608], sp                                ; $7cc6: $08 $08 $06
    ld b, $06                                     ; $7cc9: $06 $06
    ld b, $06                                     ; $7ccb: $06 $06
    ld b, $20                                     ; $7ccd: $06 $20
    jr nz, @+$22                                  ; $7ccf: $20 $20

    jr nz, jr_003_7cf3                            ; $7cd1: $20 $20

    jr nz, @+$07                                  ; $7cd3: $20 $05

    dec bc                                        ; $7cd5: $0b
    dec bc                                        ; $7cd6: $0b
    inc l                                         ; $7cd7: $2c
    dec bc                                        ; $7cd8: $0b
    ld b, $2e                                     ; $7cd9: $06 $2e
    ld hl, $0e0e                                  ; $7cdb: $21 $0e $0e
    ld c, $0e                                     ; $7cde: $0e $0e
    ld c, $0e                                     ; $7ce0: $0e $0e
    db $0e                                        ; $7ce2: $0e

    db $02

    dec bc                                        ; $7ce4: $0b
    ld [bc], a                                    ; $7ce5: $02
    inc l                                         ; $7ce6: $2c
    inc l                                         ; $7ce7: $2c
    dec b                                         ; $7ce8: $05
    dec bc                                        ; $7ce9: $0b
    ld [bc], a                                    ; $7cea: $02
    inc bc                                        ; $7ceb: $03
    dec b                                         ; $7cec: $05
    inc bc                                        ; $7ced: $03
    dec b                                         ; $7cee: $05
    ld [$1f0b], sp                                ; $7cef: $08 $0b $1f
    inc l                                         ; $7cf2: $2c

jr_003_7cf3:
    ld [bc], a                                    ; $7cf3: $02
    inc bc                                        ; $7cf4: $03
    dec b                                         ; $7cf5: $05
    inc b                                         ; $7cf6: $04
    inc b                                         ; $7cf7: $04
    dec bc                                        ; $7cf8: $0b
    dec b                                         ; $7cf9: $05
    nop                                           ; $7cfa: $00
    dec b                                         ; $7cfb: $05
    nop                                           ; $7cfc: $00
    inc bc                                        ; $7cfd: $03
    inc bc                                        ; $7cfe: $03
    inc l                                         ; $7cff: $2c
    jr nz, @+$30                                  ; $7d00: $20 $2e

    ld l, $2e                                     ; $7d02: $2e $2e
    ld hl, $0002                                  ; $7d04: $21 $02 $00
    rra                                           ; $7d07: $1f
    dec bc                                        ; $7d08: $0b
    rra                                           ; $7d09: $1f
    dec bc                                        ; $7d0a: $0b
    dec bc                                        ; $7d0b: $0b
    inc l                                         ; $7d0c: $2c
    ld [$0b05], sp                                ; $7d0d: $08 $05 $0b
    ld [hl+], a                                   ; $7d10: $22
    rlca                                          ; $7d11: $07
    dec d                                         ; $7d12: $15

    ldh a, [$da]                                  ; $7d13: $f0 $da
    ld hl, $7cb0                                  ; $7d15: $21 $b0 $7c
    rst $08                                       ; $7d18: $cf
    jp Jump_000_395e                              ; $7d19: $c3 $5e $39


Call_003_7d1c:
    ld bc, $0580                                  ; $7d1c: $01 $80 $05
    ld hl, $7d2c                                  ; $7d1f: $21 $2c $7d

jr_003_7d22:
    ld a, [hl+]                                   ; $7d22: $2a
    ld [c], a                                     ; $7d23: $e2
    inc c                                         ; $7d24: $0c
    ld a, [hl+]                                   ; $7d25: $2a
    ld [c], a                                     ; $7d26: $e2
    inc c                                         ; $7d27: $0c
    dec b                                         ; $7d28: $05
    jr nz, jr_003_7d22                            ; $7d29: $20 $f7

    ret                                           ; $7d2b: $c9


    db $3e, $c0, $e0, $46, $3e, $28, $3d, $20, $fd, $c9

Call_003_7d36:
    ldh [$c1], a                                  ; $7d36: $e0 $c1
    ld a, $25                                     ; $7d38: $3e $25
    ldh [$bd], a                                  ; $7d3a: $e0 $bd
    ld a, $46                                     ; $7d3c: $3e $46
    ldh [$be], a                                  ; $7d3e: $e0 $be
    call Call_000_33c4                            ; $7d40: $cd $c4 $33
    call Call_003_7d1c                            ; $7d43: $cd $1c $7d
    ld hl, $ff8a                                  ; $7d46: $21 $8a $ff
    ld bc, $0075                                  ; $7d49: $01 $75 $00
    call Call_000_112e                            ; $7d4c: $cd $2e $11
    ld hl, $9800                                  ; $7d4f: $21 $00 $98
    ld bc, $0800                                  ; $7d52: $01 $00 $08
    call Call_000_112e                            ; $7d55: $cd $2e $11
    ld hl, $c000                                  ; $7d58: $21 $00 $c0
    ld bc, $0fef                                  ; $7d5b: $01 $ef $0f
    call Call_000_112e                            ; $7d5e: $cd $2e $11
    ld a, $69                                     ; $7d61: $3e $69
    ld hl, $cf80                                  ; $7d63: $21 $80 $cf
    ld bc, $0070                                  ; $7d66: $01 $70 $00
    call Call_000_112f                            ; $7d69: $cd $2f $11
    ld a, $01                                     ; $7d6c: $3e $01

jr_003_7d6e:
    push af                                       ; $7d6e: $f5
    ldh [rSVBK], a                                ; $7d6f: $e0 $70
    ld hl, $d000                                  ; $7d71: $21 $00 $d0
    ld bc, $1000                                  ; $7d74: $01 $00 $10
    call Call_000_112e                            ; $7d77: $cd $2e $11
    pop af                                        ; $7d7a: $f1
    inc a                                         ; $7d7b: $3c
    cp $08                                        ; $7d7c: $fe $08
    jr nz, jr_003_7d6e                            ; $7d7e: $20 $ee

    ld hl, $8000                                  ; $7d80: $21 $00 $80
    ld bc, $1800                                  ; $7d83: $01 $00 $18
    call Call_000_112e                            ; $7d86: $cd $2e $11
    ld hl, $d310                                  ; $7d89: $21 $10 $d3
    call Call_003_787b                            ; $7d8c: $cd $7b $78
    ld hl, $d391                                  ; $7d8f: $21 $91 $d3
    call Call_003_787b                            ; $7d92: $cd $7b $78
    ld a, $01                                     ; $7d95: $3e $01
    ldh [rSVBK], a                                ; $7d97: $e0 $70
    ld a, $ff                                     ; $7d99: $3e $ff
    ld [$c0ba], a                                 ; $7d9b: $ea $ba $c0
    call Call_000_30d5                            ; $7d9e: $cd $d5 $30
    ld a, $07                                     ; $7da1: $3e $07
    ldh [rWX], a                                  ; $7da3: $e0 $4b
    ld a, $91                                     ; $7da5: $3e $91
    ldh [rWY], a                                  ; $7da7: $e0 $4a
    xor a                                         ; $7da9: $af
    ldh [rSCX], a                                 ; $7daa: $e0 $43
    ldh [rSCY], a                                 ; $7dac: $e0 $42
    ldh [rSTAT], a                                ; $7dae: $e0 $41
    ld a, $87                                     ; $7db0: $3e $87
    ldh [rLCDC], a                                ; $7db2: $e0 $40
    rst $18                                       ; $7db4: $df
    ldh a, [rIF]                                  ; $7db5: $f0 $0f
    and $f3                                       ; $7db7: $e6 $f3
    ldh [rIF], a                                  ; $7db9: $e0 $0f
    ld a, $01                                     ; $7dbb: $3e $01
    ldh [$8a], a                                  ; $7dbd: $e0 $8a
    ld hl, $ff8e                                  ; $7dbf: $21 $8e $ff
    ld a, $ff                                     ; $7dc2: $3e $ff
    ldh [$8b], a                                  ; $7dc4: $e0 $8b
    ld a, $03                                     ; $7dc6: $3e $03
    ld [hl+], a                                   ; $7dc8: $22
    ld a, $0d                                     ; $7dc9: $3e $0d
    ld [hl+], a                                   ; $7dcb: $22
    xor a                                         ; $7dcc: $af
    ld [hl+], a                                   ; $7dcd: $22
    ld a, $ff                                     ; $7dce: $3e $ff
    ld [$cd19], a                                 ; $7dd0: $ea $19 $cd
    ld a, $01                                     ; $7dd3: $3e $01
    ld [$cdda], a                                 ; $7dd5: $ea $da $cd
    ld [$cddb], a                                 ; $7dd8: $ea $db $cd
    ld [$c300], a                                 ; $7ddb: $ea $00 $c3
    ld [$c1e9], a                                 ; $7dde: $ea $e9 $c1
    inc a                                         ; $7de1: $3c
    ld [$cce2], a                                 ; $7de2: $ea $e2 $cc
    ld a, $0a                                     ; $7de5: $3e $0a
    ld [$c1ab], a                                 ; $7de7: $ea $ab $c1
    call Call_000_1857                            ; $7dea: $cd $57 $18
    ld hl, $795f                                  ; $7ded: $21 $5f $79
    call Call_003_7c6d                            ; $7df0: $cd $6d $7c
    ld hl, $ffff                                  ; $7df3: $21 $ff $ff
    set 1, [hl]                                   ; $7df6: $cb $ce
    ldh [$c1], a                                  ; $7df8: $e0 $c1
    ld a, $35                                     ; $7dfa: $3e $35
    ldh [$bd], a                                  ; $7dfc: $e0 $bd
    ld a, $6b                                     ; $7dfe: $3e $6b
    ldh [$be], a                                  ; $7e00: $e0 $be
    jp Jump_000_33c4                              ; $7e02: $c3 $c4 $33


    ld hl, $ff9c                                  ; $7e05: $21 $9c $ff
    ld a, [hl+]                                   ; $7e08: $2a
    ld h, [hl]                                    ; $7e09: $66
    ld l, a                                       ; $7e0a: $6f
    ld de, $0048                                  ; $7e0b: $11 $48 $00
    ld a, l                                       ; $7e0e: $7d
    sbc e                                         ; $7e0f: $9b
    ld l, a                                       ; $7e10: $6f
    ld a, h                                       ; $7e11: $7c
    sbc d                                         ; $7e12: $9a
    ld h, a                                       ; $7e13: $67
    jr c, jr_003_7e20                             ; $7e14: $38 $0a

    ld a, l                                       ; $7e16: $7d
    ld [$c272], a                                 ; $7e17: $ea $72 $c2
    ld a, h                                       ; $7e1a: $7c
    ld [$c273], a                                 ; $7e1b: $ea $73 $c2
    jr jr_003_7e2b                                ; $7e1e: $18 $0b

jr_003_7e20:
    ld hl, $0000                                  ; $7e20: $21 $00 $00
    ld a, l                                       ; $7e23: $7d
    ld [$c272], a                                 ; $7e24: $ea $72 $c2
    ld a, h                                       ; $7e27: $7c
    ld [$c273], a                                 ; $7e28: $ea $73 $c2

jr_003_7e2b:
    ld hl, $ff9e                                  ; $7e2b: $21 $9e $ff
    ld a, [hl+]                                   ; $7e2e: $2a
    ld h, [hl]                                    ; $7e2f: $66
    ld l, a                                       ; $7e30: $6f
    ld de, $0040                                  ; $7e31: $11 $40 $00
    ld a, l                                       ; $7e34: $7d
    sbc e                                         ; $7e35: $9b
    ld l, a                                       ; $7e36: $6f
    ld a, h                                       ; $7e37: $7c
    sbc d                                         ; $7e38: $9a
    ld h, a                                       ; $7e39: $67
    jr c, jr_003_7e45                             ; $7e3a: $38 $09

    ld a, l                                       ; $7e3c: $7d
    ld [$c274], a                                 ; $7e3d: $ea $74 $c2
    ld a, h                                       ; $7e40: $7c
    ld [$c275], a                                 ; $7e41: $ea $75 $c2
    ret                                           ; $7e44: $c9


jr_003_7e45:
    ld hl, $0000                                  ; $7e45: $21 $00 $00
    ld a, l                                       ; $7e48: $7d
    ld [$c274], a                                 ; $7e49: $ea $74 $c2
    ld a, h                                       ; $7e4c: $7c
    ld [$c275], a                                 ; $7e4d: $ea $75 $c2
    ret                                           ; $7e50: $c9


    db $00, $00

    nop                                           ; $7e53: $00
    nop                                           ; $7e54: $00
    nop                                           ; $7e55: $00
    nop                                           ; $7e56: $00
    nop                                           ; $7e57: $00
    nop                                           ; $7e58: $00
    nop                                           ; $7e59: $00
    nop                                           ; $7e5a: $00
    nop                                           ; $7e5b: $00
    nop                                           ; $7e5c: $00
    ld l, h                                       ; $7e5d: $6c
    nop                                           ; $7e5e: $00
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
    nop                                           ; $7e6b: $00
    nop                                           ; $7e6c: $00
    inc de                                        ; $7e6d: $13
    ld bc, $012b                                  ; $7e6e: $01 $2b $01
    ld b, b                                       ; $7e71: $40
    ld bc, $0168                                  ; $7e72: $01 $68 $01
    add h                                         ; $7e75: $84
    ld bc, $01a4                                  ; $7e76: $01 $a4 $01
    push bc                                       ; $7e79: $c5
    ld bc, $01f4                                  ; $7e7a: $01 $f4 $01
    nop                                           ; $7e7d: $00
    nop                                           ; $7e7e: $00
    ld c, c                                       ; $7e7f: $49
    nop                                           ; $7e80: $00
    ld a, c                                       ; $7e81: $79
    nop                                           ; $7e82: $00
    adc h                                         ; $7e83: $8c
    nop                                           ; $7e84: $00
    or b                                          ; $7e85: $b0
    nop                                           ; $7e86: $00
    ret z                                         ; $7e87: $c8

    nop                                           ; $7e88: $00
    db $eb                                        ; $7e89: $eb
    nop                                           ; $7e8a: $00
    ld b, $01                                     ; $7e8b: $06 $01

    push de                                       ; $7e8d: $d5
    ldh a, [rSVBK]                                ; $7e8e: $f0 $70
    push af                                       ; $7e90: $f5
    ld a, $06                                     ; $7e91: $3e $06
    ldh [rSVBK], a                                ; $7e93: $e0 $70
    ld hl, $7e51                                  ; $7e95: $21 $51 $7e
    ld a, d                                       ; $7e98: $7a
    call Call_000_319d                            ; $7e99: $cd $9d $31
    ld a, h                                       ; $7e9c: $7c
    or l                                          ; $7e9d: $b5
    jr z, jr_003_7efb                             ; $7e9e: $28 $5b

    ld a, h                                       ; $7ea0: $7c
    cp $ff                                        ; $7ea1: $fe $ff
    jr z, jr_003_7f00                             ; $7ea3: $28 $5b

    ld a, [$d5d0]                                 ; $7ea5: $fa $d0 $d5
    ld e, a                                       ; $7ea8: $5f
    ld a, [$d5d1]                                 ; $7ea9: $fa $d1 $d5
    ld d, a                                       ; $7eac: $57
    add hl, de                                    ; $7ead: $19
    ld a, l                                       ; $7eae: $7d
    ld [$d5c8], a                                 ; $7eaf: $ea $c8 $d5
    ld a, h                                       ; $7eb2: $7c
    ld [$d5c9], a                                 ; $7eb3: $ea $c9 $d5

jr_003_7eb6:
    ld hl, $d5ca                                  ; $7eb6: $21 $ca $d5
    ld a, [hl+]                                   ; $7eb9: $2a
    ld h, [hl]                                    ; $7eba: $66
    ld l, a                                       ; $7ebb: $6f
    ld a, $2d                                     ; $7ebc: $3e $2d
    call Call_000_275f                            ; $7ebe: $cd $5f $27
    ld e, a                                       ; $7ec1: $5f
    ld d, $00                                     ; $7ec2: $16 $00
    add hl, de                                    ; $7ec4: $19
    ld a, l                                       ; $7ec5: $7d
    ld [$d5ca], a                                 ; $7ec6: $ea $ca $d5
    ld a, h                                       ; $7ec9: $7c
    ld [$d5cb], a                                 ; $7eca: $ea $cb $d5
    ld hl, $d5cc                                  ; $7ecd: $21 $cc $d5
    ld a, [hl+]                                   ; $7ed0: $2a
    ld h, [hl]                                    ; $7ed1: $66
    ld l, a                                       ; $7ed2: $6f
    ld a, $2d                                     ; $7ed3: $3e $2d
    call Call_000_275f                            ; $7ed5: $cd $5f $27
    ld e, a                                       ; $7ed8: $5f
    ld d, $00                                     ; $7ed9: $16 $00
    add hl, de                                    ; $7edb: $19
    ld a, l                                       ; $7edc: $7d
    ld [$d5cc], a                                 ; $7edd: $ea $cc $d5
    ld a, h                                       ; $7ee0: $7c
    ld [$d5cd], a                                 ; $7ee1: $ea $cd $d5
    ld hl, $d5ce                                  ; $7ee4: $21 $ce $d5
    ld a, [hl+]                                   ; $7ee7: $2a
    ld h, [hl]                                    ; $7ee8: $66
    ld l, a                                       ; $7ee9: $6f
    ld a, $2d                                     ; $7eea: $3e $2d
    call Call_000_275f                            ; $7eec: $cd $5f $27
    ld e, a                                       ; $7eef: $5f
    ld d, $00                                     ; $7ef0: $16 $00
    add hl, de                                    ; $7ef2: $19
    ld a, l                                       ; $7ef3: $7d
    ld [$d5ce], a                                 ; $7ef4: $ea $ce $d5
    ld a, h                                       ; $7ef7: $7c
    ld [$d5cf], a                                 ; $7ef8: $ea $cf $d5

jr_003_7efb:
    pop af                                        ; $7efb: $f1
    ldh [rSVBK], a                                ; $7efc: $e0 $70
    pop de                                        ; $7efe: $d1
    ret                                           ; $7eff: $c9


jr_003_7f00:
    ld hl, $7e81                                  ; $7f00: $21 $81 $7e
    ld a, [$d60a]                                 ; $7f03: $fa $0a $d6
    call Call_000_319d                            ; $7f06: $cd $9d $31
    ld a, [$d5d0]                                 ; $7f09: $fa $d0 $d5
    ld e, a                                       ; $7f0c: $5f
    ld a, [$d5d1]                                 ; $7f0d: $fa $d1 $d5
    ld d, a                                       ; $7f10: $57
    add hl, de                                    ; $7f11: $19
    ld a, l                                       ; $7f12: $7d
    ld [$d5c8], a                                 ; $7f13: $ea $c8 $d5
    ld a, h                                       ; $7f16: $7c
    ld [$d5c9], a                                 ; $7f17: $ea $c9 $d5
    jr jr_003_7eb6                                ; $7f1a: $18 $9a

    ldh [$bc], a                                  ; $7f1c: $e0 $bc
    ldh a, [rSVBK]                                ; $7f1e: $f0 $70
    push af                                       ; $7f20: $f5
    ld a, $06                                     ; $7f21: $3e $06
    ldh [rSVBK], a                                ; $7f23: $e0 $70
    ldh a, [$bc]                                  ; $7f25: $f0 $bc
    ld hl, $01f4                                  ; $7f27: $21 $f4 $01
    ld a, [$d5d0]                                 ; $7f2a: $fa $d0 $d5
    ld e, a                                       ; $7f2d: $5f
    ld a, [$d5d1]                                 ; $7f2e: $fa $d1 $d5
    ld d, a                                       ; $7f31: $57
    add hl, de                                    ; $7f32: $19
    ld a, l                                       ; $7f33: $7d
    ld [$d5c8], a                                 ; $7f34: $ea $c8 $d5
    ld a, h                                       ; $7f37: $7c
    ld [$d5c9], a                                 ; $7f38: $ea $c9 $d5
    ld hl, $00aa                                  ; $7f3b: $21 $aa $00
    add hl, de                                    ; $7f3e: $19
    ld de, $0044                                  ; $7f3f: $11 $44 $00
    rst $10                                       ; $7f42: $d7
    jp c, Jump_003_7fc0                           ; $7f43: $da $c0 $7f

    ld de, $0036                                  ; $7f46: $11 $36 $00
    rst $10                                       ; $7f49: $d7
    jr c, jr_003_7f81                             ; $7f4a: $38 $35

    ld hl, $d5ce                                  ; $7f4c: $21 $ce $d5
    ld [hl], $66                                  ; $7f4f: $36 $66
    inc hl                                        ; $7f51: $23
    ld [hl], $02                                  ; $7f52: $36 $02
    call Call_003_7ff5                            ; $7f54: $cd $f5 $7f
    jr c, jr_003_7f6d                             ; $7f57: $38 $14

    ld hl, $d5ca                                  ; $7f59: $21 $ca $d5
    ld [hl], $3f                                  ; $7f5c: $36 $3f
    inc hl                                        ; $7f5e: $23
    ld [hl], $02                                  ; $7f5f: $36 $02
    ld hl, $d5cc                                  ; $7f61: $21 $cc $d5
    ld [hl], $30                                  ; $7f64: $36 $30
    inc hl                                        ; $7f66: $23
    ld [hl], $02                                  ; $7f67: $36 $02
    pop af                                        ; $7f69: $f1
    ldh [rSVBK], a                                ; $7f6a: $e0 $70
    ret                                           ; $7f6c: $c9


jr_003_7f6d:
    ld hl, $d5ca                                  ; $7f6d: $21 $ca $d5
    ld [hl], $30                                  ; $7f70: $36 $30
    inc hl                                        ; $7f72: $23
    ld [hl], $02                                  ; $7f73: $36 $02
    ld hl, $d5cc                                  ; $7f75: $21 $cc $d5
    ld [hl], $3f                                  ; $7f78: $36 $3f
    inc hl                                        ; $7f7a: $23
    ld [hl], $02                                  ; $7f7b: $36 $02
    pop af                                        ; $7f7d: $f1
    ldh [rSVBK], a                                ; $7f7e: $e0 $70
    ret                                           ; $7f80: $c9


jr_003_7f81:
    ld hl, $d5c8                                  ; $7f81: $21 $c8 $d5
    ld a, [hl+]                                   ; $7f84: $2a
    ld h, [hl]                                    ; $7f85: $66
    ld l, a                                       ; $7f86: $6f
    ld de, $00ac                                  ; $7f87: $11 $ac $00
    add hl, de                                    ; $7f8a: $19
    ld a, l                                       ; $7f8b: $7d
    ld [$d5ce], a                                 ; $7f8c: $ea $ce $d5
    ld a, h                                       ; $7f8f: $7c
    ld [$d5cf], a                                 ; $7f90: $ea $cf $d5
    call Call_003_7ff5                            ; $7f93: $cd $f5 $7f
    jr c, jr_003_7fac                             ; $7f96: $38 $14

    ld hl, $d5ca                                  ; $7f98: $21 $ca $d5
    ld [hl], $3d                                  ; $7f9b: $36 $3d
    inc hl                                        ; $7f9d: $23
    ld [hl], $02                                  ; $7f9e: $36 $02
    ld hl, $d5cc                                  ; $7fa0: $21 $cc $d5
    ld [hl], $f0                                  ; $7fa3: $36 $f0
    inc hl                                        ; $7fa5: $23
    ld [hl], $01                                  ; $7fa6: $36 $01
    pop af                                        ; $7fa8: $f1
    ldh [rSVBK], a                                ; $7fa9: $e0 $70
    ret                                           ; $7fab: $c9


jr_003_7fac:
    ld hl, $d5ca                                  ; $7fac: $21 $ca $d5
    ld [hl], $f0                                  ; $7faf: $36 $f0
    inc hl                                        ; $7fb1: $23
    ld [hl], $01                                  ; $7fb2: $36 $01
    ld hl, $d5cc                                  ; $7fb4: $21 $cc $d5
    ld [hl], $3d                                  ; $7fb7: $36 $3d
    inc hl                                        ; $7fb9: $23
    ld [hl], $02                                  ; $7fba: $36 $02
    pop af                                        ; $7fbc: $f1
    ldh [rSVBK], a                                ; $7fbd: $e0 $70
    ret                                           ; $7fbf: $c9


Jump_003_7fc0:
    ld hl, $d5ce                                  ; $7fc0: $21 $ce $d5
    ld [hl], $f6                                  ; $7fc3: $36 $f6
    inc hl                                        ; $7fc5: $23
    ld [hl], $01                                  ; $7fc6: $36 $01
    call Call_003_7ff5                            ; $7fc8: $cd $f5 $7f
    jr c, jr_003_7fe1                             ; $7fcb: $38 $14

    ld hl, $d5ca                                  ; $7fcd: $21 $ca $d5
    ld [hl], $27                                  ; $7fd0: $36 $27
    inc hl                                        ; $7fd2: $23
    ld [hl], $02                                  ; $7fd3: $36 $02
    ld hl, $d5cc                                  ; $7fd5: $21 $cc $d5
    ld [hl], $00                                  ; $7fd8: $36 $00
    inc hl                                        ; $7fda: $23
    ld [hl], $02                                  ; $7fdb: $36 $02
    pop af                                        ; $7fdd: $f1
    ldh [rSVBK], a                                ; $7fde: $e0 $70
    ret                                           ; $7fe0: $c9


jr_003_7fe1:
    ld hl, $d5ca                                  ; $7fe1: $21 $ca $d5
    ld [hl], $00                                  ; $7fe4: $36 $00
    inc hl                                        ; $7fe6: $23
    ld [hl], $02                                  ; $7fe7: $36 $02
    ld hl, $d5cc                                  ; $7fe9: $21 $cc $d5
    ld [hl], $27                                  ; $7fec: $36 $27
    inc hl                                        ; $7fee: $23
    ld [hl], $02                                  ; $7fef: $36 $02
    pop af                                        ; $7ff1: $f1
    ldh [rSVBK], a                                ; $7ff2: $e0 $70
    ret                                           ; $7ff4: $c9


Call_003_7ff5:
    ld a, $64                                     ; $7ff5: $3e $64
    call Call_000_275f                            ; $7ff7: $cd $5f $27
    cp $32                                        ; $7ffa: $fe $32
    ret                                           ; $7ffc: $c9


    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
