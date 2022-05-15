; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0b5", ROMX[$4000], BANK[$b5]

    or l                                          ; $4000: $b5
    nop                                           ; $4001: $00
    jr nz, jr_0b5_4004                            ; $4002: $20 $00

jr_0b5_4004:
    jr nz, jr_0b5_401e                            ; $4004: $20 $18

    ld [hl], a                                    ; $4006: $77
    ld c, b                                       ; $4007: $48
    ld b, l                                       ; $4008: $45
    nop                                           ; $4009: $00
    jr nz, jr_0b5_400c                            ; $400a: $20 $00

jr_0b5_400c:
    jr nz, jr_0b5_4026                            ; $400c: $20 $18

    ld [hl], a                                    ; $400e: $77
    ld c, b                                       ; $400f: $48
    ld b, l                                       ; $4010: $45

Call_0b5_4011:
    nop                                           ; $4011: $00
    jr nz, jr_0b5_4014                            ; $4012: $20 $00

jr_0b5_4014:
    jr nz, jr_0b5_402e                            ; $4014: $20 $18

    ld [hl], a                                    ; $4016: $77
    ld c, b                                       ; $4017: $48
    ld b, l                                       ; $4018: $45
    nop                                           ; $4019: $00
    db $10                                        ; $401a: $10
    cp l                                          ; $401b: $bd
    ld a, e                                       ; $401c: $7b
    push af                                       ; $401d: $f5

jr_0b5_401e:
    inc e                                         ; $401e: $1c
    ccf                                           ; $401f: $3f
    ld b, [hl]                                    ; $4020: $46
    nop                                           ; $4021: $00
    db $20, $bd                                   ; $4022: $20 $bd
    ld a, e                                       ; $4024: $7b
    push af                                       ; $4025: $f5

jr_0b5_4026:
    inc e                                         ; $4026: $1c
    ccf                                           ; $4027: $3f
    ld b, [hl]                                    ; $4028: $46
    nop                                           ; $4029: $00
    db $20, $bd                                   ; $402a: $20 $bd
    ld a, e                                       ; $402c: $7b
    push af                                       ; $402d: $f5

jr_0b5_402e:
    inc e                                         ; $402e: $1c
    ccf                                           ; $402f: $3f
    ld b, [hl]                                    ; $4030: $46
    nop                                           ; $4031: $00
    db $20, $bd                                   ; $4032: $20 $bd
    ld a, e                                       ; $4034: $7b
    push af                                       ; $4035: $f5
    inc e                                         ; $4036: $1c
    ccf                                           ; $4037: $3f
    ld b, [hl]                                    ; $4038: $46
    nop                                           ; $4039: $00
    jr nz, jr_0b5_403c                            ; $403a: $20 $00

jr_0b5_403c:
    jr nz, jr_0b5_4056                            ; $403c: $20 $18

    ld [hl], a                                    ; $403e: $77
    ld c, b                                       ; $403f: $48
    ld b, l                                       ; $4040: $45
    nop                                           ; $4041: $00
    jr nz, jr_0b5_4044                            ; $4042: $20 $00

jr_0b5_4044:
    jr nz, @+$1a                                  ; $4044: $20 $18

    ld [hl], a                                    ; $4046: $77
    ld c, b                                       ; $4047: $48
    ld b, l                                       ; $4048: $45
    nop                                           ; $4049: $00
    jr nz, jr_0b5_404c                            ; $404a: $20 $00

jr_0b5_404c:
    jr nz, @+$1a                                  ; $404c: $20 $18

    ld [hl], a                                    ; $404e: $77
    ld c, b                                       ; $404f: $48
    ld b, l                                       ; $4050: $45
    nop                                           ; $4051: $00
    nop                                           ; $4052: $00
    rrca                                          ; $4053: $0f
    ld e, [hl]                                    ; $4054: $5e
    ld e, [hl]                                    ; $4055: $5e

jr_0b5_4056:
    add hl, hl                                    ; $4056: $29
    cpl                                           ; $4057: $2f
    inc b                                         ; $4058: $04
    nop                                           ; $4059: $00
    jr nz, jr_0b5_4062                            ; $405a: $20 $06

    dec a                                         ; $405c: $3d
    call $2f59                                    ; $405d: $cd $59 $2f
    inc b                                         ; $4060: $04
    nop                                           ; $4061: $00

jr_0b5_4062:
    jr nz, jr_0b5_406a                            ; $4062: $20 $06

    dec a                                         ; $4064: $3d
    call $2f59                                    ; $4065: $cd $59 $2f
    inc b                                         ; $4068: $04

jr_0b5_4069:
    nop                                           ; $4069: $00

jr_0b5_406a:
    jr nz, jr_0b5_4072                            ; $406a: $20 $06

    dec a                                         ; $406c: $3d
    call $2f59                                    ; $406d: $cd $59 $2f
    inc b                                         ; $4070: $04
    nop                                           ; $4071: $00

jr_0b5_4072:
    jr nz, jr_0b5_4074                            ; $4072: $20 $00

jr_0b5_4074:
    jr nz, jr_0b5_408e                            ; $4074: $20 $18

    ld [hl], a                                    ; $4076: $77
    ld c, b                                       ; $4077: $48
    ld b, l                                       ; $4078: $45
    nop                                           ; $4079: $00
    jr nz, jr_0b5_407c                            ; $407a: $20 $00

jr_0b5_407c:
    jr nz, @+$1a                                  ; $407c: $20 $18

    ld [hl], a                                    ; $407e: $77
    ld c, b                                       ; $407f: $48
    ld b, l                                       ; $4080: $45
    nop                                           ; $4081: $00
    jr nz, jr_0b5_4069                            ; $4082: $20 $e5

    inc a                                         ; $4084: $3c
    rst $28                                       ; $4085: $ef
    ld h, c                                       ; $4086: $61
    dec b                                         ; $4087: $05
    dec a                                         ; $4088: $3d
    ld bc, $2700                                  ; $4089: $01 $00 $27
    ld b, c                                       ; $408c: $41
    ld e, e                                       ; $408d: $5b

jr_0b5_408e:
    add hl, hl                                    ; $408e: $29
    jr nc, jr_0b5_4095                            ; $408f: $30 $04

jr_0b5_4091:
    nop                                           ; $4091: $00
    jr nz, jr_0b5_40bb                            ; $4092: $20 $27

    ld b, c                                       ; $4094: $41

jr_0b5_4095:
    call z, $934d                                 ; $4095: $cc $4d $93
    ld e, [hl]                                    ; $4098: $5e

jr_0b5_4099:
    nop                                           ; $4099: $00
    jr nz, jr_0b5_40c3                            ; $409a: $20 $27

    ld b, c                                       ; $409c: $41
    call z, $934d                                 ; $409d: $cc $4d $93
    ld e, [hl]                                    ; $40a0: $5e
    nop                                           ; $40a1: $00
    jr nz, jr_0b5_40cb                            ; $40a2: $20 $27

    ld b, c                                       ; $40a4: $41
    call z, $934d                                 ; $40a5: $cc $4d $93
    ld e, [hl]                                    ; $40a8: $5e
    nop                                           ; $40a9: $00
    jr nz, jr_0b5_4091                            ; $40aa: $20 $e5

    inc a                                         ; $40ac: $3c
    rst $28                                       ; $40ad: $ef
    ld h, c                                       ; $40ae: $61
    dec b                                         ; $40af: $05
    dec a                                         ; $40b0: $3d
    nop                                           ; $40b1: $00
    jr nz, jr_0b5_4099                            ; $40b2: $20 $e5

    inc a                                         ; $40b4: $3c
    rst $28                                       ; $40b5: $ef
    ld h, c                                       ; $40b6: $61
    dec b                                         ; $40b7: $05
    dec a                                         ; $40b8: $3d
    nop                                           ; $40b9: $00
    nop                                           ; $40ba: $00

jr_0b5_40bb:
    ld l, d                                       ; $40bb: $6a
    ld b, l                                       ; $40bc: $45
    jr nc, jr_0b5_4115                            ; $40bd: $30 $56

    nop                                           ; $40bf: $00
    jr nz, jr_0b5_40e2                            ; $40c0: $20 $20

    nop                                           ; $40c2: $00

jr_0b5_40c3:
    rst $18                                       ; $40c3: $df
    rrca                                          ; $40c4: $0f
    adc b                                         ; $40c5: $88
    add hl, de                                    ; $40c6: $19
    or $57                                        ; $40c7: $f6 $57
    nop                                           ; $40c9: $00
    db $10                                        ; $40ca: $10

jr_0b5_40cb:
    rrca                                          ; $40cb: $0f
    ld d, [hl]                                    ; $40cc: $56
    ld a, d                                       ; $40cd: $7a
    ld [hl], e                                    ; $40ce: $73
    or h                                          ; $40cf: $b4
    ld h, d                                       ; $40d0: $62
    nop                                           ; $40d1: $00
    jr nz, @+$11                                  ; $40d2: $20 $0f

    ld d, [hl]                                    ; $40d4: $56
    ld a, d                                       ; $40d5: $7a
    ld [hl], e                                    ; $40d6: $73
    or h                                          ; $40d7: $b4
    ld h, d                                       ; $40d8: $62
    nop                                           ; $40d9: $00
    jr nz, @+$11                                  ; $40da: $20 $0f

    ld d, [hl]                                    ; $40dc: $56
    ld a, d                                       ; $40dd: $7a
    ld [hl], e                                    ; $40de: $73
    or h                                          ; $40df: $b4
    ld h, d                                       ; $40e0: $62
    nop                                           ; $40e1: $00

jr_0b5_40e2:
    jr nz, @+$6c                                  ; $40e2: $20 $6a

    ld b, l                                       ; $40e4: $45
    jr nc, jr_0b5_413d                            ; $40e5: $30 $56

    nop                                           ; $40e7: $00
    jr nz, jr_0b5_40ea                            ; $40e8: $20 $00

jr_0b5_40ea:
    jr nz, @+$6c                                  ; $40ea: $20 $6a

    ld b, l                                       ; $40ec: $45
    jr nc, jr_0b5_4145                            ; $40ed: $30 $56

    nop                                           ; $40ef: $00
    jr nz, jr_0b5_40f2                            ; $40f0: $20 $00

jr_0b5_40f2:
    ld [$5a51], sp                                ; $40f2: $08 $51 $5a
    ld d, a                                       ; $40f5: $57
    ld h, a                                       ; $40f6: $67
    adc a                                         ; $40f7: $8f
    dec sp                                        ; $40f8: $3b
    ld b, b                                       ; $40f9: $40
    inc b                                         ; $40fa: $04
    jp z, $df26                                   ; $40fb: $ca $26 $df

    rrca                                          ; $40fe: $0f
    db $d3                                        ; $40ff: $d3
    ld c, e                                       ; $4100: $4b
    nop                                           ; $4101: $00
    nop                                           ; $4102: $00

jr_0b5_4103:
    or h                                          ; $4103: $b4
    ld l, [hl]                                    ; $4104: $6e
    db $dd                                        ; $4105: $dd
    ld a, e                                       ; $4106: $7b
    jp Jump_000_0009                              ; $4107: $c3 $09 $00


    jr nz, jr_0b5_4103                            ; $410a: $20 $f7

    ld l, d                                       ; $410c: $6a
    sbc $7f                                       ; $410d: $de $7f
    jp Jump_000_0009                              ; $410f: $c3 $09 $00


    jr nz, @-$07                                  ; $4112: $20 $f7

    ld l, d                                       ; $4114: $6a

jr_0b5_4115:
    sbc $7f                                       ; $4115: $de $7f
    jp Jump_000_0009                              ; $4117: $c3 $09 $00


jr_0b5_411a:
    jr nz, jr_0b5_416d                            ; $411a: $20 $51

    ld e, d                                       ; $411c: $5a
    ld d, a                                       ; $411d: $57
    ld h, a                                       ; $411e: $67
    adc a                                         ; $411f: $8f
    dec sp                                        ; $4120: $3b
    nop                                           ; $4121: $00

jr_0b5_4122:
    jr nz, jr_0b5_4196                            ; $4122: $20 $72

    ld e, [hl]                                    ; $4124: $5e
    ld e, d                                       ; $4125: $5a
    ld [hl], e                                    ; $4126: $73
    or h                                          ; $4127: $b4
    ld h, d                                       ; $4128: $62
    nop                                           ; $4129: $00
    nop                                           ; $412a: $00
    ld [hl], d                                    ; $412b: $72
    ld l, [hl]                                    ; $412c: $6e
    sbc $7b                                       ; $412d: $de $7b
    add [hl]                                      ; $412f: $86
    add hl, de                                    ; $4130: $19
    jr nz, jr_0b5_4133                            ; $4131: $20 $00

jr_0b5_4133:
    and l                                         ; $4133: $a5
    dec d                                         ; $4134: $15
    pop af                                        ; $4135: $f1
    ld b, a                                       ; $4136: $47
    adc b                                         ; $4137: $88

jr_0b5_4138:
    ld [hl+], a                                   ; $4138: $22
    nop                                           ; $4139: $00
    nop                                           ; $413a: $00
    ld d, c                                       ; $413b: $51
    ld l, [hl]                                    ; $413c: $6e

jr_0b5_413d:
    ld h, $16                                     ; $413d: $26 $16
    rst $38                                       ; $413f: $ff
    ld a, a                                       ; $4140: $7f
    nop                                           ; $4141: $00
    jr nz, jr_0b5_411a                            ; $4142: $20 $d6

    ld h, [hl]                                    ; $4144: $66

jr_0b5_4145:
    sbc $7b                                       ; $4145: $de $7b
    ld e, d                                       ; $4147: $5a
    ld [hl], e                                    ; $4148: $73
    nop                                           ; $4149: $00
    jr nz, jr_0b5_4122                            ; $414a: $20 $d6

    ld h, [hl]                                    ; $414c: $66
    sbc $7b                                       ; $414d: $de $7b
    ld e, d                                       ; $414f: $5a
    ld [hl], e                                    ; $4150: $73
    nop                                           ; $4151: $00
    jr nz, jr_0b5_41c6                            ; $4152: $20 $72

    ld l, [hl]                                    ; $4154: $6e
    sbc $7b                                       ; $4155: $de $7b
    add [hl]                                      ; $4157: $86
    add hl, de                                    ; $4158: $19
    nop                                           ; $4159: $00
    jr jr_0b5_418c                                ; $415a: $18 $30

    ld e, d                                       ; $415c: $5a
    sbc $7b                                       ; $415d: $de $7b
    or $66                                        ; $415f: $f6 $66
    jr nz, jr_0b5_4163                            ; $4161: $20 $00

jr_0b5_4163:
    add hl, bc                                    ; $4163: $09
    inc hl                                        ; $4164: $23
    jr nc, @+$70                                  ; $4165: $30 $6e

    call nz, Call_0b5_4011                        ; $4167: $c4 $11 $40
    nop                                           ; $416a: $00
    add sp, $1e                                   ; $416b: $e8 $1e

jr_0b5_416d:
    ld b, d                                       ; $416d: $42
    dec b                                         ; $416e: $05
    db $ec                                        ; $416f: $ec
    cpl                                           ; $4170: $2f
    jr nz, jr_0b5_4173                            ; $4171: $20 $00

jr_0b5_4173:
    jr nc, jr_0b5_41e3                            ; $4173: $30 $6e

    call nz, $c011                                ; $4175: $c4 $11 $c0
    nop                                           ; $4178: $00
    nop                                           ; $4179: $00
    nop                                           ; $417a: $00
    or h                                          ; $417b: $b4
    ld l, d                                       ; $417c: $6a
    sbc $7b                                       ; $417d: $de $7b
    nop                                           ; $417f: $00
    jr nz, jr_0b5_4182                            ; $4180: $20 $00

jr_0b5_4182:
    jr nz, jr_0b5_4138                            ; $4182: $20 $b4

    ld l, d                                       ; $4184: $6a
    sbc $7b                                       ; $4185: $de $7b
    nop                                           ; $4187: $00
    jr nz, jr_0b5_418a                            ; $4188: $20 $00

jr_0b5_418a:
    jr nz, jr_0b5_41d4                            ; $418a: $20 $48

jr_0b5_418c:
    ld b, l                                       ; $418c: $45
    jr nc, jr_0b5_41fd                            ; $418d: $30 $6e

    call nz, Call_000_0011                        ; $418f: $c4 $11 $00
    ld [$4548], sp                                ; $4192: $08 $48 $45
    ld e, c                                       ; $4195: $59

jr_0b5_4196:
    ld [hl], e                                    ; $4196: $73
    rrca                                          ; $4197: $0f
    ld h, d                                       ; $4198: $62
    nop                                           ; $4199: $00
    nop                                           ; $419a: $00
    jr nc, jr_0b5_420b                            ; $419b: $30 $6e

    ld [hl+], a                                   ; $419d: $22
    add hl, bc                                    ; $419e: $09
    ld h, c                                       ; $419f: $61
    inc b                                         ; $41a0: $04
    nop                                           ; $41a1: $00
    nop                                           ; $41a2: $00
    ld h, e                                       ; $41a3: $63
    add hl, bc                                    ; $41a4: $09
    and c                                         ; $41a5: $a1
    inc b                                         ; $41a6: $04
    db $e4                                        ; $41a7: $e4
    dec c                                         ; $41a8: $0d

jr_0b5_41a9:
    nop                                           ; $41a9: $00
    nop                                           ; $41aa: $00
    add hl, bc                                    ; $41ab: $09
    inc hl                                        ; $41ac: $23
    cpl                                           ; $41ad: $2f
    ld l, [hl]                                    ; $41ae: $6e
    ld b, l                                       ; $41af: $45
    dec d                                         ; $41b0: $15
    nop                                           ; $41b1: $00
    nop                                           ; $41b2: $00
    cpl                                           ; $41b3: $2f
    ld l, d                                       ; $41b4: $6a
    sbc $7b                                       ; $41b5: $de $7b
    or l                                          ; $41b7: $b5
    ld h, d                                       ; $41b8: $62
    nop                                           ; $41b9: $00
    jr nz, jr_0b5_41a9                            ; $41ba: $20 $ed

    ld d, c                                       ; $41bc: $51
    or h                                          ; $41bd: $b4
    ld h, d                                       ; $41be: $62
    rst $30                                       ; $41bf: $f7
    ld l, d                                       ; $41c0: $6a
    nop                                           ; $41c1: $00
    jr nz, jr_0b5_41a9                            ; $41c2: $20 $e5

    inc a                                         ; $41c4: $3c
    adc e                                         ; $41c5: $8b

jr_0b5_41c6:
    ld c, c                                       ; $41c6: $49
    daa                                           ; $41c7: $27
    ld b, c                                       ; $41c8: $41
    nop                                           ; $41c9: $00
    nop                                           ; $41ca: $00
    ld d, c                                       ; $41cb: $51
    ld e, d                                       ; $41cc: $5a
    sbc h                                         ; $41cd: $9c
    ld [hl], a                                    ; $41ce: $77
    rrca                                          ; $41cf: $0f
    ld l, [hl]                                    ; $41d0: $6e
    nop                                           ; $41d1: $00
    nop                                           ; $41d2: $00
    adc h                                         ; $41d3: $8c

jr_0b5_41d4:
    ld l, $2f                                     ; $41d4: $2e $2f
    ld l, [hl]                                    ; $41d6: $6e
    add e                                         ; $41d7: $83
    ld de, $0000                                  ; $41d8: $11 $00 $00
    add $19                                       ; $41db: $c6 $19
    adc h                                         ; $41dd: $8c
    ld [hl-], a                                   ; $41de: $32
    ld a, [bc]                                    ; $41df: $0a
    nop                                           ; $41e0: $00
    nop                                           ; $41e1: $00
    nop                                           ; $41e2: $00

jr_0b5_41e3:
    rrca                                          ; $41e3: $0f
    ld l, [hl]                                    ; $41e4: $6e
    ld [$f022], sp                                ; $41e5: $08 $22 $f0
    ld b, e                                       ; $41e8: $43

jr_0b5_41e9:
    nop                                           ; $41e9: $00
    nop                                           ; $41ea: $00
    rrca                                          ; $41eb: $0f
    ld l, [hl]                                    ; $41ec: $6e
    ld e, d                                       ; $41ed: $5a
    ld [hl], e                                    ; $41ee: $73
    cpl                                           ; $41ef: $2f
    ld l, [hl]                                    ; $41f0: $6e
    nop                                           ; $41f1: $00
    jr nz, jr_0b5_423d                            ; $41f2: $20 $49

    ld c, c                                       ; $41f4: $49
    ld [hl], d                                    ; $41f5: $72
    ld e, [hl]                                    ; $41f6: $5e
    dec b                                         ; $41f7: $05
    dec a                                         ; $41f8: $3d
    nop                                           ; $41f9: $00
    jr jr_0b5_41e9                                ; $41fa: $18 $ed

    ld d, l                                       ; $41fc: $55

jr_0b5_41fd:
    daa                                           ; $41fd: $27
    ld b, c                                       ; $41fe: $41
    sub h                                         ; $41ff: $94
    ld l, [hl]                                    ; $4200: $6e
    nop                                           ; $4201: $00
    nop                                           ; $4202: $00
    ld c, $6e                                     ; $4203: $0e $6e
    rrca                                          ; $4205: $0f
    ld l, [hl]                                    ; $4206: $6e
    sub h                                         ; $4207: $94
    ld l, [hl]                                    ; $4208: $6e
    nop                                           ; $4209: $00
    nop                                           ; $420a: $00

jr_0b5_420b:
    xor b                                         ; $420b: $a8
    ld [hl+], a                                   ; $420c: $22
    ld d, d                                       ; $420d: $52
    inc c                                         ; $420e: $0c
    ld c, $6e                                     ; $420f: $0e $6e
    ld b, b                                       ; $4211: $40
    dec c                                         ; $4212: $0d
    adc h                                         ; $4213: $8c
    ld [hl-], a                                   ; $4214: $32
    dec c                                         ; $4215: $0d
    nop                                           ; $4216: $00
    ld bc, $0000                                  ; $4217: $01 $00 $00
    nop                                           ; $421a: $00
    ld c, $6e                                     ; $421b: $0e $6e
    ld [hl], d                                    ; $421d: $72
    inc e                                         ; $421e: $1c
    ld b, [hl]                                    ; $421f: $46
    nop                                           ; $4220: $00
    ld c, $6e                                     ; $4221: $0e $6e
    ld c, $6e                                     ; $4223: $0e $6e
    ld [hl], d                                    ; $4225: $72
    inc e                                         ; $4226: $1c
    ld b, [hl]                                    ; $4227: $46
    nop                                           ; $4228: $00
    nop                                           ; $4229: $00
    nop                                           ; $422a: $00
    ld c, c                                       ; $422b: $49
    ld b, l                                       ; $422c: $45
    jr nc, jr_0b5_4295                            ; $422d: $30 $66

    nop                                           ; $422f: $00
    jr nz, jr_0b5_4232                            ; $4230: $20 $00

jr_0b5_4232:
    ld [$4d49], sp                                ; $4232: $08 $49 $4d
    ld e, e                                       ; $4235: $5b
    ld [hl], a                                    ; $4236: $77
    rrca                                          ; $4237: $0f
    ld l, d                                       ; $4238: $6a
    xor $69                                       ; $4239: $ee $69
    ld c, $6e                                     ; $423b: $0e $6e

jr_0b5_423d:
    xor $6d                                       ; $423d: $ee $6d
    rrca                                          ; $423f: $0f
    ld l, d                                       ; $4240: $6a
    rlca                                          ; $4241: $07
    nop                                           ; $4242: $00
    ld c, $6e                                     ; $4243: $0e $6e
    cp [hl]                                       ; $4245: $be
    dec [hl]                                      ; $4246: $35
    or e                                          ; $4247: $b3
    inc d                                         ; $4248: $14
    ld bc, $6b00                                  ; $4249: $01 $00 $6b
    nop                                           ; $424c: $00
    ld l, e                                       ; $424d: $6b
    dec b                                         ; $424e: $05
    inc sp                                        ; $424f: $33
    ld a, [bc]                                    ; $4250: $0a
    jr z, jr_0b5_425b                             ; $4251: $28 $08

    db $ed                                        ; $4253: $ed
    ld l, c                                       ; $4254: $69
    sbc b                                         ; $4255: $98
    dec h                                         ; $4256: $25
    ld a, c                                       ; $4257: $79
    rrca                                          ; $4258: $0f
    db $ed                                        ; $4259: $ed
    ld l, c                                       ; $425a: $69

jr_0b5_425b:
    xor $69                                       ; $425b: $ee $69
    xor $6d                                       ; $425d: $ee $6d
    ld a, c                                       ; $425f: $79
    rrca                                          ; $4260: $0f
    nop                                           ; $4261: $00
    nop                                           ; $4262: $00
    db $ed                                        ; $4263: $ed
    ld h, l                                       ; $4264: $65
    ld e, d                                       ; $4265: $5a
    ld a, e                                       ; $4266: $7b
    nop                                           ; $4267: $00
    jr nz, jr_0b5_426a                            ; $4268: $20 $00

jr_0b5_426a:
    nop                                           ; $426a: $00
    db $ed                                        ; $426b: $ed
    ld l, c                                       ; $426c: $69
    or [hl]                                       ; $426d: $b6
    ld [hl], d                                    ; $426e: $72
    cp l                                          ; $426f: $bd
    ld a, e                                       ; $4270: $7b
    inc h                                         ; $4271: $24
    inc b                                         ; $4272: $04
    db $ed                                        ; $4273: $ed
    ld l, c                                       ; $4274: $69
    ld [$bd00], sp                                ; $4275: $08 $00 $bd
    ld a, e                                       ; $4278: $7b
    ld bc, $fa00                                  ; $4279: $01 $00 $fa
    inc e                                         ; $427c: $1c
    cp $3d                                        ; $427d: $fe $3d
    db $ec                                        ; $427f: $ec
    ld [$0001], sp                                ; $4280: $08 $01 $00
    ld d, l                                       ; $4283: $55
    ld a, [bc]                                    ; $4284: $0a
    adc c                                         ; $4285: $89
    nop                                           ; $4286: $00
    inc a                                         ; $4287: $3c
    rrca                                          ; $4288: $0f
    inc h                                         ; $4289: $24
    nop                                           ; $428a: $00
    ret c                                         ; $428b: $d8

    ld a, [bc]                                    ; $428c: $0a
    db $ed                                        ; $428d: $ed
    ld l, c                                       ; $428e: $69
    cp e                                          ; $428f: $bb
    add hl, sp                                    ; $4290: $39
    call $ed69                                    ; $4291: $cd $69 $ed
    ld l, c                                       ; $4294: $69

jr_0b5_4295:
    db $ed                                        ; $4295: $ed
    ld l, c                                       ; $4296: $69
    cp e                                          ; $4297: $bb
    add hl, sp                                    ; $4298: $39
    nop                                           ; $4299: $00
    nop                                           ; $429a: $00
    call $b565                                    ; $429b: $cd $65 $b5
    ld [hl], d                                    ; $429e: $72
    nop                                           ; $429f: $00
    jr nz, jr_0b5_42a2                            ; $42a0: $20 $00

jr_0b5_42a2:
    nop                                           ; $42a2: $00
    call $1869                                    ; $42a3: $cd $69 $18
    ld [hl], a                                    ; $42a6: $77
    nop                                           ; $42a7: $00
    jr nz, jr_0b5_42aa                            ; $42a8: $20 $00

jr_0b5_42aa:
    nop                                           ; $42aa: $00
    call z, $be69                                 ; $42ab: $cc $69 $be
    dec [hl]                                      ; $42ae: $35
    ld [$2200], sp                                ; $42af: $08 $00 $22
    nop                                           ; $42b2: $00
    ld [hl], h                                    ; $42b3: $74
    dec b                                         ; $42b4: $05
    ld a, [hl]                                    ; $42b5: $7e
    dec l                                         ; $42b6: $2d
    ld e, [hl]                                    ; $42b7: $5e
    inc de                                        ; $42b8: $13

jr_0b5_42b9:
    ld hl, $b600                                  ; $42b9: $21 $00 $b6
    dec d                                         ; $42bc: $15
    ld a, $2e                                     ; $42bd: $3e $2e
    ld e, a                                       ; $42bf: $5f
    ld e, e                                       ; $42c0: $5b
    ld [hl+], a                                   ; $42c1: $22
    nop                                           ; $42c2: $00
    rst $18                                       ; $42c3: $df
    dec [hl]                                      ; $42c4: $35
    ld l, h                                       ; $42c5: $6c
    ld de, $1013                                  ; $42c6: $11 $13 $10
    ld [$cc00], sp                                ; $42c9: $08 $00 $cc
    ld l, c                                       ; $42cc: $69
    ld l, h                                       ; $42cd: $6c
    ld de, $1013                                  ; $42ce: $11 $13 $10
    nop                                           ; $42d1: $00
    nop                                           ; $42d2: $00
    call z, $e565                                 ; $42d3: $cc $65 $e5
    inc a                                         ; $42d6: $3c
    nop                                           ; $42d7: $00
    jr nz, jr_0b5_42da                            ; $42d8: $20 $00

jr_0b5_42da:
    db $10                                        ; $42da: $10
    xor h                                         ; $42db: $ac
    ld h, l                                       ; $42dc: $65
    ld b, $3d                                     ; $42dd: $06 $3d
    rst $30                                       ; $42df: $f7
    ld [hl], d                                    ; $42e0: $72
    dec b                                         ; $42e1: $05
    nop                                           ; $42e2: $00
    call z, $de69                                 ; $42e3: $cc $69 $de
    add hl, sp                                    ; $42e6: $39
    xor h                                         ; $42e7: $ac
    inc d                                         ; $42e8: $14
    ld b, h                                       ; $42e9: $44
    nop                                           ; $42ea: $00
    ld a, [$1c20]                                 ; $42eb: $fa $20 $1c
    rrca                                          ; $42ee: $0f
    db $d3                                        ; $42ef: $d3
    dec b                                         ; $42f0: $05
    nop                                           ; $42f1: $00
    nop                                           ; $42f2: $00
    sub d                                         ; $42f3: $92
    add hl, bc                                    ; $42f4: $09
    ld e, [hl]                                    ; $42f5: $5e
    ld a, [hl-]                                   ; $42f6: $3a
    ld e, a                                       ; $42f7: $5f
    ld e, e                                       ; $42f8: $5b
    ld [bc], a                                    ; $42f9: $02
    nop                                           ; $42fa: $00
    sbc c                                         ; $42fb: $99
    db $10                                        ; $42fc: $10
    ld [hl-], a                                   ; $42fd: $32
    ld b, $ff                                     ; $42fe: $06 $ff
    dec a                                         ; $4300: $3d
    ld b, e                                       ; $4301: $43
    nop                                           ; $4302: $00
    xor h                                         ; $4303: $ac
    ld l, c                                       ; $4304: $69
    sub l                                         ; $4305: $95
    ld hl, $0fbe                                  ; $4306: $21 $be $0f
    nop                                           ; $4309: $00
    inc e                                         ; $430a: $1c
    jr @+$0d                                      ; $430b: $18 $0b

    ld h, $3d                                     ; $430d: $26 $3d
    or $5e                                        ; $430f: $f6 $5e
    ld hl, $390c                                  ; $4311: $21 $0c $39
    rrca                                          ; $4314: $0f
    ld c, b                                       ; $4315: $48
    ld b, l                                       ; $4316: $45
    sub $62                                       ; $4317: $d6 $62
    ld hl, $db00                                  ; $4319: $21 $00 $db
    jr jr_0b5_42b9                                ; $431c: $18 $9b

    rrca                                          ; $431e: $0f
    cp [hl]                                       ; $431f: $be
    dec [hl]                                      ; $4320: $35
    ld bc, $9100                                  ; $4321: $01 $00 $91
    ld bc, $0ada                                  ; $4324: $01 $da $0a
    add sp, $00                                   ; $4327: $e8 $00
    ld bc, $2700                                  ; $4329: $01 $00 $27
    ld h, c                                       ; $432c: $61
    sbc a                                         ; $432d: $9f
    ld l, e                                       ; $432e: $6b
    sub $21                                       ; $432f: $d6 $21
    nop                                           ; $4331: $00

jr_0b5_4332:
    nop                                           ; $4332: $00
    sbc d                                         ; $4333: $9a
    db $10                                        ; $4334: $10
    stop                                          ; $4335: $10 $00
    ld a, [$410e]                                 ; $4337: $fa $0e $41
    nop                                           ; $433a: $00
    ld a, h                                       ; $433b: $7c
    dec l                                         ; $433c: $2d
    ld hl, sp+$0a                                 ; $433d: $f8 $0a
    ld c, d                                       ; $433f: $4a
    ld bc, $0041                                  ; $4340: $01 $41 $00
    sbc $3b                                       ; $4343: $de $3b
    sbc $73                                       ; $4345: $de $73
    nop                                           ; $4347: $00
    jr nz, jr_0b5_438b                            ; $4348: $20 $41

    ld [$51ef], sp                                ; $434a: $08 $ef $51
    sbc $6f                                       ; $434d: $de $6f
    ld l, c                                       ; $434f: $69
    ld c, l                                       ; $4350: $4d
    ld hl, $b300                                  ; $4351: $21 $00 $b3
    inc d                                         ; $4354: $14
    ld e, l                                       ; $4355: $5d
    dec l                                         ; $4356: $2d
    ld [$0004], a                                 ; $4357: $ea $04 $00
    nop                                           ; $435a: $00
    or c                                          ; $435b: $b1
    add hl, bc                                    ; $435c: $09
    dec sp                                        ; $435d: $3b
    rrca                                          ; $435e: $0f
    jp hl                                         ; $435f: $e9


    nop                                           ; $4360: $00
    ld bc, $cb00                                  ; $4361: $01 $00 $cb
    ld e, c                                       ; $4364: $59
    cp a                                          ; $4365: $bf
    ld [hl], e                                    ; $4366: $73
    rst $30                                       ; $4367: $f7
    ld sp, $0003                                  ; $4368: $31 $03 $00
    sub e                                         ; $436b: $93
    ld b, $5e                                     ; $436c: $06 $5e
    ld b, d                                       ; $436e: $42
    ld [$4218], a                                 ; $436f: $ea $18 $42
    nop                                           ; $4372: $00
    ld e, a                                       ; $4373: $5f
    ld d, d                                       ; $4374: $52
    rst $38                                       ; $4375: $ff
    ld h, e                                       ; $4376: $63
    rst $38                                       ; $4377: $ff
    dec hl                                        ; $4378: $2b
    nop                                           ; $4379: $00
    jr nz, jr_0b5_4332                            ; $437a: $20 $b6

    ld [bc], a                                    ; $437c: $02
    rst $38                                       ; $437d: $ff

jr_0b5_437e:
    ld c, a                                       ; $437e: $4f
    add e                                         ; $437f: $83
    nop                                           ; $4380: $00
    ld b, c                                       ; $4381: $41
    ld [$137b], sp                                ; $4382: $08 $7b $13
    ld e, d                                       ; $4385: $5a
    ld e, a                                       ; $4386: $5f
    ld l, e                                       ; $4387: $6b
    ld bc, $0022                                  ; $4388: $01 $22 $00

jr_0b5_438b:
    db $fc                                        ; $438b: $fc
    dec a                                         ; $438c: $3d
    rst $38                                       ; $438d: $ff
    ld h, a                                       ; $438e: $67
    dec bc                                        ; $438f: $0b
    add hl, de                                    ; $4390: $19
    ld hl, $2e00                                  ; $4391: $21 $00 $2e
    dec b                                         ; $4394: $05
    ld d, e                                       ; $4395: $53
    ld b, $7c                                     ; $4396: $06 $7c
    inc de                                        ; $4398: $13
    inc b                                         ; $4399: $04
    nop                                           ; $439a: $00
    ld a, [de]                                    ; $439b: $1a
    ld l, $1e                                     ; $439c: $2e $1e
    ld d, a                                       ; $439e: $57
    ld [hl], l                                    ; $439f: $75
    ld [$0061], sp                                ; $43a0: $08 $61 $00
    jp nc, $7c0d                                  ; $43a3: $d2 $0d $7c

    ld a, [hl-]                                   ; $43a6: $3a
    dec bc                                        ; $43a7: $0b
    add hl, de                                    ; $43a8: $19
    ld h, d                                       ; $43a9: $62
    nop                                           ; $43aa: $00
    or l                                          ; $43ab: $b5
    ld c, $8a                                     ; $43ac: $0e $8a
    ld bc, $2bde                                  ; $43ae: $01 $de $2b
    ld b, c                                       ; $43b1: $41
    nop                                           ; $43b2: $00
    sub e                                         ; $43b3: $93
    ld e, [hl]                                    ; $43b4: $5e
    nop                                           ; $43b5: $00
    jr nz, @+$01                                  ; $43b6: $20 $ff

    ld a, a                                       ; $43b8: $7f
    nop                                           ; $43b9: $00
    nop                                           ; $43ba: $00
    ld [$0001], sp                                ; $43bb: $08 $01 $00
    inc e                                         ; $43be: $1c
    ld h, d                                       ; $43bf: $62
    nop                                           ; $43c0: $00
    ld bc, $6800                                  ; $43c1: $01 $00 $68
    dec b                                         ; $43c4: $05
    db $ed                                        ; $43c5: $ed
    dec d                                         ; $43c6: $15
    ld a, [bc]                                    ; $43c7: $0a
    nop                                           ; $43c8: $00
    ld [bc], a                                    ; $43c9: $02
    nop                                           ; $43ca: $00
    or b                                          ; $43cb: $b0
    dec b                                         ; $43cc: $05
    jp z, $9c00                                   ; $43cd: $ca $00 $9c

    ld a, [bc]                                    ; $43d0: $0a
    nop                                           ; $43d1: $00
    nop                                           ; $43d2: $00
    sub [hl]                                      ; $43d3: $96
    add hl, de                                    ; $43d4: $19
    sbc e                                         ; $43d5: $9b
    ld c, [hl]                                    ; $43d6: $4e
    dec l                                         ; $43d7: $2d
    nop                                           ; $43d8: $00
    ld hl, $1500                                  ; $43d9: $21 $00 $15
    inc b                                         ; $43dc: $04
    ld l, e                                       ; $43dd: $6b
    inc b                                         ; $43de: $04
    push de                                       ; $43df: $d5
    dec e                                         ; $43e0: $1d
    inc h                                         ; $43e1: $24
    nop                                           ; $43e2: $00
    ld c, b                                       ; $43e3: $48
    ld h, c                                       ; $43e4: $61
    cp h                                          ; $43e5: $bc
    dec [hl]                                      ; $43e6: $35
    ld [hl], l                                    ; $43e7: $75
    stop                                          ; $43e8: $10 $00
    inc e                                         ; $43ea: $1c
    or h                                          ; $43eb: $b4
    ld h, d                                       ; $43ec: $62
    ld c, b                                       ; $43ed: $48
    ld h, c                                       ; $43ee: $61

jr_0b5_43ef:
    cp l                                          ; $43ef: $bd
    ld [hl], a                                    ; $43f0: $77
    nop                                           ; $43f1: $00
    jr jr_0b5_437e                                ; $43f2: $18 $8a

    ld c, c                                       ; $43f4: $49
    ld a, d                                       ; $43f5: $7a
    ld [hl], e                                    ; $43f6: $73
    ld [hl], d                                    ; $43f7: $72
    ld e, d                                       ; $43f8: $5a
    nop                                           ; $43f9: $00
    nop                                           ; $43fa: $00
    cp [hl]                                       ; $43fb: $be
    dec [hl]                                      ; $43fc: $35
    dec bc                                        ; $43fd: $0b
    nop                                           ; $43fe: $00
    or b                                          ; $43ff: $b0
    inc d                                         ; $4400: $14
    nop                                           ; $4401: $00
    nop                                           ; $4402: $00
    rlc b                                         ; $4403: $cb $00
    jr nc, jr_0b5_4408                            ; $4405: $30 $01

    ld b, h                                       ; $4407: $44

jr_0b5_4408:
    nop                                           ; $4408: $00
    nop                                           ; $4409: $00
    nop                                           ; $440a: $00
    cp c                                          ; $440b: $b9
    dec e                                         ; $440c: $1d
    xor $0c                                       ; $440d: $ee $0c
    ld c, b                                       ; $440f: $48
    nop                                           ; $4410: $00
    nop                                           ; $4411: $00
    nop                                           ; $4412: $00
    ret nc                                        ; $4413: $d0

    add hl, bc                                    ; $4414: $09
    ld a, [hl]                                    ; $4415: $7e
    ld h, $67                                     ; $4416: $26 $67
    nop                                           ; $4418: $00
    ld [$2700], sp                                ; $4419: $08 $00 $27
    ld h, c                                       ; $441c: $61
    sbc $39                                       ; $441d: $de $39
    ld d, l                                       ; $441f: $55
    ld [$0000], sp                                ; $4420: $08 $00 $00
    rla                                           ; $4423: $17
    ld l, e                                       ; $4424: $6b
    nop                                           ; $4425: $00
    jr nz, @-$20                                  ; $4426: $20 $de

    ld a, a                                       ; $4428: $7f
    nop                                           ; $4429: $00
    inc e                                         ; $442a: $1c
    xor h                                         ; $442b: $ac
    ld c, l                                       ; $442c: $4d
    or h                                          ; $442d: $b4
    ld h, d                                       ; $442e: $62
    sbc e                                         ; $442f: $9b
    ld [hl], a                                    ; $4430: $77
    nop                                           ; $4431: $00
    nop                                           ; $4432: $00
    ld l, $04                                     ; $4433: $2e $04
    ld [hl], $25                                  ; $4435: $36 $25
    ld [$0000], sp                                ; $4437: $08 $00 $00
    nop                                           ; $443a: $00
    ld h, [hl]                                    ; $443b: $66
    nop                                           ; $443c: $00
    xor d                                         ; $443d: $aa
    nop                                           ; $443e: $00
    ld [hl+], a                                   ; $443f: $22
    nop                                           ; $4440: $00
    nop                                           ; $4441: $00
    nop                                           ; $4442: $00
    halt                                          ; $4443: $76
    dec c                                         ; $4444: $0d
    cp $21                                        ; $4445: $fe $21
    sub h                                         ; $4447: $94
    ld hl, $0000                                  ; $4448: $21 $00 $00
    ld d, c                                       ; $444b: $51
    dec c                                         ; $444c: $0d
    ld sp, hl                                     ; $444d: $f9
    ld c, $aa                                     ; $444e: $0e $aa
    nop                                           ; $4450: $00
    nop                                           ; $4451: $00
    nop                                           ; $4452: $00
    ld d, d                                       ; $4453: $52
    inc b                                         ; $4454: $04
    add hl, hl                                    ; $4455: $29
    nop                                           ; $4456: $00
    db $dd                                        ; $4457: $dd
    jr jr_0b5_445a                                ; $4458: $18 $00

jr_0b5_445a:
    jr nz, jr_0b5_43ef                            ; $445a: $20 $93

    ld e, [hl]                                    ; $445c: $5e
    db $dd                                        ; $445d: $dd
    ld a, e                                       ; $445e: $7b
    jr jr_0b5_44cc                                ; $445f: $18 $6b

    nop                                           ; $4461: $00
    jr nz, jr_0b5_43ef                            ; $4462: $20 $8b

    ld c, c                                       ; $4464: $49
    push de                                       ; $4465: $d5
    ld h, [hl]                                    ; $4466: $66
    cpl                                           ; $4467: $2f
    ld d, [hl]                                    ; $4468: $56
    nop                                           ; $4469: $00
    nop                                           ; $446a: $00
    inc sp                                        ; $446b: $33
    inc b                                         ; $446c: $04
    add hl, bc                                    ; $446d: $09
    nop                                           ; $446e: $00
    sub a                                         ; $446f: $97
    dec b                                         ; $4470: $05
    nop                                           ; $4471: $00
    nop                                           ; $4472: $00
    rrca                                          ; $4473: $0f
    ld bc, $00aa                                  ; $4474: $01 $aa $00
    inc [hl]                                      ; $4477: $34
    ld a, [bc]                                    ; $4478: $0a
    nop                                           ; $4479: $00
    nop                                           ; $447a: $00
    ld e, d                                       ; $447b: $5a
    ld [hl], $9f                                  ; $447c: $36 $9f
    ld h, a                                       ; $447e: $67
    add a                                         ; $447f: $87
    inc b                                         ; $4480: $04
    ld [hl+], a                                   ; $4481: $22
    nop                                           ; $4482: $00
    rst $30                                       ; $4483: $f7
    dec b                                         ; $4484: $05
    sbc a                                         ; $4485: $9f
    ld l, e                                       ; $4486: $6b
    call nc, $032d                                ; $4487: $d4 $2d $03
    nop                                           ; $448a: $00
    ld a, [de]                                    ; $448b: $1a
    rrca                                          ; $448c: $0f
    ld d, a                                       ; $448d: $57
    ld [$7fde], sp                                ; $448e: $08 $de $7f
    nop                                           ; $4491: $00
    jr nz, jr_0b5_44e5                            ; $4492: $20 $51

    ld e, d                                       ; $4494: $5a
    rst $30                                       ; $4495: $f7
    ld l, d                                       ; $4496: $6a
    sbc h                                         ; $4497: $9c
    ld [hl], a                                    ; $4498: $77
    nop                                           ; $4499: $00
    jr nz, jr_0b5_44e4                            ; $449a: $20 $48

    ld b, c                                       ; $449c: $41
    cpl                                           ; $449d: $2f
    ld d, [hl]                                    ; $449e: $56
    adc e                                         ; $449f: $8b
    ld c, c                                       ; $44a0: $49
    ld hl, $d500                                  ; $44a1: $21 $00 $d5
    dec b                                         ; $44a4: $05
    or h                                          ; $44a5: $b4
    ld h, d                                       ; $44a6: $62
    ld l, h                                       ; $44a7: $6c
    nop                                           ; $44a8: $00
    inc h                                         ; $44a9: $24
    nop                                           ; $44aa: $00
    or e                                          ; $44ab: $b3
    dec b                                         ; $44ac: $05
    rrca                                          ; $44ad: $0f
    ld bc, $0ef9                                  ; $44ae: $01 $f9 $0e
    nop                                           ; $44b1: $00
    nop                                           ; $44b2: $00
    rst $30                                       ; $44b3: $f7
    dec h                                         ; $44b4: $25
    rra                                           ; $44b5: $1f
    ld e, e                                       ; $44b6: $5b
    ld a, [hl]                                    ; $44b7: $7e
    ld a, [hl-]                                   ; $44b8: $3a

jr_0b5_44b9:
    nop                                           ; $44b9: $00
    nop                                           ; $44ba: $00
    sbc l                                         ; $44bb: $9d
    ld a, [hl+]                                   ; $44bc: $2a
    rst $18                                       ; $44bd: $df
    ld l, a                                       ; $44be: $6f
    dec c                                         ; $44bf: $0d
    add hl, bc                                    ; $44c0: $09
    ld b, c                                       ; $44c1: $41
    nop                                           ; $44c2: $00
    dec sp                                        ; $44c3: $3b
    rrca                                          ; $44c4: $0f
    ld [hl], $08                                  ; $44c5: $36 $08
    rst $30                                       ; $44c7: $f7
    ld l, d                                       ; $44c8: $6a
    nop                                           ; $44c9: $00
    jr nz, jr_0b5_44b9                            ; $44ca: $20 $ed

jr_0b5_44cc:
    ld d, c                                       ; $44cc: $51
    ld [hl], d                                    ; $44cd: $72
    ld e, [hl]                                    ; $44ce: $5e
    cpl                                           ; $44cf: $2f
    ld d, [hl]                                    ; $44d0: $56
    nop                                           ; $44d1: $00
    jr nz, jr_0b5_44da                            ; $44d2: $20 $06

    ld b, c                                       ; $44d4: $41
    ld h, $41                                     ; $44d5: $26 $41
    ld sp, hl                                     ; $44d7: $f9
    ld c, $22                                     ; $44d8: $0e $22

jr_0b5_44da:
    nop                                           ; $44da: $00
    db $ed                                        ; $44db: $ed
    ld d, c                                       ; $44dc: $51
    inc l                                         ; $44dd: $2c
    ld de, $0a97                                  ; $44de: $11 $97 $0a
    nop                                           ; $44e1: $00
    nop                                           ; $44e2: $00
    inc [hl]                                      ; $44e3: $34

jr_0b5_44e4:
    ld a, [bc]                                    ; $44e4: $0a

jr_0b5_44e5:
    db $ec                                        ; $44e5: $ec
    nop                                           ; $44e6: $00
    ld e, h                                       ; $44e7: $5c
    rrca                                          ; $44e8: $0f
    nop                                           ; $44e9: $00
    nop                                           ; $44ea: $00
    or a                                          ; $44eb: $b7
    dec e                                         ; $44ec: $1d
    sbc $4a                                       ; $44ed: $de $4a
    rst $28                                       ; $44ef: $ef
    inc d                                         ; $44f0: $14
    nop                                           ; $44f1: $00
    nop                                           ; $44f2: $00
    or l                                          ; $44f3: $b5
    add hl, hl                                    ; $44f4: $29
    ld a, a                                       ; $44f5: $7f
    ld e, a                                       ; $44f6: $5f
    ld e, h                                       ; $44f7: $5c
    rrca                                          ; $44f8: $0f
    inc hl                                        ; $44f9: $23
    nop                                           ; $44fa: $00
    inc d                                         ; $44fb: $14
    ld b, $ed                                     ; $44fc: $06 $ed
    ld d, c                                       ; $44fe: $51
    ld e, d                                       ; $44ff: $5a
    ld [$2000], sp                                ; $4500: $08 $00 $20
    push hl                                       ; $4503: $e5
    inc a                                         ; $4504: $3c
    ld c, b                                       ; $4505: $48
    ld b, l                                       ; $4506: $45
    ld e, d                                       ; $4507: $5a
    ld [$2000], sp                                ; $4508: $08 $00 $20
    xor $5d                                       ; $450b: $ee $5d
    db $ec                                        ; $450d: $ec
    nop                                           ; $450e: $00
    ld e, h                                       ; $450f: $5c
    rrca                                          ; $4510: $0f
    ld b, [hl]                                    ; $4511: $46
    nop                                           ; $4512: $00
    sub [hl]                                      ; $4513: $96
    ld a, [bc]                                    ; $4514: $0a
    daa                                           ; $4515: $27
    ld b, l                                       ; $4516: $45

jr_0b5_4517:
    sbc l                                         ; $4517: $9d
    inc de                                        ; $4518: $13
    nop                                           ; $4519: $00
    nop                                           ; $451a: $00
    db $d3                                        ; $451b: $d3
    dec b                                         ; $451c: $05
    ld a, h                                       ; $451d: $7c
    inc de                                        ; $451e: $13
    call z, $fa00                                 ; $451f: $cc $00 $fa
    ld hl, $3e9e                                  ; $4522: $21 $9e $3e
    cp a                                          ; $4525: $bf
    ld [hl], e                                    ; $4526: $73
    sbc $4a                                       ; $4527: $de $4a
    nop                                           ; $4529: $00
    nop                                           ; $452a: $00
    inc e                                         ; $452b: $1c
    rla                                           ; $452c: $17
    ld e, a                                       ; $452d: $5f
    ld e, a                                       ; $452e: $5f
    ld l, [hl]                                    ; $452f: $6e
    dec b                                         ; $4530: $05
    jr nz, jr_0b5_4533                            ; $4531: $20 $00

jr_0b5_4533:
    ret nc                                        ; $4533: $d0

    dec b                                         ; $4534: $05
    ld c, b                                       ; $4535: $48
    ld b, l                                       ; $4536: $45
    xor e                                         ; $4537: $ab
    nop                                           ; $4538: $00
    nop                                           ; $4539: $00
    jr nz, @-$19                                  ; $453a: $20 $e5

Jump_0b5_453c:
    inc a                                         ; $453c: $3c
    ld c, b                                       ; $453d: $48
    ld b, l                                       ; $453e: $45
    xor e                                         ; $453f: $ab
    nop                                           ; $4540: $00
    nop                                           ; $4541: $00
    jr nz, jr_0b5_4517                            ; $4542: $20 $d3

jr_0b5_4544:
    dec b                                         ; $4544: $05
    ld a, h                                       ; $4545: $7c
    inc de                                        ; $4546: $13
    call z, Call_0b5_4600                         ; $4547: $cc $00 $46
    nop                                           ; $454a: $00

jr_0b5_454b:
    ret c                                         ; $454b: $d8

    ld c, $31                                     ; $454c: $0e $31
    ld h, [hl]                                    ; $454e: $66
    or d                                          ; $454f: $b2
    dec b                                         ; $4550: $05
    ld hl, $4d00                                  ; $4551: $21 $00 $4d
    ld bc, $0ab8                                  ; $4554: $01 $b8 $0a
    di                                            ; $4557: $f3
    dec c                                         ; $4558: $0d
    xor h                                         ; $4559: $ac
    inc b                                         ; $455a: $04
    inc a                                         ; $455b: $3c
    ld l, $96                                     ; $455c: $2e $96
    add hl, de                                    ; $455e: $19
    cp [hl]                                       ; $455f: $be
    ld b, [hl]                                    ; $4560: $46
    nop                                           ; $4561: $00
    nop                                           ; $4562: $00
    sub e                                         ; $4563: $93
    ld de, $369e                                  ; $4564: $11 $9e $36
    xor h                                         ; $4567: $ac
    ld [$0022], sp                                ; $4568: $08 $22 $00
    db $10                                        ; $456b: $10
    ld h, d                                       ; $456c: $62
    rla                                           ; $456d: $17
    ld b, $e5                                     ; $456e: $06 $e5
    inc a                                         ; $4570: $3c
    nop                                           ; $4571: $00
    jr nz, jr_0b5_4584                            ; $4572: $20 $10

    ld h, d                                       ; $4574: $62
    rla                                           ; $4575: $17
    ld b, $e5                                     ; $4576: $06 $e5
    inc a                                         ; $4578: $3c
    nop                                           ; $4579: $00
    jr nz, jr_0b5_45c9                            ; $457a: $20 $4d

    ld bc, $0ab8                                  ; $457c: $01 $b8 $0a
    di                                            ; $457f: $f3
    dec c                                         ; $4580: $0d
    nop                                           ; $4581: $00
    inc b                                         ; $4582: $04
    rst $30                                       ; $4583: $f7

jr_0b5_4584:
    ld [hl], d                                    ; $4584: $72
    ld h, a                                       ; $4585: $67
    nop                                           ; $4586: $00

jr_0b5_4587:
    rst $38                                       ; $4587: $ff
    ld a, a                                       ; $4588: $7f
    nop                                           ; $4589: $00
    nop                                           ; $458a: $00
    sub a                                         ; $458b: $97
    ld a, [bc]                                    ; $458c: $0a
    db $ec                                        ; $458d: $ec
    nop                                           ; $458e: $00
    dec de                                        ; $458f: $1b
    ld l, $00                                     ; $4590: $2e $00
    nop                                           ; $4592: $00
    db $10                                        ; $4593: $10
    dec c                                         ; $4594: $0d
    ld sp, hl                                     ; $4595: $f9
    dec h                                         ; $4596: $25
    xor b                                         ; $4597: $a8
    inc b                                         ; $4598: $04
    nop                                           ; $4599: $00
    nop                                           ; $459a: $00
    ld [hl], c                                    ; $459b: $71
    add hl, de                                    ; $459c: $19
    cp a                                          ; $459d: $bf
    ld b, d                                       ; $459e: $42
    jp hl                                         ; $459f: $e9


    inc c                                         ; $45a0: $0c
    ld [hl+], a                                   ; $45a1: $22
    nop                                           ; $45a2: $00
    sbc b                                         ; $45a3: $98
    ld a, [bc]                                    ; $45a4: $0a
    jr jr_0b5_461e                                ; $45a5: $18 $77

    nop                                           ; $45a7: $00
    jr nz, jr_0b5_45aa                            ; $45a8: $20 $00

jr_0b5_45aa:
    jr nz, jr_0b5_4544                            ; $45aa: $20 $98

    ld a, [bc]                                    ; $45ac: $0a
    jr jr_0b5_4626                                ; $45ad: $18 $77

    nop                                           ; $45af: $00
    jr nz, jr_0b5_45b2                            ; $45b0: $20 $00

jr_0b5_45b2:
    jr nz, jr_0b5_454b                            ; $45b2: $20 $97

    ld a, [bc]                                    ; $45b4: $0a
    db $ec                                        ; $45b5: $ec
    nop                                           ; $45b6: $00
    dec de                                        ; $45b7: $1b
    ld l, $00                                     ; $45b8: $2e $00
    nop                                           ; $45ba: $00
    sbc h                                         ; $45bb: $9c
    ld [hl], a                                    ; $45bc: $77
    adc e                                         ; $45bd: $8b
    nop                                           ; $45be: $00
    nop                                           ; $45bf: $00
    jr nz, jr_0b5_45c2                            ; $45c0: $20 $00

jr_0b5_45c2:
    nop                                           ; $45c2: $00
    ld c, a                                       ; $45c3: $4f
    ld bc, $3219                                  ; $45c4: $01 $19 $32
    xor e                                         ; $45c7: $ab
    nop                                           ; $45c8: $00

jr_0b5_45c9:
    nop                                           ; $45c9: $00
    nop                                           ; $45ca: $00
    rrca                                          ; $45cb: $0f
    ld h, d                                       ; $45cc: $62
    sbc h                                         ; $45cd: $9c
    ld a, e                                       ; $45ce: $7b
    or l                                          ; $45cf: $b5
    ld l, [hl]                                    ; $45d0: $6e
    nop                                           ; $45d1: $00
    nop                                           ; $45d2: $00
    push hl                                       ; $45d3: $e5
    inc a                                         ; $45d4: $3c
    rrca                                          ; $45d5: $0f
    ld e, d                                       ; $45d6: $5a
    ld c, c                                       ; $45d7: $49
    ld c, c                                       ; $45d8: $49
    nop                                           ; $45d9: $00
    nop                                           ; $45da: $00

jr_0b5_45db:
    rst $30                                       ; $45db: $f7
    ld [hl], d                                    ; $45dc: $72
    sbc $7b                                       ; $45dd: $de $7b
    nop                                           ; $45df: $00
    jr nz, jr_0b5_45e2                            ; $45e0: $20 $00

jr_0b5_45e2:
    jr nz, jr_0b5_45db                            ; $45e2: $20 $f7

    ld [hl], d                                    ; $45e4: $72
    sbc $7b                                       ; $45e5: $de $7b
    nop                                           ; $45e7: $00
    jr nz, jr_0b5_45ea                            ; $45e8: $20 $00

jr_0b5_45ea:
    jr nz, jr_0b5_463b                            ; $45ea: $20 $4f

    ld bc, $3219                                  ; $45ec: $01 $19 $32
    xor e                                         ; $45ef: $ab
    nop                                           ; $45f0: $00
    nop                                           ; $45f1: $00
    jr nz, jr_0b5_4587                            ; $45f2: $20 $93

    ld h, d                                       ; $45f4: $62
    sbc h                                         ; $45f5: $9c
    ld [hl], a                                    ; $45f6: $77
    ld l, c                                       ; $45f7: $69
    ld b, l                                       ; $45f8: $45
    push hl                                       ; $45f9: $e5
    inc a                                         ; $45fa: $3c
    ld sp, $f766                                  ; $45fb: $31 $66 $f7
    ld [hl], d                                    ; $45fe: $72
    ld c, c                                       ; $45ff: $49

Call_0b5_4600:
    ld c, l                                       ; $4600: $4d
    daa                                           ; $4601: $27
    ld b, l                                       ; $4602: $45
    sub l                                         ; $4603: $95
    ld [hl], d                                    ; $4604: $72
    sbc h                                         ; $4605: $9c
    ld a, e                                       ; $4606: $7b
    adc $5d                                       ; $4607: $ce $5d
    ld l, d                                       ; $4609: $6a
    ld c, l                                       ; $460a: $4d
    sub h                                         ; $460b: $94
    ld l, [hl]                                    ; $460c: $6e
    jr nc, jr_0b5_466d                            ; $460d: $30 $5e

    ld e, d                                       ; $460f: $5a
    ld [hl], e                                    ; $4610: $73
    nop                                           ; $4611: $00
    jr nz, @+$75                                  ; $4612: $20 $73

    ld e, [hl]                                    ; $4614: $5e
    cp h                                          ; $4615: $bc
    ld a, e                                       ; $4616: $7b
    push hl                                       ; $4617: $e5
    inc a                                         ; $4618: $3c
    nop                                           ; $4619: $00
    jr nz, @+$75                                  ; $461a: $20 $73

    ld e, [hl]                                    ; $461c: $5e
    cp h                                          ; $461d: $bc

jr_0b5_461e:
    ld a, e                                       ; $461e: $7b
    push hl                                       ; $461f: $e5
    inc a                                         ; $4620: $3c
    nop                                           ; $4621: $00
    jr nz, jr_0b5_4624                            ; $4622: $20 $00

jr_0b5_4624:
    jr nz, @+$01                                  ; $4624: $20 $ff

jr_0b5_4626:
    ld l, a                                       ; $4626: $6f
    cp [hl]                                       ; $4627: $be
    dec hl                                        ; $4628: $2b
    nop                                           ; $4629: $00
    jr nz, jr_0b5_464d                            ; $462a: $20 $21

    inc b                                         ; $462c: $04
    rst $38                                       ; $462d: $ff
    ld l, a                                       ; $462e: $6f
    cp [hl]                                       ; $462f: $be
    dec hl                                        ; $4630: $2b
    nop                                           ; $4631: $00
    jr nz, jr_0b5_4655                            ; $4632: $20 $21

    inc b                                         ; $4634: $04
    rst $38                                       ; $4635: $ff
    ld l, a                                       ; $4636: $6f
    cp [hl]                                       ; $4637: $be
    dec hl                                        ; $4638: $2b
    nop                                           ; $4639: $00
    db $10                                        ; $463a: $10

jr_0b5_463b:
    ld [hl], d                                    ; $463b: $72
    add hl, bc                                    ; $463c: $09
    cp h                                          ; $463d: $bc
    ld b, $df                                     ; $463e: $06 $df
    ld c, e                                       ; $4640: $4b
    nop                                           ; $4641: $00
    jr nz, jr_0b5_4694                            ; $4642: $20 $50

    dec b                                         ; $4644: $05
    ld hl, $d704                                  ; $4645: $21 $04 $d7
    add hl, bc                                    ; $4648: $09
    nop                                           ; $4649: $00
    jr nz, @+$52                                  ; $464a: $20 $50

    dec b                                         ; $464c: $05

jr_0b5_464d:
    ld hl, $d704                                  ; $464d: $21 $04 $d7
    add hl, bc                                    ; $4650: $09
    nop                                           ; $4651: $00
    jr nz, @+$52                                  ; $4652: $20 $50

    dec b                                         ; $4654: $05

jr_0b5_4655:
    ld hl, $d704                                  ; $4655: $21 $04 $d7
    add hl, bc                                    ; $4658: $09
    nop                                           ; $4659: $00
    jr nz, jr_0b5_467d                            ; $465a: $20 $21

    inc b                                         ; $465c: $04
    inc hl                                        ; $465d: $23
    inc b                                         ; $465e: $04
    ld b, l                                       ; $465f: $45
    nop                                           ; $4660: $00
    ld hl, $cc04                                  ; $4661: $21 $04 $cc
    nop                                           ; $4664: $00
    rla                                           ; $4665: $17
    add hl, bc                                    ; $4666: $09
    nop                                           ; $4667: $00
    jr nz, jr_0b5_466a                            ; $4668: $20 $00

jr_0b5_466a:
    nop                                           ; $466a: $00
    nop                                           ; $466b: $00
    inc e                                         ; $466c: $1c

jr_0b5_466d:
    nop                                           ; $466d: $00
    jr nz, jr_0b5_4691                            ; $466e: $20 $21

    inc b                                         ; $4670: $04
    nop                                           ; $4671: $00
    nop                                           ; $4672: $00
    cp $12                                        ; $4673: $fe $12
    rst $38                                       ; $4675: $ff
    ld [hl], e                                    ; $4676: $73
    ld [hl], $09                                  ; $4677: $36 $09
    nop                                           ; $4679: $00
    jr nz, @+$32                                  ; $467a: $20 $30

    dec b                                         ; $467c: $05

jr_0b5_467d:
    ld a, a                                       ; $467d: $7f
    ld d, $24                                     ; $467e: $16 $24
    inc b                                         ; $4680: $04
    nop                                           ; $4681: $00
    jr nz, jr_0b5_46b4                            ; $4682: $20 $30

    dec b                                         ; $4684: $05
    ld a, a                                       ; $4685: $7f
    ld d, $24                                     ; $4686: $16 $24
    inc b                                         ; $4688: $04
    nop                                           ; $4689: $00
    jr nz, jr_0b5_46bc                            ; $468a: $20 $30

    dec b                                         ; $468c: $05
    ld a, a                                       ; $468d: $7f
    ld d, $24                                     ; $468e: $16 $24
    inc b                                         ; $4690: $04

jr_0b5_4691:
    nop                                           ; $4691: $00
    jr nz, jr_0b5_46f2                            ; $4692: $20 $5e

jr_0b5_4694:
    ld [de], a                                    ; $4694: $12
    ld hl, $a900                                  ; $4695: $21 $00 $a9
    inc b                                         ; $4698: $04
    ld l, c                                       ; $4699: $69
    inc b                                         ; $469a: $04
    ld a, [$1311]                                 ; $469b: $fa $11 $13
    dec b                                         ; $469e: $05
    cp a                                          ; $469f: $bf
    ld d, $01                                     ; $46a0: $16 $01
    ld [$033a], sp                                ; $46a2: $08 $3a $03
    pop de                                        ; $46a5: $d1
    inc b                                         ; $46a6: $04
    cp [hl]                                       ; $46a7: $be
    daa                                           ; $46a8: $27
    nop                                           ; $46a9: $00
    nop                                           ; $46aa: $00
    sla [hl]                                      ; $46ab: $cb $26
    sub l                                         ; $46ad: $95
    ld a, [bc]                                    ; $46ae: $0a
    sbc e                                         ; $46af: $9b
    dec c                                         ; $46b0: $0d
    nop                                           ; $46b1: $00
    db $10                                        ; $46b2: $10
    inc [hl]                                      ; $46b3: $34

jr_0b5_46b4:
    add hl, bc                                    ; $46b4: $09
    ld l, h                                       ; $46b5: $6c
    inc b                                         ; $46b6: $04
    cp [hl]                                       ; $46b7: $be
    dec c                                         ; $46b8: $0d
    nop                                           ; $46b9: $00
    jr nz, jr_0b5_46f0                            ; $46ba: $20 $34

jr_0b5_46bc:
    add hl, bc                                    ; $46bc: $09
    ld l, h                                       ; $46bd: $6c
    inc b                                         ; $46be: $04

jr_0b5_46bf:
    cp [hl]                                       ; $46bf: $be
    dec c                                         ; $46c0: $0d
    nop                                           ; $46c1: $00
    jr nz, jr_0b5_46f8                            ; $46c2: $20 $34

    add hl, bc                                    ; $46c4: $09
    ld l, h                                       ; $46c5: $6c
    inc b                                         ; $46c6: $04

jr_0b5_46c7:
    cp [hl]                                       ; $46c7: $be
    dec c                                         ; $46c8: $0d
    nop                                           ; $46c9: $00
    jr nz, jr_0b5_4706                            ; $46ca: $20 $3a

    inc bc                                        ; $46cc: $03
    pop de                                        ; $46cd: $d1
    inc b                                         ; $46ce: $04
    cp [hl]                                       ; $46cf: $be
    daa                                           ; $46d0: $27
    nop                                           ; $46d1: $00
    jr nz, jr_0b5_46eb                            ; $46d2: $20 $17

    add hl, bc                                    ; $46d4: $09
    adc e                                         ; $46d5: $8b
    nop                                           ; $46d6: $00
    ld bc, $0000                                  ; $46d7: $01 $00 $00
    nop                                           ; $46da: $00

jr_0b5_46db:
    ld a, [c]                                     ; $46db: $f2
    dec c                                         ; $46dc: $0d
    dec e                                         ; $46dd: $1d
    ld [de], a                                    ; $46de: $12
    call $cb04                                    ; $46df: $cd $04 $cb
    ld h, $34                                     ; $46e2: $26 $34
    add hl, bc                                    ; $46e4: $09
    ld l, h                                       ; $46e5: $6c
    inc b                                         ; $46e6: $04
    cp [hl]                                       ; $46e7: $be
    dec c                                         ; $46e8: $0d
    nop                                           ; $46e9: $00
    inc c                                         ; $46ea: $0c

jr_0b5_46eb:
    sla [hl]                                      ; $46eb: $cb $26
    adc b                                         ; $46ed: $88
    nop                                           ; $46ee: $00
    ld [hl], l                                    ; $46ef: $75

jr_0b5_46f0:
    add hl, bc                                    ; $46f0: $09
    nop                                           ; $46f1: $00

jr_0b5_46f2:
    jr nz, jr_0b5_46bf                            ; $46f2: $20 $cb

    ld h, $88                                     ; $46f4: $26 $88

jr_0b5_46f6:
    nop                                           ; $46f6: $00
    ld [hl], l                                    ; $46f7: $75

jr_0b5_46f8:
    add hl, bc                                    ; $46f8: $09
    nop                                           ; $46f9: $00
    jr nz, jr_0b5_46c7                            ; $46fa: $20 $cb

    ld h, $88                                     ; $46fc: $26 $88
    nop                                           ; $46fe: $00
    ld [hl], l                                    ; $46ff: $75
    add hl, bc                                    ; $4700: $09
    nop                                           ; $4701: $00
    jr nz, jr_0b5_46f6                            ; $4702: $20 $f2

    dec c                                         ; $4704: $0d
    dec e                                         ; $4705: $1d

jr_0b5_4706:
    ld [de], a                                    ; $4706: $12
    call Call_000_0004                            ; $4707: $cd $04 $00
    jr nz, jr_0b5_46db                            ; $470a: $20 $cf

    dec d                                         ; $470c: $15
    ld e, e                                       ; $470d: $5b
    inc bc                                        ; $470e: $03
    call Call_000_0004                            ; $470f: $cd $04 $00
    nop                                           ; $4712: $00

jr_0b5_4713:
    ld [hl], e                                    ; $4713: $73
    dec c                                         ; $4714: $0d
    cp a                                          ; $4715: $bf
    ld a, [de]                                    ; $4716: $1a
    adc l                                         ; $4717: $8d
    inc b                                         ; $4718: $04
    ld hl, $cb04                                  ; $4719: $21 $04 $cb
    ld h, $6e                                     ; $471c: $26 $6e
    dec a                                         ; $471e: $3d
    di                                            ; $471f: $f3
    ld d, l                                       ; $4720: $55
    ld [hl+], a                                   ; $4721: $22
    nop                                           ; $4722: $00
    sla [hl]                                      ; $4723: $cb $26
    cp [hl]                                       ; $4725: $be
    dec c                                         ; $4726: $0d
    ld d, c                                       ; $4727: $51
    dec c                                         ; $4728: $0d
    nop                                           ; $4729: $00
    jr nz, @+$1c                                  ; $472a: $20 $1a

    inc bc                                        ; $472c: $03
    ld hl, $5104                                  ; $472d: $21 $04 $51
    dec c                                         ; $4730: $0d
    nop                                           ; $4731: $00
    jr nz, jr_0b5_474e                            ; $4732: $20 $1a

    inc bc                                        ; $4734: $03
    ld hl, $5104                                  ; $4735: $21 $04 $51
    dec c                                         ; $4738: $0d
    nop                                           ; $4739: $00
    jr nz, @+$75                                  ; $473a: $20 $73

    dec c                                         ; $473c: $0d
    cp a                                          ; $473d: $bf
    ld a, [de]                                    ; $473e: $1a
    adc l                                         ; $473f: $8d
    inc b                                         ; $4740: $04
    nop                                           ; $4741: $00
    jr nz, jr_0b5_4713                            ; $4742: $20 $cf

    dec d                                         ; $4744: $15
    ld hl, $f400                                  ; $4745: $21 $00 $f4
    ld [$0000], sp                                ; $4748: $08 $00 $00
    call $8900                                    ; $474b: $cd $00 $89

jr_0b5_474e:
    nop                                           ; $474e: $00
    dec [hl]                                      ; $474f: $35
    add hl, bc                                    ; $4750: $09
    nop                                           ; $4751: $00
    ld [$324b], sp                                ; $4752: $08 $4b $32
    ld e, b                                       ; $4755: $58
    ld [hl], d                                    ; $4756: $72

jr_0b5_4757:
    add l                                         ; $4757: $85
    inc h                                         ; $4758: $24
    ld b, a                                       ; $4759: $47
    ld [$6213], sp                                ; $475a: $08 $13 $62
    jp c, $ea0d                                   ; $475d: $da $0d $ea

    inc l                                         ; $4760: $2c
    nop                                           ; $4761: $00
    jr nz, jr_0b5_479f                            ; $4762: $20 $3b

    inc bc                                        ; $4764: $03
    cp [hl]                                       ; $4765: $be
    dec hl                                        ; $4766: $2b
    ld hl, $0004                                  ; $4767: $21 $04 $00
    jr nz, jr_0b5_47a7                            ; $476a: $20 $3b

    inc bc                                        ; $476c: $03
    cp [hl]                                       ; $476d: $be
    dec hl                                        ; $476e: $2b
    ld hl, $0004                                  ; $476f: $21 $04 $00
    inc c                                         ; $4772: $0c
    nop                                           ; $4773: $00
    jr nz, @+$23                                  ; $4774: $20 $21

    inc b                                         ; $4776: $04
    dec [hl]                                      ; $4777: $35
    add hl, bc                                    ; $4778: $09

jr_0b5_4779:
    ld b, d                                       ; $4779: $42
    nop                                           ; $477a: $00
    xor $04                                       ; $477b: $ee $04
    add hl, de                                    ; $477d: $19
    ld c, $89                                     ; $477e: $0e $89
    nop                                           ; $4780: $00
    ld hl, $d500                                  ; $4781: $21 $00 $d5
    ld [$04cd], sp                                ; $4784: $08 $cd $04
    dec sp                                        ; $4787: $3b
    ld [de], a                                    ; $4788: $12
    ld hl, $d308                                  ; $4789: $21 $08 $d3
    ld h, c                                       ; $478c: $61
    xor b                                         ; $478d: $a8
    jr nc, @-$03                                  ; $478e: $30 $fb

    ld a, [hl]                                    ; $4790: $7e
    ld b, a                                       ; $4791: $47
    nop                                           ; $4792: $00
    ld d, e                                       ; $4793: $53
    ld e, d                                       ; $4794: $5a
    ret                                           ; $4795: $c9


    jr nc, jr_0b5_4757                            ; $4796: $30 $bf

    ld a, a                                       ; $4798: $7f
    nop                                           ; $4799: $00
    inc c                                         ; $479a: $0c
    dec sp                                        ; $479b: $3b
    inc bc                                        ; $479c: $03
    cp [hl]                                       ; $479d: $be
    ccf                                           ; $479e: $3f

jr_0b5_479f:
    rst $38                                       ; $479f: $ff
    ld [hl], e                                    ; $47a0: $73
    nop                                           ; $47a1: $00
    jr nz, jr_0b5_47df                            ; $47a2: $20 $3b

    inc bc                                        ; $47a4: $03
    cp [hl]                                       ; $47a5: $be
    ccf                                           ; $47a6: $3f

jr_0b5_47a7:
    rst $38                                       ; $47a7: $ff
    ld [hl], e                                    ; $47a8: $73
    nop                                           ; $47a9: $00
    jr nz, jr_0b5_4779                            ; $47aa: $20 $cd

    nop                                           ; $47ac: $00
    ld hl, $9204                                  ; $47ad: $21 $04 $92
    add hl, bc                                    ; $47b0: $09
    ld hl, $1600                                  ; $47b1: $21 $00 $16
    dec b                                         ; $47b4: $05
    xor e                                         ; $47b5: $ab
    nop                                           ; $47b6: $00
    ld e, a                                       ; $47b7: $5f
    ld de, $0000                                  ; $47b8: $11 $00 $00
    db $ed                                        ; $47bb: $ed
    nop                                           ; $47bc: $00
    add l                                         ; $47bd: $85
    nop                                           ; $47be: $00
    halt                                          ; $47bf: $76
    dec c                                         ; $47c0: $0d
    nop                                           ; $47c1: $00
    nop                                           ; $47c2: $00
    jr c, jr_0b5_47e3                             ; $47c3: $38 $1e

    xor c                                         ; $47c5: $a9
    inc d                                         ; $47c6: $14
    rst $38                                       ; $47c7: $ff
    ld b, e                                       ; $47c8: $43
    inc bc                                        ; $47c9: $03
    nop                                           ; $47ca: $00
    rst $38                                       ; $47cb: $ff

jr_0b5_47cc:
    ld a, a                                       ; $47cc: $7f
    or h                                          ; $47cd: $b4
    ld [$48c8], sp                                ; $47ce: $08 $c8 $48

jr_0b5_47d1:
    nop                                           ; $47d1: $00
    nop                                           ; $47d2: $00
    xor h                                         ; $47d3: $ac
    ld [hl+], a                                   ; $47d4: $22
    dec sp                                        ; $47d5: $3b
    rlca                                          ; $47d6: $07
    cp [hl]                                       ; $47d7: $be
    ccf                                           ; $47d8: $3f
    nop                                           ; $47d9: $00
    jr nz, jr_0b5_47cc                            ; $47da: $20 $f0

    dec d                                         ; $47dc: $15
    ld [hl-], a                                   ; $47dd: $32

jr_0b5_47de:
    ld [de], a                                    ; $47de: $12

jr_0b5_47df:
    cp [hl]                                       ; $47df: $be
    ccf                                           ; $47e0: $3f
    nop                                           ; $47e1: $00
    inc d                                         ; $47e2: $14

jr_0b5_47e3:
    ld d, $09                                     ; $47e3: $16 $09
    sbc a                                         ; $47e5: $9f

jr_0b5_47e6:
    ld d, $6a                                     ; $47e6: $16 $6a
    inc b                                         ; $47e8: $04
    nop                                           ; $47e9: $00
    nop                                           ; $47ea: $00
    sla [hl]                                      ; $47eb: $cb $26
    jp nc, $1a08                                  ; $47ed: $d2 $08 $1a

    add hl, bc                                    ; $47f0: $09
    jr nz, jr_0b5_47f3                            ; $47f1: $20 $00

jr_0b5_47f3:
    sla [hl]                                      ; $47f3: $cb $26
    ld d, $1e                                     ; $47f5: $16 $1e
    and a                                         ; $47f7: $a7
    ld [$0400], sp                                ; $47f8: $08 $00 $04
    or h                                          ; $47fb: $b4
    dec d                                         ; $47fc: $15
    ld a, l                                       ; $47fd: $7d
    ld [hl], $c9                                  ; $47fe: $36 $c9
    inc e                                         ; $4800: $1c
    inc bc                                        ; $4801: $03
    nop                                           ; $4802: $00
    dec de                                        ; $4803: $1b
    ld h, $a9                                     ; $4804: $26 $a9
    jr c, jr_0b5_47d1                             ; $4806: $38 $c9

    inc b                                         ; $4808: $04
    nop                                           ; $4809: $00
    nop                                           ; $480a: $00
    sla [hl]                                      ; $480b: $cb $26
    ld e, h                                       ; $480d: $5c
    inc bc                                        ; $480e: $03
    ld hl, $0004                                  ; $480f: $21 $04 $00
    jr nz, jr_0b5_47e3                            ; $4812: $20 $cf

    dec d                                         ; $4814: $15
    ld e, h                                       ; $4815: $5c
    inc bc                                        ; $4816: $03
    ld d, e                                       ; $4817: $53
    ld c, $00                                     ; $4818: $0e $00
    nop                                           ; $481a: $00
    di                                            ; $481b: $f3
    ld [$121a], sp                                ; $481c: $08 $1a $12
    ld c, c                                       ; $481f: $49
    nop                                           ; $4820: $00
    nop                                           ; $4821: $00
    nop                                           ; $4822: $00
    sla [hl]                                      ; $4823: $cb $26
    dec l                                         ; $4825: $2d
    add hl, bc                                    ; $4826: $09
    ld hl, $2104                                  ; $4827: $21 $04 $21
    nop                                           ; $482a: $00
    sub [hl]                                      ; $482b: $96
    ld de, $04ac                                  ; $482c: $11 $ac $04
    ld a, a                                       ; $482f: $7f
    ld b, d                                       ; $4830: $42
    ld [hl+], a                                   ; $4831: $22
    nop                                           ; $4832: $00
    sub $25                                       ; $4833: $d6 $25
    inc [hl]                                      ; $4835: $34
    ld e, [hl]                                    ; $4836: $5e
    xor c                                         ; $4837: $a9
    jr c, jr_0b5_485b                             ; $4838: $38 $21

    nop                                           ; $483a: $00
    inc [hl]                                      ; $483b: $34
    ld e, [hl]                                    ; $483c: $5e
    xor c                                         ; $483d: $a9
    jr c, jr_0b5_47de                             ; $483e: $38 $9e

    ld b, d                                       ; $4840: $42
    sla [hl]                                      ; $4841: $cb $26
    inc [hl]                                      ; $4843: $34
    ld e, [hl]                                    ; $4844: $5e
    xor c                                         ; $4845: $a9
    jr c, jr_0b5_47e6                             ; $4846: $38 $9e

    ld b, d                                       ; $4848: $42
    nop                                           ; $4849: $00
    inc e                                         ; $484a: $1c
    ld [hl], d                                    ; $484b: $72
    ld [de], a                                    ; $484c: $12
    cp [hl]                                       ; $484d: $be
    rra                                           ; $484e: $1f
    rst $38                                       ; $484f: $ff
    ld h, e                                       ; $4850: $63
    nop                                           ; $4851: $00
    nop                                           ; $4852: $00
    sla [hl]                                      ; $4853: $cb $26
    cp [hl]                                       ; $4855: $be
    ld b, a                                       ; $4856: $47
    ld a, [hl-]                                   ; $4857: $3a
    inc bc                                        ; $4858: $03
    ld [hl+], a                                   ; $4859: $22
    nop                                           ; $485a: $00

jr_0b5_485b:
    sla [hl]                                      ; $485b: $cb $26
    ld d, c                                       ; $485d: $51
    dec c                                         ; $485e: $0d
    ccf                                           ; $485f: $3f
    ld [de], a                                    ; $4860: $12
    nop                                           ; $4861: $00
    nop                                           ; $4862: $00
    ld c, a                                       ; $4863: $4f
    ld e, $3f                                     ; $4864: $1e $3f
    ld e, a                                       ; $4866: $5f
    ld c, a                                       ; $4867: $4f
    nop                                           ; $4868: $00
    ld bc, $be00                                  ; $4869: $01 $00 $be
    ld l, e                                       ; $486c: $6b
    jp z, Jump_0b5_6f48                           ; $486d: $ca $48 $6f

    dec d                                         ; $4870: $15
    ld [hl+], a                                   ; $4871: $22
    inc b                                         ; $4872: $04
    sub b                                         ; $4873: $90
    ld h, l                                       ; $4874: $65
    rst $38                                       ; $4875: $ff
    ld c, [hl]                                    ; $4876: $4e
    rst $38                                       ; $4877: $ff
    ld a, a                                       ; $4878: $7f
    ld hl, $cb04                                  ; $4879: $21 $04 $cb
    ld h, $ff                                     ; $487c: $26 $ff
    ld c, [hl]                                    ; $487e: $4e
    rst $38                                       ; $487f: $ff
    ld a, a                                       ; $4880: $7f
    nop                                           ; $4881: $00
    inc e                                         ; $4882: $1c
    call z, $be1e                                 ; $4883: $cc $1e $be
    cpl                                           ; $4886: $2f
    rst $38                                       ; $4887: $ff
    ld a, e                                       ; $4888: $7b
    nop                                           ; $4889: $00
    nop                                           ; $488a: $00
    ld a, l                                       ; $488b: $7d
    inc bc                                        ; $488c: $03
    sla [hl]                                      ; $488d: $cb $26
    rst $18                                       ; $488f: $df
    ld e, a                                       ; $4890: $5f
    ld [hl+], a                                   ; $4891: $22
    nop                                           ; $4892: $00
    sla [hl]                                      ; $4893: $cb $26
    ld [hl], c                                    ; $4895: $71
    add hl, bc                                    ; $4896: $09
    sbc l                                         ; $4897: $9d
    ld d, $00                                     ; $4898: $16 $00
    nop                                           ; $489a: $00
    sla [hl]                                      ; $489b: $cb $26
    inc l                                         ; $489d: $2c
    nop                                           ; $489e: $00
    ld e, b                                       ; $489f: $58
    ld e, $00                                     ; $48a0: $1e $00
    inc b                                         ; $48a2: $04
    ld a, h                                       ; $48a3: $7c
    ld [hl-], a                                   ; $48a4: $32
    jp hl                                         ; $48a5: $e9


    ld [$3caa], sp                                ; $48a6: $08 $aa $3c
    add l                                         ; $48a9: $85
    db $10                                        ; $48aa: $10
    ld a, [$df29]                                 ; $48ab: $fa $29 $df
    ld c, d                                       ; $48ae: $4a
    rst $38                                       ; $48af: $ff
    ld a, a                                       ; $48b0: $7f
    nop                                           ; $48b1: $00
    nop                                           ; $48b2: $00
    sla [hl]                                      ; $48b3: $cb $26
    ld d, b                                       ; $48b5: $50
    ld d, l                                       ; $48b6: $55
    or l                                          ; $48b7: $b5
    ld l, c                                       ; $48b8: $69
    nop                                           ; $48b9: $00
    inc e                                         ; $48ba: $1c
    sla [hl]                                      ; $48bb: $cb $26
    ld a, l                                       ; $48bd: $7d
    rrca                                          ; $48be: $0f
    rst $18                                       ; $48bf: $df
    ld d, a                                       ; $48c0: $57
    nop                                           ; $48c1: $00
    ld [$3fbe], sp                                ; $48c2: $08 $be $3f
    sla [hl]                                      ; $48c5: $cb $26
    rst $38                                       ; $48c7: $ff
    ld [hl], a                                    ; $48c8: $77
    ld hl, $cb04                                  ; $48c9: $21 $04 $cb
    ld h, $ca                                     ; $48cc: $26 $ca
    nop                                           ; $48ce: $00
    ld h, c                                       ; $48cf: $61
    inc b                                         ; $48d0: $04
    nop                                           ; $48d1: $00
    nop                                           ; $48d2: $00
    sla [hl]                                      ; $48d3: $cb $26
    ld [hl+], a                                   ; $48d5: $22
    inc h                                         ; $48d6: $24
    nop                                           ; $48d7: $00
    db $10                                        ; $48d8: $10
    ld bc, $0e00                                  ; $48d9: $01 $00 $0e
    ld c, l                                       ; $48dc: $4d
    ld a, h                                       ; $48dd: $7c
    ld a, [hl-]                                   ; $48de: $3a
    ld h, [hl]                                    ; $48df: $66
    inc [hl]                                      ; $48e0: $34
    ld bc, $d30c                                  ; $48e1: $01 $0c $d3
    ld e, c                                       ; $48e4: $59
    rst $38                                       ; $48e5: $ff
    ld d, d                                       ; $48e6: $52
    add hl, sp                                    ; $48e7: $39
    dec e                                         ; $48e8: $1d
    ld bc, $cb04                                  ; $48e9: $01 $04 $cb
    ld h, $ef                                     ; $48ec: $26 $ef
    dec a                                         ; $48ee: $3d
    sub d                                         ; $48ef: $92
    ld e, l                                       ; $48f0: $5d
    nop                                           ; $48f1: $00
    inc e                                         ; $48f2: $1c
    xor e                                         ; $48f3: $ab
    ld [hl+], a                                   ; $48f4: $22
    rst $10                                       ; $48f5: $d7
    ld b, $be                                     ; $48f6: $06 $be
    daa                                           ; $48f8: $27
    nop                                           ; $48f9: $00
    db $10                                        ; $48fa: $10
    xor l                                         ; $48fb: $ad
    ld e, $9e                                     ; $48fc: $1e $9e
    inc de                                        ; $48fe: $13
    rst $38                                       ; $48ff: $ff
    ld a, a                                       ; $4900: $7f
    ld hl, $cb04                                  ; $4901: $21 $04 $cb
    ld h, $9e                                     ; $4904: $26 $9e
    inc de                                        ; $4906: $13
    rst $38                                       ; $4907: $ff
    ld a, a                                       ; $4908: $7f
    nop                                           ; $4909: $00
    nop                                           ; $490a: $00
    jp z, $9234                                   ; $490b: $ca $34 $92

    ld h, c                                       ; $490e: $61
    ld b, e                                       ; $490f: $43
    jr nz, @+$24                                  ; $4910: $20 $22

    inc b                                         ; $4912: $04
    ld hl, sp+$29                                 ; $4913: $f8 $29
    db $db                                        ; $4915: $db
    ld h, [hl]                                    ; $4916: $66
    jp z, $073c                                   ; $4917: $ca $3c $07

    nop                                           ; $491a: $00
    add hl, sp                                    ; $491b: $39
    ld c, [hl]                                    ; $491c: $4e
    ld a, [hl-]                                   ; $491d: $3a
    inc b                                         ; $491e: $04
    ld h, a                                       ; $491f: $67
    inc l                                         ; $4920: $2c
    ld bc, $2e10                                  ; $4921: $01 $10 $2e
    ld c, l                                       ; $4924: $4d
    sla [hl]                                      ; $4925: $cb $26
    push de                                       ; $4927: $d5
    ld l, l                                       ; $4928: $6d

Jump_0b5_4929:
    nop                                           ; $4929: $00
    inc e                                         ; $492a: $1c
    sla [hl]                                      ; $492b: $cb $26
    ld [hl-], a                                   ; $492d: $32
    ld c, $be                                     ; $492e: $0e $be
    rra                                           ; $4930: $1f
    nop                                           ; $4931: $00
    inc d                                         ; $4932: $14
    sla [hl]                                      ; $4933: $cb $26
    sbc [hl]                                      ; $4935: $9e
    rlca                                          ; $4936: $07
    ld [hl-], a                                   ; $4937: $32
    ld c, $00                                     ; $4938: $0e $00
    nop                                           ; $493a: $00
    sla [hl]                                      ; $493b: $cb $26
    ld e, h                                       ; $493d: $5c
    ld [hl], a                                    ; $493e: $77
    or b                                          ; $493f: $b0
    ld c, l                                       ; $4940: $4d
    ld hl, $de14                                  ; $4941: $21 $14 $de
    ld a, e                                       ; $4944: $7b
    xor c                                         ; $4945: $a9
    inc a                                         ; $4946: $3c
    ld l, $4d                                     ; $4947: $2e $4d
    ld [hl+], a                                   ; $4949: $22
    inc b                                         ; $494a: $04
    push de                                       ; $494b: $d5
    ld l, l                                       ; $494c: $6d
    sub l                                         ; $494d: $95
    ld hl, $7b9e                                  ; $494e: $21 $9e $7b
    ld [hl+], a                                   ; $4951: $22
    db $10                                        ; $4952: $10
    ld sp, hl                                     ; $4953: $f9
    add hl, hl                                    ; $4954: $29
    jp z, $9434                                   ; $4955: $ca $34 $94

    ld h, c                                       ; $4958: $61
    ld [bc], a                                    ; $4959: $02
    db $10                                        ; $495a: $10
    or c                                          ; $495b: $b1
    ld d, c                                       ; $495c: $51
    sbc [hl]                                      ; $495d: $9e
    ld a, a                                       ; $495e: $7f
    db $eb                                        ; $495f: $eb
    jr c, jr_0b5_4962                             ; $4960: $38 $00

jr_0b5_4962:
    inc e                                         ; $4962: $1c
    sla [hl]                                      ; $4963: $cb $26
    ld a, h                                       ; $4965: $7c
    inc bc                                        ; $4966: $03
    ld d, d                                       ; $4967: $52
    ld c, $00                                     ; $4968: $0e $00
    nop                                           ; $496a: $00
    sla [hl]                                      ; $496b: $cb $26
    ld [hl-], a                                   ; $496d: $32
    ld c, $00                                     ; $496e: $0e $00
    jr nz, jr_0b5_4972                            ; $4970: $20 $00

jr_0b5_4972:
    inc b                                         ; $4972: $04
    ld a, [de]                                    ; $4973: $1a
    ld [hl], e                                    ; $4974: $73
    dec hl                                        ; $4975: $2b
    dec [hl]                                      ; $4976: $35
    sla [hl]                                      ; $4977: $cb $26
    ld b, h                                       ; $4979: $44
    inc e                                         ; $497a: $1c
    call nc, Call_000_0d65                        ; $497b: $d4 $65 $0d
    ld b, c                                       ; $497e: $41
    db $db                                        ; $497f: $db
    ld a, [hl]                                    ; $4980: $7e
    ld bc, $f008                                  ; $4981: $01 $08 $f0
    ld d, l                                       ; $4984: $55
    cp [hl]                                       ; $4985: $be
    ld a, a                                       ; $4986: $7f
    dec de                                        ; $4987: $1b
    ld l, $21                                     ; $4988: $2e $21
    db $10                                        ; $498a: $10
    ld d, b                                       ; $498b: $50
    ld d, c                                       ; $498c: $51
    rst $10                                       ; $498d: $d7
    dec h                                         ; $498e: $25
    add a                                         ; $498f: $87
    inc a                                         ; $4990: $3c
    ld bc, $0c08                                  ; $4991: $01 $08 $0c
    dec a                                         ; $4994: $3d
    ld e, e                                       ; $4995: $5b
    ld [hl], e                                    ; $4996: $73
    db $d3                                        ; $4997: $d3
    ld e, c                                       ; $4998: $59
    nop                                           ; $4999: $00
    nop                                           ; $499a: $00
    adc a                                         ; $499b: $8f

jr_0b5_499c:
    ld a, [de]                                    ; $499c: $1a
    ld e, h                                       ; $499d: $5c
    inc bc                                        ; $499e: $03
    nop                                           ; $499f: $00
    jr nz, jr_0b5_49a2                            ; $49a0: $20 $00

jr_0b5_49a2:
    nop                                           ; $49a2: $00
    ld d, c                                       ; $49a3: $51
    ld [de], a                                    ; $49a4: $12
    ld a, l                                       ; $49a5: $7d
    ld d, $00                                     ; $49a6: $16 $00
    jr nz, jr_0b5_49aa                            ; $49a8: $20 $00

jr_0b5_49aa:
    inc b                                         ; $49aa: $04
    jp nc, $4555                                  ; $49ab: $d2 $55 $45

    inc l                                         ; $49ae: $2c
    rra                                           ; $49af: $1f
    ld [hl], $00                                  ; $49b0: $36 $00
    inc b                                         ; $49b2: $04
    db $eb                                        ; $49b3: $eb
    ld b, h                                       ; $49b4: $44
    sbc b                                         ; $49b5: $98
    ld l, [hl]                                    ; $49b6: $6e
    pop de                                        ; $49b7: $d1
    ld c, l                                       ; $49b8: $4d
    ld bc, $3c10                                  ; $49b9: $01 $10 $3c
    ld [hl], $f4                                  ; $49bc: $36 $f4
    ld e, l                                       ; $49be: $5d
    ld e, l                                       ; $49bf: $5d
    ld a, a                                       ; $49c0: $7f
    ld bc, $d508                                  ; $49c1: $01 $08 $d5
    dec l                                         ; $49c4: $2d
    sbc a                                         ; $49c5: $9f
    ld l, a                                       ; $49c6: $6f
    rst $28                                       ; $49c7: $ef
    inc c                                         ; $49c8: $0c
    ld bc, $f504                                  ; $49c9: $01 $04 $f5
    ld l, l                                       ; $49cc: $6d
    and [hl]                                      ; $49cd: $a6
    jr nc, jr_0b5_499c                            ; $49ce: $30 $cc

    inc b                                         ; $49d0: $04
    nop                                           ; $49d1: $00
    nop                                           ; $49d2: $00
    ld [hl-], a                                   ; $49d3: $32
    ld [de], a                                    ; $49d4: $12
    ld e, h                                       ; $49d5: $5c
    inc de                                        ; $49d6: $13
    nop                                           ; $49d7: $00
    jr nz, jr_0b5_49da                            ; $49d8: $20 $00

jr_0b5_49da:
    inc d                                         ; $49da: $14
    ldh a, [rNR11]                                ; $49db: $f0 $11
    ld sp, hl                                     ; $49dd: $f9
    ld [bc], a                                    ; $49de: $02
    ld a, a                                       ; $49df: $7f
    dec h                                         ; $49e0: $25
    nop                                           ; $49e1: $00
    inc b                                         ; $49e2: $04
    rla                                           ; $49e3: $17
    dec e                                         ; $49e4: $1d
    rra                                           ; $49e5: $1f
    ld [hl-], a                                   ; $49e6: $32
    ret z                                         ; $49e7: $c8

    ld b, h                                       ; $49e8: $44
    nop                                           ; $49e9: $00
    nop                                           ; $49ea: $00
    sub e                                         ; $49eb: $93
    dec l                                         ; $49ec: $2d
    ld a, [hl-]                                   ; $49ed: $3a
    ld l, e                                       ; $49ee: $6b
    ld b, [hl]                                    ; $49ef: $46
    inc l                                         ; $49f0: $2c
    nop                                           ; $49f1: $00
    db $10                                        ; $49f2: $10
    ld [hl], e                                    ; $49f3: $73
    ld sp, $3e9e                                  ; $49f4: $31 $9e $3e
    add a                                         ; $49f7: $87
    jr nc, jr_0b5_4a1d                            ; $49f8: $30 $23

    inc b                                         ; $49fa: $04
    ld a, d                                       ; $49fb: $7a
    ld hl, $6694                                  ; $49fc: $21 $94 $66
    ld a, $5f                                     ; $49ff: $3e $5f
    ld [bc], a                                    ; $4a01: $02
    nop                                           ; $4a02: $00
    add hl, de                                    ; $4a03: $19
    nop                                           ; $4a04: $00
    ret c                                         ; $4a05: $d8

    add hl, sp                                    ; $4a06: $39
    jr z, jr_0b5_4a62                             ; $4a07: $28 $59

    nop                                           ; $4a09: $00
    nop                                           ; $4a0a: $00
    ld a, [hl-]                                   ; $4a0b: $3a
    rlca                                          ; $4a0c: $07
    rst $18                                       ; $4a0d: $df
    ld c, e                                       ; $4a0e: $4b
    nop                                           ; $4a0f: $00
    jr nz, jr_0b5_4a15                            ; $4a10: $20 $03

    nop                                           ; $4a12: $00
    ld [de], a                                    ; $4a13: $12
    nop                                           ; $4a14: $00

jr_0b5_4a15:
    ld [hl-], a                                   ; $4a15: $32
    ld c, $00                                     ; $4a16: $0e $00
    jr nz, jr_0b5_4a1a                            ; $4a18: $20 $00

jr_0b5_4a1a:
    nop                                           ; $4a1a: $00
    add hl, sp                                    ; $4a1b: $39
    inc b                                         ; $4a1c: $04

jr_0b5_4a1d:
    cp b                                          ; $4a1d: $b8
    dec h                                         ; $4a1e: $25
    dec bc                                        ; $4a1f: $0b
    nop                                           ; $4a20: $00
    ld bc, $b628                                  ; $4a21: $01 $28 $b6
    dec h                                         ; $4a24: $25
    ld e, l                                       ; $4a25: $5d
    ld [hl-], a                                   ; $4a26: $32
    dec bc                                        ; $4a27: $0b
    nop                                           ; $4a28: $00
    nop                                           ; $4a29: $00
    ld [$592f], sp                                ; $4a2a: $08 $2f $59
    sbc [hl]                                      ; $4a2d: $9e
    ld b, d                                       ; $4a2e: $42
    ld h, a                                       ; $4a2f: $67
    jr c, jr_0b5_4a32                             ; $4a30: $38 $00

jr_0b5_4a32:
    nop                                           ; $4a32: $00
    dec de                                        ; $4a33: $1b
    ld l, $87                                     ; $4a34: $2e $87
    inc l                                         ; $4a36: $2c
    rst $38                                       ; $4a37: $ff
    ld c, [hl]                                    ; $4a38: $4e
    nop                                           ; $4a39: $00
    nop                                           ; $4a3a: $00
    db $fd                                        ; $4a3b: $fd
    jr @-$0b                                      ; $4a3c: $18 $f3

    ld h, l                                       ; $4a3e: $65
    ld l, b                                       ; $4a3f: $68
    inc c                                         ; $4a40: $0c
    nop                                           ; $4a41: $00
    inc e                                         ; $4a42: $1c
    inc d                                         ; $4a43: $14
    nop                                           ; $4a44: $00
    ld d, e                                       ; $4a45: $53
    ld c, $7d                                     ; $4a46: $0e $7d
    dec de                                        ; $4a48: $1b
    nop                                           ; $4a49: $00
    nop                                           ; $4a4a: $00
    ld c, $00                                     ; $4a4b: $0e $00
    nop                                           ; $4a4d: $00
    jr nz, jr_0b5_4a61                            ; $4a4e: $20 $11

    nop                                           ; $4a50: $00
    nop                                           ; $4a51: $00
    nop                                           ; $4a52: $00
    sbc c                                         ; $4a53: $99
    ld hl, $0016                                  ; $4a54: $21 $16 $00
    ld e, l                                       ; $4a57: $5d
    ld [hl], $21                                  ; $4a58: $36 $21
    inc d                                         ; $4a5a: $14
    sbc [hl]                                      ; $4a5b: $9e
    ld b, d                                       ; $4a5c: $42
    rst $38                                       ; $4a5d: $ff
    ld c, [hl]                                    ; $4a5e: $4e
    ld [bc], a                                    ; $4a5f: $02
    inc l                                         ; $4a60: $2c

jr_0b5_4a61:
    nop                                           ; $4a61: $00

jr_0b5_4a62:
    inc d                                         ; $4a62: $14
    rrca                                          ; $4a63: $0f
    ld e, l                                       ; $4a64: $5d
    sbc [hl]                                      ; $4a65: $9e
    ld a, $b4                                     ; $4a66: $3e $b4
    dec h                                         ; $4a68: $25
    ld [bc], a                                    ; $4a69: $02
    db $10                                        ; $4a6a: $10
    ld c, a                                       ; $4a6b: $4f
    dec a                                         ; $4a6c: $3d
    ld a, [hl]                                    ; $4a6d: $7e
    ld a, $f6                                     ; $4a6e: $3e $f6
    ld l, l                                       ; $4a70: $6d
    ld [bc], a                                    ; $4a71: $02
    inc c                                         ; $4a72: $0c
    sbc d                                         ; $4a73: $9a
    db $10                                        ; $4a74: $10
    dec d                                         ; $4a75: $15
    ld l, [hl]                                    ; $4a76: $6e
    ret c                                         ; $4a77: $d8

    add hl, hl                                    ; $4a78: $29
    nop                                           ; $4a79: $00
    nop                                           ; $4a7a: $00
    ld de, $0012                                  ; $4a7b: $11 $12 $00
    jr nz, jr_0b5_4a89                            ; $4a7e: $20 $09

    nop                                           ; $4a80: $00
    nop                                           ; $4a81: $00
    nop                                           ; $4a82: $00
    nop                                           ; $4a83: $00
    jr nz, jr_0b5_4a89                            ; $4a84: $20 $03

    nop                                           ; $4a86: $00
    ld [bc], a                                    ; $4a87: $02
    inc l                                         ; $4a88: $2c

jr_0b5_4a89:
    ld [bc], a                                    ; $4a89: $02
    nop                                           ; $4a8a: $00
    ld [de], a                                    ; $4a8b: $12
    nop                                           ; $4a8c: $00
    cp b                                          ; $4a8d: $b8
    dec h                                         ; $4a8e: $25
    dec de                                        ; $4a8f: $1b
    nop                                           ; $4a90: $00
    nop                                           ; $4a91: $00
    inc d                                         ; $4a92: $14
    inc a                                         ; $4a93: $3c
    ld l, $be                                     ; $4a94: $2e $be
    ld b, [hl]                                    ; $4a96: $46
    ld h, [hl]                                    ; $4a97: $66
    jr nc, jr_0b5_4abc                            ; $4a98: $30 $22

    inc b                                         ; $4a9a: $04
    or l                                          ; $4a9b: $b5
    dec h                                         ; $4a9c: $25
    ld e, l                                       ; $4a9d: $5d
    ld [hl], $25                                  ; $4a9e: $36 $25
    inc a                                         ; $4aa0: $3c
    nop                                           ; $4aa1: $00
    inc c                                         ; $4aa2: $0c
    or [hl]                                       ; $4aa3: $b6
    dec h                                         ; $4aa4: $25
    ld e, l                                       ; $4aa5: $5d
    ld [hl-], a                                   ; $4aa6: $32
    ld h, [hl]                                    ; $4aa7: $66
    ld [$0000], sp                                ; $4aa8: $08 $00 $00
    sbc [hl]                                      ; $4aab: $9e
    inc c                                         ; $4aac: $0c
    ld sp, hl                                     ; $4aad: $f9
    add hl, hl                                    ; $4aae: $29
    inc c                                         ; $4aaf: $0c
    nop                                           ; $4ab0: $00
    nop                                           ; $4ab1: $00
    nop                                           ; $4ab2: $00
    ld de, $0012                                  ; $4ab3: $11 $12 $00
    jr nz, jr_0b5_4b14                            ; $4ab6: $20 $5c

    inc bc                                        ; $4ab8: $03
    nop                                           ; $4ab9: $00
    nop                                           ; $4aba: $00
    ld a, [bc]                                    ; $4abb: $0a

jr_0b5_4abc:
    nop                                           ; $4abc: $00
    nop                                           ; $4abd: $00
    jr nz, jr_0b5_4acf                            ; $4abe: $20 $0f

    nop                                           ; $4ac0: $00
    nop                                           ; $4ac1: $00
    nop                                           ; $4ac2: $00
    inc sp                                        ; $4ac3: $33
    inc b                                         ; $4ac4: $04
    inc a                                         ; $4ac5: $3c
    nop                                           ; $4ac6: $00
    ld b, $00                                     ; $4ac7: $06 $00
    nop                                           ; $4ac9: $00
    nop                                           ; $4aca: $00
    halt                                          ; $4acb: $76
    ld hl, $325d                                  ; $4acc: $21 $5d $32

jr_0b5_4acf:
    nop                                           ; $4acf: $00
    jr jr_0b5_4ad2                                ; $4ad0: $18 $00

jr_0b5_4ad2:
    nop                                           ; $4ad2: $00
    or [hl]                                       ; $4ad3: $b6
    dec h                                         ; $4ad4: $25
    rra                                           ; $4ad5: $1f
    dec e                                         ; $4ad6: $1d
    ld c, $00                                     ; $4ad7: $0e $00
    nop                                           ; $4ad9: $00
    nop                                           ; $4ada: $00
    sub [hl]                                      ; $4adb: $96
    dec h                                         ; $4adc: $25
    rrca                                          ; $4add: $0f
    nop                                           ; $4ade: $00
    ld a, [hl]                                    ; $4adf: $7e
    dec h                                         ; $4ae0: $25
    nop                                           ; $4ae1: $00
    nop                                           ; $4ae2: $00
    dec sp                                        ; $4ae3: $3b
    inc b                                         ; $4ae4: $04
    ld a, h                                       ; $4ae5: $7c
    dec h                                         ; $4ae6: $25
    ld a, [bc]                                    ; $4ae7: $0a
    nop                                           ; $4ae8: $00
    nop                                           ; $4ae9: $00
    nop                                           ; $4aea: $00
    ld e, h                                       ; $4aeb: $5c
    inc bc                                        ; $4aec: $03
    nop                                           ; $4aed: $00
    jr nz, jr_0b5_4af3                            ; $4aee: $20 $03

    nop                                           ; $4af0: $00
    nop                                           ; $4af1: $00
    nop                                           ; $4af2: $00

jr_0b5_4af3:
    dec c                                         ; $4af3: $0d
    nop                                           ; $4af4: $00
    nop                                           ; $4af5: $00
    jr nz, jr_0b5_4af8                            ; $4af6: $20 $00

jr_0b5_4af8:
    ld [$0002], sp                                ; $4af8: $08 $02 $00
    ld a, [hl-]                                   ; $4afb: $3a
    inc b                                         ; $4afc: $04
    rra                                           ; $4afd: $1f
    add hl, de                                    ; $4afe: $19
    dec c                                         ; $4aff: $0d
    nop                                           ; $4b00: $00
    nop                                           ; $4b01: $00
    nop                                           ; $4b02: $00
    ld [de], a                                    ; $4b03: $12
    nop                                           ; $4b04: $00
    or [hl]                                       ; $4b05: $b6
    dec h                                         ; $4b06: $25
    ld a, [$0018]                                 ; $4b07: $fa $18 $00
    nop                                           ; $4b0a: $00
    ld e, h                                       ; $4b0b: $5c
    ld hl, $000e                                  ; $4b0c: $21 $0e $00
    inc c                                         ; $4b0f: $0c
    dec b                                         ; $4b10: $05
    ld bc, $ff00                                  ; $4b11: $01 $00 $ff

jr_0b5_4b14:
    ld sp, $000d                                  ; $4b14: $31 $0d $00
    ld c, d                                       ; $4b17: $4a
    add hl, de                                    ; $4b18: $19
    ld [bc], a                                    ; $4b19: $02
    nop                                           ; $4b1a: $00
    dec de                                        ; $4b1b: $1b
    nop                                           ; $4b1c: $00
    ld a, h                                       ; $4b1d: $7c
    dec h                                         ; $4b1e: $25
    ld c, $00                                     ; $4b1f: $0e $00
    nop                                           ; $4b21: $00
    nop                                           ; $4b22: $00
    ld de, $0012                                  ; $4b23: $11 $12 $00
    jr nz, jr_0b5_4b29                            ; $4b26: $20 $01

    nop                                           ; $4b28: $00

jr_0b5_4b29:
    nop                                           ; $4b29: $00
    nop                                           ; $4b2a: $00
    nop                                           ; $4b2b: $00
    jr nz, jr_0b5_4b34                            ; $4b2c: $20 $06

    nop                                           ; $4b2e: $00
    ld a, [$0318]                                 ; $4b2f: $fa $18 $03
    nop                                           ; $4b32: $00
    ld c, l                                       ; $4b33: $4d

jr_0b5_4b34:
    inc b                                         ; $4b34: $04
    ld a, [de]                                    ; $4b35: $1a
    nop                                           ; $4b36: $00
    inc sp                                        ; $4b37: $33
    inc b                                         ; $4b38: $04
    ld [bc], a                                    ; $4b39: $02
    nop                                           ; $4b3a: $00
    rra                                           ; $4b3b: $1f
    dec e                                         ; $4b3c: $1d
    ld c, $00                                     ; $4b3d: $0e $00
    ld e, a                                       ; $4b3f: $5f
    ld a, [hl-]                                   ; $4b40: $3a
    ld [bc], a                                    ; $4b41: $02
    nop                                           ; $4b42: $00
    dec [hl]                                      ; $4b43: $35
    inc b                                         ; $4b44: $04
    jp nc, $5f21                                  ; $4b45: $d2 $21 $5f

    ld hl, $0003                                  ; $4b48: $21 $03 $00
    ccf                                           ; $4b4b: $3f
    inc b                                         ; $4b4c: $04
    ld c, a                                       ; $4b4d: $4f
    inc b                                         ; $4b4e: $04
    ld e, a                                       ; $4b4f: $5f
    ld a, $00                                     ; $4b50: $3e $00
    nop                                           ; $4b52: $00
    jr jr_0b5_4b55                                ; $4b53: $18 $00

jr_0b5_4b55:
    ld a, [hl]                                    ; $4b55: $7e
    dec h                                         ; $4b56: $25
    ld a, [bc]                                    ; $4b57: $0a
    nop                                           ; $4b58: $00
    nop                                           ; $4b59: $00
    jr nz, jr_0b5_4b6d                            ; $4b5a: $20 $11

    ld [de], a                                    ; $4b5c: $12
    ld e, h                                       ; $4b5d: $5c
    inc bc                                        ; $4b5e: $03
    ld a, [bc]                                    ; $4b5f: $0a
    nop                                           ; $4b60: $00
    nop                                           ; $4b61: $00
    jr nz, jr_0b5_4b83                            ; $4b62: $20 $1f

    dec e                                         ; $4b64: $1d
    ld c, $00                                     ; $4b65: $0e $00
    ld e, a                                       ; $4b67: $5f
    ld a, [hl-]                                   ; $4b68: $3a
    nop                                           ; $4b69: $00
    nop                                           ; $4b6a: $00
    rst $38                                       ; $4b6b: $ff
    ld [hl], a                                    ; $4b6c: $77

jr_0b5_4b6d:
    rrca                                          ; $4b6d: $0f
    nop                                           ; $4b6e: $00
    cp c                                          ; $4b6f: $b9
    inc c                                         ; $4b70: $0c
    ld bc, $3f00                                  ; $4b71: $01 $00 $3f
    dec e                                         ; $4b74: $1d
    dec c                                         ; $4b75: $0d
    nop                                           ; $4b76: $00
    cp a                                          ; $4b77: $bf
    ld b, [hl]                                    ; $4b78: $46
    ld b, e                                       ; $4b79: $43
    inc b                                         ; $4b7a: $04
    ld [hl], d                                    ; $4b7b: $72
    inc c                                         ; $4b7c: $0c
    reti                                          ; $4b7d: $d9


    add hl, hl                                    ; $4b7e: $29
    ld a, [hl]                                    ; $4b7f: $7e
    inc c                                         ; $4b80: $0c
    ld [bc], a                                    ; $4b81: $02
    nop                                           ; $4b82: $00

jr_0b5_4b83:
    add hl, de                                    ; $4b83: $19
    nop                                           ; $4b84: $00
    sbc d                                         ; $4b85: $9a
    ld hl, $04a9                                  ; $4b86: $21 $a9 $04
    ld bc, $9c00                                  ; $4b89: $01 $00 $9c
    add hl, hl                                    ; $4b8c: $29
    stop                                          ; $4b8d: $10 $00
    ld e, h                                       ; $4b8f: $5c
    inc bc                                        ; $4b90: $03
    nop                                           ; $4b91: $00
    jr nz, @-$62                                  ; $4b92: $20 $9c

    add hl, hl                                    ; $4b94: $29
    stop                                          ; $4b95: $10 $00
    ld e, h                                       ; $4b97: $5c
    inc bc                                        ; $4b98: $03
    nop                                           ; $4b99: $00
    jr nz, @+$41                                  ; $4b9a: $20 $3f

    dec e                                         ; $4b9c: $1d
    dec c                                         ; $4b9d: $0d
    nop                                           ; $4b9e: $00
    cp a                                          ; $4b9f: $bf
    ld b, [hl]                                    ; $4ba0: $46
    nop                                           ; $4ba1: $00
    inc b                                         ; $4ba2: $04
    cp [hl]                                       ; $4ba3: $be
    scf                                           ; $4ba4: $37
    ld l, $09                                     ; $4ba5: $2e $09
    rst $38                                       ; $4ba7: $ff
    ld l, e                                       ; $4ba8: $6b
    nop                                           ; $4ba9: $00
    nop                                           ; $4baa: $00
    or a                                          ; $4bab: $b7
    inc c                                         ; $4bac: $0c
    sbc $31                                       ; $4bad: $de $31
    adc l                                         ; $4baf: $8d
    db $10                                        ; $4bb0: $10
    inc hl                                        ; $4bb1: $23
    nop                                           ; $4bb2: $00
    adc a                                         ; $4bb3: $8f
    add hl, de                                    ; $4bb4: $19
    db $fd                                        ; $4bb5: $fd
    ld [hl], $37                                  ; $4bb6: $36 $37
    inc b                                         ; $4bb8: $04
    inc hl                                        ; $4bb9: $23
    nop                                           ; $4bba: $00
    add hl, sp                                    ; $4bbb: $39
    ld l, $ac                                     ; $4bbc: $2e $ac
    inc b                                         ; $4bbe: $04
    ld [hl], $04                                  ; $4bbf: $36 $04
    nop                                           ; $4bc1: $00
    inc b                                         ; $4bc2: $04
    ld a, a                                       ; $4bc3: $7f
    ld [hl-], a                                   ; $4bc4: $32
    or l                                          ; $4bc5: $b5
    inc b                                         ; $4bc6: $04
    rst $38                                       ; $4bc7: $ff
    ld l, a                                       ; $4bc8: $6f
    nop                                           ; $4bc9: $00
    jr nz, @+$81                                  ; $4bca: $20 $7f

    ld [hl-], a                                   ; $4bcc: $32
    or l                                          ; $4bcd: $b5
    inc b                                         ; $4bce: $04
    rst $38                                       ; $4bcf: $ff
    ld l, a                                       ; $4bd0: $6f
    nop                                           ; $4bd1: $00
    jr nz, @-$47                                  ; $4bd2: $20 $b7

    inc c                                         ; $4bd4: $0c
    sbc $31                                       ; $4bd5: $de $31
    adc l                                         ; $4bd7: $8d
    db $10                                        ; $4bd8: $10
    ld bc, $7908                                  ; $4bd9: $01 $08 $79
    ld l, $ff                                     ; $4bdc: $2e $ff
    ld h, e                                       ; $4bde: $63
    ld a, l                                       ; $4bdf: $7d
    rrca                                          ; $4be0: $0f
    ld bc, $4f00                                  ; $4be1: $01 $00 $4f
    ld hl, $31df                                  ; $4be4: $21 $df $31
    inc a                                         ; $4be7: $3c
    inc b                                         ; $4be8: $04
    nop                                           ; $4be9: $00
    nop                                           ; $4bea: $00
    ld de, $5312                                  ; $4beb: $11 $12 $53
    ld c, $74                                     ; $4bee: $0e $74

jr_0b5_4bf0:
    ld c, $00                                     ; $4bf0: $0e $00
    nop                                           ; $4bf2: $00
    ld de, $5c12                                  ; $4bf3: $11 $12 $5c
    inc bc                                        ; $4bf6: $03
    cp [hl]                                       ; $4bf7: $be
    dec hl                                        ; $4bf8: $2b
    nop                                           ; $4bf9: $00
    ld [$0b3b], sp                                ; $4bfa: $08 $3b $0b
    cp [hl]                                       ; $4bfd: $be
    ld b, a                                       ; $4bfe: $47
    rst $38                                       ; $4bff: $ff
    ld [hl], e                                    ; $4c00: $73
    nop                                           ; $4c01: $00
    jr nz, jr_0b5_4c3f                            ; $4c02: $20 $3b

    dec bc                                        ; $4c04: $0b
    cp [hl]                                       ; $4c05: $be
    ld b, a                                       ; $4c06: $47
    rst $38                                       ; $4c07: $ff
    ld [hl], e                                    ; $4c08: $73
    nop                                           ; $4c09: $00
    jr nz, @+$51                                  ; $4c0a: $20 $4f

    ld hl, $31df                                  ; $4c0c: $21 $df $31
    inc a                                         ; $4c0f: $3c
    inc b                                         ; $4c10: $04
    nop                                           ; $4c11: $00
    jr nz, @+$55                                  ; $4c12: $20 $53

    ld [de], a                                    ; $4c14: $12
    sbc $57                                       ; $4c15: $de $57
    ld a, l                                       ; $4c17: $7d
    rlca                                          ; $4c18: $07
    ld de, $be12                                  ; $4c19: $11 $12 $be
    ld b, a                                       ; $4c1c: $47
    ld a, h                                       ; $4c1d: $7c
    dec bc                                        ; $4c1e: $0b
    rst $38                                       ; $4c1f: $ff
    ld l, a                                       ; $4c20: $6f
    ld de, $7412                                  ; $4c21: $11 $12 $74
    ld c, $b6                                     ; $4c24: $0e $b6
    ld a, [bc]                                    ; $4c26: $0a
    ld [hl-], a                                   ; $4c27: $32
    ld [de], a                                    ; $4c28: $12
    rst $10                                       ; $4c29: $d7
    ld b, $be                                     ; $4c2a: $06 $be
    dec sp                                        ; $4c2c: $3b

jr_0b5_4c2d:
    rst $38                                       ; $4c2d: $ff
    ld l, a                                       ; $4c2e: $6f
    ld a, l                                       ; $4c2f: $7d
    dec bc                                        ; $4c30: $0b
    nop                                           ; $4c31: $00
    jr nz, jr_0b5_4c87                            ; $4c32: $20 $53

    ld a, [bc]                                    ; $4c34: $0a

jr_0b5_4c35:
    sbc $53                                       ; $4c35: $de $53
    ld a, l                                       ; $4c37: $7d
    dec bc                                        ; $4c38: $0b
    nop                                           ; $4c39: $00
    jr nz, jr_0b5_4c8f                            ; $4c3a: $20 $53

    ld a, [bc]                                    ; $4c3c: $0a
    sbc $53                                       ; $4c3d: $de $53

jr_0b5_4c3f:
    ld a, l                                       ; $4c3f: $7d
    dec bc                                        ; $4c40: $0b
    nop                                           ; $4c41: $00
    jr nz, jr_0b5_4c44                            ; $4c42: $20 $00

jr_0b5_4c44:
    jr nz, jr_0b5_4c5e                            ; $4c44: $20 $18

    ld [hl], a                                    ; $4c46: $77
    ld c, b                                       ; $4c47: $48
    ld b, l                                       ; $4c48: $45
    nop                                           ; $4c49: $00
    jr nz, jr_0b5_4c4c                            ; $4c4a: $20 $00

jr_0b5_4c4c:
    jr nz, jr_0b5_4c66                            ; $4c4c: $20 $18

    ld [hl], a                                    ; $4c4e: $77
    ld c, b                                       ; $4c4f: $48
    ld b, l                                       ; $4c50: $45
    nop                                           ; $4c51: $00
    jr nz, jr_0b5_4c79                            ; $4c52: $20 $25

    inc b                                         ; $4c54: $04
    jr jr_0b5_4cce                                ; $4c55: $18 $77

    ld c, b                                       ; $4c57: $48
    ld b, l                                       ; $4c58: $45
    nop                                           ; $4c59: $00
    jr nz, jr_0b5_4bf0                            ; $4c5a: $20 $94

    ld [hl], d                                    ; $4c5c: $72
    sbc h                                         ; $4c5d: $9c

jr_0b5_4c5e:
    ld a, e                                       ; $4c5e: $7b
    cp l                                          ; $4c5f: $bd
    ld a, e                                       ; $4c60: $7b
    nop                                           ; $4c61: $00
    inc e                                         ; $4c62: $1c
    ld [bc], a                                    ; $4c63: $02
    nop                                           ; $4c64: $00
    nop                                           ; $4c65: $00

jr_0b5_4c66:
    jr nz, @-$41                                  ; $4c66: $20 $bd

    ld a, e                                       ; $4c68: $7b
    nop                                           ; $4c69: $00
    jr nz, jr_0b5_4c6e                            ; $4c6a: $20 $02

    nop                                           ; $4c6c: $00
    nop                                           ; $4c6d: $00

jr_0b5_4c6e:
    jr nz, jr_0b5_4c2d                            ; $4c6e: $20 $bd

    ld a, e                                       ; $4c70: $7b

jr_0b5_4c71:
    nop                                           ; $4c71: $00
    jr nz, jr_0b5_4c76                            ; $4c72: $20 $02

    nop                                           ; $4c74: $00
    nop                                           ; $4c75: $00

jr_0b5_4c76:
    jr nz, jr_0b5_4c35                            ; $4c76: $20 $bd

    ld a, e                                       ; $4c78: $7b

jr_0b5_4c79:
    nop                                           ; $4c79: $00
    jr nz, @+$27                                  ; $4c7a: $20 $25

    inc b                                         ; $4c7c: $04
    jr jr_0b5_4cf6                                ; $4c7d: $18 $77

    ld c, b                                       ; $4c7f: $48
    ld b, l                                       ; $4c80: $45
    nop                                           ; $4c81: $00
    jr nz, @+$27                                  ; $4c82: $20 $25

    inc b                                         ; $4c84: $04
    jr jr_0b5_4cfe                                ; $4c85: $18 $77

jr_0b5_4c87:
    ld c, b                                       ; $4c87: $48
    ld b, l                                       ; $4c88: $45
    nop                                           ; $4c89: $00
    jr nz, jr_0b5_4cfe                            ; $4c8a: $20 $72

    inc c                                         ; $4c8c: $0c
    dec h                                         ; $4c8d: $25
    inc b                                         ; $4c8e: $04

jr_0b5_4c8f:
    sbc b                                         ; $4c8f: $98
    stop                                          ; $4c90: $10 $00
    nop                                           ; $4c92: $00
    ld l, d                                       ; $4c93: $6a
    ld d, c                                       ; $4c94: $51
    sub h                                         ; $4c95: $94
    ld [hl], d                                    ; $4c96: $72
    dec h                                         ; $4c97: $25
    inc b                                         ; $4c98: $04
    inc bc                                        ; $4c99: $03
    nop                                           ; $4c9a: $00
    call $9859                                    ; $4c9b: $cd $59 $98
    stop                                          ; $4c9e: $10 $00
    jr nz, jr_0b5_4ca2                            ; $4ca0: $20 $00

jr_0b5_4ca2:
    jr nz, jr_0b5_4c71                            ; $4ca2: $20 $cd

    ld e, c                                       ; $4ca4: $59
    sbc b                                         ; $4ca5: $98
    stop                                          ; $4ca6: $10 $00
    jr nz, jr_0b5_4caa                            ; $4ca8: $20 $00

jr_0b5_4caa:
    jr nz, jr_0b5_4c79                            ; $4caa: $20 $cd

    ld e, c                                       ; $4cac: $59
    sbc b                                         ; $4cad: $98
    stop                                          ; $4cae: $10 $00
    jr nz, jr_0b5_4cb2                            ; $4cb0: $20 $00

jr_0b5_4cb2:
    jr nz, jr_0b5_4d26                            ; $4cb2: $20 $72

    inc c                                         ; $4cb4: $0c
    dec h                                         ; $4cb5: $25
    inc b                                         ; $4cb6: $04
    sbc b                                         ; $4cb7: $98
    stop                                          ; $4cb8: $10 $00
    jr nz, jr_0b5_4d2e                            ; $4cba: $20 $72

    inc c                                         ; $4cbc: $0c
    dec h                                         ; $4cbd: $25
    inc b                                         ; $4cbe: $04
    sbc b                                         ; $4cbf: $98
    db $10                                        ; $4cc0: $10

jr_0b5_4cc1:
    inc bc                                        ; $4cc1: $03
    ld [$0c71], sp                                ; $4cc2: $08 $71 $0c
    dec hl                                        ; $4cc5: $2b
    inc b                                         ; $4cc6: $04
    rst $18                                       ; $4cc7: $df
    jr @+$23                                      ; $4cc8: $18 $21

    nop                                           ; $4cca: $00
    daa                                           ; $4ccb: $27
    ld b, c                                       ; $4ccc: $41
    jp hl                                         ; $4ccd: $e9


jr_0b5_4cce:
    ld e, $29                                     ; $4cce: $1e $29
    ld e, d                                       ; $4cd0: $5a
    inc b                                         ; $4cd1: $04
    ld [$3d05], sp                                ; $4cd2: $08 $05 $3d
    ld c, a                                       ; $4cd5: $4f
    ld [$4dac], sp                                ; $4cd6: $08 $ac $4d
    nop                                           ; $4cd9: $00
    jr nz, @+$27                                  ; $4cda: $20 $25

    inc b                                         ; $4cdc: $04
    ld c, a                                       ; $4cdd: $4f
    ld [$4dac], sp                                ; $4cde: $08 $ac $4d
    nop                                           ; $4ce1: $00
    jr nz, @+$27                                  ; $4ce2: $20 $25

    inc b                                         ; $4ce4: $04
    ld c, a                                       ; $4ce5: $4f
    ld [$4dac], sp                                ; $4ce6: $08 $ac $4d
    nop                                           ; $4ce9: $00
    jr nz, jr_0b5_4d5d                            ; $4cea: $20 $71

    inc c                                         ; $4cec: $0c
    dec hl                                        ; $4ced: $2b
    inc b                                         ; $4cee: $04
    rst $18                                       ; $4cef: $df
    jr jr_0b5_4cf2                                ; $4cf0: $18 $00

jr_0b5_4cf2:
    jr nz, jr_0b5_4d65                            ; $4cf2: $20 $71

    inc c                                         ; $4cf4: $0c
    dec hl                                        ; $4cf5: $2b

jr_0b5_4cf6:
    inc b                                         ; $4cf6: $04
    rst $18                                       ; $4cf7: $df
    jr jr_0b5_4d1d                                ; $4cf8: $18 $23

    nop                                           ; $4cfa: $00
    ld [hl], e                                    ; $4cfb: $73
    inc c                                         ; $4cfc: $0c
    cp l                                          ; $4cfd: $bd

jr_0b5_4cfe:
    inc d                                         ; $4cfe: $14
    ld c, l                                       ; $4cff: $4d
    ld [$0481], sp                                ; $4d00: $08 $81 $04
    add hl, hl                                    ; $4d03: $29
    ld e, d                                       ; $4d04: $5a
    jp hl                                         ; $4d05: $e9


    ld e, $c3                                     ; $4d06: $1e $c3
    ld de, $0000                                  ; $4d08: $11 $00 $00
    db $dd                                        ; $4d0b: $dd
    jr jr_0b5_4cc1                                ; $4d0c: $18 $b3

    ld h, d                                       ; $4d0e: $62
    ld a, [hl+]                                   ; $4d0f: $2a
    inc b                                         ; $4d10: $04
    nop                                           ; $4d11: $00
    jr nz, jr_0b5_4d39                            ; $4d12: $20 $25

    inc b                                         ; $4d14: $04
    or e                                          ; $4d15: $b3
    ld h, d                                       ; $4d16: $62
    ld a, [hl+]                                   ; $4d17: $2a
    inc b                                         ; $4d18: $04
    nop                                           ; $4d19: $00
    jr nz, jr_0b5_4d41                            ; $4d1a: $20 $25

    inc b                                         ; $4d1c: $04

jr_0b5_4d1d:
    or e                                          ; $4d1d: $b3
    ld h, d                                       ; $4d1e: $62
    ld a, [hl+]                                   ; $4d1f: $2a
    inc b                                         ; $4d20: $04
    nop                                           ; $4d21: $00
    jr nz, jr_0b5_4d97                            ; $4d22: $20 $73

    inc c                                         ; $4d24: $0c
    cp l                                          ; $4d25: $bd

jr_0b5_4d26:
    inc d                                         ; $4d26: $14
    ld c, l                                       ; $4d27: $4d
    ld [$2000], sp                                ; $4d28: $08 $00 $20
    ld [hl], e                                    ; $4d2b: $73
    inc c                                         ; $4d2c: $0c
    cp l                                          ; $4d2d: $bd

jr_0b5_4d2e:
    inc d                                         ; $4d2e: $14
    ld c, l                                       ; $4d2f: $4d
    ld [$0023], sp                                ; $4d30: $08 $23 $00
    ld c, [hl]                                    ; $4d33: $4e
    ld e, [hl]                                    ; $4d34: $5e
    ld [hl], d                                    ; $4d35: $72
    inc c                                         ; $4d36: $0c
    cp [hl]                                       ; $4d37: $be
    inc d                                         ; $4d38: $14

jr_0b5_4d39:
    add c                                         ; $4d39: $81
    ld [$5a29], sp                                ; $4d3a: $08 $29 $5a
    jp hl                                         ; $4d3d: $e9


    ld e, $c4                                     ; $4d3e: $1e $c4
    dec c                                         ; $4d40: $0d

jr_0b5_4d41:
    rlca                                          ; $4d41: $07
    inc b                                         ; $4d42: $04
    add hl, hl                                    ; $4d43: $29
    ld e, d                                       ; $4d44: $5a
    sbc c                                         ; $4d45: $99
    db $10                                        ; $4d46: $10
    dec h                                         ; $4d47: $25
    ld de, $0004                                  ; $4d48: $11 $04 $00
    sbc c                                         ; $4d4b: $99
    db $10                                        ; $4d4c: $10
    sbc $7f                                       ; $4d4d: $de $7f
    nop                                           ; $4d4f: $00
    jr nz, jr_0b5_4d52                            ; $4d50: $20 $00

jr_0b5_4d52:
    jr nz, @+$73                                  ; $4d52: $20 $71

    inc c                                         ; $4d54: $0c
    dec h                                         ; $4d55: $25
    inc b                                         ; $4d56: $04
    cp [hl]                                       ; $4d57: $be
    inc d                                         ; $4d58: $14
    nop                                           ; $4d59: $00
    jr nz, jr_0b5_4daa                            ; $4d5a: $20 $4e

    ld e, [hl]                                    ; $4d5c: $5e

jr_0b5_4d5d:
    ld [hl], d                                    ; $4d5d: $72
    inc c                                         ; $4d5e: $0c
    cp [hl]                                       ; $4d5f: $be
    inc d                                         ; $4d60: $14
    nop                                           ; $4d61: $00
    jr nz, jr_0b5_4dd6                            ; $4d62: $20 $72

    ld e, [hl]                                    ; $4d64: $5e

jr_0b5_4d65:
    ld e, d                                       ; $4d65: $5a
    ld [hl], e                                    ; $4d66: $73
    or h                                          ; $4d67: $b4
    ld h, d                                       ; $4d68: $62
    ld b, b                                       ; $4d69: $40
    nop                                           ; $4d6a: $00
    rst $30                                       ; $4d6b: $f7
    ld l, d                                       ; $4d6c: $6a
    add hl, hl                                    ; $4d6d: $29
    ld e, d                                       ; $4d6e: $5a
    sbc $7b                                       ; $4d6f: $de $7b
    jr nz, jr_0b5_4d73                            ; $4d71: $20 $00

jr_0b5_4d73:
    ld [hl], c                                    ; $4d73: $71
    ld c, a                                       ; $4d74: $4f
    cp a                                          ; $4d75: $bf
    ld [hl-], a                                   ; $4d76: $32
    add hl, bc                                    ; $4d77: $09
    add hl, bc                                    ; $4d78: $09
    ld b, e                                       ; $4d79: $43
    inc b                                         ; $4d7a: $04
    add hl, hl                                    ; $4d7b: $29
    ld e, d                                       ; $4d7c: $5a
    sbc a                                         ; $4d7d: $9f
    ld e, a                                       ; $4d7e: $5f
    db $d3                                        ; $4d7f: $d3
    dec h                                         ; $4d80: $25
    ld [bc], a                                    ; $4d81: $02
    db $10                                        ; $4d82: $10
    jr jr_0b5_4df4                                ; $4d83: $18 $6f

    sub l                                         ; $4d85: $95
    db $10                                        ; $4d86: $10
    sbc $7b                                       ; $4d87: $de $7b
    ld bc, $2800                                  ; $4d89: $01 $00 $28
    inc b                                         ; $4d8c: $04
    nop                                           ; $4d8d: $00
    jr nz, jr_0b5_4e02                            ; $4d8e: $20 $72

    inc c                                         ; $4d90: $0c
    nop                                           ; $4d91: $00
    jr nz, @-$07                                  ; $4d92: $20 $f7

    ld l, d                                       ; $4d94: $6a
    add hl, hl                                    ; $4d95: $29
    ld e, d                                       ; $4d96: $5a

jr_0b5_4d97:
    sbc $7b                                       ; $4d97: $de $7b
    nop                                           ; $4d99: $00
    jr jr_0b5_4dcc                                ; $4d9a: $18 $30

    ld e, d                                       ; $4d9c: $5a
    sbc $7b                                       ; $4d9d: $de $7b
    or $66                                        ; $4d9f: $f6 $66
    nop                                           ; $4da1: $00
    nop                                           ; $4da2: $00
    ld c, c                                       ; $4da3: $49
    ld e, [hl]                                    ; $4da4: $5e
    jp nc, $2520                                  ; $4da5: $d2 $20 $25

    inc b                                         ; $4da8: $04
    nop                                           ; $4da9: $00

jr_0b5_4daa:
    nop                                           ; $4daa: $00
    ld l, a                                       ; $4dab: $6f
    dec sp                                        ; $4dac: $3b
    add e                                         ; $4dad: $83
    dec c                                         ; $4dae: $0d
    xor c                                         ; $4daf: $a9
    ld [$0444], sp                                ; $4db0: $08 $44 $04
    ld c, c                                       ; $4db3: $49
    ld e, [hl]                                    ; $4db4: $5e
    cp l                                          ; $4db5: $bd
    ld [hl], $52                                  ; $4db6: $36 $52
    dec c                                         ; $4db8: $0d
    ld b, b                                       ; $4db9: $40
    nop                                           ; $4dba: $00
    ld a, e                                       ; $4dbb: $7b
    ld [hl], e                                    ; $4dbc: $73
    ld a, d                                       ; $4dbd: $7a
    db $10                                        ; $4dbe: $10
    ld c, e                                       ; $4dbf: $4b
    ld [$0001], sp                                ; $4dc0: $08 $01 $00
    ld c, l                                       ; $4dc3: $4d
    ld [$2000], sp                                ; $4dc4: $08 $00 $20
    ld [hl], l                                    ; $4dc7: $75
    inc c                                         ; $4dc8: $0c
    nop                                           ; $4dc9: $00
    jr nz, jr_0b5_4e14                            ; $4dca: $20 $48

jr_0b5_4dcc:
    ld b, l                                       ; $4dcc: $45
    jp nc, $2520                                  ; $4dcd: $d2 $20 $25

    inc b                                         ; $4dd0: $04
    nop                                           ; $4dd1: $00
    ld [$4548], sp                                ; $4dd2: $08 $48 $45
    ld e, c                                       ; $4dd5: $59

jr_0b5_4dd6:
    ld [hl], e                                    ; $4dd6: $73
    inc l                                         ; $4dd7: $2c
    ld e, d                                       ; $4dd8: $5a
    and e                                         ; $4dd9: $a3
    ld [$524b], sp                                ; $4dda: $08 $4b $52
    ld d, [hl]                                    ; $4ddd: $56
    inc d                                         ; $4dde: $14
    ld e, a                                       ; $4ddf: $5f
    ld sp, $0061                                  ; $4de0: $31 $61 $00
    ld a, [hl+]                                   ; $4de3: $2a
    inc sp                                        ; $4de4: $33
    call nc, $fd1c                                ; $4de5: $d4 $1c $fd
    ld b, c                                       ; $4de8: $41

jr_0b5_4de9:
    ld b, d                                       ; $4de9: $42
    inc b                                         ; $4dea: $04
    ld c, d                                       ; $4deb: $4a
    ld e, [hl]                                    ; $4dec: $5e
    rst $30                                       ; $4ded: $f7
    add hl, de                                    ; $4dee: $19
    sbc l                                         ; $4def: $9d
    ld c, d                                       ; $4df0: $4a
    ld h, d                                       ; $4df1: $62
    inc b                                         ; $4df2: $04
    adc d                                         ; $4df3: $8a

jr_0b5_4df4:
    ld b, [hl]                                    ; $4df4: $46
    sbc d                                         ; $4df5: $9a
    db $10                                        ; $4df6: $10
    and h                                         ; $4df7: $a4
    add hl, de                                    ; $4df8: $19
    nop                                           ; $4df9: $00
    jr nz, jr_0b5_4e70                            ; $4dfa: $20 $74

    inc c                                         ; $4dfc: $0c
    ld h, $04                                     ; $4dfd: $26 $04
    rst $38                                       ; $4dff: $ff
    inc e                                         ; $4e00: $1c
    nop                                           ; $4e01: $00

jr_0b5_4e02:
    jr nz, jr_0b5_4de9                            ; $4e02: $20 $e5

    inc a                                         ; $4e04: $3c
    adc e                                         ; $4e05: $8b
    ld c, c                                       ; $4e06: $49
    daa                                           ; $4e07: $27

jr_0b5_4e08:
    ld b, c                                       ; $4e08: $41
    dec h                                         ; $4e09: $25
    inc b                                         ; $4e0a: $04
    ld c, l                                       ; $4e0b: $4d
    ld e, d                                       ; $4e0c: $5a
    sbc c                                         ; $4e0d: $99
    db $10                                        ; $4e0e: $10
    and h                                         ; $4e0f: $a4
    add hl, de                                    ; $4e10: $19
    ld hl, $8b00                                  ; $4e11: $21 $00 $8b

jr_0b5_4e14:
    dec sp                                        ; $4e14: $3b
    rla                                           ; $4e15: $17
    inc b                                         ; $4e16: $04
    ld a, [$016b]                                 ; $4e17: $fa $6b $01
    nop                                           ; $4e1a: $00
    ld c, l                                       ; $4e1b: $4d
    inc sp                                        ; $4e1c: $33
    adc d                                         ; $4e1d: $8a
    ld [$0121], sp                                ; $4e1e: $08 $21 $01
    ld b, e                                       ; $4e21: $43
    nop                                           ; $4e22: $00
    ld d, a                                       ; $4e23: $57
    dec l                                         ; $4e24: $2d
    ld a, [de]                                    ; $4e25: $1a
    ld d, e                                       ; $4e26: $53
    ld [hl-], a                                   ; $4e27: $32
    inc b                                         ; $4e28: $04
    nop                                           ; $4e29: $00
    nop                                           ; $4e2a: $00
    ld l, e                                       ; $4e2b: $6b
    ld h, d                                       ; $4e2c: $62
    rst $18                                       ; $4e2d: $df
    jr jr_0b5_4e55                                ; $4e2e: $18 $25

    inc b                                         ; $4e30: $04
    inc bc                                        ; $4e31: $03
    nop                                           ; $4e32: $00
    ld c, l                                       ; $4e33: $4d
    ld [$2000], sp                                ; $4e34: $08 $00 $20
    rst $18                                       ; $4e37: $df
    jr @+$03                                      ; $4e38: $18 $01

    jr jr_0b5_4e08                                ; $4e3a: $18 $cc

    ld d, l                                       ; $4e3c: $55
    daa                                           ; $4e3d: $27
    ld b, c                                       ; $4e3e: $41
    sub h                                         ; $4e3f: $94
    ld l, [hl]                                    ; $4e40: $6e
    ld h, d                                       ; $4e41: $62
    inc b                                         ; $4e42: $04
    adc l                                         ; $4e43: $8d
    ld h, d                                       ; $4e44: $62
    cp h                                          ; $4e45: $bc
    inc d                                         ; $4e46: $14
    ld c, a                                       ; $4e47: $4f
    ld [$0001], sp                                ; $4e48: $08 $01 $00
    and a                                         ; $4e4b: $a7
    ld a, [hl+]                                   ; $4e4c: $2a
    ld e, a                                       ; $4e4d: $5f
    add hl, hl                                    ; $4e4e: $29
    ld l, $04                                     ; $4e4f: $2e $04
    jr nz, jr_0b5_4e53                            ; $4e51: $20 $00

jr_0b5_4e53:
    ld c, b                                       ; $4e53: $48
    ld a, [de]                                    ; $4e54: $1a

jr_0b5_4e55:
    add $08                                       ; $4e55: $c6 $08
    ld [hl], b                                    ; $4e57: $70
    ld hl, $0000                                  ; $4e58: $21 $00 $00
    ld [hl], h                                    ; $4e5b: $74
    add hl, de                                    ; $4e5c: $19
    ld c, e                                       ; $4e5d: $4b
    inc b                                         ; $4e5e: $04
    ld c, a                                       ; $4e5f: $4f
    dec sp                                        ; $4e60: $3b
    ld hl, $8d04                                  ; $4e61: $21 $04 $8d
    ld h, d                                       ; $4e64: $62
    sub e                                         ; $4e65: $93
    ld c, e                                       ; $4e66: $4b
    dec h                                         ; $4e67: $25
    inc b                                         ; $4e68: $04
    inc bc                                        ; $4e69: $03
    nop                                           ; $4e6a: $00
    daa                                           ; $4e6b: $27
    ld b, c                                       ; $4e6c: $41
    nop                                           ; $4e6d: $00
    jr nz, @+$12                                  ; $4e6e: $20 $10

jr_0b5_4e70:
    ld h, [hl]                                    ; $4e70: $66
    ld bc, $4904                                  ; $4e71: $01 $04 $49
    ld c, l                                       ; $4e74: $4d
    ld e, e                                       ; $4e75: $5b
    ld [hl], a                                    ; $4e76: $77
    ld l, a                                       ; $4e77: $6f
    ld h, [hl]                                    ; $4e78: $66
    ld h, d                                       ; $4e79: $62
    inc b                                         ; $4e7a: $04
    adc l                                         ; $4e7b: $8d
    ld h, [hl]                                    ; $4e7c: $66
    ld c, l                                       ; $4e7d: $4d
    ld [$18db], sp                                ; $4e7e: $08 $db $18
    inc hl                                        ; $4e81: $23
    nop                                           ; $4e82: $00
    ld c, l                                       ; $4e83: $4d
    cpl                                           ; $4e84: $2f
    ld a, [hl]                                    ; $4e85: $7e
    inc d                                         ; $4e86: $14
    jp nz, $8309                                  ; $4e87: $c2 $09 $83

    nop                                           ; $4e8a: $00
    di                                            ; $4e8b: $f3
    ld h, [hl]                                    ; $4e8c: $66
    ld sp, $0015                                  ; $4e8d: $31 $15 $00
    jr z, jr_0b5_4e93                             ; $4e90: $28 $01

    nop                                           ; $4e92: $00

jr_0b5_4e93:
    inc l                                         ; $4e93: $2c
    inc sp                                        ; $4e94: $33
    cp $4a                                        ; $4e95: $fe $4a
    ld [hl], l                                    ; $4e97: $75
    add hl, de                                    ; $4e98: $19
    nop                                           ; $4e99: $00
    nop                                           ; $4e9a: $00
    ld l, l                                       ; $4e9b: $6d
    ld [hl-], a                                   ; $4e9c: $32
    xor [hl]                                      ; $4e9d: $ae
    ld h, [hl]                                    ; $4e9e: $66
    inc b                                         ; $4e9f: $04
    dec c                                         ; $4ea0: $0d
    nop                                           ; $4ea1: $00
    nop                                           ; $4ea2: $00
    ld l, [hl]                                    ; $4ea3: $6e
    ld h, [hl]                                    ; $4ea4: $66
    sbc h                                         ; $4ea5: $9c
    ld a, e                                       ; $4ea6: $7b
    nop                                           ; $4ea7: $00
    jr nz, jr_0b5_4eab                            ; $4ea8: $20 $01

    nop                                           ; $4eaa: $00

jr_0b5_4eab:
    or b                                          ; $4eab: $b0
    ld h, [hl]                                    ; $4eac: $66
    cp l                                          ; $4ead: $bd
    ld a, e                                       ; $4eae: $7b
    ld c, [hl]                                    ; $4eaf: $4e
    ld [$0400], sp                                ; $4eb0: $08 $00 $04
    xor [hl]                                      ; $4eb3: $ae
    ld h, [hl]                                    ; $4eb4: $66
    sbc $18                                       ; $4eb5: $de $18
    ld h, $04                                     ; $4eb7: $26 $04
    ld h, b                                       ; $4eb9: $60
    nop                                           ; $4eba: $00
    add hl, bc                                    ; $4ebb: $09
    inc hl                                        ; $4ebc: $23
    ld c, l                                       ; $4ebd: $4d
    ld [$225d], sp                                ; $4ebe: $08 $5d $22
    ld b, h                                       ; $4ec1: $44
    inc b                                         ; $4ec2: $04
    rst $38                                       ; $4ec3: $ff
    ld c, [hl]                                    ; $4ec4: $4e
    ld d, e                                       ; $4ec5: $53
    dec d                                         ; $4ec6: $15
    sbc a                                         ; $4ec7: $9f
    ld h, a                                       ; $4ec8: $67
    ld [hl+], a                                   ; $4ec9: $22
    inc b                                         ; $4eca: $04
    ret                                           ; $4ecb: $c9


    ld [hl+], a                                   ; $4ecc: $22
    sbc h                                         ; $4ecd: $9c
    ld h, e                                       ; $4ece: $63
    jr c, jr_0b5_4f03                             ; $4ecf: $38 $32

    nop                                           ; $4ed1: $00
    nop                                           ; $4ed2: $00
    rst $08                                       ; $4ed3: $cf
    ld h, [hl]                                    ; $4ed4: $66
    jp nz, $2108                                  ; $4ed5: $c2 $08 $21

    inc b                                         ; $4ed8: $04
    nop                                           ; $4ed9: $00
    inc e                                         ; $4eda: $1c
    or b                                          ; $4edb: $b0
    ld l, d                                       ; $4edc: $6a
    ld b, $41                                     ; $4edd: $06 $41

jr_0b5_4edf:
    ld a, e                                       ; $4edf: $7b
    ld a, e                                       ; $4ee0: $7b
    ld bc, $1008                                  ; $4ee1: $01 $08 $10
    ld h, [hl]                                    ; $4ee4: $66
    jr jr_0b5_4f5e                                ; $4ee5: $18 $77

    rst $08                                       ; $4ee7: $cf
    ld l, d                                       ; $4ee8: $6a
    dec h                                         ; $4ee9: $25
    inc b                                         ; $4eea: $04
    rst $08                                       ; $4eeb: $cf
    ld l, d                                       ; $4eec: $6a
    ld c, e                                       ; $4eed: $4b
    ld [$0850], sp                                ; $4eee: $08 $50 $08
    ld [hl+], a                                   ; $4ef1: $22
    nop                                           ; $4ef2: $00
    add a                                         ; $4ef3: $87
    ld a, [de]                                    ; $4ef4: $1a
    rst $18                                       ; $4ef5: $df
    ld [hl], $92                                  ; $4ef6: $36 $92
    dec d                                         ; $4ef8: $15
    ld h, e                                       ; $4ef9: $63
    ld [$4efd], sp                                ; $4efa: $08 $fd $4e
    rst $10                                       ; $4efd: $d7
    ld hl, $6fbf                                  ; $4efe: $21 $bf $6f

jr_0b5_4f01:
    inc h                                         ; $4f01: $24
    nop                                           ; $4f02: $00

jr_0b5_4f03:
    dec e                                         ; $4f03: $1d
    ld d, e                                       ; $4f04: $53
    ld h, c                                       ; $4f05: $61
    dec b                                         ; $4f06: $05
    jp hl                                         ; $4f07: $e9


    jr jr_0b5_4f6b                                ; $4f08: $18 $61

    inc b                                         ; $4f0a: $04
    ret nc                                        ; $4f0b: $d0

    ld l, d                                       ; $4f0c: $6a
    dec b                                         ; $4f0d: $05
    ld a, [de]                                    ; $4f0e: $1a
    ld c, e                                       ; $4f0f: $4b
    ld [$1c00], sp                                ; $4f10: $08 $00 $1c
    adc $59                                       ; $4f13: $ce $59
    push hl                                       ; $4f15: $e5
    inc a                                         ; $4f16: $3c
    ret nc                                        ; $4f17: $d0

    ld l, d                                       ; $4f18: $6a
    nop                                           ; $4f19: $00
    db $10                                        ; $4f1a: $10
    xor h                                         ; $4f1b: $ac
    ld d, l                                       ; $4f1c: $55
    ld b, $3d                                     ; $4f1d: $06 $3d
    ld a, [c]                                     ; $4f1f: $f2
    ld l, d                                       ; $4f20: $6a
    nop                                           ; $4f21: $00
    nop                                           ; $4f22: $00
    ldh a, [rOCPS]                                ; $4f23: $f0 $6a
    pop af                                        ; $4f25: $f1
    ld l, d                                       ; $4f26: $6a
    jr nz, jr_0b5_4f29                            ; $4f27: $20 $00

jr_0b5_4f29:
    ld [hl+], a                                   ; $4f29: $22
    nop                                           ; $4f2a: $00
    cp $46                                        ; $4f2b: $fe $46
    ld d, b                                       ; $4f2d: $50
    inc b                                         ; $4f2e: $04
    ld sp, $2219                                  ; $4f2f: $31 $19 $22
    inc b                                         ; $4f32: $04
    push af                                       ; $4f33: $f5
    dec l                                         ; $4f34: $2d
    inc d                                         ; $4f35: $14
    dec d                                         ; $4f36: $15
    rst $38                                       ; $4f37: $ff
    ld c, [hl]                                    ; $4f38: $4e
    ld bc, $fd00                                  ; $4f39: $01 $00 $fd

Jump_0b5_4f3c:
    ld c, d                                       ; $4f3c: $4a
    xor h                                         ; $4f3d: $ac
    jr jr_0b5_4f01                                ; $4f3e: $18 $c1

    dec b                                         ; $4f40: $05
    add c                                         ; $4f41: $81
    inc b                                         ; $4f42: $04
    pop af                                        ; $4f43: $f1
    ld l, d                                       ; $4f44: $6a
    dec b                                         ; $4f45: $05
    ld a, [de]                                    ; $4f46: $1a
    ld c, e                                       ; $4f47: $4b
    ld [$0000], sp                                ; $4f48: $08 $00 $00
    or c                                          ; $4f4b: $b1
    ld h, [hl]                                    ; $4f4c: $66
    ld h, $3d                                     ; $4f4d: $26 $3d
    nop                                           ; $4f4f: $00
    jr nz, jr_0b5_4f52                            ; $4f50: $20 $00

jr_0b5_4f52:
    nop                                           ; $4f52: $00
    ld c, b                                       ; $4f53: $48
    ld b, l                                       ; $4f54: $45
    pop de                                        ; $4f55: $d1

Jump_0b5_4f56:
    ld l, d                                       ; $4f56: $6a
    nop                                           ; $4f57: $00
    jr nz, jr_0b5_4edf                            ; $4f58: $20 $85

    ld [$4bee], sp                                ; $4f5a: $08 $ee $4b
    rla                                           ; $4f5d: $17

jr_0b5_4f5e:
    ld [$6ef1], sp                                ; $4f5e: $08 $f1 $6e
    ld [bc], a                                    ; $4f61: $02
    nop                                           ; $4f62: $00
    scf                                           ; $4f63: $37
    ld [$1620], sp                                ; $4f64: $08 $20 $16
    ld h, $0d                                     ; $4f67: $26 $0d
    ld b, d                                       ; $4f69: $42
    nop                                           ; $4f6a: $00

jr_0b5_4f6b:
    jr jr_0b5_4f9f                                ; $4f6b: $18 $32

    ccf                                           ; $4f6d: $3f
    ld d, e                                       ; $4f6e: $53
    rrca                                          ; $4f6f: $0f
    ld de, $0422                                  ; $4f70: $11 $22 $04
    cp a                                          ; $4f73: $bf
    dec [hl]                                      ; $4f74: $35
    ld d, e                                       ; $4f75: $53
    ld [$5f5e], sp                                ; $4f76: $08 $5e $5f
    inc hl                                        ; $4f79: $23
    inc b                                         ; $4f7a: $04
    ld [de], a                                    ; $4f7b: $12
    ld l, a                                       ; $4f7c: $6f
    and h                                         ; $4f7d: $a4
    add hl, de                                    ; $4f7e: $19
    jp nc, $0047                                  ; $4f7f: $d2 $47 $00

    inc e                                         ; $4f82: $1c
    db $ed                                        ; $4f83: $ed
    ld d, c                                       ; $4f84: $51
    ld e, d                                       ; $4f85: $5a
    ld [hl], e                                    ; $4f86: $73
    cp h                                          ; $4f87: $bc
    inc d                                         ; $4f88: $14
    nop                                           ; $4f89: $00
    inc d                                         ; $4f8a: $14
    ld c, b                                       ; $4f8b: $48
    ld b, l                                       ; $4f8c: $45
    ld d, c                                       ; $4f8d: $51
    ld e, d                                       ; $4f8e: $5a
    ld [de], a                                    ; $4f8f: $12
    ld l, a                                       ; $4f90: $6f
    ld l, b                                       ; $4f91: $68
    ld [$3323], sp                                ; $4f92: $08 $23 $33
    inc de                                        ; $4f95: $13
    ld l, a                                       ; $4f96: $6f
    sub $18                                       ; $4f97: $d6 $18
    jp nz, $2908                                  ; $4f99: $c2 $08 $29

    inc b                                         ; $4f9c: $04
    ld [hl+], a                                   ; $4f9d: $22
    ld [de], a                                    ; $4f9e: $12

jr_0b5_4f9f:
    db $10                                        ; $4f9f: $10
    inc b                                         ; $4fa0: $04
    ld bc, $d200                                  ; $4fa1: $01 $00 $d2
    ld hl, $3b74                                  ; $4fa4: $21 $74 $3b
    xor e                                         ; $4fa7: $ab
    ld [$0000], sp                                ; $4fa8: $08 $00 $00
    ld c, d                                       ; $4fab: $4a
    ld l, $4a                                     ; $4fac: $2e $4a
    nop                                           ; $4fae: $00
    ld d, $32                                     ; $4faf: $16 $32
    ld bc, $1300                                  ; $4fb1: $01 $00 $13
    ld l, a                                       ; $4fb4: $6f
    ld l, [hl]                                    ; $4fb5: $6e
    ld [$107b], sp                                ; $4fb6: $08 $7b $10
    nop                                           ; $4fb9: $00
    inc e                                         ; $4fba: $1c
    or l                                          ; $4fbb: $b5
    ld h, d                                       ; $4fbc: $62
    rst $18                                       ; $4fbd: $df

jr_0b5_4fbe:
    jr jr_0b5_5029                                ; $4fbe: $18 $69

    inc c                                         ; $4fc0: $0c
    nop                                           ; $4fc1: $00
    jr jr_0b5_4ff3                                ; $4fc2: $18 $2f

    ld d, [hl]                                    ; $4fc4: $56
    daa                                           ; $4fc5: $27
    ld b, c                                       ; $4fc6: $41
    dec [hl]                                      ; $4fc7: $35
    ld [hl], e                                    ; $4fc8: $73
    nop                                           ; $4fc9: $00
    nop                                           ; $4fca: $00
    inc [hl]                                      ; $4fcb: $34
    ld [hl], e                                    ; $4fcc: $73
    ld c, e                                       ; $4fcd: $4b
    ld [$7335], sp                                ; $4fce: $08 $35 $73
    nop                                           ; $4fd1: $00
    nop                                           ; $4fd2: $00
    and b                                         ; $4fd3: $a0
    nop                                           ; $4fd4: $00
    ret nz                                        ; $4fd5: $c0

    nop                                           ; $4fd6: $00
    dec [hl]                                      ; $4fd7: $35
    ld [hl], e                                    ; $4fd8: $73
    ld [bc], a                                    ; $4fd9: $02
    nop                                           ; $4fda: $00
    adc [hl]                                      ; $4fdb: $8e
    dec sp                                        ; $4fdc: $3b
    ld c, c                                       ; $4fdd: $49
    dec c                                         ; $4fde: $0d
    ld a, [de]                                    ; $4fdf: $1a
    ld a, [hl+]                                   ; $4fe0: $2a
    ld hl, $6800                                  ; $4fe1: $21 $00 $68
    ld de, $040e                                  ; $4fe4: $11 $0e $04
    add sp, $22                                   ; $4fe7: $e8 $22
    dec h                                         ; $4fe9: $25
    inc b                                         ; $4fea: $04
    inc [hl]                                      ; $4feb: $34
    ld [hl], e                                    ; $4fec: $73
    ld [hl], e                                    ; $4fed: $73
    inc c                                         ; $4fee: $0c
    sbc h                                         ; $4fef: $9c
    stop                                          ; $4ff0: $10 $00
    inc e                                         ; $4ff2: $1c

jr_0b5_4ff3:
    cp l                                          ; $4ff3: $bd
    inc d                                         ; $4ff4: $14
    or h                                          ; $4ff5: $b4
    ld h, d                                       ; $4ff6: $62
    rst $38                                       ; $4ff7: $ff
    ld a, a                                       ; $4ff8: $7f
    nop                                           ; $4ff9: $00
    nop                                           ; $4ffa: $00
    xor e                                         ; $4ffb: $ab
    ld c, l                                       ; $4ffc: $4d
    dec d                                         ; $4ffd: $15
    ld l, a                                       ; $4ffe: $6f
    nop                                           ; $4fff: $00
    jr nz, jr_0b5_5002                            ; $5000: $20 $00

jr_0b5_5002:
    nop                                           ; $5002: $00
    inc [hl]                                      ; $5003: $34
    ld [hl], e                                    ; $5004: $73
    ld d, l                                       ; $5005: $55
    ld [hl], e                                    ; $5006: $73
    dec [hl]                                      ; $5007: $35
    ld [hl], e                                    ; $5008: $73
    ld b, c                                       ; $5009: $41
    nop                                           ; $500a: $00
    jp hl                                         ; $500b: $e9


    ld e, $0a                                     ; $500c: $1e $0a
    nop                                           ; $500e: $00
    ld d, l                                       ; $500f: $55
    ld [hl], e                                    ; $5010: $73
    ld bc, $0d00                                  ; $5011: $01 $00 $0d
    cpl                                           ; $5014: $2f
    cp e                                          ; $5015: $bb
    ld h, e                                       ; $5016: $63
    or a                                          ; $5017: $b7
    dec e                                         ; $5018: $1d
    nop                                           ; $5019: $00
    nop                                           ; $501a: $00
    ld d, l                                       ; $501b: $55
    ld [hl], e                                    ; $501c: $73
    ld b, [hl]                                    ; $501d: $46
    ld a, [de]                                    ; $501e: $1a
    ei                                            ; $501f: $fb
    ld h, a                                       ; $5020: $67
    inc b                                         ; $5021: $04
    nop                                           ; $5022: $00
    ld d, l                                       ; $5023: $55
    ld [hl], e                                    ; $5024: $73
    ld c, l                                       ; $5025: $4d
    ld [$0c72], sp                                ; $5026: $08 $72 $0c

jr_0b5_5029:
    nop                                           ; $5029: $00
    inc e                                         ; $502a: $1c
    or h                                          ; $502b: $b4
    ld h, d                                       ; $502c: $62
    ld [hl], e                                    ; $502d: $73
    inc c                                         ; $502e: $0c

jr_0b5_502f:
    cp l                                          ; $502f: $bd
    ld [hl], a                                    ; $5030: $77
    nop                                           ; $5031: $00
    jr jr_0b5_4fbe                                ; $5032: $18 $8a

    ld c, c                                       ; $5034: $49
    ld a, d                                       ; $5035: $7a
    ld [hl], e                                    ; $5036: $73
    ld [hl], d                                    ; $5037: $72
    ld e, d                                       ; $5038: $5a
    jr nz, jr_0b5_503b                            ; $5039: $20 $00

jr_0b5_503b:
    adc l                                         ; $503b: $8d
    dec hl                                        ; $503c: $2b
    ld d, l                                       ; $503d: $55
    ld [hl], a                                    ; $503e: $77
    and $15                                       ; $503f: $e6 $15
    jr nz, jr_0b5_5043                            ; $5041: $20 $00

jr_0b5_5043:
    rra                                           ; $5043: $1f
    ld hl, $042c                                  ; $5044: $21 $2c $04
    ld a, [$2066]                                 ; $5047: $fa $66 $20
    nop                                           ; $504a: $00
    ld [hl], d                                    ; $504b: $72
    ld c, a                                       ; $504c: $4f
    pop af                                        ; $504d: $f1
    db $10                                        ; $504e: $10
    ld e, $4b                                     ; $504f: $1e $4b
    ld bc, $4d00                                  ; $5051: $01 $00 $4d
    scf                                           ; $5054: $37
    ei                                            ; $5055: $fb
    inc h                                         ; $5056: $24
    rra                                           ; $5057: $1f
    ld b, d                                       ; $5058: $42
    inc hl                                        ; $5059: $23
    nop                                           ; $505a: $00
    ld d, [hl]                                    ; $505b: $56
    ld [hl], a                                    ; $505c: $77
    ld l, c                                       ; $505d: $69
    ld [hl+], a                                   ; $505e: $22
    ld [hl], h                                    ; $505f: $74
    inc c                                         ; $5060: $0c
    nop                                           ; $5061: $00
    nop                                           ; $5062: $00
    rla                                           ; $5063: $17
    ld l, e                                       ; $5064: $6b
    nop                                           ; $5065: $00
    jr nz, @-$20                                  ; $5066: $20 $de

    ld a, a                                       ; $5068: $7f
    nop                                           ; $5069: $00
    inc e                                         ; $506a: $1c
    xor h                                         ; $506b: $ac
    ld c, l                                       ; $506c: $4d
    or h                                          ; $506d: $b4
    ld h, d                                       ; $506e: $62
    sbc e                                         ; $506f: $9b
    ld [hl], a                                    ; $5070: $77
    nop                                           ; $5071: $00
    nop                                           ; $5072: $00
    dec hl                                        ; $5073: $2b
    daa                                           ; $5074: $27
    ld h, e                                       ; $5075: $63
    dec c                                         ; $5076: $0d
    xor e                                         ; $5077: $ab
    nop                                           ; $5078: $00
    nop                                           ; $5079: $00
    nop                                           ; $507a: $00
    ld d, e                                       ; $507b: $53
    dec d                                         ; $507c: $15
    db $fc                                        ; $507d: $fc
    ld b, c                                       ; $507e: $41
    ld c, c                                       ; $507f: $49
    nop                                           ; $5080: $00
    inc bc                                        ; $5081: $03
    nop                                           ; $5082: $00
    ei                                            ; $5083: $fb
    inc e                                         ; $5084: $1c
    ccf                                           ; $5085: $3f
    ld e, e                                       ; $5086: $5b
    dec c                                         ; $5087: $0d
    ld hl, $0001                                  ; $5088: $21 $01 $00
    sbc d                                         ; $508b: $9a
    ld sp, $084e                                  ; $508c: $31 $4e $08
    cp a                                          ; $508f: $bf
    ld d, [hl]                                    ; $5090: $56
    nop                                           ; $5091: $00
    nop                                           ; $5092: $00
    ld l, a                                       ; $5093: $6f
    scf                                           ; $5094: $37
    halt                                          ; $5095: $76
    ld [hl], e                                    ; $5096: $73
    ld hl, $0005                                  ; $5097: $21 $05 $00
    jr nz, jr_0b5_502f                            ; $509a: $20 $93

    ld e, [hl]                                    ; $509c: $5e
    db $dd                                        ; $509d: $dd
    ld a, e                                       ; $509e: $7b
    jr jr_0b5_510c                                ; $509f: $18 $6b

    nop                                           ; $50a1: $00
    jr nz, jr_0b5_502f                            ; $50a2: $20 $8b

    ld c, c                                       ; $50a4: $49
    push de                                       ; $50a5: $d5
    ld h, [hl]                                    ; $50a6: $66
    cpl                                           ; $50a7: $2f
    ld d, [hl]                                    ; $50a8: $56
    nop                                           ; $50a9: $00
    nop                                           ; $50aa: $00
    ld c, d                                       ; $50ab: $4a
    daa                                           ; $50ac: $27
    xor l                                         ; $50ad: $ad
    nop                                           ; $50ae: $00
    ld b, d                                       ; $50af: $42
    dec c                                         ; $50b0: $0d
    ld [bc], a                                    ; $50b1: $02
    nop                                           ; $50b2: $00
    sub h                                         ; $50b3: $94
    dec d                                         ; $50b4: $15
    ld l, d                                       ; $50b5: $6a
    nop                                           ; $50b6: $00
    ld e, d                                       ; $50b7: $5a
    ld l, $00                                     ; $50b8: $2e $00
    nop                                           ; $50ba: $00
    ld e, e                                       ; $50bb: $5b
    ld c, d                                       ; $50bc: $4a
    sbc $18                                       ; $50bd: $de $18
    ld c, l                                       ; $50bf: $4d
    ld [$0003], sp                                ; $50c0: $08 $03 $00
    sbc b                                         ; $50c3: $98
    dec h                                         ; $50c4: $25
    cp a                                          ; $50c5: $bf
    ld d, [hl]                                    ; $50c6: $56
    or b                                          ; $50c7: $b0
    inc b                                         ; $50c8: $04
    nop                                           ; $50c9: $00
    nop                                           ; $50ca: $00
    dec bc                                        ; $50cb: $0b
    ld [hl-], a                                   ; $50cc: $32
    sbc b                                         ; $50cd: $98
    ld [hl], a                                    ; $50ce: $77
    push af                                       ; $50cf: $f5
    ld c, a                                       ; $50d0: $4f
    nop                                           ; $50d1: $00
    jr nz, jr_0b5_5125                            ; $50d2: $20 $51

    ld e, d                                       ; $50d4: $5a
    rst $30                                       ; $50d5: $f7
    ld l, d                                       ; $50d6: $6a
    sbc h                                         ; $50d7: $9c
    ld [hl], a                                    ; $50d8: $77
    nop                                           ; $50d9: $00
    jr nz, jr_0b5_5124                            ; $50da: $20 $48

    ld b, c                                       ; $50dc: $41
    cpl                                           ; $50dd: $2f
    ld d, [hl]                                    ; $50de: $56
    adc e                                         ; $50df: $8b
    ld c, c                                       ; $50e0: $49
    ld b, b                                       ; $50e1: $40
    nop                                           ; $50e2: $00
    ld a, [bc]                                    ; $50e3: $0a
    daa                                           ; $50e4: $27
    jp z, $b400                                   ; $50e5: $ca $00 $b4

    ld h, d                                       ; $50e8: $62
    nop                                           ; $50e9: $00
    nop                                           ; $50ea: $00
    rst $28                                       ; $50eb: $ef
    nop                                           ; $50ec: $00
    ld [hl-], a                                   ; $50ed: $32
    add hl, bc                                    ; $50ee: $09
    dec h                                         ; $50ef: $25
    nop                                           ; $50f0: $00
    dec b                                         ; $50f1: $05
    nop                                           ; $50f2: $00
    dec e                                         ; $50f3: $1d
    ld hl, $0c72                                  ; $50f4: $21 $72 $0c
    cp [hl]                                       ; $50f7: $be
    ld d, [hl]                                    ; $50f8: $56

jr_0b5_50f9:
    ld l, e                                       ; $50f9: $6b
    nop                                           ; $50fa: $00
    db $db                                        ; $50fb: $db
    jr jr_0b5_515a                                ; $50fc: $18 $5c

    ld [hl], $d5                                  ; $50fe: $36 $d5
    add hl, de                                    ; $5100: $19
    jr nz, jr_0b5_5103                            ; $5101: $20 $00

jr_0b5_5103:
    ld [hl], d                                    ; $5103: $72
    ld h, $0d                                     ; $5104: $26 $0d
    dec c                                         ; $5106: $0d
    add hl, de                                    ; $5107: $19
    ld e, e                                       ; $5108: $5b
    nop                                           ; $5109: $00
    jr nz, jr_0b5_50f9                            ; $510a: $20 $ed

jr_0b5_510c:
    ld d, c                                       ; $510c: $51
    ld [hl], d                                    ; $510d: $72
    ld e, [hl]                                    ; $510e: $5e
    cpl                                           ; $510f: $2f
    ld d, [hl]                                    ; $5110: $56
    nop                                           ; $5111: $00
    jr nz, jr_0b5_511a                            ; $5112: $20 $06

    ld b, c                                       ; $5114: $41
    ld h, $41                                     ; $5115: $26 $41
    dec h                                         ; $5117: $25
    nop                                           ; $5118: $00
    ld [hl+], a                                   ; $5119: $22

jr_0b5_511a:
    nop                                           ; $511a: $00
    ld [hl], d                                    ; $511b: $72
    add hl, sp                                    ; $511c: $39
    sbc a                                         ; $511d: $9f
    ld [hl], a                                    ; $511e: $77
    adc $00                                       ; $511f: $ce $00
    ld b, h                                       ; $5121: $44
    nop                                           ; $5122: $00
    db $10                                        ; $5123: $10

jr_0b5_5124:
    dec b                                         ; $5124: $05

jr_0b5_5125:
    sub e                                         ; $5125: $93
    add hl, de                                    ; $5126: $19
    jp z, RST_08                                  ; $5127: $ca $08 $00

    nop                                           ; $512a: $00
    inc a                                         ; $512b: $3c
    dec h                                         ; $512c: $25
    sbc a                                         ; $512d: $9f
    ld d, d                                       ; $512e: $52
    inc c                                         ; $512f: $0c
    nop                                           ; $5130: $00
    ld h, a                                       ; $5131: $67
    nop                                           ; $5132: $00
    ret c                                         ; $5133: $d8

    db $10                                        ; $5134: $10
    jr c, @+$28                                   ; $5135: $38 $26

    ld [hl], d                                    ; $5137: $72
    inc b                                         ; $5138: $04
    ld bc, $ad00                                  ; $5139: $01 $00 $ad
    ld b, l                                       ; $513c: $45
    rra                                           ; $513d: $1f
    ld h, e                                       ; $513e: $63
    ld d, e                                       ; $513f: $53
    ld [$2000], sp                                ; $5140: $08 $00 $20
    push hl                                       ; $5143: $e5
    inc a                                         ; $5144: $3c
    ld c, b                                       ; $5145: $48
    ld b, l                                       ; $5146: $45
    ld d, e                                       ; $5147: $53
    ld [$2000], sp                                ; $5148: $08 $00 $20
    xor $5d                                       ; $514b: $ee $5d
    sub e                                         ; $514d: $93
    add hl, de                                    ; $514e: $19
    jp z, $0108                                   ; $514f: $ca $08 $01

    nop                                           ; $5152: $00
    daa                                           ; $5153: $27
    ld b, l                                       ; $5154: $45
    call Call_000_3500                            ; $5155: $cd $00 $35
    inc b                                         ; $5158: $04
    ld [bc], a                                    ; $5159: $02

jr_0b5_515a:
    nop                                           ; $515a: $00
    ld [hl], e                                    ; $515b: $73
    ld de, $00cd                                  ; $515c: $11 $cd $00
    jr jr_0b5_5187                                ; $515f: $18 $26

jr_0b5_5161:
    nop                                           ; $5161: $00
    nop                                           ; $5162: $00
    ld [hl], e                                    ; $5163: $73
    inc c                                         ; $5164: $0c
    cp h                                          ; $5165: $bc
    inc d                                         ; $5166: $14
    dec hl                                        ; $5167: $2b
    inc b                                         ; $5168: $04
    ld bc, $d200                                  ; $5169: $01 $00 $d2
    inc b                                         ; $516c: $04
    ld a, [de]                                    ; $516d: $1a
    ld [hl+], a                                   ; $516e: $22
    jr z, jr_0b5_5171                             ; $516f: $28 $00

jr_0b5_5171:
    nop                                           ; $5171: $00
    nop                                           ; $5172: $00
    push hl                                       ; $5173: $e5
    inc a                                         ; $5174: $3c
    rrca                                          ; $5175: $0f
    nop                                           ; $5176: $00
    adc e                                         ; $5177: $8b
    ld c, l                                       ; $5178: $4d
    nop                                           ; $5179: $00
    jr nz, jr_0b5_5161                            ; $517a: $20 $e5

    inc a                                         ; $517c: $3c
    rrca                                          ; $517d: $0f
    nop                                           ; $517e: $00
    adc e                                         ; $517f: $8b

jr_0b5_5180:
    ld c, l                                       ; $5180: $4d
    nop                                           ; $5181: $00
    jr nz, jr_0b5_51f7                            ; $5182: $20 $73

    ld de, $00cd                                  ; $5184: $11 $cd $00

jr_0b5_5187:
    jr jr_0b5_51af                                ; $5187: $18 $26

    jr nz, jr_0b5_518b                            ; $5189: $20 $00

jr_0b5_518b:
    xor h                                         ; $518b: $ac
    ld d, l                                       ; $518c: $55
    call z, $9400                                 ; $518d: $cc $00 $94
    ld l, [hl]                                    ; $5190: $6e
    nop                                           ; $5191: $00
    nop                                           ; $5192: $00
    ld d, d                                       ; $5193: $52
    dec c                                         ; $5194: $0d
    add hl, sp                                    ; $5195: $39
    ld a, [hl+]                                   ; $5196: $2a
    adc h                                         ; $5197: $8c
    nop                                           ; $5198: $00
    inc hl                                        ; $5199: $23
    inc b                                         ; $519a: $04
    sbc $5a                                       ; $519b: $de $5a
    rrca                                          ; $519d: $0f
    nop                                           ; $519e: $00
    cp d                                          ; $519f: $ba
    jr @+$46                                      ; $51a0: $18 $44

    nop                                           ; $51a2: $00
    db $ec                                        ; $51a3: $ec
    ld a, $bf                                     ; $51a4: $3e $bf
    ld a, e                                       ; $51a6: $7b
    ld e, b                                       ; $51a7: $58
    ld sp, $0000                                  ; $51a8: $31 $00 $00
    xor h                                         ; $51ab: $ac
    ld d, l                                       ; $51ac: $55
    push hl                                       ; $51ad: $e5
    inc a                                         ; $51ae: $3c

jr_0b5_51af:
    ld [hl], e                                    ; $51af: $73
    ld l, [hl]                                    ; $51b0: $6e
    nop                                           ; $51b1: $00
    jr nz, @-$52                                  ; $51b2: $20 $ac

    ld d, l                                       ; $51b4: $55
    push hl                                       ; $51b5: $e5
    inc a                                         ; $51b6: $3c
    ld [hl], e                                    ; $51b7: $73
    ld l, [hl]                                    ; $51b8: $6e
    nop                                           ; $51b9: $00
    jr nz, jr_0b5_520e                            ; $51ba: $20 $52

    dec c                                         ; $51bc: $0d
    add hl, sp                                    ; $51bd: $39
    ld a, [hl+]                                   ; $51be: $2a
    adc h                                         ; $51bf: $8c
    nop                                           ; $51c0: $00
    jr nz, jr_0b5_51c7                            ; $51c1: $20 $04

jr_0b5_51c3:
    rst $30                                       ; $51c3: $f7
    ld [hl], d                                    ; $51c4: $72
    xor d                                         ; $51c5: $aa
    nop                                           ; $51c6: $00

jr_0b5_51c7:
    rst $38                                       ; $51c7: $ff
    ld a, a                                       ; $51c8: $7f
    ld [bc], a                                    ; $51c9: $02
    nop                                           ; $51ca: $00
    rst $08                                       ; $51cb: $cf
    ccf                                           ; $51cc: $3f
    ld h, l                                       ; $51cd: $65
    add hl, de                                    ; $51ce: $19
    xor $00                                       ; $51cf: $ee $00
    ld bc, $2c00                                  ; $51d1: $01 $00 $2c
    inc sp                                        ; $51d4: $33
    ld [de], a                                    ; $51d5: $12
    nop                                           ; $51d6: $00
    ld h, e                                       ; $51d7: $63
    ld de, $0000                                  ; $51d8: $11 $00 $00
    or [hl]                                       ; $51db: $b6
    add hl, de                                    ; $51dc: $19
    dec l                                         ; $51dd: $2d
    inc sp                                        ; $51de: $33
    rst $20                                       ; $51df: $e7
    inc b                                         ; $51e0: $04
    jr nz, @+$0a                                  ; $51e1: $20 $08

    sub h                                         ; $51e3: $94
    ld [hl], d                                    ; $51e4: $72
    add sp, $04                                   ; $51e5: $e8 $04
    ld a, e                                       ; $51e7: $7b
    ld [hl], a                                    ; $51e8: $77
    nop                                           ; $51e9: $00
    jr nz, jr_0b5_5180                            ; $51ea: $20 $94

    ld [hl], d                                    ; $51ec: $72
    add sp, $04                                   ; $51ed: $e8 $04
    ld a, e                                       ; $51ef: $7b
    ld [hl], a                                    ; $51f0: $77
    nop                                           ; $51f1: $00
    jr nz, jr_0b5_51c3                            ; $51f2: $20 $cf

    ccf                                           ; $51f4: $3f
    ld h, l                                       ; $51f5: $65
    add hl, de                                    ; $51f6: $19

jr_0b5_51f7:
    xor $00                                       ; $51f7: $ee $00
    nop                                           ; $51f9: $00
    nop                                           ; $51fa: $00
    sbc h                                         ; $51fb: $9c
    ld [hl], a                                    ; $51fc: $77
    xor d                                         ; $51fd: $aa
    nop                                           ; $51fe: $00
    nop                                           ; $51ff: $00
    jr nz, jr_0b5_5202                            ; $5200: $20 $00

jr_0b5_5202:
    nop                                           ; $5202: $00
    db $ed                                        ; $5203: $ed
    ld [hl-], a                                   ; $5204: $32
    ld l, b                                       ; $5205: $68
    nop                                           ; $5206: $00
    call RST_00                                   ; $5207: $cd $00 $00
    nop                                           ; $520a: $00
    rrca                                          ; $520b: $0f
    ld h, d                                       ; $520c: $62
    sbc h                                         ; $520d: $9c

jr_0b5_520e:
    ld a, e                                       ; $520e: $7b
    or l                                          ; $520f: $b5
    ld l, [hl]                                    ; $5210: $6e
    nop                                           ; $5211: $00
    nop                                           ; $5212: $00
    push hl                                       ; $5213: $e5
    inc a                                         ; $5214: $3c
    rrca                                          ; $5215: $0f
    ld e, d                                       ; $5216: $5a
    ld c, c                                       ; $5217: $49
    ld c, c                                       ; $5218: $49

jr_0b5_5219:
    nop                                           ; $5219: $00
    nop                                           ; $521a: $00

jr_0b5_521b:
    rst $30                                       ; $521b: $f7
    ld [hl], d                                    ; $521c: $72
    sbc $7b                                       ; $521d: $de $7b
    nop                                           ; $521f: $00
    jr nz, jr_0b5_5222                            ; $5220: $20 $00

jr_0b5_5222:
    jr nz, jr_0b5_521b                            ; $5222: $20 $f7

    ld [hl], d                                    ; $5224: $72
    sbc $7b                                       ; $5225: $de $7b
    nop                                           ; $5227: $00
    jr nz, jr_0b5_522a                            ; $5228: $20 $00

jr_0b5_522a:
    jr nz, jr_0b5_5219                            ; $522a: $20 $ed

    ld [hl-], a                                   ; $522c: $32
    ld l, b                                       ; $522d: $68
    nop                                           ; $522e: $00
    call RST_00                                   ; $522f: $cd $00 $00
    jr nz, jr_0b5_51c7                            ; $5232: $20 $93

    ld h, d                                       ; $5234: $62
    sbc h                                         ; $5235: $9c
    ld [hl], a                                    ; $5236: $77
    ld l, c                                       ; $5237: $69
    ld b, l                                       ; $5238: $45
    push hl                                       ; $5239: $e5
    inc a                                         ; $523a: $3c
    ld sp, $f766                                  ; $523b: $31 $66 $f7
    ld [hl], d                                    ; $523e: $72
    ld c, c                                       ; $523f: $49
    ld c, l                                       ; $5240: $4d
    daa                                           ; $5241: $27
    ld b, l                                       ; $5242: $45
    sub l                                         ; $5243: $95
    ld [hl], d                                    ; $5244: $72
    sbc h                                         ; $5245: $9c
    ld a, e                                       ; $5246: $7b
    adc $5d                                       ; $5247: $ce $5d
    ld l, d                                       ; $5249: $6a
    ld c, l                                       ; $524a: $4d
    sub h                                         ; $524b: $94
    ld l, [hl]                                    ; $524c: $6e
    jr nc, @+$60                                  ; $524d: $30 $5e

    ld e, d                                       ; $524f: $5a
    ld [hl], e                                    ; $5250: $73
    nop                                           ; $5251: $00
    jr nz, @+$75                                  ; $5252: $20 $73

    ld e, [hl]                                    ; $5254: $5e
    cp h                                          ; $5255: $bc
    ld a, e                                       ; $5256: $7b
    push hl                                       ; $5257: $e5
    inc a                                         ; $5258: $3c
    nop                                           ; $5259: $00
    jr nz, @+$75                                  ; $525a: $20 $73

    ld e, [hl]                                    ; $525c: $5e
    cp h                                          ; $525d: $bc
    ld a, e                                       ; $525e: $7b
    push hl                                       ; $525f: $e5
    inc a                                         ; $5260: $3c

    db $00, $20, $00, $20, $00, $20, $23, $34, $00, $00, $8f, $00, $5a, $36, $00, $20
    db $00, $20, $8f, $00, $5a, $36, $00, $20, $00, $00, $3f, $7f, $0d, $50, $00, $1c
    db $00, $00, $00, $20, $0d, $50, $00, $1c, $00, $20, $00, $20, $0d, $50, $00, $1c
    db $00, $20, $00, $20, $0d, $50, $00, $1c, $00, $00, $00, $20, $5a, $36, $00, $20
    db $01, $00, $7d, $01, $3f, $47, $00, $20, $00, $20, $7d, $01, $3f, $47, $00, $20
    db $00, $04, $5c, $4f, $0e, $60, $ff, $7f, $00, $10, $9f, $1a, $bf, $73, $6b, $00
    db $00, $00, $00, $20, $bf, $73, $6b, $00, $00, $20, $00, $20, $bf, $73, $6b, $00
    db $00, $20, $7d, $01, $3f, $47, $00, $20, $00, $00, $00, $18, $00, $20, $00, $08
    db $00, $00, $00, $20, $00, $20, $00, $08, $00, $00, $78, $02, $de, $6b, $a0, $2d
    db $03, $00, $39, $67, $00, $20, $ff, $7f, $00, $10, $1a, $78, $f8, $6a, $0b, $48
    db $00, $00, $00, $20, $f8, $6a, $0b, $48, $00, $20, $00, $20, $00, $20, $00, $08
    db $00, $1c, $72, $64, $7a, $6e, $1d, $7c, $00, $00, $ff, $7f, $00, $14, $00, $1c
    db $00, $00, $a0, $2d, $6a, $39, $30, $56, $00, $04, $52, $4a, $bd, $77, $a0, $2d
    db $00, $00, $00, $1c, $00, $20, $a0, $2d, $00, $20, $00, $1c, $00, $20, $a0, $2d
    db $00, $20, $ff, $7f, $00, $14, $00, $1c, $00, $00, $00, $18, $00, $20, $00, $1c
    db $00, $00, $b8, $7e, $00, $18, $de, $7b, $00, $00, $9a, $6a, $f1, $11, $de, $7f
    db $00, $00, $bd, $77, $00, $20, $64, $14, $00, $00, $00, $20, $00, $20, $64, $14
    db $00, $20, $00, $20, $00, $20, $64, $14, $00, $00, $d7, $56, $00, $20, $ff, $2b
    db $00, $00, $ff, $7f, $00, $1c, $00, $20, $00, $00, $4e, $45, $ba, $6a, $9e, $7b
    db $85, $18, $94, $69, $9e, $77, $ae, $3d, $63, $0c, $7d, $33, $54, $6a, $bf, $7f
    db $00, $00, $b5, $56, $bd, $77, $00, $20, $00, $00, $00, $20, $bd, $77, $00, $20
    db $00, $14, $fa, $0a, $ff, $57, $e8, $04, $00, $14, $38, $36, $ff, $7f, $d2, $00
    db $00, $00, $95, $56, $dc, $72, $9d, $77, $64, $14, $d1, $39, $1d, $01, $97, $6a
    db $64, $04, $ba, $76, $e9, $28, $6e, $4d, $00, $00, $ff, $7f, $00, $20, $e9, $20
    db $22, $00, $7d, $1b, $00, $20, $ff, $63, $00, $00, $00, $1c, $00, $20, $9d, $77
    db $00, $00, $ff, $7f, $09, $3d, $00, $20, $21, $04, $1a, $6b, $eb, $2c, $9f, $7c
    db $20, $04, $b9, $0d, $4c, $41, $15, $66, $22, $10, $32, $5e, $de, $7b, $ac, $35
    db $00, $04, $be, $7b, $e2, $2d, $30, $49, $00, $00, $00, $20, $e2, $2d, $30, $49
    db $00, $00, $ff, $7f, $00, $20, $9f, $7c, $00, $00, $9d, $23, $ff, $7f, $a8, $10
    db $00, $00, $8c, $3d, $1b, $7c, $a6, $18, $01, $00, $51, $0d, $5a, $36, $b4, $21
    db $00, $04, $da, $36, $13, $09, $d8, $76, $00, $00, $56, $6a, $e2, $2d, $ff, $7f
    db $00, $00, $ff, $7f, $00, $20, $ff, $7f, $00, $00, $ff, $7f, $00, $20, $a6, $18
    db $00, $00, $ff, $7f, $c3, $2d, $ad, $39, $00, $00, $54, $6a, $4b, $31, $9d, $7f
    db $00, $00, $9c, $42, $3f, $57, $ff, $7f, $03, $04, $f6, $45, $8a, $39, $9d, $77
    db $00, $00, $5a, $7b, $d6, $00, $65, $2d, $00, $00, $ff, $7f, $00, $20, $e4, $2d
    db $00, $04, $de, $15, $bd, $77, $e3, $2d, $00, $00, $97, $5e, $c5, $2d, $9d, $77
    db $00, $00, $7d, $17, $d8, $6e, $08, $26, $00, $00, $d2, $35, $3f, $57, $c7, $18
    db $42, $08, $8c, $3d, $5c, $6f, $96, $16, $01, $04, $54, $5a, $c5, $2d, $bf, $7f
    db $00, $00, $ff, $7f, $e4, $2d, $00, $20, $00, $00, $ff, $77, $c4, $29, $7d, $01
    db $22, $0c, $78, $6a, $c5, $2d, $7d, $7b, $00, $00, $3b, $7b, $ea, $20, $3f, $57
    db $87, $10, $3f, $5b, $26, $23, $b2, $2d, $00, $00, $df, $1f, $0a, $25, $5d, $77
    db $00, $00, $1f, $7c, $fa, $6e, $c9, $31, $00, $00, $ff, $7f, $e5, $29, $00, $20
    db $00, $00, $ff, $7f, $05, $2e, $00, $20, $22, $04, $fb, $2a, $8c, $31, $de, $77
    db $43, $10, $f1, $4d, $df, $1f, $5d, $67, $23, $00, $de, $4a, $f7, $29, $3f, $5b
    db $01, $00, $16, $36, $1a, $6f, $2d, $19, $01, $00, $d9, $66, $29, $35, $1f, $7c
    db $00, $00, $05, $2e, $00, $20, $b2, $29, $00, $00, $ff, $7f, $06, $2e, $00, $20
    db $00, $00, $1d, $03, $d9, $6e, $49, $35, $01, $00, $33, $4e, $1b, $77, $3e, $4b
    db $cb, $14, $bc, $46, $3f, $57, $dd, $4e, $42, $04, $39, $3e, $3c, $77, $93, $19
    db $01, $00, $5c, $77, $06, $2e, $2e, $21, $00, $1c, $06, $2e, $9f, $47, $b4, $00
    db $00, $00, $ff, $7f, $06, $2e, $00, $20, $00, $00, $54, $5a, $a8, $2d, $9f, $7f
    db $00, $04, $d2, $69, $6c, $31, $3d, $6f, $00, $00, $5b, $3e, $2c, $11, $ff, $52
    db $43, $04, $7a, $46, $90, $29, $9d, $77, $22, $00, $56, $66, $6d, $2d, $7c, $73
    db $00, $00, $ff, $7f, $27, $2e, $00, $20, $00, $00, $ff, $7f, $27, $2e, $00, $20
    db $00, $00, $12, $52, $7c, $7b, $68, $31, $00, $00, $52, $4a, $0a, $25, $da, $7a
    db $00, $00, $93, $1d, $5b, $3e, $ca, $14, $01, $00, $d6, $29, $c8, $1c, $99, $52
    db $22, $00, $76, $66, $b0, $01, $1a, $73, $00, $00, $ff, $7f, $27, $2e, $00, $20
    db $00, $00, $ff, $7f, $28, $2a, $00, $20, $21, $04, $99, $76, $69, $2d, $be, $7f
    db $22, $00, $75, $5a, $09, $21, $7c, $77, $21, $00, $f8, $31, $c9, $10, $9d, $42
    db $22, $08, $d3, $31, $0b, $1d, $bc, $4e, $01, $00, $19, $7b, $09, $2e, $53, $00
    db $00, $00, $ff, $7f, $28, $2a, $00, $20, $00, $00, $ff, $6f, $00, $20, $ff, $7f
    db $21, $00, $1f, $27, $db, $7e, $e8, $20, $22, $00, $18, $32, $e8, $1c, $ff, $7f
    db $43, $04, $f7, $31, $f7, $5e, $de, $4e, $00, $00, $16, $36, $1c, $57, $ff, $7f
    db $01, $00, $fa, $7a, $49, $2a, $bd, $7f, $00, $00, $ff, $7f, $49, $2a, $00, $20
    db $00, $00, $ff, $7f, $00, $20, $ff, $7f, $23, $00, $54, $5a, $a7, $30, $5f, $7f
    db $21, $04, $18, $63, $8b, $31, $be, $7b, $43, $04, $d0, $35, $fc, $56, $09, $1d
    db $22, $04, $57, $42, $8e, $2d, $5e, $5f, $21, $00, $b8, $72, $2b, $2a, $7e, $6f
    db $00, $00, $ff, $7f, $00, $20, $7e, $6f, $00, $00, $ff, $7f, $00, $20, $be, $7b
    db $01, $10, $33, $66, $e9, $3c, $bd, $7f, $42, $08, $94, $52, $8b, $31, $ff, $7f
    db $22, $00, $f2, $39, $1f, $53, $07, $21, $43, $04, $16, $32, $be, $46, $5f, $5b
    db $21, $00, $58, $3e, $7f, $5f, $f3, $55, $00, $00, $ff, $7f, $00, $20, $f3, $55
    db $00, $00, $ff, $7f, $00, $20, $ff, $7f, $21, $00, $f1, $55, $5b, $6f, $a6, $34
    db $21, $00, $8c, $35, $64, $20, $10, $4e, $43, $04, $d5, $2d, $7f, $5f, $5b, $3a
    db $43, $04, $5a, $3a, $71, $21, $1f, $53, $22, $00, $58, $56, $7f, $63, $0e, $19
    db $00, $00, $ff, $7f, $00, $20, $0e, $19, $00, $00, $ff, $7f, $00, $20, $10, $4e
    db $00, $04, $53, $5e, $ff, $7f, $2a, $35, $00, $00, $ae, $41, $7b, $77, $64, $20
    db $42, $04, $0e, $11, $d4, $5e, $73, $15, $44, $04, $f7, $31, $4f, $21, $fe, $4e
    db $22, $00, $16, $36, $bf, $6f, $be, $46, $00, $00, $00, $20, $bf, $6f, $be, $46
    db $00, $00, $00, $20, $7b, $77, $64, $20, $00, $00, $cf, $4d, $9d, $7b, $85, $2c
    db $00, $00, $65, $3c, $95, $66, $2a, $35, $43, $10, $96, $6e, $6d, $51, $5b, $7b
    db $01, $00, $93, $1d, $9c, $42, $19, $2e, $00, $00, $5b, $3a, $bf, $73, $2d, $19
    db $00, $00, $00, $20, $bf, $73, $2d, $19, $00, $00, $00, $20, $95, $66, $2a, $35
    db $00, $00, $d8, $7a, $2b, $3d, $ff, $7f, $21, $14, $32, $5a, $19, $6f, $0a, $3d
    db $22, $18, $d0, $55, $ff, $7f, $85, $30, $43, $04, $4a, $35, $58, $5a, $93, $21
    db $01, $00, $fe, $4e, $93, $21, $df, $77, $00, $20, $fe, $4e, $93, $21, $df, $77
    db $00, $20, $32, $5a, $19, $6f, $0a, $3d, $00, $00, $8e, $4d, $7c, $7b, $8c, $39
    db $00, $04, $d7, $6a, $a7, $38, $ff, $7f, $00, $00, $be, $7f, $cf, $45, $43, $1c
    db $00, $00, $f8, $2d, $87, $44, $5b, $3e, $00, $04, $56, $3e, $ff, $7f, $43, $04
    db $00, $20, $56, $3e, $ff, $7f, $43, $04, $00, $20, $d7, $6a, $a7, $38, $ff, $7f
    db $00, $00, $af, $55, $ff, $7f, $01, $28, $00, $00, $01, $1c, $e7, $1c, $23, $34
    db $00, $04, $6c, $3d, $e9, $30, $76, $76, $01, $00, $3a, $3a, $64, $2c, $fe, $52
    db $00, $08, $52, $4a, $ff, $7f, $a9, $08, $00, $20, $52, $4a, $ff, $7f, $a9, $08
    db $00, $20, $01, $1c, $e7, $1c, $23, $34, $00, $00, $ff, $7f, $00, $20, $23, $2c
    db $00, $00, $02, $2c, $24, $3c, $23, $34, $00, $00, $ff, $7f, $ff, $7f, $a9, $08
    db $00, $00, $ff, $7f, $ff, $7f, $a9, $08, $00, $00, $ff, $7f, $00, $20, $a9, $08
    db $00, $20, $ff, $7f, $00, $20, $a9, $08, $00, $20, $02, $2c, $24, $3c, $23, $34
    db $00, $00, $ff, $7f, $00, $20, $23, $34, $00, $00, $ff, $7f, $00, $20, $23, $34
    db $00, $00, $00, $20, $00, $20, $a9, $08, $00, $00, $00, $20, $00, $20, $a9, $08
    db $00, $00, $00, $20, $00, $20, $a9, $08, $00, $20, $00, $20, $00, $20, $a9, $08

    nop                                           ; $5881: $00
    jr nz, jr_0b5_5884                            ; $5882: $20 $00

jr_0b5_5884:
    jr nz, jr_0b5_589e                            ; $5884: $20 $18

    ld [hl], a                                    ; $5886: $77
    ld c, b                                       ; $5887: $48
    ld b, l                                       ; $5888: $45
    nop                                           ; $5889: $00
    jr nz, jr_0b5_588c                            ; $588a: $20 $00

jr_0b5_588c:
    jr nz, jr_0b5_58a6                            ; $588c: $20 $18

    ld [hl], a                                    ; $588e: $77
    ld c, b                                       ; $588f: $48
    ld b, l                                       ; $5890: $45
    nop                                           ; $5891: $00
    jr nz, jr_0b5_5894                            ; $5892: $20 $00

jr_0b5_5894:
    jr nz, jr_0b5_58ae                            ; $5894: $20 $18

    ld [hl], a                                    ; $5896: $77
    ld c, b                                       ; $5897: $48
    ld b, l                                       ; $5898: $45
    nop                                           ; $5899: $00
    nop                                           ; $589a: $00
    sub h                                         ; $589b: $94
    ld [hl], d                                    ; $589c: $72
    nop                                           ; $589d: $00

jr_0b5_589e:
    jr nz, @-$41                                  ; $589e: $20 $bd

    ld a, e                                       ; $58a0: $7b
    nop                                           ; $58a1: $00
    nop                                           ; $58a2: $00
    nop                                           ; $58a3: $00
    jr nz, jr_0b5_58a6                            ; $58a4: $20 $00

jr_0b5_58a6:
    jr nz, @-$41                                  ; $58a6: $20 $bd

    ld a, e                                       ; $58a8: $7b
    nop                                           ; $58a9: $00
    nop                                           ; $58aa: $00
    nop                                           ; $58ab: $00
    jr nz, jr_0b5_58ae                            ; $58ac: $20 $00

jr_0b5_58ae:
    jr nz, @-$41                                  ; $58ae: $20 $bd

    ld a, e                                       ; $58b0: $7b
    nop                                           ; $58b1: $00
    jr nz, jr_0b5_58b4                            ; $58b2: $20 $00

jr_0b5_58b4:
    jr nz, jr_0b5_58b6                            ; $58b4: $20 $00

jr_0b5_58b6:
    jr nz, @-$41                                  ; $58b6: $20 $bd

    ld a, e                                       ; $58b8: $7b
    nop                                           ; $58b9: $00
    jr nz, jr_0b5_58bc                            ; $58ba: $20 $00

jr_0b5_58bc:
    jr nz, jr_0b5_58d6                            ; $58bc: $20 $18

    ld [hl], a                                    ; $58be: $77
    ld c, b                                       ; $58bf: $48
    ld b, l                                       ; $58c0: $45
    nop                                           ; $58c1: $00
    jr nz, jr_0b5_58c4                            ; $58c2: $20 $00

jr_0b5_58c4:
    jr nz, jr_0b5_58de                            ; $58c4: $20 $18

    ld [hl], a                                    ; $58c6: $77
    ld c, b                                       ; $58c7: $48
    ld b, l                                       ; $58c8: $45
    nop                                           ; $58c9: $00
    nop                                           ; $58ca: $00
    nop                                           ; $58cb: $00
    jr nz, jr_0b5_58f0                            ; $58cc: $20 $22

    inc c                                         ; $58ce: $0c
    ld c, b                                       ; $58cf: $48
    ld b, l                                       ; $58d0: $45
    nop                                           ; $58d1: $00
    nop                                           ; $58d2: $00
    cp a                                          ; $58d3: $bf
    ld e, a                                       ; $58d4: $5f
    ret z                                         ; $58d5: $c8

jr_0b5_58d6:
    inc d                                         ; $58d6: $14
    ld l, d                                       ; $58d7: $6a
    ld d, c                                       ; $58d8: $51
    nop                                           ; $58d9: $00
    db $10                                        ; $58da: $10
    ld e, l                                       ; $58db: $5d
    ld [hl+], a                                   ; $58dc: $22
    inc l                                         ; $58dd: $2c

jr_0b5_58de:
    dec e                                         ; $58de: $1d
    ld a, [hl]                                    ; $58df: $7e
    ld e, e                                       ; $58e0: $5b
    nop                                           ; $58e1: $00
    nop                                           ; $58e2: $00

jr_0b5_58e3:
    nop                                           ; $58e3: $00
    jr nz, @-$37                                  ; $58e4: $20 $c7

    inc d                                         ; $58e6: $14
    ld a, [hl]                                    ; $58e7: $7e
    ld e, e                                       ; $58e8: $5b
    nop                                           ; $58e9: $00
    jr nz, jr_0b5_58ec                            ; $58ea: $20 $00

jr_0b5_58ec:
    jr nz, @-$37                                  ; $58ec: $20 $c7

    inc d                                         ; $58ee: $14
    ld a, [hl]                                    ; $58ef: $7e

jr_0b5_58f0:
    ld e, e                                       ; $58f0: $5b
    nop                                           ; $58f1: $00
    jr nz, jr_0b5_58f4                            ; $58f2: $20 $00

jr_0b5_58f4:
    jr nz, jr_0b5_5918                            ; $58f4: $20 $22

    inc c                                         ; $58f6: $0c
    ld c, b                                       ; $58f7: $48
    ld b, l                                       ; $58f8: $45
    nop                                           ; $58f9: $00
    jr nz, jr_0b5_58fc                            ; $58fa: $20 $00

jr_0b5_58fc:
    jr nz, jr_0b5_5920                            ; $58fc: $20 $22

    inc c                                         ; $58fe: $0c
    ld c, b                                       ; $58ff: $48
    ld b, l                                       ; $5900: $45
    nop                                           ; $5901: $00
    jr @-$47                                      ; $5902: $18 $b7

    dec d                                         ; $5904: $15
    ld a, $4b                                     ; $5905: $3e $4b

jr_0b5_5907:
    dec c                                         ; $5907: $0d
    dec c                                         ; $5908: $0d
    ld b, e                                       ; $5909: $43
    inc b                                         ; $590a: $04
    ld a, [c]                                     ; $590b: $f2
    ld sp, $73ff                                  ; $590c: $31 $ff $73

jr_0b5_590f:
    sbc $3a                                       ; $590f: $de $3a
    nop                                           ; $5911: $00
    inc b                                         ; $5912: $04
    call z, $e94d                                 ; $5913: $cc $4d $e9
    inc d                                         ; $5916: $14
    cp d                                          ; $5917: $ba

jr_0b5_5918:
    add hl, bc                                    ; $5918: $09
    nop                                           ; $5919: $00
    nop                                           ; $591a: $00
    nop                                           ; $591b: $00
    jr nz, jr_0b5_5907                            ; $591c: $20 $e9

    inc d                                         ; $591e: $14
    cp d                                          ; $591f: $ba

jr_0b5_5920:
    add hl, bc                                    ; $5920: $09
    nop                                           ; $5921: $00
    jr nz, jr_0b5_5924                            ; $5922: $20 $00

jr_0b5_5924:
    jr nz, jr_0b5_590f                            ; $5924: $20 $e9

    inc d                                         ; $5926: $14
    cp d                                          ; $5927: $ba
    add hl, bc                                    ; $5928: $09
    nop                                           ; $5929: $00
    jr nz, jr_0b5_58e3                            ; $592a: $20 $b7

    dec d                                         ; $592c: $15
    ld a, $4b                                     ; $592d: $3e $4b
    dec c                                         ; $592f: $0d
    dec c                                         ; $5930: $0d
    nop                                           ; $5931: $00
    jr nz, @-$47                                  ; $5932: $20 $b7

    dec d                                         ; $5934: $15
    ld a, $4b                                     ; $5935: $3e $4b
    dec c                                         ; $5937: $0d
    dec c                                         ; $5938: $0d
    nop                                           ; $5939: $00
    db $10                                        ; $593a: $10
    ld a, [hl-]                                   ; $593b: $3a
    ld e, $cc                                     ; $593c: $1e $cc
    ld [$5b9f], sp                                ; $593e: $08 $9f $5b
    ld bc, $9400                                  ; $5941: $01 $00 $94
    dec d                                         ; $5944: $15
    ld d, l                                       ; $5945: $55
    ld [hl+], a                                   ; $5946: $22
    ld l, b                                       ; $5947: $68
    nop                                           ; $5948: $00
    ld bc, $9600                                  ; $5949: $01 $00 $96
    add hl, bc                                    ; $594c: $09
    ld a, a                                       ; $594d: $7f
    ld c, a                                       ; $594e: $4f
    call RST_00                                   ; $594f: $cd $00 $00
    nop                                           ; $5952: $00
    ld e, a                                       ; $5953: $5f
    ld e, e                                       ; $5954: $5b
    nop                                           ; $5955: $00
    jr nz, @+$01                                  ; $5956: $20 $ff

    ld a, a                                       ; $5958: $7f
    nop                                           ; $5959: $00
    jr nz, jr_0b5_59bb                            ; $595a: $20 $5f

jr_0b5_595c:
    ld e, e                                       ; $595c: $5b
    nop                                           ; $595d: $00
    jr nz, @+$01                                  ; $595e: $20 $ff

    ld a, a                                       ; $5960: $7f
    nop                                           ; $5961: $00
    jr nz, @+$3c                                  ; $5962: $20 $3a

    ld e, $cc                                     ; $5964: $1e $cc
    ld [$5b9f], sp                                ; $5966: $08 $9f $5b
    nop                                           ; $5969: $00
    jr nz, jr_0b5_59a6                            ; $596a: $20 $3a

    ld e, $cc                                     ; $596c: $1e $cc
    ld [$5b9f], sp                                ; $596e: $08 $9f $5b
    nop                                           ; $5971: $00
    ld [$11f4], sp                                ; $5972: $08 $f4 $11
    ld [hl], c                                    ; $5975: $71
    ld e, [hl]                                    ; $5976: $5e
    ld l, b                                       ; $5977: $68
    nop                                           ; $5978: $00
    ld l, b                                       ; $5979: $68
    nop                                           ; $597a: $00
    jr c, @+$18                                   ; $597b: $38 $16

    rst $18                                       ; $597d: $df
    ld e, e                                       ; $597e: $5b
    xor a                                         ; $597f: $af
    dec c                                         ; $5980: $0d
    ld bc, $1c00                                  ; $5981: $01 $00 $1c
    ld [de], a                                    ; $5984: $12
    rst $08                                       ; $5985: $cf
    nop                                           ; $5986: $00
    rra                                           ; $5987: $1f
    ld b, a                                       ; $5988: $47
    nop                                           ; $5989: $00
    nop                                           ; $598a: $00
    rst $38                                       ; $598b: $ff
    ld l, a                                       ; $598c: $6f
    nop                                           ; $598d: $00
    jr nz, jr_0b5_59af                            ; $598e: $20 $1f

jr_0b5_5990:
    ld b, a                                       ; $5990: $47
    nop                                           ; $5991: $00
    jr nz, @+$01                                  ; $5992: $20 $ff

    ld l, a                                       ; $5994: $6f
    nop                                           ; $5995: $00
    jr nz, jr_0b5_59b7                            ; $5996: $20 $1f

    ld b, a                                       ; $5998: $47
    nop                                           ; $5999: $00
    jr nz, jr_0b5_5990                            ; $599a: $20 $f4

    ld de, $5e71                                  ; $599c: $11 $71 $5e
    ld l, b                                       ; $599f: $68
    nop                                           ; $59a0: $00
    nop                                           ; $59a1: $00
    nop                                           ; $59a2: $00
    ld [hl], d                                    ; $59a3: $72
    ld e, [hl]                                    ; $59a4: $5e
    nop                                           ; $59a5: $00

jr_0b5_59a6:
    jr nz, jr_0b5_595c                            ; $59a6: $20 $b4

    ld h, d                                       ; $59a8: $62
    ld b, l                                       ; $59a9: $45
    nop                                           ; $59aa: $00
    halt                                          ; $59ab: $76
    ld h, $8e                                     ; $59ac: $26 $8e
    dec d                                         ; $59ae: $15

jr_0b5_59af:
    ld e, [hl]                                    ; $59af: $5e
    ld b, a                                       ; $59b0: $47
    ld l, b                                       ; $59b1: $68
    nop                                           ; $59b2: $00
    halt                                          ; $59b3: $76
    ld a, [de]                                    ; $59b4: $1a
    jr nc, jr_0b5_59cc                            ; $59b5: $30 $15

jr_0b5_59b7:
    cp $3e                                        ; $59b7: $fe $3e
    add a                                         ; $59b9: $87
    inc b                                         ; $59ba: $04

jr_0b5_59bb:
    ret nc                                        ; $59bb: $d0

    add hl, hl                                    ; $59bc: $29
    sbc [hl]                                      ; $59bd: $9e
    ld b, a                                       ; $59be: $47
    ld e, b                                       ; $59bf: $58
    ld [hl+], a                                   ; $59c0: $22
    nop                                           ; $59c1: $00
    nop                                           ; $59c2: $00

jr_0b5_59c3:
    rst $30                                       ; $59c3: $f7
    ld h, d                                       ; $59c4: $62
    cp l                                          ; $59c5: $bd
    ld a, e                                       ; $59c6: $7b
    nop                                           ; $59c7: $00
    jr nz, jr_0b5_59ca                            ; $59c8: $20 $00

jr_0b5_59ca:
    jr nz, jr_0b5_59c3                            ; $59ca: $20 $f7

jr_0b5_59cc:
    ld h, d                                       ; $59cc: $62
    cp l                                          ; $59cd: $bd
    ld a, e                                       ; $59ce: $7b
    nop                                           ; $59cf: $00
    jr nz, jr_0b5_59d2                            ; $59d0: $20 $00

jr_0b5_59d2:
    jr nz, jr_0b5_5a4a                            ; $59d2: $20 $76

    ld h, $8e                                     ; $59d4: $26 $8e
    dec d                                         ; $59d6: $15
    ld e, [hl]                                    ; $59d7: $5e
    ld b, a                                       ; $59d8: $47
    nop                                           ; $59d9: $00
    nop                                           ; $59da: $00
    ld [hl], d                                    ; $59db: $72
    ld e, [hl]                                    ; $59dc: $5e
    rst $38                                       ; $59dd: $ff
    ld d, a                                       ; $59de: $57
    nop                                           ; $59df: $00
    jr nz, jr_0b5_5a26                            ; $59e0: $20 $44

    inc b                                         ; $59e2: $04
    ld l, $4e                                     ; $59e3: $2e $4e
    sbc d                                         ; $59e5: $9a
    ld h, $30                                     ; $59e6: $26 $30
    dec d                                         ; $59e8: $15
    inc hl                                        ; $59e9: $23
    nop                                           ; $59ea: $00
    ld d, b                                       ; $59eb: $50
    ld b, [hl]                                    ; $59ec: $46
    call c, Call_000_2f7f                         ; $59ed: $dc $7f $2f
    ld de, $0065                                  ; $59f0: $11 $65 $00
    sub h                                         ; $59f3: $94
    ld de, $5bbf                                  ; $59f4: $11 $bf $5b
    halt                                          ; $59f7: $76
    ld e, $00                                     ; $59f8: $1e $00
    db $10                                        ; $59fa: $10
    ei                                            ; $59fb: $fb
    ld [hl+], a                                   ; $59fc: $22
    rst $30                                       ; $59fd: $f7
    ld l, d                                       ; $59fe: $6a

jr_0b5_59ff:
    sbc $7b                                       ; $59ff: $de $7b
    nop                                           ; $5a01: $00
    jr nz, jr_0b5_59ff                            ; $5a02: $20 $fb

    ld [hl+], a                                   ; $5a04: $22
    rst $30                                       ; $5a05: $f7
    ld l, d                                       ; $5a06: $6a
    sbc $7b                                       ; $5a07: $de $7b
    nop                                           ; $5a09: $00
    jr nz, jr_0b5_5a54                            ; $5a0a: $20 $48

    ld b, l                                       ; $5a0c: $45
    sbc d                                         ; $5a0d: $9a
    ld h, $30                                     ; $5a0e: $26 $30
    dec d                                         ; $5a10: $15
    nop                                           ; $5a11: $00
    ld [$5652], sp                                ; $5a12: $08 $52 $56
    cp [hl]                                       ; $5a15: $be
    ld c, e                                       ; $5a16: $4b
    ld c, e                                       ; $5a17: $4b
    dec e                                         ; $5a18: $1d
    ld bc, $bc00                                  ; $5a19: $01 $00 $bc
    ld [hl], $4e                                  ; $5a1c: $36 $4e
    ld de, $7fba                                  ; $5a1e: $11 $ba $7f
    ld l, b                                       ; $5a21: $68
    nop                                           ; $5a22: $00
    ld [hl], $22                                  ; $5a23: $36 $22
    sbc a                                         ; $5a25: $9f

jr_0b5_5a26:
    ld l, $30                                     ; $5a26: $2e $30
    dec d                                         ; $5a28: $15

jr_0b5_5a29:
    ld b, l                                       ; $5a29: $45
    nop                                           ; $5a2a: $00
    ld a, [hl]                                    ; $5a2b: $7e
    ld b, e                                       ; $5a2c: $43
    ld c, l                                       ; $5a2d: $4d
    dec c                                         ; $5a2e: $0d
    or d                                          ; $5a2f: $b2
    ld de, $0421                                  ; $5a30: $11 $21 $04
    inc a                                         ; $5a33: $3c
    dec de                                        ; $5a34: $1b
    ld [hl], e                                    ; $5a35: $73
    ld e, [hl]                                    ; $5a36: $5e
    sbc $6f                                       ; $5a37: $de $6f
    nop                                           ; $5a39: $00
    jr nz, jr_0b5_5a29                            ; $5a3a: $20 $ed

    ld d, c                                       ; $5a3c: $51
    or h                                          ; $5a3d: $b4
    ld h, d                                       ; $5a3e: $62
    rst $30                                       ; $5a3f: $f7
    ld l, d                                       ; $5a40: $6a
    nop                                           ; $5a41: $00
    jr nz, jr_0b5_5a29                            ; $5a42: $20 $e5

    inc a                                         ; $5a44: $3c
    adc e                                         ; $5a45: $8b
    ld c, c                                       ; $5a46: $49
    daa                                           ; $5a47: $27
    ld b, c                                       ; $5a48: $41
    nop                                           ; $5a49: $00

jr_0b5_5a4a:
    nop                                           ; $5a4a: $00
    ld d, d                                       ; $5a4b: $52
    ld b, [hl]                                    ; $5a4c: $46
    cp a                                          ; $5a4d: $bf
    ld b, a                                       ; $5a4e: $47
    ld c, h                                       ; $5a4f: $4c
    add hl, bc                                    ; $5a50: $09
    inc hl                                        ; $5a51: $23
    nop                                           ; $5a52: $00
    ld d, l                                       ; $5a53: $55

jr_0b5_5a54:
    ld [hl-], a                                   ; $5a54: $32
    ld e, a                                       ; $5a55: $5f
    ld b, a                                       ; $5a56: $47
    dec l                                         ; $5a57: $2d
    ld de, $0046                                  ; $5a58: $11 $46 $00
    dec [hl]                                      ; $5a5b: $35
    ld [de], a                                    ; $5a5c: $12
    rst $18                                       ; $5a5d: $df
    ld [hl], $30                                  ; $5a5e: $36 $30
    dec d                                         ; $5a60: $15
    ld hl, $f100                                  ; $5a61: $21 $00 $f1
    add hl, de                                    ; $5a64: $19
    jp hl                                         ; $5a65: $e9


    inc b                                         ; $5a66: $04
    halt                                          ; $5a67: $76
    ld l, $00                                     ; $5a68: $2e $00
    nop                                           ; $5a6a: $00
    ld e, l                                       ; $5a6b: $5d
    inc sp                                        ; $5a6c: $33
    adc l                                         ; $5a6d: $8d
    dec h                                         ; $5a6e: $25
    cp l                                          ; $5a6f: $bd
    ld h, e                                       ; $5a70: $63
    nop                                           ; $5a71: $00
    jr nz, jr_0b5_5abd                            ; $5a72: $20 $49

    ld c, c                                       ; $5a74: $49
    ld [hl], d                                    ; $5a75: $72
    ld e, [hl]                                    ; $5a76: $5e
    dec b                                         ; $5a77: $05
    dec a                                         ; $5a78: $3d
    nop                                           ; $5a79: $00
    jr @-$11                                      ; $5a7a: $18 $ed

    ld d, l                                       ; $5a7c: $55
    daa                                           ; $5a7d: $27
    ld b, c                                       ; $5a7e: $41
    sub h                                         ; $5a7f: $94
    ld l, [hl]                                    ; $5a80: $6e
    nop                                           ; $5a81: $00
    nop                                           ; $5a82: $00
    pop af                                        ; $5a83: $f1
    add hl, sp                                    ; $5a84: $39
    cp a                                          ; $5a85: $bf
    ld b, e                                       ; $5a86: $43
    adc [hl]                                      ; $5a87: $8e
    dec d                                         ; $5a88: $15
    ld h, l                                       ; $5a89: $65
    nop                                           ; $5a8a: $00
    cp b                                          ; $5a8b: $b8
    dec d                                         ; $5a8c: $15
    ld c, [hl]                                    ; $5a8d: $4e
    ld de, $36de                                  ; $5a8e: $11 $de $36
    inc h                                         ; $5a91: $24
    nop                                           ; $5a92: $00
    ld a, [de]                                    ; $5a93: $1a
    ld h, $df                                     ; $5a94: $26 $df
    ld [hl], $68                                  ; $5a96: $36 $68
    nop                                           ; $5a98: $00
    ld b, d                                       ; $5a99: $42
    nop                                           ; $5a9a: $00
    adc l                                         ; $5a9b: $8d
    add hl, de                                    ; $5a9c: $19
    ld a, [$2b36]                                 ; $5a9d: $fa $36 $2b
    add hl, bc                                    ; $5aa0: $09
    nop                                           ; $5aa1: $00
    nop                                           ; $5aa2: $00
    or c                                          ; $5aa3: $b1
    dec a                                         ; $5aa4: $3d
    sbc l                                         ; $5aa5: $9d
    ld c, a                                       ; $5aa6: $4f
    ld [de], a                                    ; $5aa7: $12
    ld a, [de]                                    ; $5aa8: $1a
    nop                                           ; $5aa9: $00
    nop                                           ; $5aaa: $00
    ld c, c                                       ; $5aab: $49
    ld b, c                                       ; $5aac: $41
    ld sp, $0062                                  ; $5aad: $31 $62 $00
    jr nz, jr_0b5_5ab2                            ; $5ab0: $20 $00

jr_0b5_5ab2:
    ld [$458f], sp                                ; $5ab2: $08 $8f $45
    ld [hl], e                                    ; $5ab5: $73
    ld l, [hl]                                    ; $5ab6: $6e
    ld e, e                                       ; $5ab7: $5b
    ld [hl], a                                    ; $5ab8: $77
    nop                                           ; $5ab9: $00
    nop                                           ; $5aba: $00
    sub c                                         ; $5abb: $91
    dec a                                         ; $5abc: $3d

jr_0b5_5abd:
    ld e, h                                       ; $5abd: $5c
    ld b, e                                       ; $5abe: $43
    halt                                          ; $5abf: $76
    ld a, [de]                                    ; $5ac0: $1a
    ld h, h                                       ; $5ac1: $64
    nop                                           ; $5ac2: $00
    ld [hl], $36                                  ; $5ac3: $36 $36
    cp d                                          ; $5ac5: $ba
    ld a, a                                       ; $5ac6: $7f
    dec hl                                        ; $5ac7: $2b
    dec c                                         ; $5ac8: $0d
    inc h                                         ; $5ac9: $24
    nop                                           ; $5aca: $00
    ld l, a                                       ; $5acb: $6f
    ld e, d                                       ; $5acc: $5a
    ld a, [de]                                    ; $5acd: $1a
    ld h, $9f                                     ; $5ace: $26 $9f
    ld [hl-], a                                   ; $5ad0: $32
    ld b, d                                       ; $5ad1: $42
    nop                                           ; $5ad2: $00
    inc de                                        ; $5ad3: $13
    ld e, $2a                                     ; $5ad4: $1e $2a
    add hl, bc                                    ; $5ad6: $09
    or a                                          ; $5ad7: $b7
    ld [hl], $00                                  ; $5ad8: $36 $00
    nop                                           ; $5ada: $00
    ld [hl], b                                    ; $5adb: $70
    add hl, sp                                    ; $5adc: $39
    cp a                                          ; $5add: $bf
    ld b, e                                       ; $5ade: $43
    halt                                          ; $5adf: $76
    ld [hl+], a                                   ; $5ae0: $22
    nop                                           ; $5ae1: $00
    nop                                           ; $5ae2: $00
    sub b                                         ; $5ae3: $90
    ld b, c                                       ; $5ae4: $41
    ld e, d                                       ; $5ae5: $5a
    ld a, e                                       ; $5ae6: $7b
    nop                                           ; $5ae7: $00
    jr nz, jr_0b5_5aea                            ; $5ae8: $20 $00

jr_0b5_5aea:
    nop                                           ; $5aea: $00
    sub h                                         ; $5aeb: $94
    ld l, [hl]                                    ; $5aec: $6e
    ld [hl], b                                    ; $5aed: $70
    add hl, sp                                    ; $5aee: $39
    cp l                                          ; $5aef: $bd
    ld a, e                                       ; $5af0: $7b
    nop                                           ; $5af1: $00
    nop                                           ; $5af2: $00
    ld l, a                                       ; $5af3: $6f
    dec [hl]                                      ; $5af4: $35
    cp [hl]                                       ; $5af5: $be
    ld c, e                                       ; $5af6: $4b
    halt                                          ; $5af7: $76
    ld d, $01                                     ; $5af8: $16 $01
    nop                                           ; $5afa: $00
    sub [hl]                                      ; $5afb: $96
    add hl, bc                                    ; $5afc: $09
    add hl, sp                                    ; $5afd: $39
    ld a, [hl+]                                   ; $5afe: $2a
    ld h, l                                       ; $5aff: $65
    inc b                                         ; $5b00: $04
    inc h                                         ; $5b01: $24
    nop                                           ; $5b02: $00
    sbc b                                         ; $5b03: $98
    dec c                                         ; $5b04: $0d
    ld e, [hl]                                    ; $5b05: $5e
    ld a, [hl+]                                   ; $5b06: $2a
    ccf                                           ; $5b07: $3f
    ld b, a                                       ; $5b08: $47
    ld [hl+], a                                   ; $5b09: $22
    nop                                           ; $5b0a: $00
    ei                                            ; $5b0b: $fb
    ld de, $0d8e                                  ; $5b0c: $11 $8e $0d
    ld e, e                                       ; $5b0f: $5b
    ld b, e                                       ; $5b10: $43
    nop                                           ; $5b11: $00
    nop                                           ; $5b12: $00
    ld c, h                                       ; $5b13: $4c
    add hl, bc                                    ; $5b14: $09
    ld [hl], b                                    ; $5b15: $70
    add hl, sp                                    ; $5b16: $39
    and [hl]                                      ; $5b17: $a6
    inc c                                         ; $5b18: $0c
    nop                                           ; $5b19: $00
    nop                                           ; $5b1a: $00
    ld c, a                                       ; $5b1b: $4f
    add hl, sp                                    ; $5b1c: $39
    sub h                                         ; $5b1d: $94
    ld l, [hl]                                    ; $5b1e: $6e
    nop                                           ; $5b1f: $00
    jr nz, jr_0b5_5b22                            ; $5b20: $20 $00

jr_0b5_5b22:
    ld [$3950], sp                                ; $5b22: $08 $50 $39
    db $10                                        ; $5b25: $10
    ld h, [hl]                                    ; $5b26: $66
    jr jr_0b5_5ba0                                ; $5b27: $18 $77

    nop                                           ; $5b29: $00
    nop                                           ; $5b2a: $00
    ld [hl], b                                    ; $5b2b: $70
    add hl, sp                                    ; $5b2c: $39
    ld e, a                                       ; $5b2d: $5f
    ld d, a                                       ; $5b2e: $57
    rst $38                                       ; $5b2f: $ff
    ld a, e                                       ; $5b30: $7b
    nop                                           ; $5b31: $00
    nop                                           ; $5b32: $00
    ld a, [$ed1d]                                 ; $5b33: $fa $1d $ed
    inc c                                         ; $5b36: $0c
    rst $38                                       ; $5b37: $ff
    ld a, $45                                     ; $5b38: $3e $45
    nop                                           ; $5b3a: $00
    ld [hl], a                                    ; $5b3b: $77
    dec c                                         ; $5b3c: $0d
    ld e, d                                       ; $5b3d: $5a
    ld a, [hl+]                                   ; $5b3e: $2a
    rst $38                                       ; $5b3f: $ff
    ld a, $00                                     ; $5b40: $3e $00
    nop                                           ; $5b42: $00
    dec l                                         ; $5b43: $2d
    add hl, de                                    ; $5b44: $19
    sub a                                         ; $5b45: $97
    dec c                                         ; $5b46: $0d
    dec a                                         ; $5b47: $3d
    ld a, [de]                                    ; $5b48: $1a
    nop                                           ; $5b49: $00
    nop                                           ; $5b4a: $00
    ld c, a                                       ; $5b4b: $4f
    dec [hl]                                      ; $5b4c: $35
    ld d, b                                       ; $5b4d: $50
    add hl, sp                                    ; $5b4e: $39
    dec a                                         ; $5b4f: $3d
    ld a, [de]                                    ; $5b50: $1a
    nop                                           ; $5b51: $00
    inc e                                         ; $5b52: $1c
    push hl                                       ; $5b53: $e5
    inc a                                         ; $5b54: $3c
    adc $59                                       ; $5b55: $ce $59
    ld c, a                                       ; $5b57: $4f
    dec [hl]                                      ; $5b58: $35
    nop                                           ; $5b59: $00
    db $10                                        ; $5b5a: $10
    ld l, c                                       ; $5b5b: $69
    ld c, c                                       ; $5b5c: $49
    rst $30                                       ; $5b5d: $f7
    ld [hl], d                                    ; $5b5e: $72
    cpl                                           ; $5b5f: $2f
    dec [hl]                                      ; $5b60: $35
    nop                                           ; $5b61: $00
    nop                                           ; $5b62: $00
    cpl                                           ; $5b63: $2f
    dec [hl]                                      ; $5b64: $35
    ld a, [de]                                    ; $5b65: $1a
    daa                                           ; $5b66: $27
    rst $38                                       ; $5b67: $ff
    ld [hl], e                                    ; $5b68: $73
    ld [hl+], a                                   ; $5b69: $22
    nop                                           ; $5b6a: $00
    ld a, b                                       ; $5b6b: $78
    add hl, bc                                    ; $5b6c: $09
    sbc a                                         ; $5b6d: $9f
    ld d, a                                       ; $5b6e: $57
    ld e, b                                       ; $5b6f: $58
    ld [hl], $ba                                  ; $5b70: $36 $ba
    ld de, $369e                                  ; $5b72: $11 $9e $36
    ld a, $26                                     ; $5b75: $3e $26
    rst $38                                       ; $5b77: $ff
    ld b, d                                       ; $5b78: $42
    nop                                           ; $5b79: $00
    nop                                           ; $5b7a: $00
    cpl                                           ; $5b7b: $2f
    dec [hl]                                      ; $5b7c: $35
    rst $18                                       ; $5b7d: $df
    ld [hl-], a                                   ; $5b7e: $32
    rst $18                                       ; $5b7f: $df
    ld e, a                                       ; $5b80: $5f
    cpl                                           ; $5b81: $2f
    dec [hl]                                      ; $5b82: $35
    cpl                                           ; $5b83: $2f
    dec [hl]                                      ; $5b84: $35
    rst $18                                       ; $5b85: $df
    ld [hl-], a                                   ; $5b86: $32
    rst $18                                       ; $5b87: $df
    ld e, a                                       ; $5b88: $5f
    nop                                           ; $5b89: $00
    inc e                                         ; $5b8a: $1c
    ld h, $3d                                     ; $5b8b: $26 $3d
    cpl                                           ; $5b8d: $2f
    ld d, [hl]                                    ; $5b8e: $56
    cpl                                           ; $5b8f: $2f
    dec [hl]                                      ; $5b90: $35
    nop                                           ; $5b91: $00
    inc d                                         ; $5b92: $14
    ld c, $31                                     ; $5b93: $0e $31
    ld c, b                                       ; $5b95: $48
    ld b, l                                       ; $5b96: $45
    ld d, c                                       ; $5b97: $51
    ld e, d                                       ; $5b98: $5a
    nop                                           ; $5b99: $00
    nop                                           ; $5b9a: $00
    rrca                                          ; $5b9b: $0f
    ld sp, $3fbf                                  ; $5b9c: $31 $bf $3f
    ld [hl+], a                                   ; $5b9f: $22

jr_0b5_5ba0:
    nop                                           ; $5ba0: $00
    nop                                           ; $5ba1: $00
    nop                                           ; $5ba2: $00
    sbc e                                         ; $5ba3: $9b
    ld [hl-], a                                   ; $5ba4: $32
    call z, $ff08                                 ; $5ba5: $cc $08 $ff
    ld e, a                                       ; $5ba8: $5f
    ld [hl+], a                                   ; $5ba9: $22
    nop                                           ; $5baa: $00
    sbc a                                         ; $5bab: $9f
    ld l, $ff                                     ; $5bac: $2e $ff
    ld b, d                                       ; $5bae: $42
    xor d                                         ; $5baf: $aa
    inc c                                         ; $5bb0: $0c
    ld bc, $1700                                  ; $5bb1: $01 $00 $17
    ld a, [hl+]                                   ; $5bb4: $2a
    ccf                                           ; $5bb5: $3f
    ld b, a                                       ; $5bb6: $47
    rst $38                                       ; $5bb7: $ff
    ld [hl], a                                    ; $5bb8: $77
    nop                                           ; $5bb9: $00
    nop                                           ; $5bba: $00
    ld c, $31                                     ; $5bbb: $0e $31
    jp z, Jump_000_0e0c                           ; $5bbd: $ca $0c $0e

    dec [hl]                                      ; $5bc0: $35
    nop                                           ; $5bc1: $00
    inc e                                         ; $5bc2: $1c
    dec l                                         ; $5bc3: $2d
    add hl, sp                                    ; $5bc4: $39
    ld d, c                                       ; $5bc5: $51
    ld e, d                                       ; $5bc6: $5a
    ld e, d                                       ; $5bc7: $5a
    ld [hl], e                                    ; $5bc8: $73
    nop                                           ; $5bc9: $00
    inc d                                         ; $5bca: $14
    ld c, b                                       ; $5bcb: $48
    ld b, l                                       ; $5bcc: $45
    ld d, c                                       ; $5bcd: $51
    ld e, d                                       ; $5bce: $5a
    xor $30                                       ; $5bcf: $ee $30
    nop                                           ; $5bd1: $00
    nop                                           ; $5bd2: $00
    ld e, [hl]                                    ; $5bd3: $5e
    ld c, a                                       ; $5bd4: $4f
    sub c                                         ; $5bd5: $91
    add hl, hl                                    ; $5bd6: $29
    sbc a                                         ; $5bd7: $9f
    ld h, a                                       ; $5bd8: $67
    nop                                           ; $5bd9: $00
    nop                                           ; $5bda: $00
    ld d, $2e                                     ; $5bdb: $16 $2e
    sbc [hl]                                      ; $5bdd: $9e
    ld d, a                                       ; $5bde: $57
    ld [$0314], a                                 ; $5bdf: $ea $14 $03
    nop                                           ; $5be2: $00
    ld e, l                                       ; $5be3: $5d
    ld [hl+], a                                   ; $5be4: $22
    rra                                           ; $5be5: $1f
    ld b, e                                       ; $5be6: $43
    rst $38                                       ; $5be7: $ff
    ld e, e                                       ; $5be8: $5b
    nop                                           ; $5be9: $00
    nop                                           ; $5bea: $00
    cp l                                          ; $5beb: $bd
    ld [hl-], a                                   ; $5bec: $32
    cpl                                           ; $5bed: $2f
    ld de, $77ff                                  ; $5bee: $11 $ff $77
    ld bc, $ee00                                  ; $5bf1: $01 $00 $ee
    inc l                                         ; $5bf4: $2c
    rla                                           ; $5bf5: $17

jr_0b5_5bf6:
    ld a, [hl+]                                   ; $5bf6: $2a
    rst $18                                       ; $5bf7: $df
    ld l, $00                                     ; $5bf8: $2e $00
    inc e                                         ; $5bfa: $1c
    xor $30                                       ; $5bfb: $ee $30
    jr nc, jr_0b5_5c59                            ; $5bfd: $30 $5a

    ld e, c                                       ; $5bff: $59
    ld l, a                                       ; $5c00: $6f
    nop                                           ; $5c01: $00
    inc d                                         ; $5c02: $14
    add hl, bc                                    ; $5c03: $09
    add hl, sp                                    ; $5c04: $39
    ld [hl], d                                    ; $5c05: $72
    ld e, [hl]                                    ; $5c06: $5e
    cp c                                          ; $5c07: $b9
    add hl, bc                                    ; $5c08: $09
    ld c, e                                       ; $5c09: $4b
    dec h                                         ; $5c0a: $25
    ld e, l                                       ; $5c0b: $5d
    ld [hl+], a                                   ; $5c0c: $22
    rst $18                                       ; $5c0d: $df
    ld l, e                                       ; $5c0e: $6b
    db $fd                                        ; $5c0f: $fd
    ld b, d                                       ; $5c10: $42
    ld b, e                                       ; $5c11: $43
    nop                                           ; $5c12: $00
    ret nc                                        ; $5c13: $d0

    dec [hl]                                      ; $5c14: $35
    ld e, $43                                     ; $5c15: $1e $43
    sbc [hl]                                      ; $5c17: $9e
    ld h, a                                       ; $5c18: $67
    ld bc, $3800                                  ; $5c19: $01 $00 $38
    ld l, $7f                                     ; $5c1c: $2e $7f
    ld d, e                                       ; $5c1e: $53
    inc c                                         ; $5c1f: $0c
    dec d                                         ; $5c20: $15
    nop                                           ; $5c21: $00
    nop                                           ; $5c22: $00
    ld [hl], d                                    ; $5c23: $72
    ld de, $163e                                  ; $5c24: $11 $3e $16
    sbc $36                                       ; $5c27: $de $36
    nop                                           ; $5c29: $00
    nop                                           ; $5c2a: $00
    jp c, $ee19                                   ; $5c2b: $da $19 $ee

    inc d                                         ; $5c2e: $14
    sbc a                                         ; $5c2f: $9f
    ld c, e                                       ; $5c30: $4b
    nop                                           ; $5c31: $00
    inc e                                         ; $5c32: $1c
    or h                                          ; $5c33: $b4
    ld h, d                                       ; $5c34: $62
    call $ff2c                                    ; $5c35: $cd $2c $ff
    ld a, a                                       ; $5c38: $7f
    nop                                           ; $5c39: $00
    jr jr_0b5_5bf6                                ; $5c3a: $18 $ba

    add hl, bc                                    ; $5c3c: $09
    xor e                                         ; $5c3d: $ab
    ld c, l                                       ; $5c3e: $4d
    sub $66                                       ; $5c3f: $d6 $66
    nop                                           ; $5c41: $00
    nop                                           ; $5c42: $00
    dec sp                                        ; $5c43: $3b
    ld e, $45                                     ; $5c44: $1e $45
    nop                                           ; $5c46: $00
    xor b                                         ; $5c47: $a8
    stop                                          ; $5c48: $10 $00
    nop                                           ; $5c4a: $00
    inc e                                         ; $5c4b: $1c
    ld a, [de]                                    ; $5c4c: $1a
    dec e                                         ; $5c4d: $1d
    ld b, a                                       ; $5c4e: $47
    dec hl                                        ; $5c4f: $2b
    dec e                                         ; $5c50: $1d
    ld bc, $f700                                  ; $5c51: $01 $00 $f7
    dec e                                         ; $5c54: $1d
    ld a, [hl]                                    ; $5c55: $7e
    ld d, a                                       ; $5c56: $57
    ld [hl], h                                    ; $5c57: $74
    add hl, bc                                    ; $5c58: $09

jr_0b5_5c59:
    ld bc, $1100                                  ; $5c59: $01 $00 $11
    ld bc, $161d                                  ; $5c5c: $01 $1d $16
    call nc, $011d                                ; $5c5f: $d4 $1d $01
    nop                                           ; $5c62: $00
    inc sp                                        ; $5c63: $33
    ld bc, $2cad                                  ; $5c64: $01 $ad $2c
    ld a, a                                       ; $5c67: $7f
    ld a, [hl+]                                   ; $5c68: $2a
    nop                                           ; $5c69: $00
    inc e                                         ; $5c6a: $1c
    or h                                          ; $5c6b: $b4
    ld h, d                                       ; $5c6c: $62
    call $bd2c                                    ; $5c6d: $cd $2c $bd
    ld [hl], a                                    ; $5c70: $77
    nop                                           ; $5c71: $00
    jr @-$74                                      ; $5c72: $18 $8a

    ld c, c                                       ; $5c74: $49
    ld a, d                                       ; $5c75: $7a
    ld [hl], e                                    ; $5c76: $73
    ld [hl], d                                    ; $5c77: $72
    ld e, d                                       ; $5c78: $5a
    nop                                           ; $5c79: $00
    nop                                           ; $5c7a: $00
    xor d                                         ; $5c7b: $aa
    inc b                                         ; $5c7c: $04
    rrca                                          ; $5c7d: $0f
    dec b                                         ; $5c7e: $05
    ld h, l                                       ; $5c7f: $65
    nop                                           ; $5c80: $00
    nop                                           ; $5c81: $00
    nop                                           ; $5c82: $00
    inc sp                                        ; $5c83: $33
    ld bc, $267f                                  ; $5c84: $01 $7f $26
    ld h, a                                       ; $5c87: $67
    nop                                           ; $5c88: $00
    ld hl, $5900                                  ; $5c89: $21 $00 $59
    ld l, $ff                                     ; $5c8c: $2e $ff
    ld [hl], a                                    ; $5c8e: $77
    ld c, $11                                     ; $5c8f: $0e $11
    ld bc, $0f00                                  ; $5c91: $01 $00 $0f
    add hl, bc                                    ; $5c94: $09
    db $fd                                        ; $5c95: $fd
    add hl, de                                    ; $5c96: $19
    ld l, b                                       ; $5c97: $68
    nop                                           ; $5c98: $00
    ld hl, $9400                                  ; $5c99: $21 $00 $94
    add hl, de                                    ; $5c9c: $19
    adc $10                                       ; $5c9d: $ce $10
    rst $18                                       ; $5c9f: $df
    ld [hl-], a                                   ; $5ca0: $32
    nop                                           ; $5ca1: $00
    nop                                           ; $5ca2: $00
    rla                                           ; $5ca3: $17
    ld l, e                                       ; $5ca4: $6b
    nop                                           ; $5ca5: $00
    jr nz, @-$20                                  ; $5ca6: $20 $de

    ld a, a                                       ; $5ca8: $7f
    nop                                           ; $5ca9: $00
    inc e                                         ; $5caa: $1c
    xor h                                         ; $5cab: $ac
    ld c, l                                       ; $5cac: $4d
    or h                                          ; $5cad: $b4
    ld h, d                                       ; $5cae: $62
    sbc e                                         ; $5caf: $9b
    ld [hl], a                                    ; $5cb0: $77
    ld bc, $5200                                  ; $5cb1: $01 $00 $52
    dec c                                         ; $5cb4: $0d
    xor d                                         ; $5cb5: $aa
    inc b                                         ; $5cb6: $04
    or [hl]                                       ; $5cb7: $b6
    dec d                                         ; $5cb8: $15
    nop                                           ; $5cb9: $00
    nop                                           ; $5cba: $00
    ld [hl-], a                                   ; $5cbb: $32
    add hl, bc                                    ; $5cbc: $09
    rst $38                                       ; $5cbd: $ff
    ld [hl], $a9                                  ; $5cbe: $36 $a9
    nop                                           ; $5cc0: $00
    inc hl                                        ; $5cc1: $23
    nop                                           ; $5cc2: $00
    jr jr_0b5_5ceb                                ; $5cc3: $18 $26

    rrca                                          ; $5cc5: $0f
    add hl, bc                                    ; $5cc6: $09
    dec a                                         ; $5cc7: $3d
    ld c, e                                       ; $5cc8: $4b
    ld bc, $bd00                                  ; $5cc9: $01 $00 $bd
    ld [hl], $ff                                  ; $5ccc: $36 $ff
    ld [hl], e                                    ; $5cce: $73
    ld c, d                                       ; $5ccf: $4a
    ld hl, $0000                                  ; $5cd0: $21 $00 $00
    jr c, jr_0b5_5d03                             ; $5cd3: $38 $2e

    ccf                                           ; $5cd5: $3f
    ld b, a                                       ; $5cd6: $47
    sbc a                                         ; $5cd7: $9f
    ld l, $00                                     ; $5cd8: $2e $00
    jr nz, @-$6b                                  ; $5cda: $20 $93

    ld e, [hl]                                    ; $5cdc: $5e
    db $dd                                        ; $5cdd: $dd
    ld a, e                                       ; $5cde: $7b
    jr jr_0b5_5d4c                                ; $5cdf: $18 $6b

    nop                                           ; $5ce1: $00
    jr nz, @-$73                                  ; $5ce2: $20 $8b

    ld c, c                                       ; $5ce4: $49
    push de                                       ; $5ce5: $d5
    ld h, [hl]                                    ; $5ce6: $66
    cpl                                           ; $5ce7: $2f
    ld d, [hl]                                    ; $5ce8: $56
    nop                                           ; $5ce9: $00
    nop                                           ; $5cea: $00

jr_0b5_5ceb:
    rrca                                          ; $5ceb: $0f
    add hl, bc                                    ; $5cec: $09
    ld sp, hl                                     ; $5ced: $f9
    dec e                                         ; $5cee: $1d
    ld [hl], l                                    ; $5cef: $75
    dec c                                         ; $5cf0: $0d
    nop                                           ; $5cf1: $00
    nop                                           ; $5cf2: $00
    ld d, d                                       ; $5cf3: $52
    dec c                                         ; $5cf4: $0d
    cp l                                          ; $5cf5: $bd
    ld [hl-], a                                   ; $5cf6: $32
    xor b                                         ; $5cf7: $a8
    inc c                                         ; $5cf8: $0c
    inc bc                                        ; $5cf9: $03
    nop                                           ; $5cfa: $00
    ld [hl], l                                    ; $5cfb: $75
    ld a, $ea                                     ; $5cfc: $3e $ea
    db $10                                        ; $5cfe: $10
    cp [hl]                                       ; $5cff: $be
    ld e, e                                       ; $5d00: $5b
    ld b, d                                       ; $5d01: $42
    inc b                                         ; $5d02: $04

jr_0b5_5d03:
    reti                                          ; $5d03: $d9


    ld b, [hl]                                    ; $5d04: $46
    rst $38                                       ; $5d05: $ff
    ld l, a                                       ; $5d06: $6f
    ld a, a                                       ; $5d07: $7f
    ld l, $00                                     ; $5d08: $2e $00
    nop                                           ; $5d0a: $00
    sbc $7f                                       ; $5d0b: $de $7f
    cp a                                          ; $5d0d: $bf
    ld [hl], $5f                                  ; $5d0e: $36 $5f
    ld b, a                                       ; $5d10: $47
    nop                                           ; $5d11: $00
    jr nz, jr_0b5_5d65                            ; $5d12: $20 $51

    ld e, d                                       ; $5d14: $5a
    rst $30                                       ; $5d15: $f7
    ld l, d                                       ; $5d16: $6a
    sbc h                                         ; $5d17: $9c
    ld [hl], a                                    ; $5d18: $77
    nop                                           ; $5d19: $00
    jr nz, jr_0b5_5d64                            ; $5d1a: $20 $48

    ld b, c                                       ; $5d1c: $41
    cpl                                           ; $5d1d: $2f
    ld d, [hl]                                    ; $5d1e: $56
    adc e                                         ; $5d1f: $8b
    ld c, c                                       ; $5d20: $49
    nop                                           ; $5d21: $00
    nop                                           ; $5d22: $00
    sub [hl]                                      ; $5d23: $96
    ld de, $62b4                                  ; $5d24: $11 $b4 $62
    xor d                                         ; $5d27: $aa
    nop                                           ; $5d28: $00
    ld b, e                                       ; $5d29: $43
    inc b                                         ; $5d2a: $04
    rst $18                                       ; $5d2b: $df
    ld e, a                                       ; $5d2c: $5f
    db $10                                        ; $5d2d: $10
    dec b                                         ; $5d2e: $05
    sub $21                                       ; $5d2f: $d6 $21
    nop                                           ; $5d31: $00
    nop                                           ; $5d32: $00
    or e                                          ; $5d33: $b3
    ld hl, $433f                                  ; $5d34: $21 $3f $43
    ld de, $0101                                  ; $5d37: $11 $01 $01
    nop                                           ; $5d3a: $00
    ld a, $1a                                     ; $5d3b: $3e $1a
    rst $28                                       ; $5d3d: $ef
    nop                                           ; $5d3e: $00
    ld a, a                                       ; $5d3f: $7f
    ld l, $00                                     ; $5d40: $2e $00
    nop                                           ; $5d42: $00
    rst $30                                       ; $5d43: $f7
    ld l, d                                       ; $5d44: $6a
    ld a, a                                       ; $5d45: $7f
    ld l, $ff                                     ; $5d46: $2e $ff
    ld b, d                                       ; $5d48: $42
    nop                                           ; $5d49: $00
    jr nz, @-$11                                  ; $5d4a: $20 $ed

jr_0b5_5d4c:
    ld d, c                                       ; $5d4c: $51
    ld [hl], d                                    ; $5d4d: $72
    ld e, [hl]                                    ; $5d4e: $5e
    cpl                                           ; $5d4f: $2f
    ld d, [hl]                                    ; $5d50: $56
    nop                                           ; $5d51: $00
    jr nz, @+$08                                  ; $5d52: $20 $06

    ld b, c                                       ; $5d54: $41
    ld h, $41                                     ; $5d55: $26 $41
    sub $21                                       ; $5d57: $d6 $21
    ld bc, $0f00                                  ; $5d59: $01 $00 $0f
    ld bc, $498a                                  ; $5d5c: $01 $8a $49
    rst $10                                       ; $5d5f: $d7
    add hl, de                                    ; $5d60: $19
    ld b, e                                       ; $5d61: $43
    inc b                                         ; $5d62: $04
    ld a, d                                       ; $5d63: $7a

jr_0b5_5d64:
    ld [hl-], a                                   ; $5d64: $32

jr_0b5_5d65:
    ld sp, $9f05                                  ; $5d65: $31 $05 $9f
    ld c, a                                       ; $5d68: $4f

jr_0b5_5d69:
    nop                                           ; $5d69: $00
    nop                                           ; $5d6a: $00
    sbc a                                         ; $5d6b: $9f
    ld l, $cc                                     ; $5d6c: $2e $cc
    nop                                           ; $5d6e: $00
    rra                                           ; $5d6f: $1f
    ld b, e                                       ; $5d70: $43
    ld [hl+], a                                   ; $5d71: $22
    nop                                           ; $5d72: $00
    ld d, c                                       ; $5d73: $51
    ld de, $15b9                                  ; $5d74: $11 $b9 $15
    xor l                                         ; $5d77: $ad
    dec l                                         ; $5d78: $2d
    nop                                           ; $5d79: $00

jr_0b5_5d7a:
    nop                                           ; $5d7a: $00
    cpl                                           ; $5d7b: $2f
    ld d, [hl]                                    ; $5d7c: $56
    ld e, l                                       ; $5d7d: $5d
    ld l, $69                                     ; $5d7e: $2e $69
    ld b, l                                       ; $5d80: $45
    nop                                           ; $5d81: $00
    jr nz, jr_0b5_5d69                            ; $5d82: $20 $e5

    inc a                                         ; $5d84: $3c
    ld c, b                                       ; $5d85: $48
    ld b, l                                       ; $5d86: $45
    ld l, c                                       ; $5d87: $69
    ld b, l                                       ; $5d88: $45
    nop                                           ; $5d89: $00
    jr nz, jr_0b5_5d7a                            ; $5d8a: $20 $ee

    ld e, l                                       ; $5d8c: $5d
    ld sp, $9f05                                  ; $5d8d: $31 $05 $9f
    ld c, a                                       ; $5d90: $4f
    inc hl                                        ; $5d91: $23
    nop                                           ; $5d92: $00
    push hl                                       ; $5d93: $e5
    inc a                                         ; $5d94: $3c
    ld c, $09                                     ; $5d95: $0e $09
    adc d                                         ; $5d97: $8a
    ld c, l                                       ; $5d98: $4d
    ld bc, $1700                                  ; $5d99: $01 $00 $17
    ld a, [hl+]                                   ; $5d9c: $2a
    ccf                                           ; $5d9d: $3f
    ld b, e                                       ; $5d9e: $43
    ld c, $11                                     ; $5d9f: $0e $11

jr_0b5_5da1:
    ld [hl+], a                                   ; $5da1: $22
    nop                                           ; $5da2: $00
    dec e                                         ; $5da3: $1d
    ld e, $cb                                     ; $5da4: $1e $cb
    inc b                                         ; $5da6: $04
    ld a, a                                       ; $5da7: $7f
    ld l, $01                                     ; $5da8: $2e $01
    nop                                           ; $5daa: $00
    reti                                          ; $5dab: $d9


    ld b, [hl]                                    ; $5dac: $46
    ld l, $11                                     ; $5dad: $2e $11
    rst $38                                       ; $5daf: $ff
    ld l, a                                       ; $5db0: $6f
    nop                                           ; $5db1: $00
    nop                                           ; $5db2: $00
    ld [hl], a                                    ; $5db3: $77
    dec c                                         ; $5db4: $0d
    ld c, b                                       ; $5db5: $48
    ld b, l                                       ; $5db6: $45
    ld a, a                                       ; $5db7: $7f
    ld [hl-], a                                   ; $5db8: $32
    nop                                           ; $5db9: $00
    jr nz, jr_0b5_5da1                            ; $5dba: $20 $e5

    inc a                                         ; $5dbc: $3c
    ld c, b                                       ; $5dbd: $48
    ld b, l                                       ; $5dbe: $45
    ld a, a                                       ; $5dbf: $7f

jr_0b5_5dc0:
    ld [hl-], a                                   ; $5dc0: $32
    nop                                           ; $5dc1: $00
    jr nz, jr_0b5_5ddb                            ; $5dc2: $20 $17

    ld a, [hl+]                                   ; $5dc4: $2a
    ccf                                           ; $5dc5: $3f
    ld b, e                                       ; $5dc6: $43
    ld c, $11                                     ; $5dc7: $0e $11
    ld bc, $9600                                  ; $5dc9: $01 $00 $96
    dec d                                         ; $5dcc: $15
    xor h                                         ; $5dcd: $ac
    ld d, l                                       ; $5dce: $55
    sub h                                         ; $5dcf: $94
    ld l, [hl]                                    ; $5dd0: $6e
    nop                                           ; $5dd1: $00
    nop                                           ; $5dd2: $00
    sbc [hl]                                      ; $5dd3: $9e
    ld [hl-], a                                   ; $5dd4: $32
    ld [hl-], a                                   ; $5dd5: $32
    ld de, $4b3f                                  ; $5dd6: $11 $3f $4b
    nop                                           ; $5dd9: $00
    nop                                           ; $5dda: $00

jr_0b5_5ddb:
    cp c                                          ; $5ddb: $b9
    dec d                                         ; $5ddc: $15
    ld a, l                                       ; $5ddd: $7d
    ld [hl-], a                                   ; $5dde: $32
    adc c                                         ; $5ddf: $89
    nop                                           ; $5de0: $00
    nop                                           ; $5de1: $00
    nop                                           ; $5de2: $00
    ld a, d                                       ; $5de3: $7a
    ld l, $53                                     ; $5de4: $2e $53
    dec c                                         ; $5de6: $0d
    rst $38                                       ; $5de7: $ff
    ld [hl], e                                    ; $5de8: $73
    nop                                           ; $5de9: $00
    nop                                           ; $5dea: $00
    db $10                                        ; $5deb: $10
    ld h, d                                       ; $5dec: $62
    sbc b                                         ; $5ded: $98
    ld de, $20c8                                  ; $5dee: $11 $c8 $20
    nop                                           ; $5df1: $00
    jr nz, jr_0b5_5e04                            ; $5df2: $20 $10

    ld h, d                                       ; $5df4: $62
    sbc b                                         ; $5df5: $98
    ld de, $20c8                                  ; $5df6: $11 $c8 $20
    nop                                           ; $5df9: $00
    jr nz, @-$60                                  ; $5dfa: $20 $9e

    ld [hl-], a                                   ; $5dfc: $32
    ld [hl-], a                                   ; $5dfd: $32
    ld de, $4b3f                                  ; $5dfe: $11 $3f $4b
    nop                                           ; $5e01: $00
    nop                                           ; $5e02: $00
    rst $30                                       ; $5e03: $f7

jr_0b5_5e04:
    ld [hl], d                                    ; $5e04: $72
    xor e                                         ; $5e05: $ab
    inc b                                         ; $5e06: $04

jr_0b5_5e07:
    rst $38                                       ; $5e07: $ff
    ld a, a                                       ; $5e08: $7f
    ld de, $1c0d                                  ; $5e09: $11 $0d $1c
    ld [hl+], a                                   ; $5e0c: $22
    ld a, a                                       ; $5e0d: $7f
    ld l, $bf                                     ; $5e0e: $2e $bf
    ld [hl-], a                                   ; $5e10: $32
    nop                                           ; $5e11: $00
    nop                                           ; $5e12: $00
    sbc b                                         ; $5e13: $98
    ld de, $008a                                  ; $5e14: $11 $8a $00
    dec a                                         ; $5e17: $3d
    ld [hl+], a                                   ; $5e18: $22
    nop                                           ; $5e19: $00
    nop                                           ; $5e1a: $00
    sub [hl]                                      ; $5e1b: $96
    dec d                                         ; $5e1c: $15
    ld b, [hl]                                    ; $5e1d: $46
    nop                                           ; $5e1e: $00
    adc b                                         ; $5e1f: $88
    inc b                                         ; $5e20: $04
    ld bc, $9408                                  ; $5e21: $01 $08 $94
    ld [hl], d                                    ; $5e24: $72
    ld [hl-], a                                   ; $5e25: $32
    add hl, bc                                    ; $5e26: $09
    ld a, e                                       ; $5e27: $7b
    ld [hl], a                                    ; $5e28: $77
    nop                                           ; $5e29: $00
    jr nz, jr_0b5_5dc0                            ; $5e2a: $20 $94

    ld [hl], d                                    ; $5e2c: $72
    ld [hl-], a                                   ; $5e2d: $32
    add hl, bc                                    ; $5e2e: $09
    ld a, e                                       ; $5e2f: $7b
    ld [hl], a                                    ; $5e30: $77
    nop                                           ; $5e31: $00
    jr nz, jr_0b5_5e50                            ; $5e32: $20 $1c

    ld [hl+], a                                   ; $5e34: $22
    ld a, a                                       ; $5e35: $7f
    ld l, $bf                                     ; $5e36: $2e $bf
    ld [hl-], a                                   ; $5e38: $32
    nop                                           ; $5e39: $00
    ld [$21da], sp                                ; $5e3a: $08 $da $21
    sbc h                                         ; $5e3d: $9c
    ld [hl], a                                    ; $5e3e: $77
    ld de, $0011                                  ; $5e3f: $11 $11 $00
    nop                                           ; $5e42: $00
    ld [hl], h                                    ; $5e43: $74
    add hl, de                                    ; $5e44: $19
    adc d                                         ; $5e45: $8a
    ld [$2e5e], sp                                ; $5e46: $08 $5e $2e
    nop                                           ; $5e49: $00
    nop                                           ; $5e4a: $00
    rrca                                          ; $5e4b: $0f
    ld h, d                                       ; $5e4c: $62
    sbc h                                         ; $5e4d: $9c
    ld a, e                                       ; $5e4e: $7b
    or l                                          ; $5e4f: $b5

jr_0b5_5e50:
    ld l, [hl]                                    ; $5e50: $6e
    nop                                           ; $5e51: $00
    nop                                           ; $5e52: $00
    push hl                                       ; $5e53: $e5
    inc a                                         ; $5e54: $3c
    rrca                                          ; $5e55: $0f
    ld e, d                                       ; $5e56: $5a
    ld c, c                                       ; $5e57: $49
    ld c, c                                       ; $5e58: $49
    nop                                           ; $5e59: $00
    nop                                           ; $5e5a: $00

jr_0b5_5e5b:
    rst $30                                       ; $5e5b: $f7
    ld [hl], d                                    ; $5e5c: $72
    sbc $7b                                       ; $5e5d: $de $7b
    nop                                           ; $5e5f: $00
    jr nz, jr_0b5_5e62                            ; $5e60: $20 $00

jr_0b5_5e62:
    jr nz, jr_0b5_5e5b                            ; $5e62: $20 $f7

    ld [hl], d                                    ; $5e64: $72
    sbc $7b                                       ; $5e65: $de $7b
    nop                                           ; $5e67: $00
    jr nz, jr_0b5_5e6a                            ; $5e68: $20 $00

jr_0b5_5e6a:
    jr nz, jr_0b5_5ee0                            ; $5e6a: $20 $74

    add hl, de                                    ; $5e6c: $19
    adc d                                         ; $5e6d: $8a
    ld [$2e5e], sp                                ; $5e6e: $08 $5e $2e
    nop                                           ; $5e71: $00
    jr nz, jr_0b5_5e07                            ; $5e72: $20 $93

    ld h, d                                       ; $5e74: $62
    sbc h                                         ; $5e75: $9c
    ld [hl], a                                    ; $5e76: $77
    ld l, c                                       ; $5e77: $69
    ld b, l                                       ; $5e78: $45
    push hl                                       ; $5e79: $e5
    inc a                                         ; $5e7a: $3c
    ld sp, $f766                                  ; $5e7b: $31 $66 $f7
    ld [hl], d                                    ; $5e7e: $72
    ld c, c                                       ; $5e7f: $49
    ld c, l                                       ; $5e80: $4d
    daa                                           ; $5e81: $27
    ld b, l                                       ; $5e82: $45
    sub l                                         ; $5e83: $95
    ld [hl], d                                    ; $5e84: $72
    sbc h                                         ; $5e85: $9c
    ld a, e                                       ; $5e86: $7b
    adc $5d                                       ; $5e87: $ce $5d
    ld l, d                                       ; $5e89: $6a
    ld c, l                                       ; $5e8a: $4d
    sub h                                         ; $5e8b: $94
    ld l, [hl]                                    ; $5e8c: $6e
    jr nc, @+$60                                  ; $5e8d: $30 $5e

    ld e, d                                       ; $5e8f: $5a
    ld [hl], e                                    ; $5e90: $73
    nop                                           ; $5e91: $00
    jr nz, @+$75                                  ; $5e92: $20 $73

    ld e, [hl]                                    ; $5e94: $5e
    cp h                                          ; $5e95: $bc
    ld a, e                                       ; $5e96: $7b
    push hl                                       ; $5e97: $e5
    inc a                                         ; $5e98: $3c
    nop                                           ; $5e99: $00
    jr nz, @+$75                                  ; $5e9a: $20 $73

    ld e, [hl]                                    ; $5e9c: $5e
    cp h                                          ; $5e9d: $bc
    ld a, e                                       ; $5e9e: $7b
    push hl                                       ; $5e9f: $e5
    inc a                                         ; $5ea0: $3c
    nop                                           ; $5ea1: $00
    jr nz, jr_0b5_5ea4                            ; $5ea2: $20 $00

jr_0b5_5ea4:
    jr nz, jr_0b5_5ea6                            ; $5ea4: $20 $00

jr_0b5_5ea6:
    jr nz, jr_0b5_5ea8                            ; $5ea6: $20 $00

jr_0b5_5ea8:
    jr nz, jr_0b5_5eaa                            ; $5ea8: $20 $00

jr_0b5_5eaa:
    jr nz, jr_0b5_5eac                            ; $5eaa: $20 $00

jr_0b5_5eac:
    jr nz, jr_0b5_5eae                            ; $5eac: $20 $00

jr_0b5_5eae:
    jr nz, jr_0b5_5eb0                            ; $5eae: $20 $00

jr_0b5_5eb0:
    jr nz, jr_0b5_5eb2                            ; $5eb0: $20 $00

jr_0b5_5eb2:
    jr nz, jr_0b5_5eb4                            ; $5eb2: $20 $00

jr_0b5_5eb4:
    jr nz, jr_0b5_5eb6                            ; $5eb4: $20 $00

jr_0b5_5eb6:
    jr nz, jr_0b5_5eb8                            ; $5eb6: $20 $00

jr_0b5_5eb8:
    jr nz, jr_0b5_5eba                            ; $5eb8: $20 $00

jr_0b5_5eba:
    nop                                           ; $5eba: $00
    rst $38                                       ; $5ebb: $ff
    ld a, a                                       ; $5ebc: $7f
    nop                                           ; $5ebd: $00
    jr nz, @+$41                                  ; $5ebe: $20 $3f

    ld d, e                                       ; $5ec0: $53
    nop                                           ; $5ec1: $00
    jr nz, @+$01                                  ; $5ec2: $20 $ff

    ld a, a                                       ; $5ec4: $7f
    nop                                           ; $5ec5: $00
    jr nz, @+$41                                  ; $5ec6: $20 $3f

    ld d, e                                       ; $5ec8: $53
    nop                                           ; $5ec9: $00
    jr nz, @+$01                                  ; $5eca: $20 $ff

    ld a, a                                       ; $5ecc: $7f
    nop                                           ; $5ecd: $00
    jr nz, @+$41                                  ; $5ece: $20 $3f

    ld d, e                                       ; $5ed0: $53
    nop                                           ; $5ed1: $00
    jr nz, @+$01                                  ; $5ed2: $20 $ff

    ld a, a                                       ; $5ed4: $7f
    nop                                           ; $5ed5: $00
    jr nz, @+$41                                  ; $5ed6: $20 $3f

    ld d, e                                       ; $5ed8: $53
    nop                                           ; $5ed9: $00
    jr nz, jr_0b5_5edc                            ; $5eda: $20 $00

jr_0b5_5edc:
    jr nz, jr_0b5_5ede                            ; $5edc: $20 $00

jr_0b5_5ede:
    jr nz, jr_0b5_5ee0                            ; $5ede: $20 $00

jr_0b5_5ee0:
    jr nz, jr_0b5_5ee2                            ; $5ee0: $20 $00

jr_0b5_5ee2:
    jr nz, jr_0b5_5ee4                            ; $5ee2: $20 $00

jr_0b5_5ee4:
    jr nz, jr_0b5_5ee6                            ; $5ee4: $20 $00

jr_0b5_5ee6:
    jr nz, jr_0b5_5ee8                            ; $5ee6: $20 $00

jr_0b5_5ee8:
    jr nz, jr_0b5_5eea                            ; $5ee8: $20 $00

jr_0b5_5eea:
    jr nz, jr_0b5_5eec                            ; $5eea: $20 $00

jr_0b5_5eec:
    jr nz, jr_0b5_5eee                            ; $5eec: $20 $00

jr_0b5_5eee:
    jr nz, jr_0b5_5ef0                            ; $5eee: $20 $00

jr_0b5_5ef0:
    jr nz, jr_0b5_5ef2                            ; $5ef0: $20 $00

jr_0b5_5ef2:
    nop                                           ; $5ef2: $00
    rst $38                                       ; $5ef3: $ff
    ld a, a                                       ; $5ef4: $7f
    nop                                           ; $5ef5: $00

jr_0b5_5ef6:
    jr nz, @+$41                                  ; $5ef6: $20 $3f

    ld d, e                                       ; $5ef8: $53
    nop                                           ; $5ef9: $00
    nop                                           ; $5efa: $00
    nop                                           ; $5efb: $00
    jr nz, jr_0b5_5efe                            ; $5efc: $20 $00

jr_0b5_5efe:
    jr nz, @+$41                                  ; $5efe: $20 $3f

    ld d, e                                       ; $5f00: $53
    nop                                           ; $5f01: $00
    jr nz, jr_0b5_5f04                            ; $5f02: $20 $00

jr_0b5_5f04:
    jr nz, jr_0b5_5f06                            ; $5f04: $20 $00

jr_0b5_5f06:
    jr nz, jr_0b5_5f47                            ; $5f06: $20 $3f

    ld d, e                                       ; $5f08: $53
    nop                                           ; $5f09: $00
    jr nz, jr_0b5_5f0c                            ; $5f0a: $20 $00

jr_0b5_5f0c:
    jr nz, jr_0b5_5f0e                            ; $5f0c: $20 $00

jr_0b5_5f0e:
    jr nz, @+$41                                  ; $5f0e: $20 $3f

    ld d, e                                       ; $5f10: $53
    nop                                           ; $5f11: $00
    jr nz, jr_0b5_5f14                            ; $5f12: $20 $00

jr_0b5_5f14:
    jr nz, jr_0b5_5f16                            ; $5f14: $20 $00

jr_0b5_5f16:
    jr nz, jr_0b5_5f18                            ; $5f16: $20 $00

jr_0b5_5f18:
    jr nz, jr_0b5_5f1a                            ; $5f18: $20 $00

jr_0b5_5f1a:
    jr nz, jr_0b5_5f1c                            ; $5f1a: $20 $00

jr_0b5_5f1c:
    jr nz, jr_0b5_5f1e                            ; $5f1c: $20 $00

jr_0b5_5f1e:
    jr nz, jr_0b5_5f20                            ; $5f1e: $20 $00

jr_0b5_5f20:
    jr nz, jr_0b5_5f22                            ; $5f20: $20 $00

jr_0b5_5f22:
    nop                                           ; $5f22: $00
    rst $38                                       ; $5f23: $ff
    ld a, a                                       ; $5f24: $7f
    nop                                           ; $5f25: $00
    jr nz, jr_0b5_5f28                            ; $5f26: $20 $00

jr_0b5_5f28:
    jr nz, jr_0b5_5f2a                            ; $5f28: $20 $00

jr_0b5_5f2a:
    nop                                           ; $5f2a: $00
    sub l                                         ; $5f2b: $95
    ld [hl], c                                    ; $5f2c: $71
    rst $38                                       ; $5f2d: $ff
    ld a, a                                       ; $5f2e: $7f
    ccf                                           ; $5f2f: $3f
    ld d, e                                       ; $5f30: $53
    nop                                           ; $5f31: $00
    nop                                           ; $5f32: $00
    rst $38                                       ; $5f33: $ff
    ld a, a                                       ; $5f34: $7f
    nop                                           ; $5f35: $00
    jr nz, jr_0b5_5f77                            ; $5f36: $20 $3f

    ld d, e                                       ; $5f38: $53
    nop                                           ; $5f39: $00
    nop                                           ; $5f3a: $00
    call nc, Call_000_0035                        ; $5f3b: $d4 $35 $00
    jr nz, jr_0b5_5f9f                            ; $5f3e: $20 $5f

    ld e, e                                       ; $5f40: $5b
    nop                                           ; $5f41: $00
    nop                                           ; $5f42: $00
    sub c                                         ; $5f43: $91
    dec l                                         ; $5f44: $2d
    rst $18                                       ; $5f45: $df
    ld l, a                                       ; $5f46: $6f

jr_0b5_5f47:
    nop                                           ; $5f47: $00
    jr nz, jr_0b5_5f4a                            ; $5f48: $20 $00

jr_0b5_5f4a:
    jr nz, @+$01                                  ; $5f4a: $20 $ff

    ld a, a                                       ; $5f4c: $7f
    nop                                           ; $5f4d: $00
    jr nz, jr_0b5_5f50                            ; $5f4e: $20 $00

jr_0b5_5f50:
    jr nz, jr_0b5_5f52                            ; $5f50: $20 $00

jr_0b5_5f52:
    jr nz, @+$01                                  ; $5f52: $20 $ff

    ld a, a                                       ; $5f54: $7f
    nop                                           ; $5f55: $00
    jr nz, jr_0b5_5f58                            ; $5f56: $20 $00

jr_0b5_5f58:
    jr nz, jr_0b5_5f5a                            ; $5f58: $20 $00

jr_0b5_5f5a:
    nop                                           ; $5f5a: $00
    rst $38                                       ; $5f5b: $ff
    ld a, a                                       ; $5f5c: $7f
    nop                                           ; $5f5d: $00
    jr nz, jr_0b5_5f60                            ; $5f5e: $20 $00

jr_0b5_5f60:
    jr nz, jr_0b5_5ef6                            ; $5f60: $20 $94

    ld l, l                                       ; $5f62: $6d
    sub h                                         ; $5f63: $94
    ld [hl], c                                    ; $5f64: $71
    rst $18                                       ; $5f65: $df
    ld l, a                                       ; $5f66: $6f
    nop                                           ; $5f67: $00
    jr nz, jr_0b5_5f6a                            ; $5f68: $20 $00

jr_0b5_5f6a:
    nop                                           ; $5f6a: $00
    rst $38                                       ; $5f6b: $ff
    ld a, a                                       ; $5f6c: $7f
    nop                                           ; $5f6d: $00
    jr nz, @+$03                                  ; $5f6e: $20 $01

    ld [$0001], sp                                ; $5f70: $08 $01 $00
    ld a, a                                       ; $5f73: $7f
    ld e, e                                       ; $5f74: $5b
    ld [hl], b                                    ; $5f75: $70
    add hl, hl                                    ; $5f76: $29

jr_0b5_5f77:
    nop                                           ; $5f77: $00
    jr nz, jr_0b5_5f7a                            ; $5f78: $20 $00

jr_0b5_5f7a:
    nop                                           ; $5f7a: $00
    or h                                          ; $5f7b: $b4
    dec l                                         ; $5f7c: $2d
    nop                                           ; $5f7d: $00
    jr nz, jr_0b5_5fbf                            ; $5f7e: $20 $3f

    ld d, e                                       ; $5f80: $53
    nop                                           ; $5f81: $00
    jr nz, @+$01                                  ; $5f82: $20 $ff

    ld a, a                                       ; $5f84: $7f
    nop                                           ; $5f85: $00
    jr nz, jr_0b5_5f88                            ; $5f86: $20 $00

jr_0b5_5f88:
    jr nz, jr_0b5_5f8a                            ; $5f88: $20 $00

jr_0b5_5f8a:
    jr nz, @+$01                                  ; $5f8a: $20 $ff

    ld a, a                                       ; $5f8c: $7f
    nop                                           ; $5f8d: $00
    jr nz, jr_0b5_5f90                            ; $5f8e: $20 $00

jr_0b5_5f90:
    jr nz, jr_0b5_5f92                            ; $5f90: $20 $00

jr_0b5_5f92:
    nop                                           ; $5f92: $00
    sub h                                         ; $5f93: $94
    ld l, l                                       ; $5f94: $6d
    rst $38                                       ; $5f95: $ff
    ld a, a                                       ; $5f96: $7f
    nop                                           ; $5f97: $00
    jr nz, @+$03                                  ; $5f98: $20 $01

    ld [$6d74], sp                                ; $5f9a: $08 $74 $6d
    ld a, l                                       ; $5f9d: $7d
    ld a, [hl-]                                   ; $5f9e: $3a

jr_0b5_5f9f:
    sub h                                         ; $5f9f: $94
    ld l, l                                       ; $5fa0: $6d
    nop                                           ; $5fa1: $00
    inc b                                         ; $5fa2: $04
    ld [hl], h                                    ; $5fa3: $74
    ld l, l                                       ; $5fa4: $6d
    ld l, $19                                     ; $5fa5: $2e $19
    rst $38                                       ; $5fa7: $ff
    ld a, a                                       ; $5fa8: $7f
    nop                                           ; $5fa9: $00
    ld [$29b5], sp                                ; $5faa: $08 $b5 $29
    rra                                           ; $5fad: $1f
    ld d, a                                       ; $5fae: $57
    xor $14                                       ; $5faf: $ee $14
    nop                                           ; $5fb1: $00
    nop                                           ; $5fb2: $00
    sbc c                                         ; $5fb3: $99
    ld hl, $2000                                  ; $5fb4: $21 $00 $20
    rra                                           ; $5fb7: $1f
    ld d, e                                       ; $5fb8: $53
    nop                                           ; $5fb9: $00
    jr nz, jr_0b5_5f50                            ; $5fba: $20 $94

    ld l, l                                       ; $5fbc: $6d
    rst $38                                       ; $5fbd: $ff
    ld a, a                                       ; $5fbe: $7f

jr_0b5_5fbf:
    nop                                           ; $5fbf: $00
    jr nz, jr_0b5_5fc2                            ; $5fc0: $20 $00

jr_0b5_5fc2:
    nop                                           ; $5fc2: $00
    rst $38                                       ; $5fc3: $ff
    ld a, a                                       ; $5fc4: $7f
    nop                                           ; $5fc5: $00
    jr nz, jr_0b5_5fc8                            ; $5fc6: $20 $00

jr_0b5_5fc8:
    jr nz, jr_0b5_5fca                            ; $5fc8: $20 $00

jr_0b5_5fca:
    inc b                                         ; $5fca: $04
    ld [hl], h                                    ; $5fcb: $74
    ld l, l                                       ; $5fcc: $6d
    rst $38                                       ; $5fcd: $ff
    ld a, a                                       ; $5fce: $7f
    push de                                       ; $5fcf: $d5
    add hl, hl                                    ; $5fd0: $29
    ld bc, $7408                                  ; $5fd1: $01 $08 $74
    ld l, l                                       ; $5fd4: $6d

jr_0b5_5fd5:
    ld a, l                                       ; $5fd5: $7d
    ld a, [hl-]                                   ; $5fd6: $3a
    rst $28                                       ; $5fd7: $ef
    stop                                          ; $5fd8: $10 $00
    inc b                                         ; $5fda: $04
    ld [hl], e                                    ; $5fdb: $73
    ld l, c                                       ; $5fdc: $69
    rst $38                                       ; $5fdd: $ff
    ld a, a                                       ; $5fde: $7f
    db $ed                                        ; $5fdf: $ed
    inc d                                         ; $5fe0: $14
    nop                                           ; $5fe1: $00
    nop                                           ; $5fe2: $00
    ld e, e                                       ; $5fe3: $5b
    ld a, $9f                                     ; $5fe4: $3e $9f
    ld h, e                                       ; $5fe6: $63
    xor d                                         ; $5fe7: $aa
    inc c                                         ; $5fe8: $0c
    nop                                           ; $5fe9: $00
    inc e                                         ; $5fea: $1c
    ld [hl], e                                    ; $5feb: $73
    dec h                                         ; $5fec: $25
    ld e, h                                       ; $5fed: $5c
    ld a, $ed                                     ; $5fee: $3e $ed
    jr jr_0b5_5ff2                                ; $5ff0: $18 $00

jr_0b5_5ff2:
    jr nz, jr_0b5_6068                            ; $5ff2: $20 $74

    ld l, l                                       ; $5ff4: $6d
    rst $38                                       ; $5ff5: $ff
    ld a, a                                       ; $5ff6: $7f

jr_0b5_5ff7:
    push de                                       ; $5ff7: $d5
    add hl, hl                                    ; $5ff8: $29
    nop                                           ; $5ff9: $00
    nop                                           ; $5ffa: $00
    rst $38                                       ; $5ffb: $ff
    ld a, a                                       ; $5ffc: $7f
    nop                                           ; $5ffd: $00
    jr nz, jr_0b5_5fd5                            ; $5ffe: $20 $d5

    add hl, hl                                    ; $6000: $29
    ld b, e                                       ; $6001: $43
    ld [$1d75], sp                                ; $6002: $08 $75 $1d
    ld [hl], e                                    ; $6005: $73
    ld l, c                                       ; $6006: $69
    cp a                                          ; $6007: $bf
    ld a, $00                                     ; $6008: $3e $00
    nop                                           ; $600a: $00
    ldh a, [rNR14]                                ; $600b: $f0 $14
    ld a, b                                       ; $600d: $78
    dec e                                         ; $600e: $1d
    ld l, b                                       ; $600f: $68
    inc b                                         ; $6010: $04
    ld bc, $3208                                  ; $6011: $01 $08 $32
    add hl, de                                    ; $6014: $19
    ld [hl], e                                    ; $6015: $73
    ld l, c                                       ; $6016: $69
    ld a, l                                       ; $6017: $7d
    ld a, [hl-]                                   ; $6018: $3a
    ld [bc], a                                    ; $6019: $02
    nop                                           ; $601a: $00
    ld [hl], c                                    ; $601b: $71
    ld c, c                                       ; $601c: $49
    ld a, a                                       ; $601d: $7f
    ld h, e                                       ; $601e: $63
    inc e                                         ; $601f: $1c
    ld [hl-], a                                   ; $6020: $32
    nop                                           ; $6021: $00
    nop                                           ; $6022: $00
    rst $18                                       ; $6023: $df
    ld c, d                                       ; $6024: $4a
    nop                                           ; $6025: $00
    jr nz, jr_0b5_5ff7                            ; $6026: $20 $cf

    stop                                          ; $6028: $10 $00
    jr nz, @+$77                                  ; $602a: $20 $75

    dec e                                         ; $602c: $1d
    ld [hl], e                                    ; $602d: $73
    ld l, c                                       ; $602e: $69
    cp a                                          ; $602f: $bf
    ld a, $00                                     ; $6030: $3e $00
    nop                                           ; $6032: $00
    ld [hl], e                                    ; $6033: $73
    ld l, c                                       ; $6034: $69
    rst $38                                       ; $6035: $ff
    ld a, a                                       ; $6036: $7f
    nop                                           ; $6037: $00

jr_0b5_6038:
    jr nz, jr_0b5_603b                            ; $6038: $20 $01

    inc b                                         ; $603a: $04

jr_0b5_603b:
    ld d, d                                       ; $603b: $52

jr_0b5_603c:
    ld l, c                                       ; $603c: $69
    ld a, [hl-]                                   ; $603d: $3a
    ld [hl-], a                                   ; $603e: $32
    ret nc                                        ; $603f: $d0

    inc c                                         ; $6040: $0c
    inc hl                                        ; $6041: $23
    nop                                           ; $6042: $00
    call Call_000_1d0c                            ; $6043: $cd $0c $1d
    dec hl                                        ; $6046: $2b
    inc [hl]                                      ; $6047: $34
    ld de, $0801                                  ; $6048: $11 $01 $08
    halt                                          ; $604b: $76
    add hl, de                                    ; $604c: $19
    ld [hl], e                                    ; $604d: $73
    ld l, c                                       ; $604e: $69
    xor d                                         ; $604f: $aa
    inc c                                         ; $6050: $0c
    ld bc, $5200                                  ; $6051: $01 $00 $52
    ld h, c                                       ; $6054: $61
    jr jr_0b5_6064                                ; $6055: $18 $0d

    ld a, [$012d]                                 ; $6057: $fa $2d $01
    nop                                           ; $605a: $00
    ld a, d                                       ; $605b: $7a
    dec e                                         ; $605c: $1d
    nop                                           ; $605d: $00
    jr nz, jr_0b5_603c                            ; $605e: $20 $dc

    add hl, hl                                    ; $6060: $29
    nop                                           ; $6061: $00
    nop                                           ; $6062: $00
    rst $38                                       ; $6063: $ff

jr_0b5_6064:
    ld a, a                                       ; $6064: $7f
    nop                                           ; $6065: $00
    jr nz, jr_0b5_6038                            ; $6066: $20 $d0

jr_0b5_6068:
    inc c                                         ; $6068: $0c
    nop                                           ; $6069: $00
    nop                                           ; $606a: $00
    ld [hl], h                                    ; $606b: $74
    ld d, c                                       ; $606c: $51
    rst $38                                       ; $606d: $ff
    ld a, a                                       ; $606e: $7f
    ld [hl], c                                    ; $606f: $71
    ld hl, $0001                                  ; $6070: $21 $01 $00
    call $7510                                    ; $6073: $cd $10 $75
    dec e                                         ; $6076: $1d
    adc c                                         ; $6077: $89
    ld [$0021], sp                                ; $6078: $08 $21 $00
    dec d                                         ; $607b: $15
    ld a, [de]                                    ; $607c: $1a
    ld a, [hl]                                    ; $607d: $7e
    daa                                           ; $607e: $27
    dec bc                                        ; $607f: $0b
    add hl, bc                                    ; $6080: $09
    inc bc                                        ; $6081: $03
    nop                                           ; $6082: $00
    inc de                                        ; $6083: $13
    ld de, $1d99                                  ; $6084: $11 $99 $1d
    adc h                                         ; $6087: $8c
    ld [$0422], sp                                ; $6088: $08 $22 $04
    ld d, d                                       ; $608b: $52
    ld h, l                                       ; $608c: $65
    sub l                                         ; $608d: $95
    ld hl, $3a7f                                  ; $608e: $21 $7f $3a
    nop                                           ; $6091: $00
    nop                                           ; $6092: $00
    rst $38                                       ; $6093: $ff
    ld d, d                                       ; $6094: $52
    ldh a, [rNR10]                                ; $6095: $f0 $10
    nop                                           ; $6097: $00
    jr nz, jr_0b5_609a                            ; $6098: $20 $00

jr_0b5_609a:
    nop                                           ; $609a: $00
    rst $38                                       ; $609b: $ff
    ld a, a                                       ; $609c: $7f
    nop                                           ; $609d: $00
    jr nz, @-$75                                  ; $609e: $20 $89

    ld [$0000], sp                                ; $60a0: $08 $00 $00
    ld d, d                                       ; $60a3: $52
    ld h, c                                       ; $60a4: $61
    ld bc, $5208                                  ; $60a5: $01 $08 $52
    ld h, l                                       ; $60a8: $65
    ld [bc], a                                    ; $60a9: $02
    inc b                                         ; $60aa: $04
    ldh a, [$0c]                                  ; $60ab: $f0 $0c
    call nc, Call_000_3515                        ; $60ad: $d4 $15 $35
    dec d                                         ; $60b0: $15
    ld b, l                                       ; $60b1: $45
    inc b                                         ; $60b2: $04
    jp nc, $ff29                                  ; $60b3: $d2 $29 $ff

    ld a, a                                       ; $60b6: $7f
    inc a                                         ; $60b7: $3c
    ld a, [hl+]                                   ; $60b8: $2a
    ld [bc], a                                    ; $60b9: $02
    nop                                           ; $60ba: $00
    db $fd                                        ; $60bb: $fd
    ld a, a                                       ; $60bc: $7f
    rl b                                          ; $60bd: $cb $10
    ld [hl], h                                    ; $60bf: $74
    dec e                                         ; $60c0: $1d
    ld [bc], a                                    ; $60c1: $02
    nop                                           ; $60c2: $00
    ld d, c                                       ; $60c3: $51
    ld h, c                                       ; $60c4: $61
    cp e                                          ; $60c5: $bb
    dec h                                         ; $60c6: $25
    ldh a, [rNR10]                                ; $60c7: $f0 $10
    nop                                           ; $60c9: $00
    nop                                           ; $60ca: $00
    ccf                                           ; $60cb: $3f
    ld e, e                                       ; $60cc: $5b
    jr nc, jr_0b5_60ec                            ; $60cd: $30 $1d

    nop                                           ; $60cf: $00
    jr nz, jr_0b5_60d2                            ; $60d0: $20 $00

jr_0b5_60d2:
    nop                                           ; $60d2: $00
    ld sp, $ff61                                  ; $60d3: $31 $61 $ff
    ld a, a                                       ; $60d6: $7f
    nop                                           ; $60d7: $00
    jr nz, @+$03                                  ; $60d8: $20 $01

    ld [$6131], sp                                ; $60da: $08 $31 $61
    ld e, e                                       ; $60dd: $5b
    ld a, [hl-]                                   ; $60de: $3a
    jp z, RST_10                                  ; $60df: $ca $10 $00

    inc b                                         ; $60e2: $04
    sub d                                         ; $60e3: $92
    dec c                                         ; $60e4: $0d
    cp d                                          ; $60e5: $ba
    ld d, $8c                                     ; $60e6: $16 $8c
    ld [$0000], sp                                ; $60e8: $08 $00 $00
    ld d, d                                       ; $60eb: $52

jr_0b5_60ec:
    ld c, d                                       ; $60ec: $4a
    cpl                                           ; $60ed: $2f
    dec e                                         ; $60ee: $1d
    cp l                                          ; $60ef: $bd
    ld [hl], a                                    ; $60f0: $77
    nop                                           ; $60f1: $00
    nop                                           ; $60f2: $00
    sub h                                         ; $60f3: $94
    ld b, l                                       ; $60f4: $45
    db $eb                                        ; $60f5: $eb
    jr @+$01                                      ; $60f6: $18 $ff

    ld a, a                                       ; $60f8: $7f
    ld bc, $0f08                                  ; $60f9: $01 $08 $0f
    ld d, l                                       ; $60fc: $55
    rst $08                                       ; $60fd: $cf
    inc c                                         ; $60fe: $0c
    ld e, h                                       ; $60ff: $5c
    ld [hl], $00                                  ; $6100: $36 $00
    nop                                           ; $6102: $00
    sbc $4a                                       ; $6103: $de $4a
    rst $38                                       ; $6105: $ff
    ld a, a                                       ; $6106: $7f
    nop                                           ; $6107: $00
    jr nz, jr_0b5_610a                            ; $6108: $20 $00

jr_0b5_610a:
    nop                                           ; $610a: $00
    ld sp, $ff5d                                  ; $610b: $31 $5d $ff
    ld a, a                                       ; $610e: $7f
    adc h                                         ; $610f: $8c
    ld [$0801], sp                                ; $6110: $08 $01 $08
    ld sp, $ff5d                                  ; $6113: $31 $5d $ff
    ld a, a                                       ; $6116: $7f
    adc h                                         ; $6117: $8c
    ld [$0001], sp                                ; $6118: $08 $01 $00
    ld [hl], l                                    ; $611b: $75
    add hl, de                                    ; $611c: $19
    ld sp, $c95d                                  ; $611d: $31 $5d $c9
    inc b                                         ; $6120: $04
    ld [hl+], a                                   ; $6121: $22
    inc b                                         ; $6122: $04
    ld [hl-], a                                   ; $6123: $32
    ld b, [hl]                                    ; $6124: $46
    sbc $7b                                       ; $6125: $de $7b
    ld hl, sp+$5a                                 ; $6127: $f8 $5a
    inc h                                         ; $6129: $24
    ld [$5d30], sp                                ; $612a: $08 $30 $5d
    ld a, [$d25a]                                 ; $612d: $fa $5a $d2
    dec [hl]                                      ; $6130: $35
    nop                                           ; $6131: $00
    inc b                                         ; $6132: $04
    jr nc, jr_0b5_6192                            ; $6133: $30 $5d

    sbc a                                         ; $6135: $9f
    ld a, $48                                     ; $6136: $3e $48
    nop                                           ; $6138: $00
    nop                                           ; $6139: $00
    nop                                           ; $613a: $00
    dec e                                         ; $613b: $1d
    ld l, $ff                                     ; $613c: $2e $ff
    ld d, [hl]                                    ; $613e: $56
    nop                                           ; $613f: $00
    jr nz, jr_0b5_6142                            ; $6140: $20 $00

jr_0b5_6142:
    nop                                           ; $6142: $00
    db $10                                        ; $6143: $10
    ld e, c                                       ; $6144: $59
    rst $38                                       ; $6145: $ff
    ld a, a                                       ; $6146: $7f
    nop                                           ; $6147: $00
    jr nz, @+$03                                  ; $6148: $20 $01

    ld [$5910], sp                                ; $614a: $08 $10 $59
    db $10                                        ; $614d: $10
    ld e, l                                       ; $614e: $5d
    jr nc, @+$5b                                  ; $614f: $30 $59

    ld [bc], a                                    ; $6151: $02
    nop                                           ; $6152: $00
    ld d, b                                       ; $6153: $50
    dec a                                         ; $6154: $3d
    rrc b                                         ; $6155: $cb $08
    dec a                                         ; $6157: $3d
    ld l, $83                                     ; $6158: $2e $83
    db $10                                        ; $615a: $10
    sub e                                         ; $615b: $93
    ld d, [hl]                                    ; $615c: $56
    ld c, a                                       ; $615d: $4f
    dec h                                         ; $615e: $25
    cp l                                          ; $615f: $bd
    ld [hl], e                                    ; $6160: $73
    adc c                                         ; $6161: $89
    inc c                                         ; $6162: $0c
    ld d, a                                       ; $6163: $57
    ld b, [hl]                                    ; $6164: $46
    db $10                                        ; $6165: $10
    ld e, c                                       ; $6166: $59
    ld e, a                                       ; $6167: $5f
    ld e, e                                       ; $6168: $5b
    nop                                           ; $6169: $00
    nop                                           ; $616a: $00
    db $10                                        ; $616b: $10
    ld e, c                                       ; $616c: $59
    db $10                                        ; $616d: $10
    ld e, l                                       ; $616e: $5d
    ld bc, $0000                                  ; $616f: $01 $00 $00
    nop                                           ; $6172: $00
    ld [hl], $15                                  ; $6173: $36 $15
    cp [hl]                                       ; $6175: $be
    ld b, [hl]                                    ; $6176: $46
    nop                                           ; $6177: $00
    jr nz, jr_0b5_617b                            ; $6178: $20 $01

    nop                                           ; $617a: $00

jr_0b5_617b:
    ld a, [hl-]                                   ; $617b: $3a
    ld a, [hl-]                                   ; $617c: $3a
    rst $38                                       ; $617d: $ff
    ld a, a                                       ; $617e: $7f
    nop                                           ; $617f: $00
    jr nz, @+$03                                  ; $6180: $20 $01

    ld [$5910], sp                                ; $6182: $08 $10 $59
    ld c, b                                       ; $6185: $48
    inc b                                         ; $6186: $04
    rst $08                                       ; $6187: $cf
    inc c                                         ; $6188: $0c
    ld bc, $1004                                  ; $6189: $01 $04 $10
    ld e, c                                       ; $618c: $59
    ld d, [hl]                                    ; $618d: $56
    dec d                                         ; $618e: $15
    ld l, c                                       ; $618f: $69
    inc b                                         ; $6190: $04
    adc d                                         ; $6191: $8a

jr_0b5_6192:
    inc c                                         ; $6192: $0c
    cp [hl]                                       ; $6193: $be
    ld b, [hl]                                    ; $6194: $46
    or h                                          ; $6195: $b4
    add hl, hl                                    ; $6196: $29
    sbc l                                         ; $6197: $9d
    ld l, e                                       ; $6198: $6b
    ld b, [hl]                                    ; $6199: $46
    inc b                                         ; $619a: $04
    cp a                                          ; $619b: $bf
    ld d, a                                       ; $619c: $57
    or $18                                        ; $619d: $f6 $18
    call $004c                                    ; $619f: $cd $4c $00
    nop                                           ; $61a2: $00
    jr nc, jr_0b5_61ba                            ; $61a3: $30 $15

    ccf                                           ; $61a5: $3f
    rra                                           ; $61a6: $1f
    adc b                                         ; $61a7: $88
    ld [$0000], sp                                ; $61a8: $08 $00 $00
    ld d, e                                       ; $61ab: $53
    dec e                                         ; $61ac: $1d
    inc e                                         ; $61ad: $1c
    ld [hl-], a                                   ; $61ae: $32
    nop                                           ; $61af: $00
    jr nz, jr_0b5_61b2                            ; $61b0: $20 $00

jr_0b5_61b2:
    inc b                                         ; $61b2: $04
    ld a, [de]                                    ; $61b3: $1a
    ld [hl], $9f                                  ; $61b4: $36 $9f
    ld e, a                                       ; $61b6: $5f
    rl b                                          ; $61b7: $cb $10
    nop                                           ; $61b9: $00

jr_0b5_61ba:
    nop                                           ; $61ba: $00
    rrca                                          ; $61bb: $0f
    ld d, l                                       ; $61bc: $55
    cp h                                          ; $61bd: $bc
    ld c, [hl]                                    ; $61be: $4e
    ld bc, $0108                                  ; $61bf: $01 $08 $01
    ld [$1535], sp                                ; $61c2: $08 $35 $15
    rst $18                                       ; $61c5: $df
    ld c, [hl]                                    ; $61c6: $4e
    adc e                                         ; $61c7: $8b
    inc b                                         ; $61c8: $04
    ld bc, $1a08                                  ; $61c9: $01 $08 $1a
    ld de, $3e5d                                  ; $61cc: $11 $5d $3e
    adc d                                         ; $61cf: $8a
    ld [$0000], sp                                ; $61d0: $08 $00 $00
    db $dd                                        ; $61d3: $dd
    ld l, $a9                                     ; $61d4: $2e $a9
    ld [$1951], sp                                ; $61d6: $08 $51 $19
    nop                                           ; $61d9: $00
    nop                                           ; $61da: $00
    ld c, [hl]                                    ; $61db: $4e
    dec b                                         ; $61dc: $05
    sbc h                                         ; $61dd: $9c
    ld [hl-], a                                   ; $61de: $32
    sub d                                         ; $61df: $92
    dec h                                         ; $61e0: $25
    ld [hl+], a                                   ; $61e1: $22
    nop                                           ; $61e2: $00
    sbc h                                         ; $61e3: $9c
    ld hl, $2000                                  ; $61e4: $21 $00 $20
    rst $38                                       ; $61e7: $ff
    ld a, a                                       ; $61e8: $7f
    nop                                           ; $61e9: $00
    nop                                           ; $61ea: $00
    jp c, $1f2d                                   ; $61eb: $da $2d $1f

    ld d, a                                       ; $61ee: $57
    ld hl, $001c                                  ; $61ef: $21 $1c $00
    nop                                           ; $61f2: $00
    rst $28                                       ; $61f3: $ef
    ld d, h                                       ; $61f4: $54
    rst $18                                       ; $61f5: $df
    ld c, d                                       ; $61f6: $4a
    sub e                                         ; $61f7: $93
    add hl, hl                                    ; $61f8: $29
    inc hl                                        ; $61f9: $23
    inc b                                         ; $61fa: $04
    xor $54                                       ; $61fb: $ee $54
    ld l, h                                       ; $61fd: $6c
    inc b                                         ; $61fe: $04
    ld a, [c]                                     ; $61ff: $f2
    inc c                                         ; $6200: $0c
    nop                                           ; $6201: $00
    inc b                                         ; $6202: $04
    xor $50                                       ; $6203: $ee $50
    ld a, c                                       ; $6205: $79
    add hl, de                                    ; $6206: $19
    ld l, d                                       ; $6207: $6a
    nop                                           ; $6208: $00
    ld [hl+], a                                   ; $6209: $22
    nop                                           ; $620a: $00
    jp nc, $cd0d                                  ; $620b: $d2 $0d $cd

    inc b                                         ; $620e: $04
    ld a, a                                       ; $620f: $7f
    dec hl                                        ; $6210: $2b
    ld bc, $9000                                  ; $6211: $01 $00 $90
    ld de, $229b                                  ; $6214: $11 $9b $22
    ret                                           ; $6217: $c9


    inc c                                         ; $6218: $0c
    nop                                           ; $6219: $00
    nop                                           ; $621a: $00
    add hl, sp                                    ; $621b: $39
    ld [hl-], a                                   ; $621c: $32
    rst $38                                       ; $621d: $ff
    ld a, a                                       ; $621e: $7f
    nop                                           ; $621f: $00
    jr nz, jr_0b5_6222                            ; $6220: $20 $00

jr_0b5_6222:
    inc b                                         ; $6222: $04
    ld hl, sp+$31                                 ; $6223: $f8 $31
    rst $18                                       ; $6225: $df
    ld c, d                                       ; $6226: $4a
    ld h, $00                                     ; $6227: $26 $00
    nop                                           ; $6229: $00
    inc b                                         ; $622a: $04
    xor $50                                       ; $622b: $ee $50
    cp a                                          ; $622d: $bf
    ld h, a                                       ; $622e: $67
    xor d                                         ; $622f: $aa
    inc c                                         ; $6230: $0c
    ld bc, $ed08                                  ; $6231: $01 $08 $ed
    ld c, h                                       ; $6234: $4c
    ld l, b                                       ; $6235: $68
    inc b                                         ; $6236: $04
    xor $50                                       ; $6237: $ee $50
    ld bc, $ee04                                  ; $6239: $01 $04 $ee
    ld d, b                                       ; $623c: $50
    cp d                                          ; $623d: $ba
    dec e                                         ; $623e: $1d
    jp z, Jump_000_0004                           ; $623f: $ca $04 $00

    nop                                           ; $6242: $00
    ld e, l                                       ; $6243: $5d
    ld a, [hl-]                                   ; $6244: $3a
    ld c, h                                       ; $6245: $4c
    dec c                                         ; $6246: $0d
    ccf                                           ; $6247: $3f
    ld d, e                                       ; $6248: $53
    ld bc, $5200                                  ; $6249: $01 $00 $52
    ld de, $2259                                  ; $624c: $11 $59 $22
    db $ed                                        ; $624f: $ed
    nop                                           ; $6250: $00
    nop                                           ; $6251: $00
    nop                                           ; $6252: $00
    cpl                                           ; $6253: $2f
    add hl, de                                    ; $6254: $19
    nop                                           ; $6255: $00
    jr nz, @+$08                                  ; $6256: $20 $06

    nop                                           ; $6258: $00
    nop                                           ; $6259: $00
    inc b                                         ; $625a: $04
    rst $18                                       ; $625b: $df

jr_0b5_625c:
    ld c, [hl]                                    ; $625c: $4e
    ldh a, [$0c]                                  ; $625d: $f0 $0c
    ld h, $00                                     ; $625f: $26 $00
    nop                                           ; $6261: $00
    nop                                           ; $6262: $00
    ld a, d                                       ; $6263: $7a
    ld b, [hl]                                    ; $6264: $46
    call $1f4c                                    ; $6265: $cd $4c $1f
    ld d, e                                       ; $6268: $53
    ld bc, $ee08                                  ; $6269: $01 $08 $ee
    ld b, h                                       ; $626c: $44
    cp a                                          ; $626d: $bf
    ld a, $8d                                     ; $626e: $3e $8d
    ld [$0021], sp                                ; $6270: $08 $21 $00
    sub b                                         ; $6273: $90
    dec d                                         ; $6274: $15
    db $fc                                        ; $6275: $fc
    dec l                                         ; $6276: $2d
    db $db                                        ; $6277: $db
    ld d, $00                                     ; $6278: $16 $00
    nop                                           ; $627a: $00
    ld a, l                                       ; $627b: $7d
    ld l, $1f                                     ; $627c: $2e $1f
    ld d, a                                       ; $627e: $57
    ld c, l                                       ; $627f: $4d
    dec b                                         ; $6280: $05
    nop                                           ; $6281: $00
    nop                                           ; $6282: $00
    ld [hl], h                                    ; $6283: $74
    ld de, $1ab9                                  ; $6284: $11 $b9 $1a
    adc h                                         ; $6287: $8c
    ld [$0000], sp                                ; $6288: $08 $00 $00
    ld a, d                                       ; $628b: $7a
    ld a, [hl-]                                   ; $628c: $3a
    nop                                           ; $628d: $00
    jr nz, jr_0b5_625c                            ; $628e: $20 $cc

    db $10                                        ; $6290: $10
    ld [bc], a                                    ; $6291: $02
    nop                                           ; $6292: $00
    inc a                                         ; $6293: $3c
    ld [hl], $7f                                  ; $6294: $36 $7f
    ld h, e                                       ; $6296: $63
    nop                                           ; $6297: $00
    jr nz, jr_0b5_629a                            ; $6298: $20 $00

jr_0b5_629a:
    nop                                           ; $629a: $00
    cp [hl]                                       ; $629b: $be
    ld b, [hl]                                    ; $629c: $46
    call $8d48                                    ; $629d: $cd $48 $8d
    inc b                                         ; $62a0: $04
    dec h                                         ; $62a1: $25
    inc b                                         ; $62a2: $04
    call $f248                                    ; $62a3: $cd $48 $f2
    db $10                                        ; $62a6: $10
    reti                                          ; $62a7: $d9


    dec h                                         ; $62a8: $25
    ld bc, $5600                                  ; $62a9: $01 $00 $56
    ld e, $5f                                     ; $62ac: $1e $5f
    ld [hl-], a                                   ; $62ae: $32
    ld a, $1b                                     ; $62af: $3e $1b
    nop                                           ; $62b1: $00

jr_0b5_62b2:
    nop                                           ; $62b2: $00
    db $fc                                        ; $62b3: $fc
    dec l                                         ; $62b4: $2d
    xor e                                         ; $62b5: $ab
    nop                                           ; $62b6: $00
    rra                                           ; $62b7: $1f
    ld d, a                                       ; $62b8: $57
    nop                                           ; $62b9: $00
    nop                                           ; $62ba: $00
    ld d, $12                                     ; $62bb: $16 $12
    ld h, $00                                     ; $62bd: $26 $00
    dec c                                         ; $62bf: $0d
    add hl, bc                                    ; $62c0: $09
    nop                                           ; $62c1: $00
    nop                                           ; $62c2: $00
    rst $38                                       ; $62c3: $ff
    ld a, a                                       ; $62c4: $7f
    nop                                           ; $62c5: $00
    jr nz, jr_0b5_62d5                            ; $62c6: $20 $0d

    add hl, bc                                    ; $62c8: $09
    nop                                           ; $62c9: $00
    nop                                           ; $62ca: $00
    ld e, l                                       ; $62cb: $5d
    ld a, [hl-]                                   ; $62cc: $3a
    nop                                           ; $62cd: $00
    jr nz, @-$55                                  ; $62ce: $20 $a9

    stop                                          ; $62d0: $10 $00
    nop                                           ; $62d2: $00
    rst $38                                       ; $62d3: $ff
    ld c, [hl]                                    ; $62d4: $4e

jr_0b5_62d5:
    xor h                                         ; $62d5: $ac
    ld c, b                                       ; $62d6: $48
    or c                                          ; $62d7: $b1
    inc b                                         ; $62d8: $04
    inc hl                                        ; $62d9: $23
    nop                                           ; $62da: $00
    xor h                                         ; $62db: $ac
    ld c, b                                       ; $62dc: $48
    rst $08                                       ; $62dd: $cf
    inc c                                         ; $62de: $0c
    rst $30                                       ; $62df: $f7
    dec l                                         ; $62e0: $2d
    ld b, e                                       ; $62e1: $43
    nop                                           ; $62e2: $00
    or d                                          ; $62e3: $b2
    dec c                                         ; $62e4: $0d
    ld a, e                                       ; $62e5: $7b
    ld a, [hl+]                                   ; $62e6: $2a
    ld e, a                                       ; $62e7: $5f
    ld d, a                                       ; $62e8: $57
    nop                                           ; $62e9: $00
    nop                                           ; $62ea: $00
    pop de                                        ; $62eb: $d1
    dec c                                         ; $62ec: $0d
    sbc [hl]                                      ; $62ed: $9e
    ld a, [hl+]                                   ; $62ee: $2a
    dec l                                         ; $62ef: $2d
    dec b                                         ; $62f0: $05
    nop                                           ; $62f1: $00
    nop                                           ; $62f2: $00
    sub c                                         ; $62f3: $91
    add hl, de                                    ; $62f4: $19
    rst $18                                       ; $62f5: $df
    ld b, d                                       ; $62f6: $42
    ld c, c                                       ; $62f7: $49
    nop                                           ; $62f8: $00
    nop                                           ; $62f9: $00
    nop                                           ; $62fa: $00
    rst $38                                       ; $62fb: $ff
    ld a, a                                       ; $62fc: $7f
    nop                                           ; $62fd: $00
    jr nz, @+$4b                                  ; $62fe: $20 $49

    nop                                           ; $6300: $00
    nop                                           ; $6301: $00
    nop                                           ; $6302: $00
    nop                                           ; $6303: $00
    jr nz, jr_0b5_62b2                            ; $6304: $20 $ac

    ld [$2df7], sp                                ; $6306: $08 $f7 $2d
    ld [bc], a                                    ; $6309: $02
    nop                                           ; $630a: $00

jr_0b5_630b:
    ld e, c                                       ; $630b: $59
    dec d                                         ; $630c: $15
    sbc a                                         ; $630d: $9f
    ld b, [hl]                                    ; $630e: $46
    xor e                                         ; $630f: $ab
    ld b, h                                       ; $6310: $44
    nop                                           ; $6311: $00
    nop                                           ; $6312: $00
    rst $28                                       ; $6313: $ef
    inc l                                         ; $6314: $2c
    add hl, sp                                    ; $6315: $39
    ld [hl-], a                                   ; $6316: $32
    adc d                                         ; $6317: $8a
    ld [$0000], sp                                ; $6318: $08 $00 $00
    xor $08                                       ; $631b: $ee $08
    rla                                           ; $631d: $17
    ld d, $46                                     ; $631e: $16 $46
    nop                                           ; $6320: $00
    nop                                           ; $6321: $00
    nop                                           ; $6322: $00
    ret nc                                        ; $6323: $d0

    ld [$1abb], sp                                ; $6324: $08 $bb $1a
    or b                                          ; $6327: $b0
    add hl, bc                                    ; $6328: $09
    nop                                           ; $6329: $00
    nop                                           ; $632a: $00
    ret nc                                        ; $632b: $d0

    inc c                                         ; $632c: $0c
    rst $38                                       ; $632d: $ff
    ld a, a                                       ; $632e: $7f
    db $d3                                        ; $632f: $d3
    ld de, $0000                                  ; $6330: $11 $00 $00
    rst $38                                       ; $6333: $ff
    ld a, a                                       ; $6334: $7f
    nop                                           ; $6335: $00
    jr nz, jr_0b5_630b                            ; $6336: $20 $d3

    ld de, $0000                                  ; $6338: $11 $00 $00
    nop                                           ; $633b: $00
    jr nz, jr_0b5_6377                            ; $633c: $20 $39

    ld [hl-], a                                   ; $633e: $32
    adc d                                         ; $633f: $8a
    ld [$0001], sp                                ; $6340: $08 $01 $00
    ld e, c                                       ; $6343: $59
    add hl, de                                    ; $6344: $19
    ld a, [hl]                                    ; $6345: $7e
    ld b, d                                       ; $6346: $42
    call nc, RST_08                               ; $6347: $d4 $08 $00
    nop                                           ; $634a: $00
    sbc b                                         ; $634b: $98
    ld hl, $5b3f                                  ; $634c: $21 $3f $5b
    adc h                                         ; $634f: $8c
    inc b                                         ; $6350: $04
    nop                                           ; $6351: $00
    nop                                           ; $6352: $00
    xor l                                         ; $6353: $ad
    ld [$2df5], sp                                ; $6354: $08 $f5 $2d
    add [hl]                                      ; $6357: $86
    nop                                           ; $6358: $00
    ld bc, $6f00                                  ; $6359: $01 $00 $6f
    ld de, $046b                                  ; $635c: $11 $6b $04
    ld a, c                                       ; $635f: $79
    ld a, [de]                                    ; $6360: $1a
    nop                                           ; $6361: $00
    nop                                           ; $6362: $00
    ld e, d                                       ; $6363: $5a
    ld [hl], $32                                  ; $6364: $36 $32
    dec d                                         ; $6366: $15
    rst $18                                       ; $6367: $df
    ld [hl], e                                    ; $6368: $73
    nop                                           ; $6369: $00
    nop                                           ; $636a: $00
    nop                                           ; $636b: $00
    jr nz, jr_0b5_63a0                            ; $636c: $20 $32

    dec d                                         ; $636e: $15
    rst $18                                       ; $636f: $df
    ld [hl], e                                    ; $6370: $73
    nop                                           ; $6371: $00
    nop                                           ; $6372: $00
    nop                                           ; $6373: $00
    jr nz, jr_0b5_63b5                            ; $6374: $20 $3f

    ld e, e                                       ; $6376: $5b

jr_0b5_6377:
    adc h                                         ; $6377: $8c
    inc b                                         ; $6378: $04
    ld bc, $db00                                  ; $6379: $01 $00 $db
    add hl, hl                                    ; $637c: $29
    sbc $4e                                       ; $637d: $de $4e
    rst $38                                       ; $637f: $ff
    ld a, a                                       ; $6380: $7f
    nop                                           ; $6381: $00
    nop                                           ; $6382: $00
    sbc c                                         ; $6383: $99
    ld hl, $571f                                  ; $6384: $21 $1f $57
    adc h                                         ; $6387: $8c
    ld [$0000], sp                                ; $6388: $08 $00 $00
    ld c, b                                       ; $638b: $48
    nop                                           ; $638c: $00
    inc d                                         ; $638d: $14
    ld de, $048c                                  ; $638e: $11 $8c $04
    nop                                           ; $6391: $00
    nop                                           ; $6392: $00

jr_0b5_6393:
    db $ed                                        ; $6393: $ed
    inc b                                         ; $6394: $04
    call nc, $4709                                ; $6395: $d4 $09 $47
    inc b                                         ; $6398: $04
    nop                                           ; $6399: $00
    nop                                           ; $639a: $00
    rst $38                                       ; $639b: $ff
    ld a, a                                       ; $639c: $7f
    ld d, l                                       ; $639d: $55
    dec e                                         ; $639e: $1d
    adc b                                         ; $639f: $88

jr_0b5_63a0:
    inc c                                         ; $63a0: $0c
    nop                                           ; $63a1: $00
    nop                                           ; $63a2: $00
    nop                                           ; $63a3: $00
    jr nz, jr_0b5_63fb                            ; $63a4: $20 $55

jr_0b5_63a6:
    dec e                                         ; $63a6: $1d
    adc b                                         ; $63a7: $88
    inc c                                         ; $63a8: $0c
    nop                                           ; $63a9: $00
    nop                                           ; $63aa: $00
    nop                                           ; $63ab: $00
    jr nz, jr_0b5_63cd                            ; $63ac: $20 $1f

    ld d, a                                       ; $63ae: $57
    adc h                                         ; $63af: $8c
    ld [$0002], sp                                ; $63b0: $08 $02 $00
    db $fc                                        ; $63b3: $fc
    dec l                                         ; $63b4: $2d

jr_0b5_63b5:
    cp $52                                        ; $63b5: $fe $52
    rst $38                                       ; $63b7: $ff
    ld a, a                                       ; $63b8: $7f
    nop                                           ; $63b9: $00
    nop                                           ; $63ba: $00

jr_0b5_63bb:
    ld a, d                                       ; $63bb: $7a
    add hl, de                                    ; $63bc: $19
    ld l, d                                       ; $63bd: $6a
    jr z, @-$40                                   ; $63be: $28 $be

    ld b, [hl]                                    ; $63c0: $46
    ld bc, $6900                                  ; $63c1: $01 $00 $69
    jr c, @-$2e                                   ; $63c4: $38 $d0

    inc c                                         ; $63c6: $0c
    dec [hl]                                      ; $63c7: $35
    dec d                                         ; $63c8: $15
    nop                                           ; $63c9: $00
    nop                                           ; $63ca: $00
    ld a, [c]                                     ; $63cb: $f2
    db $10                                        ; $63cc: $10

jr_0b5_63cd:
    adc c                                         ; $63cd: $89
    inc b                                         ; $63ce: $04
    add hl, sp                                    ; $63cf: $39
    ld [hl-], a                                   ; $63d0: $32
    ld bc, $1900                                  ; $63d1: $01 $00 $19
    ld [hl-], a                                   ; $63d4: $32
    cp a                                          ; $63d5: $bf
    ld [hl], e                                    ; $63d6: $73
    ld l, e                                       ; $63d7: $6b
    inc b                                         ; $63d8: $04
    nop                                           ; $63d9: $00
    jr nz, @+$1b                                  ; $63da: $20 $19

    ld [hl-], a                                   ; $63dc: $32
    cp a                                          ; $63dd: $bf
    ld [hl], e                                    ; $63de: $73
    ld l, e                                       ; $63df: $6b
    inc b                                         ; $63e0: $04
    nop                                           ; $63e1: $00
    jr nz, jr_0b5_645e                            ; $63e2: $20 $7a

    add hl, de                                    ; $63e4: $19
    ld l, d                                       ; $63e5: $6a
    jr z, jr_0b5_63a6                             ; $63e6: $28 $be

    ld b, [hl]                                    ; $63e8: $46
    nop                                           ; $63e9: $00
    nop                                           ; $63ea: $00
    cp h                                          ; $63eb: $bc
    ld hl, $7fff                                  ; $63ec: $21 $ff $7f
    xor [hl]                                      ; $63ef: $ae
    inc c                                         ; $63f0: $0c
    ld bc, $6904                                  ; $63f1: $01 $04 $69
    jr c, jr_0b5_6393                             ; $63f4: $38 $9d

    dec e                                         ; $63f6: $1d
    ld l, d                                       ; $63f7: $6a
    inc b                                         ; $63f8: $04
    nop                                           ; $63f9: $00
    nop                                           ; $63fa: $00

jr_0b5_63fb:
    ld l, c                                       ; $63fb: $69
    jr c, @-$73                                   ; $63fc: $38 $8b

    ld [$14f1], sp                                ; $63fe: $08 $f1 $14
    ld [bc], a                                    ; $6401: $02
    inc b                                         ; $6402: $04
    ld [de], a                                    ; $6403: $12
    dec d                                         ; $6404: $15
    sub a                                         ; $6405: $97
    ld hl, $086a                                  ; $6406: $21 $6a $08
    nop                                           ; $6409: $00
    inc b                                         ; $640a: $04
    scf                                           ; $640b: $37
    ld a, [hl-]                                   ; $640c: $3a
    rst $18                                       ; $640d: $df
    ld [hl], e                                    ; $640e: $73
    dec hl                                        ; $640f: $2b
    ld hl, $2000                                  ; $6410: $21 $00 $20
    scf                                           ; $6413: $37
    ld a, [hl-]                                   ; $6414: $3a

jr_0b5_6415:
    rst $18                                       ; $6415: $df
    ld [hl], e                                    ; $6416: $73
    dec hl                                        ; $6417: $2b
    ld hl, $2000                                  ; $6418: $21 $00 $20
    ld l, c                                       ; $641b: $69
    jr c, jr_0b5_63bb                             ; $641c: $38 $9d

    dec e                                         ; $641e: $1d
    ld l, d                                       ; $641f: $6a
    inc b                                         ; $6420: $04
    nop                                           ; $6421: $00
    nop                                           ; $6422: $00
    rst $38                                       ; $6423: $ff
    ld a, a                                       ; $6424: $7f
    ld l, c                                       ; $6425: $69
    jr c, jr_0b5_6428                             ; $6426: $38 $00

jr_0b5_6428:
    jr nz, @+$03                                  ; $6428: $20 $01

    ld [$3869], sp                                ; $642a: $08 $69 $38
    ld l, c                                       ; $642d: $69
    jr c, jr_0b5_6430                             ; $642e: $38 $00

jr_0b5_6430:
    jr nz, jr_0b5_6432                            ; $6430: $20 $00

jr_0b5_6432:
    nop                                           ; $6432: $00
    ld l, c                                       ; $6433: $69
    jr c, jr_0b5_6415                             ; $6434: $38 $df

    ld [hl], e                                    ; $6436: $73
    dec hl                                        ; $6437: $2b
    ld hl, $0867                                  ; $6438: $21 $67 $08
    ld [de], a                                    ; $643b: $12
    dec d                                         ; $643c: $15
    xor [hl]                                      ; $643d: $ae
    inc c                                         ; $643e: $0c
    ld [hl], a                                    ; $643f: $77
    dec e                                         ; $6440: $1d

jr_0b5_6441:
    nop                                           ; $6441: $00
    ld [$31f5], sp                                ; $6442: $08 $f5 $31
    rst $38                                       ; $6445: $ff
    ld a, a                                       ; $6446: $7f
    ld l, [hl]                                    ; $6447: $6e
    dec h                                         ; $6448: $25
    nop                                           ; $6449: $00
    jr nz, jr_0b5_6441                            ; $644a: $20 $f5

    ld sp, $7fff                                  ; $644c: $31 $ff $7f
    ld l, [hl]                                    ; $644f: $6e
    dec h                                         ; $6450: $25
    nop                                           ; $6451: $00
    jr nz, @+$6b                                  ; $6452: $20 $69

    jr c, @+$6b                                   ; $6454: $38 $69

    jr c, jr_0b5_6458                             ; $6456: $38 $00

jr_0b5_6458:
    jr nz, jr_0b5_645a                            ; $6458: $20 $00

jr_0b5_645a:
    nop                                           ; $645a: $00
    rst $38                                       ; $645b: $ff
    ld a, a                                       ; $645c: $7f
    ld l, c                                       ; $645d: $69

jr_0b5_645e:
    jr c, jr_0b5_6460                             ; $645e: $38 $00

jr_0b5_6460:
    jr nz, jr_0b5_6462                            ; $6460: $20 $00

jr_0b5_6462:
    nop                                           ; $6462: $00
    ld l, c                                       ; $6463: $69
    jr c, @+$6b                                   ; $6464: $38 $69

    jr c, jr_0b5_6468                             ; $6466: $38 $00

jr_0b5_6468:
    jr nz, jr_0b5_646a                            ; $6468: $20 $00

jr_0b5_646a:
    nop                                           ; $646a: $00
    rst $38                                       ; $646b: $ff
    ld a, a                                       ; $646c: $7f
    rst $38                                       ; $646d: $ff
    ld a, a                                       ; $646e: $7f
    ld l, [hl]                                    ; $646f: $6e
    dec h                                         ; $6470: $25
    nop                                           ; $6471: $00
    nop                                           ; $6472: $00
    rst $38                                       ; $6473: $ff
    ld a, a                                       ; $6474: $7f
    rst $38                                       ; $6475: $ff
    ld a, a                                       ; $6476: $7f
    ld l, [hl]                                    ; $6477: $6e
    dec h                                         ; $6478: $25
    nop                                           ; $6479: $00
    nop                                           ; $647a: $00
    rst $38                                       ; $647b: $ff
    ld a, a                                       ; $647c: $7f
    nop                                           ; $647d: $00
    jr nz, jr_0b5_64ee                            ; $647e: $20 $6e

    dec h                                         ; $6480: $25
    nop                                           ; $6481: $00
    jr nz, @+$01                                  ; $6482: $20 $ff

    ld a, a                                       ; $6484: $7f
    nop                                           ; $6485: $00
    jr nz, jr_0b5_64f6                            ; $6486: $20 $6e

    dec h                                         ; $6488: $25
    nop                                           ; $6489: $00
    jr nz, jr_0b5_64f5                            ; $648a: $20 $69

    jr c, @+$6b                                   ; $648c: $38 $69

jr_0b5_648e:
    jr c, jr_0b5_6490                             ; $648e: $38 $00

jr_0b5_6490:
    jr nz, jr_0b5_6492                            ; $6490: $20 $00

jr_0b5_6492:
    nop                                           ; $6492: $00
    rst $38                                       ; $6493: $ff
    ld a, a                                       ; $6494: $7f
    nop                                           ; $6495: $00

jr_0b5_6496:
    jr nz, jr_0b5_6498                            ; $6496: $20 $00

jr_0b5_6498:
    jr nz, jr_0b5_649a                            ; $6498: $20 $00

jr_0b5_649a:
    nop                                           ; $649a: $00
    rst $38                                       ; $649b: $ff
    ld a, a                                       ; $649c: $7f
    nop                                           ; $649d: $00

jr_0b5_649e:
    jr nz, jr_0b5_64a0                            ; $649e: $20 $00

jr_0b5_64a0:
    jr nz, jr_0b5_64a2                            ; $64a0: $20 $00

jr_0b5_64a2:
    nop                                           ; $64a2: $00
    nop                                           ; $64a3: $00
    jr nz, jr_0b5_64a6                            ; $64a4: $20 $00

jr_0b5_64a6:
    jr nz, jr_0b5_6516                            ; $64a6: $20 $6e

    dec h                                         ; $64a8: $25
    nop                                           ; $64a9: $00
    nop                                           ; $64aa: $00
    nop                                           ; $64ab: $00
    jr nz, jr_0b5_64ae                            ; $64ac: $20 $00

jr_0b5_64ae:
    jr nz, jr_0b5_651e                            ; $64ae: $20 $6e

    dec h                                         ; $64b0: $25
    nop                                           ; $64b1: $00
    nop                                           ; $64b2: $00
    nop                                           ; $64b3: $00
    jr nz, jr_0b5_64b6                            ; $64b4: $20 $00

jr_0b5_64b6:
    jr nz, jr_0b5_6526                            ; $64b6: $20 $6e

    dec h                                         ; $64b8: $25
    nop                                           ; $64b9: $00
    jr nz, jr_0b5_64bc                            ; $64ba: $20 $00

jr_0b5_64bc:
    jr nz, jr_0b5_64be                            ; $64bc: $20 $00

jr_0b5_64be:
    jr nz, jr_0b5_652e                            ; $64be: $20 $6e

    dec h                                         ; $64c0: $25
    nop                                           ; $64c1: $00
    jr nz, jr_0b5_64c4                            ; $64c2: $20 $00

jr_0b5_64c4:
    jr nz, jr_0b5_64c6                            ; $64c4: $20 $00

jr_0b5_64c6:
    jr nz, jr_0b5_648e                            ; $64c6: $20 $c6

    ld d, b                                       ; $64c8: $50
    nop                                           ; $64c9: $00
    jr nz, jr_0b5_64cc                            ; $64ca: $20 $00

jr_0b5_64cc:
    jr nz, jr_0b5_64ce                            ; $64cc: $20 $00

jr_0b5_64ce:
    jr nz, jr_0b5_6496                            ; $64ce: $20 $c6

    ld d, b                                       ; $64d0: $50
    nop                                           ; $64d1: $00
    jr nz, jr_0b5_64d4                            ; $64d2: $20 $00

jr_0b5_64d4:
    jr nz, jr_0b5_64d6                            ; $64d4: $20 $00

jr_0b5_64d6:
    jr nz, jr_0b5_649e                            ; $64d6: $20 $c6

    ld d, b                                       ; $64d8: $50
    nop                                           ; $64d9: $00
    nop                                           ; $64da: $00
    rst $38                                       ; $64db: $ff
    ld a, a                                       ; $64dc: $7f
    nop                                           ; $64dd: $00
    jr nz, jr_0b5_64e0                            ; $64de: $20 $00

jr_0b5_64e0:
    jr nz, jr_0b5_64e2                            ; $64e0: $20 $00

jr_0b5_64e2:
    jr nz, @+$01                                  ; $64e2: $20 $ff

    ld a, a                                       ; $64e4: $7f
    nop                                           ; $64e5: $00
    jr nz, jr_0b5_64e8                            ; $64e6: $20 $00

jr_0b5_64e8:
    jr nz, jr_0b5_64ea                            ; $64e8: $20 $00

jr_0b5_64ea:
    jr nz, @+$01                                  ; $64ea: $20 $ff

    ld a, a                                       ; $64ec: $7f
    nop                                           ; $64ed: $00

jr_0b5_64ee:
    jr nz, jr_0b5_64f0                            ; $64ee: $20 $00

jr_0b5_64f0:
    jr nz, jr_0b5_64f2                            ; $64f0: $20 $00

jr_0b5_64f2:
    jr nz, @+$01                                  ; $64f2: $20 $ff

    ld a, a                                       ; $64f4: $7f

jr_0b5_64f5:
    nop                                           ; $64f5: $00

jr_0b5_64f6:
    jr nz, jr_0b5_64f8                            ; $64f6: $20 $00

jr_0b5_64f8:
    jr nz, jr_0b5_64fa                            ; $64f8: $20 $00

jr_0b5_64fa:
    jr nz, jr_0b5_64fc                            ; $64fa: $20 $00

jr_0b5_64fc:
    jr nz, jr_0b5_64fe                            ; $64fc: $20 $00

jr_0b5_64fe:
    jr nz, jr_0b5_64c6                            ; $64fe: $20 $c6

    ld d, b                                       ; $6500: $50
    nop                                           ; $6501: $00
    jr nz, jr_0b5_6504                            ; $6502: $20 $00

jr_0b5_6504:
    jr nz, jr_0b5_6506                            ; $6504: $20 $00

jr_0b5_6506:
    jr nz, jr_0b5_64ce                            ; $6506: $20 $c6

    ld d, b                                       ; $6508: $50
    nop                                           ; $6509: $00
    jr nz, jr_0b5_650c                            ; $650a: $20 $00

jr_0b5_650c:
    jr nz, jr_0b5_650e                            ; $650c: $20 $00

jr_0b5_650e:
    jr nz, jr_0b5_64d6                            ; $650e: $20 $c6

    ld d, b                                       ; $6510: $50
    nop                                           ; $6511: $00
    nop                                           ; $6512: $00
    rst $38                                       ; $6513: $ff
    ld a, a                                       ; $6514: $7f
    nop                                           ; $6515: $00

jr_0b5_6516:
    jr nz, jr_0b5_6518                            ; $6516: $20 $00

jr_0b5_6518:
    jr nz, jr_0b5_651a                            ; $6518: $20 $00

jr_0b5_651a:
    nop                                           ; $651a: $00
    nop                                           ; $651b: $00
    jr nz, jr_0b5_651e                            ; $651c: $20 $00

jr_0b5_651e:
    jr nz, jr_0b5_6520                            ; $651e: $20 $00

jr_0b5_6520:
    jr nz, jr_0b5_6522                            ; $6520: $20 $00

jr_0b5_6522:
    jr nz, jr_0b5_6524                            ; $6522: $20 $00

jr_0b5_6524:
    jr nz, jr_0b5_6526                            ; $6524: $20 $00

jr_0b5_6526:
    jr nz, jr_0b5_6528                            ; $6526: $20 $00

jr_0b5_6528:
    jr nz, jr_0b5_652a                            ; $6528: $20 $00

jr_0b5_652a:
    jr nz, jr_0b5_652c                            ; $652a: $20 $00

jr_0b5_652c:
    jr nz, jr_0b5_652e                            ; $652c: $20 $00

jr_0b5_652e:
    jr nz, jr_0b5_6530                            ; $652e: $20 $00

jr_0b5_6530:
    jr nz, jr_0b5_6532                            ; $6530: $20 $00

jr_0b5_6532:
    jr nz, jr_0b5_6534                            ; $6532: $20 $00

jr_0b5_6534:
    jr nz, jr_0b5_6536                            ; $6534: $20 $00

jr_0b5_6536:
    jr nz, jr_0b5_64fe                            ; $6536: $20 $c6

    ld d, b                                       ; $6538: $50
    nop                                           ; $6539: $00
    jr nz, jr_0b5_653c                            ; $653a: $20 $00

jr_0b5_653c:
    jr nz, jr_0b5_653e                            ; $653c: $20 $00

jr_0b5_653e:
    jr nz, jr_0b5_6506                            ; $653e: $20 $c6

    ld d, b                                       ; $6540: $50
    nop                                           ; $6541: $00
    nop                                           ; $6542: $00
    rst $38                                       ; $6543: $ff
    ld a, a                                       ; $6544: $7f
    nop                                           ; $6545: $00
    jr nz, jr_0b5_6549                            ; $6546: $20 $01

jr_0b5_6548:
    inc d                                         ; $6548: $14

jr_0b5_6549:
    nop                                           ; $6549: $00
    nop                                           ; $654a: $00
    rla                                           ; $654b: $17
    dec a                                         ; $654c: $3d
    rst $38                                       ; $654d: $ff
    ld a, a                                       ; $654e: $7f
    ld bc, $0014                                  ; $654f: $01 $14 $00
    nop                                           ; $6552: $00
    rst $38                                       ; $6553: $ff
    ld a, a                                       ; $6554: $7f
    nop                                           ; $6555: $00
    jr nz, jr_0b5_6559                            ; $6556: $20 $01

    inc d                                         ; $6558: $14

jr_0b5_6559:
    nop                                           ; $6559: $00
    jr nz, @+$01                                  ; $655a: $20 $ff

    ld a, a                                       ; $655c: $7f
    nop                                           ; $655d: $00
    jr nz, jr_0b5_6561                            ; $655e: $20 $01

    inc d                                         ; $6560: $14

jr_0b5_6561:
    nop                                           ; $6561: $00
    jr nz, @+$01                                  ; $6562: $20 $ff

    ld a, a                                       ; $6564: $7f
    nop                                           ; $6565: $00
    jr nz, jr_0b5_6569                            ; $6566: $20 $01

    inc d                                         ; $6568: $14

jr_0b5_6569:
    nop                                           ; $6569: $00
    jr nz, @+$01                                  ; $656a: $20 $ff

    ld a, a                                       ; $656c: $7f
    nop                                           ; $656d: $00
    jr nz, jr_0b5_6571                            ; $656e: $20 $01

jr_0b5_6570:
    inc d                                         ; $6570: $14

jr_0b5_6571:
    nop                                           ; $6571: $00
    jr nz, jr_0b5_6575                            ; $6572: $20 $01

    inc d                                         ; $6574: $14

jr_0b5_6575:
    nop                                           ; $6575: $00

jr_0b5_6576:
    jr nz, jr_0b5_6579                            ; $6576: $20 $01

    inc d                                         ; $6578: $14

jr_0b5_6579:
    nop                                           ; $6579: $00
    db $10                                        ; $657a: $10
    rst $38                                       ; $657b: $ff
    ld a, a                                       ; $657c: $7f
    ld b, e                                       ; $657d: $43
    jr z, jr_0b5_6548                             ; $657e: $28 $c8

    jr c, jr_0b5_65a4                             ; $6580: $38 $22

    jr nz, jr_0b5_6532                            ; $6582: $20 $ae

    ld d, c                                       ; $6584: $51
    add hl, sp                                    ; $6585: $39
    ld a, a                                       ; $6586: $7f
    rla                                           ; $6587: $17
    dec a                                         ; $6588: $3d
    nop                                           ; $6589: $00
    nop                                           ; $658a: $00
    rst $38                                       ; $658b: $ff
    ld a, a                                       ; $658c: $7f
    rla                                           ; $658d: $17
    dec a                                         ; $658e: $3d
    nop                                           ; $658f: $00
    jr nz, jr_0b5_6592                            ; $6590: $20 $00

jr_0b5_6592:
    jr nz, @+$01                                  ; $6592: $20 $ff

    ld a, a                                       ; $6594: $7f
    rla                                           ; $6595: $17
    dec a                                         ; $6596: $3d
    nop                                           ; $6597: $00
    jr nz, jr_0b5_659a                            ; $6598: $20 $00

jr_0b5_659a:
    jr nz, @+$01                                  ; $659a: $20 $ff

    ld a, a                                       ; $659c: $7f
    rla                                           ; $659d: $17
    dec a                                         ; $659e: $3d
    nop                                           ; $659f: $00
    jr nz, jr_0b5_65a2                            ; $65a0: $20 $00

jr_0b5_65a2:
    jr nz, @+$01                                  ; $65a2: $20 $ff

jr_0b5_65a4:
    ld a, a                                       ; $65a4: $7f
    ld b, e                                       ; $65a5: $43
    jr z, jr_0b5_6570                             ; $65a6: $28 $c8

    jr c, jr_0b5_65aa                             ; $65a8: $38 $00

jr_0b5_65aa:
    jr nz, jr_0b5_65ef                            ; $65aa: $20 $43

    jr z, jr_0b5_6576                             ; $65ac: $28 $c8

    jr c, jr_0b5_65b1                             ; $65ae: $38 $01

    inc d                                         ; $65b0: $14

jr_0b5_65b1:
    ld b, e                                       ; $65b1: $43
    jr z, jr_0b5_65a4                             ; $65b2: $28 $f0

    ld e, l                                       ; $65b4: $5d
    or [hl]                                       ; $65b5: $b6
    ld [hl], d                                    ; $65b6: $72
    add sp, $44                                   ; $65b7: $e8 $44
    ld [hl+], a                                   ; $65b9: $22
    inc e                                         ; $65ba: $1c
    inc d                                         ; $65bb: $14
    dec a                                         ; $65bc: $3d
    sub $6e                                       ; $65bd: $d6 $6e
    add hl, bc                                    ; $65bf: $09
    ld b, l                                       ; $65c0: $45
    nop                                           ; $65c1: $00
    nop                                           ; $65c2: $00

jr_0b5_65c3:
    ld d, $39                                     ; $65c3: $16 $39
    rst $38                                       ; $65c5: $ff
    ld a, a                                       ; $65c6: $7f
    nop                                           ; $65c7: $00
    jr nz, jr_0b5_65ca                            ; $65c8: $20 $00

jr_0b5_65ca:
    nop                                           ; $65ca: $00
    nop                                           ; $65cb: $00

jr_0b5_65cc:
    jr nz, @+$01                                  ; $65cc: $20 $ff

    ld a, a                                       ; $65ce: $7f
    nop                                           ; $65cf: $00
    jr nz, jr_0b5_65d2                            ; $65d0: $20 $00

jr_0b5_65d2:
    jr nz, jr_0b5_65d4                            ; $65d2: $20 $00

jr_0b5_65d4:
    jr nz, @+$01                                  ; $65d4: $20 $ff

    ld a, a                                       ; $65d6: $7f
    nop                                           ; $65d7: $00
    jr nz, jr_0b5_65da                            ; $65d8: $20 $00

jr_0b5_65da:
    jr nz, jr_0b5_65cc                            ; $65da: $20 $f0

    ld e, l                                       ; $65dc: $5d
    or [hl]                                       ; $65dd: $b6
    ld [hl], d                                    ; $65de: $72
    add sp, $44                                   ; $65df: $e8 $44
    nop                                           ; $65e1: $00
    inc e                                         ; $65e2: $1c
    ld [hl-], a                                   ; $65e3: $32
    ld h, d                                       ; $65e4: $62
    ld h, h                                       ; $65e5: $64
    inc l                                         ; $65e6: $2c
    jr jr_0b5_6664                                ; $65e7: $18 $7b

    add h                                         ; $65e9: $84
    jr c, jr_0b5_6579                             ; $65ea: $38 $8d

    ld d, c                                       ; $65ec: $51
    add hl, hl                                    ; $65ed: $29
    ld c, l                                       ; $65ee: $4d

jr_0b5_65ef:
    ld [hl], e                                    ; $65ef: $73
    ld l, d                                       ; $65f0: $6a
    ld b, e                                       ; $65f1: $43
    jr z, jr_0b5_65c3                             ; $65f2: $28 $cf

    ld d, c                                       ; $65f4: $51
    sbc l                                         ; $65f5: $9d
    ld l, e                                       ; $65f6: $6b
    or $38                                        ; $65f7: $f6 $38
    nop                                           ; $65f9: $00
    nop                                           ; $65fa: $00
    or $38                                        ; $65fb: $f6 $38
    rst $38                                       ; $65fd: $ff
    ld a, a                                       ; $65fe: $7f
    ld d, $39                                     ; $65ff: $16 $39
    nop                                           ; $6601: $00
    nop                                           ; $6602: $00
    rst $38                                       ; $6603: $ff
    ld a, a                                       ; $6604: $7f
    ld l, e                                       ; $6605: $6b
    dec e                                         ; $6606: $1d
    nop                                           ; $6607: $00
    jr nz, jr_0b5_660a                            ; $6608: $20 $00

jr_0b5_660a:
    jr nz, @+$01                                  ; $660a: $20 $ff

    ld a, a                                       ; $660c: $7f
    ld l, e                                       ; $660d: $6b
    dec e                                         ; $660e: $1d
    nop                                           ; $660f: $00
    jr nz, jr_0b5_6612                            ; $6610: $20 $00

jr_0b5_6612:
    jr nz, @-$71                                  ; $6612: $20 $8d

    ld d, c                                       ; $6614: $51
    add hl, hl                                    ; $6615: $29
    ld c, l                                       ; $6616: $4d
    ld [hl], e                                    ; $6617: $73
    ld l, d                                       ; $6618: $6a
    nop                                           ; $6619: $00
    inc e                                         ; $661a: $1c
    db $10                                        ; $661b: $10
    ld h, d                                       ; $661c: $62
    rst $30                                       ; $661d: $f7
    halt                                          ; $661e: $76
    ld h, h                                       ; $661f: $64
    inc l                                         ; $6620: $2c
    inc hl                                        ; $6621: $23
    jr @-$0f                                      ; $6622: $18 $ef

    ld d, c                                       ; $6624: $51
    add $4c                                       ; $6625: $c6 $4c
    ld a, b                                       ; $6627: $78
    ld b, [hl]                                    ; $6628: $46
    ld [hl+], a                                   ; $6629: $22
    inc e                                         ; $662a: $1c
    ld a, h                                       ; $662b: $7c
    ld h, a                                       ; $662c: $67
    ld d, c                                       ; $662d: $51
    ld b, c                                       ; $662e: $41
    ld l, d                                       ; $662f: $6a
    inc b                                         ; $6630: $04
    push af                                       ; $6631: $f5
    jr c, jr_0b5_668d                             ; $6632: $38 $59

    ld h, $fe                                     ; $6634: $26 $fe
    rrca                                          ; $6636: $0f
    ld l, d                                       ; $6637: $6a
    inc b                                         ; $6638: $04
    nop                                           ; $6639: $00
    db $10                                        ; $663a: $10

jr_0b5_663b:
    cp $3f                                        ; $663b: $fe $3f
    ld [hl], d                                    ; $663d: $72
    ld a, [de]                                    ; $663e: $1a
    cp $7f                                        ; $663f: $fe $7f
    nop                                           ; $6641: $00

jr_0b5_6642:
    jr nz, jr_0b5_6642                            ; $6642: $20 $fe

    ccf                                           ; $6644: $3f
    ld [hl], d                                    ; $6645: $72
    ld a, [de]                                    ; $6646: $1a
    cp $7f                                        ; $6647: $fe $7f
    nop                                           ; $6649: $00
    jr nz, jr_0b5_663b                            ; $664a: $20 $ef

    ld d, c                                       ; $664c: $51
    add $4c                                       ; $664d: $c6 $4c
    ld a, b                                       ; $664f: $78
    ld b, [hl]                                    ; $6650: $46
    inc hl                                        ; $6651: $23
    nop                                           ; $6652: $00
    rst $08                                       ; $6653: $cf
    ld d, l                                       ; $6654: $55
    add hl, sp                                    ; $6655: $39
    ld a, a                                       ; $6656: $7f
    ld bc, $2320                                  ; $6657: $01 $20 $23
    inc d                                         ; $665a: $14
    adc l                                         ; $665b: $8d
    ld c, l                                       ; $665c: $4d
    dec sp                                        ; $665d: $3b
    ld e, a                                       ; $665e: $5f
    ld e, d                                       ; $665f: $5a
    ld a, [hl-]                                   ; $6660: $3a
    ret nz                                        ; $6661: $c0

    ld [bc], a                                    ; $6662: $02
    ld a, e                                       ; $6663: $7b

jr_0b5_6664:
    ld l, e                                       ; $6664: $6b
    ld bc, $a718                                  ; $6665: $01 $18 $a7
    inc [hl]                                      ; $6668: $34
    ldh [$7c], a                                  ; $6669: $e0 $7c
    ld e, h                                       ; $666b: $5c
    scf                                           ; $666c: $37
    push af                                       ; $666d: $f5
    jr c, jr_0b5_6671                             ; $666e: $38 $01

    inc d                                         ; $6670: $14

jr_0b5_6671:
    ld h, b                                       ; $6671: $60
    inc a                                         ; $6672: $3c
    or a                                          ; $6673: $b7
    ld [hl], $ff                                  ; $6674: $36 $ff
    ld [hl], e                                    ; $6676: $73
    cp $13                                        ; $6677: $fe $13
    nop                                           ; $6679: $00
    nop                                           ; $667a: $00
    nop                                           ; $667b: $00
    jr nz, @+$01                                  ; $667c: $20 $ff

    ld [hl], e                                    ; $667e: $73
    cp $13                                        ; $667f: $fe $13
    nop                                           ; $6681: $00

jr_0b5_6682:
    nop                                           ; $6682: $00
    rst $38                                       ; $6683: $ff
    ld a, a                                       ; $6684: $7f
    nop                                           ; $6685: $00
    jr nz, @+$5c                                  ; $6686: $20 $5a

    ld a, [hl-]                                   ; $6688: $3a
    ld [hl+], a                                   ; $6689: $22
    jr nz, jr_0b5_66e6                            ; $668a: $20 $5a

    ld a, [hl-]                                   ; $668c: $3a

jr_0b5_668d:
    ld a, [hl+]                                   ; $668d: $2a
    ld c, l                                       ; $668e: $4d
    sbc h                                         ; $668f: $9c
    ld a, a                                       ; $6690: $7f
    add l                                         ; $6691: $85
    jr @+$7a                                      ; $6692: $18 $78

    ld b, [hl]                                    ; $6694: $46
    ret nz                                        ; $6695: $c0

    ld b, $ff                                     ; $6696: $06 $ff
    ld a, a                                       ; $6698: $7f
    ldh [rSB], a                                  ; $6699: $e0 $01
    cp l                                          ; $669b: $bd
    ld l, a                                       ; $669c: $6f
    ld a, [hl+]                                   ; $669d: $2a
    ld b, l                                       ; $669e: $45
    adc d                                         ; $669f: $8a
    inc b                                         ; $66a0: $04
    ld [hl+], a                                   ; $66a1: $22
    inc e                                         ; $66a2: $1c
    db $dd                                        ; $66a3: $dd
    rra                                           ; $66a4: $1f
    ld a, d                                       ; $66a5: $7a
    ld [hl], e                                    ; $66a6: $73
    call nc, $a634                                ; $66a7: $d4 $34 $a6
    inc c                                         ; $66aa: $0c
    db $dd                                        ; $66ab: $dd
    dec hl                                        ; $66ac: $2b
    ld h, l                                       ; $66ad: $65
    ld l, l                                       ; $66ae: $6d
    db $dd                                        ; $66af: $dd
    ld [hl], e                                    ; $66b0: $73
    nop                                           ; $66b1: $00
    nop                                           ; $66b2: $00
    db $dd                                        ; $66b3: $dd
    ld [hl], a                                    ; $66b4: $77
    nop                                           ; $66b5: $00
    jr nz, @+$01                                  ; $66b6: $20 $ff

    ld a, a                                       ; $66b8: $7f
    nop                                           ; $66b9: $00
    nop                                           ; $66ba: $00
    rst $38                                       ; $66bb: $ff
    ld a, a                                       ; $66bc: $7f
    nop                                           ; $66bd: $00
    jr nz, @+$01                                  ; $66be: $20 $ff

    ld a, a                                       ; $66c0: $7f
    ld [hl+], a                                   ; $66c1: $22
    inc e                                         ; $66c2: $1c
    adc $5d                                       ; $66c3: $ce $5d
    rst $20                                       ; $66c5: $e7
    ld c, b                                       ; $66c6: $48
    jr jr_0b5_6744                                ; $66c7: $18 $7b

    and a                                         ; $66c9: $a7
    jr z, jr_0b5_671f                             ; $66ca: $28 $53

    ld h, [hl]                                    ; $66cc: $66
    cp [hl]                                       ; $66cd: $be
    ld h, a                                       ; $66ce: $67
    ld a, c                                       ; $66cf: $79
    ld a, $46                                     ; $66d0: $3e $46
    ld [$4dd0], sp                                ; $66d2: $08 $d0 $4d
    sbc h                                         ; $66d5: $9c
    ld l, e                                       ; $66d6: $6b
    ld a, [hl+]                                   ; $66d7: $2a
    ld b, c                                       ; $66d8: $41
    ldh [$7c], a                                  ; $66d9: $e0 $7c
    cp e                                          ; $66db: $bb
    daa                                           ; $66dc: $27
    xor d                                         ; $66dd: $aa
    inc l                                         ; $66de: $2c
    db $dd                                        ; $66df: $dd
    ld [hl], a                                    ; $66e0: $77
    add sp, $7d                                   ; $66e1: $e8 $7d
    ld a, h                                       ; $66e3: $7c
    cpl                                           ; $66e4: $2f
    db $f4                                        ; $66e5: $f4

jr_0b5_66e6:
    jr nc, jr_0b5_6682                            ; $66e6: $30 $9a

    ld [hl], a                                    ; $66e8: $77
    nop                                           ; $66e9: $00
    nop                                           ; $66ea: $00
    rst $38                                       ; $66eb: $ff
    ld a, a                                       ; $66ec: $7f
    db $d3                                        ; $66ed: $d3
    inc [hl]                                      ; $66ee: $34
    nop                                           ; $66ef: $00
    jr nz, jr_0b5_66f2                            ; $66f0: $20 $00

jr_0b5_66f2:
    nop                                           ; $66f2: $00
    rst $38                                       ; $66f3: $ff
    ld a, a                                       ; $66f4: $7f
    or e                                          ; $66f5: $b3
    inc [hl]                                      ; $66f6: $34
    ld bc, $431c                                  ; $66f7: $01 $1c $43
    jr z, jr_0b5_670d                             ; $66fa: $28 $11

    ld h, d                                       ; $66fc: $62
    ld c, e                                       ; $66fd: $4b
    ld d, c                                       ; $66fe: $51
    jr jr_0b5_6778                                ; $66ff: $18 $77

    ld b, h                                       ; $6701: $44
    jr z, @+$1a                                   ; $6702: $28 $18

    ld [hl], $ff                                  ; $6704: $36 $ff
    ld a, a                                       ; $6706: $7f
    call z, Call_0b5_6810                         ; $6707: $cc $10 $68
    ld [$4df0], sp                                ; $670a: $08 $f0 $4d

jr_0b5_670d:
    and a                                         ; $670d: $a7
    inc [hl]                                      ; $670e: $34
    add hl, sp                                    ; $670f: $39
    ld l, e                                       ; $6710: $6b
    ld l, b                                       ; $6711: $68
    inc l                                         ; $6712: $2c
    cp $17                                        ; $6713: $fe $17
    rst $38                                       ; $6715: $ff
    ld c, a                                       ; $6716: $4f
    cp l                                          ; $6717: $bd
    ld [hl], e                                    ; $6718: $73
    and e                                         ; $6719: $a3
    ld a, l                                       ; $671a: $7d
    sbc $2b                                       ; $671b: $de $2b
    cp e                                          ; $671d: $bb
    ld [hl], a                                    ; $671e: $77

jr_0b5_671f:
    or e                                          ; $671f: $b3
    inc [hl]                                      ; $6720: $34
    nop                                           ; $6721: $00
    inc e                                         ; $6722: $1c
    dec de                                        ; $6723: $1b
    rla                                           ; $6724: $17
    or d                                          ; $6725: $b2
    jr nc, @+$01                                  ; $6726: $30 $ff

    ld a, a                                       ; $6728: $7f
    nop                                           ; $6729: $00
    nop                                           ; $672a: $00
    sbc $7f                                       ; $672b: $de $7f
    ld l, $41                                     ; $672d: $2e $41
    ld [hl+], a                                   ; $672f: $22
    inc e                                         ; $6730: $1c
    ld h, h                                       ; $6731: $64
    jr z, jr_0b5_67a8                             ; $6732: $28 $74

    ld l, d                                       ; $6734: $6a
    ld c, e                                       ; $6735: $4b
    ld c, c                                       ; $6736: $49
    add hl, sp                                    ; $6737: $39
    ld [hl], e                                    ; $6738: $73
    add a                                         ; $6739: $87
    inc c                                         ; $673a: $0c
    ld e, d                                       ; $673b: $5a
    ld a, [hl-]                                   ; $673c: $3a
    sub c                                         ; $673d: $91
    dec h                                         ; $673e: $25
    ld a, e                                       ; $673f: $7b
    ld l, a                                       ; $6740: $6f
    inc h                                         ; $6741: $24
    inc c                                         ; $6742: $0c
    xor [hl]                                      ; $6743: $ae

jr_0b5_6744:
    ld d, c                                       ; $6744: $51
    rst $30                                       ; $6745: $f7
    ld h, [hl]                                    ; $6746: $66

jr_0b5_6747:
    and [hl]                                      ; $6747: $a6
    inc [hl]                                      ; $6748: $34
    ldh [$7c], a                                  ; $6749: $e0 $7c
    sbc l                                         ; $674b: $9d
    inc hl                                        ; $674c: $23
    call $9c30                                    ; $674d: $cd $30 $9c
    ld [hl], e                                    ; $6750: $73
    inc [hl]                                      ; $6751: $34

jr_0b5_6752:
    ld sp, $2bde                                  ; $6752: $31 $de $2b
    ld c, h                                       ; $6755: $4c
    halt                                          ; $6756: $76
    db $dd                                        ; $6757: $dd
    ld a, a                                       ; $6758: $7f

jr_0b5_6759:
    nop                                           ; $6759: $00
    nop                                           ; $675a: $00
    or d                                          ; $675b: $b2
    jr nc, @+$01                                  ; $675c: $30 $ff

    ld a, a                                       ; $675e: $7f
    nop                                           ; $675f: $00
    jr nz, jr_0b5_6762                            ; $6760: $20 $00

jr_0b5_6762:
    nop                                           ; $6762: $00
    ld a, e                                       ; $6763: $7b
    ld a, a                                       ; $6764: $7f

jr_0b5_6765:
    add hl, bc                                    ; $6765: $09
    ld b, c                                       ; $6766: $41
    ld bc, $6020                                  ; $6767: $01 $20 $60
    nop                                           ; $676a: $00
    adc l                                         ; $676b: $8d
    ld d, l                                       ; $676c: $55
    and [hl]                                      ; $676d: $a6
    jr nc, jr_0b5_6747                            ; $676e: $30 $d7

    ld l, d                                       ; $6770: $6a
    add b                                         ; $6771: $80
    nop                                           ; $6772: $00
    call nc, $ff39                                ; $6773: $d4 $39 $ff
    ld l, a                                       ; $6776: $6f
    xor e                                         ; $6777: $ab

jr_0b5_6778:
    ld [$0881], sp                                ; $6778: $08 $81 $08
    ldh a, [$59]                                  ; $677b: $f0 $59
    add l                                         ; $677d: $85
    jr nc, @+$01                                  ; $677e: $30 $ff

    ld l, a                                       ; $6780: $6f
    ld bc, $5b18                                  ; $6781: $01 $18 $5b
    inc de                                        ; $6784: $13
    ret nc                                        ; $6785: $d0

    jr nc, jr_0b5_6765                            ; $6786: $30 $dd

    ld a, a                                       ; $6788: $7f
    ldh [$7c], a                                  ; $6789: $e0 $7c
    db $dd                                        ; $678b: $dd
    ld a, a                                       ; $678c: $7f
    inc de                                        ; $678d: $13
    dec l                                         ; $678e: $2d
    cp $0f                                        ; $678f: $fe $0f
    nop                                           ; $6791: $00
    nop                                           ; $6792: $00
    rst $38                                       ; $6793: $ff
    ld a, a                                       ; $6794: $7f
    sub c                                         ; $6795: $91
    jr nc, jr_0b5_6798                            ; $6796: $30 $00

jr_0b5_6798:
    jr nz, jr_0b5_679b                            ; $6798: $20 $01

    inc e                                         ; $679a: $1c

jr_0b5_679b:
    adc $59                                       ; $679b: $ce $59
    rst $30                                       ; $679d: $f7
    ld a, d                                       ; $679e: $7a
    add hl, bc                                    ; $679f: $09
    ld c, c                                       ; $67a0: $49
    ld b, e                                       ; $67a1: $43
    jr z, jr_0b5_6759                             ; $67a2: $28 $b5

    ld l, [hl]                                    ; $67a4: $6e
    ld c, c                                       ; $67a5: $49
    add hl, sp                                    ; $67a6: $39
    ld [c], a                                     ; $67a7: $e2

jr_0b5_67a8:
    ld [$04c1], sp                                ; $67a8: $08 $c1 $04
    db $10                                        ; $67ab: $10
    dec sp                                        ; $67ac: $3b
    db $dd                                        ; $67ad: $dd
    ld l, e                                       ; $67ae: $6b
    add hl, bc                                    ; $67af: $09
    ld e, $22                                     ; $67b0: $1e $22
    inc e                                         ; $67b2: $1c
    rst $38                                       ; $67b3: $ff
    ld l, a                                       ; $67b4: $6f
    add hl, bc                                    ; $67b5: $09
    ld e, $c1                                     ; $67b6: $1e $c1
    inc b                                         ; $67b8: $04
    pop bc                                        ; $67b9: $c1
    inc b                                         ; $67ba: $04
    sub b                                         ; $67bb: $90
    inc l                                         ; $67bc: $2c
    sub h                                         ; $67bd: $94
    dec h                                         ; $67be: $25
    sub c                                         ; $67bf: $91
    jr nc, jr_0b5_6752                            ; $67c0: $30 $90

    inc l                                         ; $67c2: $2c
    sbc b                                         ; $67c3: $98
    ld e, $fe                                     ; $67c4: $1e $fe
    rrca                                          ; $67c6: $0f
    sub c                                         ; $67c7: $91
    jr nc, jr_0b5_67ca                            ; $67c8: $30 $00

jr_0b5_67ca:
    nop                                           ; $67ca: $00
    rst $38                                       ; $67cb: $ff
    ld a, a                                       ; $67cc: $7f
    sub b                                         ; $67cd: $90
    inc l                                         ; $67ce: $2c
    nop                                           ; $67cf: $00
    jr nz, jr_0b5_67d2                            ; $67d0: $20 $00

jr_0b5_67d2:
    inc e                                         ; $67d2: $1c
    ld sp, $a766                                  ; $67d3: $31 $66 $a7
    inc [hl]                                      ; $67d6: $34
    add hl, sp                                    ; $67d7: $39
    ld a, a                                       ; $67d8: $7f
    ld b, h                                       ; $67d9: $44
    dec c                                         ; $67da: $0d
    xor h                                         ; $67db: $ac
    ld a, [hl+]                                   ; $67dc: $2a
    sub h                                         ; $67dd: $94
    ld l, d                                       ; $67de: $6a
    ld h, h                                       ; $67df: $64
    jr nc, @+$72                                  ; $67e0: $30 $70

    scf                                           ; $67e2: $37
    cp c                                          ; $67e3: $b9
    ld e, e                                       ; $67e4: $5b
    ld [hl], b                                    ; $67e5: $70
    dec sp                                        ; $67e6: $3b
    ld h, h                                       ; $67e7: $64
    jr nc, jr_0b5_680d                            ; $67e8: $30 $23

    dec c                                         ; $67ea: $0d
    ld c, a                                       ; $67eb: $4f
    scf                                           ; $67ec: $37
    cp e                                          ; $67ed: $bb
    ld h, e                                       ; $67ee: $63
    add hl, hl                                    ; $67ef: $29
    ld [hl+], a                                   ; $67f0: $22
    add a                                         ; $67f1: $87

jr_0b5_67f2:
    nop                                           ; $67f2: $00
    cp b                                          ; $67f3: $b8
    ld c, d                                       ; $67f4: $4a
    ret nc                                        ; $67f5: $d0

    inc h                                         ; $67f6: $24
    rst $18                                       ; $67f7: $df
    ld l, a                                       ; $67f8: $6f
    ld l, d                                       ; $67f9: $6a
    nop                                           ; $67fa: $00
    sub b                                         ; $67fb: $90
    inc l                                         ; $67fc: $2c
    ld a, [c]                                     ; $67fd: $f2
    inc l                                         ; $67fe: $2c
    rst $18                                       ; $67ff: $df
    ld l, a                                       ; $6800: $6f
    nop                                           ; $6801: $00
    nop                                           ; $6802: $00
    rst $38                                       ; $6803: $ff
    ld a, a                                       ; $6804: $7f
    ld l, l                                       ; $6805: $6d
    inc d                                         ; $6806: $14
    nop                                           ; $6807: $00
    jr nz, jr_0b5_680b                            ; $6808: $20 $01

    inc e                                         ; $680a: $1c

jr_0b5_680b:
    rst $28                                       ; $680b: $ef
    ld e, l                                       ; $680c: $5d

jr_0b5_680d:
    add hl, sp                                    ; $680d: $39
    ld a, a                                       ; $680e: $7f
    ld [hl], e                                    ; $680f: $73

Call_0b5_6810:
    ld l, d                                       ; $6810: $6a
    ld b, h                                       ; $6811: $44
    inc l                                         ; $6812: $2c
    ld l, h                                       ; $6813: $6c
    ld d, l                                       ; $6814: $55
    adc e                                         ; $6815: $8b
    ld h, $65                                     ; $6816: $26 $65
    ld de, $04c1                                  ; $6818: $11 $c1 $04
    cpl                                           ; $681b: $2f
    inc sp                                        ; $681c: $33
    add sp, $19                                   ; $681d: $e8 $19
    ld h, l                                       ; $681f: $65
    ld de, $04a1                                  ; $6820: $11 $a1 $04
    add sp, $19                                   ; $6823: $e8 $19
    ld c, $33                                     ; $6825: $0e $33
    ld l, d                                       ; $6827: $6a
    ld [hl+], a                                   ; $6828: $22
    dec bc                                        ; $6829: $0b
    dec c                                         ; $682a: $0d
    add hl, sp                                    ; $682b: $39
    ld a, [hl-]                                   ; $682c: $3a
    inc a                                         ; $682d: $3c
    ld e, a                                       ; $682e: $5f
    or d                                          ; $682f: $b2
    add hl, hl                                    ; $6830: $29
    ld e, c                                       ; $6831: $59
    ld a, [hl-]                                   ; $6832: $3a
    rst $18                                       ; $6833: $df
    ld l, a                                       ; $6834: $6f
    rst $18                                       ; $6835: $df
    ld [hl], e                                    ; $6836: $73
    ld e, d                                       ; $6837: $5a
    ld a, [hl-]                                   ; $6838: $3a

jr_0b5_6839:
    nop                                           ; $6839: $00
    nop                                           ; $683a: $00
    jr c, jr_0b5_6873                             ; $683b: $38 $36

    rst $18                                       ; $683d: $df
    ld [hl], a                                    ; $683e: $77
    nop                                           ; $683f: $00

jr_0b5_6840:
    jr nz, @+$03                                  ; $6840: $20 $01

    jr nz, jr_0b5_67f2                            ; $6842: $20 $ae

    ld e, c                                       ; $6844: $59
    sub h                                         ; $6845: $94
    ld l, d                                       ; $6846: $6a
    add hl, sp                                    ; $6847: $39
    ld a, a                                       ; $6848: $7f
    ld h, h                                       ; $6849: $64
    jr nc, jr_0b5_6839                            ; $684a: $30 $ed

    ld l, $ef                                     ; $684c: $2e $ef
    ld e, l                                       ; $684e: $5d
    ld h, l                                       ; $684f: $65
    ld de, $00a0                                  ; $6850: $11 $a0 $00
    rst $00                                       ; $6853: $c7
    dec d                                         ; $6854: $15
    ld b, h                                       ; $6855: $44
    dec c                                         ; $6856: $0d
    ld c, d                                       ; $6857: $4a
    ld [hl+], a                                   ; $6858: $22
    ld h, b                                       ; $6859: $60
    nop                                           ; $685a: $00
    ld h, h                                       ; $685b: $64
    dec c                                         ; $685c: $0d
    rst $20                                       ; $685d: $e7
    add hl, de                                    ; $685e: $19
    pop bc                                        ; $685f: $c1
    inc b                                         ; $6860: $04
    adc e                                         ; $6861: $8b
    inc b                                         ; $6862: $04
    jr nc, jr_0b5_687e                            ; $6863: $30 $19

    ld [hl], e                                    ; $6865: $73
    ld hl, $10cb                                  ; $6866: $21 $cb $10
    ld l, d                                       ; $6869: $6a
    nop                                           ; $686a: $00
    jr nc, jr_0b5_6886                            ; $686b: $30 $19

    sub e                                         ; $686d: $93
    dec h                                         ; $686e: $25
    xor e                                         ; $686f: $ab
    ld [$0000], sp                                ; $6870: $08 $00 $00

jr_0b5_6873:
    rst $38                                       ; $6873: $ff
    ld a, a                                       ; $6874: $7f
    xor h                                         ; $6875: $ac
    ld [$2000], sp                                ; $6876: $08 $00 $20
    nop                                           ; $6879: $00
    jr nz, @+$6d                                  ; $687a: $20 $6b

    ld c, l                                       ; $687c: $4d
    rst $10                                       ; $687d: $d7

jr_0b5_687e:
    halt                                          ; $687e: $76
    ld h, h                                       ; $687f: $64
    inc l                                         ; $6880: $2c
    inc bc                                        ; $6881: $03
    add hl, bc                                    ; $6882: $09
    ld c, $2f                                     ; $6883: $0e $2f
    ld [hl-], a                                   ; $6885: $32

jr_0b5_6886:
    ld h, d                                       ; $6886: $62

jr_0b5_6887:
    add l                                         ; $6887: $85
    inc [hl]                                      ; $6888: $34
    ld h, b                                       ; $6889: $60
    nop                                           ; $688a: $00
    ld c, a                                       ; $688b: $4f
    scf                                           ; $688c: $37
    inc hl                                        ; $688d: $23
    add hl, bc                                    ; $688e: $09
    and [hl]                                      ; $688f: $a6
    dec d                                         ; $6890: $15
    ld h, b                                       ; $6891: $60
    nop                                           ; $6892: $00
    inc bc                                        ; $6893: $03
    add hl, bc                                    ; $6894: $09
    and c                                         ; $6895: $a1
    inc b                                         ; $6896: $04
    inc hl                                        ; $6897: $23
    dec c                                         ; $6898: $0d
    ld [bc], a                                    ; $6899: $02
    inc e                                         ; $689a: $1c
    ld l, d                                       ; $689b: $6a
    nop                                           ; $689c: $00
    and d                                         ; $689d: $a2
    inc b                                         ; $689e: $04
    ld c, [hl]                                    ; $689f: $4e
    jr z, jr_0b5_690c                             ; $68a0: $28 $6a

    nop                                           ; $68a2: $00
    ld c, [hl]                                    ; $68a3: $4e
    inc h                                         ; $68a4: $24
    ld [hl], l                                    ; $68a5: $75
    ld e, $4d                                     ; $68a6: $1e $4d
    dec c                                         ; $68a8: $0d
    nop                                           ; $68a9: $00
    nop                                           ; $68aa: $00
    rst $38                                       ; $68ab: $ff
    dec sp                                        ; $68ac: $3b
    nop                                           ; $68ad: $00
    jr nz, @+$01                                  ; $68ae: $20 $ff

    ld a, a                                       ; $68b0: $7f

jr_0b5_68b1:
    nop                                           ; $68b1: $00
    jr nz, jr_0b5_6840                            ; $68b2: $20 $8c

    ld d, l                                       ; $68b4: $55
    jr jr_0b5_6932                                ; $68b5: $18 $7b

    add sp, $38                                   ; $68b7: $e8 $38
    inc h                                         ; $68b9: $24
    dec c                                         ; $68ba: $0d

jr_0b5_68bb:
    ld l, $33                                     ; $68bb: $2e $33
    ld h, h                                       ; $68bd: $64

jr_0b5_68be:
    jr nc, jr_0b5_6913                            ; $68be: $30 $53

jr_0b5_68c0:
    ld h, [hl]                                    ; $68c0: $66
    ld h, l                                       ; $68c1: $65
    ld de, $268b                                  ; $68c2: $11 $8b $26
    ld c, a                                       ; $68c5: $4f
    scf                                           ; $68c6: $37
    xor $2e                                       ; $68c7: $ee $2e
    ld h, b                                       ; $68c9: $60
    nop                                           ; $68ca: $00
    call $852a                                    ; $68cb: $cd $2a $85
    ld de, $6653                                  ; $68ce: $11 $53 $66
    ld [hl+], a                                   ; $68d1: $22
    inc e                                         ; $68d2: $1c
    rst $28                                       ; $68d3: $ef
    ld d, l                                       ; $68d4: $55
    dec hl                                        ; $68d5: $2b
    inc h                                         ; $68d6: $24
    add hl, sp                                    ; $68d7: $39
    ld a, a                                       ; $68d8: $7f
    ld c, l                                       ; $68d9: $4d
    jr z, @-$27                                   ; $68da: $28 $d7

    ld h, $0d                                     ; $68dc: $26 $0d
    ld de, $339f                                  ; $68de: $11 $9f $33
    nop                                           ; $68e1: $00
    nop                                           ; $68e2: $00
    rst $38                                       ; $68e3: $ff
    ld a, a                                       ; $68e4: $7f
    nop                                           ; $68e5: $00
    jr nz, jr_0b5_6887                            ; $68e6: $20 $9f

    inc sp                                        ; $68e8: $33
    nop                                           ; $68e9: $00
    jr nz, jr_0b5_68bb                            ; $68ea: $20 $cf

jr_0b5_68ec:
    ld e, l                                       ; $68ec: $5d
    ld c, e                                       ; $68ed: $4b
    ld b, l                                       ; $68ee: $45
    jr jr_0b5_696c                                ; $68ef: $18 $7b

    ld b, e                                       ; $68f1: $43
    jr z, jr_0b5_68c0                             ; $68f2: $28 $cc

    ld a, [hl+]                                   ; $68f4: $2a
    rst $28                                       ; $68f5: $ef
    ld e, c                                       ; $68f6: $59
    ld b, h                                       ; $68f7: $44
    dec c                                         ; $68f8: $0d

jr_0b5_68f9:
    cpl                                           ; $68f9: $2f
    scf                                           ; $68fa: $37
    ld [hl], b                                    ; $68fb: $70
    scf                                           ; $68fc: $37
    ld [hl], b                                    ; $68fd: $70
    dec sp                                        ; $68fe: $3b
    ld d, b                                       ; $68ff: $50

jr_0b5_6900:
    scf                                           ; $6900: $37
    ld [c], a                                     ; $6901: $e2
    ld [$556b], sp                                ; $6902: $08 $6b $55
    jr jr_0b5_6972                                ; $6905: $18 $6b

    xor h                                         ; $6907: $ac
    ld a, [hl+]                                   ; $6908: $2a
    inc hl                                        ; $6909: $23
    inc e                                         ; $690a: $1c
    sbc h                                         ; $690b: $9c

jr_0b5_690c:
    ld [hl], a                                    ; $690c: $77
    adc l                                         ; $690d: $8d
    ld c, l                                       ; $690e: $4d
    dec hl                                        ; $690f: $2b
    inc h                                         ; $6910: $24
    nop                                           ; $6911: $00
    nop                                           ; $6912: $00

jr_0b5_6913:
    ld [hl], l                                    ; $6913: $75
    ld e, $4c                                     ; $6914: $1e $4c
    jr nz, @-$60                                  ; $6916: $20 $9e

    scf                                           ; $6918: $37
    nop                                           ; $6919: $00
    nop                                           ; $691a: $00
    rst $38                                       ; $691b: $ff
    ld a, a                                       ; $691c: $7f
    nop                                           ; $691d: $00
    jr nz, jr_0b5_68be                            ; $691e: $20 $9e

    scf                                           ; $6920: $37
    nop                                           ; $6921: $00
    jr nz, jr_0b5_68b1                            ; $6922: $20 $8d

    ld c, l                                       ; $6924: $4d
    add hl, sp                                    ; $6925: $39
    ld a, e                                       ; $6926: $7b
    ld b, e                                       ; $6927: $43
    jr z, jr_0b5_68ec                             ; $6928: $28 $c2

    db $10                                        ; $692a: $10
    ld l, e                                       ; $692b: $6b
    ld d, c                                       ; $692c: $51
    sub l                                         ; $692d: $95
    ld l, [hl]                                    ; $692e: $6e
    ld l, d                                       ; $692f: $6a
    ld h, $43                                     ; $6930: $26 $43

jr_0b5_6932:
    jr z, jr_0b5_6900                             ; $6932: $28 $cc

    ld a, [hl+]                                   ; $6934: $2a
    ld [hl], b                                    ; $6935: $70
    scf                                           ; $6936: $37
    ld h, l                                       ; $6937: $65
    ld de, $0080                                  ; $6938: $11 $80 $00
    and l                                         ; $693b: $a5
    ld b, b                                       ; $693c: $40
    adc $59                                       ; $693d: $ce $59
    ld [bc], a                                    ; $693f: $02
    add hl, bc                                    ; $6940: $09
    ld a, [bc]                                    ; $6941: $0a
    jr nz, jr_0b5_68f9                            ; $6942: $20 $b5

    ld h, [hl]                                    ; $6944: $66
    ld c, e                                       ; $6945: $4b
    ld c, c                                       ; $6946: $49
    cp l                                          ; $6947: $bd
    ld l, a                                       ; $6948: $6f
    nop                                           ; $6949: $00
    nop                                           ; $694a: $00
    inc a                                         ; $694b: $3c
    cpl                                           ; $694c: $2f
    ld c, h                                       ; $694d: $4c
    jr nz, @+$01                                  ; $694e: $20 $ff

    ld a, a                                       ; $6950: $7f
    nop                                           ; $6951: $00
    nop                                           ; $6952: $00
    rst $38                                       ; $6953: $ff
    ld a, a                                       ; $6954: $7f
    nop                                           ; $6955: $00
    jr nz, @+$01                                  ; $6956: $20 $ff

    ld a, a                                       ; $6958: $7f
    nop                                           ; $6959: $00
    nop                                           ; $695a: $00
    nop                                           ; $695b: $00
    jr nz, jr_0b5_69a1                            ; $695c: $20 $43

    jr z, @+$67                                   ; $695e: $28 $65

    ld de, $1061                                  ; $6960: $11 $61 $10
    adc l                                         ; $6963: $8d
    ld e, c                                       ; $6964: $59
    add sp, $48                                   ; $6965: $e8 $48
    sub $76                                       ; $6967: $d6 $76
    ld b, e                                       ; $6969: $43
    jr z, @+$31                                   ; $696a: $28 $2f

jr_0b5_696c:
    inc sp                                        ; $696c: $33
    add hl, sp                                    ; $696d: $39
    ld a, a                                       ; $696e: $7f
    add [hl]                                      ; $696f: $86
    add hl, de                                    ; $6970: $19
    ld h, b                                       ; $6971: $60

jr_0b5_6972:
    nop                                           ; $6972: $00
    add [hl]                                      ; $6973: $86
    ld de, $3864                                  ; $6974: $11 $64 $38
    ld [hl], b                                    ; $6977: $70
    scf                                           ; $6978: $37
    dec b                                         ; $6979: $05
    jr nz, jr_0b5_698c                            ; $697a: $20 $10

    ld e, [hl]                                    ; $697c: $5e
    rst $20                                       ; $697d: $e7
    ld c, b                                       ; $697e: $48
    add hl, sp                                    ; $697f: $39
    ld l, a                                       ; $6980: $6f
    nop                                           ; $6981: $00
    nop                                           ; $6982: $00
    dec a                                         ; $6983: $3d
    cpl                                           ; $6984: $2f
    rst $38                                       ; $6985: $ff
    ld a, a                                       ; $6986: $7f
    ld c, e                                       ; $6987: $4b
    inc e                                         ; $6988: $1c
    nop                                           ; $6989: $00
    nop                                           ; $698a: $00
    nop                                           ; $698b: $00

jr_0b5_698c:
    jr nz, @+$01                                  ; $698c: $20 $ff

    ld a, a                                       ; $698e: $7f
    ld c, e                                       ; $698f: $4b
    inc e                                         ; $6990: $1c
    nop                                           ; $6991: $00
    nop                                           ; $6992: $00
    nop                                           ; $6993: $00
    jr nz, jr_0b5_69cf                            ; $6994: $20 $39

    ld a, a                                       ; $6996: $7f
    add [hl]                                      ; $6997: $86
    add hl, de                                    ; $6998: $19
    ld b, e                                       ; $6999: $43
    jr z, jr_0b5_698c                             ; $699a: $28 $f0

    ld e, c                                       ; $699c: $59
    jr jr_0b5_6a16                                ; $699d: $18 $77

    add $40                                       ; $699f: $c6 $40

jr_0b5_69a1:
    ld b, e                                       ; $69a1: $43
    jr z, jr_0b5_69b3                             ; $69a2: $28 $0f

    dec sp                                        ; $69a4: $3b
    add hl, sp                                    ; $69a5: $39
    ld a, a                                       ; $69a6: $7f
    adc d                                         ; $69a7: $8a
    add hl, sp                                    ; $69a8: $39
    add b                                         ; $69a9: $80
    nop                                           ; $69aa: $00
    ld c, a                                       ; $69ab: $4f
    scf                                           ; $69ac: $37
    add l                                         ; $69ad: $85
    ld de, $57f8                                  ; $69ae: $11 $f8 $57
    jr nz, jr_0b5_69bf                            ; $69b1: $20 $0c

jr_0b5_69b3:
    rst $08                                       ; $69b3: $cf
    ld e, l                                       ; $69b4: $5d
    ld b, [hl]                                    ; $69b5: $46
    jr nc, jr_0b5_69d0                            ; $69b6: $30 $18

    ld [hl], a                                    ; $69b8: $77
    nop                                           ; $69b9: $00
    nop                                           ; $69ba: $00
    inc a                                         ; $69bb: $3c
    dec hl                                        ; $69bc: $2b
    rst $38                                       ; $69bd: $ff
    ld a, a                                       ; $69be: $7f

jr_0b5_69bf:
    ld c, e                                       ; $69bf: $4b
    inc e                                         ; $69c0: $1c
    nop                                           ; $69c1: $00
    nop                                           ; $69c2: $00
    nop                                           ; $69c3: $00
    jr nz, @+$01                                  ; $69c4: $20 $ff

    ld a, a                                       ; $69c6: $7f
    ld c, e                                       ; $69c7: $4b
    inc e                                         ; $69c8: $1c
    nop                                           ; $69c9: $00
    nop                                           ; $69ca: $00
    nop                                           ; $69cb: $00
    jr nz, jr_0b5_6a07                            ; $69cc: $20 $39

    ld a, a                                       ; $69ce: $7f

jr_0b5_69cf:
    adc d                                         ; $69cf: $8a

jr_0b5_69d0:
    add hl, sp                                    ; $69d0: $39
    ld bc, $ce18                                  ; $69d1: $01 $18 $ce
    ld h, c                                       ; $69d4: $61
    ld a, e                                       ; $69d5: $7b
    ld a, a                                       ; $69d6: $7f
    rst $00                                       ; $69d7: $c7
    ld b, h                                       ; $69d8: $44
    ld b, d                                       ; $69d9: $42
    jr nz, jr_0b5_6a2b                            ; $69da: $20 $4f

    scf                                           ; $69dc: $37
    and [hl]                                      ; $69dd: $a6
    dec d                                         ; $69de: $15
    ld d, d                                       ; $69df: $52
    ld h, d                                       ; $69e0: $62
    and b                                         ; $69e1: $a0
    nop                                           ; $69e2: $00
    ld c, a                                       ; $69e3: $4f
    scf                                           ; $69e4: $37
    rst $20                                       ; $69e5: $e7
    add hl, de                                    ; $69e6: $19
    ld hl, sp+$57                                 ; $69e7: $f8 $57
    inc hl                                        ; $69e9: $23
    inc d                                         ; $69ea: $14
    ldh a, [$5d]                                  ; $69eb: $f0 $5d
    ld [$f745], sp                                ; $69ed: $08 $45 $f7
    ld a, d                                       ; $69f0: $7a
    nop                                           ; $69f1: $00
    nop                                           ; $69f2: $00
    ld a, [hl]                                    ; $69f3: $7e
    inc sp                                        ; $69f4: $33
    rst $38                                       ; $69f5: $ff
    ld a, a                                       ; $69f6: $7f
    adc e                                         ; $69f7: $8b
    jr jr_0b5_69fa                                ; $69f8: $18 $00

jr_0b5_69fa:
    jr nz, jr_0b5_6a7a                            ; $69fa: $20 $7e

    inc sp                                        ; $69fc: $33
    rst $38                                       ; $69fd: $ff
    ld a, a                                       ; $69fe: $7f
    adc e                                         ; $69ff: $8b
    jr jr_0b5_6a02                                ; $6a00: $18 $00

jr_0b5_6a02:
    jr nz, jr_0b5_6a53                            ; $6a02: $20 $4f

    scf                                           ; $6a04: $37
    and [hl]                                      ; $6a05: $a6
    dec d                                         ; $6a06: $15

jr_0b5_6a07:
    ld d, d                                       ; $6a07: $52
    ld h, d                                       ; $6a08: $62
    ld bc, $ef10                                  ; $6a09: $01 $10 $ef
    ld h, l                                       ; $6a0c: $65
    sbc h                                         ; $6a0d: $9c
    ld a, a                                       ; $6a0e: $7f
    add sp, $44                                   ; $6a0f: $e8 $44
    and d                                         ; $6a11: $a2
    inc d                                         ; $6a12: $14
    ld c, a                                       ; $6a13: $4f
    inc sp                                        ; $6a14: $33
    ld c, c                                       ; $6a15: $49

jr_0b5_6a16:
    ld [hl+], a                                   ; $6a16: $22
    or [hl]                                       ; $6a17: $b6
    ld [hl], d                                    ; $6a18: $72
    and b                                         ; $6a19: $a0
    nop                                           ; $6a1a: $00
    sbc e                                         ; $6a1b: $9b
    ld b, e                                       ; $6a1c: $43
    and l                                         ; $6a1d: $a5
    dec d                                         ; $6a1e: $15
    ld c, l                                       ; $6a1f: $4d
    dec c                                         ; $6a20: $0d
    jr nz, jr_0b5_6a2b                            ; $6a21: $20 $08

    ld sp, hl                                     ; $6a23: $f9
    ld a, [hl+]                                   ; $6a24: $2a
    ld b, [hl]                                    ; $6a25: $46
    jr nz, jr_0b5_6a40                            ; $6a26: $20 $18

    ld a, e                                       ; $6a28: $7b
    nop                                           ; $6a29: $00
    inc b                                         ; $6a2a: $04

jr_0b5_6a2b:
    dec a                                         ; $6a2b: $3d
    cpl                                           ; $6a2c: $2f
    rst $38                                       ; $6a2d: $ff
    ld a, a                                       ; $6a2e: $7f
    inc c                                         ; $6a2f: $0c
    ld de, $2000                                  ; $6a30: $11 $00 $20
    dec a                                         ; $6a33: $3d
    cpl                                           ; $6a34: $2f
    rst $38                                       ; $6a35: $ff
    ld a, a                                       ; $6a36: $7f
    inc c                                         ; $6a37: $0c
    ld de, $2000                                  ; $6a38: $11 $00 $20
    ld c, a                                       ; $6a3b: $4f
    inc sp                                        ; $6a3c: $33
    ld c, c                                       ; $6a3d: $49
    ld [hl+], a                                   ; $6a3e: $22
    or [hl]                                       ; $6a3f: $b6

jr_0b5_6a40:
    ld [hl], d                                    ; $6a40: $72
    nop                                           ; $6a41: $00
    ld [$5dae], sp                                ; $6a42: $08 $ae $5d
    add hl, sp                                    ; $6a45: $39
    ld a, a                                       ; $6a46: $7f
    rst $38                                       ; $6a47: $ff
    ld a, a                                       ; $6a48: $7f
    pop bc                                        ; $6a49: $c1
    inc b                                         ; $6a4a: $04
    jr jr_0b5_6ac8                                ; $6a4b: $18 $7b

    ld [hl+], a                                   ; $6a4d: $22

jr_0b5_6a4e:
    inc h                                         ; $6a4e: $24
    add $50                                       ; $6a4f: $c6 $50
    ld h, b                                       ; $6a51: $60
    nop                                           ; $6a52: $00

jr_0b5_6a53:
    ld a, $2f                                     ; $6a53: $3e $2f
    ld l, d                                       ; $6a55: $6a
    dec c                                         ; $6a56: $0d
    add a                                         ; $6a57: $87
    nop                                           ; $6a58: $00
    ld c, l                                       ; $6a59: $4d
    dec c                                         ; $6a5a: $0d
    halt                                          ; $6a5b: $76
    ld [hl+], a                                   ; $6a5c: $22
    ld a, $2f                                     ; $6a5d: $3e $2f
    cp a                                          ; $6a5f: $bf
    scf                                           ; $6a60: $37
    nop                                           ; $6a61: $00
    ld [$2b1d], sp                                ; $6a62: $08 $1d $2b
    rst $38                                       ; $6a65: $ff
    ld a, a                                       ; $6a66: $7f
    rst $38                                       ; $6a67: $ff
    dec sp                                        ; $6a68: $3b
    nop                                           ; $6a69: $00
    jr nz, jr_0b5_6a89                            ; $6a6a: $20 $1d

    dec hl                                        ; $6a6c: $2b
    rst $38                                       ; $6a6d: $ff
    ld a, a                                       ; $6a6e: $7f
    rst $38                                       ; $6a6f: $ff
    dec sp                                        ; $6a70: $3b
    nop                                           ; $6a71: $00
    jr nz, jr_0b5_6a8c                            ; $6a72: $20 $18

    ld a, e                                       ; $6a74: $7b
    ld [hl+], a                                   ; $6a75: $22

jr_0b5_6a76:
    inc h                                         ; $6a76: $24
    add $50                                       ; $6a77: $c6 $50
    nop                                           ; $6a79: $00

jr_0b5_6a7a:
    nop                                           ; $6a7a: $00
    ld sp, $ff62                                  ; $6a7b: $31 $62 $ff

jr_0b5_6a7e:
    ld a, a                                       ; $6a7e: $7f
    nop                                           ; $6a7f: $00
    jr nz, jr_0b5_6a82                            ; $6a80: $20 $00

jr_0b5_6a82:
    nop                                           ; $6a82: $00
    add hl, sp                                    ; $6a83: $39
    ld a, a                                       ; $6a84: $7f
    ld b, e                                       ; $6a85: $43

jr_0b5_6a86:
    jr z, jr_0b5_6a4e                             ; $6a86: $28 $c6

    ld d, b                                       ; $6a88: $50

jr_0b5_6a89:
    nop                                           ; $6a89: $00
    nop                                           ; $6a8a: $00
    rst $38                                       ; $6a8b: $ff

jr_0b5_6a8c:
    ld a, a                                       ; $6a8c: $7f
    rst $38                                       ; $6a8d: $ff
    ld a, a                                       ; $6a8e: $7f
    rst $38                                       ; $6a8f: $ff
    dec sp                                        ; $6a90: $3b
    nop                                           ; $6a91: $00
    nop                                           ; $6a92: $00
    rst $38                                       ; $6a93: $ff
    ld a, a                                       ; $6a94: $7f
    rst $38                                       ; $6a95: $ff
    ld a, a                                       ; $6a96: $7f
    rst $38                                       ; $6a97: $ff
    dec sp                                        ; $6a98: $3b
    nop                                           ; $6a99: $00
    nop                                           ; $6a9a: $00
    rst $38                                       ; $6a9b: $ff
    ld a, a                                       ; $6a9c: $7f
    nop                                           ; $6a9d: $00
    jr nz, @+$01                                  ; $6a9e: $20 $ff

    dec sp                                        ; $6aa0: $3b
    nop                                           ; $6aa1: $00
    jr nz, @+$01                                  ; $6aa2: $20 $ff

    ld a, a                                       ; $6aa4: $7f
    nop                                           ; $6aa5: $00
    jr nz, @+$01                                  ; $6aa6: $20 $ff

    dec sp                                        ; $6aa8: $3b
    nop                                           ; $6aa9: $00
    jr nz, @+$3b                                  ; $6aaa: $20 $39

    ld a, a                                       ; $6aac: $7f
    ld b, e                                       ; $6aad: $43
    jr z, jr_0b5_6a76                             ; $6aae: $28 $c6

    ld d, b                                       ; $6ab0: $50
    nop                                           ; $6ab1: $00
    nop                                           ; $6ab2: $00
    rst $38                                       ; $6ab3: $ff
    ld a, a                                       ; $6ab4: $7f

jr_0b5_6ab5:
    nop                                           ; $6ab5: $00
    jr nz, jr_0b5_6a7e                            ; $6ab6: $20 $c6

    ld d, b                                       ; $6ab8: $50
    nop                                           ; $6ab9: $00
    nop                                           ; $6aba: $00
    rst $38                                       ; $6abb: $ff
    ld a, a                                       ; $6abc: $7f

jr_0b5_6abd:
    nop                                           ; $6abd: $00
    jr nz, jr_0b5_6a86                            ; $6abe: $20 $c6

    ld d, b                                       ; $6ac0: $50
    nop                                           ; $6ac1: $00
    nop                                           ; $6ac2: $00
    nop                                           ; $6ac3: $00
    jr nz, jr_0b5_6ac6                            ; $6ac4: $20 $00

jr_0b5_6ac6:
    jr nz, @+$01                                  ; $6ac6: $20 $ff

jr_0b5_6ac8:
    dec sp                                        ; $6ac8: $3b
    nop                                           ; $6ac9: $00
    nop                                           ; $6aca: $00
    nop                                           ; $6acb: $00
    jr nz, jr_0b5_6ace                            ; $6acc: $20 $00

jr_0b5_6ace:
    jr nz, @+$01                                  ; $6ace: $20 $ff

    dec sp                                        ; $6ad0: $3b
    nop                                           ; $6ad1: $00
    nop                                           ; $6ad2: $00
    nop                                           ; $6ad3: $00
    jr nz, jr_0b5_6ad6                            ; $6ad4: $20 $00

jr_0b5_6ad6:
    jr nz, @+$01                                  ; $6ad6: $20 $ff

    dec sp                                        ; $6ad8: $3b
    nop                                           ; $6ad9: $00
    jr nz, jr_0b5_6adc                            ; $6ada: $20 $00

jr_0b5_6adc:
    jr nz, jr_0b5_6ade                            ; $6adc: $20 $00

jr_0b5_6ade:
    jr nz, @+$01                                  ; $6ade: $20 $ff

    dec sp                                        ; $6ae0: $3b
    nop                                           ; $6ae1: $00
    jr nz, jr_0b5_6ae4                            ; $6ae2: $20 $00

jr_0b5_6ae4:
    jr nz, jr_0b5_6afe                            ; $6ae4: $20 $18

    ld [hl], a                                    ; $6ae6: $77
    ld c, b                                       ; $6ae7: $48
    ld b, l                                       ; $6ae8: $45
    nop                                           ; $6ae9: $00
    jr nz, jr_0b5_6aec                            ; $6aea: $20 $00

jr_0b5_6aec:
    jr nz, jr_0b5_6b06                            ; $6aec: $20 $18

    ld [hl], a                                    ; $6aee: $77
    ld c, b                                       ; $6aef: $48
    ld b, l                                       ; $6af0: $45
    nop                                           ; $6af1: $00
    jr nz, jr_0b5_6af4                            ; $6af2: $20 $00

jr_0b5_6af4:
    jr nz, jr_0b5_6b0e                            ; $6af4: $20 $18

    ld [hl], a                                    ; $6af6: $77
    ld c, b                                       ; $6af7: $48
    ld b, l                                       ; $6af8: $45
    nop                                           ; $6af9: $00
    nop                                           ; $6afa: $00
    or c                                          ; $6afb: $b1
    jr jr_0b5_6afe                                ; $6afc: $18 $00

jr_0b5_6afe:
    jr nz, jr_0b5_6b78                            ; $6afe: $20 $78

    inc c                                         ; $6b00: $0c
    nop                                           ; $6b01: $00
    jr nz, jr_0b5_6ab5                            ; $6b02: $20 $b1

    jr jr_0b5_6b06                                ; $6b04: $18 $00

jr_0b5_6b06:
    jr nz, jr_0b5_6b80                            ; $6b06: $20 $78

    inc c                                         ; $6b08: $0c
    nop                                           ; $6b09: $00
    jr nz, jr_0b5_6abd                            ; $6b0a: $20 $b1

    jr jr_0b5_6b0e                                ; $6b0c: $18 $00

jr_0b5_6b0e:
    jr nz, jr_0b5_6b88                            ; $6b0e: $20 $78

    inc c                                         ; $6b10: $0c
    nop                                           ; $6b11: $00
    jr nz, @-$4d                                  ; $6b12: $20 $b1

    jr jr_0b5_6b16                                ; $6b14: $18 $00

jr_0b5_6b16:
    jr nz, @+$7a                                  ; $6b16: $20 $78

    inc c                                         ; $6b18: $0c
    nop                                           ; $6b19: $00
    jr nz, jr_0b5_6b1c                            ; $6b1a: $20 $00

jr_0b5_6b1c:
    jr nz, @+$1a                                  ; $6b1c: $20 $18

    ld [hl], a                                    ; $6b1e: $77
    ld c, b                                       ; $6b1f: $48
    ld b, l                                       ; $6b20: $45
    nop                                           ; $6b21: $00
    jr nz, jr_0b5_6b24                            ; $6b22: $20 $00

jr_0b5_6b24:
    jr nz, jr_0b5_6b3e                            ; $6b24: $20 $18

    ld [hl], a                                    ; $6b26: $77
    ld c, b                                       ; $6b27: $48
    ld b, l                                       ; $6b28: $45
    nop                                           ; $6b29: $00
    jr nz, jr_0b5_6b2c                            ; $6b2a: $20 $00

jr_0b5_6b2c:
    jr nz, jr_0b5_6b46                            ; $6b2c: $20 $18

    ld [hl], a                                    ; $6b2e: $77
    ld c, b                                       ; $6b2f: $48
    ld b, l                                       ; $6b30: $45
    dec b                                         ; $6b31: $05
    nop                                           ; $6b32: $00
    ld a, h                                       ; $6b33: $7c
    ld [$671f], sp                                ; $6b34: $08 $1f $67
    ld a, e                                       ; $6b37: $7b
    dec l                                         ; $6b38: $2d
    nop                                           ; $6b39: $00
    nop                                           ; $6b3a: $00
    nop                                           ; $6b3b: $00
    jr nz, jr_0b5_6ba4                            ; $6b3c: $20 $66

jr_0b5_6b3e:
    stop                                          ; $6b3e: $10 $00
    ld [$2000], sp                                ; $6b40: $08 $00 $20
    nop                                           ; $6b43: $00
    jr nz, jr_0b5_6bac                            ; $6b44: $20 $66

jr_0b5_6b46:
    stop                                          ; $6b46: $10 $00
    ld [$2000], sp                                ; $6b48: $08 $00 $20
    nop                                           ; $6b4b: $00
    jr nz, jr_0b5_6bb4                            ; $6b4c: $20 $66

    stop                                          ; $6b4e: $10 $00
    ld [$2000], sp                                ; $6b50: $08 $00 $20
    nop                                           ; $6b53: $00
    jr nz, jr_0b5_6b6e                            ; $6b54: $20 $18

    ld [hl], a                                    ; $6b56: $77
    ld c, b                                       ; $6b57: $48
    ld b, l                                       ; $6b58: $45
    nop                                           ; $6b59: $00
    jr nz, jr_0b5_6b5c                            ; $6b5a: $20 $00

jr_0b5_6b5c:
    jr nz, jr_0b5_6b76                            ; $6b5c: $20 $18

    ld [hl], a                                    ; $6b5e: $77
    ld c, b                                       ; $6b5f: $48
    ld b, l                                       ; $6b60: $45
    nop                                           ; $6b61: $00
    nop                                           ; $6b62: $00
    nop                                           ; $6b63: $00
    jr nz, jr_0b5_6b66                            ; $6b64: $20 $00

jr_0b5_6b66:
    ld [$4548], sp                                ; $6b66: $08 $48 $45
    ld bc, $7100                                  ; $6b69: $01 $00 $71
    inc c                                         ; $6b6c: $0c

jr_0b5_6b6d:
    ld l, d                                       ; $6b6d: $6a

jr_0b5_6b6e:
    inc c                                         ; $6b6e: $0c
    ei                                            ; $6b6f: $fb
    inc e                                         ; $6b70: $1c
    nop                                           ; $6b71: $00
    nop                                           ; $6b72: $00
    sbc e                                         ; $6b73: $9b
    db $10                                        ; $6b74: $10
    ld a, a                                       ; $6b75: $7f

jr_0b5_6b76:
    ld d, d                                       ; $6b76: $52
    ret z                                         ; $6b77: $c8

jr_0b5_6b78:
    ld [$0000], sp                                ; $6b78: $08 $00 $00
    nop                                           ; $6b7b: $00
    jr nz, jr_0b5_6bfd                            ; $6b7c: $20 $7f

    ld d, d                                       ; $6b7e: $52
    ret z                                         ; $6b7f: $c8

jr_0b5_6b80:
    ld [$2000], sp                                ; $6b80: $08 $00 $20
    nop                                           ; $6b83: $00
    jr nz, jr_0b5_6c05                            ; $6b84: $20 $7f

    ld d, d                                       ; $6b86: $52
    ret z                                         ; $6b87: $c8

jr_0b5_6b88:
    ld [$2000], sp                                ; $6b88: $08 $00 $20
    nop                                           ; $6b8b: $00
    jr nz, jr_0b5_6b8e                            ; $6b8c: $20 $00

jr_0b5_6b8e:
    ld [$4548], sp                                ; $6b8e: $08 $48 $45
    nop                                           ; $6b91: $00
    nop                                           ; $6b92: $00
    rst $18                                       ; $6b93: $df
    jr jr_0b5_6b96                                ; $6b94: $18 $00

jr_0b5_6b96:
    jr nz, jr_0b5_6bdb                            ; $6b96: $20 $43

    inc b                                         ; $6b98: $04
    ld b, e                                       ; $6b99: $43
    inc b                                         ; $6b9a: $04
    or l                                          ; $6b9b: $b5
    add hl, de                                    ; $6b9c: $19
    ld d, b                                       ; $6b9d: $50
    ld [$527f], sp                                ; $6b9e: $08 $7f $52
    rlca                                          ; $6ba1: $07
    nop                                           ; $6ba2: $00
    push de                                       ; $6ba3: $d5

jr_0b5_6ba4:
    jr jr_0b5_6bf5                                ; $6ba4: $18 $4f

    ld [$1cfe], sp                                ; $6ba6: $08 $fe $1c
    ld bc, $3500                                  ; $6ba9: $01 $00 $35

jr_0b5_6bac:
    ld [$527f], sp                                ; $6bac: $08 $7f $52
    jr nc, jr_0b5_6bc2                            ; $6baf: $30 $11

    nop                                           ; $6bb1: $00
    nop                                           ; $6bb2: $00
    or c                                          ; $6bb3: $b1

jr_0b5_6bb4:
    add hl, de                                    ; $6bb4: $19
    nop                                           ; $6bb5: $00
    jr nz, jr_0b5_6c0e                            ; $6bb6: $20 $56

    ld [hl+], a                                   ; $6bb8: $22
    nop                                           ; $6bb9: $00
    jr nz, jr_0b5_6b6d                            ; $6bba: $20 $b1

    add hl, de                                    ; $6bbc: $19
    nop                                           ; $6bbd: $00
    jr nz, @+$58                                  ; $6bbe: $20 $56

    ld [hl+], a                                   ; $6bc0: $22
    nop                                           ; $6bc1: $00

jr_0b5_6bc2:
    nop                                           ; $6bc2: $00
    nop                                           ; $6bc3: $00
    jr nz, @+$52                                  ; $6bc4: $20 $50

    ld [$527f], sp                                ; $6bc6: $08 $7f $52
    nop                                           ; $6bc9: $00
    inc b                                         ; $6bca: $04
    ld l, [hl]                                    ; $6bcb: $6e
    ld de, $369d                                  ; $6bcc: $11 $9d $36
    ld e, b                                       ; $6bcf: $58
    inc c                                         ; $6bd0: $0c
    nop                                           ; $6bd1: $00
    nop                                           ; $6bd2: $00
    adc e                                         ; $6bd3: $8b
    ld [$0cd2], sp                                ; $6bd4: $08 $d2 $0c
    rlca                                          ; $6bd7: $07
    nop                                           ; $6bd8: $00
    ld [bc], a                                    ; $6bd9: $02
    nop                                           ; $6bda: $00

jr_0b5_6bdb:
    sbc d                                         ; $6bdb: $9a
    db $10                                        ; $6bdc: $10
    cp [hl]                                       ; $6bdd: $be
    dec [hl]                                      ; $6bde: $35
    ld l, $04                                     ; $6bdf: $2e $04
    inc hl                                        ; $6be1: $23
    inc b                                         ; $6be2: $04
    jr nc, jr_0b5_6bfa                            ; $6be3: $30 $15

    rra                                           ; $6be5: $1f
    ld h, a                                       ; $6be6: $67
    or l                                          ; $6be7: $b5
    add hl, de                                    ; $6be8: $19
    ld bc, $f004                                  ; $6be9: $01 $04 $f0
    db $10                                        ; $6bec: $10
    rst $18                                       ; $6bed: $df
    jr @+$81                                      ; $6bee: $18 $7f

    ld d, d                                       ; $6bf0: $52
    nop                                           ; $6bf1: $00
    jr nz, @-$0e                                  ; $6bf2: $20 $f0

    db $10                                        ; $6bf4: $10

jr_0b5_6bf5:
    rst $18                                       ; $6bf5: $df
    jr jr_0b5_6c77                                ; $6bf6: $18 $7f

    ld d, d                                       ; $6bf8: $52
    nop                                           ; $6bf9: $00

jr_0b5_6bfa:
    nop                                           ; $6bfa: $00
    or d                                          ; $6bfb: $b2
    add hl, de                                    ; $6bfc: $19

jr_0b5_6bfd:
    nop                                           ; $6bfd: $00
    jr nz, @-$37                                  ; $6bfe: $20 $c7

    ld [$0000], sp                                ; $6c00: $08 $00 $00
    ld [hl], h                                    ; $6c03: $74
    add hl, de                                    ; $6c04: $19

jr_0b5_6c05:
    adc e                                         ; $6c05: $8b
    inc b                                         ; $6c06: $04
    sbc l                                         ; $6c07: $9d
    ld a, [hl-]                                   ; $6c08: $3a
    nop                                           ; $6c09: $00
    nop                                           ; $6c0a: $00
    ld d, e                                       ; $6c0b: $53
    inc c                                         ; $6c0c: $0c
    ld l, e                                       ; $6c0d: $6b

jr_0b5_6c0e:
    inc b                                         ; $6c0e: $04
    ld d, c                                       ; $6c0f: $51
    ld de, $0003                                  ; $6c10: $11 $03 $00
    inc sp                                        ; $6c13: $33
    ld [$14bc], sp                                ; $6c14: $08 $bc $14
    dec a                                         ; $6c17: $3d
    dec h                                         ; $6c18: $25
    nop                                           ; $6c19: $00
    nop                                           ; $6c1a: $00
    cp a                                          ; $6c1b: $bf
    ld e, d                                       ; $6c1c: $5a
    adc $0c                                       ; $6c1d: $ce $0c
    ld [hl], e                                    ; $6c1f: $73
    dec d                                         ; $6c20: $15
    nop                                           ; $6c21: $00
    nop                                           ; $6c22: $00
    ld d, b                                       ; $6c23: $50
    ld de, $1dd6                                  ; $6c24: $11 $d6 $1d
    ld c, c                                       ; $6c27: $49
    inc b                                         ; $6c28: $04
    nop                                           ; $6c29: $00
    nop                                           ; $6c2a: $00
    sbc d                                         ; $6c2b: $9a
    ld h, $00                                     ; $6c2c: $26 $00
    jr nz, jr_0b5_6c79                            ; $6c2e: $20 $49

    inc b                                         ; $6c30: $04
    nop                                           ; $6c31: $00
    nop                                           ; $6c32: $00
    cp b                                          ; $6c33: $b8
    inc d                                         ; $6c34: $14
    ld a, a                                       ; $6c35: $7f
    ld d, d                                       ; $6c36: $52
    nop                                           ; $6c37: $00
    jr nz, jr_0b5_6c3a                            ; $6c38: $20 $00

jr_0b5_6c3a:
    nop                                           ; $6c3a: $00
    adc h                                         ; $6c3b: $8c
    ld [$1130], sp                                ; $6c3c: $08 $30 $11
    ld c, c                                       ; $6c3f: $49
    inc b                                         ; $6c40: $04
    nop                                           ; $6c41: $00
    nop                                           ; $6c42: $00
    ld [hl], a                                    ; $6c43: $77
    ld c, $a6                                     ; $6c44: $0e $a6
    nop                                           ; $6c46: $00
    jr z, jr_0b5_6c49                             ; $6c47: $28 $00

jr_0b5_6c49:
    nop                                           ; $6c49: $00
    nop                                           ; $6c4a: $00
    cp a                                          ; $6c4b: $bf
    dec [hl]                                      ; $6c4c: $35
    ld a, l                                       ; $6c4d: $7d
    inc hl                                        ; $6c4e: $23
    ld e, b                                       ; $6c4f: $58
    inc d                                         ; $6c50: $14
    nop                                           ; $6c51: $00
    nop                                           ; $6c52: $00
    sub e                                         ; $6c53: $93
    ld de, $3f1f                                  ; $6c54: $11 $1f $3f
    xor c                                         ; $6c57: $a9
    inc b                                         ; $6c58: $04
    nop                                           ; $6c59: $00
    nop                                           ; $6c5a: $00
    db $10                                        ; $6c5b: $10
    ld de, $046a                                  ; $6c5c: $11 $6a $04
    or l                                          ; $6c5f: $b5
    add hl, de                                    ; $6c60: $19
    ld bc, $5800                                  ; $6c61: $01 $00 $58
    inc c                                         ; $6c64: $0c
    ld a, a                                       ; $6c65: $7f
    ld d, d                                       ; $6c66: $52
    nop                                           ; $6c67: $00
    inc e                                         ; $6c68: $1c
    nop                                           ; $6c69: $00
    nop                                           ; $6c6a: $00
    db $f4                                        ; $6c6b: $f4
    dec e                                         ; $6c6c: $1d
    nop                                           ; $6c6d: $00
    jr nz, jr_0b5_6c87                            ; $6c6e: $20 $17

    ld [hl+], a                                   ; $6c70: $22
    nop                                           ; $6c71: $00
    nop                                           ; $6c72: $00
    sbc a                                         ; $6c73: $9f
    dec [hl]                                      ; $6c74: $35
    ld l, c                                       ; $6c75: $69
    inc b                                         ; $6c76: $04

jr_0b5_6c77:
    rst $08                                       ; $6c77: $cf
    inc c                                         ; $6c78: $0c

jr_0b5_6c79:
    ld bc, $5800                                  ; $6c79: $01 $00 $58
    ld b, $fe                                     ; $6c7c: $06 $fe
    ld d, $47                                     ; $6c7e: $16 $47
    nop                                           ; $6c80: $00
    nop                                           ; $6c81: $00
    nop                                           ; $6c82: $00
    ld d, $02                                     ; $6c83: $16 $02
    ld a, [hl]                                    ; $6c85: $7e
    rla                                           ; $6c86: $17

jr_0b5_6c87:
    inc l                                         ; $6c87: $2c
    ld bc, $0000                                  ; $6c88: $01 $00 $00
    call nc, $9b0d                                ; $6c8b: $d4 $0d $9b
    ld a, [bc]                                    ; $6c8e: $0a
    ld a, a                                       ; $6c8f: $7f
    inc hl                                        ; $6c90: $23
    ld bc, $3700                                  ; $6c91: $01 $00 $37
    ld [hl+], a                                   ; $6c94: $22
    ld l, d                                       ; $6c95: $6a
    inc b                                         ; $6c96: $04
    rst $18                                       ; $6c97: $df
    jr jr_0b5_6c9a                                ; $6c98: $18 $00

jr_0b5_6c9a:
    nop                                           ; $6c9a: $00
    jp nc, $f719                                  ; $6c9b: $d2 $19 $f7

    ld l, d                                       ; $6c9e: $6a
    nop                                           ; $6c9f: $00
    jr nz, jr_0b5_6ca2                            ; $6ca0: $20 $00

jr_0b5_6ca2:
    jr nz, @-$19                                  ; $6ca2: $20 $e5

    inc a                                         ; $6ca4: $3c
    adc e                                         ; $6ca5: $8b
    ld c, c                                       ; $6ca6: $49
    daa                                           ; $6ca7: $27
    ld b, c                                       ; $6ca8: $41
    ld [hl+], a                                   ; $6ca9: $22
    nop                                           ; $6caa: $00
    dec l                                         ; $6cab: $2d
    ld de, $5e72                                  ; $6cac: $11 $72 $5e
    sub e                                         ; $6caf: $93
    dec d                                         ; $6cb0: $15
    nop                                           ; $6cb1: $00
    nop                                           ; $6cb2: $00
    ld l, [hl]                                    ; $6cb3: $6e
    ld bc, $0469                                  ; $6cb4: $01 $69 $04
    db $d3                                        ; $6cb7: $d3
    ld bc, $0000                                  ; $6cb8: $01 $00 $00
    ld sp, $fd1d                                  ; $6cbb: $31 $1d $fd
    ld d, d                                       ; $6cbe: $52
    ld d, [hl]                                    ; $6cbf: $56
    ld [bc], a                                    ; $6cc0: $02
    nop                                           ; $6cc1: $00
    nop                                           ; $6cc2: $00
    adc $10                                       ; $6cc3: $ce $10
    ld [hl], l                                    ; $6cc5: $75
    add hl, de                                    ; $6cc6: $19
    inc d                                         ; $6cc7: $14
    ld [bc], a                                    ; $6cc8: $02

jr_0b5_6cc9:
    inc bc                                        ; $6cc9: $03
    nop                                           ; $6cca: $00
    pop de                                        ; $6ccb: $d1
    inc c                                         ; $6ccc: $0c
    ld a, a                                       ; $6ccd: $7f
    ld d, d                                       ; $6cce: $52
    di                                            ; $6ccf: $f3
    add hl, de                                    ; $6cd0: $19
    nop                                           ; $6cd1: $00
    jr nz, jr_0b5_6d1d                            ; $6cd2: $20 $49

    ld c, c                                       ; $6cd4: $49
    ld [hl], d                                    ; $6cd5: $72
    ld e, [hl]                                    ; $6cd6: $5e
    dec b                                         ; $6cd7: $05
    dec a                                         ; $6cd8: $3d
    nop                                           ; $6cd9: $00
    jr jr_0b5_6cc9                                ; $6cda: $18 $ed

    ld d, l                                       ; $6cdc: $55
    daa                                           ; $6cdd: $27
    ld b, c                                       ; $6cde: $41
    sub h                                         ; $6cdf: $94
    ld l, [hl]                                    ; $6ce0: $6e
    nop                                           ; $6ce1: $00
    nop                                           ; $6ce2: $00
    ld l, a                                       ; $6ce3: $6f
    ld b, b                                       ; $6ce4: $40
    ld d, $11                                     ; $6ce5: $16 $11
    ld a, a                                       ; $6ce7: $7f
    ld d, d                                       ; $6ce8: $52
    ld bc, $fd00                                  ; $6ce9: $01 $00 $fd
    ld d, d                                       ; $6cec: $52
    xor $0c                                       ; $6ced: $ee $0c
    ld l, b                                       ; $6cef: $68
    inc b                                         ; $6cf0: $04
    nop                                           ; $6cf1: $00
    nop                                           ; $6cf2: $00
    sbc [hl]                                      ; $6cf3: $9e
    dec e                                         ; $6cf4: $1d
    inc e                                         ; $6cf5: $1c
    ld e, a                                       ; $6cf6: $5f
    ld l, c                                       ; $6cf7: $69
    ld [$0001], sp                                ; $6cf8: $08 $01 $00
    jp c, $ff1d                                   ; $6cfb: $da $1d $ff

    ld a, a                                       ; $6cfe: $7f
    xor d                                         ; $6cff: $aa
    inc c                                         ; $6d00: $0c
    ld [bc], a                                    ; $6d01: $02
    nop                                           ; $6d02: $00
    ld l, a                                       ; $6d03: $6f
    ld b, b                                       ; $6d04: $40
    or h                                          ; $6d05: $b4
    add hl, de                                    ; $6d06: $19
    rst $18                                       ; $6d07: $df
    jr jr_0b5_6d0a                                ; $6d08: $18 $00

jr_0b5_6d0a:
    nop                                           ; $6d0a: $00
    add hl, hl                                    ; $6d0b: $29
    ld b, l                                       ; $6d0c: $45
    ld sp, $0062                                  ; $6d0d: $31 $62 $00
    jr nz, jr_0b5_6d12                            ; $6d10: $20 $00

jr_0b5_6d12:
    ld [$6a31], sp                                ; $6d12: $08 $31 $6a
    xor [hl]                                      ; $6d15: $ae
    ld b, h                                       ; $6d16: $44
    ld e, e                                       ; $6d17: $5b
    ld [hl], a                                    ; $6d18: $77
    ld [hl+], a                                   ; $6d19: $22
    nop                                           ; $6d1a: $00
    ld [hl], b                                    ; $6d1b: $70
    ld b, h                                       ; $6d1c: $44

jr_0b5_6d1d:
    ld e, b                                       ; $6d1d: $58
    add hl, de                                    ; $6d1e: $19
    rst $38                                       ; $6d1f: $ff
    ld l, $00                                     ; $6d20: $2e $00
    nop                                           ; $6d22: $00
    db $fd                                        ; $6d23: $fd
    ld d, d                                       ; $6d24: $52
    adc e                                         ; $6d25: $8b
    ld [$0006], sp                                ; $6d26: $08 $06 $00
    add l                                         ; $6d29: $85
    inc c                                         ; $6d2a: $0c
    sbc [hl]                                      ; $6d2b: $9e
    dec e                                         ; $6d2c: $1d
    db $fc                                        ; $6d2d: $fc
    ld d, d                                       ; $6d2e: $52
    rst $38                                       ; $6d2f: $ff
    ld a, a                                       ; $6d30: $7f
    ld hl, $9604                                  ; $6d31: $21 $04 $96
    dec e                                         ; $6d34: $1d
    dec a                                         ; $6d35: $3d
    ld e, a                                       ; $6d36: $5f
    ld l, e                                       ; $6d37: $6b
    inc b                                         ; $6d38: $04
    nop                                           ; $6d39: $00
    nop                                           ; $6d3a: $00
    ld [de], a                                    ; $6d3b: $12
    ld de, $4490                                  ; $6d3c: $11 $90 $44
    ld a, a                                       ; $6d3f: $7f
    ld d, d                                       ; $6d40: $52
    nop                                           ; $6d41: $00
    inc e                                         ; $6d42: $1c
    sub b                                         ; $6d43: $90
    ld b, h                                       ; $6d44: $44
    ld e, d                                       ; $6d45: $5a
    ld a, e                                       ; $6d46: $7b
    adc $5d                                       ; $6d47: $ce $5d
    nop                                           ; $6d49: $00
    nop                                           ; $6d4a: $00
    sub h                                         ; $6d4b: $94
    ld l, [hl]                                    ; $6d4c: $6e
    sub b                                         ; $6d4d: $90
    ld b, h                                       ; $6d4e: $44
    cp l                                          ; $6d4f: $bd
    ld a, e                                       ; $6d50: $7b
    ld bc, $9000                                  ; $6d51: $01 $00 $90
    ld b, h                                       ; $6d54: $44
    ld a, a                                       ; $6d55: $7f
    ld d, d                                       ; $6d56: $52
    dec [hl]                                      ; $6d57: $35
    ld [$0000], sp                                ; $6d58: $08 $00 $00
    dec d                                         ; $6d5b: $15
    ld de, $0469                                  ; $6d5c: $11 $69 $04
    sbc l                                         ; $6d5f: $9d
    dec e                                         ; $6d60: $1d
    nop                                           ; $6d61: $00
    nop                                           ; $6d62: $00
    db $fd                                        ; $6d63: $fd
    ld d, d                                       ; $6d64: $52
    ld d, d                                       ; $6d65: $52
    add hl, de                                    ; $6d66: $19
    ld c, d                                       ; $6d67: $4a
    nop                                           ; $6d68: $00
    dec h                                         ; $6d69: $25
    nop                                           ; $6d6a: $00
    dec e                                         ; $6d6b: $1d
    add hl, de                                    ; $6d6c: $19
    ld e, [hl]                                    ; $6d6d: $5e
    ld e, a                                       ; $6d6e: $5f
    rst $08                                       ; $6d6f: $cf
    inc c                                         ; $6d70: $0c
    nop                                           ; $6d71: $00
    nop                                           ; $6d72: $00
    or c                                          ; $6d73: $b1
    ld b, h                                       ; $6d74: $44
    db $d3                                        ; $6d75: $d3
    dec e                                         ; $6d76: $1d
    ret z                                         ; $6d77: $c8

    inc c                                         ; $6d78: $0c
    nop                                           ; $6d79: $00
    nop                                           ; $6d7a: $00
    or b                                          ; $6d7b: $b0
    ld b, h                                       ; $6d7c: $44
    sub h                                         ; $6d7d: $94
    ld l, [hl]                                    ; $6d7e: $6e
    nop                                           ; $6d7f: $00
    jr nz, jr_0b5_6d82                            ; $6d80: $20 $00

jr_0b5_6d82:
    ld [$48b1], sp                                ; $6d82: $08 $b1 $48
    db $10                                        ; $6d85: $10
    ld h, [hl]                                    ; $6d86: $66
    jr jr_0b5_6e00                                ; $6d87: $18 $77

    nop                                           ; $6d89: $00
    nop                                           ; $6d8a: $00
    pop de                                        ; $6d8b: $d1
    db $10                                        ; $6d8c: $10
    or c                                          ; $6d8d: $b1
    ld c, b                                       ; $6d8e: $48
    ld b, h                                       ; $6d8f: $44
    inc b                                         ; $6d90: $04
    nop                                           ; $6d91: $00
    nop                                           ; $6d92: $00
    ld [hl], $15                                  ; $6d93: $36 $15
    adc e                                         ; $6d95: $8b
    ld [$1d7c], sp                                ; $6d96: $08 $7c $1d
    ld b, [hl]                                    ; $6d99: $46
    nop                                           ; $6d9a: $00
    db $fd                                        ; $6d9b: $fd
    ld d, d                                       ; $6d9c: $52
    xor $10                                       ; $6d9d: $ee $10
    ld d, e                                       ; $6d9f: $53
    dec e                                         ; $6da0: $1d
    ld bc, $5900                                  ; $6da1: $01 $00 $59
    dec d                                         ; $6da4: $15
    ld a, a                                       ; $6da5: $7f
    ld d, d                                       ; $6da6: $52
    adc e                                         ; $6da7: $8b
    ld [$0000], sp                                ; $6da8: $08 $00 $00
    pop de                                        ; $6dab: $d1
    ld c, b                                       ; $6dac: $48
    jp nc, $8b48                                  ; $6dad: $d2 $48 $8b

    ld [$1c00], sp                                ; $6db0: $08 $00 $1c
    push hl                                       ; $6db3: $e5
    inc a                                         ; $6db4: $3c
    pop de                                        ; $6db5: $d1
    ld c, b                                       ; $6db6: $48
    adc $59                                       ; $6db7: $ce $59
    nop                                           ; $6db9: $00
    db $10                                        ; $6dba: $10
    ld l, c                                       ; $6dbb: $69
    ld c, c                                       ; $6dbc: $49
    rst $30                                       ; $6dbd: $f7
    ld [hl], d                                    ; $6dbe: $72
    jp nc, LCDCInterrupt                          ; $6dbf: $d2 $48 $00

    nop                                           ; $6dc2: $00
    jp nc, Jump_000_1348                          ; $6dc3: $d2 $48 $13

    dec d                                         ; $6dc6: $15
    dec h                                         ; $6dc7: $25
    inc b                                         ; $6dc8: $04
    ld bc, $3400                                  ; $6dc9: $01 $00 $34
    dec d                                         ; $6dcc: $15
    sbc l                                         ; $6dcd: $9d
    dec e                                         ; $6dce: $1d
    adc c                                         ; $6dcf: $89
    ld [$0001], sp                                ; $6dd0: $08 $01 $00
    dec [hl]                                      ; $6dd3: $35
    dec d                                         ; $6dd4: $15
    ld l, d                                       ; $6dd5: $6a
    inc b                                         ; $6dd6: $04
    ld a, h                                       ; $6dd7: $7c
    dec e                                         ; $6dd8: $1d
    ld bc, $ed00                                  ; $6dd9: $01 $00 $ed
    inc c                                         ; $6ddc: $0c
    ld a, h                                       ; $6ddd: $7c
    dec e                                         ; $6dde: $1d
    ld [hl], $15                                  ; $6ddf: $36 $15
    ld a, [c]                                     ; $6de1: $f2
    ld c, b                                       ; $6de2: $48
    ld a, [c]                                     ; $6de3: $f2
    ld c, h                                       ; $6de4: $4c
    ld a, h                                       ; $6de5: $7c
    dec e                                         ; $6de6: $1d
    ld [hl], $15                                  ; $6de7: $36 $15
    nop                                           ; $6de9: $00
    inc e                                         ; $6dea: $1c
    ld h, $3d                                     ; $6deb: $26 $3d
    cpl                                           ; $6ded: $2f
    ld d, [hl]                                    ; $6dee: $56
    ld a, [c]                                     ; $6def: $f2
    ld c, b                                       ; $6df0: $48
    ld bc, $4800                                  ; $6df1: $01 $00 $48
    ld b, l                                       ; $6df4: $45
    ld d, c                                       ; $6df5: $51
    ld d, c                                       ; $6df6: $51
    nop                                           ; $6df7: $00
    jr nz, jr_0b5_6dfa                            ; $6df8: $20 $00

jr_0b5_6dfa:
    nop                                           ; $6dfa: $00
    halt                                          ; $6dfb: $76
    ld [de], a                                    ; $6dfc: $12
    xor $08                                       ; $6dfd: $ee $08
    ld e, [hl]                                    ; $6dff: $5e

jr_0b5_6e00:
    daa                                           ; $6e00: $27
    inc b                                         ; $6e01: $04
    nop                                           ; $6e02: $00
    inc [hl]                                      ; $6e03: $34
    dec d                                         ; $6e04: $15
    xor h                                         ; $6e05: $ac
    ld [$1d9f], sp                                ; $6e06: $08 $9f $1d
    ld [hl+], a                                   ; $6e09: $22
    nop                                           ; $6e0a: $00
    ld d, l                                       ; $6e0b: $55
    dec d                                         ; $6e0c: $15
    xor h                                         ; $6e0d: $ac
    ld [$1d7d], sp                                ; $6e0e: $08 $7d $1d
    nop                                           ; $6e11: $00
    nop                                           ; $6e12: $00
    ld a, d                                       ; $6e13: $7a
    add hl, de                                    ; $6e14: $19
    adc e                                         ; $6e15: $8b
    ld [$21be], sp                                ; $6e16: $08 $be $21
    nop                                           ; $6e19: $00
    nop                                           ; $6e1a: $00
    inc d                                         ; $6e1b: $14
    ld b, c                                       ; $6e1c: $41
    sbc $73                                       ; $6e1d: $de $73
    ld b, $1d                                     ; $6e1f: $06 $1d
    nop                                           ; $6e21: $00
    inc e                                         ; $6e22: $1c
    db $ed                                        ; $6e23: $ed
    ld d, c                                       ; $6e24: $51
    ld e, d                                       ; $6e25: $5a
    ld [hl], e                                    ; $6e26: $73
    inc de                                        ; $6e27: $13
    ld c, l                                       ; $6e28: $4d
    nop                                           ; $6e29: $00
    inc c                                         ; $6e2a: $0c
    halt                                          ; $6e2b: $76
    ld c, $ae                                     ; $6e2c: $0e $ae
    ld hl, $57ff                                  ; $6e2e: $21 $ff $57
    inc hl                                        ; $6e31: $23
    inc b                                         ; $6e32: $04
    ld a, c                                       ; $6e33: $79
    ld [hl-], a                                   ; $6e34: $32
    rst $38                                       ; $6e35: $ff
    ld d, a                                       ; $6e36: $57
    rst $38                                       ; $6e37: $ff
    ld a, a                                       ; $6e38: $7f
    nop                                           ; $6e39: $00
    nop                                           ; $6e3a: $00
    inc d                                         ; $6e3b: $14
    ld de, $0489                                  ; $6e3c: $11 $89 $04
    rst $18                                       ; $6e3f: $df
    dec h                                         ; $6e40: $25

jr_0b5_6e41:
    ld bc, $3500                                  ; $6e41: $01 $00 $35
    dec d                                         ; $6e44: $15
    ld l, d                                       ; $6e45: $6a
    inc b                                         ; $6e46: $04
    sbc a                                         ; $6e47: $9f
    dec e                                         ; $6e48: $1d
    nop                                           ; $6e49: $00
    nop                                           ; $6e4a: $00
    ld de, $8a11                                  ; $6e4b: $11 $11 $8a
    inc b                                         ; $6e4e: $04
    ld a, e                                       ; $6e4f: $7b
    add hl, de                                    ; $6e50: $19
    ld [hl+], a                                   ; $6e51: $22
    nop                                           ; $6e52: $00
    dec d                                         ; $6e53: $15
    ld [hl], $9f                                  ; $6e54: $36 $9f
    ccf                                           ; $6e56: $3f
    rst $38                                       ; $6e57: $ff
    ld a, e                                       ; $6e58: $7b
    nop                                           ; $6e59: $00
    nop                                           ; $6e5a: $00
    pop de                                        ; $6e5b: $d1
    ld d, l                                       ; $6e5c: $55
    ld e, c                                       ; $6e5d: $59
    ld l, a                                       ; $6e5e: $6f
    nop                                           ; $6e5f: $00
    jr nz, jr_0b5_6e62                            ; $6e60: $20 $00

jr_0b5_6e62:
    ld [$37df], sp                                ; $6e62: $08 $df $37
    rst $38                                       ; $6e65: $ff
    ld a, e                                       ; $6e66: $7b
    rst $18                                       ; $6e67: $df
    ld c, a                                       ; $6e68: $4f
    nop                                           ; $6e69: $00
    nop                                           ; $6e6a: $00
    add hl, sp                                    ; $6e6b: $39
    ld [hl-], a                                   ; $6e6c: $32
    sbc [hl]                                      ; $6e6d: $9e
    rra                                           ; $6e6e: $1f
    sbc a                                         ; $6e6f: $9f
    ld b, a                                       ; $6e70: $47
    ld bc, $fa00                                  ; $6e71: $01 $00 $fa
    ld hl, $0471                                  ; $6e74: $21 $71 $04
    ld e, a                                       ; $6e77: $5f
    ld l, e                                       ; $6e78: $6b
    nop                                           ; $6e79: $00
    nop                                           ; $6e7a: $00
    ld de, $7c11                                  ; $6e7b: $11 $11 $7c
    dec e                                         ; $6e7e: $1d
    ld b, a                                       ; $6e7f: $47
    nop                                           ; $6e80: $00
    nop                                           ; $6e81: $00
    nop                                           ; $6e82: $00
    inc [hl]                                      ; $6e83: $34
    dec d                                         ; $6e84: $15
    xor l                                         ; $6e85: $ad
    ld [$21bf], sp                                ; $6e86: $08 $bf $21
    ld bc, $7600                                  ; $6e89: $01 $00 $76
    dec h                                         ; $6e8c: $25
    ld e, h                                       ; $6e8d: $5c
    dec de                                        ; $6e8e: $1b
    ld d, l                                       ; $6e8f: $55
    ld [de], a                                    ; $6e90: $12
    nop                                           ; $6e91: $00
    nop                                           ; $6e92: $00
    or h                                          ; $6e93: $b4
    ld h, d                                       ; $6e94: $62
    rst $38                                       ; $6e95: $ff
    ld a, e                                       ; $6e96: $7b
    nop                                           ; $6e97: $00
    jr nz, jr_0b5_6e41                            ; $6e98: $20 $a7

    nop                                           ; $6e9a: $00
    ld a, l                                       ; $6e9b: $7d
    inc hl                                        ; $6e9c: $23
    rst $38                                       ; $6e9d: $ff
    ld [hl], a                                    ; $6e9e: $77
    rst $28                                       ; $6e9f: $ef
    dec l                                         ; $6ea0: $2d
    ld bc, $7600                                  ; $6ea1: $01 $00 $76
    ld [de], a                                    ; $6ea4: $12
    db $ed                                        ; $6ea5: $ed
    ld [$1f9d], sp                                ; $6ea6: $08 $9d $1f
    nop                                           ; $6ea9: $00
    nop                                           ; $6eaa: $00
    rst $18                                       ; $6eab: $df
    ld a, e                                       ; $6eac: $7b
    or $18                                        ; $6ead: $f6 $18
    ld c, b                                       ; $6eaf: $48
    inc b                                         ; $6eb0: $04
    nop                                           ; $6eb1: $00
    nop                                           ; $6eb2: $00
    jr z, jr_0b5_6ede                             ; $6eb3: $28 $29

    dec [hl]                                      ; $6eb5: $35
    inc b                                         ; $6eb6: $04
    adc e                                         ; $6eb7: $8b
    stop                                          ; $6eb8: $10 $00
    nop                                           ; $6eba: $00
    add hl, sp                                    ; $6ebb: $39
    dec h                                         ; $6ebc: $25
    ld c, d                                       ; $6ebd: $4a
    nop                                           ; $6ebe: $00
    ld [hl+], a                                   ; $6ebf: $22
    nop                                           ; $6ec0: $00
    nop                                           ; $6ec1: $00
    nop                                           ; $6ec2: $00
    jr c, jr_0b5_6eeb                             ; $6ec3: $38 $26

    xor e                                         ; $6ec5: $ab
    ld [$7fff], sp                                ; $6ec6: $08 $ff $7f
    nop                                           ; $6ec9: $00
    inc e                                         ; $6eca: $1c
    or h                                          ; $6ecb: $b4
    ld h, d                                       ; $6ecc: $62
    rst $38                                       ; $6ecd: $ff
    daa                                           ; $6ece: $27

jr_0b5_6ecf:
    cp l                                          ; $6ecf: $bd
    ld [hl], a                                    ; $6ed0: $77
    nop                                           ; $6ed1: $00
    nop                                           ; $6ed2: $00
    db $ed                                        ; $6ed3: $ed
    ld d, c                                       ; $6ed4: $51
    ld e, c                                       ; $6ed5: $59
    ld l, a                                       ; $6ed6: $6f
    nop                                           ; $6ed7: $00
    jr nz, jr_0b5_6eda                            ; $6ed8: $20 $00

jr_0b5_6eda:
    nop                                           ; $6eda: $00
    ld sp, $080e                                  ; $6edb: $31 $0e $08

jr_0b5_6ede:
    nop                                           ; $6ede: $00
    rst $00                                       ; $6edf: $c7
    inc b                                         ; $6ee0: $04
    nop                                           ; $6ee1: $00
    nop                                           ; $6ee2: $00
    ld de, $7a11                                  ; $6ee3: $11 $11 $7a

jr_0b5_6ee6:
    add hl, de                                    ; $6ee6: $19
    ld l, c                                       ; $6ee7: $69
    nop                                           ; $6ee8: $00
    nop                                           ; $6ee9: $00
    nop                                           ; $6eea: $00

jr_0b5_6eeb:
    sbc l                                         ; $6eeb: $9d
    ld d, d                                       ; $6eec: $52
    ld c, [hl]                                    ; $6eed: $4e
    ld [$043f], sp                                ; $6eee: $08 $3f $04
    ld b, $00                                     ; $6ef1: $06 $00
    ld a, [hl-]                                   ; $6ef3: $3a
    add hl, hl                                    ; $6ef4: $29
    dec sp                                        ; $6ef5: $3b
    inc b                                         ; $6ef6: $04
    rra                                           ; $6ef7: $1f
    ld h, e                                       ; $6ef8: $63
    nop                                           ; $6ef9: $00
    nop                                           ; $6efa: $00
    jr jr_0b5_6f12                                ; $6efb: $18 $15

    sbc c                                         ; $6efd: $99
    ld d, [hl]                                    ; $6efe: $56
    ld [$0004], sp                                ; $6eff: $08 $04 $00
    nop                                           ; $6f02: $00
    rla                                           ; $6f03: $17
    ld l, e                                       ; $6f04: $6b
    nop                                           ; $6f05: $00
    jr nz, jr_0b5_6ee6                            ; $6f06: $20 $de

    ld a, a                                       ; $6f08: $7f
    nop                                           ; $6f09: $00
    inc e                                         ; $6f0a: $1c
    xor h                                         ; $6f0b: $ac
    ld c, l                                       ; $6f0c: $4d
    or h                                          ; $6f0d: $b4
    ld h, d                                       ; $6f0e: $62
    sbc e                                         ; $6f0f: $9b
    ld [hl], a                                    ; $6f10: $77
    nop                                           ; $6f11: $00

jr_0b5_6f12:
    nop                                           ; $6f12: $00
    ld [hl], b                                    ; $6f13: $70
    inc c                                         ; $6f14: $0c
    daa                                           ; $6f15: $27
    inc b                                         ; $6f16: $04
    add hl, bc                                    ; $6f17: $09
    inc b                                         ; $6f18: $04
    ld bc, $3800                                  ; $6f19: $01 $00 $38
    add hl, de                                    ; $6f1c: $19
    adc d                                         ; $6f1d: $8a
    inc b                                         ; $6f1e: $04
    cp a                                          ; $6f1f: $bf
    ld hl, $0000                                  ; $6f20: $21 $00 $00
    ldh a, [rNR10]                                ; $6f23: $f0 $10
    cp l                                          ; $6f25: $bd
    ld hl, $0069                                  ; $6f26: $21 $69 $00
    nop                                           ; $6f29: $00
    nop                                           ; $6f2a: $00
    rst $28                                       ; $6f2b: $ef
    inc d                                         ; $6f2c: $14
    ld a, h                                       ; $6f2d: $7c
    dec e                                         ; $6f2e: $1d
    ld a, [hl+]                                   ; $6f2f: $2a
    nop                                           ; $6f30: $00
    nop                                           ; $6f31: $00
    nop                                           ; $6f32: $00
    adc l                                         ; $6f33: $8d
    ld [$1958], sp                                ; $6f34: $08 $58 $19
    ret nc                                        ; $6f37: $d0

    stop                                          ; $6f38: $10 $00
    jr nz, jr_0b5_6ecf                            ; $6f3a: $20 $93

    ld e, [hl]                                    ; $6f3c: $5e
    db $dd                                        ; $6f3d: $dd
    ld a, e                                       ; $6f3e: $7b
    jr jr_0b5_6fac                                ; $6f3f: $18 $6b

    nop                                           ; $6f41: $00
    jr nz, jr_0b5_6ecf                            ; $6f42: $20 $8b

    ld c, c                                       ; $6f44: $49
    push de                                       ; $6f45: $d5
    ld h, [hl]                                    ; $6f46: $66
    cpl                                           ; $6f47: $2f

Jump_0b5_6f48:
    ld d, [hl]                                    ; $6f48: $56
    nop                                           ; $6f49: $00
    nop                                           ; $6f4a: $00
    ld [hl], b                                    ; $6f4b: $70
    inc c                                         ; $6f4c: $0c
    halt                                          ; $6f4d: $76
    inc c                                         ; $6f4e: $0c
    rlca                                          ; $6f4f: $07
    nop                                           ; $6f50: $00
    nop                                           ; $6f51: $00
    nop                                           ; $6f52: $00
    ld d, h                                       ; $6f53: $54
    ld [de], a                                    ; $6f54: $12
    sbc e                                         ; $6f55: $9b
    ld d, a                                       ; $6f56: $57
    ld [$0004], a                                 ; $6f57: $ea $04 $00
    nop                                           ; $6f5a: $00
    dec [hl]                                      ; $6f5b: $35
    add hl, de                                    ; $6f5c: $19
    ld l, d                                       ; $6f5d: $6a
    inc b                                         ; $6f5e: $04
    ld e, h                                       ; $6f5f: $5c
    add hl, de                                    ; $6f60: $19
    nop                                           ; $6f61: $00
    nop                                           ; $6f62: $00
    rst $08                                       ; $6f63: $cf
    db $10                                        ; $6f64: $10
    ld d, a                                       ; $6f65: $57
    add hl, de                                    ; $6f66: $19
    ld l, b                                       ; $6f67: $68
    inc b                                         ; $6f68: $04
    nop                                           ; $6f69: $00
    nop                                           ; $6f6a: $00
    ld [hl], $15                                  ; $6f6b: $36 $15
    sbc $7f                                       ; $6f6d: $de $7f
    xor d                                         ; $6f6f: $aa
    ld [$2000], sp                                ; $6f70: $08 $00 $20
    ld d, c                                       ; $6f73: $51
    ld e, d                                       ; $6f74: $5a
    rst $30                                       ; $6f75: $f7
    ld l, d                                       ; $6f76: $6a
    sbc h                                         ; $6f77: $9c
    ld [hl], a                                    ; $6f78: $77
    nop                                           ; $6f79: $00
    jr nz, jr_0b5_6fc4                            ; $6f7a: $20 $48

    ld b, c                                       ; $6f7c: $41
    cpl                                           ; $6f7d: $2f
    ld d, [hl]                                    ; $6f7e: $56
    adc e                                         ; $6f7f: $8b
    ld c, c                                       ; $6f80: $49
    nop                                           ; $6f81: $00
    nop                                           ; $6f82: $00
    ld [hl], b                                    ; $6f83: $70
    inc c                                         ; $6f84: $0c
    or h                                          ; $6f85: $b4
    ld h, d                                       ; $6f86: $62
    sub a                                         ; $6f87: $97
    db $10                                        ; $6f88: $10
    ld [bc], a                                    ; $6f89: $02
    nop                                           ; $6f8a: $00
    ld a, e                                       ; $6f8b: $7b
    daa                                           ; $6f8c: $27
    cp h                                          ; $6f8d: $bc
    ld [hl], e                                    ; $6f8e: $73
    ld l, [hl]                                    ; $6f8f: $6e
    ld bc, $0000                                  ; $6f90: $01 $00 $00
    or b                                          ; $6f93: $b0
    ld [$1d7c], sp                                ; $6f94: $08 $7c $1d
    ld c, c                                       ; $6f97: $49
    nop                                           ; $6f98: $00

jr_0b5_6f99:
    nop                                           ; $6f99: $00
    nop                                           ; $6f9a: $00
    pop de                                        ; $6f9b: $d1
    inc c                                         ; $6f9c: $0c
    ld c, b                                       ; $6f9d: $48
    nop                                           ; $6f9e: $00
    ld d, l                                       ; $6f9f: $55
    add hl, de                                    ; $6fa0: $19
    nop                                           ; $6fa1: $00
    nop                                           ; $6fa2: $00
    call nc, $bd52                                ; $6fa3: $d4 $52 $bd
    ld l, a                                       ; $6fa6: $6f
    ret z                                         ; $6fa7: $c8

    nop                                           ; $6fa8: $00
    nop                                           ; $6fa9: $00
    jr nz, jr_0b5_6f99                            ; $6faa: $20 $ed

jr_0b5_6fac:
    ld d, c                                       ; $6fac: $51
    ld [hl], d                                    ; $6fad: $72
    ld e, [hl]                                    ; $6fae: $5e
    cpl                                           ; $6faf: $2f
    ld d, [hl]                                    ; $6fb0: $56
    nop                                           ; $6fb1: $00
    jr nz, @+$08                                  ; $6fb2: $20 $06

    ld b, c                                       ; $6fb4: $41
    ld h, $41                                     ; $6fb5: $26 $41
    ld l, [hl]                                    ; $6fb7: $6e
    ld bc, $0001                                  ; $6fb8: $01 $01 $00
    adc d                                         ; $6fbb: $8a
    ld c, c                                       ; $6fbc: $49
    ld [hl], b                                    ; $6fbd: $70
    inc c                                         ; $6fbe: $0c
    sub a                                         ; $6fbf: $97
    stop                                          ; $6fc0: $10 $00
    nop                                           ; $6fc2: $00
    ld [hl-], a                                   ; $6fc3: $32

jr_0b5_6fc4:
    dec d                                         ; $6fc4: $15
    ld a, [hl]                                    ; $6fc5: $7e
    dec e                                         ; $6fc6: $1d
    dec de                                        ; $6fc7: $1b
    rla                                           ; $6fc8: $17

jr_0b5_6fc9:
    nop                                           ; $6fc9: $00
    nop                                           ; $6fca: $00
    sbc h                                         ; $6fcb: $9c
    dec hl                                        ; $6fcc: $2b
    rst $38                                       ; $6fcd: $ff
    ld a, a                                       ; $6fce: $7f
    ld l, h                                       ; $6fcf: $6c
    add hl, bc                                    ; $6fd0: $09
    nop                                           ; $6fd1: $00
    nop                                           ; $6fd2: $00
    sub [hl]                                      ; $6fd3: $96
    ld [de], a                                    ; $6fd4: $12
    cp l                                          ; $6fd5: $bd
    ld h, a                                       ; $6fd6: $67
    ld c, h                                       ; $6fd7: $4c
    dec b                                         ; $6fd8: $05
    nop                                           ; $6fd9: $00

jr_0b5_6fda:
    nop                                           ; $6fda: $00
    ld sp, $8c3e                                  ; $6fdb: $31 $3e $8c
    dec e                                         ; $6fde: $1d
    rst $38                                       ; $6fdf: $ff
    ld c, e                                       ; $6fe0: $4b
    nop                                           ; $6fe1: $00
    jr nz, jr_0b5_6fc9                            ; $6fe2: $20 $e5

    inc a                                         ; $6fe4: $3c
    ld c, b                                       ; $6fe5: $48
    ld b, l                                       ; $6fe6: $45
    rst $38                                       ; $6fe7: $ff
    ld c, e                                       ; $6fe8: $4b
    nop                                           ; $6fe9: $00
    jr nz, jr_0b5_6fda                            ; $6fea: $20 $ee

    ld e, l                                       ; $6fec: $5d
    ld a, [hl]                                    ; $6fed: $7e
    dec e                                         ; $6fee: $1d
    dec de                                        ; $6fef: $1b
    rla                                           ; $6ff0: $17
    nop                                           ; $6ff1: $00
    nop                                           ; $6ff2: $00
    daa                                           ; $6ff3: $27
    ld b, l                                       ; $6ff4: $45
    xor $0c                                       ; $6ff5: $ee $0c
    ld hl, sp+$14                                 ; $6ff7: $f8 $14
    ld bc, $1200                                  ; $6ff9: $01 $00 $12
    ld de, $1d7e                                  ; $6ffc: $11 $7e $1d
    cp a                                          ; $6fff: $bf
    dec de                                        ; $7000: $1b

jr_0b5_7001:
    nop                                           ; $7001: $00
    nop                                           ; $7002: $00
    ld e, d                                       ; $7003: $5a
    rra                                           ; $7004: $1f
    cp $7f                                        ; $7005: $fe $7f
    ld h, $00                                     ; $7007: $26 $00
    ld [bc], a                                    ; $7009: $02
    nop                                           ; $700a: $00
    ld sp, $ff1e                                  ; $700b: $31 $1e $ff
    ld l, a                                       ; $700e: $6f
    rst $38                                       ; $700f: $ff
    rla                                           ; $7010: $17
    ld bc, $e500                                  ; $7011: $01 $00 $e5
    inc a                                         ; $7014: $3c
    inc [hl]                                      ; $7015: $34
    dec d                                         ; $7016: $15
    adc e                                         ; $7017: $8b
    ld c, l                                       ; $7018: $4d
    nop                                           ; $7019: $00
    jr nz, jr_0b5_7001                            ; $701a: $20 $e5

    inc a                                         ; $701c: $3c
    inc [hl]                                      ; $701d: $34
    dec d                                         ; $701e: $15
    adc e                                         ; $701f: $8b
    ld c, l                                       ; $7020: $4d
    nop                                           ; $7021: $00
    jr nz, jr_0b5_7036                            ; $7022: $20 $12

    ld de, $1d7e                                  ; $7024: $11 $7e $1d
    cp a                                          ; $7027: $bf
    dec de                                        ; $7028: $1b
    nop                                           ; $7029: $00
    nop                                           ; $702a: $00
    db $f4                                        ; $702b: $f4
    db $10                                        ; $702c: $10
    xor h                                         ; $702d: $ac
    ld d, l                                       ; $702e: $55
    sub h                                         ; $702f: $94
    ld l, [hl]                                    ; $7030: $6e
    nop                                           ; $7031: $00
    nop                                           ; $7032: $00
    rst $28                                       ; $7033: $ef
    inc c                                         ; $7034: $0c
    ld e, c                                       ; $7035: $59

jr_0b5_7036:
    add hl, de                                    ; $7036: $19
    adc b                                         ; $7037: $88
    ld [$0000], sp                                ; $7038: $08 $00 $00
    inc de                                        ; $703b: $13
    ld de, $197a                                  ; $703c: $11 $7a $19
    ld b, [hl]                                    ; $703f: $46
    nop                                           ; $7040: $00
    ld [bc], a                                    ; $7041: $02
    nop                                           ; $7042: $00
    inc d                                         ; $7043: $14
    dec d                                         ; $7044: $15
    adc e                                         ; $7045: $8b
    ld [$1d9d], sp                                ; $7046: $08 $9d $1d
    inc bc                                        ; $7049: $03
    nop                                           ; $704a: $00

jr_0b5_704b:
    db $10                                        ; $704b: $10
    ld h, d                                       ; $704c: $62
    inc sp                                        ; $704d: $33
    dec d                                         ; $704e: $15
    push hl                                       ; $704f: $e5
    inc a                                         ; $7050: $3c
    nop                                           ; $7051: $00
    jr nz, jr_0b5_7064                            ; $7052: $20 $10

    ld h, d                                       ; $7054: $62
    inc sp                                        ; $7055: $33
    dec d                                         ; $7056: $15
    push hl                                       ; $7057: $e5
    inc a                                         ; $7058: $3c
    nop                                           ; $7059: $00
    jr nz, jr_0b5_704b                            ; $705a: $20 $ef

    inc c                                         ; $705c: $0c
    ld e, c                                       ; $705d: $59
    add hl, de                                    ; $705e: $19
    adc b                                         ; $705f: $88
    ld [$0400], sp                                ; $7060: $08 $00 $04
    rst $30                                       ; $7063: $f7

jr_0b5_7064:
    ld [hl], d                                    ; $7064: $72
    pop af                                        ; $7065: $f1
    db $10                                        ; $7066: $10

jr_0b5_7067:
    rst $38                                       ; $7067: $ff
    ld a, a                                       ; $7068: $7f
    ld [hl+], a                                   ; $7069: $22
    nop                                           ; $706a: $00
    adc $0c                                       ; $706b: $ce $0c
    ld a, h                                       ; $706d: $7c
    add hl, de                                    ; $706e: $19
    inc sp                                        ; $706f: $33
    dec d                                         ; $7070: $15
    ld bc, $3300                                  ; $7071: $01 $00 $33
    dec d                                         ; $7074: $15
    ld l, d                                       ; $7075: $6a
    inc b                                         ; $7076: $04
    ld e, e                                       ; $7077: $5b
    add hl, de                                    ; $7078: $19
    nop                                           ; $7079: $00
    nop                                           ; $707a: $00
    ldh a, [rNR10]                                ; $707b: $f0 $10
    ld d, a                                       ; $707d: $57
    dec d                                         ; $707e: $15
    adc d                                         ; $707f: $8a
    inc b                                         ; $7080: $04
    inc h                                         ; $7081: $24
    nop                                           ; $7082: $00
    jr jr_0b5_70fc                                ; $7083: $18 $77

    ld sp, $0015                                  ; $7085: $31 $15 $00
    jr nz, jr_0b5_708a                            ; $7088: $20 $00

jr_0b5_708a:
    jr nz, @+$1a                                  ; $708a: $20 $18

    ld [hl], a                                    ; $708c: $77
    ld sp, $0015                                  ; $708d: $31 $15 $00
    jr nz, jr_0b5_7092                            ; $7090: $20 $00

jr_0b5_7092:
    inc e                                         ; $7092: $1c
    nop                                           ; $7093: $00
    jr nz, jr_0b5_7112                            ; $7094: $20 $7c

    add hl, de                                    ; $7096: $19
    inc sp                                        ; $7097: $33
    dec d                                         ; $7098: $15
    nop                                           ; $7099: $00
    nop                                           ; $709a: $00
    sbc h                                         ; $709b: $9c
    ld [hl], a                                    ; $709c: $77
    ld de, $0011                                  ; $709d: $11 $11 $00
    jr nz, jr_0b5_70a2                            ; $70a0: $20 $00

jr_0b5_70a2:
    nop                                           ; $70a2: $00
    xor $10                                       ; $70a3: $ee $10
    ld a, d                                       ; $70a5: $7a
    add hl, de                                    ; $70a6: $19
    ld b, [hl]                                    ; $70a7: $46
    inc b                                         ; $70a8: $04
    nop                                           ; $70a9: $00
    nop                                           ; $70aa: $00
    rrca                                          ; $70ab: $0f
    ld h, d                                       ; $70ac: $62
    sbc h                                         ; $70ad: $9c
    ld a, e                                       ; $70ae: $7b
    or l                                          ; $70af: $b5
    ld l, [hl]                                    ; $70b0: $6e
    nop                                           ; $70b1: $00
    nop                                           ; $70b2: $00
    push hl                                       ; $70b3: $e5
    inc a                                         ; $70b4: $3c
    rrca                                          ; $70b5: $0f
    ld e, d                                       ; $70b6: $5a
    ld c, c                                       ; $70b7: $49
    ld c, c                                       ; $70b8: $49
    nop                                           ; $70b9: $00

jr_0b5_70ba:
    nop                                           ; $70ba: $00

jr_0b5_70bb:
    rst $30                                       ; $70bb: $f7
    ld [hl], d                                    ; $70bc: $72
    sbc $7b                                       ; $70bd: $de $7b
    nop                                           ; $70bf: $00
    jr nz, jr_0b5_70c2                            ; $70c0: $20 $00

jr_0b5_70c2:
    jr nz, jr_0b5_70bb                            ; $70c2: $20 $f7

    ld [hl], d                                    ; $70c4: $72
    sbc $7b                                       ; $70c5: $de $7b
    nop                                           ; $70c7: $00
    jr nz, jr_0b5_70ca                            ; $70c8: $20 $00

jr_0b5_70ca:
    jr nz, jr_0b5_70ba                            ; $70ca: $20 $ee

    db $10                                        ; $70cc: $10
    ld a, d                                       ; $70cd: $7a
    add hl, de                                    ; $70ce: $19
    ld b, [hl]                                    ; $70cf: $46
    inc b                                         ; $70d0: $04
    nop                                           ; $70d1: $00
    jr nz, jr_0b5_7067                            ; $70d2: $20 $93

    ld h, d                                       ; $70d4: $62
    sbc h                                         ; $70d5: $9c
    ld [hl], a                                    ; $70d6: $77
    ld l, c                                       ; $70d7: $69
    ld b, l                                       ; $70d8: $45
    push hl                                       ; $70d9: $e5
    inc a                                         ; $70da: $3c
    ld sp, $f766                                  ; $70db: $31 $66 $f7
    ld [hl], d                                    ; $70de: $72
    ld c, c                                       ; $70df: $49
    ld c, l                                       ; $70e0: $4d
    daa                                           ; $70e1: $27
    ld b, l                                       ; $70e2: $45
    sub l                                         ; $70e3: $95
    ld [hl], d                                    ; $70e4: $72
    sbc h                                         ; $70e5: $9c
    ld a, e                                       ; $70e6: $7b
    adc $5d                                       ; $70e7: $ce $5d
    ld l, d                                       ; $70e9: $6a
    ld c, l                                       ; $70ea: $4d
    sub h                                         ; $70eb: $94
    ld l, [hl]                                    ; $70ec: $6e
    jr nc, @+$60                                  ; $70ed: $30 $5e

    ld e, d                                       ; $70ef: $5a
    ld [hl], e                                    ; $70f0: $73
    nop                                           ; $70f1: $00
    jr nz, @+$75                                  ; $70f2: $20 $73

    ld e, [hl]                                    ; $70f4: $5e
    cp h                                          ; $70f5: $bc
    ld a, e                                       ; $70f6: $7b
    push hl                                       ; $70f7: $e5
    inc a                                         ; $70f8: $3c
    nop                                           ; $70f9: $00
    jr nz, @+$75                                  ; $70fa: $20 $73

jr_0b5_70fc:
    ld e, [hl]                                    ; $70fc: $5e
    cp h                                          ; $70fd: $bc
    ld a, e                                       ; $70fe: $7b
    push hl                                       ; $70ff: $e5
    inc a                                         ; $7100: $3c
    nop                                           ; $7101: $00
    jr nz, jr_0b5_7104                            ; $7102: $20 $00

jr_0b5_7104:
    jr nz, jr_0b5_7106                            ; $7104: $20 $00

jr_0b5_7106:
    jr nz, jr_0b5_7130                            ; $7106: $20 $28

    nop                                           ; $7108: $00
    nop                                           ; $7109: $00
    jr nz, jr_0b5_710c                            ; $710a: $20 $00

jr_0b5_710c:
    jr nz, jr_0b5_710e                            ; $710c: $20 $00

jr_0b5_710e:
    jr nz, jr_0b5_7138                            ; $710e: $20 $28

    nop                                           ; $7110: $00
    nop                                           ; $7111: $00

jr_0b5_7112:
    jr nz, jr_0b5_7114                            ; $7112: $20 $00

jr_0b5_7114:
    jr nz, jr_0b5_7116                            ; $7114: $20 $00

jr_0b5_7116:
    jr nz, jr_0b5_7140                            ; $7116: $20 $28

    nop                                           ; $7118: $00
    nop                                           ; $7119: $00
    nop                                           ; $711a: $00
    rst $38                                       ; $711b: $ff
    ld a, a                                       ; $711c: $7f
    nop                                           ; $711d: $00
    jr nz, @+$4d                                  ; $711e: $20 $4b

    dec b                                         ; $7120: $05
    nop                                           ; $7121: $00
    jr nz, @+$01                                  ; $7122: $20 $ff

    ld a, a                                       ; $7124: $7f
    nop                                           ; $7125: $00
    jr nz, @+$4d                                  ; $7126: $20 $4b

    dec b                                         ; $7128: $05
    nop                                           ; $7129: $00
    jr nz, @+$01                                  ; $712a: $20 $ff

    ld a, a                                       ; $712c: $7f
    nop                                           ; $712d: $00
    jr nz, @+$4d                                  ; $712e: $20 $4b

jr_0b5_7130:
    dec b                                         ; $7130: $05
    nop                                           ; $7131: $00
    jr nz, @+$01                                  ; $7132: $20 $ff

    ld a, a                                       ; $7134: $7f
    nop                                           ; $7135: $00
    jr nz, jr_0b5_7183                            ; $7136: $20 $4b

jr_0b5_7138:
    dec b                                         ; $7138: $05
    nop                                           ; $7139: $00
    jr nz, jr_0b5_713c                            ; $713a: $20 $00

jr_0b5_713c:
    jr nz, jr_0b5_713e                            ; $713c: $20 $00

jr_0b5_713e:
    jr nz, jr_0b5_7168                            ; $713e: $20 $28

jr_0b5_7140:
    nop                                           ; $7140: $00
    nop                                           ; $7141: $00
    jr nz, jr_0b5_7144                            ; $7142: $20 $00

jr_0b5_7144:
    jr nz, jr_0b5_7146                            ; $7144: $20 $00

jr_0b5_7146:
    jr nz, jr_0b5_7170                            ; $7146: $20 $28

    nop                                           ; $7148: $00
    nop                                           ; $7149: $00
    jr nz, jr_0b5_714c                            ; $714a: $20 $00

jr_0b5_714c:
    jr nz, jr_0b5_714e                            ; $714c: $20 $00

jr_0b5_714e:
    jr nz, jr_0b5_7178                            ; $714e: $20 $28

    nop                                           ; $7150: $00
    nop                                           ; $7151: $00
    nop                                           ; $7152: $00
    rst $38                                       ; $7153: $ff
    ld a, a                                       ; $7154: $7f
    nop                                           ; $7155: $00
    jr nz, @+$4d                                  ; $7156: $20 $4b

    dec b                                         ; $7158: $05
    nop                                           ; $7159: $00
    nop                                           ; $715a: $00
    nop                                           ; $715b: $00
    jr nz, jr_0b5_715e                            ; $715c: $20 $00

jr_0b5_715e:
    jr nz, @+$4d                                  ; $715e: $20 $4b

    dec b                                         ; $7160: $05
    nop                                           ; $7161: $00
    jr nz, jr_0b5_7164                            ; $7162: $20 $00

jr_0b5_7164:
    jr nz, jr_0b5_7166                            ; $7164: $20 $00

jr_0b5_7166:
    jr nz, @+$4d                                  ; $7166: $20 $4b

jr_0b5_7168:
    dec b                                         ; $7168: $05
    nop                                           ; $7169: $00
    jr nz, jr_0b5_716c                            ; $716a: $20 $00

jr_0b5_716c:
    jr nz, jr_0b5_716e                            ; $716c: $20 $00

jr_0b5_716e:
    jr nz, @+$4d                                  ; $716e: $20 $4b

jr_0b5_7170:
    dec b                                         ; $7170: $05
    nop                                           ; $7171: $00
    jr nz, jr_0b5_7174                            ; $7172: $20 $00

jr_0b5_7174:
    jr nz, jr_0b5_7176                            ; $7174: $20 $00

jr_0b5_7176:
    jr nz, jr_0b5_71a0                            ; $7176: $20 $28

jr_0b5_7178:
    nop                                           ; $7178: $00
    nop                                           ; $7179: $00
    jr nz, jr_0b5_717c                            ; $717a: $20 $00

jr_0b5_717c:
    jr nz, jr_0b5_717e                            ; $717c: $20 $00

jr_0b5_717e:
    jr nz, jr_0b5_71a8                            ; $717e: $20 $28

    nop                                           ; $7180: $00
    nop                                           ; $7181: $00
    nop                                           ; $7182: $00

jr_0b5_7183:
    nop                                           ; $7183: $00
    jr nz, jr_0b5_718d                            ; $7184: $20 $07

    nop                                           ; $7186: $00
    jr z, jr_0b5_7189                             ; $7187: $28 $00

jr_0b5_7189:
    jr z, jr_0b5_718f                             ; $7189: $28 $04

    ret c                                         ; $718b: $d8

    add hl, sp                                    ; $718c: $39

jr_0b5_718d:
    ld e, [hl]                                    ; $718d: $5e
    ld l, e                                       ; $718e: $6b

jr_0b5_718f:
    xor a                                         ; $718f: $af
    jr jr_0b5_7192                                ; $7190: $18 $00

jr_0b5_7192:
    jr @+$01                                      ; $7192: $18 $ff

    ld a, a                                       ; $7194: $7f
    rlca                                          ; $7195: $07
    nop                                           ; $7196: $00
    ld c, e                                       ; $7197: $4b
    dec b                                         ; $7198: $05
    nop                                           ; $7199: $00
    jr nz, @+$01                                  ; $719a: $20 $ff

    ld a, a                                       ; $719c: $7f
    rlca                                          ; $719d: $07
    nop                                           ; $719e: $00
    ld c, e                                       ; $719f: $4b

jr_0b5_71a0:
    dec b                                         ; $71a0: $05
    nop                                           ; $71a1: $00
    jr nz, @+$01                                  ; $71a2: $20 $ff

    ld a, a                                       ; $71a4: $7f
    rlca                                          ; $71a5: $07
    nop                                           ; $71a6: $00
    ld c, e                                       ; $71a7: $4b

jr_0b5_71a8:
    dec b                                         ; $71a8: $05
    nop                                           ; $71a9: $00
    jr nz, jr_0b5_71ac                            ; $71aa: $20 $00

jr_0b5_71ac:
    jr nz, @+$09                                  ; $71ac: $20 $07

    nop                                           ; $71ae: $00
    jr z, jr_0b5_71b1                             ; $71af: $28 $00

jr_0b5_71b1:
    nop                                           ; $71b1: $00
    jr nz, jr_0b5_71b4                            ; $71b2: $20 $00

jr_0b5_71b4:
    jr nz, jr_0b5_71bd                            ; $71b4: $20 $07

    nop                                           ; $71b6: $00
    jr z, jr_0b5_71b9                             ; $71b7: $28 $00

jr_0b5_71b9:
    ld bc, $5d00                                  ; $71b9: $01 $00 $5d
    ld c, d                                       ; $71bc: $4a

jr_0b5_71bd:
    nop                                           ; $71bd: $00
    jr nz, jr_0b5_721f                            ; $71be: $20 $5f

    ld l, e                                       ; $71c0: $6b
    ret c                                         ; $71c1: $d8

    jr jr_0b5_723f                                ; $71c2: $18 $7b

    dec l                                         ; $71c4: $2d
    db $fd                                        ; $71c5: $fd
    dec a                                         ; $71c6: $3d
    sbc h                                         ; $71c7: $9c
    ld sp, $0805                                  ; $71c8: $31 $05 $08
    ld a, d                                       ; $71cb: $7a
    dec l                                         ; $71cc: $2d
    sbc h                                         ; $71cd: $9c
    ld c, e                                       ; $71ce: $4b
    ld c, e                                       ; $71cf: $4b
    dec b                                         ; $71d0: $05
    nop                                           ; $71d1: $00
    jr nz, jr_0b5_724e                            ; $71d2: $20 $7a

    dec l                                         ; $71d4: $2d
    sbc h                                         ; $71d5: $9c
    ld c, e                                       ; $71d6: $4b

jr_0b5_71d7:
    ld c, e                                       ; $71d7: $4b

jr_0b5_71d8:
    dec b                                         ; $71d8: $05
    nop                                           ; $71d9: $00
    jr nz, jr_0b5_7256                            ; $71da: $20 $7a

    dec l                                         ; $71dc: $2d
    sbc h                                         ; $71dd: $9c
    ld c, e                                       ; $71de: $4b
    ld c, e                                       ; $71df: $4b
    dec b                                         ; $71e0: $05
    nop                                           ; $71e1: $00
    jr nz, jr_0b5_7241                            ; $71e2: $20 $5d

    ld c, d                                       ; $71e4: $4a
    nop                                           ; $71e5: $00
    jr nz, @+$61                                  ; $71e6: $20 $5f

    ld l, e                                       ; $71e8: $6b
    nop                                           ; $71e9: $00
    jr nz, jr_0b5_7249                            ; $71ea: $20 $5d

    ld c, d                                       ; $71ec: $4a
    nop                                           ; $71ed: $00
    jr nz, @+$61                                  ; $71ee: $20 $5f

    ld l, e                                       ; $71f0: $6b
    nop                                           ; $71f1: $00
    inc c                                         ; $71f2: $0c
    cp h                                          ; $71f3: $bc
    dec [hl]                                      ; $71f4: $35
    rst $38                                       ; $71f5: $ff
    ld a, a                                       ; $71f6: $7f
    xor a                                         ; $71f7: $af
    inc d                                         ; $71f8: $14
    ld [hl], e                                    ; $71f9: $73
    inc c                                         ; $71fa: $0c
    add hl, de                                    ; $71fb: $19
    dec e                                         ; $71fc: $1d
    dec sp                                        ; $71fd: $3b
    dec h                                         ; $71fe: $25
    or l                                          ; $71ff: $b5
    inc d                                         ; $7200: $14
    ld [$1900], sp                                ; $7201: $08 $00 $19
    ld l, $d0                                     ; $7204: $2e $d0
    ld [$4b7b], sp                                ; $7206: $08 $7b $4b
    nop                                           ; $7209: $00
    jr nz, @+$09                                  ; $720a: $20 $07

    nop                                           ; $720c: $00
    ret nc                                        ; $720d: $d0

    ld [$4b7b], sp                                ; $720e: $08 $7b $4b
    nop                                           ; $7211: $00
    jr nz, @+$09                                  ; $7212: $20 $07

    nop                                           ; $7214: $00
    ret nc                                        ; $7215: $d0

    ld [$4b7b], sp                                ; $7216: $08 $7b $4b
    nop                                           ; $7219: $00
    jr nz, jr_0b5_71d8                            ; $721a: $20 $bc

    dec [hl]                                      ; $721c: $35
    rst $38                                       ; $721d: $ff
    ld a, a                                       ; $721e: $7f

jr_0b5_721f:
    xor a                                         ; $721f: $af
    inc d                                         ; $7220: $14
    nop                                           ; $7221: $00
    nop                                           ; $7222: $00
    rst $38                                       ; $7223: $ff
    ld a, a                                       ; $7224: $7f
    nop                                           ; $7225: $00
    jr nz, jr_0b5_71d7                            ; $7226: $20 $af

    inc d                                         ; $7228: $14
    ld [bc], a                                    ; $7229: $02
    nop                                           ; $722a: $00
    rst $38                                       ; $722b: $ff
    ld a, a                                       ; $722c: $7f
    rst $00                                       ; $722d: $c7
    ld [hl-], a                                   ; $722e: $32
    ld a, b                                       ; $722f: $78
    dec l                                         ; $7230: $2d
    dec l                                         ; $7231: $2d
    inc b                                         ; $7232: $04
    or l                                          ; $7233: $b5
    inc d                                         ; $7234: $14
    ld [hl], c                                    ; $7235: $71
    inc c                                         ; $7236: $0c
    add hl, de                                    ; $7237: $19
    ld hl, $0006                                  ; $7238: $21 $06 $00
    cp e                                          ; $723b: $bb
    inc d                                         ; $723c: $14
    ld e, h                                       ; $723d: $5c
    cpl                                           ; $723e: $2f

jr_0b5_723f:
    ld c, e                                       ; $723f: $4b
    dec b                                         ; $7240: $05

jr_0b5_7241:
    inc b                                         ; $7241: $04
    nop                                           ; $7242: $00
    dec e                                         ; $7243: $1d
    ld a, $00                                     ; $7244: $3e $00
    jr nz, jr_0b5_72a7                            ; $7246: $20 $5f

    ld l, e                                       ; $7248: $6b

jr_0b5_7249:
    nop                                           ; $7249: $00
    jr nz, jr_0b5_7269                            ; $724a: $20 $1d

    ld a, $00                                     ; $724c: $3e $00

jr_0b5_724e:
    jr nz, jr_0b5_72af                            ; $724e: $20 $5f

    ld l, e                                       ; $7250: $6b
    nop                                           ; $7251: $00
    jr nz, @+$01                                  ; $7252: $20 $ff

    ld a, a                                       ; $7254: $7f
    rst $00                                       ; $7255: $c7

jr_0b5_7256:
    ld [hl-], a                                   ; $7256: $32
    ld a, b                                       ; $7257: $78
    dec l                                         ; $7258: $2d
    nop                                           ; $7259: $00
    nop                                           ; $725a: $00
    rst $38                                       ; $725b: $ff
    ld a, a                                       ; $725c: $7f
    nop                                           ; $725d: $00
    jr nz, jr_0b5_72d8                            ; $725e: $20 $78

    dec l                                         ; $7260: $2d
    nop                                           ; $7261: $00
    nop                                           ; $7262: $00

jr_0b5_7263:
    rst $00                                       ; $7263: $c7
    ld [hl-], a                                   ; $7264: $32
    ld c, e                                       ; $7265: $4b
    dec b                                         ; $7266: $05
    rlca                                          ; $7267: $07
    nop                                           ; $7268: $00

jr_0b5_7269:
    ld bc, $4e00                                  ; $7269: $01 $00 $4e
    ld [$1093], sp                                ; $726c: $08 $93 $10
    ld b, $00                                     ; $726f: $06 $00
    inc bc                                        ; $7271: $03
    nop                                           ; $7272: $00
    ld [hl], h                                    ; $7273: $74
    ld a, [de]                                    ; $7274: $1a
    ld c, $09                                     ; $7275: $0e $09
    sbc $2f                                       ; $7277: $de $2f
    nop                                           ; $7279: $00
    db $10                                        ; $727a: $10
    db $fd                                        ; $727b: $fd
    dec h                                         ; $727c: $25
    rst $38                                       ; $727d: $ff
    ld a, a                                       ; $727e: $7f
    ld [hl], c                                    ; $727f: $71
    ld [$2000], sp                                ; $7280: $08 $00 $20
    db $fd                                        ; $7283: $fd
    dec h                                         ; $7284: $25
    rst $38                                       ; $7285: $ff
    ld a, a                                       ; $7286: $7f
    ld [hl], c                                    ; $7287: $71
    ld [$2000], sp                                ; $7288: $08 $00 $20
    rst $00                                       ; $728b: $c7
    ld [hl-], a                                   ; $728c: $32
    ld c, e                                       ; $728d: $4b
    dec b                                         ; $728e: $05
    rlca                                          ; $728f: $07
    nop                                           ; $7290: $00
    nop                                           ; $7291: $00
    nop                                           ; $7292: $00
    rst $38                                       ; $7293: $ff
    ld a, a                                       ; $7294: $7f
    rst $00                                       ; $7295: $c7
    ld [hl-], a                                   ; $7296: $32
    nop                                           ; $7297: $00
    jr nz, jr_0b5_7263                            ; $7298: $20 $c9

    nop                                           ; $729a: $00
    ld a, h                                       ; $729b: $7c
    ccf                                           ; $729c: $3f
    rst $00                                       ; $729d: $c7
    ld [hl-], a                                   ; $729e: $32
    rst $38                                       ; $729f: $ff
    ld a, a                                       ; $72a0: $7f
    inc h                                         ; $72a1: $24
    inc b                                         ; $72a2: $04
    or l                                          ; $72a3: $b5
    ld d, d                                       ; $72a4: $52
    ld e, $4b                                     ; $72a5: $1e $4b

jr_0b5_72a7:
    ld c, a                                       ; $72a7: $4f
    add hl, de                                    ; $72a8: $19
    ld [$d600], sp                                ; $72a9: $08 $00 $d6
    ld e, d                                       ; $72ac: $5a
    ld d, e                                       ; $72ad: $53
    inc c                                         ; $72ae: $0c

jr_0b5_72af:
    add sp, $0c                                   ; $72af: $e8 $0c
    rlca                                          ; $72b1: $07
    nop                                           ; $72b2: $00
    ld a, h                                       ; $72b3: $7c
    ccf                                           ; $72b4: $3f
    ld c, e                                       ; $72b5: $4b
    dec b                                         ; $72b6: $05
    sbc $7b                                       ; $72b7: $de $7b
    nop                                           ; $72b9: $00
    jr nz, @-$30                                  ; $72ba: $20 $ce

    dec d                                         ; $72bc: $15
    ld c, e                                       ; $72bd: $4b
    dec b                                         ; $72be: $05
    sbc $7b                                       ; $72bf: $de $7b
    nop                                           ; $72c1: $00
    nop                                           ; $72c2: $00
    rst $38                                       ; $72c3: $ff
    ld a, a                                       ; $72c4: $7f
    nop                                           ; $72c5: $00
    jr nz, @+$01                                  ; $72c6: $20 $ff

    ld a, a                                       ; $72c8: $7f
    nop                                           ; $72c9: $00
    nop                                           ; $72ca: $00
    rst $38                                       ; $72cb: $ff
    ld a, a                                       ; $72cc: $7f
    and a                                         ; $72cd: $a7
    ld [hl], $c7                                  ; $72ce: $36 $c7
    ld [hl], $a7                                  ; $72d0: $36 $a7
    ld [hl-], a                                   ; $72d2: $32
    sbc l                                         ; $72d3: $9d
    inc sp                                        ; $72d4: $33
    ld c, e                                       ; $72d5: $4b
    dec b                                         ; $72d6: $05
    rst $38                                       ; $72d7: $ff

jr_0b5_72d8:
    ld h, e                                       ; $72d8: $63
    ld [hl+], a                                   ; $72d9: $22
    inc b                                         ; $72da: $04
    cp $46                                        ; $72db: $fe $46
    ld l, h                                       ; $72dd: $6c
    add hl, bc                                    ; $72de: $09
    ei                                            ; $72df: $fb
    ld a, a                                       ; $72e0: $7f
    inc b                                         ; $72e1: $04
    nop                                           ; $72e2: $00
    jp c, Jump_0b5_4f56                           ; $72e3: $da $56 $4f

    add hl, de                                    ; $72e6: $19
    rst $38                                       ; $72e7: $ff
    ld a, a                                       ; $72e8: $7f
    xor c                                         ; $72e9: $a9
    nop                                           ; $72ea: $00
    ld a, [hl-]                                   ; $72eb: $3a
    cpl                                           ; $72ec: $2f
    rst $38                                       ; $72ed: $ff
    ld e, e                                       ; $72ee: $5b
    rst $38                                       ; $72ef: $ff
    inc sp                                        ; $72f0: $33
    nop                                           ; $72f1: $00
    nop                                           ; $72f2: $00
    ld a, [hl-]                                   ; $72f3: $3a
    inc sp                                        ; $72f4: $33
    ld c, e                                       ; $72f5: $4b
    dec b                                         ; $72f6: $05
    nop                                           ; $72f7: $00
    jr nz, jr_0b5_72fa                            ; $72f8: $20 $00

jr_0b5_72fa:
    nop                                           ; $72fa: $00
    rst $38                                       ; $72fb: $ff
    ld a, a                                       ; $72fc: $7f
    nop                                           ; $72fd: $00
    jr nz, @+$01                                  ; $72fe: $20 $ff

    ld h, e                                       ; $7300: $63
    nop                                           ; $7301: $00
    nop                                           ; $7302: $00
    add a                                         ; $7303: $87
    ld a, [hl-]                                   ; $7304: $3a
    jp z, $0b3c                                   ; $7305: $ca $3c $0b

    jr z, jr_0b5_7373                             ; $7308: $28 $69

    jr z, @+$3c                                   ; $730a: $28 $3a

    cpl                                           ; $730c: $2f
    adc b                                         ; $730d: $88
    ld a, [hl-]                                   ; $730e: $3a
    ld l, h                                       ; $730f: $6c
    add hl, bc                                    ; $7310: $09
    rlca                                          ; $7311: $07
    nop                                           ; $7312: $00
    sbc a                                         ; $7313: $9f
    ld l, a                                       ; $7314: $6f
    add a                                         ; $7315: $87
    ld e, c                                       ; $7316: $59
    sub $31                                       ; $7317: $d6 $31
    ld h, h                                       ; $7319: $64
    inc b                                         ; $731a: $04
    cp h                                          ; $731b: $bc
    ld c, d                                       ; $731c: $4a
    ret                                           ; $731d: $c9


    ld e, l                                       ; $731e: $5d
    rst $38                                       ; $731f: $ff
    ld a, a                                       ; $7320: $7f
    rlca                                          ; $7321: $07
    nop                                           ; $7322: $00
    or [hl]                                       ; $7323: $b6
    ld e, $ff                                     ; $7324: $1e $ff
    inc sp                                        ; $7326: $33
    ld l, h                                       ; $7327: $6c
    dec b                                         ; $7328: $05
    nop                                           ; $7329: $00
    nop                                           ; $732a: $00
    rst $38                                       ; $732b: $ff
    ld a, a                                       ; $732c: $7f
    adc l                                         ; $732d: $8d
    add hl, bc                                    ; $732e: $09
    nop                                           ; $732f: $00
    jr nz, jr_0b5_7332                            ; $7330: $20 $00

jr_0b5_7332:
    nop                                           ; $7332: $00
    rst $38                                       ; $7333: $ff
    ld a, a                                       ; $7334: $7f
    ld c, b                                       ; $7335: $48
    ld b, d                                       ; $7336: $42
    nop                                           ; $7337: $00
    jr nz, jr_0b5_7384                            ; $7338: $20 $4a

    jr nc, @+$01                                  ; $733a: $30 $ff

    ld a, a                                       ; $733c: $7f
    adc h                                         ; $733d: $8c
    ld l, $76                                     ; $733e: $2e $76
    ld d, h                                       ; $7340: $54
    ld l, d                                       ; $7341: $6a
    db $10                                        ; $7342: $10
    db $fd                                        ; $7343: $fd
    rla                                           ; $7344: $17
    call z, $df45                                 ; $7345: $cc $45 $df
    ld l, [hl]                                    ; $7348: $6e
    ld l, b                                       ; $7349: $68
    ld [$6a0b], sp                                ; $734a: $08 $0b $6a
    ld b, [hl]                                    ; $734d: $46
    ld d, c                                       ; $734e: $51
    rst $38                                       ; $734f: $ff
    ld d, d                                       ; $7350: $52
    ld b, l                                       ; $7351: $45
    nop                                           ; $7352: $00
    ld e, $4b                                     ; $7353: $1e $4b
    ld c, [hl]                                    ; $7355: $4e
    dec l                                         ; $7356: $2d
    rst $38                                       ; $7357: $ff
    ld a, a                                       ; $7358: $7f
    ld c, b                                       ; $7359: $48
    nop                                           ; $735a: $00
    cp e                                          ; $735b: $bb
    inc d                                         ; $735c: $14
    cp $5e                                        ; $735d: $fe $5e
    jp c, Jump_000_0039                           ; $735f: $da $39 $00

    inc e                                         ; $7362: $1c
    ld c, b                                       ; $7363: $48
    ld b, d                                       ; $7364: $42
    rst $38                                       ; $7365: $ff
    ld a, a                                       ; $7366: $7f
    ld c, e                                       ; $7367: $4b
    dec b                                         ; $7368: $05
    nop                                           ; $7369: $00
    nop                                           ; $736a: $00
    rst $38                                       ; $736b: $ff
    ld a, a                                       ; $736c: $7f
    jr z, jr_0b5_73b9                             ; $736d: $28 $4a

    ld c, b                                       ; $736f: $48
    ld b, [hl]                                    ; $7370: $46
    ld c, d                                       ; $7371: $4a
    inc l                                         ; $7372: $2c

jr_0b5_7373:
    db $fd                                        ; $7373: $fd
    rla                                           ; $7374: $17
    rra                                           ; $7375: $1f
    ld a, l                                       ; $7376: $7d
    db $ec                                        ; $7377: $ec
    ld sp, $0427                                  ; $7378: $31 $27 $04
    ld e, e                                       ; $737b: $5b
    dec [hl]                                      ; $737c: $35
    db $fd                                        ; $737d: $fd
    rla                                           ; $737e: $17
    xor [hl]                                      ; $737f: $ae
    inc h                                         ; $7380: $24
    ld b, $00                                     ; $7381: $06 $00
    add hl, de                                    ; $7383: $19

jr_0b5_7384:
    ld a, [hl-]                                   ; $7384: $3a
    ld [hl-], a                                   ; $7385: $32
    ld hl, $52fe                                  ; $7386: $21 $fe $52
    inc c                                         ; $7389: $0c
    dec c                                         ; $738a: $0d
    dec de                                        ; $738b: $1b
    ld a, $bb                                     ; $738c: $3e $bb
    inc d                                         ; $738e: $14
    rra                                           ; $738f: $1f
    ld c, e                                       ; $7390: $4b
    ld h, [hl]                                    ; $7391: $66
    inc c                                         ; $7392: $0c
    inc d                                         ; $7393: $14
    ld b, d                                       ; $7394: $42
    pop af                                        ; $7395: $f1
    jr jr_0b5_7413                                ; $7396: $18 $7b

    ld c, [hl]                                    ; $7398: $4e
    ld [bc], a                                    ; $7399: $02
    nop                                           ; $739a: $00
    jp hl                                         ; $739b: $e9


    ld b, c                                       ; $739c: $41
    rst $38                                       ; $739d: $ff
    ld a, a                                       ; $739e: $7f
    nop                                           ; $739f: $00
    jr nz, jr_0b5_73a2                            ; $73a0: $20 $00

jr_0b5_73a2:
    ld [$4a08], sp                                ; $73a2: $08 $08 $4a
    rst $38                                       ; $73a5: $ff
    ld a, a                                       ; $73a6: $7f
    jp z, Jump_0b5_4f3c                           ; $73a7: $ca $3c $4f

    inc a                                         ; $73aa: $3c
    ld l, c                                       ; $73ab: $69
    ld l, d                                       ; $73ac: $6a
    inc e                                         ; $73ad: $1c
    ld [hl], c                                    ; $73ae: $71
    rst $38                                       ; $73af: $ff
    ld a, a                                       ; $73b0: $7f
    ld c, b                                       ; $73b1: $48
    inc d                                         ; $73b2: $14
    ld [c], a                                     ; $73b3: $e2
    ld h, e                                       ; $73b4: $63
    cp l                                          ; $73b5: $bd
    ld [hl], e                                    ; $73b6: $73
    jp hl                                         ; $73b7: $e9


    ld b, l                                       ; $73b8: $45

jr_0b5_73b9:
    dec hl                                        ; $73b9: $2b
    add hl, bc                                    ; $73ba: $09
    dec de                                        ; $73bb: $1b
    ld a, $57                                     ; $73bc: $3e $57
    db $10                                        ; $73be: $10
    rst $38                                       ; $73bf: $ff
    scf                                           ; $73c0: $37
    adc b                                         ; $73c1: $88
    nop                                           ; $73c2: $00
    ld e, c                                       ; $73c3: $59
    ld a, $f5                                     ; $73c4: $3e $f5
    jr jr_0b5_7407                                ; $73c6: $18 $3f

    ld d, e                                       ; $73c8: $53
    ld b, [hl]                                    ; $73c9: $46
    ld [$3df3], sp                                ; $73ca: $08 $f3 $3d
    jr jr_0b5_742e                                ; $73cd: $18 $5f

    sub c                                         ; $73cf: $91
    db $10                                        ; $73d0: $10
    inc b                                         ; $73d1: $04
    nop                                           ; $73d2: $00
    add sp, $4d                                   ; $73d3: $e8 $4d
    ld a, [hl]                                    ; $73d5: $7e
    ld l, a                                       ; $73d6: $6f
    nop                                           ; $73d7: $00
    jr nz, jr_0b5_73da                            ; $73d8: $20 $00

jr_0b5_73da:
    inc c                                         ; $73da: $0c
    rst $38                                       ; $73db: $ff
    ld a, a                                       ; $73dc: $7f
    add sp, $51                                   ; $73dd: $e8 $51
    jp z, $793c                                   ; $73df: $ca $3c $79

    inc de                                        ; $73e2: $13
    dec bc                                        ; $73e3: $0b
    jr z, jr_0b5_744f                             ; $73e4: $28 $69

    ld l, d                                       ; $73e6: $6a
    db $fd                                        ; $73e7: $fd
    ld [hl], l                                    ; $73e8: $75
    ld h, e                                       ; $73e9: $63
    inc c                                         ; $73ea: $0c
    dec sp                                        ; $73eb: $3b
    ld h, e                                       ; $73ec: $63
    ld c, b                                       ; $73ed: $48
    dec h                                         ; $73ee: $25
    call z, $073d                                 ; $73ef: $cc $3d $07
    nop                                           ; $73f2: $00
    jr jr_0b5_7412                                ; $73f3: $18 $1d

    ld a, [de]                                    ; $73f5: $1a
    ld a, [hl-]                                   ; $73f6: $3a
    ret                                           ; $73f7: $c9


    inc b                                         ; $73f8: $04
    rlc h                                         ; $73f9: $cb $04
    sbc e                                         ; $73fb: $9b
    ld b, [hl]                                    ; $73fc: $46
    sub c                                         ; $73fd: $91
    dec h                                         ; $73fe: $25
    rst $38                                       ; $73ff: $ff
    dec hl                                        ; $7400: $2b
    ld [$1000], sp                                ; $7401: $08 $00 $10
    ld b, d                                       ; $7404: $42
    add hl, sp                                    ; $7405: $39
    ld h, a                                       ; $7406: $67

jr_0b5_7407:
    rst $00                                       ; $7407: $c7
    inc c                                         ; $7408: $0c
    inc bc                                        ; $7409: $03
    nop                                           ; $740a: $00
    rst $38                                       ; $740b: $ff
    ld a, a                                       ; $740c: $7f
    ret z                                         ; $740d: $c8

    ld d, c                                       ; $740e: $51
    nop                                           ; $740f: $00
    jr nz, jr_0b5_7412                            ; $7410: $20 $00

jr_0b5_7412:
    nop                                           ; $7412: $00

jr_0b5_7413:
    rst $38                                       ; $7413: $ff
    ld a, a                                       ; $7414: $7f
    ret z                                         ; $7415: $c8

    ld d, l                                       ; $7416: $55
    nop                                           ; $7417: $00
    jr nz, jr_0b5_741a                            ; $7418: $20 $00

jr_0b5_741a:
    nop                                           ; $741a: $00
    ld a, h                                       ; $741b: $7c
    ld a, c                                       ; $741c: $79
    jp hl                                         ; $741d: $e9


    ld b, b                                       ; $741e: $40
    dec bc                                        ; $741f: $0b
    jr z, @+$04                                   ; $7420: $28 $02

    nop                                           ; $7422: $00
    adc $3d                                       ; $7423: $ce $3d
    dec e                                         ; $7425: $1d
    ld e, a                                       ; $7426: $5f
    add $18                                       ; $7427: $c6 $18
    jp z, $ba04                                   ; $7429: $ca $04 $ba

    inc d                                         ; $742c: $14
    dec e                                         ; $742d: $1d

jr_0b5_742e:
    dec sp                                        ; $742e: $3b
    sbc c                                         ; $742f: $99
    dec l                                         ; $7430: $2d
    jp hl                                         ; $7431: $e9


    nop                                           ; $7432: $00
    ld d, [hl]                                    ; $7433: $56
    ld a, [hl+]                                   ; $7434: $2a
    ld [hl], a                                    ; $7435: $77
    db $10                                        ; $7436: $10
    sbc [hl]                                      ; $7437: $9e
    ld c, d                                       ; $7438: $4a
    ld b, a                                       ; $7439: $47
    ld [$4a52], sp                                ; $743a: $08 $52 $4a
    ld e, d                                       ; $743d: $5a
    ld l, e                                       ; $743e: $6b
    ld a, [c]                                     ; $743f: $f2
    inc e                                         ; $7440: $1c
    ld bc, $ff00                                  ; $7441: $01 $00 $ff
    ld a, a                                       ; $7444: $7f
    xor b                                         ; $7445: $a8
    ld e, c                                       ; $7446: $59
    nop                                           ; $7447: $00
    jr nz, jr_0b5_744a                            ; $7448: $20 $00

jr_0b5_744a:
    nop                                           ; $744a: $00
    xor b                                         ; $744b: $a8
    ld e, c                                       ; $744c: $59
    rst $38                                       ; $744d: $ff
    ld a, a                                       ; $744e: $7f

jr_0b5_744f:
    nop                                           ; $744f: $00
    jr nz, jr_0b5_7452                            ; $7450: $20 $00

jr_0b5_7452:
    nop                                           ; $7452: $00
    xor b                                         ; $7453: $a8
    ld e, c                                       ; $7454: $59
    jp z, Jump_0b5_453c                           ; $7455: $ca $3c $45

    nop                                           ; $7458: $00
    ld b, h                                       ; $7459: $44
    inc b                                         ; $745a: $04
    adc e                                         ; $745b: $8b
    dec a                                         ; $745c: $3d
    call c, Call_000_3b39                         ; $745d: $dc $39 $3b
    ld e, a                                       ; $7460: $5f
    add hl, bc                                    ; $7461: $09
    nop                                           ; $7462: $00
    cp l                                          ; $7463: $bd
    cpl                                           ; $7464: $2f
    ld l, h                                       ; $7465: $6c
    add hl, bc                                    ; $7466: $09
    sub l                                         ; $7467: $95
    inc c                                         ; $7468: $0c
    ret                                           ; $7469: $c9


    nop                                           ; $746a: $00
    sub h                                         ; $746b: $94
    ld a, [de]                                    ; $746c: $1a
    rst $38                                       ; $746d: $ff
    inc sp                                        ; $746e: $33
    sbc e                                         ; $746f: $9b
    ld sp, $0429                                  ; $7470: $31 $29 $04
    scf                                           ; $7473: $37
    dec h                                         ; $7474: $25
    rst $28                                       ; $7475: $ef
    dec a                                         ; $7476: $3d
    or a                                          ; $7477: $b7
    ld d, [hl]                                    ; $7478: $56
    ld hl, $ff04                                  ; $7479: $21 $04 $ff
    ld a, a                                       ; $747c: $7f
    xor b                                         ; $747d: $a8
    ld e, c                                       ; $747e: $59
    nop                                           ; $747f: $00
    jr nz, jr_0b5_7482                            ; $7480: $20 $00

jr_0b5_7482:
    nop                                           ; $7482: $00
    rst $38                                       ; $7483: $ff
    ld a, a                                       ; $7484: $7f
    xor b                                         ; $7485: $a8
    ld e, c                                       ; $7486: $59
    nop                                           ; $7487: $00
    jr nz, @+$47                                  ; $7488: $20 $45

    nop                                           ; $748a: $00
    xor b                                         ; $748b: $a8
    ld e, c                                       ; $748c: $59
    ld e, c                                       ; $748d: $59
    ld a, [hl-]                                   ; $748e: $3a
    rst $18                                       ; $748f: $df
    ld l, e                                       ; $7490: $6b
    ld h, a                                       ; $7491: $67
    nop                                           ; $7492: $00
    ld a, $5b                                     ; $7493: $3e $5b
    pop af                                        ; $7495: $f1
    inc d                                         ; $7496: $14
    or l                                          ; $7497: $b5
    add hl, hl                                    ; $7498: $29
    nop                                           ; $7499: $00
    nop                                           ; $749a: $00
    cp l                                          ; $749b: $bd
    cpl                                           ; $749c: $2f
    inc l                                         ; $749d: $2c
    inc b                                         ; $749e: $04
    add hl, hl                                    ; $749f: $29
    dec b                                         ; $74a0: $05
    ld [hl+], a                                   ; $74a1: $22
    inc b                                         ; $74a2: $04
    ld [hl], h                                    ; $74a3: $74
    ld d, $4b                                     ; $74a4: $16 $4b
    dec b                                         ; $74a6: $05
    rst $38                                       ; $74a7: $ff
    scf                                           ; $74a8: $37
    rlca                                          ; $74a9: $07
    nop                                           ; $74aa: $00
    push af                                       ; $74ab: $f5
    dec a                                         ; $74ac: $3d
    cp l                                          ; $74ad: $bd
    ld d, [hl]                                    ; $74ae: $56
    or c                                          ; $74af: $b1
    inc d                                         ; $74b0: $14
    nop                                           ; $74b1: $00
    inc b                                         ; $74b2: $04
    cp l                                          ; $74b3: $bd
    ld [hl], e                                    ; $74b4: $73
    xor $39                                       ; $74b5: $ee $39
    nop                                           ; $74b7: $00
    jr nz, jr_0b5_74ba                            ; $74b8: $20 $00

jr_0b5_74ba:
    nop                                           ; $74ba: $00
    rst $38                                       ; $74bb: $ff
    ld a, a                                       ; $74bc: $7f
    xor b                                         ; $74bd: $a8
    ld e, c                                       ; $74be: $59
    nop                                           ; $74bf: $00
    jr nz, jr_0b5_7507                            ; $74c0: $20 $45

    nop                                           ; $74c2: $00
    xor b                                         ; $74c3: $a8
    ld e, c                                       ; $74c4: $59
    ld c, [hl]                                    ; $74c5: $4e
    dec e                                         ; $74c6: $1d
    ld h, [hl]                                    ; $74c7: $66
    inc b                                         ; $74c8: $04
    ld h, [hl]                                    ; $74c9: $66
    nop                                           ; $74ca: $00
    dec [hl]                                      ; $74cb: $35
    ld a, [hl-]                                   ; $74cc: $3a
    ld d, e                                       ; $74cd: $53
    ld hl, $5b3f                                  ; $74ce: $21 $3f $5b
    nop                                           ; $74d1: $00
    nop                                           ; $74d2: $00
    ld h, e                                       ; $74d3: $63
    inc c                                         ; $74d4: $0c
    rlca                                          ; $74d5: $07
    nop                                           ; $74d6: $00
    add $00                                       ; $74d7: $c6 $00
    nop                                           ; $74d9: $00
    nop                                           ; $74da: $00
    add hl, hl                                    ; $74db: $29
    dec h                                         ; $74dc: $25
    add $10                                       ; $74dd: $c6 $10
    adc $39                                       ; $74df: $ce $39

jr_0b5_74e1:
    dec b                                         ; $74e1: $05
    nop                                           ; $74e2: $00

jr_0b5_74e3:
    ei                                            ; $74e3: $fb
    dec a                                         ; $74e4: $3d
    sub e                                         ; $74e5: $93
    db $10                                        ; $74e6: $10
    add a                                         ; $74e7: $87
    stop                                          ; $74e8: $10 $00
    nop                                           ; $74ea: $00
    db $10                                        ; $74eb: $10
    ld b, d                                       ; $74ec: $42
    rst $38                                       ; $74ed: $ff
    ld a, a                                       ; $74ee: $7f
    nop                                           ; $74ef: $00
    jr nz, jr_0b5_74f2                            ; $74f0: $20 $00

jr_0b5_74f2:
    nop                                           ; $74f2: $00
    rst $38                                       ; $74f3: $ff
    ld a, a                                       ; $74f4: $7f
    nop                                           ; $74f5: $00
    jr nz, jr_0b5_7537                            ; $74f6: $20 $3f

    ld e, e                                       ; $74f8: $5b
    dec h                                         ; $74f9: $25
    nop                                           ; $74fa: $00
    xor b                                         ; $74fb: $a8
    ld e, c                                       ; $74fc: $59
    db $fd                                        ; $74fd: $fd
    dec a                                         ; $74fe: $3d
    xor c                                         ; $74ff: $a9
    inc c                                         ; $7500: $0c
    adc b                                         ; $7501: $88
    nop                                           ; $7502: $00
    ld [hl], $3a                                  ; $7503: $36 $3a

jr_0b5_7505:
    rra                                           ; $7505: $1f
    ld d, a                                       ; $7506: $57

jr_0b5_7507:
    or c                                          ; $7507: $b1
    dec l                                         ; $7508: $2d
    dec h                                         ; $7509: $25
    nop                                           ; $750a: $00
    rst $28                                       ; $750b: $ef
    dec a                                         ; $750c: $3d
    and l                                         ; $750d: $a5
    inc d                                         ; $750e: $14
    ld [$4b21], sp                                ; $750f: $08 $21 $4b
    add hl, hl                                    ; $7512: $29
    ld [hl], e                                    ; $7513: $73
    ld c, [hl]                                    ; $7514: $4e
    db $10                                        ; $7515: $10
    ld b, d                                       ; $7516: $42
    add hl, sp                                    ; $7517: $39
    ld h, a                                       ; $7518: $67
    ld h, $04                                     ; $7519: $26 $04
    call c, $9539                                 ; $751b: $dc $39 $95
    db $10                                        ; $751e: $10
    db $dd                                        ; $751f: $dd
    ld e, d                                       ; $7520: $5a
    nop                                           ; $7521: $00
    nop                                           ; $7522: $00
    rst $38                                       ; $7523: $ff
    ld a, a                                       ; $7524: $7f
    nop                                           ; $7525: $00
    jr nz, jr_0b5_7505                            ; $7526: $20 $dd

    ld e, d                                       ; $7528: $5a
    nop                                           ; $7529: $00
    nop                                           ; $752a: $00
    rst $38                                       ; $752b: $ff
    ld a, a                                       ; $752c: $7f
    nop                                           ; $752d: $00
    jr nz, jr_0b5_74e1                            ; $752e: $20 $b1

    dec l                                         ; $7530: $2d
    ld b, $00                                     ; $7531: $06 $00
    xor b                                         ; $7533: $a8
    ld e, c                                       ; $7534: $59
    db $fd                                        ; $7535: $fd
    add hl, sp                                    ; $7536: $39

jr_0b5_7537:
    xor l                                         ; $7537: $ad
    jr nz, jr_0b5_74e3                            ; $7538: $20 $a9

    inc b                                         ; $753a: $04
    ld e, b                                       ; $753b: $58
    ld b, d                                       ; $753c: $42
    ld e, $57                                     ; $753d: $1e $57
    ld c, [hl]                                    ; $753f: $4e
    dec e                                         ; $7540: $1d
    ld b, [hl]                                    ; $7541: $46
    ld [$294c], sp                                ; $7542: $08 $4c $29
    db $fd                                        ; $7545: $fd
    dec a                                         ; $7546: $3d
    db $10                                        ; $7547: $10
    ld b, d                                       ; $7548: $42
    ld h, l                                       ; $7549: $65
    inc c                                         ; $754a: $0c
    rst $28                                       ; $754b: $ef
    add hl, sp                                    ; $754c: $39
    ld a, e                                       ; $754d: $7b
    ld d, e                                       ; $754e: $53
    ld c, e                                       ; $754f: $4b
    add hl, bc                                    ; $7550: $09
    dec b                                         ; $7551: $05
    nop                                           ; $7552: $00
    or l                                          ; $7553: $b5
    inc d                                         ; $7554: $14
    cp d                                          ; $7555: $ba
    dec [hl]                                      ; $7556: $35
    cp l                                          ; $7557: $bd
    ld d, [hl]                                    ; $7558: $56
    nop                                           ; $7559: $00
    nop                                           ; $755a: $00

jr_0b5_755b:
    rst $38                                       ; $755b: $ff
    ld a, a                                       ; $755c: $7f
    nop                                           ; $755d: $00
    jr nz, @-$41                                  ; $755e: $20 $bd

    ld d, [hl]                                    ; $7560: $56
    nop                                           ; $7561: $00
    nop                                           ; $7562: $00
    rst $38                                       ; $7563: $ff
    ld a, a                                       ; $7564: $7f
    nop                                           ; $7565: $00
    jr nz, jr_0b5_75b6                            ; $7566: $20 $4e

    dec e                                         ; $7568: $1d
    ld h, $0c                                     ; $7569: $26 $0c
    xor b                                         ; $756b: $a8
    ld e, c                                       ; $756c: $59
    ld [hl], e                                    ; $756d: $73
    inc c                                         ; $756e: $0c
    ld e, l                                       ; $756f: $5d
    ld c, d                                       ; $7570: $4a
    ld h, [hl]                                    ; $7571: $66
    nop                                           ; $7572: $00
    ccf                                           ; $7573: $3f
    ld d, a                                       ; $7574: $57
    sub d                                         ; $7575: $92
    ld hl, $14bb                                  ; $7576: $21 $bb $14
    ld h, $04                                     ; $7579: $26 $04
    ld e, h                                       ; $757b: $5c
    add hl, hl                                    ; $757c: $29
    cp l                                          ; $757d: $bd
    ld d, [hl]                                    ; $757e: $56
    pop af                                        ; $757f: $f1
    inc e                                         ; $7580: $1c
    ret z                                         ; $7581: $c8

    inc b                                         ; $7582: $04
    ld e, b                                       ; $7583: $58
    ld b, c                                       ; $7584: $41
    sbc $37                                       ; $7585: $de $37
    rst $38                                       ; $7587: $ff
    ld a, a                                       ; $7588: $7f
    dec b                                         ; $7589: $05
    nop                                           ; $758a: $00
    db $db                                        ; $758b: $db
    add hl, sp                                    ; $758c: $39
    sub h                                         ; $758d: $94
    db $10                                        ; $758e: $10
    rst $38                                       ; $758f: $ff
    ld a, a                                       ; $7590: $7f
    nop                                           ; $7591: $00
    nop                                           ; $7592: $00
    rst $38                                       ; $7593: $ff
    ld a, a                                       ; $7594: $7f
    nop                                           ; $7595: $00
    jr nz, @+$01                                  ; $7596: $20 $ff

    ld a, a                                       ; $7598: $7f
    nop                                           ; $7599: $00

jr_0b5_759a:
    nop                                           ; $759a: $00
    rst $38                                       ; $759b: $ff
    ld a, a                                       ; $759c: $7f
    nop                                           ; $759d: $00
    jr nz, jr_0b5_755b                            ; $759e: $20 $bb

    inc d                                         ; $75a0: $14
    inc b                                         ; $75a1: $04
    nop                                           ; $75a2: $00
    cp h                                          ; $75a3: $bc
    dec [hl]                                      ; $75a4: $35
    sbc [hl]                                      ; $75a5: $9e
    ld [hl], e                                    ; $75a6: $73

jr_0b5_75a7:
    ld e, l                                       ; $75a7: $5d
    ld c, d                                       ; $75a8: $4a
    dec h                                         ; $75a9: $25
    nop                                           ; $75aa: $00
    sub $31                                       ; $75ab: $d6 $31
    pop de                                        ; $75ad: $d1
    db $10                                        ; $75ae: $10
    ld e, $57                                     ; $75af: $1e $57
    ei                                            ; $75b1: $fb
    inc e                                         ; $75b2: $1c
    sbc [hl]                                      ; $75b3: $9e
    ld d, d                                       ; $75b4: $52
    dec sp                                        ; $75b5: $3b

jr_0b5_75b6:
    dec h                                         ; $75b6: $25
    sbc $5a                                       ; $75b7: $de $5a
    adc c                                         ; $75b9: $89
    inc b                                         ; $75ba: $04
    ld a, l                                       ; $75bb: $7d
    inc sp                                        ; $75bc: $33
    cpl                                           ; $75bd: $2f
    ld l, b                                       ; $75be: $68
    cp b                                          ; $75bf: $b8
    inc d                                         ; $75c0: $14
    dec b                                         ; $75c1: $05
    nop                                           ; $75c2: $00
    db $fc                                        ; $75c3: $fc
    dec a                                         ; $75c4: $3d
    ld [hl], h                                    ; $75c5: $74
    inc c                                         ; $75c6: $0c
    rst $38                                       ; $75c7: $ff
    ld a, a                                       ; $75c8: $7f
    nop                                           ; $75c9: $00
    nop                                           ; $75ca: $00
    nop                                           ; $75cb: $00
    jr nz, jr_0b5_7642                            ; $75cc: $20 $74

    inc c                                         ; $75ce: $0c
    rst $38                                       ; $75cf: $ff
    ld a, a                                       ; $75d0: $7f
    nop                                           ; $75d1: $00
    nop                                           ; $75d2: $00
    nop                                           ; $75d3: $00
    jr nz, jr_0b5_75a7                            ; $75d4: $20 $d1

    db $10                                        ; $75d6: $10
    ld e, $57                                     ; $75d7: $1e $57
    nop                                           ; $75d9: $00
    nop                                           ; $75da: $00
    dec de                                        ; $75db: $1b
    ld hl, $7fff                                  ; $75dc: $21 $ff $7f
    sbc h                                         ; $75df: $9c
    ld sp, $0045                                  ; $75e0: $31 $45 $00
    sbc c                                         ; $75e3: $99
    dec l                                         ; $75e4: $2d
    db $fc                                        ; $75e5: $fc
    ld d, d                                       ; $75e6: $52
    sub b                                         ; $75e7: $90
    inc c                                         ; $75e8: $0c
    rlca                                          ; $75e9: $07
    nop                                           ; $75ea: $00
    sub h                                         ; $75eb: $94
    db $10                                        ; $75ec: $10
    ld c, [hl]                                    ; $75ed: $4e
    ld [$14b8], sp                                ; $75ee: $08 $b8 $14
    ld b, $00                                     ; $75f1: $06 $00
    cp d                                          ; $75f3: $ba
    inc d                                         ; $75f4: $14
    db $ed                                        ; $75f5: $ed
    ld [$2a57], sp                                ; $75f6: $08 $57 $2a
    nop                                           ; $75f9: $00
    nop                                           ; $75fa: $00
    rst $38                                       ; $75fb: $ff
    ld a, a                                       ; $75fc: $7f
    sub h                                         ; $75fd: $94
    db $10                                        ; $75fe: $10
    ld [$0000], sp                                ; $75ff: $08 $00 $00
    nop                                           ; $7602: $00
    nop                                           ; $7603: $00
    jr nz, jr_0b5_759a                            ; $7604: $20 $94

    db $10                                        ; $7606: $10
    ld [$0000], sp                                ; $7607: $08 $00 $00

jr_0b5_760a:
    nop                                           ; $760a: $00
    nop                                           ; $760b: $00
    jr nz, jr_0b5_760a                            ; $760c: $20 $fc

    ld d, d                                       ; $760e: $52
    sub b                                         ; $760f: $90
    inc c                                         ; $7610: $0c
    nop                                           ; $7611: $00
    nop                                           ; $7612: $00
    rst $38                                       ; $7613: $ff
    ld a, a                                       ; $7614: $7f
    jp c, Jump_000_1b18                           ; $7615: $da $18 $1b

    ld hl, $0025                                  ; $7618: $21 $25 $00

jr_0b5_761b:
    rst $10                                       ; $761b: $d7
    dec l                                         ; $761c: $2d
    rst $38                                       ; $761d: $ff
    ld d, d                                       ; $761e: $52
    xor [hl]                                      ; $761f: $ae
    db $10                                        ; $7620: $10
    rlca                                          ; $7621: $07
    nop                                           ; $7622: $00
    call c, $d039                                 ; $7623: $dc $39 $d0
    jr @+$0d                                      ; $7626: $18 $0b

    inc b                                         ; $7628: $04
    dec b                                         ; $7629: $05
    nop                                           ; $762a: $00
    ld l, h                                       ; $762b: $6c
    dec l                                         ; $762c: $2d
    add hl, de                                    ; $762d: $19
    ld hl, $18c6                                  ; $762e: $21 $c6 $18
    ld bc, $5b00                                  ; $7631: $01 $00 $5b
    ld c, d                                       ; $7634: $4a
    ld a, [c]                                     ; $7635: $f2
    inc e                                         ; $7636: $1c
    rst $38                                       ; $7637: $ff
    ld a, a                                       ; $7638: $7f
    nop                                           ; $7639: $00
    jr nz, jr_0b5_7697                            ; $763a: $20 $5b

    ld c, d                                       ; $763c: $4a
    ld a, [c]                                     ; $763d: $f2
    inc e                                         ; $763e: $1c
    rst $38                                       ; $763f: $ff
    ld a, a                                       ; $7640: $7f
    nop                                           ; $7641: $00

jr_0b5_7642:
    jr nz, jr_0b5_761b                            ; $7642: $20 $d7

    dec l                                         ; $7644: $2d
    rst $38                                       ; $7645: $ff
    ld d, d                                       ; $7646: $52
    xor [hl]                                      ; $7647: $ae
    db $10                                        ; $7648: $10
    ld bc, $ff00                                  ; $7649: $01 $00 $ff
    ld a, a                                       ; $764c: $7f
    ld d, [hl]                                    ; $764d: $56
    ld [hl], $d9                                  ; $764e: $36 $d9
    jr jr_0b5_7697                                ; $7650: $18 $45

    nop                                           ; $7652: $00
    reti                                          ; $7653: $d9


    dec [hl]                                      ; $7654: $35

jr_0b5_7655:
    inc d                                         ; $7655: $14
    dec e                                         ; $7656: $1d
    sbc $4e                                       ; $7657: $de $4e
    ld a, [hl+]                                   ; $7659: $2a
    inc b                                         ; $765a: $04
    ld a, d                                       ; $765b: $7a
    dec l                                         ; $765c: $2d
    sub l                                         ; $765d: $95
    db $10                                        ; $765e: $10
    db $fd                                        ; $765f: $fd
    dec a                                         ; $7660: $3d
    inc h                                         ; $7661: $24
    inc b                                         ; $7662: $04
    adc h                                         ; $7663: $8c
    ld sp, $35bb                                  ; $7664: $31 $bb $35
    db $10                                        ; $7667: $10
    ld b, d                                       ; $7668: $42
    nop                                           ; $7669: $00
    ld [$7fff], sp                                ; $766a: $08 $ff $7f
    sub b                                         ; $766d: $90
    db $10                                        ; $766e: $10
    rlca                                          ; $766f: $07

jr_0b5_7670:
    nop                                           ; $7670: $00
    nop                                           ; $7671: $00
    jr nz, @+$01                                  ; $7672: $20 $ff

    ld a, a                                       ; $7674: $7f
    sub b                                         ; $7675: $90
    db $10                                        ; $7676: $10
    rlca                                          ; $7677: $07
    nop                                           ; $7678: $00
    nop                                           ; $7679: $00
    jr nz, jr_0b5_7655                            ; $767a: $20 $d9

    dec [hl]                                      ; $767c: $35
    inc d                                         ; $767d: $14
    dec e                                         ; $767e: $1d
    sbc $4e                                       ; $767f: $de $4e
    ld bc, $bb08                                  ; $7681: $01 $08 $bb
    ld c, d                                       ; $7684: $4a
    cp c                                          ; $7685: $b9
    inc d                                         ; $7686: $14
    rst $38                                       ; $7687: $ff
    ld a, a                                       ; $7688: $7f
    add a                                         ; $7689: $87
    inc b                                         ; $768a: $04
    cp h                                          ; $768b: $bc
    ld c, d                                       ; $768c: $4a
    jp nc, $952d                                  ; $768d: $d2 $2d $95

    db $10                                        ; $7690: $10
    ld a, [hl+]                                   ; $7691: $2a
    inc b                                         ; $7692: $04
    sbc c                                         ; $7693: $99
    ld sp, $673f                                  ; $7694: $31 $3f $67

jr_0b5_7697:
    sub l                                         ; $7697: $95
    db $10                                        ; $7698: $10
    ld b, [hl]                                    ; $7699: $46
    ld [$39ae], sp                                ; $769a: $08 $ae $39
    sub l                                         ; $769d: $95
    db $10                                        ; $769e: $10
    ccf                                           ; $769f: $3f
    ld h, a                                       ; $76a0: $67
    ld bc, $ff00                                  ; $76a1: $01 $00 $ff
    ld a, a                                       ; $76a4: $7f
    sub l                                         ; $76a5: $95
    stop                                          ; $76a6: $10 $00
    jr nz, jr_0b5_76aa                            ; $76a8: $20 $00

jr_0b5_76aa:
    jr nz, @+$01                                  ; $76aa: $20 $ff

    ld a, a                                       ; $76ac: $7f
    sub l                                         ; $76ad: $95
    stop                                          ; $76ae: $10 $00
    jr nz, jr_0b5_76b2                            ; $76b0: $20 $00

jr_0b5_76b2:
    jr nz, jr_0b5_7670                            ; $76b2: $20 $bc

    ld c, d                                       ; $76b4: $4a
    jp nc, $952d                                  ; $76b5: $d2 $2d $95

    stop                                          ; $76b8: $10 $00
    nop                                           ; $76ba: $00
    rra                                           ; $76bb: $1f
    ld d, a                                       ; $76bc: $57
    rst $38                                       ; $76bd: $ff
    ld a, a                                       ; $76be: $7f
    nop                                           ; $76bf: $00
    jr nz, jr_0b5_76c2                            ; $76c0: $20 $00

jr_0b5_76c2:
    nop                                           ; $76c2: $00
    or b                                          ; $76c3: $b0
    db $10                                        ; $76c4: $10
    ld e, b                                       ; $76c5: $58
    ld a, $28                                     ; $76c6: $3e $28
    nop                                           ; $76c8: $00
    nop                                           ; $76c9: $00
    nop                                           ; $76ca: $00
    rst $38                                       ; $76cb: $ff
    ld a, a                                       ; $76cc: $7f
    sub l                                         ; $76cd: $95
    stop                                          ; $76ce: $10 $00

jr_0b5_76d0:
    jr nz, jr_0b5_76d2                            ; $76d0: $20 $00

jr_0b5_76d2:
    nop                                           ; $76d2: $00
    rst $38                                       ; $76d3: $ff
    ld a, a                                       ; $76d4: $7f
    sub l                                         ; $76d5: $95
    stop                                          ; $76d6: $10 $00

jr_0b5_76d8:
    jr nz, jr_0b5_76da                            ; $76d8: $20 $00

jr_0b5_76da:
    nop                                           ; $76da: $00
    rst $38                                       ; $76db: $ff
    ld a, a                                       ; $76dc: $7f
    nop                                           ; $76dd: $00
    jr nz, jr_0b5_76e0                            ; $76de: $20 $00

jr_0b5_76e0:
    jr nz, jr_0b5_76e2                            ; $76e0: $20 $00

jr_0b5_76e2:
    jr nz, @+$01                                  ; $76e2: $20 $ff

    ld a, a                                       ; $76e4: $7f
    nop                                           ; $76e5: $00
    jr nz, jr_0b5_76e8                            ; $76e6: $20 $00

jr_0b5_76e8:
    jr nz, jr_0b5_76ea                            ; $76e8: $20 $00

jr_0b5_76ea:
    jr nz, @-$4e                                  ; $76ea: $20 $b0

    db $10                                        ; $76ec: $10
    ld e, b                                       ; $76ed: $58
    ld a, $28                                     ; $76ee: $3e $28
    nop                                           ; $76f0: $00
    nop                                           ; $76f1: $00
    nop                                           ; $76f2: $00
    rst $38                                       ; $76f3: $ff
    ld a, a                                       ; $76f4: $7f
    nop                                           ; $76f5: $00
    jr nz, jr_0b5_7720                            ; $76f6: $20 $28

    nop                                           ; $76f8: $00
    nop                                           ; $76f9: $00
    nop                                           ; $76fa: $00
    rst $38                                       ; $76fb: $ff
    ld a, a                                       ; $76fc: $7f
    nop                                           ; $76fd: $00
    jr nz, jr_0b5_7728                            ; $76fe: $20 $28

    nop                                           ; $7700: $00
    nop                                           ; $7701: $00
    nop                                           ; $7702: $00
    nop                                           ; $7703: $00
    jr nz, jr_0b5_7706                            ; $7704: $20 $00

jr_0b5_7706:
    jr nz, jr_0b5_7708                            ; $7706: $20 $00

jr_0b5_7708:
    jr nz, jr_0b5_770a                            ; $7708: $20 $00

jr_0b5_770a:
    nop                                           ; $770a: $00
    nop                                           ; $770b: $00
    jr nz, jr_0b5_770e                            ; $770c: $20 $00

jr_0b5_770e:
    jr nz, jr_0b5_7710                            ; $770e: $20 $00

jr_0b5_7710:
    jr nz, jr_0b5_7712                            ; $7710: $20 $00

jr_0b5_7712:
    nop                                           ; $7712: $00
    nop                                           ; $7713: $00
    jr nz, jr_0b5_7716                            ; $7714: $20 $00

jr_0b5_7716:
    jr nz, jr_0b5_7718                            ; $7716: $20 $00

jr_0b5_7718:
    jr nz, jr_0b5_771a                            ; $7718: $20 $00

jr_0b5_771a:
    jr nz, jr_0b5_771c                            ; $771a: $20 $00

jr_0b5_771c:
    jr nz, jr_0b5_771e                            ; $771c: $20 $00

jr_0b5_771e:
    jr nz, jr_0b5_7720                            ; $771e: $20 $00

jr_0b5_7720:
    jr nz, jr_0b5_7722                            ; $7720: $20 $00

jr_0b5_7722:
    jr nz, jr_0b5_7724                            ; $7722: $20 $00

jr_0b5_7724:
    jr nz, jr_0b5_773e                            ; $7724: $20 $18

    ld [hl], a                                    ; $7726: $77
    ld c, b                                       ; $7727: $48

jr_0b5_7728:
    ld b, l                                       ; $7728: $45
    nop                                           ; $7729: $00
    jr nz, jr_0b5_772c                            ; $772a: $20 $00

jr_0b5_772c:
    jr nz, jr_0b5_7746                            ; $772c: $20 $18

    ld [hl], a                                    ; $772e: $77
    ld c, b                                       ; $772f: $48
    ld b, l                                       ; $7730: $45
    nop                                           ; $7731: $00
    jr nz, jr_0b5_7734                            ; $7732: $20 $00

jr_0b5_7734:
    jr nz, jr_0b5_774e                            ; $7734: $20 $18

    ld [hl], a                                    ; $7736: $77
    ld c, b                                       ; $7737: $48
    ld b, l                                       ; $7738: $45
    nop                                           ; $7739: $00
    jr nz, jr_0b5_76d0                            ; $773a: $20 $94

    ld [hl], d                                    ; $773c: $72
    sbc h                                         ; $773d: $9c

jr_0b5_773e:
    ld a, e                                       ; $773e: $7b
    cp l                                          ; $773f: $bd
    ld a, e                                       ; $7740: $7b
    nop                                           ; $7741: $00
    jr nz, jr_0b5_76d8                            ; $7742: $20 $94

    ld [hl], d                                    ; $7744: $72
    sbc h                                         ; $7745: $9c

jr_0b5_7746:
    ld a, e                                       ; $7746: $7b
    cp l                                          ; $7747: $bd
    ld a, e                                       ; $7748: $7b
    nop                                           ; $7749: $00
    jr nz, jr_0b5_76e0                            ; $774a: $20 $94

    ld [hl], d                                    ; $774c: $72
    sbc h                                         ; $774d: $9c

jr_0b5_774e:
    ld a, e                                       ; $774e: $7b
    cp l                                          ; $774f: $bd
    ld a, e                                       ; $7750: $7b
    nop                                           ; $7751: $00
    jr nz, jr_0b5_76e8                            ; $7752: $20 $94

    ld [hl], d                                    ; $7754: $72
    sbc h                                         ; $7755: $9c

jr_0b5_7756:
    ld a, e                                       ; $7756: $7b
    cp l                                          ; $7757: $bd
    ld a, e                                       ; $7758: $7b
    nop                                           ; $7759: $00
    jr nz, jr_0b5_775c                            ; $775a: $20 $00

jr_0b5_775c:
    jr nz, jr_0b5_7776                            ; $775c: $20 $18

    ld [hl], a                                    ; $775e: $77
    ld c, b                                       ; $775f: $48
    ld b, l                                       ; $7760: $45
    nop                                           ; $7761: $00
    jr nz, jr_0b5_7764                            ; $7762: $20 $00

jr_0b5_7764:
    jr nz, jr_0b5_777e                            ; $7764: $20 $18

    ld [hl], a                                    ; $7766: $77
    ld c, b                                       ; $7767: $48
    ld b, l                                       ; $7768: $45
    nop                                           ; $7769: $00
    jr nz, jr_0b5_776c                            ; $776a: $20 $00

jr_0b5_776c:
    jr nz, jr_0b5_7786                            ; $776c: $20 $18

    ld [hl], a                                    ; $776e: $77
    ld c, b                                       ; $776f: $48
    ld b, l                                       ; $7770: $45
    nop                                           ; $7771: $00
    nop                                           ; $7772: $00
    adc h                                         ; $7773: $8c
    ld e, c                                       ; $7774: $59
    or [hl]                                       ; $7775: $b6

jr_0b5_7776:
    halt                                          ; $7776: $76
    add $38                                       ; $7777: $c6 $38
    nop                                           ; $7779: $00
    nop                                           ; $777a: $00
    sbc h                                         ; $777b: $9c
    ld a, a                                       ; $777c: $7f
    nop                                           ; $777d: $00

jr_0b5_777e:
    jr nz, jr_0b5_7746                            ; $777e: $20 $c6

    jr c, jr_0b5_7782                             ; $7780: $38 $00

jr_0b5_7782:
    jr nz, jr_0b5_7720                            ; $7782: $20 $9c

    ld a, a                                       ; $7784: $7f
    nop                                           ; $7785: $00

jr_0b5_7786:
    jr nz, jr_0b5_774e                            ; $7786: $20 $c6

    jr c, jr_0b5_778a                             ; $7788: $38 $00

jr_0b5_778a:
    jr nz, jr_0b5_7728                            ; $778a: $20 $9c

    ld a, a                                       ; $778c: $7f
    nop                                           ; $778d: $00
    jr nz, jr_0b5_7756                            ; $778e: $20 $c6

    jr c, jr_0b5_7792                             ; $7790: $38 $00

jr_0b5_7792:
    nop                                           ; $7792: $00
    nop                                           ; $7793: $00
    jr nz, jr_0b5_77ae                            ; $7794: $20 $18

    ld [hl], a                                    ; $7796: $77
    ld c, b                                       ; $7797: $48
    ld b, l                                       ; $7798: $45
    nop                                           ; $7799: $00
    nop                                           ; $779a: $00
    nop                                           ; $779b: $00
    jr nz, @+$1a                                  ; $779c: $20 $18

    ld [hl], a                                    ; $779e: $77
    ld c, b                                       ; $779f: $48
    ld b, l                                       ; $77a0: $45
    nop                                           ; $77a1: $00
    jr nz, @-$19                                  ; $77a2: $20 $e5

    inc a                                         ; $77a4: $3c
    rst $28                                       ; $77a5: $ef
    ld h, c                                       ; $77a6: $61
    dec b                                         ; $77a7: $05
    dec a                                         ; $77a8: $3d
    nop                                           ; $77a9: $00
    nop                                           ; $77aa: $00
    and $3c                                       ; $77ab: $e6 $3c
    ld [hl], h                                    ; $77ad: $74

jr_0b5_77ae:
    ld a, d                                       ; $77ae: $7a
    ld c, d                                       ; $77af: $4a
    ld e, c                                       ; $77b0: $59
    nop                                           ; $77b1: $00
    nop                                           ; $77b2: $00
    or l                                          ; $77b3: $b5
    halt                                          ; $77b4: $76
    ld [$0035], sp                                ; $77b5: $08 $35 $00
    jr nz, jr_0b5_77ba                            ; $77b8: $20 $00

jr_0b5_77ba:
    nop                                           ; $77ba: $00
    nop                                           ; $77bb: $00
    jr nz, jr_0b5_77c6                            ; $77bc: $20 $08

jr_0b5_77be:
    dec [hl]                                      ; $77be: $35
    nop                                           ; $77bf: $00
    jr nz, jr_0b5_77c2                            ; $77c0: $20 $00

jr_0b5_77c2:
    nop                                           ; $77c2: $00
    and $56                                       ; $77c3: $e6 $56
    nop                                           ; $77c5: $00

jr_0b5_77c6:
    jr nz, jr_0b5_77c8                            ; $77c6: $20 $00

jr_0b5_77c8:
    jr nz, jr_0b5_77ca                            ; $77c8: $20 $00

jr_0b5_77ca:
    nop                                           ; $77ca: $00
    ld b, d                                       ; $77cb: $42
    ld b, d                                       ; $77cc: $42
    nop                                           ; $77cd: $00
    jr nz, jr_0b5_77f1                            ; $77ce: $20 $21

    ld hl, $0000                                  ; $77d0: $21 $00 $00
    add [hl]                                      ; $77d3: $86
    ld c, d                                       ; $77d4: $4a
    nop                                           ; $77d5: $00
    jr nz, jr_0b5_77be                            ; $77d6: $20 $e6

    ld d, [hl]                                    ; $77d8: $56
    nop                                           ; $77d9: $00
    nop                                           ; $77da: $00
    ld l, d                                       ; $77db: $6a
    ld b, l                                       ; $77dc: $45

jr_0b5_77dd:
    jr nc, @+$58                                  ; $77dd: $30 $56

    nop                                           ; $77df: $00
    jr nz, jr_0b5_77e2                            ; $77e0: $20 $00

jr_0b5_77e2:
    nop                                           ; $77e2: $00
    db $10                                        ; $77e3: $10
    ld l, d                                       ; $77e4: $6a
    add $34                                       ; $77e5: $c6 $34
    rst $30                                       ; $77e7: $f7
    ld a, [hl]                                    ; $77e8: $7e
    nop                                           ; $77e9: $00
    inc c                                         ; $77ea: $0c
    xor l                                         ; $77eb: $ad
    ld d, c                                       ; $77ec: $51
    sub $7e                                       ; $77ed: $d6 $7e
    add $34                                       ; $77ef: $c6 $34

jr_0b5_77f1:
    nop                                           ; $77f1: $00
    nop                                           ; $77f2: $00
    and $56                                       ; $77f3: $e6 $56
    nop                                           ; $77f5: $00
    jr nz, jr_0b5_77be                            ; $77f6: $20 $c6

    inc [hl]                                      ; $77f8: $34
    nop                                           ; $77f9: $00
    nop                                           ; $77fa: $00
    add l                                         ; $77fb: $85
    ld h, e                                       ; $77fc: $63
    nop                                           ; $77fd: $00
    jr nz, @-$18                                  ; $77fe: $20 $e6

    ld d, [hl]                                    ; $7800: $56
    nop                                           ; $7801: $00
    nop                                           ; $7802: $00
    pop hl                                        ; $7803: $e1
    ld sp, $6383                                  ; $7804: $31 $83 $63
    nop                                           ; $7807: $00
    jr nz, jr_0b5_780a                            ; $7808: $20 $00

jr_0b5_780a:
    nop                                           ; $780a: $00
    nop                                           ; $780b: $00
    jr nz, jr_0b5_780e                            ; $780c: $20 $00

jr_0b5_780e:
    inc b                                         ; $780e: $04
    nop                                           ; $780f: $00
    jr nz, jr_0b5_7812                            ; $7810: $20 $00

jr_0b5_7812:
    nop                                           ; $7812: $00
    ld d, c                                       ; $7813: $51
    ld e, d                                       ; $7814: $5a
    jr c, jr_0b5_7886                             ; $7815: $38 $6f

    ld b, d                                       ; $7817: $42
    jr nz, jr_0b5_781a                            ; $7818: $20 $00

jr_0b5_781a:
    nop                                           ; $781a: $00
    adc $5d                                       ; $781b: $ce $5d
    push bc                                       ; $781d: $c5
    inc l                                         ; $781e: $2c
    ld [hl], e                                    ; $781f: $73
    ld a, d                                       ; $7820: $7a
    nop                                           ; $7821: $00
    nop                                           ; $7822: $00

jr_0b5_7823:
    adc $5d                                       ; $7823: $ce $5d
    rst $20                                       ; $7825: $e7
    jr c, jr_0b5_77dd                             ; $7826: $38 $b5

    ld a, d                                       ; $7828: $7a
    nop                                           ; $7829: $00
    jr nz, jr_0b5_7823                            ; $782a: $20 $f7

    ld l, d                                       ; $782c: $6a
    sbc $7f                                       ; $782d: $de $7f
    or l                                          ; $782f: $b5
    ld a, d                                       ; $7830: $7a
    nop                                           ; $7831: $00
    nop                                           ; $7832: $00
    jp Jump_000_0035                              ; $7833: $c3 $35 $00


    inc e                                         ; $7836: $1c
    db $e3                                        ; $7837: $e3
    ld d, d                                       ; $7838: $52
    nop                                           ; $7839: $00

jr_0b5_783a:
    nop                                           ; $783a: $00
    jp nz, $004e                                  ; $783b: $c2 $4e $00

    jr nz, @+$22                                  ; $783e: $20 $20

    ld hl, $2000                                  ; $7840: $21 $00 $20
    ld [hl], d                                    ; $7843: $72
    ld e, [hl]                                    ; $7844: $5e
    ld e, d                                       ; $7845: $5a
    ld [hl], e                                    ; $7846: $73
    or h                                          ; $7847: $b4
    ld h, d                                       ; $7848: $62
    nop                                           ; $7849: $00
    nop                                           ; $784a: $00
    ld sp, $786e                                  ; $784b: $31 $6e $78
    ld de, $7bde                                  ; $784e: $11 $de $7b
    ld [hl+], a                                   ; $7851: $22
    inc d                                         ; $7852: $14
    or h                                          ; $7853: $b4
    ld hl, $7a74                                  ; $7854: $21 $74 $7a
    sbc $4e                                       ; $7857: $de $4e
    ld hl, $290c                                  ; $7859: $21 $0c $29
    ld d, c                                       ; $785c: $51
    sub a                                         ; $785d: $97
    ld l, d                                       ; $785e: $6a
    call z, Call_000_000c                         ; $785f: $cc $0c $00
    jr nz, jr_0b5_783a                            ; $7862: $20 $d6

    ld h, [hl]                                    ; $7864: $66
    sbc $7b                                       ; $7865: $de $7b
    ld e, d                                       ; $7867: $5a
    ld [hl], e                                    ; $7868: $73
    nop                                           ; $7869: $00
    nop                                           ; $786a: $00
    adc e                                         ; $786b: $8b
    ld c, d                                       ; $786c: $4a
    db $fd                                        ; $786d: $fd
    ld a, a                                       ; $786e: $7f
    nop                                           ; $786f: $00
    jr nz, jr_0b5_7872                            ; $7870: $20 $00

jr_0b5_7872:
    nop                                           ; $7872: $00
    ld h, e                                       ; $7873: $63
    ld b, d                                       ; $7874: $42
    nop                                           ; $7875: $00
    jr nz, jr_0b5_78df                            ; $7876: $20 $67

    ld h, e                                       ; $7878: $63
    nop                                           ; $7879: $00
    inc c                                         ; $787a: $0c
    ld l, a                                       ; $787b: $6f
    ld e, d                                       ; $787c: $5a
    sbc $7b                                       ; $787d: $de $7b
    or $66                                        ; $787f: $f6 $66
    nop                                           ; $7881: $00
    nop                                           ; $7882: $00
    sub a                                         ; $7883: $97
    dec d                                         ; $7884: $15
    ld d, d                                       ; $7885: $52

jr_0b5_7886:
    halt                                          ; $7886: $76
    sbc $4e                                       ; $7887: $de $4e
    jr nz, jr_0b5_78a7                            ; $7889: $20 $1c

    rst $08                                       ; $788b: $cf
    ld l, c                                       ; $788c: $69
    sub e                                         ; $788d: $93

jr_0b5_788e:
    ld hl, $4ede                                  ; $788e: $21 $de $4e
    ld b, e                                       ; $7891: $43
    nop                                           ; $7892: $00
    rst $08                                       ; $7893: $cf
    ld l, c                                       ; $7894: $69
    sub a                                         ; $7895: $97
    dec d                                         ; $7896: $15
    sbc $4e                                       ; $7897: $de $4e
    nop                                           ; $7899: $00
    inc b                                         ; $789a: $04
    sub $66                                       ; $789b: $d6 $66
    or b                                          ; $789d: $b0
    ld hl, $7bde                                  ; $789e: $21 $de $7b
    nop                                           ; $78a1: $00
    nop                                           ; $78a2: $00
    dec l                                         ; $78a3: $2d
    ld b, d                                       ; $78a4: $42
    ld sp, hl                                     ; $78a5: $f9
    ld a, a                                       ; $78a6: $7f

jr_0b5_78a7:
    nop                                           ; $78a7: $00
    inc e                                         ; $78a8: $1c
    nop                                           ; $78a9: $00
    ld [$4548], sp                                ; $78aa: $08 $48 $45
    nop                                           ; $78ad: $00
    jr nz, jr_0b5_788e                            ; $78ae: $20 $de

    ld c, [hl]                                    ; $78b0: $4e
    nop                                           ; $78b1: $00
    nop                                           ; $78b2: $00
    xor c                                         ; $78b3: $a9
    ld sp, $5b09                                  ; $78b4: $31 $09 $5b
    sbc c                                         ; $78b7: $99
    ld de, $0000                                  ; $78b8: $11 $00 $00
    sbc c                                         ; $78bb: $99
    ld de, $5a99                                  ; $78bc: $11 $99 $5a
    rst $00                                       ; $78bf: $c7
    jr z, @+$62                                   ; $78c0: $28 $60

    nop                                           ; $78c2: $00
    sub d                                         ; $78c3: $92
    ld d, [hl]                                    ; $78c4: $56
    ld e, [hl]                                    ; $78c5: $5e
    ld h, e                                       ; $78c6: $63
    rlca                                          ; $78c7: $07
    dec h                                         ; $78c8: $25

jr_0b5_78c9:
    nop                                           ; $78c9: $00
    inc c                                         ; $78ca: $0c
    sbc c                                         ; $78cb: $99
    ld de, $571e                                  ; $78cc: $11 $1e $57
    db $e3                                        ; $78cf: $e3
    dec d                                         ; $78d0: $15
    nop                                           ; $78d1: $00
    nop                                           ; $78d2: $00
    ld c, c                                       ; $78d3: $49
    ld b, [hl]                                    ; $78d4: $46
    sbc c                                         ; $78d5: $99
    ld de, $6b88                                  ; $78d6: $11 $88 $6b
    nop                                           ; $78d9: $00
    nop                                           ; $78da: $00
    db $ed                                        ; $78db: $ed
    ld d, c                                       ; $78dc: $51
    rst $30                                       ; $78dd: $f7
    ld l, d                                       ; $78de: $6a

jr_0b5_78df:
    nop                                           ; $78df: $00
    jr nz, jr_0b5_78e2                            ; $78e0: $20 $00

jr_0b5_78e2:
    jr nz, jr_0b5_78c9                            ; $78e2: $20 $e5

    inc a                                         ; $78e4: $3c
    adc e                                         ; $78e5: $8b
    ld c, c                                       ; $78e6: $49
    daa                                           ; $78e7: $27
    ld b, c                                       ; $78e8: $41
    jr nz, jr_0b5_78ef                            ; $78e9: $20 $04

    xor d                                         ; $78eb: $aa
    ld d, [hl]                                    ; $78ec: $56
    or h                                          ; $78ed: $b4
    ld [hl], e                                    ; $78ee: $73

jr_0b5_78ef:
    add l                                         ; $78ef: $85
    dec l                                         ; $78f0: $2d
    ld [hl+], a                                   ; $78f1: $22
    ld [$1597], sp                                ; $78f2: $08 $97 $15
    rst $28                                       ; $78f5: $ef
    ld d, c                                       ; $78f6: $51
    dec [hl]                                      ; $78f7: $35
    ld a, e                                       ; $78f8: $7b
    ld h, b                                       ; $78f9: $60
    nop                                           ; $78fa: $00
    cp l                                          ; $78fb: $bd
    ld c, d                                       ; $78fc: $4a
    ld [hl], d                                    ; $78fd: $72
    ld hl, $2943                                  ; $78fe: $21 $43 $29
    ld b, b                                       ; $7901: $40
    nop                                           ; $7902: $00
    cp l                                          ; $7903: $bd
    ld c, d                                       ; $7904: $4a
    jr z, jr_0b5_7924                             ; $7905: $28 $1d

    cp $7b                                        ; $7907: $fe $7b

jr_0b5_7909:
    nop                                           ; $7909: $00
    nop                                           ; $790a: $00
    xor l                                         ; $790b: $ad
    ld d, d                                       ; $790c: $52
    sbc b                                         ; $790d: $98
    ld de, $77d6                                  ; $790e: $11 $d6 $77
    nop                                           ; $7911: $00
    jr nz, jr_0b5_795d                            ; $7912: $20 $49

    ld c, c                                       ; $7914: $49
    ld [hl], d                                    ; $7915: $72
    ld e, [hl]                                    ; $7916: $5e
    dec b                                         ; $7917: $05
    dec a                                         ; $7918: $3d
    nop                                           ; $7919: $00
    jr jr_0b5_7909                                ; $791a: $18 $ed

    ld d, l                                       ; $791c: $55
    daa                                           ; $791d: $27
    ld b, c                                       ; $791e: $41
    sub h                                         ; $791f: $94
    ld l, [hl]                                    ; $7920: $6e
    jr nz, jr_0b5_7923                            ; $7921: $20 $00

jr_0b5_7923:
    and c                                         ; $7923: $a1

jr_0b5_7924:
    ld c, d                                       ; $7924: $4a
    sbc b                                         ; $7925: $98
    ld de, $52c7                                  ; $7926: $11 $c7 $52
    ld b, e                                       ; $7929: $43
    inc d                                         ; $792a: $14
    inc b                                         ; $792b: $04
    ld d, a                                       ; $792c: $57
    or b                                          ; $792d: $b0
    ld [hl], e                                    ; $792e: $73
    ld l, [hl]                                    ; $792f: $6e
    ld e, c                                       ; $7930: $59
    ld bc, $f710                                  ; $7931: $01 $10 $f7
    dec l                                         ; $7934: $2d
    jr nc, @+$70                                  ; $7935: $30 $6e

    push bc                                       ; $7937: $c5
    inc a                                         ; $7938: $3c
    nop                                           ; $7939: $00
    ld [$39f0], sp                                ; $793a: $08 $f0 $39
    add hl, de                                    ; $793d: $19
    ld d, a                                       ; $793e: $57
    inc hl                                        ; $793f: $23
    ld sp, $0000                                  ; $7940: $31 $00 $00
    sbc b                                         ; $7943: $98
    ld de, $2560                                  ; $7944: $11 $60 $25
    ld [c], a                                     ; $7947: $e2
    dec [hl]                                      ; $7948: $35
    nop                                           ; $7949: $00
    inc e                                         ; $794a: $1c
    ld c, b                                       ; $794b: $48
    ld b, l                                       ; $794c: $45
    ld sp, $9862                                  ; $794d: $31 $62 $98
    ld de, $0400                                  ; $7950: $11 $00 $04
    ld sp, $736a                                  ; $7953: $31 $6a $73
    dec h                                         ; $7956: $25
    ld e, e                                       ; $7957: $5b
    ld [hl], a                                    ; $7958: $77
    jr nz, jr_0b5_795b                            ; $7959: $20 $00

jr_0b5_795b:
    ld b, a                                       ; $795b: $47
    dec [hl]                                      ; $795c: $35

jr_0b5_795d:
    ld [de], a                                    ; $795d: $12
    ld d, [hl]                                    ; $795e: $56
    and a                                         ; $795f: $a7
    inc h                                         ; $7960: $24
    ld hl, $2008                                  ; $7961: $21 $08 $20
    ld a, $cf                                     ; $7964: $3e $cf
    ld h, l                                       ; $7966: $65
    add [hl]                                      ; $7967: $86
    jr z, jr_0b5_796a                             ; $7968: $28 $00

jr_0b5_796a:
    inc b                                         ; $796a: $04
    rst $28                                       ; $796b: $ef
    ld e, l                                       ; $796c: $5d
    sbc h                                         ; $796d: $9c
    ld b, d                                       ; $796e: $42
    ret z                                         ; $796f: $c8

    inc e                                         ; $7970: $1c
    ld hl, $8b04                                  ; $7971: $21 $04 $8b
    ld d, l                                       ; $7974: $55
    push hl                                       ; $7975: $e5
    inc [hl]                                      ; $7976: $34
    sbc c                                         ; $7977: $99
    ld e, [hl]                                    ; $7978: $5e
    jr nz, @+$06                                  ; $7979: $20 $04

    ld a, [hl+]                                   ; $797b: $2a
    add hl, sp                                    ; $797c: $39
    sbc b                                         ; $797d: $98
    ld de, $4df0                                  ; $797e: $11 $f0 $4d
    nop                                           ; $7981: $00
    inc e                                         ; $7982: $1c
    sbc b                                         ; $7983: $98
    ld de, $6210                                  ; $7984: $11 $10 $62
    sbc h                                         ; $7987: $9c
    ld a, e                                       ; $7988: $7b
    nop                                           ; $7989: $00
    nop                                           ; $798a: $00
    sub [hl]                                      ; $798b: $96
    ld l, d                                       ; $798c: $6a
    sbc l                                         ; $798d: $9d
    ld a, e                                       ; $798e: $7b
    ld a, [$006e]                                 ; $798f: $fa $6e $00
    nop                                           ; $7992: $00
    ld c, [hl]                                    ; $7993: $4e
    ld c, c                                       ; $7994: $49
    and a                                         ; $7995: $a7
    jr z, jr_0b5_79cd                             ; $7996: $28 $35

    ld h, d                                       ; $7998: $62
    ld bc, $b604                                  ; $7999: $01 $04 $b6
    ld a, d                                       ; $799c: $7a
    add hl, bc                                    ; $799d: $09
    dec a                                         ; $799e: $3d
    and d                                         ; $799f: $a2
    jr nz, jr_0b5_79c3                            ; $79a0: $20 $21

    db $10                                        ; $79a2: $10
    ld sp, $2c66                                  ; $79a3: $31 $66 $2c
    ld hl, $4128                                  ; $79a6: $21 $28 $41
    jr nz, @+$06                                  ; $79a9: $20 $04

    xor h                                         ; $79ab: $ac
    ld h, c                                       ; $79ac: $61
    rst $00                                       ; $79ad: $c7
    jr z, jr_0b5_7a24                             ; $79ae: $28 $74

    ld a, d                                       ; $79b0: $7a
    ld bc, $af00                                  ; $79b1: $01 $00 $af
    ld c, c                                       ; $79b4: $49
    and a                                         ; $79b5: $a7
    jr z, @-$25                                   ; $79b6: $28 $d9

    ld [hl], d                                    ; $79b8: $72
    nop                                           ; $79b9: $00
    inc e                                         ; $79ba: $1c
    sbc b                                         ; $79bb: $98
    ld de, $6eb6                                  ; $79bc: $11 $b6 $6e
    ld b, $41                                     ; $79bf: $06 $41
    nop                                           ; $79c1: $00
    nop                                           ; $79c2: $00

jr_0b5_79c3:
    cp l                                          ; $79c3: $bd
    ld a, e                                       ; $79c4: $7b
    ld d, e                                       ; $79c5: $53

jr_0b5_79c6:
    ld [bc], a                                    ; $79c6: $02
    ld b, e                                       ; $79c7: $43
    jr nz, jr_0b5_79ca                            ; $79c8: $20 $00

jr_0b5_79ca:
    nop                                           ; $79ca: $00
    sub l                                         ; $79cb: $95
    ld [bc], a                                    ; $79cc: $02

jr_0b5_79cd:
    and a                                         ; $79cd: $a7
    inc l                                         ; $79ce: $2c
    ld a, [hl-]                                   ; $79cf: $3a
    inc bc                                        ; $79d0: $03
    nop                                           ; $79d1: $00
    nop                                           ; $79d2: $00
    rst $10                                       ; $79d3: $d7
    ld a, d                                       ; $79d4: $7a
    rst $20                                       ; $79d5: $e7
    jr c, jr_0b5_7a3b                             ; $79d6: $38 $63

    inc e                                         ; $79d8: $1c
    ld [hl+], a                                   ; $79d9: $22
    inc c                                         ; $79da: $0c
    adc $5d                                       ; $79db: $ce $5d
    sbc $4e                                       ; $79dd: $de $4e
    ld [hl], e                                    ; $79df: $73
    ld [hl], d                                    ; $79e0: $72
    ld hl, $5200                                  ; $79e1: $21 $00 $52
    ld [hl], d                                    ; $79e4: $72
    rst $00                                       ; $79e5: $c7
    jr nc, jr_0b5_79c6                            ; $79e6: $30 $de

    ld c, [hl]                                    ; $79e8: $4e
    nop                                           ; $79e9: $00
    nop                                           ; $79ea: $00
    ld h, e                                       ; $79eb: $63
    inc e                                         ; $79ec: $1c
    dec bc                                        ; $79ed: $0b
    ld b, c                                       ; $79ee: $41
    and [hl]                                      ; $79ef: $a6
    jr nc, jr_0b5_79f2                            ; $79f0: $30 $00

jr_0b5_79f2:
    inc e                                         ; $79f2: $1c
    inc sp                                        ; $79f3: $33
    ld e, [hl]                                    ; $79f4: $5e
    sbc a                                         ; $79f5: $9f
    ld a, a                                       ; $79f6: $7f
    and l                                         ; $79f7: $a5
    inc l                                         ; $79f8: $2c
    nop                                           ; $79f9: $00
    nop                                           ; $79fa: $00
    di                                            ; $79fb: $f3
    dec b                                         ; $79fc: $05
    rst $38                                       ; $79fd: $ff
    ld a, a                                       ; $79fe: $7f
    or a                                          ; $79ff: $b7
    ld [bc], a                                    ; $7a00: $02
    ld bc, $4e00                                  ; $7a01: $01 $00 $4e
    ld h, b                                       ; $7a04: $60
    or l                                          ; $7a05: $b5
    add hl, bc                                    ; $7a06: $09
    ld a, [hl-]                                   ; $7a07: $3a
    inc bc                                        ; $7a08: $03
    ld hl, $d60c                                  ; $7a09: $21 $0c $d6
    ld a, d                                       ; $7a0c: $7a
    add hl, hl                                    ; $7a0d: $29
    ld c, c                                       ; $7a0e: $49
    sub e                                         ; $7a0f: $93
    ld bc, $0001                                  ; $7a10: $01 $01 $00
    ld d, a                                       ; $7a13: $57
    ld d, [hl]                                    ; $7a14: $56
    db $e4                                        ; $7a15: $e4
    jr nz, @+$0a                                  ; $7a16: $20 $08

    ld b, c                                       ; $7a18: $41
    nop                                           ; $7a19: $00
    inc b                                         ; $7a1a: $04
    ld l, e                                       ; $7a1b: $6b
    ld d, l                                       ; $7a1c: $55
    or l                                          ; $7a1d: $b5
    ld a, [hl]                                    ; $7a1e: $7e
    sbc $4e                                       ; $7a1f: $de $4e
    nop                                           ; $7a21: $00
    nop                                           ; $7a22: $00
    or d                                          ; $7a23: $b2

jr_0b5_7a24:
    ld bc, $02b8                                  ; $7a24: $01 $b8 $02
    xor b                                         ; $7a27: $a8
    nop                                           ; $7a28: $00
    nop                                           ; $7a29: $00
    nop                                           ; $7a2a: $00
    or [hl]                                       ; $7a2b: $b6
    ld [bc], a                                    ; $7a2c: $02
    ld e, l                                       ; $7a2d: $5d
    ld a, a                                       ; $7a2e: $7f
    nop                                           ; $7a2f: $00
    jr nz, jr_0b5_7a32                            ; $7a30: $20 $00

jr_0b5_7a32:
    nop                                           ; $7a32: $00
    xor e                                         ; $7a33: $ab
    ld c, l                                       ; $7a34: $4d
    sub a                                         ; $7a35: $97
    ld de, $2000                                  ; $7a36: $11 $00 $20
    nop                                           ; $7a39: $00
    nop                                           ; $7a3a: $00

jr_0b5_7a3b:
    ld [hl-], a                                   ; $7a3b: $32
    ld a, b                                       ; $7a3c: $78
    xor h                                         ; $7a3d: $ac
    inc l                                         ; $7a3e: $2c
    ld sp, hl                                     ; $7a3f: $f9
    ld [hl], d                                    ; $7a40: $72
    ld hl, $4b08                                  ; $7a41: $21 $08 $4b
    ld d, c                                       ; $7a44: $51
    inc l                                         ; $7a45: $2c
    ld bc, $7ef7                                  ; $7a46: $01 $f7 $7e
    jr nz, jr_0b5_7a4f                            ; $7a49: $20 $04

    ld [$a239], sp                                ; $7a4b: $08 $39 $a2
    inc e                                         ; $7a4e: $1c

jr_0b5_7a4f:
    inc b                                         ; $7a4f: $04
    ld [hl-], a                                   ; $7a50: $32
    ld [hl+], a                                   ; $7a51: $22
    inc c                                         ; $7a52: $0c
    adc l                                         ; $7a53: $8d
    ld e, l                                       ; $7a54: $5d
    rst $10                                       ; $7a55: $d7
    ld a, [hl]                                    ; $7a56: $7e
    jr c, jr_0b5_7ad5                             ; $7a57: $38 $7c

    nop                                           ; $7a59: $00

jr_0b5_7a5a:
    nop                                           ; $7a5a: $00
    ld l, [hl]                                    ; $7a5b: $6e
    ld h, h                                       ; $7a5c: $64
    dec e                                         ; $7a5d: $1d
    ld a, a                                       ; $7a5e: $7f
    adc d                                         ; $7a5f: $8a
    ld b, b                                       ; $7a60: $40
    nop                                           ; $7a61: $00
    nop                                           ; $7a62: $00
    ld a, [c]                                     ; $7a63: $f2

jr_0b5_7a64:
    dec b                                         ; $7a64: $05
    rst $38                                       ; $7a65: $ff
    ld a, a                                       ; $7a66: $7f
    nop                                           ; $7a67: $00
    jr nz, jr_0b5_7a6a                            ; $7a68: $20 $00

jr_0b5_7a6a:
    inc d                                         ; $7a6a: $14
    ld c, b                                       ; $7a6b: $48
    ld b, l                                       ; $7a6c: $45
    sub [hl]                                      ; $7a6d: $96
    ld de, $5a51                                  ; $7a6e: $11 $51 $5a
    nop                                           ; $7a71: $00
    nop                                           ; $7a72: $00
    ld l, a                                       ; $7a73: $6f
    ld c, c                                       ; $7a74: $49
    and l                                         ; $7a75: $a5
    jr nz, jr_0b5_7aae                            ; $7a76: $20 $36

jr_0b5_7a78:
    ld l, d                                       ; $7a78: $6a
    ld hl, $1400                                  ; $7a79: $21 $00 $14
    ld a, b                                       ; $7a7c: $78
    ld a, [hl+]                                   ; $7a7d: $2a
    ld b, c                                       ; $7a7e: $41
    ld [hl-], a                                   ; $7a7f: $32
    ld a, d                                       ; $7a80: $7a
    ld bc, $4704                                  ; $7a81: $01 $04 $47
    ld a, [hl-]                                   ; $7a84: $3a
    ld c, [hl]                                    ; $7a85: $4e
    ld e, a                                       ; $7a86: $5f
    ldh a, [rNR24]                                ; $7a87: $f0 $19
    nop                                           ; $7a89: $00
    nop                                           ; $7a8a: $00
    xor a                                         ; $7a8b: $af
    ld e, b                                       ; $7a8c: $58
    cp [hl]                                       ; $7a8d: $be
    ld [hl], e                                    ; $7a8e: $73
    ld d, h                                       ; $7a8f: $54
    ld c, $00                                     ; $7a90: $0e $00
    inc b                                         ; $7a92: $04
    ld l, a                                       ; $7a93: $6f
    ld h, b                                       ; $7a94: $60
    ld h, [hl]                                    ; $7a95: $66
    inc l                                         ; $7a96: $2c
    db $d3                                        ; $7a97: $d3
    ld e, l                                       ; $7a98: $5d
    nop                                           ; $7a99: $00
    nop                                           ; $7a9a: $00
    or [hl]                                       ; $7a9b: $b6
    ld de, $62b5                                  ; $7a9c: $11 $b5 $62
    nop                                           ; $7a9f: $00
    jr nz, jr_0b5_7aa2                            ; $7aa0: $20 $00

jr_0b5_7aa2:
    jr jr_0b5_7a5a                                ; $7aa2: $18 $b6

    ld de, $4127                                  ; $7aa4: $11 $27 $41
    ld [hl], d                                    ; $7aa7: $72
    ld e, [hl]                                    ; $7aa8: $5e
    nop                                           ; $7aa9: $00
    nop                                           ; $7aaa: $00
    xor b                                         ; $7aab: $a8
    jr z, jr_0b5_7a64                             ; $7aac: $28 $b6

jr_0b5_7aae:
    ld de, $40ab                                  ; $7aae: $11 $ab $40
    and [hl]                                      ; $7ab1: $a6
    inc b                                         ; $7ab2: $04
    ld a, [hl]                                    ; $7ab3: $7e
    ld a, a                                       ; $7ab4: $7f
    jr nc, jr_0b5_7b23                            ; $7ab5: $30 $6c

    dec bc                                        ; $7ab7: $0b
    dec a                                         ; $7ab8: $3d
    nop                                           ; $7ab9: $00
    nop                                           ; $7aba: $00
    ld d, c                                       ; $7abb: $51
    ld [hl], $9a                                  ; $7abc: $36 $9a
    ld c, a                                       ; $7abe: $4f
    xor b                                         ; $7abf: $a8
    inc [hl]                                      ; $7ac0: $34
    nop                                           ; $7ac1: $00
    nop                                           ; $7ac2: $00
    ld d, c                                       ; $7ac3: $51
    ld d, l                                       ; $7ac4: $55
    sub b                                         ; $7ac5: $90
    ld bc, $7699                                  ; $7ac6: $01 $99 $76
    nop                                           ; $7ac9: $00
    nop                                           ; $7aca: $00
    and h                                         ; $7acb: $a4
    jr nz, jr_0b5_7a78                            ; $7acc: $20 $aa

    inc a                                         ; $7ace: $3c
    ld b, a                                       ; $7acf: $47
    jr z, jr_0b5_7ad2                             ; $7ad0: $28 $00

jr_0b5_7ad2:
    inc e                                         ; $7ad2: $1c
    ld d, c                                       ; $7ad3: $51
    ld e, d                                       ; $7ad4: $5a

jr_0b5_7ad5:
    ld a, e                                       ; $7ad5: $7b
    ld [hl], a                                    ; $7ad6: $77
    or [hl]                                       ; $7ad7: $b6
    ld de, $1800                                  ; $7ad8: $11 $00 $18
    or [hl]                                       ; $7adb: $b6
    ld de, $4dab                                  ; $7adc: $11 $ab $4d
    sub $66                                       ; $7adf: $d6 $66
    nop                                           ; $7ae1: $00
    nop                                           ; $7ae2: $00
    add hl, bc                                    ; $7ae3: $09
    ld h, a                                       ; $7ae4: $67
    adc b                                         ; $7ae5: $88
    inc l                                         ; $7ae6: $2c
    or [hl]                                       ; $7ae7: $b6
    ld de, $0401                                  ; $7ae8: $11 $01 $04
    inc d                                         ; $7aeb: $14
    ld h, d                                       ; $7aec: $62
    ld l, b                                       ; $7aed: $68
    jr nc, jr_0b5_7b69                            ; $7aee: $30 $79

    ld a, d                                       ; $7af0: $7a
    nop                                           ; $7af1: $00
    nop                                           ; $7af2: $00
    inc a                                         ; $7af3: $3c
    dec bc                                        ; $7af4: $0b
    ld a, h                                       ; $7af5: $7c
    ld e, e                                       ; $7af6: $5b
    rst $08                                       ; $7af7: $cf
    dec c                                         ; $7af8: $0d
    nop                                           ; $7af9: $00
    nop                                           ; $7afa: $00
    add a                                         ; $7afb: $87
    inc l                                         ; $7afc: $2c
    xor [hl]                                      ; $7afd: $ae
    ld d, h                                       ; $7afe: $54
    xor e                                         ; $7aff: $ab
    inc a                                         ; $7b00: $3c
    nop                                           ; $7b01: $00
    nop                                           ; $7b02: $00
    add hl, bc                                    ; $7b03: $09
    ld h, a                                       ; $7b04: $67
    ld h, e                                       ; $7b05: $63
    inc e                                         ; $7b06: $1c
    ld c, [hl]                                    ; $7b07: $4e
    ld b, b                                       ; $7b08: $40
    nop                                           ; $7b09: $00
    inc e                                         ; $7b0a: $1c
    or [hl]                                       ; $7b0b: $b6
    ld de, $62b4                                  ; $7b0c: $11 $b4 $62

jr_0b5_7b0f:
    cp l                                          ; $7b0f: $bd
    ld [hl], a                                    ; $7b10: $77
    nop                                           ; $7b11: $00
    jr @-$74                                      ; $7b12: $18 $8a

    ld c, c                                       ; $7b14: $49
    ld a, d                                       ; $7b15: $7a
    ld [hl], e                                    ; $7b16: $73
    ld [hl], d                                    ; $7b17: $72
    ld e, d                                       ; $7b18: $5a
    jr nz, jr_0b5_7b1b                            ; $7b19: $20 $00

jr_0b5_7b1b:
    adc b                                         ; $7b1b: $88
    ld d, [hl]                                    ; $7b1c: $56
    or [hl]                                       ; $7b1d: $b6
    ld de, $2521                                  ; $7b1e: $11 $21 $25
    nop                                           ; $7b21: $00
    nop                                           ; $7b22: $00

jr_0b5_7b23:
    rst $38                                       ; $7b23: $ff
    inc hl                                        ; $7b24: $23
    xor l                                         ; $7b25: $ad

jr_0b5_7b26:
    ld bc, $1824                                  ; $7b26: $01 $24 $18
    inc hl                                        ; $7b29: $23
    nop                                           ; $7b2a: $00
    xor $59                                       ; $7b2b: $ee $59
    rla                                           ; $7b2d: $17
    ld b, $00                                     ; $7b2e: $06 $00
    inc a                                         ; $7b30: $3c
    nop                                           ; $7b31: $00
    nop                                           ; $7b32: $00
    db $ed                                        ; $7b33: $ed
    ld b, h                                       ; $7b34: $44
    rst $38                                       ; $7b35: $ff
    ld [hl], e                                    ; $7b36: $73
    ret z                                         ; $7b37: $c8

    inc e                                         ; $7b38: $1c
    jr nz, jr_0b5_7b3f                            ; $7b39: $20 $04

    ld h, $4a                                     ; $7b3b: $26 $4a
    ld [hl+], a                                   ; $7b3d: $22
    dec h                                         ; $7b3e: $25

jr_0b5_7b3f:
    ld c, e                                       ; $7b3f: $4b
    ld l, a                                       ; $7b40: $6f
    nop                                           ; $7b41: $00
    nop                                           ; $7b42: $00
    rla                                           ; $7b43: $17
    ld l, e                                       ; $7b44: $6b
    nop                                           ; $7b45: $00
    jr nz, jr_0b5_7b26                            ; $7b46: $20 $de

    ld a, a                                       ; $7b48: $7f
    nop                                           ; $7b49: $00
    inc e                                         ; $7b4a: $1c
    xor h                                         ; $7b4b: $ac
    ld c, l                                       ; $7b4c: $4d
    or h                                          ; $7b4d: $b4
    ld h, d                                       ; $7b4e: $62
    sbc e                                         ; $7b4f: $9b
    ld [hl], a                                    ; $7b50: $77
    nop                                           ; $7b51: $00
    nop                                           ; $7b52: $00
    and a                                         ; $7b53: $a7
    dec [hl]                                      ; $7b54: $35
    dec bc                                        ; $7b55: $0b
    ld h, e                                       ; $7b56: $63
    pop hl                                        ; $7b57: $e1
    jr nz, jr_0b5_7b5a                            ; $7b58: $20 $00

jr_0b5_7b5a:
    nop                                           ; $7b5a: $00
    ld a, [$430a]                                 ; $7b5b: $fa $0a $43
    ld a, $ac                                     ; $7b5e: $3e $ac
    nop                                           ; $7b60: $00
    nop                                           ; $7b61: $00
    inc c                                         ; $7b62: $0c
    ld a, [de]                                    ; $7b63: $1a
    dec bc                                        ; $7b64: $0b
    rst $20                                       ; $7b65: $e7
    ld l, b                                       ; $7b66: $68
    ld e, d                                       ; $7b67: $5a
    ld a, a                                       ; $7b68: $7f

jr_0b5_7b69:
    jr nz, jr_0b5_7b6b                            ; $7b69: $20 $00

jr_0b5_7b6b:
    ret nz                                        ; $7b6b: $c0

    add hl, hl                                    ; $7b6c: $29
    ld a, d                                       ; $7b6d: $7a
    ld [bc], a                                    ; $7b6e: $02
    add d                                         ; $7b6f: $82
    ld b, [hl]                                    ; $7b70: $46
    ld b, b                                       ; $7b71: $40
    inc c                                         ; $7b72: $0c
    ld b, a                                       ; $7b73: $47
    ld c, [hl]                                    ; $7b74: $4e
    ld h, l                                       ; $7b75: $65
    ld sp, $6b72                                  ; $7b76: $31 $72 $6b
    nop                                           ; $7b79: $00
    jr nz, jr_0b5_7b0f                            ; $7b7a: $20 $93

    ld e, [hl]                                    ; $7b7c: $5e
    db $dd                                        ; $7b7d: $dd
    ld a, e                                       ; $7b7e: $7b
    jr jr_0b5_7bec                                ; $7b7f: $18 $6b

    nop                                           ; $7b81: $00
    jr nz, jr_0b5_7b0f                            ; $7b82: $20 $8b

    ld c, c                                       ; $7b84: $49
    push de                                       ; $7b85: $d5
    ld h, [hl]                                    ; $7b86: $66
    cpl                                           ; $7b87: $2f
    ld d, [hl]                                    ; $7b88: $56
    nop                                           ; $7b89: $00
    nop                                           ; $7b8a: $00
    dec hl                                        ; $7b8b: $2b
    ld c, d                                       ; $7b8c: $4a
    cp b                                          ; $7b8d: $b8
    ld [hl], a                                    ; $7b8e: $77
    pop hl                                        ; $7b8f: $e1
    inc e                                         ; $7b90: $1c
    nop                                           ; $7b91: $00
    nop                                           ; $7b92: $00
    ld h, [hl]                                    ; $7b93: $66
    ld b, [hl]                                    ; $7b94: $46
    sbc a                                         ; $7b95: $9f
    rrca                                          ; $7b96: $0f
    inc b                                         ; $7b97: $04
    dec d                                         ; $7b98: $15
    ld bc, $ec04                                  ; $7b99: $01 $04 $ec
    nop                                           ; $7b9c: $00
    ld h, e                                       ; $7b9d: $63
    inc [hl]                                      ; $7b9e: $34
    cp e                                          ; $7b9f: $bb
    ld a, [bc]                                    ; $7ba0: $0a
    nop                                           ; $7ba1: $00
    nop                                           ; $7ba2: $00
    ld b, b                                       ; $7ba3: $40
    ld hl, $4661                                  ; $7ba4: $21 $61 $46
    adc $00                                       ; $7ba7: $ce $00
    nop                                           ; $7ba9: $00
    nop                                           ; $7baa: $00
    ld l, [hl]                                    ; $7bab: $6e
    ld h, a                                       ; $7bac: $67
    pop hl                                        ; $7bad: $e1
    inc e                                         ; $7bae: $1c
    db $dd                                        ; $7baf: $dd
    ld a, e                                       ; $7bb0: $7b
    nop                                           ; $7bb1: $00
    jr nz, jr_0b5_7c05                            ; $7bb2: $20 $51

    ld e, d                                       ; $7bb4: $5a
    rst $30                                       ; $7bb5: $f7
    ld l, d                                       ; $7bb6: $6a
    sbc h                                         ; $7bb7: $9c
    ld [hl], a                                    ; $7bb8: $77
    nop                                           ; $7bb9: $00
    jr nz, @+$4a                                  ; $7bba: $20 $48

    ld b, c                                       ; $7bbc: $41
    cpl                                           ; $7bbd: $2f
    ld d, [hl]                                    ; $7bbe: $56
    adc e                                         ; $7bbf: $8b
    ld c, c                                       ; $7bc0: $49
    ld b, b                                       ; $7bc1: $40
    ld [$5ace], sp                                ; $7bc2: $08 $ce $5a
    sbc c                                         ; $7bc5: $99
    ld [hl], e                                    ; $7bc6: $73
    rst $20                                       ; $7bc7: $e7
    inc e                                         ; $7bc8: $1c
    nop                                           ; $7bc9: $00
    nop                                           ; $7bca: $00
    ld h, b                                       ; $7bcb: $60
    dec h                                         ; $7bcc: $25
    or h                                          ; $7bcd: $b4
    ld bc, $1480                                  ; $7bce: $01 $80 $14
    nop                                           ; $7bd1: $00
    nop                                           ; $7bd2: $00
    add hl, bc                                    ; $7bd3: $09
    dec b                                         ; $7bd4: $05
    ld [hl], d                                    ; $7bd5: $72
    ld bc, $00ea                                  ; $7bd6: $01 $ea $00

jr_0b5_7bd9:
    nop                                           ; $7bd9: $00
    nop                                           ; $7bda: $00
    and b                                         ; $7bdb: $a0
    dec l                                         ; $7bdc: $2d
    ldh [rNR32], a                                ; $7bdd: $e0 $1c
    add b                                         ; $7bdf: $80
    ld b, [hl]                                    ; $7be0: $46
    ld b, b                                       ; $7be1: $40
    ld [$56e7], sp                                ; $7be2: $08 $e7 $56
    cp e                                          ; $7be5: $bb
    ld [hl], a                                    ; $7be6: $77
    ld [de], a                                    ; $7be7: $12
    ld h, e                                       ; $7be8: $63
    nop                                           ; $7be9: $00
    jr nz, jr_0b5_7bd9                            ; $7bea: $20 $ed

jr_0b5_7bec:
    ld d, c                                       ; $7bec: $51
    ld [hl], d                                    ; $7bed: $72
    ld e, [hl]                                    ; $7bee: $5e
    cpl                                           ; $7bef: $2f
    ld d, [hl]                                    ; $7bf0: $56
    nop                                           ; $7bf1: $00
    jr nz, jr_0b5_7bfa                            ; $7bf2: $20 $06

    ld b, c                                       ; $7bf4: $41
    ld h, $41                                     ; $7bf5: $26 $41
    add b                                         ; $7bf7: $80
    inc d                                         ; $7bf8: $14
    ld b, b                                       ; $7bf9: $40

jr_0b5_7bfa:
    ld [$45e7], sp                                ; $7bfa: $08 $e7 $45
    rst $28                                       ; $7bfd: $ef
    ld e, d                                       ; $7bfe: $5a
    sbc c                                         ; $7bff: $99
    ld [hl], e                                    ; $7c00: $73
    jr nz, @+$06                                  ; $7c01: $20 $04

    jr nz, jr_0b5_7c26                            ; $7c03: $20 $21

jr_0b5_7c05:
    ld d, c                                       ; $7c05: $51
    ld bc, $41c3                                  ; $7c06: $01 $c3 $41

jr_0b5_7c09:
    ld h, l                                       ; $7c09: $65
    nop                                           ; $7c0a: $00
    ld a, [$e70a]                                 ; $7c0b: $fa $0a $e7
    dec a                                         ; $7c0e: $3d
    rst $38                                       ; $7c0f: $ff
    ld a, a                                       ; $7c10: $7f
    jr nz, jr_0b5_7c17                            ; $7c11: $20 $04

    and c                                         ; $7c13: $a1
    ld sp, $2100                                  ; $7c14: $31 $00 $21

jr_0b5_7c17:
    ld b, c                                       ; $7c17: $41
    ld b, d                                       ; $7c18: $42
    jr nz, jr_0b5_7c1f                            ; $7c19: $20 $04

    db $ed                                        ; $7c1b: $ed
    ld d, c                                       ; $7c1c: $51
    halt                                          ; $7c1d: $76
    ld l, a                                       ; $7c1e: $6f

jr_0b5_7c1f:
    and $52                                       ; $7c1f: $e6 $52
    nop                                           ; $7c21: $00
    jr nz, jr_0b5_7c09                            ; $7c22: $20 $e5

    inc a                                         ; $7c24: $3c
    ld c, b                                       ; $7c25: $48

jr_0b5_7c26:
    ld b, l                                       ; $7c26: $45

jr_0b5_7c27:
    and $52                                       ; $7c27: $e6 $52
    nop                                           ; $7c29: $00
    jr nz, @-$10                                  ; $7c2a: $20 $ee

    ld e, l                                       ; $7c2c: $5d
    ld d, c                                       ; $7c2d: $51
    ld bc, $41c3                                  ; $7c2e: $01 $c3 $41
    nop                                           ; $7c31: $00
    nop                                           ; $7c32: $00
    ld [hl], d                                    ; $7c33: $72
    ld l, e                                       ; $7c34: $6b
    ld h, c                                       ; $7c35: $61
    dec l                                         ; $7c36: $2d
    ret                                           ; $7c37: $c9


    ld c, c                                       ; $7c38: $49
    nop                                           ; $7c39: $00
    nop                                           ; $7c3a: $00
    jp $003d                                      ; $7c3b: $c3 $3d $00


    dec e                                         ; $7c3e: $1d

jr_0b5_7c3f:
    ld b, a                                       ; $7c3f: $47
    ld c, [hl]                                    ; $7c40: $4e

jr_0b5_7c41:
    nop                                           ; $7c41: $00
    nop                                           ; $7c42: $00
    ld b, $46                                     ; $7c43: $06 $46
    rst $38                                       ; $7c45: $ff
    ld e, a                                       ; $7c46: $5f
    jp nz, Jump_000_2018                          ; $7c47: $c2 $18 $20

    inc b                                         ; $7c4a: $04
    pop hl                                        ; $7c4b: $e1
    add hl, sp                                    ; $7c4c: $39
    jr nz, jr_0b5_7c70                            ; $7c4d: $20 $21

    ld h, a                                       ; $7c4f: $67
    ld d, d                                       ; $7c50: $52
    nop                                           ; $7c51: $00
    nop                                           ; $7c52: $00
    ld h, l                                       ; $7c53: $65
    ld c, [hl]                                    ; $7c54: $4e
    ld [hl], h                                    ; $7c55: $74

jr_0b5_7c56:
    ld l, e                                       ; $7c56: $6b
    push hl                                       ; $7c57: $e5
    inc a                                         ; $7c58: $3c
    nop                                           ; $7c59: $00
    jr nz, jr_0b5_7c41                            ; $7c5a: $20 $e5

    inc a                                         ; $7c5c: $3c
    ld [hl], h                                    ; $7c5d: $74
    ld l, e                                       ; $7c5e: $6b
    push hl                                       ; $7c5f: $e5
    inc a                                         ; $7c60: $3c
    nop                                           ; $7c61: $00
    jr nz, jr_0b5_7c27                            ; $7c62: $20 $c3

    dec a                                         ; $7c64: $3d
    nop                                           ; $7c65: $00
    dec e                                         ; $7c66: $1d
    ld b, a                                       ; $7c67: $47
    ld c, [hl]                                    ; $7c68: $4e
    nop                                           ; $7c69: $00
    nop                                           ; $7c6a: $00
    jp hl                                         ; $7c6b: $e9


    ld d, c                                       ; $7c6c: $51
    ld h, b                                       ; $7c6d: $60
    add hl, hl                                    ; $7c6e: $29
    or e                                          ; $7c6f: $b3

jr_0b5_7c70:
    ld l, d                                       ; $7c70: $6a
    jr nz, jr_0b5_7c77                            ; $7c71: $20 $04

    and e                                         ; $7c73: $a3
    add hl, sp                                    ; $7c74: $39
    ldh [rNR32], a                                ; $7c75: $e0 $1c

jr_0b5_7c77:
    ld h, $4a                                     ; $7c77: $26 $4a
    nop                                           ; $7c79: $00
    nop                                           ; $7c7a: $00
    add e                                         ; $7c7b: $83
    dec [hl]                                      ; $7c7c: $35
    ret nz                                        ; $7c7d: $c0

    inc e                                         ; $7c7e: $1c
    ld b, [hl]                                    ; $7c7f: $46
    ld c, [hl]                                    ; $7c80: $4e
    ld b, b                                       ; $7c81: $40
    ld [$41c4], sp                                ; $7c82: $08 $c4 $41
    nop                                           ; $7c85: $00
    dec e                                         ; $7c86: $1d
    ld h, a                                       ; $7c87: $67
    ld d, d                                       ; $7c88: $52
    nop                                           ; $7c89: $00
    nop                                           ; $7c8a: $00
    add c                                         ; $7c8b: $81
    dec [hl]                                      ; $7c8c: $35
    db $10                                        ; $7c8d: $10
    ld h, d                                       ; $7c8e: $62
    and d                                         ; $7c8f: $a2
    ld c, d                                       ; $7c90: $4a
    nop                                           ; $7c91: $00
    jr nz, @-$7d                                  ; $7c92: $20 $81

jr_0b5_7c94:
    dec [hl]                                      ; $7c94: $35
    db $10                                        ; $7c95: $10
    ld h, d                                       ; $7c96: $62
    and d                                         ; $7c97: $a2
    ld c, d                                       ; $7c98: $4a
    nop                                           ; $7c99: $00
    jr nz, jr_0b5_7c3f                            ; $7c9a: $20 $a3

    add hl, sp                                    ; $7c9c: $39
    ldh [rNR32], a                                ; $7c9d: $e0 $1c
    ld h, $4a                                     ; $7c9f: $26 $4a
    jr nz, jr_0b5_7cab                            ; $7ca1: $20 $08

    rst $30                                       ; $7ca3: $f7
    ld [hl], d                                    ; $7ca4: $72
    ld h, c                                       ; $7ca5: $61
    dec h                                         ; $7ca6: $25
    rst $38                                       ; $7ca7: $ff
    ld a, a                                       ; $7ca8: $7f
    nop                                           ; $7ca9: $00
    nop                                           ; $7caa: $00

jr_0b5_7cab:
    add d                                         ; $7cab: $82
    dec [hl]                                      ; $7cac: $35
    dec h                                         ; $7cad: $25
    ld c, d                                       ; $7cae: $4a
    ret nz                                        ; $7caf: $c0

    inc e                                         ; $7cb0: $1c
    nop                                           ; $7cb1: $00
    nop                                           ; $7cb2: $00
    ld h, h                                       ; $7cb3: $64
    dec l                                         ; $7cb4: $2d
    pop bc                                        ; $7cb5: $c1
    inc e                                         ; $7cb6: $1c
    dec b                                         ; $7cb7: $05
    ld b, [hl]                                    ; $7cb8: $46
    ld b, b                                       ; $7cb9: $40
    ld [$39c6], sp                                ; $7cba: $08 $c6 $39
    ld h, a                                       ; $7cbd: $67
    ld d, d                                       ; $7cbe: $52
    ld bc, $0021                                  ; $7cbf: $01 $21 $00
    db $10                                        ; $7cc2: $10
    ret z                                         ; $7cc3: $c8

    ld c, [hl]                                    ; $7cc4: $4e
    and c                                         ; $7cc5: $a1
    dec l                                         ; $7cc6: $2d
    jr jr_0b5_7d40                                ; $7cc7: $18 $77

    nop                                           ; $7cc9: $00
    jr nz, jr_0b5_7c94                            ; $7cca: $20 $c8

    ld c, [hl]                                    ; $7ccc: $4e
    and c                                         ; $7ccd: $a1
    dec l                                         ; $7cce: $2d
    jr @+$79                                      ; $7ccf: $18 $77

    nop                                           ; $7cd1: $00
    jr nz, jr_0b5_7c56                            ; $7cd2: $20 $82

    dec [hl]                                      ; $7cd4: $35
    dec h                                         ; $7cd5: $25
    ld c, d                                       ; $7cd6: $4a
    ret nz                                        ; $7cd7: $c0

    inc e                                         ; $7cd8: $1c
    nop                                           ; $7cd9: $00
    nop                                           ; $7cda: $00
    sbc h                                         ; $7cdb: $9c
    ld [hl], a                                    ; $7cdc: $77
    nop                                           ; $7cdd: $00
    jr nz, @-$3e                                  ; $7cde: $20 $c0

    inc d                                         ; $7ce0: $14
    nop                                           ; $7ce1: $00
    nop                                           ; $7ce2: $00
    ld b, d                                       ; $7ce3: $42
    dec l                                         ; $7ce4: $2d
    ld b, $46                                     ; $7ce5: $06 $46
    xor b                                         ; $7ce7: $a8
    ld sp, $0000                                  ; $7ce8: $31 $00 $00
    rrca                                          ; $7ceb: $0f
    ld h, d                                       ; $7cec: $62
    sbc h                                         ; $7ced: $9c
    ld a, e                                       ; $7cee: $7b
    or l                                          ; $7cef: $b5
    ld l, [hl]                                    ; $7cf0: $6e
    nop                                           ; $7cf1: $00
    nop                                           ; $7cf2: $00
    push hl                                       ; $7cf3: $e5
    inc a                                         ; $7cf4: $3c
    rrca                                          ; $7cf5: $0f
    ld e, d                                       ; $7cf6: $5a
    ld c, c                                       ; $7cf7: $49
    ld c, c                                       ; $7cf8: $49
    nop                                           ; $7cf9: $00
    nop                                           ; $7cfa: $00

jr_0b5_7cfb:
    rst $30                                       ; $7cfb: $f7
    ld [hl], d                                    ; $7cfc: $72
    sbc $7b                                       ; $7cfd: $de $7b
    nop                                           ; $7cff: $00
    jr nz, jr_0b5_7d02                            ; $7d00: $20 $00

jr_0b5_7d02:
    jr nz, jr_0b5_7cfb                            ; $7d02: $20 $f7

    ld [hl], d                                    ; $7d04: $72
    sbc $7b                                       ; $7d05: $de $7b
    nop                                           ; $7d07: $00
    jr nz, jr_0b5_7d0a                            ; $7d08: $20 $00

jr_0b5_7d0a:
    jr nz, jr_0b5_7d4e                            ; $7d0a: $20 $42

    dec l                                         ; $7d0c: $2d
    ld b, $46                                     ; $7d0d: $06 $46
    xor b                                         ; $7d0f: $a8
    ld sp, $2000                                  ; $7d10: $31 $00 $20
    sub e                                         ; $7d13: $93
    ld h, d                                       ; $7d14: $62
    sbc h                                         ; $7d15: $9c
    ld [hl], a                                    ; $7d16: $77
    ld l, c                                       ; $7d17: $69
    ld b, l                                       ; $7d18: $45
    push hl                                       ; $7d19: $e5
    inc a                                         ; $7d1a: $3c
    ld sp, $f766                                  ; $7d1b: $31 $66 $f7
    ld [hl], d                                    ; $7d1e: $72
    ld c, c                                       ; $7d1f: $49
    ld c, l                                       ; $7d20: $4d
    daa                                           ; $7d21: $27
    ld b, l                                       ; $7d22: $45
    sub l                                         ; $7d23: $95
    ld [hl], d                                    ; $7d24: $72
    sbc h                                         ; $7d25: $9c
    ld a, e                                       ; $7d26: $7b
    adc $5d                                       ; $7d27: $ce $5d
    ld l, d                                       ; $7d29: $6a
    ld c, l                                       ; $7d2a: $4d
    sub h                                         ; $7d2b: $94
    ld l, [hl]                                    ; $7d2c: $6e
    jr nc, jr_0b5_7d8d                            ; $7d2d: $30 $5e

    ld e, d                                       ; $7d2f: $5a
    ld [hl], e                                    ; $7d30: $73
    nop                                           ; $7d31: $00
    jr nz, jr_0b5_7da7                            ; $7d32: $20 $73

    ld e, [hl]                                    ; $7d34: $5e
    cp h                                          ; $7d35: $bc
    ld a, e                                       ; $7d36: $7b
    push hl                                       ; $7d37: $e5
    inc a                                         ; $7d38: $3c
    nop                                           ; $7d39: $00
    jr nz, @+$75                                  ; $7d3a: $20 $73

    ld e, [hl]                                    ; $7d3c: $5e
    cp h                                          ; $7d3d: $bc
    ld a, e                                       ; $7d3e: $7b
    push hl                                       ; $7d3f: $e5

jr_0b5_7d40:
    inc a                                         ; $7d40: $3c
    ld d, b                                       ; $7d41: $50
    ld [bc], a                                    ; $7d42: $02
    scf                                           ; $7d43: $37
    ld bc, $ff40                                  ; $7d44: $01 $40 $ff
    ld bc, $8078                                  ; $7d47: $01 $78 $80
    rst $38                                       ; $7d4a: $ff
    add b                                         ; $7d4b: $80
    ldh [$80], a                                  ; $7d4c: $e0 $80

jr_0b5_7d4e:
    rst $28                                       ; $7d4e: $ef
    ld h, b                                       ; $7d4f: $60
    adc a                                         ; $7d50: $8f
    ld [bc], a                                    ; $7d51: $02
    jr jr_0b5_7d74                                ; $7d52: $18 $20

    nop                                           ; $7d54: $00
    nop                                           ; $7d55: $00
    rst $38                                       ; $7d56: $ff
    nop                                           ; $7d57: $00
    nop                                           ; $7d58: $00
    nop                                           ; $7d59: $00
    add b                                         ; $7d5a: $80
    jr z, jr_0b5_7d9d                             ; $7d5b: $28 $40

    ld bc, $00fe                                  ; $7d5d: $01 $fe $00
    ld b, $00                                     ; $7d60: $06 $00
    cp $f8                                        ; $7d62: $fe $f8
    db $fc                                        ; $7d64: $fc
    ld [bc], a                                    ; $7d65: $02
    jr @+$2a                                      ; $7d66: $18 $28

    jr z, jr_0b5_7d9a                             ; $7d68: $28 $30

    jr z, jr_0b5_7d84                             ; $7d6a: $28 $18

    jr z, jr_0b5_7d8e                             ; $7d6c: $28 $20

    ld a, b                                       ; $7d6e: $78
    ld e, b                                       ; $7d6f: $58
    ld [$c0c0], sp                                ; $7d70: $08 $c0 $c0
    db $e4                                        ; $7d73: $e4

jr_0b5_7d74:
    ld [hl], b                                    ; $7d74: $70
    ld b, b                                       ; $7d75: $40
    ld e, b                                       ; $7d76: $58
    db $10                                        ; $7d77: $10
    jr nc, jr_0b5_7dba                            ; $7d78: $30 $40

    nop                                           ; $7d7a: $00
    cp $68                                        ; $7d7b: $fe $68
    ld b, b                                       ; $7d7d: $40
    ld hl, sp-$01                                 ; $7d7e: $f8 $ff
    inc b                                         ; $7d80: $04
    ldh [$f8], a                                  ; $7d81: $e0 $f8
    ret nz                                        ; $7d83: $c0

jr_0b5_7d84:
    ldh [$86], a                                  ; $7d84: $e0 $86
    jr nc, jr_0b5_7db8                            ; $7d86: $30 $30

    ccf                                           ; $7d88: $3f
    rst $38                                       ; $7d89: $ff
    nop                                           ; $7d8a: $00
    rrca                                          ; $7d8b: $0f
    ccf                                           ; $7d8c: $3f

jr_0b5_7d8d:
    rlca                                          ; $7d8d: $07

jr_0b5_7d8e:
    rrca                                          ; $7d8e: $0f
    jp $8e07                                      ; $7d8f: $c3 $07 $8e


    ret nz                                        ; $7d92: $c0

    inc b                                         ; $7d93: $04
    inc e                                         ; $7d94: $1c
    add b                                         ; $7d95: $80
    db $10                                        ; $7d96: $10
    add b                                         ; $7d97: $80
    nop                                           ; $7d98: $00
    ld [bc], a                                    ; $7d99: $02

jr_0b5_7d9a:
    db $10                                        ; $7d9a: $10
    add b                                         ; $7d9b: $80
    ret nz                                        ; $7d9c: $c0

jr_0b5_7d9d:
    ld [bc], a                                    ; $7d9d: $02
    add b                                         ; $7d9e: $80
    ret nz                                        ; $7d9f: $c0

    jp $0107                                      ; $7da0: $c3 $07 $01


    inc bc                                        ; $7da3: $03
    ld [bc], a                                    ; $7da4: $02
    jr z, jr_0b5_7daa                             ; $7da5: $28 $03

jr_0b5_7da7:
    nop                                           ; $7da7: $00
    rlca                                          ; $7da8: $07
    inc bc                                        ; $7da9: $03

jr_0b5_7daa:
    rlca                                          ; $7daa: $07
    ret nz                                        ; $7dab: $c0

    ldh [$e0], a                                  ; $7dac: $e0 $e0
    ld hl, sp-$08                                 ; $7dae: $f8 $f8
    add d                                         ; $7db0: $82
    push de                                       ; $7db1: $d5
    ld b, b                                       ; $7db2: $40
    rlca                                          ; $7db3: $07
    rrca                                          ; $7db4: $0f
    rrca                                          ; $7db5: $0f
    ccf                                           ; $7db6: $3f
    ccf                                           ; $7db7: $3f

jr_0b5_7db8:
    ld [hl], l                                    ; $7db8: $75
    ld c, b                                       ; $7db9: $48

jr_0b5_7dba:
    nop                                           ; $7dba: $00
    ld [$7f00], sp                                ; $7dbb: $08 $00 $7f
    ccf                                           ; $7dbe: $3f
    ld b, b                                       ; $7dbf: $40
    ld [bc], a                                    ; $7dc0: $02
    ld [$4030], sp                                ; $7dc1: $08 $30 $40
    cpl                                           ; $7dc4: $2f
    db $10                                        ; $7dc5: $10
    ld c, a                                       ; $7dc6: $4f
    add hl, hl                                    ; $7dc7: $29
    ld c, c                                       ; $7dc8: $49
    db $db                                        ; $7dc9: $db
    ld [$00e0], sp                                ; $7dca: $08 $e0 $00
    ret nz                                        ; $7dcd: $c0

    rlca                                          ; $7dce: $07
    nop                                           ; $7dcf: $00
    jp $0104                                      ; $7dd0: $c3 $04 $01


    nop                                           ; $7dd3: $00
    db $fc                                        ; $7dd4: $fc
    db $fd                                        ; $7dd5: $fd
    add h                                         ; $7dd6: $84
    add l                                         ; $7dd7: $85
    add b                                         ; $7dd8: $80
    db $eb                                        ; $7dd9: $eb
    ld [$007f], sp                                ; $7dda: $08 $7f $00
    ccf                                           ; $7ddd: $3f
    nop                                           ; $7dde: $00
    sbc a                                         ; $7ddf: $9f
    nop                                           ; $7de0: $00
    rst $08                                       ; $7de1: $cf
    ld [$e700], sp                                ; $7de2: $08 $00 $e7
    ld [$fae7], sp                                ; $7de5: $08 $e7 $fa
    nop                                           ; $7de8: $00
    nop                                           ; $7de9: $00
    rst $38                                       ; $7dea: $ff
    add b                                         ; $7deb: $80
    ld b, $00                                     ; $7dec: $06 $00
    cp a                                          ; $7dee: $bf
    ccf                                           ; $7def: $3f
    and c                                         ; $7df0: $a1
    ld hl, $1802                                  ; $7df1: $21 $02 $18
    or e                                          ; $7df4: $b3
    ld [$000e], sp                                ; $7df5: $08 $0e $00
    nop                                           ; $7df8: $00
    or $f0                                        ; $7df9: $f6 $f0
    or d                                          ; $7dfb: $b2
    or h                                          ; $7dfc: $b4
    jp nc, $f2d4                                  ; $7dfd: $d2 $d4 $f2

    db $10                                        ; $7e00: $10
    db $f4                                        ; $7e01: $f4
    sub d                                         ; $7e02: $92
    sub h                                         ; $7e03: $94
    ld d, b                                       ; $7e04: $50
    jr c, jr_0b5_7e27                             ; $7e05: $38 $20

    ld b, b                                       ; $7e07: $40
    rra                                           ; $7e08: $1f
    ld e, a                                       ; $7e09: $5f
    jr nc, jr_0b5_7e1f                            ; $7e0a: $30 $13

jr_0b5_7e0c:
    ld d, e                                       ; $7e0c: $53
    dec hl                                        ; $7e0d: $2b
    ld de, $0132                                  ; $7e0e: $11 $32 $01
    rst $38                                       ; $7e11: $ff
    nop                                           ; $7e12: $00
    inc bc                                        ; $7e13: $03
    nop                                           ; $7e14: $00
    ld [$faf8], sp                                ; $7e15: $08 $f8 $fa
    ld [$100a], sp                                ; $7e18: $08 $0a $10
    jr z, jr_0b5_7e0c                             ; $7e1b: $28 $ef

    nop                                           ; $7e1d: $00
    xor a                                         ; $7e1e: $af

jr_0b5_7e1f:
    ld [$a700], sp                                ; $7e1f: $08 $00 $a7
    nop                                           ; $7e22: $00
    and l                                         ; $7e23: $a5
    ld d, b                                       ; $7e24: $50
    db $10                                        ; $7e25: $10
    ret nz                                        ; $7e26: $c0

jr_0b5_7e27:
    nop                                           ; $7e27: $00
    rst $18                                       ; $7e28: $df
    jr jr_0b5_7e4a                                ; $7e29: $18 $1f

    ret nc                                        ; $7e2b: $d0

    db $10                                        ; $7e2c: $10
    ld [bc], a                                    ; $7e2d: $02
    jr jr_0b5_7e33                                ; $7e2e: $18 $03

    add hl, bc                                    ; $7e30: $09
    ld b, $00                                     ; $7e31: $06 $00

jr_0b5_7e33:
    ld a, [$f800]                                 ; $7e33: $fa $00 $f8
    ret c                                         ; $7e36: $d8

    jp c, $eae8                                   ; $7e37: $da $e8 $ea

    ld hl, sp-$06                                 ; $7e3a: $f8 $fa
    ret z                                         ; $7e3c: $c8

    nop                                           ; $7e3d: $00
    jp z, Jump_0b5_4929                           ; $7e3e: $ca $29 $49

    cpl                                           ; $7e41: $2f
    ld c, a                                       ; $7e42: $4f
    dec hl                                        ; $7e43: $2b
    ld c, e                                       ; $7e44: $4b
    dec l                                         ; $7e45: $2d
    nop                                           ; $7e46: $00
    ld c, l                                       ; $7e47: $4d
    cpl                                           ; $7e48: $2f
    ld c, a                                       ; $7e49: $4f

jr_0b5_7e4a:
    jr nc, jr_0b5_7e8c                            ; $7e4a: $30 $40

    jr c, jr_0b5_7e95                             ; $7e4c: $38 $47

    nop                                           ; $7e4e: $00
    stop                                          ; $7e4f: $10 $00
    add h                                         ; $7e51: $84

jr_0b5_7e52:
    add l                                         ; $7e52: $85
    ld [bc], a                                    ; $7e53: $02
    jr jr_0b5_7e52                                ; $7e54: $18 $fc

    db $fd                                        ; $7e56: $fd
    nop                                           ; $7e57: $00
    ld bc, $8980                                  ; $7e58: $01 $80 $89
    add hl, bc                                    ; $7e5b: $09
    di                                            ; $7e5c: $f3
    inc b                                         ; $7e5d: $04
    di                                            ; $7e5e: $f3
    nop                                           ; $7e5f: $00
    ld sp, hl                                     ; $7e60: $f9
    ld [bc], a                                    ; $7e61: $02
    ld sp, hl                                     ; $7e62: $f9
    jr nc, jr_0b5_7e65                            ; $7e63: $30 $00

jr_0b5_7e65:
    db $fc                                        ; $7e65: $fc
    ld l, $01                                     ; $7e66: $2e $01
    sbc b                                         ; $7e68: $98
    add hl, bc                                    ; $7e69: $09
    and c                                         ; $7e6a: $a1
    ld hl, $3fbf                                  ; $7e6b: $21 $bf $3f
    nop                                           ; $7e6e: $00
    add b                                         ; $7e6f: $80
    nop                                           ; $7e70: $00
    ret nz                                        ; $7e71: $c0

    inc hl                                        ; $7e72: $23
    pop hl                                        ; $7e73: $e1
    ld [bc], a                                    ; $7e74: $02
    ld bc, $0006                                  ; $7e75: $01 $06 $00
    inc bc                                        ; $7e78: $03
    db $fc                                        ; $7e79: $fc
    nop                                           ; $7e7a: $00
    nop                                           ; $7e7b: $00
    sub d                                         ; $7e7c: $92
    sub h                                         ; $7e7d: $94
    ld a, [c]                                     ; $7e7e: $f2
    db $f4                                        ; $7e7f: $f4
    jr @+$04                                      ; $7e80: $18 $02

    inc c                                         ; $7e82: $0c
    ld b, $4e                                     ; $7e83: $06 $4e

jr_0b5_7e85:
    ld de, $0950                                  ; $7e85: $11 $50 $09
    inc de                                        ; $7e88: $13
    ld d, e                                       ; $7e89: $53
    rra                                           ; $7e8a: $1f
    nop                                           ; $7e8b: $00

jr_0b5_7e8c:
    ld e, a                                       ; $7e8c: $5f
    rla                                           ; $7e8d: $17
    ld d, a                                       ; $7e8e: $57
    dec de                                        ; $7e8f: $1b
    ld e, e                                       ; $7e90: $5b
    rra                                           ; $7e91: $1f
    ld e, a                                       ; $7e92: $5f
    jr nz, jr_0b5_7e96                            ; $7e93: $20 $01

jr_0b5_7e95:
    ld b, b                                       ; $7e95: $40

jr_0b5_7e96:
    jr nc, @+$51                                  ; $7e96: $30 $4f

    nop                                           ; $7e98: $00
    nop                                           ; $7e99: $00
    add hl, bc                                    ; $7e9a: $09
    ld a, [bc]                                    ; $7e9b: $0a
    ld [bc], a                                    ; $7e9c: $02
    jr jr_0b5_7eab                                ; $7e9d: $18 $0c

    ld sp, hl                                     ; $7e9f: $f9

jr_0b5_7ea0:
    ld a, [$0201]                                 ; $7ea0: $fa $01 $02
    ret                                           ; $7ea3: $c9


    ld bc, $0092                                  ; $7ea4: $01 $92 $00
    push hl                                       ; $7ea7: $e5
    nop                                           ; $7ea8: $00
    jr jr_0b5_7ea0                                ; $7ea9: $18 $f5

jr_0b5_7eab:
    nop                                           ; $7eab: $00
    rst $30                                       ; $7eac: $f7
    or d                                          ; $7ead: $b2
    db $10                                        ; $7eae: $10
    add sp, $09                                   ; $7eaf: $e8 $09
    ld d, b                                       ; $7eb1: $50
    db $10                                        ; $7eb2: $10
    ld e, a                                       ; $7eb3: $5f
    inc b                                         ; $7eb4: $04
    rra                                           ; $7eb5: $1f
    ret nz                                        ; $7eb6: $c0

    nop                                           ; $7eb7: $00
    ldh [$1f], a                                  ; $7eb8: $e0 $1f
    db $10                                        ; $7eba: $10
    jr z, jr_0b5_7e85                             ; $7ebb: $28 $c8

    jp z, $f803                                   ; $7ebd: $ca $03 $f8

    ld a, [$0600]                                 ; $7ec0: $fa $00 $06
    ld [bc], a                                    ; $7ec3: $02
    db $fc                                        ; $7ec4: $fc
    ld d, b                                       ; $7ec5: $50
    jr z, jr_0b5_7ef8                             ; $7ec6: $28 $30

    ld a, [hl-]                                   ; $7ec8: $3a
    ld c, $3f                                     ; $7ec9: $0e $3f
    ret nz                                        ; $7ecb: $c0

    ccf                                           ; $7ecc: $3f
    ret nz                                        ; $7ecd: $c0

    jr jr_0b5_7eda                                ; $7ece: $18 $0a

    ld [$4a28], sp                                ; $7ed0: $08 $28 $4a
    ld a, [de]                                    ; $7ed3: $1a
    add b                                         ; $7ed4: $80
    ld bc, $00db                                  ; $7ed5: $01 $db $00
    jr nz, jr_0b5_7eda                            ; $7ed8: $20 $00

jr_0b5_7eda:
    rst $38                                       ; $7eda: $ff
    ld [bc], a                                    ; $7edb: $02
    ld e, b                                       ; $7edc: $58
    ld b, b                                       ; $7edd: $40
    cp a                                          ; $7ede: $bf
    ld b, b                                       ; $7edf: $40
    cp a                                          ; $7ee0: $bf
    ld c, b                                       ; $7ee1: $48
    nop                                           ; $7ee2: $00
    cp a                                          ; $7ee3: $bf
    ld c, b                                       ; $7ee4: $48
    or a                                          ; $7ee5: $b7
    ld hl, sp+$07                                 ; $7ee6: $f8 $07
    ld [$08f7], sp                                ; $7ee8: $08 $f7 $08
    add h                                         ; $7eeb: $84
    inc e                                         ; $7eec: $1c
    nop                                           ; $7eed: $00
    ld a, h                                       ; $7eee: $7c

jr_0b5_7eef:
    rst $00                                       ; $7eef: $c7
    db $10                                        ; $7ef0: $10
    rst $28                                       ; $7ef1: $ef
    ld [bc], a                                    ; $7ef2: $02
    ld [$c77d], sp                                ; $7ef3: $08 $7d $c7

jr_0b5_7ef6:
    add b                                         ; $7ef6: $80
    ld a, [hl+]                                   ; $7ef7: $2a

jr_0b5_7ef8:
    jr jr_0b5_7eda                                ; $7ef8: $18 $e0

    rra                                           ; $7efa: $1f
    and b                                         ; $7efb: $a0
    ld e, a                                       ; $7efc: $5f
    and b                                         ; $7efd: $a0
    ld a, a                                       ; $7efe: $7f
    add b                                         ; $7eff: $80
    db $10                                        ; $7f00: $10
    ld a, a                                       ; $7f01: $7f
    ldh [$3f], a                                  ; $7f02: $e0 $3f
    ld a, [hl-]                                   ; $7f04: $3a
    jr jr_0b5_7eef                                ; $7f05: $18 $e8

    scf                                           ; $7f07: $37
    ld hl, sp-$69                                 ; $7f08: $f8 $97
    inc b                                         ; $7f0a: $04
    ld a, b                                       ; $7f0b: $78
    rst $00                                       ; $7f0c: $c7
    jr c, jr_0b5_7ef6                             ; $7f0d: $38 $e7

    jr jr_0b5_7f3f                                ; $7f0f: $18 $2e

    stop                                          ; $7f11: $10 $00
    rst $38                                       ; $7f13: $ff
    nop                                           ; $7f14: $00
    dec b                                         ; $7f15: $05
    ei                                            ; $7f16: $fb
    ld b, h                                       ; $7f17: $44
    ei                                            ; $7f18: $fb
    ld b, h                                       ; $7f19: $44
    cp e                                          ; $7f1a: $bb
    call nz, $203b                                ; $7f1b: $c4 $3b $20
    rra                                           ; $7f1e: $1f
    pop af                                        ; $7f1f: $f1
    ld e, d                                       ; $7f20: $5a
    jr jr_0b5_7f2a                                ; $7f21: $18 $07

    ld hl, sp+$05                                 ; $7f23: $f8 $05
    ld a, [$1205]                                 ; $7f25: $fa $05 $12
    ei                                            ; $7f28: $fb
    rra                                           ; $7f29: $1f

jr_0b5_7f2a:
    ldh a, [rBCPS]                                ; $7f2a: $f0 $68
    jr z, jr_0b5_7f4e                             ; $7f2c: $28 $20

    rst $18                                       ; $7f2e: $df
    ld [bc], a                                    ; $7f2f: $02
    ld [$1060], sp                                ; $7f30: $08 $60 $10
    rst $18                                       ; $7f33: $df
    ldh [$9f], a                                  ; $7f34: $e0 $9f
    ld b, d                                       ; $7f36: $42
    jr @+$22                                      ; $7f37: $18 $20

    rst $18                                       ; $7f39: $df
    inc h                                         ; $7f3a: $24

jr_0b5_7f3b:
    rst $18                                       ; $7f3b: $df

jr_0b5_7f3c:
    ld bc, $db24                                  ; $7f3c: $01 $24 $db

jr_0b5_7f3f:
    db $fc                                        ; $7f3f: $fc

jr_0b5_7f40:
    add e                                         ; $7f40: $83
    inc b                                         ; $7f41: $04
    ei                                            ; $7f42: $fb
    dec b                                         ; $7f43: $05
    adc d                                         ; $7f44: $8a
    stop                                          ; $7f45: $10 $00
    ld c, h                                       ; $7f47: $4c
    or a                                          ; $7f48: $b7
    db $fc                                        ; $7f49: $fc
    add a                                         ; $7f4a: $87
    call z, $847b                                 ; $7f4b: $cc $7b $84

jr_0b5_7f4e:
    ld a, e                                       ; $7f4e: $7b
    jr nz, jr_0b5_7f40                            ; $7f4f: $20 $ef

    add hl, sp                                    ; $7f51: $39
    sbc d                                         ; $7f52: $9a
    jr @-$26                                      ; $7f53: $18 $d8

    ld [hl], a                                    ; $7f55: $77
    ret c                                         ; $7f56: $d8

    cpl                                           ; $7f57: $2f
    ldh a, [rSC]                                  ; $7f58: $f0 $02

jr_0b5_7f5a:
    xor a                                         ; $7f5a: $af
    ld [hl], b                                    ; $7f5b: $70
    sbc a                                         ; $7f5c: $9f
    ld h, e                                       ; $7f5d: $63
    sbc $20                                       ; $7f5e: $de $20
    xor d                                         ; $7f60: $aa
    ld h, b                                       ; $7f61: $60
    ldh a, [rLCDC]                                ; $7f62: $f0 $40
    rra                                           ; $7f64: $1f
    xor h                                         ; $7f65: $ac
    ld [$ff10], sp                                ; $7f66: $08 $10 $ff
    jr nc, jr_0b5_7f5a                            ; $7f69: $30 $ef

    jr c, jr_0b5_7f3c                             ; $7f6b: $38 $cf

    nop                                           ; $7f6d: $00
    xor $33                                       ; $7f6e: $ee $33
    ld e, b                                       ; $7f70: $58
    or a                                          ; $7f71: $b7
    ld a, c                                       ; $7f72: $79
    rst $08                                       ; $7f73: $cf
    ld l, b                                       ; $7f74: $68
    or a                                          ; $7f75: $b7
    nop                                           ; $7f76: $00
    nop                                           ; $7f77: $00
    rst $38                                       ; $7f78: $ff
    ld [bc], a                                    ; $7f79: $02
    rst $38                                       ; $7f7a: $ff
    ld [bc], a                                    ; $7f7b: $02
    db $fd                                        ; $7f7c: $fd
    cp $01                                        ; $7f7d: $fe $01
    db $10                                        ; $7f7f: $10
    add e                                         ; $7f80: $83
    ld a, l                                       ; $7f81: $7d

jr_0b5_7f82:
    add d                                         ; $7f82: $82
    and h                                         ; $7f83: $a4
    nop                                           ; $7f84: $00
    and b                                         ; $7f85: $a0
    ld a, a                                       ; $7f86: $7f
    and b                                         ; $7f87: $a0
    ld e, a                                       ; $7f88: $5f
    adc h                                         ; $7f89: $8c
    add h                                         ; $7f8a: $84
    db $10                                        ; $7f8b: $10
    db $fc                                        ; $7f8c: $fc
    ld bc, $02fe                                  ; $7f8d: $01 $fe $02
    jr z, jr_0b5_7f82                             ; $7f90: $28 $f0

    jr c, jr_0b5_7fd2                             ; $7f92: $38 $3e

jr_0b5_7f94:
    db $e3                                        ; $7f94: $e3
    inc c                                         ; $7f95: $0c
    adc b                                         ; $7f96: $88
    rst $30                                       ; $7f97: $f7
    ret z                                         ; $7f98: $c8

    ld [hl], a                                    ; $7f99: $77
    sub h                                         ; $7f9a: $94
    db $10                                        ; $7f9b: $10
    sub [hl]                                      ; $7f9c: $96
    nop                                           ; $7f9d: $00
    cp $13                                        ; $7f9e: $fe $13
    ld [bc], a                                    ; $7fa0: $02
    daa                                           ; $7fa1: $27
    reti                                          ; $7fa2: $d9


    daa                                           ; $7fa3: $27
    ld hl, sp+$07                                 ; $7fa4: $f8 $07
    ld a, [$2910]                                 ; $7fa6: $fa $10 $29
    rra                                           ; $7fa9: $1f
    ld c, c                                       ; $7faa: $49

jr_0b5_7fab:
    ldh a, [$92]                                  ; $7fab: $f0 $92
    nop                                           ; $7fad: $00
    ei                                            ; $7fae: $fb
    dec b                                         ; $7faf: $05

jr_0b5_7fb0:
    db $10                                        ; $7fb0: $10
    jr nc, jr_0b5_7fab                            ; $7fb1: $30 $f8

    adc a                                         ; $7fb3: $8f
    cp d                                          ; $7fb4: $ba
    jr jr_0b5_7f3b                                ; $7fb5: $18 $84

    jr nc, jr_0b5_7fc2                            ; $7fb7: $30 $09

    add b                                         ; $7fb9: $80
    rst $38                                       ; $7fba: $ff
    jr z, jr_0b5_7f94                             ; $7fbb: $28 $d7

    ld a, [de]                                    ; $7fbd: $1a
    add hl, bc                                    ; $7fbe: $09
    jr c, jr_0b5_7fb0                             ; $7fbf: $38 $ef

    ld b, b                                       ; $7fc1: $40

jr_0b5_7fc2:
    ld a, b                                       ; $7fc2: $78
    ld [$0000], sp                                ; $7fc3: $08 $00 $00
    rst $38                                       ; $7fc6: $ff
    rrca                                          ; $7fc7: $0f
    ld hl, sp+$07                                 ; $7fc8: $f8 $07
    db $fd                                        ; $7fca: $fd
    ld bc, $fd06                                  ; $7fcb: $01 $06 $fd
    ld b, $fb                                     ; $7fce: $06 $fb
    adc h                                         ; $7fd0: $8c
    ei                                            ; $7fd1: $fb

jr_0b5_7fd2:
    adc h                                         ; $7fd2: $8c
    ld d, b                                       ; $7fd3: $50
    nop                                           ; $7fd4: $00
    nop                                           ; $7fd5: $00
    rra                                           ; $7fd6: $1f
    pop af                                        ; $7fd7: $f1
    ld c, $fb                                     ; $7fd8: $0e $fb
    ld b, $f9                                     ; $7fda: $06 $f9
    rlca                                          ; $7fdc: $07
    db $fd                                        ; $7fdd: $fd
    rla                                           ; $7fde: $17
    inc bc                                        ; $7fdf: $03
    db $fc                                        ; $7fe0: $fc
    inc bc                                        ; $7fe1: $03
    halt                                          ; $7fe2: $76
    nop                                           ; $7fe3: $00
    add b                                         ; $7fe4: $80
    inc l                                         ; $7fe5: $2c
    ld bc, $0804                                  ; $7fe6: $01 $04 $08
    jr nc, @+$2b                                  ; $7fe9: $30 $29

    add b                                         ; $7feb: $80
    ld [hl], b                                    ; $7fec: $70
    ld e, c                                       ; $7fed: $59
    add b                                         ; $7fee: $80
    rst $38                                       ; $7fef: $ff
    ld c, e                                       ; $7ff0: $4b
    add hl, sp                                    ; $7ff1: $39
    add hl, bc                                    ; $7ff2: $09
    ld a, [hl+]                                   ; $7ff3: $2a
    jr nz, jr_0b5_7ff7                            ; $7ff4: $20 $01

    nop                                           ; $7ff6: $00

jr_0b5_7ff7:
    nop                                           ; $7ff7: $00
    ld c, e                                       ; $7ff8: $4b
    add hl, sp                                    ; $7ff9: $39
    rst $30                                       ; $7ffa: $f7
    inc d                                         ; $7ffb: $14
    ld c, $00                                     ; $7ffc: $0e $00
    nop                                           ; $7ffe: $00
    nop                                           ; $7fff: $00
